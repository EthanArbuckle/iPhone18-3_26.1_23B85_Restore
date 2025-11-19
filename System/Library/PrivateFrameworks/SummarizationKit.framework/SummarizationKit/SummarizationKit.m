size_t sub_227FC5470(size_t a1, int64_t a2, char a3)
{
  result = sub_2280445E4(a1, a2, a3, *v3, &qword_27D81EB90, &qword_22813DAE0, MEMORY[0x277D71C28]);
  *v3 = result;
  return result;
}

uint64_t sub_227FC54CC()
{
  v1 = v0;
  v76 = sub_2281376AC();
  v79 = *(v76 - 8);
  v2 = *(v79 + 64);
  MEMORY[0x28223BE20](v76, v3);
  v75 = v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_22813768C();
  v5 = *(v77 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v77, v7);
  v69 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v70 = v65 - v11;
  v74 = sub_2281375CC();
  v12 = *(v74 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v74, v14);
  v16 = v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2281376DC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = v65 - v25;
  v27 = sub_22813764C();
  if (!*(v27 + 16))
  {

    v40 = swift_allocObject();
    *(v40 + 16) = 27;
    *(v40 + 24) = 0;
    *(v40 + 32) = 0;
    v41 = sub_227FF96D4(0, 0xD00000000000007DLL, 0x8000000228148BF0, 22, sub_2281039C0);
    sub_227FDB3CC();
    swift_allocError();
    *v42 = 27;
    *(v42 + 8) = v41;
    return swift_willThrow();
  }

  v28 = *(v18 + 16);
  v29 = v27 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  v71 = v26;
  v28(v23, v29, v17);
  v30 = v71;

  v67 = v18;
  v68 = v17;
  (*(v18 + 32))(v30, v23, v17);
  v31 = *(sub_22813764C() + 16);

  v32 = v31 >= 2;
  v33 = v74;
  if (v32)
  {
    if (qword_2813C49E0 != -1)
    {
LABEL_34:
      swift_once();
    }

    v34 = sub_22813882C();
    __swift_project_value_buffer(v34, qword_2813C8A20);
    v35 = sub_22813880C();
    v36 = sub_2281396EC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_227FC3000, v35, v36, "More than one candidate present in PromptCompletion; expected only 1.", v37, 2u);
      v38 = v37;
      v30 = v71;
      MEMORY[0x22AAB28A0](v38, -1, -1);
    }
  }

  sub_2281376BC();
  v39 = (*(v12 + 88))(v16, v33);
  if (v39 == *MEMORY[0x277D71B60])
  {
    goto LABEL_9;
  }

  if (v39 != *MEMORY[0x277D71B50])
  {
    if (v39 == *MEMORY[0x277D71B68])
    {
      v58 = swift_allocObject();
      *(v58 + 16) = 38;
      *(v58 + 24) = 0;
      *(v58 + 32) = 0;
      v59 = sub_227FF96D4(0, 0xD00000000000007DLL, 0x8000000228148BF0, 37, sub_228103974);
      sub_227FDB3CC();
      swift_allocError();
      *v60 = 38;
      *(v60 + 8) = v59;
      swift_willThrow();
      return (*(v67 + 8))(v30, v68);
    }

    if (v39 != *MEMORY[0x277D71B58])
    {
      if (qword_2813C49E0 != -1)
      {
        swift_once();
      }

      v61 = sub_22813882C();
      __swift_project_value_buffer(v61, qword_2813C8A20);
      v62 = sub_22813880C();
      v63 = sub_2281396EC();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_227FC3000, v62, v63, "@unknown FinishReason case encountered when extractig summary from PromptCompletion", v64, 2u);
        MEMORY[0x22AAB28A0](v64, -1, -1);
      }

LABEL_9:
      (*(v12 + 8))(v16, v33);
    }
  }

  v44 = sub_2281376CC();
  v45 = *(v44 + 16);
  if (v45)
  {
    v66 = v1;
    v78[0] = MEMORY[0x277D84F90];
    sub_227FC5470(0, v45, 0);
    v16 = v78[0];
    v46 = *(v79 + 16);
    v47 = *(v79 + 80);
    v65[1] = v44;
    v48 = v44 + ((v47 + 32) & ~v47);
    v73 = *(v79 + 72);
    v74 = v46;
    v79 += 16;
    v49 = (v79 - 8);
    v72 = v5 + 32;
    v50 = v69;
    do
    {
      v51 = v75;
      v52 = v76;
      (v74)(v75, v48, v76);
      sub_22813769C();
      (*v49)(v51, v52);
      v78[0] = v16;
      v54 = *(v16 + 2);
      v53 = *(v16 + 3);
      if (v54 >= v53 >> 1)
      {
        sub_227FC5470(v53 > 1, v54 + 1, 1);
        v16 = v78[0];
      }

      *(v16 + 2) = v54 + 1;
      (*(v5 + 32))(&v16[((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v54], v50, v77);
      v48 += v73;
      --v45;
    }

    while (v45);

    v1 = v66;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  v78[0] = 0;
  v78[1] = 0xE000000000000000;
  v55 = *(v16 + 2);
  v12 = v77;
  v56 = v70;
  if (v55)
  {
    v57 = 0;
    v30 = (v5 + 16);
    v33 = (v5 + 8);
    while (1)
    {
      if (v57 >= *(v16 + 2))
      {
        __break(1u);
        goto LABEL_34;
      }

      (*(v5 + 16))(v56, &v16[((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v57], v12);
      sub_227FC5D6C(v78, v56);
      if (v1)
      {
        break;
      }

      ++v57;
      (*v33)(v56, v12);
      if (v55 == v57)
      {
        goto LABEL_24;
      }
    }

    (*v33)(v56, v12);

    __break(1u);
  }

  else
  {
LABEL_24:
    (*(v67 + 8))(v71, v68);

    return v78[0];
  }

  return result;
}

uint64_t sub_227FC5D6C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22813766C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22813768C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, a2, v9);
  v15 = (*(v10 + 88))(v14, v9);
  if (v15 == *MEMORY[0x277D71C10])
  {
    (*(v10 + 96))(v14, v9);
    (*(v4 + 32))(v8, v14, v3);
    v16 = sub_22813765C();
    MEMORY[0x22AAB1970](v16);

    return (*(v4 + 8))(v8, v3);
  }

  if (v15 == *MEMORY[0x277D71C20])
  {
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v18 = sub_22813882C();
    __swift_project_value_buffer(v18, qword_2813C8A20);
    v19 = sub_22813880C();
    v20 = sub_2281396EC();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_23;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "Image content type encountered when reducing PromptCompletion candidate";
  }

  else if (v15 == *MEMORY[0x277D71C08])
  {
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v23 = sub_22813882C();
    __swift_project_value_buffer(v23, qword_2813C8A20);
    v19 = sub_22813880C();
    v20 = sub_2281396EC();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_23;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "File content type encountered when reducing PromptCompletion candidate";
  }

  else if (v15 == *MEMORY[0x277D71C18])
  {
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v24 = sub_22813882C();
    __swift_project_value_buffer(v24, qword_2813C8A20);
    v19 = sub_22813880C();
    v20 = sub_2281396EC();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_23;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "Audio content type encountered when reducing PromptCompletion candidate";
  }

  else
  {
    if (qword_2813C49E0 != -1)
    {
      swift_once();
    }

    v25 = sub_22813882C();
    __swift_project_value_buffer(v25, qword_2813C8A20);
    v19 = sub_22813880C();
    v20 = sub_2281396EC();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_23;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "@unknown content type encountered when reducing PromptCompletion candidate";
  }

  _os_log_impl(&dword_227FC3000, v19, v20, v22, v21, 2u);
  MEMORY[0x22AAB28A0](v21, -1, -1);
LABEL_23:

  return (*(v10 + 8))(v14, v9);
}

uint64_t sub_227FC621C()
{
  v124 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 72);
  v4 = type metadata accessor for PromptManager();
  sub_227FCAA80(v3 + *(v4 + 20), v2, type metadata accessor for ModelBundleIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_227FCAB98(*(v0 + 168), type metadata accessor for ModelBundleIdentifier);
LABEL_4:
      v7 = *(v0 + 256);
      v6 = *(v0 + 264);
      v9 = *(v0 + 240);
      v8 = *(v0 + 248);
      v11 = *(v0 + 224);
      v10 = *(v0 + 232);
      v13 = *(v0 + 192);
      v12 = *(v0 + 200);
      v14 = *(v0 + 168);
      v108 = *(v0 + 152);
      v109 = *(v0 + 128);
      v112 = *(v0 + 120);
      v115 = *(v0 + 112);
      v118 = *(v0 + 88);
      v120 = *(v0 + 80);
      v15 = *(v0 + 48);
      sub_2281374FC();
      (*(v8 + 8))(v6, v9);

      v16 = *(v0 + 8);
LABEL_17:

      return v16();
    }
  }

  else
  {
    sub_227FCAB98(*(v0 + 168), type metadata accessor for ModelBundleIdentifier);
  }

  v17 = *(v0 + 304);
  v18 = *(v0 + 264);
  v20 = *(v0 + 144);
  v19 = *(v0 + 152);
  v21 = *(v0 + 56);
  v22 = *v21;
  v23 = *(v21 + 8);
  sub_2281374FC();
  v24 = sub_227FC54CC();
  v26 = v17;
  v27 = (v20 + 8);
  if (v17)
  {
    v28 = *(v0 + 264);
    v29 = *(v0 + 240);
    v30 = *(v0 + 248);
    (*v27)(*(v0 + 152), *(v0 + 136));
    (*(v30 + 8))(v28, v29);
    v34 = *(v0 + 128);
    v35 = *(v0 + 96);
    *(v0 + 32) = v26;
    v36 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E5A0, &qword_22813B310);
    if (swift_dynamicCast())
    {
      v38 = *(v0 + 120);
      v37 = *(v0 + 128);
      v39 = *(v0 + 96);
      v40 = *(v0 + 104);

      (*(v40 + 32))(v38, v37, v39);
      if (qword_2813C49E0 != -1)
      {
        swift_once();
      }

      v41 = *(v0 + 112);
      v42 = *(v0 + 120);
      v43 = *(v0 + 96);
      v44 = *(v0 + 104);
      v46 = *(v0 + 80);
      v45 = *(v0 + 88);
      v47 = *(v0 + 56);
      v48 = sub_22813882C();
      __swift_project_value_buffer(v48, qword_2813C8A20);
      sub_227FCAA80(v47, v45, type metadata accessor for SummarizationParameters);
      sub_227FCAA80(v47, v46, type metadata accessor for SummarizationParameters);
      v49 = *(v44 + 16);
      v49(v41, v42, v43);
      v50 = sub_22813880C();
      v51 = sub_2281396DC();
      v52 = os_log_type_enabled(v50, v51);
      v54 = *(v0 + 104);
      v53 = *(v0 + 112);
      v55 = *(v0 + 88);
      v121 = *(v0 + 96);
      v56 = *(v0 + 80);
      if (v52)
      {
        v110 = v51;
        v57 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v123[0] = v113;
        *v57 = 136446722;
        *(v0 + 384) = *(v55 + 32);
        v116 = v49;
        v58 = sub_2281392EC();
        v60 = v59;
        sub_227FCAB98(v55, type metadata accessor for SummarizationParameters);
        v61 = sub_227FCC340(v58, v60, v123);

        *(v57 + 4) = v61;
        *(v57 + 12) = 2082;
        *(v0 + 16) = *(v56 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6E8, &qword_22813BAD0);
        v62 = sub_2281392EC();
        v64 = v63;
        sub_227FCAB98(v56, type metadata accessor for SummarizationParameters);
        v65 = sub_227FCC340(v62, v64, v123);

        *(v57 + 14) = v65;
        *(v57 + 22) = 2082;
        v66 = sub_227FFECCC();
        v68 = v67;
        v69 = *(v54 + 8);
        v69(v53, v121);
        v70 = v66;
        v49 = v116;
        v71 = sub_227FCC340(v70, v68, v123);
        v72 = v69;

        *(v57 + 24) = v71;
        _os_log_impl(&dword_227FC3000, v50, v110, "Prompt not supported for style=%{public}s, contentType=%{public}s, underlyingError=%{public}s", v57, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AAB28A0](v113, -1, -1);
        MEMORY[0x22AAB28A0](v57, -1, -1);
      }

      else
      {

        v72 = *(v54 + 8);
        v72(v53, v121);
        sub_227FCAB98(v56, type metadata accessor for SummarizationParameters);
        sub_227FCAB98(v55, type metadata accessor for SummarizationParameters);
      }

      v73 = *(v0 + 120);
      v74 = *(v0 + 96);
      sub_22800CA68(&qword_27D81E6E0, MEMORY[0x277D71F10]);
      v75 = swift_allocError();
      v49(v76, v73, v74);
      v77 = swift_allocObject();
      *(v77 + 16) = 56;
      *(v77 + 24) = 0;
      *(v77 + 32) = 0;
      v78 = sub_227FF96D4(v75, 0xD00000000000006BLL, 0x8000000228144800, 106, sub_22800CBD8);

      sub_227FDB3CC();
      swift_allocError();
      *v79 = 56;
      *(v79 + 8) = v78;
      swift_willThrow();
      v72(v73, v74);
    }

    v81 = *(v0 + 256);
    v80 = *(v0 + 264);
    v83 = *(v0 + 224);
    v82 = *(v0 + 232);
    v85 = *(v0 + 192);
    v84 = *(v0 + 200);
    v86 = *(v0 + 168);
    v87 = *(v0 + 152);
    v111 = *(v0 + 128);
    v114 = *(v0 + 120);
    v117 = *(v0 + 112);
    v119 = *(v0 + 88);
    v122 = *(v0 + 80);

    v16 = *(v0 + 8);
    goto LABEL_17;
  }

  v31 = v24;
  v32 = v25;
  (*v27)(*(v0 + 152), *(v0 + 136));
  sub_227FC6CD0(v22, v23, v31, v32);
  *(v0 + 344) = v33;
  v89 = v33;

  if (!*(v89 + 16))
  {

    goto LABEL_4;
  }

  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v90 = sub_22813882C();
  __swift_project_value_buffer(v90, qword_2813C8A20);

  v91 = sub_22813880C();
  v92 = sub_2281396CC();

  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v123[0] = v94;
    *v93 = 136315138;
    v95 = MEMORY[0x22AAB1AD0](v89, MEMORY[0x277D837D0]);
    v97 = sub_227FCC340(v95, v96, v123);

    *(v93 + 4) = v97;
    _os_log_impl(&dword_227FC3000, v91, v92, "Two-pass model inference triggered. Disallowed words: %s", v93, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_2(v94);
    MEMORY[0x22AAB28A0](v94, -1, -1);
    MEMORY[0x22AAB28A0](v93, -1, -1);
  }

  if (qword_2813C8178 != -1)
  {
    swift_once();
  }

  sub_228139B6C();
  v98 = *(*(v0 + 40) + 24);

  if (v98)
  {
    KeyPath = swift_getKeyPath();
    os_unfair_lock_lock((v98 + 16));
    v123[3] = MEMORY[0x277D839B0];
    LOBYTE(v123[0]) = 1;

    sub_2280449FC(v123, KeyPath, (v98 + 24));
    os_unfair_lock_unlock((v98 + 16));
  }

  v100 = *(v0 + 72);
  sub_2280017F4(*(v0 + 56), *(v0 + 224));
  v101 = *(v0 + 56);
  v102 = swift_task_alloc();
  *(v0 + 352) = v102;
  *v102 = v0;
  v102[1] = sub_2280007E8;
  v103 = *(v0 + 224);
  v104 = *(v0 + 192);
  v105 = *(v0 + 64);
  v106 = *(v0 + 72);
  v107 = *(v0 + 56);

  return sub_228008880(v104, v103, v107, v89, v105, v101 + 40, v106);
}

uint64_t sub_227FC6CA0()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D81EFC8, &qword_228140470);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

void sub_227FC6CD0(char *a1, unint64_t a2, uint64_t a3, int64_t a4)
{
  v5 = v4;
  v10 = objc_opt_self();
  v11 = off_2785F1000;

  if (qword_2813C4620 != -1)
  {
LABEL_60:
    swift_once();
  }

  v69 = a1;
  v70 = a2;
  v72 = a3;
  v74 = a4;
  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v12 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v12 = &qword_2813C76F8;
  }

  v13 = *(*v12 + 2160);
  v14 = *(*v12 + 2168);
  v15 = *(*v12 + 2176);
  v16 = *(*v12 + 2184);
  v17 = *(*v12 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  if (byte_2813C4638 == 1)
  {
    v15(v76, v17);

    if ((v76[0] & 1) == 0)
    {
      return;
    }
  }

  else
  {

    if (!v14)
    {
      return;
    }
  }

  type metadata accessor for SKAssetManager();
  swift_initStackObject();
  v18 = SKAssetManager.init()();
  v19 = type metadata accessor for TwoPassInferenceConfiguration();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v22 = TwoPassInferenceConfiguration.init(assetManager:)(v18);
  if (!v5)
  {
    v23 = v22;
    v24 = qword_2813C6360;
    swift_beginAccess();
    v25 = *(v23 + v24);
    v77 = MEMORY[0x277D84FA0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E758, &unk_22813BB80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_22813A4B0;
    v27 = *MEMORY[0x277CD8978];
    *(v26 + 32) = *MEMORY[0x277CD8978];
    v28 = objc_allocWithZone(MEMORY[0x277CD89D8]);
    type metadata accessor for NLTagScheme(0);

    v29 = v27;
    v30 = sub_22813950C();

    v31 = [v28 initWithTagSchemes_];

    v32 = sub_22813927C();
    [v31 setString_];

    v34 = HIBYTE(v74) & 0xF;
    if ((v74 & 0x2000000000000000) == 0)
    {
      v34 = v72;
    }

    v35 = 11;
    if (((v74 >> 60) & ((v72 & 0x800000000000000) == 0)) == 0)
    {
      v35 = 7;
    }

    MEMORY[0x28223BE20](v33, v35 | (v34 << 16));
    sub_22813972C();

    v10 = v77;
    if (*(v77 + 16))
    {
      v73 = v23;
      a2 = *(v23 + v24);
      v77 = MEMORY[0x277D84FA0];
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_22813A4B0;
      *(v36 + 32) = v29;
      v37 = objc_allocWithZone(MEMORY[0x277CD89D8]);
      v38 = v29;
      v75 = v10;

      v39 = sub_22813950C();

      v40 = [v37 initWithTagSchemes_];

      v41 = sub_22813927C();
      [v40 setString_];

      v43 = HIBYTE(v70) & 0xF;
      if ((v70 & 0x2000000000000000) == 0)
      {
        v43 = v69;
      }

      v44 = 11;
      if (((v70 >> 60) & ((v69 & 0x800000000000000) == 0)) == 0)
      {
        v44 = 7;
      }

      MEMORY[0x28223BE20](v42, v44 | (v43 << 16));
      sub_22813972C();

      a3 = 0;
      a4 = 0;
      v45 = v10 + 56;
      v46 = v77;
      v47 = 1 << *(v10 + 32);
      if (v47 < 64)
      {
        v48 = ~(-1 << v47);
      }

      else
      {
        v48 = -1;
      }

      v11 = v48 & *(v10 + 56);
      v71 = qword_2813C6368;
      v68 = (v47 + 63) >> 6;
      v5 = v77 + 56;
      a1 = MEMORY[0x277D84F90];
      do
      {
        while (1)
        {
          while (1)
          {
            v49 = a4;
            if (!v11)
            {
              while (1)
              {
                a4 = v49 + 1;
                if (__OFADD__(v49, 1))
                {
                  break;
                }

                if (a4 >= v68)
                {
                  goto LABEL_54;
                }

                v11 = *(v45 + 8 * a4);
                ++v49;
                if (v11)
                {
                  goto LABEL_33;
                }
              }

              __break(1u);
              goto LABEL_60;
            }

LABEL_33:
            v50 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            a2 = *(*(v10 + 48) + ((a4 << 9) | (8 * v50)));
            if (!*(v46 + 16))
            {
              break;
            }

            v51 = *(v46 + 40);
            v52 = sub_228139A9C();
            v53 = -1 << *(v46 + 32);
            v54 = v52 & ~v53;
            if (((*(v5 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
            {
              break;
            }

            v55 = ~v53;
            while (*(*(v46 + 48) + 8 * v54) != a2)
            {
              v54 = (v54 + 1) & v55;
              if (((*(v5 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
              {
                goto LABEL_38;
              }
            }
          }

LABEL_38:
          if ((a2 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
            return;
          }

          v56 = *(v73 + v71);
          if (a2 >= *(v56 + 16))
          {
            goto LABEL_62;
          }

          v57 = v46;
          v58 = v56 + 8 * a2;
          v59 = *(v58 + 32);
          a2 = *(v59 + 16);
          v60 = *(a1 + 2);
          v61 = v60 + a2;
          if (__OFADD__(v60, a2))
          {
            goto LABEL_63;
          }

          v62 = *(v58 + 32);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v61 > *(a1 + 3) >> 1)
          {
            if (v60 <= v61)
            {
              v64 = v60 + a2;
            }

            else
            {
              v64 = v60;
            }

            a1 = sub_2281338C0(isUniquelyReferenced_nonNull_native, v64, 1, a1);
          }

          v10 = v75;
          v46 = v57;
          v45 = v75 + 56;
          if (!*(v59 + 16))
          {
            break;
          }

          if ((*(a1 + 3) >> 1) - *(a1 + 2) < a2)
          {
            goto LABEL_64;
          }

          swift_arrayInitWithCopy();

          a3 = 1;
          if (a2)
          {
            v65 = *(a1 + 2);
            v66 = __OFADD__(v65, a2);
            v67 = v65 + a2;
            if (v66)
            {
              goto LABEL_65;
            }

            *(a1 + 2) = v67;
          }
        }

        a3 = 1;
      }

      while (!a2);
      __break(1u);
LABEL_54:

      if (a3)
      {
        return;
      }
    }

    else
    {
    }
  }
}

void sub_227FC7498(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = sub_22813927C();
  LOBYTE(a1) = [a1 BOOLForKey_];

  *a2 = a1;
}

uint64_t sub_227FC755C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227FC75C4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227FC75FC()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2281287A4, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_227FC77B8()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  (*(v2[12] + 8))(v2[13], v2[11]);
  if (v0)
  {
    v5 = sub_2281092E8;
  }

  else
  {
    v5 = sub_227FC7920;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_227FC7920()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[16];
    v6 = v0[9];
    v5 = v0[10];
    os_unfair_lock_lock(Strong + 4);
    sub_227FC7A10(&v3[6], v6, v5);
    os_unfair_lock_unlock(v3 + 4);
    if (v4)
    {
      return;
    }
  }

  v8 = v0[13];
  v7 = v0[14];

  v9 = v0[1];

  v9();
}

uint64_t sub_227FC7A10(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A0, &unk_22813AB10);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8, v9);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v59 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = (&v59 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F458, &qword_228142F50);
  v21 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v20 - 8, v22);
  v65 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v59 - v26;
  v28 = *a1;
  if (*(*a1 + 16))
  {
    v29 = sub_227FC7F80(a2);
    if (v30)
    {
      v62 = a1;
      v63 = a2;
      v64 = v3;
      v31 = (*(v28 + 56) + 24 * v29);
      v32 = v31[1];
      v34 = v31[2];
      v66 = *v31;
      v33 = v66;
      v67 = v32;
      v68 = v34;

      v61 = a3;
      sub_227FCACB8(a3, v33, v32, v34, &qword_27D81EBA0, &qword_22813DAF0, v27);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EBA0, &qword_22813DAF0);
      v36 = (*(*(v35 - 8) + 48))(v27, 1, v35);
      sub_22812D31C(v27, &qword_27D81F458, &qword_228142F50);
      if (v36 != 1)
      {
        if (qword_2813C49E0[0] != -1)
        {
          swift_once();
        }

        v37 = sub_22813882C();
        __swift_project_value_buffer(v37, qword_2813C8A20);
        v38 = v63;
        sub_227FCAFD4(v63, v19, &qword_27D81E4A0, &unk_22813AB10);
        sub_227FCAFD4(v38, v16, &qword_27D81E4A0, &unk_22813AB10);
        sub_227FCAFD4(v38, v12, &qword_27D81E4A0, &unk_22813AB10);
        v39 = sub_22813880C();
        v40 = sub_2281396BC();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v69 = v60;
          *v41 = 136446722;
          v42 = *v19;
          v43 = v19[1];

          sub_22812D31C(v19, &qword_27D81E4A0, &unk_22813AB10);
          v44 = sub_227FCC340(v42, v43, &v69);

          *(v41 + 4) = v44;
          *(v41 + 12) = 2082;
          v45 = *(v16 + 2);
          v46 = *(v16 + 3);

          sub_22812D31C(v16, &qword_27D81E4A0, &unk_22813AB10);
          v47 = sub_227FCC340(v45, v46, &v69);

          *(v41 + 14) = v47;
          *(v41 + 22) = 1026;
          LODWORD(v47) = *(v12 + 8);
          v38 = v63;
          sub_22812D31C(v12, &qword_27D81E4A0, &unk_22813AB10);
          *(v41 + 24) = v47;
          _os_log_impl(&dword_227FC3000, v39, v40, "Evicted session from cache for [useCaseIdentifier: %{public}s, clientApplicationIdentifier: %{public}s, clientProcessIdentifier: %{public}d]", v41, 0x1Cu);
          v48 = v60;
          swift_arrayDestroy();
          MEMORY[0x22AAB28A0](v48, -1, -1);
          MEMORY[0x22AAB28A0](v41, -1, -1);
        }

        else
        {
          sub_22812D31C(v12, &qword_27D81E4A0, &unk_22813AB10);

          sub_22812D31C(v16, &qword_27D81E4A0, &unk_22813AB10);
          sub_22812D31C(v19, &qword_27D81E4A0, &unk_22813AB10);
        }

        v49 = v65;
        sub_227FCC4B4(v61, sub_227FCCD64, &qword_27D81EBA0, &qword_22813DAF0, v65);
        sub_22812D31C(v49, &qword_27D81F458, &qword_228142F50);
        v50 = v68;
        v51 = v62;
        if (*(v68 + 16))
        {
          v53 = v66;
          v52 = v67;

          v54 = *v51;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v69 = *v51;
          sub_22801BA08(v53, v52, v50, v38, isUniquelyReferenced_nonNull_native);
          *v51 = v69;
        }

        else
        {
          v56 = sub_228105610(v38);
          sub_227FCD584(v56, v57);
        }
      }
    }
  }

  return 0;
}

unint64_t sub_227FC7FA8(uint64_t *a1, void (*a2)(_BYTE *), uint64_t *a3, uint64_t *a4)
{
  v9 = *(v4 + 40);
  sub_228139AAC();
  a2(v12);
  v10 = sub_228139AEC();
  return sub_227FCB924(a1, v10, a3, a4);
}

uint64_t sub_227FC8044(uint64_t *a1)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for SessionCache.CacheKey();
  sub_228136FCC();
  type metadata accessor for SessionCache.CacheEntry();
  sub_227FEB8D0();
  sub_228137CAC();
  swift_getWitnessTable();
  sub_2281391CC();
  return sub_2281374DC();
}

uint64_t type metadata accessor for ModelBundleIdentifier()
{
  result = qword_2813C7018;
  if (!qword_2813C7018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227FC8164(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_227FC81CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_227FC8234(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_227FC829C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_227FC8304(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ModelBundleIdentifier.hash(into:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E790, &unk_228142600);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v20 - v11;
  v13 = type metadata accessor for ModelBundleIdentifier();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227FC8614(v0, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v2 + 32))(v6, v17, v1);
      MEMORY[0x22AAB2060](1);
      sub_227FC86CC(&qword_27D81E920, &qword_27D81E790, &unk_228142600);
      sub_2281391EC();
      return (*(v2 + 8))(v6, v1);
    }

    else
    {
      return MEMORY[0x22AAB2060](2);
    }
  }

  else
  {
    (*(v8 + 32))(v12, v17, v7);
    MEMORY[0x22AAB2060](0);
    sub_227FC86CC(&qword_2813C8740, &qword_27D81E760, &qword_22813BBD0);
    sub_2281391EC();
    return (*(v8 + 8))(v12, v7);
  }
}

uint64_t sub_227FC8614(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelBundleIdentifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227FC8678(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_227FC86CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_227FC8720(uint64_t a1)
{
  v2 = type metadata accessor for ModelBundleIdentifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_227FC87CC(uint64_t a1, unint64_t a2)
{
  v5 = sub_22813902C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_228138FFC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22813901C();
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v22 = v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v23 != 2)
    {
      goto LABEL_18;
    }

    v25 = *(a1 + 16);
    v24 = *(a1 + 24);
    v26 = __OFSUB__(v24, v25);
    v27 = v24 - v25;
    if (!v26)
    {
      if (v27 < 7)
      {
        goto LABEL_18;
      }

LABEL_11:
      v50 = v19;
      v51 = v15;
      v47[0] = v6;
      v47[1] = v11;
      v48 = v22;
      v49 = v20;
      v52 = v2;
      if (qword_2813C8098 != -1)
      {
        swift_once();
      }

      v28 = qword_2813C8B50;
      v29 = *algn_2813C8B58;
      v30 = sub_228136EDC();
      v32 = v31;
      LOBYTE(v28) = sub_227FC9054(v28, v29, v30, v31);
      sub_227FC9210(v30, v32);
      if (v28)
      {
        if (qword_2813C8780 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_29;
      }

LABEL_18:
      sub_227FC91BC(a1, a2);
      return a1;
    }

    __break(1u);
  }

  else
  {
    if (!v23)
    {
      if (BYTE6(a2) < 7uLL)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < 7)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_29:
  swift_once();
LABEL_15:
  v33 = qword_2813C8788;
  v34 = qword_2813C8790;
  sub_227FC91BC(qword_2813C8788, qword_2813C8790);
  sub_227FC9264(&qword_2813C4738, MEMORY[0x277CC5540]);
  sub_228138FEC();
  sub_227FC91BC(v33, v34);
  v35 = v52;
  sub_227FC92AC(v33, v34);
  v52 = v35;
  sub_227FC9210(v33, v34);
  sub_228138FDC();
  sub_227FC9210(v33, v34);
  (*(v47[0] + 8))(v10, v5);
  sub_227FC9264(&qword_2813C4740, MEMORY[0x277CC5290]);
  v36 = v48;
  result = sub_22813900C();
  if (v23)
  {
    if (v23 == 2)
    {
      v39 = *(a1 + 16);
      v38 = *(a1 + 24);
    }

    else
    {
      v39 = a1;
      v38 = a1 >> 32;
    }
  }

  else
  {
    v39 = 0;
    v38 = BYTE6(a2);
  }

  if (v38 >= 7 && v38 >= v39)
  {
    v40 = sub_228136EDC();
    v41 = v52;
    v43 = sub_227FC956C(v40, v42);
    if (v41)
    {
      (*(v49 + 8))(v36, v50);
    }

    else
    {
      v45 = v43;
      v46 = v44;
      a1 = sub_228138FAC();
      (*(v49 + 8))(v36, v50);
      sub_227FC9210(v45, v46);
    }

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_227FC8C94@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_228136D2C();
    if (v10)
    {
      v11 = sub_228136D4C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_228136D3C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_228136D2C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_228136D4C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_228136D3C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_227FC8EC4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_228103150(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_227FC9210(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_227FC8C94(v14, a3, a4, &v13);
  v10 = v4;
  sub_227FC9210(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_227FC9054(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_227FC91BC(a3, a4);
          return sub_227FC8EC4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_227FC91BC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_227FC9210(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_227FC9264(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227FC92AC(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_22813902C();
      sub_227FC9264(&qword_2813C4738, MEMORY[0x277CC5540]);
      result = sub_228138FCC();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_227FC948C(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_227FC948C(uint64_t a1, uint64_t a2)
{
  result = sub_228136D2C();
  if (!result || (result = sub_228136D4C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_228136D3C();
      sub_22813902C();
      sub_227FC9264(&qword_2813C4738, MEMORY[0x277CC5540]);
      return sub_228138FCC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_227FC956C(uint64_t a1, unint64_t a2)
{
  v30[5] = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 < 28)
      {
        goto LABEL_8;
      }

LABEL_11:
      v30[3] = MEMORY[0x277CC9318];
      v30[4] = MEMORY[0x277CC9300];
      v30[0] = a1;
      v30[1] = a2;
      v9 = __swift_project_boxed_opaque_existential_1(v30, MEMORY[0x277CC9318]);
      v10 = *v9;
      v11 = v9[1];
      v12 = v11 >> 62;
      if ((v11 >> 62) > 1)
      {
        if (v12 != 2)
        {
          memset(v28, 0, 14);
          v14 = v28;
          v13 = v28;
          goto LABEL_33;
        }

        v15 = *(v10 + 16);
        v16 = *(v10 + 24);
        v17 = sub_228136D2C();
        if (v17)
        {
          v18 = sub_228136D4C();
          v10 = v15 - v18;
          if (__OFSUB__(v15, v18))
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v17 += v10;
        }

        v5 = __OFSUB__(v16, v15);
        v19 = v16 - v15;
        if (!v5)
        {
          goto LABEL_25;
        }

        __break(1u);
      }

      else if (!v12)
      {
        v28[0] = *v9;
        LOWORD(v28[1]) = v11;
        BYTE2(v28[1]) = BYTE2(v11);
        BYTE3(v28[1]) = BYTE3(v11);
        BYTE4(v28[1]) = BYTE4(v11);
        BYTE5(v28[1]) = BYTE5(v11);
        v13 = v28 + BYTE6(v11);
        v14 = v28;
LABEL_33:
        sub_227FC98AC(v14, v13, &v29);
        v7 = v29;
        __swift_destroy_boxed_opaque_existential_1(v30);
        goto LABEL_34;
      }

      v20 = v10;
      v21 = v10 >> 32;
      v19 = v21 - v20;
      if (v21 >= v20)
      {
        v17 = sub_228136D2C();
        if (!v17)
        {
LABEL_25:
          v23 = sub_228136D3C();
          if (v23 >= v19)
          {
            v24 = v19;
          }

          else
          {
            v24 = v23;
          }

          v25 = (v24 + v17);
          if (v17)
          {
            v13 = v25;
          }

          else
          {
            v13 = 0;
          }

          v14 = v17;
          goto LABEL_33;
        }

        v22 = sub_228136D4C();
        if (!__OFSUB__(v20, v22))
        {
          v17 += v20 - v22;
          goto LABEL_25;
        }

LABEL_39:
        __break(1u);
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < 28)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

    goto LABEL_36;
  }

  if (BYTE6(a2) >= 0x1CuLL)
  {
    goto LABEL_11;
  }

LABEL_8:
  sub_227FC9210(a1, a2);
  v7 = sub_228138FBC();
  sub_227FC9264(&qword_27D81F3E0, MEMORY[0x277CC51E8]);
  swift_allocError();
  (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277CC51E0], v7);
  swift_willThrow();
LABEL_34:
  v26 = *MEMORY[0x277D85DE8];
  return v7;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

_BYTE *sub_227FC98AC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_228103208(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_2281032C0(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_227FC9940(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_227FC9940(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_228136D5C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_228136D1C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_227FC99C4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, unint64_t *a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t a8@<X8>)
{
  v78 = a7;
  v70 = a5;
  v71 = a6;
  v69 = a4;
  v72 = a8;
  v11 = sub_2281392DC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v73 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_228136EAC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a3(0);
  v22 = *(*(v21 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v26 = &v68 - v25;
  *v26 = 0;
  *(v26 + 1) = MEMORY[0x277D84F90];
  v27 = *(v24 + 24);
  v75 = v26;
  sub_228137D6C();
  v28 = [objc_opt_self() defaultManager];
  v29 = sub_22813927C();
  v30 = [v28 fileExistsAtPath_];

  if (!v30)
  {
    v34 = a1;
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v35 = sub_22813882C();
    __swift_project_value_buffer(v35, qword_2813C89F0);

    v36 = sub_22813880C();
    v37 = sub_2281396CC();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v76[0] = v39;
      *v38 = 136446210;
      *(v38 + 4) = sub_227FCC340(v34, a2, v76);
      _os_log_impl(&dword_227FC3000, v36, v37, "config file does not exist: %{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x22AAB28A0](v39, -1, -1);
      MEMORY[0x22AAB28A0](v38, -1, -1);
    }

    sub_227FE4988();
    swift_allocError();
    *v40 = 0;
    swift_willThrow();
    return sub_227FE5D1C(v75, v78);
  }

  v68 = a1;
  sub_228136E4C();
  v31 = v74;
  v32 = sub_228136EBC();
  if (v31)
  {
    (*(v16 + 8))(v20, v15);
    v43 = v68;
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v44 = sub_22813882C();
    __swift_project_value_buffer(v44, qword_2813C89F0);

    v45 = v31;
    v46 = sub_22813880C();
    v47 = sub_2281396CC();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v76[0] = v50;
      *v48 = 136446466;
      *(v48 + 4) = sub_227FCC340(v43, a2, v76);
      *(v48 + 12) = 2114;
      v51 = v31;
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v48 + 14) = v52;
      *v49 = v52;
      _os_log_impl(&dword_227FC3000, v46, v47, "Failed to read file %{public}s and deflate binary content, error: %{public}@", v48, 0x16u);
      sub_227FE5CBC(v49, &qword_27D81E3B0, &qword_22813AA20);
      MEMORY[0x22AAB28A0](v49, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x22AAB28A0](v50, -1, -1);
      MEMORY[0x22AAB28A0](v48, -1, -1);
    }

    sub_227FE4988();
    swift_allocError();
    *v53 = 2;
    swift_willThrow();

    return sub_227FE5D1C(v75, v78);
  }

  v41 = v32;
  v42 = v33;
  v74 = a2;
  v55 = sub_227FC87CC(v32, v33);
  v57 = v56;
  (*(v16 + 8))(v20, v15);
  sub_227FC9210(v41, v42);
  sub_2281392CC();
  v58 = v57;
  sub_2281392BC();
  v60 = v55;
  if (!v59)
  {
    v61 = v74;
    if (qword_2813C49A8 != -1)
    {
      swift_once();
    }

    v62 = sub_22813882C();
    __swift_project_value_buffer(v62, qword_2813C89F0);

    v63 = sub_22813880C();
    v64 = sub_2281396CC();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      *&v76[0] = v66;
      *v65 = 136446210;
      *(v65 + 4) = sub_227FCC340(v68, v61, v76);
      _os_log_impl(&dword_227FC3000, v63, v64, "Failed to parse file %{public}s as utf8 string", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v66);
      MEMORY[0x22AAB28A0](v66, -1, -1);
      MEMORY[0x22AAB28A0](v65, -1, -1);
    }

    sub_227FE4988();
    swift_allocError();
    *v67 = 3;
    swift_willThrow();
    sub_227FC9210(v60, v58);
    return sub_227FE5D1C(v75, v78);
  }

  sub_227FCA2E8(v69, v70);
  memset(v76, 0, sizeof(v76));
  v77 = 0;
  sub_228137ECC();
  sub_227FE5D1C(v75, v78);
  return sub_227FC9210(v55, v57);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_227FCA2E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227FCA330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = MEMORY[0x277D84F90];
  v2 = a2 + *(a1 + 24);
  return sub_228137D6C();
}

uint64_t sub_227FCA384@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_228137FBC();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_227FCA420()
{
  v0 = sub_228137FBC();
  __swift_allocate_value_buffer(v0, qword_2813C5060);
  __swift_project_value_buffer(v0, qword_2813C5060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E688, &qword_22813D940);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E690, &unk_22813B9B0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22813B030;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "config_version";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_228137F9C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "disallowed_word_candidates";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  return sub_228137FAC();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.decodeMessage<A>(decoder:)()
{
  result = sub_228137DCC();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_228137E4C();
      }

      else if (result == 2)
      {
        type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray(0);
        sub_227FC755C(&qword_2813C5030, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig.WordArray);
        sub_228137E8C();
      }

      result = sub_228137DCC();
    }
  }

  return result;
}

uint64_t sub_227FCA760(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = type metadata accessor for ModelBundleIdentifier();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E570, &qword_22813B1F0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v27 - v15;
  v17 = *v3;
  v18 = v3[1];
  sub_22813923C();
  v19 = v3[2];
  v20 = v3[3];
  sub_22813923C();
  v21 = *(v3 + 8);
  sub_228139ADC();
  v22 = v3[5];
  v23 = v3[6];
  sub_22813923C();
  v24 = *(v3 + 14);
  sub_228139ADC();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_22802931C(v3 + v25[13], v16, &qword_27D81E570, &qword_22813B1F0);
  if ((*(v7 + 48))(v16, 1, v6) == 1)
  {
    sub_228139ACC();
  }

  else
  {
    sub_227FC8304(v16, v11, type metadata accessor for ModelBundleIdentifier);
    sub_228139ACC();
    ModelBundleIdentifier.hash(into:)();
    sub_227FC8720(v11);
  }

  if (*(v3 + v25[14]) != 2)
  {
    sub_228139ACC();
  }

  sub_228139ACC();
  if (*(v3 + v25[15]) != 2)
  {
    sub_228139ACC();
  }

  return sub_228139ACC();
}

uint64_t sub_227FCA9B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_227FCAA18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_227FCAA80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_227FCAAE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_227FCAB50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227FCAB98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227FCABF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227FCAC58(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_227FCACB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v37 = a5;
  v38 = a6;
  v36 = a4;
  v39 = a7;
  v10 = sub_228136FCC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v17 = *(a3 + 16);
  if (a2)
  {

    v18 = sub_22812A508(a1, v16, v17, (a2 + 16), a2 + 32);
    v20 = v19;

    if ((v20 & 1) == 0)
    {
      if ((v18 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_13:
        __break(1u);
        return result;
      }

LABEL_4:
      v22 = v36;
      if (v18 < *(v36 + 16))
      {
        v24 = v37;
        v23 = v38;
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v37, v38);
        v26 = *(v25 - 8);
        v27 = v22 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v18;
        v28 = v39;
        sub_227FCAFD4(v27, v39, v24, v23);
        return (*(v26 + 56))(v28, 0, 1, v25);
      }

      goto LABEL_13;
    }
  }

  else if (v17)
  {
    v18 = 0;
    v31 = *(v11 + 16);
    v29 = v11 + 16;
    v30 = v31;
    v40 = *(v29 + 56);
    do
    {
      v30(v15, v16, v10);
      sub_227FCAF8C(&qword_2813C8770, MEMORY[0x277CC95F0]);
      v32 = a1;
      v33 = sub_22813926C();
      result = (*(v29 - 8))(v15, v10);
      if (v33)
      {
        goto LABEL_4;
      }

      ++v18;
      v16 += v40;
      a1 = v32;
    }

    while (v17 != v18);
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v37, v38);
  return (*(*(v34 - 8) + 56))(v39, 1, 1, v34);
}

uint64_t sub_227FCAF8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227FCAFD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_227FCB03C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v38 = *(a4 + 16);
  v7 = *(v38 - 8);
  v37 = v7;
  v8 = *(v7 + 84);
  v36 = sub_228136F8C();
  v9 = *(v36 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(sub_228136FCC() - 8);
  v13 = v12;
  v14 = *(v7 + 64);
  if (*(v12 + 84) <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  v16 = *(v9 + 80);
  v17 = v14 + v16;
  v18 = (v14 + v16) & ~v16;
  v19 = *(v9 + 64);
  v20 = *(v12 + 80);
  v21 = ((v19 + v20 + v18) & ~v20) + *(v12 + 64);
  if (a3 <= v15)
  {
    v23 = 0;
    v22 = a1;
  }

  else
  {
    v22 = a1;
    if (v21 <= 3)
    {
      v26 = ((a3 - v15 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
      if (HIWORD(v26))
      {
        v23 = 4;
      }

      else
      {
        if (v26 < 0x100)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        if (v26 >= 2)
        {
          v23 = v27;
        }

        else
        {
          v23 = 0;
        }
      }
    }

    else
    {
      v23 = 1;
    }
  }

  if (v15 < a2)
  {
    v24 = ~v15 + a2;
    if (v21 < 4)
    {
      v25 = (v24 >> (8 * v21)) + 1;
      if (v21)
      {
        v28 = v24 & ~(-1 << (8 * v21));
        bzero(v22, v21);
        if (v21 != 3)
        {
          if (v21 == 2)
          {
            *v22 = v28;
            if (v23 > 1)
            {
LABEL_52:
              if (v23 == 2)
              {
                *&v22[v21] = v25;
              }

              else
              {
                *&v22[v21] = v25;
              }

              return;
            }
          }

          else
          {
            *v22 = v24;
            if (v23 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *v22 = v28;
        v22[2] = BYTE2(v28);
      }

      if (v23 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(v22, v21);
      *v22 = v24;
      v25 = 1;
      if (v23 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v23)
    {
      v22[v21] = v25;
    }

    return;
  }

  if (v23 <= 1)
  {
    if (v23)
    {
      v22[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v23 == 2)
  {
    *&v22[v21] = 0;
    goto LABEL_33;
  }

  *&v22[v21] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v8 == v15)
  {
    v29 = v38;
    v30 = *(v37 + 56);
    v31 = v22;
    v32 = a2;
    v33 = v8;
LABEL_38:

    v30(v31, v32, v33, v29);
    return;
  }

  v31 = (&v22[v17] & ~v16);
  if (v10 == v15)
  {
    v30 = *(v9 + 56);
    v32 = a2;
    v33 = v10;
    v29 = v36;
    goto LABEL_38;
  }

  v34 = *(v13 + 56);
  v35 = &v31[v19 + v20] & ~v20;

  v34(v35, a2);
}

uint64_t sub_227FCB3DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v32 = sub_228136F8C();
  v8 = *(v32 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = sub_228136FCC();
  v12 = *(v11 - 8);
  v13 = *(v8 + 80);
  v14 = *(v8 + 64);
  v15 = *(v12 + 80);
  if (*(v12 + 84) <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(v6 + 64) + v13;
  if (a2 > v16)
  {
    v18 = ((v14 + v15 + (v17 & ~v13)) & ~v15) + *(*(v11 - 8) + 64);
    v19 = 8 * v18;
    if (v18 <= 3)
    {
      v21 = ((a2 - v16 + ~(-1 << v19)) >> v19) + 1;
      if (HIWORD(v21))
      {
        v20 = *(a1 + v18);
        if (!v20)
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v21 > 0xFF)
      {
        v20 = *(a1 + v18);
        if (!*(a1 + v18))
        {
          goto LABEL_30;
        }

        goto LABEL_17;
      }

      if (v21 < 2)
      {
LABEL_30:
        if (v16)
        {
          goto LABEL_31;
        }

        return 0;
      }
    }

    v20 = *(a1 + v18);
    if (!*(a1 + v18))
    {
      goto LABEL_30;
    }

LABEL_17:
    v22 = (v20 - 1) << v19;
    if (v18 > 3)
    {
      v22 = 0;
    }

    if (v18)
    {
      if (v18 <= 3)
      {
        v23 = v18;
      }

      else
      {
        v23 = 4;
      }

      if (v23 > 2)
      {
        if (v23 == 3)
        {
          v24 = *a1 | (*(a1 + 2) << 16);
        }

        else
        {
          v24 = *a1;
        }
      }

      else if (v23 == 1)
      {
        v24 = *a1;
      }

      else
      {
        v24 = *a1;
      }
    }

    else
    {
      v24 = 0;
    }

    return v16 + (v24 | v22) + 1;
  }

LABEL_31:
  if (v7 == v16)
  {
    v25 = *(v6 + 48);
    v26 = a1;
    v27 = v7;
    v28 = v5;
LABEL_36:

    return v25(v26, v27, v28);
  }

  v26 = ((a1 + v17) & ~v13);
  if (v9 == v16)
  {
    v25 = *(v8 + 48);
    v27 = v9;
    v28 = v32;
    goto LABEL_36;
  }

  v30 = *(v12 + 48);
  v31 = (v26 + v14 + v15) & ~v15;

  return v30(v31);
}

uint64_t sub_227FCB6F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_227FCB758(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_227FCB7B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_227FCB818(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_228026EB4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2281398AC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

unint64_t sub_227FCB924(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E790, &unk_228142600);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v89 = &v80 - v13;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v108 = *(v91 - 8);
  v14 = *(v108 + 64);
  MEMORY[0x28223BE20](v91, v15);
  v88 = &v80 - v16;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ED88, &unk_22813EC08);
  v17 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93, v18);
  v94 = &v80 - v19;
  v20 = type metadata accessor for ModelBundleIdentifier();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v92 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v90 = &v80 - v28;
  MEMORY[0x28223BE20](v27, v29);
  v95 = &v80 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E570, &qword_22813B1F0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8, v33);
  v104 = &v80 - v34;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E578, &unk_22813B280);
  v35 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102, v36);
  v103 = &v80 - v37;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v38 = *(*(v106 - 1) + 64);
  MEMORY[0x28223BE20](v106, v39);
  v42 = &v80 - v41;
  v43 = -1 << *(v4 + 32);
  v44 = a2 & ~v43;
  v105 = v4 + 64;
  if ((*(v4 + 64 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
  {
    v86 = v9;
    v107 = ~v43;
    v97 = (v21 + 48);
    v85 = (v10 + 8);
    v83 = (v10 + 32);
    v46 = *a1;
    v45 = a1[1];
    v84 = (v108 + 8);
    v82 = (v108 + 32);
    v108 = *(v40 + 72);
    v47 = v105;
    v98 = a4;
    v99 = v4;
    v100 = v46;
    v101 = a3;
    v96 = v45;
    do
    {
      sub_227FC8234(*(v4 + 48) + v108 * v44, v42, a3, a4);
      v48 = *v42 == v46 && *(v42 + 1) == v45;
      if (!v48 && (sub_2281399BC() & 1) == 0)
      {
        goto LABEL_6;
      }

      v49 = *(v42 + 2) == a1[2] && *(v42 + 3) == a1[3];
      if (!v49 && (sub_2281399BC() & 1) == 0 || *(v42 + 8) != *(a1 + 8) || (*(v42 + 5) != a1[5] || *(v42 + 6) != a1[6]) && (sub_2281399BC() & 1) == 0)
      {
        goto LABEL_6;
      }

      if (*(v42 + 14) != *(a1 + 14))
      {
        goto LABEL_6;
      }

      v50 = v20;
      v51 = v106[13];
      v52 = v103;
      v53 = *(v102 + 48);
      sub_227FC8234(&v42[v51], v103, &qword_27D81E570, &qword_22813B1F0);
      sub_227FC8234(a1 + v51, v52 + v53, &qword_27D81E570, &qword_22813B1F0);
      v54 = *v97;
      if ((*v97)(v52, 1, v50) == 1)
      {
        v55 = v54(v52 + v53, 1, v50);
        v4 = v99;
        v46 = v100;
        v20 = v50;
        v45 = v96;
        a4 = v98;
        if (v55 != 1)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_227FC8234(v52, v104, &qword_27D81E570, &qword_22813B1F0);
        if (v54(v52 + v53, 1, v50) == 1)
        {
          sub_227FC8720(v104);
          a4 = v98;
          v4 = v99;
          v20 = v50;
          v46 = v100;
          v45 = v96;
LABEL_4:
          sub_22808E1F4(v52, &qword_27D81E578, &unk_22813B280);
          a3 = v101;
          goto LABEL_5;
        }

        v56 = v95;
        sub_227FEC220(v52 + v53, v95);
        v57 = v94;
        v58 = *(v93 + 48);
        sub_227FC8614(v104, v94);
        sub_227FC8614(v56, v57 + v58);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v46 = v100;
        v45 = v96;
        v87 = v50;
        if (EnumCaseMultiPayload)
        {
          v60 = v58;
          a4 = v98;
          a3 = v101;
          if (EnumCaseMultiPayload == 1)
          {
            sub_227FC8614(v57, v92);
            if (swift_getEnumCaseMultiPayload() != 1)
            {
              (*v85)(v92, v86);
              goto LABEL_48;
            }

            (*v83)(v89, v57 + v60, v86);
            sub_2281374CC();
            sub_227FCAB50(&qword_2813C8728, MEMORY[0x277D29CE0]);
            LODWORD(v81) = sub_22813745C();
            v61 = v57;
            v62 = *v85;
            v63 = v86;
            (*v85)(v89, v86);
            v62(v92, v63);
            v4 = v99;
            v46 = v100;
            v64 = v104;
            if ((v81 & 1) == 0)
            {
              sub_227FC8720(v61);
              goto LABEL_50;
            }
          }

          else
          {
            v68 = swift_getEnumCaseMultiPayload();
            v61 = v57;
            v4 = v99;
            v64 = v104;
            if (v68 != 2)
            {
              goto LABEL_49;
            }
          }

          sub_227FC8720(v61);
        }

        else
        {
          v65 = v90;
          sub_227FC8614(v57, v90);
          v66 = swift_getEnumCaseMultiPayload();
          v67 = v58;
          a4 = v98;
          a3 = v101;
          if (v66)
          {
            (*v84)(v65, v91);
LABEL_48:
            v61 = v57;
            v4 = v99;
            v64 = v104;
LABEL_49:
            sub_22808E1F4(v61, &qword_27D81ED88, &unk_22813EC08);
LABEL_50:
            sub_227FC8720(v95);
            sub_227FC8720(v64);
            sub_22808E1F4(v103, &qword_27D81E570, &qword_22813B1F0);
            v20 = v87;
LABEL_5:
            v47 = v105;
            goto LABEL_6;
          }

          v75 = v88;
          (*v82)(v88, v57 + v67, v91);
          v81 = sub_22813742C();
          sub_227FCAB50(&qword_2813C8748, MEMORY[0x277D29B48]);
          LODWORD(v81) = sub_22813745C();
          v76 = *v84;
          v77 = v75;
          v78 = v91;
          (*v84)(v77, v91);
          v76(v90, v78);
          sub_227FC8720(v94);
          v4 = v99;
          v64 = v104;
          if ((v81 & 1) == 0)
          {
            goto LABEL_50;
          }
        }

        sub_227FC8720(v95);
        sub_227FC8720(v64);
        v20 = v87;
        v52 = v103;
      }

      sub_22808E1F4(v52, &qword_27D81E570, &qword_22813B1F0);
      v47 = v105;
      v69 = v106[14];
      v70 = v42[v69];
      v71 = *(a1 + v69);
      if (v70 == 2)
      {
        a3 = v101;
        if (v71 != 2)
        {
          goto LABEL_6;
        }
      }

      else
      {
        a3 = v101;
        if (v71 == 2 || ((v71 ^ v70) & 1) != 0)
        {
          goto LABEL_6;
        }
      }

      v72 = v106[15];
      v73 = v42[v72];
      v74 = *(a1 + v72);
      if (v73 == 2)
      {
        if (v74 == 2)
        {
          goto LABEL_54;
        }
      }

      else if (v74 != 2 && ((v74 ^ v73) & 1) == 0)
      {
LABEL_54:
        sub_22808E1F4(v42, a3, a4);
        return v44;
      }

LABEL_6:
      sub_22808E1F4(v42, a3, a4);
      v44 = (v44 + 1) & v107;
    }

    while (((*(v47 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) != 0);
  }

  return v44;
}

uint64_t sub_227FCC340(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_227FCB818(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_228029260(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t sub_227FCC40C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_227FCC4B4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a5;
  v10 = sub_228136FCC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v5;
  v16 = v5[1];
  v18 = v16 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v19 = *(v16 + 16);
  if (*v5)
  {
    v36 = v13;
    v37 = v5;
    v38 = a2;

    v20 = sub_22812A508(a1, v18, v19, (v17 + 16), v17 + 32);
    v22 = v21;
    v24 = v23;

    if ((v22 & 1) == 0)
    {
      v25 = v39;
LABEL_11:
      sub_227FCC760(v20, v24, v15);
      (*(v36 + 8))(v15, v10);
      sub_227FCCA18(v20, v38, a3, a4, v25);
      v30 = 0;
      goto LABEL_12;
    }
  }

  else if (v19)
  {
    v40 = a1;
    v37 = v5;
    v38 = a2;
    v34 = a3;
    v35 = a4;
    v20 = 0;
    v36 = v13;
    v26 = *(v13 + 16);
    v27 = *(v13 + 72);
    v28 = (v13 + 8);
    while (1)
    {
      v26(v15, v18, v10);
      sub_227FCAF8C(&qword_2813C8770, MEMORY[0x277CC95F0]);
      v29 = sub_22813926C();
      (*v28)(v15, v10);
      if (v29)
      {
        break;
      }

      ++v20;
      v18 += v27;
      if (v19 == v20)
      {
        v30 = 1;
        v25 = v39;
        a3 = v34;
        a4 = v35;
        goto LABEL_12;
      }
    }

    v24 = 0;
    v25 = v39;
    a3 = v34;
    a4 = v35;
    goto LABEL_11;
  }

  v30 = 1;
  v25 = v39;
LABEL_12:
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return (*(*(v31 - 8) + 56))(v25, v30, 1, v31);
}

unint64_t sub_227FCC760@<X0>(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3[1];
  v7 = *(v6 + 16);
  v8 = *v3;
  if (!*v3)
  {
    if (!v7)
    {
      goto LABEL_16;
    }

    return sub_227FCC8D8(a1, a3);
  }

  swift_beginAccess();
  if ((*(v8 + 16) & 0x3FLL) == (*(v8 + 24) & 0x3FLL))
  {
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else if (v7 <= MEMORY[0x22AAB0210]())
  {
LABEL_16:
    sub_227FCC8D8(a1, a3);
    return sub_228128E8C(sub_228129FD8);
  }

  v10 = *v3;
  result = swift_isUniquelyReferenced_native();
  v12 = *v3;
  if ((result & 1) == 0)
  {
    if (!v12)
    {
      goto LABEL_20;
    }

    v13 = *v3;
    v14 = sub_228137C7C();

    *v3 = v14;
    v12 = v14;
  }

  if (v12)
  {

    result = sub_228129134(a2, (v12 + 16), v12 + 32, v3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_2281298F4(a1, a1 + 1, v6, (v12 + 16), v12 + 32);

      return sub_227FCC8D8(a1, a3);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_227FCC8D8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_227FCC9DC(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = sub_228136FCC();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_227FCCA18@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *v5;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v11);
    v11 = result;
  }

  v13 = *(v11 + 16);
  if (v13 <= a1)
  {
    __break(1u);
  }

  else
  {
    v14 = v13 - 1;
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
    v16 = *(v15 + 72);
    v17 = v11 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + v16 * a1;
    result = sub_227FCCD78(v17, a5, a3, a4);
    if (v16 > 0 || v17 >= v17 + v16 + v16 * (v14 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v16)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    *(v11 + 16) = v14;
    *v5 = v11;
  }

  return result;
}

size_t sub_227FCCB58(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size_1(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_227FCCD78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_227FCCDE0(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E790, &unk_228142600);
  v8 = *(v78 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v78, v10);
  v77 = v71 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E760, &qword_22813BBD0);
  v12 = *(v76 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v76, v14);
  v75 = v71 - v15;
  v16 = type metadata accessor for ModelBundleIdentifier();
  v85 = *(v16 - 8);
  v17 = v85[8];
  v19 = MEMORY[0x28223BE20](v16, v18);
  v80 = v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v87 = v71 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E570, &qword_22813B1F0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8, v25);
  v86 = v71 - v26;
  v89 = a3;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v28 = *(*(v27 - 1) + 64);
  result = MEMORY[0x28223BE20](v27, v29);
  v32 = a1;
  v34 = v71 - v33;
  v35 = a2 + 64;
  v36 = -1 << *(a2 + 32);
  v37 = (v32 + 1) & ~v36;
  if ((*(a2 + 64 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37))
  {
    v79 = v12;
    v38 = ~v36;
    v39 = v32;
    v82 = v31;
    v40 = sub_22813980C();
    v32 = v39;
    v88 = v38;
    v84 = (v40 + 1) & v38;
    v41 = *(v82 + 72);
    v81 = v85 + 6;
    v74 = (v8 + 32);
    v73 = v8 + 8;
    v72 = (v79 + 32);
    v71[1] = v79 + 8;
    v85 = a4;
    v79 = v16;
    v82 = v41;
    v83 = a2 + 64;
    do
    {
      v42 = v32;
      v43 = v41 * v37;
      sub_22802931C(*(a2 + 48) + v41 * v37, v34, v89, a4);
      v44 = *(a2 + 40);
      sub_228139AAC();
      v45 = *v34;
      v46 = *(v34 + 1);
      sub_22813923C();
      v47 = *(v34 + 2);
      v48 = *(v34 + 3);
      sub_22813923C();
      v49 = *(v34 + 8);
      sub_228139ADC();
      v50 = *(v34 + 5);
      v51 = *(v34 + 6);
      sub_22813923C();
      v52 = *(v34 + 14);
      sub_228139ADC();
      v53 = v86;
      sub_22802931C(&v34[v27[13]], v86, &qword_27D81E570, &qword_22813B1F0);
      if ((*v81)(v53, 1, v16) == 1)
      {
        sub_228139ACC();
        goto LABEL_14;
      }

      v54 = v87;
      sub_227FC8304(v53, v87, type metadata accessor for ModelBundleIdentifier);
      sub_228139ACC();
      sub_227FC8614(v54, v80);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          MEMORY[0x22AAB2060](2);
          goto LABEL_13;
        }

        v56 = v77;
        v57 = v78;
        (*v74)(v77, v80, v78);
        MEMORY[0x22AAB2060](1);
        sub_227FC8678(&qword_27D81E920, &qword_27D81E790, &unk_228142600);
        sub_2281391EC();
        v58 = &v91;
      }

      else
      {
        v56 = v75;
        v57 = v76;
        (*v72)(v75, v80, v76);
        MEMORY[0x22AAB2060](0);
        sub_227FC8678(&qword_2813C8740, &qword_27D81E760, &qword_22813BBD0);
        sub_2281391EC();
        v58 = &v90;
      }

      v59 = v56;
      v16 = v79;
      (**(v58 - 32))(v59, v57);
LABEL_13:
      sub_227FC8720(v87);
LABEL_14:
      if (v34[v27[14]] != 2)
      {
        sub_228139ACC();
      }

      sub_228139ACC();
      if (v34[v27[15]] != 2)
      {
        sub_228139ACC();
      }

      sub_228139ACC();
      v60 = sub_228139AEC();
      a4 = v85;
      result = sub_2280292BC(v34, v89, v85);
      v61 = v60 & v88;
      v32 = v42;
      if (v42 >= v84)
      {
        v41 = v82;
        if (v61 < v84)
        {
          v35 = v83;
          goto LABEL_4;
        }

        if (v42 >= v61)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v41 = v82;
        if (v61 >= v84 || v42 >= v61)
        {
LABEL_24:
          v62 = *(a2 + 48);
          result = v62 + v41 * v42;
          if (v41 * v42 < v43 || result >= v62 + v43 + v41)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v32 = v42;
            v35 = v83;
          }

          else
          {
            v63 = v41 * v42 == v43;
            v35 = v83;
            if (!v63)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v32 = v42;
            }
          }

          v64 = *(a2 + 56);
          v65 = v64 + 24 * v32;
          v66 = (v64 + 24 * v37);
          if (v32 != v37 || v65 >= v66 + 24)
          {
            v67 = *v66;
            *(v65 + 16) = *(v66 + 2);
            *v65 = v67;
            v32 = v37;
          }

          goto LABEL_4;
        }
      }

      v35 = v83;
LABEL_4:
      v37 = (v37 + 1) & v88;
    }

    while (((*(v35 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) != 0);
  }

  *(v35 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v32) - 1;
  v68 = *(a2 + 16);
  v69 = __OFSUB__(v68, 1);
  v70 = v68 - 1;
  if (v69)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v70;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_227FCD584(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t PriorityModelSession.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm_11(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return swift_deallocClassInstance();
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_2(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_3(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_5(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_6(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_7(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_9(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_10(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_11(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_12(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_13(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_14(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t LLMUrgencyClassifier.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_227FCDB1C()
{
  sub_227FC8720(v0 + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_modelBundleIdentifier);
  __swift_destroy_boxed_opaque_existential_1Tm_8((v0 + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_sessionInfo));
  v1 = OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_generativeModelSessionConfiguration;
  v2 = sub_22813791C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm_8((v0 + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_model));
  v3 = OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_samplingParameters;
  v4 = sub_2281377CC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm_8((v0 + OBJC_IVAR____TtC16SummarizationKit28GMSClassificationModelEngine_promptRunner));
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t ClassificationConfiguration.__deallocating_deinit()
{
  sub_227FCDD44(v0 + *(*v0 + 96), type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  v1 = *(v0 + *(*v0 + 104));

  v2 = *(v0 + qword_2813C68F8 + 8);

  v3 = *(v0 + qword_2813C6900 + 8);

  v4 = *(v0 + qword_2813C68F0 + 8);

  v5 = *(v0 + qword_2813C68E8);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_227FCDD44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227FCDDF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_228137D7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_227FCDF00(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_227FCE000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_228137D7C();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_227FCE08C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_227FCE13C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_227FCE244@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2281392AC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_227FCE284()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_227FCE2C4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_227FCE2E0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

_OWORD *sub_227FCE2F8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_227FCE310()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_227FCE38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SummarizationSession.Configuration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_227FCE44C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SummarizationSession.Configuration();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_227FCE584()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_227FCE5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E570, &qword_22813B1F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_227FCE698(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E570, &qword_22813B1F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227FCE758()
{
  __swift_destroy_boxed_opaque_existential_1Tm_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_227FCE790()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227FCE7D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_227FCE7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228136FCC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_227FCE88C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_228136FCC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227FCE930()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 76, 7);
}

uint64_t sub_227FCE978(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_227FCE988()
{
  v1 = (type metadata accessor for ClassificationRequestHandler.RequestInfo(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = v1[7];
  v7 = sub_228136FCC();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = *(v0 + v3 + v1[8] + 8);

  v9 = *(v0 + v3 + v1[9] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_227FCEAE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v2 = a2 + *(a1 + 20);
  return sub_228137D6C();
}

void *sub_227FCEB48(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_228137D7C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227FCEBFC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ModelBundleIdentifier();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_22813791C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_227FCED20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for ModelBundleIdentifier();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_22813791C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

unint64_t sub_227FCEE44@<X0>(unint64_t *a1@<X8>)
{
  result = GMSModelInfo.userDefinedFields.getter();
  *a1 = result;
  return result;
}

uint64_t sub_227FCEE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_228138CFC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_228136F8C();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 56);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_227FCEF9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_228138CFC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_228136F8C();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 56);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_227FCF0C4()
{
  v1 = *(type metadata accessor for ModelBundleIdentifier() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v7 = &unk_27D81E790;
    v8 = &unk_228142600;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_6;
    }

    v7 = &unk_27D81E760;
    v8 = &unk_22813BBD0;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  (*(*(v9 - 8) + 8))(v0 + v3, v9);
LABEL_6:
  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 47) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1Tm_3((v0 + v10));
  v12 = *(v0 + v11);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v2 | 7);
}

uint64_t sub_227FCF218(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_227FCF244()
{
  v1 = *(type metadata accessor for ModelBundleIdentifier() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  __swift_destroy_boxed_opaque_existential_1Tm_3((v0 + 16));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v6 = &qword_27D81E790;
    v7 = &unk_228142600;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_6;
    }

    v6 = &qword_27D81E760;
    v7 = &qword_22813BBD0;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  (*(*(v8 - 8) + 8))(v0 + v3, v8);
LABEL_6:

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

_OWORD *sub_227FCF784(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_227FCF794(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C0, &unk_22813C3A0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E330, &unk_22813A7E0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[12];

  return v15(v16, a2, v14);
}

uint64_t sub_227FCF924(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C0, &unk_22813C3A0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E330, &unk_22813A7E0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_227FCFAB8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

_OWORD *sub_227FCFAD4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_227FCFAF4@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_227FCFB14@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t _s16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigV13SanitizerTypeOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s16SummarizationKit56Com_Apple_Summarizationkit_Proto_SKClientSafetyGMSConfigV13SanitizerTypeOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_227FCFD58(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227FCFD74(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_227FCFD94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_228137D7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_227FCFE50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_228137D7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_227FCFF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_228137D7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A0, &unk_22813C6D0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_227FD0010(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_228137D7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A0, &unk_22813C6D0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_227FD0118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_227FD01C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_228137D7C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227FD0268(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_228137D7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C8, &qword_22813C4D8);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A8, &unk_22813C6E0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_227FD0414(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_228137D7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C8, &qword_22813C4D8);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E9A8, &unk_22813C6E0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_227FD05CC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_227FD06FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_227FD082C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_227FD08D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_228137D7C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227FD0B38(uint64_t a1, uint64_t a2)
{
  v4 = sub_22813899C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_227FD0BA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22813899C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_227FD0C18()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_227FD0CD0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_227FD0D10()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_227FD0D98()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECA0, &qword_22813E0D8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_227FD0DD8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB0, &qword_22813E118);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = *(v2 + 64);
  v6 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm_7(v0 + 4);
  v7 = v0[9];

  v8 = v0[10];

  v9 = v0[12];

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_227FD0EC8()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_227FD0F08()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_227FD0F5C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_227FD0FEC()
{
  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_227FD1030()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227FD1068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB8, &qword_22813E120);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_227FD1134(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81ECB8, &qword_22813E120);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_227FD11FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22813797C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_227FD12A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_22813797C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227FD13D0(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  result = sub_228089024(*(a2 + 32), *(a2 + 40), *(a2 + 48));
  *(a2 + 32) = v3;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

uint64_t sub_227FD1408@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (*(result + 48) == 1)
  {
    v4 = *(result + 32);
    v3 = *(result + 40);
    result = sub_228088FC8(v4, v3, 1u);
  }

  else
  {
    v4 = 0;
    v3 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t sub_227FD1468@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (*(result + 48) == 2)
  {
    v4 = *(result + 32);
    v3 = *(result + 40);
    result = sub_228088FC8(v4, v3, 2u);
  }

  else
  {
    v4 = 0;
    v3 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t sub_227FD14C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_227FD1574(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_228137D7C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227FD1618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_227FD16C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_228137D7C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227FD1780()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227FD1888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228137A9C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_227FD1934(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_228137A9C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227FD19F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_228138E9C();
  *a1 = result;
  return result;
}

uint64_t sub_227FD1A1C(uint64_t *a1)
{
  v1 = *a1;

  return sub_228138EAC();
}

uint64_t sub_227FD1C38()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_227FD1C78(uint64_t a1, uint64_t a2)
{
  v4 = sub_228138B8C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_227FD1CE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_228138B8C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_227FD1D54(uint64_t a1, uint64_t a2)
{
  v4 = sub_2281389DC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_227FD1DC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2281389DC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_227FD1E70()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 76, 7);
}

uint64_t sub_227FD1EB8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[9];

  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v2 = v0[21];

  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  v3 = v0[27];

  v4 = v0[28];

  v5 = v0[30];

  return MEMORY[0x2821FE8E8](v0, 248, 7);
}

uint64_t sub_227FD1F30()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_227FD1F84()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227FD1FBC()
{
  __swift_destroy_boxed_opaque_existential_1Tm_9((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_227FD1FF4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227FD207C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_227FD20C0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_227FD20D8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227FD2114()
{
  v1 = (type metadata accessor for SummarizationParameters() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64) + 7;
  v5 = (v4 + v3) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v2 + v5 + 8) & ~v2;
  v16 = (v4 + v6) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + 16));
  v7 = v0 + v3;
  v8 = *(v0 + v3 + 8);

  __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + v3 + 40));
  v9 = v1[11];
  v10 = sub_228137A9C();
  v11 = *(*(v10 - 8) + 8);
  v11(v7 + v9, v10);
  v12 = *(v0 + v5);

  v13 = *(v0 + v6 + 8);

  __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + v6 + 40));
  v11(v0 + v6 + v1[11], v10);
  v14 = *(v0 + v16);

  return MEMORY[0x2821FE8E8](v0, v16 + 8, v2 | 7);
}

uint64_t sub_227FD228C()
{
  v1 = (type metadata accessor for SummarizationParameters() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v14 = *(*v1 + 64);
  v4 = (v14 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v2 + v4 + 40) & ~v2;
  v6 = *(v0 + 16);

  v7 = v0 + v3;
  v8 = *(v0 + v3 + 8);

  __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + v3 + 40));
  v9 = v1[11];
  v10 = sub_228137A9C();
  v11 = *(*(v10 - 8) + 8);
  v11(v7 + v9, v10);
  __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + v4));
  v12 = *(v0 + v5 + 8);

  __swift_destroy_boxed_opaque_existential_1Tm_10((v0 + v5 + 40));
  v11(v0 + v5 + v1[11], v10);

  return MEMORY[0x2821FE8E8](v0, v5 + v14, v2 | 7);
}

uint64_t sub_227FD23F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C0, &unk_22813C3A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_227FD2530(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E8C0, &unk_22813C3A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E598, &qword_22813B300);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_227FD2754(uint64_t a1, uint64_t a2)
{
  v4 = sub_228138AAC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_227FD27C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_228138AAC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_227FD2844()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_227FD2958()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227FD2990()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_227FD2B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228136F8C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_227FD2BD4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_228136F8C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227FD331C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v4 = *a2;
  v6 = *a1;
  v7 = v2;
  v8 = v3;
  return sub_2280D55AC(&v6);
}

uint64_t sub_227FD3444()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_227FD3490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_227FD353C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_228137D7C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227FD35E0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_227FD368C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_228137D7C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227FD376C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_227FD37D8()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_227FD3834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ModelBundleIdentifier();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6A8, &qword_22813F930);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_227FD394C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for ModelBundleIdentifier();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E6A8, &qword_22813F930);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_227FD3ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_228137D7C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void *sub_227FD3B48(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_228137D7C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227FD3BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_228137D7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAC8, &qword_22813D908);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_227FD3CEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_228137D7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAC8, &qword_22813D908);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_227FD3E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F268, &qword_228142CB0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_227FD3F3C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81F268, &qword_228142CB0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_227FD4094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_228137D7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAB8, &qword_2281416A0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_227FD41EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_228137D7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81EAB8, &qword_2281416A0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_227FD4350(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_228137D7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E998, &unk_228141680);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_227FD447C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_228137D7C();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 20)];

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
      v16 = *(*(v15 - 8) + 48);
      v17 = &a1[*(a3 + 24)];

      return v16(v17, a2, v15);
    }
  }
}

_BYTE *sub_227FD45AC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4A8, &unk_22813DE00);
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 24)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_227FD46D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_227FD4808(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E4B0, &qword_22813AB20);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_227FD4938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228137D7C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_227FD49E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_228137D7C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227FD4A88()
{
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_227FD4AC0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227FD4B00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_227FD4B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_228136FCC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_227FD4BBC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_228136FCC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_227FD4C60()
{
  v1 = (type metadata accessor for SummarizationRequestHandler.RequestInfo(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = v1[7];
  v7 = sub_228136FCC();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = *(v0 + v3 + v1[8] + 8);

  v9 = *(v0 + v3 + v1[9] + 8);

  v10 = *(v0 + v3 + v1[11] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_227FD4D80()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_227FD4ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22813877C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_227FD4F8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22813877C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_227FD5048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_2281387AC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_227FD50C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_2281387AC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_227FD5148()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_227FD5180()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_227FD51C0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_227FD51D8()
{
  __swift_destroy_boxed_opaque_existential_1Tm_14((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_227FD5218@<X0>(uint64_t a1@<X8>)
{
  if (qword_2813C7028 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ModelBundleIdentifier();
  v3 = __swift_project_value_buffer(v2, qword_2813C8AD8);
  return sub_227FCAA18(v3, a1, type metadata accessor for ModelBundleIdentifier);
}

void sub_227FD52A8(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v118 = a2;
  v99 = *v2;
  v5 = sub_2281373DC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v101 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2281377FC();
  v104 = *(v9 - 8);
  v105 = v9;
  v10 = *(v104 + 64);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v102 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v103 = &v87 - v15;
  v16 = type metadata accessor for ModelBundleIdentifier();
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v106 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v107 = &v87 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v87 - v25;
  v27 = sub_22813759C();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8, v29);
  v31 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_22813791C();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v36 = MEMORY[0x28223BE20](v32, v35);
  v108 = &v87 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v38);
  v40 = &v87 - v39;
  sub_22813758C();
  v100 = v31;
  sub_2281378CC();
  v41 = OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_generativeModelSessionConfiguration;
  v109 = v33;
  v42 = *(v33 + 32);
  v98 = v40;
  v110 = v32;
  v42(v2 + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_generativeModelSessionConfiguration, v40, v32);
  if (qword_2813C7028 != -1)
  {
    swift_once();
  }

  v43 = __swift_project_value_buffer(v16, qword_2813C8AD8);
  sub_227FCAA18(v43, v26, type metadata accessor for ModelBundleIdentifier);
  v44 = OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_modelBundleIdentifier;
  sub_227FCAA18(v26, v2 + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_modelBundleIdentifier, type metadata accessor for ModelBundleIdentifier);
  v45 = OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_sessionInfo;
  sub_227FDB600(a1, v2 + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_sessionInfo);
  v46 = v118;
  sub_227FDB4D4(v118, &v112, &qword_27D81E348, &qword_22813A7F0);
  if (!AssociatedTypeWitness)
  {
    v88 = v45;
    v89 = v44;
    sub_227FDB53C(&v112, &qword_27D81E348, &qword_22813A7F0);
    v93 = sub_22813755C();
    v96 = v26;
    v49 = v41;
    v50 = v107;
    sub_227FCAA18(v26, v107, type metadata accessor for ModelBundleIdentifier);
    v51 = *(v109 + 16);
    v95 = v49;
    v94 = v3;
    v91 = v109 + 16;
    v90 = v51;
    v51(v108, &v3[v49], v110);
    v52 = a1[3];
    v53 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v52);
    v92 = (*(v53 + 8))(v52, v53);
    v55 = v54;
    v57 = a1[3];
    v56 = a1[4];
    v97 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v57);
    v58 = *(v56 + 24);
    v59 = v56;
    v60 = v50;
    v58(v57, v59);
    v61 = v106;
    sub_227FCAA18(v50, v106, type metadata accessor for ModelBundleIdentifier);
    if (swift_getEnumCaseMultiPayload() >= 2)
    {
      v71 = v108;
      sub_2281378EC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E338, &qword_22813F770);
      v72 = *(sub_2281375BC() - 8);
      v73 = *(v72 + 72);
      v74 = (*(v72 + 80) + 32) & ~*(v72 + 80);
      *(swift_allocObject() + 16) = xmmword_22813A4B0;
      sub_2281380CC();
      sub_2281380BC();
      sub_22813809C();

      sub_22813758C();
      v75 = v103;
      v60 = v107;
      sub_2281377EC();
      v77 = v104;
      v76 = v105;
      (*(v104 + 16))(v102, v75, v105);
      v78 = v93;
      v79 = v71;
      v80 = sub_22813752C();
      (*(v77 + 8))(v75, v76);
      v63 = v79;
    }

    else
    {
      v62 = v93;
      sub_227FDB474(v61, type metadata accessor for ModelBundleIdentifier);
      v63 = v108;
      v64 = v111;
      sub_2280F94B0(v92, v55, v101);
      v111 = v64;
      if (v64)
      {

        sub_227FDB53C(v118, &qword_27D81E348, &qword_22813A7F0);
        v65 = *(v109 + 8);
        v66 = v63;
        v67 = v110;
        v65(v66, v110);
        sub_227FDB474(v60, type metadata accessor for ModelBundleIdentifier);
        sub_227FDB474(v96, type metadata accessor for ModelBundleIdentifier);
        v68 = v94;
        sub_227FDB474(&v94[v89], type metadata accessor for ModelBundleIdentifier);
        __swift_destroy_boxed_opaque_existential_1Tm(&v68[v88]);
        v65(&v68[v95], v67);
        v69 = *(*v68 + 48);
        v70 = *(*v68 + 52);
        swift_deallocPartialClassInstance();
LABEL_14:
        v48 = v97;
        goto LABEL_15;
      }

      v90(v98, v63, v110);
      v78 = v62;
      v80 = sub_22813753C();
    }

    v81 = v110;
    (*(v109 + 8))(v63, v110);
    sub_227FDB474(v60, type metadata accessor for ModelBundleIdentifier);
    v82 = v94;
    v83 = &v94[OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_promptRunner];
    v84 = type metadata accessor for PromptManager();
    v83[3] = v84;
    v83[4] = &off_2818510E0;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v83);
    v86 = v96;
    sub_227FCAA18(v96, boxed_opaque_existential_1 + *(v84 + 20), type metadata accessor for ModelBundleIdentifier);
    v90(boxed_opaque_existential_1 + *(v84 + 24), &v82[v95], v81);
    *boxed_opaque_existential_1 = v80;
    v116 = v78;
    v117 = &off_283B5EC90;
    *&v115 = v80;

    sub_227FDB53C(v118, &qword_27D81E348, &qword_22813A7F0);
    sub_227FDB474(v86, type metadata accessor for ModelBundleIdentifier);
    sub_227FCE2C4(&v115, &v82[OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_model]);
    goto LABEL_14;
  }

  sub_227FCE2C4(&v112, &v115);

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  if (byte_2813C4629 == 1)
  {
    sub_227FDB600(&v115, v2 + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_promptRunner);
    v47 = __swift_project_boxed_opaque_existential_1(&v115, v116);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *__swift_allocate_boxed_opaque_existential_1(&v112) = *v47;

    sub_227FDB53C(v46, &qword_27D81E348, &qword_22813A7F0);
    sub_227FDB474(v26, type metadata accessor for ModelBundleIdentifier);
    sub_227FCE2C4(&v112, v2 + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_model);
    __swift_destroy_boxed_opaque_existential_1Tm(&v115);
    v48 = a1;
LABEL_15:
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    return;
  }

  __break(1u);
}

uint64_t sub_227FD5DB8(uint64_t a1)
{
  v2[53] = a1;
  v2[54] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E308, &unk_22813F910) - 8) + 64) + 15;
  v2[55] = swift_task_alloc();
  v4 = sub_2281378AC();
  v2[56] = v4;
  v5 = *(v4 - 8);
  v2[57] = v5;
  v6 = *(v5 + 64) + 15;
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v7 = sub_22813771C();
  v2[61] = v7;
  v8 = *(v7 - 8);
  v2[62] = v8;
  v9 = *(v8 + 64) + 15;
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E310, &qword_22813A7C0) - 8) + 64) + 15;
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v11 = sub_22813882C();
  v2[70] = v11;
  v12 = *(v11 - 8);
  v2[71] = v12;
  v13 = *(v12 + 64) + 15;
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();
  v14 = type metadata accessor for ModelBundleIdentifier();
  v2[76] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();
  v16 = sub_2281377CC();
  v2[79] = v16;
  v17 = *(v16 - 8);
  v2[80] = v17;
  v18 = *(v17 + 64) + 15;
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();
  v2[87] = swift_task_alloc();
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();
  v19 = sub_22813783C();
  v2[95] = v19;
  v20 = *(v19 - 8);
  v2[96] = v20;
  v21 = *(v20 + 64) + 15;
  v2[97] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E318, &qword_22813A7C8) - 8) + 64) + 15;
  v2[98] = swift_task_alloc();
  v23 = sub_2281375BC();
  v2[99] = v23;
  v24 = *(v23 - 8);
  v2[100] = v24;
  v25 = *(v24 + 64) + 15;
  v2[101] = swift_task_alloc();
  v26 = sub_2281373DC();
  v2[102] = v26;
  v27 = *(v26 - 8);
  v2[103] = v27;
  v28 = *(v27 + 64) + 15;
  v2[104] = swift_task_alloc();
  v2[105] = swift_task_alloc();
  v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E320, &unk_22813A7D0) - 8) + 64) + 15;
  v2[106] = swift_task_alloc();
  v2[107] = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E328, &qword_2281402C0) - 8) + 64) + 15;
  v2[108] = swift_task_alloc();
  v2[109] = swift_task_alloc();
  v31 = sub_22813716C();
  v2[110] = v31;
  v32 = *(v31 - 8);
  v2[111] = v32;
  v33 = *(v32 + 64) + 15;
  v2[112] = swift_task_alloc();
  v2[113] = swift_task_alloc();
  v34 = sub_22813713C();
  v2[114] = v34;
  v35 = *(v34 - 8);
  v2[115] = v35;
  v36 = *(v35 + 64) + 15;
  v2[116] = swift_task_alloc();
  v2[117] = swift_task_alloc();
  v37 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E330, &unk_22813A7E0) - 8) + 64) + 15;
  v2[118] = swift_task_alloc();
  v38 = type metadata accessor for GMSModelInfo(0);
  v2[119] = v38;
  v39 = *(*(v38 - 8) + 64) + 15;
  v2[120] = swift_task_alloc();
  v2[121] = swift_task_alloc();
  v2[122] = swift_task_alloc();
  v2[123] = swift_task_alloc();
  v2[124] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227FD6494, 0, 0);
}

uint64_t sub_227FD6494()
{
  v1 = v0[54];
  sub_227FDB600(v0[53] + 56, (v0 + 2));
  if (sub_228060440(v0 + 2))
  {
    v2 = v0[118];
    v3 = v0[54];
    v4 = OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_modelBundleIdentifier;
    v0[125] = OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_modelBundleIdentifier;
    v5 = sub_2281376EC();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    if (qword_2813C73E8 != -1)
    {
      swift_once();
    }

    v6 = swift_task_alloc();
    v0[126] = v6;
    *v6 = v0;
    v6[1] = sub_227FD697C;
    v7 = v0[124];
    v8 = v0[118];

    return sub_228011668(v7, v3 + v4, (v0 + 2), v8);
  }

  else
  {
    v10 = swift_allocObject();
    *(v10 + 16) = 16;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    v11 = sub_227FF96D4(0, 0xD000000000000096, 0x80000002281439D0, 73, sub_227FDB3C0);
    sub_227FDB3CC();
    swift_allocError();
    *v12 = 16;
    *(v12 + 8) = v11;
    swift_willThrow();
    v13 = v0[124];
    v14 = v0[123];
    v15 = v0[122];
    v16 = v0[121];
    v17 = v0[120];
    v18 = v0[118];
    v19 = v0[117];
    v20 = v0[116];
    v21 = v0[113];
    v23 = v0[112];
    v24 = v0[109];
    v25 = v0[108];
    v26 = v0[107];
    v27 = v0[106];
    v28 = v0[105];
    v29 = v0[104];
    v30 = v0[101];
    v31 = v0[98];
    v32 = v0[97];
    v33 = v0[94];
    v34 = v0[93];
    v35 = v0[92];
    v36 = v0[91];
    v37 = v0[90];
    v38 = v0[89];
    v39 = v0[88];
    v40 = v0[87];
    v41 = v0[86];
    v42 = v0[85];
    v43 = v0[84];
    v44 = v0[83];
    v45 = v0[82];
    v46 = v0[81];
    v47 = v0[78];
    v48 = v0[77];
    v49 = v0[75];
    v50 = v0[74];
    v51 = v0[73];
    v52 = v0[72];
    v53 = v0[69];
    v54 = v0[68];
    v55 = v0[67];
    v56 = v0[66];
    v57 = v0[65];
    v58 = v0[64];
    v59 = v0[63];
    v60 = v0[60];
    v61 = v0[59];
    v62 = v0[58];
    v63 = v0[55];
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_227FD697C()
{
  v1 = *(*v0 + 1008);
  v2 = *(*v0 + 944);
  v4 = *v0;

  sub_227FDB53C(v2, &qword_27D81E330, &unk_22813A7E0);

  return MEMORY[0x2822009F8](sub_227FD6AA4, 0, 0);
}

uint64_t sub_227FD6AA4()
{
  v177 = v0;
  v1 = v0[124];
  v2 = GMSModelInfo.supportedLanguages.getter();
  if (v2)
  {
    v172 = v0;
    v174 = v2[2];
    if (!v174)
    {
LABEL_33:

      if (qword_2813C49E0[0] != -1)
      {
        goto LABEL_55;
      }

      goto LABEL_34;
    }

    v3 = 0;
    v4 = v0[115];
    v164 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v166 = v4;
    v161 = (v0[111] + 8);
    v168 = (v4 + 8);
    v170 = v2;
    while (1)
    {
      if (v3 >= v2[2])
      {
        __break(1u);
LABEL_55:
        swift_once();
LABEL_34:
        __swift_project_value_buffer(v0[70], qword_2813C8A20);
        v67 = sub_22813880C();
        v68 = sub_2281396DC();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          v176 = v70;
          *v69 = 136446210;
          if (qword_2813C8758 != -1)
          {
            swift_once();
          }

          v71 = v0[124];
          v72 = v0[112];
          v73 = v172[111];
          v74 = v172[110];
          sub_228139B6C();
          sub_227FDB150(&qword_27D81E340, MEMORY[0x277CC9788]);
          v75 = sub_22813998C();
          v77 = v76;
          (*(v73 + 8))(v72, v74);
          v0 = v172;
          v78 = sub_227FCC340(v75, v77, &v176);

          *(v69 + 4) = v78;
          _os_log_impl(&dword_227FC3000, v67, v68, "Factual consistency classifier does not support the input language %{public}s.", v69, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v70);
          MEMORY[0x22AAB28A0](v70, -1, -1);
          MEMORY[0x22AAB28A0](v69, -1, -1);

          v79 = v71;
        }

        else
        {
          v80 = v0[124];

          v79 = v80;
        }

        sub_227FDB474(v79, type metadata accessor for GMSModelInfo);
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
        v175 = 3;
LABEL_40:
        v81 = v0[124];
        v82 = v0[123];
        v83 = v0[122];
        v84 = v0[121];
        v85 = v0[120];
        v86 = v0[118];
        v87 = v0[117];
        v88 = v0[116];
        v89 = v0[113];
        v90 = v0[112];
        v126 = v0[109];
        v127 = v0[108];
        v128 = v0[107];
        v129 = v0[106];
        v130 = v0[105];
        v131 = v0[104];
        v132 = v0[101];
        v133 = v0[98];
        v134 = v0[97];
        v135 = v0[94];
        v136 = v0[93];
        v137 = v0[92];
        v138 = v0[91];
        v139 = v0[90];
        v140 = v0[89];
        v141 = v0[88];
        v142 = v0[87];
        v143 = v0[86];
        v144 = v0[85];
        v145 = v0[84];
        v146 = v0[83];
        v147 = v0[82];
        v148 = v0[81];
        v149 = v0[78];
        v150 = v0[77];
        v151 = v0[75];
        v152 = v0[74];
        v153 = v0[73];
        v154 = v0[72];
        v155 = v0[69];
        v156 = v0[68];
        v158 = v0[67];
        v160 = v0[66];
        v162 = v0[65];
        v163 = v0[64];
        v165 = v0[63];
        v167 = v0[60];
        v169 = v0[59];
        v171 = v0[58];
        v173 = v0[55];

        v91 = v0[1];

        return v91(0, v175);
      }

      (*(v166 + 16))(v0[117], &v164[*(v166 + 72) * v3], v0[114]);
      if (qword_2813C8758 != -1)
      {
        swift_once();
      }

      v11 = v0[117];
      v12 = v0[116];
      v13 = v0[113];
      v14 = v0[110];
      v15 = v0[109];
      sub_228139B6C();
      sub_22813715C();
      (*v161)(v13, v14);
      sub_22813710C();
      v16 = sub_22813701C();
      v17 = *(v16 - 8);
      v18 = *(v17 + 48);
      if (v18(v15, 1, v16) == 1)
      {
        v5 = v0[117];
        v6 = v0[116];
        v7 = v0[114];
        v8 = v0[109];
        v9 = *v168;
        (*v168)(v6, v7);
        v9(v5, v7);
        v0 = v172;
        v10 = v8;
LABEL_5:
        sub_227FDB53C(v10, &qword_27D81E328, &qword_2281402C0);
        goto LABEL_6;
      }

      v19 = v0[116];
      v20 = v0[109];
      v21 = v0[108];
      v157 = sub_228136FFC();
      v159 = v22;
      v23 = *(v17 + 8);
      v23(v20, v16);
      sub_22813710C();
      if (v18(v21, 1, v16) == 1)
      {
        v24 = v0[117];
        v25 = v0[116];
        v26 = v0[114];
        v27 = v0[108];

        v28 = *v168;
        (*v168)(v25, v26);
        v28(v24, v26);
        v10 = v27;
        goto LABEL_5;
      }

      v29 = v0[108];
      v30 = sub_228136FFC();
      v32 = v31;
      v23(v29, v16);
      if (v157 == v30 && v159 == v32)
      {
      }

      else
      {
        v33 = sub_2281399BC();

        if ((v33 & 1) == 0)
        {
          v64 = v172[117];
          v65 = v172[114];
          v66 = *v168;
          (*v168)(v172[116], v65);
          v66(v64, v65);
          v0 = v172;
          goto LABEL_6;
        }
      }

      v0 = v172;
      v34 = v172[117];
      v35 = v172[107];
      sub_22813712C();
      v36 = sub_2281370BC();
      v37 = *(v36 - 8);
      v38 = *(v37 + 48);
      v39 = v38(v35, 1, v36);
      v40 = v172[107];
      if (v39 == 1)
      {
        sub_227FDB53C(v172[107], &qword_27D81E320, &unk_22813A7D0);
        v41 = 0;
        v42 = 0;
      }

      else
      {
        v41 = sub_228136FFC();
        v42 = v43;
        (*(v37 + 8))(v40, v36);
      }

      v44 = v172[116];
      v45 = v172[106];
      sub_22813712C();
      v46 = v38(v45, 1, v36);
      v47 = v172[106];
      if (v46 == 1)
      {
        break;
      }

      v49 = v172[106];
      v50 = sub_228136FFC();
      v48 = v51;
      (*(v37 + 8))(v47, v36);
      if (!v42)
      {
        goto LABEL_30;
      }

      if (!v48)
      {
LABEL_29:
        v57 = v172[117];
        v58 = v172[116];
        v59 = v172[114];

        v60 = *v168;
        (*v168)(v58, v59);
        v60(v57, v59);
        v0 = v172;
        goto LABEL_6;
      }

      v52 = v172[117];
      v53 = v172[116];
      v54 = v172[114];
      if (v41 == v50 && v42 == v48)
      {

        v93 = *v168;
        (*v168)(v53, v54);
        v93(v52, v54);
LABEL_44:

        goto LABEL_45;
      }

      v55 = sub_2281399BC();

      v56 = *v168;
      (*v168)(v53, v54);
      v56(v52, v54);
      if (v55)
      {
        goto LABEL_44;
      }

LABEL_6:
      ++v3;
      v2 = v170;
      if (v174 == v3)
      {
        goto LABEL_33;
      }
    }

    sub_227FDB53C(v172[106], &qword_27D81E320, &unk_22813A7D0);
    if (v42)
    {
      goto LABEL_29;
    }

    v48 = 0;
LABEL_30:
    v61 = v172[117];
    v62 = v172[114];
    v63 = *v168;
    (*v168)(v172[116], v62);
    v63(v61, v62);
    v0 = v172;
    if (!v48)
    {
      goto LABEL_44;
    }

    goto LABEL_6;
  }

LABEL_45:
  v94 = v0[125];
  v95 = v0[105];
  v96 = v0[54];
  v97 = *(v96 + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_sessionInfo + 24);
  v98 = *(v96 + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_sessionInfo + 32);
  __swift_project_boxed_opaque_existential_1((v96 + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_sessionInfo), v97);
  v99 = (*(v98 + 8))(v97, v98);
  sub_2280F94B0(v99, v100, v95);
  v101 = v0[105];
  v102 = v0[104];
  v103 = v0[103];
  v104 = v0[102];
  v105 = v0[100];
  v106 = v0[99];
  v107 = v0[98];

  (*(v103 + 16))(v102, v101, v104);
  sub_2281375AC();
  if ((*(v105 + 48))(v107, 1, v106) == 1)
  {
    sub_227FDB53C(v0[98], &qword_27D81E318, &qword_22813A7C8);
    if (qword_2813C49E0[0] != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v0[70], qword_2813C8A20);
    v108 = sub_22813880C();
    v109 = sub_2281396DC();
    v110 = os_log_type_enabled(v108, v109);
    v111 = v0[124];
    v112 = v0[105];
    v113 = v0[103];
    v114 = v0[102];
    if (v110)
    {
      v115 = swift_slowAlloc();
      *v115 = 0;
      _os_log_impl(&dword_227FC3000, v108, v109, "Factual consistency classifier model bundle not found", v115, 2u);
      MEMORY[0x22AAB28A0](v115, -1, -1);
    }

    (*(v113 + 8))(v112, v114);
    sub_227FDB474(v111, type metadata accessor for GMSModelInfo);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v175 = 0;
    goto LABEL_40;
  }

  v116 = v0[101];
  v117 = v0[100];
  v118 = v0[99];
  v119 = v0[54];
  (*(v117 + 32))(v116, v0[98], v118);
  __swift_project_boxed_opaque_existential_1((v119 + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_promptRunner), *(v119 + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_promptRunner + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E338, &qword_22813F770);
  v120 = *(v117 + 72);
  v121 = (*(v117 + 80) + 32) & ~*(v117 + 80);
  v122 = swift_allocObject();
  v0[127] = v122;
  *(v122 + 16) = xmmword_22813A4B0;
  (*(v117 + 16))(v122 + v121, v116, v118);
  v123 = swift_task_alloc();
  v0[128] = v123;
  *v123 = v0;
  v123[1] = sub_227FD7C04;
  v124 = v0[97];
  v125 = v0[53];

  return sub_22800415C(v124, v125, v122);
}

uint64_t sub_227FD7C04()
{
  v2 = *v1;
  v3 = *(*v1 + 1024);
  v4 = *v1;
  *(*v1 + 1032) = v0;

  v5 = *(v2 + 1016);

  if (v0)
  {
    v6 = sub_227FDA6AC;
  }

  else
  {
    v6 = sub_227FD7D38;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_227FD7D38()
{
  v493 = v0;
  if (qword_2813C7028 != -1)
  {
    swift_once();
  }

  v1 = v0[78];
  v474 = __swift_project_value_buffer(v0[76], qword_2813C8AD8);
  sub_227FCAA18(v474, v1, type metadata accessor for ModelBundleIdentifier);
  v2 = objc_opt_self();
  v3 = off_2785F1000;

  if (qword_2813C4620 != -1)
  {
    swift_once();
  }

  v482 = byte_2813C4629;
  if (byte_2813C4629 == 1)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v4 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v4 = &qword_2813C76F8;
  }

  v5 = *(*v4 + 1344);
  v6 = *(*v4 + 1352);
  v7 = *(*v4 + 1360);
  v8 = *(*v4 + 1368);
  v9 = *(*v4 + 2208);

  if (qword_2813C4630 != -1)
  {
    swift_once();
  }

  v485 = byte_2813C4638;
  if (byte_2813C4638 == 1)
  {
    v7(&v491, v9);

    v6 = v491;
  }

  else
  {
  }

  sub_2280F8BF4(v0[78], 2, 0, v6, 0, v0[94]);

  if (v482)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v10 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v10 = &qword_2813C76F8;
  }

  v11 = *v10;
  v12 = *(*v10 + 24);
  v13 = *(*v10 + 32);
  v15 = *(*v10 + 40);
  v14 = *(*v10 + 48);
  v16 = *(*v10 + 2208);

  v479 = v2;
  if (v485)
  {
    v15(&v491, v16);

    if ((v491 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {

    if (!v13)
    {
LABEL_30:
      v422 = *(v0[80] + 8);
      v422(v0[94], v0[79]);

      goto LABEL_83;
    }
  }

  v17 = *(v11 + 64);
  v18 = *(v11 + 72);
  v20 = *(v11 + 80);
  v19 = *(v11 + 88);
  v21 = *(v11 + 2208);

  if (v485)
  {
    v20(&v491, v21);

    if ((v491 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else
  {

    if ((v18 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v0[70], qword_2813C8A20);
  if (qword_2813C49C8 != -1)
  {
    swift_once();
  }

  v23 = v22;
  if ((byte_2813C49D0 & 1) == 0)
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v0[70], qword_2813C4990);
  }

  v466 = v22;
  v24 = v0[94];
  v25 = v0[93];
  v26 = v0[92];
  v27 = v0[91];
  v28 = v0[90];
  v449 = v0[89];
  v458 = v0[88];
  v29 = v0[80];
  v30 = v0[79];
  v441 = *(v0[71] + 16);
  v441(v0[75], v23, v0[70]);
  sub_227FDB600((v0 + 2), (v0 + 17));
  v31 = *(v29 + 16);
  v31(v25, v24, v30);
  v31(v26, v24, v30);
  v31(v27, v24, v30);
  v31(v28, v24, v30);
  v31(v449, v24, v30);
  v31(v458, v24, v30);
  v32 = sub_22813880C();
  v33 = sub_2281396BC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v450 = swift_slowAlloc();
    v491 = v450;
    *v34 = 136447746;
    v35 = v0[20];
    v36 = v0[21];
    __swift_project_boxed_opaque_existential_1(v0 + 17, v35);
    v37 = (*(v36 + 16))(v35, v36);
    v39 = v38;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
    v40 = sub_227FCC340(v37, v39, &v491);

    *(v34 + 4) = v40;
    *(v34 + 12) = 2082;
    v41 = sub_22813776C();
    v42 = v0[93];
    v43 = v0[80];
    v44 = v0[79];
    v459 = v32;
    if (v45)
    {
      v422 = *(v43 + 8);
      v422(v42, v44);
      v46 = 0xE300000000000000;
      v47 = 7104878;
    }

    else
    {
      v0[52] = v41;
      v58 = sub_2281392EC();
      v46 = v59;
      v422 = *(v43 + 8);
      v422(v42, v44);
      v47 = v58;
    }

    v60 = v0[92];
    v61 = v0[69];
    v62 = v0[68];
    v63 = v0[61];
    v64 = v0[62];
    v65 = sub_227FCC340(v47, v46, &v491);

    *(v34 + 14) = v65;
    *(v34 + 22) = 2082;
    sub_2281377BC();
    sub_227FDB4D4(v61, v62, &qword_27D81E310, &qword_22813A7C0);
    v66 = (*(v64 + 48))(v62, 1, v63);
    v67 = v0[68];
    if (v66 == 1)
    {
      sub_227FDB53C(v0[68], &qword_27D81E310, &qword_22813A7C0);
      v68 = 0xE300000000000000;
      v69 = 7104878;
    }

    else
    {
      v70 = v0[65];
      v71 = v0[64];
      v72 = v0[61];
      v73 = v0[62];
      (*(v73 + 32))(v70, v0[68], v72);
      (*(v73 + 16))(v71, v70, v72);
      v69 = sub_2281392EC();
      v68 = v74;
      (*(v73 + 8))(v70, v72);
    }

    v75 = v0[92];
    v76 = v0[91];
    v77 = v0[80];
    v78 = v0[79];
    sub_227FDB53C(v0[69], &qword_27D81E310, &qword_22813A7C0);
    v422(v75, v78);
    v79 = sub_227FCC340(v69, v68, &v491);

    *(v34 + 24) = v79;
    *(v34 + 32) = 2082;
    v80 = sub_22813774C();
    v81 = v0[91];
    v82 = v0[80];
    v83 = v0[79];
    if (v84)
    {
      v422(v0[91], v0[79]);
      v85 = 0xE300000000000000;
      v86 = 7104878;
    }

    else
    {
      v0[51] = v80;
      v86 = sub_2281392EC();
      v85 = v87;
      v422(v81, v83);
    }

    v88 = v0[90];
    v89 = sub_227FCC340(v86, v85, &v491);

    *(v34 + 34) = v89;
    *(v34 + 42) = 2082;
    v90 = sub_22813773C();
    v91 = v0[90];
    v92 = v0[80];
    v93 = v0[79];
    if (v94)
    {
      v422(v0[90], v0[79]);
      v95 = 0xE300000000000000;
      v96 = 7104878;
    }

    else
    {
      v0[50] = v90;
      v97 = sub_2281392EC();
      v95 = v98;
      v422(v91, v93);
      v96 = v97;
    }

    v99 = 7104878;
    v100 = v0[89];
    v101 = sub_227FCC340(v96, v95, &v491);

    *(v34 + 44) = v101;
    *(v34 + 52) = 2082;
    v102 = sub_22813779C();
    v103 = v0[89];
    v104 = v0[80];
    v105 = v0[79];
    if (v106)
    {
      v422(v0[89], v0[79]);
      v107 = 0xE300000000000000;
      v108 = 7104878;
    }

    else
    {
      v0[49] = v102;
      v109 = sub_2281392EC();
      v107 = v110;
      v422(v103, v105);
      v108 = v109;
    }

    v111 = v0[88];
    v112 = sub_227FCC340(v108, v107, &v491);

    *(v34 + 54) = v112;
    *(v34 + 62) = 2082;
    v113 = sub_22813777C();
    v114 = v0[88];
    v115 = v0[80];
    v116 = v0[79];
    if (v117)
    {
      v422(v0[88], v0[79]);
      v118 = 0xE300000000000000;
    }

    else
    {
      v0[48] = v113;
      v99 = sub_2281392EC();
      v118 = v119;
      v422(v114, v116);
    }

    v120 = v0[75];
    v121 = v0[71];
    v122 = v0[70];
    v123 = sub_227FCC340(v99, v118, &v491);

    *(v34 + 64) = v123;
    _os_log_impl(&dword_227FC3000, v459, v33, "\n--------------------------------------------------------------------------------\n# Inference details for FCC request %{public}s\n--------------------------------------------------------------------------------\n# Decoding Parameters\n--------------------------------------------------------------------------------\nmaximumTokens: %{public}s\nstrategy: %{public}s\ntemperature: %{public}s\nrandomSeed: %{public}s\ntimeout: %{public}s\npromptLookupDraftSteps: %{public}s\n--------------------------------------------------------------------------------", v34, 0x48u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v450, -1, -1);
    MEMORY[0x22AAB28A0](v34, -1, -1);

    v57 = *(v121 + 8);
    v57(v120, v122);
  }

  else
  {
    v48 = v0[92];
    v49 = v0[91];
    v50 = v0[90];
    v429 = v0[93];
    v51 = v0[89];
    v52 = v0[88];
    v53 = v0[80];
    v54 = v0[79];
    v451 = v0[75];
    v55 = v0[71];
    v434 = v0[70];

    v56 = *(v53 + 8);
    v56(v52, v54);
    v56(v51, v54);
    v56(v50, v54);
    v56(v49, v54);
    v56(v48, v54);
    v422 = v56;
    v56(v429, v54);
    v57 = *(v55 + 8);
    v57(v451, v434);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  }

  v124 = v0[97];
  v125 = v0[56];
  v126 = v0[57];
  v127 = v0[55];
  sub_22813780C();
  if ((*(v126 + 48))(v127, 1, v125) == 1)
  {
    sub_227FDB53C(v0[55], &qword_27D81E308, &unk_22813F910);
    sub_227FDB600((v0 + 2), (v0 + 22));
    v128 = sub_22813880C();
    v129 = sub_2281396DC();
    v130 = os_log_type_enabled(v128, v129);
    v131 = v0[94];
    v132 = v0[80];
    v133 = v0[79];
    if (v130)
    {
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v491 = v135;
      *v134 = 136315138;
      v136 = v0[25];
      v137 = v0[26];
      __swift_project_boxed_opaque_existential_1(v0 + 22, v136);
      v467 = v131;
      v138 = (*(v137 + 16))(v136, v137);
      v140 = v139;
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
      v141 = sub_227FCC340(v138, v140, &v491);

      *(v134 + 4) = v141;
      _os_log_impl(&dword_227FC3000, v128, v129, "Rendered prompt after prompt completion is nil for request %s.", v134, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v135);
      MEMORY[0x22AAB28A0](v135, -1, -1);
      MEMORY[0x22AAB28A0](v134, -1, -1);

      v422(v467, v133);
    }

    else
    {

      v422(v131, v133);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
    }

    v2 = v479;
    v3 = off_2785F1000;
  }

  else
  {
    (*(v0[57] + 32))(v0[60], v0[55], v0[56]);
    v142 = v466;
    if (qword_2813C49B8 != -1)
    {
      swift_once();
      v142 = v466;
    }

    if ((byte_2813C49C1 & 1) == 0)
    {
      if (qword_2813C4988 != -1)
      {
        swift_once();
      }

      v142 = __swift_project_value_buffer(v0[70], qword_2813C4990);
    }

    v143 = v0[71] + 16;
    v441(v0[74], v142, v0[70]);
    if (qword_2813C49B0 != -1)
    {
      swift_once();
    }

    if (byte_27D81EEF2 == 1)
    {
      (*(v0[71] + 32))(v0[73], v0[74], v0[70]);
    }

    else
    {
      if (qword_2813C4988 != -1)
      {
        swift_once();
      }

      v144 = v0[74];
      v145 = v0[73];
      v146 = v0[71];
      v147 = v0[70];
      v148 = __swift_project_value_buffer(v147, qword_2813C4990);
      v441(v145, v148, v147);
      v57(v144, v147);
    }

    v149 = v0[73];
    v151 = v0[59];
    v150 = v0[60];
    v153 = v0[57];
    v152 = v0[58];
    v154 = v0[56];
    sub_227FDB600((v0 + 2), (v0 + 27));
    v155 = *(v153 + 16);
    v155(v151, v150, v154);
    sub_227FDB600((v0 + 2), (v0 + 32));
    v155(v152, v150, v154);
    v156 = sub_22813880C();
    v157 = sub_2281396CC();
    v435 = v156;
    v158 = os_log_type_enabled(v156, v157);
    v159 = v0[94];
    v160 = v0[79];
    v442 = v0[71];
    v452 = v0[70];
    v460 = v0[73];
    v161 = v0[59];
    v468 = v0[60];
    v162 = v0[57];
    v163 = v0[58];
    v164 = v0[56];
    if (v158)
    {
      v430 = v0[80];
      v165 = swift_slowAlloc();
      v419 = swift_slowAlloc();
      v491 = v419;
      *v165 = 136446979;
      v423 = v160;
      v425 = v159;
      v166 = v0[30];
      v167 = v0[31];
      __swift_project_boxed_opaque_existential_1(v0 + 27, v166);
      v417 = v157;
      v168 = (*(v167 + 16))(v166, v167);
      v170 = v169;
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);
      v171 = sub_227FCC340(v168, v170, &v491);

      *(v165 + 4) = v171;
      *(v165 + 12) = 2081;
      sub_22813789C();
      v172 = MEMORY[0x22AAB1AD0]();
      v174 = v173;

      v175 = *(v162 + 8);
      v175(v161, v164);
      v176 = sub_227FCC340(v172, v174, &v491);

      *(v165 + 14) = v176;
      *(v165 + 22) = 2082;
      v177 = v0[35];
      v178 = v0[36];
      __swift_project_boxed_opaque_existential_1(v0 + 32, v177);
      v179 = (*(v178 + 16))(v177, v178);
      v181 = v180;
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
      v182 = sub_227FCC340(v179, v181, &v491);

      *(v165 + 24) = v182;
      *(v165 + 32) = 2081;
      v0[37] = sub_22813788C();
      v0[38] = v183;
      v0[39] = 10;
      v0[40] = 0xE100000000000000;
      v0[41] = 4091452;
      v0[42] = 0xE300000000000000;
      sub_227FDB420();
      v184 = sub_2281397BC();
      v186 = v185;

      v175(v163, v164);
      v187 = sub_227FCC340(v184, v186, &v491);

      *(v165 + 34) = v187;
      _os_log_impl(&dword_227FC3000, v435, v417, "\n--------------------------------------------------------------------------------\n# Rendered Prompt Token IDs for FCC request %{public}s\n--------------------------------------------------------------------------------\n%{private}s\n--------------------------------------------------------------------------------\n# Approximate Rendered Prompt for request %{public}s\n# Note: Please reconstruct prompt from Token IDs above if you need the exact prompt\n--------------------------------------------------------------------------------\n%{private}s\n--------------------------------------------------------------------------------", v165, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AAB28A0](v419, -1, -1);
      MEMORY[0x22AAB28A0](v165, -1, -1);

      (*(v442 + 8))(v460, v452);
      v175(v468, v164);
      v188 = v423;
      v422 = *(v430 + 8);
      v422(v425, v188);
    }

    else
    {

      v189 = *(v162 + 8);
      v189(v163, v164);
      v189(v161, v164);
      v57(v460, v452);
      v189(v468, v164);
      v422(v159, v160);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);
    }

    v3 = off_2785F1000;
    v2 = v479;
  }

LABEL_83:
  v190 = v0[97];
  v191 = sub_22813782C();
  if (*(v191 + 16) && (v192 = sub_22808C964(7562585, 0xE300000000000000), (v193 & 1) != 0))
  {
    v469 = *(*(v191 + 56) + v192);
  }

  else
  {
    v469 = 0;
  }

  v194 = v0[97];
  v195 = v0[77];

  v472 = sub_22813781C();
  sub_227FCAA18(v474, v195, type metadata accessor for ModelBundleIdentifier);

  if (v482)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v196 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v196 = &qword_2813C76F8;
  }

  v197 = *(*v196 + 1344);
  v198 = *(*v196 + 1352);
  v199 = *(*v196 + 1360);
  v200 = *(*v196 + 1368);
  v201 = *(*v196 + 2208);

  if (v485)
  {
    v199(&v491, v201);

    v198 = v491;
  }

  else
  {
  }

  sub_2280F8BF4(v0[77], 2, 0, v198, 0, v0[87]);
  if (qword_2813C49E0 != -1)
  {
    swift_once();
  }

  v202 = __swift_project_value_buffer(v0[70], qword_2813C8A20);
  if (qword_2813C49C8 != -1)
  {
    swift_once();
  }

  if ((byte_2813C49D0 & 1) == 0)
  {
    if (qword_2813C4988 != -1)
    {
      swift_once();
    }

    v202 = __swift_project_value_buffer(v0[70], qword_2813C4990);
  }

  v203 = v0[124];
  v204 = v0[123];
  v205 = v0[122];
  v206 = v0[121];
  v207 = v0[87];
  v426 = v0[120];
  v431 = v0[86];
  v436 = v0[85];
  v443 = v0[84];
  v453 = v0[83];
  v461 = v0[82];
  v475 = v0[81];
  v208 = v0[80];
  v209 = v0[79];
  (*(v0[71] + 16))(v0[72], v202, v0[70]);
  sub_227FDB600((v0 + 2), (v0 + 7));
  sub_227FCAA18(v203, v204, type metadata accessor for GMSModelInfo);
  sub_227FCAA18(v203, v205, type metadata accessor for GMSModelInfo);
  sub_227FCAA18(v203, v206, type metadata accessor for GMSModelInfo);
  sub_227FCAA18(v203, v426, type metadata accessor for GMSModelInfo);
  v210 = *(v208 + 16);
  v210(v431, v207, v209);
  v210(v436, v207, v209);
  v210(v443, v207, v209);
  v210(v453, v207, v209);
  v210(v461, v207, v209);
  v210(v475, v207, v209);
  v211 = sub_22813880C();
  v212 = sub_2281396BC();
  v213 = os_log_type_enabled(v211, v212);
  v214 = v0[123];
  if (v213)
  {
    v462 = v212;
    v215 = v0[119];
    v216 = swift_slowAlloc();
    v454 = swift_slowAlloc();
    v488 = v454;
    *v216 = 136318210;
    v217 = v0[10];
    v218 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v217);
    v219 = (*(v218 + 16))(v217, v218);
    v221 = v220;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    v222 = sub_227FCC340(v219, v221, &v488);

    *(v216 + 4) = v222;
    *(v216 + 12) = 2082;
    v223 = (v214 + *(v215 + 20));
    v225 = *v223;
    v224 = v223[1];
    v226 = (v214 + *(v215 + 36));
    v227 = *v226;
    v228 = v226[1];
    v489 = v225;
    v490 = v224;
    v476 = v211;
    if (v228)
    {
      v491 = 30240;
      v492 = 0xE200000000000000;

      MEMORY[0x22AAB1970](v227, v228);
      MEMORY[0x22AAB1970](v491, v492);

      v225 = v489;
      v224 = v490;
    }

    else
    {
    }

    v239 = v0[122];
    v240 = v0[121];
    v241 = v0[120];
    v242 = v0[119];
    v243 = v0[112];
    v438 = v0[111];
    v445 = v0[110];
    sub_227FDB474(v0[123], type metadata accessor for GMSModelInfo);
    v244 = sub_227FCC340(v225, v224, &v488);

    *(v216 + 14) = v244;
    *(v216 + 22) = 2082;
    v245 = sub_227FDAA3C(*(v239 + v242[6]), *(v239 + v242[6] + 8), *(v239 + v242[10]), *(v239 + v242[10] + 8));
    v247 = v246;
    sub_227FDB474(v239, type metadata accessor for GMSModelInfo);
    v248 = sub_227FCC340(v245, v247, &v488);

    *(v216 + 24) = v248;
    *(v216 + 32) = 2082;
    v249 = sub_227FDAA3C(*(v240 + v242[7]), *(v240 + v242[7] + 8), *(v240 + v242[11]), *(v240 + v242[11] + 8));
    v251 = v250;
    sub_227FDB474(v240, type metadata accessor for GMSModelInfo);
    v252 = sub_227FCC340(v249, v251, &v488);

    *(v216 + 34) = v252;
    *(v216 + 42) = 2082;
    v253 = sub_227FDAA3C(*(v241 + v242[8]), *(v241 + v242[8] + 8), *(v241 + v242[12]), *(v241 + v242[12] + 8));
    v255 = v254;
    sub_227FDB474(v241, type metadata accessor for GMSModelInfo);
    v256 = sub_227FCC340(v253, v255, &v488);

    *(v216 + 44) = v256;
    *(v216 + 52) = 2082;
    sub_2281370CC();
    v257 = sub_228136FEC();
    v259 = v258;
    v260 = *(v438 + 8);
    v260(v243, v445);
    v261 = sub_227FCC340(v257, v259, &v488);

    *(v216 + 54) = v261;
    *(v216 + 62) = 2082;
    if (qword_2813C8758 != -1)
    {
      swift_once();
    }

    v262 = v0[112];
    v263 = v0[110];
    v264 = v0[86];
    sub_228139B6C();
    v265 = sub_228136FEC();
    v267 = v266;
    v260(v262, v263);
    v268 = sub_227FCC340(v265, v267, &v488);

    *(v216 + 64) = v268;
    *(v216 + 72) = 2082;
    v269 = sub_22813776C();
    v270 = v0[86];
    v271 = v0[80];
    v272 = v0[79];
    if (v273)
    {
      v274 = *(v271 + 8);
      v274(v0[86], v0[79]);
      v275 = 0xE300000000000000;
      v276 = 7104878;
    }

    else
    {
      v0[47] = v269;
      v277 = sub_2281392EC();
      v275 = v278;
      v274 = *(v271 + 8);
      v274(v270, v272);
      v276 = v277;
    }

    v279 = v0[85];
    v280 = v0[67];
    v281 = v0[66];
    v282 = v0[61];
    v283 = v0[62];
    v284 = sub_227FCC340(v276, v275, &v488);

    *(v216 + 74) = v284;
    *(v216 + 82) = 2082;
    sub_2281377BC();
    sub_227FDB4D4(v280, v281, &qword_27D81E310, &qword_22813A7C0);
    v285 = (*(v283 + 48))(v281, 1, v282);
    v286 = v0[66];
    if (v285 == 1)
    {
      sub_227FDB53C(v0[66], &qword_27D81E310, &qword_22813A7C0);
      v287 = 0xE300000000000000;
      v288 = 7104878;
    }

    else
    {
      v290 = v0[63];
      v289 = v0[64];
      v291 = v0[61];
      v292 = v0[62];
      (*(v292 + 32))(v290, v0[66], v291);
      (*(v292 + 16))(v289, v290, v291);
      v288 = sub_2281392EC();
      v287 = v293;
      (*(v292 + 8))(v290, v291);
    }

    v294 = v0[85];
    v295 = v0[84];
    v296 = v0[80];
    v297 = v0[79];
    sub_227FDB53C(v0[67], &qword_27D81E310, &qword_22813A7C0);
    v274(v294, v297);
    v298 = sub_227FCC340(v288, v287, &v488);

    *(v216 + 84) = v298;
    *(v216 + 92) = 2082;
    v299 = sub_22813774C();
    v300 = v0[84];
    v301 = v0[80];
    v302 = v0[79];
    if (v303)
    {
      v274(v0[84], v0[79]);
      v304 = 0xE300000000000000;
      v305 = 7104878;
    }

    else
    {
      v0[46] = v299;
      v306 = sub_2281392EC();
      v304 = v307;
      v274(v300, v302);
      v305 = v306;
    }

    v308 = v0[83];
    v309 = sub_227FCC340(v305, v304, &v488);

    *(v216 + 94) = v309;
    *(v216 + 102) = 2082;
    v310 = sub_22813773C();
    v311 = v0[83];
    v312 = v0[80];
    v313 = v0[79];
    if (v314)
    {
      v274(v0[83], v0[79]);
      v315 = 0xE300000000000000;
      v316 = 7104878;
    }

    else
    {
      v0[45] = v310;
      v317 = sub_2281392EC();
      v315 = v318;
      v274(v311, v313);
      v316 = v317;
    }

    v319 = v0[82];
    v320 = sub_227FCC340(v316, v315, &v488);

    *(v216 + 104) = v320;
    *(v216 + 112) = 2082;
    v321 = sub_22813779C();
    v322 = v0[82];
    v323 = v0[80];
    v324 = v0[79];
    if (v325)
    {
      v274(v0[82], v0[79]);
      v326 = 0xE300000000000000;
      v327 = 7104878;
    }

    else
    {
      v0[44] = v321;
      v328 = sub_2281392EC();
      v326 = v329;
      v274(v322, v324);
      v327 = v328;
    }

    v330 = v0[81];
    v331 = sub_227FCC340(v327, v326, &v488);

    *(v216 + 114) = v331;
    *(v216 + 122) = 2082;
    v332 = sub_22813777C();
    v333 = v0[81];
    v334 = v0[80];
    v335 = v0[79];
    v446 = v274;
    if (v336)
    {
      v274(v333, v335);
      v337 = 0xE300000000000000;
      v338 = 7104878;
    }

    else
    {
      v0[43] = v332;
      v338 = sub_2281392EC();
      v337 = v339;
      v274(v333, v335);
    }

    v340 = v0[87];
    v439 = v0[79];
    v341 = v0[72];
    v342 = v0[71];
    v343 = v0[70];
    v344 = sub_227FCC340(v338, v337, &v488);

    *(v216 + 124) = v344;
    _os_log_impl(&dword_227FC3000, v476, v462, "\n--------------------------------------------------------------------------------\n# Inference details for FCC request %s\n--------------------------------------------------------------------------------\nAdapter: %{public}s\nTokenizer: %{public}s\nBase Model: %{public}s\nDraft Model: %{public}s\nDevice Locale: %{public}s\nInference Locale: %{public}s\n--------------------------------------------------------------------------------\n# Decoding Parameters\n--------------------------------------------------------------------------------\nmaximumTokens: %{public}s\nstrategy: %{public}s\ntemperature: %{public}s\nrandomSeed: %{public}s\ntimeout: %{public}s\npromptLookupDraftSteps: %{public}s\n--------------------------------------------------------------------------------", v216, 0x84u);
    swift_arrayDestroy();
    MEMORY[0x22AAB28A0](v454, -1, -1);
    MEMORY[0x22AAB28A0](v216, -1, -1);

    (*(v342 + 8))(v341, v343);
    v446(v340, v439);
  }

  else
  {
    v444 = v0[122];
    v455 = v0[121];
    v463 = v0[120];
    v427 = v0[86];
    v432 = v0[87];
    v437 = v0[123];
    v229 = v0[85];
    v230 = v0[84];
    v231 = v0[83];
    v232 = v0[82];
    v233 = v0[81];
    v234 = v0[80];
    v235 = v0[79];
    v420 = v0[72];
    v236 = v0[71];
    v237 = v211;
    v238 = v0[70];

    v422(v233, v235);
    v422(v232, v235);
    v422(v231, v235);
    v422(v230, v235);
    v422(v229, v235);
    v422(v427, v235);
    (*(v236 + 8))(v420, v238);
    v422(v432, v235);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    sub_227FDB474(v437, type metadata accessor for GMSModelInfo);
    sub_227FDB474(v444, type metadata accessor for GMSModelInfo);
    sub_227FDB474(v455, type metadata accessor for GMSModelInfo);
    sub_227FDB474(v463, type metadata accessor for GMSModelInfo);
  }

  if (v469)
  {
    goto LABEL_132;
  }

  if (v482)
  {
    if (qword_27D81E2A0 != -1)
    {
      swift_once();
    }

    v354 = &off_27D81EDB0;
  }

  else
  {
    if (qword_2813C76F0 != -1)
    {
      swift_once();
    }

    v354 = &qword_2813C76F8;
  }

  v355 = *(*v354 + 912);
  v356 = *(*v354 + 920);
  v357 = *(*v354 + 928);
  v358 = *(*v354 + 936);
  v359 = *(*v354 + 2208);

  if (v485)
  {
    v357(&v491, v359);

    if (v491)
    {
      goto LABEL_146;
    }

LABEL_132:
    v345 = v0[124];
    v346 = v0[105];
    v347 = v0[103];
    v348 = v0[102];
    v349 = v0[101];
    v350 = v0[100];
    v351 = v0[99];
    (*(v0[96] + 8))(v0[97], v0[95]);
    (*(v350 + 8))(v349, v351);
    (*(v347 + 8))(v346, v348);
    sub_227FDB474(v345, type metadata accessor for GMSModelInfo);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v352 = 256;
    if ((v472 & 1) == 0)
    {
      v352 = 0;
    }

    v353 = v352 | v469;
    goto LABEL_153;
  }

  if (!v356)
  {
    goto LABEL_132;
  }

LABEL_146:
  if (qword_2813C49A8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[70], qword_2813C89F0);
  sub_227FDB600((v0 + 2), (v0 + 12));
  v360 = sub_22813880C();
  v480 = sub_2281396BC();
  v361 = os_log_type_enabled(v360, v480);
  v362 = v0[124];
  v363 = v0[105];
  v364 = v0[103];
  v365 = v0[102];
  v366 = v0[101];
  v367 = v0[100];
  v368 = v0[99];
  v369 = v0[96];
  v483 = v0[95];
  v486 = v0[97];
  if (v361)
  {
    v477 = v0[105];
    v370 = swift_slowAlloc();
    v470 = v365;
    v371 = swift_slowAlloc();
    v491 = v371;
    *v370 = 136446210;
    v447 = v368;
    v456 = v366;
    v372 = v0[15];
    v373 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v372);
    v464 = v362;
    v374 = (*(v373 + 16))(v372, v373);
    v376 = v375;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
    v377 = sub_227FCC340(v374, v376, &v491);

    *(v370 + 4) = v377;
    __swift_destroy_boxed_opaque_existential_1Tm(v371);
    MEMORY[0x22AAB28A0](v371, -1, -1);
    MEMORY[0x22AAB28A0](v370, -1, -1);

    (*(v369 + 8))(v486, v483);
    (*(v367 + 8))(v456, v447);
    (*(v364 + 8))(v477, v470);
    sub_227FDB474(v464, type metadata accessor for GMSModelInfo);
    v378 = v0 + 2;
  }

  else
  {

    (*(v369 + 8))(v486, v483);
    (*(v367 + 8))(v366, v368);
    (*(v364 + 8))(v363, v365);
    sub_227FDB474(v362, type metadata accessor for GMSModelInfo);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v378 = v0 + 12;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v378);
  v353 = 257;
  if ((v472 & 1) == 0)
  {
    v353 = 1;
  }

LABEL_153:
  v487 = v353;
  v379 = v0[124];
  v380 = v0[123];
  v381 = v0[122];
  v382 = v0[121];
  v383 = v0[120];
  v384 = v0[118];
  v385 = v0[117];
  v386 = v0[116];
  v387 = v0[113];
  v388 = v0[112];
  v391 = v0[109];
  v392 = v0[108];
  v393 = v0[107];
  v394 = v0[106];
  v395 = v0[105];
  v396 = v0[104];
  v397 = v0[101];
  v398 = v0[98];
  v399 = v0[97];
  v400 = v0[94];
  v401 = v0[93];
  v402 = v0[92];
  v403 = v0[91];
  v404 = v0[90];
  v405 = v0[89];
  v406 = v0[88];
  v407 = v0[87];
  v408 = v0[86];
  v409 = v0[85];
  v410 = v0[84];
  v411 = v0[83];
  v412 = v0[82];
  v413 = v0[81];
  v414 = v0[78];
  v415 = v0[77];
  v416 = v0[75];
  v418 = v0[74];
  v421 = v0[73];
  v424 = v0[72];
  v428 = v0[69];
  v433 = v0[68];
  v440 = v0[67];
  v448 = v0[66];
  v457 = v0[65];
  v465 = v0[64];
  v471 = v0[63];
  v473 = v0[60];
  v478 = v0[59];
  v481 = v0[58];
  v484 = v0[55];

  v389 = v0[1];

  return v389(v487, 2);
}

uint64_t sub_227FDA6AC()
{
  v1 = v0[124];
  v2 = v0[105];
  v3 = v0[103];
  v4 = v0[102];
  (*(v0[100] + 8))(v0[101], v0[99]);
  (*(v3 + 8))(v2, v4);
  sub_227FDB474(v1, type metadata accessor for GMSModelInfo);
  v57 = v0[129];
  v5 = v0[124];
  v6 = v0[123];
  v7 = v0[122];
  v8 = v0[121];
  v9 = v0[120];
  v10 = v0[118];
  v11 = v0[117];
  v12 = v0[116];
  v13 = v0[113];
  v16 = v0[112];
  v17 = v0[109];
  v18 = v0[108];
  v19 = v0[107];
  v20 = v0[106];
  v21 = v0[105];
  v22 = v0[104];
  v23 = v0[101];
  v24 = v0[98];
  v25 = v0[97];
  v26 = v0[94];
  v27 = v0[93];
  v28 = v0[92];
  v29 = v0[91];
  v30 = v0[90];
  v31 = v0[89];
  v32 = v0[88];
  v33 = v0[87];
  v34 = v0[86];
  v35 = v0[85];
  v36 = v0[84];
  v37 = v0[83];
  v38 = v0[82];
  v39 = v0[81];
  v40 = v0[78];
  v41 = v0[77];
  v42 = v0[75];
  v43 = v0[74];
  v44 = v0[73];
  v45 = v0[72];
  v46 = v0[69];
  v47 = v0[68];
  v48 = v0[67];
  v49 = v0[66];
  v50 = v0[65];
  v51 = v0[64];
  v52 = v0[63];
  v53 = v0[60];
  v54 = v0[59];
  v55 = v0[58];
  v56 = v0[55];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v14 = v0[1];

  return v14();
}

uint64_t sub_227FDAA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0x6E776F6E6B6E75;
  }

  if (a4)
  {

    MEMORY[0x22AAB1970](a3, a4);
    MEMORY[0x22AAB1970](30240, 0xE200000000000000);

    return a1;
  }

  else
  {

    return a1;
  }
}

uint64_t sub_227FDAAF4()
{
  sub_227FDB474(v0 + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_modelBundleIdentifier, type metadata accessor for ModelBundleIdentifier);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_sessionInfo));
  v1 = OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_generativeModelSessionConfiguration;
  v2 = sub_22813791C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_model));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16SummarizationKit42GMSFactualConsistencyClassifierModelEngine_promptRunner));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GMSFactualConsistencyClassifierModelEngine()
{
  result = qword_2813C60C0;
  if (!qword_2813C60C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227FDAC38()
{
  result = type metadata accessor for ModelBundleIdentifier();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_22813791C();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_227FDAD68(uint64_t a1, int a2)
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

uint64_t sub_227FDAD88(uint64_t result, int a2, int a3)
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

uint64_t sub_227FDADC4(uint64_t a1, id *a2)
{
  result = sub_22813928C();
  *a2 = 0;
  return result;
}

uint64_t sub_227FDAE3C(uint64_t a1, id *a2)
{
  v3 = sub_22813929C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_227FDAEBC@<X0>(uint64_t *a1@<X8>)
{
  sub_2281392AC();
  v2 = sub_22813927C();

  *a1 = v2;
  return result;
}

uint64_t sub_227FDAF00(uint64_t a1)
{
  v2 = sub_227FDB150(&qword_27D81E368, type metadata accessor for NLTagScheme);
  v3 = sub_227FDB150(&qword_27D81E370, type metadata accessor for NLTagScheme);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_227FDAFBC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_22813927C();

  *a2 = v5;
  return result;
}

uint64_t sub_227FDB004(uint64_t a1)
{
  v2 = sub_227FDB150(&qword_27D81E2F8, type metadata accessor for NLLanguage);
  v3 = sub_227FDB150(&qword_27D81E300, type metadata accessor for NLLanguage);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_227FDB150(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227FDB198()
{
  v1 = *v0;
  v2 = sub_2281392AC();
  v3 = MEMORY[0x22AAB19E0](v2);

  return v3;
}

uint64_t sub_227FDB1D4()
{
  v1 = *v0;
  sub_2281392AC();
  sub_22813923C();
}

uint64_t sub_227FDB228()
{
  v1 = *v0;
  sub_2281392AC();
  sub_228139AAC();
  sub_22813923C();
  v2 = sub_228139AEC();

  return v2;
}

uint64_t sub_227FDB29C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_2281392AC();
  v6 = v5;
  if (v4 == sub_2281392AC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2281399BC();
  }

  return v9 & 1;
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

unint64_t sub_227FDB3CC()
{
  result = qword_2813C83D8;
  if (!qword_2813C83D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C83D8);
  }

  return result;
}

unint64_t sub_227FDB420()
{
  result = qword_2813C4720;
  if (!qword_2813C4720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813C4720);
  }

  return result;
}

uint64_t sub_227FDB474(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227FDB4D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_227FDB53C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
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

uint64_t sub_227FDB600(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_227FDB670(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_227FDB690(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void sub_227FDB6E0(uint64_t a1, unint64_t *a2)
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

uint64_t ClientSwitchConfiguration.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return ClientSwitchConfiguration.init()();
}

uint64_t ClientSwitchConfiguration.init()()
{
  v1 = (v0 + qword_2813C6AC8);
  *v1 = 0xD000000000000019;
  v1[1] = 0x800000022813A980;
  v2 = (v0 + qword_2813C6AD0);
  *v2 = 0x7478746270;
  v2[1] = 0xE500000000000000;
  v3 = (v0 + qword_2813C6AB8);
  *v3 = 0xD000000000000010;
  v3[1] = 0x8000000228143AB0;
  v4 = qword_2813C6AB0;
  *(v0 + v4) = sub_227FE4524(MEMORY[0x277D84F90]);
  *(v0 + qword_2813C6AC0) = MEMORY[0x277D84FA0];
  v5 = *v1;
  v6 = v1[1];
  v7 = *v2;
  v8 = v2[1];
  v9 = *v3;
  v10 = v3[1];

  v11 = sub_227FDB9B0(v5, v6, v7, v8, v9);

  sub_227FDCDC0();

  return v11;
}

uint64_t sub_227FDB9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37[1] = a3;
  v37[2] = a5;
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v37[0] = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v37 - v13;
  v15 = (v5 + *(*v5 + 104));
  v16 = sub_227FE4318(&unk_283B5AF68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3A0, &qword_22813AA18);
  swift_arrayDestroy();
  *v15 = v16;
  *(v15 + 8) = 0;
  *v14 = 0;
  *(v14 + 1) = MEMORY[0x277D84F90];
  v14[16] = 0;
  v17 = &v14[*(v7 + 36)];
  sub_228137D6C();
  v18 = *(*v5 + 96);
  sub_227FE5E38(v14, v5 + v18, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
  type metadata accessor for ClientSafetyConfiguration();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  v21 = sub_22813927C();

  v22 = sub_22813927C();

  v23 = sub_22813927C();

  v24 = [v20 pathForResource:v21 ofType:v22 inDirectory:v23];

  if (v24)
  {
    v25 = sub_2281392AC();
    v27 = v26;

    v28 = v37[0];
    sub_227FE194C(v25, v27, v37[0]);

    swift_beginAccess();
    sub_227FE5BEC(v28, v5 + v18, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
    swift_endAccess();
    sub_227FE5C54(v5 + v18, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
    v31 = (*(*v5 + 192))(v14);
    v33 = v32;
    sub_227FE5D1C(v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientsSwitchesConfig);
    swift_beginAccess();
    v34 = *v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *v15;
    *v15 = 0x8000000000000000;
    sub_22801B5C4(v31, v33, 1u, isUniquelyReferenced_nonNull_native);
    *v15 = v38;
    *(v15 + 8) = 1;
    swift_endAccess();
  }

  else
  {
    sub_227FE4988();
    v29 = swift_allocError();
    *v30 = 0;
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_227FDBD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37[1] = a3;
  v37[2] = a5;
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v37[0] = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v37 - v13;
  v15 = (v5 + *(*v5 + 104));
  v16 = sub_227FE4318(&unk_283B5AF68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3A0, &qword_22813AA18);
  swift_arrayDestroy();
  *v15 = v16;
  *(v15 + 8) = 0;
  *v14 = 0;
  *(v14 + 1) = MEMORY[0x277D84F90];
  v17 = &v14[*(v7 + 32)];
  sub_228137D6C();
  v18 = *(*v5 + 96);
  sub_227FE5E38(v14, v5 + v18, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules);
  type metadata accessor for ClientSafetyConfiguration();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  v21 = sub_22813927C();

  v22 = sub_22813927C();

  v23 = sub_22813927C();

  v24 = [v20 pathForResource:v21 ofType:v22 inDirectory:v23];

  if (v24)
  {
    v25 = sub_2281392AC();
    v27 = v26;

    v28 = v37[0];
    sub_227FC99C4(v25, v27, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules, &qword_2813C5E40, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKFilterRules, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules, v37[0]);

    swift_beginAccess();
    sub_227FE5BEC(v28, v5 + v18, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules);
    swift_endAccess();
    sub_227FE5C54(v5 + v18, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules);
    v31 = (*(*v5 + 192))(v14);
    v33 = v32;
    sub_227FE5D1C(v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKFilterRules);
    swift_beginAccess();
    v34 = *v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *v15;
    *v15 = 0x8000000000000000;
    sub_22801B5C4(v31, v33, 1u, isUniquelyReferenced_nonNull_native);
    *v15 = v38;
    *(v15 + 8) = 1;
    swift_endAccess();
  }

  else
  {
    sub_227FE4988();
    v29 = swift_allocError();
    *v30 = 0;
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_227FDC18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37[1] = a3;
  v37[2] = a5;
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v37[0] = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v37 - v13;
  v15 = (v5 + *(*v5 + 104));
  v16 = sub_227FE4318(&unk_283B5AF68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3A0, &qword_22813AA18);
  swift_arrayDestroy();
  *v15 = v16;
  *(v15 + 8) = 0;
  *v14 = 0;
  *(v14 + 1) = MEMORY[0x277D84F90];
  v17 = &v14[*(v7 + 32)];
  sub_228137D6C();
  v18 = *(*v5 + 96);
  sub_227FE5E38(v14, v5 + v18, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList);
  type metadata accessor for ClientSafetyConfiguration();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  v21 = sub_22813927C();

  v22 = sub_22813927C();

  v23 = sub_22813927C();

  v24 = [v20 pathForResource:v21 ofType:v22 inDirectory:v23];

  if (v24)
  {
    v25 = sub_2281392AC();
    v27 = v26;

    v28 = v37[0];
    sub_227FC99C4(v25, v27, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList, &qword_2813C5118, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList, v37[0]);

    swift_beginAccess();
    sub_227FE5BEC(v28, v5 + v18, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList);
    swift_endAccess();
    sub_227FE5C54(v5 + v18, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList);
    v31 = (*(*v5 + 192))(v14);
    v33 = v32;
    sub_227FE5D1C(v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClientSafetyConfigList);
    swift_beginAccess();
    v34 = *v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *v15;
    *v15 = 0x8000000000000000;
    sub_22801B5C4(v31, v33, 1u, isUniquelyReferenced_nonNull_native);
    *v15 = v38;
    *(v15 + 8) = 1;
    swift_endAccess();
  }

  else
  {
    sub_227FE4988();
    v29 = swift_allocError();
    *v30 = 0;
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_227FDC5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a3;
  v43 = a5;
  v41 = a1;
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v40 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v39 - v13;
  v15 = (v5 + *(*v5 + 104));
  v16 = sub_227FE4318(&unk_283B5AF68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3A0, &qword_22813AA18);
  swift_arrayDestroy();
  *v15 = v16;
  *(v15 + 8) = 0;
  *v14 = 0;
  *(v14 + 1) = MEMORY[0x277D84F90];
  v17 = &v14[*(v7 + 32)];
  sub_228137D6C();
  v18 = *(v7 + 36);
  v19 = type metadata accessor for Com_Apple_Summarizationkit_Proto_ClassificationConfidenceInfo(0);
  (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
  v20 = *(*v5 + 96);
  sub_227FE5E38(v14, v5 + v20, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
  type metadata accessor for ClientSafetyConfiguration();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass_];
  v23 = sub_22813927C();

  v24 = sub_22813927C();

  v25 = sub_22813927C();

  v26 = [v22 pathForResource:v23 ofType:v24 inDirectory:v25];

  if (v26)
  {
    v27 = sub_2281392AC();
    v29 = v28;

    v30 = v40;
    sub_227FE225C(v27, v29, v40);

    swift_beginAccess();
    sub_227FE5BEC(v30, v5 + v20, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
    swift_endAccess();
    sub_227FE5C54(v5 + v20, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
    v33 = (*(*v5 + 192))(v14);
    v35 = v34;
    sub_227FE5D1C(v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKClassificationConfig);
    swift_beginAccess();
    v36 = *v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = *v15;
    *v15 = 0x8000000000000000;
    sub_22801B5C4(v33, v35, 1u, isUniquelyReferenced_nonNull_native);
    *v15 = v44;
    *(v15 + 8) = 1;
    swift_endAccess();
  }

  else
  {
    sub_227FE4988();
    v31 = swift_allocError();
    *v32 = 0;
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_227FDC9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37[1] = a3;
  v37[2] = a5;
  v6 = type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v37[0] = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v37 - v13;
  v15 = (v5 + *(*v5 + 104));
  v16 = sub_227FE4318(&unk_283B5AF68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D81E3A0, &qword_22813AA18);
  swift_arrayDestroy();
  *v15 = v16;
  *(v15 + 8) = 0;
  *v14 = 0;
  *(v14 + 1) = MEMORY[0x277D84F90];
  v17 = &v14[*(v7 + 32)];
  sub_228137D6C();
  v18 = *(*v5 + 96);
  sub_227FE5E38(v14, v5 + v18, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig);
  type metadata accessor for ClientSafetyConfiguration();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  v21 = sub_22813927C();

  v22 = sub_22813927C();

  v23 = sub_22813927C();

  v24 = [v20 pathForResource:v21 ofType:v22 inDirectory:v23];

  if (v24)
  {
    v25 = sub_2281392AC();
    v27 = v26;

    v28 = v37[0];
    sub_227FC99C4(v25, v27, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig, qword_2813C4F90, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig, &protocol conformance descriptor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig, v37[0]);

    swift_beginAccess();
    sub_227FE5BEC(v28, v5 + v18, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig);
    swift_endAccess();
    sub_227FE5C54(v5 + v18, v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig);
    v31 = (*(*v5 + 192))(v14);
    v33 = v32;
    sub_227FE5D1C(v14, type metadata accessor for Com_Apple_Summarizationkit_Proto_SKTwoPassInferenceConfig);
    swift_beginAccess();
    v34 = *v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *v15;
    *v15 = 0x8000000000000000;
    sub_22801B5C4(v31, v33, 1u, isUniquelyReferenced_nonNull_native);
    *v15 = v38;
    *(v15 + 8) = 1;
    swift_endAccess();
  }

  else
  {
    sub_227FE4988();
    v29 = swift_allocError();
    *v30 = 0;
    swift_willThrow();
  }

  return v5;
}