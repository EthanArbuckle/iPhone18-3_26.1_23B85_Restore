float sub_2643115D4()
{
  OUTLINED_FUNCTION_0(OBJC_IVAR____TtC4SMCT19MotionAssessorScore_perp);
  OUTLINED_FUNCTION_7();
  return *v0;
}

uint64_t sub_264311630(float a1)
{
  OUTLINED_FUNCTION_0(OBJC_IVAR____TtC4SMCT19MotionAssessorScore_perp);
  result = OUTLINED_FUNCTION_25();
  *v1 = a1;
  return result;
}

float sub_264311738()
{
  OUTLINED_FUNCTION_0(OBJC_IVAR____TtC4SMCT19MotionAssessorScore_rot);
  OUTLINED_FUNCTION_7();
  return *v0;
}

uint64_t sub_264311794(float a1)
{
  OUTLINED_FUNCTION_0(OBJC_IVAR____TtC4SMCT19MotionAssessorScore_rot);
  result = OUTLINED_FUNCTION_25();
  *v1 = a1;
  return result;
}

float sub_2643118A0()
{
  OUTLINED_FUNCTION_0(OBJC_IVAR____TtC4SMCT19MotionAssessorScore_hPan);
  OUTLINED_FUNCTION_7();
  return *v0;
}

uint64_t sub_2643118FC(float a1)
{
  OUTLINED_FUNCTION_0(OBJC_IVAR____TtC4SMCT19MotionAssessorScore_hPan);
  result = OUTLINED_FUNCTION_25();
  *v1 = a1;
  return result;
}

float sub_264311A04()
{
  OUTLINED_FUNCTION_0(OBJC_IVAR____TtC4SMCT19MotionAssessorScore_vPan);
  OUTLINED_FUNCTION_7();
  return *v0;
}

uint64_t sub_264311A60(float a1)
{
  OUTLINED_FUNCTION_0(OBJC_IVAR____TtC4SMCT19MotionAssessorScore_vPan);
  result = OUTLINED_FUNCTION_25();
  *v1 = a1;
  return result;
}

id MotionAssessorScore.init(perp:rot:hPan:vPan:)(float a1, float a2, float a3, float a4)
{
  *&v4[OBJC_IVAR____TtC4SMCT19MotionAssessorScore_perp] = a1;
  *&v4[OBJC_IVAR____TtC4SMCT19MotionAssessorScore_rot] = a2;
  *&v4[OBJC_IVAR____TtC4SMCT19MotionAssessorScore_hPan] = a3;
  *&v4[OBJC_IVAR____TtC4SMCT19MotionAssessorScore_vPan] = a4;
  v6.receiver = v4;
  v6.super_class = type metadata accessor for MotionAssessorScore();
  return objc_msgSendSuper2(&v6, sel_init);
}

float sub_264311C4C()
{
  v1 = (v0 + OBJC_IVAR____TtC4SMCT19MotionAssessorScore_perp);
  OUTLINED_FUNCTION_2();
  v2 = fabsf(*v1);
  v3 = (v0 + OBJC_IVAR____TtC4SMCT19MotionAssessorScore_rot);
  OUTLINED_FUNCTION_2();
  v4 = fabsf(*v3);
  v5 = (v0 + OBJC_IVAR____TtC4SMCT19MotionAssessorScore_hPan);
  OUTLINED_FUNCTION_2();
  v6 = fabsf(*v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF653F8, &unk_26431BAA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26431BA70;
  v8 = (v0 + OBJC_IVAR____TtC4SMCT19MotionAssessorScore_vPan);
  OUTLINED_FUNCTION_7();
  *(inited + 32) = fabsf(*v8);
  v9 = OUTLINED_FUNCTION_10();
  sub_264311D88(inited, v9, v10, v11);
  v13 = v12;
  swift_setDeallocating();
  return v13;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_264311D88(uint64_t result, float a2, float a3, float a4)
{
  if (a2 <= a3)
  {
    a2 = a3;
  }

  if (a2 <= a4)
  {
    a2 = a4;
  }

  v4 = *(result + 16);
  if (v4)
  {
    v5 = (result + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (a2 <= v6)
      {
        a2 = v7;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t MotionAssessorOption.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_264311E6C(uint64_t a1)
{
  sub_26431A744();
  MEMORY[0x266735450](a1);
  return sub_26431A764();
}

uint64_t sub_264311EEC(uint64_t a1, uint64_t a2)
{
  sub_26431A744();
  MEMORY[0x266735450](a2);
  return sub_26431A764();
}

unint64_t sub_264311F30@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = MotionAssessorOption.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t MotionAssessor.init(width:height:analysisWidth:analysisHeight:frameRate:option:centerCrop:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, float a7)
{
  v8 = v7;
  LODWORD(v271) = a6;
  v298 = *MEMORY[0x277D85DE8];
  v10 = OBJC_IVAR____TtC4SMCT14MotionAssessor_device;
  if (qword_27FF653D0 != -1)
  {
    swift_once();
  }

  v11 = qword_27FF65980;
  *&v7[v10] = *(qword_27FF65980 + OBJC_IVAR____TtC4SMCT14MetalSingleton_device);
  v263 = OBJC_IVAR____TtC4SMCT14MotionAssessor_library;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_library] = *(v11 + OBJC_IVAR____TtC4SMCT14MetalSingleton_library);
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_commandQueue] = *(v11 + OBJC_IVAR____TtC4SMCT14MetalSingleton_commandQueue);
  allocatorb = OBJC_IVAR____TtC4SMCT14MotionAssessor_textureCache;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_textureCache] = 0;
  v197 = OBJC_IVAR____TtC4SMCT14MotionAssessor_vtTransferSession;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_vtTransferSession] = 0;
  v184 = OBJC_IVAR____TtC4SMCT14MotionAssessor_currPixelBuffer;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_currPixelBuffer] = 0;
  v182 = OBJC_IVAR____TtC4SMCT14MotionAssessor_prevPixelBuffer;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_prevPixelBuffer] = 0;
  v179 = OBJC_IVAR____TtC4SMCT14MotionAssessor_pixelFormat;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_pixelFormat] = 65;
  v240 = OBJC_IVAR____TtC4SMCT14MotionAssessor_downsampleFlowPipelineState;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_downsampleFlowPipelineState] = 0;
  v12 = &v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_downsampleFlowthreads];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  v12[48] = 1;
  v237 = OBJC_IVAR____TtC4SMCT14MotionAssessor_templateMatchPipelineState;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_templateMatchPipelineState] = 0;
  v13 = &v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_templateMatchthreads];
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  v200 = v13;
  *(v13 + 48) = 1;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_templateSize] = 5;
  v242 = OBJC_IVAR____TtC4SMCT14MotionAssessor_mean;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_mean] = 0;
  v202 = OBJC_IVAR____TtC4SMCT14MotionAssessor_opticalFlow5x5;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_opticalFlow5x5] = 0;
  v204 = OBJC_IVAR____TtC4SMCT14MotionAssessor_perpMapTexture;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_perpMapTexture] = 0;
  v206 = OBJC_IVAR____TtC4SMCT14MotionAssessor_rotMapTexture;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_rotMapTexture] = 0;
  v208 = OBJC_IVAR____TtC4SMCT14MotionAssessor_hPanMapTexture;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_hPanMapTexture] = 0;
  v210 = OBJC_IVAR____TtC4SMCT14MotionAssessor_vPanMapTexture;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_vPanMapTexture] = 0;
  v213 = OBJC_IVAR____TtC4SMCT14MotionAssessor_perpMeanTexture;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_perpMeanTexture] = 0;
  v219 = OBJC_IVAR____TtC4SMCT14MotionAssessor_rotMeanTexture;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_rotMeanTexture] = 0;
  v225 = OBJC_IVAR____TtC4SMCT14MotionAssessor_hPanMeanTexture;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_hPanMeanTexture] = 0;
  v231 = OBJC_IVAR____TtC4SMCT14MotionAssessor_vPanMeanTexture;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_vPanMeanTexture] = 0;
  v216 = OBJC_IVAR____TtC4SMCT14MotionAssessor_perpMeanBytes;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_perpMeanBytes] = 0;
  v222 = OBJC_IVAR____TtC4SMCT14MotionAssessor_rotMeanBytes;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_rotMeanBytes] = 0;
  v228 = OBJC_IVAR____TtC4SMCT14MotionAssessor_hPanMeanBytes;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_hPanMeanBytes] = 0;
  v234 = OBJC_IVAR____TtC4SMCT14MotionAssessor_vPanMeanBytes;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_vPanMeanBytes] = 0;
  v186 = OBJC_IVAR____TtC4SMCT14MotionAssessor_executor;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_executor] = 0;
  v189 = OBJC_IVAR____TtC4SMCT14MotionAssessor_ADLKTOpticalFlowBuffer;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_ADLKTOpticalFlowBuffer] = 0;
  v247 = OBJC_IVAR____TtC4SMCT14MotionAssessor_centerCrop;
  v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_centerCrop] = 0;
  v174 = OBJC_IVAR____TtC4SMCT14MotionAssessor_croppedPixelBuffer;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_croppedPixelBuffer] = 0;
  v171 = OBJC_IVAR____TtC4SMCT14MotionAssessor_BGRAPixelBuffer;
  *&v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_BGRAPixelBuffer] = 0;
  v14 = &v7[OBJC_IVAR____TtC4SMCT14MotionAssessor_croppedRect];
  *v14 = 0u;
  *(v14 + 16) = 0u;
  v168 = v14;
  *(v14 + 32) = 1;
  v15 = *MEMORY[0x277CBECE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF65960, &unk_26431BFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26431BA70;
  v17 = *MEMORY[0x277CC4D40];
  *(inited + 32) = *MEMORY[0x277CC4D40];
  *(inited + 40) = 0;
  type metadata accessor for CFString(0);
  v19 = v18;
  v20 = sub_264314F1C(&qword_27FF65510);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v21 = v17;
  sub_26431A634();
  v22 = sub_26431A624();

  height = v10;
  v23 = *&v8[v10];
  v24 = allocatorb;
  swift_beginAccess();
  swift_unknownObjectRetain();
  allocator = v15;
  CVMetalTextureCacheCreate(v15, v22, v23, 0, (v24 + v8));
  swift_endAccess();

  swift_unknownObjectRelease();
  *&v8[OBJC_IVAR____TtC4SMCT14MotionAssessor_frameRate] = a7;
  v8[v247] = v271 & 1;
  v8[OBJC_IVAR____TtC4SMCT14MotionAssessor_isFirstFrame] = 1;
  *&v8[OBJC_IVAR____TtC4SMCT14MotionAssessor_option] = a5;
  if (a3 > 0x27FFFFFFFLL)
  {
    __break(1u);
    goto LABEL_56;
  }

  if (a4 > 0x27FFFFFFFLL)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (a3 > 0x7FFFFFFF)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (a3 < 0xFFFFFFFF80000000 || a4 < 0xFFFFFFFF80000000)
  {
    goto LABEL_58;
  }

  if (a4 > 0x7FFFFFFF)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v26 = &v8[OBJC_IVAR____TtC4SMCT14MotionAssessor_blockSize];
  *v26 = a3 / 5;
  v26[1] = a4 / 5;
  v26[2] = a3;
  v26[3] = a4;
  v27 = [objc_allocWithZone(MEMORY[0x277CD7578]) initWithDevice_];
  v28 = *&v8[v242];
  *&v8[v242] = v27;

  v29 = *&v8[v263];
  swift_unknownObjectRetain();
  v30 = sub_26431A644();
  v31 = [v29 newFunctionWithName_];

  if (!v31)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  swift_unknownObjectRelease();
  v32 = *&v8[height];
  *&v294 = 0;
  v33 = [v32 newComputePipelineStateWithFunction:v31 error:&v294];
  v34 = v294;
  if (v33)
  {
    v35 = v33;
  }

  else
  {
    v36 = v34;
    v37 = sub_26431A5B4();

    swift_willThrow();
    v35 = 0;
  }

  v38 = *&v8[v240];
  *&v8[v240] = v35;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (!v35)
  {
    goto LABEL_64;
  }

  OUTLINED_FUNCTION_19();
  v39 = v296;
  v243 = v295;
  v248 = v294;
  swift_unknownObjectRelease();
  *v12 = v248;
  *(v12 + 1) = v243;
  *(v12 + 2) = v39;
  v12[48] = 0;
  v40 = *&v8[v263];
  swift_unknownObjectRetain();
  v41 = sub_26431A644();
  v42 = [v40 newFunctionWithName_];

  if (!v42)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v43 = *&v8[height];
  *&v294 = 0;
  v44 = [v43 newComputePipelineStateWithFunction:v42 error:&v294];
  v45 = v294;
  if (v44)
  {
    v46 = v44;
  }

  else
  {
    v47 = v45;
    v48 = sub_26431A5B4();

    swift_willThrow();
    v46 = 0;
  }

  v49 = *&v8[v237];
  *&v8[v237] = v46;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (!v46)
  {
LABEL_66:
    __break(1u);
  }

  OUTLINED_FUNCTION_19();
  v50 = v296;
  v244 = v295;
  v249 = v294;
  swift_unknownObjectRelease();
  *v200 = v249;
  *(v200 + 16) = v244;
  *(v200 + 32) = v50;
  *(v200 + 48) = 0;
  v51 = objc_opt_self();
  v52 = [v51 texture2DDescriptorWithPixelFormat:105 width:5 height:5 mipmapped:0];
  [v52 setUsage_];
  [v52 setStorageMode_];
  [v52 setAllowGPUOptimizedContents_];
  OUTLINED_FUNCTION_9([*&v8[height] newTextureWithDescriptor_]);
  v53 = [v51 texture2DDescriptorWithPixelFormat:55 width:5 height:5 mipmapped:0];
  [v53 setUsage_];
  [v53 setStorageMode_];
  [v53 setAllowGPUOptimizedContents_];

  v54 = *&v8[height];
  v55 = v53;
  v56 = OUTLINED_FUNCTION_9([v54 newTextureWithDescriptor_]);
  v64 = OUTLINED_FUNCTION_22(v56, v57, v58, v59, v60, v61, v62, v63, v164, v166, v168, v171, v174, v20, v19, v179, v182, v184, v186, v189, 1, 2, v195, v197, v200, v202, v204, v206, v208, v210, v213, v216, v219, v222, v225, v228, v231, v234, v237, v240, v244, *(&v244 + 1), v249, *(&v249 + 1), a1, a2, allocator, v42, a4, a3, v271, v274, v276, a5, height);
  v65 = OUTLINED_FUNCTION_9(v64);
  v73 = OUTLINED_FUNCTION_22(v65, v66, v67, v68, v69, v70, v71, v72, v165, v167, v169, v172, v175, v177, v178, v180, v183, v185, v187, v190, v192, v194, v196, v198, v201, v203, v205, v207, v209, v211, v214, v217, v220, v223, v226, v229, v232, v235, v238, v241, v245, v246, v250, v252, widthb, v257, allocatorc, v264, v266, v269, v272, v275, v277, v279, heightb);
  OUTLINED_FUNCTION_9(v73);
  v74 = *&v8[heighta];
  v75 = [swift_unknownObjectRetain() newTextureWithDescriptor_];
  swift_unknownObjectRelease();

  v76 = *&v8[v212];
  *&v8[v212] = v75;
  swift_unknownObjectRelease();
  v77 = [v51 texture2DDescriptorWithPixelFormat:55 width:1 height:1 mipmapped:0];
  [v77 setUsage_];
  [v77 setStorageMode_];
  [v77 setAllowGPUOptimizedContents_];

  v78 = *&v8[heighta];
  v79 = v77;
  OUTLINED_FUNCTION_13([v78 newTextureWithDescriptor_]);
  if (*&v8[v215])
  {
    swift_getObjectType();
    *&v80 = OUTLINED_FUNCTION_12();
    v294 = v80;
    v295 = v80;
    v296 = v80;
    v297 = 1;
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_24(&v294, v81, v82, MEMORY[0x277D83A90]);
    OUTLINED_FUNCTION_14();
  }

  else
  {
    v78 = 0;
  }

  v83 = OUTLINED_FUNCTION_21(v218);
  OUTLINED_FUNCTION_13(v83);
  if (*&v8[v221])
  {
    swift_getObjectType();
    *&v84 = OUTLINED_FUNCTION_12();
    v292[0] = v84;
    v292[1] = v84;
    v292[2] = v84;
    v293 = 1;
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_24(v292, v85, v86, MEMORY[0x277D83A90]);
    OUTLINED_FUNCTION_14();
  }

  else
  {
    v78 = 0;
  }

  v87 = OUTLINED_FUNCTION_21(v224);
  OUTLINED_FUNCTION_13(v87);
  if (*&v8[v227])
  {
    swift_getObjectType();
    *&v88 = OUTLINED_FUNCTION_12();
    v290[0] = v88;
    v290[1] = v88;
    v290[2] = v88;
    v291 = 1;
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_24(v290, v89, v90, MEMORY[0x277D83A90]);
    OUTLINED_FUNCTION_14();
  }

  else
  {
    v78 = 0;
  }

  *&v8[v230] = v78;
  v91 = *&v8[heighta];
  [swift_unknownObjectRetain() newTextureWithDescriptor_];
  OUTLINED_FUNCTION_14();

  v92 = *&v8[v233];
  *&v8[v233] = v78;
  swift_unknownObjectRelease();
  if (*&v8[v233])
  {
    v93 = *&v8[v233];
    swift_getObjectType();
    *&v94 = OUTLINED_FUNCTION_12();
    v288[0] = v94;
    v288[1] = v94;
    v288[2] = v94;
    v289 = 1;
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_24(v288, v95, v96, MEMORY[0x277D83A90]);
    OUTLINED_FUNCTION_14();
  }

  else
  {
    v78 = 0;
  }

  *&v8[v236] = v78;
  v97 = MEMORY[0x277D839B0];
  v98 = MEMORY[0x277CC4DE8];
  v251 = v79;
  if (!v280)
  {
LABEL_40:
    if ((v273 & 1) == 0)
    {
LABEL_54:
      swift_unknownObjectRelease();

      v285.receiver = v8;
      v285.super_class = type metadata accessor for MotionAssessor();
      result = objc_msgSendSuper2(&v285, sel_init);
      v163 = *MEMORY[0x277D85DE8];
      return result;
    }

    if (widtha >= v258)
    {
      v143 = v258;
    }

    else
    {
      v143 = widtha;
    }

    v144 = (v143 / 2 - 1) | 0xF;
    v145 = v144 + 1;
    if (!__OFADD__(v144, 1))
    {
      if (v258 >= widtha)
      {
        if (widtha == v258)
        {
          v146 = v98;
          v147 = (widtha / 4);
          v149 = v147;
LABEL_53:
          heightc = v145;
          *v170 = v147;
          *(v170 + 8) = v149;
          *(v170 + 16) = v145;
          *(v170 + 24) = v145;
          *(v170 + 32) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF65540, &qword_26431BAB8);
          v150 = swift_initStackObject();
          *(v150 + 16) = xmmword_26431BA80;
          *MEMORY[0x277CC4E08];
          *(v150 + 32) = sub_26431A664();
          *(v150 + 40) = v151;
          *(v150 + 72) = v97;
          *(v150 + 48) = 1;
          v152 = *v146;
          *(v150 + 80) = sub_26431A664();
          *(v150 + 88) = v153;
          v154 = sub_26431A634();
          v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF65548, &unk_26431BAC0);
          *(v150 + 120) = v155;
          *(v150 + 96) = v154;
          OUTLINED_FUNCTION_16();
          sub_26431A634();
          OUTLINED_FUNCTION_16();
          v156 = sub_26431A624();

          OUTLINED_FUNCTION_4();
          CVPixelBufferCreate(allocatora, widtha, v258, 0x42475241u, v156, &v8[v173]);
          swift_endAccess();

          v157 = swift_initStackObject();
          *(v157 + 16) = xmmword_26431BA80;
          *(v157 + 32) = sub_26431A664();
          *(v157 + 40) = v158;
          *(v157 + 72) = v97;
          *(v157 + 48) = 1;
          *(v157 + 80) = sub_26431A664();
          *(v157 + 88) = v159;
          v160 = sub_26431A634();
          *(v157 + 120) = v155;
          *(v157 + 96) = v160;
          OUTLINED_FUNCTION_16();
          sub_26431A634();
          OUTLINED_FUNCTION_16();
          v161 = sub_26431A624();

          OUTLINED_FUNCTION_4();
          CVPixelBufferCreate(allocatora, heightc, heightc, 0x42475241u, v161, &v8[v176]);
          swift_endAccess();

          v79 = v251;
          goto LABEL_54;
        }

        if ((v258 * 3) >> 64 == (3 * v258) >> 63)
        {
          v146 = v98;
          v147 = (widtha / 4);
          v148 = 3 * v258 / 8;
          goto LABEL_52;
        }

        goto LABEL_62;
      }

      if ((widtha * 3) >> 64 == (3 * widtha) >> 63)
      {
        v146 = v98;
        v147 = (3 * widtha / 8);
        v148 = v258 / 4;
LABEL_52:
        v149 = v148;
        goto LABEL_53;
      }

LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v280 != 1)
  {
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_4();
  VTPixelTransferSessionCreate(allocatora, &v8[v199]);
  swift_endAccess();
  v99 = *&v8[v199];
  if (!v99)
  {
    __break(1u);
    goto LABEL_68;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF65538, &qword_26431BAB0);
  v100 = swift_initStackObject();
  v101 = MEMORY[0x277CE28A8];
  *(v100 + 16) = v193;
  v102 = *v101;
  *(v100 + 32) = *v101;
  v103 = *MEMORY[0x277CBED28];
  if (!*MEMORY[0x277CBED28])
  {
LABEL_68:
    __break(1u);
LABEL_69:
    v287 = v280;
    sub_26431A724();
    __break(1u);
    goto LABEL_70;
  }

  *(v100 + 40) = v103;
  type metadata accessor for CFBoolean(0);
  v104 = v99;
  v105 = v102;
  v106 = v103;
  sub_26431A634();
  v107 = sub_26431A624();

  VTSessionSetProperties(v104, v107);

  *&v8[v181] = 65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF65540, &qword_26431BAB8);
  v108 = swift_initStackObject();
  *(v108 + 16) = xmmword_26431BA80;
  *MEMORY[0x277CC4E08];
  *(v108 + 32) = sub_26431A664();
  *(v108 + 40) = v109;
  *(v108 + 72) = v97;
  *(v108 + 48) = 1;
  *v98;
  *(v108 + 80) = sub_26431A664();
  *(v108 + 88) = v110;
  v111 = sub_26431A634();
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF65548, &unk_26431BAC0);
  *(v108 + 120) = v112;
  *(v108 + 96) = v111;
  sub_26431A634();
  v113 = sub_26431A624();

  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15();
  CVPixelBufferCreate(v114, v115, v116, v117, v113, v118);
  swift_endAccess();

  v119 = swift_initStackObject();
  *(v119 + 16) = xmmword_26431BA80;
  *(v119 + 32) = sub_26431A664();
  *(v119 + 40) = v120;
  *(v119 + 72) = MEMORY[0x277D839B0];
  *(v119 + 48) = 1;
  *(v119 + 80) = sub_26431A664();
  *(v119 + 88) = v121;
  v122 = sub_26431A634();
  v239 = v112;
  *(v119 + 120) = v112;
  *(v119 + 96) = v122;
  sub_26431A634();
  v123 = sub_26431A624();

  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15();
  CVPixelBufferCreate(v124, v125, v126, v127, v123, v128);
  swift_endAccess();

  v129 = [objc_opt_self() layoutForSize_];
  v130 = [objc_opt_self() createWithSize:v129 andLayout:{v270, v267}];
  sub_26431A6B4();
  swift_unknownObjectRelease();
  sub_264314818(0, &unk_27FF65550, 0x277CED088);
  if (swift_dynamicCast())
  {
    v131 = v286;
    sub_264314818(0, &unk_27FF65A60, 0x277CECFF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF65560, &qword_26431BFD0);
    v132 = swift_allocObject();
    *(v132 + 16) = xmmword_26431BA90;
    *(v132 + 32) = v131;
    v133 = v131;
    v134 = sub_2643133D8(v132, 0);
    v135 = [objc_allocWithZone(MEMORY[0x277CECFF0]) initWithDescriptor:v134 forLayout:v129];
    if (v135)
    {
      v136 = *&v8[v188];
      *&v8[v188] = v135;
      v137 = v135;

      v138 = swift_initStackObject();
      *(v138 + 16) = xmmword_26431BA80;
      *(v138 + 32) = sub_26431A664();
      *(v138 + 40) = v139;
      v97 = MEMORY[0x277D839B0];
      *(v138 + 72) = MEMORY[0x277D839B0];
      *(v138 + 48) = 1;
      *(v138 + 80) = sub_26431A664();
      *(v138 + 88) = v140;
      v141 = sub_26431A634();
      *(v138 + 120) = v239;
      *(v138 + 96) = v141;
      sub_26431A634();
      v142 = sub_26431A624();

      OUTLINED_FUNCTION_4();
      CVPixelBufferCreate(allocatora, v270, v267, 0x32433068u, v142, &v8[v191]);
      swift_endAccess();

      v79 = v251;
      v98 = MEMORY[0x277CC4DE8];
      goto LABEL_40;
    }
  }

LABEL_70:
  result = OUTLINED_FUNCTION_20();
  __break(1u);
  return result;
}

id sub_2643133D8(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_264314818(0, &unk_27FF65550, 0x277CED088);
  v4 = sub_26431A684();

  v5 = [v3 initForSupportedSizes:v4 prioritization:a2];

  return v5;
}

uint64_t sub_2643134A4(__CVBuffer *a1, MTLPixelFormat a2)
{
  textureOut[4] = *MEMORY[0x277D85DE8];
  v5 = OBJC_IVAR____TtC4SMCT14MotionAssessor_textureCache;
  OUTLINED_FUNCTION_7();
  v6 = *(v2 + v5);
  if (!v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  CVMetalTextureCacheFlush(v6, 0);
  textureOut[0] = 0;
  v7 = *(v2 + v5);
  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = *MEMORY[0x277CBECE8];
  v9 = v7;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  TextureFromImage = CVMetalTextureCacheCreateTextureFromImage(v8, v9, a1, 0, a2, Width, Height, 0, textureOut);

  if (!TextureFromImage)
  {
    v13 = [*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_commandQueue) commandBuffer];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 computeCommandEncoder];
      v16 = v15;
      if (!v15)
      {
LABEL_12:
        [v14 commit];
        [v14 waitUntilCompleted];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v23 = *(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_opticalFlow5x5);
        v24 = textureOut[0];
        swift_unknownObjectRetain();

        v25 = *MEMORY[0x277D85DE8];
        return v23;
      }

      if (*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_downsampleFlowPipelineState))
      {
        [v15 setComputePipelineState_];
        v17 = textureOut[0];
        if (textureOut[0])
        {
          swift_unknownObjectRetain();
          v18 = CVMetalTextureGetTexture(v17);
          if (v18)
          {
            [v16 setTexture:v18 atIndex:0];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v19 = *(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_opticalFlow5x5);
            if (v19)
            {
              [v16 setTexture:v19 atIndex:1];
              v30 = *(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_blockSize);
              [v16 setBytes:&v30 length:16 atIndex:0];
              v20 = (v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_downsampleFlowthreads);
              if ((*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_downsampleFlowthreads + 48) & 1) == 0)
              {
                v21 = *(v20 + 5);
                v22 = *(v20 + 2);
                v30 = *v20;
                v31 = v22;
                v28 = *(v20 + 24);
                v29 = v21;
                [v16 dispatchThreadgroups:&v30 threadsPerThreadgroup:&v28];
                [v16 endEncoding];
                goto LABEL_12;
              }

              goto LABEL_20;
            }

LABEL_19:
            __break(1u);
LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_18;
    }

LABEL_15:
    __break(1u);
  }

LABEL_21:
  *&v30 = 0;
  *(&v30 + 1) = 0xE000000000000000;
  sub_26431A6C4();
  MEMORY[0x266735370](0xD000000000000046, 0x800000026431C570);
  v27 = sub_26431A714();
  MEMORY[0x266735370](v27);

  result = OUTLINED_FUNCTION_20();
  __break(1u);
  return result;
}

id sub_2643137F8(uint64_t a1)
{
  v2 = v1;
  result = [*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_commandQueue) commandBuffer];
  if (!result)
  {
    __break(1u);
    goto LABEL_32;
  }

  v5 = result;
  result = [result computeCommandEncoder];
  v6 = result;
  if (!result)
  {
LABEL_6:
    v18 = OBJC_IVAR____TtC4SMCT14MotionAssessor_mean;
    result = *(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_mean);
    if (result)
    {
      if (*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_perpMapTexture))
      {
        v19 = OBJC_IVAR____TtC4SMCT14MotionAssessor_perpMeanTexture;
        if (*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_perpMeanTexture))
        {
          OUTLINED_FUNCTION_23(result);
          result = *(v2 + v18);
          if (result)
          {
            if (*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_rotMapTexture))
            {
              v20 = OBJC_IVAR____TtC4SMCT14MotionAssessor_rotMeanTexture;
              if (*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_rotMeanTexture))
              {
                OUTLINED_FUNCTION_23(result);
                result = *(v2 + v18);
                if (result)
                {
                  if (*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_hPanMapTexture))
                  {
                    v21 = OBJC_IVAR____TtC4SMCT14MotionAssessor_hPanMeanTexture;
                    if (*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_hPanMeanTexture))
                    {
                      OUTLINED_FUNCTION_23(result);
                      result = *(v2 + v18);
                      if (result)
                      {
                        if (*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_vPanMapTexture))
                        {
                          v22 = OBJC_IVAR____TtC4SMCT14MotionAssessor_vPanMeanTexture;
                          if (*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_vPanMeanTexture))
                          {
                            OUTLINED_FUNCTION_23(result);
                            [v5 commit];
                            result = [v5 waitUntilCompleted];
                            if (*(v2 + v19))
                            {
                              v86 = OBJC_IVAR____TtC4SMCT14MotionAssessor_perpMeanBytes;
                              if (*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_perpMeanBytes))
                              {
                                swift_getObjectType();
                                *&v23 = OUTLINED_FUNCTION_12();
                                v105 = v23;
                                v106 = v23;
                                v107 = v23;
                                v108 = 1;
                                sub_264316564();
                                OUTLINED_FUNCTION_8();
                                v24 = OUTLINED_FUNCTION_26();
                                OUTLINED_FUNCTION_1(v24, v25, v26, v27, v28, v29, v30, v31, v78, v6, v86, v91, v22, v98, v102, *(&v102 + 1), v103, v104, v105);
                                result = swift_unknownObjectRelease();
                                if (*(v2 + v20))
                                {
                                  v32 = OBJC_IVAR____TtC4SMCT14MotionAssessor_rotMeanBytes;
                                  if (*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_rotMeanBytes))
                                  {
                                    swift_getObjectType();
                                    sub_264316564();
                                    OUTLINED_FUNCTION_8();
                                    v33 = OUTLINED_FUNCTION_26();
                                    OUTLINED_FUNCTION_1(v33, v34, v35, v36, v37, v38, v39, v40, v79, v82, v87, v92, v95, v99, v102, *(&v102 + 1), v103, v104, v105);
                                    result = swift_unknownObjectRelease();
                                    if (*(v2 + v21))
                                    {
                                      v41 = OBJC_IVAR____TtC4SMCT14MotionAssessor_hPanMeanBytes;
                                      if (*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_hPanMeanBytes))
                                      {
                                        swift_getObjectType();
                                        sub_264316564();
                                        OUTLINED_FUNCTION_8();
                                        v42 = OUTLINED_FUNCTION_26();
                                        OUTLINED_FUNCTION_1(v42, v43, v44, v45, v46, v47, v48, v49, v32, v83, v88, v93, v96, v100, v102, *(&v102 + 1), v103, v104, v105);
                                        result = swift_unknownObjectRelease();
                                        if (*(v2 + v97))
                                        {
                                          v50 = OBJC_IVAR____TtC4SMCT14MotionAssessor_vPanMeanBytes;
                                          if (*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_vPanMeanBytes))
                                          {
                                            v51 = *(v2 + v97);
                                            swift_getObjectType();
                                            sub_264316564();
                                            OUTLINED_FUNCTION_8();
                                            v52 = OUTLINED_FUNCTION_26();
                                            OUTLINED_FUNCTION_1(v52, v53, v54, v55, v56, v57, v58, v59, v80, v84, v89, v94, v97, v101, v102, *(&v102 + 1), v103, v104, v105);
                                            result = swift_unknownObjectRelease();
                                            v60 = *(v2 + v90);
                                            if (v60)
                                            {
                                              result = v85;
                                              v61 = *(v2 + v81);
                                              if (v61)
                                              {
                                                v62 = *(v2 + v41);
                                                if (v62)
                                                {
                                                  v63 = *(v2 + v50);
                                                  if (v63)
                                                  {
                                                    v64 = *v60;
                                                    v65 = OBJC_IVAR____TtC4SMCT14MotionAssessor_frameRate;
                                                    v66 = *(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_frameRate);
                                                    v67 = *v61;
                                                    v68 = *v62;
                                                    v69 = *v63;
                                                    swift_unknownObjectRelease();
                                                    result = swift_unknownObjectRelease();
                                                    __asm { FMOV            V0.4S, #25.0 }

                                                    v75 = *(v2 + v65);
                                                    __asm
                                                    {
                                                      FMOV            V1.4S, #30.0
                                                      FMOV            V1.4S, #10.0
                                                    }

                                                    return result;
                                                  }

                                                  goto LABEL_55;
                                                }

LABEL_54:
                                                __break(1u);
LABEL_55:
                                                __break(1u);
                                                goto LABEL_56;
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

LABEL_46:
                                __break(1u);
                                goto LABEL_47;
                              }

LABEL_45:
                              __break(1u);
                              goto LABEL_46;
                            }

LABEL_44:
                            __break(1u);
                            goto LABEL_45;
                          }

LABEL_43:
                          __break(1u);
                          goto LABEL_44;
                        }

LABEL_42:
                        __break(1u);
                        goto LABEL_43;
                      }

LABEL_41:
                      __break(1u);
                      goto LABEL_42;
                    }

LABEL_40:
                    __break(1u);
                    goto LABEL_41;
                  }

LABEL_39:
                  __break(1u);
                  goto LABEL_40;
                }

LABEL_38:
                __break(1u);
                goto LABEL_39;
              }

LABEL_37:
              __break(1u);
              goto LABEL_38;
            }

LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_templateMatchPipelineState))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  [result setComputePipelineState_];
  [v6 setTexture:a1 atIndex:0];
  v7 = OUTLINED_FUNCTION_5(OBJC_IVAR____TtC4SMCT14MotionAssessor_perpMapTexture);
  [v7 v8];
  v9 = OUTLINED_FUNCTION_5(OBJC_IVAR____TtC4SMCT14MotionAssessor_rotMapTexture);
  [v9 v10];
  v11 = OUTLINED_FUNCTION_5(OBJC_IVAR____TtC4SMCT14MotionAssessor_hPanMapTexture);
  [v11 v12];
  v13 = OUTLINED_FUNCTION_5(OBJC_IVAR____TtC4SMCT14MotionAssessor_vPanMapTexture);
  result = [v13 v14];
  v15 = v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_templateMatchthreads;
  if ((*(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_templateMatchthreads + 48) & 1) == 0)
  {
    v16 = *(v15 + 40);
    v17 = *(v15 + 16);
    v105 = *v15;
    *&v106 = v17;
    v102 = *(v15 + 24);
    v103 = v16;
    [v6 dispatchThreadgroups:&v105 threadsPerThreadgroup:&v102];
    [v6 endEncoding];
    goto LABEL_6;
  }

LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_264313C68(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_option);
  if (!v3)
  {
    return v3;
  }

  if (v3 == 1)
  {
    v4 = OBJC_IVAR____TtC4SMCT14MotionAssessor_executor;
    v5 = *(v2 + OBJC_IVAR____TtC4SMCT14MotionAssessor_executor);
    if (v5)
    {
      v8 = OBJC_IVAR____TtC4SMCT14MotionAssessor_ADLKTOpticalFlowBuffer;
      OUTLINED_FUNCTION_7();
      if (*(v2 + v8))
      {
        if ([v5 executeWithFrame:a2 intoOpticalFlowBuffer:?])
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF657A0, &qword_26431BE48);
          v9 = swift_allocObject();
          OUTLINED_FUNCTION_6(v9, xmmword_26431BA70);
        }

        v10 = *(v2 + v4);
        if (v10)
        {
          if (*(v2 + v8))
          {
            if ([v10 executeWithFrame:a1 intoOpticalFlowBuffer:?])
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF657A0, &qword_26431BE48);
              v11 = swift_allocObject();
              OUTLINED_FUNCTION_6(v11, xmmword_26431BA70);
            }

            v3 = *(v2 + v8);
            v12 = v3;
            return v3;
          }

          goto LABEL_16;
        }

LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_17:
  result = sub_26431A724();
  __break(1u);
  return result;
}

void sub_264313DF4(__CVBuffer *a1)
{
  v3 = v1;
  if (*(v3 + OBJC_IVAR____TtC4SMCT14MotionAssessor_centerCrop) != 1)
  {
    if (*(v3 + OBJC_IVAR____TtC4SMCT14MotionAssessor_isFirstFrame) == 1)
    {
      *(v3 + OBJC_IVAR____TtC4SMCT14MotionAssessor_isFirstFrame) = 0;
      v24 = OBJC_IVAR____TtC4SMCT14MotionAssessor_vtTransferSession;
      OUTLINED_FUNCTION_7();
      v25 = *(v3 + v24);
      if (v25)
      {
        v26 = OBJC_IVAR____TtC4SMCT14MotionAssessor_prevPixelBuffer;
        OUTLINED_FUNCTION_7();
        v21 = *(v3 + v26);
        if (v21)
        {
          v22 = v25;
          v23 = a1;
          goto LABEL_16;
        }

        goto LABEL_58;
      }

      goto LABEL_56;
    }

    v28 = OBJC_IVAR____TtC4SMCT14MotionAssessor_vtTransferSession;
    OUTLINED_FUNCTION_7();
    v29 = *(v3 + v28);
    if (!v29)
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v30 = OBJC_IVAR____TtC4SMCT14MotionAssessor_currPixelBuffer;
    OUTLINED_FUNCTION_7();
    v31 = *(v3 + v30);
    if (!v31)
    {
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v32 = v29;
    v33 = a1;
    goto LABEL_27;
  }

  v5 = OBJC_IVAR____TtC4SMCT14MotionAssessor_vtTransferSession;
  OUTLINED_FUNCTION_7();
  v6 = *(v3 + v5);
  if (!v6)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v7 = OBJC_IVAR____TtC4SMCT14MotionAssessor_BGRAPixelBuffer;
  OUTLINED_FUNCTION_7();
  v8 = *(v3 + v7);
  if (!v8)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  VTPixelTransferSessionTransferImage(v6, a1, v8);
  if (*(v3 + OBJC_IVAR____TtC4SMCT14MotionAssessor_isFirstFrame) == 1)
  {
    *(v3 + OBJC_IVAR____TtC4SMCT14MotionAssessor_isFirstFrame) = 0;
    v9 = *(v3 + v7);
    if (v9)
    {
      v10 = OBJC_IVAR____TtC4SMCT14MotionAssessor_croppedPixelBuffer;
      OUTLINED_FUNCTION_7();
      v11 = *(v3 + v10);
      if (v11)
      {
        v12 = (v3 + OBJC_IVAR____TtC4SMCT14MotionAssessor_croppedRect);
        if ((*(v3 + OBJC_IVAR____TtC4SMCT14MotionAssessor_croppedRect + 32) & 1) == 0)
        {
          v14 = v12[2];
          v13 = v12[3];
          v16 = *v12;
          v15 = v12[1];
          v17 = v11;
          OUTLINED_FUNCTION_11(v9);

          v18 = *(v3 + v5);
          if (v18)
          {
            v19 = *(v3 + v10);
            if (v19)
            {
              v20 = OBJC_IVAR____TtC4SMCT14MotionAssessor_prevPixelBuffer;
              OUTLINED_FUNCTION_7();
              v21 = *(v3 + v20);
              if (v21)
              {
                v22 = v18;
                v23 = v19;
LABEL_16:
                VTPixelTransferSessionTransferImage(v22, v23, v21);
                v27 = objc_allocWithZone(type metadata accessor for MotionAssessorScore());
                MotionAssessorScore.init(perp:rot:hPan:vPan:)(0.0, 0.0, 0.0, 0.0);
                return;
              }

              goto LABEL_70;
            }

            goto LABEL_68;
          }

          goto LABEL_66;
        }

        goto LABEL_64;
      }

      goto LABEL_62;
    }

    goto LABEL_60;
  }

  v34 = *(v3 + v7);
  if (!v34)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v35 = OBJC_IVAR____TtC4SMCT14MotionAssessor_croppedPixelBuffer;
  OUTLINED_FUNCTION_7();
  v36 = *(v3 + v35);
  if (!v36)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v37 = (v3 + OBJC_IVAR____TtC4SMCT14MotionAssessor_croppedRect);
  if (*(v3 + OBJC_IVAR____TtC4SMCT14MotionAssessor_croppedRect + 32))
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v39 = v37[2];
  v38 = v37[3];
  v2 = *v37;
  v40 = v37[1];
  v41 = v36;
  OUTLINED_FUNCTION_11(v34);

  v42 = *(v3 + v5);
  if (!v42)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v43 = *(v3 + v35);
  if (!v43)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v44 = OBJC_IVAR____TtC4SMCT14MotionAssessor_currPixelBuffer;
  OUTLINED_FUNCTION_7();
  v31 = *(v3 + v44);
  if (v31)
  {
    v32 = v42;
    v33 = v43;
LABEL_27:
    VTPixelTransferSessionTransferImage(v32, v33, v31);
    v45 = OBJC_IVAR____TtC4SMCT14MotionAssessor_prevPixelBuffer;
    OUTLINED_FUNCTION_7();
    v46 = *(v3 + v45);
    if (!v46)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v47 = OBJC_IVAR____TtC4SMCT14MotionAssessor_currPixelBuffer;
    OUTLINED_FUNCTION_7();
    v48 = *(v3 + v47);
    if (!v48)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v49 = v48;
    v50 = v46;
    v51 = sub_264313C68(v50, v49);

    if (!v51)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v52 = *(v3 + OBJC_IVAR____TtC4SMCT14MotionAssessor_pixelFormat);
    v53 = v51;
    v54 = sub_2643134A4(v53, v52);

    if (!v54)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v55 = swift_unknownObjectRetain();
    sub_2643137F8(v55);
    OUTLINED_FUNCTION_18();
    swift_unknownObjectRelease();
    v56 = *(v3 + v47);
    if (!v56)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    CVPixelBufferLockBaseAddress(v56, 1uLL);
    v57 = *(v3 + v45);
    if (!v57)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    CVPixelBufferLockBaseAddress(v57, 0);
    v58 = *(v3 + v47);
    if (!v58)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    BaseAddress = CVPixelBufferGetBaseAddress(v58);
    v60 = *(v3 + v45);
    if (!v60)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v61 = CVPixelBufferGetBaseAddress(v60);
    v62 = *(v3 + v47);
    if (!v62)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    Height = CVPixelBufferGetHeight(v62);
    v64 = *(v3 + v47);
    if (!v64)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    BytesPerRow = CVPixelBufferGetBytesPerRow(v64);
    if ((Height * BytesPerRow) >> 64 == (Height * BytesPerRow) >> 63)
    {
      memcpy(v61, BaseAddress, Height * BytesPerRow);
      v66 = objc_allocWithZone(type metadata accessor for MotionAssessorScore());
      v67 = OUTLINED_FUNCTION_10();
      MotionAssessorScore.init(perp:rot:hPan:vPan:)(v67, v68, v69, *&v2);
      v70 = *(v3 + v47);
      if (v70)
      {
        CVPixelBufferUnlockBaseAddress(v70, 1uLL);
        v71 = *(v3 + v45);
        if (v71)
        {
          CVPixelBufferUnlockBaseAddress(v71, 0);

          swift_unknownObjectRelease();
          return;
        }

        goto LABEL_55;
      }

LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    __break(1u);
    goto LABEL_42;
  }

LABEL_71:
  __break(1u);
}

uint64_t sub_2643142D8(__CVBuffer *a1)
{
  if (CVPixelBufferGetPixelFormatType(a1) == 843264104)
  {
    v3 = sub_2643134A4(a1, MTLPixelFormatRG16Float);
    if (v3)
    {
      sub_2643137F8(v3);
      OUTLINED_FUNCTION_18();
      v4 = objc_allocWithZone(type metadata accessor for MotionAssessorScore());
      v5 = OUTLINED_FUNCTION_10();
      v8 = MotionAssessorScore.init(perp:rot:hPan:vPan:)(v5, v6, v7, v1);
      swift_unknownObjectRelease();
      return v8;
    }

    __break(1u);
  }

  result = sub_26431A6F4();
  __break(1u);
  return result;
}

id MotionAssessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2643144A4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_26431468C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_26431A614();
}

uint64_t sub_2643146D8()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_26431A604();
}

uint64_t sub_264314730()
{
  sub_26431A744();
  v1 = *v0;
  swift_getWitnessTable();
  sub_26431A604();
  return sub_26431A764();
}

uint64_t sub_264314798(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FED10](v4, v5, a3, WitnessTable);
}

uint64_t sub_264314818(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_264314880()
{
  result = qword_27FF65568;
  if (!qword_27FF65568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF65568);
  }

  return result;
}

__n128 __swift_memcpy48_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_264314C70(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 48))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_264314CBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_264314D2C(uint64_t a1, int a2)
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

uint64_t sub_264314D4C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for OpticalFlowMinMax(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BlockSize(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_264314E04(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_264314E24(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_264314F1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_264314F94(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id OUTLINED_FUNCTION_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19)
{

  return sub_264315B50(v19, &a19, v22, v23, v20, v21);
}

uint64_t OUTLINED_FUNCTION_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_6(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[3].n128_u64[1] = v2;
  a1[2].n128_u64[0] = v3;
  a1[2].n128_u64[1] = (v4 - 32) | 0x8000000000000000;

  return MEMORY[0x2821FE398]();
}

uint64_t OUTLINED_FUNCTION_7()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8()
{

  return sub_2643133D0();
}

uint64_t OUTLINED_FUNCTION_9(uint64_t a1)
{
  v4 = *(v2 + v1);
  *(v2 + v1) = a1;

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_11(__CVBuffer *a1)
{

  return sub_264315C48(a1, v1, v6, v5, v4, v3);
}

uint64_t OUTLINED_FUNCTION_13(uint64_t a1)
{
  v4 = *(v1 + v2);
  *(v1 + v2) = a1;

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_14()
{

  return swift_unknownObjectRelease();
}

uint64_t OUTLINED_FUNCTION_19()
{

  return makeThreadgroups(width:height:pipelineState:)(v0, 5, 5, v1 - 176);
}

uint64_t OUTLINED_FUNCTION_20()
{

  return sub_26431A6F4();
}

id OUTLINED_FUNCTION_21@<X0>(uint64_t a1@<X8>)
{
  *(v1 + a1) = v4;
  v7 = *(v1 + v5);

  return [v7 (v2 + 791)];
}

id OUTLINED_FUNCTION_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v59 = *(v55 + a55);

  return [v59 (v57 + 791)];
}

id OUTLINED_FUNCTION_23(void *a1)
{

  return [a1 (v2 + 141)];
}

uint64_t OUTLINED_FUNCTION_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_264315A68(a1, 1, v4, a4);
}

uint64_t OUTLINED_FUNCTION_25()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_26()
{

  return swift_unknownObjectRetain();
}

void *sub_2643152AC()
{
  if (qword_27FF653D0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = qword_27FF65980;
  v2 = *(qword_27FF65980 + OBJC_IVAR____TtC4SMCT14MetalSingleton_device);
  v0[2] = v2;
  v0[3] = *(v1 + OBJC_IVAR____TtC4SMCT14MetalSingleton_commandQueue);
  v3 = objc_allocWithZone(MEMORY[0x277CD7588]);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v0[4] = [v3 initWithDevice_];
  v4 = [objc_opt_self() texture2DDescriptorWithPixelFormat:105 width:2 height:1 mipmapped:0];
  [v4 setUsage_];
  [v4 setStorageMode_];
  [v4 setAllowGPUOptimizedContents_];
  v0[5] = v4;
  v5 = v0[2];
  result = [swift_unknownObjectRetain() newTextureWithDescriptor_];
  if (result)
  {
    v7 = result;
    swift_unknownObjectRelease();
    v0[6] = v7;
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_264315400(uint64_t a1)
{
  v2 = v1;
  result = [*(v2 + 24) commandBuffer];
  if (result)
  {
    v5 = result;
    [*(v2 + 32) encodeToCommandBuffer:result sourceTexture:a1 destinationTexture:*(v2 + 48)];
    [v5 commit];
    [v5 waitUntilCompleted];
    v6 = *(v2 + 48);
    ObjectType = swift_getObjectType();
    memset(v17, 0, sizeof(v17));
    v18 = 1;
    v8 = MEMORY[0x277D83A90];
    v9 = sub_2643133D0();
    swift_unknownObjectRetain();
    v10 = sub_264315A68(v17, v9, ObjectType, v8);
    swift_unknownObjectRelease();
    v11 = *(v2 + 48);
    swift_unknownObjectRetain();
    MTLRegionMake2D(&v16);
    [v11 getBytes:v10 bytesPerRow:16 fromRegion:&v16 mipmapLevel:0];
    swift_unknownObjectRelease();
    v12 = *v10;
    v13 = v10[1];
    v14 = v10[2];
    v15 = v10[3];
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_26431559C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27FF653D0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v7 = qword_27FF65980;
  v8 = *(qword_27FF65980 + OBJC_IVAR____TtC4SMCT14MetalSingleton_device);
  v3[2] = v8;
  v3[3] = *(v7 + OBJC_IVAR____TtC4SMCT14MetalSingleton_commandQueue);
  v9 = objc_allocWithZone(MEMORY[0x277CD74E8]);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v3[4] = [v9 initWithDevice:v8 kernelWidth:a3 kernelHeight:a3];
  v10 = [objc_opt_self() texture2DDescriptorWithPixelFormat:105 width:a1 height:a2 mipmapped:0];
  [v10 setUsage_];
  [v10 setStorageMode_];
  [v10 setAllowGPUOptimizedContents_];
  v3[5] = v10;
  v11 = v3[2];
  result = [swift_unknownObjectRetain() newTextureWithDescriptor_];
  if (result)
  {
    v13 = result;
    swift_unknownObjectRelease();
    v3[6] = v13;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_264315714(uint64_t a1)
{
  result = [*(v1 + 24) commandBuffer];
  if (result)
  {
    v4 = result;
    [*(v1 + 32) encodeToCommandBuffer:result sourceTexture:a1 destinationTexture:*(v1 + 48)];
    [v4 commit];
    [v4 waitUntilCompleted];
    swift_unknownObjectRelease();
    v5 = *(v1 + 48);

    return swift_unknownObjectRetain();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2643157B8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  v3 = *(v0 + 48);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_2643157F8()
{
  sub_2643157B8();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

double MTLRegionMake2D@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 2;
  *(a1 + 24) = xmmword_26431BE80;
  *(a1 + 40) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return swift_once();
}

uint64_t makeThreadgroups(width:height:pipelineState:)@<X0>(id a1@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v8 = [a1 maxTotalThreadsPerThreadgroup];
  result = [a1 maxTotalThreadsPerThreadgroup];
  if (!v8)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (result == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_26;
  }

  v11 = result / v8;
  result = MTLSizeMake(v8, result / v8, &v22);
  v12 = a2 + v8;
  if (__OFADD__(a2, v8))
  {
    goto LABEL_21;
  }

  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v14 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_27;
  }

  v16 = a3 + v11;
  if (__OFADD__(a3, v11))
  {
    goto LABEL_23;
  }

  v13 = __OFSUB__(v16, 1);
  v17 = v16 - 1;
  if (v13)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v11 != -1 || v17 != 0x8000000000000000)
  {
    v19 = v22;
    v20 = v23;
    result = MTLSizeMake(v14 / v8, v17 / v11, &v22);
    v21 = v23;
    *a4 = v22;
    *(a4 + 16) = v21;
    *(a4 + 24) = v19;
    *(a4 + 40) = v20;
    return result;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t MTLSizeMake@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = 1;
  return result;
}

id makeTextureDescriptor(textureWidth:textureHeight:textureFormat:storageMode:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [objc_opt_self() texture2DDescriptorWithPixelFormat:a3 width:a1 height:a2 mipmapped:0];
  [v5 setUsage_];
  [v5 setStorageMode_];
  [v5 setAllowGPUOptimizedContents_];
  return v5;
}

uint64_t sub_264315A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (*(a1 + 48))
  {
    MTLRegionMake2D_0([v5 width], objc_msgSend(v5, sel_height), v13);
    v9 = v13[3];
    v8 = v13[4];
  }

  else
  {
    v9 = *(a1 + 24);
    v8 = *(a1 + 32);
  }

  v10 = v9 * a2;
  if ((v9 * a2) >> 64 != (v9 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = *(*(a4 - 8) + 72);
  if ((v11 * v10) >> 64 != (v11 * v10) >> 63)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((v11 * v10 * v8) >> 64 != (v11 * v10 * v8) >> 63)
  {
LABEL_12:
    __break(1u);
    return MEMORY[0x2821FCA30]();
  }

  return MEMORY[0x2821FCA30]();
}

id sub_264315B50(id result, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = result;
  if (a2[3])
  {
    result = MTLRegionMake2D_0([v6 width], objc_msgSend(v6, sel_height), v15);
    v11 = v15[0];
    v10 = v15[1];
    v12 = v16;
    v13 = v17;
  }

  else
  {
    v11 = *a2;
    v10 = a2[1];
    v12 = *(a2 + 4);
    v13 = *(a2 + 5);
  }

  v14 = *(*(a6 - 8) + 72);
  if ((v14 * *(&v10 + 1)) >> 64 == (v14 * *(&v10 + 1)) >> 63)
  {
    if ((v14 * *(&v10 + 1) * a4) >> 64 == (v14 * *(&v10 + 1) * a4) >> 63)
    {
      return [v6 getBytes:v9 bytesPerRow:v11 fromRegion:v10 mipmapLevel:{v12, v13}];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_264315C48(__CVBuffer *a1, __CVBuffer *a2, double a3, double a4, double a5, double a6)
{
  if (CVPixelBufferGetPixelFormatType(a1) != 1111970369)
  {
    goto LABEL_55;
  }

  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v13 = CVPixelBufferGetBaseAddress(a2);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v15 = CVPixelBufferGetBytesPerRow(a2);
  if (a3 <= -9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (a4 <= -9.22337204e18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (a4 >= 9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (a5 <= -9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (a5 >= 9.22337204e18)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_47;
  }

  if (a6 <= -9.22337204e18)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (a6 >= 9.22337204e18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v16 = a3;
  v17 = a5;
  if (__OFADD__(a3, a5))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v18 = v15;
  if (CVPixelBufferGetWidth(a1) < a3 + a5)
  {
LABEL_55:
    result = sub_26431A6F4();
    __break(1u);
    return result;
  }

  v19 = a6;
  v34 = a4;
  if (__OFADD__(a4, a6))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (CVPixelBufferGetHeight(a1) < a4 + a6)
  {
    goto LABEL_55;
  }

  if (v19 < 0)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  pixelBuffer = a1;
  v33 = a2;
  v20 = 0;
  v21 = v16 - 0x2000000000000000;
  v22 = 4 * v16;
  v23 = 4 * v17;
  v24 = v17 - 0x2000000000000000;
  v25 = v21 >> 62;
  v26 = v24 >> 62;
  while (v19 != v20)
  {
    if (__OFADD__(v20, 1))
    {
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
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (!BaseAddress)
    {
      goto LABEL_53;
    }

    v27 = v34 + v20;
    if (__OFADD__(v34, v20))
    {
      goto LABEL_35;
    }

    v28 = v27 * BytesPerRow;
    if ((v27 * BytesPerRow) >> 64 != (v27 * BytesPerRow) >> 63)
    {
      goto LABEL_36;
    }

    if (v25 < 3)
    {
      goto LABEL_37;
    }

    v29 = __OFADD__(v28, v22);
    v30 = v28 + v22;
    if (v29)
    {
      goto LABEL_38;
    }

    if (!v13)
    {
      goto LABEL_54;
    }

    if ((v20 * v18) >> 64 != (v20 * v18) >> 63)
    {
      goto LABEL_39;
    }

    if (v26 < 3)
    {
      goto LABEL_40;
    }

    memcpy(&v13[v20 * v18], &BaseAddress[v30], v23);
    ++v20;
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);

  return CVPixelBufferUnlockBaseAddress(v33, 0);
}

uint64_t static ComfortBitUtility.computeMotionComfortBit(motionScoreArray:threshold:windowSize:frameRate:)(uint64_t result, float a2, float a3, float a4)
{
  v4 = *(result + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = (result + 32);
  v6 = a3 * a4;
  v7 = 1 - v4;
  v8 = 0.0;
  while (v7 != 1)
  {
    if (*v5 <= a2)
    {
      v8 = 0.0;
      if (!v7)
      {
        return 0;
      }
    }

    else
    {
      v8 = v8 + 1.0;
      if (v6 <= v8)
      {
        return 1;
      }

      if (!v7)
      {
        return 0;
      }
    }

    ++v7;
    ++v5;
  }

  __break(1u);
  return result;
}

uint64_t static ComfortBitUtility.computeMotionComfortBit(motionAccessorArray:threshold:windowSize:frameRate:)(unint64_t a1, float a2, float a3, float a4)
{
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
    do
    {
      v9 = 0;
      a3 = a3 * a4;
      v10 = 0.0;
      while (v9 < v8)
      {
        if (__OFADD__(v9, 1))
        {
          goto LABEL_17;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x2667353D0](v9, a1);
        }

        else
        {
          if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v11 = *(a1 + 8 * v9 + 32);
        }

        v12 = v11;
        a4 = sub_264311C4C();

        if (a4 <= a2)
        {
          v10 = 0.0;
        }

        else
        {
          v10 = v10 + 1.0;
          if (a3 <= v10)
          {
            return 1;
          }
        }

        if (v9 + 1 == v8)
        {
          return 0;
        }

        ++v9;
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      v14 = sub_26431A704();
      if (v14 < 0)
      {
        __break(1u);
      }

      v8 = v14;
    }

    while (v14);
  }

  return 0;
}

uint64_t static ComfortBitUtility.computeMotionComfortBit(motionScoreArray:motionAccessorArray:thresholdMotionScore:thresholdMotionAccessor:windowSize:frameRate:)(uint64_t *a1, unint64_t a2, __n128 a3, float a4, float a5, float a6)
{
  v9 = a3.n128_f32[0];
  v11 = a1;
  v12 = a1[2];
  if (a2 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); v12 == i; i = sub_26431A704())
  {
    if (!v12)
    {
      return 0;
    }

    v14 = 0;
    v15 = v11 + 32;
    a5 = a5 * a6;
    v16 = 0.0;
    v17 = v12 - 1;
    a3.n128_u64[0] = 0;
    v12 &= ~(v12 >> 63);
    while (v12 != v14)
    {
      v18 = 0.0;
      if (*&v15[4 * v14] > v9)
      {
        v18 = a3.n128_f32[0] + 1.0;
        if (a5 <= (a3.n128_f32[0] + 1.0))
        {
          return 1;
        }
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x2667353D0](v14, a2, a3);
      }

      else
      {
        if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v19 = *(a2 + 8 * v14 + 32);
      }

      v11 = v19;
      a6 = sub_264311C4C();

      if (a6 <= a4)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = v16 + 1.0;
        if (a5 <= v16)
        {
          return 1;
        }
      }

      if (v17 == v14)
      {
        return 0;
      }

      ++v14;
      a3.n128_f32[0] = v18;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  result = sub_26431A6F4();
  __break(1u);
  return result;
}

id ComfortBitUtility.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ComfortBitUtility.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComfortBitUtility();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ComfortBitUtility.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComfortBitUtility();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MTLRegionMake2D_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = result;
  a3[4] = a2;
  a3[5] = 1;
  return result;
}

float sub_264316590()
{
  OUTLINED_FUNCTION_0(OBJC_IVAR____TtC4SMCT13MotionFeature_mean);
  OUTLINED_FUNCTION_7();
  return *v0;
}

uint64_t sub_2643165EC(float a1)
{
  OUTLINED_FUNCTION_0(OBJC_IVAR____TtC4SMCT13MotionFeature_mean);
  result = swift_beginAccess();
  *v1 = a1;
  return result;
}

float sub_2643166AC()
{
  OUTLINED_FUNCTION_0(OBJC_IVAR____TtC4SMCT13MotionFeature_std);
  OUTLINED_FUNCTION_7();
  return *v0;
}

uint64_t sub_264316708(float a1)
{
  OUTLINED_FUNCTION_0(OBJC_IVAR____TtC4SMCT13MotionFeature_std);
  result = swift_beginAccess();
  *v1 = a1;
  return result;
}

id MotionFeature.init(mean:std:)(float a1, float a2)
{
  *&v2[OBJC_IVAR____TtC4SMCT13MotionFeature_mean] = a1;
  *&v2[OBJC_IVAR____TtC4SMCT13MotionFeature_std] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MotionFeature();
  return objc_msgSendSuper2(&v4, sel_init);
}

id MotionScore.init(width:height:frameRate:)(uint64_t a1, uint64_t a2, float a3)
{
  v4 = v3;
  v81 = *MEMORY[0x277D85DE8];
  v6 = OBJC_IVAR____TtC4SMCT11MotionScore_device;
  if (qword_27FF653D0 != -1)
  {
    swift_once();
  }

  v7 = qword_27FF65980;
  *&v3[v6] = *(qword_27FF65980 + OBJC_IVAR____TtC4SMCT14MetalSingleton_device);
  v74 = OBJC_IVAR____TtC4SMCT11MotionScore_library;
  *&v3[OBJC_IVAR____TtC4SMCT11MotionScore_library] = *(v7 + OBJC_IVAR____TtC4SMCT14MetalSingleton_library);
  *&v3[OBJC_IVAR____TtC4SMCT11MotionScore_commandQueue] = *(v7 + OBJC_IVAR____TtC4SMCT14MetalSingleton_commandQueue);
  v70 = OBJC_IVAR____TtC4SMCT11MotionScore_textureCache;
  *&v3[OBJC_IVAR____TtC4SMCT11MotionScore_textureCache] = 0;
  v65 = OBJC_IVAR____TtC4SMCT11MotionScore_prevTexture;
  *&v3[OBJC_IVAR____TtC4SMCT11MotionScore_prevTexture] = 0;
  v64 = OBJC_IVAR____TtC4SMCT11MotionScore_motionMapTexture;
  *&v3[OBJC_IVAR____TtC4SMCT11MotionScore_motionMapTexture] = 0;
  v62 = OBJC_IVAR____TtC4SMCT11MotionScore_motionMapMeanTexture;
  *&v3[OBJC_IVAR____TtC4SMCT11MotionScore_motionMapMeanTexture] = 0;
  v63 = OBJC_IVAR____TtC4SMCT11MotionScore_motionMapMeanBytes;
  *&v3[OBJC_IVAR____TtC4SMCT11MotionScore_motionMapMeanBytes] = 0;
  v71 = OBJC_IVAR____TtC4SMCT11MotionScore_mean;
  *&v3[OBJC_IVAR____TtC4SMCT11MotionScore_mean] = 0;
  v60 = OBJC_IVAR____TtC4SMCT11MotionScore_motionMapMeanAndVarianceTexture;
  *&v3[OBJC_IVAR____TtC4SMCT11MotionScore_motionMapMeanAndVarianceTexture] = 0;
  v61 = OBJC_IVAR____TtC4SMCT11MotionScore_motionMapMeanAndVarianceBytes;
  *&v3[OBJC_IVAR____TtC4SMCT11MotionScore_motionMapMeanAndVarianceBytes] = 0;
  v72 = OBJC_IVAR____TtC4SMCT11MotionScore_meanAndVariance;
  *&v3[OBJC_IVAR____TtC4SMCT11MotionScore_meanAndVariance] = 0;
  v68 = OBJC_IVAR____TtC4SMCT11MotionScore_computePipelineState;
  *&v3[OBJC_IVAR____TtC4SMCT11MotionScore_computePipelineState] = 0;
  v8 = &v3[OBJC_IVAR____TtC4SMCT11MotionScore_computeThreads];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 2) = 0u;
  v8[48] = 1;
  allocator = *MEMORY[0x277CBECE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF65960, &unk_26431BFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26431BA70;
  v10 = *MEMORY[0x277CC4D40];
  *(inited + 32) = *MEMORY[0x277CC4D40];
  *(inited + 40) = 0;
  type metadata accessor for CFString(0);
  sub_264317C10();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v11 = v10;
  sub_26431A634();
  v12 = v6;
  v13 = sub_26431A624();

  v14 = *&v4[v6];
  swift_beginAccess();
  swift_unknownObjectRetain();
  CVMetalTextureCacheCreate(allocator, v13, v14, 0, &v4[v70]);
  swift_endAccess();

  swift_unknownObjectRelease();
  v4[OBJC_IVAR____TtC4SMCT11MotionScore_isFirstFrame] = 1;
  *&v4[OBJC_IVAR____TtC4SMCT11MotionScore_frameRate] = a3;
  v15 = [objc_allocWithZone(MEMORY[0x277CD7578]) initWithDevice_];
  v16 = *&v4[v71];
  *&v4[v71] = v15;

  v17 = [objc_allocWithZone(MEMORY[0x277CD7580]) initWithDevice_];
  v18 = *&v4[v72];
  *&v4[v72] = v17;

  v19 = *&v4[v74];
  swift_unknownObjectRetain();
  v20 = sub_26431A644();
  v21 = [v19 newFunctionWithName_];

  if (!v21)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_unknownObjectRelease();
  v22 = *&v4[v12];
  *&v77 = 0;
  v23 = [v22 newComputePipelineStateWithFunction:v21 error:&v77];
  v24 = v77;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v26 = v24;
    v27 = sub_26431A5B4();

    swift_willThrow();
    v25 = 0;
  }

  v28 = *&v4[v68];
  *&v4[v68] = v25;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (!v25)
  {
    goto LABEL_14;
  }

  makeThreadgroups(width:height:pipelineState:)(v25, a1, a2, &v77);
  v29 = v79;
  v73 = v78;
  v75 = v77;
  swift_unknownObjectRelease();
  *v8 = v75;
  *(v8 + 1) = v73;
  *(v8 + 2) = v29;
  v8[48] = 0;
  v30 = objc_opt_self();
  v31 = [v30 texture2DDescriptorWithPixelFormat:55 width:a1 height:a2 mipmapped:0];
  [v31 setUsage_];
  [v31 setStorageMode_];
  [v31 setAllowGPUOptimizedContents_];
  v32 = *&v4[v12];
  v33 = v31;
  v34 = [swift_unknownObjectRetain() newTextureWithDescriptor_];
  if (!v34)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v35 = v34;
  swift_unknownObjectRelease();
  v36 = *&v4[v65];
  *&v4[v65] = v35;
  swift_unknownObjectRelease();
  v37 = *&v4[v12];
  v38 = [swift_unknownObjectRetain() newTextureWithDescriptor_];

  if (!v38)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  swift_unknownObjectRelease();
  v39 = *&v4[v64];
  *&v4[v64] = v38;
  swift_unknownObjectRelease();
  v40 = [v30 texture2DDescriptorWithPixelFormat:55 width:1 height:1 mipmapped:0];
  [v40 setUsage_];
  [v40 setStorageMode_];
  [v40 setAllowGPUOptimizedContents_];

  v41 = *&v4[v12];
  v42 = [swift_unknownObjectRetain() newTextureWithDescriptor_];
  if (!v42)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v43 = v42;
  swift_unknownObjectRelease();
  v44 = *&v4[v62];
  *&v4[v62] = v43;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 1;
  v46 = MEMORY[0x277D83A90];
  v47 = sub_2643133D0();
  v48 = sub_264315A68(&v77, v47, ObjectType, v46);
  swift_unknownObjectRelease();
  *&v4[v63] = v48;
  v49 = [v30 texture2DDescriptorWithPixelFormat:55 width:2 height:1 mipmapped:0];
  [v49 setUsage_];
  [v49 setStorageMode_];
  [v49 setAllowGPUOptimizedContents_];

  v50 = *&v4[v12];
  v51 = [swift_unknownObjectRetain() newTextureWithDescriptor_];
  if (!v51)
  {
    goto LABEL_18;
  }

  v52 = v51;
  swift_unknownObjectRelease();
  v53 = *&v4[v60];
  *&v4[v60] = v52;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v54 = swift_getObjectType();
  v55 = MEMORY[0x277D83A90];
  v56 = sub_2643133D0();
  v57 = sub_264315A68(&v77, v56, v54, v55);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  *&v4[v61] = v57;
  v76.receiver = v4;
  v76.super_class = type metadata accessor for MotionScore();
  result = objc_msgSendSuper2(&v76, sel_init);
  v59 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2643170D0(__CVBuffer *a1)
{
  v2 = v1;
  v41 = *MEMORY[0x277D85DE8];
  v4 = OBJC_IVAR____TtC4SMCT11MotionScore_textureCache;
  OUTLINED_FUNCTION_7();
  v5 = *&v4[v2];
  if (!v5)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    if (!*(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_mean))
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

  CVMetalTextureCacheFlush(v5, 0);
  if (CVPixelBufferGetPixelFormatType(a1) != 875704438 && CVPixelBufferGetPixelFormatType(a1) != 1278226488)
  {
    OUTLINED_FUNCTION_4_0();
    goto LABEL_39;
  }

  v36 = 0;
  v6 = *&v4[v2];
  if (!v6)
  {
    goto LABEL_24;
  }

  v4 = *MEMORY[0x277CBECE8];
  v7 = v6;
  CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  LODWORD(v4) = OUTLINED_FUNCTION_2_0(Height, &v36, v33);

  if (v4)
  {
LABEL_37:
    *&v37 = 0;
    *(&v37 + 1) = 0xE000000000000000;
    sub_26431A6C4();
    MEMORY[0x266735370](0xD000000000000040, 0x800000026431C830);
    LODWORD(v34) = v4;
    v32 = sub_26431A714();
    MEMORY[0x266735370](v32);

LABEL_39:
    OUTLINED_FUNCTION_7_0();
    __break(1u);
    return;
  }

  v9 = [*(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_commandQueue) commandBuffer];
  if (!v9)
  {
    goto LABEL_25;
  }

  v4 = v9;
  v10 = [v9 computeCommandEncoder];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_13;
  }

  if (!*(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_computePipelineState))
  {
    __break(1u);
    goto LABEL_33;
  }

  [v10 setComputePipelineState_];
  v12 = v36;
  if (!v36)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  swift_unknownObjectRetain();
  v13 = CVMetalTextureGetTexture(v12);
  if (!v13)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_3_0(v13);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v14 = OUTLINED_FUNCTION_0_1(OBJC_IVAR____TtC4SMCT11MotionScore_prevTexture);
  [v14 v15];
  v16 = OUTLINED_FUNCTION_0_1(OBJC_IVAR____TtC4SMCT11MotionScore_motionMapTexture);
  [v16 v17];
  v18 = v2 + OBJC_IVAR____TtC4SMCT11MotionScore_computeThreads;
  if (*(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_computeThreads + 48))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v19 = *(v18 + 40);
  v20 = *(v18 + 16);
  v37 = *v18;
  *&v38 = v20;
  v34 = *(v18 + 24);
  v35 = v19;
  [v11 dispatchThreadgroups:&v37 threadsPerThreadgroup:&v34];
  [v11 endEncoding];
LABEL_13:
  v21 = *(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_mean);
  if (!v21)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!*(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_motionMapTexture))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v22 = OBJC_IVAR____TtC4SMCT11MotionScore_motionMapMeanTexture;
  if (!*(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_motionMapMeanTexture))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  [v21 encodeToCommandBuffer:v4 sourceTexture:? destinationTexture:?];
  [v4 commit];
  [v4 waitUntilCompleted];
  if (!*(v2 + v22))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v23 = OBJC_IVAR____TtC4SMCT11MotionScore_motionMapMeanBytes;
  if (!*(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_motionMapMeanBytes))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  swift_getObjectType();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 1;
  v24 = swift_unknownObjectRetain();
  OUTLINED_FUNCTION_6_0(v24, &v37, v25, v26, v27, MEMORY[0x277D83A90]);
  swift_unknownObjectRelease();
  v28 = *(v2 + v23);
  if (!v28)
  {
    goto LABEL_31;
  }

  v29 = *v28;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (*(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_isFirstFrame) == 1)
  {
    *(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_isFirstFrame) = 0;
  }

  else
  {
    v30 = ((v29 * 255.0) * *(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_frameRate)) / 30.0;
  }

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t sub_264317588(__CVBuffer *a1)
{
  v2 = v1;
  v50 = *MEMORY[0x277D85DE8];
  v4 = OBJC_IVAR____TtC4SMCT11MotionScore_textureCache;
  OUTLINED_FUNCTION_7();
  v5 = *&v4[v2];
  if (!v5)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    if (!*(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_meanAndVariance))
    {
      goto LABEL_26;
    }

    goto LABEL_36;
  }

  CVMetalTextureCacheFlush(v5, 0);
  if (CVPixelBufferGetPixelFormatType(a1) != 875704438 && CVPixelBufferGetPixelFormatType(a1) != 1278226488)
  {
    OUTLINED_FUNCTION_4_0();
    goto LABEL_39;
  }

  v45 = 0;
  v6 = *&v4[v2];
  if (!v6)
  {
    goto LABEL_24;
  }

  v4 = *MEMORY[0x277CBECE8];
  v7 = v6;
  CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  LODWORD(v4) = OUTLINED_FUNCTION_2_0(Height, &v45, v41);

  if (v4)
  {
LABEL_37:
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_26431A6C4();
    MEMORY[0x266735370](0xD000000000000040, 0x800000026431C830);
    LODWORD(v43) = v4;
    v40 = sub_26431A714();
    MEMORY[0x266735370](v40);

LABEL_39:
    result = OUTLINED_FUNCTION_7_0();
    __break(1u);
    return result;
  }

  v9 = [*(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_commandQueue) commandBuffer];
  if (!v9)
  {
    goto LABEL_25;
  }

  v4 = v9;
  v10 = [v9 computeCommandEncoder];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_13;
  }

  if (!*(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_computePipelineState))
  {
    __break(1u);
    goto LABEL_33;
  }

  [v10 setComputePipelineState_];
  v12 = v45;
  if (!v45)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  swift_unknownObjectRetain();
  v13 = CVMetalTextureGetTexture(v12);
  if (!v13)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_3_0(v13);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v14 = OUTLINED_FUNCTION_0_1(OBJC_IVAR____TtC4SMCT11MotionScore_prevTexture);
  [v14 v15];
  v16 = OUTLINED_FUNCTION_0_1(OBJC_IVAR____TtC4SMCT11MotionScore_motionMapTexture);
  [v16 v17];
  v18 = v2 + OBJC_IVAR____TtC4SMCT11MotionScore_computeThreads;
  if (*(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_computeThreads + 48))
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v19 = *(v18 + 40);
  v20 = *(v18 + 16);
  v46 = *v18;
  *&v47 = v20;
  v43 = *(v18 + 24);
  v44 = v19;
  [v11 dispatchThreadgroups:&v46 threadsPerThreadgroup:&v43];
  [v11 endEncoding];
LABEL_13:
  v21 = *(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_meanAndVariance);
  if (!v21)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!*(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_motionMapTexture))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v22 = OBJC_IVAR____TtC4SMCT11MotionScore_motionMapMeanAndVarianceTexture;
  if (!*(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_motionMapMeanAndVarianceTexture))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  [v21 encodeToCommandBuffer:v4 sourceTexture:? destinationTexture:?];
  [v4 commit];
  [v4 waitUntilCompleted];
  if (!*(v2 + v22))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v23 = OBJC_IVAR____TtC4SMCT11MotionScore_motionMapMeanAndVarianceBytes;
  if (!*(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_motionMapMeanAndVarianceBytes))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  swift_getObjectType();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 1;
  v24 = swift_unknownObjectRetain();
  OUTLINED_FUNCTION_6_0(v24, &v46, v25, v26, v27, MEMORY[0x277D83A90]);
  swift_unknownObjectRelease();
  v28 = *(v2 + v23);
  if (!v28)
  {
    goto LABEL_31;
  }

  if (*(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_isFirstFrame) == 1)
  {
    *(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_isFirstFrame) = 0;
    v29 = 0;
  }

  else
  {
    __asm { FMOV            V1.2S, #30.0 }

    v29 = vdiv_f32(vmul_n_f32(vmul_f32(*v28, vdup_n_s32(0x437F0000u)), *(v2 + OBJC_IVAR____TtC4SMCT11MotionScore_frameRate)), _D1);
  }

  v42 = v29.f32[0];
  v35 = sqrtf(v29.f32[1]);
  v36 = objc_allocWithZone(type metadata accessor for MotionFeature());
  v37 = MotionFeature.init(mean:std:)(v42, v35);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v38 = *MEMORY[0x277D85DE8];
  return v37;
}

id MotionScore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_264317AFC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_264317C10()
{
  result = qword_27FF65510;
  if (!qword_27FF65510)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF65510);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_0@<X0>(size_t a1@<X6>, CVMetalTextureRef *a2@<X8>, CVMetalTextureRef *textureOut)
{

  return CVMetalTextureCacheCreateTextureFromImage(v4, v5, v3, 0, MTLPixelFormatR8Unorm, v6, a1, 0, a2);
}

id OUTLINED_FUNCTION_3_0(uint64_t a1)
{

  return [v1 setTexture:a1 atIndex:0];
}

id OUTLINED_FUNCTION_6_0(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_264315B50(v6, a2, 0, 1, v7, a6);
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return sub_26431A6F4();
}

id sub_264317FFC()
{
  result = [objc_allocWithZone(type metadata accessor for MetalSingleton()) init];
  qword_27FF65980 = result;
  return result;
}

id static MetalSingleton.shared.getter()
{
  if (qword_27FF653D0 != -1)
  {
    swift_once();
  }

  v1 = qword_27FF65980;

  return v1;
}

uint64_t sub_2643180AC()
{
  v1 = v0;
  v34 = *MEMORY[0x277D85DE8];
  v2 = sub_26431A5E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MTLCreateSystemDefaultDevice();
  if (!v7)
  {
    OUTLINED_FUNCTION_2_1();
    v29 = 25;
    goto LABEL_11;
  }

  v8 = v7;
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_26431A644();
  sub_264318568(v11, 0x62696C6C6174656DLL, 0xE800000000000000, v10);
  v13 = v12;

  if (!v13)
  {
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_26431A6C4();
    MEMORY[0x266735370](0x696C206C6174654DLL, 0xEE00207972617262);
    MEMORY[0x266735370](1952673139, 0xE400000000000000);
    OUTLINED_FUNCTION_1_0();
    MEMORY[0x266735370](v22 + 12, v23 | 0x8000000000000000);
    OUTLINED_FUNCTION_2_1();
    v24 = 28;
LABEL_9:
    v29 = v24;
    goto LABEL_11;
  }

  sub_26431A5C4();
  v14 = sub_26431A5D4();
  (*(v3 + 8))(v6, v2);
  v32 = 0;
  v15 = [v8 newLibraryWithURL:v14 error:&v32];

  if (!v15)
  {
    v25 = v32;
    v26 = sub_26431A5B4();

    swift_willThrow();
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_26431A6C4();
    OUTLINED_FUNCTION_1_0();
    MEMORY[0x266735370](v27 + 3, v28 | 0x8000000000000000);
    v31 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF659A8, &qword_26431BFA8);
    sub_26431A6E4();
    OUTLINED_FUNCTION_2_1();
    v24 = 34;
    goto LABEL_9;
  }

  v16 = v32;
  v17 = [v8 newCommandQueue];
  if (v17)
  {
    v18 = v17;

    *&v1[OBJC_IVAR____TtC4SMCT14MetalSingleton_device] = v8;
    *&v1[OBJC_IVAR____TtC4SMCT14MetalSingleton_library] = v15;
    *&v1[OBJC_IVAR____TtC4SMCT14MetalSingleton_commandQueue] = v18;
    v19 = type metadata accessor for MetalSingleton();
    v30.receiver = v1;
    v30.super_class = v19;
    result = objc_msgSendSuper2(&v30, sel_init);
    v21 = *MEMORY[0x277D85DE8];
    return result;
  }

  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  v29 = 37;
LABEL_11:
  result = sub_26431A6F4();
  __break(1u);
  return result;
}

id MetalSingleton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetalSingleton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_264318568(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_26431A644();

  v7 = [a4 pathForResource:a1 ofType:v6];

  if (!v7)
  {
    return 0;
  }

  v8 = sub_26431A654();

  return v8;
}

float sub_26431865C()
{
  OUTLINED_FUNCTION_0(OBJC_IVAR____TtC4SMCT9Disparity_horizontal);
  OUTLINED_FUNCTION_7();
  return *v0;
}

uint64_t sub_2643186B8(float a1)
{
  OUTLINED_FUNCTION_0(OBJC_IVAR____TtC4SMCT9Disparity_horizontal);
  result = swift_beginAccess();
  *v1 = a1;
  return result;
}

float sub_264318778()
{
  OUTLINED_FUNCTION_0(OBJC_IVAR____TtC4SMCT9Disparity_vertical);
  OUTLINED_FUNCTION_7();
  return *v0;
}

uint64_t sub_2643187D4(float a1)
{
  OUTLINED_FUNCTION_0(OBJC_IVAR____TtC4SMCT9Disparity_vertical);
  result = swift_beginAccess();
  *v1 = a1;
  return result;
}

id Disparity.init(horizontal:vertical:)(float a1, float a2)
{
  *&v2[OBJC_IVAR____TtC4SMCT9Disparity_horizontal] = a1;
  *&v2[OBJC_IVAR____TtC4SMCT9Disparity_vertical] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for Disparity();
  return objc_msgSendSuper2(&v4, sel_init);
}

id ExtremeDisparity.init(width:height:analysisWidth:analysisHeight:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_device;
  v7 = qword_27FF653D0;
  v8 = v5;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_27FF65980;
  *&v5[v6] = *(qword_27FF65980 + OBJC_IVAR____TtC4SMCT14MetalSingleton_device);
  *&v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_library] = *(v9 + OBJC_IVAR____TtC4SMCT14MetalSingleton_library);
  *&v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_commandQueue] = *(v9 + OBJC_IVAR____TtC4SMCT14MetalSingleton_commandQueue);
  v10 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_textureCache;
  *&v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_textureCache] = 0;
  v11 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_vtTransferSession;
  *&v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_vtTransferSession] = 0;
  v146 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_leftBGRAPixelBuffer;
  *&v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_leftBGRAPixelBuffer] = 0;
  v149 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_rightBGRAPixelBuffer;
  *&v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_rightBGRAPixelBuffer] = 0;
  v12 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_minMaxFinder;
  type metadata accessor for MinAndMaxFinder();
  swift_allocObject();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  *&v8[v12] = sub_2643152AC();
  v153 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_executor;
  *&v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_executor] = 0;
  v158 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_ADLKTOpticalFlowBuffer;
  *&v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_ADLKTOpticalFlowBuffer] = 0;
  v13 = &v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_opticalFlowMinMax];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_normalizeFlowPipelineState] = 0;
  v14 = &v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_normalizeFlowthreads];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 2) = 0u;
  v14[48] = 1;
  *&v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_normalizedFlow] = 0;
  v15 = &v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_histogramInfo];
  *v15 = 256;
  v15[8] = 0;
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  __asm { FMOV            V0.4S, #1.0 }

  *(v15 + 2) = _Q0;
  v21 = *MEMORY[0x277CBECE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF65960, &unk_26431BFC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26431BA70;
  v23 = *MEMORY[0x277CC4D40];
  *(inited + 32) = *MEMORY[0x277CC4D40];
  *(inited + 40) = 0;
  type metadata accessor for CFString(0);
  sub_264317C10();
  v24 = v23;
  sub_26431A634();
  v25 = sub_26431A624();

  v26 = *&v5[v6];
  OUTLINED_FUNCTION_1_1();
  swift_unknownObjectRetain();
  CVMetalTextureCacheCreate(v21, v25, v26, 0, &v8[v10]);
  swift_endAccess();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1_1();
  allocator = v21;
  VTPixelTransferSessionCreate(v21, &v8[v11]);
  swift_endAccess();
  v27 = *&v8[v11];
  if (!v27)
  {
    goto LABEL_34;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF65538, &qword_26431BAB0);
  v28 = swift_initStackObject();
  OUTLINED_FUNCTION_5_0(v28, v29, v30, v31, v32, v33, v34, v35, v117, v120, v123, v126, v130, v134, a2, a1, v146, v149, v153, v158, a4, a3, v36);
  v39 = *v38;
  *(v37 + 32) = *v38;
  v40 = *MEMORY[0x277CBED28];
  if (!*MEMORY[0x277CBED28])
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  *(v37 + 40) = v40;
  type metadata accessor for CFBoolean(0);
  v41 = v27;
  v42 = v39;
  v43 = v40;
  sub_26431A634();
  v44 = sub_26431A624();

  VTSessionSetProperties(v41, v44);

  *&v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_opticalFlowPixelFormat] = 65;
  v45 = v167;
  if (v167 == 640)
  {
    *&v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_analysisWidth] = 640;
  }

  else
  {
    *&v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_analysisWidth] = v167;
  }

  v46 = v162;
  if (v162 == 480)
  {
    OUTLINED_FUNCTION_4_1();
    if (!(_NF ^ _VF | _ZF))
    {
      goto LABEL_31;
    }

    if (v47 <= -9.2234e18)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v47 >= 9.2234e18)
    {
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v46 = v47;
  }

  *&v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_analysisHeight] = v46;
  v48 = v45;
  v49 = v46;
  v50 = [objc_opt_self() layoutForSize_];
  v51 = [objc_opt_self() createWithSize:v50 andLayout:{v48, v49}];
  sub_26431A6B4();
  swift_unknownObjectRelease();
  sub_264314818(0, &unk_27FF65550, 0x277CED088);
  if (!swift_dynamicCast())
  {
    goto LABEL_36;
  }

  v52 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_analysisWidth;
  v53 = v173;
  sub_264314818(0, &unk_27FF65A60, 0x277CECFF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF65560, &qword_26431BFD0);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_26431BA90;
  *(v54 + 32) = v53;
  v168 = v53;
  v55 = sub_2643133D8(v54, 3);
  if (*&v8[v52] > 639)
  {
    v69 = v8;
  }

  else
  {
    v56 = *&v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_analysisHeight];

    if (v56 > 479)
    {
      goto LABEL_20;
    }

    v57 = swift_allocObject();
    OUTLINED_FUNCTION_5_0(v57, v58, v59, v60, v61, v62, v63, v64, v118, v121, v124, v127, v131, v135, v139, v143, v147, v150, v154, v159, v162, v168, v65);
    *(v66 + 32) = v168;
    v67 = v168;
    v68 = sub_2643133D8(v57, 0);
    v69 = v55;
    v55 = v68;
  }

LABEL_20:
  v163 = v55;
  v70 = [objc_allocWithZone(MEMORY[0x277CECFF0]) initWithDescriptor:v55 forLayout:v50];
  if (v70)
  {
    v71 = *&v8[v154];
    *&v8[v154] = v70;
    v155 = v70;

    v72 = *&v8[v52];
    v73 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_analysisHeight;
    v74 = *&v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_analysisHeight];
    v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF65540, &qword_26431BAB8);
    v75 = swift_initStackObject();
    *(v75 + 16) = xmmword_26431BA80;
    v140 = *MEMORY[0x277CC4E08];
    *(v75 + 32) = sub_26431A664();
    *(v75 + 40) = v76;
    *(v75 + 72) = MEMORY[0x277D839B0];
    *(v75 + 48) = 1;
    v136 = *MEMORY[0x277CC4DE8];
    *(v75 + 80) = sub_26431A664();
    *(v75 + 88) = v77;
    v78 = v52;
    v79 = sub_26431A634();
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF65548, &unk_26431BAC0);
    *(v75 + 120) = v80;
    *(v75 + 96) = v79;
    sub_26431A634();
    v81 = sub_26431A624();

    OUTLINED_FUNCTION_1_1();
    CVPixelBufferCreate(allocator, v72, v74, 0x32433068u, v81, &v8[v159]);
    swift_endAccess();

    v82 = *&v8[v78];
    v83 = *&v8[v73];
    v84 = v82 * v83 * 0.001;
    v85 = fabs(sqrt(v84));
    if (v84 == -INFINITY)
    {
      v86 = INFINITY;
    }

    else
    {
      v86 = v85;
    }

    if (v86 == INFINITY)
    {
      __break(1u);
    }

    else if (v86 > -9.22337204e18)
    {
      if (v86 < 9.22337204e18)
      {
        v87 = v86;
        type metadata accessor for BlurFilter();
        swift_allocObject();
        *&v8[OBJC_IVAR____TtC4SMCT16ExtremeDisparity_blurFilter] = sub_26431559C(v82, v83, v87 | 1);
        v128 = *&v8[v73];
        v132 = *&v8[v78];
        v88 = swift_initStackObject();
        OUTLINED_FUNCTION_5_0(v88, v89, v90, v91, v92, v93, v94, v95, v118, v121, v124, v128, v132, v136, v140, v144, v147, v150, v155, v78, v163, v168, v96);
        v88[2].n128_u64[0] = sub_26431A664();
        v88[2].n128_u64[1] = v97;
        v88[4].n128_u64[1] = MEMORY[0x277D839B0];
        v88[3].n128_u8[0] = 1;
        v88[5].n128_u64[0] = sub_26431A664();
        v88[5].n128_u64[1] = v98;
        v99 = sub_26431A634();
        v88[7].n128_u64[1] = v80;
        v88[6].n128_u64[0] = v99;
        sub_26431A634();
        v100 = sub_26431A624();

        OUTLINED_FUNCTION_1_1();
        CVPixelBufferCreate(allocator, v133, v129, 0x42475241u, v100, &v8[v148]);
        swift_endAccess();

        v101 = *&v8[v160];
        v102 = *&v8[v73];
        v103 = swift_initStackObject();
        OUTLINED_FUNCTION_5_0(v103, v104, v105, v106, v107, v108, v109, v110, v119, v122, v125, v129, v133, v137, v141, v145, v148, v151, v156, v160, v164, v169, v111);
        v103[2].n128_u64[0] = sub_26431A664();
        v103[2].n128_u64[1] = v112;
        v103[4].n128_u64[1] = MEMORY[0x277D839B0];
        v103[3].n128_u8[0] = 1;
        v103[5].n128_u64[0] = sub_26431A664();
        v103[5].n128_u64[1] = v113;
        v114 = sub_26431A634();
        v103[7].n128_u64[1] = v80;
        v103[6].n128_u64[0] = v114;
        sub_26431A634();
        v115 = sub_26431A624();

        OUTLINED_FUNCTION_1_1();
        CVPixelBufferCreate(allocator, v101, v102, 0x42475241u, v115, &v8[v152]);
        swift_endAccess();

        v172.receiver = v8;
        v172.super_class = type metadata accessor for ExtremeDisparity();
        return objc_msgSendSuper2(&v172, sel_init);
      }

      goto LABEL_30;
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_36:
  result = sub_26431A6F4();
  __break(1u);
  return result;
}

void *sub_264319548(void *result, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_executor;
  v4 = *(v2 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_executor);
  if (!v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  v7 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_ADLKTOpticalFlowBuffer;
  result = OUTLINED_FUNCTION_7();
  if (!*(v2 + v7))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ([v4 executeWithFrame:a2 intoOpticalFlowBuffer:?])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF657A0, &qword_26431BE48);
    v8 = swift_allocObject();
    OUTLINED_FUNCTION_6(v8, xmmword_26431BA70);
  }

  result = *(v2 + v3);
  if (!result)
  {
    goto LABEL_12;
  }

  if (!*(v2 + v7))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if ([result executeWithFrame:v6 intoOpticalFlowBuffer:?])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF657A0, &qword_26431BE48);
    v9 = swift_allocObject();
    OUTLINED_FUNCTION_6(v9, xmmword_26431BA70);
  }

  v10 = *(v2 + v7);
  v11 = v10;
  return v10;
}

uint64_t sub_264319698(void *a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = *(v1 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_library);
  v4 = sub_26431A644();
  v5 = [v3 newFunctionWithName_];

  if (!v5)
  {
    goto LABEL_34;
  }

  v6 = *(v1 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_device);
  *&v56 = 0;
  v7 = [v6 newComputePipelineStateWithFunction:v5 error:&v56];
  v8 = v56;
  if (v7)
  {
    v9 = v7;
    v10 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_normalizeFlowPipelineState;
    v11 = *(v1 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_normalizeFlowPipelineState);
    *(v1 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_normalizeFlowPipelineState) = v7;
    swift_unknownObjectRetain();
    v12 = v8;
    swift_unknownObjectRelease();
    makeThreadgroups(width:height:pipelineState:)(v9, *(v1 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_analysisWidth), *(v1 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_analysisHeight), &v56);
    v13 = v58;
    v52 = v57;
    v53 = v56;
    swift_unknownObjectRelease();
    v14 = (v1 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_normalizeFlowthreads);
    *v14 = v53;
    v14[1] = v52;
    v14[2] = v13;
    *(v14 + 48) = 0;
    v15 = [objc_opt_self() texture2DDescriptorWithPixelFormat:105 width:objc_msgSend(a1 height:sel_width) mipmapped:objc_msgSend(a1, sel_height), 0];
    [v15 setUsage_];
    [v15 setStorageMode_];
    [v15 setAllowGPUOptimizedContents_];
    v16 = [v6 newTextureWithDescriptor_];
    v17 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_normalizedFlow;
    v18 = *(v1 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_normalizedFlow);
    *(v1 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_normalizedFlow) = v16;
    swift_unknownObjectRelease();
    v19 = [*(v1 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_commandQueue) commandBuffer];
    if (!v19)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v8 = v19;
    v20 = [v19 computeCommandEncoder];
    v21 = v20;
    if (!v20)
    {
LABEL_9:
      v25 = *(v1 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_histogramInfo + 8);
      v26 = *(v1 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_histogramInfo + 16);
      v27 = *(v1 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_histogramInfo + 32);
      *&v56 = *(v1 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_histogramInfo);
      BYTE8(v56) = v25;
      v57 = v26;
      v58 = v27;
      v28 = [objc_allocWithZone(MEMORY[0x277CD7530]) initWithDevice:v6 histogramInfo:&v56];
      v29 = *(v1 + v17);
      if (!v29)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v30 = [v6 newBufferWithLength:objc_msgSend(v28 options:{sel_histogramSizeForSourceFormat_, objc_msgSend(v29, sel_pixelFormat)), 0}];
      if (!*(v1 + v17))
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
      }

      v31 = v30;
      if (!v30)
      {
        goto LABEL_38;
      }

      [v28 encodeToCommandBuffer:v8 sourceTexture:? histogram:? histogramOffset:?];
      [v8 commit];
      [v8 waitUntilCompleted];
      v32 = [swift_unknownObjectRetain() contents];
      v33 = v31;
      v34 = [a1 width];
      v35 = [a1 height];
      if ((v34 * v35) >> 64 == (v34 * v35) >> 63)
      {
        OUTLINED_FUNCTION_4_1();
        if (!(v38 ^ v39 | v37))
        {
          goto LABEL_31;
        }

        if (v36 <= -9.2234e18)
        {
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        if (v36 >= 9.2234e18)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v40 = 0;
        v41 = 0;
        v42 = 0;
        v43 = v36;
        v44 = (v1 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_opticalFlowMinMax);
        v45 = 0.0;
        v46 = 0.0;
        while (1)
        {
          v47 = *v32;
          v39 = __OFADD__(v41, v47);
          v41 += v47;
          if (v39)
          {
            break;
          }

          v48 = v32[256];
          v39 = __OFADD__(v40, v48);
          v40 += v48;
          if (v39)
          {
            goto LABEL_29;
          }

          if (v41 >= v43 && v46 == 0.0)
          {
            v46 = v44[1] + ((v42 * 0.0039216) * (*v44 - v44[1]));
          }

          if (v40 >= v43 && v45 == 0.0)
          {
            v45 = v44[2] + ((v42 * 0.0039216) * (v44[3] - v44[2]));
          }

          ++v42;
          ++v32;
          if (v42 == 256)
          {
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            result = swift_unknownObjectRelease();
            v50 = *MEMORY[0x277D85DE8];
            return result;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
      }

      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (*(v1 + v10))
    {
      [v20 setComputePipelineState_];
      [v21 setTexture:a1 atIndex:0];
      v22 = *(v1 + v17);
      if (v22)
      {
        [v21 setTexture:v22 atIndex:1];
        v56 = *(v1 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_opticalFlowMinMax);
        [v21 setBytes:&v56 length:16 atIndex:0];
        if ((v14[3] & 1) == 0)
        {
          v23 = *(v14 + 5);
          v24 = *(v14 + 2);
          v56 = *v14;
          *&v57 = v24;
          v54 = *(v14 + 24);
          v55 = v23;
          [v21 dispatchThreadgroups:&v56 threadsPerThreadgroup:&v54];
          [v21 endEncoding];
          goto LABEL_9;
        }

        goto LABEL_41;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_41:
    __break(1u);
  }

  v51 = v8;
  sub_26431A5B4();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_264319C78(__CVBuffer *a1, float a2)
{
  v3 = v2;
  textureOut[4] = *MEMORY[0x277D85DE8];
  v6 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_textureCache;
  OUTLINED_FUNCTION_7();
  v7 = *(v3 + v6);
  if (!v7)
  {
    __break(1u);
    goto LABEL_14;
  }

  CVMetalTextureCacheFlush(v7, 0);
  textureOut[0] = 0;
  v8 = *(v3 + v6);
  if (!v8)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v9 = *MEMORY[0x277CBECE8];
  v10 = *(v3 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_opticalFlowPixelFormat);
  v11 = v8;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  LODWORD(v9) = CVMetalTextureCacheCreateTextureFromImage(v9, v11, a1, 0, v10, Width, Height, 0, textureOut);

  if (v9)
  {
    sub_26431A6C4();
    MEMORY[0x266735370](0xD000000000000046, 0x800000026431C570);
    v39 = sub_26431A714();
    MEMORY[0x266735370](v39);

    result = sub_26431A6F4();
    __break(1u);
    return result;
  }

  v14 = textureOut[0];
  if (!textureOut[0])
  {
    goto LABEL_15;
  }

  v15 = *(v3 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_blurFilter);

  v16 = CVMetalTextureGetTexture(v14);
  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = sub_264315714(v16);

  swift_unknownObjectRelease();
  v18 = *(v3 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_minMaxFinder);

  sub_264315400(v17);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = v3 + OBJC_IVAR____TtC4SMCT16ExtremeDisparity_opticalFlowMinMax;
  *v27 = v20;
  *(v27 + 4) = v24;
  *(v27 + 8) = v22;
  *(v27 + 12) = v26;
  v28 = [v17 width];
  v29 = [v17 height];
  if (fabsf(v26) >= fabsf(v22))
  {
    v30 = v26;
  }

  else
  {
    v30 = v22;
  }

  if (a2 >= 1.0)
  {
    v32 = v20 / v28;
    v34 = v30 / v29;
  }

  else
  {
    sub_264319698(v17);
    v32 = v31;
    v34 = v33;
  }

  v35 = objc_allocWithZone(type metadata accessor for Disparity());
  v36 = Disparity.init(horizontal:vertical:)(v32, v34);
  swift_unknownObjectRelease();

  v37 = *MEMORY[0x277D85DE8];
  return v36;
}

void sub_264319F7C(__CVBuffer *a1, __CVBuffer *a2, float a3)
{
  v7 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_vtTransferSession;
  OUTLINED_FUNCTION_7();
  v8 = *(v3 + v7);
  if (!v8)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_leftBGRAPixelBuffer;
  OUTLINED_FUNCTION_7();
  v10 = *(v3 + v9);
  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  VTPixelTransferSessionTransferImage(v8, a1, v10);
  v11 = *(v3 + v7);
  if (!v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = OBJC_IVAR____TtC4SMCT16ExtremeDisparity_rightBGRAPixelBuffer;
  OUTLINED_FUNCTION_7();
  v13 = *(v3 + v12);
  if (!v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  VTPixelTransferSessionTransferImage(v11, a2, v13);
  v14 = *(v3 + v9);
  if (!v14)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = *(v3 + v12);
  if (!v15)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = v15;
  v17 = v14;
  v18 = sub_264319548(v17, v16);

  if (v18)
  {
    v19 = v18;
    sub_264319C78(v19, a3);

    return;
  }

LABEL_15:
  __break(1u);
}

id ExtremeDisparity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_26431A1BC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_1_1()
{

  return swift_beginAccess();
}

__n128 OUTLINED_FUNCTION_5_0(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __n128 a23)
{
  result = a23;
  a1[1] = a23;
  return result;
}