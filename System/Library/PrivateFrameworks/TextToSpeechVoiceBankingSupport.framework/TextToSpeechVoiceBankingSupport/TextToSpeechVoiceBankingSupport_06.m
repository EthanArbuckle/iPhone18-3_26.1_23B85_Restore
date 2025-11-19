uint64_t sub_2331AC634(uint64_t a1, uint64_t a2)
{
  v62 = type metadata accessor for TTSVBError(0);
  v4 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v6 = &v57[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v57[-v8];
  v10 = sub_23328D6EC();
  v63 = *(v10 - 8);
  v64 = v10;
  v11 = *(v63 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v57[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v57[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v57[-v19];
  sub_233121D34(a1, &v57[-v19], &unk_27DDE25D0, &unk_233290330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2331BDDC4(v20, v9, type metadata accessor for TTSVBError);
    v21 = sub_233225440();
    (*(v63 + 16))(v13, v21, v64);
    v22 = sub_23328CE8C();
    v23 = *(v22 - 8);
    v24 = *(v23 + 64);
    v25 = MEMORY[0x28223BE20](v22);
    v27 = &v57[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v23 + 16))(v27, a2, v22, v25);
    sub_2331BDBEC(v9, v6, type metadata accessor for TTSVBError);
    v28 = sub_23328D6CC();
    v29 = sub_23328DE3C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v61 = v57;
      v31 = v30;
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v65 = v60;
      *v31 = 136315394;
      v58 = v29;
      v32 = sub_23328CE3C();
      v34 = v33;
      (*(v23 + 8))(v27, v22);
      v35 = sub_23311A8F4(v32, v34, &v65);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2112;
      sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError);
      swift_allocError();
      sub_2331BDBEC(v6, v36, type metadata accessor for TTSVBError);
      v37 = _swift_stdlib_bridgeErrorToNSError();
      sub_2331BDC54(v6, type metadata accessor for TTSVBError);
      *(v31 + 14) = v37;
      v38 = v59;
      *v59 = v37;
      _os_log_impl(&dword_233109000, v28, v58, "TTSVBVoiceBankingManager: (queue_importCloudVoicesIntoLocalDatastore) Error training new model for voice ID: %s. Error: %@", v31, 0x16u);
      sub_233121E04(v38, &qword_27DDE2978, &qword_233299A50);
      MEMORY[0x23839CFD0](v38, -1, -1);
      v39 = v60;
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x23839CFD0](v39, -1, -1);
      MEMORY[0x23839CFD0](v31, -1, -1);
    }

    else
    {

      sub_2331BDC54(v6, type metadata accessor for TTSVBError);
      (*(v23 + 8))(v27, v22);
    }

    (*(v63 + 8))(v13, v64);
    return sub_2331BDC54(v9, type metadata accessor for TTSVBError);
  }

  else
  {
    v40 = sub_233225440();
    (*(v63 + 16))(v16, v40, v64);
    v41 = sub_23328CE8C();
    v42 = *(v41 - 8);
    v43 = *(v42 + 64);
    v44 = MEMORY[0x28223BE20](v41);
    v46 = &v57[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v42 + 16))(v46, a2, v41, v44);
    v47 = sub_23328D6CC();
    v48 = sub_23328DE4C();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v61 = v57;
      v51 = v50;
      v65 = v50;
      *v49 = 136315138;
      v52 = sub_23328CE3C();
      v54 = v53;
      (*(v42 + 8))(v46, v41);
      v55 = sub_23311A8F4(v52, v54, &v65);

      *(v49 + 4) = v55;
      _os_log_impl(&dword_233109000, v47, v48, "TTSVBVoiceBankingManager: (queue_importCloudVoicesIntoLocalDatastore) Succesfully kicked off training model for voice ID: %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x23839CFD0](v51, -1, -1);
      MEMORY[0x23839CFD0](v49, -1, -1);
    }

    else
    {

      (*(v42 + 8))(v46, v41);
    }

    return (*(v63 + 8))(v16, v64);
  }
}

uint64_t sub_2331ACD54(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_2331ACE00(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = v6;
      v9 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v9;

      v10 = a1(v12);

      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 2;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_2331ACEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_23328D6EC();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2331ACF78, 0, 0);
}

uint64_t sub_2331ACF78()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = sub_233225314();
  v0[7] = v4;
  v5 = *(v3 + 16);
  v0[8] = v5;
  v0[9] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_23328D6CC();
  v7 = sub_23328DE4C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_233109000, v6, v7, "TTSVBVoiceBankingManager: Will perform V1->V2 voice migration task", v8, 2u);
    MEMORY[0x23839CFD0](v8, -1, -1);
  }

  v9 = v0[6];
  v10 = v0[3];
  v11 = v0[4];
  v12 = v0[2];

  v13 = *(v11 + 8);
  v0[10] = v13;
  v13(v9, v10);
  if (sub_233175210())
  {
    sub_23328D2BC();
  }

  v14 = swift_task_alloc();
  v0[11] = v14;
  *v14 = v0;
  v14[1] = sub_2331AD120;
  v15 = v0[2];

  return TTSVBVoiceBankingManager.startV1ToV2VoiceMigrationIfNeeded()();
}

uint64_t sub_2331AD120()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2331AD264, 0, 0);
  }

  else
  {
    v5 = v3[5];
    v4 = v3[6];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_2331AD264()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  (*(v0 + 64))(*(v0 + 40), *(v0 + 56), *(v0 + 24));
  v3 = v1;
  v4 = sub_23328D6CC();
  v5 = sub_23328DE3C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 96);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_233109000, v4, v5, "TTSVBVoiceBankingManager: V1->V2 voice migration task failed: %@", v7, 0xCu);
    sub_233121E04(v8, &qword_27DDE2978, &qword_233299A50);
    MEMORY[0x23839CFD0](v8, -1, -1);
    MEMORY[0x23839CFD0](v7, -1, -1);
  }

  v11 = *(v0 + 80);
  v13 = *(v0 + 32);
  v12 = *(v0 + 40);
  v15 = *(v0 + 16);
  v14 = *(v0 + 24);

  v11(v12, v14);
  v16 = *(v15 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___longTermLogger);
  v17 = *(v0 + 96);
  if (v16)
  {
    v18 = *(v15 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___longTermLogger);

    sub_23328D2CC();

    sub_2331B9710(v16);
  }

  else
  {
  }

  v20 = *(v0 + 40);
  v19 = *(v0 + 48);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_2331AD454(void *a1)
{
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000049, 0x80000002332A8230);
  v2 = type metadata accessor for TTSVBLocalVoiceMO();
  v3 = TTSVBCommonVoiceMO.displayName.getter(v2, &protocol witness table for TTSVBLocalVoiceMO);
  MEMORY[0x23839B7E0](v3);

  MEMORY[0x23839B7E0](8238, 0xE200000000000000);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
  v5 = v21 - ((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 voiceID];
  MEMORY[0x28223BE20](v6);
  if (v7)
  {
    v8 = v7;
    sub_23328CE6C();

    v9 = sub_23328CE8C();
    (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  }

  else
  {
    v9 = sub_23328CE8C();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  }

  sub_233121D9C(v5, v5, &qword_27DDE19B0, &qword_233290370);
  sub_23328CE8C();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v5, 1, v9);
  if (v11)
  {
    sub_233121E04(v5, &qword_27DDE19B0, &qword_233290370);
    v12 = 0xE600000000000000;
    v13 = 0x3E656E6F6E3CLL;
  }

  else
  {
    v14 = *(v10 + 64);
    v15 = MEMORY[0x28223BE20](v11);
    v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v17, v5, v9, v15);
    sub_233121E04(v5, &qword_27DDE19B0, &qword_233290370);
    v18 = sub_23328CE3C();
    v12 = v19;
    (*(v10 + 8))(v17, v9);
    v13 = v18;
  }

  MEMORY[0x23839B7E0](v13, v12);

  return v21[0];
}

uint64_t sub_2331AD758(void *a1)
{
  sub_23328E24C();

  v21[0] = 0xD000000000000016;
  v21[1] = 0x80000002332A8210;
  v2 = type metadata accessor for TTSVBLocalVoiceMO();
  v3 = TTSVBCommonVoiceMO.displayName.getter(v2, &protocol witness table for TTSVBLocalVoiceMO);
  MEMORY[0x23839B7E0](v3);

  MEMORY[0x23839B7E0](8238, 0xE200000000000000);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
  v5 = v21 - ((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 voiceID];
  MEMORY[0x28223BE20](v6);
  if (v7)
  {
    v8 = v7;
    sub_23328CE6C();

    v9 = sub_23328CE8C();
    (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  }

  else
  {
    v9 = sub_23328CE8C();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  }

  sub_233121D9C(v5, v5, &qword_27DDE19B0, &qword_233290370);
  sub_23328CE8C();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v5, 1, v9);
  if (v11)
  {
    sub_233121E04(v5, &qword_27DDE19B0, &qword_233290370);
    v12 = 0xE600000000000000;
    v13 = 0x3E656E6F6E3CLL;
  }

  else
  {
    v14 = *(v10 + 64);
    v15 = MEMORY[0x28223BE20](v11);
    v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v17, v5, v9, v15);
    sub_233121E04(v5, &qword_27DDE19B0, &qword_233290370);
    v18 = sub_23328CE3C();
    v12 = v19;
    (*(v10 + 8))(v17, v9);
    v13 = v18;
  }

  MEMORY[0x23839B7E0](v13, v12);

  return v21[0];
}

uint64_t sub_2331ADA5C(uint64_t a1, uint64_t a2)
{
  v92 = a2;
  v3 = sub_23328D6EC();
  v90 = *(v3 - 8);
  v4 = *(v90 + 64);
  MEMORY[0x28223BE20](v3);
  v82 = v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v83 = v78 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2388, &qword_233297728);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v78 - v10;
  v12 = type metadata accessor for TTSVBVoiceModel();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v80 = (v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = (v78 - v17);
  MEMORY[0x28223BE20](v19);
  v93 = v78 - v20;
  v21 = type metadata accessor for TTSVBLocalVoiceModelMO();
  v22 = sub_2331F88A8(v21, &protocol witness table for TTSVBLocalVoiceModelMO);
  v91 = v21;
  v24 = static DSO<>.fetch(in:config:)(a1, v22, v23, v21, &protocol witness table for TTSVBLocalVoiceModelMO);

  if (v24 >> 62)
  {
    result = sub_23328E19C();
    v27 = result;
  }

  else
  {
    v27 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = v93;
  if (v27)
  {
    if (v27 >= 1)
    {
      v84 = v18;
      v78[1] = a1;
      v29 = 0;
      v96 = v24 & 0xC000000000000001;
      v94 = 0;
      v95 = (v13 + 48);
      v86 = (v90 + 8);
      v87 = (v90 + 16);
      *&v26 = 136315138;
      v81 = v26;
      v89 = v24;
      v90 = v3;
      v85 = v12;
      v30 = v83;
      v88 = v27;
      v79 = v11;
      while (1)
      {
        v31 = v96 ? MEMORY[0x23839BFC0](v29, v24) : *(v24 + 8 * v29 + 32);
        v32 = v31;
        (*((*MEMORY[0x277D85000] & *v31) + 0x58))(0);
        if ((*v95)(v11, 1, v12) != 1)
        {
          break;
        }

        sub_233121E04(v11, &qword_27DDE2388, &qword_233297728);
LABEL_7:
        if (v27 == ++v29)
        {
          goto LABEL_29;
        }
      }

      sub_2331BDDC4(v11, v28, type metadata accessor for TTSVBVoiceModel);
      v33 = sub_2331B2AAC(&qword_27DDE2840, type metadata accessor for TTSVBLocalVoiceModelMO);
      if (TTSVBCommonVoiceModelMO.supportsFileBackedFutureSync.getter(v91, v33))
      {
        v34 = *sub_2331DEBE8();
        v97[0] = v34;
        v35 = sub_23328CC9C();
        v36 = *(v35 - 8);
        v37 = *(v36 + 64);
        MEMORY[0x28223BE20](v35);
        v39 = v78 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
        v40 = v34;
        TTSVBVoiceModel.url.getter(v39);
        v41 = v28;
        v42 = v94;
        sub_2331E143C(v39);
        v94 = v42;
        if (v42)
        {
          (*(v36 + 8))(v39, v35);

          sub_233144EEC(0, &qword_280D39B68, 0x277CCABB0);
          v43 = sub_23328DFBC();
          [v32 setIsDownloaded_];

          v44 = sub_233225440();
          v45 = v82;
          v46 = v90;
          (*v87)(v82, v44, v90);
          v47 = v80;
          sub_2331BDBEC(v41, v80, type metadata accessor for TTSVBVoiceModel);
          v48 = sub_23328D6CC();
          v49 = sub_23328DE4C();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v97[0] = v51;
            *v50 = v81;
            v52 = *v47;
            v53 = v47[1];

            sub_2331BDC54(v47, type metadata accessor for TTSVBVoiceModel);
            v54 = sub_23311A8F4(v52, v53, v97);

            *(v50 + 4) = v54;
            v55 = v90;
            _os_log_impl(&dword_233109000, v48, v49, "Setting local model as not downloaded: %s", v50, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v51);
            MEMORY[0x23839CFD0](v51, -1, -1);
            MEMORY[0x23839CFD0](v50, -1, -1);

            v56 = v55;
            v57 = (*v86)(v82, v55);
          }

          else
          {

            sub_2331BDC54(v47, type metadata accessor for TTSVBVoiceModel);
            v56 = v46;
            v57 = (*v86)(v45, v46);
          }

          v71 = v85;
          MEMORY[0x28223BE20](v57);
          v28 = v93;
          v78[-2] = v93;
          v77 = sub_233175210();
          v72 = v83;
          if (v77)
          {
            MEMORY[0x28223BE20](v77);
            v78[-2] = sub_2331BA544;
            v78[-1] = &v78[-4];
            sub_23328D2BC();
          }

          else
          {
          }

          v94 = 0;
LABEL_28:
          sub_2331BDC54(v28, type metadata accessor for TTSVBVoiceModel);
          v30 = v72;
          v3 = v56;
          v12 = v71;
          v27 = v88;
          v24 = v89;
          goto LABEL_7;
        }

        (*(v36 + 8))(v39, v35);

        v3 = v90;
        v30 = v83;
        v12 = v85;
        v28 = v41;
      }

      sub_233144EEC(0, &qword_280D39B68, 0x277CCABB0);
      v58 = sub_23328DFBC();
      [v32 setIsDownloaded_];

      v59 = sub_233225440();
      (*v87)(v30, v59, v3);
      v60 = v28;
      v61 = v84;
      sub_2331BDBEC(v60, v84, type metadata accessor for TTSVBVoiceModel);
      v62 = sub_23328D6CC();
      v63 = sub_23328DE4C();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v97[0] = v65;
        *v64 = v81;
        v66 = v30;
        v68 = *v61;
        v67 = v61[1];

        sub_2331BDC54(v61, type metadata accessor for TTSVBVoiceModel);
        v69 = sub_23311A8F4(v68, v67, v97);

        *(v64 + 4) = v69;
        _os_log_impl(&dword_233109000, v62, v63, "Setting local model as downloaded: %s", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v65);
        v70 = v90;
        MEMORY[0x23839CFD0](v65, -1, -1);
        v71 = v85;
        MEMORY[0x23839CFD0](v64, -1, -1);

        v72 = v66;
        v73 = v66;
        v11 = v79;
        v56 = v70;
        v74 = (*v86)(v73, v70);
      }

      else
      {
        v71 = v12;

        sub_2331BDC54(v61, type metadata accessor for TTSVBVoiceModel);
        v75 = v3;
        v72 = v30;
        v56 = v75;
        v74 = (*v86)(v30, v75);
      }

      MEMORY[0x28223BE20](v74);
      v28 = v93;
      v78[-2] = v93;
      v76 = sub_233175210();
      if (v76)
      {
        MEMORY[0x28223BE20](v76);
        v78[-2] = sub_2331BA4D4;
        v78[-1] = &v78[-4];
        sub_23328D2BC();
      }

      goto LABEL_28;
    }

    __break(1u);
  }

  else
  {
LABEL_29:

    return NSManagedObjectContext.saveOrRollback()();
  }

  return result;
}

uint64_t sub_2331AE4D0()
{
  v1 = v0;
  v2 = sub_23328D6EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23328D83C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = TTSVBProcessIsVoicebankingd();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = *&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  *v11 = v13;
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  v14 = v13;
  LOBYTE(v13) = sub_23328D85C();
  result = (*(v8 + 8))(v11, v7);
  if ((v13 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = sub_233225440();
  (*(v3 + 16))(v6, v15, v2);
  v16 = sub_23328D6CC();
  v17 = sub_23328DE4C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_233109000, v16, v17, "Attempting to update missing cloud audio files if neccessary", v18, 2u);
    MEMORY[0x23839CFD0](v18, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  result = sub_233175210();
  if (result)
  {
    sub_23328D2BC();
  }

  v19 = *&v1[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore];
  if (!v19)
  {
    goto LABEL_13;
  }

  LOBYTE(aBlock[0]) = 1;
  v20 = v19;
  v21 = sub_2331E511C(aBlock);

  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v1;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_2331BAC9C;
  *(v23 + 24) = v22;
  aBlock[4] = sub_2331BE574;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331A8974;
  aBlock[3] = &block_descriptor_336;
  v24 = _Block_copy(aBlock);
  v25 = v21;
  v26 = v1;

  [v25 performBlockAndWait_];

  _Block_release(v24);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

void sub_2331AE8B8(void *a1, uint64_t a2)
{
  v247 = a2;
  v3 = sub_23328D6EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v231 = &v223 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v224 = &v223 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = (&v223 - v10);
  MEMORY[0x28223BE20](v12);
  v236 = &v223 - v13;
  MEMORY[0x28223BE20](v14);
  v226 = &v223 - v15;
  MEMORY[0x28223BE20](v16);
  v234 = &v223 - v17;
  MEMORY[0x28223BE20](v18);
  v237 = &v223 - v19;
  MEMORY[0x28223BE20](v20);
  v230 = &v223 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = (&v223 - v23);
  MEMORY[0x28223BE20](v25);
  v235 = &v223 - v26;
  v27 = type metadata accessor for TTSVBLocalVoiceMO();
  v28 = sub_2331F88A8(v27, &protocol witness table for TTSVBLocalVoiceMO);
  v258 = a1;
  v240 = v27;
  v30 = static DSO<>.fetch(in:config:)(a1, v28, v29, v27, &protocol witness table for TTSVBLocalVoiceMO);

  if (v30 >> 62)
  {
LABEL_118:
    v32 = sub_23328E19C();
    if (v32)
    {
      goto LABEL_3;
    }

LABEL_119:

LABEL_121:

    return;
  }

  v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v32)
  {
    goto LABEL_119;
  }

LABEL_3:
  v241 = OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager____lazy_storage___longTermLogger;
  v244 = v30 & 0xC000000000000001;
  v233 = v30 & 0xFFFFFFFFFFFFFF8;
  v232 = v30 + 32;
  v265 = (v4 + 8);
  v266 = (v4 + 16);
  v4 = 0;
  *&v31 = 136315138;
  v246 = v31;
  *&v31 = 134218242;
  v225 = v31;
  *&v31 = 134217984;
  v223 = v31;
  v249 = v24;
  v242 = v32;
  v267 = v3;
  v239 = v11;
  v243 = v30;
  while (1)
  {
    if (v244)
    {
      v33 = MEMORY[0x23839BFC0](v4, v30);
    }

    else
    {
      if (v4 >= *(v233 + 16))
      {
        goto LABEL_117;
      }

      v33 = *(v232 + 8 * v4);
    }

    v34 = v33;
    v35 = __OFADD__(v4++, 1);
    if (v35)
    {
      goto LABEL_116;
    }

    v253 = v4;
    v30 = v33;
    v4 = (*((*MEMORY[0x277D85000] & *v33) + 0x60))();
    v11 = *(v4 + 16);
    if (v11)
    {
      v264 = (v11 - 1);
      v36 = MEMORY[0x277D84F90];
      v37 = 0;
      while (v37 < *(v4 + 16))
      {
        v268 = *(v4 + 32 + 16 * v37);
        v3 = v37 + 1;
        v30 = v268;
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        if (TTSVBCommonVoiceModelMO.status.getter(ObjectType, *(&v268 + 1)) == 7)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v269 = v36;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v30 = &v269;
            sub_233154978(0, v36[2].isa + 1, 1);
            v36 = v269;
          }

          v40 = v268;
          isa = v36[2].isa;
          v41 = v36[3].isa;
          if (isa >= v41 >> 1)
          {
            v30 = &v269;
            sub_233154978((v41 > 1), isa + 1, 1);
            v40 = v268;
            v36 = v269;
          }

          v36[2].isa = (isa + 1);
          *&v36[2 * isa + 4].isa = v40;
          v24 = v249;
          if (v264 == v37)
          {
            goto LABEL_25;
          }

          ++v37;
        }

        else
        {
          swift_unknownObjectRelease();
          ++v37;
          if (v11 == v3)
          {
            goto LABEL_25;
          }
        }
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
      goto LABEL_115;
    }

    v36 = MEMORY[0x277D84F90];
LABEL_25:

    v43 = v36[2].isa;

    v44 = sub_233225440();
    v45 = v266->isa;
    if (!v43)
    {
      v55 = v235;
      v3 = v267;
      (v45)(v235, v44, v267);
      v56 = v34;
      v57 = sub_23328D6CC();
      v58 = sub_23328DE4C();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v269 = v11;
        *v59 = v246;
        v60 = TTSVBCommonVoiceMO.displayName.getter(v240, &protocol witness table for TTSVBLocalVoiceMO);
        v62 = sub_23311A8F4(v60, v61, &v269);

        *(v59 + 4) = v62;
        _os_log_impl(&dword_233109000, v57, v58, "Local voice didn't have any completed models. Skipping: %s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v11);
        MEMORY[0x23839CFD0](v11, -1, -1);
        MEMORY[0x23839CFD0](v59, -1, -1);
      }

      else
      {
      }

      (v265->isa)(v55, v3);
      goto LABEL_6;
    }

    v263 = v44;
    v264 = v45;
    v3 = v267;
    (v45)(v24);
    v11 = v34;
    v46 = sub_23328D6CC();
    v47 = sub_23328DE4C();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v269 = v49;
      *v48 = v246;
      v50 = TTSVBCommonVoiceMO.displayName.getter(v240, &protocol witness table for TTSVBLocalVoiceMO);
      v52 = sub_23311A8F4(v50, v51, &v269);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_233109000, v46, v47, "Checking local voice: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x23839CFD0](v49, -1, -1);
      MEMORY[0x23839CFD0](v48, -1, -1);

      v53 = v265->isa;
      v54 = v249;
    }

    else
    {

      v53 = v265->isa;
      v54 = v24;
    }

    v262 = v53;
    v53(v54, v3);
    v63 = [v11 voiceID];
    v64 = sub_23328CE8C();
    v65 = *(v64 - 8);
    v66 = *(v65 + 64);
    MEMORY[0x28223BE20](v64);
    v257 = v67;
    v68 = &v223 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!v63)
    {
      break;
    }

    v24 = type metadata accessor for TTSVBCloudVoiceMO();
    sub_23328CE6C();

    v69 = static TTSVBCloudVoiceMO.voiceExists(withID:moc:)(v68, v258);
    v255 = *(v65 + 8);
    v256 = v65 + 8;
    v255(v68, v64);
    if (!v69)
    {
      v80 = v231;
      (v264)(v231, v263, v3);
      v81 = v11;
      v82 = sub_23328D6CC();
      v83 = sub_23328DE4C();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v269 = v11;
        *v84 = v246;
        v85 = TTSVBCommonVoiceMO.displayName.getter(v240, &protocol witness table for TTSVBLocalVoiceMO);
        v87 = sub_23311A8F4(v85, v86, &v269);

        *(v84 + 4) = v87;
        _os_log_impl(&dword_233109000, v82, v83, "Local voice doesn't have existing cloud voice yet. Skipping. %s", v84, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v11);
        MEMORY[0x23839CFD0](v11, -1, -1);
        MEMORY[0x23839CFD0](v84, -1, -1);
      }

      else
      {
      }

      v262(v80, v3);
      v24 = v249;
      goto LABEL_6;
    }

    v70 = v230;
    (v264)(v230, v263, v3);
    v11 = v11;
    v71 = sub_23328D6CC();
    v72 = sub_23328DE4C();

    v73 = os_log_type_enabled(v71, v72);
    v251 = v64;
    *&v268 = v24;
    if (v73)
    {
      v74 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v269 = v24;
      *v74 = v246;
      v75 = TTSVBCommonVoiceMO.displayName.getter(v240, &protocol witness table for TTSVBLocalVoiceMO);
      v77 = sub_23311A8F4(v75, v76, &v269);

      *(v74 + 4) = v77;
      _os_log_impl(&dword_233109000, v71, v72, "Cloud voice exists for local voice: %s. Checking if cloud voice is missing recordings...", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x23839CFD0](v24, -1, -1);
      MEMORY[0x23839CFD0](v74, -1, -1);

      v78 = v70;
      v79 = v267;
    }

    else
    {

      v78 = v70;
      v79 = v3;
    }

    v88 = (v262)(v78, v79);
    MEMORY[0x28223BE20](v88);
    *(&v223 - 2) = v11;
    v89 = sub_233175210();
    if (v89)
    {
      MEMORY[0x28223BE20](v89);
      *(&v223 - 2) = sub_2331BACA4;
      *(&v223 - 1) = &v223 - 2;
      sub_23328D2BC();
    }

    v90 = *((*MEMORY[0x277D85000] & *v11) + 0x58);
    v30 = v11;
    v260 = (*MEMORY[0x277D85000] & *v11) + 88;
    v261 = v90;
    v91 = v90();
    v3 = 0;
    v92 = (v91 + 40);
    v4 = -*(v91 + 16);
    v93 = -1;
    while (v4 + v93 != -1)
    {
      if (++v93 >= *(v91 + 16))
      {
        goto LABEL_111;
      }

      v24 = (v92 + 2);
      v95 = *(v92 - 1);
      v94 = *v92;
      v96 = swift_getObjectType();
      swift_unknownObjectRetain();
      v30 = TTSVBCommonVoiceSampleMO.hasVoiceRecording.getter(v96, v94);
      swift_unknownObjectRelease();
      v92 = v24;
      v35 = __OFADD__(v3, v30 & 1);
      v3 += v30 & 1;
      if (v35)
      {
        goto LABEL_112;
      }
    }

    v97 = v237;
    v98 = v267;
    (v264)(v237, v263, v267);
    v99 = v11;
    v100 = sub_23328D6CC();
    v101 = sub_23328DE4C();
    v102 = os_log_type_enabled(v100, v101);
    v250 = v99;
    if (v102)
    {
      LODWORD(v254) = v101;
      v259 = v100;
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v252 = &v223;
      v269 = v104;
      *v103 = v225;
      *(v103 + 4) = v3;
      *(v103 + 12) = 2080;
      v105 = &v223 - ((v257 + 15) & 0xFFFFFFFFFFFFFFF0);
      v106 = [v99 voiceID];
      v11 = &v223;
      MEMORY[0x28223BE20](v106);

      if (!v106)
      {
        goto LABEL_125;
      }

      sub_23328CE6C();

      v107 = v251;
      (*(v65 + 32))(v105, v105, v251);
      sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068]);
      v108 = sub_23328E51C();
      v110 = v109;
      v255(v105, v107);
      v111 = sub_23311A8F4(v108, v110, &v269);

      *(v103 + 14) = v111;
      v112 = v259;
      _os_log_impl(&dword_233109000, v259, v254, "Found %ld local samples with audio files. %s", v103, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v104);
      MEMORY[0x23839CFD0](v104, -1, -1);
      MEMORY[0x23839CFD0](v103, -1, -1);

      v113 = (v262)(v237, v267);
      v24 = v249;
      v99 = v250;
    }

    else
    {

      v113 = (v262)(v97, v98);
      v24 = v249;
    }

    v115 = MEMORY[0x28223BE20](v113);
    *(&v223 - 2) = v3;
    *(&v223 - 1) = v99;
    v116 = *(v247 + v241);
    v117 = &unk_2789C4000;
    if (v116)
    {
      MEMORY[0x28223BE20](v114);
      *(&v223 - 2) = sub_2331BAD64;
      *(&v223 - 1) = v118;

      sub_23328D2BC();
      sub_2331B9710(v116);
    }

    v119 = [v99 voiceID];
    MEMORY[0x28223BE20](v119);
    v121 = &v223 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!v122)
    {
      goto LABEL_124;
    }

    sub_23328CE6C();

    v123 = static TTSVBCloudVoiceMO.findOrFetch(voiceID:moc:)(v121, v258);
    v124 = (v255)(v121, v251);
    if (!v123)
    {
      goto LABEL_5;
    }

    v125 = *((*MEMORY[0x277D85000] & *v123) + 0x58);
    v229 = v123;
    v126 = v125(v124);
    v127 = *(v126 + 16);
    if (v127)
    {
      v269 = MEMORY[0x277D84F90];
      sub_23328E2DC();
      type metadata accessor for TTSVBCloudVoiceSampleMO();
      v128 = 32;
      do
      {
        v129 = *(v126 + v128);
        if (swift_dynamicCastClass())
        {
          swift_unknownObjectRetain();
        }

        sub_23328E2BC();
        v11 = v269[2].isa;
        sub_23328E2EC();
        sub_23328E2FC();
        sub_23328E2CC();
        v128 += 16;
        --v127;
      }

      while (v127);

      v4 = v269;
      v117 = &unk_2789C4000;
      v99 = v250;
    }

    else
    {

      v4 = MEMORY[0x277D84F90];
    }

    v130 = 0;
    v30 = 0;
    v131 = *(v4 + 16);
    while (v131 != v30)
    {
      if (v30 >= *(v4 + 16))
      {
        goto LABEL_113;
      }

      if ([*(v4 + 8 * v30 + 32) v117[391]])
      {
        swift_unknownObjectRelease();
        v132 = 1;
      }

      else
      {
        v132 = 0;
      }

      ++v30;
      v35 = __OFADD__(v130, v132);
      v130 += v132;
      if (v35)
      {
        goto LABEL_114;
      }
    }

    (v264)(v234, v263, v267);
    v133 = sub_23328D6CC();
    v134 = sub_23328DE4C();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      *v135 = v223;
      *(v135 + 4) = v130;
      _os_log_impl(&dword_233109000, v133, v134, "Found %ld cloud samples with audio files.", v135, 0xCu);
      MEMORY[0x23839CFD0](v135, -1, -1);
    }

    v136 = (v262)(v234, v267);
    v138.n128_f64[0] = MEMORY[0x28223BE20](v136);
    *(&v223 - 2) = v130;
    v139 = *(v247 + v241);
    if (v139)
    {
      MEMORY[0x28223BE20](v137);
      *(&v223 - 2) = sub_2331BAD6C;
      *(&v223 - 1) = v140;

      sub_23328D2BC();
      sub_2331B9710(v139);
    }

    if (v130 >= v3)
    {

LABEL_5:
      goto LABEL_6;
    }

    v141 = v267;
    (v264)(v226, v263, v267, v138);
    v4 = sub_23328D6CC();
    v142 = sub_23328DE4C();
    if (os_log_type_enabled(v4, v142))
    {
      v143 = swift_slowAlloc();
      *v143 = 0;
      _os_log_impl(&dword_233109000, v4, v142, "Cloud voice count is less than local voice count. Checking diff.", v143, 2u);
      MEMORY[0x23839CFD0](v143, -1, -1);
    }

    v144 = (v262)(v226, v141);
    v145 = *(v247 + v241);
    if (v145)
    {
      v146 = *(v247 + v241);

      sub_23328D2BC();
      v144 = sub_2331B9710(v145);
    }

    v30 = v99;
    v254 = (v261)(v144);
    v252 = *(v254 + 16);
    if (v252)
    {
      v24 = 0;
      v147 = (v254 + 40);
      while (v24 < *(v254 + 16))
      {
        v11 = *(v147 - 1);
        v148 = *v147;
        v149 = swift_getObjectType();
        v4 = &v148[26];
        v150 = v148[26].isa;
        swift_unknownObjectRetain();
        v30 = v11;
        v151 = v150(v149, v148);
        if (v152)
        {
          v153 = v151;
          v154 = v152;
          v260 = v24;
          v261 = v147;
          *&v268 = v11;
          v155 = [v99 voiceID];
          MEMORY[0x28223BE20](v155);
          v157 = &v223 - ((v156 + 15) & 0xFFFFFFFFFFFFFFF0);
          if (!v158)
          {
            __break(1u);
            goto LABEL_123;
          }

          type metadata accessor for TTSVBCloudVoiceSampleMO();
          sub_23328CE6C();

          v259 = static TTSVBCloudVoiceSampleMO.findOrFetch(sampleID:voiceID:moc:)(v153, v154, v157, v258);

          v255(v157, v251);
          v3 = sub_23328CC9C();
          v159 = *(v3 - 8);
          v160 = *(v159 + 64);
          MEMORY[0x28223BE20](v3);
          v11 = (&v223 - ((v160 + 15) & 0xFFFFFFFFFFFFFFF0));
          v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
          v4 = &v223;
          v162 = (*(*(v161 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v161 - 8);
          v164 = &v223 - v163;
          v165 = v148;
          v166 = v159;
          v30 = v268;
          TTSVBCommonVoiceSampleMO.url.getter(v149, v165, &v223 - v163);
          if ((*(v166 + 48))(v164, 1, v3) == 1)
          {
            swift_unknownObjectRelease();

            sub_233121E04(v164, &qword_27DDE19A0, &unk_233290360);
            v99 = v250;
            v24 = v260;
            v147 = v261;
          }

          else
          {
            v245 = &v223;
            v248 = v166;
            (*(v166 + 32))(&v223 - ((v160 + 15) & 0xFFFFFFFFFFFFFFF0), v164, v3);
            v269 = *sub_2331DEBE8();
            v167 = v269;
            v168 = _TTSVBFileManager.fileExists(_:)();

            v169 = (v166 + 16);
            if (v168)
            {
              v170 = v236;
              v171 = v267;
              v172 = (v264)(v236, v263, v267);
              v173 = MEMORY[0x28223BE20](v172);
              v174 = &v223 - ((v160 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*v169)(v174, v11, v3, v173);
              v175 = sub_23328D6CC();
              v176 = sub_23328DE4C();
              v177 = os_log_type_enabled(v175, v176);
              v147 = v261;
              if (v177)
              {
                v178 = swift_slowAlloc();
                v228 = swift_slowAlloc();
                v269 = v228;
                *v178 = v246;
                sub_2331BC7FC(&qword_27DDE29B8, MEMORY[0x28220BDE0]);
                v179 = sub_23328E51C();
                v180 = v11;
                v182 = v181;
                v238 = *(v248 + 8);
                (v238)(v174, v3);
                v183 = sub_23311A8F4(v179, v182, &v269);
                v11 = v180;

                *(v178 + 4) = v183;
                _os_log_impl(&dword_233109000, v175, v176, "Updating file backed future for audio recording: %s.", v178, 0xCu);
                v184 = v228;
                __swift_destroy_boxed_opaque_existential_0(v228);
                MEMORY[0x23839CFD0](v184, -1, -1);
                MEMORY[0x23839CFD0](v178, -1, -1);

                v185 = v236;
                v186 = v267;
              }

              else
              {

                v238 = *(v248 + 8);
                (v238)(v174, v3);
                v185 = v170;
                v186 = v171;
              }

              v204 = (v262)(v185, v186);
              v24 = v260;
              MEMORY[0x28223BE20](v204);
              *(&v223 - 2) = v11;
              v206 = *(v247 + v241);
              v99 = v250;
              v4 = v268;
              if (v206)
              {
                MEMORY[0x28223BE20](v205);
                *(&v223 - 2) = sub_2331BAEB8;
                *(&v223 - 1) = v207;

                sub_23328D2BC();
                sub_2331B9710(v206);
              }

              v30 = v259;
              if (v259)
              {
                v208 = objc_opt_self();
                v209 = v30;
                v30 = sub_23328CBCC();
                v210 = [v208 createFutureForFileAtURL_];

                [v209 setAudioFuture_];
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
              }

              else
              {
                swift_unknownObjectRelease();
              }

              (v238)(v11, v3);
            }

            else
            {
              v187 = v267;
              v188 = (v264)(v239, v263, v267);
              v238 = &v223;
              v189 = MEMORY[0x28223BE20](v188);
              v190 = &v223 - ((v160 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*v169)(v190, v11, v3, v189);
              v191 = sub_23328D6CC();
              v192 = sub_23328DE3C();
              v193 = os_log_type_enabled(v191, v192);
              v147 = v261;
              if (v193)
              {
                v194 = swift_slowAlloc();
                v227 = swift_slowAlloc();
                v269 = v227;
                *v194 = v246;
                sub_2331BC7FC(&qword_27DDE29B8, MEMORY[0x28220BDE0]);
                v195 = sub_23328E51C();
                v228 = v11;
                v197 = v196;
                v198 = v3;
                v199 = *(v248 + 8);
                v199(v190, v198);
                v200 = sub_23311A8F4(v195, v197, &v269);
                v11 = v228;

                *(v194 + 4) = v200;
                v30 = v199;
                v3 = v198;
                _os_log_impl(&dword_233109000, v191, v192, "Failed to update file backed future for audio recording. File doesn't exist. Skipping.: %s.", v194, 0xCu);
                v201 = v227;
                __swift_destroy_boxed_opaque_existential_0(v227);
                MEMORY[0x23839CFD0](v201, -1, -1);
                MEMORY[0x23839CFD0](v194, -1, -1);
                swift_unknownObjectRelease();

                v202 = v239;
                v203 = v267;
              }

              else
              {
                swift_unknownObjectRelease();

                v30 = *(v248 + 8);
                (v30)(v190, v3);
                v202 = v239;
                v203 = v187;
              }

              v262(v202, v203);
              v4 = v245;
              v24 = v260;
              (v30)(v11, v3);
              v99 = v250;
            }
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v24 = (v24 + 1);
        v147 += 2;
        if (v252 == v24)
        {
          goto LABEL_104;
        }
      }

LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

LABEL_104:

    NSManagedObjectContext.saveOrRollback()();
    v211 = v224;
    v3 = v267;
    (v264)(v224, v263, v267);
    v212 = v99;
    v213 = sub_23328D6CC();
    v214 = sub_23328DE4C();

    if (os_log_type_enabled(v213, v214))
    {
      v215 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v269 = v11;
      *v215 = v246;
      v216 = TTSVBCommonVoiceMO.displayName.getter(v240, &protocol witness table for TTSVBLocalVoiceMO);
      v218 = sub_23311A8F4(v216, v217, &v269);

      *(v215 + 4) = v218;
      _os_log_impl(&dword_233109000, v213, v214, "Successfully updated audio files for %s.", v215, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x23839CFD0](v11, -1, -1);
      MEMORY[0x23839CFD0](v215, -1, -1);
    }

    v219 = (v262)(v211, v3);
    MEMORY[0x28223BE20](v219);
    *(&v223 - 2) = v212;
    v221 = *(v247 + v241);
    v24 = v249;
    if (v221)
    {
      MEMORY[0x28223BE20](v220);
      *(&v223 - 2) = sub_2331BAE18;
      *(&v223 - 1) = v222;

      sub_23328D2BC();

      sub_2331B9710(v221);
    }

    else
    {
    }

LABEL_6:
    v30 = v243;
    v4 = v253;
    if (v253 == v242)
    {
      goto LABEL_121;
    }
  }

LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
}

void sub_2331B0848(uint64_t a1, void *a2)
{
  sub_23328E24C();

  v12[2] = 0x20646E756F46;
  v12[3] = 0xE600000000000000;
  v12[1] = a1;
  v4 = sub_23328E51C();
  MEMORY[0x23839B7E0](v4);

  MEMORY[0x23839B7E0](0xD000000000000021, 0x80000002332A86A0);
  v5 = [a2 voiceID];
  v6 = sub_23328CE8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v5)
  {
    sub_23328CE6C();

    sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068]);
    v11 = sub_23328E51C();
    MEMORY[0x23839B7E0](v11);

    (*(v7 + 8))(v10, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2331B0A08(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v7 = sub_23328D7CC();
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v7);
  v30 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23328D80C();
  v31 = *(v10 - 8);
  v32 = v10;
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23328CE8C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v18 = a1(v17);
  v27[2] = v27;
  v27[1] = *(a3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue);
  MEMORY[0x28223BE20](v18);
  v19 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v19, v19, v14);
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v21 = swift_allocObject();
  v22 = v29;
  *(v21 + 16) = v28;
  *(v21 + 24) = v22;
  (*(v15 + 32))(v21 + v20, v19, v14);
  aBlock[4] = sub_2331BE01C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_602;
  v23 = _Block_copy(aBlock);

  sub_23328D7DC();
  v35 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  v24 = v30;
  v25 = v34;
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v13, v24, v23);
  _Block_release(v23);
  (*(v33 + 8))(v24, v25);
  (*(v31 + 8))(v13, v32);
  (*(v15 + 8))(v19, v14);
}

uint64_t sub_2331B0FE0(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_23328D7CC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23328D80C();
  v25 = *(v14 - 8);
  v26 = v14;
  v15 = *(v25 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(&v29, v16);
  v19 = *(a3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue);
  v20 = v29;
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  *(v21 + 32) = v20;
  aBlock[4] = sub_2331BCAD4;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_467;
  v22 = _Block_copy(aBlock);

  sub_23328D7DC();
  v27 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v18, v13, v22);
  _Block_release(v22);
  (*(v10 + 8))(v13, v9);
  (*(v25 + 8))(v18, v26);
}

uint64_t sub_2331B1458(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v17 - v13;
  v15 = a6(0);
  (*(*(v15 - 8) + 16))(v14, a3, v15);
  swift_storeEnumTagMultiPayload();
  a1(v14);
  return sub_233121E04(v14, a4, a5);
}

uint64_t sub_2331B1564(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_23328D7CC();
  v24 = *(v9 - 8);
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_23328D80C();
  v13 = *(v23 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v23);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v15);
  v18 = *(a3 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  aBlock[4] = sub_2331BDE74;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2331221F8;
  aBlock[3] = &block_descriptor_584;
  v20 = _Block_copy(aBlock);

  sub_23328D7DC();
  v25 = MEMORY[0x277D84F90];
  sub_2331B2AAC(qword_280D3A270, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE2540, &qword_233290328);
  sub_23315246C(&qword_280D3A258, &unk_27DDE2540, &qword_233290328);
  sub_23328E14C();
  MEMORY[0x23839BC20](0, v17, v12, v20);
  _Block_release(v20);
  (*(v24 + 8))(v12, v9);
  (*(v13 + 8))(v17, v23);
}

uint64_t sub_2331B19D8(void (*a1)(char *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  swift_storeEnumTagMultiPayload();
  a1(v5);
  return sub_233121E04(v5, &unk_27DDE25D0, &unk_233290330);
}

void TTSVBVoiceBankingManager.xpcServiceConfig.getter(uint64_t a1@<X8>)
{
  if (!TTSVBProcessIsVoicebankingd())
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = *(v1 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_dataStore);
  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v4 = v3;
  sub_2331E7F08(a1);
}

void TTSVBVoiceBankingManager.getTrainingMetadataDownloadingIfNeeded(localeID:scriptType:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_23317503C();
  v10 = sub_23328D95C();
  v11 = *(v5 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue);
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  v14[4] = sub_2331B9708;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_233189B88;
  v14[3] = &block_descriptor_192;
  v13 = _Block_copy(v14);

  [v9 fetchTrainingScriptsWithLocaleID:v10 scriptType:a3 replyOnQueue:v11 completion:v13];
  _Block_release(v13);
}

void sub_2331B1C38(uint64_t a1, uint64_t a2, void *a3, void (*a4)(char *))
{
  if (a3)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A8, &qword_233299A30);
    v7 = *(*(v6 - 8) + 64);
    MEMORY[0x28223BE20](v6);
    v9 = &v16 - v8;
    v10 = a3;
    sub_2331524CC(&v18);
    v16 = v18;
    v17 = v19;
    static TTSVBError.map(_:_:)(a3, &v16, v9);
    sub_2331220AC(v16, *(&v16 + 1), v17);
    swift_storeEnumTagMultiPayload();
    a4(v9);

    v11 = v9;
LABEL_5:
    sub_233121E04(v11, &qword_27DDE19A8, &qword_233299A30);
    return;
  }

  if (a2)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A8, &qword_233299A30);
    v13 = *(*(v12 - 8) + 64);
    MEMORY[0x28223BE20](v12);
    v15 = &v16 - v14;
    sub_23328CB7C();
    swift_storeEnumTagMultiPayload();
    a4(v15);
    v11 = v15;
    goto LABEL_5;
  }

  __break(1u);
}

void TTSVBVoiceBankingManager.getTrainingMetadataDownloadingIfNeeded(localeID:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_23317503C();
  v8 = sub_23328D95C();
  v9 = *(v4 + OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_calloutQueue);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v12[4] = sub_2331BE6D0;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_233189B88;
  v12[3] = &block_descriptor_199;
  v11 = _Block_copy(v12);

  [v7 fetchTrainingScriptsWithLocaleID:v8 scriptType:@"default" replyOnQueue:v9 completion:v11];
  _Block_release(v11);
}

uint64_t TTSVBVoiceBankingManager.discardLongTermLogs(olderThan:)()
{
  result = sub_233175210();
  if (result)
  {
    sub_23328D2AC();
  }

  return result;
}

id TTSVBVoiceBankingManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2331B2200(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x23839BAC0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_2331B2254(uint64_t a1, uint64_t a2)
{
  v3 = sub_23328DD7C();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_2331B22AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23328DD8C();
  *a1 = result;
  return result;
}

uint64_t sub_2331B22D4@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  type metadata accessor for TTSVBLocalVoiceMO();
  sub_23310BA90(&v43);
  v41 = v43;
  v42 = v44;
  v7 = static TTSVBLocalVoiceMO.requireVoiceWithID(_:moc:problemForThrownError:)(v4, v5, &v41);
  result = sub_2331220AC(v41, *(&v41 + 1), v42);
  if (v2)
  {
    return result;
  }

  v39 = v7;
  v9 = [v7 samples];
  if (!v9 || (v10 = v9, v11 = [v9 allObjects], v10, v12 = sub_23328DBFC(), v11, v13 = sub_233179498(v12), , !v13))
  {

    v13 = MEMORY[0x277D84F90];
    v40 = a1;
    if (!v6)
    {
      goto LABEL_25;
    }

LABEL_7:
    *&v43 = MEMORY[0x277D84F90];
    if (v13 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23328E19C())
    {
      v15 = v13 & 0xC000000000000001;
      v16 = v13 & 0xFFFFFFFFFFFFFF8;
      v17 = 4;
      v18 = &qword_27DDE2960;
      v45 = v13;
      while (1)
      {
        v19 = v17 - 4;
        if (v15)
        {
          v20 = MEMORY[0x23839BFC0](v17 - 4, v13);
        }

        else
        {
          if (v19 >= *(v16 + 16))
          {
            goto LABEL_21;
          }

          v20 = *(v13 + 8 * v17);
        }

        v21 = v20;
        v22 = v17 - 3;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v23 = type metadata accessor for TTSVBLocalVoiceSampleMO();
        v24 = sub_2331B2AAC(v18, type metadata accessor for TTSVBLocalVoiceSampleMO);
        TTSVBCommonVoiceSampleMO.trainingValidity.getter(v23, v24, &v41);
        if (TTSVBVoiceSampleTrainingValidity.isValid.getter())
        {
          sub_23328E2BC();
          v25 = v16;
          v26 = i;
          v27 = v15;
          v28 = v18;
          v29 = *(v43 + 16);
          sub_23328E2EC();
          v18 = v28;
          v15 = v27;
          i = v26;
          v16 = v25;
          v13 = v45;
          sub_23328E2FC();
          sub_23328E2CC();
        }

        else
        {
        }

        ++v17;
        if (v22 == i)
        {
          v30 = v43;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

    v30 = MEMORY[0x277D84F90];
LABEL_24:

    v13 = v30;
    goto LABEL_25;
  }

  v40 = a1;
  if (v6)
  {
    goto LABEL_7;
  }

LABEL_25:
  if (v13 >> 62)
  {
LABEL_42:
    v31 = sub_23328E19C();
  }

  else
  {
    v31 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = 0;
  v33 = 0;
  while (v31 != v32)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x23839BFC0](v32, v13);
    }

    else
    {
      if (v32 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v34 = *(v13 + 8 * v32 + 32);
    }

    v35 = v34;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v36 = type metadata accessor for TTSVBLocalVoiceSampleMO();
    v37 = sub_2331B2AAC(&qword_27DDE2960, type metadata accessor for TTSVBLocalVoiceSampleMO);
    LOBYTE(v36) = TTSVBCommonVoiceSampleMO.hasVoiceRecording.getter(v36, v37);

    ++v32;
    v38 = __OFADD__(v33, v36 & 1);
    v33 += v36 & 1;
    if (v38)
    {
      goto LABEL_41;
    }
  }

  *v40 = v33;
  return result;
}

uint64_t sub_2331B268C@<X0>(unint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  type metadata accessor for TTSVBLocalVoiceMO();
  sub_23310BA90(&v45);
  v43 = v45;
  v44 = v46;
  v7 = static TTSVBLocalVoiceMO.requireVoiceWithID(_:moc:problemForThrownError:)(v4, v5, &v43);
  result = sub_2331220AC(v43, *(&v43 + 1), v44);
  if (v2)
  {
    return result;
  }

  v42 = v7;
  v9 = [v7 samples];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 allObjects];

    v12 = sub_23328DBFC();
    v13 = sub_233179498(v12);

    if (v13)
    {
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_7:
      *&v45 = MEMORY[0x277D84F90];
      if (v13 >> 62)
      {
        goto LABEL_22;
      }

      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      for (i = a1; v14; i = a1)
      {
        a1 = v13 & 0xC000000000000001;
        v15 = v13 & 0xFFFFFFFFFFFFFF8;
        v16 = 4;
        v17 = &qword_27DDE2960;
        v47 = v13;
        while (1)
        {
          v18 = v16 - 4;
          if (a1)
          {
            v19 = MEMORY[0x23839BFC0](v16 - 4, v13);
          }

          else
          {
            if (v18 >= *(v15 + 16))
            {
              goto LABEL_21;
            }

            v19 = *(v13 + 8 * v16);
          }

          v20 = v19;
          v21 = v16 - 3;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          v22 = type metadata accessor for TTSVBLocalVoiceSampleMO();
          v23 = sub_2331B2AAC(v17, type metadata accessor for TTSVBLocalVoiceSampleMO);
          TTSVBCommonVoiceSampleMO.trainingValidity.getter(v22, v23, &v43);
          if (TTSVBVoiceSampleTrainingValidity.isValid.getter())
          {
            sub_23328E2BC();
            v24 = v15;
            v25 = v14;
            v26 = a1;
            v27 = v17;
            v28 = *(v45 + 16);
            sub_23328E2EC();
            v17 = v27;
            a1 = v26;
            v14 = v25;
            v15 = v24;
            v13 = v47;
            sub_23328E2FC();
            sub_23328E2CC();
          }

          else
          {
          }

          ++v16;
          if (v21 == v14)
          {
            v29 = v45;
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        v14 = sub_23328E19C();
      }

      v29 = MEMORY[0x277D84F90];
LABEL_24:

      v13 = v29;
      a1 = i;
      goto LABEL_25;
    }
  }

  v13 = MEMORY[0x277D84F90];
  if (v6)
  {
    goto LABEL_7;
  }

LABEL_25:
  if (v13 >> 62)
  {
    goto LABEL_37;
  }

  v30 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (j = a1; v30; j = a1)
  {
    a1 = v13 & 0xC000000000000001;
    v32 = 0.0;
    v33 = 4;
    while (1)
    {
      v34 = v33 - 4;
      if (a1)
      {
        v35 = MEMORY[0x23839BFC0](v33 - 4, v13);
      }

      else
      {
        if (v34 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v35 = *(v13 + 8 * v33);
      }

      v36 = v35;
      v37 = __OFADD__(v34, 1);
      v38 = v33 - 3;
      if (v37)
      {
        break;
      }

      [v35 recordingDuration];
      v40 = v39;

      v32 = v32 + v40;
      ++v33;
      if (v38 == v30)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    v30 = sub_23328E19C();
  }

  v32 = 0.0;
LABEL_39:

  *j = v32;
  return result;
}

uint64_t objectdestroy_9Tm()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2331B2AAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2331B2B84(uint64_t (*a1)(unint64_t))
{
  v3 = *(sub_23328CE8C() - 8);
  v4 = *(v1 + 16);
  return a1(v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80)));
}

uint64_t sub_2331B2C00()
{
  sub_2331B2AAC(&qword_27DDE2948, type metadata accessor for TTSVBSiriTrainingVersion);
  sub_2331B2AAC(&qword_27DDE2950, type metadata accessor for TTSVBSiriTrainingVersion);

  return sub_23328E36C();
}

uint64_t sub_2331B2CBC()
{
  sub_2331B2AAC(&qword_27DDE2938, type metadata accessor for TTSVBSiriTrainingAssetName);
  sub_2331B2AAC(&qword_27DDE2940, type metadata accessor for TTSVBSiriTrainingAssetName);

  return sub_23328E36C();
}

uint64_t sub_2331B2D78()
{
  v2 = *v0;
  sub_2331B2AAC(&qword_27DDE2928, type metadata accessor for TTSVBSiriTrainingAssetType);
  sub_2331B2AAC(&qword_27DDE2930, type metadata accessor for TTSVBSiriTrainingAssetType);
  return sub_23328E36C();
}

uint64_t sub_2331B2E34()
{
  sub_2331B2AAC(&qword_27DDE2918, type metadata accessor for TTSVBSiriTrainingScriptType);
  sub_2331B2AAC(&qword_27DDE2920, type metadata accessor for TTSVBSiriTrainingScriptType);

  return sub_23328E36C();
}

uint64_t sub_2331B2F40(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2331B3038;

  return v7(a1);
}

uint64_t sub_2331B3038()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

size_t sub_2331B3130(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_2331B330C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2A00, &unk_233299B10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2331B345C()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000024, 0x80000002332A8ED0);
  v5 = sub_23328CE3C();
  MEMORY[0x23839B7E0](v5);

  MEMORY[0x23839B7E0](0xD000000000000013, 0x80000002332A8F00);
  if (v4)
  {
    v6 = v2;
  }

  else
  {
    v6 = 0x3E6C696E3CLL;
  }

  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x23839B7E0](v6, v7);

  MEMORY[0x23839B7E0](0xD000000000000011, 0x80000002332A8F20);
  v8 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v8);

  return 0;
}

void sub_2331B358C()
{
  v1 = *(sub_23328CC9C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_23328CE8C() - 8);
  v5 = *(v0 + v3);
  v6 = *(v0 + v3 + 8);
  v7 = v0 + v2;
  v8 = v0 + ((v3 + *(v4 + 80) + 16) & ~*(v4 + 80));
  v9 = *(v0 + 16);
  sub_233185384(v7, v5, v6, v8);
}

uint64_t sub_2331B3694()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[5];
  v4 = v0[4];
  v5 = sub_23317503C();
  v6 = [v5 getAllAvailableLocalesForTrainingVersion_];

  v7 = sub_23328DBFC();
  v2(v7);
}

uint64_t sub_2331B3768()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[4];
  v8 = sub_23317503C();
  v9 = sub_23328D95C();
  v10 = [v8 installedTrainingAssetsForLocaleID:v9 name:v5 type:v6];

  sub_233144EEC(0, &qword_27DDE2A28, off_2789C3138);
  v11 = sub_23328DBFC();

  if (v11 >> 62)
  {
    v12 = sub_23328E19C();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2(v12 > 0);
}

void sub_2331B3874()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[2];
  TTSVBVoiceBankingManager.queue_fetchTrainingScriptItems(localeID:scriptType:_:)(v1, v2, v3, v4, v5);
}

size_t sub_2331B38BC()
{
  v1 = *(sub_23328CE8C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = (v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_23318A4A0(v0 + v2, v5, v6, v8, v9);
}

uint64_t objectdestroy_15Tm()
{
  v1 = sub_23328CE8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2331B3A28@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(sub_23328CE8C() - 8);
  v5 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));
  v6 = *(v1 + 16);
  result = sub_23318AE30(v5);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

void sub_2331B3AAC()
{
  v1 = *(sub_23328CE8C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = v0 + v2;
  v5 = *(v0 + 16);
  sub_23318B2C8(v4, v3);
}

_DWORD *sub_2331B3B44()
{
  v1 = *(sub_23328CE8C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 17) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 9);
  v9 = *(v0 + v4);
  v10 = *(v0 + v4 + 8);

  return sub_23318D418(v0 + v2, v6, v7, v8, v9, v10);
}

void sub_2331B3C18(uint64_t a1@<X8>)
{
  v3 = *(sub_23328CC9C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = v1 + v4;
  v11 = *(v1 + 16);
  sub_233190364(v10, *v7, v7[1], v8, v9, a1);
}

void sub_2331B3CD4()
{
  v1 = *(sub_23328CE8C() - 8);
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));
  v5 = v0[2];
  sub_2331928FC(v2, v3, v4);
}

uint64_t sub_2331B3D44()
{
  v1 = *(sub_23328CE8C() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_23328CE1C() - 8);
  v9 = (v7 + *(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v11 = (v10 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v12 = (v11 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  return sub_2331930D8(*(v0 + 16), *(v0 + 24), *(v0 + 32), (v0 + v2), v0 + v5, *(v0 + v6), *(v0 + v7), *(v0 + v7 + 8), *(v0 + v10), *(v0 + v11), *(v0 + v12), *(v0 + ((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL)), v0 + v9, *(v0 + ((((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v12 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_2331B3F14()
{
  v1 = *(sub_23328CE8C() - 8);
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));
  v5 = v0[2];
  sub_2331942D8(v2, v3, v4);
}

uint64_t sub_2331B3F8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

size_t sub_2331B4014(size_t a1, int64_t a2, char a3)
{
  result = sub_2331B40E0(a1, a2, a3, *v3, &qword_27DDE2A88, qword_233299B90, type metadata accessor for TTSVBInstalledVoiceModel);
  *v3 = result;
  return result;
}

size_t sub_2331B4058(size_t a1, int64_t a2, char a3)
{
  result = sub_2331B40E0(a1, a2, a3, *v3, &qword_27DDE2A50, &qword_233299B58, type metadata accessor for TTSVBVoiceModel);
  *v3 = result;
  return result;
}

size_t sub_2331B409C(size_t a1, int64_t a2, char a3)
{
  result = sub_2331B40E0(a1, a2, a3, *v3, &qword_27DDE2A18, &qword_233299B30, type metadata accessor for TTSVBVoiceSample);
  *v3 = result;
  return result;
}

size_t sub_2331B40E0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_2331B42BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_23328E61C();
  sub_23328DA3C();
  v7 = sub_23328E66C();

  return a3(a1, a2, v7);
}

unint64_t sub_2331B4340(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for TTSVBVoice();
  sub_2331B2AAC(&qword_27DDE29A0, type metadata accessor for TTSVBVoice);
  v5 = sub_23328D8BC();

  return sub_2331B43D8(a1, v5);
}

unint64_t sub_2331B43D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSVBVoice();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_2331BDBEC(*(v2 + 48) + v12 * v10, v8, type metadata accessor for TTSVBVoice);
      sub_2331B2AAC(&qword_280D3A0A0, type metadata accessor for TTSVBVoice);
      v13 = sub_23328D90C();
      sub_2331BDC54(v8, type metadata accessor for TTSVBVoice);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_2331B458C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTSVBVoice();
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2998, &qword_233299AB8);
  v48 = a2;
  result = sub_23328E34C();
  v13 = v10;
  v14 = result;
  if (*(v10 + 16))
  {
    v44 = v3;
    v45 = v10;
    v15 = 0;
    v16 = (v10 + 64);
    v17 = 1 << *(v10 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v10 + 64);
    v20 = (v17 + 63) >> 6;
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v46 + 72);
      v28 = *(v13 + 48) + v27 * v26;
      if (v48)
      {
        sub_2331BDDC4(v28, v9, type metadata accessor for TTSVBVoice);
        v29 = *(v13 + 56);
        v30 = v9;
        v31 = *(v29 + 8 * v26);
      }

      else
      {
        sub_2331BDBEC(v28, v9, type metadata accessor for TTSVBVoice);
        v32 = *(v13 + 56);
        v30 = v9;
        v31 = *(v32 + 8 * v26);
      }

      v33 = *(v14 + 40);
      sub_2331B2AAC(&qword_27DDE29A0, type metadata accessor for TTSVBVoice);
      v34 = v30;
      result = sub_23328D8BC();
      v35 = -1 << *(v14 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v21 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v21 + 8 * v37);
          if (v41 != -1)
          {
            v22 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v36) & ~*(v21 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = sub_2331BDDC4(v34, *(v14 + 48) + v27 * v22, type metadata accessor for TTSVBVoice);
      *(*(v14 + 56) + 8 * v22) = v31;
      v9 = v34;
      ++*(v14 + 16);
      v13 = v45;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v16, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

void sub_2331B4940(uint64_t a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      sub_2331B5210(v8, v4, v2);
      MEMORY[0x23839CFD0](v8, -1, -1);
      goto LABEL_4;
    }
  }

  MEMORY[0x28223BE20](a1);
  v6 = v9 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_2331B4D1C(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

LABEL_4:
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2331B4AA4()
{
  v1 = *(v0 + 16);
  sub_23328E24C();
  MEMORY[0x23839B7E0](0x656C7069746C754DLL, 0xEA00000000002820);
  v4 = *(v1 + 16);
  v2 = sub_23328E51C();
  MEMORY[0x23839B7E0](v2);

  MEMORY[0x23839B7E0](0xD000000000000053, 0x80000002332A8520);
  return 0;
}

uint64_t sub_2331B4C30()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5[3] = sub_23328D12C();
  v5[4] = MEMORY[0x277D70398];
  __swift_allocate_boxed_opaque_existential_1(v5);

  sub_23328D13C();
  sub_23328D10C();
  __swift_destroy_boxed_opaque_existential_0(v5);
  sub_23328D10C();
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

void sub_2331B4D1C(unint64_t *a1, uint64_t a2, void *a3)
{
  v43 = a2;
  v44 = a1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2828, &qword_233299268);
  v4 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v56 = &v42 - v7;
  v8 = type metadata accessor for TTSVBVoice();
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = 0;
  v11 = 0;
  v50 = a3;
  v14 = a3[8];
  v13 = a3 + 8;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v52 = (v17 - 1) & v17;
LABEL_12:
    v22 = v19 | (v11 << 6);
    v23 = v50;
    v24 = v53;
    sub_2331BDBEC(v50[6] + *(v47 + 72) * v22, v53, type metadata accessor for TTSVBVoice);
    v25 = v23[7];
    v46 = v22;
    v26 = *(v25 + 8 * v22);
    v27 = v24;
    v28 = v56;
    sub_2331BDBEC(v27, v56, type metadata accessor for TTSVBVoice);
    v29 = v49;
    *(v28 + *(v49 + 48)) = v26;
    v30 = v28;
    v31 = v48;
    sub_233121D34(v30, v48, &qword_27DDE2828, &qword_233299268);
    v32 = *(v31 + *(v29 + 48));
    v51 = v26;
    swift_bridgeObjectRetain_n();
    sub_2331BDC54(v31, type metadata accessor for TTSVBVoice);
    v33 = sub_233167D94();
    v34 = v33[1];
    v54 = *v33;
    v55 = v34;
    MEMORY[0x28223BE20](v33);
    *(&v42 - 2) = &v54;

    LOBYTE(v31) = sub_2331ACE00(sub_2331BE538, (&v42 - 4), v32);

    if (v31)
    {
      goto LABEL_14;
    }

    v35 = sub_233167DE4();
    v36 = v35[1];
    v54 = *v35;
    v55 = v36;
    MEMORY[0x28223BE20](v35);
    *(&v42 - 2) = &v54;

    v37 = sub_2331ACE00(sub_2331BE538, (&v42 - 4), v32);

    if (v37)
    {
LABEL_14:
      v38 = sub_233167B90();
      v39 = v38[1];
      v54 = *v38;
      v55 = v39;
      MEMORY[0x28223BE20](v38);
      *(&v42 - 2) = &v54;

      v40 = sub_2331ACE00(sub_2331BE538, (&v42 - 4), v32);

      sub_233121E04(v56, &qword_27DDE2828, &qword_233299268);

      sub_2331BDC54(v53, type metadata accessor for TTSVBVoice);
      v17 = v52;
      if ((v40 & 1) == 0)
      {
        *(v44 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
        if (__OFADD__(v45++, 1))
        {
          __break(1u);
LABEL_18:
          sub_2331B5288(v44, v43, v45, v50);
          return;
        }
      }
    }

    else
    {
      sub_233121E04(v56, &qword_27DDE2828, &qword_233299268);

      sub_2331BDC54(v53, type metadata accessor for TTSVBVoice);
      v17 = v52;
    }
  }

  v20 = v11;
  while (1)
  {
    v11 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      goto LABEL_18;
    }

    v21 = v13[v11];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v52 = (v21 - 1) & v21;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void *sub_2331B5210(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_2331B4D1C(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_2331B5288(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for TTSVBVoice();
  v37 = *(v8 - 8);
  v38 = v8;
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](v8);
  v42 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v36 = &v35 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2998, &qword_233299AB8);
  result = sub_23328E35C();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 64;
  v35 = a4;
  while (v15)
  {
    v18 = __clz(__rbit64(v15));
    v39 = (v15 - 1) & v15;
LABEL_16:
    v21 = v18 | (v16 << 6);
    v22 = a4[6];
    v23 = v36;
    v41 = *(v37 + 72);
    sub_2331BDBEC(v22 + v41 * v21, v36, type metadata accessor for TTSVBVoice);
    v24 = *(a4[7] + 8 * v21);
    sub_2331BDDC4(v23, v42, type metadata accessor for TTSVBVoice);
    v25 = *(v14 + 40);
    sub_2331B2AAC(&qword_27DDE29A0, type metadata accessor for TTSVBVoice);
    v40 = v24;

    result = sub_23328D8BC();
    v26 = -1 << *(v14 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v17 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v17 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = sub_2331BDDC4(v42, *(v14 + 48) + v29 * v41, type metadata accessor for TTSVBVoice);
    *(*(v14 + 56) + 8 * v29) = v40;
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v35;
    v15 = v39;
    if (!a3)
    {
      return v14;
    }
  }

  v19 = v16;
  while (1)
  {
    v16 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v20 = a1[v16];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v39 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_2331B55F8()
{
  v1 = v0;
  v2 = type metadata accessor for TTSVBVoice();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2998, &qword_233299AB8);
  v6 = *v0;
  v7 = sub_23328E33C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v25 + 72) * v21;
        sub_2331BDBEC(*(v6 + 48) + v22, v5, type metadata accessor for TTSVBVoice);
        v23 = *(*(v6 + 56) + 8 * v21);
        sub_2331BDDC4(v5, *(v8 + 48) + v22, type metadata accessor for TTSVBVoice);
        *(*(v8 + 56) + 8 * v21) = v23;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_2331B5838(void *a1, void *a2, void (*a3)(void), uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_23328E1AC();

    if (v17)
    {

      a3(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v37;
    }

    else
    {
      result = sub_23328E19C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_2331B5A9C(v15, result + 1, a4, a5, a6);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_2331B5C94(v30 + 1, a4, a5);
        }

        v31 = v16;
        sub_2331B5EB4(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    v19 = *(v14 + 40);
    v20 = sub_23328DFCC();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_23328DFDC();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *v11;
      v28 = a2;
      sub_2331B5F38(v28, v22, isUniquelyReferenced_nonNull_native, a4, a5, a6);
      *v11 = v38;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_2331B5A9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_23328E21C();
    v22 = v8;
    sub_23328E18C();
    if (sub_23328E1BC())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v16 = *(v8 + 16);
        if (*(v8 + 24) <= v16)
        {
          sub_2331B5C94(v16 + 1, a3, a4);
        }

        v8 = v22;
        v9 = *(v22 + 40);
        result = sub_23328DFCC();
        v11 = v22 + 56;
        v12 = -1 << *(v22 + 32);
        v13 = result & ~v12;
        v14 = v13 >> 6;
        if (((-1 << v13) & ~*(v22 + 56 + 8 * (v13 >> 6))) != 0)
        {
          v15 = __clz(__rbit64((-1 << v13) & ~*(v22 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = 0;
          v18 = (63 - v12) >> 6;
          do
          {
            if (++v14 == v18 && (v17 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v19 = v14 == v18;
            if (v14 == v18)
            {
              v14 = 0;
            }

            v17 |= v19;
            v20 = *(v11 + 8 * v14);
          }

          while (v20 == -1);
          v15 = __clz(__rbit64(~v20)) + (v14 << 6);
        }

        *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        *(*(v22 + 48) + 8 * v15) = v21;
        ++*(v22 + 16);
      }

      while (sub_23328E1BC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v8;
}

uint64_t sub_2331B5C94(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_23328E20C();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_23328DFCC();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

unint64_t sub_2331B5EB4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_23328DFCC();
  v5 = -1 << *(a2 + 32);
  result = sub_23328E17C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_2331B5F38(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_2331B5C94(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      sub_2331B60BC(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    sub_2331B61FC(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = *(*v6 + 40);
  v14 = sub_23328DFCC();
  v15 = -1 << *(v12 + 32);
  a2 = v14 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v11(0);
    do
    {
      v17 = *(*(v12 + 48) + 8 * a2);
      v18 = sub_23328DFDC();

      if (v18)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_15:
  sub_23328E59C();
  __break(1u);
}

id sub_2331B60BC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23328E1FC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_2331B61FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_23328E20C();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_23328DFCC();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t sub_2331B6408(void (*a1)(char *), uint64_t a2, _BYTE *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE25E8, &unk_2332980F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  *(&v10 - v7) = *a3;
  swift_storeEnumTagMultiPayload();
  a1(v8);
  return sub_233121E04(v8, &qword_27DDE25E8, &unk_2332980F0);
}

uint64_t sub_2331B64D0(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = *(a5 + 48);
  v9 = type metadata accessor for TTSVBVoice();
  sub_2331BDBEC(v8 + *(*(v9 - 8) + 72) * a2, v7, type metadata accessor for TTSVBVoice);
  v10 = *(*(a5 + 56) + 8 * a2);
}

uint64_t sub_2331B659C(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v6 = a1[1];
  v3 = *a2;
  v4 = a2[1];
  sub_23315CC14();
  return sub_23328D90C() & 1;
}

void sub_2331B65FC(void *a1, __int128 *a2, void *a3)
{
  v6 = a2[5];
  v27[4] = a2[4];
  v28 = v6;
  v29 = a2[6];
  v30 = *(a2 + 14);
  v7 = a2[1];
  v27[0] = *a2;
  v27[1] = v7;
  v8 = a2[3];
  v27[2] = a2[2];
  v27[3] = v8;
  sub_233144EEC(0, &qword_27DDE2330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_233297B40;
  v10 = MEMORY[0x277D837D0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  v11 = sub_2331527DC();
  *(v9 + 64) = v11;
  *(v9 + 32) = 0x4449656C706D6173;
  *(v9 + 40) = 0xE800000000000000;
  v31 = *a2;
  v12 = v31;
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 72) = v12;
  *(v9 + 136) = v10;
  *(v9 + 144) = v11;
  *(v9 + 112) = 0x6563696F76;
  *(v9 + 120) = 0xE500000000000000;
  *(v9 + 176) = type metadata accessor for TTSVBLocalVoiceMO();
  *(v9 + 184) = sub_2331B2AAC(&qword_27DDE29F8, type metadata accessor for TTSVBLocalVoiceMO);
  *(v9 + 152) = a1;
  sub_2331B4BD4(&v31, v26);
  v13 = a1;
  v14 = sub_23328DDCC();
  v15 = type metadata accessor for TTSVBLocalVoiceSampleMO();
  v25[2] = v27;
  static DSO<>.findOrCreate(in:matching:config:)(a3, v14, sub_2331BC36C, v25, v15, &protocol witness table for TTSVBLocalVoiceSampleMO);
  v17 = v16;
  v18 = sub_23328D95C();
  [v17 setPhrase_];

  v19 = sub_23328D95C();
  [v17 setPhonemes_];

  v20 = sub_23328D95C();
  [v17 setTranscript_];

  v21 = sub_23328D95C();
  [v17 setBookTitle_];

  if (v28 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v28 > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [v17 setParagraphIndex_];
  if (*(&v28 + 1) < 0xFFFFFFFF80000000)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(&v28 + 1) > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [v17 setSentenceIndex_];
  [v17 setEstimatedDuration_];
  v22 = sub_23328D95C();
  [v17 setLocale_];

  [v17 setVoice_];
  v23 = [v17 sampleID];
  if (v23)
  {
    v24 = v23;
    sub_23328D98C();

    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_2331B695C(uint64_t *a1, uint64_t *a2, int *a3, uint64_t **a4, char *a5, uint64_t *a6, uint64_t *a7)
{
  v247 = a1;
  v248 = a7;
  v253 = a6;
  v254 = a2;
  v243 = a5;
  v239 = type metadata accessor for TTSVBPath();
  v10 = *(*(v239 - 8) + 64);
  MEMORY[0x28223BE20](v239);
  v238 = &v205 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTSVBError(0);
  v232 = *(v12 - 8);
  v233 = v12;
  v13 = *(v232 + 64);
  MEMORY[0x28223BE20](v12);
  *&v221 = &v205 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B38, &unk_2332909A0);
  v15 = *(*(v222 - 8) + 64);
  MEMORY[0x28223BE20](v222);
  v230 = &v205 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v205 - v18;
  v20 = sub_23328D82C();
  v226 = *(v20 - 8);
  v227 = v20;
  v21 = *(v226 + 8);
  MEMORY[0x28223BE20](v20);
  *&v224 = &v205 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v225 = (&v205 - v24);
  v272 = sub_23328D6EC();
  v25 = *(v272 - 8);
  isa = v25[8].isa;
  MEMORY[0x28223BE20](v272);
  v237 = &v205 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v236 = &v205 - v29;
  MEMORY[0x28223BE20](v30);
  v219 = &v205 - v31;
  MEMORY[0x28223BE20](v32);
  v228 = (&v205 - v33);
  MEMORY[0x28223BE20](v34);
  v223 = &v205 - v35;
  MEMORY[0x28223BE20](v36);
  v249 = &v205 - v37;
  v38 = sub_23328D83C();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v43 = (&v205 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = *a3;
  v45 = *a4;
  v240 = a4[1];
  v241 = v45;
  v46 = *v253;
  v229 = v7;
  v47 = *&v7[OBJC_IVAR____TtC31TextToSpeechVoiceBankingSupport24TTSVBVoiceBankingManager_operationQueue];
  *v43 = v47;
  (*(v39 + 104))(v43, *MEMORY[0x277D85200], v38, v41);
  v48 = v47;
  LOBYTE(v47) = sub_23328D85C();
  (*(v39 + 8))(v43, v38);
  if ((v47 & 1) == 0)
  {
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  LODWORD(v242) = v46;
  v220 = v19;
  v49 = sub_23328D9DC();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  v53 = &v205 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23328D9CC();
  v252 = sub_23328D99C();
  v55 = v54;
  (*(v50 + 8))(v53, v49);
  v253 = v55;
  if (v55 >> 60 == 15)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v56 = sub_23328C8BC();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  v251 = sub_23328C8AC();
  LODWORD(v263) = *sub_233167A00();
  LODWORD(v255) = v44;
  sub_233156AF4();
  LODWORD(v234) = sub_23328E0EC();
  LODWORD(v263) = *sub_233167A18();
  LODWORD(v255) = v44;
  LODWORD(v235) = sub_23328E0EC();
  v59 = sub_233225514();
  v60 = v25 + 2;
  v61 = v25[2].isa;
  v62 = v249;
  v245 = v59;
  v63 = v25;
  v64 = v272;
  v246 = v60;
  v244 = v61;
  (v61)(v249);
  v65 = sub_23328D6CC();
  v66 = sub_23328DE4C();
  v67 = os_log_type_enabled(v65, v66);
  v231 = v63;
  if (v67)
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *&v255 = v69;
    *v68 = 136315138;
    *&v263 = 0x206F74207075;
    *(&v263 + 1) = 0xE600000000000000;
    v271 = v248;
    v70 = sub_23328E51C();
    v71 = v62;
    MEMORY[0x23839B7E0](v70);

    v72 = sub_23311A8F4(v263, *(&v263 + 1), &v255);

    *(v68 + 4) = v72;
    _os_log_impl(&dword_233109000, v65, v66, "Writing out metadata.json and %s audio files", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v69);
    MEMORY[0x23839CFD0](v69, -1, -1);
    MEMORY[0x23839CFD0](v68, -1, -1);

    v73 = v63[1].isa;
    v74 = v71;
    v75 = v272;
  }

  else
  {

    v73 = v63[1].isa;
    v74 = v62;
    v75 = v64;
  }

  v249 = v73;
  (v73)(v74, v75);
  v76 = sub_23328CC9C();
  v77 = *(v76 - 8);
  v78 = *(v77 + 64);
  MEMORY[0x28223BE20](v76);
  v79 = (v78 + 15) & 0xFFFFFFFFFFFFFFF0;
  v80 = &v205 - v79;
  *&v255 = *sub_2331DEBE8();
  v263 = 0uLL;
  LOBYTE(v264) = -1;
  v81 = v255;
  v82 = v250;
  _TTSVBFileManager.getOrCreateFile(in:named:problem:)(v254, 0xD000000000000012, 0x80000002332A8B70, &v263, &v205 - v79);
  if (v82)
  {
    v83 = v255;

    sub_23312185C(v252, v253);
    return v83;
  }

  v250 = &v205;

  v84 = sub_233144EEC(0, &qword_27DDE29D8, 0x277CCA9F8);
  v218 = &v205;
  v85 = MEMORY[0x28223BE20](v84);
  v86 = &v205 - v79;
  v217 = v78;
  v87 = *(v77 + 16);
  v87(v86, v80, v76, v85);
  v88 = sub_23318BF18(v86);
  v212 = v77 + 16;
  v213 = v87;
  v214 = v80;
  v215 = v77;
  v216 = v76;
  sub_23328DDFC();
  v90 = swift_allocObject();
  v91 = v90;
  *(v90 + 16) = 0;
  v211 = (v90 + 16);
  v218 = v88;
  if ((v242 & 1) == 0)
  {
    v93 = v88;
    MEMORY[0x28223BE20](v90);
    v94 = v248;
    v95 = v243;
    *(&v205 - 14) = v247;
    *(&v205 - 13) = v95;
    *(&v205 - 12) = v94;
    *(&v205 - 88) = 0;
    *(&v205 - 10) = v91;
    *(&v205 - 72) = 0;
    *(&v205 - 71) = v96 & 1;
    *(&v205 - 70) = v235 & 1;
    v97 = v252;
    *(&v205 - 8) = v251;
    *(&v205 - 7) = v97;
    v98 = v253;
    *(&v205 - 6) = v253;
    *(&v205 - 5) = v93;
    v99 = v240;
    *(&v205 - 4) = v241;
    *(&v205 - 3) = v99;
    *(&v205 - 2) = v254;
    sub_23328DF5C();
    v210 = v91;
LABEL_47:
    v202 = v214;
    v203 = v215;
    goto LABEL_48;
  }

  v92 = dispatch_semaphore_create(0);
  type metadata accessor for TTSVBLocalVoiceMO();
  sub_23310BA90(&v263);
  v255 = v263;
  LOBYTE(v256) = v264;
  v100 = static TTSVBLocalVoiceMO.requireVoiceWithID(_:moc:problemForThrownError:)(v247, v243, &v255);
  v242 = v92;
  v210 = v91;
  sub_2331220AC(v255, *(&v255 + 1), v256);
  v101 = swift_allocObject();
  *(v101 + 16) = MEMORY[0x277D84F90];
  v208 = (v101 + 16);
  v222 = swift_allocBox();
  v102 = *(v232 + 56);
  v243 = v103;
  v206 = v102;
  v207 = v232 + 56;
  v102(v103, 1, 1, v233);
  v104 = v223;
  v105 = v272;
  v244(v223, v245, v272);
  v106 = v100;
  v107 = sub_23328D6CC();
  LODWORD(v235) = sub_23328DE1C();
  v108 = os_log_type_enabled(v107, v235);
  v109 = &unk_2789C4000;
  if (v108)
  {
    v234 = v107;
    v110 = swift_slowAlloc();
    v205 = swift_slowAlloc();
    *&v263 = v205;
    v111 = v110;
    *v110 = 136315138;
    v112 = [v106 localeID];
    v209 = v106;

    if (!v112)
    {
LABEL_56:
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v113 = sub_23328D98C();
    v115 = v114;

    v116 = sub_23311A8F4(v113, v115, &v263);

    *(v111 + 1) = v116;
    v117 = v234;
    _os_log_impl(&dword_233109000, v234, v235, "Will fetch training script items with localeID=%s scriptType=default (blocking call)", v111, 0xCu);
    v118 = v205;
    __swift_destroy_boxed_opaque_existential_0(v205);
    MEMORY[0x23839CFD0](v118, -1, -1);
    MEMORY[0x23839CFD0](v111, -1, -1);

    (v249)(v104, v272);
    v106 = v209;
    v109 = &unk_2789C4000;
  }

  else
  {

    (v249)(v104, v105);
  }

  v119 = [v106 v109[342]];
  if (!v119)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v120 = v119;
  v121 = v106;
  v122 = sub_23328D98C();
  v234 = v123;
  v235 = v122;

  v124 = swift_allocObject();
  v125 = v222;
  v124[2] = v101;
  v124[3] = v125;
  v126 = v242;
  v124[4] = v121;
  v124[5] = v126;
  v209 = v121;
  v223 = v101;

  v127 = v126;
  TTSVBVoiceBankingManager.queue_fetchTrainingScriptItems(localeID:scriptType:_:)(v235, v234, @"default", sub_2331BB914, v124);

  v128 = v224;
  sub_23328D81C();
  v129 = v225;
  sub_23328D84C();
  v130 = v227;
  v131 = *(v226 + 1);
  v131(v128, v227);
  sub_23328DF2C();
  v131(v129, v130);
  v132 = sub_23328D7BC();
  v133 = v233;
  v134 = v243;
  if (v132)
  {
    v244(v228, v245, v272);
    v135 = sub_23328D6CC();
    v136 = sub_23328DE3C();
    if (os_log_type_enabled(v135, v136))
    {
      v137 = swift_slowAlloc();
      *v137 = 0;
      _os_log_impl(&dword_233109000, v135, v136, "Timeout occurred fetching training script items", v137, 2u);
      MEMORY[0x23839CFD0](v137, -1, -1);
    }

    (v249)(v228, v272);
    v138 = v220;
    TTSVBError.init(_:_:_:)(0xD00000000000002FLL, 0x80000002332A8BD0, 0, 0, 0, v220);
    v206(v138, 0, 1, v133);
    swift_beginAccess();
    sub_2331BD410(v138, v134, &qword_27DDE1B38, &unk_2332909A0);
  }

  swift_beginAccess();
  v139 = v230;
  sub_233121D34(v134, v230, &qword_27DDE1B38, &unk_2332909A0);
  if ((*(v232 + 48))(v139, 1, v133) != 1)
  {
    goto LABEL_41;
  }

  v220 = v127;
  sub_233121E04(v139, &qword_27DDE1B38, &unk_2332909A0);
  v140 = v208;
  swift_beginAccess();
  v243 = *v140;
  v139 = *(v243 + 2);
  if (!v139)
  {

LABEL_46:
    v97 = v252;
    v98 = v253;
    goto LABEL_47;
  }

  v141 = v243;

  swift_beginAccess();
  v143 = v272;
  if (!*(v141 + 2))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    v195 = v139;
    v196 = v221;
    sub_2331BDDC4(v195, v221, type metadata accessor for TTSVBError);
    sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    swift_allocError();
    sub_2331BDBEC(v196, v197, type metadata accessor for TTSVBError);
    swift_willThrow();

    sub_2331BDC54(v196, type metadata accessor for TTSVBError);

    v83 = v218;
    [v218 closeFile];

    sub_23312185C(v252, v253);

    (*(v215 + 8))(v214, v216);
    return v83;
  }

  v144 = 0;
  v145 = 0;
  v227 = (v215 + 8);
  v228 = v231 + 1;
  v226 = &v139[-1].isa + 7;
  v146 = 32;
  *&v142 = 134218240;
  v224 = v142;
  *&v142 = 136315394;
  v221 = v142;
  while (1)
  {
    v147 = *&v243[v146];
    v148 = *&v243[v146 + 16];
    v149 = *&v243[v146 + 48];
    v265 = *&v243[v146 + 32];
    v266 = v149;
    v263 = v147;
    v264 = v148;
    v150 = *&v243[v146 + 64];
    v151 = *&v243[v146 + 80];
    v152 = *&v243[v146 + 96];
    v270 = *&v243[v146 + 112];
    v268 = v151;
    v269 = v152;
    v267 = v150;
    if (v144 == v248)
    {
      break;
    }

    v232 = v146;
    v233 = v145;
    v242 = v144;
    v153 = v263;
    v154 = sub_2331B4B78(&v263, &v255);
    v155 = MEMORY[0x23839C610](v154);
    v234 = &v205;
    v235 = v155;
    v156 = v217;
    MEMORY[0x28223BE20](v155);
    v229 = ((v156 + 15) & 0xFFFFFFFFFFFFFFF0);
    v157 = (&v205 - v229);
    v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1930, &unk_2332901D0);
    v159 = v238;
    v160 = &v238[*(v158 + 48)];
    v161 = &v238[*(v158 + 64)];
    v162 = sub_23328CE8C();
    (*(*(v162 - 8) + 16))(v159, v247, v162);
    v230 = *(&v153 + 1);
    v231 = v153;
    *v160 = v153;

    v163 = sub_2331C464C();
    v164 = *(v163 + 1);
    *v161 = *v163;
    *(v161 + 1) = v164;
    swift_storeEnumTagMultiPayload();
    v165 = v164;
    TTSVBPath.url.getter(v157);
    sub_2331BDC54(v159, type metadata accessor for TTSVBPath);
    v166 = [objc_opt_self() defaultManager];
    sub_23328CC6C();
    v167 = sub_23328D95C();

    LODWORD(v164) = [v166 fileExistsAtPath_];

    if (v164)
    {
      v229 = v157;
      v127 = v235;
      v259 = v267;
      v260 = v268;
      v261 = v269;
      v262 = v270;
      v255 = v263;
      v256 = v264;
      v257 = v265;
      v258 = v266;
      sub_2331BB920();
      v168 = sub_23328C89C();
      v170 = v169;
      v171 = sub_23328CCBC();
      v172 = v218;
      [v218 writeData_];

      v173 = sub_23328CCBC();
      [v172 writeData_];

      sub_233121870(v168, v170);
      v143 = v272;
      v244(v236, v245, v272);

      v139 = sub_23328D6CC();
      v174 = sub_23328DE4C();
      v175 = os_log_type_enabled(v139, v174);
      v176 = v254;
      if (v175)
      {
        v177 = swift_slowAlloc();
        *v177 = v224;
        if (__OFADD__(v242, 1))
        {
          goto LABEL_53;
        }

        *(v177 + 4) = &v242->isa + 1;
        *(v177 + 12) = 2048;
        *(v177 + 14) = v248;
        v178 = v177;

        _os_log_impl(&dword_233109000, v139, v174, "Writing out audio sample %ld of %ld", v178, 0x16u);
        MEMORY[0x23839CFD0](v178, -1, -1);

        v143 = v272;
      }

      else
      {
      }

      (v249)(v236, v143);
      v194 = v229;
      sub_23318BAA4(v229, v231, v230, v241, v240, v176);
      sub_2331B4CC8(&v263);
      (*v227)(v194, v216);
      v144 = (&v242->isa + 1);
      if (__OFADD__(v242, 1))
      {
        goto LABEL_52;
      }

      *v211 = v144;
    }

    else
    {
      v179 = (v244)(v237, v245, v272);
      v225 = &v205;
      v180 = MEMORY[0x28223BE20](v179);
      v181 = &v205 - v229;
      v182 = v216;
      v213(&v205 - v229, v157, v216, v180);
      sub_2331B4B78(&v263, &v255);
      v183 = sub_23328D6CC();
      v184 = sub_23328DE3C();
      sub_2331B4CC8(&v263);
      if (!os_log_type_enabled(v183, v184))
      {

        sub_2331B4CC8(&v263);
        v139 = *v227;
        (*v227)(v181, v182);
        v192 = v272;
        (v249)(v237, v272);
        (v139)(v157, v182);
        v143 = v192;
        v144 = v242;
        v193 = v233;
        v127 = v235;
        goto LABEL_38;
      }

      v185 = swift_slowAlloc();
      v229 = swift_slowAlloc();
      *&v255 = v229;
      *v185 = v221;
      *(v185 + 4) = sub_23311A8F4(v231, v230, &v255);
      *(v185 + 12) = 2080;
      v231 = v183;
      LODWORD(v230) = v184;
      v186 = sub_23328CC6C();
      v188 = v187;
      v189 = *v227;
      (*v227)(v181, v216);
      v190 = sub_23311A8F4(v186, v188, &v255);

      *(v185 + 14) = v190;
      v191 = v231;
      _os_log_impl(&dword_233109000, v231, v230, "Skipping sample %s. No audio data at path: %s", v185, 0x16u);
      v139 = v229;
      swift_arrayDestroy();
      MEMORY[0x23839CFD0](v139, -1, -1);
      MEMORY[0x23839CFD0](v185, -1, -1);

      sub_2331B4CC8(&v263);
      v143 = v272;
      (v249)(v237, v272);
      (v189)(v157, v216);
      v127 = v235;
      v144 = v242;
    }

    v193 = v233;
LABEL_38:
    objc_autoreleasePoolPop(v127);
    if (v226 == v193)
    {

      goto LABEL_46;
    }

    v145 = (v193 + 1);
    v146 = v232 + 120;
    if (v145 >= *(v243 + 2))
    {
      goto LABEL_40;
    }
  }

  v244(v219, v245, v143);
  v198 = sub_23328D6CC();
  v199 = sub_23328DE4C();
  if (os_log_type_enabled(v198, v199))
  {
    v200 = swift_slowAlloc();
    *v200 = 134217984;
    *(v200 + 4) = v248;
    _os_log_impl(&dword_233109000, v198, v199, "Did write out required number of audio samples (%ld). Exiting write-out routine", v200, 0xCu);
    MEMORY[0x23839CFD0](v200, -1, -1);
    v201 = v209;
  }

  else
  {
    v201 = v198;
    v198 = v209;
  }

  v97 = v252;
  v98 = v253;
  v203 = v215;

  (v249)(v219, v272);

  v202 = v214;
LABEL_48:
  swift_beginAccess();
  v83 = v210[2];

  v204 = v218;
  [v218 closeFile];

  sub_23312185C(v97, v98);

  (*(v203 + 8))(v202, v216);
  return v83;
}

void sub_2331B8434(NSObject *a1, char *a2, double a3)
{
  v108 = a2;
  v105 = sub_23328D6EC();
  v5 = *(v105 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v105);
  v103 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v104 = &v91 - v9;
  v10 = sub_23328CC9C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v110 = v13;
  v111 = (&v91 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  v16 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15 - 8);
  v17 = type metadata accessor for TTSVBLocalVoiceSampleMO();
  v18 = sub_2331B2AAC(&qword_27DDE2960, type metadata accessor for TTSVBLocalVoiceSampleMO);
  v109 = a1;
  TTSVBCommonVoiceSampleMO.url.getter(v17, v18, &v91 - v16);
  v19 = v11;
  v20 = *(v11 + 48);
  if (v20(&v91 - v16, 1, v10) == 1)
  {
    sub_233121E04(&v91 - v16, &qword_27DDE19A0, &unk_233290360);
    type metadata accessor for TTSVBError(0);
    sub_2331B2AAC(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    swift_allocError();
    TTSVBError.init(_:_:_:)(0xD000000000000011, 0x80000002332A8CA0, 0, 0, 0, v21);
    swift_willThrow();
    return;
  }

  v102 = v5;
  v106 = v19;
  v22 = *(v19 + 32);
  v22(v111, &v91 - v16, v10);
  v23 = [v109 setRecordingDuration:a3];
  MEMORY[0x28223BE20](v23);
  v24 = &v91 - v14;
  v101 = &v91;
  MEMORY[0x28223BE20](v25);
  sub_233121D34(v108, &v91 - v16, &qword_27DDE19A0, &unk_233290360);
  if (v20(&v91 - v16, 1, v10) == 1)
  {
    v26 = v106;
    sub_233121E04(&v91 - v16, &qword_27DDE19A0, &unk_233290360);
    v115 = *sub_2331DEBE8();
    v112 = 0;
    v113 = 0;
    v114 = -1;
    v27 = v115;
    v28 = v111;
    _TTSVBFileManager.removeItem(_:problem:)(v111, &v112);

    (*(v26 + 8))(v28, v10);
    return;
  }

  v100 = &v91;
  v22(v24, &v91 - v16, v10);
  v29 = sub_233225314();
  v30 = *(v102 + 16);
  v32 = v104;
  v31 = v105;
  v97 = v29;
  v98 = v102 + 16;
  v96 = v30;
  v33 = (v30)(v104);
  v101 = &v91;
  v34 = v110;
  v35 = MEMORY[0x28223BE20](v33);
  v36 = &v91 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v106 + 16;
  v38 = *(v106 + 16);
  v108 = v24;
  v39 = v38(v36, v24, v10, v35);
  v99 = &v91;
  v40 = MEMORY[0x28223BE20](v39);
  v41 = v111;
  v95 = v37;
  v94 = v38;
  v38(v36, v111, v10, v40);
  v42 = v109;
  v43 = sub_23328D6CC();
  v44 = sub_23328DE2C();
  v45 = os_log_type_enabled(v43, v44);
  v109 = v42;
  if (v45)
  {
    v92 = v44;
    v93 = v43;
    v46 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v112 = v91;
    *v46 = 136315650;
    v47 = [v42 sampleID];

    if (!v47)
    {
      __break(1u);
      goto LABEL_16;
    }

    v48 = sub_23328D98C();
    v50 = v49;

    v51 = sub_23311A8F4(v48, v50, &v112);

    *(v46 + 4) = v51;
    *(v46 + 12) = 2080;
    v52 = sub_23328CC6C();
    v54 = v53;
    v55 = *(v106 + 8);
    v55(v36, v10);
    v56 = sub_23311A8F4(v52, v54, &v112);

    *(v46 + 14) = v56;
    *(v46 + 22) = 2080;
    v57 = sub_23328CC6C();
    v59 = v58;
    v55(v36, v10);
    v60 = sub_23311A8F4(v57, v59, &v112);

    *(v46 + 24) = v60;
    v61 = v93;
    _os_log_impl(&dword_233109000, v93, v92, "Will copy audio file for sampleID=%s from=%s to=%s", v46, 0x20u);
    v62 = v91;
    swift_arrayDestroy();
    MEMORY[0x23839CFD0](v62, -1, -1);
    MEMORY[0x23839CFD0](v46, -1, -1);

    v63 = *(v102 + 8);
    v64 = v105;
    v63(v104, v105);
    v41 = v111;
  }

  else
  {

    v65 = v32;
    v55 = *(v106 + 8);
    v55(v36, v10);
    v55(v36, v10);
    v63 = *(v102 + 8);
    v63(v65, v31);
    v64 = v31;
  }

  v115 = *sub_2331DEBE8();
  v112 = 0;
  v113 = 0;
  v114 = -1;
  v66 = v115;
  v68 = v107;
  v67 = v108;
  _TTSVBFileManager.copyItem(_:to:problem:)(v108, v41, &v112);
  v69 = v103;
  if (v68)
  {

    v55(v67, v10);
    v55(v41, v10);
    return;
  }

  v70 = v96(v69, v97, v64);
  v107 = &v91;
  v71 = MEMORY[0x28223BE20](v70);
  v73 = &v91 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94(v73, v41, v10, v71);
  v74 = v41;
  v75 = v10;
  v76 = v109;
  v77 = sub_23328D6CC();
  LODWORD(v110) = sub_23328DE2C();
  if (!os_log_type_enabled(v77, v110))
  {

    v55(v73, v75);
    v63(v69, v105);
    v55(v108, v75);
    v55(v74, v75);
    return;
  }

  v109 = v77;
  v78 = v75;
  v79 = swift_slowAlloc();
  v104 = swift_slowAlloc();
  v112 = v104;
  *v79 = 136315394;
  v80 = [v76 sampleID];

  if (v80)
  {
    v81 = sub_23328D98C();
    v83 = v82;

    v84 = sub_23311A8F4(v81, v83, &v112);

    *(v79 + 4) = v84;
    *(v79 + 12) = 2080;
    v85 = sub_23328CC6C();
    v87 = v86;
    v55(v73, v78);
    v88 = sub_23311A8F4(v85, v87, &v112);

    *(v79 + 14) = v88;
    v89 = v109;
    _os_log_impl(&dword_233109000, v109, v110, "Will create audio future for sampleID=%s file=%s", v79, 0x16u);
    v90 = v104;
    swift_arrayDestroy();
    MEMORY[0x23839CFD0](v90, -1, -1);
    MEMORY[0x23839CFD0](v79, -1, -1);

    v63(v103, v105);
    v55(v108, v78);
    v55(v111, v78);
    return;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_2331B8F28(uint64_t a1, void (*a2)(char *), void (*a3)(char *), void (*a4)())
{
  v38 = a4;
  v39 = a1;
  v41 = a2;
  v42 = a3;
  v37 = type metadata accessor for TTSVBError.Reason(0);
  v4 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330);
  v7 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2958, &qword_233299A38);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v40 = &v35 - v12;
  v13 = sub_23328CC9C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v35 - v20;
  sub_233121D34(v39, &v35 - v20, &qword_27DDE19A0, &unk_233290360);
  if ((*(v14 + 48))(v21, 1, v13) == 1)
  {
    sub_233121E04(v21, &qword_27DDE19A0, &unk_233290360);
    v43 = xmmword_233299210;
    v44 = 3;
    swift_storeEnumTagMultiPayload();
    TTSVBError.init(_:_:_:)(&v43, v6, 0, v9);
    swift_storeEnumTagMultiPayload();
    v41(v9);
    return sub_233121E04(v9, &unk_27DDE25D0, &unk_233290330);
  }

  else
  {
    v23 = *(v14 + 32);
    v23(&v35 - v16, v21, v13);
    v24 = sub_23328DCBC();
    v25 = (*(*(v24 - 8) + 56))(v40, 1, 1, v24);
    v39 = &v35;
    v26 = MEMORY[0x28223BE20](v25);
    v27 = &v35 - v16;
    (*(v14 + 16))(&v35 - v16, &v35 - v16, v13, v26);
    v28 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v29 = (v15 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(v30 + 24) = 0;
    v23((v30 + v28), v27, v13);
    v31 = (v30 + v29);
    v32 = v38;
    *v31 = sub_2331BBAB4;
    v31[1] = v32;
    v33 = (v30 + ((v29 + 23) & 0xFFFFFFFFFFFFFFF8));
    v34 = v42;
    *v33 = v41;
    v33[1] = v34;

    sub_233193E34(0, 0, v40, &unk_233299AF0, v30);

    return (*(v14 + 8))(v17, v13);
  }
}

unint64_t sub_2331B9374(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE29B0, &qword_233299AC8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2998, &qword_233299AB8);
    v8 = sub_23328E35C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_233121D34(v10, v6, &qword_27DDE29B0, &qword_233299AC8);
      result = sub_2331B4340(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for TTSVBVoice();
      result = sub_2331BDDC4(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for TTSVBVoice);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_2331B9558(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2288, &unk_233299A90);
    v3 = sub_23328E35C();
    v4 = a1 + 32;

    while (1)
    {
      sub_233121D34(v4, &v13, &qword_27DDE2290, &qword_233297600);
      v5 = v13;
      v6 = v14;
      result = sub_2331B42BC(v13, v14, sub_2331443DC);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_233145134(&v15, (v3[7] + 32 * result));
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

void sub_2331B969C()
{
  v1 = *(v0 + 16);
  if ((static TTSVBPreferences.hasPerformVoiceDatastoreMigrationV1.getter() & 1) == 0)
  {
    sub_2331A531C();
    sub_2331A5704();
    static TTSVBPreferences.hasPerformVoiceDatastoreMigrationV1.setter(1);
  }
}

uint64_t sub_2331B9710(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_2331B9724()
{
  result = qword_27DDE2888;
  if (!qword_27DDE2888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2888);
  }

  return result;
}

void sub_2331B9810(uint64_t a1, unint64_t *a2)
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

uint64_t sub_2331B9BC4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_2331B9BEC()
{
  v1 = *(v0 + 16);
  sub_23328E24C();

  v2 = type metadata accessor for TTSVBCloudVoiceMO();
  v3 = TTSVBCommonVoiceMO.displayName.getter(v2, &protocol witness table for TTSVBCloudVoiceMO);
  MEMORY[0x23839B7E0](v3);

  return 0xD000000000000028;
}

uint64_t sub_2331B9C7C()
{
  v1 = *(v0 + 16);
  sub_23328E24C();

  swift_beginAccess();
  v2 = *v1;
  if ((v2 & 0xC000000000000001) != 0)
  {

    sub_23328E19C();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  v4 = sub_23328E51C();
  MEMORY[0x23839B7E0](v4);

  MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332A8340);
  return 0x20676E69646441;
}

uint64_t sub_2331B9D7C()
{
  v1 = *(v0 + 16);
  sub_23328E24C();

  swift_beginAccess();
  v2 = *v1;
  if ((v2 & 0xC000000000000001) != 0)
  {

    sub_23328E19C();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  v4 = sub_23328E51C();
  MEMORY[0x23839B7E0](v4);

  MEMORY[0x23839B7E0](0xD000000000000016, 0x80000002332A8320);
  return 0x20676E69646441;
}

uint64_t sub_2331B9E7C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_233127268;

  return sub_2331ACEAC(v3, v4, v5, v2);
}

uint64_t sub_2331B9F10(uint64_t a1)
{
  v3 = *(sub_23328CE8C() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2331AC634(a1, v4);
}

void sub_2331B9F80(unint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = a3;
    v10 = a2;
    v11 = sub_23328E19C();
    a2 = v10;
    a3 = v9;
    if (v11)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v6 = sub_23328E22C();
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
      if (!v5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = sub_23328E19C();
      if (!v8)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v6 = MEMORY[0x277D84FA0];
  v7 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(v7 + 16);
  if (!v8)
  {
    return;
  }

LABEL_9:
  v12 = v6 + 56;
  v46 = v8;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v13 = 0;
    v43 = v4;
    while (1)
    {
      v14 = MEMORY[0x23839BFC0](v13, v4);
      v15 = __OFADD__(v13++, 1);
      if (v15)
      {
        break;
      }

      v16 = v14;
      v17 = *(v6 + 40);
      v18 = sub_23328DFCC();
      v19 = -1 << *(v6 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *(v12 + 8 * (v20 >> 6));
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        a4(0);
        while (1)
        {
          v25 = *(*(v6 + 48) + 8 * v20);
          v26 = sub_23328DFDC();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *(v12 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v8 = v46;
            v4 = v43;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v8 = v46;
        v4 = v43;
        if (v13 == v46)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v12 + 8 * v21) = v23 | v22;
        *(*(v6 + 48) + 8 * v20) = v16;
        v27 = *(v6 + 16);
        v15 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v15)
        {
          goto LABEL_32;
        }

        *(v6 + 16) = v28;
        if (v13 == v8)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v44 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v44)
    {
      v30 = *(v6 + 40);
      v31 = *(v4 + 32 + 8 * v29);
      v32 = sub_23328DFCC();
      v33 = -1 << *(v6 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = *(v12 + 8 * (v34 >> 6));
      v37 = 1 << v34;
      if (((1 << v34) & v36) != 0)
      {
        v38 = ~v33;
        a4(0);
        while (1)
        {
          v39 = *(*(v6 + 48) + 8 * v34);
          v40 = sub_23328DFDC();

          if (v40)
          {
            break;
          }

          v34 = (v34 + 1) & v38;
          v35 = v34 >> 6;
          v36 = *(v12 + 8 * (v34 >> 6));
          v37 = 1 << v34;
          if (((1 << v34) & v36) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v12 + 8 * v35) = v37 | v36;
        *(*(v6 + 48) + 8 * v34) = v31;
        v41 = *(v6 + 16);
        v15 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v15)
        {
          goto LABEL_34;
        }

        *(v6 + 16) = v42;
      }

      if (++v29 == v46)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_2331BA284()
{
  v1 = *(v0 + 16);
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000035, 0x80000002332A81D0);
  sub_23328CE8C();
  sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068]);
  v2 = sub_23328E51C();
  MEMORY[0x23839B7E0](v2);

  return 0;
}

uint64_t sub_2331BA35C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_233127268;

  return sub_2331B2F40(a1, v5);
}

uint64_t sub_2331BA414(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_233126374;

  return sub_2331B2F40(a1, v5);
}

unint64_t sub_2331BA4D4()
{
  v1 = *(v0 + 16);
  sub_23328E24C();

  MEMORY[0x23839B7E0](*v1, v1[1]);
  return 0xD000000000000023;
}

unint64_t sub_2331BA544()
{
  v1 = *(v0 + 16);
  sub_23328E24C();

  MEMORY[0x23839B7E0](*v1, v1[1]);
  return 0xD000000000000027;
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

uint64_t sub_2331BA638()
{
  v2 = *(sub_23328CE8C() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(v0 + 32);
  v6 = v0 + (v4 & 0xFFFFFFFFFFFFFFF8);
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = *(v0 + v4);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_233127268;

  return sub_2331A0B2C(v10, v11, v12, v5, v0 + v3, v9, v7, v8);
}

uint64_t objectdestroy_136Tm()
{
  v1 = sub_23328CE8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 50) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v4 + v7 + 1) & ~v7;
  v9 = *(v6 + 64);

  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  if (!(*(v2 + 48))(v0 + v8, 1, v1))
  {
    v10(v0 + v8, v1);
  }

  v11 = (v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + v11 + 8);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v3 | v7 | 7);
}

uint64_t sub_2331BA92C()
{
  v1 = *(sub_23328CE8C() - 8);
  v2 = (*(v1 + 80) + 50) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370) - 8);
  v5 = (v3 + *(v4 + 80) + 1) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_23319624C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 49), v0 + v2, *(v0 + v3), v0 + v5, *(v0 + v6), *(v0 + v6 + 8));
}

uint64_t objectdestroy_171Tm()
{
  v1 = sub_23328CE8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 16);

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

void sub_2331BAB74()
{
  v1 = *(sub_23328CE8C() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  sub_23319F77C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), v0 + v2, *(v0 + v2 + *(v1 + 64)), *(v0 + ((v2 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v2 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_2331BAC10()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE29A8, &qword_233299AC0) - 8) + 80);
  v2 = *(v0 + 16);

  sub_23319DCBC(v2);
}

uint64_t sub_2331BACA4()
{
  v1 = *(v0 + 16);
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000024, 0x80000002332A86D0);
  v2 = type metadata accessor for TTSVBLocalVoiceMO();
  v3 = TTSVBCommonVoiceMO.displayName.getter(v2, &protocol witness table for TTSVBLocalVoiceMO);
  MEMORY[0x23839B7E0](v3);

  MEMORY[0x23839B7E0](0xD000000000000032, 0x80000002332A8700);
  return 0;
}

uint64_t sub_2331BAD6C()
{
  v1 = *(v0 + 16);
  sub_23328E24C();

  v2 = sub_23328E51C();
  MEMORY[0x23839B7E0](v2);

  MEMORY[0x23839B7E0](0xD000000000000020, 0x80000002332A8670);
  return 0x20646E756F46;
}

unint64_t sub_2331BAE18()
{
  v1 = *(v0 + 16);
  sub_23328E24C();

  v2 = type metadata accessor for TTSVBLocalVoiceMO();
  v3 = TTSVBCommonVoiceMO.displayName.getter(v2, &protocol witness table for TTSVBLocalVoiceMO);
  MEMORY[0x23839B7E0](v3);

  MEMORY[0x23839B7E0](46, 0xE100000000000000);
  return 0xD000000000000024;
}

uint64_t sub_2331BAEB8()
{
  v1 = *(v0 + 16);
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000031, 0x80000002332A85B0);
  sub_23328CC9C();
  sub_2331BC7FC(&qword_27DDE29B8, MEMORY[0x28220BDE0]);
  v2 = sub_23328E51C();
  MEMORY[0x23839B7E0](v2);

  MEMORY[0x23839B7E0](46, 0xE100000000000000);
  return 0;
}

uint64_t sub_2331BAF84()
{
  v1 = *(v0 + 16);
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000037, 0x80000002332A87D0);
  type metadata accessor for TTSVBError(0);
  sub_2331B2AAC(&qword_27DDE29C0, type metadata accessor for TTSVBError);
  v2 = sub_23328E51C();
  MEMORY[0x23839B7E0](v2);

  MEMORY[0x23839B7E0](46, 0xE100000000000000);
  return 0;
}

unint64_t sub_2331BB068()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_23328E24C();

  MEMORY[0x23839B7E0](v1, v2);
  return 0xD00000000000002BLL;
}

unsigned __int8 *sub_2331BB0E4(uint64_t a1)
{
  v3 = *(sub_23328CE8C() - 8);
  v4 = (*(v3 + 80) + 50) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370) - 8);
  v7 = (v5 + *(v6 + 80) + 1) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2331964C8(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 49), (v1 + v4), *(v1 + v5), v1 + v7, *(v1 + v8), *(v1 + v8 + 8));
}

unint64_t sub_2331BB220()
{
  result = qword_27DDE29D0;
  if (!qword_27DDE29D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE29D0);
  }

  return result;
}

uint64_t sub_2331BB2A0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
    return MEMORY[0x2821F96F8]();
  }

  return result;
}

uint64_t sub_2331BB2B0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000025, 0x80000002332A8B40);
  v3 = *(type metadata accessor for TTSVBVoiceModel() + 20);
  sub_23328CE8C();
  sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068]);
  v4 = sub_23328E51C();
  MEMORY[0x23839B7E0](v4);

  MEMORY[0x23839B7E0](0xD000000000000012, 0x80000002332A8A60);
  v5 = sub_23328E51C();
  MEMORY[0x23839B7E0](v5);

  return 0;
}

uint64_t sub_2331BB3CC()
{
  v1 = *(v0 + 16);
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000032, 0x80000002332A8B00);
  v2 = *(type metadata accessor for TTSVBVoiceModel() + 24);
  sub_23328CE8C();
  sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068]);
  v3 = sub_23328E51C();
  MEMORY[0x23839B7E0](v3);

  return 0;
}

uint64_t sub_2331BB494(uint64_t a1, void *a2)
{
  v4 = *(type metadata accessor for TTSVBVoiceModel() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v2 + v6);
  v8 = (v2 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_23319A4B4(a2, v2 + v5, v7, v9, v10);
}

uint64_t sub_2331BB540()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD000000000000049, 0x80000002332A8A10);
  v4 = *(type metadata accessor for TTSVBVoiceModel() + 20);
  sub_23328CE8C();
  sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068]);
  v5 = sub_23328E51C();
  MEMORY[0x23839B7E0](v5);

  MEMORY[0x23839B7E0](0xD000000000000012, 0x80000002332A8A60);
  v6 = sub_23328E51C();
  MEMORY[0x23839B7E0](v6);

  MEMORY[0x23839B7E0](0xD000000000000018, 0x80000002332A8A80);
  v7 = sub_23328E51C();
  MEMORY[0x23839B7E0](v7);

  return 0;
}

unint64_t sub_2331BB6B4()
{
  v1 = *(v0 + 16);
  sub_23328E24C();

  v2 = *(type metadata accessor for TTSVBVoiceModel() + 24);
  sub_23328CE8C();
  sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068]);
  v3 = sub_23328E51C();
  MEMORY[0x23839B7E0](v3);

  return 0xD000000000000026;
}

unint64_t sub_2331BB778()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_23328E24C();

  v3 = *(type metadata accessor for TTSVBVoiceModel() + 24);
  sub_23328CE8C();
  sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068]);
  v4 = sub_23328E51C();
  MEMORY[0x23839B7E0](v4);

  MEMORY[0x23839B7E0](8238, 0xE200000000000000);
  type metadata accessor for TTSVBError(0);
  sub_2331B2AAC(&qword_27DDE29C0, type metadata accessor for TTSVBError);
  v5 = sub_23328E51C();
  MEMORY[0x23839B7E0](v5);

  return 0xD000000000000029;
}

uint64_t sub_2331BB8B0()
{
  v1 = *(type metadata accessor for TTSVBError(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_23319B228(v2, v3, v4);
}

unint64_t sub_2331BB920()
{
  result = qword_27DDE29E0;
  if (!qword_27DDE29E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE29E0);
  }

  return result;
}

void sub_2331BB9AC(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_233144EEC(0, &qword_27DDE2330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_233297630;
  v6 = MEMORY[0x277D837D0];
  *(v5 + 56) = MEMORY[0x277D837D0];
  v7 = sub_2331527DC();
  *(v5 + 32) = 1701667182;
  *(v5 + 40) = 0xE400000000000000;
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 64) = v7;
  *(v5 + 72) = v4;
  *(v5 + 80) = v3;

  v8 = sub_23328DDCC();
  [a1 setPredicate_];
}

uint64_t sub_2331BBACC()
{
  v2 = *(sub_23328CC9C() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v0 + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v5);
  v10 = *(v0 + v5 + 8);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_233127268;

  return sub_233193A20(v11, v12, v13, v0 + v3, v7, v8, v9, v10);
}

uint64_t objectdestroy_410Tm()
{
  v1 = sub_23328CE8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = (((((((*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730) - 8);
  v11 = *(v10 + 80);
  v12 = (v11 + v9 + 16) & ~v11;
  v20 = *(v10 + 64);

  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  v14 = sub_23328CC9C();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v8, 1, v14))
  {
    (*(v15 + 8))(v0 + v8, v14);
  }

  v16 = *(v0 + v9 + 8);

  v17 = sub_23328CE1C();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v0 + v12, 1, v17))
  {
    (*(v18 + 8))(v0 + v12, v17);
  }

  return MEMORY[0x2821FE8E8](v0, v12 + v20, v3 | v7 | v11 | 7);
}

void sub_2331BBF24()
{
  v1 = *(sub_23328CE8C() - 8);
  v2 = ((*(v1 + 80) + 40) & ~*(v1 + 80)) + *(v1 + 64);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19A0, &unk_233290360) - 8);
  v4 = (*(v3 + 64) + ((v2 + *(v3 + 80)) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 11) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 11) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730) - 8);
  v9 = v0[3];
  v10 = v0[4];
  v11 = *(v0 + v4);
  v12 = *(v0 + v5);
  v13 = *(v0 + v5 + 4);
  v14 = *(v0 + v6);
  v15 = *(v0 + v6 + 4);
  v16 = *(v0 + v7);
  v17 = *(v0 + v7 + 8);
  v18 = v0 + ((*(v8 + 80) + v7 + 16) & ~*(v8 + 80));
  sub_233193638(v0[2]);
}

uint64_t objectdestroy_413Tm()
{
  v1 = sub_23328CC9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v3 | 7);
}

uint64_t sub_2331BC1CC()
{
  v2 = *(sub_23328CC9C() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v0 + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v5);
  v10 = *(v0 + v5 + 8);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_233126374;

  return sub_233193A20(v11, v12, v13, v0 + v3, v7, v8, v9, v10);
}

uint64_t sub_2331BC314(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_23328E54C() & 1;
  }
}

void sub_2331BC36C(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *v3;
  v5 = v3[1];
  v6 = sub_23328D95C();
  [a1 setSampleID_];
}

void sub_2331BC3CC(void *a1@<X8>)
{
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[5];
  type metadata accessor for TTSVBLocalVoiceMO();
  sub_23310BA90(&v15);
  v13 = v15;
  v14 = v16;
  v7 = static TTSVBLocalVoiceMO.requireVoiceWithID(_:moc:problemForThrownError:)(v5, v4, &v13);
  sub_2331220AC(v13, *(&v13 + 1), v14);
  if (!v2)
  {
    sub_2331B65FC(v7, v6, v4);
    v9 = v8;
    v11 = v10;
    NSManagedObjectContext.trySave()();
    if (v12)
    {
    }

    else
    {

      *a1 = v9;
      a1[1] = v11;
    }
  }
}

uint64_t sub_2331BC4B0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD00000000000002DLL, 0x80000002332A8D10);
  MEMORY[0x23839B7E0](v1, v2);
  MEMORY[0x23839B7E0](0x656C61636F6C2820, 0xEA0000000000203ALL);
  MEMORY[0x23839B7E0](v3, v4);
  MEMORY[0x23839B7E0](41, 0xE100000000000000);
  return 0;
}

void sub_2331BC5B0(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = sub_23328D95C();
  [a1 setName_];

  v9 = sub_23328CE4C();
  [a1 setVoiceID_];

  v10 = sub_23328D95C();
  [a1 setLocaleID_];
}

uint64_t sub_2331BC714()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  type metadata accessor for TTSVBLocalVoiceMO();
  sub_23310BA90(&v14);
  v12 = v14;
  v13 = v15;
  v5 = static TTSVBLocalVoiceMO.requireVoiceWithID(_:moc:problemForThrownError:)(v2, v4, &v12);
  result = sub_2331220AC(v12, *(&v12 + 1), v13);
  if (!v1)
  {
    v7 = [v5 name];

    if (v7)
    {
      v8 = sub_23328D98C();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    v11 = v3[1];
    *v3 = v8;
    v3[1] = v10;
  }

  return result;
}

uint64_t sub_2331BC7FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_126Tm(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = a1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = *(v5 + 64);

  a2(*(v2 + 32));
  (*(v5 + 8))(v2 + v7, v4);

  return MEMORY[0x2821FE8E8](v2, v7 + v8, v6 | 7);
}

uint64_t sub_2331BC928(uint64_t a1)
{
  v3 = *(sub_23328CC9C() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_23318F40C(a1, v4, v5, v6, v7);
}

uint64_t sub_2331BC9A0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_23328CC9C() - 8);
  v5 = *(v0 + v3);
  v6 = *(v0 + v3 + 8);
  v7 = v0 + ((v3 + *(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_23318F8A4(v0 + v2, v5, v6, v7);
}

void sub_2331BCB00(void *a1)
{
  v3 = *(v1 + 16);
  sub_233144EEC(0, &qword_27DDE2330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_233297630;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_2331527DC();
  *(v4 + 32) = 0x6563696F76;
  *(v4 + 40) = 0xE500000000000000;
  *(v4 + 96) = type metadata accessor for TTSVBLocalVoiceMO();
  *(v4 + 104) = sub_2331B2AAC(&qword_27DDE29F8, type metadata accessor for TTSVBLocalVoiceMO);
  *(v4 + 72) = v3;
  v5 = v3;
  v6 = sub_23328DDCC();
  [a1 setPredicate_];
}

uint64_t objectdestroy_307Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_2331BCD48(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

unint64_t sub_2331BCE7C()
{
  v1 = *(v0 + 16);
  sub_23328E24C();

  v2 = type metadata accessor for TTSVBLocalVoiceMO();
  v3 = TTSVBCommonVoiceMO.displayName.getter(v2, &protocol witness table for TTSVBLocalVoiceMO);
  MEMORY[0x23839B7E0](v3);

  return 0xD000000000000028;
}

uint64_t sub_2331BCF0C()
{
  v1 = *(v0 + 16);
  sub_23328E24C();

  swift_beginAccess();
  v2 = *v1;
  if ((v2 & 0xC000000000000001) != 0)
  {

    sub_23328E19C();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  v4 = sub_23328E51C();
  MEMORY[0x23839B7E0](v4);

  MEMORY[0x23839B7E0](0xD000000000000017, 0x80000002332A8DF0);
  return 0x20676E69646441;
}

uint64_t sub_2331BD00C()
{
  v1 = *(v0 + 16);
  sub_23328E24C();

  swift_beginAccess();
  v2 = *v1;
  if ((v2 & 0xC000000000000001) != 0)
  {

    sub_23328E19C();
  }

  else
  {
    v3 = *(v2 + 16);
  }

  v4 = sub_23328E51C();
  MEMORY[0x23839B7E0](v4);

  MEMORY[0x23839B7E0](0xD000000000000016, 0x80000002332A8DD0);
  return 0x20676E69646441;
}

unint64_t sub_2331BD10C()
{
  v1 = *(v0 + 16);
  sub_23328E24C();

  sub_23328CC9C();
  sub_2331BC7FC(&qword_27DDE29B8, MEMORY[0x28220BDE0]);
  v2 = sub_23328E51C();
  MEMORY[0x23839B7E0](v2);

  MEMORY[0x23839B7E0](46, 0xE100000000000000);
  return 0xD00000000000002FLL;
}

unint64_t sub_2331BD1D4()
{
  v1 = *(v0 + 16);
  sub_23328E24C();

  v2 = type metadata accessor for TTSVBLocalVoiceMO();
  v3 = TTSVBCommonVoiceMO.displayName.getter(v2, &protocol witness table for TTSVBLocalVoiceMO);
  MEMORY[0x23839B7E0](v3);

  MEMORY[0x23839B7E0](0x697070696B53202ELL, 0xEB000000002E676ELL);
  return 0xD000000000000024;
}

void sub_2331BD288(void *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  v5 = sub_23328CE4C();
  [a1 setVoiceID_];

  v6 = *v3;
  v7 = v3[1];
  v8 = sub_23328D95C();
  [a1 setName_];
}

unint64_t sub_2331BD338()
{
  v1 = *(v0 + 16);
  sub_23328E24C();

  sub_23328CE8C();
  sub_2331BC7FC(&qword_27DDE2830, MEMORY[0x28220C068]);
  v2 = sub_23328E51C();
  MEMORY[0x23839B7E0](v2);

  return 0xD000000000000030;
}

uint64_t sub_2331BD410(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_2331BD498()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_23328E24C();

  MEMORY[0x23839B7E0](v1, v2);
  return 0xD00000000000002ELL;
}

unint64_t sub_2331BD514()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_23328E24C();

  v3 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v3);

  MEMORY[0x23839B7E0](0x61636F6C206F7420, 0xED00003D4C52556CLL);
  v4 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v4);

  return 0xD000000000000020;
}

uint64_t sub_2331BD5E0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[6];
  v5 = v0[7];
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD00000000000002DLL, 0x80000002332A9080);
  MEMORY[0x23839B7E0](v1, v2);
  MEMORY[0x23839B7E0](0x6E776F646E75202ELL, 0xEF3D646564616F6CLL);
  swift_beginAccess();
  v15 = *v3;
  v7 = sub_23328E51C();
  MEMORY[0x23839B7E0](v7);

  MEMORY[0x23839B7E0](0x3D64656E6F6C6320, 0xE800000000000000);
  swift_beginAccess();
  v14 = *v4;
  v8 = sub_23328E51C();
  MEMORY[0x23839B7E0](v8);

  MEMORY[0x23839B7E0](0x6E69747369786520, 0xEF3D6C6175714567);
  swift_beginAccess();
  v13 = *v6;
  v9 = sub_23328E51C();
  MEMORY[0x23839B7E0](v9);

  MEMORY[0x23839B7E0](0xD000000000000011, 0x80000002332A90B0);
  swift_beginAccess();
  v12 = *v5;
  v10 = sub_23328E51C();
  MEMORY[0x23839B7E0](v10);

  return 0;
}

uint64_t sub_2331BD804()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD00000000000004BLL, 0x80000002332A9030);
  v3 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v3);

  MEMORY[0x23839B7E0](0x61636F6C206F7420, 0xED00003D4C52556CLL);
  v4 = sub_23328CC6C();
  MEMORY[0x23839B7E0](v4);

  return 0;
}

unint64_t sub_2331BD8F4()
{
  v1 = *(v0 + 16);
  sub_23328E24C();

  v2 = sub_23328CE3C();
  MEMORY[0x23839B7E0](v2);

  return 0xD00000000000002DLL;
}

uint64_t sub_2331BD974()
{
  v2 = v0[2];
  v1 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  sub_23328E24C();
  MEMORY[0x23839B7E0](0xD00000000000002CLL, 0x80000002332A91C0);
  v6 = sub_23328CE3C();
  MEMORY[0x23839B7E0](v6);

  MEMORY[0x23839B7E0](0x6E776F646E75202ELL, 0xEF3D646564616F6CLL);
  swift_beginAccess();
  v15 = *v1;
  v7 = sub_23328E51C();
  MEMORY[0x23839B7E0](v7);

  MEMORY[0x23839B7E0](0x3D64656E6F6C6320, 0xE800000000000000);
  swift_beginAccess();
  v14 = *v4;
  v8 = sub_23328E51C();
  MEMORY[0x23839B7E0](v8);

  MEMORY[0x23839B7E0](0x6E69747369786520, 0xEF3D6C6175714567);
  swift_beginAccess();
  v13 = *v3;
  v9 = sub_23328E51C();
  MEMORY[0x23839B7E0](v9);

  MEMORY[0x23839B7E0](0xD000000000000011, 0x80000002332A90B0);
  swift_beginAccess();
  v12 = *v5;
  v10 = sub_23328E51C();
  MEMORY[0x23839B7E0](v10);

  return 0;
}

uint64_t sub_2331BDBEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2331BDC54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2331BDCD4(id *a1)
{
  v2 = *(v1 + 16);
  v3 = [*a1 taskID];
  v4 = sub_23328D98C();
  v6 = v5;

  v7 = v2 + *(type metadata accessor for TTSVBVoiceModel() + 24);
  if (v4 == sub_23328CE3C() && v6 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_23328E54C();
  }

  return v10 & 1;
}

uint64_t sub_2331BDDC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2331BDE90(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t objectdestroy_148Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  v2 = *(v1 + 48);

  return MEMORY[0x2821FE8E8](v1, 56, 7);
}

uint64_t objectdestroy_436Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 24);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t objectdestroy_269Tm(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t objectdestroy_610Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = v0 + v3;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2331220AC(*v6, *(v6 + 8), *(v6 + 16));
    v7 = type metadata accessor for TTSVBError(0);
    v8 = v6 + *(v7 + 20);
    type metadata accessor for TTSVBError.Reason(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 7u:
      case 0x18u:
      case 0x1Cu:
      case 0x1Eu:
      case 0x22u:
      case 0x23u:
        v10 = *(v8 + 8);
        goto LABEL_6;
      case 1u:
      case 2u:
      case 3u:
      case 4u:
      case 5u:
      case 6u:
      case 8u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xDu:
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x13u:
      case 0x14u:
      case 0x15u:
      case 0x16u:
      case 0x1Au:
        v9 = sub_23328CC9C();
        goto LABEL_4;
      case 0xCu:
        v14 = sub_23328CC9C();
        (*(*(v14 - 8) + 8))(v8, v14);
        v15 = *(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B10, &unk_233290990) + 48) + 8);
        goto LABEL_6;
      case 0xEu:
      case 0xFu:
        v11 = sub_23328CC9C();
        v12 = *(*(v11 - 8) + 8);
        v12(v8, v11);
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B18, &qword_23329B0D0);
        v12(v8 + *(v13 + 48), v11);
        break;
      case 0x17u:
      case 0x19u:
      case 0x1Du:
      case 0x1Fu:
        v9 = sub_23328CE8C();
LABEL_4:
        (*(*(v9 - 8) + 8))(v8, v9);
        break;
      case 0x21u:
        v16 = *(v8 + 8);

        v17 = *(v8 + 24);
LABEL_6:

        break;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2331BE38C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE25D0, &unk_233290330) - 8);
  v2 = *(v0 + 24);
  return (*(v0 + 16))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
}

uint64_t sub_2331BE6E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1A70, &unk_233290940);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_23328D51C();
  __swift_allocate_value_buffer(v4, qword_27DE08A28);
  __swift_project_value_buffer(v4, qword_27DE08A28);
  v5 = sub_23328D4DC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  return sub_23328D50C();
}

uint64_t sub_2331BE860()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  *(v0 + 16) = *v1;
  v3 = *(*v2 + 512);

  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_2331BEFE4;

  return v7();
}

unint64_t sub_2331BE9E0()
{
  result = qword_27DDE2A90;
  if (!qword_27DDE2A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2A90);
  }

  return result;
}

unint64_t sub_2331BEA38()
{
  result = qword_27DDE2A98;
  if (!qword_27DDE2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2A98);
  }

  return result;
}

uint64_t sub_2331BEAA8()
{
  sub_23328D20C();
  v1 = sub_233237A1C();
  v2 = *v1;
  *(v0 + 16) = *v1;
  v3 = *(*v2 + 512);

  v7 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_2331BEC24;

  return v7();
}

uint64_t sub_2331BEC24()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_2331BED3C()
{
  result = qword_27DDE2AA0;
  if (!qword_27DDE2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2AA0);
  }

  return result;
}

uint64_t sub_2331BED90(uint64_t a1)
{
  v3 = *(MEMORY[0x277CE6760] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = sub_2331BE9E0();
  *v4 = v1;
  v4[1] = sub_233126374;

  return MEMORY[0x2821388D8](a1, v5);
}

unint64_t sub_2331BEE40()
{
  result = qword_27DDE2AA8;
  if (!qword_27DDE2AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2AA8);
  }

  return result;
}

uint64_t sub_2331BEE94@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDF56B0 != -1)
  {
    swift_once();
  }

  v2 = sub_23328D51C();
  v3 = __swift_project_value_buffer(v2, qword_27DE08A28);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

unint64_t sub_2331BEF58()
{
  result = qword_27DDE2AB0;
  if (!qword_27DDE2AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2AB0);
  }

  return result;
}

unint64_t sub_2331BEFE8()
{
  result = sub_2331C00A4(MEMORY[0x277D84F90]);
  qword_27DDF59C8 = result;
  return result;
}

uint64_t static TTSVBLocaleInfo.availableTrainingLocales.getter()
{
  if (qword_27DDF59C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static TTSVBLocaleInfo.availableTrainingLocales.setter(uint64_t a1)
{
  if (qword_27DDF59C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27DDF59C8 = a1;
}

uint64_t (*static TTSVBLocaleInfo.availableTrainingLocales.modify())()
{
  if (qword_27DDF59C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2331BF190@<X0>(void *a1@<X8>)
{
  if (qword_27DDF59C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27DDF59C8;
}

uint64_t sub_2331BF210(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27DDF59C0;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27DDF59C8 = v1;
}

void __swiftcall TTSVBLocaleInfo.init(siriTrainingLocaleID:asrLocaleID:ttsVoiceLocaleID:)(TextToSpeechVoiceBankingSupport::TTSVBLocaleInfo *__return_ptr retstr, Swift::String siriTrainingLocaleID, Swift::String_optional asrLocaleID, Swift::String_optional ttsVoiceLocaleID)
{
  retstr->siriTrainingLocaleID = siriTrainingLocaleID;
  retstr->_asrLocaleID = asrLocaleID;
  retstr->_ttsVoiceLocaleID = ttsVoiceLocaleID;
}

uint64_t TTSVBLocaleInfo.siriTrainingLocaleID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t TTSVBLocaleInfo.asrLocaleID.getter()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    v2 = v0[4];
    v3 = v0[5];
    v1 = 0x4E432D687ALL;
    if ((sub_23328DABC() & 1) == 0 && (sub_23328DABC() & 1) == 0)
    {
      v1 = 0x53552D6E65;
    }
  }

  return v1;
}

uint64_t TTSVBLocaleInfo.ttsVoiceLocaleID.getter()
{
  if (v0[3])
  {
    v1 = v0[2];
  }

  else
  {
    v2 = v0[4];
    v3 = v0[5];
    v1 = 0x4E432D6E6D63;
    if ((sub_23328DABC() & 1) == 0 && (sub_23328DABC() & 1) == 0)
    {
      v1 = 0x53552D6E65;
    }
  }

  return v1;
}

uint64_t TTSVBLocaleInfo.displayName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = v1 == 0x4E432D6E6D63 && v2 == 0xE600000000000000;
  if (v3 || (sub_23328E54C() & 1) != 0)
  {
    v4 = sub_23328D95C();
    v5 = TTSVBSupportLocString(v4);

    v6 = sub_23328D98C();
  }

  else
  {
    v7 = sub_23328CF0C();
    v8 = *(v7 - 8);
    v9 = *(v8 + 64);
    MEMORY[0x28223BE20](v7);
    v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

    sub_23328CE9C();
    v6 = sub_23328CEBC();
    v13 = v12;
    (*(v8 + 8))(v11, v7);
    if (!v13)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t TTSVBLocaleInfo.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = v2;
}

uint64_t sub_2331BF61C()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x61636F4C7273615FLL;
  }
}

uint64_t sub_2331BF684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2331C0584(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2331BF6AC(uint64_t a1)
{
  v2 = sub_2331C02B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331BF6E8(uint64_t a1)
{
  v2 = sub_2331C02B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TTSVBLocaleInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2AB8, &qword_233299D00);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15[3] = v1[3];
  v15[4] = v10;
  v11 = v1[4];
  v15[1] = v1[5];
  v15[2] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2331C02B0();
  sub_23328E69C();
  v18 = 0;
  v13 = v15[5];
  sub_23328E46C();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_23328E46C();
  v16 = 2;
  sub_23328E48C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t TTSVBLocaleInfo.hash(into:)()
{
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  if (v0[1])
  {
    v5 = *v0;
    sub_23328E63C();
    sub_23328DA3C();
    if (v3)
    {
LABEL_3:
      sub_23328E63C();
      sub_23328DA3C();
      goto LABEL_6;
    }
  }

  else
  {
    sub_23328E63C();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  sub_23328E63C();
LABEL_6:

  return sub_23328DA3C();
}

uint64_t TTSVBLocaleInfo.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_23328E61C();
  if (!v2)
  {
    sub_23328E63C();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_23328E63C();
    goto LABEL_6;
  }

  sub_23328E63C();
  sub_23328DA3C();
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_23328E63C();
  sub_23328DA3C();
LABEL_6:
  sub_23328DA3C();
  return sub_23328E66C();
}

uint64_t TTSVBLocaleInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2AC0, &qword_233299D08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2331C02B0();
  sub_23328E68C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v27 = 0;
  v11 = sub_23328E3AC();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_23328E3AC();
  v23 = v14;
  v25 = 2;
  v15 = sub_23328E3CC();
  v17 = v16;
  v18 = v15;
  (*(v6 + 8))(v9, v5);
  v19 = v23;
  *a2 = v24;
  a2[1] = v13;
  a2[2] = v22;
  a2[3] = v19;
  a2[4] = v18;
  a2[5] = v17;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2331BFCEC()
{
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  if (v0[1])
  {
    v5 = *v0;
    sub_23328E63C();
    sub_23328DA3C();
    if (v3)
    {
LABEL_3:
      sub_23328E63C();
      sub_23328DA3C();
      goto LABEL_6;
    }
  }

  else
  {
    sub_23328E63C();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  sub_23328E63C();
LABEL_6:

  return sub_23328DA3C();
}

uint64_t sub_2331BFDB0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_23328E61C();
  if (!v2)
  {
    sub_23328E63C();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_23328E63C();
    goto LABEL_6;
  }

  sub_23328E63C();
  sub_23328DA3C();
  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_23328E63C();
  sub_23328DA3C();
LABEL_6:
  sub_23328DA3C();
  return sub_23328E66C();
}

uint64_t sub_2331BFEA4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = v2;
}

unint64_t sub_2331BFF0C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_23328D98C();
  sub_23328E61C();
  sub_23328DA3C();
  v4 = sub_23328E66C();

  return sub_2331BFFA0(a1, v4);
}

unint64_t sub_2331BFFA0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_23328D98C();
      v9 = v8;
      if (v7 == sub_23328D98C() && v9 == v10)
      {
        break;
      }

      v12 = sub_23328E54C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2331C00A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2AD8, &qword_233299F68);
    v3 = sub_23328E35C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_2331BFF0C(v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t _s31TextToSpeechVoiceBankingSupport15TTSVBLocaleInfoV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  v10 = a2[4];
  v12 = a2[5];
  if (v3)
  {
    if (!v8 || (*a1 != *a2 || v3 != v8) && (sub_23328E54C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v6)
  {
    if (v11 && (v4 == v9 && v6 == v11 || (sub_23328E54C() & 1) != 0))
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v11)
  {
    return 0;
  }

LABEL_13:
  if (v5 == v10 && v7 == v12)
  {
    return 1;
  }

  return sub_23328E54C();
}

unint64_t sub_2331C02B0()
{
  result = qword_27DDF59D0[0];
  if (!qword_27DDF59D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF59D0);
  }

  return result;
}

unint64_t sub_2331C0308()
{
  result = qword_27DDE2AC8;
  if (!qword_27DDE2AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2AC8);
  }

  return result;
}

unint64_t sub_2331C0360()
{
  result = qword_27DDE2AD0;
  if (!qword_27DDE2AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2AD0);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2331C03C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2331C0410(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

unint64_t sub_2331C0480()
{
  result = qword_27DDF5D60[0];
  if (!qword_27DDF5D60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF5D60);
  }

  return result;
}

unint64_t sub_2331C04D8()
{
  result = qword_27DDF5E70;
  if (!qword_27DDF5E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDF5E70);
  }

  return result;
}

unint64_t sub_2331C0530()
{
  result = qword_27DDF5E78[0];
  if (!qword_27DDF5E78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DDF5E78);
  }

  return result;
}

uint64_t sub_2331C0584(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61636F4C7273615FLL && a2 == 0xEC0000004449656CLL;
  if (v4 || (sub_23328E54C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002332A92B0 == a2 || (sub_23328E54C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002332A92D0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_23328E54C();

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

void static TTSVBAnalytics.didRequestVoiceTraining(scriptType:trainingLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23328D95C();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2331C07F0;
  *(v10 + 24) = v9;
  v12[4] = sub_2331C08FC;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2331C0924;
  v12[3] = &block_descriptor_2;
  v11 = _Block_copy(v12);

  AnalyticsSendEventLazy();
  _Block_release(v11);
}

unint64_t sub_2331C07F0()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2AE0, &qword_233299F90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_233297630;
  *(inited + 32) = 0x7954747069726373;
  *(inited + 40) = 0xEA00000000006570;
  *(inited + 48) = sub_23328D95C();
  strcpy((inited + 56), "trainingLocale");
  *(inited + 71) = -18;
  *(inited + 72) = sub_23328D95C();
  v6 = sub_2331C13C0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2AE8, &qword_233299F98);
  swift_arrayDestroy();
  return v6;
}

uint64_t sub_2331C08FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id sub_2331C0924(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_2331C1580();
    v5 = sub_23328D87C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void static TTSVBAnalytics.trainingEventOccurred(eventName:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_23328D95C();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2331C0AF0;
  *(v6 + 24) = v5;
  v8[4] = sub_2331C15EC;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2331C0924;
  v8[3] = &block_descriptor_13_0;
  v7 = _Block_copy(v8);

  AnalyticsSendEventLazy();
  _Block_release(v7);
}

void static TTSVBAnalytics.modelTrained(version:duration:trainingLocaleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = sub_23328D95C();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a5;
  *(v11 + 40) = a3;
  *(v11 + 48) = a4;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2331C0C68;
  *(v12 + 24) = v11;
  v14[4] = sub_2331C15EC;
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2331C0924;
  v14[3] = &block_descriptor_23;
  v13 = _Block_copy(v14);

  AnalyticsSendEventLazy();
  _Block_release(v13);
}

unint64_t sub_2331C0C68()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v5 = v0[5];
  v4 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2AE0, &qword_233299F90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_233290950;
  *(inited + 32) = 0x6E6F6973726576;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_23328D95C();
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x80000002332A9440;
  *(inited + 72) = sub_23328DCCC();
  strcpy((inited + 80), "trainingLocale");
  *(inited + 95) = -18;
  *(inited + 96) = sub_23328D95C();
  v7 = sub_2331C13C0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2AE8, &qword_233299F98);
  swift_arrayDestroy();
  return v7;
}

void static TTSVBAnalytics.sampleCaptured(spl:splThreshold:snr:snrThreshold:userScore:userScoreThreshold:)(uint64_t a1, uint64_t a2, float a3, float a4, float a5, float a6)
{
  if (a1 < -32768)
  {
    __break(1u);
  }

  else if (a1 < 0x8000)
  {
    static TTSVBVoiceSampleTrainingValidity.evaluate(userScore:spl:splThreshold:snr:snrThreshold:)(a1, v17, a3, a4, a5, a6);
    v12 = v17[0];
    v13 = sub_23328D95C();
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 20) = a4;
    *(v14 + 24) = a5;
    *(v14 + 28) = a6;
    *(v14 + 32) = a1;
    *(v14 + 40) = a2;
    *(v14 + 48) = v12;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_2331C0F20;
    *(v15 + 24) = v14;
    v17[4] = sub_2331C15EC;
    v17[5] = v15;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 1107296256;
    v17[2] = sub_2331C0924;
    v17[3] = &block_descriptor_33;
    v16 = _Block_copy(v17);

    AnalyticsSendEventLazy();
    _Block_release(v16);

    return;
  }

  __break(1u);
}

unint64_t sub_2331C0F20()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 20);
  v3 = *(v0 + 24);
  v4 = *(v0 + 28);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2AE0, &qword_233299F90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_233299F70;
  *(inited + 32) = 7106675;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = sub_23328DCEC();
  strcpy((inited + 56), "splThreshold");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  *(inited + 72) = sub_23328DCEC();
  *(inited + 80) = 7499379;
  *(inited + 88) = 0xE300000000000000;
  *(inited + 96) = sub_23328DCEC();
  strcpy((inited + 104), "snrThreshold");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  *(inited + 120) = sub_23328DCEC();
  *(inited + 128) = 0x726F635372657375;
  *(inited + 136) = 0xE900000000000065;
  *(inited + 144) = sub_23328DD5C();
  *(inited + 152) = 0xD000000000000012;
  *(inited + 160) = 0x80000002332A9420;
  *(inited + 168) = sub_23328DD5C();
  *(inited + 176) = 0x64696C61567369;
  *(inited + 184) = 0xE700000000000000;
  TTSVBVoiceSampleTrainingValidity.isValid.getter();
  *(inited + 192) = sub_23328DC6C();
  *(inited + 200) = 0x6C61766E49726E73;
  *(inited + 208) = 0xEA00000000006469;
  v11 = *sub_233202124();
  sub_2331C152C();
  sub_23328E0EC();
  *(inited + 216) = sub_23328DC6C();
  *(inited + 224) = 0x6C61766E496C7073;
  *(inited + 232) = 0xEA00000000006469;
  v12 = *sub_23320213C();
  sub_23328E0EC();
  *(inited + 240) = sub_23328DC6C();
  *(inited + 248) = 0x6C61766E49727361;
  *(inited + 256) = 0xEA00000000006469;
  v13 = *sub_23320210C();
  sub_23328E0EC();
  *(inited + 264) = sub_23328DC6C();
  v9 = sub_2331C13C0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2AE8, &qword_233299F98);
  swift_arrayDestroy();
  return v9;
}

void static TTSVBAnalytics.beganRecording(inputSourceName:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_23328D95C();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2331C12E8;
  *(v6 + 24) = v5;
  v8[4] = sub_2331C15EC;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2331C0924;
  v8[3] = &block_descriptor_43;
  v7 = _Block_copy(v8);

  AnalyticsSendEventLazy();
  _Block_release(v7);
}

unint64_t sub_2331C1308(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2AE0, &qword_233299F90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_233297B30;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = sub_23328D95C();
  v8 = sub_2331C13C0(inited);
  swift_setDeallocating();
  sub_2331C14C4(inited + 32);
  return v8;
}

unint64_t sub_2331C13C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2AF0, &unk_233299FA0);
    v3 = sub_23328E35C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_233144260(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_2331C14C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2AE8, &qword_233299F98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2331C152C()
{
  result = qword_27DDE2AF8;
  if (!qword_27DDE2AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2AF8);
  }

  return result;
}

unint64_t sub_2331C1580()
{
  result = qword_27DDE2B00;
  if (!qword_27DDE2B00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DDE2B00);
  }

  return result;
}

id sub_2331C15F0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_23328D95C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

id static TTSVBLocalVoiceMO.allVoicesRequest.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_23328D95C();
  v2 = [v0 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2320, &qword_233297640);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_233297620;
  sub_233144EEC(0, &qword_27DDE2328, 0x277CCAC98);
  swift_getKeyPath();
  *(v3 + 32) = sub_23328DE5C();
  v4 = sub_23328DBDC();

  [v2 setSortDescriptors_];

  return v2;
}

uint64_t static TTSVBLocalVoiceMO.findOrFetch(voiceID:moc:)(uint64_t a1, void *a2)
{
  sub_233144EEC(0, &qword_27DDE2330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_233297630;
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2331527DC();
  *(v3 + 32) = 0x44496563696F76;
  *(v3 + 40) = 0xE700000000000000;
  v4 = sub_23328CE4C();
  *(v3 + 96) = sub_233144EEC(0, &qword_27DDE2348, 0x277CCAD78);
  *(v3 + 104) = sub_233152824();
  *(v3 + 72) = v4;
  v5 = sub_23328DDCC();
  v6 = type metadata accessor for TTSVBLocalVoiceMO();
  static DSO<>.findOrFetch(in:matching:)(a2, v5, v6, &protocol witness table for TTSVBLocalVoiceMO);
  v8 = v7;

  return v8;
}

BOOL static TTSVBLocalVoiceMO.voiceExists(withID:moc:)(uint64_t a1, void *a2)
{
  sub_233144EEC(0, &qword_27DDE2330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_233297630;
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2331527DC();
  *(v3 + 32) = 0x44496563696F76;
  *(v3 + 40) = 0xE700000000000000;
  v4 = sub_23328CE4C();
  *(v3 + 96) = sub_233144EEC(0, &qword_27DDE2348, 0x277CCAD78);
  *(v3 + 104) = sub_233152824();
  *(v3 + 72) = v4;
  v5 = sub_23328DDCC();
  v6 = type metadata accessor for TTSVBLocalVoiceMO();
  static DSO<>.findOrFetch(in:matching:)(a2, v5, v6, &protocol witness table for TTSVBLocalVoiceMO);
  v8 = v7;

  if (v8)
  {
  }

  return v8 != 0;
}

id static TTSVBLocalVoiceMO.batchDeleteRequest(forVoiceID:)()
{
  type metadata accessor for TTSVBLocalVoiceMO();
  v0 = [swift_getObjCClassFromMetadata() entityName];
  if (!v0)
  {
    sub_23328D98C();
    v0 = sub_23328D95C();
  }

  v1 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

  sub_233144EEC(0, &qword_27DDE2330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_233297630;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_2331527DC();
  *(v2 + 32) = 0x44496563696F76;
  *(v2 + 40) = 0xE700000000000000;
  v3 = sub_23328CE4C();
  *(v2 + 96) = sub_233144EEC(0, &qword_27DDE2348, 0x277CCAD78);
  *(v2 + 104) = sub_233152824();
  *(v2 + 72) = v3;
  v4 = sub_23328DDCC();
  [v1 setPredicate_];

  v5 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v5 setResultType_];

  return v5;
}

uint64_t static TTSVBLocalVoiceMO.voiceForNamePredicate(_:)(uint64_t a1, uint64_t a2)
{
  sub_233144EEC(0, &qword_27DDE2330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_233297630;
  v5 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  v6 = sub_2331527DC();
  *(v4 + 32) = 1701667182;
  *(v4 + 40) = 0xE400000000000000;
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 64) = v6;
  *(v4 + 72) = a1;
  *(v4 + 80) = a2;

  return sub_23328DDCC();
}

uint64_t static TTSVBLocalVoiceMO.voiceForIDPredicate(_:)()
{
  sub_233144EEC(0, &qword_27DDE2330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_233297630;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_2331527DC();
  *(v0 + 32) = 0x44496563696F76;
  *(v0 + 40) = 0xE700000000000000;
  v1 = sub_23328CE4C();
  *(v0 + 96) = sub_233144EEC(0, &qword_27DDE2348, 0x277CCAD78);
  *(v0 + 104) = sub_233152824();
  *(v0 + 72) = v1;
  return sub_23328DDCC();
}

void sub_2331C1D78(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_233121D34(a1, &v12 - v6, &qword_27DDE19B0, &qword_233290370);
  v8 = *a2;
  v9 = sub_23328CE8C();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_23328CE4C();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setVoiceID_];
}

uint64_t sub_2331C1EB4()
{
  v1 = [v0 samples];
  if (!v1 || (v2 = v1, v3 = [v1 allObjects], v2, v4 = sub_23328DBFC(), v3, v5 = sub_2331C1FC8(v4, type metadata accessor for TTSVBLocalVoiceSampleMO), , !v5))
  {

    v5 = MEMORY[0x277D84F90];
  }

  v6 = sub_2331C20C4(v5, sub_233154938, &qword_27DDE2960, type metadata accessor for TTSVBLocalVoiceSampleMO);

  return v6;
}

uint64_t sub_2331C1FC8(uint64_t a1, void (*a2)(void))
{
  v9 = MEMORY[0x277D84F90];
  v4 = *(a1 + 16);
  sub_23328E2DC();
  if (!v4)
  {
    return v9;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_23311B0C0(i, v8);
    a2(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_23328E2BC();
    v6 = *(v9 + 16);
    sub_23328E2EC();
    sub_23328E2FC();
    sub_23328E2CC();
    if (!--v4)
    {
      return v9;
    }
  }

  return 0;
}

uint64_t sub_2331C20C4(unint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  if (a1 >> 62)
  {
    v8 = sub_23328E19C();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v24 = MEMORY[0x277D84F90];
  result = (a2)(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v23 = a2;
    v9 = v24;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = 0;
      do
      {
        v12 = MEMORY[0x23839BFC0](v11, a1);
        v14 = *(v24 + 16);
        v13 = *(v24 + 24);
        if (v14 >= v13 >> 1)
        {
          v23(v13 > 1, v14 + 1, 1);
        }

        ++v11;
        v15 = sub_2331C39E0(a3, a4);
        *(v24 + 16) = v14 + 1;
        v16 = v24 + 16 * v14;
        *(v16 + 32) = v12;
        *(v16 + 40) = v15;
      }

      while (v8 != v11);
    }

    else
    {
      v17 = (a1 + 32);
      do
      {
        v19 = *(v24 + 16);
        v18 = *(v24 + 24);
        v20 = *v17;
        if (v19 >= v18 >> 1)
        {
          v23(v18 > 1, v19 + 1, 1);
        }

        v21 = sub_2331C39E0(a3, a4);
        *(v24 + 16) = v19 + 1;
        v22 = v24 + 16 * v19;
        *(v22 + 32) = v20;
        *(v22 + 40) = v21;
        ++v17;
        --v8;
      }

      while (v8);
    }

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_2331C227C()
{
  v1 = [v0 models];
  if (!v1 || (v2 = v1, v3 = [v1 allObjects], v2, v4 = sub_23328DBFC(), v3, v5 = sub_2331C1FC8(v4, type metadata accessor for TTSVBLocalVoiceModelMO), , !v5))
  {

    v5 = MEMORY[0x277D84F90];
  }

  v6 = sub_2331C20C4(v5, sub_233154978, &qword_27DDE2840, type metadata accessor for TTSVBLocalVoiceModelMO);

  return v6;
}

uint64_t sub_2331C2390()
{
  v1 = [v0 samples];
  if (v1 && (v2 = v1, v3 = [v1 allObjects], v2, v4 = sub_23328DBFC(), v3, v5 = sub_2331C1FC8(v4, type metadata accessor for TTSVBLocalVoiceSampleMO), , v5))
  {
    v20 = v5;
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2B08, qword_23329A008);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  swift_getKeyPath();
  v11 = sub_23328D94C();
  v19[1] = v19;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = sub_23328D93C();
  v16 = MEMORY[0x28223BE20](v15);
  (*(v12 + 16))(v19 - v14, v19 - v14, v11, v16);
  sub_23328C96C();
  (*(v12 + 8))(v19 - v14, v11);
  v21 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2B10, &qword_23329A048);
  sub_2331216CC(&qword_27DDE2B18, &qword_27DDE2B10, &qword_23329A048);
  sub_2331C35F4(&qword_27DDE2B20, &qword_27DDE2B08, qword_23329A008);
  v17 = sub_23328DB1C();
  (*(v7 + 8))(v10, v6);

  return v17;
}

uint64_t sub_2331C26BC()
{
  v1 = [v0 models];
  if (!v1 || (v2 = v1, v3 = [v1 allObjects], v2, v4 = sub_23328DBFC(), v3, v5 = sub_2331C1FC8(v4, type metadata accessor for TTSVBLocalVoiceModelMO), , !v5))
  {

    v5 = MEMORY[0x277D84F90];
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2B28, qword_23329A050);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v14 - v9;
  KeyPath = swift_getKeyPath();
  MEMORY[0x23839A6D0](KeyPath, 1);
  v14[1] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2B30, &unk_23329A090);
  sub_2331216CC(&qword_27DDE2B38, &qword_27DDE2B30, &unk_23329A090);
  sub_2331C35F4(&qword_27DDE2B40, &qword_27DDE2B28, qword_23329A050);
  v12 = sub_23328DB1C();
  (*(v7 + 8))(v10, v6);

  return v12;
}

uint64_t sub_2331C28E4@<X0>(id *a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = [*a1 *a2];
  if (v8)
  {
    v9 = v8;
    a3();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a4(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a5, v10, 1, v11);
}

void sub_2331C299C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_233121D34(a1, &v12 - v6, &qword_27DDE1A18, &unk_233297730);
  v8 = *a2;
  v9 = sub_23328CE1C();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_23328CD9C();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setCreationDate_];
}

uint64_t static TTSVBLocalVoiceMO.modelVersions(forVoiceWithID:moc:problemForThrownError:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  v6 = *(a3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2688, &qword_233298470);
  result = sub_23328DF5C();
  if (!v3)
  {
    return v7;
  }

  return result;
}

id TTSVBLocalVoiceMO.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id TTSVBLocalVoiceMO.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for TTSVBLocalVoiceMO();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id TTSVBLocalVoiceMO.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTSVBLocalVoiceMO();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2331C2CA8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for TTSVBLocalVoiceMO();
  result = sub_23328E25C();
  *a1 = result;
  return result;
}

uint64_t (*sub_2331C2CE8(uint64_t **a1))()
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
  v2[4] = sub_233153B40(v2);
  return sub_233153B3C;
}

uint64_t (*sub_2331C2D58(uint64_t **a1))()
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
  v2[4] = sub_233153D34(v2);
  return sub_233154AEC;
}

uint64_t (*sub_2331C2DC8(void *a1))()
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
  v2[4] = sub_2331C2E38(v2);
  return sub_233154AEC;
}

void (*sub_2331C2E38(void *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE19B0, &qword_233290370) - 8) + 64);
  a1[1] = v4;
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v4);
  }

  v7 = v6;
  a1[2] = v6;
  v8 = [v2 voiceID];
  if (v5)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v4);
  }

  v10 = v9;
  a1[3] = v9;
  if (v8)
  {
    sub_23328CE6C();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = sub_23328CE8C();
  (*(*(v12 - 8) + 56))(v10, v11, 1, v12);
  sub_233154860(v10, v7);
  return sub_2331C2F88;
}

void sub_2331C2F88(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  if (a2)
  {
    v4 = *(a1 + 8);
    MEMORY[0x28223BE20](a1);
    v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_233121D34(v3, v6, &qword_27DDE19B0, &qword_233290370);
    v7 = sub_23328CE8C();
    v8 = *(v7 - 8);
    v9 = 0;
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      v9 = sub_23328CE4C();
      (*(v8 + 8))(v6, v7);
      v3 = *(a1 + 16);
    }

    v10 = *(a1 + 24);
    [*a1 setVoiceID_];

    free(v10);
    sub_2331548D0(v3);
    free(v3);
  }

  else
  {
    v11 = sub_23328CE8C();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v3, 1, v11) == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = sub_23328CE4C();
      (*(v12 + 8))(v3, v11);
      v3 = *(a1 + 16);
    }

    v14 = *(a1 + 24);
    [*a1 setVoiceID_];

    free(v14);

    free(v3);
  }
}

char *sub_2331C3234(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2668, &qword_233298138);
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

uint64_t sub_2331C3340(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTSVBError.Reason(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v24[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a3;
  v26 = *(a3 + 8);
  HIDWORD(v23) = *(a3 + 16);
  sub_233144EEC(0, &qword_27DDE2330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2338, &unk_233297B70);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_233297630;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_2331527DC();
  *(v11 + 32) = 0x44496563696F76;
  *(v11 + 40) = 0xE700000000000000;
  v12 = sub_23328CE4C();
  *(v11 + 96) = sub_233144EEC(0, &qword_27DDE2348, 0x277CCAD78);
  *(v11 + 104) = sub_233152824();
  *(v11 + 72) = v12;
  v13 = sub_23328DDCC();
  v14 = type metadata accessor for TTSVBLocalVoiceMO();
  static DSO<>.findOrFetch(in:matching:)(a2, v13, v14, &protocol witness table for TTSVBLocalVoiceMO);
  v16 = v15;

  if (!v16)
  {
    v17 = v10;
    v18 = v26;
    v24[0] = v10;
    v24[1] = v26;
    v19 = BYTE4(v23);
    v25 = BYTE4(v23);
    v20 = sub_23328CE8C();
    (*(*(v20 - 8) + 16))(v9, a1, v20);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for TTSVBError(0);
    sub_2331C39E0(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    swift_allocError();
    v16 = v21;
    sub_233144054(v17, v18, v19);
    TTSVBError.init(_:_:_:)(v24, v9, 0, v16);
    swift_willThrow();
  }

  return v16;
}

uint64_t sub_2331C35F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2331C363C@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 48);
  v39 = *(v1 + 32);
  v40 = v6;
  result = sub_2331C3340(v4, v5, &v39);
  if (!v2)
  {
    v38 = a1;
    v37 = result;
    result = (*((*MEMORY[0x277D85000] & *result) + 0x60))();
    v8 = result;
    v9 = 0;
    v10 = *(result + 16);
    v11 = result + 40;
    v41 = MEMORY[0x277D84F90];
    v36 = result + 40;
LABEL_3:
    v12 = (v11 + 16 * v9);
    while (v10 != v9)
    {
      if (v9 >= *(v8 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        return result;
      }

      v13 = v12 + 2;
      ++v9;
      v15 = *(v12 - 1);
      v14 = *v12;
      ObjectType = swift_getObjectType();
      v17 = *(v14 + 352);
      swift_unknownObjectRetain();
      v18 = v17(ObjectType, v14);
      v20 = v19;
      result = swift_unknownObjectRelease();
      v12 = v13;
      if (v20)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_233143EE0(0, *(v41 + 2) + 1, 1, v41);
          v41 = result;
        }

        v22 = *(v41 + 2);
        v21 = *(v41 + 3);
        if (v22 >= v21 >> 1)
        {
          result = sub_233143EE0((v21 > 1), v22 + 1, 1, v41);
          v41 = result;
        }

        v23 = v41;
        *(v41 + 2) = v22 + 1;
        v24 = &v23[16 * v22];
        *(v24 + 4) = v18;
        *(v24 + 5) = v20;
        v11 = v36;
        goto LABEL_3;
      }
    }

    v25 = v41;
    v26 = *(v41 + 2);
    if (v26)
    {
      v27 = 0;
      v28 = (v41 + 40);
      v29 = MEMORY[0x277D84F90];
      while (v27 < *(v25 + 2))
      {
        v31 = *(v28 - 1);
        v30 = *v28;

        v32._countAndFlagsBits = v31;
        v32._object = v30;
        TTSVBVoiceModelVersion.init(rawValue:)(v32);
        v33 = v39;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2331C3234(0, *(v29 + 16) + 1, 1, v29);
          v29 = result;
        }

        v35 = *(v29 + 16);
        v34 = *(v29 + 24);
        if (v35 >= v34 >> 1)
        {
          result = sub_2331C3234((v34 > 1), v35 + 1, 1, v29);
          v29 = result;
        }

        ++v27;
        *(v29 + 16) = v35 + 1;
        *(v29 + 16 * v35 + 32) = v33;
        v28 += 2;
        v25 = v41;
        if (v26 == v27)
        {
          goto LABEL_22;
        }
      }

      goto LABEL_25;
    }

    v29 = MEMORY[0x277D84F90];
LABEL_22:

    *v38 = v29;
  }

  return result;
}

uint64_t sub_2331C39E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t TTSVBAudioDescriptor.FileType.fileExtension.getter()
{
  if (*v0)
  {
    return 7758199;
  }

  else
  {
    return 6709603;
  }
}

uint64_t TTSVBAudioDescriptor.FileType.fileTypeID.getter()
{
  if (*v0)
  {
    return 1463899717;
  }

  else
  {
    return 1667327590;
  }
}

TextToSpeechVoiceBankingSupport::TTSVBAudioDescriptor::FileType_optional __swiftcall TTSVBAudioDescriptor.FileType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23328E37C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2331C3AD0(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 7758199;
  }

  else
  {
    v2 = 6709603;
  }

  if (*a2)
  {
    v3 = 7758199;
  }

  else
  {
    v3 = 6709603;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_23328E54C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_2331C3B48()
{
  v1 = *v0;
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_2331C3BB0()
{
  *v0;
  sub_23328DA3C();
}

uint64_t sub_2331C3BFC()
{
  v1 = *v0;
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_2331C3C60@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23328E37C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2331C3CC0(uint64_t *a1@<X8>)
{
  v2 = 6709603;
  if (*v1)
  {
    v2 = 7758199;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

TextToSpeechVoiceBankingSupport::TTSVBAudioDescriptor::Compression_optional __swiftcall TTSVBAudioDescriptor.Compression.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23328E37C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TTSVBAudioDescriptor.Compression.rawValue.getter()
{
  v1 = 0x736F4C656C707061;
  if (*v0 != 1)
  {
    v1 = 6512993;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6572706D6F636E75;
  }
}

uint64_t sub_2331C3DC0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x736F4C656C707061;
  v4 = 0xED00007373656C73;
  if (v2 != 1)
  {
    v3 = 6512993;
    v4 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6572706D6F636E75;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC00000064657373;
  }

  v7 = 0x736F4C656C707061;
  v8 = 0xED00007373656C73;
  if (*a2 != 1)
  {
    v7 = 6512993;
    v8 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6572706D6F636E75;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC00000064657373;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23328E54C();
  }

  return v11 & 1;
}

uint64_t sub_2331C3ED0()
{
  v1 = *v0;
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

uint64_t sub_2331C3F80()
{
  *v0;
  *v0;
  sub_23328DA3C();
}

uint64_t sub_2331C401C()
{
  v1 = *v0;
  sub_23328E61C();
  sub_23328DA3C();

  return sub_23328E66C();
}

void sub_2331C40D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000064657373;
  v4 = 0xED00007373656C73;
  v5 = 0x736F4C656C707061;
  if (v2 != 1)
  {
    v5 = 6512993;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6572706D6F636E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void *TTSVBAudioDescriptor.format.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t TTSVBAudioDescriptor.fileExtension.getter()
{
  if (*v0)
  {
    return 7758199;
  }

  else
  {
    return 6709603;
  }
}

uint64_t TTSVBAudioDescriptor.audioFileSettings(withFormat:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = [a1 settings];
  v5 = sub_23328D89C();

  v6 = MEMORY[0x277D84CC0];
  if (v3 != 3)
  {
    v7 = *MEMORY[0x277CB8280];
    v8 = sub_23328D98C();
    v10 = v9;
    v11 = *&aMcplcalaCaa[4 * v3];
    v22 = v6;
    LODWORD(v21) = v11;
    sub_233145134(&v21, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_23314474C(v20, v8, v10, isUniquelyReferenced_nonNull_native);
  }

  if (v2 != 2)
  {
    v13 = *MEMORY[0x277CB8010];
    v14 = sub_23328D98C();
    v16 = v15;
    if (v2)
    {
      v17 = 1463899717;
    }

    else
    {
      v17 = 1667327590;
    }

    v22 = v6;
    LODWORD(v21) = v17;
    sub_233145134(&v21, v20);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_23314474C(v20, v14, v16, v18);
  }

  return v5;
}

unint64_t TTSVBAudioDescriptor.description.getter()
{
  v1 = 7104878;
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  sub_23328E24C();

  v5 = 6709603;
  if (v2)
  {
    v5 = 7758199;
  }

  if (v2 == 2)
  {
    v6 = 7104878;
  }

  else
  {
    v6 = v5;
  }

  MEMORY[0x23839B7E0](v6, 0xE300000000000000);

  MEMORY[0x23839B7E0](0x736572706D6F4320, 0xED00003D6E6F6973);
  v7 = 0xEC00000064657373;
  v8 = 0x6572706D6F636E75;
  v9 = 6512993;
  if (v3 != 2)
  {
    v9 = 7104878;
  }

  if (v3)
  {
    v8 = 0x736F4C656C707061;
    v7 = 0xED00007373656C73;
  }

  if (v3 <= 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  if (v3 <= 1)
  {
    v11 = v7;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  MEMORY[0x23839B7E0](v10, v11);

  MEMORY[0x23839B7E0](0x3D74616D726F4620, 0xE800000000000000);
  if (v4)
  {
    v12 = [v4 description];
    v1 = sub_23328D98C();
    v14 = v13;
  }

  else
  {
    v14 = 0xE300000000000000;
  }

  MEMORY[0x23839B7E0](v1, v14);

  return 0xD000000000000015;
}

id sub_2331C4508()
{
  result = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:24000.0];
  word_27DDF5FA8 = 1;
  qword_27DDF5FB0 = result;
  return result;
}

__int16 *sub_2331C4568()
{
  if (qword_27DDF5FA0 != -1)
  {
    swift_once();
  }

  return &word_27DDF5FA8;
}

id static TTSVBAudioDescriptor.trainingFormat.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDF5FA0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_27DDF5FB0;
  *a1 = word_27DDF5FA8;
  *(a1 + 8) = v2;

  return v2;
}

__int16 *sub_2331C464C()
{
  if (qword_27DDF5FB8 != -1)
  {
    swift_once();
  }

  return &word_27DDF5FC0;
}

id static TTSVBAudioDescriptor.defaultRecordingFormat.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DDF5FB8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_27DDF5FC8;
  *a1 = word_27DDF5FC0;
  *(a1 + 8) = v2;

  return v2;
}

unint64_t sub_2331C4720()
{
  result = qword_27DDE2B48;
  if (!qword_27DDE2B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2B48);
  }

  return result;
}

unint64_t sub_2331C4778()
{
  result = qword_27DDE2B50;
  if (!qword_27DDE2B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE2B50);
  }

  return result;
}

uint64_t sub_2331C47CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_2331C4828(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

id sub_2331C48AC()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_23328D95C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

uint64_t static TTSVBLocalVoiceSampleMO.requireSampleWithID(_:voiceID:moc:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for TTSVBError.Reason(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = _s31TextToSpeechVoiceBankingSupport010TTSVBLocalD8SampleMOC11findOrFetch8sampleID05voiceN03mocACSgSS_10Foundation4UUIDVSo22NSManagedObjectContextCtFZ_0(a1, a2, a3, a4);
  if (!result)
  {
    v16[0] = 0;
    v16[1] = 0;
    v17 = 3;
    *v11 = a1;
    v11[1] = a2;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for TTSVBError(0);
    sub_2331C6A8C(&qword_280D3A0B0, 255, type metadata accessor for TTSVBError);
    swift_allocError();
    v14 = v13;

    TTSVBError.init(_:_:_:)(v16, v11, 0, v14);
    return swift_willThrow();
  }

  return result;
}

id sub_2331C4A90@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 estimatedDuration];
  *a2 = v4;
  return result;
}

id sub_2331C4AF0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 paragraphIndex];
  *a2 = result;
  return result;
}

id sub_2331C4B68@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 recordingDuration];
  *a2 = v4;
  return result;
}

id sub_2331C4BB0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 sentenceIndex];
  *a2 = result;
  return result;
}

uint64_t sub_2331C4C28@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 recordingDate];
  if (v3)
  {
    v4 = v3;
    sub_23328CDDC();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_23328CE1C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_2331C4CCC(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A18, &unk_233297730);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_23312712C(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_23328CE1C();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_23328CD9C();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setRecordingDate_];
}

id sub_2331C4DF8@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 userScore];
  *a2 = result;
  return result;
}

id sub_2331C4E40@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 voice];
  *a2 = result;
  return result;
}

id sub_2331C4E90@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 spl];
  *a2 = v4;
  return result;
}