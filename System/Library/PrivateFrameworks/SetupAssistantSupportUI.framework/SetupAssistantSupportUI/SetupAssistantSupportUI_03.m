id sub_265A90204(void *a1)
{
  v3 = objc_allocWithZone(v1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = [v3 initWithLayer_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v4;
}

_BYTE *sub_265A90280(void *a1)
{
  v30 = a1;
  ObjectType = swift_getObjectType();
  v2 = sub_265AA7820();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v27 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_265AA77F0();
  MEMORY[0x28223BE20](v26);
  v4 = sub_265AA7440();
  MEMORY[0x28223BE20](v4 - 8);
  *&v1[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_animationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_variant] = 0;
  v1[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_multilanguage] = 0;
  v1[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_isWatchPreview] = 0;
  *&v1[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_commandQueue] = 0;
  *&v1[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundPipelineState] = 0;
  *&v1[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_fadePipelineState] = 0;
  *&v1[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_textPipelineState] = 0;
  *&v1[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundVertexCoordsBuffer] = 0;
  *&v1[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundTextureCoordsBuffer] = 0;
  v5 = &v1[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundUniforms];
  *v5 = 1065353216;
  *(v5 + 2) = 0;
  *&v1[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_background] = 0;
  *&v1[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundBlurred] = 0;
  *&v1[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_blurFilter] = 0;
  v1[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_enableBackgroundRenderPass] = 1;
  v6 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_timeTracker;
  type metadata accessor for TimeTracker();
  *&v1[v6] = sub_265A6631C();
  *&v1[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_dataProvider] = 0;
  *&v1[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_renderPassData] = 0;
  *&v1[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_renderPassDataNext] = 0;
  v1[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_animationPhase] = 0;
  v7 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_metrics;
  type metadata accessor for HelloMetrics();
  *&v1[v7] = sub_265A9E688(5u);
  v1[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_forceAnimationToEnd] = 0;
  v8 = &v1[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_pixelsPerMM];
  *v8 = 0;
  v8[4] = 1;
  v9 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_helloMetalBackgroundQueue;
  sub_265A56C08();
  sub_265AA7430();
  v33[0] = MEMORY[0x277D84F90];
  sub_265A659B0(&unk_280030050, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002F900);
  sub_265A659F8(&qword_280030060, &unk_28002F900);
  sub_265AA78E0();
  (*(v28 + 104))(v27, *MEMORY[0x277D85260], v29);
  *&v1[v9] = sub_265AA7860();
  v10 = v30;
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  v11 = sub_265AA7B30();
  v12 = type metadata accessor for HelloMetalLayer();
  v34.receiver = v1;
  v34.super_class = v12;
  v13 = objc_msgSendSuper2(&v34, sel_initWithLayer_, v11);
  swift_unknownObjectRelease();
  sub_265A65A6C(v10, v33);
  v14 = v13;
  if (swift_dynamicCast())
  {
    v15 = v32;
    (*((*MEMORY[0x277D85000] & *v32) + 0x110))();
    v17 = v16;
    v18 = &v14[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_animationDelegate];
    swift_beginAccess();
    *(v18 + 1) = v17;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v14[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_variant] = v15[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_variant];
    v14[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_multilanguage] = v15[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_multilanguage];
    v14[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_isWatchPreview] = v15[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_isWatchPreview];
    *&v14[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_commandQueue] = *&v15[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_commandQueue];
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *&v14[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundPipelineState] = *&v15[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundPipelineState];
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *&v14[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_fadePipelineState] = *&v15[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_fadePipelineState];
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *&v14[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_textPipelineState] = *&v15[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_textPipelineState];
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *&v14[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundVertexCoordsBuffer] = *&v15[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundVertexCoordsBuffer];
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *&v14[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundTextureCoordsBuffer] = *&v15[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundTextureCoordsBuffer];
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v19 = *&v15[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundUniforms + 8];
    v20 = &v14[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundUniforms];
    *v20 = *&v15[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundUniforms];
    *(v20 + 2) = v19;
    *&v14[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_background] = *&v15[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_background];
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *&v14[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundBlurred] = *&v15[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundBlurred];
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v21 = *&v15[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_blurFilter];
    v22 = *&v14[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_blurFilter];
    *&v14[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_blurFilter] = v21;
    v23 = v21;

    v14[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_enableBackgroundRenderPass] = v15[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_enableBackgroundRenderPass];
    *&v14[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_timeTracker] = *&v15[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_timeTracker];

    *&v14[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_dataProvider] = *&v15[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_dataProvider];

    *&v14[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_renderPassData] = *&v15[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_renderPassData];

    *&v14[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_renderPassDataNext] = *&v15[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_renderPassDataNext];

    v14[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_animationPhase] = v15[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_animationPhase];
    *&v14[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_metrics] = *&v15[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_metrics];

    LOBYTE(v22) = v15[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_forceAnimationToEnd];

    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    v14[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_forceAnimationToEnd] = v22;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  return v14;
}

void sub_265A90A04()
{
  v1 = v0;
  v123[1] = *MEMORY[0x277D85DE8];
  v2 = sub_265AA6E20();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v112 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v112 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v112 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v112 - v16;
  v18 = [v1 device];
  if (v18)
  {
    v19 = v18;
    v120 = v3;
    swift_getObjectType();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass_];
    v123[0] = 0;
    v22 = [v19 newDefaultLibraryWithBundle:v21 error:v123];

    v23 = v123[0];
    if (v22)
    {
      v113 = v17;
      v114 = v15;
      v115 = v12;
      v119 = v2;
      v24 = objc_allocWithZone(MEMORY[0x277CD6F78]);
      v25 = v23;
      v26 = [v24 init];
      v27 = sub_265AA7540();
      v28 = [v22 newFunctionWithName_];

      [v26 setVertexFunction_];
      swift_unknownObjectRelease();
      v29 = sub_265AA7540();
      v30 = [v22 newFunctionWithName_];

      [v26 setFragmentFunction_];
      swift_unknownObjectRelease();
      v31 = [v26 colorAttachments];
      v32 = [v31 objectAtIndexedSubscript_];

      if (v32)
      {
        [v32 setPixelFormat_];

        v123[0] = 0;
        v121 = [v19 newRenderPipelineStateWithDescriptor:v26 error:v123];
        if (v121)
        {
          v33 = v123[0];
        }

        else
        {
          v45 = v123[0];
          v46 = sub_265AA6CC0();

          swift_willThrow();
        }

        v47 = objc_allocWithZone(MEMORY[0x277CD6F78]);
        swift_unknownObjectRetain();
        v48 = [v47 init];
        v49 = sub_265AA7540();
        v50 = [v22 newFunctionWithName_];

        [v48 setVertexFunction_];
        swift_unknownObjectRelease();
        v51 = sub_265AA7540();
        v52 = [v22 newFunctionWithName_];

        [v48 setFragmentFunction_];
        swift_unknownObjectRelease();
        v53 = [v48 colorAttachments];
        v54 = [v53 objectAtIndexedSubscript_];

        if (v54)
        {
          [v54 setPixelFormat_];

          v123[0] = 0;
          v117 = v48;
          v55 = [v19 newRenderPipelineStateWithDescriptor:v48 error:v123];
          v118 = v26;
          if (v55)
          {
            v56 = v123[0];
          }

          else
          {
            v57 = v123[0];
            v58 = sub_265AA6CC0();

            swift_willThrow();
          }

          v59 = *(**&v1[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_metrics] + 760);
          swift_unknownObjectRetain();

          LOBYTE(v59) = v59(v60);

          v122[0] = v59 & 1;
          v61 = [objc_allocWithZone(MEMORY[0x277CD6D70]) init];
          [v61 setConstantValue:v122 type:53 atIndex:0];
          v62 = [objc_allocWithZone(MEMORY[0x277CD6F78]) init];
          v63 = sub_265AA7540();
          v64 = [v22 newFunctionWithName_];

          [v62 setVertexFunction_];
          swift_unknownObjectRelease();
          v65 = sub_265AA7540();

          v123[0] = 0;
          v116 = v61;
          v66 = [v22 newFunctionWithName:v65 constantValues:v61 error:v123];

          if (v66)
          {
            v67 = v123[0];
          }

          else
          {
            v68 = v123[0];
            v69 = sub_265AA6CC0();

            swift_willThrow();
          }

          [v62 setFragmentFunction_];
          swift_unknownObjectRelease();
          v70 = [v62 colorAttachments];
          v71 = [v70 objectAtIndexedSubscript_];

          v72 = v119;
          if (v71)
          {
            [v71 setPixelFormat_];

            v73 = [v62 colorAttachments];
            v74 = [v73 objectAtIndexedSubscript_];

            if (v74)
            {
              [v74 setBlendingEnabled_];

              v75 = [v62 colorAttachments];
              v76 = [v75 objectAtIndexedSubscript_];

              if (v76)
              {
                [v76 setRgbBlendOperation_];

                v77 = [v62 colorAttachments];
                v78 = [v77 objectAtIndexedSubscript_];

                if (v78)
                {
                  [v78 setSourceRGBBlendFactor_];

                  v79 = [v62 colorAttachments];
                  v80 = [v79 objectAtIndexedSubscript_];

                  if (v80)
                  {
                    [v80 setDestinationRGBBlendFactor_];

                    v81 = [v62 colorAttachments];
                    v82 = [v81 objectAtIndexedSubscript_];

                    if (v82)
                    {
                      [v82 setAlphaBlendOperation_];

                      v83 = [v62 colorAttachments];
                      v84 = [v83 objectAtIndexedSubscript_];

                      if (v84)
                      {
                        [v84 setSourceAlphaBlendFactor_];

                        v85 = [v62 colorAttachments];
                        v86 = [v85 objectAtIndexedSubscript_];

                        if (v86)
                        {
                          [v86 setDestinationAlphaBlendFactor_];

                          v123[0] = 0;
                          v87 = [v19 newRenderPipelineStateWithDescriptor:v62 error:v123];
                          v88 = v121;
                          if (v87)
                          {
                            v89 = v123[0];
                          }

                          else
                          {
                            v90 = v123[0];
                            v91 = sub_265AA6CC0();

                            v72 = v119;
                            swift_willThrow();
                            v88 = v121;
                          }

                          swift_unknownObjectRetain();
                          v92 = v72;
                          if (v88)
                          {
                            swift_unknownObjectRelease();
                            v93 = v120;
                            if (v55)
                            {
                              goto LABEL_32;
                            }
                          }

                          else
                          {
                            v94 = sub_265A780B8();
                            v93 = v120;
                            v95 = v113;
                            (*(v120 + 16))(v113, v94, v92);
                            v96 = sub_265AA6E00();
                            v97 = sub_265AA7780();
                            if (os_log_type_enabled(v96, v97))
                            {
                              v98 = swift_slowAlloc();
                              *v98 = 0;
                              _os_log_impl(&dword_265A4C000, v96, v97, "Failed to create backgroundPipeline", v98, 2u);
                              v99 = v98;
                              v93 = v120;
                              MEMORY[0x2667691D0](v99, -1, -1);
                            }

                            (*(v93 + 8))(v95, v92);
                            if (v55)
                            {
LABEL_32:
                              swift_unknownObjectRelease();
                              if (v87)
                              {
LABEL_33:
                                swift_unknownObjectRelease();
                                swift_unknownObjectRelease();

                                swift_unknownObjectRelease();
                                return;
                              }

                              goto LABEL_40;
                            }
                          }

                          v100 = sub_265A780B8();
                          v101 = v114;
                          (*(v93 + 16))(v114, v100, v92);
                          v102 = sub_265AA6E00();
                          v103 = sub_265AA7780();
                          if (os_log_type_enabled(v102, v103))
                          {
                            v104 = swift_slowAlloc();
                            *v104 = 0;
                            _os_log_impl(&dword_265A4C000, v102, v103, "Failed to create fadePipeline", v104, 2u);
                            v105 = v104;
                            v93 = v120;
                            MEMORY[0x2667691D0](v105, -1, -1);
                          }

                          (*(v93 + 8))(v101, v92);
                          if (v87)
                          {
                            goto LABEL_33;
                          }

LABEL_40:
                          v106 = sub_265A780B8();
                          v107 = v115;
                          (*(v93 + 16))(v115, v106, v92);
                          v108 = sub_265AA6E00();
                          v109 = sub_265AA7780();
                          if (os_log_type_enabled(v108, v109))
                          {
                            v110 = v93;
                            v111 = swift_slowAlloc();
                            *v111 = 0;
                            _os_log_impl(&dword_265A4C000, v108, v109, "Failed to create textPipeline", v111, 2u);
                            MEMORY[0x2667691D0](v111, -1, -1);
                            swift_unknownObjectRelease();
                            swift_unknownObjectRelease();

                            (*(v110 + 8))(v107, v119);
                          }

                          else
                          {

                            swift_unknownObjectRelease();
                            swift_unknownObjectRelease();

                            (*(v93 + 8))(v107, v92);
                          }

                          return;
                        }

LABEL_54:
                        __break(1u);
                        return;
                      }

LABEL_53:
                      __break(1u);
                      goto LABEL_54;
                    }

LABEL_52:
                    __break(1u);
                    goto LABEL_53;
                  }

LABEL_51:
                  __break(1u);
                  goto LABEL_52;
                }

LABEL_50:
                __break(1u);
                goto LABEL_51;
              }

LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

LABEL_47:
          __break(1u);
          goto LABEL_48;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_47;
    }

    v38 = v123[0];
    v39 = sub_265AA6CC0();

    swift_willThrow();
    v40 = sub_265A780B8();
    v41 = v120;
    (*(v120 + 16))(v9, v40, v2);
    v42 = sub_265AA6E00();
    v43 = sub_265AA7780();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_265A4C000, v42, v43, "Failed to create bookend library", v44, 2u);
      MEMORY[0x2667691D0](v44, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v41 + 8))(v9, v2);
  }

  else
  {
    v34 = sub_265A780B8();
    (*(v3 + 16))(v6, v34, v2);
    v35 = sub_265AA6E00();
    v36 = sub_265AA7780();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_265A4C000, v35, v36, "Failed to get metal device", v37, 2u);
      MEMORY[0x2667691D0](v37, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }
}

id sub_265A91910(char a1)
{
  v2 = v1;
  v4 = sub_265AA6E20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_265A780B8();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_265AA6E00();
  v10 = sub_265AA77A0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = a1 & 1;
    _os_log_impl(&dword_265A4C000, v9, v10, "Setting background render pass enabled to %{BOOL}d", v11, 8u);
    MEMORY[0x2667691D0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v2[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_enableBackgroundRenderPass] = a1 & 1;
  return [v2 setOpaque_];
}

void sub_265A91AA0(float a1)
{
  v2 = v1 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_pixelsPerMM;
  *v2 = a1;
  *(v2 + 4) = 0;
}

uint64_t sub_265A91AB8(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t (*a8)(void), uint64_t a9)
{
  v10 = v9;
  v69 = a8;
  v63 = a7;
  v62 = a6;
  v64 = a5;
  v60 = a4;
  v65 = a3;
  v61 = a2;
  v59 = a1;
  v11 = sub_265AA7410();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v67 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_265AA7440();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_265AA6E20();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v56 - v21;
  v23 = [objc_opt_self() shared];
  v24 = [v23 readValueForKey_];

  if (v24)
  {
    sub_265AA78D0();
    swift_unknownObjectRelease();
  }

  else
  {
    v76 = 0u;
    v77 = 0u;
  }

  aBlock = v76;
  v71 = v77;
  if (*(&v77 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && v75 == 1)
    {
      v25 = sub_265A780B8();
      (*(v17 + 16))(v22, v25, v16);
      v26 = sub_265AA6E00();
      v27 = sub_265AA77A0();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v58 = v12;
        v29 = v28;
        *v28 = 0;
        _os_log_impl(&dword_265A4C000, v26, v27, "🔔 Verbose Logger is enabled 🔔", v28, 2u);
        v30 = v29;
        v12 = v58;
        MEMORY[0x2667691D0](v30, -1, -1);
      }

      (*(v17 + 8))(v22, v16);
    }
  }

  else
  {
    sub_265A5ABC8(&aBlock);
  }

  v31 = [v10 device];
  if (v31)
  {
    v32 = v31;
    v57 = v11;
    v33 = v59 & 1;
    v75 = v59 & 1;
    v74 = 1;
    sub_265A98774();
    sub_265AA7610();
    sub_265AA7610();
    v58 = v12;
    if (aBlock == v76)
    {
    }

    else
    {
      v40 = sub_265AA7B50();

      if ((v40 & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    v41 = [objc_opt_self() mainBundle];
    v42 = [v41 bundleIdentifier];

    if (v42)
    {
      v43 = sub_265AA7570();
      v45 = v44;

      if (v43 == 0xD000000000000015 && 0x8000000265AAEB20 == v45)
      {

LABEL_23:
        [v10 setPixelFormat_];
        goto LABEL_24;
      }

      v46 = sub_265AA7B50();

      if (v46)
      {
        goto LABEL_23;
      }
    }

LABEL_24:
    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v48 = swift_allocObject();
    v49 = v65;
    *(v48 + 16) = v47;
    *(v48 + 24) = v49;
    *(v48 + 32) = v60;
    *(v48 + 40) = v10;
    *(v48 + 48) = v33;
    *(v48 + 49) = v61;
    v50 = v62;
    *(v48 + 56) = v64;
    *(v48 + 64) = v50;
    *(v48 + 72) = v63 & 1;
    v51 = v69;
    *(v48 + 80) = v32;
    *(v48 + 88) = v51;
    *(v48 + 96) = a9;
    v72 = sub_265A98860;
    v73 = v48;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v71 = sub_265A554D0;
    *(&v71 + 1) = &block_descriptor_6;
    v52 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    v53 = v10;
    sub_265AA7420();
    *&v76 = MEMORY[0x277D84F90];
    sub_265A659B0(&qword_280030190, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002FAE0);
    sub_265A659F8(&qword_2800301A0, &unk_28002FAE0);
    v54 = v67;
    v55 = v57;
    sub_265AA78E0();
    MEMORY[0x2667680A0](0, v15, v54, v52);
    _Block_release(v52);
    swift_unknownObjectRelease();
    (*(v58 + 8))(v54, v55);
    (*(v66 + 8))(v15, v68);
  }

  v34 = sub_265A780B8();
  (*(v17 + 16))(v20, v34, v16);
  v35 = sub_265AA6E00();
  v36 = sub_265AA77A0();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_265A4C000, v35, v36, "Metal device is not available", v37, 2u);
    MEMORY[0x2667691D0](v37, -1, -1);
  }

  v38 = (*(v17 + 8))(v20, v16);
  return v69(v38);
}

uint64_t sub_265A922CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, int a6, uint64_t a7, void *a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v64 = a8;
  v65 = a2;
  v66 = a7;
  v67 = a4;
  v62 = a5;
  LODWORD(v63) = a6;
  v61 = a3;
  v12 = sub_265AA7410();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_265AA7440();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v68 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_265AA6E20();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v24 = result;
    v56 = v17;
    v57 = v15;
    v58 = v16;
    v59 = v13;
    v60 = v12;
    v25 = sub_265A780B8();
    (*(v20 + 16))(v22, v25, v19);
    v26 = sub_265AA6E00();
    v27 = sub_265AA77A0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_265A4C000, v26, v27, "Configuring layer start", v28, 2u);
      MEMORY[0x2667691D0](v28, -1, -1);
    }

    v29 = (*(v20 + 8))(v22, v19);
    v30 = (*((*MEMORY[0x277D85000] & *v24) + 0x338))(v29);
    if (v30 == 1)
    {
      sub_265A56C08();
      v55 = sub_265AA7830();
      v33 = swift_allocObject();
      v34 = v66;
      v35 = v61;
      *(v33 + 16) = v65;
      *(v33 + 24) = v35;
      v36 = v67;
      *(v33 + 32) = v67;
      *(v33 + 40) = v62 & 1;
      *(v33 + 41) = v63;
      v37 = v64;
      *(v33 + 48) = v34;
      *(v33 + 56) = v37;
      *(v33 + 64) = a9 & 1;
      *(v33 + 72) = a10;
      *(v33 + 80) = a11;
      *(v33 + 88) = a12;
      v73 = sub_265A98BF4;
      v74 = v33;
      aBlock = MEMORY[0x277D85DD0];
      v70 = 1107296256;
      v71 = sub_265A554D0;
      v72 = &block_descriptor_140;
      v38 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      v39 = v36;

      v40 = v68;
      sub_265AA7420();
      aBlock = MEMORY[0x277D84F90];
      sub_265A659B0(&qword_280030190, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002FAE0);
      sub_265A659F8(&qword_2800301A0, &unk_28002FAE0);
      v41 = v57;
      v42 = v60;
      v43 = v55;
      sub_265AA78E0();
      MEMORY[0x2667680A0](0, v40, v41, v38);
      _Block_release(v38);
    }

    else
    {
      v44 = v30;
      v45 = v31;
      v46 = v32;
      sub_265A56C08();
      v55 = sub_265AA7830();
      v47 = swift_allocObject();
      *(v47 + 16) = v24;
      *(v47 + 24) = v44;
      *(v47 + 32) = v45;
      *(v47 + 40) = v46;
      v48 = v61;
      *(v47 + 48) = v65;
      *(v47 + 56) = v48;
      v49 = v67;
      *(v47 + 64) = v67;
      *(v47 + 72) = v62 & 1;
      *(v47 + 73) = v63;
      v63 = v45;
      v50 = v64;
      *(v47 + 80) = v66;
      *(v47 + 88) = v50;
      *(v47 + 96) = a9 & 1;
      *(v47 + 104) = a10;
      *(v47 + 112) = a11;
      *(v47 + 120) = a12;
      v73 = sub_265A98CB4;
      v74 = v47;
      aBlock = MEMORY[0x277D85DD0];
      v70 = 1107296256;
      v71 = sub_265A554D0;
      v72 = &block_descriptor_146;
      v64 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v51 = v49;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      v52 = v24;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      v53 = v68;
      sub_265AA7420();
      aBlock = MEMORY[0x277D84F90];
      sub_265A659B0(&qword_280030190, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002FAE0);
      v40 = v53;
      sub_265A659F8(&qword_2800301A0, &unk_28002FAE0);
      v41 = v57;
      v43 = v55;
      v42 = v60;
      sub_265AA78E0();
      v54 = v64;
      MEMORY[0x2667680A0](0, v40, v41, v64);
      _Block_release(v54);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    (*(v59 + 8))(v41, v42);
    return (*(v56 + 8))(v40, v58);
  }

  return result;
}

uint64_t sub_265A92A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, int a8, char a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t (*a14)(uint64_t))
{
  v61 = a8;
  v65 = a13;
  v63 = a12;
  v62 = a11;
  v21 = sub_265AA6E20();
  v68 = *(v21 - 8);
  v69 = v21;
  MEMORY[0x28223BE20](v21);
  v67 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundPipelineState) = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_fadePipelineState) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_textPipelineState) = a4;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  v24 = *(a6 + 24);
  v64 = a6;
  v25 = v24(ObjectType, a6);
  v66 = v25;
  v26 = v61 & 1;
  *(a7 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_variant) = v61 & 1;
  *(a7 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_animationPhase) = a9;
  v27 = (v25 ^ 1) & 1;
  *(a7 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_multilanguage) = v27;
  v28 = *((*MEMORY[0x277D85000] & *a7) + 0x118);
  v29 = swift_unknownObjectRetain();
  v28(v29, v62);
  v30 = v63;
  *(a7 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_isWatchPreview) = v63;
  v31 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_metrics;
  v32 = *(**(a7 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_metrics) + 256);

  v34 = v32(v33);

  if (sub_265A89978(v34, 1) && (v30 & 1) != 0)
  {
    type metadata accessor for HelloMetrics();
    *(a7 + v31) = sub_265A9E688(3u);
  }

  type metadata accessor for CursiveTextMetalDataProvider();
  v35 = *(a7 + v31);
  v36 = v65;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v37 = sub_265A87498(v36, v26, v27, a5, v64, v35);
  v38 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_dataProvider;
  *(a7 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_dataProvider) = v37;

  v39 = *(*v37 + 360);

  v41 = v39(v40);

  v42 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_renderPassData;
  *(a7 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_renderPassData) = v41;

  result = sub_265A8E530(a9, 0);
  if (result)
  {
    v44 = *(a7 + v42);
    v46 = v68;
    v45 = v69;
    v47 = v67;
    if (!v44)
    {
      goto LABEL_12;
    }

    v48 = 1;
    goto LABEL_11;
  }

  result = sub_265A8E530(a9, 1);
  v44 = *(a7 + v42);
  if (result)
  {
    v48 = 2;
  }

  else
  {
    v48 = 3;
  }

  v46 = v68;
  v45 = v69;
  v47 = v67;
  if (v44)
  {
LABEL_11:
    v49 = *(*v44 + 488);

    v49(v48);
  }

LABEL_12:
  if ((v66 & 1) == 0)
  {
    v50 = *(a7 + v38);
    if (!v50)
    {
      __break(1u);
      return result;
    }

    v51 = *(*v50 + 360);

    v53 = v51(v52);

    *(a7 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_renderPassDataNext) = v53;

    if (v53)
    {
      v54 = *(*v53 + 488);

      v54(3);
    }
  }

  v55 = sub_265A780B8();
  (*(v46 + 16))(v47, v55, v45);
  v56 = sub_265AA6E00();
  v57 = sub_265AA77A0();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_265A4C000, v56, v57, "Configuring layer finished", v58, 2u);
    MEMORY[0x2667691D0](v58, -1, -1);
  }

  v59 = (*(v46 + 8))(v47, v45);
  return a14(v59);
}

uint64_t sub_265A92FA0(uint64_t a1, uint64_t a2, void *a3, char a4, int a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, void (*a10)(uint64_t))
{
  v63 = a8;
  v64 = a9;
  v16 = sub_265AA6E20();
  v67 = *(v16 - 8);
  v68 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v62 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v69 = &v61 - v19;
  ObjectType = swift_getObjectType();
  v21 = (*(a2 + 24))(ObjectType, a2);
  v65 = v21;
  v66 = a5;
  v22 = a4 & 1;
  *(a3 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_variant) = v22;
  *(a3 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_animationPhase) = a5;
  v23 = (v21 ^ 1) & 1;
  *(a3 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_multilanguage) = v23;
  v24 = *((*MEMORY[0x277D85000] & *a3) + 0x118);
  v25 = swift_unknownObjectRetain();
  v24(v25, a7);
  v26 = v63;
  *(a3 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_isWatchPreview) = v63;
  v27 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_metrics;
  v28 = *(**(a3 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_metrics) + 256);

  LOBYTE(v28) = v28(v29);

  if (sub_265A89978(v28, 1) && (v26 & 1) != 0)
  {
    type metadata accessor for HelloMetrics();
    *(a3 + v27) = sub_265A9E688(3u);
  }

  type metadata accessor for CursiveTextMetalDataProvider();
  v30 = *(a3 + v27);
  v31 = v64;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v32 = sub_265A87498(v31, v22, v23, a1, a2, v30);
  v33 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_dataProvider;
  *(a3 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_dataProvider) = v32;

  v34 = *(*v32 + 360);

  v36 = v34(v35);

  v37 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_renderPassData;
  *(a3 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_renderPassData) = v36;

  v38 = v66;
  result = sub_265A8E530(v66, 0);
  if (result)
  {
    v40 = *(a3 + v37);
    v42 = v67;
    v41 = v68;
    if (!v40)
    {
      goto LABEL_12;
    }

    v43 = 1;
    goto LABEL_11;
  }

  result = sub_265A8E530(v38, 1);
  v40 = *(a3 + v37);
  if (result)
  {
    v43 = 2;
  }

  else
  {
    v43 = 3;
  }

  v42 = v67;
  v41 = v68;
  if (v40)
  {
LABEL_11:
    v44 = *(*v40 + 488);

    v44(v43);
  }

LABEL_12:
  if ((v65 & 1) == 0)
  {
    v45 = *(a3 + v33);
    if (!v45)
    {
      __break(1u);
      return result;
    }

    v46 = *(*v45 + 360);

    v48 = v46(v47);

    *(a3 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_renderPassDataNext) = v48;

    if (v48)
    {
      v49 = *(*v48 + 488);

      v49(3);
    }
  }

  v50 = sub_265A780B8();
  v51 = *(v42 + 16);
  v51(v69, v50, v41);
  v52 = sub_265AA6E00();
  v53 = sub_265AA77A0();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_265A4C000, v52, v53, "Configuring layer finished", v54, 2u);
    MEMORY[0x2667691D0](v54, -1, -1);
  }

  v55 = *(v42 + 8);
  v56 = v55(v69, v41);
  a10(v56);
  v57 = v62;
  v51(v62, v50, v41);
  v58 = sub_265AA6E00();
  v59 = sub_265AA7780();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_265A4C000, v58, v59, "All pipelines failed to load", v60, 2u);
    MEMORY[0x2667691D0](v60, -1, -1);
  }

  return v55(v57, v41);
}

uint64_t sub_265A93554()
{
  v1 = v0;
  v2 = sub_265AA7410();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v108 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_265AA7440();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v107 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_timeTracker);
  v9 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_animationPhase;
  v10 = *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_animationPhase);

  v11 = sub_265A8E530(v10, 2);
  v12 = 0.0;
  if (!v11)
  {
    v13 = *(**(v1 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_metrics) + 664);

    v15 = v13(v14);

    v12 = v15;
  }

  (*(*v8 + 192))(-v12);

  result = sub_265A8E530(*(v1 + v9), 0);
  if (result)
  {
    v17 = *(v1 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_renderPassData);
    if (!v17)
    {
      return result;
    }

    v106 = v6;
    v18 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_metrics;
    v19 = *(**(v1 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_metrics) + 664);

    v21 = v19(v20);

    result = (*(*v17 + 240))(v22);
    if (result)
    {
      v23 = (*(*result + 200))(result);

      v24 = *(**(v1 + v18) + 688);

      v26 = v24(v25);

      v28 = (*(*v17 + 216))(v27);
      if (v29)
      {
        v30 = v28;
        v31 = v29;
        v32 = *((*MEMORY[0x277D85000] & *v1) + 0x110);

        v34 = v32(v33);
        if (v34)
        {
          v36 = v34;
          v37 = v35;
          sub_265A56C08();
          v104 = sub_265AA7830();
          v38 = swift_allocObject();
          *(v38 + 16) = v36;
          *(v38 + 24) = v37;
          *(v38 + 32) = v30;
          *(v38 + 40) = v31;
          *(v38 + 48) = ((v21 + v23) + v26);
          v113 = sub_265A98D40;
          v114 = v38;
          aBlock = MEMORY[0x277D85DD0];
          v110 = 1107296256;
          v111 = sub_265A554D0;
          v112 = &block_descriptor_23;
          v103 = _Block_copy(&aBlock);
          swift_unknownObjectRetain();

          v39 = v107;
          sub_265AA7420();
          aBlock = MEMORY[0x277D84F90];
          sub_265A659B0(&qword_280030190, MEMORY[0x277D85198]);
          v105 = v5;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002FAE0);
          sub_265A659F8(&qword_2800301A0, &unk_28002FAE0);
          v40 = v108;
          sub_265AA78E0();
          v41 = v103;
          v42 = v104;
          MEMORY[0x2667680A0](0, v39, v40, v103);
          _Block_release(v41);
          swift_unknownObjectRelease();

          (*(v3 + 8))(v40, v2);
LABEL_20:
          (*(v106 + 8))(v39, v105);
          goto LABEL_21;
        }

        goto LABEL_25;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  result = sub_265A8E530(*(v1 + v9), 1);
  if (result)
  {
    v43 = *(v1 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_renderPassData);
    if (!v43)
    {
      return result;
    }

    v106 = v6;
    v44 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_metrics;
    v45 = *(**(v1 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_metrics) + 568);

    v47 = v45(v46);

    v48 = *(**(v1 + v44) + 592);

    v50 = v48(v49);

    v51 = *(**(v1 + v44) + 616);

    v53 = v51(v52);

    v54 = *(**(v1 + v44) + 664);

    v56 = v54(v55);

    result = (*(*v43 + 240))(v57);
    if (result)
    {
      v58 = (*(*result + 200))(result);

      v59 = *(**(v1 + v44) + 688);

      v61 = v59(v60);

      v63 = (*(*v43 + 216))(v62);
      if (v64)
      {
        v65 = v63;
        v66 = v64;
        v104 = v2;
        v105 = v3;
        v67 = *((*MEMORY[0x277D85000] & *v1) + 0x110);

        v69 = v67(v68);
        if (v69)
        {
          v71 = v69;
          v72 = v70;
          sub_265A56C08();
          v103 = sub_265AA7830();
          v73 = swift_allocObject();
          *(v73 + 16) = v71;
          *(v73 + 24) = v72;
          *(v73 + 32) = v65;
          *(v73 + 40) = v66;
          *(v73 + 48) = (((((v47 + v50) + v53) + v56) + v58) + v61);
          v113 = sub_265A98D40;
          v114 = v73;
          aBlock = MEMORY[0x277D85DD0];
          v110 = 1107296256;
          v111 = sub_265A554D0;
          v112 = &block_descriptor_16;
          v102 = _Block_copy(&aBlock);
          swift_unknownObjectRetain();

          v74 = v107;
          sub_265AA7420();
          aBlock = MEMORY[0x277D84F90];
          sub_265A659B0(&qword_280030190, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002FAE0);
          sub_265A659F8(&qword_2800301A0, &unk_28002FAE0);
          v75 = v108;
          v76 = v104;
          sub_265AA78E0();
          v77 = v102;
          v78 = v103;
          MEMORY[0x2667680A0](0, v74, v75, v102);
          _Block_release(v77);
          swift_unknownObjectRelease();

          (*(v105 + 8))(v75, v76);
          (*(v106 + 8))(v74, v5);
LABEL_21:
        }

LABEL_25:

        return swift_bridgeObjectRelease_n();
      }

      goto LABEL_22;
    }

    goto LABEL_28;
  }

  result = sub_265A8E530(*(v1 + v9), 2);
  if ((result & 1) == 0)
  {
    return result;
  }

  v79 = *(v1 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_renderPassDataNext);
  if (!v79)
  {
    return result;
  }

  v106 = v6;
  v80 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_metrics;
  v81 = *(**(v1 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_metrics) + 712);

  v83 = v81(v82);

  v84 = *(**(v1 + v80) + 736);

  v86 = v84(v85);

  v88 = (*(*v79 + 216))(v87);
  if (v89)
  {
    v90 = v88;
    v91 = v89;
    v92 = *((*MEMORY[0x277D85000] & *v1) + 0x110);

    v94 = v92(v93);
    if (v94)
    {
      v96 = v94;
      v97 = v95;
      sub_265A56C08();
      v104 = sub_265AA7830();
      v98 = swift_allocObject();
      *(v98 + 16) = v96;
      *(v98 + 24) = v97;
      *(v98 + 32) = v90;
      *(v98 + 40) = v91;
      *(v98 + 48) = (v83 + v86);
      v113 = sub_265A988C4;
      v114 = v98;
      aBlock = MEMORY[0x277D85DD0];
      v110 = 1107296256;
      v111 = sub_265A554D0;
      v112 = &block_descriptor_9;
      v103 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      v39 = v107;
      sub_265AA7420();
      aBlock = MEMORY[0x277D84F90];
      sub_265A659B0(&qword_280030190, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002FAE0);
      v105 = v5;
      sub_265A659F8(&qword_2800301A0, &unk_28002FAE0);
      v99 = v108;
      sub_265AA78E0();
      v100 = v103;
      v101 = v104;
      MEMORY[0x2667680A0](0, v39, v99, v103);
      _Block_release(v100);
      swift_unknownObjectRelease();

      (*(v3 + 8))(v99, v2);
      goto LABEL_20;
    }

    goto LABEL_25;
  }

LABEL_22:
}

uint64_t sub_265A942B4()
{
  v1 = *(**(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_timeTracker) + 184);

  v1(v2);
}

uint64_t sub_265A94324()
{
  v1 = *(**(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_timeTracker) + 176);

  v1(v2);
}

uint64_t sub_265A94394(uint64_t result)
{
  *(v1 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_forceAnimationToEnd) = 1;
  if (result)
  {
    return (*((*MEMORY[0x277D85000] & *v1) + 0x398))();
  }

  return result;
}

uint64_t sub_265A943E8()
{
  v1 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_timeTracker;
  v2 = *(**(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_timeTracker) + 184);

  v2(v3);

  v4 = *(v0 + v1);

  v5 = sub_265A5368C();
  (*(*v4 + 192))(v5);
}

void sub_265A944A0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  type metadata accessor for HelloMetrics();
  v9 = *(**(v4 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_metrics) + 256);

  LOBYTE(v9) = v9(v10);

  v11 = sub_265A9E688(v9);
  v14.origin.x = a1;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  Width = CGRectGetWidth(v14);
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (Width <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (Width >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15.origin.x = a1;
  v15.origin.y = a2;
  v15.size.width = a3;
  v15.size.height = a4;
  Height = CGRectGetHeight(v15);
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (Height < 9.22337204e18)
  {
    (*(*v11 + 792))(Width, 0, Height, 0, 0x100000000, 0x100000000);
    v16.origin.x = a1;
    v16.origin.y = a2;
    v16.size.width = a3;
    v16.size.height = a4;
    CGRectGetWidth(v16);
    (*(*v11 + 304))();
    v17.origin.x = a1;
    v17.origin.y = a2;
    v17.size.width = a3;
    v17.size.height = a4;
    CGRectGetHeight(v17);
    (*(*v11 + 328))();
    v18.origin.x = a1;
    v18.origin.y = a2;
    v18.size.width = a3;
    v18.size.height = a4;
    CGRectGetMidX(v18);
    v19.origin.x = a1;
    v19.origin.y = a2;
    v19.size.width = a3;
    v19.size.height = a4;
    CGRectGetMidY(v19);
    (*(*v11 + 352))();
    (*(*v11 + 376))();
    v20.origin.x = a1;
    v20.origin.y = a2;
    v20.size.width = a3;
    v20.size.height = a4;
    CGRectGetHeight(v20);

    return;
  }

LABEL_13:
  __break(1u);
}

id sub_265A94824()
{
  result = [v0 device];
  if (!result)
  {
    return result;
  }

  v2 = result;
  [v0 bounds];
  Width = CGRectGetWidth(v17);
  result = [v0 contentsScale];
  v5 = Width * v4;
  if (COERCE__INT64(fabs(Width * v4)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v0 bounds];
  Height = CGRectGetHeight(v18);
  result = [v0 contentsScale];
  v8 = Height * v7;
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v9 = [objc_opt_self() texture2DDescriptorWithPixelFormat:objc_msgSend(v0 width:sel_pixelFormat) height:v5 mipmapped:v8, 0];
  [v9 setTextureType_];
  [v9 setUsage_];
  v10 = [v2 newTextureWithDescriptor_];
  if (v10)
  {
    v11 = v10;
    (*((*MEMORY[0x277D85000] & *v0) + 0x3A0))(0, v10);
    v12 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithMTLTexture:v11 options:0];
    if (v12)
    {
      v13 = v12;
      v14 = [objc_opt_self() contextWithMTLDevice_];
      v15 = [v13 imageByApplyingCGOrientation_];
      [v13 extent];
      v16 = [v14 createCGImage:v15 fromRect:?];

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v16;
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return 0;
}

id sub_265A94B18(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  result = [v4 device];
  if (result)
  {
    v9 = result;
    v10 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_metrics;
    v11 = *(**&v4[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_metrics] + 792);

    v11(a1, 0, a2, 0, 0x100000000, 0x100000000);

    v12 = *(**&v4[v10] + 472);

    v14 = v12(v13);

    if (v14 == 0.0)
    {
      swift_unknownObjectRelease();
      v15 = *&v4[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_blurFilter];
      *&v4[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_blurFilter] = 0;

      *&v4[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundBlurred] = 0;
    }

    else
    {
      v16 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_blurFilter;
      if (!*&v4[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_blurFilter])
      {
        v17 = *(**&v4[v10] + 472);
        swift_unknownObjectRetain();

        v19 = v17(v18);

        v20 = objc_allocWithZone(MEMORY[0x277CD7520]);
        *&v21 = v19;
        v22 = [v20 initWithDevice:v9 sigma:v21];
        swift_unknownObjectRelease();
        v23 = *&v4[v16];
        *&v4[v16] = v22;
      }

      v24 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundBlurred;
      if (!*&v4[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundBlurred] || (v25 = [a3 width], (v26 = *&v4[v24]) == 0) || v25 != objc_msgSend(v26, sel_width) || (v27 = objc_msgSend(a3, sel_height), (v28 = *&v4[v24]) == 0) || v27 != objc_msgSend(v28, sel_height))
      {
        v29 = [objc_opt_self() texture2DDescriptorWithPixelFormat:objc_msgSend(v4 width:sel_pixelFormat) height:objc_msgSend(a3 mipmapped:sel_width), objc_msgSend(a3, sel_height), 0];
        [v29 setUsage_];
        v30 = [v9 newTextureWithDescriptor_];
        swift_unknownObjectRelease();

        *&v4[v24] = v30;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_265A94E74()
{
  result = [v0 nextDrawable];
  if (result)
  {
    v2 = *((*MEMORY[0x277D85000] & *v0) + 0x3A0);
    v3 = swift_unknownObjectRetain();
    v2(v3, 0);
    return swift_unknownObjectRelease_n();
  }

  return result;
}

void sub_265A94F08(void *a1, uint64_t a2)
{
  v3 = v2;
  v402 = *MEMORY[0x277D85DE8];
  v6 = sub_265AA6E20();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v329 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v329 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v329 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v351 = v329 - v18;
  MEMORY[0x28223BE20](v17);
  v357 = v329 - v19;
  v20 = sub_265AA7410();
  v355 = *(v20 - 8);
  v356 = v20;
  MEMORY[0x28223BE20](v20);
  v352 = v329 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_265AA7440();
  v353 = *(v22 - 1);
  v354 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = v329 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = [v3 device];
  if (!v25)
  {
    return;
  }

  v26 = *&v3[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_commandQueue];
  if (v26)
  {
    v349 = a1;
    v350 = v25;
    v27 = [v26 commandBuffer];
    if (v27)
    {
      v28 = v27;
      v362 = *&v3[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_textPipelineState];
      if (v362)
      {
        v361 = v3;
        v29 = v349;
        if (v349)
        {
          swift_unknownObjectRetain();
          v30 = [v29 texture];
LABEL_11:
          v341 = v13;
          v342 = a2;
          v338 = v16;
          v339 = v10;
          v348 = v28;
          v345 = v7;
          v31 = v30;
          v360 = COERCE_DOUBLE([v30 width]);
          v347 = v31;
          v359 = COERCE_DOUBLE([v31 height]);
          v32 = v361;
          v33 = *MEMORY[0x277D85000] & *v361;
          v343 = *(v33 + 0x110);
          v344 = v33 + 272;
          if (v343())
          {
            v35 = v34;
            ObjectType = swift_getObjectType();
            v37 = (*(v35 + 32))(ObjectType, v35);
            swift_unknownObjectRelease();
            if (v37)
            {
              *&v32[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_background] = v37;
              swift_unknownObjectRelease();
            }
          }

          v340 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_timeTracker;
          v38 = *(**&v32[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_timeTracker] + 176);

          v40 = v38(v39);

          if ((v343)(v41))
          {
            v43 = v42;
            v44 = swift_getObjectType();
            (*(v43 + 40))(&v376, v44, v43);
            swift_unknownObjectRelease();
            if ((v377 & 1) == 0)
            {
              a = v376.a;
              v392 = v376;
              v358 = *&v376.b;
              v404.origin.x = 0.0;
              v404.origin.y = 0.0;
              v404.size.width = 0.0;
              v404.size.height = 0.0;
              v405 = CGRectApplyAffineTransform(v404, &v392);
              MinY = CGRectGetMinY(v405);
              v47 = &v32[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundUniforms];
              *&v32[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundUniforms + 4] = MinY;
              v48 = atan2(*&v358, a) * 180.0 / 3.14159265;
              if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
LABEL_177:
                __break(1u);
                goto LABEL_178;
              }

              if (v48 <= -2147483650.0)
              {
LABEL_178:
                __break(1u);
LABEL_179:
                __break(1u);
              }

              if (v48 >= 2147483650.0)
              {
                goto LABEL_179;
              }

              *(v47 + 2) = v48;
            }
          }

          v49 = v40;
          v50 = v32[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_multilanguage];
          p_opt_inst_meths = &OBJC_PROTOCOL___CAMetalDisplayLinkDelegate.opt_inst_meths;
          v346 = v6;
          if (v50 == 1)
          {
            v52 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_animationPhase;
            if (sub_265A8E530(v32[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_animationPhase], 0) || sub_265A8E530(v32[v52], 1))
            {
              v53 = *&v32[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_renderPassData];
              if (v53)
              {

                [v32 contentsScale];
                v54.n128_f32[0] = v54.n128_f64[0];
                v55 = *&v32[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_pixelsPerMM];
                v56 = *(*v53 + 624);
                LOBYTE(v392.a) = v32[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_pixelsPerMM + 4];
                v57 = v350;
                v56(v350, *&v360, *&v359, v55 | (LOBYTE(v392.a) << 32), v54);
                v58 = sub_265A8E530(v32[v52], 0);
                v59 = *(*v53 + 488);
                if (v58)
                {
                  v60 = 1;
                }

                else
                {
                  v60 = 2;
                }

                v335 = *(*v53 + 488);
                v61 = v59(v60);
                v62 = (*(*v53 + 264))(v61);
                v63 = sub_265A54BDC();
                v64 = sub_265A54BDC();
                v65 = *(*v53 + 632);
                v66 = v40;
                v337 = v53;
                LODWORD(v57) = v65(v57, 0, v62 & 1, v63 & 1, v64 & 1, v66);
                v68 = v67;
                LODWORD(v336) = v69;
                if (sub_265A8E530(v32[v52], 1))
                {
                  v70 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_metrics;
                  v71 = v361;
                  v72 = v57;
                  v73 = *(**&v361[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_metrics] + 544);

                  v75 = v73(v74);
                  v6 = v346;
                  v76 = v75;

                  v77 = v49 - v76;
                  v57 = *(**(v71 + v70) + 568);

                  v79 = (v57)(v78);
                  LODWORD(v57) = v72;
                  v80 = v79;

                  v81 = fminf(fmaxf((v77 - (v80 * 0.5)) * 0.5, 0.0), 1.0);
                  *(v71 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundUniforms) = (v81 * v81) * ((v81 * -2.0) + 3.0);
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F918);
                v82 = swift_allocObject();
                *(v82 + 16) = xmmword_265AAD260;
                *&v358 = v82;
                v83 = v337;
                *(v82 + 32) = v337;
                if (v57)
                {
                  v334 = v57;
                  v32 = v361;
                  v84 = *&v361[v340];

                  v85 = sub_265A5368C();
                  (*(*v84 + 192))(v85);

                  v32[v52] = 2;
                  v335(3);
                  v86 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_metrics;
                  v87 = *(**&v32[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_metrics] + 712);

                  v89 = v87(v88);

                  v90 = *(**&v32[v86] + 736);

                  v92 = v90(v91);

                  v94 = v89 + v92;
                  v95 = (*(*v83 + 216))(v93);
                  v97 = v96;
                  v57 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_renderPassDataNext;
                  v98 = *&v32[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_renderPassDataNext];
                  v340 = v95;
                  if (v98)
                  {
                    v99 = *(*v98 + 216);

                    v335 = v99(v100);
                    v102 = v101;
                  }

                  else
                  {
                    v335 = 0;
                    v102 = 0;
                  }

                  v181 = v94;
                  v6 = v346;
                  p_opt_inst_meths = &OBJC_PROTOCOL___CAMetalDisplayLinkDelegate.opt_inst_meths;
                  if (v97)
                  {

                    v183 = (v343)(v182);
                    if (v183)
                    {
                      v185 = v183;
                      v330 = v184;
                      sub_265A56C08();
                      v333 = sub_265AA7830();
                      v186 = swift_allocObject();
                      v331 = v185;
                      v332 = v57;
                      v187 = v330;
                      *(v186 + 16) = v185;
                      *(v186 + 24) = v187;
                      *(v186 + 32) = v340;
                      *(v186 + 40) = v97;
                      *(v186 + 48) = v335;
                      *(v186 + 56) = v102;
                      *(v186 + 64) = v181;
                      *(v186 + 72) = 0;
                      *&v392.tx = sub_265A98D50;
                      *&v392.ty = v186;
                      *&v392.a = MEMORY[0x277D85DD0];
                      *&v392.b = 1107296256;
                      *&v392.c = sub_265A554D0;
                      *&v392.d = &block_descriptor_57;
                      v335 = _Block_copy(&v392);

                      v57 = v332;
                      swift_unknownObjectRetain();

                      sub_265AA7420();
                      *&v392.a = MEMORY[0x277D84F90];
                      v330 = sub_265A659B0(&qword_280030190, MEMORY[0x277D85198]);
                      v340 = v102;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002FAE0);
                      sub_265A659F8(&qword_2800301A0, &unk_28002FAE0);
                      v188 = v352;
                      v189 = v356;
                      sub_265AA78E0();
                      v330 = v97;
                      v190 = v335;
                      v191 = v333;
                      MEMORY[0x2667680A0](0, v24, v188, v335);
                      _Block_release(v190);
                      swift_unknownObjectRelease();

                      v192 = v189;
                      v83 = v337;
                      (*(v355 + 8))(v188, v192);
                      (v353)[1](v24, v354);
                    }

                    else
                    {
                      swift_bridgeObjectRelease_n();
                    }
                  }

                  v193 = *&v32[v57];
                  LOBYTE(v57) = v334;
                  if (v193)
                  {
                    v194 = *(*v193 + 216);

                    v196 = v194(v195);
                    LOBYTE(v57) = v334;
                    v197 = v196;
                    v199 = v198;

                    if (v199)
                    {
                      v340 = v197;

                      v201 = (v343)(v200);
                      if (v201)
                      {
                        v203 = v201;
                        v204 = v202;
                        sub_265A56C08();
                        v344 = sub_265AA7830();
                        v205 = swift_allocObject();
                        *(v205 + 16) = v203;
                        *(v205 + 24) = v204;
                        *(v205 + 32) = v340;
                        *(v205 + 40) = v199;
                        *(v205 + 48) = v181;
                        *&v392.tx = sub_265A98D40;
                        *&v392.ty = v205;
                        *&v392.a = MEMORY[0x277D85DD0];
                        *&v392.b = 1107296256;
                        *&v392.c = sub_265A554D0;
                        *&v392.d = &block_descriptor_50;
                        v343 = _Block_copy(&v392);
                        swift_unknownObjectRetain();

                        sub_265AA7420();
                        *&v392.a = MEMORY[0x277D84F90];
                        v335 = sub_265A659B0(&qword_280030190, MEMORY[0x277D85198]);
                        v340 = v203;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002FAE0);
                        sub_265A659F8(&qword_2800301A0, &unk_28002FAE0);
                        v206 = v352;
                        v207 = v356;
                        sub_265AA78E0();
                        v335 = v199;
                        v209 = v343;
                        v208 = v344;
                        MEMORY[0x2667680A0](0, v24, v206, v343);
                        _Block_release(v209);
                        swift_unknownObjectRelease();

                        v210 = v207;
                        v83 = v337;
                        (*(v355 + 8))(v206, v210);
                        (v353)[1](v24, v354);
                      }

                      else
                      {
                        swift_bridgeObjectRelease_n();
                      }
                    }
                  }
                }

                else
                {

                  v32 = v361;
                  p_opt_inst_meths = (&OBJC_PROTOCOL___CAMetalDisplayLinkDelegate + 40);
                }

                v179 = v57 & 1;
                v180 = v336;
LABEL_69:
                sub_265A97D2C(v83, v179, v180 & 1, 0, v68);
LABEL_70:

LABEL_71:
                v353 = objc_opt_self();
                v211 = [v353 shared];
                v212 = [v211 readValueForKey_];

                if (v212)
                {
                  sub_265AA78D0();
                  swift_unknownObjectRelease();
                }

                else
                {
                  memset(&v382, 0, 32);
                }

                *&v392.a = *&v382.a;
                *&v392.c = *&v382.c;
                if (*&v382.d)
                {
                  if ((swift_dynamicCast() & 1) != 0 && LOBYTE(v364.a) == 1)
                  {
                    v213 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundUniforms;
                    if (*&v32[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundUniforms] < 1.0)
                    {
                      v214 = sub_265A780B8();
                      (*(v345 + 16))(v357, v214, v6);
                      v215 = v32;
                      v216 = sub_265AA6E00();
                      v217 = sub_265AA77A0();

                      if (os_log_type_enabled(v216, v217))
                      {
                        v218 = swift_slowAlloc();
                        *v218 = 134217984;
                        *(v218 + 4) = *&v32[v213];
                        _os_log_impl(&dword_265A4C000, v216, v217, "Potential degenerate fadeFromBlack %f", v218, 0xCu);
                        MEMORY[0x2667691D0](v218, -1, -1);
                      }

                      (*(v345 + 8))(v357, v6);
                    }
                  }
                }

                else
                {
                  sub_265A5ABC8(&v392);
                }

                LODWORD(v355) = sub_265A8E530(*(&p_opt_inst_meths[31]->entrysize + v32), 1) && *&v32[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundUniforms] < 1.0;
                v219 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_enableBackgroundRenderPass;
                v220 = v32[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_enableBackgroundRenderPass];
                v221 = [objc_allocWithZone(MEMORY[0x277CD6F50]) init];
                v222 = [v221 colorAttachments];
                v223 = [v222 objectAtIndexedSubscript_];

                if (v223)
                {
                  [v223 setTexture_];

                  v224 = [v221 colorAttachments];
                  v225 = [v224 objectAtIndexedSubscript_];

                  if (v225)
                  {
                    if ((v220 | v355))
                    {
                      v226 = 0;
                    }

                    else
                    {
                      v226 = 2;
                    }

                    [v225 setLoadAction_];

                    v227 = [v221 colorAttachments];
                    v228 = [v227 objectAtIndexedSubscript_];

                    if (v228)
                    {
                      [v228 setClearColor_];

                      v229 = v361;
                      v356 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_background;
                      v230 = *&v361[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_background];
                      if (v230)
                      {
                        if ([swift_unknownObjectRetain() width] != 1 || objc_msgSend(v230, sel_height) != 1)
                        {
                          sub_265A94B18(*&v360, *&v359, v230);
                          v231 = *(v229 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_blurFilter);
                          if (v231)
                          {
                            v232 = *(v229 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundBlurred);
                            if (v232)
                            {
                              swift_unknownObjectRetain();
                              [v231 encodeToCommandBuffer:v348 sourceTexture:v230 destinationTexture:v232];
                              swift_unknownObjectRelease();
                              v230 = v232;
                            }
                          }
                        }

                        goto LABEL_108;
                      }

                      v233 = [v353 shared];
                      v234 = [v233 readValueForKey_];

                      if (v234)
                      {
                        sub_265AA78D0();
                        swift_unknownObjectRelease();
                      }

                      else
                      {
                        memset(&v382, 0, 32);
                      }

                      *&v392.a = *&v382.a;
                      *&v392.c = *&v382.c;
                      if (*&v382.d)
                      {
                        if ((swift_dynamicCast() & 1) != 0 && LOBYTE(v364.a) == 1)
                        {
                          v235 = v221;
                          v236 = sub_265A780B8();
                          v238 = v345;
                          v237 = v346;
                          v239 = v351;
                          (*(v345 + 16))(v351, v236, v346);
                          v240 = sub_265AA6E00();
                          v241 = sub_265AA7780();
                          if (os_log_type_enabled(v240, v241))
                          {
                            v242 = swift_slowAlloc();
                            *v242 = 0;
                            _os_log_impl(&dword_265A4C000, v240, v241, "No background texture!", v242, 2u);
                            MEMORY[0x2667691D0](v242, -1, -1);
                          }

                          (*(v238 + 8))(v239, v237);
                          v230 = 0;
                          v229 = v361;
                          v221 = v235;
LABEL_108:
                          v243 = [v348 renderCommandEncoderWithDescriptor_];
                          v354 = v221;
                          v357 = v230;
                          if (!v243)
                          {

                            v249 = sub_265A780B8();
                            v250 = v345;
                            v251 = v346;
                            v252 = v341;
                            (*(v345 + 16))(v341, v249, v346);
                            v253 = sub_265AA6E00();
                            v254 = sub_265AA7780();
                            if (os_log_type_enabled(v253, v254))
                            {
                              v255 = swift_slowAlloc();
                              *v255 = 0;
                              _os_log_impl(&dword_265A4C000, v253, v254, "Failed to instantiate encoder!", v255, 2u);
                              MEMORY[0x2667691D0](v255, -1, -1);
                            }

                            (*(v250 + 8))(v252, v251);
                            v256 = v250;
LABEL_159:
                            v319 = v342;
                            if (v349)
                            {
                              v320 = v348;
                              [v348 presentDrawable_];
LABEL_171:
                              [v320 commit];
                              if (v319)
                              {
                                [v320 waitUntilCompleted];
                              }

                              swift_unknownObjectRelease();
                              swift_unknownObjectRelease();
                              swift_unknownObjectRelease();
                              swift_unknownObjectRelease();

                              swift_unknownObjectRelease();
                              return;
                            }

                            v321 = [v353 shared];
                            v322 = [v321 readValueForKey_];

                            if (v322)
                            {
                              sub_265AA78D0();
                              swift_unknownObjectRelease();
                            }

                            else
                            {
                              v374 = 0u;
                              v375 = 0u;
                            }

                            *&v364.a = v374;
                            *&v364.c = v375;
                            if (*(&v375 + 1))
                            {
                              if (swift_dynamicCast())
                              {
                                v320 = v348;
                                if (v363 != 1)
                                {
                                  goto LABEL_171;
                                }

                                v323 = sub_265A780B8();
                                v324 = v339;
                                (*(v256 + 16))(v339, v323, v251);
                                v325 = sub_265AA6E00();
                                v326 = sub_265AA77A0();
                                if (os_log_type_enabled(v325, v326))
                                {
                                  v327 = v256;
                                  v328 = swift_slowAlloc();
                                  *v328 = 0;
                                  _os_log_impl(&dword_265A4C000, v325, v326, "Potential degenerate lack of drawable", v328, 2u);
                                  v319 = v342;
                                  MEMORY[0x2667691D0](v328, -1, -1);

                                  (*(v327 + 8))(v324, v251);
                                }

                                else
                                {

                                  (*(v256 + 8))(v324, v251);
                                }
                              }
                            }

                            else
                            {
                              sub_265A5ABC8(&v364);
                            }

                            v320 = v348;
                            goto LABEL_171;
                          }

                          v244 = v243;
                          if (*(v229 + v219) == 1 && (v245 = *(v229 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundPipelineState)) != 0)
                          {
                            swift_unknownObjectRetain();
                            [v244 setRenderPipelineState_];
                            [v244 setVertexBuffer:*(v229 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundVertexCoordsBuffer) offset:0 atIndex:0];
                            [v244 setVertexBuffer:*(v229 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundTextureCoordsBuffer) offset:0 atIndex:1];
                            [v244 setFragmentTexture:*(v229 + v356) atIndex:0];
                          }

                          else
                          {
                            if (!v355 || (v246 = *(v229 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_fadePipelineState)) == 0)
                            {
LABEL_129:
                              v265 = v358;
                              if (v358 >> 62)
                              {
                                v317 = v358;
                                v318 = sub_265AA79F0();
                                v265 = v317;
                                v266 = v318;
                                if (v318)
                                {
                                  goto LABEL_131;
                                }
                              }

                              else
                              {
                                v266 = *((v358 & 0xFFFFFFFFFFFFFF8) + 0x10);
                                if (v266)
                                {
LABEL_131:
                                  if (v266 >= 1)
                                  {
                                    v267 = 0;
                                    v268 = v229 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundUniforms;
                                    v355 = v265 & 0xC000000000000001;
                                    do
                                    {
                                      if (v355)
                                      {
                                        v269 = MEMORY[0x2667681B0](v267);
                                      }

                                      else
                                      {
                                        v269 = *(v265 + 8 * v267 + 32);
                                      }

                                      ++v267;
                                      (*(*v269 + 576))(&v378);
                                      v270 = v380;
                                      v271 = v360;
                                      if (v381)
                                      {
                                        v272 = -1;
                                      }

                                      else
                                      {
                                        v271 = v379;
                                        v272 = 0;
                                      }

                                      v273 = vdupq_n_s64(v272);
                                      if (v381)
                                      {
                                        v270 = v359;
                                      }

                                      *&v364.a = vbicq_s8(v378, v273);
                                      v364.c = v271;
                                      v364.d = v270;
                                      [v244 setScissorRect_];
                                      [v244 setVertexBuffer:(*(*v269 + 456))(objc_msgSend(v244 offset:sel_setRenderPipelineState_ atIndex:{v362)), 0, 0}];
                                      v274 = swift_unknownObjectRelease();
                                      v275 = *(*v269 + 552);
                                      v275(&v382, v274);
                                      v370 = v388;
                                      v371 = v389;
                                      v372 = v390;
                                      v373 = v391;
                                      v366 = v384;
                                      v367 = v385;
                                      v368 = v386;
                                      v369 = v387;
                                      v364 = v382;
                                      v365 = v383;
                                      v275(&v392, [v244 setVertexBytes:&v364 length:192 atIndex:1]);
                                      v370 = v398;
                                      v371 = v399;
                                      v372 = v400;
                                      v373 = v401;
                                      v366 = v394;
                                      v367 = v395;
                                      v368 = v396;
                                      v369 = v397;
                                      v364 = v392;
                                      v365 = v393;
                                      [v244 setFragmentBytes:&v364 length:192 atIndex:0];
                                      [v244 setFragmentTexture:v357 atIndex:0];
                                      [v244 setFragmentBuffer:(*(*v269 + 384))(objc_msgSend(v244 offset:sel_setFragmentTexture_atIndex_ atIndex:{*&v361[v356], 1)), 0, 1}];
                                      v276 = swift_unknownObjectRelease();
                                      [v244 setFragmentBuffer:(*(*v269 + 408))(v276) offset:0 atIndex:2];
                                      v277 = swift_unknownObjectRelease();
                                      [v244 setFragmentBuffer:(*(*v269 + 432))(v277) offset:0 atIndex:3];
                                      swift_unknownObjectRelease();
                                      v278 = *(v268 + 2);
                                      v364.a = *v268;
                                      LODWORD(v364.b) = v278;
                                      [v244 setFragmentBytes:&v364 length:12 atIndex:4];
                                      [v244 drawPrimitives:4 vertexStart:0 vertexCount:4];

                                      v265 = v358;
                                    }

                                    while (v266 != v267);
                                    goto LABEL_158;
                                  }

                                  __break(1u);
                                  goto LABEL_177;
                                }
                              }

LABEL_158:

                              [v244 endEncoding];
                              swift_unknownObjectRelease();
                              v256 = v345;
                              v251 = v346;
                              goto LABEL_159;
                            }

                            swift_unknownObjectRetain();
                            v247 = [v353 shared];
                            v248 = [v247 readValueForKey_];

                            if (v248)
                            {
                              sub_265AA78D0();
                              swift_unknownObjectRelease();
                            }

                            else
                            {
                              memset(&v382, 0, 32);
                            }

                            *&v392.a = *&v382.a;
                            *&v392.c = *&v382.c;
                            if (*&v382.d)
                            {
                              if ((swift_dynamicCast() & 1) != 0 && LOBYTE(v364.a) == 1)
                              {
                                v257 = sub_265A780B8();
                                v259 = v345;
                                v258 = v346;
                                v260 = v338;
                                (*(v345 + 16))(v338, v257, v346);
                                v261 = sub_265AA6E00();
                                v262 = sub_265AA77A0();
                                if (os_log_type_enabled(v261, v262))
                                {
                                  v263 = swift_slowAlloc();
                                  *v263 = 0;
                                  _os_log_impl(&dword_265A4C000, v261, v262, "Potential degenerate entry into needsFadeRenderPass path", v263, 2u);
                                  MEMORY[0x2667691D0](v263, -1, -1);
                                }

                                (*(v259 + 8))(v260, v258);
                              }
                            }

                            else
                            {
                              sub_265A5ABC8(&v392);
                            }

                            [v244 setRenderPipelineState_];
                            [v244 setVertexBuffer:*(v229 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundVertexCoordsBuffer) offset:0 atIndex:0];
                            [v244 setVertexBuffer:*(v229 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundTextureCoordsBuffer) offset:0 atIndex:1];
                          }

                          v264 = *(v229 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundUniforms + 8);
                          v392.a = *(v229 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundUniforms);
                          LODWORD(v392.b) = v264;
                          [v244 setFragmentBytes:&v392 length:12 atIndex:0];
                          [v244 drawPrimitives:4 vertexStart:0 vertexCount:4];
                          swift_unknownObjectRelease();
                          goto LABEL_129;
                        }
                      }

                      else
                      {
                        sub_265A5ABC8(&v392);
                      }

                      v230 = 0;
                      goto LABEL_108;
                    }

                    goto LABEL_182;
                  }
                }

                else
                {
                  __break(1u);
                }

                __break(1u);
LABEL_182:
                __break(1u);
                goto LABEL_183;
              }
            }

            if (!sub_265A8E530(v32[v52], 2))
            {
              *&v358 = MEMORY[0x277D84F90];
              p_opt_inst_meths = (&OBJC_PROTOCOL___CAMetalDisplayLinkDelegate + 40);
              goto LABEL_71;
            }

            v134 = *&v32[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_renderPassData];
            p_opt_inst_meths = (&OBJC_PROTOCOL___CAMetalDisplayLinkDelegate + 40);
            if (!v134)
            {
              *&v358 = MEMORY[0x277D84F90];
              goto LABEL_71;
            }

            v335 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_renderPassDataNext;
            v135 = *&v32[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_renderPassDataNext];
            v103 = MEMORY[0x277D84F90];
            if (v135)
            {
              v332 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_renderPassData;
              v336 = v134;

              [v32 contentsScale];
              v136.n128_f32[0] = v136.n128_f64[0];
              v137 = *(*v336 + 624);
              LOBYTE(v392.a) = 1;
              v138 = v350;
              v139 = v359;
              v140 = v360;
              v137(v350, *&v360, *&v359, 0x100000000, v136);
              [v32 contentsScale];
              v141.n128_f32[0] = v141.n128_f64[0];
              v142 = *(*v135 + 624);
              LOBYTE(v392.a) = 1;
              v143 = v142(v138, *&v140, *&v139, 0x100000000, v141);
              v144 = *(*v135 + 264);
              v145 = (v144)(v143);
              v146 = sub_265A54BDC();
              v147 = sub_265A54BDC();
              v148 = v40;
              LODWORD(v139) = (*(*v336 + 632))(v138, 0, v145 & 1, v146 & 1, v147 & 1, v148);
              v150 = v149;
              LODWORD(v333) = v151;
              v152 = v144();
              v153 = sub_265A54BDC();
              v154 = sub_265A54BDC();
              (*(*v135 + 632))(v138, 1, v152 & 1, v153 & 1, v154 & 1, v49);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F918);
              v155 = swift_allocObject();
              v156 = v336;
              *(v155 + 16) = xmmword_265AAD270;
              *(v155 + 32) = v156;
              *(v155 + 40) = v135;
              v334 = LODWORD(v139);
              *&v358 = v155;
              if (LOBYTE(v139))
              {
                v337 = v135;
                v32 = v361;
                v157 = *&v361[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_dataProvider];
                if (!v157)
                {
LABEL_183:
                  __break(1u);
                  return;
                }

                v158 = *(*v157 + 360);

                v135 = v337;

                v160 = v158(v159);

                if (v160)
                {
                  v161 = *&v32[v340];

                  v162 = sub_265A5368C();
                  (*(*v161 + 192))(v162);

                  v163 = v332;
                  *&v32[v332] = v135;
                  swift_retain_n();

                  (*(*v135 + 488))(3);

                  *(v335 + v32) = v160;
                  swift_retain_n();

                  (*(*v160 + 488))(3);
                  v164 = v160;

                  v165 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_metrics;
                  v166 = *(**&v32[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_metrics] + 712);

                  v168 = v166(v167);
                  v32 = v361;
                  v169 = v168;

                  v170 = *(**&v32[v165] + 736);

                  v172 = v170(v171);

                  v173 = *&v32[v163];
                  if (v173)
                  {
                    v174 = *(*v173 + 216);

                    v332 = v174(v175);
                    v177 = v176;
                  }

                  else
                  {
                    v332 = 0;
                    v177 = 0;
                  }

                  v279 = v169 + v172;
                  v280 = v335;
                  v281 = *(v335 + v32);
                  v340 = v164;
                  if (v281)
                  {
                    v282 = *(*v281 + 216);

                    v284 = v282(v283);
                    v286 = v285;
                  }

                  else
                  {
                    v284 = 0;
                    v286 = 0;
                  }

                  v287 = v279;
                  if (v177)
                  {

                    v289 = (v343)(v288);
                    if (v289)
                    {
                      v291 = v289;
                      v292 = v290;
                      sub_265A56C08();
                      v331 = sub_265AA7830();
                      v293 = swift_allocObject();
                      *(v293 + 16) = v291;
                      *(v293 + 24) = v292;
                      *(v293 + 32) = v332;
                      *(v293 + 40) = v177;
                      *(v293 + 48) = v284;
                      *(v293 + 56) = v286;
                      *(v293 + 64) = v287;
                      *(v293 + 72) = 0;
                      *&v392.tx = sub_265A98D50;
                      *&v392.ty = v293;
                      *&v392.a = MEMORY[0x277D85DD0];
                      *&v392.b = 1107296256;
                      *&v392.c = sub_265A554D0;
                      *&v392.d = &block_descriptor_43;
                      v330 = _Block_copy(&v392);

                      swift_unknownObjectRetain();

                      sub_265AA7420();
                      *&v392.a = MEMORY[0x277D84F90];
                      v329[1] = sub_265A659B0(&qword_280030190, MEMORY[0x277D85198]);
                      v332 = v286;
                      v294 = v280;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002FAE0);
                      sub_265A659F8(&qword_2800301A0, &unk_28002FAE0);
                      v295 = v352;
                      v296 = v356;
                      sub_265AA78E0();
                      v298 = v330;
                      v297 = v331;
                      MEMORY[0x2667680A0](0, v24, v295, v330);
                      _Block_release(v298);
                      v280 = v294;
                      swift_unknownObjectRelease();

                      v299 = v296;
                      v135 = v337;
                      (*(v355 + 8))(v295, v299);
                      (v353)[1](v24, v354);
                    }

                    else
                    {
                      swift_bridgeObjectRelease_n();
                    }
                  }

                  v300 = *(v280 + v32);
                  if (v300 && (v301 = *(*v300 + 216), v302 = , v303 = v301(v302), v305 = v304, , v305))
                  {

                    v307 = (v343)(v306);
                    if (v307)
                    {
                      v309 = v307;
                      v310 = v308;
                      sub_265A56C08();
                      v344 = sub_265AA7830();
                      v311 = swift_allocObject();
                      *(v311 + 16) = v309;
                      *(v311 + 24) = v310;
                      *(v311 + 32) = v303;
                      *(v311 + 40) = v305;
                      *(v311 + 48) = v287;
                      *&v392.tx = sub_265A98D40;
                      *&v392.ty = v311;
                      *&v392.a = MEMORY[0x277D85DD0];
                      *&v392.b = 1107296256;
                      *&v392.c = sub_265A554D0;
                      *&v392.d = &block_descriptor_36;
                      v312 = _Block_copy(&v392);
                      swift_unknownObjectRetain();

                      sub_265AA7420();
                      *&v392.a = MEMORY[0x277D84F90];
                      sub_265A659B0(&qword_280030190, MEMORY[0x277D85198]);
                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002FAE0);
                      sub_265A659F8(&qword_2800301A0, &unk_28002FAE0);
                      v313 = v352;
                      v314 = v356;
                      sub_265AA78E0();
                      v315 = v344;
                      MEMORY[0x2667680A0](0, v24, v313, v312);
                      _Block_release(v312);
                      swift_unknownObjectRelease();

                      v316 = v314;
                      v135 = v337;
                      (*(v355 + 8))(v313, v316);
                      (v353)[1](v24, v354);
                    }

                    else
                    {

                      swift_bridgeObjectRelease_n();
                    }
                  }

                  else
                  {
                  }
                }
              }

              else
              {

                v32 = v361;
              }

              sub_265A97D2C(v135, v334 & 1, v333 & 1, 1, v150);

              v6 = v346;
              p_opt_inst_meths = (&OBJC_PROTOCOL___CAMetalDisplayLinkDelegate + 40);
              goto LABEL_70;
            }
          }

          else
          {
            v83 = *&v32[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_renderPassData];
            v103 = MEMORY[0x277D84F90];
            if (v83)
            {

              [v32 contentsScale];
              v104.n128_f32[0] = v104.n128_f64[0];
              v105 = *(*v83 + 624);
              LOBYTE(v392.a) = 1;
              v106 = v350;
              v107 = v105(v350, *&v360, *&v359, 0x100000000, v104);
              v108 = (*(*v83 + 264))(v107);
              v109 = v40;
              v110 = (*(*v83 + 632))(v106, 0, v108 & 1, v32[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_forceAnimationToEnd], 1, v109);
              v68 = v111;
              LODWORD(v340) = v112;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F918);
              v113 = swift_allocObject();
              *(v113 + 16) = xmmword_265AAD260;
              *&v358 = v113;
              *(v113 + 32) = v83;
              v114 = *v83;
              if (v110)
              {
                v115 = *(v114 + 504);

                v117 = v115(v116);
                v6 = v346;
                if ((v117 & 1) == 0)
                {
                  v118 = (*(*v83 + 512))(1);
                  v119 = (*(*v83 + 216))(v118);
                  if (v120)
                  {
                    v121 = v119;
                    v122 = v120;

                    v124 = (v343)(v123);
                    if (v124)
                    {
                      v344 = v121;
                      v126 = v124;
                      v337 = v125;
                      sub_265A56C08();
                      v343 = sub_265AA7830();
                      v127 = swift_allocObject();
                      v336 = v126;
                      v128 = v337;
                      *(v127 + 16) = v126;
                      *(v127 + 24) = v128;
                      *(v127 + 32) = v344;
                      *(v127 + 40) = v122;
                      *(v127 + 56) = 0;
                      *(v127 + 64) = 0;
                      *(v127 + 48) = 0;
                      *(v127 + 72) = 1;
                      v344 = v122;
                      *&v392.tx = sub_265A988D4;
                      *&v392.ty = v127;
                      *&v392.a = MEMORY[0x277D85DD0];
                      *&v392.b = 1107296256;
                      *&v392.c = sub_265A554D0;
                      *&v392.d = &block_descriptor_29;
                      v335 = _Block_copy(&v392);
                      swift_unknownObjectRetain();

                      sub_265AA7420();
                      *&v392.a = MEMORY[0x277D84F90];
                      sub_265A659B0(&qword_280030190, MEMORY[0x277D85198]);
                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002FAE0);
                      sub_265A659F8(&qword_2800301A0, &unk_28002FAE0);
                      v129 = v352;
                      v337 = v83;
                      v130 = v356;
                      sub_265AA78E0();
                      v131 = v335;
                      v132 = v343;
                      MEMORY[0x2667680A0](0, v24, v129, v335);
                      _Block_release(v131);
                      swift_unknownObjectRelease();

                      v133 = v130;
                      v83 = v337;
                      (*(v355 + 8))(v129, v133);
                      (v353)[1](v24, v354);
                    }

                    else
                    {
                      swift_bridgeObjectRelease_n();
                    }
                  }
                }
              }

              else
              {
                v178 = *(v114 + 512);

                v178(0);
              }

              v179 = v110 & 1;
              v180 = v340;
              goto LABEL_69;
            }
          }

          *&v358 = v103;
          goto LABEL_71;
        }

        if (a2)
        {
          swift_unknownObjectRetain();
          v30 = swift_unknownObjectRetain();
          goto LABEL_11;
        }
      }

      swift_unknownObjectRelease();
    }
  }

  swift_unknownObjectRelease();
}

uint64_t sub_265A97D2C(uint64_t a1, int a2, char a3, int a4, double a5)
{
  v28 = a2;
  v29 = a4;
  v9 = sub_265AA7410();
  v31 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_265AA7440();
  v30 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*a1 + 216))(v13);
  if (v17)
  {
    v18 = result;
    v19 = v17;
    v20 = (*((*MEMORY[0x277D85000] & *v5) + 0x110))();
    if (v20)
    {
      v22 = v20;
      if (a3)
      {
        v23 = v21;
        if (((*(*a1 + 528))() & 1) == 0)
        {
          (*(*a1 + 536))(1);
          sub_265A56C08();
          v27 = sub_265AA7830();
          v24 = swift_allocObject();
          *(v24 + 16) = v22;
          *(v24 + 24) = v23;
          *(v24 + 32) = v18;
          *(v24 + 40) = v19;
          *(v24 + 48) = v28 & 1;
          *(v24 + 56) = a5;
          *(v24 + 64) = 1;
          *(v24 + 65) = v29 & 1;
          aBlock[4] = sub_265A98B20;
          aBlock[5] = v24;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_265A554D0;
          aBlock[3] = &block_descriptor_134;
          v25 = _Block_copy(aBlock);
          swift_unknownObjectRetain();

          sub_265AA7420();
          aBlock[0] = MEMORY[0x277D84F90];
          sub_265A659B0(&qword_280030190, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002FAE0);
          sub_265A659F8(&qword_2800301A0, &unk_28002FAE0);
          sub_265AA78E0();
          v26 = v27;
          MEMORY[0x2667680A0](0, v15, v11, v25);
          _Block_release(v25);
          swift_unknownObjectRelease();

          (*(v31 + 8))(v11, v9);
          return (*(v30 + 8))(v15, v12);
        }
      }

      else
      {

        (*(*a1 + 536))(0);
      }

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

id sub_265A981F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HelloMetalLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_265A98374()
{
  v1 = sub_265AA7820();
  v13 = *(v1 - 8);
  v14 = v1;
  MEMORY[0x28223BE20](v1);
  v12 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_265AA77F0();
  MEMORY[0x28223BE20](v3);
  v11[1] = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_265AA7440();
  MEMORY[0x28223BE20](v5 - 8);
  *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_animationDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_variant) = 0;
  *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_multilanguage) = 0;
  *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_isWatchPreview) = 0;
  *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_commandQueue) = 0;
  *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundPipelineState) = 0;
  *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_fadePipelineState) = 0;
  *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_textPipelineState) = 0;
  *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundVertexCoordsBuffer) = 0;
  *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundTextureCoordsBuffer) = 0;
  v6 = v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundUniforms;
  *v6 = 1065353216;
  *(v6 + 8) = 0;
  *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_background) = 0;
  *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundBlurred) = 0;
  *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_blurFilter) = 0;
  *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_enableBackgroundRenderPass) = 1;
  v7 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_timeTracker;
  type metadata accessor for TimeTracker();
  *(v0 + v7) = sub_265A6631C();
  *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_dataProvider) = 0;
  *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_renderPassData) = 0;
  *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_renderPassDataNext) = 0;
  *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_animationPhase) = 0;
  v8 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_metrics;
  type metadata accessor for HelloMetrics();
  *(v0 + v8) = sub_265A9E688(5u);
  *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_forceAnimationToEnd) = 0;
  v9 = v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_pixelsPerMM;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_helloMetalBackgroundQueue;
  sub_265A56C08();
  sub_265AA7430();
  v15 = MEMORY[0x277D84F90];
  sub_265A659B0(&unk_280030050, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002F900);
  sub_265A659F8(&qword_280030060, &unk_28002F900);
  sub_265AA78E0();
  (*(v13 + 104))(v12, *MEMORY[0x277D85260], v14);
  *(v0 + v10) = sub_265AA7860();
  sub_265AA79E0();
  __break(1u);
}

unint64_t sub_265A98774()
{
  result = qword_280030128;
  if (!qword_280030128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280030128);
  }

  return result;
}

uint64_t sub_265A987C8()
{
  MEMORY[0x266769280](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265A98800()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_265A988D8()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = v0[6];
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(v2, v3, ObjectType, v1, v4);
}

uint64_t objectdestroy_25Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_265A98994()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  ObjectType = swift_getObjectType();
  return (*(v1 + 24))(v2, v3, v4, v5, v6, v7, ObjectType, v1);
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_265A98A30(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265A98A50(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

void type metadata accessor for BackgroundUniforms()
{
  if (!qword_280030268)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280030268);
    }
  }
}

uint64_t objectdestroy_5Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_265A98B20()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 56);
  v5 = *(v0 + 65);
  ObjectType = swift_getObjectType();
  return (*(v1 + 16))(v2, v3, v5, ObjectType, v1, v4);
}

uint64_t sub_265A98B9C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_265A98C3C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_265A98D88@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_265AA7100();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030270);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_265A79488(v2, &v14 - v9, &qword_280030270);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_265AA7040();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_265AA7790();
    v13 = sub_265AA7140();
    sub_265AA6DF0();

    sub_265AA70F0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_265A98F88@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030270);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_265A9900C(uint64_t a1)
{
  v2 = sub_265AA7040();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_265AA7080();
}

uint64_t sub_265A990DC(uint64_t a1)
{
  sub_265A9C904(a1);

  return swift_unknownObjectRetain();
}

uint64_t sub_265A99104(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *(a2 + 36);
  result = swift_unknownObjectRelease();
  *(v4 + 8) = a1;
  return result;
}

double sub_265A9917C@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for CGRect(0);
  sub_265AA7310();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

double sub_265A991D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030278);
  sub_265AA7320();
  return v1;
}

void (*sub_265A992A0(void *a1, uint64_t a2))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0xC0uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = (v2 + *(a2 + 40));
  v8 = *v7;
  v9 = v7[1];
  v5[18] = *v7;
  v5[19] = v9;
  v10 = v7[2];
  v11 = v7[3];
  v5[20] = v10;
  v5[21] = v11;
  v12 = v7[4];
  v6[22] = v12;
  *v6 = v8;
  v6[1] = v9;
  v6[2] = v10;
  v6[3] = v11;
  v6[4] = v12;

  v6[23] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030278);
  sub_265AA7320();
  return sub_265A99364;
}

void sub_265A99364(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 160);
  *(v1 + 40) = *(*a1 + 144);
  *(v1 + 56) = v2;
  v3 = *(v1 + 96);
  *(v1 + 112) = *(v1 + 80);
  *(v1 + 72) = *(v1 + 176);
  *(v1 + 128) = v3;
  sub_265AA7330();

  free(v1);
}

__n128 sub_265A993D4@<Q0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030278);
  sub_265AA7340();
  result = v5;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  return result;
}

double sub_265A99444(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  v3 = *(v1 + 104);
  swift_unknownObjectRetain();
  v4 = v3(v2, v1);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_265A994BC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030270);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for WelcomeToDeviceView();
  v3 = a1 + *(v2 + 40);
  type metadata accessor for CGRect(0);
  sub_265AA7310();
  *v3 = v9;
  *(v3 + 1) = v10;
  *(v3 + 4) = v11;
  v4 = (a1 + *(v2 + 36));
  swift_unknownObjectRetain();
  *v4 = sub_265AA6FE0();
  v4[1] = v5;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_265AA6FB0();

  return swift_unknownObjectRelease();
}

uint64_t sub_265A995F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_265AA73C0();
  a2[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030280);
  sub_265A996D8(v2, *(a1 + 16), *(a1 + 24), a2 + *(v6 + 44));
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030288) + 36));
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030290) + 28);
  sub_265AA7290();
  v9 = sub_265AA72A0();
  (*(*(v9 - 8) + 56))(v7 + v8, 0, 1, v9);
  result = swift_getKeyPath();
  *v7 = result;
  return result;
}

uint64_t sub_265A996D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v100 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030310);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v101 = v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v99 = (v78 - v10);
  v11 = sub_265AA7040();
  v81 = *(v11 - 8);
  v82 = v11;
  MEMORY[0x28223BE20](v11);
  v80 = v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_265AA7020();
  v88 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v105 = v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_265AA7390();
  v91 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v87 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030318);
  v89 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v85 = v78 - v15;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030320);
  MEMORY[0x28223BE20](v83);
  v86 = v78 - v16;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030328);
  MEMORY[0x28223BE20](v84);
  v96 = v78 - v17;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030330);
  v18 = MEMORY[0x28223BE20](v95);
  v98 = v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v92 = v78 - v21;
  MEMORY[0x28223BE20](v20);
  v97 = v78 - v22;
  v23 = type metadata accessor for WelcomeToDeviceView();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = v78 - v25;
  v147.origin.x = sub_265A991D4();
  v152.origin.x = 0.0;
  v152.origin.y = 0.0;
  v152.size.width = 0.0;
  v152.size.height = 0.0;
  v27 = CGRectEqualToRect(v147, v152);
  v28 = 0;
  v113 = 0;
  v114 = 0;
  v111 = 0;
  v112 = 0;
  v109 = 0;
  v110 = 0;
  v107 = 0;
  v108 = 0;
  v106 = 0;
  v29 = 0;
  v102 = 0;
  if (v27)
  {
    sub_265A9A3E8(v23, &v122);
    v28 = v122;
    v113 = v124;
    v114 = v123;
    v111 = v126;
    v112 = v125;
    v109 = v128;
    v110 = v127;
    v108 = v129;
    nullsub_1(v30, v31, v32);
    v33 = sub_265AA73C0();
    v106 = v34;
    v107 = v33;
    (*(v24 + 16))(v26, a1, v23);
    v35 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = a2;
    *(v36 + 24) = a3;
    v37 = *(v24 + 32);
    v102 = v36;
    v37(v36 + v35, v26, v23);
    v29 = sub_265A9D3EC;
  }

  v103 = v28;
  v104 = v29;
  v148.origin.x = sub_265A991D4();
  CGRectGetWidth(v148);
  v149.origin.x = sub_265A991D4();
  CGRectGetHeight(v149);
  sub_265A99444(v23);
  sub_265AA73C0();
  sub_265AA6F60();
  v137 = v142;
  v138 = v143;
  v139 = v144;
  v140 = v145;
  v141 = v146;
  sub_265AA6FA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030338);
  v78[2] = *(*(sub_265AA7380() - 8) + 72);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_265AAD310;
  v78[1] = type metadata accessor for ColorProducer();
  v38 = a3;
  v39 = a3[15];
  swift_unknownObjectRetain();
  v39(a2, v38);
  swift_unknownObjectRelease();
  v150.origin.x = sub_265A991D4();
  CGRectGetWidth(v150);
  v40 = a2;
  v41 = v38[14];
  swift_unknownObjectRetain();
  v41(v40, v38);
  swift_unknownObjectRelease();
  v42 = v38[2];
  swift_unknownObjectRetain();
  v42(v40, v38);
  swift_unknownObjectRelease();
  v43 = v80;
  sub_265A98D88(v80);
  sub_265A5866C();

  (*(v81 + 8))(v43, v82);
  v151.origin.x = sub_265A991D4();
  CGRectGetHeight(v151);
  sub_265A99444(v23);
  sub_265AA7370();
  sub_265AA7350();
  v44 = v38[11];
  swift_unknownObjectRetain();
  v44(v40, v38);
  swift_unknownObjectRelease();
  sub_265AA7360();
  swift_unknownObjectRetain();
  sub_265A537AC();
  swift_unknownObjectRelease();
  sub_265AA7360();
  v45 = v87;
  v46 = v105;
  sub_265AA7010();

  (*(v88 + 8))(v46, v90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030340);
  sub_265A9D130();
  v47 = v85;
  sub_265AA7200();
  (*(v91 + 8))(v45, v94);
  swift_unknownObjectRetain();
  v48 = sub_265A537A0();
  swift_unknownObjectRelease();
  v49 = v86;
  (*(v89 + 32))(v86, v47, v93);
  v50 = &v49[*(v83 + 36)];
  *v50 = v48;
  v50[8] = 0;
  v51 = sub_265AA73C0();
  v53 = v52;
  sub_265A9A57C(v40, v38, v135);
  v54 = v49;
  v55 = v96;
  sub_265A9D210(v54, v96, &qword_280030320);
  v56 = v55 + *(v84 + 36);
  *v56 = v51;
  *(v56 + 8) = v53;
  v57 = v135[3];
  *(v56 + 48) = v135[2];
  *(v56 + 64) = v57;
  *(v56 + 80) = v136[0];
  *(v56 + 89) = *(v136 + 9);
  v58 = v135[1];
  *(v56 + 16) = v135[0];
  *(v56 + 32) = v58;
  v59 = v38[16];
  swift_unknownObjectRetain();
  v60 = v59(v40, v38);
  swift_unknownObjectRelease();
  LOBYTE(v51) = sub_265A9A8C4(0, v60);

  if (v51)
  {
    v61 = 1.0;
  }

  else
  {
    v61 = 0.0;
  }

  v62 = v92;
  sub_265A9D210(v55, v92, &qword_280030328);
  *(v62 + *(v95 + 36)) = v61;
  v63 = v62;
  v64 = v97;
  sub_265A9D210(v63, v97, &qword_280030330);
  v65 = sub_265AA73C0();
  v66 = v99;
  *v99 = v65;
  *(v66 + 8) = v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030358);
  sub_265A9A9B0(a1, v40, v38, v66 + *(v68 + 44));
  v69 = v98;
  sub_265A79488(v64, v98, &qword_280030330);
  v70 = v101;
  sub_265A79488(v66, v101, &qword_280030310);
  *&v115 = v103;
  *(&v115 + 1) = v114;
  *&v116 = v113;
  *(&v116 + 1) = v112;
  *&v117 = v111;
  *(&v117 + 1) = v110;
  *&v118 = v109;
  *(&v118 + 1) = v108;
  *&v119 = 0;
  *(&v119 + 1) = v107;
  *&v120 = v106;
  *(&v120 + 1) = v104;
  v71 = v102;
  v121 = v102;
  v72 = v100;
  *(v100 + 96) = v102;
  v73 = v120;
  v72[4] = v119;
  v72[5] = v73;
  v74 = v116;
  *v72 = v115;
  v72[1] = v74;
  v75 = v118;
  v72[2] = v117;
  v72[3] = v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030360);
  sub_265A79488(v69, v72 + *(v76 + 48), &qword_280030330);
  sub_265A79488(v70, v72 + *(v76 + 64), &qword_280030310);
  sub_265A79488(&v115, &v122, &qword_280030368);
  sub_265A65EE0(v66, &qword_280030310);
  sub_265A65EE0(v64, &qword_280030330);
  sub_265A65EE0(v70, &qword_280030310);
  sub_265A65EE0(v69, &qword_280030330);
  v122 = v103;
  v123 = v114;
  v124 = v113;
  v125 = v112;
  v126 = v111;
  v127 = v110;
  v128 = v109;
  v129 = v108;
  v130 = 0;
  v131 = v107;
  v132 = v106;
  v133 = v104;
  v134 = v71;
  return sub_265A65EE0(&v122, &qword_280030368);
}

uint64_t sub_265A9A3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(v3 + 24);
  swift_unknownObjectRetain();
  v5(v4, v3);
  swift_unknownObjectRelease();
  sub_265A9D4AC();
  v6 = sub_265AA71D0();
  v8 = v7;
  LOBYTE(v4) = v9;
  sub_265AA7150();
  v10 = sub_265AA71C0();
  v12 = v11;
  v14 = v13;

  sub_265A9D500(v6, v8, v4 & 1);

  sub_265AA7160();
  v15 = sub_265AA71B0();
  v17 = v16;
  LOBYTE(v4) = v18;
  v20 = v19;
  sub_265A9D500(v10, v12, v14 & 1);

  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v4 & 1;
  *(a2 + 24) = v20;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0x3F847AE147AE147BLL;
  *(a2 + 48) = result;
  *(a2 + 56) = 1;
  return result;
}

uint64_t sub_265A9A57C@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_265AA7040();
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WelcomeToDeviceView();
  v43.origin.x = sub_265A991D4();
  CGRectGetWidth(v43);
  v44.origin.x = sub_265A991D4();
  CGRectGetHeight(v44);
  sub_265AA73C0();
  sub_265AA6F60();
  v33 = v39;
  v34 = v37;
  v27 = v40;
  v28 = v38;
  v31 = v42;
  v32 = v41;
  v26[1] = type metadata accessor for ColorProducer();
  v10 = a2[15];
  swift_unknownObjectRetain();
  v10(a1, a2);
  swift_unknownObjectRelease();
  v45.origin.x = sub_265A991D4();
  CGRectGetWidth(v45);
  v11 = a2[14];
  swift_unknownObjectRetain();
  v11(a1, a2);
  swift_unknownObjectRelease();
  v12 = a2[2];
  swift_unknownObjectRetain();
  v12(a1, a2);
  swift_unknownObjectRelease();
  v14 = v29;
  v13 = v30;
  (*(v29 + 104))(v8, *MEMORY[0x277CDFA88], v30);
  sub_265A5866C();
  v16 = v15;

  (*(v14 + 8))(v8, v13);
  v46.origin.x = sub_265A991D4();
  Height = CGRectGetHeight(v46);
  v18 = (Height + sub_265A99444(v9)) * 0.5;
  LOBYTE(v14) = v27;
  LOBYTE(v8) = v28;
  v36 = v28;
  v35 = v27;
  v47.origin.x = sub_265A991D4();
  Width = CGRectGetWidth(v47);
  v20 = a2[12];
  v21 = Width / -3.0;
  swift_unknownObjectRetain();
  v22 = v20(a1, a2);
  result = swift_unknownObjectRelease();
  v24 = v33;
  *a3 = v34;
  *(a3 + 8) = v8;
  *(a3 + 16) = v24;
  *(a3 + 24) = v14;
  v25 = v31;
  *(a3 + 32) = v32;
  *(a3 + 40) = v25;
  *(a3 + 48) = v16;
  *(a3 + 56) = v18;
  *(a3 + 64) = v21;
  *(a3 + 72) = 0;
  *(a3 + 80) = v22;
  *(a3 + 88) = 0;
  return result;
}

uint64_t sub_265A9A8C4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_265A5747C(), v3 = sub_265AA74D0(), v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    sub_265A56D80();
    do
    {
      v7 = sub_265AA7530();
      if (v7)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_265A9A9B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v148 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030378);
  v144 = *(v7 - 8);
  v145 = v7;
  MEMORY[0x28223BE20](v7);
  v129 = &v118 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030380);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v147 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v146 = &v118 - v12;
  v13 = sub_265AA7020();
  v139 = *(v13 - 8);
  v140 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v138 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v133 = &v118 - v16;
  v17 = sub_265AA7390();
  v141 = *(v17 - 8);
  v142 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v128 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v126 = &v118 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030388);
  v134 = *(v21 - 8);
  v135 = v21;
  MEMORY[0x28223BE20](v21);
  v127 = &v118 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030390);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v143 = &v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v152 = &v118 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030398);
  v130 = *(v27 - 8);
  *&v131 = v27;
  MEMORY[0x28223BE20](v27);
  v125 = (&v118 - v28);
  v29 = sub_265AA7040();
  v149 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = &v118 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800303A0);
  v32 = MEMORY[0x28223BE20](v122);
  v124 = &v118 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v123 = &v118 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800303A8);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v137 = &v118 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v39 = &v118 - v38;
  v40 = type metadata accessor for WelcomeToDeviceView();
  v154 = a1;
  v41 = a3[16];
  swift_unknownObjectRetain();
  v155 = a3;
  v156 = a2;
  v150 = v41;
  v42 = v41(a2, a3);
  swift_unknownObjectRelease();
  v43 = sub_265A9A8C4(1, v42);

  v153 = v39;
  v151 = v29;
  v136 = v31;
  v132 = a3 + 16;
  if (v43)
  {
    v44 = v40;
    sub_265A9A3E8(v40, v159);
    v120 = type metadata accessor for ColorProducer();
    v45 = v155;
    v46 = v155[15];
    swift_unknownObjectRetain();
    v47 = v45;
    v48 = v156;
    v49 = v46(v156, v47);
    swift_unknownObjectRelease();
    sub_265A991D4();
    *&v121 = v47[2];
    v50 = v121;
    swift_unknownObjectRetain();
    v50(v48, v47);
    swift_unknownObjectRelease();
    sub_265A98D88(v31);
    sub_265A583E8(v49, &v180);
    v51 = v180;

    v52 = *(v149 + 8);
    v118 = v182;
    v119 = v181;
    v52(v31, v151);
    v161[0] = v159[0];
    v161[1] = v159[1];
    v161[2] = v160[0];
    *(&v161[2] + 9) = *(v160 + 9);
    v53 = *(v122 + 36);
    v54 = *MEMORY[0x277CE13B0];
    v55 = sub_265AA73D0();
    v56 = v123;
    (*(*(v55 - 8) + 104))(&v123[v53], v54, v55);
    v57 = v161[1];
    *v56 = v161[0];
    *(v56 + 16) = v57;
    v58 = v161[3];
    *(v56 + 32) = v161[2];
    *(v56 + 48) = v58;
    *(v56 + 64) = v51;
    v59 = v119;
    *(v56 + 88) = v118;
    *(v56 + 72) = v59;
    sub_265A9A3E8(v44, v157);
    v60 = v47[17];
    swift_unknownObjectRetain();
    v122 = v60(v156, v47);
    swift_unknownObjectRelease();
    KeyPath = swift_getKeyPath();
    v163 = v157[1];
    v164[0] = v158[0];
    *(v164 + 9) = *(v158 + 9);
    v162 = v157[0];
    swift_unknownObjectRetain();
    v62 = (v121)(v156, v47);
    swift_unknownObjectRelease();
    v63 = sub_265A583A0(v62);
    v64 = v124;
    sub_265A79488(v56, v124, &qword_2800303A0);
    v65 = v125;
    sub_265A79488(v64, v125, &qword_2800303A0);
    v66 = v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030438) + 48);
    v67 = v163;
    v165 = v162;
    v166 = v163;
    v68 = v164[0];
    v167 = v164[0];
    v168 = v164[1];
    *&v169 = KeyPath;
    v69 = v122;
    *(&v169 + 1) = v122;
    *&v170 = v63;
    *v66 = v162;
    *(v66 + 16) = v67;
    v70 = v168;
    v71 = v169;
    *(v66 + 32) = v68;
    *(v66 + 48) = v70;
    *(v66 + 64) = v71;
    *(v66 + 80) = v170;
    sub_265A79488(&v165, &v172, &qword_280030440);
    sub_265A65EE0(v56, &qword_2800303A0);
    v172 = v162;
    v173 = v163;
    v174[0] = v164[0];
    v174[1] = v164[1];
    *v175 = KeyPath;
    *&v175[8] = v69;
    *&v175[16] = v63;
    v72 = v153;
    sub_265A65EE0(&v172, &qword_280030440);
    sub_265A65EE0(v64, &qword_2800303A0);
    sub_265A9D7F0(v65, v72);
    (*(v130 + 7))(v72, 0, 1, v131);
  }

  else
  {
    (*(v130 + 7))(v39, 1, 1, v131);
    v44 = v40;
  }

  swift_unknownObjectRetain();
  v73 = (v150)(v156, v155);
  swift_unknownObjectRelease();
  v74 = sub_265A9A8C4(2, v73);

  if (v74)
  {
    sub_265A9A3E8(v44, v176);
    v75 = type metadata accessor for ColorProducer();
    v76 = v155;
    v77 = v155[15];
    v122 = (v155 + 15);
    v123 = v77;
    v124 = v75;
    swift_unknownObjectRetain();
    v78 = (v77)(v156, v76);
    swift_unknownObjectRelease();
    sub_265A991D4();
    v79 = v76[2];
    v125 = v76 + 2;
    v130 = v79;
    swift_unknownObjectRetain();
    v79(v156, v76);
    swift_unknownObjectRelease();
    v80 = v136;
    sub_265A98D88(v136);
    sub_265A583E8(v78, v161);
    v81 = *&v161[0];

    v82 = *(v149 + 8);
    v131 = *(v161 + 8);
    v121 = *(&v161[1] + 8);
    v82(v80, v151);
    v174[0] = v177[0];
    *(v174 + 9) = *(v177 + 9);
    v172 = v176[0];
    v173 = v176[1];
    *v175 = v81;
    *&v175[24] = v121;
    *&v175[8] = v131;
    sub_265AA6FA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030338);
    sub_265AA7380();
    *&v131 = swift_allocObject();
    *(v131 + 16) = xmmword_265AAD310;
    swift_unknownObjectRetain();
    (v123)(v156, v155);
    swift_unknownObjectRelease();
    v183.origin.x = sub_265A991D4();
    CGRectGetWidth(v183);
    swift_unknownObjectRetain();
    v130(v156, v155);
    swift_unknownObjectRelease();
    sub_265A98D88(v80);
    sub_265A5368C();
    sub_265A5866C();

    v83 = v80;
    v84 = v155;
    v82(v83, v151);
    v184.origin.x = sub_265A991D4();
    CGRectGetHeight(v184);
    sub_265A99444(v44);
    sub_265AA7370();
    sub_265AA7350();
    v85 = v84[10];
    swift_unknownObjectRetain();
    v85(v156, v84);
    swift_unknownObjectRelease();
    sub_265AA7360();
    v86 = v84[9];
    swift_unknownObjectRetain();
    v86(v156, v84);
    swift_unknownObjectRelease();
    sub_265AA7360();
    v87 = v126;
    v88 = v133;
    sub_265AA7010();

    (*(v139 + 8))(v88, v140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030418);
    sub_265A9D738();
    v89 = v127;
    sub_265AA7210();
    (*(v141 + 8))(v87, v142);
    v169 = *v175;
    v170 = *&v175[16];
    v171 = *&v175[32];
    v165 = v172;
    v166 = v173;
    v167 = v174[0];
    v168 = v174[1];
    sub_265A65EE0(&v165, &qword_280030418);
    v91 = v134;
    v90 = v135;
    v92 = v152;
    (*(v134 + 32))(v152, v89, v135);
    (*(v91 + 56))(v92, 0, 1, v90);
  }

  else
  {
    (*(v134 + 56))(v152, 1, 1, v135);
  }

  swift_unknownObjectRetain();
  v93 = (v150)(v156, v155);
  swift_unknownObjectRelease();
  v94 = sub_265A9A8C4(3, v93);

  if (v94)
  {
    sub_265A9A3E8(v44, v178);
    v95 = sub_265AA7260();
    v174[0] = v179[0];
    *(v174 + 9) = *(v179 + 9);
    v172 = v178[0];
    v173 = v178[1];
    *v175 = v95;
    sub_265AA6FA0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030338);
    v135 = *(*(sub_265AA7380() - 8) + 72);
    v150 = swift_allocObject();
    *(v150 + 16) = xmmword_265AAD310;
    v134 = type metadata accessor for ColorProducer();
    v96 = v155;
    v97 = v155[15];
    swift_unknownObjectRetain();
    v98 = v156;
    v97(v156, v96);
    swift_unknownObjectRelease();
    v185.origin.x = sub_265A991D4();
    CGRectGetWidth(v185);
    v99 = v96[6];
    swift_unknownObjectRetain();
    v99(v98, v96);
    swift_unknownObjectRelease();
    v100 = v96[2];
    swift_unknownObjectRetain();
    v100(v98, v96);
    swift_unknownObjectRelease();
    v101 = v136;
    sub_265A98D88(v136);
    sub_265A5866C();

    (*(v149 + 8))(v101, v151);
    v186.origin.x = sub_265A991D4();
    CGRectGetHeight(v186);
    sub_265AA7370();
    sub_265AA7350();
    v102 = v96[4];
    swift_unknownObjectRetain();
    v102(v98, v96);
    swift_unknownObjectRelease();
    sub_265AA7360();
    v103 = v96[5];
    swift_unknownObjectRetain();
    v103(v98, v96);
    swift_unknownObjectRelease();
    sub_265AA7360();
    v104 = v128;
    v105 = v138;
    sub_265AA7010();

    (*(v139 + 8))(v105, v140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800303B8);
    sub_265A9D510();
    v106 = v129;
    sub_265AA7210();
    (*(v141 + 8))(v104, v142);
    v167 = v174[0];
    v168 = v174[1];
    *&v169 = *v175;
    v165 = v172;
    v166 = v173;
    sub_265A65EE0(&v165, &qword_2800303B8);
    v108 = v144;
    v107 = v145;
    v109 = v146;
    (*(v144 + 32))(v146, v106, v145);
    (*(v108 + 56))(v109, 0, 1, v107);
  }

  else
  {
    v109 = v146;
    (*(v144 + 56))(v146, 1, 1, v145);
  }

  v110 = v137;
  sub_265A79488(v153, v137, &qword_2800303A8);
  v111 = v152;
  v112 = v143;
  sub_265A79488(v152, v143, &qword_280030390);
  v113 = v147;
  sub_265A79488(v109, v147, &qword_280030380);
  v114 = v148;
  sub_265A79488(v110, v148, &qword_2800303A8);
  v115 = v109;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800303B0);
  sub_265A79488(v112, v114 + *(v116 + 48), &qword_280030390);
  sub_265A79488(v113, v114 + *(v116 + 64), &qword_280030380);
  sub_265A65EE0(v115, &qword_280030380);
  sub_265A65EE0(v111, &qword_280030390);
  sub_265A65EE0(v153, &qword_2800303A8);
  sub_265A65EE0(v113, &qword_280030380);
  sub_265A65EE0(v112, &qword_280030390);
  return sub_265A65EE0(v110, &qword_2800303A8);
}

double sub_265A9BF18@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  CGRectGetMinX(*&a2);
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetMidY(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetMaxX(v15);
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetMinY(v16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetMaxX(v17);
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetMidY(v18);
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetMaxX(v19);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetMaxY(v20);
  sub_265AA71A0();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

uint64_t sub_265A9C080(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  sub_265AA7180();
  v13.origin.x = a5;
  v13.origin.y = a6;
  v13.size.width = a7;
  v13.size.height = a8;
  CGRectGetMaxX(v13);
  v14.origin.x = a5;
  v14.origin.y = a6;
  v14.size.width = a7;
  v14.size.height = a8;
  CGRectGetMinY(v14);
  sub_265AA7170();
  v15.origin.x = a5;
  v15.origin.y = a6;
  v15.size.width = a7;
  v15.size.height = a8;
  CGRectGetMaxX(v15);
  v16.origin.x = a5;
  v16.origin.y = a6;
  v16.size.width = a7;
  v16.size.height = a8;
  CGRectGetMinY(v16);
  sub_265AA7170();
  v17.origin.x = a5;
  v17.origin.y = a6;
  v17.size.width = a7;
  v17.size.height = a8;
  CGRectGetMaxX(v17);
  v18.origin.x = a5;
  v18.origin.y = a6;
  v18.size.width = a7;
  v18.size.height = a8;
  CGRectGetMaxY(v18);
  sub_265AA7170();
  return sub_265AA7190();
}

double sub_265A9C1DC@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  CGRectGetMinX(*&a2);
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetMidY(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetMaxX(v15);
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetMinY(v16);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetMaxX(v17);
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetMidY(v18);
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetMaxX(v19);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetMaxY(v20);
  sub_265AA71A0();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

void (*sub_265A9C364(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_265AA6F40();
  return sub_265A5A7BC;
}

uint64_t sub_265A9C3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_265A9CFE0();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_265A9C454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_265A9CFE0();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_265A9C4B8(uint64_t a1)
{
  v2 = sub_265A9CFE0();

  return MEMORY[0x282133738](a1, v2);
}

uint64_t sub_265A9C578@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WelcomeToDeviceViewModel();
  v2 = sub_265AA7270();
  sub_265A55688(0x656D6F636C6557, 0xE700000000000000, v2, nullsub_1, 0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FBE0);
  a1[3] = v3;
  a1[4] = sub_265A56E18(&qword_280030300, &qword_28002FBE0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  *boxed_opaque_existential_1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030270);
  swift_storeEnumTagMultiPayload();
  v5 = boxed_opaque_existential_1 + *(v3 + 40);
  type metadata accessor for CGRect(0);
  sub_265AA7310();
  *v5 = v11;
  *(v5 + 1) = v12;
  *(v5 + 4) = v13;
  v6 = (boxed_opaque_existential_1 + *(v3 + 36));
  sub_265A9D0D8();

  *v6 = sub_265AA6FE0();
  v6[1] = v7;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  sub_265AA6FB0();
}

uint64_t sub_265A9C75C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030308);
  MEMORY[0x28223BE20](v2 - 8);
  sub_265A79488(a1, &v5 - v3, &qword_280030308);
  return sub_265AA70C0();
}

uint64_t sub_265A9C804@<X0>(void *a1@<X8>)
{
  result = sub_265AA7090();
  *a1 = v3;
  return result;
}

uint64_t sub_265A9C858@<X0>(_BYTE *a1@<X8>)
{
  result = sub_265AA70D0();
  *a1 = result;
  return result;
}

uint64_t sub_265A9C8AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_265AA7050();
  *a1 = result;
  return result;
}

unint64_t sub_265A9C978()
{
  result = qword_280030298;
  if (!qword_280030298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280030298);
  }

  return result;
}

unint64_t sub_265A9C9D0()
{
  result = qword_2800302A0;
  if (!qword_2800302A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800302A0);
  }

  return result;
}

unint64_t sub_265A9CA28()
{
  result = qword_2800302A8;
  if (!qword_2800302A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800302A8);
  }

  return result;
}

void sub_265A9CAC8()
{
  sub_265A9CE74(319, &qword_2800302C8, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_265AA7000();
    if (v1 <= 0x3F)
    {
      sub_265A9CE74(319, &qword_2800302D0, type metadata accessor for CGRect, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_265AA6FC0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_265A9CBF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800302C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_265AA6FC0();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 44);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_265A9CD40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800302C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_265AA6FC0();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_265A9CE74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_265A9CEFC()
{
  result = qword_2800302D8;
  if (!qword_2800302D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280030288);
    sub_265A56E18(&qword_2800302E0, &qword_2800302E8);
    sub_265A56E18(&qword_2800302F0, &qword_280030290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800302D8);
  }

  return result;
}

unint64_t sub_265A9CFE0()
{
  result = qword_2800302F8;
  if (!qword_2800302F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800302F8);
  }

  return result;
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

unint64_t sub_265A9D0D8()
{
  result = qword_28002F678;
  if (!qword_28002F678)
  {
    type metadata accessor for WelcomeToDeviceViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002F678);
  }

  return result;
}

unint64_t sub_265A9D130()
{
  result = qword_280030348;
  if (!qword_280030348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280030340);
    sub_265A9D1BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280030348);
  }

  return result;
}

unint64_t sub_265A9D1BC()
{
  result = qword_280030350;
  if (!qword_280030350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280030350);
  }

  return result;
}

uint64_t sub_265A9D210(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_265A9D278()
{
  v1 = type metadata accessor for WelcomeToDeviceView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030270);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_265AA7040();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  swift_unknownObjectRelease();

  v6 = *(v1 + 44);
  v7 = sub_265AA6FC0();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_265A9D3EC(CGFloat *a1)
{
  type metadata accessor for WelcomeToDeviceView();
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7.origin.x = sub_265A991D4();
  v8.origin.x = v2;
  v8.origin.y = v3;
  v8.size.width = v5;
  v8.size.height = v4;
  result = CGRectEqualToRect(v7, v8);
  if ((result & 1) == 0)
  {
    return sub_265A99238();
  }

  return result;
}

unint64_t sub_265A9D4AC()
{
  result = qword_280030370;
  if (!qword_280030370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280030370);
  }

  return result;
}

uint64_t sub_265A9D500(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_265A9D510()
{
  result = qword_2800303C0;
  if (!qword_2800303C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800303B8);
    sub_265A9D5C8();
    sub_265A56E18(&qword_280030408, &qword_280030410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800303C0);
  }

  return result;
}

unint64_t sub_265A9D5C8()
{
  result = qword_2800303C8;
  if (!qword_2800303C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800303D0);
    sub_265A9D680();
    sub_265A56E18(&qword_2800303F8, &qword_280030400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800303C8);
  }

  return result;
}

unint64_t sub_265A9D680()
{
  result = qword_2800303D8;
  if (!qword_2800303D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800303E0);
    sub_265A56E18(&qword_2800303E8, &qword_2800303F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800303D8);
  }

  return result;
}

unint64_t sub_265A9D738()
{
  result = qword_280030420;
  if (!qword_280030420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280030418);
    sub_265A9D5C8();
    sub_265A56E18(&qword_280030428, &qword_280030430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280030420);
  }

  return result;
}

uint64_t sub_265A9D7F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030398);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265A9D868()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_265A9D8FC(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_265A9D970(float a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_265A9D9E4(float a1)
{
  result = swift_beginAccess();
  *(v1 + 52) = a1;
  return result;
}

uint64_t sub_265A9DAF8(float a1)
{
  result = swift_beginAccess();
  *(v1 + 60) = a1;
  return result;
}

uint64_t sub_265A9DBBC(float a1)
{
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}

uint64_t sub_265A9DC30(float a1)
{
  result = swift_beginAccess();
  *(v1 + 68) = a1;
  return result;
}

uint64_t sub_265A9DCF4(float a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

uint64_t sub_265A9DDB8(float a1)
{
  result = swift_beginAccess();
  *(v1 + 76) = a1;
  return result;
}

uint64_t sub_265A9DE7C(float a1)
{
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

uint64_t sub_265A9DF40(float a1)
{
  result = swift_beginAccess();
  *(v1 + 84) = a1;
  return result;
}

uint64_t sub_265A9E004(float a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

uint64_t sub_265A9E0C8(float a1)
{
  result = swift_beginAccess();
  *(v1 + 92) = a1;
  return result;
}

uint64_t sub_265A9E18C(float a1)
{
  result = swift_beginAccess();
  *(v1 + 96) = a1;
  return result;
}

uint64_t sub_265A9E200(float a1)
{
  result = swift_beginAccess();
  *(v1 + 100) = a1;
  return result;
}

uint64_t sub_265A9E2C4(float a1)
{
  result = swift_beginAccess();
  *(v1 + 104) = a1;
  return result;
}

uint64_t sub_265A9E388(float a1)
{
  result = swift_beginAccess();
  *(v1 + 108) = a1;
  return result;
}

uint64_t sub_265A9E44C(float a1)
{
  result = swift_beginAccess();
  *(v1 + 112) = a1;
  return result;
}

uint64_t sub_265A9E4C0(float a1)
{
  result = swift_beginAccess();
  *(v1 + 116) = a1;
  return result;
}

uint64_t sub_265A9E584(float a1)
{
  result = swift_beginAccess();
  *(v1 + 120) = a1;
  return result;
}

uint64_t sub_265A9E5F8(char a1)
{
  result = swift_beginAccess();
  *(v1 + 124) = a1;
  return result;
}

uint64_t sub_265A9E688(unsigned __int8 a1)
{
  v2 = swift_allocObject();
  sub_265A9E6C8(a1);
  return v2;
}

uint64_t sub_265A9E6C8(unsigned __int8 a1)
{
  if (a1 == 5)
  {
    v2 = [objc_opt_self() currentDevice];
    v3 = [v2 userInterfaceIdiom];

    if (v3)
    {
      *(v1 + 16) = 2;
LABEL_8:
      v4 = 0x4248000041800000;
      v6 = xmmword_265AAD870;
LABEL_13:
      v7 = xmmword_265AAD820;
      v8 = 1;
      v5 = 1.5;
      goto LABEL_14;
    }

    *(v1 + 16) = 1;
LABEL_12:
    v4 = 0x4278000041000000;
    v6 = xmmword_265AAD880;
    goto LABEL_13;
  }

  *(v1 + 16) = a1;
  v4 = 0;
  v5 = 1.5;
  if (a1 <= 1u)
  {
    if (!a1)
    {
      v6 = xmmword_265AAD810;
      v7 = xmmword_265AAD820;
      v8 = 1;
LABEL_14:
      v9 = 8.0;
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (a1 == 2)
  {
    goto LABEL_8;
  }

  if (a1 == 3)
  {
    v6 = xmmword_265AAD850;
    v7 = xmmword_265AAD860;
    v8 = 1;
    v5 = 2.0;
    v9 = 24.0;
  }

  else
  {
    v8 = 0;
    v4 = 0x4278000040800000;
    v6 = xmmword_265AAD830;
    v7 = xmmword_265AAD840;
    v9 = 12.0;
  }

LABEL_15:
  *(v1 + 32) = v7;
  *(v1 + 48) = 1063675494;
  *(v1 + 52) = v6;
  *(v1 + 68) = v4;
  *(v1 + 76) = v9;
  *(v1 + 80) = 1051361018;
  *(v1 + 84) = v5;
  *(v1 + 124) = v8;
  *(v1 + 88) = xmmword_265AAD890;
  *(v1 + 104) = xmmword_265AAD8A0;
  *(v1 + 120) = 1065353216;
  return v1;
}

uint64_t sub_265A9E858(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v13 = (*v6 + 256);
  v14 = *v13;
  result = (*v13)();
  if (result)
  {
    result = v14();
    if (result == 1)
    {
      if ((a2 & 1) == 0 && (a4 & 1) == 0)
      {
        if (a3 < a1)
        {
          v16.n128_u32[0] = 1057803469;
          goto LABEL_36;
        }

        v22 = a1;
        v23 = 0.55;
        goto LABEL_35;
      }
    }

    else
    {
      result = v14();
      if (result == 2)
      {
        if ((a2 & 1) == 0 && (a4 & 1) == 0)
        {
          if (a3 < a1)
          {
            v16.n128_u32[0] = 1050253722;
            goto LABEL_36;
          }

          v22 = a1;
          v23 = 0.3;
LABEL_35:
          v16.n128_f32[0] = (v22 * v23) / a3;
LABEL_36:
          v21 = *(*v6 + 336);

          return v21(v16);
        }
      }

      else
      {
        result = v14();
        if (result == 4 && (a2 & 1) == 0 && (a4 & 1) == 0)
        {
          result = (*(*v6 + 336))(0.4);
          if (a3 >= a1)
          {
            v24 = (*(*v6 + 408))(result, 156.0);
            (*(*v6 + 432))(v24, 10.0);
            v20 = *(*v6 + 456);
            v19.n128_u32[0] = 24.0;
          }

          else
          {
            if ((a5 & 0x100000000) != 0)
            {
              return result;
            }

            v17 = (*(*v6 + 408))(result, *&a5 * 140.0);
            v18.n128_f32[0] = *&a5 * 4.0;
            (*(*v6 + 432))(v17, v18);
            v19.n128_f32[0] = *&a5 * 62.0;
            v20 = *(*v6 + 456);
          }

          return v20(v19);
        }
      }
    }
  }

  else
  {
    if ((a2 & 1) == 0 && (a4 & 1) == 0)
    {
      if (a3 >= a1)
      {
        v16.n128_f32[0] = (a1 * 0.35) / a3;
      }

      else
      {
        v16.n128_u32[0] = 1051931443;
      }

      result = (*(*v6 + 336))(v16);
    }

    if ((a6 & 0x100000000) == 0)
    {
      v16.n128_f32[0] = *&a6 * 18.0;
      v21 = *(*v6 + 408);

      return v21(v16);
    }
  }

  return result;
}

unint64_t sub_265A9ECA8()
{
  result = qword_280030448;
  if (!qword_280030448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280030448);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HelloPlatform(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HelloPlatform(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_265A9EE70(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC23SetupAssistantSupportUI18DisplayLinkManager_displayLink] = 0;
  v6 = &v5[OBJC_IVAR____TtC23SetupAssistantSupportUI18DisplayLinkManager_frameUpdateBlock];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_265A9EEDC(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC23SetupAssistantSupportUI18DisplayLinkManager_displayLink] = 0;
  v3 = &v2[OBJC_IVAR____TtC23SetupAssistantSupportUI18DisplayLinkManager_frameUpdateBlock];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for DisplayLinkManager();
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_265A9EF50()
{
  v1 = OBJC_IVAR____TtC23SetupAssistantSupportUI18DisplayLinkManager_displayLink;
  if (!*(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI18DisplayLinkManager_displayLink))
  {
    v2 = [objc_opt_self() displayLinkWithTarget:v0 selector:sel_frameWithDisplayLink_];
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
    v4 = v2;

    if (v4)
    {
      v5 = [objc_opt_self() currentRunLoop];
      [v4 addToRunLoop:v5 forMode:*MEMORY[0x277CBE640]];
    }
  }
}

void sub_265A9F044()
{
  v1 = OBJC_IVAR____TtC23SetupAssistantSupportUI18DisplayLinkManager_displayLink;
  v2 = *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI18DisplayLinkManager_displayLink);
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 currentRunLoop];
    [v4 removeFromRunLoop:v5 forMode:*MEMORY[0x277CBE640]];

    v6 = *(v0 + v1);
  }

  else
  {
    v6 = 0;
  }

  *(v0 + v1) = 0;
}

id sub_265A9F248()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DisplayLinkManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_265A9F2CC()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);

    return v2;
  }

  else
  {
    result = sub_265AA79E0();
    __break(1u);
  }

  return result;
}

uint64_t sub_265A9F370@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_265A9F3BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(**a2 + 152);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_265A9F45C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_265A9F4BC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_265A9F550;
}

void sub_265A9F550(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
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

uint64_t sub_265A9F5D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_265A9F620(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 48) = v2;
}

uint64_t sub_265A9F6B8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t BookendLanguageProvider.__allocating_init(languageOrderType:)(uint64_t a1)
{
  v2 = swift_allocObject();
  BookendLanguageProvider.init(languageOrderType:)(a1);
  return v2;
}

uint64_t BookendLanguageProvider.init(languageOrderType:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v1[5] = 0;
  v1[2] = 0;
  v1[3] = 0;
  swift_unknownObjectWeakInit();
  v4 = MEMORY[0x277D84F90];
  v1[6] = MEMORY[0x277D84F90];
  v1[7] = v4;
  v70 = v1 + 6;
  if (v3)
  {
    if (v2)
    {
      v4 = v2;
    }

    v72 = v4;
    v5 = &unk_287757D38;
    v76 = 49;
  }

  else
  {
    v76 = v2[2];
    if (!v76)
    {
      goto LABEL_44;
    }

    v72 = MEMORY[0x277D84F90];
    v5 = v2;
  }

  v71 = v1;
  swift_retain_n();
  v69 = v2;
  v68 = v3;
  isUniquelyReferenced_nonNull_native = j__swift_bridgeObjectRetain();
  v7 = 0;
  v8 = 0;
  v9 = v5 + 5;
  v77 = MEMORY[0x277D84F90];
  v74 = xmmword_265AAB1D0;
  v73 = v5;
  do
  {
    if (v7 >= v5[2])
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:

      __break(1u);
LABEL_42:

      __break(1u);
      goto LABEL_43;
    }

    v11 = *(v9 - 1);
    v10 = *v9;
    v78 = v11;
    v79 = v10;
    MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
    v66 = &v78;

    if ((sub_265AA1E0C(sub_265AA36C8, v65, &unk_287757D38) & 1) == 0)
    {
      v75 = v8;
      v12 = objc_opt_self();
      v13 = sub_265AA7630();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F938);
      v14 = swift_allocObject();
      *(v14 + 16) = v74;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;

      v15 = sub_265AA7630();

      v16 = [v12 preferredLocalizationsFromArray:v13 forPreferences:v15];

      v17 = sub_265AA7640();
      if (!v17[2])
      {
        goto LABEL_41;
      }

      v11 = v17[4];
      v18 = v17[5];

      v10 = v18;
      v8 = v75;
      v5 = v73;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_265A639B4(0, *(v77 + 2) + 1, 1, v77);
      v77 = isUniquelyReferenced_nonNull_native;
    }

    v20 = *(v77 + 2);
    v19 = *(v77 + 3);
    if (v20 >= v19 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_265A639B4((v19 > 1), v20 + 1, 1, v77);
      v77 = isUniquelyReferenced_nonNull_native;
    }

    ++v7;
    v21 = v77;
    *(v77 + 2) = v20 + 1;
    v22 = &v21[16 * v20];
    *(v22 + 4) = v11;
    *(v22 + 5) = v10;
    v9 += 2;
  }

  while (v76 != v7);

  v23 = v72;
  v24 = v72[2];
  v25 = swift_retain_n();
  v76 = v24;
  if (v24)
  {
    v26 = 0;
    v27 = v23 + 5;
    v28 = MEMORY[0x277D84F90];
    while (v26 < v23[2])
    {
      v29 = *(v27 - 1);
      v30 = *v27;
      v78 = v29;
      v79 = v30;
      MEMORY[0x28223BE20](v25);
      v66 = &v78;

      if ((sub_265AA1E0C(sub_265AA3D28, v65, &unk_287757D38) & 1) == 0)
      {
        v75 = v28;
        v31 = objc_opt_self();
        v32 = sub_265AA7630();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F938);
        v33 = swift_allocObject();
        *(v33 + 16) = v74;
        *(v33 + 32) = v29;
        *(v33 + 40) = v30;

        v34 = sub_265AA7630();

        v35 = [v31 preferredLocalizationsFromArray:v32 forPreferences:v34];

        v36 = sub_265AA7640();
        if (!v36[2])
        {
          goto LABEL_42;
        }

        v29 = v36[4];
        v37 = v36[5];

        v30 = v37;
        v23 = v72;
        v28 = v75;
      }

      v25 = swift_isUniquelyReferenced_nonNull_native();
      if ((v25 & 1) == 0)
      {
        v25 = sub_265A639B4(0, *(v28 + 16) + 1, 1, v28);
        v28 = v25;
      }

      v39 = *(v28 + 16);
      v38 = *(v28 + 24);
      if (v39 >= v38 >> 1)
      {
        v25 = sub_265A639B4((v38 > 1), v39 + 1, 1, v28);
        v28 = v25;
      }

      ++v26;
      *(v28 + 16) = v39 + 1;
      v40 = v28 + 16 * v39;
      *(v40 + 32) = v29;
      *(v40 + 40) = v30;
      v27 += 2;
      if (v76 == v26)
      {
        goto LABEL_30;
      }
    }

    goto LABEL_40;
  }

  v28 = MEMORY[0x277D84F90];
LABEL_30:

  v41 = v71;

  v42 = v77;

  v44 = sub_265AA36E4(v43);

  sub_265AA377C();
  v45 = MEMORY[0x266767FA0](MEMORY[0x277D84F90]);
  sub_265AA2578(v28);
  v46 = sub_265AA7630();

  [v45 addObjectsFromArray_];

  sub_265AA277C(v44);

  v47 = sub_265AA7730();

  [v45 intersectSet_];

  sub_265AA2578(v42);
  v48 = sub_265AA7630();

  [v45 addObjectsFromArray_];

  v49 = [v45 array];
  v50 = sub_265AA7640();

  v51 = sub_265AA2678(v50);

  v52 = v70;
  swift_beginAccess();
  v41[6] = v51;

  v53 = *(v41[6] + 16);

  j__swift_bridgeObjectRelease();
  if (v53)
  {
    return v41;
  }

  v54 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F938);
  v55 = swift_allocObject();
  *(v55 + 16) = v74;
  v81[0] = 28261;
  v81[1] = 0xE200000000000000;
  v80 = v81;
  if (sub_265AA1E0C(sub_265AA3D28, &v78, &unk_287757D38))
  {
    v56 = 0xE200000000000000;

    goto LABEL_36;
  }

  v57 = objc_opt_self();
  v58 = sub_265AA7630();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F938);
  v59 = swift_allocObject();
  *(v59 + 16) = v74;
  *(v59 + 32) = 28261;
  *(v59 + 40) = 0xE200000000000000;

  v60 = sub_265AA7630();

  v61 = [v57 preferredLocalizationsFromArray:v58 forPreferences:v60];

  v62 = sub_265AA7640();
  if (v62[2])
  {
    v63 = v62[4];
    v56 = v62[5];

    if (!v56)
    {
      v56 = 0xE200000000000000;
LABEL_36:
      v63 = 28261;
    }

    *(v55 + 32) = v63;
    *(v55 + 40) = v56;
    *v54 = v55;

    return v41;
  }

LABEL_43:

  __break(1u);
LABEL_44:
  v67 = 0;
  v66 = 44;
  result = sub_265AA79E0();
  __break(1u);
  return result;
}

uint64_t Array<A>.uniqueElementsPrioritizing(_:)(uint64_t a1, uint64_t a2)
{

  v4 = sub_265AA36E4(a2);

  sub_265AA377C();
  v5 = MEMORY[0x266767FA0](MEMORY[0x277D84F90]);
  sub_265AA2578(a1);
  v6 = sub_265AA7630();

  [v5 addObjectsFromArray_];

  sub_265AA277C(v4);

  v7 = sub_265AA7730();

  [v5 intersectSet_];

  sub_265AA2578(a2);
  v8 = sub_265AA7630();

  [v5 addObjectsFromArray_];

  v9 = [v5 array];
  v10 = sub_265AA7640();

  v11 = sub_265AA2678(v10);

  return v11;
}

BOOL sub_265AA0198()
{
  v1 = *((*(*v0 + 168))() + 16);

  return v1 < 2;
}

uint64_t sub_265AA01E8()
{
  v1 = v0;
  v2 = sub_265AA6E20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_beginAccess();
  v7 = v0[7];
  v10 = *(v7 + 16);
  v9 = (v7 + 16);
  v8 = v10;
  if (v10)
  {
    v11 = &v9[2 * v8];
    v13 = *v11;
    v12 = v11[1];

    result = swift_beginAccess();
    if (!*v9)
    {
      __break(1u);
      return result;
    }

    sub_265A6532C(0, 1);
    v6 = swift_endAccess();
    if (*(v1[7] + 16))
    {
      goto LABEL_10;
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v15 = *(*v1 + 168);
  v1[7] = v15(v6);

  v17 = *(v15(v16) + 16);

  if (v17 < 2)
  {
LABEL_10:

    goto LABEL_11;
  }

  if (v12)
  {
    if ((*(*v1 + 144))(v18))
    {
      v20 = v19;
      ObjectType = swift_getObjectType();
      (*(v20 + 8))(v13, v12, ObjectType, v20);

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_11:
  v22 = sub_265A780B8();
  (*(v3 + 16))(v5, v22, v2);

  v23 = sub_265AA6E00();
  v24 = sub_265AA77A0();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v33 = v2;
    v34[0] = v26;
    v27 = v26;
    *v25 = 136315138;
    v28 = (*(*v1 + 112))();
    v30 = sub_265A63AC0(v28, v29, v34);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_265A4C000, v23, v24, "Current language: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    MEMORY[0x2667691D0](v27, -1, -1);
    MEMORY[0x2667691D0](v25, -1, -1);

    v31 = (*(v3 + 8))(v5, v33);
  }

  else
  {

    v31 = (*(v3 + 8))(v5, v2);
  }

  return (*(*v1 + 112))(v31);
}

uint64_t sub_265AA057C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_265AA6E20();
  v97 = *(v4 - 8);
  v98 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v95 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v94 = &v91 - v8;
  MEMORY[0x28223BE20](v7);
  v92 = &v91 - v9;
  v10 = *(a1 + 16);
  v96 = v2;
  isUniquelyReferenced_nonNull_native = swift_retain_n();
  if (v10)
  {
    v12 = (a1 + 40);
    v13 = MEMORY[0x277D84F90];
    v99 = xmmword_265AAB1D0;
    while (1)
    {
      v15 = *(v12 - 1);
      v14 = *v12;
      v102[0] = v15;
      v102[1] = v14;
      MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
      *(&v91 - 2) = v102;

      if ((sub_265AA1E0C(sub_265AA3D28, (&v91 - 4), &unk_287757D38) & 1) == 0)
      {
        v16 = objc_opt_self();
        v17 = sub_265AA7630();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F938);
        v18 = swift_allocObject();
        *(v18 + 16) = v99;
        *(v18 + 32) = v15;
        *(v18 + 40) = v14;

        v19 = sub_265AA7630();

        v20 = [v16 preferredLocalizationsFromArray:v17 forPreferences:v19];

        v21 = sub_265AA7640();
        if (!v21[2])
        {

          __break(1u);
          return result;
        }

        v15 = v21[4];
        v22 = v21[5];

        v14 = v22;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_265A639B4(0, *(v13 + 16) + 1, 1, v13);
        v13 = isUniquelyReferenced_nonNull_native;
      }

      v24 = *(v13 + 16);
      v23 = *(v13 + 24);
      if (v24 >= v23 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_265A639B4((v23 > 1), v24 + 1, 1, v13);
        v13 = isUniquelyReferenced_nonNull_native;
      }

      *(v13 + 16) = v24 + 1;
      v25 = v13 + 16 * v24;
      *(v25 + 32) = v15;
      *(v25 + 40) = v14;
      v12 += 2;
      if (!--v10)
      {
        goto LABEL_13;
      }
    }
  }

  v13 = MEMORY[0x277D84F90];
LABEL_13:
  v26 = v96;

  v28 = (*v26 + 168);
  *&v99 = *v28;
  v93 = v28;
  v29 = (v99)(v27);
  v30 = sub_265AA0FCC(v29, v13);

  if (v30)
  {

    v31 = sub_265A780B8();
    v33 = v97;
    v32 = v98;
    v34 = v92;
    (*(v97 + 16))(v92, v31, v98);
    v35 = sub_265AA6E00();
    v36 = sub_265AA7770();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_265A4C000, v35, v36, "Update requested but no update is needed", v37, 2u);
      MEMORY[0x2667691D0](v37, -1, -1);
    }

    return (*(v33 + 8))(v34, v32);
  }

  else
  {
    swift_beginAccess();
    v39 = v26[7];
    if (v39[2])
    {
      v41 = v39[4];
      v40 = v39[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F938);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_265AAB1D0;
      *(v42 + 32) = v41;
      *(v42 + 40) = v40;
      v101 = v42;

      sub_265A83788(v43);
      v44 = v101;
      v39 = v26[7];
    }

    else
    {

      v44 = v13;
    }

    v46 = sub_265AA36E4(v45);
    sub_265AA377C();
    v47 = MEMORY[0x266767FA0](MEMORY[0x277D84F90]);
    sub_265AA2578(v44);
    v48 = sub_265AA7630();

    [v47 addObjectsFromArray_];

    sub_265AA277C(v46);

    v49 = sub_265AA7730();

    [v47 intersectSet_];

    sub_265AA2578(v39);
    v50 = sub_265AA7630();

    [v47 addObjectsFromArray_];

    v51 = [v47 array];
    v52 = sub_265AA7640();

    v53 = sub_265AA2678(v52);

    v26[7] = v53;

    v55 = (v99)(v54);
    v56 = sub_265AA36E4(v55);
    v57 = MEMORY[0x266767FA0](MEMORY[0x277D84F90]);
    sub_265AA2578(v13);
    v58 = sub_265AA7630();

    [v57 addObjectsFromArray_];

    sub_265AA277C(v56);

    v59 = sub_265AA7730();

    [v57 intersectSet_];

    sub_265AA2578(v55);
    v60 = sub_265AA7630();

    [v57 addObjectsFromArray_];

    v61 = [v57 array];
    v62 = sub_265AA7640();

    v63 = sub_265AA2678(v62);

    swift_beginAccess();
    v26[6] = v63;

    v64 = sub_265A780B8();
    v65 = v97;
    v66 = v98;
    v67 = v94;
    v96 = *(v97 + 16);
    (v96)(v94, v64, v98);

    v68 = sub_265AA6E00();
    v69 = sub_265AA77A0();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v100 = v71;
      *v70 = 136315138;

      v73 = MEMORY[0x266767EA0](v72, MEMORY[0x277D837D0]);
      v75 = v74;

      v76 = sub_265A63AC0(v73, v75, &v100);

      *(v70 + 4) = v76;
      v66 = v98;
      _os_log_impl(&dword_265A4C000, v68, v69, "Queued up languages: %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v71);
      MEMORY[0x2667691D0](v71, -1, -1);
      v77 = v97;
      MEMORY[0x2667691D0](v70, -1, -1);

      v78 = *(v77 + 8);
      v78(v94, v66);
    }

    else
    {

      v78 = *(v65 + 8);
      v78(v67, v66);
    }

    v79 = v95;
    (v96)(v95, v64, v66);

    v80 = sub_265AA6E00();
    v81 = sub_265AA77A0();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v100 = v83;
      *v82 = 136315138;
      (v99)();
      v84 = v66;
      v85 = MEMORY[0x266767EA0]();
      v87 = v86;

      v88 = sub_265A63AC0(v85, v87, &v100);

      *(v82 + 4) = v88;
      _os_log_impl(&dword_265A4C000, v80, v81, "New languages order: %s", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v83);
      MEMORY[0x2667691D0](v83, -1, -1);
      MEMORY[0x2667691D0](v82, -1, -1);

      v89 = v95;
      v90 = v84;
    }

    else
    {

      v89 = v79;
      v90 = v66;
    }

    return (v78)(v89, v90);
  }
}

uint64_t sub_265AA0FCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_265AA7B50() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_265AA105C()
{
  swift_beginAccess();
  *(v0 + 56) = MEMORY[0x277D84F90];
}

uint64_t sub_265AA10A0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F910);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  sub_265AA37CC(a1, &v12 - v5);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_265AA3954(v6, v8 + v7);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  *(v1 + 16) = sub_265AA39C4;
  *(v1 + 24) = v8;
  return sub_265A66150(v9, v10);
}

uint64_t sub_265AA11A8(uint64_t a1, unint64_t a2, char a3)
{
  v6 = sub_265AA6C00();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v94 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F910);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = &v88 - v13;
  v15 = sub_265AA6BD0();
  v105 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v92 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v97 = &v88 - v18;
  v19 = sub_265AA6E20();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v88 - v23;
  isUniquelyReferenced_nonNull_native = MEMORY[0x28223BE20](v22);
  v99 = &v88 - v26;
  v93 = v27;
  v101 = v14;
  v95 = v7;
  v96 = v6;
  if ((a3 & 1) == 0)
  {
    if (qword_2800332C0 != -1)
    {
      v87 = isUniquelyReferenced_nonNull_native;
      swift_once();
      isUniquelyReferenced_nonNull_native = v87;
    }

    v28 = &qword_2800332C8;
    goto LABEL_7;
  }

  if (qword_2800332D0 != -1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v28 = &qword_2800332D8;
LABEL_7:
    v100 = v12;
    v88 = v24;
    v103 = v20;
    v104 = isUniquelyReferenced_nonNull_native;
    v29 = *v28;
    v30 = *(*v28 + 16);

    v106 = a1;
    v102 = v15;
    if (v30)
    {
      v12 = 0;
      v31 = v29 + 40;
      v90 = (v30 - 1);
      v107 = MEMORY[0x277D84F90];
      v91 = v29 + 40;
      do
      {
        v32 = (v31 + 16 * v12);
        v33 = v12;
        while (1)
        {
          if (v33 >= *(v29 + 16))
          {
            __break(1u);
            goto LABEL_58;
          }

          v20 = *(v32 - 1);
          v24 = *v32;
          v12 = (v33 + 1);

          if (sub_265AA75E0())
          {
            break;
          }

          v32 += 2;
          v33 = (v33 + 1);
          if (v30 == v12)
          {
            goto LABEL_21;
          }
        }

        v34 = v107;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v108[0] = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_265AA2B00(0, *(v34 + 16) + 1, 1);
          v34 = v108[0];
        }

        v36 = *(v34 + 16);
        v35 = *(v34 + 24);
        if (v36 >= v35 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_265AA2B00((v35 > 1), v36 + 1, 1);
          v34 = v108[0];
        }

        *(v34 + 16) = v36 + 1;
        v107 = v34;
        v37 = v34 + 16 * v36;
        *(v37 + 32) = v20;
        *(v37 + 40) = v24;
        v31 = v91;
        v15 = v102;
        a1 = v106;
      }

      while (v90 != v33);
    }

    else
    {
      v107 = MEMORY[0x277D84F90];
    }

LABEL_21:

    v38 = sub_265A780B8();
    v40 = v103;
    v39 = v104;
    v41 = *(v103 + 16);
    v42 = v99;
    v89 = v38;
    v90 = v41;
    v91 = v103 + 16;
    (v41)(v99);
    v43 = v107;

    v44 = sub_265AA6E00();
    v45 = sub_265AA7770();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v108[0] = v47;
      *v46 = 136315138;
      v48 = MEMORY[0x266767EA0](v43, MEMORY[0x277D837D0]);
      v50 = sub_265A63AC0(v48, v49, v108);

      *(v46 + 4) = v50;
      v43 = v107;
      _os_log_impl(&dword_265A4C000, v44, v45, "Languages: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      v51 = v47;
      a1 = v106;
      MEMORY[0x2667691D0](v51, -1, -1);
      MEMORY[0x2667691D0](v46, -1, -1);

      v24 = *(v40 + 8);
      v15 = v102;
    }

    else
    {

      v24 = *(v40 + 8);
    }

    (v24)(v42, v39);
    v52 = v105;
    v54 = v100;
    v53 = v101;
    if (*(v43 + 2) < 2uLL)
    {

      return a1;
    }

    v55 = *(v98 + 16);
    if (v55)
    {
      v56 = *(v98 + 24);

      v55(v57);
      sub_265A66150(v55, v56);
      v58 = *(v52 + 48);
      if (v58(v54, 1, v15) != 1)
      {
        (*(v52 + 32))(v53, v54, v15);
        (*(v52 + 56))(v53, 0, 1, v15);
        goto LABEL_32;
      }
    }

    else
    {
      (*(v105 + 56))(v100, 1, 1, v15);
    }

    v59 = v94;
    sub_265AA6BF0();
    sub_265AA6BE0();
    (*(v95 + 8))(v59, v96);
    v58 = *(v52 + 48);
    if (v58(v54, 1, v15) != 1)
    {
      sub_265AA3A40(v54);
    }

LABEL_32:
    if (v58(v53, 1, v15) == 1)
    {

      sub_265AA3A40(v53);
      goto LABEL_52;
    }

    v60 = v97;
    (*(v52 + 32))(v97, v53, v15);
    v61 = v92;
    (*(v52 + 16))(v92, v60, v15);
    isUniquelyReferenced_nonNull_native = (*(v52 + 88))(v61, v15);
    if (isUniquelyReferenced_nonNull_native == *MEMORY[0x277CC8638])
    {
      v62 = 0xE200000000000000;
      v20 = 27974;
      v63 = *(v43 + 2);
      if (!v63)
      {
        goto LABEL_48;
      }

      goto LABEL_44;
    }

    if (isUniquelyReferenced_nonNull_native == *MEMORY[0x277CC8640])
    {
      v62 = 0xE200000000000000;
      v20 = 25421;
      v63 = *(v43 + 2);
      if (!v63)
      {
        goto LABEL_48;
      }

      goto LABEL_44;
    }

    if (isUniquelyReferenced_nonNull_native != *MEMORY[0x277CC8630])
    {
      break;
    }

    v62 = 0xE200000000000000;
    v20 = 28231;
    v63 = *(v43 + 2);
    if (!v63)
    {
      goto LABEL_48;
    }

LABEL_44:
    v64 = 0;
    v12 = (v43 + 40);
    while (v64 < *(v43 + 2))
    {
      a1 = *(v12 - 1);
      v65 = *v12;

      if (sub_265AA75F0())
      {

        v79 = v88;
        v80 = v104;
        (v90)(v88, v89, v104);

        v81 = sub_265AA6E00();
        v82 = sub_265AA77A0();

        if (os_log_type_enabled(v81, v82))
        {
          v83 = v15;
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          v108[0] = v85;
          *v84 = 136315138;
          *(v84 + 4) = sub_265A63AC0(a1, v65, v108);
          _os_log_impl(&dword_265A4C000, v81, v82, "Found preferred term of address bundle %s", v84, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v85);
          MEMORY[0x2667691D0](v85, -1, -1);
          MEMORY[0x2667691D0](v84, -1, -1);

          (v24)(v79, v80);
          (*(v105 + 8))(v97, v83);
        }

        else
        {

          (v24)(v79, v80);
          (*(v105 + 8))(v97, v15);
        }

        return a1;
      }

      ++v64;
      v12 += 2;
      a1 = v106;
      v43 = v107;
      if (v63 == v64)
      {
        goto LABEL_48;
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    v86 = isUniquelyReferenced_nonNull_native;
    swift_once();
    isUniquelyReferenced_nonNull_native = v86;
  }

  isUniquelyReferenced_nonNull_native = (*(v52 + 8))(v61, v15);
  v20 = 0;
  v62 = 0xE000000000000000;
  v63 = *(v43 + 2);
  if (v63)
  {
    goto LABEL_44;
  }

LABEL_48:
  v107 = v24;
  v66 = v93;
  v67 = v104;
  (v90)(v93, v89, v104);

  v68 = sub_265AA6E00();
  v69 = sub_265AA7780();

  LODWORD(v101) = v69;
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v108[0] = v71;
    *v70 = 136315650;
    *(v70 + 4) = sub_265A63AC0(v106, a2, v108);
    *(v70 + 12) = 2080;
    v72 = sub_265A63AC0(v20, v62, v108);

    *(v70 + 14) = v72;
    *(v70 + 22) = 2080;
    v73 = MEMORY[0x266767EA0](v43, MEMORY[0x277D837D0]);
    v75 = v74;

    v76 = sub_265A63AC0(v73, v75, v108);

    *(v70 + 24) = v76;
    _os_log_impl(&dword_265A4C000, v68, v101, "Language supports preferred term of address but is missing for language: %s, suffix: %s; bundles: %s", v70, 0x20u);
    swift_arrayDestroy();
    v77 = v71;
    a1 = v106;
    MEMORY[0x2667691D0](v77, -1, -1);
    MEMORY[0x2667691D0](v70, -1, -1);

    (v107)(v93, v67);
  }

  else
  {

    (v107)(v66, v67);
  }

  (*(v105 + 8))(v97, v15);
LABEL_52:

  return a1;
}

uint64_t sub_265AA1E0C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

void sub_265AA1ED0(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v59 = a3;
  v6 = sub_265AA6D60();
  v64 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v65 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v58 = v56 - v9;
  type metadata accessor for BookendLanguageProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = sub_265AA7540();
  sub_265A69E4C(a2);
  v13 = sub_265AA7540();

  v14 = [v11 URLsForResourcesWithExtension:v12 subdirectory:v13];

  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
    goto LABEL_32;
  }

  v57 = a4;
  v16 = sub_265AA7640();

  v17 = *(v16 + 16);
  if (v17)
  {
    v66 = v15;
    sub_265AA2B40(0, v17, 0);
    v18 = v66;
    v19 = *(v64 + 16);
    v20 = *(v64 + 80);
    v56[1] = v16;
    v61 = ((v20 + 32) & ~v20);
    v62 = v19;
    v21 = v61 + v16;
    v60 = *(v64 + 72);
    v22 = (v64 + 8);
    v63 = (v64 + 16);
    v23 = (v64 + 32);
    v24 = v58;
    do
    {
      v25 = v65;
      v62(v65, v21, v6);
      sub_265AA6D20();
      (*v22)(v25, v6);
      v66 = v18;
      v27 = *(v18 + 16);
      v26 = *(v18 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_265AA2B40(v26 > 1, v27 + 1, 1);
        v18 = v66;
      }

      *(v18 + 16) = v27 + 1;
      v28 = v60;
      (*v23)(v61 + v18 + v27 * v60, v24, v6);
      v21 += v28;
      --v17;
    }

    while (v17);

    v15 = MEMORY[0x277D84F90];
    v29 = *(v18 + 16);
    if (v29)
    {
      goto LABEL_8;
    }
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
    v29 = *(MEMORY[0x277D84F90] + 16);
    if (v29)
    {
LABEL_8:
      v66 = v15;
      sub_265AA2B00(0, v29, 0);
      v30 = v66;
      v31 = *(v64 + 16);
      v32 = v18 + ((*(v64 + 80) + 32) & ~*(v64 + 80));
      v62 = *(v64 + 72);
      v63 = v31;
      v64 += 16;
      v61 = (v64 - 8);
      do
      {
        v33 = v65;
        v63(v65, v32, v6);
        v34 = sub_265AA6D00();
        v36 = v35;
        v37 = v6;
        (*v61)(v33, v6);
        v66 = v30;
        v39 = *(v30 + 16);
        v38 = *(v30 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_265AA2B00((v38 > 1), v39 + 1, 1);
          v30 = v66;
        }

        *(v30 + 16) = v39 + 1;
        v40 = v30 + 16 * v39;
        *(v40 + 32) = v34;
        *(v40 + 40) = v36;
        v32 += v62;
        --v29;
        v6 = v37;
      }

      while (v29);

      v41 = v30;
      goto LABEL_15;
    }
  }

  v41 = MEMORY[0x277D84F90];
LABEL_15:
  v42 = *(v41 + 16);
  if (v42)
  {
    v43 = 0;
    v64 = v42 - 1;
    v65 = (v41 + 40);
    v15 = MEMORY[0x277D84F90];
    do
    {
      v44 = &v65[16 * v43];
      v45 = v43;
      while (1)
      {
        if (v45 >= *(v41 + 16))
        {
          __break(1u);
          return;
        }

        v46 = v41;
        v48 = *(v44 - 1);
        v47 = *v44;
        v43 = v45 + 1;

        v49 = sub_265AA75F0();

        if (v49)
        {
          break;
        }

        v50 = sub_265AA75F0();

        if (v50)
        {
          break;
        }

        v51 = sub_265AA75F0();

        if (v51)
        {
          break;
        }

        swift_arrayDestroy();
        v44 += 16;
        ++v45;
        v41 = v46;
        if (v42 == v43)
        {
          goto LABEL_31;
        }
      }

      swift_arrayDestroy();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_265AA2B00(0, *(v15 + 16) + 1, 1);
        v15 = v66;
      }

      v41 = v46;
      v54 = *(v15 + 16);
      v53 = *(v15 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_265AA2B00((v53 > 1), v54 + 1, 1);
        v41 = v46;
        v15 = v66;
      }

      *(v15 + 16) = v54 + 1;
      v55 = v15 + 16 * v54;
      *(v55 + 32) = v48;
      *(v55 + 40) = v47;
    }

    while (v64 != v45);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

LABEL_31:

  a4 = v57;
LABEL_32:
  *a4 = v15;
}

uint64_t BookendLanguageProvider.deinit()
{
  sub_265A66150(*(v0 + 16), *(v0 + 24));
  sub_265A7F188(v0 + 32);

  return v0;
}

uint64_t BookendLanguageProvider.__deallocating_deinit()
{
  sub_265A66150(*(v0 + 16), *(v0 + 24));
  sub_265A7F188(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_265AA2578(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_265AA2B20(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_265AA2B20((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_265A5A3B4(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_265AA2678(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_265AA2B00(0, v1, 0);
    v2 = v14;
    v4 = a1 + 32;
    do
    {
      sub_265A65A6C(v4, v11);
      swift_dynamicCast();
      v5 = v12;
      v6 = v13;
      v14 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_265AA2B00((v7 > 1), v8 + 1, 1);
        v2 = v14;
      }

      *(v2 + 16) = v8 + 1;
      v9 = v2 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_265AA277C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030470);
    v2 = sub_265AA7930();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 56;

  v9 = 0;
  while (v5)
  {
LABEL_15:

    swift_dynamicCast();
    result = sub_265AA7900();
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v16 = 0;
      v17 = (63 - v13) >> 6;
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        v19 = *(v7 + 8 * v15);
        if (v19 != -1)
        {
          v10 = __clz(__rbit64(~v19)) + (v15 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v5 &= v5 - 1;
    v11 = *(v2 + 48) + 40 * v10;
    *(v11 + 32) = v22;
    *v11 = v20;
    *(v11 + 16) = v21;
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 56 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_265AA29B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_265AA7C10();
  sub_265AA75B0();
  v8 = sub_265AA7C40();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_265AA7B50() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_265AA31B4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

char *sub_265AA2B00(char *a1, int64_t a2, char a3)
{
  result = sub_265AA2B60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_265AA2B20(char *a1, int64_t a2, char a3)
{
  result = sub_265AA2C6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_265AA2B40(size_t a1, int64_t a2, char a3)
{
  result = sub_265AA2D7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_265AA2B60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F938);
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

char *sub_265AA2C6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030478);
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

size_t sub_265AA2D7C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030468);
  v10 = *(sub_265AA6D60() - 8);
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
  v15 = *(sub_265AA6D60() - 8);
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

uint64_t sub_265AA2F54()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030480);
  result = sub_265AA7920();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_265AA7C10();
      sub_265AA75B0();
      result = sub_265AA7C40();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_265AA31B4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_265AA2F54();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_265AA3334();
      goto LABEL_16;
    }

    sub_265AA3490();
  }

  v10 = *v4;
  sub_265AA7C10();
  sub_265AA75B0();
  result = sub_265AA7C40();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_265AA7B50();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_265AA7B90();
  __break(1u);
  return result;
}

void *sub_265AA3334()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030480);
  v2 = *v0;
  v3 = sub_265AA7910();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_265AA3490()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030480);
  result = sub_265AA7920();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_265AA7C10();

      sub_265AA75B0();
      result = sub_265AA7C40();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_265AA36E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x266767F90](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_265AA29B0(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_265AA377C()
{
  result = qword_280030460;
  if (!qword_280030460)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280030460);
  }

  return result;
}

uint64_t sub_265AA37CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265AA383C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F910) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_265AA6BD0();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_265AA3954(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F910);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265AA39C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F910) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_265AA37CC(v4, a1);
}

uint64_t sub_265AA3A40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_265AA3C28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
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

uint64_t sub_265AA3C70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_265AA3CD0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_265AA7B50() & 1;
  }
}

id sub_265AA3D44(uint64_t a1, uint64_t a2, unint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030488);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265AAB1D0;
  *(inited + 32) = sub_265AA7570();
  *(inited + 72) = MEMORY[0x277D837D0];
  if (a3)
  {
    v8 = a2;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0xE000000000000000;
  if (a3)
  {
    v9 = a3;
  }

  *(inited + 40) = v7;
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  v10 = @"SASBookendErrorDomain";

  sub_265AA3FC4(inited);
  swift_setDeallocating();
  sub_265AA40D4(inited + 32);
  v11 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v12 = sub_265AA74C0();

  v13 = [v11 initWithDomain:v10 code:a1 userInfo:v12];

  return v13;
}

unint64_t sub_265AA3E94(uint64_t a1, uint64_t a2)
{
  sub_265AA7C10();
  sub_265AA75B0();
  v4 = sub_265AA7C40();

  return sub_265AA3F0C(a1, a2, v4);
}

unint64_t sub_265AA3F0C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_265AA7B50())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_265AA3FC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030498);
    v3 = sub_265AA7A20();
    v4 = a1 + 32;

    while (1)
    {
      sub_265AA4160(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_265AA3E94(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_265A5A3B4(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_265AA40D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265AA4160(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280030490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265AA41DC()
{
  v1 = *(v0 + OBJC_IVAR___SASBookendCurrentAnimationData_language);

  return v1;
}

id sub_265AA4238(double a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_265AA7540();

  v4 = [v2 initWithLanguage:v3 animationDuration:a1];

  return v4;
}

id sub_265AA42BC(uint64_t a1, uint64_t a2, double a3)
{
  v4 = (v3 + OBJC_IVAR___SASBookendCurrentAnimationData_language);
  *v4 = a1;
  v4[1] = a2;
  *(v3 + OBJC_IVAR___SASBookendCurrentAnimationData_animationDuration) = a3;
  v6.super_class = SASBookendCurrentAnimationData;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_265AA4404()
{
  v1 = *(v0 + OBJC_IVAR___SASBookendNextAnimationData_language);

  return v1;
}

id sub_265AA4480(double a1, double a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_265AA7540();

  v6 = [v4 initWithLanguage:v5 animationDuration:a1 delayTillNextAnimation:a2];

  return v6;
}

id sub_265AA450C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR___SASBookendNextAnimationData_language);
  *v5 = a1;
  v5[1] = a2;
  *(v4 + OBJC_IVAR___SASBookendNextAnimationData_animationDuration) = a3;
  *(v4 + OBJC_IVAR___SASBookendNextAnimationData_delayTillNextAnimation) = a4;
  v7.super_class = SASBookendNextAnimationData;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_265AA4674()
{
  v1 = *(v0 + OBJC_IVAR___SASBookendAnimationFinishedData_currentLanguage);

  return v1;
}

void *sub_265AA46E0()
{
  v1 = *(v0 + OBJC_IVAR___SASBookendAnimationFinishedData_nextAnimationData);
  v2 = v1;
  return v1;
}

id sub_265AA4710(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_265AA7540();

  v8 = [v6 initWithCurrentLanguage:v7 isLastLanguage:a3 & 1 nextAnimationData:a4];

  return v8;
}

id sub_265AA47A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = (v4 + OBJC_IVAR___SASBookendAnimationFinishedData_currentLanguage);
  *v5 = a1;
  v5[1] = a2;
  *(v4 + OBJC_IVAR___SASBookendAnimationFinishedData_isLastLanguage) = a3;
  *(v4 + OBJC_IVAR___SASBookendAnimationFinishedData_nextAnimationData) = a4;
  v7.super_class = SASBookendAnimationFinishedData;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_265AA4948()
{

  v0 = sub_265AA7540();

  return v0;
}

uint64_t sub_265AA49A4()
{
  v1 = *(v0 + OBJC_IVAR___SASBookendAnimationUpdateUIData_language);

  return v1;
}

id sub_265AA4A20(double a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_265AA7540();

  v8 = [v6 initWithLanguage:v7 remainingDuration:a4 & 1 isInitialDrawing:a1];

  return v8;
}

id sub_265AA4AAC(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = (v4 + OBJC_IVAR___SASBookendAnimationUpdateUIData_language);
  *v5 = a1;
  v5[1] = a2;
  *(v4 + OBJC_IVAR___SASBookendAnimationUpdateUIData_remainingDuration) = a4;
  *(v4 + OBJC_IVAR___SASBookendAnimationUpdateUIData_isInitialDrawing) = a3;
  v7.super_class = SASBookendAnimationUpdateUIData;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_265AA529C(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

void sub_265AA530C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_265AA5458(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t sub_265AA5584(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_265AA7570();
  v4 = v3;

  v1(v2, v4);
}

uint64_t sub_265AA56B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_265AA7570();
  v4 = v3;
  v5 = sub_265AA7570();
  v7 = v6;

  v1(v2, v4, v5, v7);
}

id _sSo27SASBookendNextAnimationDataC23SetupAssistantSupportUIEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_265AA5788()
{
  v1 = (v0 + OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationWillBegin);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationDidFinish);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationUIUpdateSignal);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationError);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationWillBeginLegacy);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationDidFinishLegacy);
  *v6 = 0;
  v6[1] = 0;
  v8.super_class = SASBookendCallbackConfiguration;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_265AA5844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v14 = a1;
  v15 = a2;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_265AA63F8;
  v13 = &block_descriptor_3;
  v6 = _Block_copy(&v10);

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = a3;
  v15 = a4;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_265AA63F8;
  v13 = &block_descriptor_7;
  v7 = _Block_copy(&v10);

LABEL_6:
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initOnAnimationWillBegin:v6 onAnimationDidFinish:v7];
  _Block_release(v7);
  _Block_release(v6);
  return v8;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_265AA599C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = &v4[OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationWillBegin];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v4[OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationDidFinish];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v4[OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationUIUpdateSignal];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v4[OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationError];
  *v12 = 0;
  *(v12 + 1) = 0;
  swift_beginAccess();
  *v9 = a1;
  *(v9 + 1) = a2;
  swift_beginAccess();
  *v10 = a3;
  *(v10 + 1) = a4;
  v13 = &v4[OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationWillBeginLegacy];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v4[OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationDidFinishLegacy];
  *v14 = 0;
  *(v14 + 1) = 0;
  v16.receiver = v4;
  v16.super_class = SASBookendCallbackConfiguration;
  return objc_msgSendSuper2(&v16, sel_init);
}

id sub_265AA5B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v14 = a1;
  v15 = a2;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_265AA5584;
  v13 = &block_descriptor_9_0;
  v6 = _Block_copy(&v10);

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = a3;
  v15 = a4;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_265AA56B8;
  v13 = &block_descriptor_6;
  v7 = _Block_copy(&v10);

LABEL_6:
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAnimationWillBeginBlock:v6 animationDidFinishBlock:v7];
  _Block_release(v7);
  _Block_release(v6);
  return v8;
}

id sub_265AA5CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (v4 + OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationWillBegin);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v4 + OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationDidFinish);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v4 + OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationUIUpdateSignal);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v4 + OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationError);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v4 + OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationWillBeginLegacy);
  *v9 = a1;
  v9[1] = a2;
  v10 = (v4 + OBJC_IVAR___SASBookendCallbackConfiguration_onAnimationDidFinishLegacy);
  *v10 = a3;
  v10[1] = a4;
  v12.super_class = SASBookendCallbackConfiguration;
  return objc_msgSendSuper2(&v12, sel_init);
}

void sub_265AA5E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_265AA7540();
  v7 = sub_265AA7540();
  (*(a5 + 16))(a5, v6, v7);
}

void sub_265AA5EF4(void *a1)
{
  v2 = v1;
  v4 = [v2 onAnimationWillBegin];
  if (v4)
  {
    v5 = v4;
    (*(v4 + 2))(v4, a1);
  }

  else
  {
    v6 = [v2 onAnimationWillBeginLegacy];
    if (!v6)
    {
      return;
    }

    v5 = v6;
    v7 = [a1 language];
    if (!v7)
    {
      sub_265AA7570();
      v7 = sub_265AA7540();
    }

    (v5)[2](v5, v7);
  }

  _Block_release(v5);
}

void sub_265AA5FE8(void *a1)
{
  v3 = [v1 onAnimationDidFinish];
  if (v3)
  {
    v4 = v3;
    (*(v3 + 2))(v3, a1);
  }

  else
  {
    v5 = [v1 onAnimationDidFinishLegacy];
    if (!v5)
    {
      return;
    }

    v4 = v5;
    v6 = [a1 currentLanguage];
    if (!v6)
    {
      sub_265AA7570();
      v6 = sub_265AA7540();
    }

    v7 = [a1 nextAnimationData];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 language];
    }

    else
    {
      v9 = [a1 currentLanguage];
    }

    sub_265AA7570();

    v10 = sub_265AA7540();

    (v4)[2](v4, v6, v10);
  }

  _Block_release(v4);
}

uint64_t sub_265AA6278()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_265AA62B8()
{
  v1 = *(v0 + 16);
  v2 = sub_265AA7540();
  (*(v1 + 16))(v1, v2);
}

void sub_265AA6324()
{
  v1 = *(v0 + 16);
  v2 = sub_265AA6CB0();
  (*(v1 + 16))(v1, v2);
}

void __UIImageOrientationForImageCapturedInInterfaceOrientationToBeDisplayedInInterfaceOrientation_cold_1(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"UIImageOrientation __UIImageOrientationForImageCapturedInInterfaceOrientationToBeDisplayedInInterfaceOrientation(BSInterfaceOrientation, BSInterfaceOrientation)"}];
  v3 = 138544130;
  v4 = v2;
  v5 = 2114;
  v6 = @"SASWallpaperWorkspaceSnapshotFetcher.m";
  v7 = 1024;
  v8 = 70;
  v9 = 2114;
  v10 = a1;
  _os_log_error_impl(&dword_265A4C000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v3, 0x26u);
}

CGRect CGPathGetPathBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114E0](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}