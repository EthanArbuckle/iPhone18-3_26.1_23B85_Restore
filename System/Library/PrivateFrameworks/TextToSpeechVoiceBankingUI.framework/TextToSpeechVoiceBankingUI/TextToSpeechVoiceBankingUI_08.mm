uint64_t sub_26EEDB3C8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_26EF3B2CC();
  v0[7] = v3;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *(v4 + 16) = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_26EEDB4CC;
  v7 = MEMORY[0x277D85700];
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, v3, v7, 0xD000000000000016, 0x800000026EF469A0, sub_26EEF187C, v4, v8);
}

uint64_t sub_26EEDB4CC()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v10 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = v2[5];
    v5 = v2[6];
    v6 = sub_26EEF31A0;
  }

  else
  {
    v7 = v2[7];
    v8 = v2[8];

    v4 = v2[5];
    v5 = v2[6];
    v6 = sub_26EEF325C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26EEDB5F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C93B0, &qword_26EF42D38);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v14 - v8;
  swift_getKeyPath();
  v14[1] = a2;
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  v10 = *(a2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__service);
  (*(v5 + 16))(v9, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v9, v4);

  sub_26EF38B2C();
}

uint64_t VoiceBankingSession.cancelTrainingTask(taskID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = sub_26EF3B2DC();
  v3[6] = sub_26EF3B2CC();
  v5 = sub_26EF3B29C();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x2822009F8](sub_26EEDB864, v5, v4);
}

uint64_t sub_26EEDB864()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = sub_26EF3B2CC();
  v0[9] = v5;
  v6 = swift_task_alloc();
  v0[10] = v6;
  v6[2] = v2;
  v6[3] = v4;
  v6[4] = v3;
  v7 = *(MEMORY[0x277D85A40] + 4);
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_26EEDB978;
  v9 = MEMORY[0x277D85700];
  v10 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v8, v5, v9, 0xD00000000000001BLL, 0x800000026EF469C0, sub_26EEF1884, v6, v10);
}

uint64_t sub_26EEDB978()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v10 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_26EEDBB00;
  }

  else
  {
    v7 = v2[9];
    v8 = v2[10];

    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_26EEDBA9C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26EEDBA9C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26EEDBB00()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[12];

  return v4();
}

uint64_t sub_26EEDBB78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C93B0, &qword_26EF42D38);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v14 - v8;
  swift_getKeyPath();
  v14[1] = a2;
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  v10 = *(a2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__service);
  (*(v5 + 16))(v9, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v9, v4);

  sub_26EF38B1C();
}

uint64_t VoiceBankingSession.fetchNextUncapturedTrainingScriptItem(forVoice:from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v101 = a2;
  v102 = a3;
  v109 = sub_26EF3920C();
  v103 = *(v109 - 8);
  v4 = *(v103 + 64);
  v6 = MEMORY[0x28223BE20](v109, v5);
  v107 = v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v108 = (v98 - v9);
  v10 = sub_26EF3883C();
  v99 = *(v10 - 8);
  v100 = v10;
  v11 = *(v99 + 64);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v98[2] = v98 - v17;
  v18 = sub_26EF38A2C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_26EF37EDC();
  v25 = *(v24 - 8);
  v105 = v24;
  v106 = v25;
  v26 = *(v25 + 64);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v98[1] = v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v33 = v98 - v32;
  MEMORY[0x28223BE20](v31, v34);
  v104 = v98 - v35;
  v36 = sub_26EF3AFDC();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36, v39);
  v41 = (v98 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26EE1FAB8(0, &qword_2806C9C40, 0x277D85C78);
  *v41 = sub_26EF3B54C();
  (*(v37 + 104))(v41, *MEMORY[0x277D85200], v36);
  v42 = sub_26EF3AFFC();
  (*(v37 + 8))(v41, v36);
  if ((v42 & 1) == 0)
  {
    goto LABEL_31;
  }

  v43 = [a1 voiceID];
  if (!v43)
  {
    goto LABEL_59;
  }

  v44 = v43;
  sub_26EF37EBC();

  (*(v106 + 32))(v104, v33, v105);
  v45 = *&v110[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingManager];
  v46 = sub_26EF388AC();
  sub_26EF3885C();
  (*(v19 + 104))(v23, *MEMORY[0x277D704D8], v18);
  v47 = sub_26EF3884C();
  (*(v19 + 8))(v23, v18);
  v48 = sub_26EF3886C();
  MEMORY[0x28223BE20](v48, v49);
  v98[-2] = v47;
  v33 = sub_26EF3931C();

  v42 = 0;
  a1 = (v33 >> 62);
  if (v33 >> 62)
  {
    goto LABEL_32;
  }

  v50 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v110 = 0;
  if (!v50)
  {
LABEL_33:
    if (a1)
    {
      v15 = sub_26EF3B79C();
    }

    else
    {
      v15 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v56 = v109;
    v73 = v107;
    if (!v15)
    {

      v75 = MEMORY[0x277D84F90];
LABEL_50:
      v86 = *(v101 + 16);
      if (v86)
      {
        v108 = *(v103 + 16);
        v109 = v103 + 16;
        v87 = (v103 + 8);
        v88 = v101 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
        v107 = *(v103 + 72);
        while (1)
        {
          v108(v73, v88, v56);
          v89 = v56;
          v111[0] = sub_26EF391FC();
          v111[1] = v90;
          MEMORY[0x28223BE20](v111[0], v90);
          v98[-2] = v111;
          v91 = v110;
          v92 = sub_26EEECBC4(sub_26EEF1890, &v98[-4], v75);
          v110 = v91;

          if ((v92 & 1) == 0)
          {
            break;
          }

          (*v87)(v73, v89);
          v88 += v107;
          --v86;
          v56 = v89;
          if (!v86)
          {
            goto LABEL_54;
          }
        }

        (*(v106 + 8))(v104, v105);

        v93 = v102;
        (*(v103 + 32))(v102, v73, v89);
        v71 = v93;
        v72 = 0;
        v56 = v89;
        return (*(v103 + 56))(v71, v72, 1, v56);
      }

LABEL_54:
      (*(v106 + 8))(v104, v105);

LABEL_55:
      v72 = 1;
      v71 = v102;
      return (*(v103 + 56))(v71, v72, 1, v56);
    }

    v111[0] = MEMORY[0x277D84F90];
    sub_26EEEC6FC(0, v15 & ~(v15 >> 63), 0);
    if ((v15 & 0x8000000000000000) == 0)
    {
      v74 = 0;
      v75 = v111[0];
      do
      {
        if ((v33 & 0xC000000000000001) != 0)
        {
          v76 = MEMORY[0x2743837E0](v74, v33);
        }

        else
        {
          v76 = *(v33 + 8 * v74 + 32);
        }

        v77 = v76;
        v78 = [v76 sampleID];
        if (v78)
        {
          v79 = v78;
          v80 = sub_26EF3B0FC();
          v82 = v81;
        }

        else
        {

          v80 = 0;
          v82 = 0;
        }

        v111[0] = v75;
        v84 = *(v75 + 16);
        v83 = *(v75 + 24);
        if (v84 >= v83 >> 1)
        {
          sub_26EEEC6FC((v83 > 1), v84 + 1, 1);
          v75 = v111[0];
        }

        ++v74;
        *(v75 + 16) = v84 + 1;
        v85 = v75 + 16 * v84;
        *(v85 + 32) = v80;
        *(v85 + 40) = v82;
      }

      while (v15 != v74);

      v56 = v109;
      v73 = v107;
      goto LABEL_50;
    }

    __break(1u);
LABEL_59:
    sub_26EF3934C();
    v95 = sub_26EF3881C();
    v96 = sub_26EF3B45C();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_26EE01000, v95, v96, "Voice ID was nil when asking for next uncaptured training script", v97, 2u);
      MEMORY[0x2743842A0](v97, -1, -1);
    }

    (*(v99 + 8))(v15, v100);
    abort();
  }

LABEL_5:
  v51 = 0;
  while (1)
  {
    if ((v33 & 0xC000000000000001) != 0)
    {
      v52 = MEMORY[0x2743837E0](v51, v33);
    }

    else
    {
      if (v51 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v52 = *(v33 + 8 * v51 + 32);
    }

    v53 = v52;
    v54 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      v50 = sub_26EF3B79C();
      v110 = v42;
      if (!v50)
      {
        goto LABEL_33;
      }

      goto LABEL_5;
    }

    sub_26EF3886C();
    sub_26EEF17DC(&qword_2806C92E0, MEMORY[0x277D70478]);
    v42 = v53;
    if ((sub_26EF3897C() & 1) == 0)
    {
      break;
    }

    ++v51;
    if (v54 == v50)
    {
      goto LABEL_33;
    }
  }

  v55 = *(v101 + 16);
  v57 = v108;
  v56 = v109;
  if (!v55)
  {
LABEL_26:

    (*(v106 + 8))(v104, v105);
    goto LABEL_55;
  }

  v110 = *(v103 + 16);
  v58 = v101 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
  v59 = (v103 + 8);
  v107 = *(v103 + 72);
  (v110)(v108, v58, v109);
  while (1)
  {
    v60 = sub_26EF391FC();
    v62 = v61;
    v63 = [v53 sampleID];
    if (!v63)
    {

      goto LABEL_17;
    }

    v64 = v63;
    v65 = sub_26EF3B0FC();
    v67 = v66;

    if (v60 == v65 && v62 == v67)
    {
      break;
    }

    v69 = sub_26EF3B82C();

    v57 = v108;
    v56 = v109;
    if (v69)
    {

      goto LABEL_28;
    }

LABEL_17:
    (*v59)(v57, v56);
    v58 += v107;
    if (!--v55)
    {
      goto LABEL_26;
    }

    (v110)(v57, v58, v56);
  }

  v57 = v108;
  v56 = v109;
LABEL_28:
  (*(v106 + 8))(v104, v105);
  v70 = v102;
  (*(v103 + 32))(v102, v57, v56);
  v71 = v70;
  v72 = 0;
  return (*(v103 + 56))(v71, v72, 1, v56);
}

uint64_t VoiceBankingSession.phrasesRemaining(forVoiceID:)(uint64_t a1)
{
  v2 = sub_26EF3883C();
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v49 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26EF38A2C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v45 - v15;
  v17 = sub_26EF37EDC();
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17, v19);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v45 - v22;
  v25 = v24;
  sub_26EE13B88(a1, v16, &qword_2806C9CB0, &qword_26EF3DD20);
  if ((*(v25 + 48))(v16, 1, v17) == 1)
  {
    sub_26EE14578(v16, &qword_2806C9CB0, &qword_26EF3DD20);
    return 0;
  }

  else
  {
    (*(v25 + 32))(v23, v16, v17);
    v26 = *(v50 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingManager);
    v27 = sub_26EF388AC();
    sub_26EF3885C();
    (*(v7 + 104))(v11, *MEMORY[0x277D704D8], v6);
    v28 = sub_26EF3884C();
    v46 = v23;
    v48 = v25;
    v49 = v17;
    (*(v7 + 8))(v11, v6);
    v29 = sub_26EF3886C();
    MEMORY[0x28223BE20](v29, v30);
    *(&v45 - 2) = v28;
    v31 = sub_26EF3931C();

    v32 = v31 & 0xFFFFFFFFFFFFFF8;
    if (v31 >> 62)
    {
LABEL_26:
      v33 = sub_26EF3B79C();
    }

    else
    {
      v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v34 = 0;
    v35 = 0;
    while (v33 != v34)
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x2743837E0](v34, v31);
      }

      else
      {
        if (v34 >= *(v32 + 16))
        {
          goto LABEL_24;
        }

        v36 = *(v31 + 8 * v34 + 32);
      }

      v37 = v36;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_23;
      }

      sub_26EEF17DC(&qword_2806C92E0, MEMORY[0x277D70478]);
      v38 = sub_26EF3897C();

      ++v34;
      v39 = __OFADD__(v35, v38 & 1);
      v35 += v38 & 1;
      if (v39)
      {
        goto LABEL_25;
      }
    }

    v40 = sub_26EF3923C();
    if (TTSVBIsInternalUIBuild())
    {
      sub_26EE1FAB8(0, &qword_2806C9C00, 0x277CBEBD0);
      v41 = sub_26EF3B48C();
      v42 = sub_26EF3B4DC();
      v31 = v43;

      (*(v48 + 8))(v46, v49);
      if ((v31 & 1) == 0)
      {
        v40 = v42;
      }
    }

    else
    {
      (*(v48 + 8))(v46, v49);
    }

    result = v40 - v35;
    if (__OFSUB__(v40, v35))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t VoiceBankingSession.fetchTrainingScript(forVoiceID:)@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v3 = v2;
  v222 = a2;
  v223 = sub_26EF3883C();
  v227 = *(v223 - 8);
  v5 = *(v227 + 64);
  v7 = MEMORY[0x28223BE20](v223, v6);
  v216 = &v206 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v206 - v11;
  v14 = MEMORY[0x28223BE20](v10, v13);
  v213 = &v206 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v214 = &v206 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v218 = (&v206 - v21);
  MEMORY[0x28223BE20](v20, v22);
  v217 = &v206 - v23;
  v24 = sub_26EF38E9C();
  v25 = *(v24 - 8);
  v238 = v24;
  v239 = v25;
  v26 = *(v25 + 64);
  v28 = MEMORY[0x28223BE20](v24, v27);
  v233 = &v206 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v235 = &v206 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v229 = &v206 - v35;
  v37 = MEMORY[0x28223BE20](v34, v36);
  v220 = (&v206 - v38);
  v40 = MEMORY[0x28223BE20](v37, v39);
  v234 = &v206 - v41;
  v43 = MEMORY[0x28223BE20](v40, v42);
  v232 = &v206 - v44;
  MEMORY[0x28223BE20](v43, v45);
  v231 = (&v206 - v46);
  v240 = sub_26EF38A2C();
  v237 = *(v240 - 1);
  v47 = *(v237 + 64);
  MEMORY[0x28223BE20](v240, v48);
  v236 = &v206 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_26EF37EDC();
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50, v53);
  v225 = &v206 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20);
  v56 = *(*(v55 - 8) + 64);
  v58 = MEMORY[0x28223BE20](v55 - 8, v57);
  v60 = &v206 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x28223BE20](v58, v61);
  v64 = &v206 - v63;
  MEMORY[0x28223BE20](v62, v65);
  v66 = a1;
  v68 = &v206 - v67;
  sub_26EE13B88(v66, &v206 - v67, &qword_2806C9CB0, &qword_26EF3DD20);
  v69 = v50;
  sub_26EE13B88(v68, v64, &qword_2806C9CB0, &qword_26EF3DD20);
  v221 = v51;
  v70 = *(v51 + 48);
  v71 = v70(v64, 1, v50);
  v226 = v50;
  v212 = v12;
  if (v71 == 1)
  {
    sub_26EE14578(v68, &qword_2806C9CB0, &qword_26EF3DD20);
    sub_26EE14578(v64, &qword_2806C9CB0, &qword_26EF3DD20);
    v72 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceID;
    swift_beginAccess();
    v69 = v226;
    sub_26EE13B88(v3 + v72, v68, &qword_2806C9CB0, &qword_26EF3DD20);
  }

  else
  {
    sub_26EE14578(v64, &qword_2806C9CB0, &qword_26EF3DD20);
  }

  sub_26EE13B88(v68, v60, &qword_2806C9CB0, &qword_26EF3DD20);
  v171 = v70(v60, 1, v69) == 1;
  v73 = v232;
  if (v171)
  {
    sub_26EE14578(v68, &qword_2806C9CB0, &qword_26EF3DD20);
    result = sub_26EE14578(v60, &qword_2806C9CB0, &qword_26EF3DD20);
    *v222 = 0;
    return result;
  }

  v211 = v68;
  v75 = v221;
  (*(v221 + 32))(v225, v60, v69);
  v76 = v3;
  v77 = *(v3 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingManager);
  v219 = *MEMORY[0x277D70768];
  v78 = sub_26EF388AC();
  sub_26EF3885C();
  v79 = v236;
  v80 = v237;
  v81 = v240;
  (*(v237 + 104))(v236, *MEMORY[0x277D704D8], v240);
  v215 = v78;
  v82 = v230;
  v83 = sub_26EF3884C();
  v230 = v82;
  if (v82)
  {

    (*(v80 + 8))(v79, v81);
    (*(v75 + 8))(v225, v226);
    return sub_26EE14578(v211, &qword_2806C9CB0, &qword_26EF3DD20);
  }

  v228 = v76;
  v85 = *(v80 + 8);
  v84 = v80 + 8;
  v86 = v83;
  v85(v79, v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C7EB0, &qword_26EF3F8A0);
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_26EF3F560;
  v88 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v89 = sub_26EF3B0BC();
  v90 = [v88 initWithKey:v89 ascending:1];

  *(v87 + 32) = v90;
  v91 = sub_26EF3886C();
  MEMORY[0x28223BE20](v91, v92);
  v208 = v87;
  *(&v206 - 2) = v87;
  *(&v206 - 1) = v86;
  v209 = v86;
  v237 = v93;
  v94 = sub_26EF3931C();
  v236 = v94;
  if (v94 >> 62)
  {
    goto LABEL_147;
  }

  for (i = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_26EF3B79C())
  {
    v96 = v231;
    if (i >= 500)
    {
      v98 = *MEMORY[0x277D70770];

      v219 = v98;
      v97 = v238;
    }

    else
    {
      v97 = v238;
      if (!i)
      {
        v240 = MEMORY[0x277D84F90];
        goto LABEL_24;
      }
    }

    v243 = MEMORY[0x277D84F90];
    v99 = &v243;
    sub_26EEEC73C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      goto LABEL_151;
    }

    v100 = 0;
    v240 = v243;
    v101 = v236 & 0xC000000000000001;
    do
    {
      if (v101)
      {
        v102 = MEMORY[0x2743837E0](v100, v236);
      }

      else
      {
        v102 = *(v236 + 8 * v100 + 32);
      }

      v103 = v102;
      sub_26EEF17DC(&qword_2806C92E0, MEMORY[0x277D70478]);
      sub_26EF3898C();

      v104 = v240;
      v243 = v240;
      v106 = v240[2];
      v105 = v240[3];
      if (v106 >= v105 >> 1)
      {
        sub_26EEEC73C(v105 > 1, v106 + 1, 1);
        v104 = v243;
      }

      ++v100;
      v104[2] = v106 + 1;
      v107 = (*(v239 + 80) + 32) & ~*(v239 + 80);
      v240 = v104;
      (*(v239 + 32))(v104 + v107 + *(v239 + 72) * v106, v96, v97);
    }

    while (i != v100);
    v73 = v232;
LABEL_24:
    v86 = v219;
    v210 = sub_26EED59E8();
    v228 = sub_26EED5CC0();
    v108 = v240;
    v109 = MEMORY[0x277D84F90];
    v96 = v235;
    v237 = v240[2];
    if (v237)
    {
      v84 = 0;
      v231 = (v239 + 16);
      v224 = (v239 + 8);
      v110 = (v239 + 32);
      while (v84 < v108[2])
      {
        v86 = (*(v239 + 80) + 32) & ~*(v239 + 80);
        v111 = *(v239 + 72);
        (*(v239 + 16))(v73, v108 + v86 + v111 * v84, v97);
        if (sub_26EF38DDC())
        {
          v112 = v73;
          v113 = *v110;
          (*v110)(v234, v112, v97);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v243 = v109;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_26EEEC73C(0, v109[2] + 1, 1);
            v109 = v243;
          }

          v116 = v109[2];
          v115 = v109[3];
          if (v116 >= v115 >> 1)
          {
            sub_26EEEC73C(v115 > 1, v116 + 1, 1);
            v109 = v243;
          }

          v109[2] = v116 + 1;
          v117 = v109 + v86 + v116 * v111;
          v97 = v238;
          v113(v117, v234, v238);
          v96 = v235;
          v73 = v232;
        }

        else
        {
          (*v224)(v73, v97);
        }

        ++v84;
        v108 = v240;
        if (v237 == v84)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
      goto LABEL_137;
    }

LABEL_35:
    v73 = v109[2];

    v118 = v217;
    sub_26EF3934C();
    v99 = sub_26EF3881C();
    v119 = sub_26EF3B44C();
    if (os_log_type_enabled(v99, v119))
    {
      v120 = swift_slowAlloc();
      *v120 = 134217984;
      *(v120 + 4) = v73;
      _os_log_impl(&dword_26EE01000, v99, v119, "Number of samples recorded %ld", v120, 0xCu);
      v121 = v120;
      v96 = v235;
      MEMORY[0x2743842A0](v121, -1, -1);
    }

    v122 = *(v227 + 8);
    v227 += 8;
    v217 = v122;
    (v122)(v118, v223);
    v86 = v218;
    v84 = v210;
    if (!v228)
    {
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

    v123 = v73 / v228;
    v124 = (v73 / v228);
    if (v124 <= -9.22337204e18)
    {
      goto LABEL_149;
    }

    if (v124 >= 9.22337204e18)
    {
      goto LABEL_150;
    }

    v125 = sub_26EE83538(v210, v240);
    sub_26EF3934C();

    v126 = sub_26EF3881C();
    v127 = sub_26EF3B44C();

    v128 = os_log_type_enabled(v126, v127);
    v232 = v125;
    if (v128)
    {
      LODWORD(v224) = v127;
      v231 = v123;
      v234 = v73;
      v129 = swift_slowAlloc();
      v207 = swift_slowAlloc();
      v243 = v207;
      *v129 = 134218242;
      *(v129 + 4) = v84;
      *(v129 + 12) = 2080;
      v130 = *(v125 + 16);
      if (v130)
      {
        v86 = 0;
        v131 = v125 + 32;
        v73 = MEMORY[0x277D84F90];
        while (v86 < *(v125 + 16))
        {
          v132 = *(*(v131 + 8 * v86) + 16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v73 = sub_26EEEC38C(0, *(v73 + 16) + 1, 1, v73);
          }

          v134 = *(v73 + 16);
          v133 = *(v73 + 24);
          v84 = v134 + 1;
          if (v134 >= v133 >> 1)
          {
            v73 = sub_26EEEC38C((v133 > 1), v134 + 1, 1, v73);
          }

          ++v86;
          *(v73 + 16) = v84;
          *(v73 + 8 * v134 + 32) = v132;
          v97 = v238;
          v125 = v232;
          if (v130 == v86)
          {
            goto LABEL_52;
          }
        }

        goto LABEL_138;
      }

      v73 = MEMORY[0x277D84F90];
LABEL_52:
      v135 = MEMORY[0x2743832E0](v73, MEMORY[0x277D83B88]);
      v137 = v136;

      v138 = sub_26EE40670(v135, v137, &v243);

      *(v129 + 14) = v138;
      _os_log_impl(&dword_26EE01000, v126, v224, "Split all phrases into %ld cohorts: [%s]", v129, 0x16u);
      v86 = v207;
      __swift_destroy_boxed_opaque_existential_1(v207);
      MEMORY[0x2743842A0](v86, -1, -1);
      MEMORY[0x2743842A0](v129, -1, -1);

      (v217)(v218, v223);
      v73 = v234;
      v96 = v235;
      v84 = v210;
      v123 = v231;
    }

    else
    {

      (v217)(v86, v223);
    }

    v139 = v124;
    v243 = MEMORY[0x277D84F90];
    if (*(v125 + 16) > v124)
    {
      v210 = v228 + v123 * v228 - v73;
      v86 = v214;
      sub_26EF3934C();
      v99 = sub_26EF3881C();
      v140 = sub_26EF3B44C();
      if (os_log_type_enabled(v99, v140))
      {
        v96 = swift_slowAlloc();
        *v96 = 134218496;
        *(v96 + 4) = v210;
        *(v96 + 12) = 2048;
        *(v96 + 14) = v139;
        *(v96 + 22) = 2048;
        *(v96 + 24) = v84;
        _os_log_impl(&dword_26EE01000, v99, v140, "%ld phrases remaining from cohort index %ld of %ld", v96, 0x20u);
        v86 = v214;
        MEMORY[0x2743842A0](v96, -1, -1);
      }

      (v217)(v86, v223);
      if ((v139 & 0x8000000000000000) == 0)
      {
        v99 = v220;
        if (*(v232 + 16) > v139)
        {
          v214 = v124;
          v207 = (v232 + 32);
          v141 = *(v232 + 32 + 8 * v139);
          v84 = *(v141 + 16);

          v142 = MEMORY[0x277D84F90];
          if (v84)
          {
            v73 = 0;
            v234 = (v239 + 32);
            v218 = (v239 + 8);
            v231 = v84;
            v224 = (v239 + 16);
            while (v73 < *(v141 + 16))
            {
              v86 = (*(v239 + 80) + 32) & ~*(v239 + 80);
              v143 = *(v239 + 72);
              (*(v239 + 16))(v99, v141 + v86 + v143 * v73, v97);
              if (sub_26EF38DDC())
              {
                (*v218)(v99, v97);
              }

              else
              {
                v144 = *v234;
                (*v234)(v229, v99, v97);
                v145 = swift_isUniquelyReferenced_nonNull_native();
                v242 = v142;
                if ((v145 & 1) == 0)
                {
                  sub_26EEEC73C(0, *(v142 + 2) + 1, 1);
                  v99 = v220;
                  v142 = v242;
                }

                v147 = *(v142 + 2);
                v146 = *(v142 + 3);
                if (v147 >= v146 >> 1)
                {
                  sub_26EEEC73C(v146 > 1, v147 + 1, 1);
                  v99 = v220;
                  v142 = v242;
                }

                *(v142 + 2) = v147 + 1;
                v148 = &v142[v86 + v147 * v143];
                v97 = v238;
                v144(v148, v229, v238);
                v84 = v231;
              }

              if (v84 == ++v73)
              {
                goto LABEL_69;
              }
            }

            goto LABEL_139;
          }

LABEL_69:

          v242 = v142;
          sub_26EEF0994();
          v99 = sub_26EEDECC0(v210, v242);
          if (v151)
          {
            v84 = v151;
            v96 = v150;
            v86 = v149;
            sub_26EF3B83C();
            swift_unknownObjectRetain_n();
            v156 = swift_dynamicCastClass();
            v155 = v213;
            if (!v156)
            {
              swift_unknownObjectRelease();
              v156 = MEMORY[0x277D84F90];
            }

            v157 = *(v156 + 16);

            v73 = v214;
            if (!__OFSUB__(v84 >> 1, v96))
            {
              if (v157 == (v84 >> 1) - v96)
              {
                v153 = swift_dynamicCastClass();
                swift_unknownObjectRelease();
                v154 = v212;
                if (v153)
                {
                  goto LABEL_78;
                }

                v153 = MEMORY[0x277D84F90];
                goto LABEL_77;
              }

              goto LABEL_156;
            }

            goto LABEL_155;
          }

          while (1)
          {
            sub_26EEECD60(v99, v149, v150, v151);
            v153 = v152;
            v154 = v212;
            v155 = v213;
            v73 = v214;
LABEL_77:
            swift_unknownObjectRelease();
LABEL_78:
            sub_26EF3934C();
            v158 = sub_26EF3881C();
            v96 = sub_26EF3B44C();
            if (os_log_type_enabled(v158, v96))
            {
              v84 = swift_slowAlloc();
              *v84 = 134217984;
              *(v84 + 4) = v210;
              _os_log_impl(&dword_26EE01000, v158, v96, "Shuffling and pulling %ld phrases to record from the current cohort.", v84, 0xCu);
              MEMORY[0x2743842A0](v84, -1, -1);
            }

            (v217)(v155, v223);
            sub_26EEDED54(v153);
            sub_26EF3934C();
            v99 = sub_26EF3881C();
            v159 = sub_26EF3B44C();
            if (os_log_type_enabled(v99, v159))
            {
              v96 = swift_slowAlloc();
              *v96 = 134217984;
              *(v96 + 4) = v228;
              _os_log_impl(&dword_26EE01000, v99, v159, "Shuffling and pulling %ld phrases for all remaining cohorts.", v96, 0xCu);
              MEMORY[0x2743842A0](v96, -1, -1);
            }

            (v217)(v154, v223);
            v160 = *(v232 + 16);
            if (v160 >= (v73 + 1))
            {
              sub_26EEECC74(v232, v207, v73 + 1, (2 * v160) | 1);
              v86 = v161;
              v162 = *(v161 + 16);
              if (v162)
              {
                v242 = MEMORY[0x277D84F90];
                sub_26EEEC71C(0, v162, 0);
                v163 = 32;
                v164 = v242;
                do
                {
                  v73 = *(v86 + v163);
                  v241 = v73;
                  swift_bridgeObjectRetain_n();
                  sub_26EEF0994();
                  v84 = v241;
                  v165 = *(v241 + 2);
                  if (v165 >= v228)
                  {
                    v166 = v228;
                  }

                  else
                  {
                    v166 = *(v241 + 2);
                  }

                  if (v165 > v228)
                  {
                    v234 = v164;
                    v167 = v86;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C92E8, &qword_26EF444A0);
                    v168 = *(v239 + 72);
                    v86 = (*(v239 + 80) + 32) & ~*(v239 + 80);
                    v169 = swift_allocObject();
                    v170 = _swift_stdlib_malloc_size(v169);
                    if (!v168)
                    {
                      goto LABEL_144;
                    }

                    v171 = v170 - v86 == 0x8000000000000000 && v168 == -1;
                    if (v171)
                    {
                      goto LABEL_146;
                    }

                    v169[2] = v166;
                    v169[3] = 2 * ((v170 - v86) / v168);
                    swift_arrayInitWithCopy();

                    v84 = v169;
                    v86 = v167;
                    v164 = v234;
                  }

                  v242 = v164;
                  v173 = *(v164 + 2);
                  v172 = *(v164 + 3);
                  v73 = v173 + 1;
                  if (v173 >= v172 >> 1)
                  {
                    sub_26EEEC71C((v172 > 1), v173 + 1, 1);
                    v164 = v242;
                  }

                  *(v164 + 2) = v73;
                  *&v164[8 * v173 + 32] = v84;
                  v163 += 8;
                  --v162;
                }

                while (v162);
              }

              else
              {

                v164 = MEMORY[0x277D84F90];
              }

              v174 = *(v164 + 2);
              v97 = v238;
              if (v174)
              {
                v175 = 0;
                v84 = (v164 + 32);
                v176 = MEMORY[0x277D84F90];
                while (v175 < *(v164 + 2))
                {
                  v73 = *(v84 + 8 * v175);
                  v177 = *(v73 + 16);
                  v178 = v176[2];
                  v86 = v178 + v177;
                  if (__OFADD__(v178, v177))
                  {
                    goto LABEL_141;
                  }

                  v179 = *(v84 + 8 * v175);

                  v180 = swift_isUniquelyReferenced_nonNull_native();
                  if (!v180 || v86 > v176[3] >> 1)
                  {
                    if (v178 <= v86)
                    {
                      v181 = v178 + v177;
                    }

                    else
                    {
                      v181 = v178;
                    }

                    v176 = sub_26EEEC490(v180, v181, 1, v176, &qword_2806C92E8, &qword_26EF444A0, MEMORY[0x277D70610]);
                  }

                  v97 = v238;
                  if (*(v73 + 16))
                  {
                    v182 = v176[2];
                    if ((v176[3] >> 1) - v182 < v177)
                    {
                      goto LABEL_143;
                    }

                    v183 = v176 + ((*(v239 + 80) + 32) & ~*(v239 + 80)) + *(v239 + 72) * v182;
                    swift_arrayInitWithCopy();

                    if (v177)
                    {
                      v184 = v176[2];
                      v185 = __OFADD__(v184, v177);
                      v186 = v184 + v177;
                      if (v185)
                      {
                        goto LABEL_145;
                      }

                      v176[2] = v186;
                    }
                  }

                  else
                  {

                    if (v177)
                    {
                      goto LABEL_142;
                    }
                  }

                  if (v174 == ++v175)
                  {
                    goto LABEL_118;
                  }
                }

                goto LABEL_140;
              }

              v176 = MEMORY[0x277D84F90];
LABEL_118:

              sub_26EEDED54(v176);
              v96 = v235;
              goto LABEL_119;
            }

LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            swift_unknownObjectRelease();
            v151 = v84;
            v150 = v96;
            v149 = v86;
          }
        }

LABEL_153:
        __break(1u);
        goto LABEL_154;
      }

LABEL_152:
      __break(1u);
      goto LABEL_153;
    }

LABEL_119:
    v187 = v240;
    if (!v237)
    {
      break;
    }

    v84 = 0;
    v231 = (v239 + 8);
    v234 = (v239 + 32);
    v188 = MEMORY[0x277D84F90];
    while (v84 < v187[2])
    {
      v86 = (*(v239 + 80) + 32) & ~*(v239 + 80);
      v189 = *(v239 + 72);
      (*(v239 + 16))(v96, v187 + v86 + v189 * v84, v97);
      if (sub_26EF38DDC())
      {
        v73 = *v234;
        (*v234)(v233, v96, v97);
        v190 = swift_isUniquelyReferenced_nonNull_native();
        v242 = v188;
        if ((v190 & 1) == 0)
        {
          sub_26EEEC73C(0, *(v188 + 2) + 1, 1);
          v188 = v242;
        }

        v192 = *(v188 + 2);
        v191 = *(v188 + 3);
        if (v192 >= v191 >> 1)
        {
          sub_26EEEC73C(v191 > 1, v192 + 1, 1);
          v188 = v242;
        }

        *(v188 + 2) = v192 + 1;
        v193 = &v188[v86 + v192 * v189];
        v97 = v238;
        (v73)(v193, v233, v238);
        v96 = v235;
      }

      else
      {
        (*v231)(v96, v97);
      }

      ++v84;
      v187 = v240;
      if (v237 == v84)
      {
        goto LABEL_131;
      }
    }

LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    ;
  }

  v188 = MEMORY[0x277D84F90];
LABEL_131:

  v242 = v188;

  v194 = v230;
  sub_26EEECF00(&v242);
  if (v194)
  {

    __break(1u);
  }

  else
  {

    sub_26EEDED54(v243);
    v195 = v242;
    v196 = v216;
    sub_26EF3934C();

    v197 = sub_26EF3881C();
    v198 = sub_26EF3B44C();
    v199 = os_log_type_enabled(v197, v198);
    v200 = v226;
    v201 = v215;
    if (v199)
    {
      v202 = swift_slowAlloc();
      *v202 = 134217984;
      *(v202 + 4) = *(v195 + 2);

      _os_log_impl(&dword_26EE01000, v197, v198, "%ld phrases fetched.", v202, 0xCu);
      MEMORY[0x2743842A0](v202, -1, -1);
    }

    else
    {
    }

    v203 = v222;
    v204 = v221;
    v205 = v225;
    (v217)(v196, v223);
    sub_26EF37604(v195, &v242);

    (*(v204 + 8))(v205, v200);
    result = sub_26EE14578(v211, &qword_2806C9CB0, &qword_26EF3DD20);
    *v203 = v242;
  }

  return result;
}

uint64_t sub_26EEDECC0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v3 = *(sub_26EF38E9C() - 8);
    v4 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_26EEDED54(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_26EEEC490(isUniquelyReferenced_nonNull_native, v16, 1, v3, &qword_2806C92E8, &qword_26EF444A0, MEMORY[0x277D70610]);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_26EF38E9C();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26EEDEEA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8798, &qword_26EF40940);
  v1 = *(*(v0 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v0 - 8, v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v26 - v7;
  v9 = sub_26EF37E7C();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v26 - v17;
  sub_26EF38E1C();
  v19 = v10[6];
  if (v19(v8, 1, v9) == 1)
  {
    v20 = v8;
  }

  else
  {
    v21 = v8;
    v22 = v10[4];
    v22(v18, v21, v9);
    sub_26EF38E1C();
    if (v19(v5, 1, v9) != 1)
    {
      v22(v15, v5, v9);
      v23 = sub_26EF37E4C();
      v24 = v10[1];
      v24(v15, v9);
      v24(v18, v9);
      return v23 & 1;
    }

    (v10[1])(v18, v9);
    v20 = v5;
  }

  sub_26EE14578(v20, &qword_2806C8798, &qword_26EF40940);
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_26EEDF11C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = sub_26EF3B2DC();
  v2[6] = sub_26EF3B2CC();
  v4 = sub_26EF3B29C();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_26EEDF1B8, v4, v3);
}

uint64_t sub_26EEDF1B8()
{
  v1 = *(v0 + 40);
  v9 = *(v0 + 24);
  v2 = sub_26EF3B2CC();
  *(v0 + 72) = v2;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  v3[1] = vextq_s8(v9, v9, 8uLL);
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C92F0, &qword_26EF42918);
  *v5 = v0;
  v5[1] = sub_26EEDF2E8;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v0 + 16, v2, v7, 0xD000000000000019, 0x800000026EF469E0, sub_26EEF1A34, v3, v6);
}

uint64_t sub_26EEDF2E8()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v10 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_26EEDBB00;
  }

  else
  {
    v7 = v2[9];
    v8 = v2[10];

    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_26EEDF40C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26EEDF40C()
{
  v1 = v0[6];

  v2 = v0[2];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_26EEDF474(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C93C8, &qword_26EF42D50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v14 - v8;
  swift_getKeyPath();
  v14[1] = a2;
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  v10 = *(a2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__service);
  (*(v5 + 16))(v9, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v9, v4);

  sub_26EF38B3C();
}

void sub_26EEDF658(void *a1, void *a2)
{
  sub_26EE1FAB8(0, &qword_2806C93B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C67B0, &qword_26EF3D4B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26EF3D070;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_26EE1EFBC();
  *(v4 + 32) = 0x6563696F76;
  *(v4 + 40) = 0xE500000000000000;
  *(v4 + 96) = sub_26EF3885C();
  *(v4 + 104) = sub_26EEF17DC(&qword_2806C93C0, MEMORY[0x277D70460]);
  *(v4 + 72) = a2;
  v5 = a2;
  v6 = sub_26EF3B42C();
  [a1 setPredicate_];
}

unint64_t sub_26EEDF798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a1;
  v44 = a2;
  v47 = a3;
  v4 = sub_26EF38A2C();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v41 - v12;
  v14 = sub_26EF37EDC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceID;
  swift_beginAccess();
  sub_26EE13B88(v3 + v20, v13, &qword_2806C9CB0, &qword_26EF3DD20);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_26EE14578(v13, &qword_2806C9CB0, &qword_26EF3DD20);
    v21 = 1;
    v22 = v47;
LABEL_3:
    v23 = sub_26EF38E9C();
    return (*(*(v23 - 8) + 56))(v22, v21, 1, v23);
  }

  (*(v15 + 32))(v19, v13, v14);
  v25 = *(v3 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingManager);
  v26 = sub_26EF388AC();
  sub_26EF3885C();
  v28 = v45;
  v27 = v46;
  (*(v45 + 104))(v8, *MEMORY[0x277D704D8], v46);
  v29 = v48;
  v30 = sub_26EF3884C();
  if (!v29)
  {
    v31 = v30;
    (*(v28 + 8))(v8, v27);
    v32 = sub_26EF3886C();
    MEMORY[0x28223BE20](v32, v33);
    v34 = v31;
    v36 = v43;
    v35 = v44;
    *(&v41 - 4) = v31;
    *(&v41 - 3) = v36;
    *(&v41 - 2) = v35;
    result = sub_26EF3931C();
    if (result >> 62)
    {
      v39 = result;
      v40 = sub_26EF3B79C();
      result = v39;
      v22 = v47;
      if (v40)
      {
LABEL_9:
        v42 = v14;
        if ((result & 0xC000000000000001) != 0)
        {
          v37 = MEMORY[0x2743837E0](0);
        }

        else
        {
          if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v37 = *(result + 32);
        }

        v38 = v37;

        sub_26EEF17DC(&qword_2806C92E0, MEMORY[0x277D70478]);
        sub_26EF3898C();

        (*(v15 + 8))(v19, v42);
        v21 = 0;
        goto LABEL_3;
      }
    }

    else
    {
      v22 = v47;
      if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_9;
      }
    }

    (*(v15 + 8))(v19, v14);
    v21 = 1;
    goto LABEL_3;
  }

  (*(v28 + 8))(v8, v27);
  return (*(v15 + 8))(v19, v14);
}

uint64_t VoiceBankingSession.minimumPhraseCount.getter()
{
  v0 = sub_26EF3923C();
  if (TTSVBIsInternalUIBuild())
  {
    sub_26EE1FAB8(0, &qword_2806C9C00, 0x277CBEBD0);
    v1 = sub_26EF3B48C();
    v2 = sub_26EF3B4DC();
    v4 = v3;

    if ((v4 & 1) == 0)
    {
      return v2;
    }
  }

  return v0;
}

uint64_t VoiceBankingSession.deleteVoice(voiceID:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_26EF3B2DC();
  v2[5] = sub_26EF3B2CC();
  v4 = sub_26EF3B29C();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_26EEDFD78, v4, v3);
}

uint64_t sub_26EEDFD78()
{
  v1 = v0[2].i64[0];
  v9 = v0[1];
  v2 = sub_26EF3B2CC();
  v0[4].i64[0] = v2;
  v3 = swift_task_alloc();
  v0[4].i64[1] = v3;
  v3[1] = vextq_s8(v9, v9, 8uLL);
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[5].i64[0] = v5;
  *v5 = v0;
  v5[1] = sub_26EEDFE8C;
  v6 = MEMORY[0x277D85700];
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, v2, v6, 0xD000000000000015, 0x800000026EF46A00, sub_26EEF1BCC, v3, v7);
}

uint64_t sub_26EEDFE8C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v10 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_26EEDA080;
  }

  else
  {
    v7 = v2[8];
    v8 = v2[9];

    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_26EEDFFB0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26EEDFFB0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26EEE0014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v20 = a5;
  v21 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C93B0, &qword_26EF42D38);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v19 - v13;
  swift_getKeyPath();
  v22 = a2;
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  v15 = *(a2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__service);
  (*(v10 + 16))(v14, a1, v9);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v16, v14, v9);

  v21(a3, v20, v17);
}

uint64_t VoiceBankingSession.deleteModel(modelID:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_26EF3B2DC();
  v2[5] = sub_26EF3B2CC();
  v4 = sub_26EF3B29C();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_26EEE028C, v4, v3);
}

uint64_t sub_26EEE028C()
{
  v1 = v0[2].i64[0];
  v9 = v0[1];
  v2 = sub_26EF3B2CC();
  v0[4].i64[0] = v2;
  v3 = swift_task_alloc();
  v0[4].i64[1] = v3;
  v3[1] = vextq_s8(v9, v9, 8uLL);
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[5].i64[0] = v5;
  *v5 = v0;
  v5[1] = sub_26EEE03A0;
  v6 = MEMORY[0x277D85700];
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v5, v2, v6, 0xD000000000000015, 0x800000026EF46A20, sub_26EEF1C18, v3, v7);
}

uint64_t sub_26EEE03A0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v10 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_26EEF31A4;
  }

  else
  {
    v7 = v2[8];
    v8 = v2[9];

    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_26EEF3260;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t VoiceBankingSession.deleteUserData(for:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v4 = sub_26EF37EDC();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v6 = *(v5 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = sub_26EF3B2DC();
  v2[12] = sub_26EF3B2CC();
  v8 = sub_26EF3B29C();
  v2[13] = v8;
  v2[14] = v7;

  return MEMORY[0x2822009F8](sub_26EEE05F4, v8, v7);
}

uint64_t sub_26EEE05F4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceID;
  swift_beginAccess();
  sub_26EE13B88(v4 + v5, v3, &qword_2806C9CB0, &qword_26EF3DD20);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = *(v0 + 96);
    v7 = *(v0 + 56);

    sub_26EE14578(v7, &qword_2806C9CB0, &qword_26EF3DD20);
    v8 = *(v0 + 80);
    v9 = *(v0 + 56);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 80);
    v19 = *(v0 + 40);
    (*(*(v0 + 72) + 32))(v12, *(v0 + 56), *(v0 + 64));
    v13 = sub_26EF3B2CC();
    *(v0 + 120) = v13;
    v14 = swift_task_alloc();
    *(v0 + 128) = v14;
    v14[1] = vextq_s8(v19, v19, 8uLL);
    v14[2].i64[0] = v12;
    v15 = *(MEMORY[0x277D85A40] + 4);
    v16 = swift_task_alloc();
    *(v0 + 136) = v16;
    *v16 = v0;
    v16[1] = sub_26EEE0808;
    v17 = MEMORY[0x277D85700];
    v18 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v16, v13, v17, 0xD000000000000014, 0x800000026EF46A40, sub_26EEF1C64, v14, v18);
  }
}

uint64_t sub_26EEE0808()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v10 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = v2[13];
    v5 = v2[14];
    v6 = sub_26EEE09CC;
  }

  else
  {
    v7 = v2[15];
    v8 = v2[16];

    v4 = v2[13];
    v5 = v2[14];
    v6 = sub_26EEE092C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26EEE092C()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];

  (*(v3 + 8))(v2, v4);
  v5 = v0[10];
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_26EEE09CC()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[7];
  v6 = v0[8];

  (*(v5 + 8))(v4, v6);

  v8 = v0[1];
  v9 = v0[18];

  return v8();
}

uint64_t sub_26EEE0A84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C93B0, &qword_26EF42D38);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v14 - v8;
  v10 = *(a2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingManager);
  sub_26EF38E7C();
  (*(v5 + 16))(v9, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v9, v4);
  sub_26EF388EC();
}

uint64_t VoiceBankingSession.updateSampleForCapturedRecording(sampleID:audioFileURL:userScore:userPhrase:recordingDate:spl:splThreshold:snr:snrThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float a8, float a9, float a10, float a11)
{
  *(v12 + 208) = a10;
  *(v12 + 212) = a11;
  *(v12 + 200) = a8;
  *(v12 + 204) = a9;
  *(v12 + 88) = a7;
  *(v12 + 96) = v11;
  *(v12 + 72) = a5;
  *(v12 + 80) = a6;
  *(v12 + 56) = a3;
  *(v12 + 64) = a4;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20) - 8) + 64) + 15;
  *(v12 + 104) = swift_task_alloc();
  v14 = sub_26EF37EDC();
  *(v12 + 112) = v14;
  v15 = *(v14 - 8);
  *(v12 + 120) = v15;
  v16 = *(v15 + 64) + 15;
  *(v12 + 128) = swift_task_alloc();
  *(v12 + 136) = sub_26EF3B2DC();
  *(v12 + 144) = sub_26EF3B2CC();
  v18 = sub_26EF3B29C();
  *(v12 + 152) = v18;
  *(v12 + 160) = v17;

  return MEMORY[0x2822009F8](sub_26EEE0D50, v18, v17);
}

uint64_t sub_26EEE0D50()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceID;
  swift_beginAccess();
  sub_26EE13B88(v4 + v5, v3, &qword_2806C9CB0, &qword_26EF3DD20);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = *(v0 + 144);
    v7 = *(v0 + 104);

    sub_26EE14578(v7, &qword_2806C9CB0, &qword_26EF3DD20);
    v8 = *(v0 + 128);
    v9 = *(v0 + 104);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 128);
    v13 = *(v0 + 96);
    v15 = *(v0 + 64);
    v14 = *(v0 + 72);
    v17 = *(v0 + 48);
    v16 = *(v0 + 56);
    v18 = *(v0 + 40);
    v19 = *(v0 + 200);
    v20 = *(v0 + 208);
    v27 = *(v0 + 80);
    (*(*(v0 + 120) + 32))(v12, *(v0 + 104), *(v0 + 112));
    v21 = sub_26EF3B2CC();
    *(v0 + 168) = v21;
    v22 = swift_task_alloc();
    *(v0 + 176) = v22;
    *(v22 + 16) = v13;
    *(v22 + 24) = v18;
    *(v22 + 32) = v17;
    *(v22 + 40) = v12;
    *(v22 + 48) = v16;
    *(v22 + 56) = v15;
    *(v22 + 64) = v14;
    *(v22 + 72) = v27;
    *(v22 + 88) = v19;
    *(v22 + 96) = v20;
    v23 = *(MEMORY[0x277D85A40] + 4);
    v24 = swift_task_alloc();
    *(v0 + 184) = v24;
    *v24 = v0;
    v24[1] = sub_26EEE0FAC;
    v25 = MEMORY[0x277D85700];
    v26 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v24, v21, v25, 0xD00000000000007DLL, 0x800000026EF46A60, sub_26EEF1C70, v22, v26);
  }
}

uint64_t sub_26EEE0FAC()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v10 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = v2[19];
    v5 = v2[20];
    v6 = sub_26EEE1170;
  }

  else
  {
    v7 = v2[21];
    v8 = v2[22];

    v4 = v2[19];
    v5 = v2[20];
    v6 = sub_26EEE10D0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26EEE10D0()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];

  (*(v3 + 8))(v2, v4);
  v5 = v0[16];
  v6 = v0[13];

  v7 = v0[1];

  return v7();
}

uint64_t sub_26EEE1170()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[13];
  v6 = v0[14];

  (*(v5 + 8))(v4, v6);

  v8 = v0[1];
  v9 = v0[24];

  return v8();
}

uint64_t sub_26EEE1228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v30[6] = a7;
  v30[7] = a8;
  v30[1] = a3;
  v30[2] = a4;
  v30[4] = a9;
  v30[5] = a5;
  v30[3] = a10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C93B0, &qword_26EF42D38);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = v30 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6840, &qword_26EF3CD50);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v23 = v30 - v22;
  v24 = *(a2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingManager);
  v25 = sub_26EF37DCC();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v23, a6, v25);
  (*(v26 + 56))(v23, 0, 1, v25);
  (*(v14 + 16))(v18, a1, v13);
  v27 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v28 = swift_allocObject();
  (*(v14 + 32))(v28 + v27, v18, v13);
  sub_26EF3890C();

  return sub_26EE14578(v23, &qword_2806C6840, &qword_26EF3CD50);
}

uint64_t VoiceBankingSession.updateVoiceName(voiceName:voiceID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = sub_26EF3B2DC();
  v4[7] = sub_26EF3B2CC();
  v6 = sub_26EF3B29C();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_26EEE155C, v6, v5);
}

uint64_t sub_26EEE155C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 16);
  v11 = *(v0 + 24);
  v4 = sub_26EF3B2CC();
  *(v0 + 80) = v4;
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  *(v5 + 32) = v11;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_26EEE167C;
  v8 = MEMORY[0x277D85700];
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v7, v4, v8, 0xD000000000000023, 0x800000026EF46AE0, sub_26EEF1CB0, v5, v9);
}

uint64_t sub_26EEE167C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v10 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_26EEE19C8;
  }

  else
  {
    v7 = v2[10];
    v8 = v2[11];

    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_26EEE17A0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26EEE17A0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = sub_26EF3B2CC();
  v0[14] = v3;
  v4 = swift_task_alloc();
  v0[15] = v4;
  *(v4 + 16) = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_26EEE18A4;
  v7 = MEMORY[0x277D85700];
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v6, v3, v7, 0xD000000000000023, 0x800000026EF46AE0, sub_26EEF1CBC, v4, v8);
}

uint64_t sub_26EEE18A4()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v10 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_26EEE1A48;
  }

  else
  {
    v7 = v2[14];
    v8 = v2[15];

    v4 = v2[8];
    v5 = v2[9];
    v6 = sub_26EEF3264;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26EEE19C8()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26EEE1A48()
{
  v1 = v0[17];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26EEE1AC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C93B0, &qword_26EF42D38);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v14 - v8;
  v10 = *(a2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingManager);
  (*(v5 + 16))(&v14 - v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v9, v4);
  sub_26EF3888C();
}

uint64_t sub_26EEE1C3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C93B0, &qword_26EF42D38);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v14 - v8;
  swift_getKeyPath();
  v14[1] = a2;
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  v10 = *(a2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__service);
  (*(v5 + 16))(v9, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v9, v4);

  sub_26EF38AEC();
}

uint64_t VoiceBankingSession.trainWithMode(mode:voiceID:skipValidation:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 104) = a2;
  *(v4 + 112) = v3;
  *(v4 + 288) = a3;
  *(v4 + 96) = a1;
  v5 = sub_26EF38A2C();
  *(v4 + 120) = v5;
  v6 = *(v5 - 8);
  *(v4 + 128) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  v8 = sub_26EF38CDC();
  *(v4 + 144) = v8;
  v9 = *(v8 - 8);
  *(v4 + 152) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 160) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20) - 8) + 64) + 15;
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  v12 = sub_26EF37EDC();
  *(v4 + 184) = v12;
  v13 = *(v12 - 8);
  *(v4 + 192) = v13;
  v14 = *(v13 + 64) + 15;
  *(v4 + 200) = swift_task_alloc();
  v15 = sub_26EF3883C();
  *(v4 + 208) = v15;
  v16 = *(v15 - 8);
  *(v4 + 216) = v16;
  v17 = *(v16 + 64) + 15;
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  sub_26EF3B2DC();
  *(v4 + 248) = sub_26EF3B2CC();
  v19 = sub_26EF3B29C();
  *(v4 + 256) = v19;
  *(v4 + 264) = v18;

  return MEMORY[0x2822009F8](sub_26EEE207C, v19, v18);
}

uint64_t sub_26EEE207C()
{
  sub_26EE1FAB8(0, &qword_2806C9C00, 0x277CBEBD0);
  v1 = sub_26EF3B48C();
  v2 = sub_26EF3B4EC();

  if (v2)
  {
    v3 = *(v0 + 240);
    sub_26EF3934C();
    v4 = sub_26EF3881C();
    v5 = sub_26EF3B47C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_26EE01000, v4, v5, "Pref set to bypass OS scheduling for training!", v6, 2u);
      MEMORY[0x2743842A0](v6, -1, -1);
    }

    v7 = *(v0 + 240);
    v8 = *(v0 + 208);
    v9 = *(v0 + 216);

    (*(v9 + 8))(v7, v8);
  }

  v10 = *(v0 + 184);
  v11 = *(v0 + 192);
  v12 = *(v0 + 176);
  sub_26EE13B88(*(v0 + 104), v12, &qword_2806C9CB0, &qword_26EF3DD20);
  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    sub_26EE14578(*(v0 + 176), &qword_2806C9CB0, &qword_26EF3DD20);
  }

  else
  {
    v14 = *(v0 + 192);
    v13 = *(v0 + 200);
    v15 = *(v0 + 184);
    v16 = *(v0 + 168);
    v17 = *(v0 + 112);
    v18 = *(v14 + 32);
    v18(v13, *(v0 + 176), v15);
    v18(v16, v13, v15);
    (*(v14 + 56))(v16, 0, 1, v15);
    v19 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceID;
    swift_beginAccess();
    sub_26EEF1774(v16, v17 + v19, &qword_2806C9CB0, &qword_26EF3DD20);
    swift_endAccess();
  }

  v21 = *(v0 + 152);
  v20 = *(v0 + 160);
  v22 = *(v0 + 144);
  v23 = *(v0 + 112);
  swift_getKeyPath();
  *(v0 + 88) = v23;
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  v24 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__trainingScriptType;
  swift_beginAccess();
  v25 = *(v23 + v24);
  sub_26EF3B0FC();
  v26 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceCreationLocale;
  swift_beginAccess();
  (*(v21 + 16))(v20, v23 + v26, v22);
  sub_26EF38CAC();
  (*(v21 + 8))(v20, v22);
  sub_26EF38C3C();

  v27 = swift_task_alloc();
  *(v0 + 272) = v27;
  *v27 = v0;
  v27[1] = sub_26EEE2438;
  v28 = *(v0 + 112);
  v29 = *(v0 + 288);
  v30 = *(v0 + 96);

  return sub_26EEE2980(v30, v2 & 1, v29);
}

uint64_t sub_26EEE2438()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 264);
  v6 = *(v2 + 256);
  if (v0)
  {
    v7 = sub_26EEE26EC;
  }

  else
  {
    v7 = sub_26EEE2574;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_26EEE2574()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[27];

  v5 = sub_26EE27DAC();
  (*(v4 + 16))(v2, v5, v3);
  v6 = sub_26EF3881C();
  v7 = sub_26EF3B43C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26EE01000, v6, v7, "VoiceBankingSession: Did kick off training. Will refresh voices and models", v8, 2u);
    MEMORY[0x2743842A0](v8, -1, -1);
  }

  v9 = v0[30];
  v10 = v0[28];
  v11 = v0[25];
  v13 = v0[21];
  v12 = v0[22];
  v14 = v0[20];
  v15 = v0[17];
  (*(v0[27] + 8))(v0[29], v0[26]);

  v16 = v0[1];

  return v16();
}

uint64_t sub_26EEE26EC()
{
  v1 = v0[35];
  v2 = v0[31];
  v3 = v0[28];

  sub_26EF3934C();
  v4 = v1;
  v5 = sub_26EF3881C();
  v6 = sub_26EF3B45C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[35];
  if (v7)
  {
    v10 = v0[16];
    v9 = v0[17];
    v11 = v0[15];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    (*(v10 + 104))(v9, *MEMORY[0x277D704D8], v11);
    sub_26EF38A4C();
    sub_26EEF17DC(&unk_2806C9CD0, MEMORY[0x277D70518]);
    swift_allocError();
    sub_26EF389BC();
    (*(v10 + 8))(v9, v11);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&dword_26EE01000, v5, v6, "%@", v12, 0xCu);
    sub_26EE14578(v13, &qword_2806C7140, &unk_26EF3E420);
    MEMORY[0x2743842A0](v13, -1, -1);
    MEMORY[0x2743842A0](v12, -1, -1);
  }

  else
  {
  }

  v15 = v0[29];
  v16 = v0[30];
  v17 = v0[25];
  v19 = v0[21];
  v18 = v0[22];
  v20 = v0[20];
  v21 = v0[17];
  (*(v0[27] + 8))(v0[28], v0[26]);

  v22 = v0[1];

  return v22();
}

uint64_t sub_26EEE2980(uint64_t a1, char a2, char a3)
{
  *(v4 + 153) = a3;
  *(v4 + 152) = a2;
  *(v4 + 40) = a1;
  *(v4 + 48) = v3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20) - 8) + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  v6 = sub_26EF37EDC();
  *(v4 + 64) = v6;
  v7 = *(v6 - 8);
  *(v4 + 72) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = sub_26EF3B2DC();
  *(v4 + 96) = sub_26EF3B2CC();
  v10 = sub_26EF3B29C();
  *(v4 + 104) = v10;
  *(v4 + 112) = v9;

  return MEMORY[0x2822009F8](sub_26EEE2AB8, v10, v9);
}

uint64_t sub_26EEE2AB8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceID;
  swift_beginAccess();
  sub_26EE13B88(v4 + v5, v3, &qword_2806C9CB0, &qword_26EF3DD20);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = *(v0 + 96);
    v7 = *(v0 + 56);

    sub_26EE14578(v7, &qword_2806C9CB0, &qword_26EF3DD20);
    v8 = *(v0 + 80);
    v9 = *(v0 + 56);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 80);
    v13 = *(v0 + 48);
    v14 = *(v0 + 153);
    v15 = *(v0 + 152);
    v16 = *(v0 + 40);
    (*(*(v0 + 72) + 32))(v12, *(v0 + 56), *(v0 + 64));
    v17 = sub_26EF3B2CC();
    *(v0 + 120) = v17;
    v18 = swift_task_alloc();
    *(v0 + 128) = v18;
    *(v18 + 16) = v13;
    *(v18 + 24) = v12;
    *(v18 + 32) = v16;
    *(v18 + 40) = v15;
    *(v18 + 41) = v14;
    v19 = *(MEMORY[0x277D85A40] + 4);
    v20 = swift_task_alloc();
    *(v0 + 136) = v20;
    *v20 = v0;
    v20[1] = sub_26EED9148;
    v21 = MEMORY[0x277D85700];
    v22 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v20, v17, v21, 0xD000000000000037, 0x800000026EF46DC0, sub_26EEF2AF4, v18, v22);
  }
}

uint64_t sub_26EEE2CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v18[0] = a5;
  v18[1] = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C93B0, &qword_26EF42D38);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v18 - v12;
  swift_getKeyPath();
  v19 = a2;
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  v14 = *(a2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__service);
  (*(v9 + 16))(v13, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v13, v8);

  sub_26EF38AFC();
}

uint64_t sub_26EEE2EE0(uint64_t a1)
{
  v2 = sub_26EF38A4C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806C9E70, &unk_26EF42D40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v16 - v11;
  sub_26EE13B88(a1, v16 - v11, &unk_2806C9E70, &unk_26EF42D40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v7, v12, v2);
    sub_26EEF17DC(&unk_2806C9CD0, MEMORY[0x277D70518]);
    v13 = swift_allocError();
    (*(v3 + 16))(v14, v7, v2);
    v16[1] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C93B0, &qword_26EF42D38);
    sub_26EF3B2AC();
    return (*(v3 + 8))(v7, v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C93B0, &qword_26EF42D38);
    sub_26EF3B2BC();
    return sub_26EE14578(v12, &unk_2806C9E70, &unk_26EF42D40);
  }
}

uint64_t VoiceBankingSession.refreshModels()()
{
  v1[3] = v0;
  v1[4] = sub_26EF3B2DC();
  v1[5] = sub_26EF3B2CC();
  v3 = sub_26EF3B29C();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_26EEE31C4, v3, v2);
}

uint64_t sub_26EEE31C4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_26EF3B2CC();
  v0[8] = v3;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *(v4 + 16) = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[10] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8908, &qword_26EF41090);
  *v6 = v0;
  v6[1] = sub_26EEE32E4;
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v0 + 2, v3, v8, 0x4D68736572666572, 0xEF2928736C65646FLL, sub_26EEF1CC4, v4, v7);
}

uint64_t sub_26EEE32E4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v10 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_26EEF31A4;
  }

  else
  {
    v7 = v2[8];
    v8 = v2[9];

    v4 = v2[6];
    v5 = v2[7];
    v6 = sub_26EEF31F0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26EEE3408(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C93A0, &qword_26EF42D00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v14 - v8;
  swift_getKeyPath();
  v14[1] = a2;
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  v10 = *(a2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__service);
  (*(v5 + 16))(v9, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v9, v4);

  sub_26EF38ACC();
}

uint64_t sub_26EEE35DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v25 = a2;
  v11 = sub_26EF38A4C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17, v19);
  v21 = (&v25 - v20);
  sub_26EE13B88(a1, &v25 - v20, a3, a4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v16, v21, v11);
    sub_26EEF17DC(&unk_2806C9CD0, MEMORY[0x277D70518]);
    v22 = swift_allocError();
    (*(v12 + 16))(v23, v16, v11);
    v26 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    sub_26EF3B2AC();
    return (*(v12 + 8))(v16, v11);
  }

  else
  {
    v26 = *v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    return sub_26EF3B2BC();
  }
}

uint64_t VoiceBankingSession.exportTrainingData(forVoiceID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = sub_26EF3B2DC();
  v3[6] = sub_26EF3B2CC();
  v5 = sub_26EF3B29C();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x2822009F8](sub_26EEE38B0, v5, v4);
}

uint64_t sub_26EEE38B0()
{
  v1 = *(v0 + 40);
  v10 = *(v0 + 24);
  v2 = sub_26EF3B2CC();
  *(v0 + 72) = v2;
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  v3[1] = vextq_s8(v10, v10, 8uLL);
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  v6 = sub_26EF37DCC();
  *v5 = v0;
  v5[1] = sub_26EEE39D4;
  v7 = *(v0 + 16);
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v7, v2, v8, 0xD00000000000001FLL, 0x800000026EF46B10, sub_26EEF1CCC, v3, v6);
}

uint64_t sub_26EEE39D4()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v10 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_26EEE3AF8;
  }

  else
  {
    v7 = v2[9];
    v8 = v2[10];

    v4 = v2[7];
    v5 = v2[8];
    v6 = sub_26EEF3268;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26EEE3AF8()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[6];

  v4 = v0[1];
  v5 = v0[12];

  return v4();
}

uint64_t sub_26EEE3B70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9390, &qword_26EF42CF0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v14 - v8;
  v10 = *(a2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingManager);
  (*(v5 + 16))(&v14 - v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v9, v4);
  sub_26EF388FC();
}

uint64_t sub_26EEE3CD4(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v28 = a2;
  v2 = sub_26EF38A4C();
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26EF37DCC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9398, &qword_26EF42CF8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v26 - v20;
  sub_26EE13B88(v27, &v26 - v20, &qword_2806C9398, &qword_26EF42CF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = v26;
    (*(v26 + 32))(v6, v21, v2);
    sub_26EEF17DC(&unk_2806C9CD0, MEMORY[0x277D70518]);
    v23 = swift_allocError();
    (*(v22 + 16))(v24, v6, v2);
    v29 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9390, &qword_26EF42CF0);
    sub_26EF3B2AC();
    return (*(v22 + 8))(v6, v2);
  }

  else
  {
    (*(v8 + 32))(v16, v21, v7);
    (*(v8 + 16))(v13, v16, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9390, &qword_26EF42CF0);
    sub_26EF3B2BC();
    return (*(v8 + 8))(v16, v7);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VoiceBankingSession.deleteTrainingDataArchive(atPath:)(Swift::String atPath)
{
  object = atPath._object;
  countAndFlagsBits = atPath._countAndFlagsBits;
  v51[1] = *MEMORY[0x277D85DE8];
  v3 = sub_26EF3883C();
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v42 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26EF37D6C();
  v49 = *(v7 - 8);
  v50 = v7;
  v8 = *(v49 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v48 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C6840, &qword_26EF3CD50);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v46 = &v42 - v14;
  v47 = sub_26EF389FC();
  v45 = *(v47 - 8);
  v15 = *(v45 + 64);
  MEMORY[0x28223BE20](v47, v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_26EF38A2C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = [objc_opt_self() defaultManager];
  v26 = countAndFlagsBits;
  v27 = object;
  v28 = sub_26EF3B0BC();
  LODWORD(object) = [v25 fileExistsAtPath_];

  if (!object)
  {
    (*(v20 + 104))(v24, *MEMORY[0x277D704F8], v19);
    v39 = sub_26EF37DCC();
    (*(*(v39 - 8) + 56))(v46, 1, 1, v39);
    (*(v49 + 104))(v48, *MEMORY[0x277CC91D8], v50);

    sub_26EF37DBC();
    (*(v45 + 104))(v18, *MEMORY[0x277D704B8], v47);
    sub_26EF38A4C();
    sub_26EEF17DC(&unk_2806C9CD0, MEMORY[0x277D70518]);
    swift_allocError();
    sub_26EF38A5C();
LABEL_8:
    swift_willThrow();

    goto LABEL_9;
  }

  v29 = v26;
  v30 = v27;
  v31 = sub_26EF3B0BC();
  v51[0] = 0;
  v32 = [v25 removeItemAtPath:v31 error:v51];

  if ((v32 & 1) == 0)
  {
    v40 = v51[0];
    sub_26EF37D1C();

    goto LABEL_8;
  }

  v33 = v51[0];
  v34 = v42;
  sub_26EF3934C();

  v35 = sub_26EF3881C();
  v36 = sub_26EF3B47C();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v51[0] = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_26EE40670(v29, v30, v51);
    _os_log_impl(&dword_26EE01000, v35, v36, "Successfully removed archived data. %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x2743842A0](v38, -1, -1);
    MEMORY[0x2743842A0](v37, -1, -1);
  }

  (*(v43 + 8))(v34, v44);
LABEL_9:
  v41 = *MEMORY[0x277D85DE8];
}

void VoiceBankingSession.moveTrainingDataArchive(at:to:)(void *a1, uint64_t a2)
{
  v58 = a2;
  v62[2] = *MEMORY[0x277D85DE8];
  v3 = sub_26EF37DCC();
  v59 = *(v3 - 8);
  v60 = v3;
  v4 = *(v59 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26EF3883C();
  v54 = *(v8 - 8);
  v55 = v8;
  v9 = *(v54 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v56 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26EF389FC();
  v57 = *(v12 - 8);
  v13 = *(v57 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26EF38A2C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a1;
  v62[0] = sub_26EF37D8C();
  v62[1] = v23;
  sub_26EE12538();
  v24 = sub_26EF3B60C();
  v26 = v25;

  if (v26)
  {
    v53 = v7;
    v27 = [objc_opt_self() defaultManager];
    v52 = v24;
    v28 = sub_26EF3B0BC();
    v29 = [v27 fileExistsAtPath_];

    if (v29)
    {
      v30 = sub_26EF37D7C();
      v31 = v58;
      v32 = sub_26EF37D7C();
      v62[0] = 0;
      v33 = [v27 moveItemAtURL:v30 toURL:v32 error:v62];

      v34 = v27;
      if (v33)
      {
        v35 = v62[0];
        v36 = v56;
        sub_26EF3934C();
        v38 = v59;
        v37 = v60;
        v39 = v53;
        (*(v59 + 16))(v53, v31, v60);

        v40 = sub_26EF3881C();
        v41 = sub_26EF3B47C();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v61 = v34;
          v62[0] = v43;
          v44 = v43;
          *v42 = 136315394;
          v45 = sub_26EE40670(v52, v26, v62);

          *(v42 + 4) = v45;
          *(v42 + 12) = 2080;
          v46 = sub_26EF37D8C();
          v48 = v47;
          (*(v38 + 8))(v39, v37);
          v49 = sub_26EE40670(v46, v48, v62);

          *(v42 + 14) = v49;
          _os_log_impl(&dword_26EE01000, v40, v41, "Successfully moved archived data from path %s to path %s", v42, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2743842A0](v44, -1, -1);
          MEMORY[0x2743842A0](v42, -1, -1);

          (*(v54 + 8))(v56, v55);
        }

        else
        {

          (*(v38 + 8))(v39, v37);
          (*(v54 + 8))(v36, v55);
        }

        goto LABEL_10;
      }

      v50 = v62[0];

      sub_26EF37D1C();
    }

    else
    {

      (*(v18 + 104))(v22, *MEMORY[0x277D704E8], v17);
      (*(v59 + 16))(v16, v61, v60);
      (*(v57 + 104))(v16, *MEMORY[0x277D704B8], v12);
      sub_26EF38A4C();
      sub_26EEF17DC(&unk_2806C9CD0, MEMORY[0x277D70518]);
      swift_allocError();
      sub_26EF38A5C();
      v34 = v27;
    }

    swift_willThrow();
  }

LABEL_10:
  v51 = *MEMORY[0x277D85DE8];
}

uint64_t VoiceBankingSession.setUpSession()()
{
  v1[37] = v0;
  v2 = sub_26EF389FC();
  v1[38] = v2;
  v3 = *(v2 - 8);
  v1[39] = v3;
  v4 = *(v3 + 64) + 15;
  v1[40] = swift_task_alloc();
  v5 = sub_26EF38A2C();
  v1[41] = v5;
  v6 = *(v5 - 8);
  v1[42] = v6;
  v7 = *(v6 + 64) + 15;
  v1[43] = swift_task_alloc();
  v8 = sub_26EF395CC();
  v1[44] = v8;
  v9 = *(v8 - 8);
  v1[45] = v9;
  v10 = *(v9 + 64) + 15;
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v11 = sub_26EF38CDC();
  v1[48] = v11;
  v12 = *(v11 - 8);
  v1[49] = v12;
  v13 = *(v12 + 64) + 15;
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v14 = sub_26EF3883C();
  v1[55] = v14;
  v15 = *(v14 - 8);
  v1[56] = v15;
  v16 = *(v15 + 64) + 15;
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = sub_26EF3B2DC();
  v1[63] = sub_26EF3B2CC();
  v18 = sub_26EF3B29C();
  v1[64] = v18;
  v1[65] = v17;

  return MEMORY[0x2822009F8](sub_26EEE4EBC, v18, v17);
}

uint64_t sub_26EEE4EBC()
{
  v76 = v0;
  v1 = v0[37];
  swift_getKeyPath();
  v0[66] = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession___observationRegistrar;
  v0[36] = v1;
  v0[67] = sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  v2 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__configurationStage;
  v0[68] = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__configurationStage;
  swift_beginAccess();
  if (*(v1 + v2) - 3 >= 3)
  {
    v14 = v0[63];
    v15 = v0[61];

    sub_26EF3934C();
    v6 = sub_26EF3881C();
    v7 = sub_26EF3B47C();
    v16 = os_log_type_enabled(v6, v7);
    v9 = v0[61];
    v10 = v0[55];
    v11 = v0[56];
    if (v16)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "Assets are downloading. Bailing.";
      goto LABEL_7;
    }

LABEL_8:

    (*(v11 + 8))(v9, v10);
    v18 = v0[60];
    v17 = v0[61];
    v20 = v0[58];
    v19 = v0[59];
    v21 = v0[57];
    v23 = v0[53];
    v22 = v0[54];
    v25 = v0[51];
    v24 = v0[52];
    v26 = v0[50];
    v68 = v0[47];
    log = v0[46];
    v72 = v0[43];
    v73 = v0[40];

    v27 = v0[1];

    return v27();
  }

  v3 = v0[37];
  swift_getKeyPath();
  v0[34] = v3;
  sub_26EF3800C();

  if (sub_26EE9C28C(*(v1 + v2), 4u))
  {
    v4 = v0[63];
    v5 = v0[60];

    sub_26EF3934C();
    v6 = sub_26EF3881C();
    v7 = sub_26EF3B47C();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[60];
    v10 = v0[55];
    v11 = v0[56];
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "Scripts are loading. Bailing.";
LABEL_7:
      _os_log_impl(&dword_26EE01000, v6, v7, v13, v12, 2u);
      MEMORY[0x2743842A0](v12, -1, -1);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v29 = v0[59];
  v30 = v0[37];
  sub_26EF3934C();
  v31 = v30;
  v32 = sub_26EF3881C();
  v33 = sub_26EF3B47C();

  v34 = os_log_type_enabled(v32, v33);
  v35 = v0[59];
  v37 = v0[55];
  v36 = v0[56];
  if (v34)
  {
    loga = v32;
    v38 = v0[54];
    v69 = v33;
    v39 = v0[49];
    v64 = v0[48];
    v74 = v0[59];
    v40 = v0[37];
    v65 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v75 = v67;
    *v65 = 136315394;
    v41 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceCreationLocale;
    swift_beginAccess();
    (*(v39 + 16))(v38, v40 + v41, v64);
    v42 = sub_26EF38CAC();
    v66 = v36;
    v44 = v43;
    (*(v39 + 8))(v38, v64);
    v45 = sub_26EE40670(v42, v44, &v75);

    *(v65 + 4) = v45;
    *(v65 + 12) = 2080;
    swift_getKeyPath();
    v0[35] = v40;
    sub_26EF3800C();

    v46 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__trainingScriptType;
    swift_beginAccess();
    v47 = *(v40 + v46);
    v48 = sub_26EF3B0FC();
    v50 = sub_26EE40670(v48, v49, &v75);

    *(v65 + 14) = v50;
    _os_log_impl(&dword_26EE01000, loga, v69, "Will set up VoiceBankingSession with localeID: '%s' scriptType: '%s'", v65, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743842A0](v67, -1, -1);
    MEMORY[0x2743842A0](v65, -1, -1);

    v51 = *(v66 + 8);
    v51(v74, v37);
    v52 = &unk_2806CF000;
  }

  else
  {

    v51 = *(v36 + 8);
    v51(v35, v37);
    v52 = &unk_2806CF000;
  }

  v0[69] = v51;
  v53 = v0[62];
  v54 = v0[54];
  v55 = v0[48];
  v56 = v0[49];
  v57 = v0[37];
  v58 = v52[333];
  v0[70] = v58;
  swift_beginAccess();
  v59 = *(v56 + 16);
  v0[71] = v59;
  v0[72] = (v56 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v59(v54, v57 + v58, v55);
  v0[73] = sub_26EF38CAC();
  v0[74] = v60;
  v61 = *(v56 + 8);
  v0[75] = v61;
  v0[76] = (v56 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v61(v54, v55);
  v0[77] = *MEMORY[0x277D70748];
  v0[78] = *MEMORY[0x277D70760];
  v0[79] = sub_26EF3B2CC();
  v63 = sub_26EF3B29C();
  v0[80] = v63;
  v0[81] = v62;

  return MEMORY[0x2822009F8](sub_26EEE5534, v63, v62);
}

uint64_t sub_26EEE5534()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 616);
  v12 = *(v0 + 584);
  v3 = *(v0 + 496);
  v4 = *(v0 + 296);
  v5 = sub_26EF3B2CC();
  *(v0 + 656) = v5;
  v6 = swift_task_alloc();
  *(v0 + 664) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v12;
  *(v6 + 40) = v2;
  *(v6 + 48) = v1;
  v7 = *(MEMORY[0x277D859E0] + 4);
  v8 = swift_task_alloc();
  *(v0 + 672) = v8;
  *v8 = v0;
  v8[1] = sub_26EEE5670;
  v9 = MEMORY[0x277D85700];
  v10 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 1032, v5, v9, 0xD00000000000002DLL, 0x800000026EF46B30, sub_26EEF1CD4, v6, v10);
}

uint64_t sub_26EEE5670()
{
  v1 = *v0;
  v2 = *(*v0 + 672);
  v3 = *(*v0 + 664);
  v4 = *(*v0 + 656);
  v5 = *(*v0 + 592);
  v9 = *v0;

  v6 = *(v1 + 648);
  v7 = *(v1 + 640);

  return MEMORY[0x2822009F8](sub_26EEE57F4, v7, v6);
}

uint64_t sub_26EEE57F4()
{
  v1 = *(v0 + 632);

  *(v0 + 1040) = *(v0 + 1032);
  v2 = *(v0 + 520);
  v3 = *(v0 + 512);

  return MEMORY[0x2822009F8](sub_26EEE5864, v3, v2);
}

uint64_t sub_26EEE5864()
{
  if (*(v0 + 1040))
  {
    goto LABEL_3;
  }

  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v3 = *(v0 + 352);
  v4 = *(v0 + 360);
  (*(**(*(v0 + 296) + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingNetworkModel) + 104))();
  (*(v4 + 104))(v2, *MEMORY[0x277CD8F78], v3);
  v5 = sub_26EF395BC();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
LABEL_3:
    *(v0 + 1033) = *(*(v0 + 296) + *(v0 + 544));
    *(v0 + 680) = sub_26EE1C384();
    if (sub_26EF3B0AC())
    {
      *(*(v0 + 296) + *(v0 + 544)) = 0;
    }

    else
    {
      v7 = *(v0 + 536);
      v8 = *(v0 + 528);
      v9 = *(v0 + 296);
      swift_getKeyPath();
      v10 = swift_task_alloc();
      *(v10 + 16) = v9;
      *(v10 + 24) = 0;
      *(v0 + 232) = v9;
      sub_26EF37FFC();
    }

    v11 = *(v0 + 608);
    v12 = *(v0 + 600);
    v13 = *(v0 + 576);
    v14 = *(v0 + 568);
    v15 = *(v0 + 560);
    v16 = *(v0 + 424);
    v17 = *(v0 + 384);
    v18 = *(v0 + 296);
    v19 = *MEMORY[0x277D70768];
    *(v0 + 688) = *MEMORY[0x277D70768];
    v14(v16, v18 + v15, v17);
    v20 = v19;
    v21 = sub_26EF38CAC();
    v23 = v22;
    *(v0 + 696) = v22;
    v12(v16, v17);
    v24 = swift_task_alloc();
    *(v0 + 704) = v24;
    *v24 = v0;
    v24[1] = sub_26EEE5CB0;
    v25 = *(v0 + 296);

    return VoiceBankingSession.fetchTrainingScriptItems(localeID:scriptType:)(v21, v23, v20);
  }

  else
  {
    v27 = *(v0 + 504);
    v29 = *(v0 + 336);
    v28 = *(v0 + 344);
    v31 = *(v0 + 320);
    v30 = *(v0 + 328);
    v32 = *(v0 + 304);
    v33 = *(v0 + 312);

    (*(v29 + 104))(v28, *MEMORY[0x277D704E0], v30);
    (*(v33 + 104))(v31, *MEMORY[0x277D704D0], v32);
    sub_26EF38A4C();
    sub_26EEF17DC(&unk_2806C9CD0, MEMORY[0x277D70518]);
    swift_allocError();
    sub_26EF38A5C();
    swift_willThrow();
    v35 = *(v0 + 480);
    v34 = *(v0 + 488);
    v37 = *(v0 + 464);
    v36 = *(v0 + 472);
    v38 = *(v0 + 456);
    v40 = *(v0 + 424);
    v39 = *(v0 + 432);
    v42 = *(v0 + 408);
    v41 = *(v0 + 416);
    v43 = *(v0 + 400);
    v45 = *(v0 + 376);
    v46 = *(v0 + 368);
    v47 = *(v0 + 344);
    v48 = *(v0 + 320);

    v44 = *(v0 + 8);

    return v44();
  }
}

uint64_t sub_26EEE5CB0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 704);
  v6 = *v2;
  v4[89] = v1;

  v7 = v4[87];
  if (v1)
  {
    v8 = v4[86];

    v9 = v4[65];
    v10 = v4[64];
    v11 = sub_26EEE8378;
  }

  else
  {

    v4[90] = a1;
    v9 = v4[65];
    v10 = v4[64];
    v11 = sub_26EEE5E08;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_26EEE5E08()
{
  v1 = v0[90];
  v2 = v0[86];
  v22 = v0[75];
  v23 = v0[76];
  v20 = v0[71];
  v21 = v0[72];
  v3 = v0[67];
  v4 = v0[66];
  v5 = v0[52];
  v18 = v0[48];
  v19 = v0[70];
  v6 = v0[37];
  swift_getKeyPath();
  v0[28] = v6;
  sub_26EF3800C();

  v0[24] = v6;
  swift_getKeyPath();
  sub_26EF3802C();

  v7 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__trainingScriptItems;
  v0[91] = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__trainingScriptItems;
  swift_beginAccess();
  v8 = *(v6 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v6 + v7);
  *(v6 + v7) = 0x8000000000000000;
  sub_26EEF0EF8(v1, v2, isUniquelyReferenced_nonNull_native, &qword_2806C9380, &unk_26EF42CE0, type metadata accessor for TTSVBSiriTrainingScriptType);

  *(v6 + v7) = v24;
  swift_endAccess();
  v0[25] = v6;
  swift_getKeyPath();
  sub_26EF3801C();

  v10 = *MEMORY[0x277D70770];
  v0[92] = *MEMORY[0x277D70770];
  v20(v5, v6 + v19, v18);
  v11 = v10;
  v12 = sub_26EF38CAC();
  v14 = v13;
  v0[93] = v13;
  v22(v5, v18);
  v15 = swift_task_alloc();
  v0[94] = v15;
  *v15 = v0;
  v15[1] = sub_26EEE6070;
  v16 = v0[37];

  return VoiceBankingSession.fetchTrainingScriptItems(localeID:scriptType:)(v12, v14, v11);
}

uint64_t sub_26EEE6070(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 752);
  v6 = *v2;
  v4[95] = v1;

  v7 = v4[93];
  if (v1)
  {
    v8 = v4[92];

    v9 = v4[65];
    v10 = v4[64];
    v11 = sub_26EEE849C;
  }

  else
  {

    v4[96] = a1;
    v9 = v4[65];
    v10 = v4[64];
    v11 = sub_26EEE61C8;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_26EEE61C8()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 736);
  v3 = *(v0 + 728);
  v4 = *(v0 + 536);
  v5 = *(v0 + 528);
  v6 = *(v0 + 296);
  swift_getKeyPath();
  *(v0 + 208) = v6;
  sub_26EF3800C();

  *(v0 + 216) = v6;
  swift_getKeyPath();
  sub_26EF3802C();

  swift_beginAccess();
  v7 = *(v6 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *(v6 + v3);
  *(v6 + v3) = 0x8000000000000000;
  sub_26EEF0EF8(v1, v2, isUniquelyReferenced_nonNull_native, &qword_2806C9380, &unk_26EF42CE0, type metadata accessor for TTSVBSiriTrainingScriptType);

  *(v6 + v3) = v32;
  swift_endAccess();
  *(v0 + 184) = v6;
  swift_getKeyPath();
  sub_26EF3801C();

  v9 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__assetDownloadProgress;
  *(v0 + 776) = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__assetDownloadProgress;
  swift_beginAccess();
  v10 = *(v0 + 760);
  if (*(v6 + v9) != 33)
  {
    v11 = *(v0 + 536);
    v12 = *(v0 + 528);
    v13 = *(v0 + 296);
    swift_getKeyPath();
    v14 = swift_task_alloc();
    *(v14 + 16) = v13;
    *(v14 + 24) = 33;
    *(v0 + 240) = v13;
    sub_26EF37FFC();
  }

  *(v0 + 784) = v10;
  v15 = *(v0 + 616);
  v31 = *(v0 + 608);
  v16 = *(v0 + 600);
  v17 = *(v0 + 576);
  v18 = *(v0 + 568);
  v19 = *(v0 + 560);
  v20 = *(v0 + 496);
  v21 = *(v0 + 432);
  v22 = *(v0 + 384);
  v23 = *(v0 + 296);
  v24 = sub_26EF3922C();
  *(v0 + 1041) = v24 & 1;
  v25 = *MEMORY[0x277D70750];
  *(v0 + 792) = *MEMORY[0x277D70750];
  if ((v24 & 1) == 0)
  {
    v25 = v15;
  }

  v26 = v25;
  v18(v21, v23 + v19, v22);
  *(v0 + 800) = sub_26EF38CAC();
  *(v0 + 808) = v27;
  v16(v21, v22);
  *(v0 + 816) = *MEMORY[0x277D70758];
  *(v0 + 824) = sub_26EF3B2CC();
  v29 = sub_26EF3B29C();
  *(v0 + 832) = v29;
  *(v0 + 840) = v28;

  return MEMORY[0x2822009F8](sub_26EEE64E4, v29, v28);
}

uint64_t sub_26EEE64E4()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 808);
  v3 = *(v0 + 800);
  v4 = (v0 + 792);
  v5 = *(v0 + 496);
  v6 = *(v0 + 296);
  if (!*(v0 + 1041))
  {
    v4 = (v0 + 616);
  }

  v7 = *v4;
  v8 = sub_26EF3B2CC();
  *(v0 + 848) = v8;
  v9 = swift_task_alloc();
  *(v0 + 856) = v9;
  v9[2] = v6;
  v9[3] = v3;
  v9[4] = v2;
  v9[5] = v7;
  v9[6] = v1;
  v10 = *(MEMORY[0x277D859E0] + 4);
  v11 = swift_task_alloc();
  *(v0 + 864) = v11;
  *v11 = v0;
  v11[1] = sub_26EEE662C;
  v12 = MEMORY[0x277D85700];
  v13 = MEMORY[0x277D839B0];

  return MEMORY[0x2822007B8](v0 + 1035, v8, v12, 0xD00000000000002DLL, 0x800000026EF46B30, sub_26EEF31F8, v9, v13);
}

uint64_t sub_26EEE662C()
{
  v1 = *v0;
  v2 = *(*v0 + 864);
  v3 = *(*v0 + 856);
  v4 = *(*v0 + 848);
  v5 = *(*v0 + 808);
  v9 = *v0;

  v6 = *(v1 + 840);
  v7 = *(v1 + 832);

  return MEMORY[0x2822009F8](sub_26EEE67B0, v7, v6);
}

uint64_t sub_26EEE67B0()
{
  v1 = *(v0 + 824);

  *(v0 + 1042) = *(v0 + 1035);
  v2 = *(v0 + 520);
  v3 = *(v0 + 512);

  return MEMORY[0x2822009F8](sub_26EEE6820, v3, v2);
}

uint64_t sub_26EEE6820()
{
  if (*(v0 + 1042) == 1)
  {
    *(v0 + 952) = *(v0 + 784);
    sub_26EE1FAB8(0, &qword_2806C9C00, 0x277CBEBD0);
    v1 = sub_26EF3B48C();
    v2 = sub_26EF3B4CC();

    if (v2)
    {
      v3 = *(v0 + 464);
      sub_26EF3934C();
      v4 = sub_26EF3881C();
      v5 = sub_26EF3B47C();
      v6 = os_log_type_enabled(v4, v5);
      v7 = *(v0 + 552);
      v8 = *(v0 + 464);
      v9 = *(v0 + 440);
      v10 = *(v0 + 448);
      if (v6)
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_26EE01000, v4, v5, "Internal UseServerBasedASR=true. Will skip trying to download offline ASR models", v11, 2u);
        MEMORY[0x2743842A0](v11, -1, -1);
      }

      v7(v8, v9);
      v12 = *(v0 + 296);
      if (*(v12 + *(v0 + 776)) != 100)
      {
        v13 = *(v0 + 536);
        v14 = *(v0 + 528);
        swift_getKeyPath();
        v15 = swift_task_alloc();
        *(v15 + 16) = v12;
        *(v15 + 24) = 100;
        *(v0 + 264) = v12;
        sub_26EF37FFC();
      }

      v16 = swift_task_alloc();
      *(v0 + 1016) = v16;
      *v16 = v0;
      v16[1] = sub_26EEE8104;
      v17 = *(v0 + 296);

      return VoiceBankingSession.loadSamples()();
    }

    else
    {
      v20 = *(v0 + 576);
      v21 = *(v0 + 568);
      v22 = *(v0 + 560);
      v23 = *(v0 + 432);
      v24 = *(v0 + 384);
      v25 = *(v0 + 296);
      *(v0 + 960) = *(v25 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingManager);
      v26 = sub_26EF388BC();
      *(v0 + 968) = sub_26EF38EAC();

      v21(v23, v25 + v22, v24);
      v27 = *(MEMORY[0x277D706B0] + 4);
      v47 = (*MEMORY[0x277D706B0] + MEMORY[0x277D706B0]);
      v28 = swift_task_alloc();
      *(v0 + 976) = v28;
      *v28 = v0;
      v28[1] = sub_26EEE74C0;
      v29 = *(v0 + 432);

      return v47(v29);
    }
  }

  else
  {
    v19 = *(v0 + 680);
    *(v0 + 1036) = *(*(v0 + 296) + *(v0 + 544));
    *(v0 + 1037) = 1;
    if (sub_26EF3B0AC())
    {
      *(*(v0 + 296) + *(v0 + 544)) = 1;
    }

    else
    {
      v30 = *(v0 + 784);
      v31 = *(v0 + 536);
      v32 = *(v0 + 528);
      v33 = *(v0 + 296);
      swift_getKeyPath();
      v34 = swift_task_alloc();
      *(v34 + 16) = v33;
      *(v34 + 24) = 1;
      *(v0 + 248) = v33;
      sub_26EF37FFC();
    }

    v35 = *(v0 + 608);
    v36 = *(v0 + 600);
    v37 = *(v0 + 576);
    v38 = *(v0 + 496);
    v39 = *(v0 + 408);
    v40 = *(v0 + 384);
    v41 = *(v0 + 296);
    (*(v0 + 568))(v39, &v41[*(v0 + 560)], v40);
    *(v0 + 872) = sub_26EF38CAC();
    *(v0 + 880) = v42;
    v36(v39, v40);
    v43 = swift_allocObject();
    *(v0 + 888) = v43;
    *(v43 + 16) = v41;
    v44 = v41;
    *(v0 + 896) = sub_26EF3B2CC();
    v46 = sub_26EF3B29C();
    *(v0 + 904) = v46;
    *(v0 + 912) = v45;

    return MEMORY[0x2822009F8](sub_26EEE6CCC, v46, v45);
  }
}

uint64_t sub_26EEE6CCC()
{
  v1 = *(v0 + 888);
  v2 = *(v0 + 880);
  v3 = *(v0 + 872);
  v4 = *(v0 + 816);
  v5 = (v0 + 792);
  v6 = *(v0 + 496);
  v7 = *(v0 + 296);
  if (!*(v0 + 1041))
  {
    v5 = (v0 + 616);
  }

  v8 = *v5;
  v9 = sub_26EF3B2CC();
  *(v0 + 920) = v9;
  v10 = swift_task_alloc();
  *(v0 + 928) = v10;
  v10[2] = v7;
  v10[3] = v3;
  v10[4] = v2;
  v10[5] = v8;
  v10[6] = v4;
  v10[7] = sub_26EEF1D3C;
  v10[8] = v1;
  v11 = *(MEMORY[0x277D85A40] + 4);
  v12 = swift_task_alloc();
  *(v0 + 936) = v12;
  *v12 = v0;
  v12[1] = sub_26EEE6E30;
  v13 = MEMORY[0x277D85700];
  v14 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v12, v9, v13, 0xD000000000000031, 0x800000026EF46930, sub_26EEF31FC, v10, v14);
}

uint64_t sub_26EEE6E30()
{
  v2 = *v1;
  v3 = *(*v1 + 936);
  v11 = *v1;
  *(*v1 + 944) = v0;

  if (v0)
  {
    v4 = v2[114];
    v5 = v2[113];
    v6 = sub_26EEE72E0;
  }

  else
  {
    v7 = v2[116];
    v8 = v2[115];
    v9 = v2[110];

    v4 = v2[114];
    v5 = v2[113];
    v6 = sub_26EEE6F74;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_26EEE6F74()
{
  v1 = v0[112];
  v2 = v0[111];

  v3 = v0[65];
  v4 = v0[64];

  return MEMORY[0x2822009F8](sub_26EEE6FE8, v4, v3);
}

uint64_t sub_26EEE6FE8()
{
  v0[119] = v0[118];
  sub_26EE1FAB8(0, &qword_2806C9C00, 0x277CBEBD0);
  v1 = sub_26EF3B48C();
  v2 = sub_26EF3B4CC();

  if (v2)
  {
    v3 = v0[58];
    sub_26EF3934C();
    v4 = sub_26EF3881C();
    v5 = sub_26EF3B47C();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[69];
    v8 = v0[58];
    v9 = v0[55];
    v10 = v0[56];
    if (v6)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_26EE01000, v4, v5, "Internal UseServerBasedASR=true. Will skip trying to download offline ASR models", v11, 2u);
      MEMORY[0x2743842A0](v11, -1, -1);
    }

    v7(v8, v9);
    v12 = v0[37];
    if (*(v12 + v0[97]) != 100)
    {
      v13 = v0[67];
      v14 = v0[66];
      swift_getKeyPath();
      v15 = swift_task_alloc();
      *(v15 + 16) = v12;
      *(v15 + 24) = 100;
      v0[33] = v12;
      sub_26EF37FFC();
    }

    v16 = swift_task_alloc();
    v0[127] = v16;
    *v16 = v0;
    v16[1] = sub_26EEE8104;
    v17 = v0[37];

    return VoiceBankingSession.loadSamples()();
  }

  else
  {
    v19 = v0[72];
    v20 = v0[71];
    v21 = v0[70];
    v22 = v0[54];
    v23 = v0[48];
    v24 = v0[37];
    v0[120] = *(v24 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingManager);
    v25 = sub_26EF388BC();
    v0[121] = sub_26EF38EAC();

    v20(v22, v24 + v21, v23);
    v26 = *(MEMORY[0x277D706B0] + 4);
    v29 = (*MEMORY[0x277D706B0] + MEMORY[0x277D706B0]);
    v27 = swift_task_alloc();
    v0[122] = v27;
    *v27 = v0;
    v27[1] = sub_26EEE74C0;
    v28 = v0[54];

    return v29(v28);
  }
}

uint64_t sub_26EEE72E0()
{
  v1 = v0[116];
  v2 = v0[115];
  v3 = v0[112];
  v4 = v0[111];
  v5 = v0[110];

  v6 = v0[65];
  v7 = v0[64];

  return MEMORY[0x2822009F8](sub_26EEE7380, v7, v6);
}

uint64_t sub_26EEE7380()
{
  v1 = (v0 + 792);
  v2 = *(v0 + 504);
  if (!*(v0 + 1041))
  {
    v1 = (v0 + 616);
  }

  v3 = *v1;

  v5 = *(v0 + 480);
  v4 = *(v0 + 488);
  v7 = *(v0 + 464);
  v6 = *(v0 + 472);
  v8 = *(v0 + 456);
  v10 = *(v0 + 424);
  v9 = *(v0 + 432);
  v12 = *(v0 + 408);
  v11 = *(v0 + 416);
  v13 = *(v0 + 400);
  v16 = *(v0 + 376);
  v17 = *(v0 + 368);
  v18 = *(v0 + 344);
  v19 = *(v0 + 320);
  v20 = *(v0 + 944);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_26EEE74C0(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 976);
  v4 = *(*v1 + 968);
  v5 = *(*v1 + 608);
  v6 = *(*v1 + 600);
  v7 = *(*v1 + 432);
  v8 = *(*v1 + 384);
  v12 = *v1;
  *(*v1 + 1043) = a1;

  v6(v7, v8);
  v9 = *(v2 + 520);
  v10 = *(v2 + 512);

  return MEMORY[0x2822009F8](sub_26EEE7674, v10, v9);
}

uint64_t sub_26EEE7674()
{
  v94 = v0;
  if (*(v0 + 1043))
  {
    v1 = *(v0 + 456);
    v2 = *(v0 + 296);
    sub_26EF3934C();
    v3 = v2;
    v4 = sub_26EF3881C();
    v5 = sub_26EF3B47C();

    if (os_log_type_enabled(v4, v5))
    {
      v82 = *(v0 + 600);
      v83 = *(v0 + 608);
      v81 = *(v0 + 576);
      v6 = *(v0 + 568);
      v7 = *(v0 + 560);
      v89 = *(v0 + 456);
      v91 = *(v0 + 552);
      v8 = *(v0 + 432);
      v85 = *(v0 + 448);
      v87 = *(v0 + 440);
      v9 = *(v0 + 384);
      v10 = *(v0 + 296);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v93 = v12;
      *v11 = 136315138;
      v6(v8, v10 + v7, v9);
      v13 = sub_26EF38C7C();
      v15 = v14;
      v82(v8, v9);
      v16 = sub_26EE40670(v13, v15, &v93);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_26EE01000, v4, v5, "%s speech recognition asset already downloaded.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x2743842A0](v12, -1, -1);
      MEMORY[0x2743842A0](v11, -1, -1);

      v91(v89, v87);
    }

    else
    {
      v32 = *(v0 + 552);
      v34 = *(v0 + 448);
      v33 = *(v0 + 456);
      v35 = *(v0 + 440);

      v32(v33, v35);
    }

    v36 = *(v0 + 296);
    if (*(v36 + *(v0 + 776)) != 100)
    {
      v37 = *(v0 + 952);
      v38 = *(v0 + 536);
      v39 = *(v0 + 528);
      swift_getKeyPath();
      v40 = swift_task_alloc();
      *(v40 + 16) = v36;
      *(v40 + 24) = 100;
      *(v0 + 264) = v36;
      sub_26EF37FFC();
    }

    v41 = swift_task_alloc();
    *(v0 + 1016) = v41;
    *v41 = v0;
    v41[1] = sub_26EEE8104;
    v42 = *(v0 + 296);

    return VoiceBankingSession.loadSamples()();
  }

  v18 = *(v0 + 368);
  v17 = *(v0 + 376);
  v19 = *(v0 + 352);
  v20 = *(v0 + 360);
  (*(**(*(v0 + 296) + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingNetworkModel) + 104))();
  (*(v20 + 104))(v18, *MEMORY[0x277CD8F78], v19);
  v21 = sub_26EF395BC();
  v22 = *(v20 + 8);
  v22(v18, v19);
  v22(v17, v19);
  if ((v21 & 1) == 0)
  {
    v31 = MEMORY[0x277D704D0];
    goto LABEL_17;
  }

  v23 = *(v0 + 960);
  v24 = sub_26EF388BC();
  v25 = sub_26EF38EAC();

  v26 = sub_26EF3928C();
  result = sub_26EF3922C();
  v28 = 533700000;
  if (result)
  {
    v28 = 1090000000;
  }

  v29 = __OFADD__(v26, v28);
  v30 = v26 + v28;
  if (v29)
  {
    __break(1u);
    return result;
  }

  if (sub_26EEF1D58() < v30)
  {
    v31 = MEMORY[0x277D704A8];
LABEL_17:
    v43 = (v0 + 792);
    v44 = *(v0 + 504);
    v46 = *(v0 + 336);
    v45 = *(v0 + 344);
    v48 = *(v0 + 320);
    v47 = *(v0 + 328);
    v49 = *(v0 + 304);
    v50 = *(v0 + 312);
    if (!*(v0 + 1041))
    {
      v43 = (v0 + 616);
    }

    v51 = *v43;

    (*(v46 + 104))(v45, *MEMORY[0x277D704E0], v47);
    (*(v50 + 104))(v48, *v31, v49);
    sub_26EF38A4C();
    sub_26EEF17DC(&unk_2806C9CD0, MEMORY[0x277D70518]);
    swift_allocError();
    sub_26EF38A5C();
    swift_willThrow();

    v53 = *(v0 + 480);
    v52 = *(v0 + 488);
    v55 = *(v0 + 464);
    v54 = *(v0 + 472);
    v56 = *(v0 + 456);
    v58 = *(v0 + 424);
    v57 = *(v0 + 432);
    v60 = *(v0 + 408);
    v59 = *(v0 + 416);
    v61 = *(v0 + 400);
    v84 = *(v0 + 376);
    v86 = *(v0 + 368);
    v88 = *(v0 + 344);
    v90 = *(v0 + 320);

    v62 = *(v0 + 8);

    return v62();
  }

  v63 = *(v0 + 680);
  *(v0 + 1038) = *(*(v0 + 296) + *(v0 + 544));
  *(v0 + 1039) = 2;
  if (sub_26EF3B0AC())
  {
    *(*(v0 + 296) + *(v0 + 544)) = 2;
  }

  else
  {
    v64 = *(v0 + 952);
    v65 = *(v0 + 536);
    v66 = *(v0 + 528);
    v67 = *(v0 + 296);
    swift_getKeyPath();
    v68 = swift_task_alloc();
    *(v68 + 16) = v67;
    *(v68 + 24) = 2;
    *(v0 + 256) = v67;
    sub_26EF37FFC();
  }

  v69 = *(v0 + 960);
  v70 = *(v0 + 576);
  v71 = *(v0 + 568);
  v72 = *(v0 + 560);
  v73 = *(v0 + 400);
  v74 = *(v0 + 384);
  v75 = *(v0 + 296);
  v76 = sub_26EF388BC();
  *(v0 + 984) = sub_26EF38EAC();

  v71(v73, v75 + v72, v74);
  v77 = swift_allocObject();
  *(v0 + 992) = v77;
  swift_unknownObjectWeakInit();
  v78 = *(MEMORY[0x277D706B8] + 4);
  v92 = (*MEMORY[0x277D706B8] + MEMORY[0x277D706B8]);

  v79 = swift_task_alloc();
  *(v0 + 1000) = v79;
  *v79 = v0;
  v79[1] = sub_26EEE7E0C;
  v80 = *(v0 + 400);

  return v92(v80, sub_26EEF2138, v77);
}

uint64_t sub_26EEE7E0C()
{
  v2 = *v1;
  v3 = *(*v1 + 1000);
  v4 = *v1;
  *(v2 + 1008) = v0;

  v5 = *(v2 + 992);
  v6 = *(v2 + 984);
  v7 = *(v2 + 608);
  (*(v2 + 600))(*(v2 + 400), *(v2 + 384));

  if (v0)
  {

    v8 = *(v2 + 520);
    v9 = *(v2 + 512);
    v10 = sub_26EEE85C0;
  }

  else
  {

    v8 = *(v2 + 520);
    v9 = *(v2 + 512);
    v10 = sub_26EEE7FCC;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_26EEE7FCC()
{
  v1 = v0[37];
  if (*(v1 + v0[97]) != 100)
  {
    v2 = v0[126];
    v3 = v0[67];
    v4 = v0[66];
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v1;
    *(v5 + 24) = 100;
    v0[33] = v1;
    sub_26EF37FFC();
  }

  v6 = swift_task_alloc();
  v0[127] = v6;
  *v6 = v0;
  v6[1] = sub_26EEE8104;
  v7 = v0[37];

  return VoiceBankingSession.loadSamples()();
}

uint64_t sub_26EEE8104()
{
  v2 = *v1;
  v3 = *(*v1 + 1016);
  v4 = *v1;
  *(*v1 + 1024) = v0;

  v5 = *(v2 + 520);
  v6 = *(v2 + 512);
  if (v0)
  {
    v7 = sub_26EEE870C;
  }

  else
  {
    v7 = sub_26EEE8240;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_26EEE8240()
{
  v1 = (v0 + 792);
  v2 = *(v0 + 504);
  if (!*(v0 + 1041))
  {
    v1 = (v0 + 616);
  }

  v3 = *v1;

  v5 = *(v0 + 480);
  v4 = *(v0 + 488);
  v7 = *(v0 + 464);
  v6 = *(v0 + 472);
  v8 = *(v0 + 456);
  v10 = *(v0 + 424);
  v9 = *(v0 + 432);
  v12 = *(v0 + 408);
  v11 = *(v0 + 416);
  v13 = *(v0 + 400);
  v16 = *(v0 + 376);
  v17 = *(v0 + 368);
  v18 = *(v0 + 344);
  v19 = *(v0 + 320);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_26EEE8378()
{
  v1 = v0[63];

  v3 = v0[60];
  v2 = v0[61];
  v5 = v0[58];
  v4 = v0[59];
  v6 = v0[57];
  v8 = v0[53];
  v7 = v0[54];
  v10 = v0[51];
  v9 = v0[52];
  v11 = v0[50];
  v14 = v0[47];
  v15 = v0[46];
  v16 = v0[43];
  v17 = v0[40];
  v18 = v0[89];

  v12 = v0[1];

  return v12();
}

uint64_t sub_26EEE849C()
{
  v1 = v0[63];

  v3 = v0[60];
  v2 = v0[61];
  v5 = v0[58];
  v4 = v0[59];
  v6 = v0[57];
  v8 = v0[53];
  v7 = v0[54];
  v10 = v0[51];
  v9 = v0[52];
  v11 = v0[50];
  v14 = v0[47];
  v15 = v0[46];
  v16 = v0[43];
  v17 = v0[40];
  v18 = v0[95];

  v12 = v0[1];

  return v12();
}

uint64_t sub_26EEE85C0()
{
  v1 = *(v0 + 992);
  v2 = (v0 + 792);
  v3 = *(v0 + 504);
  if (!*(v0 + 1041))
  {
    v2 = (v0 + 616);
  }

  v4 = *v2;

  v6 = *(v0 + 480);
  v5 = *(v0 + 488);
  v8 = *(v0 + 464);
  v7 = *(v0 + 472);
  v9 = *(v0 + 456);
  v11 = *(v0 + 424);
  v10 = *(v0 + 432);
  v13 = *(v0 + 408);
  v12 = *(v0 + 416);
  v14 = *(v0 + 400);
  v17 = *(v0 + 376);
  v18 = *(v0 + 368);
  v19 = *(v0 + 344);
  v20 = *(v0 + 320);
  v21 = *(v0 + 1008);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_26EEE870C()
{
  v1 = (v0 + 792);
  v2 = *(v0 + 504);
  if (!*(v0 + 1041))
  {
    v1 = (v0 + 616);
  }

  v3 = *v1;

  v5 = *(v0 + 480);
  v4 = *(v0 + 488);
  v7 = *(v0 + 464);
  v6 = *(v0 + 472);
  v8 = *(v0 + 456);
  v10 = *(v0 + 424);
  v9 = *(v0 + 432);
  v12 = *(v0 + 408);
  v11 = *(v0 + 416);
  v13 = *(v0 + 400);
  v16 = *(v0 + 376);
  v17 = *(v0 + 368);
  v18 = *(v0 + 344);
  v19 = *(v0 + 320);
  v20 = *(v0 + 1024);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_26EEE884C(uint64_t result, float a2)
{
  if (a2 > 0.0)
  {
    v2 = a2 * 33.0;
    if (LODWORD(v2) >> 23 > 0xFE)
    {
      __break(1u);
    }

    else if (v2 > -9.2234e18)
    {
      if (v2 < 9.2234e18)
      {
        v3 = v2 + 33;
        if (!__OFADD__(v2, 33))
        {
          v4 = result;
          v5 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__assetDownloadProgress;
          result = swift_beginAccess();
          if (*(v4 + v5) != v3)
          {
            KeyPath = swift_getKeyPath();
            MEMORY[0x28223BE20](KeyPath, v7);
            sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
            sub_26EF37FFC();
          }

          return result;
        }

LABEL_12:
        __break(1u);
        return result;
      }

LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

void sub_26EEE89CC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  if (a1 < 1)
  {
LABEL_8:

    return;
  }

  v4 = a1 / 100.0 * 33.0;
  if (v4 == INFINITY)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = v4 + 66;
  if (__OFADD__(v4, 66))
  {
LABEL_14:
    __break(1u);
    return;
  }

  v6 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__assetDownloadProgress;
  swift_beginAccess();
  if (*&v3[v6] == v5)
  {
    goto LABEL_8;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath, v8);
  sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF37FFC();
}

uint64_t VoiceBankingSession.loadSamples()()
{
  v1[32] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9CB0, &qword_26EF3DD20) - 8) + 64) + 15;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v3 = sub_26EF3883C();
  v1[36] = v3;
  v4 = *(v3 - 8);
  v1[37] = v4;
  v5 = *(v4 + 64) + 15;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  sub_26EF3B2DC();
  v1[43] = sub_26EF3B2CC();
  v7 = sub_26EF3B29C();
  v1[44] = v7;
  v1[45] = v6;

  return MEMORY[0x2822009F8](sub_26EEE8D10, v7, v6);
}

uint64_t sub_26EEE8D10()
{
  v91 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 256);
  sub_26EF3934C();
  v3 = v2;
  v4 = sub_26EF3881C();
  v5 = sub_26EF3B47C();

  if (os_log_type_enabled(v4, v5))
  {
    v84 = *(v0 + 296);
    v86 = *(v0 + 288);
    v88 = *(v0 + 336);
    v6 = *(v0 + 256);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v90[0] = v8;
    *v7 = 136315138;
    swift_getKeyPath();
    *(v0 + 248) = v6;
    sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
    sub_26EF3800C();

    v9 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__trainingScriptType;
    swift_beginAccess();
    v10 = *(v6 + v9);
    v11 = sub_26EF3B0FC();
    v13 = sub_26EE40670(v11, v12, v90);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_26EE01000, v4, v5, "Attempting to load samples for training script type %s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x2743842A0](v8, -1, -1);
    MEMORY[0x2743842A0](v7, -1, -1);

    v14 = *(v84 + 8);
    v14(v88, v86);
  }

  else
  {
    v15 = *(v0 + 336);
    v16 = *(v0 + 288);
    v17 = *(v0 + 296);

    v14 = *(v17 + 8);
    v14(v15, v16);
  }

  *(v0 + 368) = v14;
  v18 = *(v0 + 280);
  v19 = *(v0 + 256);
  v20 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceID;
  swift_beginAccess();
  v87 = v19;
  sub_26EE13B88(v19 + v20, v18, &qword_2806C9CB0, &qword_26EF3DD20);
  v21 = sub_26EF37EDC();
  *(v0 + 376) = v21;
  v22 = *(v21 - 8);
  *(v0 + 384) = v22;
  v85 = *(v22 + 48);
  v89 = v14;
  if (v85(v18, 1, v21) == 1)
  {
    v23 = *(v0 + 344);
    v24 = *(v0 + 280);

    sub_26EE14578(v24, &qword_2806C9CB0, &qword_26EF3DD20);
LABEL_15:
    v44 = *(v0 + 304);
    v45 = *(v0 + 256);
    sub_26EF3934C();
    v46 = v45;
    v47 = sub_26EF3881C();
    v48 = sub_26EF3B45C();

    v49 = os_log_type_enabled(v47, v48);
    v51 = *(v0 + 296);
    v50 = *(v0 + 304);
    v52 = *(v0 + 288);
    if (v49)
    {
      v83 = *(v0 + 304);
      v54 = *(v0 + 256);
      v53 = *(v0 + 264);
      v55 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v90[0] = v82;
      *v55 = 136315394;
      sub_26EE13B88(v87 + v20, v53, &qword_2806C9CB0, &qword_26EF3DD20);
      v56 = v85(v53, 1, v21);
      sub_26EE14578(v53, &qword_2806C9CB0, &qword_26EF3DD20);
      if (v56 == 1)
      {
        v57 = 0x63696F76206C696ELL;
      }

      else
      {
        v57 = 0;
      }

      if (v56 == 1)
      {
        v58 = 0xEB00000000444965;
      }

      else
      {
        v58 = 0xE000000000000000;
      }

      v59 = sub_26EE40670(v57, v58, v90);

      *(v55 + 4) = v59;
      *(v55 + 12) = 2080;
      swift_getKeyPath();
      *(v0 + 192) = v54;
      sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
      sub_26EF3800C();

      v60 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__trainingScriptItems;
      swift_beginAccess();
      if (*(*(v54 + v60) + 16))
      {
        v61 = 0;
      }

      else
      {
        v61 = 0xD000000000000016;
      }

      if (*(*(v54 + v60) + 16))
      {
        v62 = 0xE000000000000000;
      }

      else
      {
        v62 = 0x800000026EF46B60;
      }

      v63 = sub_26EE40670(v61, v62, v90);

      *(v55 + 14) = v63;
      _os_log_impl(&dword_26EE01000, v47, v48, "Failed to load samples because of %s%s", v55, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2743842A0](v82, -1, -1);
      MEMORY[0x2743842A0](v55, -1, -1);

      v89(v83, v52);
    }

    else
    {

      v14(v50, v52);
    }

    v64 = *(v0 + 256);
    v65 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__configurationStage;
    swift_beginAccess();
    *(v0 + 472) = *(v64 + v65);
    *(v0 + 473) = 3;
    sub_26EE1C384();
    if (sub_26EF3B0AC())
    {
      *(v64 + v65) = 3;
    }

    else
    {
      v66 = *(v0 + 256);
      swift_getKeyPath();
      v67 = swift_task_alloc();
      *(v67 + 16) = v66;
      *(v67 + 24) = 3;
      *(v0 + 184) = v66;
      sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
      sub_26EF37FFC();
    }

    v69 = *(v0 + 328);
    v68 = *(v0 + 336);
    v71 = *(v0 + 312);
    v70 = *(v0 + 320);
    v72 = *(v0 + 304);
    v74 = *(v0 + 272);
    v73 = *(v0 + 280);
    v75 = *(v0 + 264);

    v76 = *(v0 + 8);

    return v76();
  }

  v25 = *(v0 + 256);
  sub_26EE14578(*(v0 + 280), &qword_2806C9CB0, &qword_26EF3DD20);
  swift_getKeyPath();
  *(v0 + 392) = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession___observationRegistrar;
  *(v0 + 200) = v25;
  *(v0 + 400) = sub_26EEF17DC(&qword_2806C65C0, type metadata accessor for VoiceBankingSession);
  sub_26EF3800C();

  v26 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__trainingScriptType;
  *(v0 + 408) = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__trainingScriptType;
  swift_beginAccess();
  v27 = *(v25 + v26);
  swift_getKeyPath();
  *(v0 + 208) = v25;
  v28 = v27;
  sub_26EF3800C();

  v29 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__trainingScriptItems;
  swift_beginAccess();
  v30 = *(v25 + v29);
  if (!*(v30 + 16))
  {
    v42 = *(v0 + 344);

LABEL_14:

    goto LABEL_15;
  }

  v31 = sub_26EEEC66C(v28);
  if ((v32 & 1) == 0)
  {
    v43 = *(v0 + 344);

    goto LABEL_14;
  }

  v33 = *(v0 + 328);
  *(v0 + 416) = *(*(v30 + 56) + 8 * v31);

  sub_26EF3934C();
  v34 = sub_26EF3881C();
  v35 = sub_26EF3B47C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_26EE01000, v34, v35, "VoiceBankingSession: Loading samples", v36, 2u);
    MEMORY[0x2743842A0](v36, -1, -1);
  }

  v37 = *(v0 + 328);
  v38 = *(v0 + 288);
  v39 = *(v0 + 296);
  v40 = *(v0 + 256);

  v89(v37, v38);
  v41 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__configurationStage;
  *(v0 + 424) = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__configurationStage;
  swift_beginAccess();
  *(v0 + 474) = *(v40 + v41);
  *(v0 + 475) = 4;
  *(v0 + 432) = sub_26EE1C384();
  if (sub_26EF3B0AC())
  {
    *(v40 + v41) = 4;
  }

  else
  {
    v78 = *(v0 + 256);
    swift_getKeyPath();
    v79 = swift_task_alloc();
    *(v79 + 16) = v78;
    *(v79 + 24) = 4;
    *(v0 + 216) = v78;
    sub_26EF37FFC();
  }

  v80 = swift_task_alloc();
  *(v0 + 440) = v80;
  *v80 = v0;
  v80[1] = sub_26EEE9790;
  v81 = *(v0 + 256);

  return VoiceBankingSession.samplesExists()();
}

uint64_t sub_26EEE9790(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 440);
  v6 = *v2;
  *(*v2 + 448) = v1;

  if (v1)
  {
    v7 = *(v4 + 352);
    v8 = *(v4 + 360);
    v9 = sub_26EEEA240;
  }

  else
  {
    *(v4 + 478) = a1 & 1;
    v7 = *(v4 + 352);
    v8 = *(v4 + 360);
    v9 = sub_26EEE98BC;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_26EEE98BC()
{
  v71 = v0;
  if (*(v0 + 478))
  {
    v1 = *(v0 + 416);
    v2 = *(v0 + 344);
    v3 = *(v0 + 312);

    sub_26EF3934C();
    v4 = sub_26EF3881C();
    v5 = sub_26EF3B47C();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 368);
    v8 = *(v0 + 312);
    v9 = *(v0 + 288);
    v10 = *(v0 + 296);
    if (v6)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_26EE01000, v4, v5, "Samples already exists, no need to recreate them.", v11, 2u);
      MEMORY[0x2743842A0](v11, -1, -1);
    }

    v7(v8, v9);
    v12 = *(v0 + 448);
    v13 = *(v0 + 272);
    v14 = *(v0 + 256);
    (*(*(v0 + 384) + 56))(v13, 1, 1, *(v0 + 376));
    VoiceBankingSession.fetchTrainingScript(forVoiceID:)(v13, v70);
    if (v12)
    {
      sub_26EE14578(*(v0 + 272), &qword_2806C9CB0, &qword_26EF3DD20);
      v16 = *(v0 + 328);
      v15 = *(v0 + 336);
      v18 = *(v0 + 312);
      v17 = *(v0 + 320);
      v19 = *(v0 + 304);
      v21 = *(v0 + 272);
      v20 = *(v0 + 280);
      v22 = *(v0 + 264);

      v23 = *(v0 + 8);
    }

    else
    {
      v48 = *(v0 + 424);
      v47 = *(v0 + 432);
      v49 = *(v0 + 392);
      v50 = *(v0 + 400);
      v51 = *(v0 + 256);
      sub_26EE14578(*(v0 + 272), &qword_2806C9CB0, &qword_26EF3DD20);
      v52 = v70[0];
      swift_getKeyPath();
      v53 = swift_task_alloc();
      *(v53 + 16) = v51;
      *(v53 + 24) = v52;
      *(v0 + 224) = v51;
      sub_26EF37FFC();

      *(v0 + 476) = *(v51 + v48);
      *(v0 + 477) = 5;
      if (sub_26EF3B0AC())
      {
        *(*(v0 + 256) + *(v0 + 424)) = 5;
      }

      else
      {
        v55 = *(v0 + 392);
        v54 = *(v0 + 400);
        v56 = *(v0 + 256);
        swift_getKeyPath();
        v57 = swift_task_alloc();
        *(v57 + 16) = v56;
        *(v57 + 24) = 5;
        *(v0 + 232) = v56;
        sub_26EF37FFC();
      }

      v59 = *(v0 + 328);
      v58 = *(v0 + 336);
      v61 = *(v0 + 312);
      v60 = *(v0 + 320);
      v62 = *(v0 + 304);
      v64 = *(v0 + 272);
      v63 = *(v0 + 280);
      v65 = *(v0 + 264);

      v23 = *(v0 + 8);
    }

    return v23();
  }

  else
  {
    v24 = *(v0 + 320);
    v25 = *(v0 + 256);
    sub_26EF3934C();
    v26 = v25;
    v27 = sub_26EF3881C();
    v28 = sub_26EF3B47C();

    if (os_log_type_enabled(v27, v28))
    {
      v30 = *(v0 + 400);
      v29 = *(v0 + 408);
      v31 = *(v0 + 392);
      v68 = *(v0 + 320);
      v69 = *(v0 + 368);
      v66 = *(v0 + 296);
      v67 = *(v0 + 288);
      v32 = *(v0 + 256);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v70[0] = v34;
      *v33 = 136315138;
      swift_getKeyPath();
      *(v0 + 240) = v32;
      sub_26EF3800C();

      v35 = *(v32 + v29);
      v36 = sub_26EF3B0FC();
      v38 = sub_26EE40670(v36, v37, v70);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_26EE01000, v27, v28, "Loading %s samples from training scripts.", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x2743842A0](v34, -1, -1);
      MEMORY[0x2743842A0](v33, -1, -1);

      v69(v68, v67);
    }

    else
    {
      v39 = *(v0 + 368);
      v40 = *(v0 + 320);
      v41 = *(v0 + 288);
      v42 = *(v0 + 296);

      v39(v40, v41);
    }

    v43 = swift_task_alloc();
    *(v0 + 456) = v43;
    *v43 = v0;
    v43[1] = sub_26EEE9E40;
    v44 = *(v0 + 416);
    v45 = *(v0 + 256);

    return VoiceBankingSession.loadSamplesFromTrainingScripts(from:)(v44);
  }
}

uint64_t sub_26EEE9E40()
{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v9 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v4 = v2[44];
    v5 = v2[45];
    v6 = sub_26EEEA318;
  }

  else
  {
    v7 = v2[52];

    v4 = v2[44];
    v5 = v2[45];
    v6 = sub_26EEE9F5C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26EEE9F5C()
{
  v35 = v0;
  v1 = *(v0 + 344);

  v2 = *(v0 + 464);
  v3 = *(v0 + 272);
  v4 = *(v0 + 256);
  (*(*(v0 + 384) + 56))(v3, 1, 1, *(v0 + 376));
  VoiceBankingSession.fetchTrainingScript(forVoiceID:)(v3, &v34);
  if (v2)
  {
    sub_26EE14578(*(v0 + 272), &qword_2806C9CB0, &qword_26EF3DD20);
    v6 = *(v0 + 328);
    v5 = *(v0 + 336);
    v8 = *(v0 + 312);
    v7 = *(v0 + 320);
    v9 = *(v0 + 304);
    v11 = *(v0 + 272);
    v10 = *(v0 + 280);
    v12 = *(v0 + 264);

    v13 = *(v0 + 8);
  }

  else
  {
    v14 = *(v0 + 424);
    v33 = *(v0 + 432);
    v15 = *(v0 + 392);
    v16 = *(v0 + 400);
    v17 = *(v0 + 256);
    sub_26EE14578(*(v0 + 272), &qword_2806C9CB0, &qword_26EF3DD20);
    v18 = v34;
    swift_getKeyPath();
    v19 = swift_task_alloc();
    *(v19 + 16) = v17;
    *(v19 + 24) = v18;
    *(v0 + 224) = v17;
    sub_26EF37FFC();

    *(v0 + 476) = *(v17 + v14);
    *(v0 + 477) = 5;
    if (sub_26EF3B0AC())
    {
      *(*(v0 + 256) + *(v0 + 424)) = 5;
    }

    else
    {
      v21 = *(v0 + 392);
      v20 = *(v0 + 400);
      v22 = *(v0 + 256);
      swift_getKeyPath();
      v23 = swift_task_alloc();
      *(v23 + 16) = v22;
      *(v23 + 24) = 5;
      *(v0 + 232) = v22;
      sub_26EF37FFC();
    }

    v25 = *(v0 + 328);
    v24 = *(v0 + 336);
    v27 = *(v0 + 312);
    v26 = *(v0 + 320);
    v28 = *(v0 + 304);
    v30 = *(v0 + 272);
    v29 = *(v0 + 280);
    v31 = *(v0 + 264);

    v13 = *(v0 + 8);
  }

  return v13();
}

uint64_t sub_26EEEA240()
{
  v1 = v0[52];
  v2 = v0[43];

  v3 = v0[56];
  v5 = v0[41];
  v4 = v0[42];
  v7 = v0[39];
  v6 = v0[40];
  v8 = v0[38];
  v10 = v0[34];
  v9 = v0[35];
  v11 = v0[33];

  v12 = v0[1];

  return v12();
}

uint64_t sub_26EEEA318()
{
  v1 = v0[52];
  v2 = v0[43];

  v3 = v0[58];
  v5 = v0[41];
  v4 = v0[42];
  v7 = v0[39];
  v6 = v0[40];
  v8 = v0[38];
  v10 = v0[34];
  v9 = v0[35];
  v11 = v0[33];

  v12 = v0[1];

  return v12();
}

uint64_t VoiceBankingSession.updateAvailableLanguagesIfNeccessary()()
{
  v1[12] = v0;
  v2 = sub_26EF38CDC();
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v5 = sub_26EF3883C();
  v1[17] = v5;
  v6 = *(v5 - 8);
  v1[18] = v6;
  v7 = *(v6 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = sub_26EF3B2DC();
  v1[21] = sub_26EF3B2CC();
  v9 = sub_26EF3B29C();
  v1[22] = v9;
  v1[23] = v8;

  return MEMORY[0x2822009F8](sub_26EEEA550, v9, v8);
}

uint64_t sub_26EEEA550()
{
  v1 = *(sub_26EF38CCC() + 16);

  if (v1)
  {
    v2 = v0[21];

    v3 = v0[19];
    v4 = v0[15];
    v5 = v0[16];

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[19];
    sub_26EF3934C();
    v9 = sub_26EF3881C();
    v10 = sub_26EF3B47C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_26EE01000, v9, v10, "TTSVBLocaleInfo availableTrainingLocales is empty. Fetching locales.", v11, 2u);
      MEMORY[0x2743842A0](v11, -1, -1);
    }

    v13 = v0[19];
    v12 = v0[20];
    v14 = v0[17];
    v15 = v0[18];

    (*(v15 + 8))(v13, v14);
    v16 = *MEMORY[0x277D70778];
    v0[24] = *MEMORY[0x277D70778];
    v17 = v16;
    v0[25] = sub_26EF3B2CC();
    v19 = sub_26EF3B29C();
    v0[26] = v19;
    v0[27] = v18;

    return MEMORY[0x2822009F8](sub_26EEEA700, v19, v18);
  }
}

uint64_t sub_26EEEA700()
{
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[12];
  v4 = sub_26EF3B2CC();
  v0[28] = v4;
  v5 = swift_task_alloc();
  v0[29] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  v6 = *(MEMORY[0x277D859E0] + 4);
  v7 = swift_task_alloc();
  v0[30] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8E18, &qword_26EF429C0);
  v0[31] = v8;
  *v7 = v0;
  v7[1] = sub_26EEEA82C;
  v9 = MEMORY[0x277D85700];

  return MEMORY[0x2822007B8](v0 + 10, v4, v9, 0xD00000000000002DLL, 0x800000026EF46B80, sub_26EEF219C, v5, v8);
}

uint64_t sub_26EEEA82C()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  v3 = *(*v0 + 232);
  v4 = *(*v0 + 224);
  v8 = *v0;

  v5 = *(v1 + 216);
  v6 = *(v1 + 208);

  return MEMORY[0x2822009F8](sub_26EEEA98C, v6, v5);
}

uint64_t sub_26EEEA98C()
{
  v1 = v0[25];

  v0[32] = v0[10];
  v2 = v0[22];
  v3 = v0[23];

  return MEMORY[0x2822009F8](sub_26EEEA9F8, v2, v3);
}

uint64_t sub_26EEEA9F8(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v32 = v3;
  v4 = v3[32];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v3[14];
    v8 = (v4 + 40);
    v9 = MEMORY[0x277D84F90];
    while (v6 < *(v4 + 16))
    {
      v10 = v3[16];
      v12 = *(v8 - 1);
      v11 = *v8;

      sub_26EF38C9C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_26EEEC490(0, v9[2] + 1, 1, v9, &qword_2806C9360, &qword_26EF42CC8, MEMORY[0x277D705B0]);
      }

      v14 = v9[2];
      v13 = v9[3];
      if (v14 >= v13 >> 1)
      {
        v9 = sub_26EEEC490(v13 > 1, v14 + 1, 1, v9, &qword_2806C9360, &qword_26EF42CC8, MEMORY[0x277D705B0]);
      }

      ++v6;
      v15 = v3[16];
      v16 = v3[13];
      v9[2] = v14 + 1;
      a1 = (*(v7 + 32))(v9 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, v15, v16);
      v8 += 2;
      if (v5 == v6)
      {
        v17 = v3[32];
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
LABEL_11:

    v31 = v9;

    sub_26EEECFA8(&v31);
    v3[33] = 0;
    v18 = v3[24];
    v19 = v3[20];

    v20 = v31;
    v21 = sub_26EF38CBC();
    v23 = v22;
    v24 = *v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v23;
    *v23 = 0x8000000000000000;
    sub_26EEF0EF8(v20, v18, isUniquelyReferenced_nonNull_native, &qword_2806C9368, &qword_26EF42CD0, type metadata accessor for TTSVBSiriTrainingVersion);

    *v23 = v31;
    v21(v3 + 2, 0);
    v26 = *MEMORY[0x277D70780];
    v3[34] = *MEMORY[0x277D70780];
    v27 = v26;
    v3[35] = sub_26EF3B2CC();
    v28 = sub_26EF3B29C();
    a3 = v29;
    v3[36] = v28;
    v3[37] = v29;
    a1 = sub_26EEEAD18;
    a2 = v28;
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_26EEEAD18()
{
  v1 = v0[34];
  v2 = v0[20];
  v3 = v0[12];
  v4 = sub_26EF3B2CC();
  v0[38] = v4;
  v5 = swift_task_alloc();
  v0[39] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  v6 = *(MEMORY[0x277D859E0] + 4);
  v7 = swift_task_alloc();
  v0[40] = v7;
  *v7 = v0;
  v7[1] = sub_26EEEAE24;
  v8 = v0[31];
  v9 = MEMORY[0x277D85700];

  return MEMORY[0x2822007B8](v0 + 11, v4, v9, 0xD00000000000002DLL, 0x800000026EF46B80, sub_26EEF3254, v5, v8);
}

uint64_t sub_26EEEAE24()
{
  v1 = *v0;
  v2 = *(*v0 + 320);
  v3 = *(*v0 + 312);
  v4 = *(*v0 + 304);
  v8 = *v0;

  v5 = *(v1 + 296);
  v6 = *(v1 + 288);

  return MEMORY[0x2822009F8](sub_26EEEAF84, v6, v5);
}

uint64_t sub_26EEEAF84()
{
  v1 = v0[35];

  v0[41] = v0[11];
  v2 = v0[22];
  v3 = v0[23];

  return MEMORY[0x2822009F8](sub_26EEEAFF0, v2, v3);
}

uint64_t sub_26EEEAFF0()
{
  v31 = v0;
  v1 = v0[41];
  v2 = v0[21];

  v29 = v1;
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v0[14];
    v7 = (v0[41] + 40);
    v8 = MEMORY[0x277D84F90];
    while (v5 < *(v29 + 16))
    {
      v9 = v0[15];
      v11 = *(v7 - 1);
      v10 = *v7;

      sub_26EF38C9C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_26EEEC490(0, v8[2] + 1, 1, v8, &qword_2806C9360, &qword_26EF42CC8, MEMORY[0x277D705B0]);
      }

      v13 = v8[2];
      v12 = v8[3];
      if (v13 >= v12 >> 1)
      {
        v8 = sub_26EEEC490(v12 > 1, v13 + 1, 1, v8, &qword_2806C9360, &qword_26EF42CC8, MEMORY[0x277D705B0]);
      }

      ++v5;
      v14 = v0[15];
      v15 = v0[13];
      v8[2] = v13 + 1;
      result = (*(v6 + 32))(v8 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v14, v15);
      v7 += 2;
      if (v4 == v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_11:
    v16 = v0[41];
    v17 = v0[33];

    v30 = v8;

    sub_26EEECFA8(&v30);
    if (v17)
    {
    }

    else
    {
      v18 = v0[34];

      v19 = v30;
      v20 = sub_26EF38CBC();
      v22 = v21;
      v23 = *v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = *v22;
      *v22 = 0x8000000000000000;
      sub_26EEF0EF8(v19, v18, isUniquelyReferenced_nonNull_native, &qword_2806C9368, &qword_26EF42CD0, type metadata accessor for TTSVBSiriTrainingVersion);

      *v22 = v30;
      v20(v0 + 6, 0);
      v25 = v0[19];
      v26 = v0[15];
      v27 = v0[16];

      v28 = v0[1];

      return v28();
    }
  }

  return result;
}

uint64_t VoiceBankingSession.fetchInstalledVoiceModels()()
{
  v1[3] = v0;
  v1[4] = sub_26EF3B2DC();
  v1[5] = sub_26EF3B2CC();
  v3 = sub_26EF3B29C();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_26EEEB3AC, v3, v2);
}

uint64_t sub_26EEEB3AC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_26EF3B2CC();
  v0[8] = v3;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *(v4 + 16) = v2;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  v0[10] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C92F8, &qword_26EF429D0);
  *v6 = v0;
  v6[1] = sub_26EEEB4C4;
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822007B8](v0 + 2, v3, v8, 0xD00000000000001BLL, 0x800000026EF46BB0, sub_26EEF21A4, v4, v7);
}

uint64_t sub_26EEEB4C4()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v8 = *v0;

  v5 = *(v1 + 56);
  v6 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_26EEEB624, v6, v5);
}

uint64_t sub_26EEEB624()
{
  v1 = v0[5];

  v2 = v0[2];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_26EEEB688(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9358, &unk_26EF42CB8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v14 - v8;
  v10 = *(a2 + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingManager);
  (*(v5 + 16))(&v14 - v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v9, v4);
  sub_26EF3887C();
}

id VoiceBankingSession.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_26EF395CC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__script] = 0;
  v0[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__configurationStage] = 3;
  *&v0[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__assetDownloadProgress] = 0;
  *&v0[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_naturalTrainingAssetSize] = 1090000000;
  *&v0[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_defaultTrainingAssetSize] = 533700000;
  v8 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceID;
  v9 = sub_26EF37EDC();
  (*(*(v9 - 8) + 56))(&v1[v8], 1, 1, v9);
  sub_26EF38C9C();
  v10 = *MEMORY[0x277D70768];
  *&v1[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__trainingScriptType] = *MEMORY[0x277D70768];
  v11 = &v1[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__indexOfCurrentSample];
  *v11 = 0;
  v11[8] = 1;
  v1[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__sampleState] = 0;
  v12 = sub_26EF38B5C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = v10;
  *&v1[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__service] = sub_26EF38B4C();
  *&v1[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__trainingScriptItems] = sub_26EEF167C(MEMORY[0x277D84F90]);
  *&v1[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession____lazy_storage___keepScreenAwakeManager] = 0;
  v16 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingNetworkModel;
  type metadata accessor for VoiceBankingNetworkModel();
  sub_26EED17A8(v7);
  *&v1[v16] = sub_26EED181C(v7);
  v17 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_sample;
  v18 = sub_26EF38E9C();
  (*(*(v18 - 8) + 56))(&v1[v17], 1, 1, v18);
  sub_26EED6B60(&v1[OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceCreationExperience]);
  v19 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession_voiceBankingManager;
  *&v1[v19] = [objc_allocWithZone(sub_26EF3896C()) init];
  sub_26EF3803C();
  v21.receiver = v1;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, sel_init);
}

id VoiceBankingSession.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SampleState.hashValue.getter()
{
  v1 = *v0;
  sub_26EF3B87C();
  MEMORY[0x274383950](v1);
  return sub_26EF3B8CC();
}

uint64_t sub_26EEEBD2C()
{
  v1 = *v0;
  v2 = sub_26EF3B0FC();
  v3 = MEMORY[0x274383260](v2);

  return v3;
}

uint64_t sub_26EEEBD68()
{
  v1 = *v0;
  sub_26EF3B0FC();
  sub_26EF3B16C();
}

uint64_t sub_26EEEBDBC()
{
  v1 = *v0;
  sub_26EF3B0FC();
  sub_26EF3B87C();
  sub_26EF3B16C();
  v2 = sub_26EF3B8CC();

  return v2;
}

uint64_t sub_26EEEBE30(uint64_t a1, id *a2)
{
  result = sub_26EF3B0DC();
  *a2 = 0;
  return result;
}

uint64_t sub_26EEEBEA8(uint64_t a1, id *a2)
{
  v3 = sub_26EF3B0EC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_26EEEBF28@<X0>(uint64_t *a1@<X8>)
{
  sub_26EF3B0FC();
  v2 = sub_26EF3B0BC();

  *a1 = v2;
  return result;
}

uint64_t sub_26EEEBF70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_26EF3B0FC();
  v6 = v5;
  if (v4 == sub_26EF3B0FC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26EF3B82C();
  }

  return v9 & 1;
}

uint64_t sub_26EEEBFF8(uint64_t a1)
{
  v2 = sub_26EEF17DC(&qword_2806C9348, type metadata accessor for TTSVBSiriTrainingScriptType);
  v3 = sub_26EEF17DC(&qword_2806C9350, type metadata accessor for TTSVBSiriTrainingScriptType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26EEEC0B8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_26EF3B0FC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_26EEEC0E4(uint64_t a1)
{
  v2 = sub_26EEF17DC(&qword_2806C9480, type metadata accessor for TTSVBSiriTrainingVersion);
  v3 = sub_26EEF17DC(&qword_2806C9488, type metadata accessor for TTSVBSiriTrainingVersion);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26EEEC1A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26EF3B0BC();

  *a2 = v5;
  return result;
}

uint64_t sub_26EEEC1E8(uint64_t a1)
{
  v2 = sub_26EEF17DC(&qword_2806C9378, type metadata accessor for FileAttributeKey);
  v3 = sub_26EEF17DC(&qword_2806C9478, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

void sub_26EEEC2A4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__trainingScriptType;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;
  v5 = v1;
}

uint64_t sub_26EEEC310()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16) + OBJC_IVAR____TtC26TextToSpeechVoiceBankingUI19VoiceBankingSession__indexOfCurrentSample;
  result = swift_beginAccess();
  *v3 = v1;
  *(v3 + 8) = v2;
  return result;
}

char *sub_26EEEC38C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C93D8, &qword_26EF42D60);
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
    v10 = MEMORY[0x277D84F90];
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

size_t sub_26EEEC490(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

unint64_t sub_26EEEC66C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_26EF3B0FC();
  sub_26EF3B87C();
  sub_26EF3B16C();
  v4 = sub_26EF3B8CC();

  return sub_26EEB4140(a1, v4);
}

void *sub_26EEEC6FC(void *a1, int64_t a2, char a3)
{
  result = sub_26EEEC780(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26EEEC71C(void *a1, int64_t a2, char a3)
{
  result = sub_26EEEC8B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_26EEEC73C(size_t a1, int64_t a2, char a3)
{
  result = sub_26EEEC9E8(a1, a2, a3, *v3, &qword_2806C92E8, &qword_26EF444A0, MEMORY[0x277D70610]);
  *v3 = result;
  return result;
}

void *sub_26EEEC780(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C93F0, &unk_26EF42D78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C78E0, &qword_26EF40680);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26EEEC8B4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C93E0, &unk_26EF42D68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C92F0, &qword_26EF42918);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_26EEEC9E8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_26EEECBC4(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

void sub_26EEECC74(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C92F0, &qword_26EF42918);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C93E0, &unk_26EF42D68);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_26EEECD60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C92E8, &qword_26EF444A0);
      v7 = *(sub_26EF38E9C() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(sub_26EF38E9C() - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_26EEECF00(void **a1)
{
  v2 = *(sub_26EF38E9C() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_26EEF15E4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_26EEED050(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_26EEECFA8(void **a1)
{
  v2 = *(sub_26EF38CDC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_26EEF1630(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_26EEED17C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_26EEED050(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26EF3B7EC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_26EF38E9C();
        v6 = sub_26EF3B24C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_26EF38E9C() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_26EEEDB2C(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_26EEED2A8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26EEED17C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_26EF3B7EC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_26EF38CDC();
        v6 = sub_26EF3B24C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_26EF38CDC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_26EEEEB84(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_26EEED820(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26EEED2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8798, &qword_26EF40940);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v82 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v92 = &v66 - v14;
  v88 = sub_26EF37E7C();
  v15 = *(v88 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v88, v17);
  v78 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v81 = &v66 - v21;
  v22 = sub_26EF38E9C();
  v23 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v77 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v66 - v29;
  result = MEMORY[0x28223BE20](v28, v31);
  v91 = &v66 - v34;
  v69 = a2;
  if (a3 != a2)
  {
    v35 = *a4;
    v37 = *(v33 + 16);
    v36 = v33 + 16;
    v38 = *(v36 + 56);
    v84 = (v15 + 48);
    v85 = v37;
    v39 = (v15 + 32);
    v79 = (v15 + 8);
    v83 = (v36 - 8);
    v86 = v36;
    v75 = (v36 + 16);
    v76 = v35;
    v40 = v35 + v38 * (a3 - 1);
    v74 = -v38;
    v41 = a1 - a3;
    v68 = v38;
    v42 = v35 + v38 * a3;
    v67 = v30;
    v87 = v22;
    v80 = v39;
    while (2)
    {
      v73 = a3;
      v70 = v42;
      v71 = v41;
      v72 = v40;
      v93 = v40;
      while (1)
      {
        v90 = v42;
        v45 = v42;
        v46 = v85;
        v85(v91, v45, v22);
        v46(v30, v93, v22);
        v47 = v92;
        sub_26EF38E1C();
        v48 = v30;
        v49 = *v84;
        v50 = v47;
        v51 = v88;
        if ((*v84)(v50, 1, v88) == 1)
        {
          break;
        }

        v89 = v41;
        v52 = v81;
        v53 = *v80;
        (*v80)(v81, v92, v51);
        v54 = v82;
        sub_26EF38E1C();
        v55 = v54;
        if (v49(v54, 1, v51) == 1)
        {
          (*v79)(v52, v51);
          v43 = v54;
          goto LABEL_5;
        }

        v56 = v78;
        v53(v78, v55, v51);
        v57 = sub_26EF37E4C();
        v58 = *v79;
        (*v79)(v56, v51);
        v58(v52, v51);
        v59 = *v83;
        v22 = v87;
        (*v83)(v48, v87);
        result = (v59)(v91, v22);
        v30 = v48;
        v60 = v89;
        v61 = v90;
        if ((v57 & 1) == 0)
        {
          goto LABEL_6;
        }

        if (!v76)
        {
          __break(1u);
          return result;
        }

        v62 = *v75;
        v63 = v77;
        (*v75)(v77, v90, v22);
        v64 = v93;
        swift_arrayInitWithTakeFrontToBack();
        result = (v62)(v64, v63, v22);
        v93 = v64 + v74;
        v42 = v61 + v74;
        v65 = __CFADD__(v60, 1);
        v41 = v60 + 1;
        if (v65)
        {
          goto LABEL_6;
        }
      }

      v43 = v92;
LABEL_5:
      sub_26EE14578(v43, &qword_2806C8798, &qword_26EF40940);
      v44 = *v83;
      v30 = v67;
      v22 = v87;
      (*v83)(v67, v87);
      result = (v44)(v91, v22);
LABEL_6:
      a3 = v73 + 1;
      v40 = v72 + v68;
      v41 = v71 - 1;
      v42 = v70 + v68;
      if (v73 + 1 == v69)
      {
        return result;
      }

      continue;
    }
  }

  return result;
}

uint64_t sub_26EEED820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_26EF38CDC();
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v48 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v52 = &v38 - v15;
  result = MEMORY[0x28223BE20](v14, v16);
  v51 = &v38 - v19;
  v40 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v49 = *(v18 + 16);
    v50 = v18 + 16;
    v21 = *(v18 + 72);
    v22 = (v18 + 8);
    v46 = (v18 + 32);
    v47 = v20;
    v23 = v20 + v21 * (a3 - 1);
    v45 = -v21;
    v24 = a1 - a3;
    v39 = v21;
    v25 = v20 + v21 * a3;
LABEL_6:
    v43 = v23;
    v44 = a3;
    v41 = v25;
    v42 = v24;
    v27 = v23;
    while (1)
    {
      v28 = v49;
      v49(v51, v25, v8);
      v28(v52, v27, v8);
      v29 = sub_26EF38C8C();
      v31 = v30;
      if (v29 == sub_26EF38C8C() && v31 == v32)
      {

        v26 = *v22;
        (*v22)(v52, v8);
        result = (v26)(v51, v8);
LABEL_5:
        a3 = v44 + 1;
        v23 = v43 + v39;
        v24 = v42 - 1;
        v25 = v41 + v39;
        if (v44 + 1 == v40)
        {
          return result;
        }

        goto LABEL_6;
      }

      v33 = sub_26EF3B82C();

      v34 = *v22;
      (*v22)(v52, v8);
      result = (v34)(v51, v8);
      if ((v33 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v47)
      {
        break;
      }

      v35 = *v46;
      v36 = v48;
      (*v46)(v48, v25, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v35)(v27, v36, v8);
      v27 += v45;
      v25 += v45;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26EEEDB2C(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v180 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8798, &qword_26EF40940);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v202 = &v174 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v174 - v15;
  v18 = MEMORY[0x28223BE20](v14, v17);
  v184 = &v174 - v19;
  MEMORY[0x28223BE20](v18, v20);
  v187 = &v174 - v21;
  v209 = sub_26EF37E7C();
  v22 = *(v209 - 8);
  v23 = *(v22 + 64);
  v25 = MEMORY[0x28223BE20](v209, v24);
  v200 = &v174 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v201 = &v174 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v181 = &v174 - v32;
  MEMORY[0x28223BE20](v31, v33);
  v35 = &v174 - v34;
  v36 = sub_26EF38E9C();
  v37 = *(*(v36 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v36, v38);
  v185 = &v174 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v39, v41);
  v199 = &v174 - v43;
  v45 = MEMORY[0x28223BE20](v42, v44);
  v174 = &v174 - v46;
  v48 = MEMORY[0x28223BE20](v45, v47);
  v216 = &v174 - v49;
  v51 = MEMORY[0x28223BE20](v48, v50);
  v192 = &v174 - v52;
  v54 = MEMORY[0x28223BE20](v51, v53);
  v195 = &v174 - v55;
  v57 = MEMORY[0x28223BE20](v54, v56);
  v175 = &v174 - v58;
  result = MEMORY[0x28223BE20](v57, v59);
  v178 = &v174 - v62;
  v63 = a3[1];
  v193 = v61;
  if (v63 < 1)
  {
    v65 = MEMORY[0x277D84F90];
LABEL_110:
    a4 = *v180;
    if (!*v180)
    {
      goto LABEL_152;
    }

    v22 = v65;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v193;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_146;
    }

    result = v22;
LABEL_113:
    v217 = result;
    v22 = *(result + 16);
    if (v22 >= 2)
    {
      while (*a3)
      {
        v169 = *(result + 16 * v22);
        v170 = result;
        v171 = *(result + 16 * (v22 - 1) + 40);
        sub_26EEEF740(*a3 + *(v16 + 9) * v169, *a3 + *(v16 + 9) * *(result + 16 * (v22 - 1) + 32), (*a3 + *(v16 + 9) * v171), a4);
        if (v5)
        {
        }

        if (v171 < v169)
        {
          goto LABEL_139;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v170 = sub_26EE13990(v170);
        }

        if (v22 - 2 >= *(v170 + 2))
        {
          goto LABEL_140;
        }

        v172 = &v170[16 * v22];
        *v172 = v169;
        *(v172 + 1) = v171;
        v217 = v170;
        sub_26EE5C168(v22 - 1);
        result = v217;
        v22 = *(v217 + 16);
        if (v22 <= 1)
        {
        }
      }

      goto LABEL_150;
    }
  }

  v64 = 0;
  v210 = v61 + 16;
  v211 = (v61 + 8);
  v208 = (v22 + 48);
  v205 = (v22 + 8);
  v206 = (v22 + 32);
  v204 = (v61 + 32);
  v65 = MEMORY[0x277D84F90];
  v194 = a3;
  v179 = a4;
  v212 = v36;
  v183 = v35;
  v207 = v16;
  while (1)
  {
    v66 = v64;
    v186 = v65;
    if (v64 + 1 >= v63)
    {
      v89 = v64 + 1;
      goto LABEL_31;
    }

    v196 = v63;
    v67 = *a3;
    v22 = *(v193 + 9);
    v68 = *(v193 + 2);
    v215 = (v67 + v22 * (v64 + 1));
    v68(v178);
    v214 = v67;
    v69 = v67 + v22 * v66;
    v70 = v66;
    v71 = v175;
    v203 = v68;
    (v68)(v175, v69, v36);
    LODWORD(v213) = sub_26EEDEEA4();
    if (v5)
    {
      v173 = *v211;
      (*v211)(v71, v36);
      v173(v178, v36);
    }

    v177 = 0;
    v72 = *v211;
    (*v211)(v71, v36);
    v198 = v72;
    result = (v72)(v178, v36);
    v176 = v70;
    v73 = v70 + 2;
    v74 = v214 + v22 * v73;
    v75 = v187;
    v76 = v192;
    v214 = v22;
    while (1)
    {
      v89 = v196;
      if (v196 == v73)
      {
        break;
      }

      v81 = v203;
      (v203)(v195, v74, v36);
      v81(v76, v215, v36);
      sub_26EF38E1C();
      v82 = v209;
      v83 = *v208;
      if ((*v208)(v75, 1, v209) == 1)
      {
        sub_26EE14578(v75, &qword_2806C8798, &qword_26EF40940);
        v77 = 0;
      }

      else
      {
        v84 = v183;
        v197 = *v206;
        (v197)(v183, v75, v82);
        v85 = v184;
        sub_26EF38E1C();
        v86 = v85;
        if (v83(v85, 1, v82) == 1)
        {
          (*v205)(v84, v82);
          sub_26EE14578(v85, &qword_2806C8798, &qword_26EF40940);
          v77 = 0;
        }

        else
        {
          v87 = v181;
          (v197)(v181, v86, v82);
          v77 = sub_26EF37E4C();
          v88 = *v205;
          (*v205)(v87, v82);
          v88(v84, v82);
        }

        v75 = v187;
      }

      v36 = v212;
      v78 = v207;
      v76 = v192;
      v79 = v198;
      v198(v192, v212);
      result = (v79)(v195, v36);
      v80 = v77 & 1;
      ++v73;
      v22 = v214;
      v74 += v214;
      v215 += v214;
      v16 = v78;
      if ((v213 & 1) != v80)
      {
        v89 = v73 - 1;
        break;
      }
    }

    v5 = v177;
    a3 = v194;
    a4 = v179;
    v90 = v186;
    v66 = v176;
    if (v213)
    {
      if (v89 < v176)
      {
        goto LABEL_145;
      }

      if (v176 < v89)
      {
        v91 = v22 * (v89 - 1);
        v92 = v89 * v22;
        v93 = v89;
        v94 = v176;
        v95 = v176 * v22;
        v196 = v89;
        do
        {
          if (v94 != --v93)
          {
            v97 = *v194;
            if (!*v194)
            {
              goto LABEL_149;
            }

            v215 = *v204;
            (v215)(v185, v97 + v95, v212, v90);
            if (v95 < v91 || v97 + v95 >= v97 + v92)
            {
              v96 = v212;
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              v96 = v212;
              if (v95 != v91)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = (v215)(v97 + v91, v185, v96);
            v90 = v186;
            v36 = v96;
            v89 = v196;
            v22 = v214;
          }

          ++v94;
          v91 -= v22;
          v92 -= v22;
          v95 += v22;
        }

        while (v94 < v93);
        v5 = v177;
        a3 = v194;
        a4 = v179;
        v66 = v176;
      }
    }

LABEL_31:
    v98 = a3[1];
    if (v89 >= v98)
    {
      goto LABEL_40;
    }

    if (__OFSUB__(v89, v66))
    {
      goto LABEL_142;
    }

    if (v89 - v66 >= a4)
    {
      goto LABEL_40;
    }

    if (__OFADD__(v66, a4))
    {
      goto LABEL_143;
    }

    if ((v66 + a4) >= v98)
    {
      a4 = a3[1];
    }

    else
    {
      a4 += v66;
    }

    if (a4 < v66)
    {
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      result = sub_26EE13990(v22);
      goto LABEL_113;
    }

    if (v89 == a4)
    {
LABEL_40:
      a4 = v89;
      if (v89 < v66)
      {
        goto LABEL_141;
      }

      goto LABEL_41;
    }

    v177 = v5;
    v143 = *a3;
    v144 = *(v193 + 9);
    v203 = *(v193 + 2);
    v145 = v143 + v144 * (v89 - 1);
    v197 = -v144;
    v176 = v66;
    v146 = (v66 - v89);
    v198 = v143;
    v182 = v144;
    v147 = v143 + v89 * v144;
    a3 = v201;
    v148 = v174;
    v188 = a4;
LABEL_95:
    v196 = v89;
    v189 = v147;
    v190 = v146;
    v151 = v146;
    v191 = v145;
LABEL_96:
    v215 = v151;
    v152 = v145;
    v153 = v203;
    (v203)(v216, v147, v36);
    v214 = v152;
    v153(v148, v152, v36);
    sub_26EF38E1C();
    v154 = v209;
    v155 = *v208;
    if ((*v208)(v16, 1, v209) == 1)
    {
      v149 = v16;
LABEL_93:
      sub_26EE14578(v149, &qword_2806C8798, &qword_26EF40940);
      v22 = v211;
      v36 = v212;
      v150 = *v211;
      (*v211)(v148, v212);
      v150(v216, v36);
      goto LABEL_94;
    }

    v213 = v147;
    v156 = v148;
    v157 = *v206;
    (*v206)(a3, v16, v154);
    v158 = v202;
    sub_26EF38E1C();
    v159 = v158;
    if (v155(v158, 1, v154) == 1)
    {
      (*v205)(a3, v154);
      v149 = v158;
      v16 = v207;
      v148 = v156;
      goto LABEL_93;
    }

    v160 = v200;
    (v157)(v200, v159, v154);
    v22 = sub_26EF37E4C();
    v161 = *v205;
    (*v205)(v160, v154);
    v161(a3, v154);
    v36 = v212;
    v162 = *v211;
    (*v211)(v156, v212);
    result = (v162)(v216, v36);
    v148 = v156;
    if (v22)
    {
      break;
    }

    v16 = v207;
    a3 = v201;
LABEL_94:
    v89 = v196 + 1;
    v145 = &v191[v182];
    v146 = v190 - 1;
    v147 = &v189[v182];
    a4 = v188;
    if (v196 + 1 != v188)
    {
      goto LABEL_95;
    }

    v5 = v177;
    v66 = v176;
    if (v188 < v176)
    {
      goto LABEL_141;
    }

LABEL_41:
    result = swift_isUniquelyReferenced_nonNull_native();
    v188 = a4;
    if (result)
    {
      v65 = v186;
    }

    else
    {
      result = sub_26EE12E30(0, *(v186 + 2) + 1, 1, v186);
      v65 = result;
    }

    a4 = *(v65 + 2);
    v99 = *(v65 + 3);
    v22 = a4 + 1;
    if (a4 >= v99 >> 1)
    {
      result = sub_26EE12E30((v99 > 1), a4 + 1, 1, v65);
      v65 = result;
    }

    *(v65 + 2) = v22;
    v100 = &v65[16 * a4];
    v101 = v188;
    *(v100 + 4) = v66;
    *(v100 + 5) = v101;
    if (!*v180)
    {
      goto LABEL_151;
    }

    if (a4)
    {
      a3 = *v180;
      while (1)
      {
        v102 = v22 - 1;
        if (v22 >= 4)
        {
          break;
        }

        if (v22 == 3)
        {
          v103 = *(v65 + 4);
          v104 = *(v65 + 5);
          v113 = __OFSUB__(v104, v103);
          v105 = v104 - v103;
          v106 = v113;
LABEL_61:
          if (v106)
          {
            goto LABEL_130;
          }

          v119 = &v65[16 * v22];
          v121 = *v119;
          v120 = *(v119 + 1);
          v122 = __OFSUB__(v120, v121);
          v123 = v120 - v121;
          v124 = v122;
          if (v122)
          {
            goto LABEL_133;
          }

          v125 = &v65[16 * v102 + 32];
          v127 = *v125;
          v126 = *(v125 + 1);
          v113 = __OFSUB__(v126, v127);
          v128 = v126 - v127;
          if (v113)
          {
            goto LABEL_136;
          }

          if (__OFADD__(v123, v128))
          {
            goto LABEL_137;
          }

          if (v123 + v128 >= v105)
          {
            if (v105 < v128)
            {
              v102 = v22 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        v129 = &v65[16 * v22];
        v131 = *v129;
        v130 = *(v129 + 1);
        v113 = __OFSUB__(v130, v131);
        v123 = v130 - v131;
        v124 = v113;
LABEL_75:
        if (v124)
        {
          goto LABEL_132;
        }

        v132 = &v65[16 * v102];
        v134 = *(v132 + 4);
        v133 = *(v132 + 5);
        v113 = __OFSUB__(v133, v134);
        v135 = v133 - v134;
        if (v113)
        {
          goto LABEL_135;
        }

        if (v135 < v123)
        {
          goto LABEL_3;
        }

LABEL_82:
        a4 = v102 - 1;
        if (v102 - 1 >= v22)
        {
          __break(1u);
LABEL_126:
          __break(1u);
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        if (!*v194)
        {
          goto LABEL_148;
        }

        v140 = v65;
        v22 = *&v65[16 * a4 + 32];
        v141 = *&v65[16 * v102 + 40];
        sub_26EEEF740(*v194 + *(v193 + 9) * v22, *v194 + *(v193 + 9) * *&v65[16 * v102 + 32], (*v194 + *(v193 + 9) * v141), a3);
        if (v5)
        {
        }

        if (v141 < v22)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v140 = sub_26EE13990(v140);
        }

        if (a4 >= *(v140 + 2))
        {
          goto LABEL_127;
        }

        v142 = &v140[16 * a4];
        *(v142 + 4) = v22;
        *(v142 + 5) = v141;
        v217 = v140;
        result = sub_26EE5C168(v102);
        v65 = v217;
        v22 = *(v217 + 16);
        if (v22 <= 1)
        {
          goto LABEL_3;
        }
      }

      v107 = &v65[16 * v22 + 32];
      v108 = *(v107 - 64);
      v109 = *(v107 - 56);
      v113 = __OFSUB__(v109, v108);
      v110 = v109 - v108;
      if (v113)
      {
        goto LABEL_128;
      }

      v112 = *(v107 - 48);
      v111 = *(v107 - 40);
      v113 = __OFSUB__(v111, v112);
      v105 = v111 - v112;
      v106 = v113;
      if (v113)
      {
        goto LABEL_129;
      }

      v114 = &v65[16 * v22];
      v116 = *v114;
      v115 = *(v114 + 1);
      v113 = __OFSUB__(v115, v116);
      v117 = v115 - v116;
      if (v113)
      {
        goto LABEL_131;
      }

      v113 = __OFADD__(v105, v117);
      v118 = v105 + v117;
      if (v113)
      {
        goto LABEL_134;
      }

      if (v118 >= v110)
      {
        v136 = &v65[16 * v102 + 32];
        v138 = *v136;
        v137 = *(v136 + 1);
        v113 = __OFSUB__(v137, v138);
        v139 = v137 - v138;
        if (v113)
        {
          goto LABEL_138;
        }

        if (v105 < v139)
        {
          v102 = v22 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_61;
    }

LABEL_3:
    a3 = v194;
    v63 = v194[1];
    v64 = v188;
    a4 = v179;
    if (v188 >= v63)
    {
      goto LABEL_110;
    }
  }

  v16 = v207;
  v163 = v215;
  if (v198)
  {
    v22 = *v204;
    v164 = v199;
    v165 = v213;
    (*v204)(v199, v213, v36);
    v166 = v214;
    swift_arrayInitWithTakeFrontToBack();
    (v22)(v166, v164, v36);
    v145 = &v197[v166];
    v147 = &v197[v165];
    v167 = __CFADD__(v163, 1);
    v151 = v163 + 1;
    a3 = v201;
    if (v167)
    {
      goto LABEL_94;
    }

    goto LABEL_96;
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
  return result;
}

uint64_t sub_26EEEEB84(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v143 = a1;
  v9 = sub_26EF38CDC();
  v10 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v147 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v158 = &v137 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v163 = &v137 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v162 = &v137 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v155 = &v137 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v154 = &v137 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v142 = &v137 - v31;
  result = MEMORY[0x28223BE20](v30, v32);
  v141 = &v137 - v35;
  v36 = *(a3 + 1);
  v152 = v34;
  if (v36 < 1)
  {
    v38 = MEMORY[0x277D84F90];
LABEL_103:
    v40 = *v143;
    if (!*v143)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v152;
    if (result)
    {
LABEL_105:
      v164 = v38;
      v131 = *(v38 + 16);
      if (v131 >= 2)
      {
        while (1)
        {
          v132 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v133 = a3;
          v134 = *(v38 + 16 * v131);
          a3 = v38;
          v135 = *(v38 + 16 * (v131 - 1) + 32);
          v38 = *(v38 + 16 * (v131 - 1) + 40);
          sub_26EEF01FC(&v132[*(v5 + 72) * v134], &v132[*(v5 + 72) * v135], &v132[*(v5 + 72) * v38], v40);
          if (v6)
          {
          }

          if (v38 < v134)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_26EE13990(a3);
          }

          if (v131 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v136 = &a3[16 * v131];
          *v136 = v134;
          *(v136 + 1) = v38;
          v164 = a3;
          result = sub_26EE5C168(v131 - 1);
          v38 = v164;
          v131 = *(v164 + 16);
          a3 = v133;
          if (v131 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_26EE13990(v38);
    v38 = result;
    goto LABEL_105;
  }

  v138 = a4;
  v37 = 0;
  v160 = v34 + 16;
  v161 = (v34 + 8);
  v159 = (v34 + 32);
  v38 = MEMORY[0x277D84F90];
  v144 = a3;
  while (1)
  {
    v39 = v37;
    v40 = v37 + 1;
    v146 = v37;
    if (v37 + 1 < v36)
    {
      v150 = v36;
      v139 = v38;
      v41 = *a3;
      v42 = *(v152 + 72);
      v5 = v37 + 1;
      v43 = &v41[v42 * v40];
      v44 = *(v152 + 16);
      v44(v141, v43, v9);
      v153 = v42;
      v149 = v44;
      v44(v142, &v41[v42 * v39], v9);
      v40 = sub_26EF38C8C();
      v46 = v45;
      v47 = sub_26EF38C8C();
      v140 = v6;
      if (v40 == v47 && v46 == v48)
      {
        LODWORD(v151) = 0;
      }

      else
      {
        LODWORD(v151) = sub_26EF3B82C();
      }

      v49 = *v161;
      (*v161)(v142, v9);
      v148 = v49;
      result = (v49)(v141, v9);
      v50 = (v146 + 2);
      v51 = v153 * (v146 + 2);
      v52 = &v41[v51];
      v53 = v153 * v5;
      v54 = &v41[v153 * v5];
      do
      {
        a3 = v50;
        v57 = v5;
        v6 = v53;
        v38 = v51;
        if (v50 >= v150)
        {
          break;
        }

        v156 = v5;
        v157 = v50;
        v58 = v149;
        (v149)(v154, v52, v9);
        v58(v155, v54, v9);
        v59 = sub_26EF38C8C();
        v61 = v60;
        if (v59 == sub_26EF38C8C() && v61 == v62)
        {
          v55 = 0;
        }

        else
        {
          v55 = sub_26EF3B82C();
        }

        a3 = v157;

        v40 = v148;
        v148(v155, v9);
        result = (v40)(v154, v9);
        v56 = v151 ^ v55;
        v50 = a3 + 1;
        v52 += v153;
        v54 += v153;
        v57 = v156;
        v5 = v156 + 1;
        v53 = v6 + v153;
        v51 = v38 + v153;
      }

      while ((v56 & 1) == 0);
      if (v151)
      {
        v39 = v146;
        if (a3 < v146)
        {
          goto LABEL_132;
        }

        if (v146 < a3)
        {
          v63 = v146 * v153;
          v64 = v146;
          do
          {
            if (v64 != v57)
            {
              v66 = *v144;
              if (!*v144)
              {
                goto LABEL_138;
              }

              v5 = v57;
              v157 = *v159;
              (v157)(v147, v66 + v63, v9);
              if (v63 < v6 || v66 + v63 >= (v66 + v38))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v63 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v157)(v66 + v6, v147, v9);
              v39 = v146;
              v57 = v5;
            }

            ++v64;
            v6 -= v153;
            v38 -= v153;
            v63 += v153;
          }

          while (v64 < v57--);
        }

        v40 = a3;
        v6 = v140;
        a3 = v144;
        v38 = v139;
      }

      else
      {
        v40 = a3;
        v6 = v140;
        a3 = v144;
        v38 = v139;
        v39 = v146;
      }
    }

    v67 = *(a3 + 1);
    if (v40 < v67)
    {
      if (__OFSUB__(v40, v39))
      {
        goto LABEL_131;
      }

      if (v40 - v39 < v138)
      {
        break;
      }
    }

LABEL_52:
    if (v40 < v39)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26EE12E30(0, *(v38 + 16) + 1, 1, v38);
      v38 = result;
    }

    v85 = *(v38 + 16);
    v84 = *(v38 + 24);
    v86 = v85 + 1;
    if (v85 >= v84 >> 1)
    {
      result = sub_26EE12E30((v84 > 1), v85 + 1, 1, v38);
      v38 = result;
    }

    *(v38 + 16) = v86;
    v87 = v38 + 16 * v85;
    *(v87 + 32) = v39;
    *(v87 + 40) = v40;
    v88 = *v143;
    if (!*v143)
    {
      goto LABEL_140;
    }

    v153 = v40;
    if (v85)
    {
      while (1)
      {
        v40 = v86 - 1;
        if (v86 >= 4)
        {
          break;
        }

        if (v86 == 3)
        {
          v89 = *(v38 + 32);
          v90 = *(v38 + 40);
          v99 = __OFSUB__(v90, v89);
          v91 = v90 - v89;
          v92 = v99;
LABEL_72:
          if (v92)
          {
            goto LABEL_119;
          }

          v105 = (v38 + 16 * v86);
          v107 = *v105;
          v106 = v105[1];
          v108 = __OFSUB__(v106, v107);
          v109 = v106 - v107;
          v110 = v108;
          if (v108)
          {
            goto LABEL_122;
          }

          v111 = (v38 + 32 + 16 * v40);
          v113 = *v111;
          v112 = v111[1];
          v99 = __OFSUB__(v112, v113);
          v114 = v112 - v113;
          if (v99)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v109, v114))
          {
            goto LABEL_126;
          }

          if (v109 + v114 >= v91)
          {
            if (v91 < v114)
            {
              v40 = v86 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v115 = (v38 + 16 * v86);
        v117 = *v115;
        v116 = v115[1];
        v99 = __OFSUB__(v116, v117);
        v109 = v116 - v117;
        v110 = v99;
LABEL_86:
        if (v110)
        {
          goto LABEL_121;
        }

        v118 = v38 + 16 * v40;
        v120 = *(v118 + 32);
        v119 = *(v118 + 40);
        v99 = __OFSUB__(v119, v120);
        v121 = v119 - v120;
        if (v99)
        {
          goto LABEL_124;
        }

        if (v121 < v109)
        {
          goto LABEL_3;
        }

LABEL_93:
        v126 = v40 - 1;
        if (v40 - 1 >= v86)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
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
          goto LABEL_134;
        }

        v127 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v38;
        v128 = *(v38 + 32 + 16 * v126);
        v129 = *(v38 + 32 + 16 * v40);
        v38 = *(v38 + 32 + 16 * v40 + 8);
        sub_26EEF01FC(&v127[*(v152 + 72) * v128], &v127[*(v152 + 72) * v129], &v127[*(v152 + 72) * v38], v88);
        if (v6)
        {
        }

        if (v38 < v128)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_26EE13990(a3);
        }

        if (v126 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v130 = &a3[16 * v126];
        *(v130 + 4) = v128;
        *(v130 + 5) = v38;
        v164 = a3;
        result = sub_26EE5C168(v40);
        v38 = v164;
        v86 = *(v164 + 16);
        a3 = v5;
        if (v86 <= 1)
        {
          goto LABEL_3;
        }
      }

      v93 = v38 + 32 + 16 * v86;
      v94 = *(v93 - 64);
      v95 = *(v93 - 56);
      v99 = __OFSUB__(v95, v94);
      v96 = v95 - v94;
      if (v99)
      {
        goto LABEL_117;
      }

      v98 = *(v93 - 48);
      v97 = *(v93 - 40);
      v99 = __OFSUB__(v97, v98);
      v91 = v97 - v98;
      v92 = v99;
      if (v99)
      {
        goto LABEL_118;
      }

      v100 = (v38 + 16 * v86);
      v102 = *v100;
      v101 = v100[1];
      v99 = __OFSUB__(v101, v102);
      v103 = v101 - v102;
      if (v99)
      {
        goto LABEL_120;
      }

      v99 = __OFADD__(v91, v103);
      v104 = v91 + v103;
      if (v99)
      {
        goto LABEL_123;
      }

      if (v104 >= v96)
      {
        v122 = (v38 + 32 + 16 * v40);
        v124 = *v122;
        v123 = v122[1];
        v99 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v99)
        {
          goto LABEL_127;
        }

        if (v91 < v125)
        {
          v40 = v86 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v36 = *(a3 + 1);
    v37 = v153;
    if (v153 >= v36)
    {
      goto LABEL_103;
    }
  }

  v68 = (v39 + v138);
  if (__OFADD__(v39, v138))
  {
    goto LABEL_133;
  }

  if (v68 >= v67)
  {
    v68 = *(a3 + 1);
  }

  if (v68 < v39)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v40 == v68)
  {
    goto LABEL_52;
  }

  v139 = v38;
  v140 = v6;
  v69 = *a3;
  v70 = *(v152 + 72);
  v71 = *(v152 + 16);
  v72 = *a3 + v70 * (v40 - 1);
  v156 = -v70;
  v157 = v69;
  v73 = v39 - v40;
  v145 = v70;
  v74 = &v69[v40 * v70];
  v148 = v68;
LABEL_43:
  v153 = v40;
  v149 = v74;
  v150 = v73;
  v151 = v72;
  v76 = v72;
  while (1)
  {
    v71(v162, v74, v9);
    (v71)(v163, v76);
    v5 = sub_26EF38C8C();
    v78 = v77;
    if (v5 == sub_26EF38C8C() && v78 == v79)
    {

      v75 = *v161;
      (*v161)(v163, v9);
      v75(v162, v9);
LABEL_42:
      v40 = v153 + 1;
      v72 = v151 + v145;
      v73 = v150 - 1;
      v74 = &v149[v145];
      if ((v153 + 1) == v148)
      {
        v40 = v148;
        v6 = v140;
        a3 = v144;
        v38 = v139;
        v39 = v146;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_26EF3B82C();

    v80 = *v161;
    (*v161)(v163, v9);
    result = (v80)(v162, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v157)
    {
      break;
    }

    v81 = v158;
    v5 = v159;
    v82 = *v159;
    (*v159)(v158, v74, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v82)(v76, v81, v9);
    v76 += v156;
    v74 += v156;
    if (__CFADD__(v73++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_26EEEF740(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C8798, &qword_26EF40940);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v13 = (v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v11, v14);
  v114 = v102 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v110 = v102 - v19;
  MEMORY[0x28223BE20](v18, v20);
  v118 = v102 - v21;
  v122 = sub_26EF37E7C();
  v22 = *(v122 - 8);
  v23 = *(v22 + 64);
  v25 = MEMORY[0x28223BE20](v122, v24);
  v103 = v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v108 = v102 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v106 = v102 - v32;
  MEMORY[0x28223BE20](v31, v33);
  v111 = (v102 - v34);
  v123 = sub_26EF38E9C();
  v115 = *(v123 - 8);
  v35 = *(v115 + 64);
  v37 = MEMORY[0x28223BE20](v123, v36);
  v109 = v102 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v37, v39);
  v117 = v102 - v41;
  v43 = MEMORY[0x28223BE20](v40, v42);
  v45 = v102 - v44;
  result = MEMORY[0x28223BE20](v43, v46);
  v121 = v102 - v48;
  v116 = *(v49 + 72);
  if (!v116)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v116 == -1)
  {
    goto LABEL_72;
  }

  v50 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v116 == -1)
  {
    goto LABEL_73;
  }

  v51 = (a2 - a1) / v116;
  v126 = a1;
  v125 = a4;
  if (v51 >= v50 / v116)
  {
    v54 = v50 / v116 * v116;
    if (a4 < a2 || a2 + v54 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v54 < 1)
    {
      v81 = a4 + v54;
    }

    else
    {
      v107 = v13;
      v76 = -v116;
      v112 = (v115 + 16);
      v77 = (v22 + 48);
      v78 = (v22 + 32);
      v104 = (v22 + 8);
      v111 = (v115 + 8);
      v79 = (a4 + v54);
      v80 = v109;
      v81 = a4 + v54;
      v113 = v77;
      v119 = a4;
      v121 = -v116;
      v105 = a1;
      v106 = v78;
      do
      {
        v102[0] = v81;
        v82 = a2;
        a2 += v76;
        v120 = a2;
        v115 = v82;
        while (1)
        {
          if (v82 <= a1)
          {
            v126 = v82;
            v124 = v102[0];
            goto LABEL_70;
          }

          v83 = a3;
          v110 = v81;
          v118 = v79;
          v84 = *v112;
          v116 = &v79[v76];
          v85 = v123;
          (v84)(v117);
          (v84)(v80, a2, v85);
          v86 = v114;
          sub_26EF38E1C();
          v87 = *v77;
          v88 = v122;
          if ((*v77)(v86, 1, v122) == 1)
          {
            sub_26EE14578(v86, &qword_2806C8798, &qword_26EF40940);
            v89 = 0;
            a2 = v120;
            v90 = v80;
          }

          else
          {
            v91 = *v106;
            v92 = v108;
            (*v106)(v108, v86, v88);
            v93 = v107;
            sub_26EF38E1C();
            v94 = v122;
            if (v87(v93, 1, v122) == 1)
            {
              (*v104)(v92, v94);
              sub_26EE14578(v93, &qword_2806C8798, &qword_26EF40940);
              v89 = 0;
            }

            else
            {
              v95 = v103;
              v91(v103, v93, v94);
              v96 = v94;
              v89 = sub_26EF37E4C();
              v97 = *v104;
              (*v104)(v95, v96);
              v97(v92, v96);
            }

            a2 = v120;
            v90 = v109;
            a1 = v105;
          }

          a3 = &v83[v121];
          v98 = *v111;
          v80 = v90;
          v99 = v123;
          (*v111)();
          (v98)(v117, v99);
          v100 = v119;
          if (v89)
          {
            break;
          }

          v101 = v116;
          v81 = v116;
          if (v83 < v118 || a3 >= v118)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v83 != v118)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v79 = v81;
          v76 = v121;
          v77 = v113;
          v82 = v115;
          if (v101 <= v100)
          {
            a2 = v115;
            goto LABEL_69;
          }
        }

        if (v83 < v115 || a3 >= v115)
        {
          swift_arrayInitWithTakeFrontToBack();
          v81 = v110;
        }

        else
        {
          v81 = v110;
          if (v83 != v115)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v79 = v118;
        v76 = v121;
        v77 = v113;
      }

      while (v118 > v100);
    }

LABEL_69:
    v126 = a2;
    v124 = v81;
  }

  else
  {
    v114 = a3;
    v52 = v51 * v116;
    if (a4 < a1 || a1 + v52 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v53 = v121;
    }

    else
    {
      v53 = v121;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v113 = (a4 + v52);
    v124 = a4 + v52;
    if (v52 >= 1 && a2 < v114)
    {
      v56 = *(v115 + 16);
      v117 = (v22 + 48);
      v107 = (v22 + 8);
      v108 = v56;
      v115 += 16;
      v112 = (v115 - 8);
      v109 = (v22 + 32);
      while (1)
      {
        v57 = v123;
        (v56)(v53, a2, v123);
        (v56)(v45, a4, v57);
        v58 = v45;
        v59 = v118;
        sub_26EF38E1C();
        v60 = v53;
        v61 = *v117;
        v62 = v122;
        if ((*v117)(v59, 1, v122) == 1)
        {
          goto LABEL_24;
        }

        v59 = v110;
        v119 = a4;
        v120 = a2;
        v63 = *v109;
        v64 = v111;
        (*v109)(v111, v118, v62);
        sub_26EF38E1C();
        v65 = v122;
        if (v61(v59, 1, v122) == 1)
        {
          break;
        }

        v70 = v106;
        v63(v106, v59, v65);
        v71 = v65;
        v72 = sub_26EF37E4C();
        v73 = *v107;
        (*v107)(v70, v71);
        v73(v64, v71);
        v74 = *v112;
        v75 = v123;
        (*v112)(v58, v123);
        v74(v121, v75);
        a4 = v119;
        a2 = v120;
        v45 = v58;
        v56 = v108;
        if (v72)
        {
          v68 = v116;
          if (a1 < v120 || a1 >= v120 + v116)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v120)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v68;
          goto LABEL_31;
        }

LABEL_25:
        v68 = v116;
        v69 = a4 + v116;
        if (a1 < a4 || a1 >= v69)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v125 = v69;
        a4 += v68;
LABEL_31:
        a1 += v68;
        v126 = a1;
        v53 = v121;
        if (a4 >= v113 || a2 >= v114)
        {
          goto LABEL_70;
        }
      }

      (*v107)(v64, v65);
      a4 = v119;
      a2 = v120;
      v60 = v121;
      v56 = v108;
LABEL_24:
      sub_26EE14578(v59, &qword_2806C8798, &qword_26EF40940);
      v66 = *v112;
      v67 = v123;
      (*v112)(v58, v123);
      v66(v60, v67);
      v45 = v58;
      goto LABEL_25;
    }
  }

LABEL_70:
  sub_26EEF08AC(&v126, &v125, &v124, MEMORY[0x277D70610]);
  return 1;
}

uint64_t sub_26EEF01FC(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v76 = sub_26EF38CDC();
  v8 = *(v76 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v76, v10);
  v73 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v72 = &v64 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v75 = &v64 - v18;
  result = MEMORY[0x28223BE20](v17, v19);
  v74 = &v64 - v21;
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_70;
  }

  v24 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_71;
  }

  v25 = (a2 - a1) / v23;
  v79 = a1;
  v78 = a4;
  if (v25 >= v24 / v23)
  {
    v27 = v24 / v23 * v23;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v27;
    if (v27 < 1)
    {
      v49 = a4 + v27;
    }

    else
    {
      v68 = a4;
      v69 = (v8 + 16);
      v67 = (v8 + 8);
      v47 = -v23;
      v48 = a4 + v27;
      v49 = v46;
      v70 = v47;
      while (2)
      {
        while (1)
        {
          v65 = v49;
          v50 = (a2 + v47);
          v74 = (a2 + v47);
          v71 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v79 = a2;
              v77 = v65;
              goto LABEL_68;
            }

            v52 = a3;
            v66 = v49;
            v53 = *v69;
            v75 = (v48 + v47);
            v54 = v76;
            (v53)(v72);
            (v53)(v73, v50, v54);
            v55 = sub_26EF38C8C();
            v57 = v56;
            if (v55 != sub_26EF38C8C())
            {
              goto LABEL_51;
            }

            if (v57 == v58)
            {
              v59 = 0;
            }

            else
            {
LABEL_51:
              v59 = sub_26EF3B82C();
            }

            v47 = v70;
            a3 = v70 + v52;
            v60 = *v67;
            v61 = v76;
            (*v67)(v73, v76);
            v60(v72, v61);
            if (v59)
            {
              break;
            }

            v62 = v75;
            v49 = v75;
            if (v52 < v48 || a3 >= v48)
            {
              swift_arrayInitWithTakeFrontToBack();
              v50 = v74;
            }

            else
            {
              v50 = v74;
              if (v52 != v48)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v48 = v49;
            v51 = v62 > v68;
            a2 = v71;
            if (!v51)
            {
              goto LABEL_66;
            }
          }

          if (v52 < v71 || a3 >= v71)
          {
            break;
          }

          a2 = v74;
          v63 = v68;
          v49 = v66;
          if (v52 != v71)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v48 <= v63)
          {
            goto LABEL_66;
          }
        }

        a2 = v74;
        swift_arrayInitWithTakeFrontToBack();
        v49 = v66;
        if (v48 > v68)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v79 = a2;
    v77 = v49;
  }

  else
  {
    v26 = v25 * v23;
    if (a4 < a1 || a1 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v73 = (a4 + v26);
    v77 = a4 + v26;
    if (v26 >= 1 && a2 < a3)
    {
      v29 = *(v8 + 16);
      v71 = v23;
      v72 = (v8 + 16);
      v69 = (v8 + 8);
      v70 = v29;
      do
      {
        v30 = a3;
        v31 = a2;
        v32 = a2;
        v33 = v76;
        v34 = v70;
        v70(v74, v32, v76);
        v34(v75, a4, v33);
        v35 = sub_26EF38C8C();
        v37 = v36;
        if (v35 == sub_26EF38C8C() && v37 == v38)
        {

          v39 = *v69;
          v40 = v76;
          (*v69)(v75, v76);
          v39(v74, v40);
        }

        else
        {
          v41 = sub_26EF3B82C();

          v42 = *v69;
          v43 = v76;
          (*v69)(v75, v76);
          v42(v74, v43);
          if (v41)
          {
            a2 = v31 + v71;
            a3 = v30;
            if (a1 < v31 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v31)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v45 = v71;
            goto LABEL_37;
          }
        }

        v44 = a4;
        v45 = v71;
        a4 += v71;
        a2 = v31;
        a3 = v30;
        if (a1 < v44 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v44)
        {
          swift_arrayInitWithTakeBackToFront();
          v78 = a4;
          goto LABEL_37;
        }

        v78 = a4;
LABEL_37:
        a1 += v45;
        v79 = a1;
      }

      while (a4 < v73 && a2 < a3);
    }
  }

LABEL_68:
  sub_26EEF08AC(&v79, &v78, &v77, MEMORY[0x277D705B0]);
  return 1;
}

uint64_t sub_26EEF08AC(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_26EEF0994()
{
  v1 = sub_26EF38E9C();
  v29 = *(v1 - 8);
  v2 = *(v29 + 64);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v32 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v4, v6);
  v33 = &v25 - v8;
  v28 = v0;
  v9 = *v0;
  v10 = *(*v0 + 2);
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    v12 = 0;
    v25 = v10 - 2;
    v26 = (v29 + 40);
    v27 = v29 + 16;
    while (1)
    {
      v34 = 0;
      result = MEMORY[0x2743842B0](&v34, 8);
      v14 = (v34 * v10) >> 64;
      if (v10 > v34 * v10)
      {
        v15 = -v10 % v10;
        if (v15 > v34 * v10)
        {
          do
          {
            v34 = 0;
            result = MEMORY[0x2743842B0](&v34, 8);
          }

          while (v15 > v34 * v10);
          v14 = (v34 * v10) >> 64;
        }
      }

      v16 = v12 + v14;
      if (__OFADD__(v12, v14))
      {
        break;
      }

      if (v12 != v16)
      {
        v17 = *(v9 + 2);
        if (v12 >= v17)
        {
          goto LABEL_19;
        }

        v18 = v1;
        v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
        v19 = &v9[v31];
        v20 = *(v29 + 72);
        v21 = *(v29 + 16);
        v30 = v20 * v12;
        result = v21(v33, &v9[v31 + v20 * v12], v18);
        if (v16 >= v17)
        {
          goto LABEL_20;
        }

        v22 = v20 * v16;
        v21(v32, &v19[v20 * v16], v18);
        result = swift_isUniquelyReferenced_nonNull_native();
        v1 = v18;
        if ((result & 1) == 0)
        {
          result = sub_26EEF15E4(v9);
          v9 = result;
        }

        if (v12 >= *(v9 + 2))
        {
          goto LABEL_21;
        }

        v23 = &v9[v31];
        v24 = *v26;
        result = (*v26)(&v9[v31 + v30], v32, v18);
        if (v16 >= *(v9 + 2))
        {
          goto LABEL_22;
        }

        result = v24(&v23[v22], v33, v18);
        *v28 = v9;
        v11 = v25;
      }

      --v10;
      if (v12++ == v11)
      {
        return result;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_26EEF0C38(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v39 = a2;
  result = sub_26EF3B7BC();
  v10 = result;
  if (*(v7 + 16))
  {
    v37 = v5;
    v38 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v40 = (v15 - 1) & v15;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 8 * v22);
      v25 = *(v23 + 8 * v22);
      if ((v39 & 1) == 0)
      {
        v26 = v24;
      }

      v27 = *(v10 + 40);
      sub_26EF3B0FC();
      sub_26EF3B87C();
      sub_26EF3B16C();
      v28 = sub_26EF3B8CC();

      v29 = -1 << *(v10 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v17 + 8 * v31);
          if (v35 != -1)
          {
            v18 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v24;
      *(*(v10 + 56) + 8 * v18) = v25;
      ++*(v10 + 16);
      v7 = v38;
      v15 = v40;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v40 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v5 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v7 + 32);
    v5 = v37;
    if (v36 >= 64)
    {
      bzero(v12, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_26EEF0EF8(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v10 = v6;
  v13 = *v6;
  v14 = sub_26EEEC66C(a2);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 < v19 || (a3 & 1) != 0)
    {
      sub_26EEF0C38(v19, a3 & 1, a4, a5);
      v22 = *v10;
      v14 = sub_26EEEC66C(a2);
      if ((v20 & 1) != (v23 & 1))
      {
LABEL_18:
        a6(0);
        sub_26EF3B86C();
        __break(1u);
        return MEMORY[0x2821F9840]();
      }
    }

    else
    {
      a6 = v14;
      sub_26EEF1090(a4, a5);
      v14 = a6;
    }
  }

  v24 = *v10;
  if ((v20 & 1) == 0)
  {
    v24[(v14 >> 6) + 8] |= 1 << v14;
    *(v24[6] + 8 * v14) = a2;
    *(v24[7] + 8 * v14) = a1;
    v28 = v24[2];
    v18 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v18)
    {
      v24[2] = v29;

      return MEMORY[0x2821F9840]();
    }

    goto LABEL_17;
  }

  v25 = v24[7];
  v26 = *(v25 + 8 * v14);
  *(v25 + 8 * v14) = a1;
}

void *sub_26EEF1090(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_26EF3B7AC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
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

      v18 = *(v4 + 64 + 8 * v10);
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

uint64_t sub_26EEF11E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26EF3920C();
  v49 = *(v4 - 8);
  v5 = *(v49 + 64);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v47 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7, v9);
  v12 = &v36 - v11;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v13 = 0;
  v14 = *(a1 + 64);
  v37 = a1 + 64;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v45 = (v49 + 8);
  v46 = v49 + 16;
  v38 = v18;
  v39 = a1;
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v41 = (v17 - 1) & v17;
LABEL_14:
    v40 = v13;
    v22 = v19 | (v13 << 6);
    v23 = *(*(a1 + 56) + 8 * v22);
    v24 = *(*(a1 + 48) + 8 * v22);

    v25 = sub_26EEEC66C(v24);
    v27 = v26;

    if ((v27 & 1) == 0 || (v48 = *(*(a2 + 56) + 8 * v25), v28 = *(v48 + 16), v28 != *(v23 + 16)))
    {
LABEL_26:

      return 0;
    }

    if (v28 && v48 != v23)
    {
      v36 = a2;
      v29 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v43 = v23 + v29;
      v44 = v48 + v29;

      v30 = 0;
      v42 = v23;
      while (v30 < *(v48 + 16))
      {
        v31 = *(v49 + 72) * v30;
        v32 = *(v49 + 16);
        result = v32(v12, v44 + v31, v4);
        if (v30 >= *(v23 + 16))
        {
          goto LABEL_31;
        }

        v33 = v47;
        v32(v47, v43 + v31, v4);
        sub_26EEF17DC(&qword_2806C9388, MEMORY[0x277D70678]);
        v34 = sub_26EF3B0AC();
        v35 = *v45;
        (*v45)(v33, v4);
        result = v35(v12, v4);
        if ((v34 & 1) == 0)
        {

          goto LABEL_26;
        }

        ++v30;
        v23 = v42;
        if (v28 == v30)
        {

          a2 = v36;
          goto LABEL_6;
        }
      }

      goto LABEL_30;
    }

LABEL_6:

    v18 = v38;
    a1 = v39;
    v13 = v40;
    v17 = v41;
  }

  v20 = v13;
  while (1)
  {
    v13 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v13 >= v18)
    {
      return 1;
    }

    v21 = *(v37 + 8 * v13);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v41 = (v21 - 1) & v21;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

BOOL sub_26EEF1570(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_26EF3B82C() & 1;
    }
  }

  return result;
}

unint64_t sub_26EEF167C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806C9380, &unk_26EF42CE0);
    v3 = sub_26EF3B7CC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_26EEEC66C(v6);
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