unint64_t sub_272276A58()
{
  result = qword_2808821F8;
  if (!qword_2808821F8)
  {
    sub_2721F214C(&qword_280882200, qword_27237F108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808821F8);
  }

  return result;
}

uint64_t _s12VoiceActions16UnsafeE5RTIOPortVwet_0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t _s12VoiceActions16UnsafeE5RTIOPortVwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for E5RTUtils.DomainError(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for E5RTUtils.DomainError(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for E5RTUtils.DomainError(uint64_t result, int a2, int a3)
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

uint64_t sub_272276C88(uint64_t a1)
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

uint64_t sub_272276CA4(uint64_t result, int a2)
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

uint64_t sub_272276CD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return e5rt_tensor_desc_get_strides();
}

uint64_t sub_272276D1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return e5rt_tensor_desc_get_shape();
}

uint64_t VAAVSBuildEnrollmentFactory(delegate:computeUnits:maxSamplesPerEnrollment:)(uint64_t a1, char *a2, Swift::Int a3, char a4)
{
  v8 = *a2;
  type metadata accessor for VAAVSAudioEncoderModel();
  LOBYTE(v30.rejectEnrollmentThreshold) = v8;
  result = VAAVSAudioEncoderModel.__allocating_init(computeUnits:)(&v30);
  if (!v4)
  {
    v16 = result;
    AVSConfig.init()(&v31);
    if ((a4 & 1) == 0)
    {
      AVSConfig.setEnrollmentParams(maxSamplesPerEnrollment:)(a3);
    }

    type metadata accessor for VAAVSVerifierModel();
    v30 = v31;
    VAAVSVerifierModel.__allocating_init(configuration:)(&v30);
    v24 = *&v31.streamingMinDuration;
    v25 = *&v31.enrollMinimumSilenceFrames;
    v26 = *&v31.enrollSpeechThreshold;
    minDuration_high = HIDWORD(v31.minDuration);
    streamingMinimumSilenceFrames = v31.streamingMinimumSilenceFrames;
    v23 = *&v31.streamingMinimumSpeechFrames;
    maxSamplesPerEnrollment = v31.maxSamplesPerEnrollment;
    recency = v31.recency;
    v28 = v31.maxSamplesPerEnrollment;
    AVSConfig.getAVSEndpointerConfig()(&v29);
    minimumSilenceFrames = v29.minimumSilenceFrames;
    minimumSpeechFrames = v29.minimumSpeechFrames;
    speechThreshold = v29.speechThreshold;
    minDuration = v29.minDuration;
    v14 = v29.recency;
    type metadata accessor for VAAVSAudioEnrollerFactory();
    v17[0] = minimumSilenceFrames;
    v17[1] = minimumSpeechFrames;
    v18 = speechThreshold;
    v20 = minDuration;
    v21 = v14;
    sub_272277044(a1, &v29);
    return VAAVSAudioEnrollerFactory.__allocating_init(encoder:endpointerConfig:delegate:maxSamplesPerEnrollment:)(v16, v17, &v29, maxSamplesPerEnrollment, 0);
  }

  return result;
}

uint64_t sub_272277044(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280882228, &qword_27237F4D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t VAAVSBuildKeywordSpotter(delegate:computeUnits:)(uint64_t a1, char *a2)
{
  v4 = *a2;
  v5 = type metadata accessor for VAAVSAudioEncoderModel();
  v17 = v4;
  v6 = VAAVSAudioEncoderModel.__allocating_init(computeUnits:)(&v17);
  if (!v2)
  {
    v7 = v6;
    AVSConfig.init()(&v16);
    v8 = type metadata accessor for VAAVSVerifierModel();
    v10 = VAAVSVerifierModel.__allocating_init(configuration:)(&v16);
    v11 = type metadata accessor for VAStrategyProviderAVS();
    v12 = VAStrategyProviderAVS.__allocating_init()();
    type metadata accessor for VAFlexibleKeywordSpotter();
    type metadata accessor for VAConfiguration();
    swift_unknownObjectRetain();

    v13 = static VAConfiguration.buildForFlexibleAVS()();
    v16.maxDuration = v11;
    v16.resampleDuration = &protocol witness table for VAStrategyProviderAVS;
    *&v16.rejectEnrollmentThreshold = v12;
    v15[3] = v8;
    v15[4] = &protocol witness table for VAAVSVerifierModel;
    v15[0] = v10;

    v14 = sub_2721F7EE4();
    v5 = VAFlexibleKeywordSpotter.__allocating_init(delegate:vadGated:verifier:encoder:configuration:strategyProvider:runtimeParametersFactory:)(a1, v14 & 1, v10, v7, v13, &v16, v15);
  }

  return v5;
}

uint64_t VAA2ABuildEnrollmentFactory(delegate:computeUnits:maxSamplesPerEnrollment:)(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  type metadata accessor for VAA2AAudioEncoderModel();
  v7[0] = v4;
  result = VAA2AAudioEncoderModel.__allocating_init(computeUnits:)(v7);
  if (!v2)
  {
    v6 = result;
    type metadata accessor for VAA2AVerifierModel();
    v7[0] = v4;
    VAA2AVerifierModel.__allocating_init(computeUnits:)(v7);
    type metadata accessor for VAA2AAudioEnrollerFactory();
    sub_272277044(a1, v7);
    return VAA2AAudioEnrollerFactory.__allocating_init(encoder:delegate:)(v6, v7);
  }

  return result;
}

uint64_t VAA2ABuildKeywordSpotter(delegate:computeUnits:)(uint64_t a1, char *a2)
{
  v4 = *a2;
  type metadata accessor for VAConfiguration();
  v5 = static VAConfiguration.buildForFlexibleA2A()();
  v6 = type metadata accessor for VAA2AAudioEncoderModel();
  LOBYTE(v18[0]) = v4;
  v7 = VAA2AAudioEncoderModel.__allocating_init(computeUnits:)(v18);
  if (v2)
  {
  }

  else
  {
    v8 = v7;
    type metadata accessor for VAA2AVerifierModel();
    LOBYTE(v18[0]) = v4;
    v9 = VAA2AVerifierModel.__allocating_init(computeUnits:)(v18);
    type metadata accessor for VAStrideConfiguration();
    v10 = static VAStrideConfiguration.forFlexibleA2A()();
    v11 = type metadata accessor for VAStrategyProviderDefault();
    v12 = v10;
    v13 = VAStrategyProviderDefault.__allocating_init(strideConfig:)(v12);
    type metadata accessor for VAFlexibleKeywordSpotter();
    v18[3] = v11;
    v18[4] = &protocol witness table for VAStrategyProviderDefault;
    v17 = 0;
    v18[0] = v13;
    memset(v16, 0, sizeof(v16));
    swift_unknownObjectRetain();

    v14 = sub_2721F7EE4();
    v6 = VAFlexibleKeywordSpotter.__allocating_init(delegate:vadGated:verifier:encoder:configuration:strategyProvider:runtimeParametersFactory:)(a1, v14 & 1, v9, v8, v5, v18, v16);
  }

  return v6;
}

uint64_t VAA2ABuildEnrollmentFactoryV2(delegate:computeUnits:)(uint64_t a1, char *a2)
{
  v4 = *a2;
  type metadata accessor for VAConfiguration();
  v5 = static VAConfiguration.buildForFlexibleA2Av2()();
  v6 = type metadata accessor for VASilenceModel();
  v7 = (*((*MEMORY[0x277D85000] & *v5) + 0xE8))();
  v9 = v8;
  _s12VoiceActions19VASpeechBiasOptionsO010defaultForaB0ACyFZ_0(v22);
  v23 = v22[0];
  v10 = v7;
  v11 = v6;
  v12 = sub_27228DC9C(v10, v9, &v23);
  if (v2)
  {
  }

  else
  {
    v13 = v12;
    type metadata accessor for VAFeatureExtract();
    v14 = VAFeatureExtract.__allocating_init()();
    v15 = type metadata accessor for VAA2AAudioEncoderModelV2();
    LOBYTE(v22[0]) = v4;
    v16 = VAA2AAudioEncoderModelV2.__allocating_init(computeUnits:)(v22);
    type metadata accessor for VAFeatureExtractingEncoder();
    v22[3] = v15;
    v22[4] = &protocol witness table for VAA2AAudioEncoderModelV2;
    v22[0] = v16;

    v17 = v14;

    v18 = v5;
    v19 = sub_2721F7EE4();
    VAFeatureExtractingEncoder.__allocating_init(subEncoder:featureExtractor:vadModel:config:useCMVN:)(v22, v17, v13, v18, v19 & 1);
    type metadata accessor for VAA2AVerifierModelV2();
    LOBYTE(v22[0]) = v4;
    VAA2AVerifierModelV2.__allocating_init(computeUnits:)(v22);
    type metadata accessor for VAA2AAudioEnrollerFactoryV2();
    sub_272277044(a1, v22);

    v11 = VAA2AAudioEnrollerFactoryV2.__allocating_init(encoder:delegate:)(v21, v22);
  }

  return v11;
}

uint64_t VAA2ABuildKeywordSpotterV2(delegate:computeUnits:)(uint64_t a1, char *a2)
{
  v4 = *a2;
  type metadata accessor for VAConfiguration();
  v5 = static VAConfiguration.buildForFlexibleA2Av2()();
  v6 = type metadata accessor for VASilenceModel();
  v7 = (*((*MEMORY[0x277D85000] & *v5) + 0xE8))();
  v9 = v8;
  _s12VoiceActions19VASpeechBiasOptionsO010defaultForaB0ACyFZ_0(v31);
  LOBYTE(v29[0]) = v31[0];
  v10 = v7;
  v11 = v6;
  v12 = sub_27228DC9C(v10, v9, v29);
  if (v2)
  {
  }

  else
  {
    v13 = v12;
    type metadata accessor for VAFeatureExtract();
    v14 = VAFeatureExtract.__allocating_init()();
    v15 = type metadata accessor for VAA2AAudioEncoderModelV2();
    LOBYTE(v31[0]) = v4;
    v16 = VAA2AAudioEncoderModelV2.__allocating_init(computeUnits:)(v31);
    type metadata accessor for VAFeatureExtractingEncoder();
    v32 = v15;
    v33 = &protocol witness table for VAA2AAudioEncoderModelV2;
    v31[0] = v16;

    v17 = v14;

    v18 = v5;
    v19 = sub_2721F7EE4();
    v28 = v17;
    v34 = VAFeatureExtractingEncoder.__allocating_init(subEncoder:featureExtractor:vadModel:config:useCMVN:)(v31, v17, v13, v18, v19 & 1);
    type metadata accessor for VAA2AVerifierModelV2();
    LOBYTE(v31[0]) = v4;
    v21 = VAA2AVerifierModelV2.__allocating_init(computeUnits:)(v31);
    type metadata accessor for VAStrideConfiguration();
    v22 = static VAStrideConfiguration.forFlexibleA2Av2()();
    v23 = type metadata accessor for VAStrategyProviderDefault();
    v27 = v22;
    v24 = VAStrategyProviderDefault.__allocating_init(strideConfig:)(v27);
    type metadata accessor for VAFlexibleKeywordSpotter();
    v32 = v23;
    v33 = &protocol witness table for VAStrategyProviderDefault;
    v30 = 0;
    v31[0] = v24;
    memset(v29, 0, sizeof(v29));
    swift_unknownObjectRetain();

    v25 = v34;

    v26 = sub_2721F7EE4();
    v11 = VAFlexibleKeywordSpotter.__allocating_init(delegate:vadGated:verifier:encoder:configuration:strategyProvider:runtimeParametersFactory:)(a1, v26 & 1, v21, v25, v18, v31, v29);
  }

  return v11;
}

uint64_t VAA2ABuildEnrollmentFactoryV3(delegate:computeUnits:)(uint64_t a1)
{
  type metadata accessor for VAConfiguration();
  v3 = static VAConfiguration.buildForFlexibleA2Av3()();
  v4 = type metadata accessor for VASilenceModel();
  v5 = (*((*MEMORY[0x277D85000] & *v3) + 0xE8))();
  v7 = v6;
  _s12VoiceActions19VASpeechBiasOptionsO010defaultForaB0ACyFZ_0(v21);
  v22 = v21[0];
  v8 = v5;
  v9 = v4;
  v10 = sub_27228DC9C(v8, v7, &v22);
  if (v1)
  {
  }

  else
  {
    v11 = v10;
    type metadata accessor for VAFeatureExtract();
    v12 = VAFeatureExtract.__allocating_init()();
    v13 = type metadata accessor for VAA2AAudioEncoderModelV3();
    sub_27225A39C(v21);
    v22 = v21[0];
    v14 = VAA2AAudioEncoderModelV3.__allocating_init(computeUnits:)(&v22);
    type metadata accessor for VAFeatureExtractingEncoder();
    v21[3] = v13;
    v21[4] = &protocol witness table for VAA2AAudioEncoderModelV3;
    v21[0] = v14;

    v15 = v12;

    v16 = v3;
    v17 = sub_2721F7EE4();
    v18 = VAFeatureExtractingEncoder.__allocating_init(subEncoder:featureExtractor:vadModel:config:useCMVN:)(v21, v15, v11, v16, v17 & 1);
    type metadata accessor for VAA2AAudioEnrollerFactoryV3();
    sub_272277044(a1, v21);
    VAA2AAudioEnrollerFactoryV3.__allocating_init(encoder:delegate:)(v18, v21);
    v9 = v19;
  }

  return v9;
}

uint64_t VAA2ABuildKeywordSpotterV3(delegate:computeUnits:useResultGenerator:)(uint64_t a1, char *a2, char a3)
{
  v6 = *a2;
  type metadata accessor for VAConfiguration();
  v7 = static VAConfiguration.buildForFlexibleA2Av3()();
  v8 = type metadata accessor for VASilenceModel();
  v9 = (*((*MEMORY[0x277D85000] & *v7) + 0xE8))();
  v11 = v10;
  _s12VoiceActions19VASpeechBiasOptionsO010defaultForaB0ACyFZ_0(v37);
  LOBYTE(v35[0]) = v37[0];
  v12 = v9;
  v13 = v8;
  v14 = sub_27228DC9C(v12, v11, v35);
  if (v3)
  {
  }

  else
  {
    v15 = v14;
    type metadata accessor for VAFeatureExtract();
    v16 = VAFeatureExtract.__allocating_init()();
    v17 = type metadata accessor for VAA2AAudioEncoderModelV3();
    sub_27225A39C(v37);
    LOBYTE(v35[0]) = v37[0];
    v18 = VAA2AAudioEncoderModelV3.__allocating_init(computeUnits:)(v35);
    v40 = a1;
    type metadata accessor for VAFeatureExtractingEncoder();
    v38 = v17;
    v39 = &protocol witness table for VAA2AAudioEncoderModelV3;
    v37[0] = v18;

    v19 = v16;

    v20 = v7;
    v21 = sub_2721F7EE4();
    v33 = v19;
    v34 = VAFeatureExtractingEncoder.__allocating_init(subEncoder:featureExtractor:vadModel:config:useCMVN:)(v37, v19, v15, v20, v21 & 1);
    v22 = type metadata accessor for VAA2AVerifierModelV3();
    LOBYTE(v37[0]) = v6;
    v24 = VAA2AVerifierModelV3.__allocating_init(computeUnits:)(v37);
    if (a3)
    {
      type metadata accessor for VAResultGeneratorVerifier();
      v38 = v22;
      v39 = &protocol witness table for VAA2AVerifierModelV3;
      v37[0] = v24;
      v25 = v20;

      v32 = VAResultGeneratorVerifier.__allocating_init(subVerifier:config:)(v37, v25);
    }

    else
    {

      v32 = v24;
    }

    type metadata accessor for VAStrideConfiguration();
    v26 = static VAStrideConfiguration.forFlexibleA2Av3()();
    v27 = type metadata accessor for VAStrategyProviderDefault();
    v31 = v26;
    v28 = VAStrategyProviderDefault.__allocating_init(strideConfig:)(v31);
    type metadata accessor for VAFlexibleKeywordSpotter();
    v38 = v27;
    v39 = &protocol witness table for VAStrategyProviderDefault;
    v36 = 0;
    v37[0] = v28;
    memset(v35, 0, sizeof(v35));
    v29 = v40;
    swift_unknownObjectRetain();

    v30 = sub_2721F7EE4();
    v13 = VAFlexibleKeywordSpotter.__allocating_init(delegate:vadGated:verifier:encoder:configuration:strategyProvider:runtimeParametersFactory:)(v29, v30 & 1, v32, v34, v20, v37, v35);
  }

  return v13;
}

uint64_t VAA2ABuildEnrollmentFactoryAttentionDetection(config:delegate:computeUnits:)(void *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  type metadata accessor for VASilenceModel();
  v7 = (*((*MEMORY[0x277D85000] & *a1) + 0xE8))();
  v9 = v8;
  _s12VoiceActions19VASpeechBiasOptionsO010defaultForaB0ACyFZ_0(v21);
  v22 = v21[0];
  v10 = sub_27228DC9C(v7, v9, &v22);
  if (!v3)
  {
    v11 = v10;
    type metadata accessor for VAFeatureExtract();
    v12 = VAFeatureExtract.__allocating_init()();
    v13 = type metadata accessor for VAA2AAudioEncoderModelV3();
    sub_27225A39C(v21);
    v22 = v21[0];
    v14 = VAA2AAudioEncoderModelV3.__allocating_init(computeUnits:)(&v22);
    type metadata accessor for VAFeatureExtractingEncoder();
    v21[3] = v13;
    v21[4] = &protocol witness table for VAA2AAudioEncoderModelV3;
    v21[0] = v14;

    v15 = v12;

    v16 = a1;
    v17 = sub_2721F7EE4();
    v18 = VAFeatureExtractingEncoder.__allocating_init(subEncoder:featureExtractor:vadModel:config:useCMVN:)(v21, v15, v11, v16, v17 & 1);
    type metadata accessor for VAA2AVerifierModelV3();
    LOBYTE(v21[0]) = v6;
    VAA2AVerifierModelV3.__allocating_init(computeUnits:)(v21);
    type metadata accessor for VAA2AAudioEnrollerFactoryV3();
    sub_272277044(a2, v21);
    VAA2AAudioEnrollerFactoryV3.__allocating_init(encoder:delegate:)(v18, v21);
    a2 = v20;
  }

  return a2;
}

uint64_t VAA2ABuildKeywordSpotterAttentionDetection(delegate:attentionDetectionConfig:)(uint64_t a1, uint64_t a2)
{
  v317 = a1;
  v330 = *MEMORY[0x277D85DE8];
  v308 = sub_272376D5C();
  v314 = *(v308 - 8);
  v3 = *(v314 + 64);
  v4 = MEMORY[0x28223BE20](v308);
  v307 = &v254[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v309 = &v254[-v6];
  v7 = sub_27237728C();
  v315 = *(v7 - 8);
  v316 = v7;
  v8 = *(v315 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v310 = &v254[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v311 = &v254[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v312 = &v254[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v313 = &v254[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v254[-v18];
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v254[-v21];
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v254[-v24];
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v254[-v27];
  MEMORY[0x28223BE20](v26);
  v30 = &v254[-v29];
  type metadata accessor for VAConfiguration();
  v318 = a2;
  v31 = static VAConfiguration.buildForFlexibleA2AAttentionDetection(_:)(a2);
  type metadata accessor for VASilenceModel();
  v32 = (*((*MEMORY[0x277D85000] & *v31) + 0xE8))();
  v34 = v33;
  _s12VoiceActions19VASpeechBiasOptionsO010defaultForaB0ACyFZ_0(&v326);
  LOBYTE(v323) = v326;
  v35 = v319;
  v36 = sub_27228DC9C(v32, v34, &v323);
  if (v35)
  {

    goto LABEL_9;
  }

  v306 = v30;
  v304 = v25;
  v303 = v22;
  v305 = v19;
  v302 = v28;
  v319 = v36;
  type metadata accessor for VAFeatureExtract();
  v37 = VAFeatureExtract.__allocating_init()();
  v38 = type metadata accessor for VAA2AAudioEncoderModelV3();
  sub_27225A39C(&v326);
  LOBYTE(v323) = v326;
  v39 = VAA2AAudioEncoderModelV3.__allocating_init(computeUnits:)(&v323);
  type metadata accessor for VAFeatureExtractingEncoder();
  v328 = v38;
  v329 = &protocol witness table for VAA2AAudioEncoderModelV3;
  v326 = v39;

  v40 = v37;
  v41 = v319;

  v42 = v31;
  v43 = sub_2721F7EE4();
  v44 = VAFeatureExtractingEncoder.__allocating_init(subEncoder:featureExtractor:vadModel:config:useCMVN:)(&v326, v40, v41, v42, v43 & 1);
  v300 = v39;
  v301 = v44;
  v45 = type metadata accessor for VAA2AVerifierModelV3();
  v46 = v318;
  LOBYTE(v326) = *(v318 + 32);
  v47 = VAA2AVerifierModelV3.__allocating_init(computeUnits:)(&v326);
  v298 = v40;
  v99 = *(v46 + 33) == 1;
  v299 = v47;
  if (v99)
  {
    v48 = v47;
    type metadata accessor for VAResultGeneratorVerifier();
    v328 = v45;
    v329 = &protocol witness table for VAA2AVerifierModelV3;
    v326 = v48;
    v49 = v42;

    v50 = VAResultGeneratorVerifier.__allocating_init(subVerifier:config:)(&v326, v49);
  }

  else
  {
  }

  v51 = v50;
  v52 = v317;
  type metadata accessor for VAStrideConfiguration();
  v53 = static VAStrideConfiguration.forFlexibleA2Av3()();
  v54 = type metadata accessor for VAStrategyProviderDefault();
  v55 = v53;
  v56 = VAStrategyProviderDefault.__allocating_init(strideConfig:)(v55);
  type metadata accessor for VAFlexibleKeywordSpotter();
  v328 = v54;
  v329 = &protocol witness table for VAStrategyProviderDefault;
  v325 = 0;
  v326 = v56;
  v323 = 0u;
  v324 = 0u;
  v57 = v42;
  v58 = v56;
  v59 = v57;
  swift_unknownObjectRetain();

  v60 = v301;

  v61 = sub_2721F7EE4() & 1;
  v62 = v52;
  v63 = v59;
  v64 = VAFlexibleKeywordSpotter.__allocating_init(delegate:vadGated:verifier:encoder:configuration:strategyProvider:runtimeParametersFactory:)(v62, v61, v51, v60, v59, &v326, &v323);
  v65 = 0;
  v22 = v64;
  v297 = v55;
  v68 = type metadata accessor for VAA2ABuilderEnrollerDelegate();
  v69 = swift_allocObject();
  v70 = MEMORY[0x277D84F90];
  v69[2] = MEMORY[0x277D84F90];
  v69[3] = v70;
  v328 = v68;
  v329 = &off_28817F048;
  v326 = v69;
  LOBYTE(v323) = 1;

  v71 = VAA2ABuildEnrollmentFactoryAttentionDetection(config:delegate:computeUnits:)(v63, &v326, &v323);
  v284 = v69 + 3;
  v290 = v69 + 2;
  v293 = v71;
  sub_27227B688(&v326);

  v73 = v318;
  v74 = (*(**(v318 + 16) + 248))(v72);
  v76 = v74;
  v77 = *(v73 + 24);
  v78 = *(v77 + 16);
  v283 = v77;
  if (!v78)
  {
LABEL_122:

    v196 = v290;
    swift_beginAccess();
    if (*(*v196 + 16))
    {
      v197 = sub_2722C389C();
      v198 = v312;
      (*(v315 + 16))(v312, v197, v316);

      v199 = sub_27237725C();
      v200 = sub_272377E7C();
      if (os_log_type_enabled(v199, v200))
      {
        v201 = swift_slowAlloc();
        *v201 = 134217984;
        *(v201 + 4) = *(v69[2] + 16);

        _os_log_impl(&dword_2721E4000, v199, v200, "Successfully enrolled %ld enrollments.", v201, 0xCu);
        v198 = v312;
        MEMORY[0x2743C69C0](v201, -1, -1);
      }

      else
      {
      }

      (*(v315 + 8))(v198, v316);
      v196 = v290;
      v220 = *v290;

      VAA2AVerifierModelV3.setAudioEnrollments(enrollments:)(v221);
      if (v222)
      {

        goto LABEL_7;
      }
    }

    v223 = v284;
    swift_beginAccess();
    if (!*(*v223 + 16))
    {
      if (*(*v196 + 16))
      {

        goto LABEL_9;
      }

      v286 = v69;
      v287 = v63;
      v289 = v58;
      v285 = v22;
      v288 = v51;
      v235 = sub_2722C389C();
      v236 = v315;
      v237 = v316;
      v238 = v310;
      (*(v315 + 16))(v310, v235, v316);

      v239 = sub_27237725C();
      v240 = sub_272377E8C();

      if (os_log_type_enabled(v239, v240))
      {
        v241 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v321 = v22;
        *v241 = 136315138;
        v242 = MEMORY[0x2743C4C60](v283, MEMORY[0x277D837D0]);
        v244 = sub_2721FFD04(v242, v243, &v321);

        *(v241 + 4) = v244;
        _os_log_impl(&dword_2721E4000, v239, v240, "0 enrollments found for %s", v241, 0xCu);
        sub_2722039C8(v22);
        MEMORY[0x2743C69C0](v22, -1, -1);
        MEMORY[0x2743C69C0](v241, -1, -1);
      }

      (*(v236 + 8))(v238, v237);
      sub_2722032B4();
      swift_allocError();
      *v245 = 0xD000000000000015;
      v245[1] = 0x800000027238BCF0;
      swift_willThrow();

LABEL_8:

      goto LABEL_9;
    }

    v224 = sub_2722C389C();
    v225 = v315;
    v226 = v311;
    (*(v315 + 16))(v311, v224, v316);

    v227 = sub_27237725C();
    v228 = sub_272377E7C();
    if (os_log_type_enabled(v227, v228))
    {
      v229 = swift_slowAlloc();
      *v229 = 134217984;
      *(v229 + 4) = *(v69[3] + 16);

      _os_log_impl(&dword_2721E4000, v227, v228, "Failed to enroll %ld enrollments.", v229, 0xCu);
      v230 = v229;
      v226 = v311;
      MEMORY[0x2743C69C0](v230, -1, -1);
    }

    else
    {
    }

    (*(v225 + 8))(v226, v316);
    v321 = 0;
    v322 = 0xE000000000000000;
    sub_27237820C();

    v321 = 0xD000000000000011;
    v322 = 0x800000027238BD10;
    v320 = *(v69[3] + 16);
    v231 = sub_27237862C();
    MEMORY[0x2743C4AD0](v231);

    MEMORY[0x2743C4AD0](0x6D6C6C6F726E6520, 0xED00002E73746E65);
    v232 = v321;
    v233 = v322;
    sub_2722032B4();
    swift_allocError();
    *v234 = v232;
    v234[1] = v233;
    swift_willThrow();

LABEL_7:

    goto LABEL_8;
  }

  v79 = 0;
  v80 = v74 + 64;
  v81 = v77 + 32;
  v291 = (v315 + 16);
  v292 = (v315 + 8);
  v275 = (v314 + 16);
  v276 = (v314 + 8);
  *&v75 = 136316162;
  v273 = v75;
  *&v75 = 136315906;
  v272 = v75;
  *&v75 = 136316418;
  v274 = v75;
  v294 = v74 + 64;
  v288 = v51;
  v289 = v58;
  v287 = v63;
  v286 = v69;
  v285 = v22;
  v279 = v78;
  v278 = v77 + 32;
LABEL_12:
  if (v79 >= *(v77 + 16))
  {
    goto LABEL_145;
  }

  v82 = (v81 + 16 * v79);
  v83 = v82[1];
  v295 = *v82;
  v280 = v79 + 1;
  v84 = 1 << *(v76 + 32);
  if (v84 < 64)
  {
    v85 = ~(-1 << v84);
  }

  else
  {
    v85 = -1;
  }

  v86 = v85 & *(v76 + 64);
  v87 = (v84 + 63) >> 6;
  v296 = v83;

  v88 = 0;
  if (!v86)
  {
    do
    {
LABEL_18:
      v89 = v88 + 1;
      if (__OFADD__(v88, 1))
      {
        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
      }

      if (v89 >= v87)
      {

        v202 = sub_2722C389C();
        v203 = v313;
        v204 = v316;
        (*v291)(v313, v202, v316);
        v205 = v296;

        v206 = sub_27237725C();
        v207 = sub_272377E8C();

        if (os_log_type_enabled(v206, v207))
        {
          v208 = swift_slowAlloc();
          v209 = swift_slowAlloc();
          v326 = v209;
          *v208 = 136315394;
          v210 = v295;
          *(v208 + 4) = sub_2721FFD04(v295, v205, &v326);
          *(v208 + 12) = 2080;
          sub_2721F065C(&qword_280882230, &qword_27237F4D8);
          v211 = sub_27237774C();
          v213 = v212;

          v214 = sub_2721FFD04(v211, v213, &v326);

          *(v208 + 14) = v214;
          _os_log_impl(&dword_2721E4000, v206, v207, "attentionName %s, keys: %s", v208, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2743C69C0](v209, -1, -1);
          MEMORY[0x2743C69C0](v208, -1, -1);

          (*v292)(v203, v316);
          v22 = v298;
          v215 = v297;
          v216 = v287;
        }

        else
        {

          (*v292)(v203, v204);
          v22 = v298;
          v215 = v297;
          v216 = v287;
          v210 = v295;
        }

        v326 = 0;
        v327 = 0xE000000000000000;
        sub_27237820C();

        v326 = 0xD000000000000017;
        v327 = 0x800000027238BD30;
        MEMORY[0x2743C4AD0](v210, v205);

        v217 = v326;
        v218 = v327;
        sub_2722032B4();
        swift_allocError();
        *v219 = v217;
        v219[1] = v218;
        swift_willThrow();

        goto LABEL_8;
      }

      v86 = *(v80 + 8 * v89);
      ++v88;
    }

    while (!v86);
    goto LABEL_21;
  }

  while (1)
  {
    v89 = v88;
LABEL_21:
    v317 = v65;
    v90 = __clz(__rbit64(v86)) | (v89 << 6);
    v91 = (*(v76 + 48) + 16 * v90);
    v92 = *v91;
    v93 = v91[1];
    v94 = *(*(v76 + 56) + 8 * v90);
    v95 = sub_2723778AC();
    v97 = v96;
    v99 = v95 == sub_2723778AC() && v97 == v98;
    if (v99)
    {

      goto LABEL_30;
    }

    LODWORD(v314) = sub_27237865C();

    if (v314)
    {
      break;
    }

    v86 &= v86 - 1;

    v88 = v89;
    v65 = v317;
    v80 = v294;
    if (!v86)
    {
      goto LABEL_18;
    }
  }

LABEL_30:
  v100 = *(v94 + 64);
  v314 = v94 + 64;
  v101 = 1 << *(v94 + 32);
  if (v101 < 64)
  {
    v102 = ~(-1 << v101);
  }

  else
  {
    v102 = -1;
  }

  v103 = v102 & v100;
  v282 = (v101 + 63) >> 6;
  v281 = v94;
  swift_bridgeObjectRetain_n();

  v104 = 0;
  v270 = 0;
  v105 = 0;
  v58 = v289;
  do
  {
    while (1)
    {
LABEL_34:
      v271 = v104;
      v106 = v306;
      while (2)
      {
        v65 = v317;
        if (v103)
        {
          goto LABEL_41;
        }

        do
        {
          v107 = v105 + 1;
          if (__OFADD__(v105, 1))
          {
            goto LABEL_144;
          }

          if (v107 >= v282)
          {

            swift_bridgeObjectRelease_n();

            swift_bridgeObjectRelease_n();
            v79 = v280;
            v51 = v288;
            v63 = v287;
            v69 = v286;
            v77 = v283;
            v80 = v294;
            v81 = v278;
            if (v280 == v279)
            {
              goto LABEL_122;
            }

            goto LABEL_12;
          }

          v103 = *(v314 + 8 * v107);
          ++v105;
        }

        while (!v103);
        v105 = v107;
LABEL_41:
        v108 = __clz(__rbit64(v103));
        v103 &= v103 - 1;
        v109 = (v281[6] + ((v105 << 10) | (16 * v108)));
        v111 = *v109;
        v110 = v109[1];
        v112 = *v109 == 0x6F69647561 && v110 == 0xE500000000000000;
        v113 = v112;
        v277 = v113;
        if (v112 || (sub_27237865C()) && *(v318 + 40) == 1)
        {
          v114 = sub_2722C389C();
          (*v291)(v106, v114, v316);
          v115 = sub_27237725C();
          v116 = sub_272377E7C();
          if (os_log_type_enabled(v115, v116))
          {
            v117 = swift_slowAlloc();
            *v117 = 0;
            _os_log_impl(&dword_2721E4000, v115, v116, "Skipping audio enrollment since text only", v117, 2u);
            MEMORY[0x2743C69C0](v117, -1, -1);
          }

          v106 = v306;
          (*v292)(v306, v316);
          continue;
        }

        break;
      }

      v269 = v111;
      v268 = v110;
      v118 = v111 == 1954047348 && v110 == 0xE400000000000000;
      v119 = v118;
      v267 = v119;
      if (v118)
      {
        v104 = v270;
        if (v270 <= 3)
        {
          break;
        }

        continue;
      }

      v132 = sub_27237865C();
      if (v132)
      {
        v104 = v270;
        v58 = v289;
        if (v270 > 3)
        {
          continue;
        }
      }

      if (v132)
      {
        v133 = v270;
      }

      else
      {
        v133 = v271;
      }

      if (v269 != 0x636E756F6E6F7270)
      {
        v58 = v289;
        v104 = v133;
        break;
      }

      v58 = v289;
      v104 = v133;
      if (v268 != 0xEE006E6F69746169)
      {
        break;
      }
    }

    v120 = v104;
    v121 = sub_27237865C();
    v104 = v120;
  }

  while ((v121 & 1) != 0);
  v256 = v76;
  v122 = v281[2];
  v258 = v93;

  if (!v122)
  {
    goto LABEL_162;
  }

  v123 = v268;

  v124 = sub_27220038C(v269, v123);
  if ((v125 & 1) == 0)
  {
    goto LABEL_161;
  }

  v126 = v124;

  v127 = *(v281[7] + 8 * v126);

  v271 = 0;
  v128 = *(v127 + 64);
  v265 = v127 + 64;
  v261 = v127;
  v129 = 1 << *(v127 + 32);
  if (v129 < 64)
  {
    v130 = ~(-1 << v129);
  }

  else
  {
    v130 = -1;
  }

  v131 = v130 & v128;
  v266 = (v129 + 63) >> 6;
  while (2)
  {
    if (v131)
    {
      goto LABEL_85;
    }

    while (2)
    {
      v135 = v271 + 1;
      if (__OFADD__(v271, 1))
      {
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
        goto LABEL_158;
      }

      if (v135 >= v266)
      {

        v22 = v285;
        v58 = v289;
        v76 = v256;
        v93 = v258;
        v104 = v120;
        goto LABEL_34;
      }

      v136 = *(v265 + 8 * v135);
      ++v271;
      if (!v136)
      {
        continue;
      }

      break;
    }

    v131 = v136;
    v271 = v135;
LABEL_85:
    v137 = (v271 << 10) | (16 * __clz(__rbit64(v131)));
    v138 = (*(v261 + 48) + v137);
    v139 = *v138;
    v140 = v138[1];
    v141 = (*(v261 + 56) + v137);
    v142 = *v141;
    v22 = v141[1];

    v260 = v139;
    v262 = v140;
    sub_272376CAC();
    v143 = [objc_opt_self() defaultManager];
    sub_272376D2C();
    v144 = sub_2723777FC();

    v145 = [v143 fileExistsAtPath_];

    if ((v145 & 1) == 0)
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      v246 = sub_2722C389C();
      (*v291)(v302, v246, v316);

      v247 = sub_27237725C();
      v248 = sub_272377E8C();

      if (os_log_type_enabled(v247, v248))
      {
        v249 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v326 = v22;
        *v249 = 136315138;
        *(v249 + 4) = sub_2721FFD04(v260, v262, &v326);
        _os_log_impl(&dword_2721E4000, v247, v248, "No such enrollment file: %s", v249, 0xCu);
        sub_2722039C8(v22);
        MEMORY[0x2743C69C0](v22, -1, -1);
        MEMORY[0x2743C69C0](v249, -1, -1);
      }

      (*v292)(v302, v316);
      v326 = 0;
      v327 = 0xE000000000000000;
      sub_27237820C();

      v326 = 0xD000000000000019;
      v327 = 0x800000027238BCD0;
      MEMORY[0x2743C4AD0](v260, v262);

      v250 = v326;
      v251 = v327;
      sub_2722032B4();
      swift_allocError();
      *v252 = v250;
      v252[1] = v251;
      swift_willThrow();

      goto LABEL_151;
    }

    v146 = v307;
    (*v275)(v307, v309, v308);
    v147 = objc_allocWithZone(MEMORY[0x277CB8398]);
    v148 = v317;
    v263 = sub_27227B734(v146, 3, 0);
    if (v148)
    {
      (*v276)(v309, v308);

      swift_bridgeObjectRelease_n();

      swift_bridgeObjectRelease_n();
      goto LABEL_9;
    }

    v149 = v263;
    v150 = [v263 processingFormat];
    v151 = [v149 length];
    if ((v151 & 0x8000000000000000) != 0)
    {
      goto LABEL_156;
    }

    if (HIDWORD(v151))
    {
      goto LABEL_157;
    }

    v152 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:v150 frameCapacity:v151];

    v264 = v152;
    if (!v152)
    {
      goto LABEL_160;
    }

    v326 = 0;
    v153 = [v263 readIntoBuffer:v264 error:&v326];
    v154 = v326;
    if ((v153 & 1) == 0)
    {
      v253 = v326;

      v22 = v281;
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      sub_272376C6C();

      swift_willThrow();

LABEL_151:

      (*v276)(v309, v308);
      goto LABEL_9;
    }

    if ((v277 & 1) == 0 && (sub_27237865C() & 1) == 0)
    {
      if (sub_27237865C())
      {
        goto LABEL_97;
      }

      if (!__OFADD__(v120++, 1))
      {
        v189 = v154;
        v270 = v120;
        goto LABEL_98;
      }

      goto LABEL_159;
    }

    v155 = *(v318 + 57);
    if (v155 != 2 && (v155 & 1) != 0)
    {
      v156 = *(v318 + 36);
      v157 = v154;
      sub_272254228(v156);
      goto LABEL_98;
    }

LABEL_97:
    v158 = v154;
LABEL_98:
    (*(*v293 + 104))(&v326, v142, v22);

    v159 = v328;
    v160 = v329;
    sub_27220300C(&v326, v328);
    v161 = mach_absolute_time();
    (v160[1])(v264, v161, v159, v160);
    v317 = 0;
    LODWORD(v160) = [v264 frameLength];
    v163 = v328;
    v162 = v329;
    sub_27220300C(&v326, v328);
    if (v160 >= (v162[4])(v163, v162))
    {
      v175 = sub_2722C389C();
      (*v291)(v305, v175, v316);
      sub_27221629C(&v326, &v323);

      v264 = v264;
      v176 = sub_27237725C();
      v177 = sub_272377E7C();

      LODWORD(v259) = v177;
      v178 = v176;
      if (os_log_type_enabled(v176, v177))
      {
        v179 = swift_slowAlloc();
        v257 = swift_slowAlloc();
        v321 = v257;
        *v179 = v274;
        *(v179 + 4) = sub_2721FFD04(v269, v268, &v321);
        *(v179 + 12) = 2080;
        *(v179 + 14) = sub_2721FFD04(v295, v296, &v321);
        *(v179 + 22) = 2080;
        v180 = sub_2721FFD04(v260, v262, &v321);

        *(v179 + 24) = v180;
        *(v179 + 32) = 2048;
        *(v179 + 34) = *(v318 + 36);
        *(v179 + 42) = 1024;
        v181 = v264;
        *(v179 + 44) = [v264 frameLength];

        *(v179 + 48) = 1024;
        v183 = *(&v324 + 1);
        v182 = v325;
        sub_27220300C(&v323, *(&v324 + 1));
        LODWORD(v182) = (*(v182 + 32))(v183, v182);
        sub_2722039C8(&v323);
        *(v179 + 50) = v182;
        v176 = v178;
        _os_log_impl(&dword_2721E4000, v178, v259, "Enrolling %s for %s: %s with gain %f, no padding needed since %u >= required %u", v179, 0x36u);
        v184 = v257;
        swift_arrayDestroy();
        MEMORY[0x2743C69C0](v184, -1, -1);
        MEMORY[0x2743C69C0](v179, -1, -1);
      }

      else
      {
        sub_2722039C8(&v323);

        v134 = v264;
      }

      (*v292)(v305, v316);
      (*v276)(v309, v308);
LABEL_79:
      v131 &= v131 - 1;
      sub_2722039C8(&v326);
      continue;
    }

    break;
  }

  v164 = v328;
  v22 = v329;
  sub_27220300C(&v326, v328);
  LODWORD(v164) = (*(v22 + 4))(v164, v22);
  v165 = [v264 frameLength];
  LODWORD(v257) = v164 - v165;
  if (v164 < v165)
  {
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:

    __break(1u);
LABEL_162:

    __break(1u);
    return result;
  }

  v166 = [v264 format];
  v167 = v317;
  v259 = sub_27227B050(v257, v166);
  v317 = v167;
  if (v167)
  {
    (*v276)(v309, v308);

    swift_bridgeObjectRelease_n();
  }

  else
  {

    if (v277 & 1) != 0 || (sub_27237865C())
    {
      v168 = sub_2722C389C();
      (*v291)(v304, v168, v316);

      v169 = sub_27237725C();
      v170 = sub_272377E7C();

      v255 = v170;
      v171 = v169;
      if (os_log_type_enabled(v169, v170))
      {
        v172 = swift_slowAlloc();
        v173 = swift_slowAlloc();
        *&v323 = v173;
        *v172 = v273;
        *(v172 + 4) = sub_2721FFD04(v269, v268, &v323);
        *(v172 + 12) = 2080;
        *(v172 + 14) = sub_2721FFD04(v295, v296, &v323);
        *(v172 + 22) = 2080;
        v174 = sub_2721FFD04(v260, v262, &v323);

        *(v172 + 24) = v174;
        *(v172 + 32) = 1024;
        *(v172 + 34) = v257;
        *(v172 + 38) = 2048;
        *(v172 + 40) = *(v318 + 36);
        _os_log_impl(&dword_2721E4000, v171, v255, "Enrolling %s for %s: %s with padding of %u samples with gain %f", v172, 0x30u);
        swift_arrayDestroy();
        MEMORY[0x2743C69C0](v173, -1, -1);
        MEMORY[0x2743C69C0](v172, -1, -1);
      }

      else
      {
      }

      (*v292)(v304, v316);
    }

    else if (v267 & 1) != 0 || (sub_27237865C())
    {
      v190 = sub_2722C389C();
      (*v291)(v303, v190, v316);

      v191 = sub_27237725C();
      v192 = sub_272377E7C();

      v255 = v192;
      if (os_log_type_enabled(v191, v192))
      {
        v193 = swift_slowAlloc();
        v194 = swift_slowAlloc();
        *&v323 = v194;
        *v193 = v272;
        *(v193 + 4) = sub_2721FFD04(v269, v268, &v323);
        *(v193 + 12) = 2080;
        *(v193 + 14) = sub_2721FFD04(v295, v296, &v323);
        *(v193 + 22) = 2080;
        v195 = sub_2721FFD04(v260, v262, &v323);

        *(v193 + 24) = v195;
        *(v193 + 32) = 1024;
        *(v193 + 34) = v257;
        _os_log_impl(&dword_2721E4000, v191, v255, "Enrolling %s for %s: %s with padding of %u samples without gain", v193, 0x26u);
        swift_arrayDestroy();
        MEMORY[0x2743C69C0](v194, -1, -1);
        MEMORY[0x2743C69C0](v193, -1, -1);
      }

      else
      {
      }

      (*v292)(v303, v316);
    }

    else
    {
    }

    v185 = v328;
    v22 = v329;
    sub_27220300C(&v326, v328);
    v186 = mach_absolute_time();
    v187 = v317;
    (*(v22 + 1))(v259, v186, v185, v22);
    v317 = v187;
    if (!v187)
    {
      (*v276)(v309, v308);

      goto LABEL_79;
    }

    (*v276)(v309, v308);

    swift_bridgeObjectRelease_n();
  }

  swift_bridgeObjectRelease_n();
  sub_2722039C8(&v326);
LABEL_9:
  v66 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t sub_27227B020()
{
  result = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(result + 16) = MEMORY[0x277D84F90];
  *(result + 24) = v1;
  return result;
}

void *sub_27227B050(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CB83C8]) initWithPCMFormat:a2 frameCapacity:a1];
  v4 = v3;
  if (v3)
  {
    [v3 setFrameLength_];
    v5 = [v4 int16ChannelData];
    if (v5)
    {
      v6 = a1 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = 0;
      do
      {
        *(*v5 + v7) = 0;
        v7 += 2;
      }

      while (2 * a1 != v7);
    }
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v8 = 0xD000000000000019;
    v8[1] = 0x8000000272389140;
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_27227B148(uint64_t a1)
{
  v3 = sub_27237728C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v50 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for VASingleEnrollmentData();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v46 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v46 - v17;
  LOBYTE(v51[0]) = *(a1 + *(v16 + 40));
  v52 = 1;
  if (static VASingleEnrollmentStatus.== infix(_:_:)(v51, &v52))
  {
    sub_272204F54(a1, v18);
    v19 = (*(*v1 + 112))(v51);
    v21 = v20;
    v22 = *v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v21 = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_27227B890(0, v22[2] + 1, 1, v22);
      *v21 = v22;
    }

    v25 = v22[2];
    v24 = v22[3];
    if (v25 >= v24 >> 1)
    {
      v22 = sub_27227B890(v24 > 1, v25 + 1, 1, v22);
      *v21 = v22;
    }

    v22[2] = v25 + 1;
    sub_27227BA68(v18, v22 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v25);
    return v19(v51, 0);
  }

  else
  {
    v48 = v4;
    sub_272204F54(a1, v15);
    v47 = (*(*v1 + 136))(v51);
    v28 = v27;
    v29 = *v27;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    *v28 = v29;
    v49 = v3;
    if ((v30 & 1) == 0)
    {
      v29 = sub_27227B890(0, v29[2] + 1, 1, v29);
      *v28 = v29;
    }

    v32 = v29[2];
    v31 = v29[3];
    if (v32 >= v31 >> 1)
    {
      v29 = sub_27227B890(v31 > 1, v32 + 1, 1, v29);
      *v28 = v29;
    }

    v29[2] = v32 + 1;
    sub_27227BA68(v15, v29 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v32);
    v47(v51, 0);
    v33 = sub_2722C389C();
    v34 = v48;
    v35 = v49;
    v36 = v50;
    (*(v48 + 16))(v50, v33, v49);
    sub_272204F54(a1, v12);
    v37 = sub_27237725C();
    v38 = sub_272377E8C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = v34;
      v41 = swift_slowAlloc();
      v51[0] = v41;
      *v39 = 136315138;
      v42 = &v12[*(v7 + 24)];
      v43 = *v42;
      v44 = v42[1];

      sub_272204FB8(v12);
      v45 = sub_2721FFD04(v43, v44, v51);

      *(v39 + 4) = v45;
      _os_log_impl(&dword_2721E4000, v37, v38, "Did not successfully enroll %s", v39, 0xCu);
      sub_2722039C8(v41);
      MEMORY[0x2743C69C0](v41, -1, -1);
      MEMORY[0x2743C69C0](v39, -1, -1);

      return (*(v40 + 8))(v50, v35);
    }

    else
    {

      sub_272204FB8(v12);
      return (*(v34 + 8))(v36, v35);
    }
  }
}

uint64_t sub_27227B624()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_27227B688(uint64_t a1)
{
  v2 = sub_2721F065C(&qword_280882228, &qword_27237F4D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_27227B734(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v18[1] = *MEMORY[0x277D85DE8];
  v8 = sub_272376CCC();
  v18[0] = 0;
  v9 = [v4 initForReading:v8 commonFormat:a2 interleaved:a3 & 1 error:v18];

  v10 = v18[0];
  if (v9)
  {
    v11 = sub_272376D5C();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v18[0];
    sub_272376C6C();

    swift_willThrow();
    v15 = sub_272376D5C();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

size_t sub_27227B890(size_t result, int64_t a2, char a3, void *a4)
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

  sub_2721F065C(&qword_280882238, &unk_27237F520);
  v10 = *(type metadata accessor for VASingleEnrollmentData() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(type metadata accessor for VASingleEnrollmentData() - 8);
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

uint64_t sub_27227BA68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VASingleEnrollmentData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27227BC88()
{
  v1 = OBJC_IVAR___SecondPassConfig_waitForFinal;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27227BD20(char a1)
{
  v3 = OBJC_IVAR___SecondPassConfig_waitForFinal;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27227BD70@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_27227BED0()
{
  v1 = OBJC_IVAR___SecondPassConfig_useEndpointer;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27227BF68(char a1)
{
  v3 = OBJC_IVAR___SecondPassConfig_useEndpointer;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27227BFB8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_27227C0D0()
{
  if (*v0)
  {
    result = 0x6F70646E45657375;
  }

  else
  {
    result = 0x46726F4674696177;
  }

  *v0;
  return result;
}

uint64_t sub_27227C120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x46726F4674696177 && a2 == 0xEC0000006C616E69;
  if (v6 || (sub_27237865C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F70646E45657375 && a2 == 0xED00007265746E69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_27237865C();

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

uint64_t sub_27227C208(uint64_t a1)
{
  v2 = sub_27227C604();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27227C244(uint64_t a1)
{
  v2 = sub_27227C604();

  return MEMORY[0x2821FE720](a1, v2);
}

void *SecondPassConfig.init(from:)(uint64_t *a1)
{
  v4 = sub_2721F065C(&qword_280882250, &qword_27237F5E0);
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v8 = OBJC_IVAR___SecondPassConfig_waitForFinal;
  v1[OBJC_IVAR___SecondPassConfig_waitForFinal] = 1;
  v9 = OBJC_IVAR___SecondPassConfig_useEndpointer;
  v23 = v1;
  v1[OBJC_IVAR___SecondPassConfig_useEndpointer] = 0;
  v10 = a1[3];
  v11 = a1[4];
  v27 = a1;
  v12 = sub_27220300C(a1, v10);
  sub_27227C604();
  sub_2723787AC();
  if (v2)
  {
    sub_2722039C8(v27);
    type metadata accessor for SecondPassConfig();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v22;
    v14 = v9;
    v26 = 0;
    v15 = v4;
    v16 = sub_27237844C();
    v17 = v23;
    if (v16 == 2)
    {
      swift_beginAccess();
      v16 = v17[v8];
    }

    swift_beginAccess();
    v17[v8] = v16 & 1;
    v25 = 1;
    v18 = sub_27237844C();
    v20 = v18;
    (*(v13 + 8))(v7, v15);
    if (v20 == 2)
    {
      swift_beginAccess();
      v20 = v17[v14];
    }

    swift_beginAccess();
    v17[v14] = v20 & 1;
    v21 = type metadata accessor for SecondPassConfig();
    v24.receiver = v17;
    v24.super_class = v21;
    v12 = objc_msgSendSuper2(&v24, sel_init);
    sub_2722039C8(v27);
  }

  return v12;
}

unint64_t sub_27227C604()
{
  result = qword_280888698;
  if (!qword_280888698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280888698);
  }

  return result;
}

uint64_t sub_27227C658(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280882258, &qword_27237F5E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_27227C604();
  v11 = sub_2723787CC();
  v12 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0x60))(v11);
  v15[15] = 0;
  v13 = sub_27237859C();
  if (!v2)
  {
    (*((*v12 & *v3) + 0x78))(v13);
    v15[14] = 1;
    sub_27237859C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_27227C9D4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 144))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_27227CAAC()
{
  v1 = OBJC_IVAR___PreKeywordSilenceConfig_lookbackFrames;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27227CB44(uint64_t a1)
{
  v3 = OBJC_IVAR___PreKeywordSilenceConfig_lookbackFrames;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27227CB94@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x68))();
  *a2 = result;
  return result;
}

uint64_t sub_27227CCF0()
{
  v1 = OBJC_IVAR___PreKeywordSilenceConfig_minSilenceInLookbackFrames;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27227CD88(uint64_t a1)
{
  v3 = OBJC_IVAR___PreKeywordSilenceConfig_minSilenceInLookbackFrames;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27227CDD8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x80))();
  *a2 = result;
  return result;
}

float sub_27227CF34()
{
  v1 = v0 + OBJC_IVAR___PreKeywordSilenceConfig_silenceProbability;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_27227CFD0(float a1)
{
  v3 = (v1 + OBJC_IVAR___PreKeywordSilenceConfig_silenceProbability);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

uint64_t sub_27227D138()
{
  v1 = 0xD00000000000001ALL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B6361626B6F6F6CLL;
  }
}

uint64_t sub_27227D1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27228CE8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27227D1E0(uint64_t a1)
{
  v2 = sub_27227D67C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27227D21C(uint64_t a1)
{
  v2 = sub_27227D67C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *PreKeywordSilence.init(from:)(uint64_t *a1)
{
  v4 = sub_2721F065C(&qword_280882280, &qword_27237F5F0);
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = OBJC_IVAR___PreKeywordSilenceConfig_lookbackFrames;
  *&v1[OBJC_IVAR___PreKeywordSilenceConfig_lookbackFrames] = 20;
  v7 = OBJC_IVAR___PreKeywordSilenceConfig_minSilenceInLookbackFrames;
  *&v1[OBJC_IVAR___PreKeywordSilenceConfig_minSilenceInLookbackFrames] = 10;
  v8 = OBJC_IVAR___PreKeywordSilenceConfig_silenceProbability;
  v32 = v1;
  *&v1[OBJC_IVAR___PreKeywordSilenceConfig_silenceProbability] = 1060320051;
  v9 = a1[3];
  v10 = a1[4];
  v37 = a1;
  v11 = a1;
  v13 = &v28 - v12;
  v14 = sub_27220300C(v11, v9);
  sub_27227D67C();
  sub_2723787AC();
  if (v2)
  {
    sub_2722039C8(v37);
    type metadata accessor for PreKeywordSilence();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v30 = v7;
    v29 = v8;
    v15 = v31;
    v36 = 0;
    v16 = sub_27237847C();
    v17 = v32;
    if (v18)
    {
      swift_beginAccess();
      v19 = *&v17[v6];
    }

    else
    {
      v19 = v16;
    }

    swift_beginAccess();
    *&v17[v6] = v19;
    v35 = 1;
    v20 = sub_27237847C();
    if (v21)
    {
      v22 = v30;
      swift_beginAccess();
      v23 = *&v17[v22];
    }

    else
    {
      v23 = v20;
      v22 = v30;
    }

    swift_beginAccess();
    *&v17[v22] = v23;
    v34 = 2;
    v25 = sub_27237846C();
    (*(v15 + 8))(v13, v4);
    v26 = v29;
    if ((v25 & 0x100000000) != 0)
    {
      swift_beginAccess();
      LODWORD(v25) = *&v17[v26];
    }

    swift_beginAccess();
    *&v17[v26] = v25;
    v27 = type metadata accessor for PreKeywordSilence();
    v33.receiver = v17;
    v33.super_class = v27;
    v14 = objc_msgSendSuper2(&v33, sel_init);
    sub_2722039C8(v37);
  }

  return v14;
}

unint64_t sub_27227D67C()
{
  result = qword_2808886A0;
  if (!qword_2808886A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808886A0);
  }

  return result;
}

uint64_t sub_27227D6D0(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280882288, &qword_27237F5F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_27227D67C();
  v11 = sub_2723787CC();
  v12 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0x68))(v11);
  v16[15] = 0;
  v13 = sub_2723785CC();
  if (!v2)
  {
    (*((*v12 & *v3) + 0x80))(v13);
    v16[14] = 1;
    v14 = sub_2723785CC();
    (*((*v12 & *v3) + 0x98))(v14);
    v16[13] = 2;
    sub_2723785BC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_27227DA80(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_27227DAE0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 176))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

float sub_27227DBB8()
{
  v1 = v0 + OBJC_IVAR___DuringKeywordSilenceConfig_minPercentageOfNonSilenceFrames;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_27227DC54(float a1)
{
  v3 = (v1 + OBJC_IVAR___DuringKeywordSilenceConfig_minPercentageOfNonSilenceFrames);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

float sub_27227DE04()
{
  v1 = v0 + OBJC_IVAR___DuringKeywordSilenceConfig_silenceProbability;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_27227DEA0(float a1)
{
  v3 = (v1 + OBJC_IVAR___DuringKeywordSilenceConfig_silenceProbability);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

unint64_t sub_27227E008()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0xD00000000000001FLL;
  }

  *v0;
  return result;
}

uint64_t sub_27227E048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD00000000000001FLL && 0x800000027238C140 == a2 || (sub_27237865C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000027238C090 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_27237865C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_27227E134(uint64_t a1)
{
  v2 = sub_27227E510();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27227E170(uint64_t a1)
{
  v2 = sub_27227E510();

  return MEMORY[0x2821FE720](a1, v2);
}

void *DuringKeywordSilence.init(from:)(uint64_t *a1)
{
  v4 = sub_2721F065C(&qword_2808822A8, &qword_27237F600);
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - v6;
  v8 = OBJC_IVAR___DuringKeywordSilenceConfig_minPercentageOfNonSilenceFrames;
  *&v1[OBJC_IVAR___DuringKeywordSilenceConfig_minPercentageOfNonSilenceFrames] = 1056964608;
  v9 = OBJC_IVAR___DuringKeywordSilenceConfig_silenceProbability;
  v21 = v1;
  *&v1[OBJC_IVAR___DuringKeywordSilenceConfig_silenceProbability] = 1056964608;
  v10 = a1[3];
  v11 = a1[4];
  v25 = a1;
  v12 = sub_27220300C(a1, v10);
  sub_27227E510();
  sub_2723787AC();
  if (v2)
  {
    sub_2722039C8(v25);
    type metadata accessor for DuringKeywordSilence();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v20;
    v24 = 0;
    v14 = sub_27237846C();
    v15 = v14;
    v16 = v21;
    if ((v14 & 0x100000000) != 0)
    {
      swift_beginAccess();
      v15 = *&v16[v8];
    }

    swift_beginAccess();
    *&v16[v8] = v15;
    v23 = 1;
    v18 = sub_27237846C();
    (*(v13 + 8))(v7, v4);
    if ((v18 & 0x100000000) != 0)
    {
      swift_beginAccess();
      LODWORD(v18) = *&v16[v9];
    }

    swift_beginAccess();
    *&v16[v9] = v18;
    v19 = type metadata accessor for DuringKeywordSilence();
    v22.receiver = v16;
    v22.super_class = v19;
    v12 = objc_msgSendSuper2(&v22, sel_init);
    sub_2722039C8(v25);
  }

  return v12;
}

unint64_t sub_27227E510()
{
  result = qword_2808886A8;
  if (!qword_2808886A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808886A8);
  }

  return result;
}

uint64_t sub_27227E564(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_2808822B0, &qword_27237F608);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_27227E510();
  v11 = sub_2723787CC();
  v12 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0x60))(v11);
  v15[15] = 0;
  v13 = sub_2723785BC();
  if (!v2)
  {
    (*((*v12 & *v3) + 0x78))(v13);
    v15[14] = 1;
    sub_2723785BC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_27227E8D8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 144))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_27227E9B0()
{
  v1 = OBJC_IVAR___PostKeywordSilenceConfig_lookForwardFrames;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27227EA48(uint64_t a1)
{
  v3 = OBJC_IVAR___PostKeywordSilenceConfig_lookForwardFrames;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27227EA98@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

uint64_t sub_27227EBF4()
{
  v1 = OBJC_IVAR___PostKeywordSilenceConfig_minSilenceFramesExpected;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27227EC8C(uint64_t a1)
{
  v3 = OBJC_IVAR___PostKeywordSilenceConfig_minSilenceFramesExpected;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27227ECDC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

float sub_27227EE38()
{
  v1 = v0 + OBJC_IVAR___PostKeywordSilenceConfig_silenceProbability;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_27227EED4(float a1)
{
  v3 = (v1 + OBJC_IVAR___PostKeywordSilenceConfig_silenceProbability);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

uint64_t sub_27227F084()
{
  v1 = OBJC_IVAR___PostKeywordSilenceConfig_minSilenceFrameCountAtEndOfKeyword;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27227F11C(uint64_t a1)
{
  v3 = OBJC_IVAR___PostKeywordSilenceConfig_minSilenceFrameCountAtEndOfKeyword;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27227F16C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

unint64_t sub_27227F280()
{
  v1 = 0xD000000000000011;
  v2 = 0xD000000000000022;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t sub_27227F2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27228CFBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27227F324(uint64_t a1)
{
  v2 = sub_27227F89C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27227F360(uint64_t a1)
{
  v2 = sub_27227F89C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *PostKeywordSilence.init(from:)(uint64_t *a1)
{
  v39 = sub_2721F065C(&qword_2808822E0, &qword_27237F610);
  v38 = *(v39 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v39);
  v5 = &v35 - v4;
  v6 = OBJC_IVAR___PostKeywordSilenceConfig_lookForwardFrames;
  *&v1[OBJC_IVAR___PostKeywordSilenceConfig_lookForwardFrames] = 8;
  v7 = OBJC_IVAR___PostKeywordSilenceConfig_minSilenceFramesExpected;
  *&v1[OBJC_IVAR___PostKeywordSilenceConfig_minSilenceFramesExpected] = 2;
  v8 = OBJC_IVAR___PostKeywordSilenceConfig_silenceProbability;
  *&v1[OBJC_IVAR___PostKeywordSilenceConfig_silenceProbability] = 1060320051;
  v9 = OBJC_IVAR___PostKeywordSilenceConfig_minSilenceFrameCountAtEndOfKeyword;
  v41 = v1;
  *&v1[OBJC_IVAR___PostKeywordSilenceConfig_minSilenceFrameCountAtEndOfKeyword] = 2;
  v10 = a1[3];
  v11 = a1[4];
  v47 = a1;
  v12 = sub_27220300C(a1, v10);
  sub_27227F89C();
  v13 = v40;
  sub_2723787AC();
  if (v13)
  {
    sub_2722039C8(v47);
    type metadata accessor for PostKeywordSilence();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v37 = v7;
    v40 = v8;
    v36 = v9;
    v14 = v38;
    v46 = 0;
    v15 = v39;
    v16 = sub_27237847C();
    v18 = v5;
    v20 = v41;
    if (v17)
    {
      swift_beginAccess();
      v21 = *&v20[v6];
    }

    else
    {
      v21 = v16;
    }

    swift_beginAccess();
    *&v20[v6] = v21;
    v45 = 1;
    v22 = sub_27237847C();
    v23 = v14;
    if (v24)
    {
      v25 = v37;
      swift_beginAccess();
      v26 = *&v20[v25];
      v27 = v40;
    }

    else
    {
      v26 = v22;
      v27 = v40;
      v25 = v37;
    }

    swift_beginAccess();
    *&v20[v25] = v26;
    v44 = 2;
    v28 = sub_27237846C();
    v29 = v28;
    if ((v28 & 0x100000000) != 0)
    {
      swift_beginAccess();
      v29 = *&v20[v27];
    }

    swift_beginAccess();
    *&v20[v27] = v29;
    v43 = 3;
    v30 = sub_27237847C();
    v32 = v31;
    (*(v23 + 8))(v18, v15);
    v33 = v36;
    if (v32)
    {
      swift_beginAccess();
      v30 = *&v20[v33];
    }

    swift_beginAccess();
    *&v20[v33] = v30;
    v34 = type metadata accessor for PostKeywordSilence();
    v42.receiver = v20;
    v42.super_class = v34;
    v12 = objc_msgSendSuper2(&v42, sel_init);
    sub_2722039C8(v47);
  }

  return v12;
}

unint64_t sub_27227F89C()
{
  result = qword_2808886B0;
  if (!qword_2808886B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808886B0);
  }

  return result;
}

uint64_t sub_27227F8F0(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_2808822E8, &qword_27237F618);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_27227F89C();
  v11 = sub_2723787CC();
  v12 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0x70))(v11);
  v17[15] = 0;
  v13 = sub_2723785CC();
  if (!v2)
  {
    (*((*v12 & *v3) + 0x88))(v13);
    v17[14] = 1;
    v14 = sub_2723785CC();
    (*((*v12 & *v3) + 0xA0))(v14);
    v17[13] = 2;
    v15 = sub_2723785BC();
    (*((*v12 & *v3) + 0xB8))(v15);
    v17[12] = 3;
    sub_2723785CC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_27227FD0C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 208))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_27227FDE4()
{
  v1 = OBJC_IVAR___AudioCaptureConfig_leftOfStartFrameOffset;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27227FE7C(uint64_t a1)
{
  v3 = OBJC_IVAR___AudioCaptureConfig_leftOfStartFrameOffset;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27227FECC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_272280028()
{
  v1 = OBJC_IVAR___AudioCaptureConfig_rightOfEndFrameOffset;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2722800C0(uint64_t a1)
{
  v3 = OBJC_IVAR___AudioCaptureConfig_rightOfEndFrameOffset;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272280110@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

unint64_t sub_272280224()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0xD000000000000016;
  }

  *v0;
  return result;
}

uint64_t sub_27228025C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000016 && 0x800000027238C2B0 == a2;
  if (v6 || (sub_27237865C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000027238C2D0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_27237865C();

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

uint64_t sub_272280348(uint64_t a1)
{
  v2 = sub_272280738();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_272280384(uint64_t a1)
{
  v2 = sub_272280738();

  return MEMORY[0x2821FE720](a1, v2);
}

void *AudioCapture.init(from:)(uint64_t *a1)
{
  v4 = sub_2721F065C(&qword_280882308, &qword_27237F620);
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - v6;
  v8 = OBJC_IVAR___AudioCaptureConfig_leftOfStartFrameOffset;
  *&v1[OBJC_IVAR___AudioCaptureConfig_leftOfStartFrameOffset] = 1;
  v9 = OBJC_IVAR___AudioCaptureConfig_rightOfEndFrameOffset;
  v27 = v1;
  *&v1[OBJC_IVAR___AudioCaptureConfig_rightOfEndFrameOffset] = 8;
  v10 = a1[3];
  v11 = a1[4];
  v31 = a1;
  v12 = sub_27220300C(a1, v10);
  sub_272280738();
  sub_2723787AC();
  if (v2)
  {
    sub_2722039C8(v31);
    type metadata accessor for AudioCapture();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v8;
    v14 = v26;
    v15 = v9;
    v30 = 0;
    v16 = sub_27237847C();
    v17 = v27;
    if (v18)
    {
      swift_beginAccess();
      v19 = *&v17[v8];
    }

    else
    {
      v19 = v16;
    }

    v20 = v14;
    swift_beginAccess();
    *&v17[v13] = v19;
    v29 = 1;
    v22 = sub_27237847C();
    v24 = v23;
    (*(v20 + 8))(v7, v4);
    if (v24)
    {
      swift_beginAccess();
      v22 = *&v17[v15];
    }

    swift_beginAccess();
    *&v17[v15] = v22;
    v25 = type metadata accessor for AudioCapture();
    v28.receiver = v17;
    v28.super_class = v25;
    v12 = objc_msgSendSuper2(&v28, sel_init);
    sub_2722039C8(v31);
  }

  return v12;
}

unint64_t sub_272280738()
{
  result = qword_2808886B8;
  if (!qword_2808886B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808886B8);
  }

  return result;
}

uint64_t sub_27228078C(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280882310, &qword_27237F628);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_272280738();
  v11 = sub_2723787CC();
  v12 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0x60))(v11);
  v15[15] = 0;
  v13 = sub_2723785CC();
  if (!v2)
  {
    (*((*v12 & *v3) + 0x78))(v13);
    v15[14] = 1;
    sub_2723785CC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_272280B00@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 144))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_272280BD8()
{
  v1 = OBJC_IVAR___DecoderConfig_useChecker;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272280C70(char a1)
{
  v3 = OBJC_IVAR___DecoderConfig_useChecker;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272280CC0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result & 1;
  return result;
}

id sub_272280E24()
{
  v1 = OBJC_IVAR___DecoderConfig_preKeywordSilence;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_272280ED8(uint64_t a1)
{
  v3 = OBJC_IVAR___DecoderConfig_preKeywordSilence;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_272280F30@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x90))();
  *a2 = result;
  return result;
}

id sub_27228109C()
{
  v1 = OBJC_IVAR___DecoderConfig_duringKeywordSilence;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_272281150(uint64_t a1)
{
  v3 = OBJC_IVAR___DecoderConfig_duringKeywordSilence;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2722811A8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA8))();
  *a2 = result;
  return result;
}

id sub_272281314()
{
  v1 = OBJC_IVAR___DecoderConfig_postKeywordSilence;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_2722813C8(uint64_t a1)
{
  v3 = OBJC_IVAR___DecoderConfig_postKeywordSilence;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_272281420@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xC0))();
  *a2 = result;
  return result;
}

id sub_27228158C()
{
  v1 = OBJC_IVAR___DecoderConfig_audioCapture;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_272281640(uint64_t a1)
{
  v3 = OBJC_IVAR___DecoderConfig_audioCapture;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_272281698@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD8))();
  *a2 = result;
  return result;
}

unint64_t sub_2722817B8()
{
  v1 = *v0;
  v2 = 0x6B63656843657375;
  if (v1 == 3)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0x7061436F69647561;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_272281868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27228D128(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27228189C(uint64_t a1)
{
  v2 = sub_2722820C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2722818D8(uint64_t a1)
{
  v2 = sub_2722820C4();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_272281914()
{
  v0[OBJC_IVAR___DecoderConfig_useChecker] = 0;
  v1 = OBJC_IVAR___DecoderConfig_preKeywordSilence;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for PreKeywordSilence()) init];
  v2 = OBJC_IVAR___DecoderConfig_duringKeywordSilence;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for DuringKeywordSilence()) init];
  v3 = OBJC_IVAR___DecoderConfig_postKeywordSilence;
  *&v0[v3] = [objc_allocWithZone(type metadata accessor for PostKeywordSilence()) init];
  v4 = OBJC_IVAR___DecoderConfig_audioCapture;
  *&v0[v4] = [objc_allocWithZone(type metadata accessor for AudioCapture()) init];
  v6.receiver = v0;
  v6.super_class = type metadata accessor for DecoderConfig();
  return objc_msgSendSuper2(&v6, sel_init);
}

char *DecoderConfig.init(from:)(uint64_t *a1)
{
  v3 = sub_2721F065C(&qword_280882348, &qword_27237F630);
  v4 = *(v3 - 8);
  v58 = v3;
  v59 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v55 - v6;
  v57 = OBJC_IVAR___DecoderConfig_useChecker;
  v1[OBJC_IVAR___DecoderConfig_useChecker] = 0;
  v8 = OBJC_IVAR___DecoderConfig_preKeywordSilence;
  v56 = type metadata accessor for PreKeywordSilence();
  v9 = [objc_allocWithZone(v56) init];
  v61 = v8;
  *&v1[v8] = v9;
  v10 = OBJC_IVAR___DecoderConfig_duringKeywordSilence;
  v11 = type metadata accessor for DuringKeywordSilence();
  v12 = [objc_allocWithZone(v11) init];
  v62 = v10;
  *&v1[v10] = v12;
  v13 = OBJC_IVAR___DecoderConfig_postKeywordSilence;
  v14 = type metadata accessor for PostKeywordSilence();
  v15 = [objc_allocWithZone(v14) init];
  v65 = v13;
  *&v1[v13] = v15;
  v16 = OBJC_IVAR___DecoderConfig_audioCapture;
  v17 = type metadata accessor for AudioCapture();
  v18 = [objc_allocWithZone(v17) init];
  v63 = v16;
  v76 = v1;
  *&v1[v16] = v18;
  v20 = a1[3];
  v19 = a1[4];
  v64 = a1;
  sub_27220300C(a1, v20);
  sub_2722820C4();
  v21 = v60;
  sub_2723787AC();
  if (v21)
  {
    v26 = v62;
    v25 = v63;
    v27 = v61;
    sub_2722039C8(v64);
    v28 = v76;

    type metadata accessor for DecoderConfig();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v60 = v11;
    v55[1] = v17;
    v55[2] = v14;
    v75 = 0;
    v23 = v57;
    v22 = v58;
    v24 = sub_27237844C();
    v30 = v24;
    v55[0] = v7;
    v31 = v61;
    v32 = v76;
    if (v24 == 2)
    {
      swift_beginAccess();
      v30 = v32[v23];
    }

    swift_beginAccess();
    v32[v23] = v30 & 1;
    v74 = 1;
    sub_27227DA80(&qword_280882350, v33, type metadata accessor for PreKeywordSilence);
    sub_27237848C();
    v34 = v73;
    v36 = v62;
    v35 = v63;
    v37 = v76;
    if (!v73)
    {
      swift_beginAccess();
      v34 = *&v37[v31];
    }

    swift_beginAccess();
    v38 = *&v37[v31];
    *&v37[v31] = v34;

    v72 = 2;
    sub_27227DA80(&qword_280882358, v39, type metadata accessor for DuringKeywordSilence);
    sub_27237848C();
    v40 = v71;
    v41 = v59;
    v42 = v76;
    if (!v71)
    {
      swift_beginAccess();
      v40 = *&v42[v36];
    }

    swift_beginAccess();
    v43 = *&v42[v36];
    *&v42[v36] = v40;

    v70 = 3;
    sub_27227DA80(&qword_280882360, v44, type metadata accessor for PostKeywordSilence);
    sub_27237848C();
    v45 = v65;
    v46 = v76;
    if (v69)
    {
      v60 = v69;
    }

    else
    {
      swift_beginAccess();
      v60 = *&v46[v45];
    }

    swift_beginAccess();
    v47 = *&v46[v45];
    *&v46[v45] = v60;

    v68 = 4;
    sub_27227DA80(&qword_280882368, v48, type metadata accessor for AudioCapture);
    v49 = v55[0];
    sub_27237848C();
    (*(v41 + 8))(v49, v22);
    v50 = v67;
    if (v67)
    {
      v51 = &selRef_environment;
      v52 = v76;
    }

    else
    {
      v52 = v76;
      swift_beginAccess();
      v50 = *&v52[v35];
      v51 = &selRef_environment;
    }

    swift_beginAccess();
    v53 = *&v52[v35];
    *&v52[v35] = v50;

    v54 = type metadata accessor for DecoderConfig();
    v66.receiver = v52;
    v66.super_class = v54;
    v28 = objc_msgSendSuper2(&v66, v51[136]);
    sub_2722039C8(v64);
  }

  return v28;
}

unint64_t sub_2722820C4()
{
  result = qword_2808886C0;
  if (!qword_2808886C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808886C0);
  }

  return result;
}

uint64_t sub_272282118(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280882370, &qword_27237F638);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_2722820C4();
  v11 = sub_2723787CC();
  v12 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0x78))(v11);
  LOBYTE(v24) = 0;
  v13 = sub_27237859C();
  if (!v2)
  {
    v14 = (*((*v12 & *v3) + 0x90))(v13);
    v24 = v14;
    HIBYTE(v23) = 1;
    type metadata accessor for PreKeywordSilence();
    sub_27227DA80(&qword_280882290, v15, type metadata accessor for PreKeywordSilence);
    sub_2723785DC();

    v16 = (*((*v12 & *v3) + 0xA8))();
    v24 = v16;
    HIBYTE(v23) = 2;
    type metadata accessor for DuringKeywordSilence();
    sub_27227DA80(&qword_2808822B8, v17, type metadata accessor for DuringKeywordSilence);
    sub_2723785DC();

    v18 = (*((*v12 & *v3) + 0xC0))();
    v24 = v18;
    HIBYTE(v23) = 3;
    type metadata accessor for PostKeywordSilence();
    sub_27227DA80(&qword_2808822F0, v19, type metadata accessor for PostKeywordSilence);
    sub_2723785DC();

    v20 = (*((*v12 & *v3) + 0xD8))();
    v24 = v20;
    HIBYTE(v23) = 4;
    type metadata accessor for AudioCapture();
    sub_27227DA80(&qword_280882318, v21, type metadata accessor for AudioCapture);
    sub_2723785DC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_272282750@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 240))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_27228285C()
{
  v1 = (v0 + OBJC_IVAR___NeuralNetworkConfig_modelPath);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_272282920(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___NeuralNetworkConfig_modelPath);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_272282980@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x68))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2722829DC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x70);

  return v4(v2, v3);
}

float sub_272282AFC()
{
  v1 = v0 + OBJC_IVAR___NeuralNetworkConfig_logThreshold;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_272282B98(float a1)
{
  v3 = (v1 + OBJC_IVAR___NeuralNetworkConfig_logThreshold);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

float sub_272282D48()
{
  v1 = v0 + OBJC_IVAR___NeuralNetworkConfig_logMinimum;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_272282DE4(float a1)
{
  v3 = (v1 + OBJC_IVAR___NeuralNetworkConfig_logMinimum);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

uint64_t sub_272282F4C()
{
  v1 = 0x7365726854676F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x6D696E694D676F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461506C65646F6DLL;
  }
}

uint64_t sub_272282FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27228D2EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_272282FE0(uint64_t a1)
{
  v2 = sub_2722834E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27228301C(uint64_t a1)
{
  v2 = sub_2722834E0();

  return MEMORY[0x2821FE720](a1, v2);
}

char *NeuralNetworkConfig.init(from:)(uint64_t *a1)
{
  v4 = sub_2721F065C(&qword_280882398, &qword_27237F640);
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  v8 = &v1[OBJC_IVAR___NeuralNetworkConfig_modelPath];
  *v8 = 0xD000000000000041;
  *(v8 + 1) = 0x800000027238BE80;
  v33 = v8;
  v9 = OBJC_IVAR___NeuralNetworkConfig_logThreshold;
  *&v1[OBJC_IVAR___NeuralNetworkConfig_logThreshold] = -1035468800;
  v10 = OBJC_IVAR___NeuralNetworkConfig_logMinimum;
  v34 = v1;
  *&v1[OBJC_IVAR___NeuralNetworkConfig_logMinimum] = -1027080192;
  v11 = a1[3];
  v12 = a1[4];
  v39 = a1;
  sub_27220300C(a1, v11);
  sub_2722834E0();
  sub_2723787AC();
  if (v2)
  {
    v16 = v33;
    sub_2722039C8(v39);
    v17 = *(v16 + 1);

    type metadata accessor for NeuralNetworkConfig();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v31 = v9;
    v30 = v10;
    v13 = v32;
    v38 = 0;
    v14 = sub_27237843C();
    v19 = v15;
    v20 = v33;
    if (v15)
    {
      v21 = v14;
    }

    else
    {
      swift_beginAccess();
      v21 = *v20;
      v19 = v20[1];
    }

    swift_beginAccess();
    v22 = v20[1];
    *v20 = v21;
    v20[1] = v19;

    v37 = 1;
    v23 = sub_27237846C();
    v24 = v23;
    v25 = v34;
    v26 = v31;
    if ((v23 & 0x100000000) != 0)
    {
      swift_beginAccess();
      v24 = *&v25[v26];
    }

    swift_beginAccess();
    *&v25[v26] = v24;
    v36 = 2;
    v27 = sub_27237846C();
    (*(v13 + 8))(v7, v4);
    v28 = v30;
    if ((v27 & 0x100000000) != 0)
    {
      swift_beginAccess();
      LODWORD(v27) = *&v28[v25];
    }

    swift_beginAccess();
    *&v28[v25] = v27;
    v29 = type metadata accessor for NeuralNetworkConfig();
    v35.receiver = v25;
    v35.super_class = v29;
    v10 = objc_msgSendSuper2(&v35, sel_init);
    sub_2722039C8(v39);
  }

  return v10;
}

unint64_t sub_2722834E0()
{
  result = qword_2808886C8;
  if (!qword_2808886C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808886C8);
  }

  return result;
}

uint64_t sub_272283534(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_2808823A0, &qword_27237F648);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_2722834E0();
  v11 = sub_2723787CC();
  v12 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0x68))(v11);
  v16[15] = 0;
  sub_27237858C();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {

    (*((*v12 & *v3) + 0x80))(v14);
    v16[14] = 1;
    v15 = sub_2723785BC();
    (*((*v12 & *v3) + 0x98))(v15);
    v16[13] = 2;
    sub_2723785BC();
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_272283940@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 176))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_272283A18()
{
  v1 = OBJC_IVAR___FeatureExtractorConfig_cmvnSlidingWindowLength;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272283AB0(uint64_t a1)
{
  v3 = OBJC_IVAR___FeatureExtractorConfig_cmvnSlidingWindowLength;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272283B00@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t sub_272283C5C()
{
  v1 = OBJC_IVAR___FeatureExtractorConfig_cmvnMinWindowLength;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272283CF4(uint64_t a1)
{
  v3 = OBJC_IVAR___FeatureExtractorConfig_cmvnMinWindowLength;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272283D44@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA0))();
  *a2 = result;
  return result;
}

uint64_t sub_272283EA0()
{
  v1 = OBJC_IVAR___FeatureExtractorConfig_spliceLeftContext;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272283F38(uint64_t a1)
{
  v3 = OBJC_IVAR___FeatureExtractorConfig_spliceLeftContext;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272283F88@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_2722840E4()
{
  v1 = OBJC_IVAR___FeatureExtractorConfig_spliceRightContext;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27228417C(uint64_t a1)
{
  v3 = OBJC_IVAR___FeatureExtractorConfig_spliceRightContext;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2722841CC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD0))();
  *a2 = result;
  return result;
}

uint64_t sub_272284328()
{
  v1 = OBJC_IVAR___FeatureExtractorConfig_downSampleStride;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2722843C0(uint64_t a1)
{
  v3 = OBJC_IVAR___FeatureExtractorConfig_downSampleStride;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272284410@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

uint64_t sub_27228456C()
{
  v1 = OBJC_IVAR___FeatureExtractorConfig_nnetIntakeFeatureLength;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272284604(uint64_t a1)
{
  v3 = OBJC_IVAR___FeatureExtractorConfig_nnetIntakeFeatureLength;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272284654@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x100))();
  *a2 = result;
  return result;
}

uint64_t sub_2722847C0()
{
  v1 = OBJC_IVAR___FeatureExtractorConfig_nnetVectorSize;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272284858(uint64_t a1)
{
  v3 = OBJC_IVAR___FeatureExtractorConfig_nnetVectorSize;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2722848A8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x118))();
  *a2 = result;
  return result;
}

unint64_t sub_2722849CC()
{
  v1 = *v0;
  v2 = 0x7463655674656E6ELL;
  if (v1 == 5)
  {
    v2 = 0xD000000000000017;
  }

  v3 = 0xD000000000000010;
  if (v1 == 3)
  {
    v3 = 0xD000000000000012;
  }

  if (*v0 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000017;
  v5 = 0xD000000000000013;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v4 = v5;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_272284ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27228D418(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_272284AF0(uint64_t a1)
{
  v2 = sub_2722851C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_272284B2C(uint64_t a1)
{
  v2 = sub_2722851C8();

  return MEMORY[0x2821FE720](a1, v2);
}

void *FeatureExtractorConfig.init(from:)(uint64_t *a1)
{
  v3 = sub_2721F065C(&qword_2808823E8, &qword_27237F650);
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v47 - v5;
  v53 = OBJC_IVAR___FeatureExtractorConfig_cmvnSlidingWindowLength;
  *&v1[OBJC_IVAR___FeatureExtractorConfig_cmvnSlidingWindowLength] = 600;
  v52 = OBJC_IVAR___FeatureExtractorConfig_cmvnMinWindowLength;
  *&v1[OBJC_IVAR___FeatureExtractorConfig_cmvnMinWindowLength] = 24;
  v51 = OBJC_IVAR___FeatureExtractorConfig_spliceLeftContext;
  *&v1[OBJC_IVAR___FeatureExtractorConfig_spliceLeftContext] = 3;
  v50 = OBJC_IVAR___FeatureExtractorConfig_spliceRightContext;
  *&v1[OBJC_IVAR___FeatureExtractorConfig_spliceRightContext] = 3;
  v7 = OBJC_IVAR___FeatureExtractorConfig_downSampleStride;
  *&v1[OBJC_IVAR___FeatureExtractorConfig_downSampleStride] = 3;
  v8 = OBJC_IVAR___FeatureExtractorConfig_nnetIntakeFeatureLength;
  *&v1[OBJC_IVAR___FeatureExtractorConfig_nnetIntakeFeatureLength] = 8;
  v9 = OBJC_IVAR___FeatureExtractorConfig_nnetVectorSize;
  v57 = v1;
  *&v1[OBJC_IVAR___FeatureExtractorConfig_nnetVectorSize] = 280;
  v10 = a1[3];
  v11 = a1[4];
  v66 = a1;
  v12 = sub_27220300C(a1, v10);
  sub_2722851C8();
  v13 = v56;
  sub_2723787AC();
  if (v13)
  {
    sub_2722039C8(v66);
    type metadata accessor for FeatureExtractorConfig();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v53;
    v15 = v54;
    v56 = v7;
    v48 = v9;
    v49 = v8;
    v65 = 0;
    v16 = v55;
    v17 = sub_27237847C();
    v18 = v57;
    if (v19)
    {
      swift_beginAccess();
      v20 = *&v18[v14];
    }

    else
    {
      v20 = v17;
    }

    swift_beginAccess();
    *&v18[v14] = v20;
    v64 = 1;
    v21 = sub_27237847C();
    if (v22)
    {
      v23 = v52;
      swift_beginAccess();
      v24 = *&v18[v23];
    }

    else
    {
      v24 = v21;
      v23 = v52;
    }

    swift_beginAccess();
    *&v18[v23] = v24;
    v63 = 2;
    v25 = sub_27237847C();
    if (v26)
    {
      v28 = v51;
      swift_beginAccess();
      v29 = *&v18[v28];
    }

    else
    {
      v29 = v25;
      v28 = v51;
    }

    swift_beginAccess();
    *&v18[v28] = v29;
    v62 = 3;
    v30 = sub_27237847C();
    if (v31)
    {
      v32 = v50;
      swift_beginAccess();
      v33 = *&v18[v32];
    }

    else
    {
      v33 = v30;
      v32 = v50;
    }

    swift_beginAccess();
    *&v18[v32] = v33;
    v61 = 4;
    v34 = sub_27237847C();
    if (v35)
    {
      v36 = v56;
      swift_beginAccess();
      v37 = *&v18[v36];
    }

    else
    {
      v37 = v34;
      v36 = v56;
    }

    swift_beginAccess();
    *&v18[v36] = v37;
    v60 = 5;
    v38 = sub_27237847C();
    if (v39)
    {
      v40 = v49;
      swift_beginAccess();
      v41 = *&v18[v40];
    }

    else
    {
      v41 = v38;
      v40 = v49;
    }

    swift_beginAccess();
    *&v18[v40] = v41;
    v59 = 6;
    v42 = sub_27237847C();
    v44 = v43;
    (*(v15 + 8))(v6, v16);
    v45 = v48;
    if (v44)
    {
      swift_beginAccess();
      v42 = *&v18[v45];
    }

    swift_beginAccess();
    *&v18[v45] = v42;
    v46 = type metadata accessor for FeatureExtractorConfig();
    v58.receiver = v18;
    v58.super_class = v46;
    v12 = objc_msgSendSuper2(&v58, sel_init);
    sub_2722039C8(v66);
  }

  return v12;
}

unint64_t sub_2722851C8()
{
  result = qword_2808886D0;
  if (!qword_2808886D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808886D0);
  }

  return result;
}

uint64_t sub_27228521C(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_2808823F0, &qword_27237F658);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_2722851C8();
  v11 = sub_2723787CC();
  v12 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0x88))(v11);
  v20[15] = 0;
  v13 = sub_2723785CC();
  if (!v2)
  {
    (*((*v12 & *v3) + 0xA0))(v13);
    v20[14] = 1;
    v14 = sub_2723785CC();
    (*((*v12 & *v3) + 0xB8))(v14);
    v20[13] = 2;
    v15 = sub_2723785CC();
    (*((*v12 & *v3) + 0xD0))(v15);
    v20[12] = 3;
    v16 = sub_2723785CC();
    (*((*v12 & *v3) + 0xE8))(v16);
    v20[11] = 4;
    v17 = sub_2723785CC();
    (*((*v12 & *v3) + 0x100))(v17);
    v20[10] = 5;
    v18 = sub_2723785CC();
    (*((*v12 & *v3) + 0x118))(v18);
    v20[9] = 6;
    sub_2723785CC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_272285744@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 304))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_272285824()
{
  v1 = OBJC_IVAR___RuntimeConfig_audioDebug;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2722858BC(char a1)
{
  v3 = OBJC_IVAR___RuntimeConfig_audioDebug;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27228590C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x80))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_272285A6C()
{
  v1 = OBJC_IVAR___RuntimeConfig_batchDecode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272285B04(char a1)
{
  v3 = OBJC_IVAR___RuntimeConfig_batchDecode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272285B54@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x98))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_272285CB4()
{
  v1 = OBJC_IVAR___RuntimeConfig_preKeywordSilence;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272285D4C(char a1)
{
  v3 = OBJC_IVAR___RuntimeConfig_preKeywordSilence;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272285D9C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_272285EFC()
{
  v1 = OBJC_IVAR___RuntimeConfig_duringKeywordSilence;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272285F94(char a1)
{
  v3 = OBJC_IVAR___RuntimeConfig_duringKeywordSilence;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272285FE4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xC8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_272286144()
{
  v1 = OBJC_IVAR___RuntimeConfig_postKeywordSilence;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2722861DC(char a1)
{
  v3 = OBJC_IVAR___RuntimeConfig_postKeywordSilence;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27228622C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_27228638C()
{
  v1 = OBJC_IVAR___RuntimeConfig_secondPass;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_272286424(char a1)
{
  v3 = OBJC_IVAR___RuntimeConfig_secondPass;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_272286474@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xF8))();
  *a2 = result & 1;
  return result;
}

unint64_t sub_272286594()
{
  v1 = *v0;
  v2 = 0x6265446F69647561;
  if (v1 == 4)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0x6150646E6F636573;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000014;
  }

  v4 = 0x6365446863746162;
  if (v1 != 1)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_272286664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27228D66C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_272286698(uint64_t a1)
{
  v2 = sub_272286CAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2722866D4(uint64_t a1)
{
  v2 = sub_272286CAC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *RuntimeConfig.init(from:)(uint64_t *a1)
{
  v3 = sub_2721F065C(&qword_280882430, &qword_27237F660);
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v36 - v5;
  v41 = OBJC_IVAR___RuntimeConfig_audioDebug;
  v1[OBJC_IVAR___RuntimeConfig_audioDebug] = 0;
  v39 = OBJC_IVAR___RuntimeConfig_batchDecode;
  v1[OBJC_IVAR___RuntimeConfig_batchDecode] = 0;
  v40 = OBJC_IVAR___RuntimeConfig_preKeywordSilence;
  v1[OBJC_IVAR___RuntimeConfig_preKeywordSilence] = 1;
  v7 = OBJC_IVAR___RuntimeConfig_duringKeywordSilence;
  v1[OBJC_IVAR___RuntimeConfig_duringKeywordSilence] = 1;
  v8 = OBJC_IVAR___RuntimeConfig_postKeywordSilence;
  v1[OBJC_IVAR___RuntimeConfig_postKeywordSilence] = 0;
  v9 = OBJC_IVAR___RuntimeConfig_secondPass;
  v52 = v1;
  v1[OBJC_IVAR___RuntimeConfig_secondPass] = 0;
  v10 = a1[3];
  v11 = a1[4];
  v45 = a1;
  v12 = sub_27220300C(a1, v10);
  sub_272286CAC();
  v13 = v44;
  sub_2723787AC();
  if (v13)
  {
    sub_2722039C8(v45);
    type metadata accessor for RuntimeConfig();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v41;
    v15 = v42;
    v44 = v7;
    v37 = v8;
    v38 = v9;
    v51 = 0;
    v16 = v43;
    v17 = v6;
    v18 = sub_27237844C();
    v19 = v52;
    if (v18 == 2)
    {
      swift_beginAccess();
      v18 = v19[v14];
    }

    swift_beginAccess();
    v19[v14] = v18 & 1;
    v50 = 1;
    v20 = sub_27237844C();
    v21 = v15;
    v22 = v39;
    if (v20 == 2)
    {
      swift_beginAccess();
      v20 = v19[v22];
    }

    v23 = v40;
    swift_beginAccess();
    v19[v22] = v20 & 1;
    v49 = 2;
    v24 = sub_27237844C();
    if (v24 == 2)
    {
      swift_beginAccess();
      v24 = v19[v23];
    }

    swift_beginAccess();
    v19[v23] = v24 & 1;
    v48 = 3;
    v25 = sub_27237844C();
    if (v25 == 2)
    {
      v26 = v44;
      swift_beginAccess();
      v27 = v26;
      v25 = v19[v26];
    }

    else
    {
      v27 = v44;
    }

    v28 = v27;
    swift_beginAccess();
    v19[v28] = v25 & 1;
    v47 = 4;
    v29 = sub_27237844C();
    v31 = v29;
    (*(v21 + 8))(v17, v16);
    v32 = v37;
    if (v31 == 2)
    {
      v33 = v52;
      swift_beginAccess();
      v31 = v33[v32];
      v34 = v38;
    }

    else
    {
      v34 = v38;
      v33 = v52;
    }

    swift_beginAccess();
    v33[v32] = v31 & 1;
    swift_beginAccess();
    v33[v34] = 0;
    v35 = type metadata accessor for RuntimeConfig();
    v46.receiver = v33;
    v46.super_class = v35;
    v12 = objc_msgSendSuper2(&v46, sel_init);
    sub_2722039C8(v45);
  }

  return v12;
}

unint64_t sub_272286CAC()
{
  result = qword_2808886D8;
  if (!qword_2808886D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808886D8);
  }

  return result;
}

uint64_t sub_272286D00(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280882438, &qword_27237F668);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_272286CAC();
  v11 = sub_2723787CC();
  v12 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0x80))(v11);
  v19[15] = 0;
  v13 = sub_27237859C();
  if (!v2)
  {
    (*((*v12 & *v3) + 0x98))(v13);
    v19[14] = 1;
    v14 = sub_27237859C();
    (*((*v12 & *v3) + 0xB0))(v14);
    v19[13] = 2;
    v15 = sub_27237859C();
    (*((*v12 & *v3) + 0xC8))(v15);
    v19[12] = 3;
    v16 = sub_27237859C();
    (*((*v12 & *v3) + 0xE0))(v16);
    v19[11] = 4;
    v17 = sub_27237859C();
    (*((*v12 & *v3) + 0xF8))(v17);
    v19[10] = 5;
    sub_27237859C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2722871DC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 272))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_272287274()
{
  sub_27221982C(0, &qword_280882130, 0x277D86200);
  result = OS_os_log.init(category:)();
  qword_280893A90 = result;
  return result;
}

id sub_272287378()
{
  v1 = OBJC_IVAR___VATConfiguration_neuralNetwork;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_27228742C(uint64_t a1)
{
  v3 = OBJC_IVAR___VATConfiguration_neuralNetwork;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_272287484@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

id sub_2722875F0()
{
  v1 = OBJC_IVAR___VATConfiguration_featureExtractor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_2722876A4(uint64_t a1)
{
  v3 = OBJC_IVAR___VATConfiguration_featureExtractor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2722876FC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x90))();
  *a2 = result;
  return result;
}

id sub_272287868()
{
  v1 = OBJC_IVAR___VATConfiguration_decoder;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_27228791C(uint64_t a1)
{
  v3 = OBJC_IVAR___VATConfiguration_decoder;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_272287974@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA8))();
  *a2 = result;
  return result;
}

id sub_272287AE0()
{
  v1 = OBJC_IVAR___VATConfiguration_secondPass;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_272287B94(uint64_t a1)
{
  v3 = OBJC_IVAR___VATConfiguration_secondPass;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_272287BEC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xC0))();
  *a2 = result;
  return result;
}

id sub_272287D58()
{
  v1 = OBJC_IVAR___VATConfiguration_runtime;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_272287E0C(uint64_t a1)
{
  v3 = OBJC_IVAR___VATConfiguration_runtime;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_272287E64@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD8))();
  *a2 = result;
  return result;
}

unint64_t sub_272287F84()
{
  v1 = *v0;
  v2 = 0x654E6C617275656ELL;
  v3 = 0x7265646F636564;
  v4 = 0x6150646E6F636573;
  if (v1 != 3)
  {
    v4 = 0x656D69746E7572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_272288034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27228D878(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27228805C(uint64_t a1)
{
  v2 = sub_2722888E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_272288098(uint64_t a1)
{
  v2 = sub_2722888E8();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_2722880D4()
{
  v1 = OBJC_IVAR___VATConfiguration_neuralNetwork;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for NeuralNetworkConfig()) init];
  v2 = OBJC_IVAR___VATConfiguration_featureExtractor;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for FeatureExtractorConfig()) init];
  v3 = OBJC_IVAR___VATConfiguration_decoder;
  *&v0[v3] = [objc_allocWithZone(type metadata accessor for DecoderConfig()) init];
  v4 = OBJC_IVAR___VATConfiguration_secondPass;
  *&v0[v4] = [objc_allocWithZone(type metadata accessor for SecondPassConfig()) init];
  v5 = OBJC_IVAR___VATConfiguration_runtime;
  *&v0[v5] = [objc_allocWithZone(type metadata accessor for RuntimeConfig()) init];
  v7.receiver = v0;
  v7.super_class = type metadata accessor for VATConfiguration();
  return objc_msgSendSuper2(&v7, sel_init);
}

char *VATConfiguration.init(from:)(uint64_t *a1)
{
  v3 = sub_2721F065C(&qword_280882470, &qword_27237F670);
  v60 = *(v3 - 8);
  v61 = v3;
  v4 = *(v60 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v57 - v5);
  v7 = OBJC_IVAR___VATConfiguration_neuralNetwork;
  v59 = type metadata accessor for NeuralNetworkConfig();
  v8 = [objc_allocWithZone(v59) init];
  v64 = v7;
  *&v1[v7] = v8;
  v9 = OBJC_IVAR___VATConfiguration_featureExtractor;
  v58 = type metadata accessor for FeatureExtractorConfig();
  v10 = [objc_allocWithZone(v58) init];
  v63 = v9;
  *&v1[v9] = v10;
  v11 = OBJC_IVAR___VATConfiguration_decoder;
  v57 = type metadata accessor for DecoderConfig();
  v12 = [objc_allocWithZone(v57) init];
  v67 = v11;
  *&v1[v11] = v12;
  v13 = OBJC_IVAR___VATConfiguration_secondPass;
  v14 = [objc_allocWithZone(type metadata accessor for SecondPassConfig()) init];
  v66 = v13;
  *&v1[v13] = v14;
  v15 = OBJC_IVAR___VATConfiguration_runtime;
  v16 = type metadata accessor for RuntimeConfig();
  v17 = [objc_allocWithZone(v16) init];
  v18 = v15;
  v79 = v1;
  *&v1[v15] = v17;
  v20 = a1[3];
  v19 = a1[4];
  v65 = a1;
  sub_27220300C(a1, v20);
  sub_2722888E8();
  v21 = v62;
  sub_2723787AC();
  if (v21)
  {
    v24 = v63;
    v23 = v64;
    sub_2722039C8(v65);
    v25 = v79;

    type metadata accessor for VATConfiguration();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v62 = v16;
    v78 = 0;
    sub_27227DA80(&qword_280882478, v22, type metadata accessor for NeuralNetworkConfig);
    sub_27237848C();
    v27 = v77;
    v28 = v64;
    v59 = v6;
    v29 = v79;
    if (!v77)
    {
      swift_beginAccess();
      v27 = *&v29[v28];
    }

    swift_beginAccess();
    v30 = *&v29[v28];
    *&v29[v28] = v27;

    v76 = 1;
    sub_27227DA80(&qword_280882480, v31, type metadata accessor for FeatureExtractorConfig);
    sub_27237848C();
    v32 = v75;
    v33 = v63;
    v34 = v79;
    if (!v75)
    {
      swift_beginAccess();
      v32 = *&v34[v33];
    }

    swift_beginAccess();
    v35 = *&v34[v33];
    *&v34[v33] = v32;

    v74 = 2;
    sub_27227DA80(&qword_280882488, v36, type metadata accessor for DecoderConfig);
    sub_27237848C();
    v37 = v73;
    v38 = v67;
    v39 = v79;
    if (!v73)
    {
      swift_beginAccess();
      v37 = *&v39[v38];
    }

    swift_beginAccess();
    v40 = *&v39[v38];
    *&v39[v38] = v37;

    v72 = 3;
    sub_27227DA80(&qword_280882490, v41, type metadata accessor for SecondPassConfig);
    sub_27237848C();
    v42 = v71;
    if (v71)
    {
      v43 = v66;
      v44 = v79;
    }

    else
    {
      v45 = v66;
      v44 = v79;
      swift_beginAccess();
      v46 = *&v44[v45];
      v43 = v45;
      v42 = v46;
    }

    v47 = v43;
    swift_beginAccess();
    v48 = *&v44[v47];
    *&v44[v47] = v42;

    v70 = 4;
    sub_27227DA80(&qword_280882498, v49, type metadata accessor for RuntimeConfig);
    v50 = v61;
    v51 = v59;
    sub_27237848C();
    (*(v60 + 8))(v51, v50);
    v52 = v69;
    if (v69)
    {
      v53 = &selRef_environment;
      v54 = v79;
    }

    else
    {
      v54 = v79;
      swift_beginAccess();
      v52 = *&v54[v18];
      v53 = &selRef_environment;
    }

    swift_beginAccess();
    v55 = *&v54[v18];
    *&v54[v18] = v52;

    v56 = type metadata accessor for VATConfiguration();
    v68.receiver = v54;
    v68.super_class = v56;
    v25 = objc_msgSendSuper2(&v68, v53[136]);
    sub_2722039C8(v65);
  }

  return v25;
}

unint64_t sub_2722888E8()
{
  result = qword_2808886E0[0];
  if (!qword_2808886E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2808886E0);
  }

  return result;
}

uint64_t sub_27228893C(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_2808824A0, &qword_27237F678);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_2722888E8();
  v11 = sub_2723787CC();
  v12 = MEMORY[0x277D85000];
  v13 = (*((*MEMORY[0x277D85000] & *v3) + 0x78))(v11);
  v25 = v13;
  HIBYTE(v24) = 0;
  type metadata accessor for NeuralNetworkConfig();
  sub_27227DA80(&qword_2808823A8, v14, type metadata accessor for NeuralNetworkConfig);
  sub_2723785DC();
  if (v2)
  {
  }

  else
  {

    v15 = (*((*v12 & *v3) + 0x90))();
    v25 = v15;
    HIBYTE(v24) = 1;
    type metadata accessor for FeatureExtractorConfig();
    sub_27227DA80(&qword_2808823F8, v16, type metadata accessor for FeatureExtractorConfig);
    sub_2723785DC();

    v18 = (*((*v12 & *v3) + 0xA8))();
    v25 = v18;
    HIBYTE(v24) = 2;
    type metadata accessor for DecoderConfig();
    sub_27227DA80(&qword_280882378, v19, type metadata accessor for DecoderConfig);
    sub_2723785DC();

    v20 = (*((*v12 & *v3) + 0xC0))();
    v25 = v20;
    HIBYTE(v24) = 3;
    type metadata accessor for SecondPassConfig();
    sub_27227DA80(&qword_280882260, v21, type metadata accessor for SecondPassConfig);
    sub_2723785DC();

    v22 = (*((*v12 & *v3) + 0xD8))();
    v25 = v22;
    HIBYTE(v24) = 4;
    type metadata accessor for RuntimeConfig();
    sub_27227DA80(&qword_280882440, v23, type metadata accessor for RuntimeConfig);
    sub_2723785DC();
  }

  return (*(v6 + 8))(v9, v5);
}

char *VATConfiguration.init(filename:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR___VATConfiguration_neuralNetwork;
  v54 = type metadata accessor for NeuralNetworkConfig();
  *&v2[v6] = [objc_allocWithZone(v54) init];
  v7 = OBJC_IVAR___VATConfiguration_featureExtractor;
  v55 = type metadata accessor for FeatureExtractorConfig();
  *&v2[v7] = [objc_allocWithZone(v55) init];
  v8 = OBJC_IVAR___VATConfiguration_decoder;
  v56 = type metadata accessor for DecoderConfig();
  *&v2[v8] = [objc_allocWithZone(v56) init];
  v9 = OBJC_IVAR___VATConfiguration_secondPass;
  v57 = type metadata accessor for SecondPassConfig();
  *&v2[v9] = [objc_allocWithZone(v57) init];
  v10 = OBJC_IVAR___VATConfiguration_runtime;
  v58 = type metadata accessor for RuntimeConfig();
  *&v3[v10] = [objc_allocWithZone(v58) init];
  v11 = sub_27228953C(a1, a2);
  v12 = v11;
  if (v13)
  {
    v52 = v6;
    v53 = v9;
    if (v11 != 0x8000000000000000)
    {
      v61 = v10;
      if (qword_280888690 != -1)
      {
        swift_once();
      }

      sub_2721F065C(&qword_280881CB0, qword_27237D820);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_27237AF90;
      *(v32 + 56) = MEMORY[0x277D837D0];
      *(v32 + 64) = sub_27225CAF0();
      v33 = 0x3E6C696E3CLL;
      if (a2)
      {
        v33 = a1;
      }

      v34 = 0xE500000000000000;
      if (a2)
      {
        v34 = a2;
      }

      *(v32 + 32) = v33;
      *(v32 + 40) = v34;
      sub_272204304();
      v35 = swift_allocError();
      *v36 = v12;
      sub_272289964(v12);
      v37 = sub_272376C5C();
      *(v32 + 96) = sub_27221982C(0, &qword_2808820E8, 0x277CCA9B8);
      *(v32 + 104) = sub_27225CB44();
      *(v32 + 72) = v37;

      OS_os_log.error(_:_:)("Error parsing %@: %@", 20, 2, v32);

      v14 = v52;
      v16 = v53;
      goto LABEL_16;
    }

    if (a2)
    {
      v61 = v10;
      v14 = v6;
      if (qword_280888690 != -1)
      {
        swift_once();
      }

      sub_2721F065C(&qword_280881CB0, qword_27237D820);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_27237AF80;
      *(v15 + 56) = MEMORY[0x277D837D0];
      *(v15 + 64) = sub_27225CAF0();
      *(v15 + 32) = a1;
      *(v15 + 40) = a2;
      OS_os_log.error(_:_:)("Custom config file not found, using defaults: %@", 48, 2, v15);

      v12 = 0x8000000000000000;
      sub_272204304();
      v16 = v53;
LABEL_16:
      swift_allocError();
      *v38 = v12;
      swift_willThrow();

      type metadata accessor for VATConfiguration();
      swift_deallocPartialClassInstance();
      return v3;
    }

    v40 = v10;
    if (qword_280888690 != -1)
    {
      swift_once();
    }

    sub_2721F065C(&qword_280881CB0, qword_27237D820);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_27237AF80;
    *(v41 + 56) = MEMORY[0x277D837D0];
    *(v41 + 64) = sub_27225CAF0();
    *(v41 + 32) = 0x3E6C696E3CLL;
    *(v41 + 40) = 0xE500000000000000;
    OS_os_log.error(_:_:)("Default Config file not found, using defaults: %@", 49, 2, v41);

    v42 = [objc_allocWithZone(v54) init];
    swift_beginAccess();
    v43 = *&v3[v6];
    *&v3[v6] = v42;

    v44 = [objc_allocWithZone(v55) init];
    swift_beginAccess();
    v45 = *&v3[v7];
    *&v3[v7] = v44;

    v46 = [objc_allocWithZone(v56) init];
    swift_beginAccess();
    v47 = *&v3[v8];
    *&v3[v8] = v46;

    v48 = [objc_allocWithZone(v57) init];
    swift_beginAccess();
    v49 = *&v3[v9];
    *&v3[v9] = v48;

    v50 = [objc_allocWithZone(v58) init];
    swift_beginAccess();
    v51 = *&v3[v40];
    *&v3[v40] = v50;

    v60.receiver = v3;
    v60.super_class = type metadata accessor for VATConfiguration();
    v3 = objc_msgSendSuper2(&v60, sel_init);
    v30 = 0x8000000000000000;
    v31 = 1;
  }

  else
  {

    v18 = MEMORY[0x277D85000];
    v19 = v10;
    v20 = (*((*MEMORY[0x277D85000] & *v12) + 0x78))(v17);
    swift_beginAccess();
    v21 = *&v3[v6];
    *&v3[v6] = v20;

    v22 = (*((*v18 & *v12) + 0x90))();
    swift_beginAccess();
    v23 = *&v3[v7];
    *&v3[v7] = v22;

    v24 = (*((*v18 & *v12) + 0xA8))();
    swift_beginAccess();
    v25 = *&v3[v8];
    *&v3[v8] = v24;

    v26 = (*((*v18 & *v12) + 0xC0))();
    swift_beginAccess();
    v27 = *&v3[v9];
    *&v3[v9] = v26;

    v28 = (*((*v18 & *v12) + 0xD8))();
    swift_beginAccess();
    v29 = *&v3[v19];
    *&v3[v19] = v28;

    v59.receiver = v3;
    v59.super_class = type metadata accessor for VATConfiguration();
    v3 = objc_msgSendSuper2(&v59, sel_init);
    v30 = v12;
    v31 = 0;
  }

  sub_272289980(v30, v31);
  return v3;
}

unint64_t sub_27228953C(uint64_t a1, unint64_t a2)
{
  v4 = sub_272376D5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v30 - v10;
  type metadata accessor for VATConfiguration();
  if (!a2)
  {
    goto LABEL_7;
  }

  v12 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
LABEL_7:
    v16 = sub_2723777FC();
    v17 = [v16 stringByDeletingPathExtension];

    sub_27237782C();
    sub_272376CAC();
    sub_272376C8C();
    (*(v5 + 8))(v9, v4);
    sub_2722560E0();
    v19 = v18;

    if (v19)
    {
      sub_272376CAC();

      goto LABEL_9;
    }

    if (qword_280888690 != -1)
    {
      swift_once();
    }

    sub_2721F065C(&qword_280881CB0, qword_27237D820);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_27237AF80;
    *(v20 + 56) = MEMORY[0x277D837D0];
    *(v20 + 64) = sub_27225CAF0();
    *(v20 + 32) = 0x6A2E6769666E6F63;
    *(v20 + 40) = 0xEB000000006E6F73;
    OS_os_log.error(_:_:)("File not found: %@", 18, 2, v20);

    return 0x8000000000000000;
  }

  v13 = [objc_opt_self() defaultManager];
  v14 = sub_2723777FC();
  v15 = [v13 isReadableFileAtPath_];

  if ((v15 & 1) == 0)
  {
    return 0x8000000000000000;
  }

  sub_272376CAC();
LABEL_9:
  v21 = sub_272376D6C();
  v23 = v22;
  v24 = sub_272376ABC();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  sub_272376AAC();
  sub_27227DA80(&qword_2808824B0, v27, type metadata accessor for VATConfiguration);
  sub_272376A9C();
  (*(v5 + 8))(v11, v4);

  sub_2721F05C8(v21, v23);
  return v30[2];
}

unint64_t sub_272289964(unint64_t result)
{
  if (result >> 62)
  {
    if (result >> 62 != 1)
    {
      return result;
    }

    result &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  return result;
}

void sub_272289980(unint64_t a1, char a2)
{
  if (a2)
  {
    sub_27222F3F8(a1);
  }

  else
  {
  }
}

void sub_272289A1C(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x78);
  v7 = v6();
  v8 = (*((*v5 & *v7) + 0x68))();
  v10 = v9;

  v11 = v6();

  MEMORY[0x2743C4AD0](47, 0xE100000000000000);

  MEMORY[0x2743C4AD0](v8, v10);

  (*((*v5 & *v11) + 0x70))(a1, a2);
}

uint64_t sub_272289D78()
{
  v0 = sub_272376B3C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_272376B2C();
  type metadata accessor for VATConfiguration();
  sub_27227DA80(&qword_2808824A8, v3, type metadata accessor for VATConfiguration);
  v4 = sub_272376B1C();
  v6 = v5;

  v7 = sub_272289EA0();
  if (v8)
  {
    v9 = v7;
    sub_2721F05C8(v4, v6);
    return v9;
  }

  else
  {
    sub_2721F05C8(v4, v6);
    return 0x3E6C696E3CLL;
  }
}

uint64_t sub_272289EA0()
{
  v24 = *MEMORY[0x277D85DE8];
  v0 = sub_27237788C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = objc_opt_self();
  v3 = sub_272376D7C();
  v22[0] = 0;
  v4 = [v2 JSONObjectWithData:v3 options:0 error:v22];

  v5 = v22[0];
  if (!v4)
  {
    v16 = v5;
    v17 = sub_272376C6C();

    swift_willThrow();
    goto LABEL_7;
  }

  sub_27237814C();
  swift_unknownObjectRelease();
  sub_27221981C(v21, v22);
  sub_27220300C(v22, v23);
  v6 = sub_27237864C();
  *&v21[0] = 0;
  v7 = [v2 dataWithJSONObject:v6 options:9 error:v21];
  swift_unknownObjectRelease();
  v8 = *&v21[0];
  if (!v7)
  {
    v18 = v8;
    v19 = sub_272376C6C();

    swift_willThrow();
    sub_2722039C8(v22);
    goto LABEL_7;
  }

  v9 = sub_272376D8C();
  v11 = v10;

  sub_27237787C();
  v12 = sub_27237784C();
  v14 = v13;
  sub_2721F05C8(v9, v11);
  sub_2722039C8(v22);
  if (!v14)
  {
LABEL_7:
    result = 0;
    goto LABEL_8;
  }

  result = v12;
LABEL_8:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_27228A0E0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_27228A194@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 240))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_27228A23C(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_27228A258(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_27228A2B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_27228A314(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_27228C118()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_27228C16C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_27228C190(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 65))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 64);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27228C1CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_27228C21C(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 64) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for FeatureExtractorConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FeatureExtractorConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_27228C440()
{
  result = qword_280889370[0];
  if (!qword_280889370[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280889370);
  }

  return result;
}

unint64_t sub_27228C498()
{
  result = qword_280889580[0];
  if (!qword_280889580[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280889580);
  }

  return result;
}

unint64_t sub_27228C4F0()
{
  result = qword_280889790[0];
  if (!qword_280889790[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280889790);
  }

  return result;
}

unint64_t sub_27228C548()
{
  result = qword_2808899A0[0];
  if (!qword_2808899A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2808899A0);
  }

  return result;
}

unint64_t sub_27228C5A0()
{
  result = qword_280889BB0[0];
  if (!qword_280889BB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280889BB0);
  }

  return result;
}

unint64_t sub_27228C5F8()
{
  result = qword_280889DC0[0];
  if (!qword_280889DC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280889DC0);
  }

  return result;
}

unint64_t sub_27228C650()
{
  result = qword_280889FD0[0];
  if (!qword_280889FD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280889FD0);
  }

  return result;
}

unint64_t sub_27228C6A8()
{
  result = qword_28088A1E0[0];
  if (!qword_28088A1E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088A1E0);
  }

  return result;
}

unint64_t sub_27228C700()
{
  result = qword_28088A3F0[0];
  if (!qword_28088A3F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088A3F0);
  }

  return result;
}

unint64_t sub_27228C758()
{
  result = qword_28088A600[0];
  if (!qword_28088A600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088A600);
  }

  return result;
}

unint64_t sub_27228C7B0()
{
  result = qword_28088A710;
  if (!qword_28088A710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088A710);
  }

  return result;
}

unint64_t sub_27228C808()
{
  result = qword_28088A718[0];
  if (!qword_28088A718[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088A718);
  }

  return result;
}

unint64_t sub_27228C860()
{
  result = qword_28088A7A0;
  if (!qword_28088A7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088A7A0);
  }

  return result;
}

unint64_t sub_27228C8B8()
{
  result = qword_28088A7A8[0];
  if (!qword_28088A7A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088A7A8);
  }

  return result;
}

unint64_t sub_27228C910()
{
  result = qword_28088A830;
  if (!qword_28088A830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088A830);
  }

  return result;
}

unint64_t sub_27228C968()
{
  result = qword_28088A838[0];
  if (!qword_28088A838[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088A838);
  }

  return result;
}

unint64_t sub_27228C9C0()
{
  result = qword_28088A8C0;
  if (!qword_28088A8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088A8C0);
  }

  return result;
}

unint64_t sub_27228CA18()
{
  result = qword_28088A8C8[0];
  if (!qword_28088A8C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088A8C8);
  }

  return result;
}

unint64_t sub_27228CA70()
{
  result = qword_28088A950;
  if (!qword_28088A950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088A950);
  }

  return result;
}

unint64_t sub_27228CAC8()
{
  result = qword_28088A958[0];
  if (!qword_28088A958[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088A958);
  }

  return result;
}

unint64_t sub_27228CB20()
{
  result = qword_28088A9E0;
  if (!qword_28088A9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088A9E0);
  }

  return result;
}

unint64_t sub_27228CB78()
{
  result = qword_28088A9E8[0];
  if (!qword_28088A9E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088A9E8);
  }

  return result;
}

unint64_t sub_27228CBD0()
{
  result = qword_28088AA70;
  if (!qword_28088AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088AA70);
  }

  return result;
}

unint64_t sub_27228CC28()
{
  result = qword_28088AA78;
  if (!qword_28088AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088AA78);
  }

  return result;
}

unint64_t sub_27228CC80()
{
  result = qword_28088AB00;
  if (!qword_28088AB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088AB00);
  }

  return result;
}

unint64_t sub_27228CCD8()
{
  result = qword_28088AB08[0];
  if (!qword_28088AB08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088AB08);
  }

  return result;
}

unint64_t sub_27228CD30()
{
  result = qword_28088AB90;
  if (!qword_28088AB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088AB90);
  }

  return result;
}

unint64_t sub_27228CD88()
{
  result = qword_28088AB98[0];
  if (!qword_28088AB98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088AB98);
  }

  return result;
}

unint64_t sub_27228CDE0()
{
  result = qword_28088AC20;
  if (!qword_28088AC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088AC20);
  }

  return result;
}

unint64_t sub_27228CE38()
{
  result = qword_28088AC28[0];
  if (!qword_28088AC28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088AC28);
  }

  return result;
}

uint64_t sub_27228CE8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B6361626B6F6F6CLL && a2 == 0xEE0073656D617246;
  if (v4 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000027238C070 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000027238C090 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_27237865C();

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

uint64_t sub_27228CFBC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000027238C1B0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x800000027238C1D0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000027238C090 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000022 && 0x800000027238C1F0 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_27237865C();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_27228D128(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B63656843657375 && a2 == 0xEA00000000007265;
  if (v4 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000027238C340 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000027238C380 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000027238C3C0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7061436F69647561 && a2 == 0xEC00000065727574)
  {

    return 4;
  }

  else
  {
    v6 = sub_27237865C();

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

uint64_t sub_27228D2EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461506C65646F6DLL && a2 == 0xE900000000000068;
  if (v4 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365726854676F6CLL && a2 == 0xEC000000646C6F68 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D696E694D676F6CLL && a2 == 0xEA00000000006D75)
  {

    return 2;
  }

  else
  {
    v6 = sub_27237865C();

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

uint64_t sub_27228D418(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x800000027238C5C0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000027238C5E0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000027238C600 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000027238C620 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000027238C640 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x800000027238C660 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7463655674656E6ELL && a2 == 0xEE00657A6953726FLL)
  {

    return 6;
  }

  else
  {
    v5 = sub_27237865C();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_27228D66C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6265446F69647561 && a2 == 0xEA00000000006775;
  if (v4 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6365446863746162 && a2 == 0xEB0000000065646FLL || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000027238C340 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000027238C380 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000027238C3C0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6150646E6F636573 && a2 == 0xEA00000000007373)
  {

    return 5;
  }

  else
  {
    v6 = sub_27237865C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_27228D878(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654E6C617275656ELL && a2 == 0xED00006B726F7774;
  if (v4 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000272388330 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265646F636564 && a2 == 0xE700000000000000 || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6150646E6F636573 && a2 == 0xEA00000000007373 || (sub_27237865C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D69746E7572 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_27237865C();

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

VoiceActions::VASilenceModelFeatureCount_optional __swiftcall VASilenceModelFeatureCount.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 80)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 40)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t VASilenceModelFeatureCount.rawValue.getter()
{
  if (*v0)
  {
    return 80;
  }

  else
  {
    return 40;
  }
}

uint64_t sub_27228DAD0()
{
  v1 = *v0;
  sub_27237874C();
  if (v1)
  {
    v2 = 80;
  }

  else
  {
    v2 = 40;
  }

  MEMORY[0x2743C58B0](v2);
  return sub_27237878C();
}

uint64_t sub_27228DB24()
{
  if (*v0)
  {
    v1 = 80;
  }

  else
  {
    v1 = 40;
  }

  return MEMORY[0x2743C58B0](v1);
}

uint64_t sub_27228DB60()
{
  v1 = *v0;
  sub_27237874C();
  if (v1)
  {
    v2 = 80;
  }

  else
  {
    v2 = 40;
  }

  MEMORY[0x2743C58B0](v2);
  return sub_27237878C();
}

void *sub_27228DBB0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 80)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 40)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_27228DBD0(uint64_t *a1@<X8>)
{
  v2 = 40;
  if (*v1)
  {
    v2 = 80;
  }

  *a1 = v2;
}

uint64_t sub_27228DC9C(uint64_t a1, unint64_t a2, char *a3)
{
  v6 = swift_allocObject();
  sub_27228DD04(a1, a2, a3);
  return v6;
}

uint64_t sub_27228DD04(uint64_t a1, unint64_t a2, char *a3)
{
  v5 = v3;
  if (!a2)
  {
    sub_2722032B4();
    swift_allocError();
    *v11 = 0xD000000000000017;
    v11[1] = 0x800000027238CA10;
    swift_willThrow();
    goto LABEL_5;
  }

  v7 = *a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  type metadata accessor for VAEspressoUtilsV2();

  v9 = sub_2721F7EE4();
  sub_2723195D0(a1, a2, v9 & 1, &v47);
  if (!v4)
  {

    v12 = v48;
    *(v5 + 32) = v47;
    *(v5 + 48) = v12;
    *(v5 + 64) = v49;
    if (v7)
    {
      goto LABEL_28;
    }

    v50 = v48;
    if (*(v48 + 16) != 1)
    {
      goto LABEL_20;
    }

    sub_27228E4E4(&v50, &v45);
    sub_27220038C(0x7475706E69, 0xE500000000000000);
    v30 = v29;
    sub_27228E554(&v50);
    if ((v30 & 1) == 0)
    {
      goto LABEL_20;
    }

    v31 = *(v5 + 48);
    if (!*(v31 + 16))
    {
      goto LABEL_20;
    }

    v32 = sub_27220038C(0x7475706E69, 0xE500000000000000);
    if (v33 & 1) != 0 && (v34 = *(**(*(v31 + 56) + 8 * v32) + 200), v35 = , v36 = v34(v35), , v37 = sub_27228E488(v36, &unk_28817F788), , (v37))
    {
LABEL_28:
      if (*(*(v5 + 56) + 16) == 1)
      {
        v13 = *(v5 + 56);

        sub_27220038C(0x74757074756FLL, 0xE600000000000000);
        v15 = v14;

        if (v15)
        {
          v16 = *(v5 + 56);
          if (*(v16 + 16))
          {
            v17 = sub_27220038C(0x74757074756FLL, 0xE600000000000000);
            if (v18)
            {
              v19 = *(**(*(v16 + 56) + 8 * v17) + 200);

              v21 = v19(v20);

              v22 = sub_27228E488(v21, &unk_28817F808);

              if (v22)
              {
                goto LABEL_24;
              }
            }
          }
        }
      }

      v45 = 0;
      v46 = 0xE000000000000000;
      sub_27237820C();

      v45 = 0xD00000000000001DLL;
      v46 = 0x800000027238CA30;
      v23 = *(v5 + 56);
      if (!*(v23 + 16))
      {
LABEL_23:
        sub_2721F065C(&qword_2808824B8, &unk_272380770);
        v40 = sub_27237789C();
        MEMORY[0x2743C4AD0](v40);

        v41 = v45;
        v42 = v46;
        sub_2722032B4();
        swift_allocError();
        *v43 = v41;
        v43[1] = v42;
        swift_willThrow();

LABEL_24:

        return v5;
      }

      v24 = *(v5 + 56);

      v25 = sub_27220038C(0x74757074756FLL, 0xE600000000000000);
      if ((v26 & 1) == 0)
      {
LABEL_22:

        goto LABEL_23;
      }
    }

    else
    {
LABEL_20:
      v45 = 0;
      v46 = 0xE000000000000000;
      sub_27237820C();

      v45 = 0xD00000000000001CLL;
      v46 = 0x800000027238CA50;
      v23 = *(v5 + 48);
      if (!*(v23 + 16))
      {
        goto LABEL_23;
      }

      v38 = *(v5 + 48);

      v25 = sub_27220038C(0x7475706E69, 0xE500000000000000);
      if ((v39 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v27 = *(*(v23 + 56) + 8 * v25);

    (*(*v27 + 200))(v28);

    goto LABEL_23;
  }

  v10 = *(v5 + 24);

LABEL_5:
  type metadata accessor for VASilenceModel();
  swift_deallocPartialClassInstance();
  return v5;
}

uint64_t sub_27228E178(uint64_t a1)
{
  v3 = v1;
  v4 = *(v1 + 48);
  if (*(v4 + 16) && (v6 = sub_27220038C(0x7475706E69, 0xE500000000000000), (v7 & 1) != 0) && (v8 = *(*(v4 + 56) + 8 * v6), sub_2721F065C(&qword_2808824C0, &qword_272380780), (v9 = swift_dynamicCastClass()) != 0))
  {
    v10 = v9;

    sub_272256424(a1);
    (*(*v10 + 624))();

    v11 = *(v3 + 72);
    sub_272275B0C();
    if (!v2)
    {
      v12 = *(v3 + 56);
      if (*(v12 + 16))
      {
        v13 = sub_27220038C(0x74757074756FLL, 0xE600000000000000);
        if (v14)
        {
          v15 = *(*(v12 + 56) + 8 * v13);
          sub_2721F065C(&qword_2808824C8, qword_272380788);
          v16 = swift_dynamicCastClass();
          if (v16)
          {
            v17 = *(*v16 + 720);

            v19 = v17(v18);

            return v19;
          }
        }
      }

      sub_2722032B4();
      swift_allocError();
      *v22 = 0xD00000000000001DLL;
      v22[1] = 0x800000027238CA90;
      swift_willThrow();
    }
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v21 = 0xD00000000000001BLL;
    v21[1] = 0x800000027238CA70;
    return swift_willThrow();
  }
}

void *VASilenceModel.deinit()
{
  v1 = v0[3];

  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[9];

  return v0;
}

uint64_t VASilenceModel.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[9];

  return swift_deallocClassInstance();
}

uint64_t sub_27228E488(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27228E4E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280881818, &qword_27237BF38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27228E554(uint64_t a1)
{
  v2 = sub_2721F065C(&qword_280881818, &qword_27237BF38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27228E5C0()
{
  result = qword_2808824D0;
  if (!qword_2808824D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808824D0);
  }

  return result;
}

uint64_t VAAttentionDetectionConfiguration.__allocating_init(jsonFile:namesToBeDetected:computeUnits:useResultGenerator:enableSecondPass:gain:textEnrollmentOnly:extraAudioDurationAfterPredictionWindow:applyGainToEnrollmentAudio:extraAudioDurationBeforePredictionWindow:maxTextAudioEnrollmentCount:)(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, char a5, char a6, char a7, uint64_t a8, float a9, char a10, char a11, uint64_t a12, char a13, uint64_t a14)
{
  v19 = swift_allocObject();
  v20 = *a4;
  *(v19 + 24) = a3;
  *(v19 + 32) = v20;
  *(v19 + 33) = a5;
  *(v19 + 34) = a6;
  *(v19 + 36) = a9;
  *(v19 + 40) = a7;
  *(v19 + 48) = a8;
  *(v19 + 56) = a10 & 1;
  *(v19 + 57) = a11;
  *(v19 + 64) = a12;
  *(v19 + 72) = a13 & 1;
  *(v19 + 80) = a1;
  *(v19 + 88) = a2;
  type metadata accessor for VAA2AEnrollmentMap();

  v21 = VAA2AEnrollmentMap.__allocating_init(jsonFile:)(a1, a2);
  if (v29)
  {
    v22 = *(v19 + 24);

    v23 = *(v19 + 88);

    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v19 + 16) = v21;
    *(v19 + 96) = a14;
  }

  return v19;
}

uint64_t VAAttentionDetectionConfiguration.init(jsonFile:namesToBeDetected:computeUnits:useResultGenerator:enableSecondPass:gain:textEnrollmentOnly:extraAudioDurationAfterPredictionWindow:applyGainToEnrollmentAudio:extraAudioDurationBeforePredictionWindow:maxTextAudioEnrollmentCount:)(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, char a5, char a6, char a7, uint64_t a8, float a9, char a10, char a11, uint64_t a12, char a13, uint64_t a14)
{
  v16 = v14;
  v19 = *a4;
  *(v16 + 24) = a3;
  *(v16 + 32) = v19;
  *(v16 + 33) = a5;
  *(v16 + 34) = a6;
  *(v16 + 36) = a9;
  *(v16 + 40) = a7;
  *(v16 + 48) = a8;
  *(v16 + 56) = a10 & 1;
  *(v16 + 57) = a11;
  *(v16 + 64) = a12;
  *(v16 + 72) = a13 & 1;
  *(v16 + 80) = a1;
  *(v16 + 88) = a2;
  type metadata accessor for VAA2AEnrollmentMap();

  v20 = VAA2AEnrollmentMap.__allocating_init(jsonFile:)(a1, a2);
  if (v15)
  {
    v21 = *(v16 + 24);

    v22 = *(v16 + 88);

    type metadata accessor for VAAttentionDetectionConfiguration();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v16 + 16) = v20;
    *(v16 + 96) = a14;
  }

  return v16;
}

uint64_t sub_27228E8A8(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      v7 = 0xD00000000000001BLL;
      if (a1 == 10)
      {
        v7 = 0xD000000000000015;
      }

      if (a1 == 9)
      {
        return 0x7364726F7779656BLL;
      }

      else
      {
        return v7;
      }
    }

    else
    {
      v6 = 0xD000000000000027;
      if (a1 == 7)
      {
        v6 = 0xD000000000000028;
      }

      if (a1 == 6)
      {
        return 0xD00000000000001ALL;
      }

      else
      {
        return v6;
      }
    }
  }

  else
  {
    v1 = 0x656C69466E6F736ALL;
    v2 = 0xD000000000000010;
    v3 = 1852399975;
    if (a1 != 4)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000011;
    if (a1 != 1)
    {
      v4 = 0xD000000000000012;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_27228EA48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27229004C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27228EA7C(uint64_t a1)
{
  v2 = sub_27228EFB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27228EAB8(uint64_t a1)
{
  v2 = sub_27228EFB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VAAttentionDetectionConfiguration.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  VAAttentionDetectionConfiguration.init(from:)(a1);
  return v2;
}

uint64_t VAAttentionDetectionConfiguration.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_2808824D8, &unk_272380970);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28[-v8];
  v10 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_27228EFB8();
  sub_2723787AC();
  if (v2)
  {
    type metadata accessor for VAAttentionDetectionConfiguration();
    swift_deallocPartialClassInstance();
LABEL_11:
    sub_2722039C8(a1);
    return v3;
  }

  LOBYTE(v29) = 0;
  v11 = sub_27237843C();
  v13 = 0x64696C61766E69;
  if (v12)
  {
    v13 = v11;
  }

  v14 = 0xE700000000000000;
  if (v12)
  {
    v14 = v12;
  }

  *(v1 + 80) = v13;
  *(v1 + 88) = v14;
  sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
  v28[15] = 1;
  sub_27228F60C(&qword_280881800);
  result = sub_27237848C();
  if (v29)
  {
    *(v1 + 24) = v29;
    LOBYTE(v29) = 2;
    v16 = sub_27237844C();
    *(v1 + 33) = (v16 == 2) | v16 & 1;
    LOBYTE(v29) = 3;
    v17 = sub_27237844C();
    *(v1 + 34) = (v17 == 2) | v17 & 1;
    LOBYTE(v29) = 4;
    v18 = sub_27237846C();
    v19 = *&v18;
    if ((v18 & 0x100000000) != 0)
    {
      v19 = 1.0;
    }

    *(v1 + 36) = v19;
    LOBYTE(v29) = 5;
    *(v1 + 40) = sub_27237844C() & 1;
    LOBYTE(v29) = 6;
    v20 = sub_27237844C();
    *(v1 + 57) = (v20 == 2) | v20 & 1;
    LOBYTE(v29) = 7;
    *(v1 + 64) = sub_27237845C();
    *(v1 + 72) = v21 & 1;
    LOBYTE(v29) = 8;
    result = sub_27237845C();
    *(v1 + 48) = result;
    *(v1 + 56) = v22 & 1;
    v23 = *(v1 + 88);
    if (v23)
    {
      v24 = *(v3 + 80);
      type metadata accessor for VAA2AEnrollmentMap();

      *(v3 + 16) = VAA2AEnrollmentMap.__allocating_init(jsonFile:)(v24, v23);
      LOBYTE(v29) = 11;
      v25 = sub_27237847C();
      LOBYTE(v24) = v26;
      (*(v6 + 8))(v9, v5);
      v27 = 3;
      if ((v24 & 1) == 0)
      {
        v27 = v25;
      }

      *(v3 + 96) = v27;
      *(v3 + 32) = 1;
      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_27228EFB8()
{
  result = qword_28088AFB0[0];
  if (!qword_28088AFB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088AFB0);
  }

  return result;
}

uint64_t sub_27228F0E8(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_2808824E0, &unk_272380980);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_27228EFB8();
  sub_2723787CC();
  v27 = *(v3 + 80);
  v28 = 0;
  sub_2721F065C(&qword_280881828, &qword_27237BF40);
  sub_27228F590();
  sub_2723785DC();
  if (!v2)
  {
    v11 = *(v3 + 24);
    *&v27 = v11;
    v28 = 1;
    sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
    sub_27228F60C(&qword_2808824F0);
    sub_2723785DC();
    v12 = *(v3 + 33);
    LOBYTE(v27) = 2;
    sub_27237859C();
    v13 = *(v3 + 34);
    LOBYTE(v27) = 3;
    sub_27237859C();
    v14 = *(v3 + 36);
    LOBYTE(v27) = 4;
    sub_2723785BC();
    v15 = *(v3 + 40);
    LOBYTE(v27) = 5;
    sub_27237859C();
    LOBYTE(v27) = *(v3 + 57);
    v28 = 6;
    sub_2721F065C(&qword_2808824F8, &qword_272380990);
    sub_27228F678();
    sub_2723785DC();
    v16 = *(v3 + 72);
    *&v27 = *(v3 + 64);
    BYTE8(v27) = v16;
    v28 = 7;
    v17 = sub_2721F065C(&qword_280882508, &qword_272380998);
    v25 = sub_27228F6F4();
    v26 = v17;
    sub_2723785DC();
    v18 = *(v3 + 56);
    *&v27 = *(v3 + 48);
    BYTE8(v27) = v18;
    v28 = 8;
    sub_2723785DC();
    v19 = *(v3 + 16);
    v20 = sub_2723075C0();
    v21 = *(*v19 + 264);
    v26 = v19;
    *&v27 = v21(v11, v20);
    v28 = 9;
    sub_2723785DC();

    *&v27 = (*(*v26 + 192))(v22);
    v28 = 10;
    sub_2721F065C(&qword_280882518, &qword_2723809A0);
    sub_27228F770();
    sub_2723785DC();

    v23 = *(v3 + 96);
    LOBYTE(v27) = 11;
    sub_2723785CC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_27228F590()
{
  result = qword_2808824E8;
  if (!qword_2808824E8)
  {
    sub_2721F214C(&qword_280881828, &qword_27237BF40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808824E8);
  }

  return result;
}

uint64_t sub_27228F60C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2721F214C(&qword_2808817F8, &unk_27237CA80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27228F678()
{
  result = qword_280882500;
  if (!qword_280882500)
  {
    sub_2721F214C(&qword_2808824F8, &qword_272380990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882500);
  }

  return result;
}

unint64_t sub_27228F6F4()
{
  result = qword_280882510;
  if (!qword_280882510)
  {
    sub_2721F214C(&qword_280882508, &qword_272380998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882510);
  }

  return result;
}

unint64_t sub_27228F770()
{
  result = qword_280882520;
  if (!qword_280882520)
  {
    sub_2721F214C(&qword_280882518, &qword_2723809A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882520);
  }

  return result;
}

uint64_t sub_27228F7EC()
{
  v0 = sub_27237788C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_272376AFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = sub_272376B3C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_272376B2C();
  sub_2721F065C(&qword_280881C70, &unk_27237D640);
  v8 = *(v3 + 72);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_27237AFB0;
  sub_272376ADC();
  sub_272376ACC();
  sub_272376AEC();
  sub_27228FB08(&qword_280881C78, 255, MEMORY[0x277CC8718]);
  sub_2721F065C(&qword_280881C80, qword_27237D8B0);
  sub_27222F414();
  sub_27237815C();
  sub_272376B0C();
  type metadata accessor for VAAttentionDetectionConfiguration();
  sub_27228FB08(&qword_280882528, v10, type metadata accessor for VAAttentionDetectionConfiguration);
  v11 = sub_272376B1C();
  v13 = v12;
  sub_27237787C();
  v14 = sub_27237784C();
  if (v15)
  {
    v16 = v14;
    sub_2721F05C8(v11, v13);
  }

  else
  {
    sub_2721F05C8(v11, v13);

    return 0;
  }

  return v16;
}

uint64_t sub_27228FB08(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void *VAAttentionDetectionConfiguration.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[11];

  return v0;
}

uint64_t VAAttentionDetectionConfiguration.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[11];

  return swift_deallocClassInstance();
}

uint64_t sub_27228FC0C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 184))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VAAttentionDetectionConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VAAttentionDetectionConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_27228FF48()
{
  result = qword_28088B240[0];
  if (!qword_28088B240[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088B240);
  }

  return result;
}

unint64_t sub_27228FFA0()
{
  result = qword_28088B350;
  if (!qword_28088B350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088B350);
  }

  return result;
}

unint64_t sub_27228FFF8()
{
  result = qword_28088B358[0];
  if (!qword_28088B358[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088B358);
  }

  return result;
}

uint64_t sub_27229004C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C69466E6F736ALL && a2 == 0xE800000000000000;
  if (v4 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000027238CB30 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000027238CB50 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000027238CB70 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1852399975 && a2 == 0xE400000000000000 || (sub_27237865C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000027238CB90 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000027238CBE0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000028 && 0x800000027238CC00 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000027 && 0x800000027238CBB0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7364726F7779656BLL && a2 == 0xE800000000000000 || (sub_27237865C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x800000027238CC60 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000027238CC40 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_27237865C();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

id sub_272290404()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void sub_272290448(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_272290500()
{
  v0 = sub_272291FE0(&unk_28817FA28);
  sub_272203A70(&unk_28817FA48);
  return v0;
}

id sub_27229053C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x61775F7475706E69 && a2 == 0xE900000000000076;
  if (!v3 && (sub_27237865C() & 1) == 0)
  {
    return 0;
  }

  v4 = (*(*v2 + 88))();
  v5 = [objc_opt_self() featureValueWithMultiArray_];

  return v5;
}

void sub_272290710()
{
  v1 = *(v0 + 16);
  v2 = sub_2723777FC();
  v3 = [v1 featureValueForName_];

  if (!v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = [v3 multiArrayValue];

  if (!v4)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_2722907B0()
{
  v1 = (*(*v0 + 88))();
  v2 = MEMORY[0x277D83A90];
  v3 = MEMORY[0x277CBFDD0];

  return MEMORY[0x2821117E8](v1, v2, v3);
}

uint64_t sub_2722908C8()
{
  v1 = [*(v0 + 16) featureNames];
  v2 = sub_272377D8C();

  return v2;
}

id sub_272290920()
{
  v1 = *(v0 + 16);
  v2 = sub_2723777FC();
  v3 = [v1 featureValueForName_];

  return v3;
}

uint64_t sub_2722909AC(void *a1)
{
  swift_allocObject();
  v2 = sub_2722921AC(a1);

  return v2;
}

uint64_t sub_2722909F4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_272290A2C()
{
  sub_272255BD4();
  v4 = v0;
  if (!v0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = sub_2723777FC();
  v2 = sub_2723777FC();
  v3 = [v4 URLForResource:v1 withExtension:v2];

  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_272376D0C();
}

uint64_t sub_272290B00(void *a1)
{
  v3 = v1;
  v5 = sub_272376D5C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v19 - v12;
  (*(v1 + 88))(v11);
  v14 = sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  (*(v6 + 16))(v10, v13, v5);
  v15 = a1;
  v16 = sub_272292308(v10, v15);
  if (v2)
  {

    (*(v6 + 8))(v13, v5);
  }

  else
  {
    v17 = v16;

    v14 = (*(v3 + 96))(v17);
    (*(v6 + 8))(v13, v5);
  }

  return v14;
}

uint64_t sub_272290CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_272376D5C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 88))(v10);
  (*(v3 + 120))(v12, a1, a2, a3);
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_272290DD0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_272376D5C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272290E90, 0, 0);
}

uint64_t sub_272290E90()
{
  v1 = v0[6];
  v10 = v0[3];
  (*(v10 + 88))();
  v2 = *(v10 + 128);
  v9 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_272290FC0;
  v5 = v0[6];
  v6 = v0[2];
  v7 = v0[3];

  return v9(v5, v6);
}

uint64_t sub_272290FC0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  (*(v4[5] + 8))(v4[6], v4[4]);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_272291170, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1);
  }
}

uint64_t sub_272291170()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_2722911D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  sub_272377F8C();
}

uint64_t sub_27229128C(uint64_t a1, uint64_t a2)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v5 = *(MEMORY[0x277CBFE10] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_272291354;

  return MEMORY[0x2821119A8](a1, a2);
}

uint64_t sub_272291354(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 24) = a1;

    return MEMORY[0x2822009F8](sub_2722914A0, 0, 0);
  }
}

uint64_t sub_2722914A0()
{
  v1 = *(v0 + 24);
  type metadata accessor for at_encoder_rdr_125141826();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_272291514(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBFF60]) init];
  v4 = (*(*v1 + 144))(a1, v3);

  return v4;
}

uint64_t sub_2722915A0(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 16);
  v13[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v13];
  v7 = v13[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for at_encoder_rdr_125141826Output();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v13[0];
    sub_272376C6C();

    swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_272291678(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_27229169C, 0, 0);
}

uint64_t sub_27229169C()
{
  v1 = *(v0[4] + 16);
  v2 = *(MEMORY[0x277CBFDE8] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_27229173C;
  v5 = v0[2];
  v4 = v0[3];

  return MEMORY[0x282111980](v5, v4);
}

uint64_t sub_27229173C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](sub_272291888, 0, 0);
  }
}

uint64_t sub_272291888()
{
  v1 = *(v0 + 48);
  type metadata accessor for at_encoder_rdr_125141826Output();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2722918FC(void *a1)
{
  type metadata accessor for at_encoder_rdr_125141826Input();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = *(*v1 + 136);
  v5 = a1;
  v6 = v4(v3);

  return v6;
}

uint64_t sub_272291990(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2721F065C(&qword_280882530, &unk_272380BE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v16 - v10;
  v12 = *(v5 + 16);
  v12(v16 - v10, a1, v4);
  sub_27221982C(0, &qword_2808821D0, 0x277CBFF40);
  v12(v9, v11, v4);
  sub_272292148();
  v13 = sub_272377E5C();
  (*(v5 + 8))(v11, v4);
  type metadata accessor for at_encoder_rdr_125141826Input();
  *(swift_allocObject() + 16) = v13;
  v14 = (*(*v2 + 136))();

  return v14;
}

void sub_272291B60(unint64_t a1, uint64_t a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = a1 >> 62;
  if (a1 >> 62)
  {

    sub_2721F065C(&qword_2808825A8, &qword_272380C30);
    sub_27237838C();
  }

  else
  {

    sub_27237867C();
  }

  v6 = objc_allocWithZone(MEMORY[0x277CBFEB8]);
  sub_2721F065C(&qword_2808825A8, &qword_272380C30);
  v7 = sub_272377AEC();

  v8 = [v6 initWithFeatureProviderArray_];

  v9 = *(v2 + 16);
  v23[0] = 0;
  v10 = [v9 predictionsFromBatch:v8 options:a2 error:v23];
  v11 = v23[0];
  if (v10)
  {
    v12 = v10;
    v23[0] = MEMORY[0x277D84F90];
    if (v5)
    {
      v13 = sub_2723783AC();
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v11;
    sub_272291E24(v13);
    v16 = [v12 count];
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v17 = v16;
    if (v16)
    {
      v18 = 0;
      do
      {
        v19 = [v12 featuresAtIndex_];
        type metadata accessor for at_encoder_rdr_125141826Output();
        *(swift_allocObject() + 16) = v19;
        swift_unknownObjectRetain();

        MEMORY[0x2743C4C30](v20);
        if (*((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v22 = *((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_272377B2C();
        }

        ++v18;
        sub_272377B7C();

        swift_unknownObjectRelease();
      }

      while (v17 != v18);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = v23[0];
    sub_272376C6C();

    swift_willThrow();
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t sub_272291E24(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
      v6 = *(v5 + 16);
LABEL_11:
      result = sub_27237822C();
      v3 = result;
      goto LABEL_12;
    }

LABEL_10:
    sub_2723783AC();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_12:
  *v1 = v3;
  return result;
}

uint64_t sub_272291EC0()
{

  return swift_deallocClassInstance();
}

id sub_272291EF8()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = sub_27237770C();

  v7[0] = 0;
  v2 = [v0 initWithDictionary:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_272376C6C();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_272291FE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2721F065C(&qword_2808825B8, &unk_272380CA0);
    v3 = sub_2723781AC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_27237874C();

      sub_27237790C();
      result = sub_27237878C();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_27237865C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

unint64_t sub_272292148()
{
  result = qword_280882538;
  if (!qword_280882538)
  {
    sub_2721F214C(&qword_280882530, &unk_272380BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882538);
  }

  return result;
}

uint64_t sub_2722921AC(uint64_t a1)
{
  v2 = v1;
  sub_2721F065C(&qword_280881A58, &unk_272382730);
  inited = swift_initStackObject();
  strcpy((inited + 32), "enc_3d_output");
  *(inited + 16) = xmmword_27237AF80;
  *(inited + 46) = -4864;
  v5 = [objc_opt_self() featureValueWithMultiArray_];
  *(inited + 72) = sub_27221982C(0, &qword_2808825B0, 0x277CBFEF0);
  *(inited + 48) = v5;
  sub_27221651C(inited);
  swift_setDeallocating();
  sub_272292598(inited + 32);
  v6 = objc_allocWithZone(MEMORY[0x277CBFED8]);
  *(v2 + 16) = sub_272291EF8();
  return v2;
}

id sub_272292308(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_272376CCC();
  v14[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_272376D5C();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_272376C6C();

    swift_willThrow();
    v11 = sub_272376D5C();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_272292468()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2722924A0(void *a1, char a2)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  if (a2)
  {
    return v4(a1, 1);
  }

  type metadata accessor for at_encoder_rdr_125141826();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = a1;
  v4(v7, 0);
}

uint64_t sub_272292598(uint64_t a1)
{
  v2 = sub_2721F065C(&qword_280881A60, &unk_27237CA40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_272292604@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_272292634(uint64_t a1)
{
  v2 = sub_272292BC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_272292670(uint64_t a1)
{
  v2 = sub_272292BC4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2722926AC()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_2722926E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000014 && 0x800000027238CD70 == a2;
  if (v6 || (sub_27237865C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000027238CD90 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_27237865C();

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

uint64_t sub_2722927C4(uint64_t a1)
{
  v2 = sub_272292B70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_272292800(uint64_t a1)
{
  v2 = sub_272292B70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27229283C(uint64_t a1)
{
  v2 = sub_272292C18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_272292878(uint64_t a1)
{
  v2 = sub_272292C18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2722928B4(void *a1, int a2)
{
  v22 = a2;
  v3 = sub_2721F065C(&qword_2808825C0, &qword_272380CB0);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v19 = sub_2721F065C(&qword_2808825C8, &qword_272380CB8);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v19);
  v10 = &v19 - v9;
  v11 = sub_2721F065C(&qword_2808825D0, &qword_272380CC0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_272292B70();
  sub_2723787CC();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_272292BC4();
    sub_27237851C();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_272292C18();
    sub_27237851C();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

unint64_t sub_272292B70()
{
  result = qword_28088B3E0;
  if (!qword_28088B3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088B3E0);
  }

  return result;
}

unint64_t sub_272292BC4()
{
  result = qword_28088B3E8;
  if (!qword_28088B3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088B3E8);
  }

  return result;
}

unint64_t sub_272292C18()
{
  result = qword_28088B3F0[0];
  if (!qword_28088B3F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088B3F0);
  }

  return result;
}

uint64_t sub_272292C6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_272293370(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_272292CB8(char *a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6, void (*a7)(void))
{
  v40 = a5;
  v41 = a4;
  v38 = a1;
  v39 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v37 = *(TupleTypeMetadata2 - 8);
  v11 = *(v37 + 64);
  v12 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v36 - v16;
  v36 = *(a7 - 1);
  v18 = *(v36 + 64);
  v19 = MEMORY[0x28223BE20](v15);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a6 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v25, a3, a6);
  v26 = v42;
  v41(v25);
  if (v26)
  {
    return (*(v22 + 8))(v25, a6);
  }

  v40 = *(TupleTypeMetadata2 + 48);
  v41 = a7;
  v42 = TupleTypeMetadata2;
  v28 = *(v22 + 32);
  v28(v17, v25, a6);
  v29 = v14;
  v30 = *(v36 + 32);
  v31 = v21;
  v32 = v41;
  v30(&v17[v40], v31, v41);
  v33 = v17;
  v34 = v42;
  (*(v37 + 32))(v29, v33, v42);
  v35 = *(v34 + 48);
  v28(v38, v29, a6);
  return v30(v39, &v29[v35], v32);
}

uint64_t sub_272292FA0@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X6>, char *a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_272292CB8(a4, v11, v12, v13, v14, v15, v16);
  if (!v4)
  {
    a2(v11);
    return (*(v8 + 8))(v11, a3);
  }

  return result;
}

uint64_t sub_2722930D4@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v25[2] = a3;
  v26 = a5;
  v25[0] = a6;
  v25[1] = a2;
  v8 = sub_27237801C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v25 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v25 - v17;
  v19 = *(a4 - 8);
  (*(v19 + 56))(v16, 1, 1, a4);
  v20 = v27;
  sub_272292FA0(v16, a1, v26, v18);
  if (v20)
  {
    return (*(v9 + 8))(v16, v8);
  }

  v22 = v16;
  v23 = *(v9 + 8);
  v23(v22, v8);
  (*(v9 + 16))(v13, v18, v8);
  if ((*(v19 + 48))(v13, 1, a4) == 1)
  {
    v23(v13, v8);
    sub_2722937AC();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
    return (v23)(v18, v8);
  }

  else
  {
    v23(v18, v8);
    return (*(v19 + 32))(v25[0], v13, a4);
  }
}

uint64_t sub_272293370(uint64_t *a1)
{
  v29 = sub_2721F065C(&qword_2808825E8, &qword_272381088);
  v27 = *(v29 - 8);
  v2 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v4 = v25 - v3;
  v5 = sub_2721F065C(&qword_2808825F0, &qword_272381090);
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v25 - v7;
  v9 = sub_2721F065C(&qword_2808825F8, &qword_272381098);
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v25 - v11;
  v13 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_272292B70();
  v14 = v31;
  sub_2723787AC();
  if (v14)
  {
    return sub_2722039C8(a1);
  }

  v26 = v5;
  v31 = a1;
  v16 = v28;
  v15 = v29;
  v17 = v12;
  v18 = sub_27237850C();
  if (*(v18 + 16) != 1)
  {
    v20 = sub_27237824C();
    swift_allocError();
    v22 = v21;
    v23 = *(sub_2721F065C(&qword_280882600, &unk_2723810A0) + 48);
    *v22 = &type metadata for VACInteropUtils.DomainError;
    sub_27237842C();
    sub_27237823C();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
    swift_willThrow();
    (*(v30 + 8))(v17, v9);
    swift_unknownObjectRelease();
    a1 = v31;
    return sub_2722039C8(a1);
  }

  v25[1] = v18;
  v32 = *(v18 + 32);
  if (v32)
  {
    v34 = 1;
    sub_272292BC4();
    sub_27237841C();
    v19 = v30;
    (*(v27 + 8))(v4, v15);
  }

  else
  {
    v33 = 0;
    sub_272292C18();
    sub_27237841C();
    v19 = v30;
    (*(v16 + 8))(v8, v26);
  }

  (*(v19 + 8))(v12, v9);
  swift_unknownObjectRelease();
  sub_2722039C8(v31);
  return v32;
}

unint64_t sub_2722937AC()
{
  result = qword_2808825D8;
  if (!qword_2808825D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808825D8);
  }

  return result;
}

unint64_t sub_272293804()
{
  result = qword_2808825E0;
  if (!qword_2808825E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808825E0);
  }

  return result;
}

unint64_t sub_2722938AC()
{
  result = qword_28088B980[0];
  if (!qword_28088B980[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088B980);
  }

  return result;
}

unint64_t sub_272293904()
{
  result = qword_28088BA90;
  if (!qword_28088BA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088BA90);
  }

  return result;
}

unint64_t sub_27229395C()
{
  result = qword_28088BA98[0];
  if (!qword_28088BA98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088BA98);
  }

  return result;
}

unint64_t sub_2722939B4()
{
  result = qword_28088BB20;
  if (!qword_28088BB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088BB20);
  }

  return result;
}

unint64_t sub_272293A0C()
{
  result = qword_28088BB28[0];
  if (!qword_28088BB28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088BB28);
  }

  return result;
}

unint64_t sub_272293A64()
{
  result = qword_28088BBB0;
  if (!qword_28088BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088BBB0);
  }

  return result;
}

unint64_t sub_272293ABC()
{
  result = qword_28088BBB8[0];
  if (!qword_28088BBB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088BBB8);
  }

  return result;
}

uint64_t sub_272293B84()
{
  v0 = sub_272291FE0(&unk_28817FC30);
  sub_272203A70(&unk_28817FC50);
  return v0;
}

id sub_272293BC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x61775F7475706E69 && a2 == 0xE900000000000076;
  if (!v3 && (sub_27237865C() & 1) == 0)
  {
    return 0;
  }

  v4 = (*(*v2 + 88))();
  v5 = [objc_opt_self() featureValueWithMultiArray_];

  return v5;
}

uint64_t sub_272293D94()
{
  v1 = (*(*v0 + 88))();
  v2 = MEMORY[0x277D83A90];
  v3 = MEMORY[0x277CBFDD0];

  return MEMORY[0x2821117E8](v1, v2, v3);
}

uint64_t sub_272293EE8(void *a1)
{
  swift_allocObject();
  v2 = sub_272295114(a1);

  return v2;
}

void sub_272293F30()
{
  sub_272255BD4();
  v4 = v0;
  if (!v0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = sub_2723777FC();
  v2 = sub_2723777FC();
  v3 = [v4 URLForResource:v1 withExtension:v2];

  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_272376D0C();
}

uint64_t sub_272294004(void *a1)
{
  v3 = v1;
  v5 = sub_272376D5C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v19 - v12;
  (*(v1 + 88))(v11);
  v14 = sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  (*(v6 + 16))(v10, v13, v5);
  v15 = a1;
  v16 = sub_272292308(v10, v15);
  if (v2)
  {

    (*(v6 + 8))(v13, v5);
  }

  else
  {
    v17 = v16;

    v14 = (*(v3 + 96))(v17);
    (*(v6 + 8))(v13, v5);
  }

  return v14;
}

uint64_t sub_2722941C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_272376D5C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 88))(v10);
  (*(v3 + 120))(v12, a1, a2, a3);
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_2722942D4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_272376D5C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272294394, 0, 0);
}

uint64_t sub_272294394()
{
  v1 = v0[6];
  v10 = v0[3];
  (*(v10 + 88))();
  v2 = *(v10 + 128);
  v9 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_272290FC0;
  v5 = v0[6];
  v6 = v0[2];
  v7 = v0[3];

  return v9(v5, v6);
}

uint64_t sub_2722944C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  sub_272377F8C();
}

uint64_t sub_27229457C(uint64_t a1, uint64_t a2)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v5 = *(MEMORY[0x277CBFE10] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_272294644;

  return MEMORY[0x2821119A8](a1, a2);
}

uint64_t sub_272294644(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 24) = a1;

    return MEMORY[0x2822009F8](sub_272294790, 0, 0);
  }
}

uint64_t sub_272294790()
{
  v1 = *(v0 + 24);
  type metadata accessor for quant_enc_f32_wofeats();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_272294804(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBFF60]) init];
  v4 = (*(*v1 + 144))(a1, v3);

  return v4;
}

uint64_t sub_272294890(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 16);
  v13[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v13];
  v7 = v13[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for quant_enc_f32_wofeatsOutput();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v13[0];
    sub_272376C6C();

    swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_272294968(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_27229498C, 0, 0);
}

uint64_t sub_27229498C()
{
  v1 = *(v0[4] + 16);
  v2 = *(MEMORY[0x277CBFDE8] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_272294A2C;
  v5 = v0[2];
  v4 = v0[3];

  return MEMORY[0x282111980](v5, v4);
}

uint64_t sub_272294A2C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](sub_272294B78, 0, 0);
  }
}

uint64_t sub_272294B78()
{
  v1 = *(v0 + 48);
  type metadata accessor for quant_enc_f32_wofeatsOutput();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_272294BEC(void *a1)
{
  type metadata accessor for quant_enc_f32_wofeatsInput();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v4 = *(*v1 + 136);
  v5 = a1;
  v6 = v4(v3);

  return v6;
}

uint64_t sub_272294C80(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2721F065C(&qword_280882530, &unk_272380BE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v16 - v10;
  v12 = *(v5 + 16);
  v12(v16 - v10, a1, v4);
  sub_27221982C(0, &qword_2808821D0, 0x277CBFF40);
  v12(v9, v11, v4);
  sub_272292148();
  v13 = sub_272377E5C();
  (*(v5 + 8))(v11, v4);
  type metadata accessor for quant_enc_f32_wofeatsInput();
  *(swift_allocObject() + 16) = v13;
  v14 = (*(*v2 + 136))();

  return v14;
}

void sub_272294E50(unint64_t a1, uint64_t a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = a1 >> 62;
  if (a1 >> 62)
  {

    sub_2721F065C(&qword_2808825A8, &qword_272380C30);
    sub_27237838C();
  }

  else
  {

    sub_27237867C();
  }

  v6 = objc_allocWithZone(MEMORY[0x277CBFEB8]);
  sub_2721F065C(&qword_2808825A8, &qword_272380C30);
  v7 = sub_272377AEC();

  v8 = [v6 initWithFeatureProviderArray_];

  v9 = *(v2 + 16);
  v23[0] = 0;
  v10 = [v9 predictionsFromBatch:v8 options:a2 error:v23];
  v11 = v23[0];
  if (v10)
  {
    v12 = v10;
    v23[0] = MEMORY[0x277D84F90];
    if (v5)
    {
      v13 = sub_2723783AC();
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v11;
    sub_272291E24(v13);
    v16 = [v12 count];
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v17 = v16;
    if (v16)
    {
      v18 = 0;
      do
      {
        v19 = [v12 featuresAtIndex_];
        type metadata accessor for quant_enc_f32_wofeatsOutput();
        *(swift_allocObject() + 16) = v19;
        swift_unknownObjectRetain();

        MEMORY[0x2743C4C30](v20);
        if (*((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v22 = *((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_272377B2C();
        }

        ++v18;
        sub_272377B7C();

        swift_unknownObjectRelease();
      }

      while (v17 != v18);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = v23[0];
    sub_272376C6C();

    swift_willThrow();
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t sub_272295114(uint64_t a1)
{
  v2 = v1;
  sub_2721F065C(&qword_280881A58, &unk_272382730);
  inited = swift_initStackObject();
  strcpy((inited + 32), "enc_3d_output");
  *(inited + 16) = xmmword_27237AF80;
  *(inited + 46) = -4864;
  v5 = [objc_opt_self() featureValueWithMultiArray_];
  *(inited + 72) = sub_27221982C(0, &qword_2808825B0, 0x277CBFEF0);
  *(inited + 48) = v5;
  sub_27221651C(inited);
  swift_setDeallocating();
  sub_272292598(inited + 32);
  v6 = objc_allocWithZone(MEMORY[0x277CBFED8]);
  *(v2 + 16) = sub_272291EF8();
  return v2;
}

uint64_t sub_272295270()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2722952A8(void *a1, char a2)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  if (a2)
  {
    return v4(a1, 1);
  }

  type metadata accessor for quant_enc_f32_wofeats();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = a1;
  v4(v7, 0);
}

id sub_2722953A0()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

void sub_2722953E4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

id sub_27229542C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

id sub_272295470()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

void sub_2722954B4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t sub_272295590()
{
  v0 = sub_272291FE0(&unk_28817FC88);
  swift_arrayDestroy();
  return v0;
}

id sub_2722955D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x800000027238CEB0 == a2;
  if (v3 || (sub_27237865C() & 1) != 0)
  {
    v6 = (*(*v2 + 112))();
  }

  else if (a1 == 0xD000000000000017 && 0x800000027238CED0 == a2 || (sub_27237865C() & 1) != 0)
  {
    v6 = (*(*v2 + 136))();
  }

  else if (a1 == 0x75615F7475706E69 && a2 == 0xEF6E656C5F6F6964 || (sub_27237865C() & 1) != 0)
  {
    v6 = (*(*v2 + 160))();
  }

  else
  {
    if ((a1 != 0xD000000000000010 || 0x800000027238CEF0 != a2) && (sub_27237865C() & 1) == 0)
    {
      return 0;
    }

    v6 = (*(*v2 + 184))();
  }

  v7 = v6;
  v8 = [objc_opt_self() featureValueWithMultiArray_];

  return v8;
}

void *sub_272295840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t sub_272295894()
{

  return swift_deallocClassInstance();
}

void sub_2722958E4()
{
  v1 = *(v0 + 16);
  v2 = sub_2723777FC();
  v3 = [v1 featureValueForName_];

  if (!v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = [v3 multiArrayValue];

  if (!v4)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_272295974()
{
  v1 = (*(*v0 + 88))();
  v2 = MEMORY[0x277D83A90];
  v3 = MEMORY[0x277CBFDD0];

  return MEMORY[0x2821117E8](v1, v2, v3);
}

uint64_t sub_272295AC8(void *a1)
{
  swift_allocObject();
  v2 = sub_272296EB0(a1);

  return v2;
}

void sub_272295B10()
{
  sub_272255BD4();
  v4 = v0;
  if (!v0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = sub_2723777FC();
  v2 = sub_2723777FC();
  v3 = [v4 URLForResource:v1 withExtension:v2];

  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_272376D0C();
}

uint64_t sub_272295BE4(void *a1)
{
  v3 = v1;
  v5 = sub_272376D5C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v19 - v12;
  (*(v1 + 88))(v11);
  v14 = sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  (*(v6 + 16))(v10, v13, v5);
  v15 = a1;
  v16 = sub_272292308(v10, v15);
  if (v2)
  {

    (*(v6 + 8))(v13, v5);
  }

  else
  {
    v17 = v16;

    v14 = (*(v3 + 96))(v17);
    (*(v6 + 8))(v13, v5);
  }

  return v14;
}

uint64_t sub_272295DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_272376D5C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 88))(v10);
  (*(v3 + 120))(v12, a1, a2, a3);
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_272295EB4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_272376D5C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272295F74, 0, 0);
}

uint64_t sub_272295F74()
{
  v1 = v0[6];
  v10 = v0[3];
  (*(v10 + 88))();
  v2 = *(v10 + 128);
  v9 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_272290FC0;
  v5 = v0[6];
  v6 = v0[2];
  v7 = v0[3];

  return v9(v5, v6);
}

uint64_t sub_2722960A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  sub_272377F8C();
}

uint64_t sub_27229615C(uint64_t a1, uint64_t a2)
{
  sub_27221982C(0, &qword_280882540, 0x277CBFF18);
  v5 = *(MEMORY[0x277CBFE10] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_272296224;

  return MEMORY[0x2821119A8](a1, a2);
}

uint64_t sub_272296224(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 24) = a1;

    return MEMORY[0x2822009F8](sub_272296370, 0, 0);
  }
}

uint64_t sub_272296370()
{
  v1 = *(v0 + 24);
  type metadata accessor for aa_verifier_125141826();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2722963E4(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBFF60]) init];
  v4 = (*(*v1 + 144))(a1, v3);

  return v4;
}

uint64_t sub_272296470(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(v2 + 16);
  v13[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v13];
  v7 = v13[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for aa_verifier_125141826Output();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v13[0];
    sub_272376C6C();

    swift_willThrow();
  }

  v11 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_272296548(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_27229656C, 0, 0);
}

uint64_t sub_27229656C()
{
  v1 = *(v0[4] + 16);
  v2 = *(MEMORY[0x277CBFDE8] + 4);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_27229660C;
  v5 = v0[2];
  v4 = v0[3];

  return MEMORY[0x282111980](v5, v4);
}

uint64_t sub_27229660C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](sub_272296758, 0, 0);
  }
}

uint64_t sub_272296758()
{
  v1 = *(v0 + 48);
  type metadata accessor for aa_verifier_125141826Output();
  *(swift_allocObject() + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2722967CC(void *a1, void *a2, void *a3, void *a4)
{
  type metadata accessor for aa_verifier_125141826Input();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = *(*v4 + 136);
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = v10(v9);

  return v15;
}

uint64_t sub_27229688C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v4 = sub_2721F065C(&qword_280882530, &unk_272380BE0);
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v31 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v31 - v14;
  v31 = &v31 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v31 - v17;
  v38 = &v31 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - v19;
  v21 = v5[2];
  v35 = &v31 - v19;
  v21(&v31 - v19, v32, v4);
  v21(v18, v33, v4);
  v21(v15, v34, v4);
  v21(v12, v36, v4);
  sub_27221982C(0, &qword_2808821D0, 0x277CBFF40);
  v21(v9, v20, v4);
  sub_272292148();
  v36 = sub_272377E5C();
  v21(v9, v38, v4);
  v34 = sub_272377E5C();
  v22 = v31;
  v21(v9, v31, v4);
  v33 = sub_272377E5C();
  v21(v9, v12, v4);
  v23 = sub_272377E5C();
  v24 = v5[1];
  v24(v12, v4);
  v24(v22, v4);
  v24(v38, v4);
  v24(v35, v4);
  type metadata accessor for aa_verifier_125141826Input();
  v25 = swift_allocObject();
  v26 = v37;
  v27 = v33;
  v28 = v34;
  v25[2] = v36;
  v25[3] = v28;
  v25[4] = v27;
  v25[5] = v23;
  v29 = (*(*v26 + 136))();

  return v29;
}