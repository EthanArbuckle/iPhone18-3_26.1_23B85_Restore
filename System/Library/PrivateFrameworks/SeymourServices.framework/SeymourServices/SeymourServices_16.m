uint64_t sub_227025550@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v58 = a3;
  v62 = a4;
  v68 = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9158, &qword_2276730B8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v59 = &v52 - v9;
  v10 = sub_227663260();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v55 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_22766B910();
  v60 = *(v61 - 8);
  v14 = *(v60 + 64);
  MEMORY[0x28223BE20](v61);
  v16 = *(a1 + 16);
  v17 = MEMORY[0x277D84F90];
  v63 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a2;
  if (v16)
  {
    v53 = v11;
    v54 = v10;
    *&v56 = v4;
    *&v65[0] = MEMORY[0x277D84F90];
    sub_226F1ED50(0, v16, 0);
    v17 = *&v65[0];
    v18 = objc_opt_self();
    v19 = (a1 + 40);
    while (1)
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      sub_226F5E0B4(v20, *v19);
      v22 = sub_227662560();
      v64 = 0;
      v23 = [v18 JSONObjectWithData:v22 options:0 error:&v64];

      v24 = v64;
      if (!v23)
      {
        break;
      }

      sub_22766CC20();
      sub_226EDC420(v20, v21);
      swift_unknownObjectRelease();
      *&v65[0] = v17;
      v26 = *(v17 + 16);
      v25 = *(v17 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_226F1ED50((v25 > 1), v26 + 1, 1);
        v17 = *&v65[0];
      }

      v19 += 2;
      *(v17 + 16) = v26 + 1;
      sub_226F04970(&v66, (v17 + 32 * v26 + 32));
      if (!--v16)
      {
        v10 = v54;
        v11 = v53;
        goto LABEL_9;
      }
    }

    v27 = v24;
    sub_2276622C0();

    swift_willThrow();
    sub_226EDC420(v20, v21);
  }

  else
  {
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
    inited = swift_initStackObject();
    v56 = xmmword_227670CD0;
    *(inited + 16) = xmmword_227670CD0;
    *(inited + 32) = 0x6973736572706D69;
    *(inited + 40) = 0xEB00000000736E6FLL;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CC0, &unk_227675D40);
    *(inited + 48) = v17;
    v30 = sub_227149264(inited);
    swift_setDeallocating();
    sub_226E97D1C(inited + 32, &unk_27D7BE5C0, &qword_22767D1D0);
    sub_22766B890();
    v31 = sub_227149264(MEMORY[0x277D84F90]);
    v32 = sub_22766B900();
    v67 = MEMORY[0x277D837D0];
    *&v66 = v32;
    *(&v66 + 1) = v33;
    sub_226F04970(&v66, v65);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = v31;
    sub_22736A46C(v65, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
    v35 = v64;
    v36 = v59;
    sub_226E93170(v58, v59, &qword_27D7B9158, &qword_2276730B8);
    if ((*(v11 + 48))(v36, 1, v10) == 1)
    {
      sub_226E97D1C(v36, &qword_27D7B9158, &qword_2276730B8);
    }

    else
    {
      v37 = v55;
      (*(v11 + 32))(v55, v36, v10);
      v38 = sub_227663200();
      v39 = sub_2275A5364(v38);

      if (v39)
      {
        v40 = swift_isUniquelyReferenced_nonNull_native();
        *&v66 = v35;
        sub_2270318E8(v39, sub_227553D14, 0, v40, &v66);

        (*(v11 + 8))(v37, v10);
        v35 = v66;
      }

      else
      {
        (*(v11 + 8))(v37, v10);
      }
    }

    v41 = swift_isUniquelyReferenced_nonNull_native();
    *&v66 = v35;
    sub_2270318E8(v30, sub_227553D14, 0, v41, &v66);
    swift_bridgeObjectRelease_n();
    sub_2276637A0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C78, &qword_227675CE8);
    v42 = sub_22766BC20();
    v43 = *(v42 - 8);
    v44 = *(v43 + 72);
    v45 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = v56;
    sub_22766BC10();
    sub_226F4C828(v46);
    swift_setDeallocating();
    (*(v43 + 8))(v46 + v45, v42);
    swift_deallocClassInstance();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C80, &unk_227675CF0);
    v47 = *(sub_22766BC00() - 8);
    v48 = *(v47 + 72);
    v49 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_2276728D0;
    sub_22766BBA0();
    sub_22766BBC0();
    sub_226F4CB48(v50);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_22766B7C0();
    result = (*(v60 + 8))(v63, v61);
  }

  v51 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_227025D70@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v63 = a3;
  v70 = a2;
  v69 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9158, &qword_2276730B8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v60 - v8;
  v65 = sub_227663260();
  v64 = *(v65 - 8);
  v10 = *(v64 + 64);
  MEMORY[0x28223BE20](v65);
  v62 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_22766B910();
  v67 = *(v68 - 8);
  v12 = *(v67 + 64);
  MEMORY[0x28223BE20](v68);
  v72 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B390();
  v61 = *(v14 - 8);
  v15 = *(v61 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_227667120();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a1;
  v23 = sub_227663720();
  v24 = MEMORY[0x277D837D0];
  if (v23)
  {
    result = sub_227665DF0();
    v71 = v4;
    if (v4)
    {
      return result;
    }

    v31 = sub_2275A5364(result);

    if (!v31)
    {
      sub_22766A740();
      v44 = sub_22766B380();
      v45 = sub_22766C890();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_226E8E000, v44, v45, "Unable to serialize purchase event", v46, 2u);
        MEMORY[0x22AA9A450](v46, -1, -1);
      }

      (*(v61 + 8))(v17, v14);
      v47 = sub_2276636A0();
      sub_2270336B8(&qword_28139BCC0, MEMORY[0x277D500E0]);
      v48 = swift_allocError();
      (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D50040], v47);
      v71 = v48;
      return swift_willThrow();
    }
  }

  else
  {
    v71 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_227670CD0;
    *(inited + 32) = sub_227664760();
    *(inited + 40) = v27;
    sub_227665E00();
    v28 = sub_227667110();
    v30 = v29;
    (*(v19 + 8))(v22, v18);
    *(inited + 72) = v24;
    *(inited + 48) = v28;
    *(inited + 56) = v30;
    v31 = sub_227149264(inited);
    swift_setDeallocating();
    sub_226E97D1C(inited + 32, &unk_27D7BE5C0, &qword_22767D1D0);
  }

  sub_2276647A0();
  sub_22766B8F0();
  v32 = sub_227149264(MEMORY[0x277D84F90]);
  v33 = sub_22766B900();
  v75 = v24;
  *&v74 = v33;
  *(&v74 + 1) = v34;
  sub_226F04970(&v74, v73);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v76 = v32;
  sub_22736A46C(v73, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v36 = v76;
  sub_226E93170(v63, v9, &qword_27D7B9158, &qword_2276730B8);
  v37 = v64;
  v38 = v65;
  if ((*(v64 + 48))(v9, 1, v65) == 1)
  {
    v39 = &unk_227670000;
    sub_226E97D1C(v9, &qword_27D7B9158, &qword_2276730B8);
  }

  else
  {
    v40 = v62;
    (*(v37 + 32))();
    v41 = sub_227663200();
    v42 = sub_2275A5364(v41);

    v39 = &unk_227670000;
    if (v42)
    {
      v43 = swift_isUniquelyReferenced_nonNull_native();
      *&v74 = v36;
      sub_2270318E8(v42, sub_227553D14, 0, v43, &v74);

      (*(v37 + 8))(v40, v38);
      v36 = v74;
    }

    else
    {
      (*(v37 + 8))(v40, v38);
    }
  }

  v50 = swift_isUniquelyReferenced_nonNull_native();
  *&v74 = v36;
  sub_2270318E8(v31, sub_227553D14, 0, v50, &v74);
  swift_bridgeObjectRelease_n();
  sub_2276637A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C78, &qword_227675CE8);
  v51 = sub_22766BC20();
  v52 = *(v51 - 8);
  v53 = *(v52 + 72);
  v54 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = v39[205];
  sub_22766BC10();
  sub_226F4C828(v55);
  swift_setDeallocating();
  (*(v52 + 8))(v55 + v54, v51);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C80, &unk_227675CF0);
  v56 = *(sub_22766BC00() - 8);
  v57 = *(v56 + 72);
  v58 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_2276728D0;
  sub_22766BBA0();
  sub_22766BBC0();
  sub_226F4CB48(v59);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_22766B7C0();
  return (*(v67 + 8))(v72, v68);
}

uint64_t sub_227026668@<X0>(int a1@<W2>, uint64_t a2@<X3>, uint64_t (*a3)(uint64_t)@<X4>, void (*a4)(uint64_t)@<X5>, const char *a5@<X6>, uint64_t a6@<X8>)
{
  v62 = a5;
  v63 = a2;
  v68 = a4;
  v70 = a3;
  v65 = a1;
  v67 = a6;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9158, &qword_2276730B8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v58 - v8;
  v10 = sub_227663260();
  v64 = *(v10 - 8);
  v11 = *(v64 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B910();
  v66 = *(v14 - 8);
  v15 = *(v66 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_22766B390();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v69;
  result = v70(v21);
  if (!v24)
  {
    v59 = v19;
    v60 = v18;
    v26 = v68;
    v58 = v13;
    v69 = 0;
    v70 = v17;
    v61 = v14;
    v27 = sub_2275A5364(result);

    if (v27)
    {
      v26(v28);
      v29 = sub_227149264(MEMORY[0x277D84F90]);
      v30 = sub_22766B900();
      v73 = MEMORY[0x277D837D0];
      *&v72 = v30;
      *(&v72 + 1) = v31;
      sub_226F04970(&v72, v71);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = v29;
      sub_22736A46C(v71, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
      v33 = v74;
      v34 = v9;
      sub_226E93170(v63, v9, &qword_27D7B9158, &qword_2276730B8);
      v35 = v64;
      v36 = v9;
      v37 = v10;
      if ((*(v64 + 48))(v36, 1, v10) == 1)
      {
        sub_226E97D1C(v34, &qword_27D7B9158, &qword_2276730B8);
      }

      else
      {
        v43 = v58;
        (*(v35 + 32))(v58, v34, v10);
        v44 = sub_227663200();
        v45 = sub_2275A5364(v44);

        if (v45)
        {
          v46 = swift_isUniquelyReferenced_nonNull_native();
          *&v72 = v33;
          v47 = v69;
          sub_2270318E8(v45, sub_227553D14, 0, v46, &v72);
          v69 = v47;

          (*(v35 + 8))(v43, v37);
          v33 = v72;
        }

        else
        {
          (*(v35 + 8))(v43, v37);
        }
      }

      v48 = swift_isUniquelyReferenced_nonNull_native();
      *&v72 = v33;
      sub_2270318E8(v27, sub_227553D14, 0, v48, &v72);
      swift_bridgeObjectRelease_n();
      sub_2276637A0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C78, &qword_227675CE8);
      v49 = sub_22766BC20();
      v50 = *(v49 - 8);
      v51 = *(v50 + 72);
      v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_227670CD0;
      sub_22766BC10();
      sub_226F4C828(v53);
      swift_setDeallocating();
      (*(v50 + 8))(v53 + v52, v49);
      swift_deallocClassInstance();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C80, &unk_227675CF0);
      v54 = *(sub_22766BC00() - 8);
      v55 = *(v54 + 72);
      v56 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_2276728D0;
      sub_22766BBA0();
      sub_22766BBC0();
      sub_226F4CB48(v57);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_22766B7C0();
      return (*(v66 + 8))(v70, v61);
    }

    else
    {
      sub_22766A740();
      v38 = sub_22766B380();
      v39 = sub_22766C890();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_226E8E000, v38, v39, v62, v40, 2u);
        MEMORY[0x22AA9A450](v40, -1, -1);
      }

      (*(v59 + 8))(v23, v60);
      v41 = sub_2276636A0();
      sub_2270336B8(&qword_28139BCC0, MEMORY[0x277D500E0]);
      swift_allocError();
      (*(*(v41 - 8) + 104))(v42, *MEMORY[0x277D50040], v41);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_227026DE8()
{
  v1 = OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder__metricsEventDefaultRoutingBehavior;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_recorder));
  v3 = OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_metricsPipeline;
  v4 = sub_22766B880();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_eventSequenceNumberProvider));
  sub_227033DFC(v0 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_recordingContextBuilder);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_identifierStore));
  v5 = OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_bag;
  v6 = sub_22766BCB0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_healthStore));

  sub_226E97D1C(v0 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_referrerURL, &unk_27D7BB570, &unk_227670FC0);
  v7 = *(v0 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_sourceApplication + 8);

  return v0;
}

uint64_t sub_227026F68()
{
  sub_227026DE8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for JetMetricsRecorder()
{
  result = qword_28139A900;
  if (!qword_28139A900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_227027014()
{
  sub_226F57660();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = sub_22766B880();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = sub_22766BCB0();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_227027194();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_227027194()
{
  if (!qword_2813A5828)
  {
    sub_2276624A0();
    v0 = sub_22766CB90();
    if (!v1)
    {
      atomic_store(v0, &qword_2813A5828);
    }
  }
}

uint64_t sub_2270271EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v92 = sub_227667830();
  v96 = *(v92 - 8);
  v3 = *(v96 + 64);
  MEMORY[0x28223BE20](v92);
  v79 = v3;
  v91 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_227664D30();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C60, &unk_227675C98);
  v95 = *(v85 - 8);
  v8 = *(v95 + 64);
  v9 = MEMORY[0x28223BE20](v85);
  v84 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v71 - v11;
  MEMORY[0x28223BE20](v10);
  v86 = &v71 - v13;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v97 = *(v89 - 8);
  v87 = v97[8];
  v14 = MEMORY[0x28223BE20](v89);
  v88 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v93 = &v71 - v17;
  MEMORY[0x28223BE20](v16);
  v94 = &v71 - v18;
  v19 = sub_22766B390();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A650();
  sub_22766B370();
  (*(v20 + 8))(v23, v19);
  v82 = a1;
  sub_2276677F0();
  v72 = v12;
  sub_226F065C4(v7, v12);
  sub_2270312E0(v7, MEMORY[0x277D50F70]);
  v24 = v96;
  v25 = *(v96 + 16);
  v80 = v96 + 16;
  v81 = v25;
  v26 = v91;
  v27 = v92;
  v25(v91, a1, v92);
  v28 = *(v24 + 80);
  v29 = swift_allocObject();
  v30 = *(v24 + 32);
  v96 = v24 + 32;
  v78 = v30;
  v30(v29 + ((v28 + 16) & ~v28), v26, v27);
  v31 = swift_allocObject();
  *(v31 + 16) = sub_22703121C;
  *(v31 + 24) = v29;
  v32 = v95;
  v33 = *(v95 + 16);
  v76 = v95 + 16;
  v77 = v33;
  v35 = v84;
  v34 = v85;
  v33(v84, v12, v85);
  v36 = *(v32 + 80);
  v71 = v36;
  v37 = (v36 + 16) & ~v36;
  v75 = v37;
  v38 = (v8 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = v38;
  v39 = swift_allocObject();
  v74 = *(v32 + 32);
  v40 = v39 + v37;
  v41 = v34;
  v74(v40, v35, v34);
  v42 = (v39 + v38);
  *v42 = sub_22703125C;
  v42[1] = v31;
  type metadata accessor for MetricRecordingContext();
  v43 = v86;
  sub_227669270();
  v44 = *(v32 + 8);
  v95 = v32 + 8;
  v84 = v44;
  v45 = v72;
  v46 = v41;
  (v44)(v72, v41);
  v47 = v91;
  v48 = v92;
  v81(v91, v82, v92);
  v49 = swift_allocObject();
  *(v49 + 16) = v83;
  v78(v49 + ((v28 + 24) & ~v28), v47, v48);
  v77(v45, v43, v46);
  v50 = v73;
  v51 = swift_allocObject();
  v74(v51 + v75, v45, v46);
  v52 = (v51 + v50);
  *v52 = sub_22703128C;
  v52[1] = v49;

  v53 = v93;
  sub_227669270();
  (v84)(v43, v46);
  v54 = swift_allocObject();
  *(v54 + 16) = sub_22701E45C;
  *(v54 + 24) = 0;
  v55 = v97;
  v96 = v97[2];
  v56 = v88;
  v57 = v89;
  (v96)(v88, v53, v89);
  v58 = v55;
  v59 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v95 = v59;
  v60 = (v87 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  v62 = v58[4];
  v62(v61 + v59, v56, v57);
  v63 = (v61 + v60);
  *v63 = sub_226F32FEC;
  v63[1] = v54;
  v64 = v94;
  sub_227669270();
  v65 = v97[1];
  ++v97;
  v66 = v93;
  v65(v93, v57);
  v67 = swift_allocObject();
  *(v67 + 16) = sub_227029938;
  *(v67 + 24) = 0;
  (v96)(v66, v64, v57);
  v68 = swift_allocObject();
  v62(v68 + v95, v66, v57);
  v69 = (v68 + v60);
  *v69 = sub_226F5AAF8;
  v69[1] = v67;
  sub_227669270();
  return (v65)(v94, v57);
}

uint64_t sub_227027ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v111 = a2;
  v102 = a4;
  v6 = type metadata accessor for MetricRecordingContext();
  v98 = *(v6 - 8);
  v7 = *(v98 + 64);
  MEMORY[0x28223BE20](v6);
  v99 = v8;
  v108 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227667830();
  v97 = *(v9 - 8);
  v10 = *(v97 + 64);
  MEMORY[0x28223BE20](v9);
  v93 = v11;
  v107 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v86 = &v83 - v14;
  v15 = sub_227664D30();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v85 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C68, &qword_227675CA8);
  v100 = *(v18 - 8);
  v101 = v18;
  v19 = *(v100 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v95 = v21;
  v96 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v109 = &v83 - v22;
  v23 = sub_22766B390();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22766BA80();
  v105 = *(v28 - 8);
  v106 = v28;
  v29 = *(v105 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v104 = &v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v31;
  MEMORY[0x28223BE20](v30);
  v110 = &v83 - v32;
  v33 = type metadata accessor for MetricServiceSubscriptionState();
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v36 = &v83 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0);
  v87 = *(v37 - 8);
  v38 = *(v87 + 64);
  v39 = MEMORY[0x28223BE20](v37 - 8);
  v103 = &v83 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v40;
  MEMORY[0x28223BE20](v39);
  v42 = &v83 - v41;
  v94 = v9;
  v43 = a3;
  v89 = sub_227668DD0();
  v91 = v6;
  v92 = a1;
  sub_227031340(a1 + *(v6 + 28), v36, type metadata accessor for MetricServiceSubscriptionState);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_2270312E0(v36, type metadata accessor for MetricServiceSubscriptionState);
    v44 = sub_227665AD0();
    (*(*(v44 - 8) + 56))(v42, 1, 1, v44);
  }

  else
  {
    v45 = sub_227665AD0();
    v46 = *(v45 - 8);
    (*(v46 + 32))(v42, v36, v45);
    (*(v46 + 56))(v42, 0, 1, v45);
  }

  v47 = v42;
  v48 = sub_2276636C0();
  v84 = sub_22718C804(128, v48);

  sub_22766BA70();
  sub_22766A650();
  v49 = sub_22766B380();
  v50 = sub_22766C8B0();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_226E8E000, v49, v50, "Making identifier", v51, 2u);
    MEMORY[0x22AA9A450](v51, -1, -1);
  }

  (*(v24 + 8))(v27, v23);
  v52 = *(v111 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_identifierStore + 24);
  v53 = *(v111 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_identifierStore + 32);
  __swift_project_boxed_opaque_existential_0((v111 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_identifierStore), v52);
  v54 = v85;
  sub_2276677F0();
  v55 = *(v91 + 20);
  v56 = sub_227662750();
  v57 = v86;
  (*(*(v56 - 8) + 56))(v86, 1, 1, v56);
  v58 = *(v53 + 48);
  v59 = v92;
  v83 = v42;
  v58(v54, v42, v92 + v55, 128, v57, v52, v53);
  sub_226E97D1C(v57, &qword_27D7B9690, qword_227670B50);
  sub_2270312E0(v54, MEMORY[0x277D50F70]);
  v60 = v97;
  v61 = v43;
  v62 = v94;
  (*(v97 + 16))(v107, v61, v94);
  sub_226E93170(v47, v103, &qword_27D7B8428, &qword_227675CB0);
  sub_227031340(v59, v108, type metadata accessor for MetricRecordingContext);
  v63 = v105;
  (*(v105 + 16))(v104, v110, v106);
  v64 = (*(v60 + 80) + 24) & ~*(v60 + 80);
  v65 = v64 + v93;
  v66 = (*(v87 + 80) + v64 + v93 + 1) & ~*(v87 + 80);
  v67 = (v88 + *(v98 + 80) + v66) & ~*(v98 + 80);
  v68 = (v99 + *(v63 + 80) + v67) & ~*(v63 + 80);
  v69 = v68 + v90;
  v70 = (v68 + v90) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  *(v71 + 16) = v111;
  (*(v60 + 32))(v71 + v64, v107, v62);
  *(v71 + v65) = 0x80;
  sub_226E95D18(v103, v71 + v66, &qword_27D7B8428, &qword_227675CB0);
  sub_2270313A8(v108, v71 + v67);
  v72 = v105;
  v73 = v106;
  (*(v105 + 32))(v71 + v68, v104, v106);
  *(v71 + v69) = v84 & 1;
  *(v71 + v70 + 8) = v89;
  v74 = v100;
  v75 = v101;
  v76 = v96;
  v77 = v109;
  (*(v100 + 16))(v96, v109, v101);
  v78 = (*(v74 + 80) + 16) & ~*(v74 + 80);
  v79 = (v95 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  (*(v74 + 32))(v80 + v78, v76, v75);
  v81 = (v80 + v79);
  *v81 = sub_22703140C;
  v81[1] = v71;

  sub_227669270();
  (*(v74 + 8))(v77, v75);
  (*(v72 + 8))(v110, v73);
  return sub_226E97D1C(v83, &qword_27D7B8428, &qword_227675CB0);
}

uint64_t sub_227028540@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  v78 = a8;
  v73 = a7;
  v70 = a5;
  v71 = a6;
  v86 = a4;
  v83 = a3;
  v89 = a2;
  v80 = a9;
  v79 = a10;
  v11 = sub_22766BA80();
  v76 = *(v11 - 8);
  v77 = v11;
  v12 = *(v76 + 64);
  MEMORY[0x28223BE20](v11);
  v72 = v13;
  v87 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MetricRecordingContext();
  v68 = *(v14 - 8);
  v15 = *(v68 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v69 = v16;
  v85 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0);
  v64 = *(v17 - 8);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v84 = &v59 - v18;
  v81 = sub_227667830();
  v19 = *(v81 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v81);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C70, &qword_227675CB8);
  v74 = *(v21 - 8);
  v75 = v21;
  v22 = *(v74 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v67 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v24;
  MEMORY[0x28223BE20](v23);
  v82 = &v59 - v25;
  v26 = sub_22766B390();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = *a1;
  sub_22766A650();
  v31 = sub_22766B380();
  v32 = sub_22766C8B0();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_226E8E000, v31, v32, "Got metric identifier fields for recording health activity stream", v33, 2u);
    MEMORY[0x22AA9A450](v33, -1, -1);
  }

  (*(v27 + 8))(v30, v26);
  v59 = *(v19 + 16);
  v34 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v81;
  v59(v34, v83, v81);
  v36 = *(v19 + 80);
  v37 = (v36 + 24) & ~v36;
  v61 = v36 | 7;
  v38 = swift_allocObject();
  *(v38 + 16) = v89;
  v62 = *(v19 + 32);
  v63 = v19 + 32;
  v60 = v34;
  v62(v38 + v37, v34, v35);
  v39 = v38 + ((v20 + 7 + v37) & 0xFFFFFFFFFFFFFFF8);
  *v39 = v88;
  *(v39 + 8) = v86;
  sub_22766B7F0();

  sub_227669280();
  v59(v34, v83, v35);
  sub_226E93170(v70, v84, &qword_27D7B8428, &qword_227675CB0);
  sub_227031340(v71, v85, type metadata accessor for MetricRecordingContext);
  v41 = v76;
  v40 = v77;
  (*(v76 + 16))(v87, v73, v77);
  v42 = (v36 + 25) & ~v36;
  v43 = (v20 + 7 + v42) & 0xFFFFFFFFFFFFFFF8;
  v44 = (v43 + *(v64 + 80) + 8) & ~*(v64 + 80);
  v45 = (v65 + *(v68 + 80) + v44) & ~*(v68 + 80);
  v46 = (v69 + *(v41 + 80) + v45) & ~*(v41 + 80);
  v47 = v46 + v72;
  v48 = (v46 + v72) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  *(v49 + 16) = v89;
  *(v49 + 24) = v86;
  v62(v49 + v42, v60, v81);
  *(v49 + v43) = v88;
  sub_226E95D18(v84, v49 + v44, &qword_27D7B8428, &qword_227675CB0);
  sub_2270313A8(v85, v49 + v45);
  (*(v41 + 32))(v49 + v46, v87, v40);
  *(v49 + v47) = v78 & 1;
  *(v49 + v48 + 8) = v79;
  v51 = v74;
  v50 = v75;
  v52 = v67;
  v53 = v82;
  (*(v74 + 16))(v67, v82, v75);
  v54 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v55 = (v66 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  (*(v51 + 32))(v56 + v54, v52, v50);
  v57 = (v56 + v55);
  *v57 = sub_2270316C4;
  v57[1] = v49;

  sub_227669270();
  return (*(v51 + 8))(v53, v50);
}

uint64_t sub_227028D0C@<X0>(uint64_t a1@<X2>, int a2@<W3>, uint64_t a3@<X8>)
{
  LODWORD(v68) = a2;
  v70 = a3;
  v4 = sub_22766B910();
  v71 = *(v4 - 8);
  v72 = v4;
  v5 = *(v71 + 64);
  MEMORY[0x28223BE20](v4);
  v67 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_227664CE0();
  v69 = *(v7 - 8);
  v8 = *(v69 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227667100();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2276685D0();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227331EA0(a1);

  sub_227667820();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v69 + 32))(v10, v19, v7);
    v20 = sub_227664CC0();
    v21 = sub_2275A5364(v20);

    v66 = v7;
    *&v64 = v10;
    if (!v21)
    {
      v21 = sub_227149264(MEMORY[0x277D84F90]);
    }

    v22 = v67;
    sub_22766B8F0();
    v23 = sub_227149264(MEMORY[0x277D84F90]);
    v24 = sub_22766B900();
    v76 = MEMORY[0x277D837D0];
    *&v75 = v24;
    *(&v75 + 1) = v25;
    sub_226F04970(&v75, v74);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = v23;
    sub_22736A46C(v74, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
    v27 = v77;

    v28 = swift_isUniquelyReferenced_nonNull_native();
    *&v75 = v27;
    v29 = v73;
    sub_2270318E8(v21, sub_227553D14, 0, v28, &v75);
    v73 = v29;

    v68 = sub_2276637A0();
    v65 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C78, &qword_227675CE8);
    v31 = sub_22766BC20();
    v32 = *(v31 - 8);
    v33 = *(v32 + 72);
    v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v35 = swift_allocObject();
    v63 = xmmword_227670CD0;
    *(v35 + 16) = xmmword_227670CD0;
    sub_22766BC10();
    sub_226F4C828(v35);
    swift_setDeallocating();
    (*(v32 + 8))(v35 + v34, v31);
    swift_deallocClassInstance();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C80, &unk_227675CF0);
    v36 = sub_22766BC00();
    v37 = *(v36 - 8);
    v38 = *(v37 + 72);
    v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = v63;
    sub_22766BBA0();
    sub_226F4CB48(v40);
    swift_setDeallocating();
    (*(v37 + 8))(v40 + v39, v36);
    swift_deallocClassInstance();
    sub_22766B7C0();

    (*(v71 + 8))(v22, v72);
    return (*(v69 + 8))(v64, v66);
  }

  else
  {
    (*(v12 + 32))(v15, v19, v11);
    v42 = sub_227667020();
    v43 = sub_2275A5364(v42);

    v65 = v11;
    *&v63 = v15;
    if (!v43)
    {
      v43 = sub_227149264(MEMORY[0x277D84F90]);
    }

    v44 = v67;
    sub_22766B8F0();
    v45 = sub_227149264(MEMORY[0x277D84F90]);
    v46 = sub_22766B900();
    v76 = MEMORY[0x277D837D0];
    *&v75 = v46;
    *(&v75 + 1) = v47;
    sub_226F04970(&v75, v74);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v77 = v45;
    sub_22736A46C(v74, 0x707954746E657665, 0xE900000000000065, v48);
    v49 = v77;

    v50 = swift_isUniquelyReferenced_nonNull_native();
    *&v75 = v49;
    v51 = v73;
    sub_2270318E8(v43, sub_227553D14, 0, v50, &v75);
    v73 = v51;

    v69 = v75;
    v68 = sub_2276637A0();
    v66 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C78, &qword_227675CE8);
    v53 = sub_22766BC20();
    v54 = *(v53 - 8);
    v55 = *(v54 + 72);
    v56 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v57 = swift_allocObject();
    v64 = xmmword_227670CD0;
    *(v57 + 16) = xmmword_227670CD0;
    sub_22766BC10();
    sub_226F4C828(v57);
    swift_setDeallocating();
    (*(v54 + 8))(v57 + v56, v53);
    swift_deallocClassInstance();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C80, &unk_227675CF0);
    v58 = sub_22766BC00();
    v59 = *(v58 - 8);
    v60 = *(v59 + 72);
    v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = v64;
    sub_22766BBA0();
    sub_226F4CB48(v62);
    swift_setDeallocating();
    (*(v59 + 8))(v62 + v61, v58);
    swift_deallocClassInstance();
    sub_22766B7C0();

    (*(v71 + 8))(v44, v72);
    return (*(v12 + 8))(v63, v65);
  }
}

uint64_t sub_2270295EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v38 = a7;
  v39 = a5;
  v40 = a3;
  v41 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9138, &unk_227675CC0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9148, &qword_2276730B0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v38 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9150, &unk_227675CD0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v38 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9140, &unk_22767F4E0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v38 - v28;
  sub_227667800();
  v30 = sub_227331EA0(a4);
  v31 = sub_227665970();
  (*(*(v31 - 8) + 56))(v25, 1, 1, v31);
  v32 = sub_2276659A0();
  (*(*(v32 - 8) + 56))(v21, 1, 1, v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9160, &qword_227675CE0);
  (*(*(v33 - 8) + 56))(v17, 1, 1, v33);
  v34 = a6 + *(type metadata accessor for MetricRecordingContext() + 24);
  v35 = sub_227331EA0(a10);
  sub_22701E5B0(a1, v40, v29, v30, v25, v21, 1, v17, a8, v39, v34, v38, v37, v35);

  sub_226E97D1C(v17, &qword_27D7B9138, &unk_227675CC0);
  sub_226E97D1C(v21, &qword_27D7B9148, &qword_2276730B0);
  sub_226E97D1C(v25, &qword_27D7B9150, &unk_227675CD0);
  return sub_226E97D1C(v29, &qword_27D7B9140, &unk_22767F4E0);
}

uint64_t sub_22702996C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v88 = sub_2276651A0();
  v91 = *(v88 - 8);
  v3 = *(v91 + 64);
  MEMORY[0x28223BE20](v88);
  v4 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227664D30();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C60, &unk_227675C98);
  v92 = *(v82 - 8);
  v9 = *(v92 + 64);
  v10 = MEMORY[0x28223BE20](v82);
  v81 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v67 - v12;
  MEMORY[0x28223BE20](v11);
  v83 = &v67 - v14;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v93 = *(v86 - 8);
  v84 = v93[8];
  v15 = MEMORY[0x28223BE20](v86);
  v85 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v89 = &v67 - v18;
  MEMORY[0x28223BE20](v17);
  v90 = &v67 - v19;
  v20 = sub_22766B390();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A740();
  sub_22766B370();
  (*(v21 + 8))(v24, v20);
  v79 = a1;
  sub_227665110();
  v67 = v13;
  sub_226F065C4(v8, v13);
  sub_2270312E0(v8, MEMORY[0x277D50F70]);
  v25 = v91;
  v26 = *(v91 + 16);
  v77 = v91 + 16;
  v78 = v26;
  v71 = v4;
  v27 = v88;
  v26(v4, a1, v88);
  v76 = *(v25 + 80);
  v73 = ((v76 + 16) & ~v76) + v3;
  v74 = (v76 + 16) & ~v76;
  v28 = v74;
  v29 = swift_allocObject();
  v30 = *(v25 + 32);
  v91 = v25 + 32;
  v75 = v30;
  v30(v29 + v28, v4, v27);
  v31 = swift_allocObject();
  *(v31 + 16) = sub_227032F00;
  *(v31 + 24) = v29;
  v32 = v92;
  v72 = *(v92 + 16);
  v33 = v81;
  v34 = v82;
  v72(v81, v13, v82);
  v35 = *(v32 + 80);
  v70 = (v35 + 16) & ~v35;
  v36 = (v9 + v70 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = v36;
  v37 = swift_allocObject();
  v69 = *(v32 + 32);
  v69(v37 + ((v35 + 16) & ~v35), v33, v34);
  v38 = (v37 + v36);
  *v38 = sub_227033E50;
  v38[1] = v31;
  type metadata accessor for MetricRecordingContext();
  v39 = v83;
  sub_227669270();
  v81 = *(v32 + 8);
  v92 = v32 + 8;
  v40 = v67;
  v41 = v34;
  (v81)(v67, v34);
  v42 = v71;
  v43 = v88;
  v78(v71, v79, v88);
  v44 = (v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  v75(v45 + v74, v42, v43);
  *(v45 + v44) = v80;
  v72(v40, v39, v41);
  v46 = v68;
  v47 = swift_allocObject();
  v69(v47 + v70, v40, v41);
  v48 = (v47 + v46);
  *v48 = sub_22703306C;
  v48[1] = v45;

  v49 = v89;
  sub_227669270();
  (v81)(v39, v41);
  v50 = swift_allocObject();
  *(v50 + 16) = sub_22701E4A0;
  *(v50 + 24) = 0;
  v51 = v93;
  v92 = v93[2];
  v52 = v85;
  v53 = v86;
  (v92)(v85, v49, v86);
  v54 = v51;
  v55 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v91 = v55;
  v56 = (v84 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  v58 = v54[4];
  v58(v57 + v55, v52, v53);
  v59 = (v57 + v56);
  *v59 = sub_226F32FEC;
  v59[1] = v50;
  v60 = v90;
  sub_227669270();
  v61 = v93[1];
  ++v93;
  v62 = v89;
  v61(v89, v53);
  v63 = swift_allocObject();
  *(v63 + 16) = sub_22702BC34;
  *(v63 + 24) = 0;
  (v92)(v62, v60, v53);
  v64 = swift_allocObject();
  v58(v64 + v91, v62, v53);
  v65 = (v64 + v56);
  *v65 = sub_226F5B0C0;
  v65[1] = v63;
  sub_227669270();
  return (v61)(v90, v53);
}

uint64_t sub_22702A240@<X0>(uint64_t a1@<X0>, unsigned __int8 (*a2)(uint64_t)@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for MetricServiceSubscriptionState();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MetricRecordingContext();
  sub_227031340(a1 + *(v11 + 28), v10, type metadata accessor for MetricServiceSubscriptionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = sub_2270312E0(v10, type metadata accessor for MetricServiceSubscriptionState);
  if (EnumCaseMultiPayload == 1)
  {
    v14 = sub_2276636A0();
    sub_2270336B8(&qword_28139BCC0, MEMORY[0x277D500E0]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D500A0], v14);
    return swift_willThrow();
  }

  if (a2(v13) == 1)
  {
    result = sub_22709C32C();
    if (v3)
    {
      return result;
    }
  }

  else
  {
    result = sub_22709C54C();
    if (v3)
    {
      return result;
    }
  }

  return sub_227031340(a1, a3, type metadata accessor for MetricRecordingContext);
}

uint64_t sub_22702A434@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v146 = a3;
  v138 = a4;
  v6 = type metadata accessor for MetricRecordingContext();
  v132 = *(v6 - 8);
  v7 = *(v132 + 64);
  MEMORY[0x28223BE20](v6);
  v133 = v8;
  v137 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_2276651A0();
  v134 = *(v147 - 8);
  v9 = *(v134 + 64);
  MEMORY[0x28223BE20](v147);
  v130 = v10;
  v144 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v127 = &v111 - v13;
  v14 = sub_227664D30();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v126 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C68, &qword_227675CA8);
  v135 = *(v17 - 8);
  v136 = v17;
  v18 = *(v135 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v131 = &v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = v20;
  MEMORY[0x28223BE20](v19);
  v145 = &v111 - v21;
  v124 = sub_22766B390();
  v123 = *(v124 - 8);
  v22 = *(v123 + 64);
  MEMORY[0x28223BE20](v124);
  v120 = &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CA0, &qword_227675D18);
  v114 = *(v115 - 8);
  v24 = *(v114 + 64);
  MEMORY[0x28223BE20](v115);
  v113 = &v111 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9158, &qword_2276730B8);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v117 = &v111 - v28;
  v119 = sub_227663260();
  v118 = *(v119 - 8);
  v29 = *(v118 + 64);
  MEMORY[0x28223BE20](v119);
  v112 = &v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0);
  v121 = *(v31 - 8);
  v32 = *(v121 + 64);
  v33 = MEMORY[0x28223BE20](v31 - 8);
  v125 = &v111 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = v34;
  MEMORY[0x28223BE20](v33);
  v143 = &v111 - v35;
  v36 = sub_227662750();
  v140 = *(v36 - 8);
  v141 = v36;
  v37 = *(v140 + 64);
  MEMORY[0x28223BE20](v36);
  v39 = &v111 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_227665AD0();
  v40 = *(v139 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v139);
  v43 = &v111 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for MetricServiceSubscriptionState();
  v45 = *(*(v44 - 8) + 64);
  v46 = MEMORY[0x28223BE20](v44);
  v48 = &v111 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v50 = &v111 - v49;
  v142 = a2;
  sub_227665150();
  v128 = v6;
  v51 = *(v6 + 28);
  sub_227031340(a1 + v51, v50, type metadata accessor for MetricServiceSubscriptionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2270312E0(v50, type metadata accessor for MetricServiceSubscriptionState);
    }
  }

  else
  {
    v53 = *(v40 + 32);
    v148 = v51;
    v54 = v139;
    v53(v43, v50, v139);
    sub_227662740();
    sub_227665AA0();
    (*(v140 + 8))(v39, v141);
    v55 = v54;
    v51 = v148;
    (*(v40 + 8))(v43, v55);
  }

  v56 = v146;
  v57 = a1;
  v58 = *(v146 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_platform);
  v59 = sub_227667840();
  sub_227663760();
  LODWORD(v148) = v59;
  v60 = sub_2276637A0();
  v62 = v61;
  v63 = sub_2276637A0();
  v65 = v142;
  if (v60 == v63 && v62 == v64)
  {

LABEL_10:
    v67 = sub_227668DD0();
    goto LABEL_12;
  }

  v66 = sub_22766D190();

  if (v66)
  {
    goto LABEL_10;
  }

  v67 = sub_22714972C(MEMORY[0x277D84F90]);
LABEL_12:
  v116 = v67;
  v68 = v139;
  sub_227031340(v57 + v51, v48, type metadata accessor for MetricServiceSubscriptionState);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_2270312E0(v48, type metadata accessor for MetricServiceSubscriptionState);
    v69 = 1;
    v70 = v143;
  }

  else
  {
    v70 = v143;
    (*(v40 + 32))(v143, v48, v68);
    v69 = 0;
  }

  v71 = v119;
  (*(v40 + 56))(v70, v69, 1, v68);
  v72 = sub_2276636C0();
  LODWORD(v119) = sub_22718C804(v148, v72);

  sub_22766BA80();
  v139 = swift_allocBox();
  sub_22766BA70();
  v73 = v117;
  sub_227665170();
  v74 = v118;
  if ((*(v118 + 48))(v73, 1, v71) == 1)
  {
    sub_226E97D1C(v73, &qword_27D7B9158, &qword_2276730B8);
  }

  else
  {
    v75 = v57;
    v76 = v56;
    v77 = v112;
    (*(v74 + 32))(v112, v73, v71);
    v149 = sub_227031CCC();
    v78 = v113;
    sub_22766BA50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CA8, &unk_227675D20);
    sub_22766BA60();
    (*(v114 + 8))(v78, v115);

    v79 = v77;
    v56 = v76;
    v57 = v75;
    v65 = v142;
    (*(v74 + 8))(v79, v71);
  }

  v80 = v120;
  sub_22766A740();
  v81 = sub_22766B380();
  v82 = sub_22766C8B0();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    *v83 = 0;
    _os_log_impl(&dword_226E8E000, v81, v82, "Making identifier", v83, 2u);
    MEMORY[0x22AA9A450](v83, -1, -1);
  }

  (*(v123 + 8))(v80, v124);
  v84 = *(v56 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_identifierStore + 24);
  v85 = *(v56 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_identifierStore + 32);
  __swift_project_boxed_opaque_existential_0((v56 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_identifierStore), v84);
  v86 = v126;
  sub_227665110();
  v87 = *(v128 + 20);
  v88 = v127;
  (*(v140 + 56))(v127, 1, 1, v141);
  (*(v85 + 48))(v86, v70, v57 + v87, v148, v88, v84, v85);
  sub_226E97D1C(v88, &qword_27D7B9690, qword_227670B50);
  sub_2270312E0(v86, MEMORY[0x277D50F70]);
  v89 = v57;
  v90 = v134;
  (*(v134 + 16))(v144, v65, v147);
  v91 = v70;
  v92 = v125;
  sub_226E93170(v91, v125, &qword_27D7B8428, &qword_227675CB0);
  v93 = v89;
  v94 = v137;
  sub_227031340(v93, v137, type metadata accessor for MetricRecordingContext);
  v95 = (*(v90 + 80) + 24) & ~*(v90 + 80);
  v96 = (v130 + *(v121 + 80) + v95) & ~*(v121 + 80);
  v97 = v96 + v122;
  v98 = (*(v132 + 80) + v96 + v122 + 1) & ~*(v132 + 80);
  v142 = (v98 + v133 + 7) & 0xFFFFFFFFFFFFFFF8;
  v99 = (v98 + v133 + 23) & 0xFFFFFFFFFFFFFFF8;
  v100 = swift_allocObject();
  *(v100 + 16) = v56;
  (*(v90 + 32))(v100 + v95, v144, v147);
  sub_226E95D18(v92, v100 + v96, &qword_27D7B8428, &qword_227675CB0);
  *(v100 + v97) = v148;
  sub_2270313A8(v94, v100 + v98);
  v101 = v100 + v142;
  *v101 = v139;
  *(v101 + 8) = v119 & 1;
  *(v100 + v99) = v116;
  v103 = v135;
  v102 = v136;
  v104 = v131;
  v105 = v145;
  (*(v135 + 16))(v131, v145, v136);
  v106 = (*(v103 + 80) + 16) & ~*(v103 + 80);
  v107 = (v129 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
  v108 = swift_allocObject();
  (*(v103 + 32))(v108 + v106, v104, v102);
  v109 = (v108 + v107);
  *v109 = sub_22703315C;
  v109[1] = v100;

  sub_227669270();
  (*(v103 + 8))(v105, v102);
  sub_226E97D1C(v143, &qword_27D7B8428, &qword_227675CB0);
}

uint64_t sub_22702B290@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, unint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  v74 = a8;
  v76 = a7;
  v77 = a9;
  v70 = a6;
  v67 = a4;
  v65 = a3;
  v80 = a2;
  v75 = a10;
  v12 = type metadata accessor for MetricRecordingContext();
  v68 = *(v12 - 8);
  v13 = *(v68 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v69 = v14;
  v71 = &v56[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0);
  v60 = *(v15 - 8);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v64 = &v56[-v16];
  v62 = sub_2276651A0();
  v59 = *(v62 - 8);
  v17 = *(v59 + 64);
  MEMORY[0x28223BE20](v62);
  v79 = &v56[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C70, &qword_227675CB8);
  v72 = *(v18 - 8);
  v73 = v18;
  v19 = *(v72 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v66 = &v56[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v56[-v22];
  v24 = sub_22766B390();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v56[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = *a1;
  sub_22766A740();
  v30 = sub_22766B380();
  v31 = sub_22766C8B0();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_226E8E000, v30, v31, "Got metric identifier fields for recording click stream", v32, 2u);
    MEMORY[0x22AA9A450](v32, -1, -1);
  }

  (*(v25 + 8))(v28, v24);
  v58 = v29;
  v33 = sub_227331EA0(v29);
  v78 = v23;
  v34 = v65;
  v57 = a5;
  sub_2270208EC(v65, v33, a5, v23);

  v35 = v59;
  v36 = v62;
  (*(v59 + 16))(v79, v34, v62);
  v37 = v64;
  sub_226E93170(v67, v64, &qword_27D7B8428, &qword_227675CB0);
  v38 = v71;
  sub_227031340(v70, v71, type metadata accessor for MetricRecordingContext);
  v39 = (*(v35 + 80) + 25) & ~*(v35 + 80);
  v40 = (v17 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = (*(v60 + 80) + v40 + 8) & ~*(v60 + 80);
  v42 = (v61 + *(v68 + 80) + v41) & ~*(v68 + 80);
  v70 = (v42 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + v69 + 23) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  v45 = v79;
  *(v44 + 16) = v80;
  *(v44 + 24) = v57;
  (*(v35 + 32))(v44 + v39, v45, v36);
  *(v44 + v40) = v58;
  sub_226E95D18(v37, v44 + v41, &qword_27D7B8428, &qword_227675CB0);
  sub_2270313A8(v38, v44 + v42);
  v46 = v44 + v70;
  v47 = v75;
  *v46 = v76;
  *(v46 + 8) = v74 & 1;
  *(v44 + v43) = v47;
  v49 = v72;
  v48 = v73;
  v50 = v66;
  (*(v72 + 16))(v66, v78, v73);
  v51 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v52 = (v63 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  (*(v49 + 32))(v53 + v51, v50, v48);
  v54 = (v53 + v52);
  *v54 = sub_2270332F4;
  v54[1] = v44;

  sub_227669270();
  return (*(v49 + 8))(v78, v48);
}

uint64_t sub_22702B8CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9)
{
  v40 = a1;
  v41 = a5;
  v42 = a3;
  v43 = a2;
  v39 = a7;
  v37 = a6;
  v38 = a9;
  v10 = sub_22766BA80();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9138, &unk_227675CC0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v37 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9148, &qword_2276730B0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v37 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9150, &unk_227675CD0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v37 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9140, &unk_22767F4E0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v37 - v29;
  v31 = swift_projectBox();
  sub_227665120();
  v32 = sub_227331EA0(a4);
  sub_227665130();
  sub_227665140();
  sub_227665160();
  v33 = v37 + *(type metadata accessor for MetricRecordingContext() + 24);
  swift_beginAccess();
  (*(v11 + 16))(v14, v31, v10);
  v34 = sub_227331EA0(v38);
  sub_22701E5B0(v40, v42, v30, v32, v26, v22, 1, v18, v39, v41, v33, v14, v36, v34);

  (*(v11 + 8))(v14, v10);
  sub_226E97D1C(v18, &qword_27D7B9138, &unk_227675CC0);
  sub_226E97D1C(v22, &qword_27D7B9148, &qword_2276730B0);
  sub_226E97D1C(v26, &qword_27D7B9150, &unk_227675CD0);
  return sub_226E97D1C(v30, &qword_27D7B9140, &unk_22767F4E0);
}

id sub_22702BC68(void *a1, void (*a2)(uint64_t), const char *a3)
{
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v9);
  v12 = a1;
  v13 = sub_22766B380();
  v14 = sub_22766C8B0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136446210;
    swift_getErrorValue();
    v18 = MEMORY[0x22AA995D0](v25, v26);
    v20 = sub_226E97AE8(v18, v19, &v27);
    v23 = v6;
    v21 = v20;

    *(v16 + 4) = v21;
    _os_log_impl(&dword_226E8E000, v13, v14, v24, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA9A450](v17, -1, -1);
    MEMORY[0x22AA9A450](v16, -1, -1);

    (*(v7 + 8))(v11, v23);
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  swift_willThrow();
  return a1;
}

uint64_t sub_22702BE6C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v78 = a1;
  v75 = sub_227666C40();
  v73 = *(v75 - 8);
  v74 = *(v73 + 64);
  MEMORY[0x28223BE20](v75);
  v70 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_227664D30();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C60, &unk_227675C98);
  v7 = *(v69 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v69);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v60 - v11;
  MEMORY[0x28223BE20](v10);
  v79 = &v60 - v13;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v82 = *(v76 - 8);
  v71 = v82[8];
  v14 = MEMORY[0x28223BE20](v76);
  v72 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v80 = &v60 - v17;
  MEMORY[0x28223BE20](v16);
  v81 = &v60 - v18;
  v19 = sub_22766B390();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A740();
  sub_22766B370();
  (*(v20 + 8))(v23, v19);
  sub_227666C00();
  sub_226F065C4(v6, v12);
  sub_2270312E0(v6, MEMORY[0x277D50F70]);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_22702C68C;
  *(v24 + 24) = 0;
  v25 = *(v7 + 16);
  v64 = v7 + 16;
  v67 = v25;
  v26 = v69;
  v25(&v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v69);
  v27 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v63 = v27;
  v61 = (v8 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v62 = *(v7 + 32);
  v62(v28 + v27, &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  v29 = (v28 + ((v8 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v29 = sub_227033E50;
  v29[1] = v24;
  type metadata accessor for MetricRecordingContext();
  sub_227669270();
  v30 = *(v7 + 8);
  v65 = v7 + 8;
  v66 = v30;
  v31 = v26;
  v30(v12, v26);
  v32 = v73;
  v33 = v70;
  v34 = v75;
  (*(v73 + 16))(v70, v78, v75);
  v35 = (*(v32 + 80) + 24) & ~*(v32 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v68;
  (*(v32 + 32))(v36 + v35, v33, v34);
  v37 = v79;
  v38 = v31;
  v67(v12, v79, v31);
  v39 = v61;
  v40 = swift_allocObject();
  v62(v40 + v63, v12, v38);
  v41 = (v40 + v39);
  *v41 = sub_22703288C;
  v41[1] = v36;

  v42 = v80;
  sub_227669270();
  v66(v37, v38);
  v43 = swift_allocObject();
  *(v43 + 16) = sub_22701E4E4;
  *(v43 + 24) = 0;
  v44 = v82;
  v79 = v82[2];
  v45 = v72;
  v46 = v76;
  (v79)(v72, v42, v76);
  v47 = v44;
  v48 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v78 = v48;
  v49 = (v71 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  v51 = v47[4];
  v51(v50 + v48, v45, v46);
  v52 = (v50 + v49);
  *v52 = sub_226F32FEC;
  v52[1] = v43;
  v53 = v81;
  sub_227669270();
  v54 = v82[1];
  ++v82;
  v55 = v80;
  v54(v80, v46);
  v56 = swift_allocObject();
  *(v56 + 16) = sub_22702EA10;
  *(v56 + 24) = 0;
  (v79)(v55, v53, v46);
  v57 = swift_allocObject();
  v51(v57 + v78, v55, v46);
  v58 = (v57 + v49);
  *v58 = sub_226F5B0C0;
  v58[1] = v56;
  sub_227669270();
  return (v54)(v81, v46);
}

uint64_t sub_22702C68C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for MetricServiceSubscriptionState();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MetricRecordingContext();
  sub_227031340(a1 + *(v9 + 28), v8, type metadata accessor for MetricServiceSubscriptionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_2270312E0(v8, type metadata accessor for MetricServiceSubscriptionState);
  if (EnumCaseMultiPayload == 1)
  {
    v11 = sub_2276636A0();
    sub_2270336B8(&qword_28139BCC0, MEMORY[0x277D500E0]);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D500A0], v11);
    return swift_willThrow();
  }

  else
  {
    result = sub_22709C54C();
    if (!v2)
    {
      return sub_227031340(a1, a2, type metadata accessor for MetricRecordingContext);
    }
  }

  return result;
}

uint64_t sub_22702C848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v88 = a3;
  v106 = a2;
  v98 = a4;
  v5 = type metadata accessor for MetricRecordingContext();
  v93 = *(v5 - 8);
  v6 = *(v93 + 64);
  MEMORY[0x28223BE20](v5);
  v94 = v7;
  v95 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_227666C40();
  v92 = *(v105 - 8);
  v8 = *(v92 + 64);
  MEMORY[0x28223BE20](v105);
  v89 = v9;
  v104 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v85 = &v78 - v12;
  v13 = sub_227664D30();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v81 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C68, &qword_227675CA8);
  v96 = *(v16 - 8);
  v97 = v16;
  v17 = *(v96 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v90 = v19;
  v91 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v102 = &v78 - v20;
  v21 = sub_22766B390();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for MetricServiceSubscriptionState();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0);
  v82 = *(v30 - 8);
  v31 = *(v82 + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v100 = &v78 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v78 - v34;
  v103 = sub_22766BA80();
  v87 = *(v103 - 8);
  v36 = *(v87 + 64);
  v37 = MEMORY[0x28223BE20](v103);
  v99 = &v78 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v38;
  MEMORY[0x28223BE20](v37);
  v40 = &v78 - v39;
  v84 = sub_22714972C(MEMORY[0x277D84F90]);
  v101 = v40;
  sub_22766BA70();
  v41 = *(v5 + 28);
  v86 = a1;
  sub_227031340(a1 + v41, v29, type metadata accessor for MetricServiceSubscriptionState);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_2270312E0(v29, type metadata accessor for MetricServiceSubscriptionState);
    v42 = sub_227665AD0();
    (*(*(v42 - 8) + 56))(v35, 1, 1, v42);
  }

  else
  {
    v43 = sub_227665AD0();
    v44 = *(v43 - 8);
    (*(v44 + 32))(v35, v29, v43);
    (*(v44 + 56))(v35, 0, 1, v43);
  }

  sub_22766A740();
  v45 = sub_22766B380();
  v46 = sub_22766C8B0();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_226E8E000, v45, v46, "Recording performance stream event to Jet", v47, 2u);
    MEMORY[0x22AA9A450](v47, -1, -1);
  }

  (*(v22 + 8))(v25, v21);
  v48 = *(v106 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_identifierStore + 24);
  v49 = *(v106 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_identifierStore + 32);
  __swift_project_boxed_opaque_existential_0((v106 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_identifierStore), v48);
  v50 = v81;
  v51 = v88;
  sub_227666C00();
  v52 = *(v5 + 20);
  v53 = sub_227662750();
  v54 = v85;
  (*(*(v53 - 8) + 56))(v85, 1, 1, v53);
  v55 = *(v49 + 48);
  v56 = v86;
  v79 = v35;
  v55(v50, v35, v86 + v52, 129, v54, v48, v49);
  sub_226E97D1C(v54, &qword_27D7B9690, qword_227670B50);
  sub_2270312E0(v50, MEMORY[0x277D50F70]);
  v57 = v92;
  (*(v92 + 16))(v104, v51, v105);
  sub_226E93170(v35, v100, &qword_27D7B8428, &qword_227675CB0);
  v58 = v95;
  sub_227031340(v56, v95, type metadata accessor for MetricRecordingContext);
  v59 = v87;
  (*(v87 + 16))(v99, v101, v103);
  v60 = (*(v57 + 80) + 24) & ~*(v57 + 80);
  v61 = v60 + v89;
  v62 = (*(v82 + 80) + v60 + v89 + 1) & ~*(v82 + 80);
  v63 = (v83 + *(v93 + 80) + v62) & ~*(v93 + 80);
  v64 = (v94 + *(v59 + 80) + v63) & ~*(v59 + 80);
  v65 = (v80 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  v67 = v105;
  *(v66 + 16) = v106;
  (*(v57 + 32))(v66 + v60, v104, v67);
  *(v66 + v61) = -127;
  sub_226E95D18(v100, v66 + v62, &qword_27D7B8428, &qword_227675CB0);
  sub_2270313A8(v58, v66 + v63);
  v68 = v103;
  (*(v59 + 32))(v66 + v64, v99, v103);
  *(v66 + v65) = v84;
  v70 = v96;
  v69 = v97;
  v71 = v91;
  v72 = v102;
  (*(v96 + 16))(v91, v102, v97);
  v73 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v74 = (v90 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v75 = swift_allocObject();
  (*(v70 + 32))(v75 + v73, v71, v69);
  v76 = (v75 + v74);
  *v76 = sub_227032954;
  v76[1] = v66;

  sub_227669270();
  (*(v70 + 8))(v72, v69);
  sub_226E97D1C(v79, &qword_27D7B8428, &qword_227675CB0);
  return (*(v59 + 8))(v101, v68);
}

uint64_t sub_22702D270@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v80 = a8;
  v81 = a9;
  v74 = a7;
  v71 = a5;
  v72 = a6;
  v87 = a4;
  v84 = a3;
  v89 = a2;
  v10 = sub_22766BA80();
  v78 = *(v10 - 8);
  v79 = v10;
  v11 = *(v78 + 64);
  MEMORY[0x28223BE20](v10);
  v73 = v12;
  v77 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MetricRecordingContext();
  v69 = *(v13 - 8);
  v14 = *(v69 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v70 = v15;
  v86 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0);
  v65 = *(v16 - 8);
  v66 = *(v65 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v85 = &v59 - v17;
  v82 = sub_227666C40();
  v18 = *(v82 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v82);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C70, &qword_227675CB8);
  v75 = *(v20 - 8);
  v76 = v20;
  v21 = *(v75 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v68 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v23;
  MEMORY[0x28223BE20](v22);
  v83 = &v59 - v24;
  v25 = sub_22766B390();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = *a1;
  sub_22766A740();
  v30 = sub_22766B380();
  v31 = sub_22766C8B0();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_226E8E000, v30, v31, "Got metric identifier fields for recording performance stream", v32, 2u);
    MEMORY[0x22AA9A450](v32, -1, -1);
  }

  (*(v26 + 8))(v29, v25);
  v60 = *(v18 + 16);
  v33 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v82;
  v60(v33, v84, v82);
  v35 = *(v18 + 80);
  v36 = (v35 + 24) & ~v35;
  v62 = v19 + 7;
  v37 = swift_allocObject();
  *(v37 + 16) = v89;
  v38 = *(v18 + 32);
  v63 = v18 + 32;
  v64 = v38;
  v61 = v33;
  v38(v37 + v36, v33, v34);
  v39 = v37 + ((v19 + 7 + v36) & 0xFFFFFFFFFFFFFFF8);
  *v39 = v88;
  *(v39 + 8) = v87;
  sub_22766B7F0();

  sub_227669280();
  v60(v33, v84, v34);
  sub_226E93170(v71, v85, &qword_27D7B8428, &qword_227675CB0);
  sub_227031340(v72, v86, type metadata accessor for MetricRecordingContext);
  v41 = v77;
  v40 = v78;
  v42 = v79;
  (*(v78 + 16))(v77, v74, v79);
  v43 = (v35 + 25) & ~v35;
  v44 = (v62 + v43) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v44 + *(v65 + 80) + 8) & ~*(v65 + 80);
  v46 = (v66 + *(v69 + 80) + v45) & ~*(v69 + 80);
  v47 = (v70 + *(v40 + 80) + v46) & ~*(v40 + 80);
  v48 = (v73 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  *(v49 + 16) = v89;
  *(v49 + 24) = v87;
  v64(v49 + v43, v61, v82);
  *(v49 + v44) = v88;
  sub_226E95D18(v85, v49 + v45, &qword_27D7B8428, &qword_227675CB0);
  sub_2270313A8(v86, v49 + v46);
  (*(v40 + 32))(v49 + v47, v41, v42);
  *(v49 + v48) = v80;
  v51 = v75;
  v50 = v76;
  v52 = v68;
  v53 = v83;
  (*(v75 + 16))(v68, v83, v76);
  v54 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v55 = (v67 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  (*(v51 + 32))(v56 + v54, v52, v50);
  v57 = (v56 + v55);
  *v57 = sub_227032CE8;
  v57[1] = v49;

  sub_227669270();
  return (*(v51 + 8))(v53, v50);
}

uint64_t sub_22702DA24@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v87 = a2;
  v90 = a3;
  v97 = sub_227666C40();
  *&v96 = *(v97 - 8);
  v4 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v95 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B390();
  v93 = *(v6 - 8);
  v94 = v6;
  v7 = *(v93 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v98 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v83 = &v80 - v10;
  v86 = sub_227663260();
  v85 = *(v86 - 8);
  v11 = *(v85 + 64);
  MEMORY[0x28223BE20](v86);
  v82 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B910();
  v88 = *(v13 - 8);
  v89 = v13;
  v14 = *(v88 + 64);
  MEMORY[0x28223BE20](v13);
  v91 = (&v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_227664D50();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_227668810();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v24);
  v26 = &v80 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9158, &qword_2276730B8);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v84 = &v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v80 - v31;
  sub_227666C20();
  sub_227666C30();
  if ((*(v22 + 88))(v26, v21) == *MEMORY[0x277D535E0])
  {
    (*(v22 + 96))(v26, v21);
    (*(v17 + 32))(v20, v26, v16);
    v33 = v92;
    v34 = sub_227664D40();
    if (v33)
    {
      (*(v17 + 8))(v20, v16);
      v35 = v32;
    }

    else
    {
      v98 = v16;
      v92 = v32;
      v50 = sub_2275A5364(v34);

      if (v50)
      {
        sub_22766B8F0();
        v51 = sub_227149264(MEMORY[0x277D84F90]);
        v52 = sub_22766B900();
        v101 = MEMORY[0x277D837D0];
        *&v100 = v52;
        *(&v100 + 1) = v53;
        sub_226F04970(&v100, v99);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v102 = v51;
        sub_22736A46C(v99, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
        v55 = v102;
        v56 = v84;
        sub_226E93170(v92, v84, &qword_27D7B9158, &qword_2276730B8);
        v57 = v85;
        v58 = v86;
        v59 = (*(v85 + 48))(v56, 1, v86);
        v81 = v17;
        v80 = v20;
        if (v59 == 1)
        {
          sub_226E97D1C(v56, &qword_27D7B9158, &qword_2276730B8);
        }

        else
        {
          v66 = v82;
          (*(v57 + 32))(v82, v56, v58);
          v67 = sub_227031CCC();
          v68 = swift_isUniquelyReferenced_nonNull_native();
          *&v100 = v55;
          sub_2270318E8(v67, sub_227553D14, 0, v68, &v100);

          (*(v57 + 8))(v66, v58);
          v55 = v100;
        }

        v69 = swift_isUniquelyReferenced_nonNull_native();
        *&v100 = v55;
        sub_2270318E8(v50, sub_227553D14, 0, v69, &v100);
        swift_bridgeObjectRelease_n();
        v97 = v100;
        sub_2276637A0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C78, &qword_227675CE8);
        v70 = sub_22766BC20();
        v71 = *(v70 - 8);
        v72 = *(v71 + 72);
        v73 = (*(v71 + 80) + 32) & ~*(v71 + 80);
        v74 = swift_allocObject();
        v96 = xmmword_227670CD0;
        *(v74 + 16) = xmmword_227670CD0;
        sub_22766BC10();
        sub_226F4C828(v74);
        swift_setDeallocating();
        (*(v71 + 8))(v74 + v73, v70);
        swift_deallocClassInstance();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C80, &unk_227675CF0);
        v75 = sub_22766BC00();
        v76 = *(v75 - 8);
        v77 = *(v76 + 72);
        v78 = (*(v76 + 80) + 32) & ~*(v76 + 80);
        v79 = swift_allocObject();
        *(v79 + 16) = v96;
        sub_22766BBA0();
        sub_226F4CB48(v79);
        swift_setDeallocating();
        (*(v76 + 8))(v79 + v78, v75);
        swift_deallocClassInstance();
        sub_22766B7C0();
        (*(v88 + 8))(v91, v89);
        (*(v81 + 8))(v80, v98);
      }

      else
      {
        v60 = v83;
        sub_22766A740();
        v61 = sub_22766B380();
        v62 = sub_22766C890();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          _os_log_impl(&dword_226E8E000, v61, v62, "Unable to serialize pageRender event", v63, 2u);
          MEMORY[0x22AA9A450](v63, -1, -1);
        }

        (*(v93 + 8))(v60, v94);
        v64 = sub_2276636A0();
        sub_2270336B8(&qword_28139BCC0, MEMORY[0x277D500E0]);
        swift_allocError();
        (*(*(v64 - 8) + 104))(v65, *MEMORY[0x277D50040], v64);
        swift_willThrow();
        (*(v17 + 8))(v20, v98);
      }

      v35 = v92;
    }

    return sub_226E97D1C(v35, &qword_27D7B9158, &qword_2276730B8);
  }

  else
  {
    sub_22766A740();
    (*(v96 + 16))(v95, a1, v97);
    v36 = sub_22766B380();
    v37 = sub_22766C890();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v92 = v32;
      v39 = v38;
      v91 = swift_slowAlloc();
      *&v100 = v91;
      *v39 = 136446210;
      v40 = v95;
      sub_227666C30();
      v41 = sub_22766C060();
      v43 = v42;
      (*(v96 + 8))(v40, v97);
      v44 = sub_226E97AE8(v41, v43, &v100);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_226E8E000, v36, v37, "Received unsupported performance stream type: %{public}s", v39, 0xCu);
      v45 = v91;
      __swift_destroy_boxed_opaque_existential_0(v91);
      MEMORY[0x22AA9A450](v45, -1, -1);
      v46 = v39;
      v32 = v92;
      MEMORY[0x22AA9A450](v46, -1, -1);
    }

    else
    {

      (*(v96 + 8))(v95, v97);
    }

    (*(v93 + 8))(v98, v94);
    v47 = sub_2276636A0();
    sub_2270336B8(&qword_28139BCC0, MEMORY[0x277D500E0]);
    swift_allocError();
    (*(*(v47 - 8) + 104))(v48, *MEMORY[0x277D500D0], v47);
    swift_willThrow();
    sub_226E97D1C(v32, &qword_27D7B9158, &qword_2276730B8);
    return (*(v22 + 8))(v26, v21);
  }
}

uint64_t sub_22702E6C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v37 = a7;
  v38 = a5;
  v39 = a3;
  v40 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9138, &unk_227675CC0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9148, &qword_2276730B0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v37 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9150, &unk_227675CD0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v37 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9140, &unk_22767F4E0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v37 - v27;
  sub_227666C10();
  v29 = sub_227331EA0(a4);
  v30 = sub_227665970();
  (*(*(v30 - 8) + 56))(v24, 1, 1, v30);
  v31 = sub_2276659A0();
  (*(*(v31 - 8) + 56))(v20, 1, 1, v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9160, &qword_227675CE0);
  (*(*(v32 - 8) + 56))(v16, 1, 1, v32);
  v33 = a6 + *(type metadata accessor for MetricRecordingContext() + 24);
  v34 = sub_227331EA0(a9);
  sub_22701E5B0(a1, v39, v28, v29, v24, v20, 1, v16, a8, v38, v33, v37, v36, v34);

  sub_226E97D1C(v16, &qword_27D7B9138, &unk_227675CC0);
  sub_226E97D1C(v20, &qword_27D7B9148, &qword_2276730B0);
  sub_226E97D1C(v24, &qword_27D7B9150, &unk_227675CD0);
  return sub_226E97D1C(v28, &qword_27D7B9140, &unk_22767F4E0);
}

uint64_t sub_22702EA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v86 = sub_227664DB0();
  v89 = *(v86 - 8);
  v3 = *(v89 + 64);
  MEMORY[0x28223BE20](v86);
  v4 = sub_227664D30();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C60, &unk_227675C98);
  v90 = *(v80 - 8);
  v8 = *(v90 + 64);
  v9 = MEMORY[0x28223BE20](v80);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v65 - v11;
  MEMORY[0x28223BE20](v10);
  v81 = &v65 - v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v91 = *(v84 - 8);
  v82 = v91[8];
  v14 = MEMORY[0x28223BE20](v84);
  v83 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v87 = &v65 - v17;
  MEMORY[0x28223BE20](v16);
  v88 = &v65 - v18;
  v78 = a1;
  sub_227664D60();
  v65 = v12;
  sub_226F065C4(v7, v12);
  sub_2270312E0(v7, MEMORY[0x277D50F70]);
  v19 = v89;
  v20 = *(v89 + 16);
  v72 = v89 + 16;
  v77 = v20;
  v70 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v86;
  v20(v70, a1, v86);
  v22 = v19;
  v76 = *(v19 + 80);
  v73 = ((v76 + 16) & ~v76) + v3;
  v74 = (v76 + 16) & ~v76;
  v23 = v74;
  v24 = swift_allocObject();
  v25 = *(v22 + 32);
  v89 = v22 + 32;
  v75 = v25;
  v25(v24 + v23, &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_227031C24;
  *(v26 + 24) = v24;
  v27 = v90;
  v71 = *(v90 + 16);
  v28 = v80;
  v71(&v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v80);
  v29 = v27;
  v30 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v68 = v30;
  v31 = (v8 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = v31;
  v32 = swift_allocObject();
  v67 = *(v29 + 32);
  v33 = v32 + v30;
  v34 = v28;
  v67(v33, &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v28);
  v35 = (v32 + v31);
  *v35 = sub_227033E50;
  v35[1] = v26;
  type metadata accessor for MetricRecordingContext();
  v36 = v81;
  sub_227669270();
  v69 = *(v29 + 8);
  v90 = v29 + 8;
  v37 = v65;
  v38 = v34;
  v69(v65, v34);
  v39 = v70;
  v40 = v86;
  v77(v70, v78, v86);
  v41 = (v73 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v75(v42 + v74, v39, v40);
  *(v42 + v41) = v79;
  v71(v37, v36, v38);
  v43 = v66;
  v44 = swift_allocObject();
  v45 = v38;
  v67(v44 + v68, v37, v38);
  v46 = (v44 + v43);
  *v46 = sub_227031CA0;
  v46[1] = v42;

  v47 = v87;
  sub_227669270();
  v69(v36, v45);
  v48 = swift_allocObject();
  *(v48 + 16) = sub_22701E528;
  *(v48 + 24) = 0;
  v49 = v91;
  v90 = v91[2];
  v50 = v83;
  v51 = v84;
  (v90)(v83, v47, v84);
  v52 = v49;
  v53 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v89 = v53;
  v54 = (v82 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v55 = swift_allocObject();
  v56 = v52[4];
  v56(v55 + v53, v50, v51);
  v57 = (v55 + v54);
  *v57 = sub_226F32FEC;
  v57[1] = v48;
  v58 = v88;
  sub_227669270();
  v59 = v91[1];
  ++v91;
  v60 = v87;
  v59(v87, v51);
  v61 = swift_allocObject();
  *(v61 + 16) = sub_227030A8C;
  *(v61 + 24) = 0;
  (v90)(v60, v58, v51);
  v62 = swift_allocObject();
  v56(v62 + v89, v60, v51);
  v63 = (v62 + v54);
  *v63 = sub_226F5B0C0;
  v63[1] = v61;
  sub_227669270();
  return (v59)(v88, v51);
}

uint64_t sub_22702F260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_227664350();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MetricServiceSubscriptionState();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for MetricRecordingContext();
  sub_227031340(a1 + *(v14 + 28), v13, type metadata accessor for MetricServiceSubscriptionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v16 = *v13;
      return swift_willThrow();
    }

    sub_227664DA0();
    sub_227664330();
    v18 = v17;
    (*(v6 + 8))(v9, v5);
    if (!v18)
    {
      v20 = sub_2276636A0();
      sub_2270336B8(&qword_28139BCC0, MEMORY[0x277D500E0]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D500A8], v20);
      return swift_willThrow();
    }
  }

  else
  {
    sub_2270312E0(v13, type metadata accessor for MetricServiceSubscriptionState);
  }

  result = sub_22709C54C();
  if (!v2)
  {
    return sub_227031340(a1, a2, type metadata accessor for MetricRecordingContext);
  }

  return result;
}

uint64_t sub_22702F4F0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v153 = a3;
  v140 = a4;
  v6 = type metadata accessor for MetricRecordingContext();
  v133 = *(v6 - 8);
  v7 = *(v133 + 64);
  MEMORY[0x28223BE20](v6);
  v134 = v8;
  v149 = &v116[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_227664DB0();
  v136 = *(v9 - 8);
  v10 = *(v136 + 64);
  MEMORY[0x28223BE20](v9);
  v131 = v11;
  v151 = &v116[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v128 = &v116[-v14];
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C68, &qword_227675CA8);
  v138 = *(v139 - 8);
  v15 = *(v138 + 64);
  v16 = MEMORY[0x28223BE20](v139);
  v137 = &v116[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v135 = v17;
  MEMORY[0x28223BE20](v16);
  v152 = &v116[-v18];
  v124 = sub_22766B390();
  v122 = *(v124 - 8);
  v19 = v122[8];
  MEMORY[0x28223BE20](v124);
  v121 = &v116[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_22766BA80();
  v158 = *(v21 - 8);
  v159 = v21;
  v22 = *(v158 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v148 = &v116[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v129 = v24;
  MEMORY[0x28223BE20](v23);
  v157 = &v116[-v25];
  v26 = sub_227664D30();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v155 = &v116[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v156 = sub_22766B7F0();
  v150 = *(v156 - 8);
  v29 = *(v150 + 64);
  v30 = MEMORY[0x28223BE20](v156);
  v145 = &v116[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v127 = v31;
  MEMORY[0x28223BE20](v30);
  v154 = &v116[-v32];
  v160 = sub_227664350();
  v144 = *(v160 - 8);
  v33 = *(v144 + 64);
  v34 = MEMORY[0x28223BE20](v160);
  v143 = &v116[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = MEMORY[0x28223BE20](v34);
  v119 = &v116[-v37];
  v126 = v38;
  MEMORY[0x28223BE20](v36);
  v40 = &v116[-v39];
  v41 = type metadata accessor for MetricServiceSubscriptionState();
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v44 = &v116[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0);
  v123 = *(v45 - 8);
  v46 = *(v123 + 64);
  v47 = MEMORY[0x28223BE20](v45 - 8);
  v142 = &v116[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v125 = v48;
  MEMORY[0x28223BE20](v47);
  v50 = &v116[-v49];
  v130 = v6;
  v51 = *(v6 + 28);
  v132 = a1;
  sub_227031340(a1 + v51, v44, type metadata accessor for MetricServiceSubscriptionState);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_2270312E0(v44, type metadata accessor for MetricServiceSubscriptionState);
    v52 = sub_227665AD0();
    (*(*(v52 - 8) + 56))(v50, 1, 1, v52);
  }

  else
  {
    v53 = sub_227665AD0();
    v54 = *(v53 - 8);
    (*(v54 + 32))(v50, v44, v53);
    (*(v54 + 56))(v50, 0, 1, v53);
  }

  v146 = v50;
  sub_227664DA0();
  v55 = sub_2276642F0() & 1 | 0x40;
  sub_227664310();
  v56 = sub_227667B80();
  v58 = v57;
  v59 = 1;
  if (v56 != sub_227667B80() || v58 != v60)
  {
    v59 = sub_22766D190();
  }

  sub_227663780();
  v61 = sub_2276637A0();
  v63 = v62;
  v64 = sub_2276637A0();
  v147 = v9;
  v120 = v59;
  if (v61 == v64 && v63 == v65)
  {

LABEL_11:
    v67 = sub_227668DD0();
    goto LABEL_13;
  }

  v66 = sub_22766D190();

  if (v66)
  {
    goto LABEL_11;
  }

  v67 = sub_22714972C(MEMORY[0x277D84F90]);
LABEL_13:
  v118 = v67;
  v141 = v40;
  sub_2270323C8();
  v68 = v55;
  sub_2276637A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C78, &qword_227675CE8);
  v69 = sub_22766BC20();
  v70 = *(v69 - 8);
  v71 = *(v70 + 72);
  v72 = (*(v70 + 80) + 32) & ~*(v70 + 80);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_227670CD0;
  sub_22766BC10();
  sub_226F4C828(v73);
  swift_setDeallocating();
  (*(v70 + 8))(v73 + v72, v69);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C80, &unk_227675CF0);
  v74 = *(sub_22766BC00() - 8);
  v75 = *(v74 + 72);
  v76 = (*(v74 + 80) + 32) & ~*(v74 + 80);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_2276728D0;
  sub_22766BBA0();
  sub_22766BBC0();
  sub_226F4CB48(v77);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_22766B7C0();
  sub_227664D60();
  sub_22766BA70();
  v78 = v121;
  sub_22766A740();
  v79 = sub_22766B380();
  v80 = sub_22766C8B0();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    *v81 = 0;
    _os_log_impl(&dword_226E8E000, v79, v80, "Recording play stream event to Jet", v81, 2u);
    MEMORY[0x22AA9A450](v81, -1, -1);
  }

  (v122[1])(v78, v124);
  v82 = *(v153 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_identifierStore + 24);
  v83 = *(v153 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_identifierStore + 32);
  __swift_project_boxed_opaque_existential_0((v153 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_identifierStore), v82);
  v84 = v119;
  sub_227664DA0();
  sub_227664320();
  v86 = v85;
  v87 = *(v144 + 8);
  v124 = v144 + 8;
  v122 = v87;
  (v87)(v84, v160);
  v88 = v128;
  if (v86)
  {
    v89 = 1;
  }

  else
  {
    sub_2276625C0();
    v89 = 0;
  }

  v90 = sub_227662750();
  (*(*(v90 - 8) + 56))(v88, v89, 1, v90);
  v91 = *(v83 + 48);
  v92 = v132;
  v93 = v132 + *(v130 + 20);
  v94 = v146;
  v117 = v68;
  v91(v155, v146, v93, v68, v88, v82, v83);
  sub_226E97D1C(v88, &qword_27D7B9690, qword_227670B50);
  v95 = v144;
  (*(v144 + 16))(v143, v141, v160);
  v96 = v136;
  (*(v136 + 16))(v151, a2, v147);
  v97 = v150;
  (*(v150 + 16))(v145, v154, v156);
  sub_226E93170(v94, v142, &qword_27D7B8428, &qword_227675CB0);
  sub_227031340(v92, v149, type metadata accessor for MetricRecordingContext);
  v98 = v158;
  (*(v158 + 16))(v148, v157, v159);
  v99 = (*(v95 + 80) + 16) & ~*(v95 + 80);
  v100 = (v126 + *(v96 + 80) + v99) & ~*(v96 + 80);
  v101 = (v131 + v100 + 7) & 0xFFFFFFFFFFFFFFF8;
  v102 = (*(v97 + 80) + v101 + 8) & ~*(v97 + 80);
  v103 = v102 + v127;
  v132 = (*(v123 + 80) + v102 + v127 + 2) & ~*(v123 + 80);
  v133 = (v125 + *(v133 + 80) + v132) & ~*(v133 + 80);
  v134 = (v134 + *(v98 + 80) + v133) & ~*(v98 + 80);
  v104 = (v129 + v134 + 7) & 0xFFFFFFFFFFFFFFF8;
  v105 = swift_allocObject();
  (*(v95 + 32))(v105 + v99, v143, v160);
  (*(v96 + 32))(v105 + v100, v151, v147);
  *(v105 + v101) = v153;
  (*(v97 + 32))(v105 + v102, v145, v156);
  v106 = (v105 + v103);
  *v106 = v117;
  v106[1] = v120 & 1;
  sub_226E95D18(v142, v105 + v132, &qword_27D7B8428, &qword_227675CB0);
  sub_2270313A8(v149, v105 + v133);
  (*(v158 + 32))(v105 + v134, v148, v159);
  *(v105 + v104) = v118;
  v107 = v138;
  v108 = v137;
  v109 = v152;
  v110 = v139;
  (*(v138 + 16))(v137, v152, v139);
  v111 = (*(v107 + 80) + 16) & ~*(v107 + 80);
  v112 = (v135 + v111 + 7) & 0xFFFFFFFFFFFFFFF8;
  v113 = swift_allocObject();
  (*(v107 + 32))(v113 + v111, v108, v110);
  v114 = (v113 + v112);
  *v114 = sub_227032500;
  v114[1] = v105;

  sub_227669270();
  (*(v107 + 8))(v109, v110);
  (*(v158 + 8))(v157, v159);
  sub_2270312E0(v155, MEMORY[0x277D50F70]);
  (*(v150 + 8))(v154, v156);
  (v122)(v141, v160);
  return sub_226E97D1C(v146, &qword_27D7B8428, &qword_227675CB0);
}

uint64_t sub_2270305CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v57 = a5;
  v58 = a8;
  v56 = a7;
  v59 = a6;
  v60 = a4;
  v52 = a2;
  v53 = a3;
  v55 = a9;
  v54 = a12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9148, &qword_2276730B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v49 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9150, &unk_227675CD0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v49 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9140, &unk_22767F4E0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v49 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9138, &unk_227675CC0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v49 - v27;
  v29 = sub_22766B390();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v49 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *a1;
  sub_22766A740();
  v34 = sub_22766B380();
  v35 = sub_22766C8B0();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_226E8E000, v34, v35, "Got metric identifier fields for recording play stream", v36, 2u);
    MEMORY[0x22AA9A450](v36, -1, -1);
  }

  v49 = a10;
  v50 = a11;

  (*(v30 + 8))(v33, v29);
  sub_227664310();
  v37 = sub_227667B80();
  v39 = v38;
  if (v37 == sub_227667B80() && v39 == v40)
  {
  }

  else
  {
    v41 = sub_22766D190();

    if ((v41 & 1) == 0)
    {
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9160, &qword_227675CE0);
      (*(*(v42 - 8) + 56))(v28, 1, 1, v42);
      goto LABEL_9;
    }
  }

  sub_227664D90();
LABEL_9:
  sub_227664D70();
  v43 = sub_227331EA0(v51);
  v44 = sub_227665970();
  (*(*(v44 - 8) + 56))(v20, 1, 1, v44);
  sub_227664D80();
  v45 = v49 + *(type metadata accessor for MetricRecordingContext() + 24);
  v46 = sub_227331EA0(v54);
  sub_22701E5B0(v57, v59, v24, v43, v20, v16, v56 & 1, v28, v55, v58, v45, v50, v48, v46);

  sub_226E97D1C(v16, &qword_27D7B9148, &qword_2276730B0);
  sub_226E97D1C(v20, &qword_27D7B9150, &unk_227675CD0);
  sub_226E97D1C(v24, &qword_27D7B9140, &unk_22767F4E0);
  return sub_226E97D1C(v28, &qword_27D7B9138, &unk_227675CC0);
}

uint64_t sub_227030AC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A740();
  v14 = sub_22766B380();
  v15 = sub_22766C8B0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = v5;
    v17 = v8;
    v18 = v3;
    v19 = v2;
    v20 = v16;
    *v16 = 0;
    _os_log_impl(&dword_226E8E000, v14, v15, "Flushing metric events", v16, 2u);
    v21 = v20;
    v2 = v19;
    v3 = v18;
    v8 = v17;
    v5 = v29;
    MEMORY[0x22AA9A450](v21, -1, -1);
  }

  (*(v10 + 8))(v13, v9);
  v22 = *(v2 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_recorder + 32);
  __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_recorder), *(v2 + OBJC_IVAR____TtC15SeymourServices18JetMetricsRecorder_recorder + 24));
  sub_22766BA30();
  v32[3] = sub_22766B9C0();
  v32[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_0(v32);
  sub_22766B9B0();
  sub_22766BDC0();

  __swift_destroy_boxed_opaque_existential_0(v32);
  sub_227669270();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_22701E56C;
  *(v23 + 24) = 0;
  v24 = v30;
  (*(v4 + 16))(v30, v8, v3);
  v25 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v26 = swift_allocObject();
  (*(v4 + 32))(v26 + v25, v24, v3);
  v27 = (v26 + ((v5 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v27 = sub_226EBFB9C;
  v27[1] = v23;
  sub_227669270();
  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_227030E80(void (*a1)(uint64_t), const char *a2)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v7);
  v10 = sub_22766B380();
  v11 = sub_22766C8B0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_226E8E000, v10, v11, a2, v12, 2u);
    MEMORY[0x22AA9A450](v12, -1, -1);
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_227031078(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = sub_226EA1CF4();
  swift_retain_n();
  v7 = sub_22766C950();
  v9[3] = v6;
  v9[4] = MEMORY[0x277D225C0];
  v9[0] = v7;
  sub_22766BDD0();

  return __swift_destroy_boxed_opaque_existential_0(v9);
}

uint64_t sub_22703117C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = 0;
  v5 = 0;
  return v1(&v4);
}

void sub_2270311B8(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = a1;
  v7 = 1;
  v5 = a1;
  v4(&v6);
}

uint64_t sub_2270312E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227031340(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2270313A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricRecordingContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22703140C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_227667830() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0) - 8);
  v9 = (v7 + *(v8 + 80) + 1) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for MetricRecordingContext() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(sub_22766BA80() - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  return sub_227028540(a1, *(v2 + 16), v2 + v6, *(v2 + v7), v2 + v9, v2 + v12, v2 + v15, *(v2 + v15 + *(v14 + 64)), a2, *(v2 + ((v15 + *(v14 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_227031620@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_227667830() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 64) + ((*(v3 + 80) + 24) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_227028D0C(*v5, *(v5 + 8), a1);
}

uint64_t sub_2270316C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_227667830() - 8);
  v6 = (*(v5 + 64) + ((*(v5 + 80) + 25) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0) - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for MetricRecordingContext() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_22766BA80() - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = v14 + *(v13 + 64);
  LOBYTE(v17) = *(v2 + v15);
  return sub_2270295EC(a1, *(v2 + 16), *(v2 + 24), *(v2 + v6), v2 + v8, v2 + v11, v2 + v14, a2, v17, *(v2 + (v15 & 0xFFFFFFFFFFFFFFF8) + 8));
}

unint64_t sub_2270318E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v50 = a1;
  v51 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v52 = v8;
  v53 = 0;
  v54 = v11 & v9;
  v55 = a2;
  v56 = a3;

  sub_2274E844C(&v48);
  v12 = *(&v48 + 1);
  if (!*(&v48 + 1))
  {
    goto LABEL_25;
  }

  v13 = v48;
  sub_226F04970(v49, v47);
  v14 = *a5;
  result = sub_226E92000(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    sub_226FE4910(v20, a4 & 1);
    v22 = *a5;
    result = sub_226E92000(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_22766D220();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_226FF1414();
    result = v27;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v24 = *a5;
    v25 = 32 * result;
    sub_226E97CC0(*(*a5 + 56) + 32 * result, v46);
    __swift_destroy_boxed_opaque_existential_0(v47);

    v26 = *(v24 + 56);
    __swift_destroy_boxed_opaque_existential_0((v26 + v25));
    sub_226F04970(v46, (v26 + v25));
    goto LABEL_15;
  }

LABEL_13:
  v28 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v29 = (v28[6] + 16 * result);
  *v29 = v13;
  v29[1] = v12;
  result = sub_226F04970(v47, (v28[7] + 32 * result));
  v30 = v28[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (!v19)
  {
    v28[2] = v31;
LABEL_15:
    sub_2274E844C(&v48);
    v12 = *(&v48 + 1);
    if (*(&v48 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v48;
        sub_226F04970(v49, v47);
        v35 = *a5;
        result = sub_226E92000(v13, v12);
        v37 = *(v35 + 16);
        v38 = (v36 & 1) == 0;
        v19 = __OFADD__(v37, v38);
        v39 = v37 + v38;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v36;
        if (*(v35 + 24) < v39)
        {
          sub_226FE4910(v39, 1);
          v40 = *a5;
          result = sub_226E92000(v13, v12);
          if ((a4 & 1) != (v41 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v32 = *a5;
          v33 = 32 * result;
          sub_226E97CC0(*(*a5 + 56) + 32 * result, v46);
          __swift_destroy_boxed_opaque_existential_0(v47);

          v34 = *(v32 + 56);
          __swift_destroy_boxed_opaque_existential_0((v34 + v33));
          sub_226F04970(v46, (v34 + v33));
        }

        else
        {
          v42 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          v43 = (v42[6] + 16 * result);
          *v43 = v13;
          v43[1] = v12;
          result = sub_226F04970(v47, (v42[7] + 32 * result));
          v44 = v42[2];
          v19 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v42[2] = v45;
        }

        sub_2274E844C(&v48);
        v12 = *(&v48 + 1);
      }

      while (*(&v48 + 1));
    }

LABEL_25:
    sub_226EBB21C();
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_227031CCC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C88, &qword_227675D00);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v67 = &v62 - v2;
  v3 = sub_227667540();
  v68 = *(v3 - 8);
  v69 = v3;
  v4 = *(v68 + 64);
  MEMORY[0x28223BE20](v3);
  v64 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C90, &qword_227675D08);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v62 - v8;
  v10 = sub_227666540();
  v65 = *(v10 - 8);
  v66 = v10;
  v11 = *(v65 + 64);
  MEMORY[0x28223BE20](v10);
  v63 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C98, &qword_227675D10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v62 - v15;
  v17 = sub_2276655C0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_227149264(MEMORY[0x277D84F90]);
  v23 = sub_227663230();
  v24 = MEMORY[0x277D837D0];
  v73 = MEMORY[0x277D837D0];
  *&v72 = v23;
  *(&v72 + 1) = v25;
  sub_226F04970(&v72, v71);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v70 = v22;
  sub_22736A46C(v71, 0x644965676170, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v27 = v70;
  sub_227663250();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v28 = v24;
    sub_226E97D1C(v16, &qword_27D7B9C98, &qword_227675D10);
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    v29 = sub_2276655B0();
    v28 = v24;
    v73 = v24;
    *&v72 = v29;
    *(&v72 + 1) = v30;
    sub_226F04970(&v72, v71);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v27;
    sub_22736A46C(v71, 0x6570795465676170, 0xE800000000000000, v31);
    (*(v18 + 8))(v21, v17);
    v27 = v70;
  }

  v32 = sub_227663220();
  v34 = v69;
  v35 = v65;
  if (v33 != 12)
  {
    v36 = v32;
    v37 = v33;
    v38 = sub_227665200();
    v40 = v39;
    sub_227032EDC(v36, v37);
    v73 = v28;
    *&v72 = v38;
    *(&v72 + 1) = v40;
    sub_226F04970(&v72, v71);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v27;
    sub_22736A46C(v71, 0x746E6F4365676170, 0xEB00000000747865, v41);
    v27 = v70;
  }

  v43 = v66;
  v42 = v67;
  sub_227663210();
  if ((*(v35 + 48))(v9, 1, v43) == 1)
  {
    sub_226E97D1C(v9, &qword_27D7B9C90, &qword_227675D08);
    v44 = v28;
  }

  else
  {
    v45 = v63;
    (*(v35 + 32))(v63, v9, v43);
    v46 = sub_227666530();
    v44 = v28;
    v73 = v28;
    *&v72 = v46;
    *(&v72 + 1) = v47;
    sub_226F04970(&v72, v71);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v27;
    sub_22736A46C(v71, 0x54746E65746E6F63, 0xEB00000000657079, v48);
    (*(v35 + 8))(v45, v43);
    v27 = v70;
  }

  sub_227663240();
  v49 = v68;
  if ((*(v68 + 48))(v42, 1, v34) == 1)
  {
    sub_226E97D1C(v42, &qword_27D7B9C88, &qword_227675D00);
  }

  else
  {
    v50 = v64;
    (*(v49 + 32))(v64, v42, v34);
    v51 = sub_227667530();
    v73 = v44;
    *&v72 = v51;
    *(&v72 + 1) = v52;
    sub_226F04970(&v72, v71);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v27;
    sub_22736A46C(v71, 0x6D656C7469746E65, 0xEF72657355746E65, v53);
    v54 = v70;
    v55 = sub_227667530();
    v73 = v44;
    *&v72 = v55;
    *(&v72 + 1) = v56;
    sub_226F04970(&v72, v71);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v70 = v54;
    sub_22736A46C(v71, 0xD000000000000013, 0x80000002276972F0, v57);
    (*(v49 + 8))(v50, v34);
    v27 = v70;
  }

  v58 = sub_227663200();
  v59 = sub_2275A5364(v58);

  if (v59)
  {
    v60 = swift_isUniquelyReferenced_nonNull_native();
    *&v72 = v27;
    sub_226FDAC14(v59, sub_227553D14, 0, v60, &v72);

    return v72;
  }

  return v27;
}

unint64_t sub_2270323C8()
{
  v0 = sub_227149264(MEMORY[0x277D84F90]);
  v1 = sub_227664340();
  v2 = 0x6974634179616C70;
  if (!v1)
  {
    v2 = 0x697463416B656573;
  }

  v10 = MEMORY[0x277D837D0];
  *&v9 = v2;
  *(&v9 + 1) = 0xEC00000079746976;
  sub_226F04970(&v9, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22736A46C(v8, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v4 = sub_227664300();
  v5 = sub_2275A5364(v4);

  if (v5)
  {
    v6 = swift_isUniquelyReferenced_nonNull_native();
    *&v9 = v0;
    sub_226FDAC14(v5, sub_227553D14, 0, v6, &v9);

    return v9;
  }

  return v0;
}

uint64_t sub_227032500@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_227664350() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_227664DB0() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_22766B7F0() - 8);
  v11 = (v9 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v12 = v11 + *(v10 + 64);
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0) - 8);
  v14 = (v12 + *(v13 + 80) + 2) & ~*(v13 + 80);
  v15 = *(v13 + 64);
  v16 = *(type metadata accessor for MetricRecordingContext() - 8);
  v17 = (v14 + v15 + *(v16 + 80)) & ~*(v16 + 80);
  v18 = *(v16 + 64);
  v19 = *(sub_22766BA80() - 8);
  v20 = (v17 + v18 + *(v19 + 80)) & ~*(v19 + 80);
  return sub_2270305CC(a1, v2 + v5, v2 + v8, *(v2 + v9), v2 + v11, *(v2 + v12), *(v2 + v12 + 1), v2 + v14, a2, v2 + v17, v2 + v20, *(v2 + ((*(v19 + 64) + v20 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_32Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_2270328B8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = v3 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return a3(a1, v6, v7);
}

uint64_t sub_227032954@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_227666C40() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0) - 8);
  v9 = (v7 + *(v8 + 80) + 1) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for MetricRecordingContext() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(sub_22766BA80() - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = *(v2 + ((*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  v17 = *(v2 + 16);
  v18 = *(v2 + v7);

  return sub_22702D270(a1, v17, v2 + v6, v18, v2 + v9, v2 + v12, v2 + v15, v16, a2);
}

uint64_t objectdestroy_58Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);
  v8 = *(v1 + v6);

  return MEMORY[0x2821FE8E8](v1, v6 + 9, v4 | 7);
}

uint64_t sub_227032C1C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_227666C40() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *(v5 + 8);
  sub_2273323D8(*v5);
  sub_22702DA24(v1 + v4, v6, a1);
}

uint64_t sub_227032CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_227666C40() - 8);
  v6 = (*(v5 + 64) + ((*(v5 + 80) + 25) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0) - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for MetricRecordingContext() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_22766BA80() - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  return sub_22702E6C4(a1, *(v2 + 16), *(v2 + 24), *(v2 + v6), v2 + v8, v2 + v11, v2 + v14, a2, *(v2 + ((*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_227032EDC(uint64_t a1, unint64_t a2)
{
  if (a2 != 12)
  {
    return sub_227032EEC(a1, a2);
  }

  return a1;
}

uint64_t sub_227032EEC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xC)
  {
  }

  return result;
}

uint64_t objectdestroy_78Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);
  v7 = *(v1 + v6);

  return MEMORY[0x2821FE8E8](v1, v6 + 8, v4 | 7);
}

uint64_t sub_227033098(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v3 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, v3 + v6, v7);
}

uint64_t sub_22703315C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276651A0() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v9 + *(v8 + 64);
  v11 = *(type metadata accessor for MetricRecordingContext() - 8);
  v12 = (v10 + *(v11 + 80) + 1) & ~*(v11 + 80);
  return sub_22702B290(a1, *(v2 + 16), v2 + v6, v2 + v9, *(v2 + v10), v2 + v12, *(v2 + ((v12 + *(v11 + 64) + 7) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v12 + *(v11 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8), a2, *(v2 + ((v12 + *(v11 + 64) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2270332F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276651A0() - 8);
  v6 = (*(v5 + 64) + ((*(v5 + 80) + 25) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8428, &qword_227675CB0) - 8);
  v8 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for MetricRecordingContext() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v11 + *(v10 + 64);
  v13 = (v2 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  LOBYTE(v16) = *(v13 + 8);
  return sub_22702B8CC(a1, *(v2 + 16), *(v2 + 24), *(v2 + v6), v2 + v8, v2 + v11, a2, v16, *(v2 + ((v12 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2270334A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_2270335C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_227665E10() - 8);
  v4 = (*(v3 + 80) + 17) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9158, &qword_2276730B8) - 8);
  v7 = *(v1 + v5);
  return sub_227025D70(*(v1 + 16), v1 + v4, v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80)), a1);
}

uint64_t sub_2270336B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227033718(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_227033788@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9158, &qword_2276730B8) - 8);
  v4 = *(v1 + 24);
  return sub_227025550(*(v1 + 16), *(v1 + 32), v1 + ((*(v3 + 80) + 33) & ~*(v3 + 80)), a1);
}

uint64_t sub_227033864@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t)@<X1>, void (*a3)(uint64_t)@<X2>, const char *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a1(0) - 8);
  v11 = (*(v10 + 64) + ((*(v10 + 80) + 16) & ~*(v10 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9158, &qword_2276730B8) - 8);
  v13 = *(v5 + v11);
  return sub_227026668(*(v5 + v11 + 8), v5 + ((v11 + *(v12 + 80) + 9) & ~*(v12 + 80)), a2, a3, a4, a5);
}

uint64_t objectdestroy_207Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9158, &qword_2276730B8) - 8);
  v8 = *(v7 + 80);
  v9 = (v6 + v8 + 9) & ~v8;
  v10 = *(v7 + 64);
  (*(v3 + 8))(v1 + v5, v2);
  v11 = *(v1 + v6);

  v12 = sub_227663260();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v1 + v9, 1, v12))
  {
    (*(v13 + 8))(v1 + v9, v12);
  }

  return MEMORY[0x2821FE8E8](v1, v9 + v10, v4 | v8 | 7);
}

uint64_t sub_227033B48@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_227667DA0() - 8);
  v4 = (*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9158, &qword_2276730B8) - 8);
  v6 = *(v1 + v4);
  return sub_227024BD8(*(v1 + v4 + 8), v1 + ((v4 + *(v5 + 80) + 9) & ~*(v5 + 80)), a1);
}

uint64_t objectdestroy_23Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

unint64_t sub_227033D54()
{
  result = qword_28139B658;
  if (!qword_28139B658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B658);
  }

  return result;
}

unint64_t sub_227033DA8()
{
  result = qword_28139B650;
  if (!qword_28139B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B650);
  }

  return result;
}

uint64_t sub_227033E88(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v28 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v32 = a2 + 56;
  v29 = v7;
  v30 = result;
  if (v6)
  {
    while (1)
    {
      v8 = __clz(__rbit64(v6));
      v31 = (v6 - 1) & v6;
LABEL_13:
      v11 = *(result + 48) + 24 * (v8 | (v3 << 6));
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      v15 = *(v2 + 40);
      sub_22766D370();
      sub_226F491FC(v12, v13, v14);
      v16 = v12;
      v17 = v13;
      v33 = v14;
      sub_227668BD0();
      v18 = sub_22766D3F0();
      v19 = -1 << *(v2 + 32);
      v20 = v18 & ~v19;
      if (((*(v32 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        break;
      }

      v21 = ~v19;
      while (1)
      {
        v22 = v2;
        v23 = *(v2 + 48) + 24 * v20;
        v24 = *v23;
        v25 = *(v23 + 8);
        v26 = *(v23 + 16);
        sub_226F491FC(*v23, v25, *(v23 + 16));
        v27 = MEMORY[0x22AA94EE0](v24, v25, v26, v16, v17, v33);
        sub_226F49200(v24, v25, v26);
        if (v27)
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        v2 = v22;
        if (((*(v32 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      sub_226F49200(v16, v17, v33);
      v7 = v29;
      result = v30;
      v2 = v22;
      v6 = v31;
      if (!v31)
      {
        goto LABEL_8;
      }
    }

LABEL_21:
    sub_226F49200(v16, v17, v33);
    return 0;
  }

LABEL_8:
  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v28 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v31 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2270340D0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v35 = a2 + 56;
  v31 = result + 56;
  v32 = result;
  v30 = v7;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v8 = __clz(__rbit64(v6));
    v33 = (v6 - 1) & v6;
LABEL_13:
    v11 = (*(result + 48) + 32 * (v8 | (v2 << 6)));
    v13 = *v11;
    v12 = v11[1];
    v14 = v11[2];
    v15 = v11[3];
    v16 = *(a2 + 40);
    v17 = a2;
    sub_22766D370();

    sub_22766C100();
    sub_22739284C(v36, v14);
    v34 = v15;
    sub_227392BA8(v36, v15);
    v18 = sub_22766D3F0();
    v19 = -1 << *(v17 + 32);
    v20 = v18 & ~v19;
    if (((*(v35 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
LABEL_27:

      return 0;
    }

    v21 = v17;
    v22 = ~v19;
    while (1)
    {
      v23 = v21;
      v24 = (*(v21 + 48) + 32 * v20);
      v25 = v24[2];
      v26 = v24[3];
      if (*v24 != v13 || v24[1] != v12)
      {
        v28 = v24[1];
        if ((sub_22766D190() & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if (sub_227034B5C(v25, v14))
      {
        break;
      }

LABEL_16:
      v20 = (v20 + 1) & v22;
      v21 = v23;
      if (((*(v35 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    v29 = sub_227035EAC(v26, v34);

    if ((v29 & 1) == 0)
    {
      goto LABEL_16;
    }

    v3 = v31;
    result = v32;
    a2 = v23;
    v7 = v30;
    v6 = v33;
  }

  while (v33);
LABEL_8:
  v9 = v2;
  while (1)
  {
    v2 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v10 = *(v3 + 8 * v2);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v33 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227034388(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v54 = a2 + 56;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v9 = __clz(__rbit64(v7));
    v10 = (v7 - 1) & v7;
LABEL_13:
    v47 = result;
    v13 = (*(result + 48) + 112 * (v9 | (v3 << 6)));
    v15 = v13[1];
    v14 = v13[2];
    v114[0] = *v13;
    v114[1] = v15;
    v115 = v14;
    v17 = v13[4];
    v16 = v13[5];
    v18 = *(v13 + 90);
    v116 = v13[3];
    *&v118[10] = v18;
    v117 = v17;
    *v118 = v16;
    v19 = *(v2 + 40);
    sub_22766D370();
    sub_227036054(v114, v64);
    sub_226FAE2D0();
    v20 = sub_22766D3F0();
    v21 = -1 << *(v2 + 32);
    v22 = v20 & ~v21;
    if (((*(v54 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
LABEL_41:
      sub_2270360B0(v114);
      return 0;
    }

    v44 = v10;
    v45 = v8;
    v46 = v3;
    v53 = ~v21;
    while (1)
    {
      v23 = (*(v2 + 48) + 112 * v22);
      v25 = v23[1];
      v24 = v23[2];
      v64[0] = *v23;
      v64[1] = v25;
      v65 = v24;
      v26 = *(v23 + 90);
      v28 = v23[4];
      v27 = v23[5];
      v66 = v23[3];
      v67 = v28;
      *v68 = v27;
      *&v68[10] = v26;
      v29 = v65;
      v56 = v28;
      v57 = *(&v66 + 1);
      v30 = *&v68[8];
      v31 = SHIBYTE(v26);
      v32 = v115;
      v58 = *(&v116 + 1);
      v55 = v117;
      v33 = *&v118[8];
      v34 = v118[25];
      if (SHIBYTE(v26) < 0)
      {
        break;
      }

      if ((v118[25] & 0x80000000) != 0)
      {
        goto LABEL_16;
      }

      if (v64[0] != v114[0])
      {
        v48 = v65;
        v35 = *&v118[8];
        v36 = sub_22766D190();
        v29 = v48;
        v2 = a2;
        v33 = v35;
        if ((v36 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v52 = v22;
      v49 = v33;
      sub_22766D400();

      sub_22766C100();
      MEMORY[0x22AA996B0](v29);
      sub_22766D3A0();
      sub_22766D400();
      sub_22766C100();
      MEMORY[0x22AA996B0](v32);
      sub_22766D3A0();
      v91 = v71;
      v92 = v72;
      v93 = v73;
      v89 = v69;
      v90 = v70;
      v37 = sub_22766D3E0();
      v86 = v61;
      v87 = v62;
      v88 = v63;
      v84 = v59;
      v85 = v60;
      if (v37 != sub_22766D3E0() || (v57 != v58 || v56 != v55) && (sub_22766D190() & 1) == 0)
      {
        goto LABEL_15;
      }

      sub_22766D400();
      sub_22766C100();
      MEMORY[0x22AA996B0](v30);
      sub_22766D3A0();
      sub_22766D400();
      sub_22766C100();
      MEMORY[0x22AA996B0](v49);
      sub_22766D3A0();
      v81 = v71;
      v82 = v72;
      v83 = v73;
      v79 = v69;
      v80 = v70;
      v38 = sub_22766D3E0();
      v76 = v61;
      v77 = v62;
      v78 = v63;
      v74 = v59;
      v75 = v60;
      v39 = sub_22766D3E0();
      sub_2270360B0(v64);
      v40 = v38 == v39;
      v2 = a2;
      if (v40)
      {
        goto LABEL_38;
      }

LABEL_16:
      v22 = (v22 + 1) & v53;
      if (((*(v54 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    if ((v118[25] & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    v50 = *&v118[8];
    if (v64[0] != v114[0])
    {
      v29 = v65;
      v2 = a2;
      if ((sub_22766D190() & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v52 = v22;
    sub_22766D400();

    sub_22766C100();
    MEMORY[0x22AA996B0](v29);
    sub_22766D3A0();
    sub_22766D400();
    sub_22766C100();
    MEMORY[0x22AA996B0](v32);
    sub_22766D3A0();
    v111 = v71;
    v112 = v72;
    v113 = v73;
    v109 = v69;
    v110 = v70;
    v41 = sub_22766D3E0();
    v106 = v61;
    v107 = v62;
    v108 = v63;
    v104 = v59;
    v105 = v60;
    if (v41 != sub_22766D3E0() || (v57 != v58 || v56 != v55) && (sub_22766D190() & 1) == 0)
    {
LABEL_15:
      sub_2270360B0(v64);
      v2 = a2;
      v22 = v52;
      goto LABEL_16;
    }

    sub_22766D400();
    sub_22766C100();
    MEMORY[0x22AA996B0](v30);
    sub_22766D3A0();
    sub_22766D400();
    sub_22766C100();
    MEMORY[0x22AA996B0](v50);
    sub_22766D3A0();
    v101 = v71;
    v102 = v72;
    v103 = v73;
    v99 = v69;
    v100 = v70;
    v42 = sub_22766D3E0();
    v96 = v61;
    v97 = v62;
    v98 = v63;
    v94 = v59;
    v95 = v60;
    v43 = sub_22766D3E0();
    sub_2270360B0(v64);
    v40 = v42 == v43;
    v2 = a2;
    if (!v40 || ((v31 ^ v34) & 1) != 0)
    {
      goto LABEL_16;
    }

LABEL_38:
    sub_2270360B0(v114);
    result = v47;
    v8 = v45;
    v3 = v46;
    v7 = v44;
  }

  while (v44);
LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v9 = __clz(__rbit64(v12));
      v10 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227034B5C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v30 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v34 = a2 + 56;
  v31 = v7;
  v32 = result;
  if (v6)
  {
    while (1)
    {
      v8 = __clz(__rbit64(v6));
      v33 = (v6 - 1) & v6;
LABEL_13:
      v11 = *(result + 48) + 40 * (v8 | (v3 << 6));
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      v15 = *(v11 + 32);
      v16 = *(v2 + 40);
      sub_22766D370();

      sub_22766C100();
      v17 = v14;
      MEMORY[0x22AA996B0](v14);
      sub_22766D3A0();
      v18 = sub_22766D3F0();
      v19 = -1 << *(v2 + 32);
      v20 = v18 & ~v19;
      if (((*(v34 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        break;
      }

      v21 = ~v19;
      while (1)
      {
        v22 = v2;
        v23 = *(v2 + 48) + 40 * v20;
        v24 = *v23;
        v25 = *(v23 + 8);
        v26 = *(v23 + 16);
        v27 = *(v23 + 32);
        sub_22766D400();

        sub_22766C100();
        MEMORY[0x22AA996B0](v26);
        sub_22766D3A0();
        sub_22766D400();
        sub_22766C100();
        MEMORY[0x22AA996B0](v17);
        sub_22766D3A0();
        v28 = sub_22766D3E0();
        v29 = sub_22766D3E0();

        if (v28 == v29)
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        v2 = v22;
        if (((*(v34 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      v7 = v31;
      result = v32;
      v2 = v22;
      v6 = v33;
      if (!v33)
      {
        goto LABEL_8;
      }
    }

LABEL_21:

    return 0;
  }

LABEL_8:
  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v30 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v33 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227034E48(uint64_t result, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (result == a2)
  {
    return 1;
  }

  v4 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = 0;
  v6 = *(result + 56);
  v36 = result + 56;
  v7 = 1 << *(result + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
  v11 = a2 + 56;
  v37 = v10;
  v38 = result;
  if ((v8 & v6) == 0)
  {
    goto LABEL_8;
  }

  do
  {
    v12 = __clz(__rbit64(v9));
    v13 = (v9 - 1) & v9;
LABEL_13:
    v16 = *(v4 + 48) + 24 * (v12 | (v5 << 6));
    v17 = *v16;
    v41 = *(v16 + 8);
    v18 = *(v16 + 16);
    v19 = *(a2 + 40);
    sub_22766D370();
    v39 = v13;
    if (!v18)
    {
      MEMORY[0x22AA996B0](0);
      sub_227663FB0();
      goto LABEL_17;
    }

    if (v18 == 1)
    {
      MEMORY[0x22AA996B0](1);
      sub_227664C10();
LABEL_17:
      sub_22766C100();

      goto LABEL_19;
    }

    MEMORY[0x22AA996B0](2);

    sub_22766C100();
LABEL_19:
    v20 = sub_22766D3F0();
    v21 = -1 << *(a2 + 32);
    v22 = v20 & ~v21;
    if (((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
LABEL_47:
      a3(v17, v41, v18);
      return 0;
    }

    v23 = ~v21;
    while (1)
    {
      v24 = *(a2 + 48) + 24 * v22;
      if (!*(v24 + 16))
      {
        if (v18)
        {
          goto LABEL_22;
        }

        v25 = sub_227663FB0();
        v27 = v31;
        v28 = sub_227663FB0();
        goto LABEL_35;
      }

      if (*(v24 + 16) == 1)
      {
        if (v18 != 1)
        {
          goto LABEL_22;
        }

        v25 = sub_227664C10();
        v27 = v26;
        v28 = sub_227664C10();
LABEL_35:
        if (v25 == v28 && v27 == v29)
        {

          goto LABEL_44;
        }

        v33 = sub_22766D190();

        if (v33)
        {
          goto LABEL_44;
        }

        goto LABEL_22;
      }

      if (v18 != 2)
      {
        goto LABEL_22;
      }

      if (*v24 == v17 && *(v24 + 8) == v41)
      {
        break;
      }

      if (sub_22766D190())
      {
        v34 = v17;
        v35 = v41;
        goto LABEL_43;
      }

LABEL_22:
      v22 = (v22 + 1) & v23;
      if (((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    v34 = v17;
    v35 = v41;
LABEL_43:
    result = (a3)(v34, v35, 2);
LABEL_44:
    v10 = v37;
    v4 = v38;
    v9 = v39;
  }

  while (v39);
LABEL_8:
  v14 = v5;
  while (1)
  {
    v5 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return 1;
    }

    v15 = *(v36 + 8 * v5);
    ++v14;
    if (v15)
    {
      v12 = __clz(__rbit64(v15));
      v13 = (v15 - 1) & v15;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227035184(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276694E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v46 = &v35 - v11;
  result = MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v35 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v43 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v46, v14, v4);
      v27 = *(a2 + 40);
      sub_227036104(&qword_2813A54D0, MEMORY[0x277D53DA0]);
      v28 = sub_22766BF50();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = a2;
      v32 = ~v29;
      while (1)
      {
        v26(v9, *(v31 + 48) + v30 * v43, v4);
        sub_227036104(&qword_2813A54C8, MEMORY[0x277D53DA0]);
        v33 = sub_22766BFB0();
        v34 = *v21;
        (*v21)(v9, v4);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v46, v4);
          return 0;
        }
      }

      result = (v34)(v46, v4);
      a2 = v31;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v21)(v46, v4);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227035534(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_22766D370();

    sub_22766C100();
    v17 = sub_22766D3F0();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_22766D190() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2270356EC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v22 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v23 = v7;
  v24 = result;
  if (v6)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v6));
      v25 = (v6 - 1) & v6;
LABEL_13:
      v12 = *(result + 48) + 24 * (v9 | (v3 << 6));
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      v16 = *(a2 + 40);
      sub_22766D370();
      sub_226EB396C(v13, v14, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
      sub_226F480FC();
      sub_227663B10();
      v17 = sub_22766D3F0();
      v18 = -1 << *(a2 + 32);
      v19 = v17 & ~v18;
      if (((*(v8 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        break;
      }

      v20 = ~v18;
      sub_226F48150();
      sub_226EC1E18();
      while (1)
      {
        v21 = *(a2 + 48) + 24 * v19;
        v26 = *v21;
        v27 = *(v21 + 16);
        if (sub_227663B20())
        {
          break;
        }

        v19 = (v19 + 1) & v20;
        if (((*(v8 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      sub_226EB2DFC(v13, v14, v15);
      v7 = v23;
      result = v24;
      v6 = v25;
      if (!v25)
      {
        goto LABEL_8;
      }
    }

LABEL_21:
    sub_226EB2DFC(v13, v14, v15);
    return 0;
  }

LABEL_8:
  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v11 = *(v22 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v25 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227035964(uint64_t a1, uint64_t a2)
{
  v4 = sub_227665F20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v46 = &v35 - v11;
  result = MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v35 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v43 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v46, v14, v4);
      v27 = *(a2 + 40);
      sub_227036104(&unk_27D7BBD10, MEMORY[0x277D51FE0]);
      v28 = sub_22766BF50();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = a2;
      v32 = ~v29;
      while (1)
      {
        v26(v9, *(v31 + 48) + v30 * v43, v4);
        sub_227036104(&qword_27D7B8700, MEMORY[0x277D51FE0]);
        v33 = sub_22766BFB0();
        v34 = *v21;
        (*v21)(v9, v4);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v46, v4);
          return 0;
        }
      }

      result = (v34)(v46, v4);
      a2 = v31;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v21)(v46, v4);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227035D14()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22766D370();
  sub_2273926B4(v4, v1);
  sub_2273923B0(v4, v2);
  return sub_22766D3F0();
}

uint64_t sub_227035D68(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_2273926B4(a1, v3);

  return sub_2273923B0(a1, v4);
}

uint64_t sub_227035DA8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22766D370();
  sub_2273926B4(v4, v1);
  sub_2273923B0(v4, v2);
  return sub_22766D3F0();
}

uint64_t sub_227035DF8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_2270340D0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_227034388(v2, v3);
}

unint64_t sub_227035E58()
{
  result = qword_27D7B9CD0;
  if (!qword_27D7B9CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9CD0);
  }

  return result;
}

uint64_t sub_227035EAC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_226F39D9C(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || (v20 = *(*(a2 + 56) + 8 * v17), v21 = *(v20 + 16), v21 != *(v16 + 16)))
    {
LABEL_28:

      return 0;
    }

    if (v21)
    {
      v22 = v20 == v16;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = (v20 + 40);
      v24 = (v16 + 40);
      while (v21)
      {
        result = *(v23 - 1);
        if (result != *(v24 - 1) || *v23 != *v24)
        {
          result = sub_22766D190();
          if ((result & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v23 += 2;
        v24 += 2;
        if (!--v21)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_6:
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_227036104(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_227036158(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2270361A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2270361EC(uint64_t a1)
{
  v1 = 0;
  v2 = MEMORY[0x277D84F98];
  v3 = a1 + 56;
  v46 = MEMORY[0x277D84F98];
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  v39 = v7;
  v40 = a1 + 56;
  while (v6)
  {
LABEL_9:
    v9 = *(a1 + 48) + 24 * (__clz(__rbit64(v6)) | (v1 << 6));
    v11 = *v9;
    v10 = *(v9 + 8);
    v12 = *(v9 + 16);
    v13 = sub_226F491D4(v12);
    v15 = v2[2];
    v16 = (v14 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_24;
    }

    v18 = v13;
    v19 = v14;
    v42 = v2;
    v44 = v11;
    v20 = v2[3];
    v45 = v10;
    sub_226F04958(v11, v10, v12);
    if (v20 >= v17)
    {
      v7 = v39;
      v2 = v42;
      v23 = v18;
    }

    else
    {
      sub_226FE663C(v17, 1);
      v2 = v46;
      v21 = sub_226F491D4(v12);
      if ((v19 & 1) != (v22 & 1))
      {
        goto LABEL_26;
      }

      v23 = v21;
      v7 = v39;
    }

    v6 &= v6 - 1;
    v3 = v40;
    if (v19)
    {
      v24 = v2[7];
      v25 = *(v24 + 8 * v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v23) = v25;
      v43 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_2273A55B0(0, *(v25 + 2) + 1, 1, v25);
        *(v24 + 8 * v23) = v25;
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      v29 = v28 + 1;
      v31 = v44;
      v30 = v45;
      if (v28 >= v27 >> 1)
      {
        v37 = sub_2273A55B0((v27 > 1), v28 + 1, 1, v25);
        v29 = v28 + 1;
        v31 = v44;
        v30 = v45;
        v25 = v37;
        *(v43 + 8 * v23) = v37;
      }

      *(v25 + 2) = v29;
      v32 = &v25[24 * v28];
      *(v32 + 4) = v31;
      *(v32 + 5) = v30;
      v32[48] = v12;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CD8, &qword_227679CF0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_227670CD0;
      *(v33 + 32) = v44;
      *(v33 + 40) = v45;
      *(v33 + 48) = v12;
      v2[(v23 >> 6) + 8] |= 1 << v23;
      *(v2[6] + 8 * v23) = v12;
      *(v2[7] + 8 * v23) = v33;
      v34 = v2[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_25;
      }

      v2[2] = v36;
    }
  }

  while (1)
  {
    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v8);
    ++v1;
    if (v6)
    {
      v1 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_2270364AC()
{
  v0 = sub_227664F20();
  v1 = sub_2270361EC(v0);
  v2 = sub_227664F20();
  v3 = sub_2270361EC(v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v104[0] = v1;
  sub_227036CA8(v3, sub_226F524F8, 0, isUniquelyReferenced_nonNull_native, v104);

  v5 = v104[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9A20, &qword_227674E48);
  v6 = sub_22766CFF0();
  v7 = v6;
  v8 = 0;
  v9 = 1 << *(v5 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v5 + 64);
  v12 = (v9 + 63) >> 6;
  v13 = v6 + 64;
  if (v11)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v5 + 48) + 8 * v17);
      v19 = *(*(v5 + 56) + 8 * v17);
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v7 + 48) + 8 * v17) = v18;
      *(*(v7 + 56) + 8 * v17) = v19;
      v20 = *(v7 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      *(v7 + 16) = v22;

      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_95;
      }

      if (v8 >= v12)
      {
        break;
      }

      v16 = *(v5 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    v23 = 1 << *(v7 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & *(v7 + 64);
    v26 = (v23 + 63) >> 6;

    v27 = 0;
    v28 = MEMORY[0x277D84F90];
    while (v25)
    {
LABEL_22:
      v30 = (v27 << 9) | (8 * __clz(__rbit64(v25)));
      v31 = *(*(v7 + 56) + v30);
      v32 = *(v31 + 16);
      v33 = *(v28 + 2);
      v34 = v33 + v32;
      if (__OFADD__(v33, v32))
      {
        goto LABEL_101;
      }

      v35 = *(*(v7 + 56) + v30);

      v36 = swift_isUniquelyReferenced_nonNull_native();
      if (!v36 || v34 > *(v28 + 3) >> 1)
      {
        if (v33 <= v34)
        {
          v37 = v33 + v32;
        }

        else
        {
          v37 = v33;
        }

        v28 = sub_2273A55B0(v36, v37, 1, v28);
      }

      v25 &= v25 - 1;
      if (*(v31 + 16))
      {
        if ((*(v28 + 3) >> 1) - *(v28 + 2) < v32)
        {
          goto LABEL_106;
        }

        swift_arrayInitWithCopy();

        if (v32)
        {
          v38 = *(v28 + 2);
          v21 = __OFADD__(v38, v32);
          v39 = v38 + v32;
          if (v21)
          {
            goto LABEL_108;
          }

          *(v28 + 2) = v39;
        }
      }

      else
      {

        if (v32)
        {
          goto LABEL_102;
        }
      }
    }

    while (1)
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v29 >= v26)
      {

        v40 = sub_227664F10();
        v41 = sub_2270361EC(v40);
        v42 = sub_227664F10();
        v43 = sub_2270361EC(v42);
        v44 = swift_isUniquelyReferenced_nonNull_native();
        v104[0] = v41;
        sub_227036CA8(v43, sub_226F524F8, 0, v44, v104);

        v45 = v104[0];
        v46 = sub_22766CFF0();
        v47 = v46;
        v48 = 0;
        v49 = 1 << *(v45 + 32);
        v50 = -1;
        if (v49 < 64)
        {
          v50 = ~(-1 << v49);
        }

        v51 = v50 & *(v45 + 64);
        v52 = (v49 + 63) >> 6;
        v53 = v46 + 64;
        if (!v51)
        {
LABEL_38:
          v55 = v48;
          while (1)
          {
            v48 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              goto LABEL_96;
            }

            if (v48 >= v52)
            {

              v62 = 1 << *(v47 + 32);
              v63 = -1;
              if (v62 < 64)
              {
                v63 = ~(-1 << v62);
              }

              v64 = v63 & *(v47 + 64);
              v65 = (v62 + 63) >> 6;
              v103 = v47;

              v66 = 0;
              v67 = MEMORY[0x277D84F90];
              while (v64)
              {
LABEL_55:
                v69 = (v66 << 9) | (8 * __clz(__rbit64(v64)));
                v70 = *(*(v103 + 56) + v69);
                v71 = *(v70 + 16);
                v72 = *(v67 + 2);
                v73 = v72 + v71;
                if (__OFADD__(v72, v71))
                {
                  goto LABEL_104;
                }

                v74 = *(*(v103 + 56) + v69);

                v75 = swift_isUniquelyReferenced_nonNull_native();
                if (!v75 || v73 > *(v67 + 3) >> 1)
                {
                  if (v72 <= v73)
                  {
                    v76 = v72 + v71;
                  }

                  else
                  {
                    v76 = v72;
                  }

                  v67 = sub_2273A55B0(v75, v76, 1, v67);
                }

                v64 &= v64 - 1;
                if (*(v70 + 16))
                {
                  if ((*(v67 + 3) >> 1) - *(v67 + 2) < v71)
                  {
                    goto LABEL_107;
                  }

                  swift_arrayInitWithCopy();

                  if (v71)
                  {
                    v77 = *(v67 + 2);
                    v21 = __OFADD__(v77, v71);
                    v78 = v77 + v71;
                    if (v21)
                    {
                      goto LABEL_109;
                    }

                    *(v67 + 2) = v78;
                  }
                }

                else
                {

                  if (v71)
                  {
                    goto LABEL_105;
                  }
                }
              }

              while (1)
              {
                v68 = v66 + 1;
                if (__OFADD__(v66, 1))
                {
                  goto LABEL_97;
                }

                if (v68 >= v65)
                {

                  v79 = 0;
                  v80 = *(v67 + 2);
                  v81 = MEMORY[0x277D84F90];
LABEL_68:
                  v82 = 24 * v79;
                  while (v80 != v79)
                  {
                    if (v79 >= *(v67 + 2))
                    {
                      goto LABEL_98;
                    }

                    ++v79;
                    v83 = v82 + 24;
                    v84 = v67[v82 + 48];
                    v82 += 24;
                    if (v84 != 1)
                    {
                      if (v84)
                      {
                        v86 = *&v67[v83 + 8];
                        v85 = *&v67[v83 + 16];
                      }

                      else
                      {
                        v85 = 0;
                        v86 = v67[v83 + 8];
                      }

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v81 = sub_2273A5594(0, *(v81 + 2) + 1, 1, v81);
                      }

                      v88 = *(v81 + 2);
                      v87 = *(v81 + 3);
                      if (v88 >= v87 >> 1)
                      {
                        v81 = sub_2273A5594((v87 > 1), v88 + 1, 1, v81);
                      }

                      *(v81 + 2) = v88 + 1;
                      v89 = &v81[24 * v88];
                      *(v89 + 4) = v86;
                      *(v89 + 5) = v85;
                      v89[48] = v84;
                      goto LABEL_68;
                    }
                  }

                  v90 = sub_226F43C10(v81);

                  v91 = 0;
                  v92 = *(v28 + 2);
                  v93 = MEMORY[0x277D84F90];
LABEL_81:
                  v94 = 24 * v91;
                  while (v92 != v91)
                  {
                    if (v91 >= *(v28 + 2))
                    {
                      goto LABEL_99;
                    }

                    ++v91;
                    v95 = v94 + 24;
                    v96 = v28[v94 + 48];
                    v94 += 24;
                    if (v96 != 1)
                    {
                      if (v96)
                      {
                        v98 = *&v28[v95 + 8];
                        v97 = *&v28[v95 + 16];
                      }

                      else
                      {
                        v97 = 0;
                        v98 = v28[v95 + 8];
                      }

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v93 = sub_2273A5594(0, *(v93 + 2) + 1, 1, v93);
                      }

                      v100 = *(v93 + 2);
                      v99 = *(v93 + 3);
                      if (v100 >= v99 >> 1)
                      {
                        v93 = sub_2273A5594((v99 > 1), v100 + 1, 1, v93);
                      }

                      *(v93 + 2) = v100 + 1;
                      v101 = &v93[24 * v100];
                      *(v101 + 4) = v98;
                      *(v101 + 5) = v97;
                      v101[48] = v96;
                      goto LABEL_81;
                    }
                  }

                  sub_226F43C10(v93);

                  return v90;
                }

                v64 = *(v53 + 8 * v68);
                ++v66;
                if (v64)
                {
                  v66 = v68;
                  goto LABEL_55;
                }
              }
            }

            v56 = *(v45 + 64 + 8 * v48);
            ++v55;
            if (v56)
            {
              v54 = __clz(__rbit64(v56));
              v51 = (v56 - 1) & v56;
              goto LABEL_43;
            }
          }
        }

        while (1)
        {
          v54 = __clz(__rbit64(v51));
          v51 &= v51 - 1;
LABEL_43:
          v57 = v54 | (v48 << 6);
          v58 = *(*(v45 + 48) + 8 * v57);
          v59 = *(*(v45 + 56) + 8 * v57);
          *(v53 + ((v57 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v57;
          *(*(v47 + 48) + 8 * v57) = v58;
          *(*(v47 + 56) + 8 * v57) = v59;
          v60 = *(v47 + 16);
          v21 = __OFADD__(v60, 1);
          v61 = v60 + 1;
          if (v21)
          {
            goto LABEL_103;
          }

          *(v47 + 16) = v61;

          if (!v51)
          {
            goto LABEL_38;
          }
        }
      }

      v25 = *(v13 + 8 * v29);
      ++v27;
      if (v25)
      {
        v27 = v29;
        goto LABEL_22;
      }
    }

LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
  }

  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_227036CA8(uint64_t a1, void (*a2)(void *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v42 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v36 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v39 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v41[0] = *(*(a1 + 48) + v16);
    v41[1] = v17;

    a2(v40, v41);

    v19 = v40[0];
    v18 = v40[1];
    v20 = *v42;
    v22 = sub_226F491D4(v40[0]);
    v23 = *(v20 + 16);
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_25;
    }

    v26 = v21;
    if (*(v20 + 24) >= v25)
    {
      if ((v39 & 1) == 0)
      {
        sub_226FF21D8();
      }
    }

    else
    {
      v27 = v42;
      sub_226FE663C(v25, v39 & 1);
      v28 = *v27;
      v29 = sub_226F491D4(v19);
      if ((v26 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v22 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v42;
    if (v26)
    {
      v12 = v31[7];
      v13 = *(v12 + 8 * v22);
      *(v12 + 8 * v22) = v18;
    }

    else
    {
      v31[(v22 >> 6) + 8] |= 1 << v22;
      *(v31[6] + 8 * v22) = v19;
      *(v31[7] + 8 * v22) = v18;
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v31[2] = v34;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_226EBB21C();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v39 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_227036F00()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_227036F64()
{
  v1[2] = v0;
  v2 = sub_22766A8A0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227037024, 0, 0);
}

uint64_t sub_227037024()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_22766BFD0();
  v3 = [v1 BOOLForKey_];

  if (v3)
  {
    v4 = 1;
LABEL_8:
    v16 = *(v0 + 40);

    v17 = *(v0 + 8);

    return v17(v4);
  }

  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 24);
  v8 = *(*(v0 + 16) + 64);
  v9 = sub_2276693C0();
  (*(v6 + 104))(v5, *MEMORY[0x277D4F930], v7);
  v10 = sub_226EC9A38(v5, v9);

  (*(v6 + 8))(v5, v7);
  v11 = *(v0 + 16);
  if (v10)
  {
    v12 = *(v11[2] + 32);
    sub_2276696A0();
    v4 = *(v0 + 56);
    goto LABEL_8;
  }

  v13 = *__swift_project_boxed_opaque_existential_0(v11 + 3, v11[6]);
  v14 = swift_task_alloc();
  *(v0 + 48) = v14;
  *v14 = v0;
  v14[1] = sub_227037240;

  return sub_2272BED74();
}

uint64_t sub_227037240(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v8 = *v1;

  v5 = *(v3 + 40);

  v6 = *(v8 + 8);

  return v6(a1);
}

uint64_t sub_227037380()
{
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  v3 = sub_22766BFD0();
  v4 = [v2 BOOLForKey_];

  if (v4 & 1) != 0 || (v5 = [v1 standardUserDefaults], v6 = sub_22766BFD0(), v7 = objc_msgSend(v5, sel_BOOLForKey_, v6), v6, v5, (v7))
  {
    v8 = v0[1];

    return v8(1);
  }

  else
  {
    v0[3] = *__swift_project_boxed_opaque_existential_0((v0[2] + 24), *(v0[2] + 48));
    v10 = swift_task_alloc();
    v0[4] = v10;
    *v10 = v0;
    v10[1] = sub_227037534;

    return sub_2272BED74();
  }
}

uint64_t sub_227037534(char a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v8 = *v1;
  *(v3 + 48) = a1;

  v5 = swift_task_alloc();
  *(v3 + 40) = v5;
  *v5 = v8;
  v5[1] = sub_227037680;
  v6 = *(v2 + 24);

  return sub_2272BE6E0();
}

uint64_t sub_227037680(int a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  v7 = *v1;

  v5 = *(v7 + 8);

  return v5((v4 | a1) & 1);
}

uint64_t sub_2270377A0()
{
  v1 = 0x707954616964656DLL;
  if (*v0 != 1)
  {
    v1 = 0x696669746E656469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x52746E65746E6F63;
  }
}

uint64_t sub_227037810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227038350(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227037838(uint64_t a1)
{
  v2 = sub_227038B68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227037874(uint64_t a1)
{
  v2 = sub_227038B68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2270378BC(uint64_t a1)
{
  v2 = sub_227038CB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2270378F8(uint64_t a1)
{
  v2 = sub_227038CB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227037934(uint64_t a1)
{
  v2 = sub_227038BBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227037970(uint64_t a1)
{
  v2 = sub_227038BBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2270379AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22766D190();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_227037A2C(uint64_t a1)
{
  v2 = sub_227038C10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227037A68(uint64_t a1)
{
  v2 = sub_227038C10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227037AA4(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v33 = a2;
  v32 = a4;
  v30 = a3;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9D40, &qword_227675F80);
  v29 = *(v31 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v28 = &v25 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9D48, &qword_227675F88);
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9D50, &qword_227675F90);
  v25 = *(v11 - 8);
  v12 = *(v25 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9D58, &qword_227675F98);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - v18;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_227038B68();
  sub_22766D480();
  if (v32)
  {
    if (v32 == 1)
    {
      v37 = 1;
      sub_227038C10();
      sub_22766D0D0();
      v36 = v33;
      sub_227038D60();
      v21 = v27;
      sub_22766D120();
      (*(v26 + 8))(v10, v21);
    }

    else
    {
      v38 = 2;
      sub_227038BBC();
      v23 = v28;
      sub_22766D0D0();
      v24 = v31;
      sub_22766D0F0();
      (*(v29 + 8))(v23, v24);
    }

    return (*(v16 + 8))(v19, v15);
  }

  else
  {
    v35 = 0;
    sub_227038CB8();
    sub_22766D0D0();
    v34 = v33;
    sub_227038DB4();
    sub_22766D120();
    (*(v25 + 8))(v14, v11);
    return (*(v16 + 8))(v19, v15);
  }
}

uint64_t sub_227037ED0(uint64_t a1, uint64_t a2, char a3)
{
  sub_22766D370();
  if (a3)
  {
    if (a3 != 1)
    {
      MEMORY[0x22AA996B0](2);
      sub_22766C100();
      return sub_22766D3F0();
    }

    MEMORY[0x22AA996B0](1);
    sub_227664C10();
  }

  else
  {
    MEMORY[0x22AA996B0](0);
    sub_227663FB0();
  }

  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_227037F94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_227038480(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_227037FF0()
{
  v1 = *v0;
  if (!*(v0 + 16))
  {
    MEMORY[0x22AA996B0](0);
    sub_227663FB0();
    goto LABEL_5;
  }

  if (*(v0 + 16) == 1)
  {
    MEMORY[0x22AA996B0](1);
    sub_227664C10();
LABEL_5:
    sub_22766C100();
  }

  v3 = v0[1];
  MEMORY[0x22AA996B0](2);

  return sub_22766C100();
}

uint64_t sub_2270380C0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_22766D370();
  if (v3)
  {
    if (v3 != 1)
    {
      MEMORY[0x22AA996B0](2);
      sub_22766C100();
      return sub_22766D3F0();
    }

    MEMORY[0x22AA996B0](1);
    sub_227664C10();
  }

  else
  {
    MEMORY[0x22AA996B0](0);
    sub_227663FB0();
  }

  sub_22766C100();

  return sub_22766D3F0();
}

unint64_t sub_22703819C()
{
  result = qword_27D7B9CE0;
  if (!qword_27D7B9CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9CE0);
  }

  return result;
}

uint64_t sub_2270381F0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_227038224(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        v6 = sub_227664C10();
        v8 = v7;
        v9 = sub_227664C10();
        goto LABEL_7;
      }
    }

    else if (a6 == 2)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return sub_22766D190();
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  v6 = sub_227663FB0();
  v8 = v11;
  v9 = sub_227663FB0();
LABEL_7:
  if (v6 == v9 && v8 == v10)
  {

    return 1;
  }

  v13 = sub_22766D190();

  return v13 & 1;
}

uint64_t sub_227038350(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461;
  if (v4 || (sub_22766D190() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065 || (sub_22766D190() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 2;
  }

  else
  {
    v6 = sub_22766D190();

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

uint64_t sub_227038480(uint64_t *a1)
{
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CE8, &qword_227675F58);
  v49 = *(v51 - 8);
  v2 = *(v49 + 64);
  MEMORY[0x28223BE20](v51);
  v50 = &v42 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CF0, &qword_227675F60);
  v5 = *(v4 - 8);
  v47 = v4;
  v48 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CF8, &qword_227675F68);
  v46 = *(v9 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9D00, &qword_227675F70);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v42 - v16;
  v19 = a1[3];
  v18 = a1[4];
  v53 = a1;
  v20 = __swift_project_boxed_opaque_existential_0(a1, v19);
  sub_227038B68();
  v21 = v52;
  sub_22766D460();
  if (!v21)
  {
    v43 = v9;
    v44 = 0;
    v23 = v50;
    v22 = v51;
    v45 = v14;
    v52 = v17;
    v24 = sub_22766D0C0();
    v25 = *(v24 + 16);
    if (!v25 || ((v26 = *(v24 + 32), v25 == 1) ? (v27 = v26 == 3) : (v27 = 1), v27))
    {
      v28 = sub_22766CEB0();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9D10, &qword_227675F78) + 48);
      *v30 = &type metadata for BookmarkCatalogFilterProperty;
      v20 = v52;
      sub_22766D060();
      sub_22766CEA0();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84160], v28);
      swift_willThrow();
      (*(v45 + 8))(v20, v13);
    }

    else if (*(v24 + 32))
    {
      v46 = v24;
      if (v26 == 1)
      {
        v57 = 1;
        sub_227038C10();
        v33 = v52;
        v20 = v52;
        v34 = v44;
        sub_22766D050();
        v35 = v45;
        if (v34)
        {
          (*(v45 + 8))(v33, v13);
          swift_unknownObjectRelease();
        }

        else
        {
          sub_227038C64();
          v40 = v47;
          sub_22766D0B0();
          (*(v48 + 8))(v8, v40);
          (*(v35 + 8))(v33, v13);
          swift_unknownObjectRelease();
          v20 = v56;
        }

        goto LABEL_10;
      }

      v58 = 2;
      sub_227038BBC();
      v20 = v52;
      v38 = v44;
      sub_22766D050();
      v39 = v45;
      if (!v38)
      {
        v20 = sub_22766D080();
        (*(v49 + 8))(v23, v22);
        (*(v39 + 8))(v52, v13);
        swift_unknownObjectRelease();
        goto LABEL_10;
      }

      (*(v45 + 8))(v20, v13);
    }

    else
    {
      v55 = 0;
      sub_227038CB8();
      v36 = v52;
      v20 = v52;
      v37 = v44;
      sub_22766D050();
      if (!v37)
      {
        sub_227038D0C();
        v41 = v43;
        sub_22766D0B0();
        (*(v46 + 8))(v12, v41);
        (*(v45 + 8))(v36, v13);
        swift_unknownObjectRelease();
        v20 = v54;
        goto LABEL_10;
      }

      (*(v45 + 8))(v36, v13);
    }

    swift_unknownObjectRelease();
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_0(v53);
  return v20;
}

unint64_t sub_227038B68()
{
  result = qword_27D7B9D08;
  if (!qword_27D7B9D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9D08);
  }

  return result;
}

unint64_t sub_227038BBC()
{
  result = qword_27D7B9D18;
  if (!qword_27D7B9D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9D18);
  }

  return result;
}

unint64_t sub_227038C10()
{
  result = qword_27D7B9D20;
  if (!qword_27D7B9D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9D20);
  }

  return result;
}

unint64_t sub_227038C64()
{
  result = qword_27D7B9D28;
  if (!qword_27D7B9D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9D28);
  }

  return result;
}

unint64_t sub_227038CB8()
{
  result = qword_27D7B9D30;
  if (!qword_27D7B9D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9D30);
  }

  return result;
}

unint64_t sub_227038D0C()
{
  result = qword_27D7B9D38;
  if (!qword_27D7B9D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9D38);
  }

  return result;
}

unint64_t sub_227038D60()
{
  result = qword_27D7B9D60;
  if (!qword_27D7B9D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9D60);
  }

  return result;
}

unint64_t sub_227038DB4()
{
  result = qword_27D7B9D68;
  if (!qword_27D7B9D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9D68);
  }

  return result;
}

unint64_t sub_227038E70()
{
  result = qword_27D7B9D70;
  if (!qword_27D7B9D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9D70);
  }

  return result;
}

unint64_t sub_227038EC8()
{
  result = qword_27D7B9D78;
  if (!qword_27D7B9D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9D78);
  }

  return result;
}

unint64_t sub_227038F20()
{
  result = qword_27D7B9D80;
  if (!qword_27D7B9D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9D80);
  }

  return result;
}

unint64_t sub_227038F78()
{
  result = qword_27D7B9D88;
  if (!qword_27D7B9D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9D88);
  }

  return result;
}

unint64_t sub_227038FD0()
{
  result = qword_27D7B9D90;
  if (!qword_27D7B9D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9D90);
  }

  return result;
}

unint64_t sub_227039028()
{
  result = qword_27D7B9D98;
  if (!qword_27D7B9D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9D98);
  }

  return result;
}

unint64_t sub_227039080()
{
  result = qword_27D7B9DA0;
  if (!qword_27D7B9DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9DA0);
  }

  return result;
}

unint64_t sub_2270390D8()
{
  result = qword_27D7B9DA8;
  if (!qword_27D7B9DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9DA8);
  }

  return result;
}

unint64_t sub_227039130()
{
  result = qword_27D7B9DB0;
  if (!qword_27D7B9DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9DB0);
  }

  return result;
}

unint64_t sub_227039188()
{
  result = qword_27D7B9DB8;
  if (!qword_27D7B9DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9DB8);
  }

  return result;
}

unint64_t sub_2270391E0()
{
  result = qword_27D7B9DC0;
  if (!qword_27D7B9DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9DC0);
  }

  return result;
}

unint64_t sub_227039238()
{
  result = qword_27D7B9DC8;
  if (!qword_27D7B9DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9DC8);
  }

  return result;
}

uint64_t sub_2270392A8(uint64_t a1)
{
  v3 = v1;
  sub_22766D370();
  v4 = *v1;
  v5 = v1[1];
  sub_22766C100();
  v6 = *(a1 + 20);
  sub_2276694E0();
  sub_2270396E8(&qword_2813A54D0, MEMORY[0x277D53DA0]);
  sub_22766BF60();
  v7 = (v3 + *(a1 + 24));
  v8 = *v7;
  v9 = v7[1];
  sub_22766C100();
  return sub_22766D3F0();
}

uint64_t sub_227039368(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v2;
  v6 = v2[1];
  sub_22766C100();
  v7 = *(a2 + 20);
  sub_2276694E0();
  sub_2270396E8(&qword_2813A54D0, MEMORY[0x277D53DA0]);
  sub_22766BF60();
  v8 = (v4 + *(a2 + 24));
  v9 = *v8;
  v10 = v8[1];

  return sub_22766C100();
}

uint64_t sub_227039420(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_22766D370();
  v5 = *v2;
  v6 = v2[1];
  sub_22766C100();
  v7 = *(a2 + 20);
  sub_2276694E0();
  sub_2270396E8(&qword_2813A54D0, MEMORY[0x277D53DA0]);
  sub_22766BF60();
  v8 = (v4 + *(a2 + 24));
  v9 = *v8;
  v10 = v8[1];
  sub_22766C100();
  return sub_22766D3F0();
}

uint64_t type metadata accessor for SyncChangeTag()
{
  result = qword_28139AFB8;
  if (!qword_28139AFB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227039574(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_22766D190() & 1) == 0)
  {
    goto LABEL_15;
  }

  v5 = type metadata accessor for SyncChangeTag();
  v6 = *(v5 + 20);
  sub_2276694E0();
  sub_2270396E8(&qword_28139B260, MEMORY[0x277D53DA0]);
  sub_22766C290();
  sub_22766C290();
  if (v17 != v15 || v18 != v16)
  {
    v7 = sub_22766D190();

    if (v7)
    {
      goto LABEL_10;
    }

LABEL_15:
    v13 = 0;
    return v13 & 1;
  }

LABEL_10:
  v8 = *(v5 + 24);
  v9 = *(a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  if (v9 == *v11 && v10 == v11[1])
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_22766D190();
  }

  return v13 & 1;
}

uint64_t sub_2270396E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227039758()
{
  result = sub_2276694E0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2270397D4(uint64_t a1)
{
  v37 = sub_227668240();
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v29 = v1;
    v41 = MEMORY[0x277D84F90];
    sub_226F1EF90(0, v6, 0);
    v40 = v41;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_22766CC90();
    v10 = result;
    v11 = 0;
    v34 = v3 + 8;
    v35 = v3 + 16;
    v30 = a1 + 64;
    v31 = v6;
    v32 = v3;
    v33 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v38 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      (*(v3 + 16))(v36, *(a1 + 48) + *(v3 + 72) * v10, v37);
      v39 = sub_227668220();
      v17 = v16;
      result = (*(v3 + 8))(v14, v15);
      v18 = v40;
      v41 = v40;
      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      if (v20 >= v19 >> 1)
      {
        result = sub_226F1EF90(v19 > 1, v20 + 1, 1);
        v18 = v41;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v17;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v33;
      v22 = *(v33 + 8 * v13);
      if ((v22 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v18;
      if (v38 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v10 & 0x3F));
      if (v23)
      {
        v12 = __clz(__rbit64(v23)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v32;
      }

      else
      {
        v24 = v13 << 6;
        v25 = v13 + 1;
        v26 = (v30 + 8 * v13);
        v3 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_226EB526C(v10, v38, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v10, v38, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v31)
      {
        return v40;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_227039ADC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, char *), uint64_t a3)
{
  v4 = v3;
  v45 = a2;
  v46 = a3;
  v49 = sub_227666B60();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v49);
  v44 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = &v37 - v10;
  v11 = MEMORY[0x277D84F98];
  v51 = MEMORY[0x277D84F98];
  v43 = *(a1 + 16);
  if (v43)
  {
    v12 = 0;
    v42 = v6 + 16;
    v47 = (v6 + 32);
    v37 = xmmword_227670CD0;
    v40 = v6;
    v41 = a1;
    while (v12 < *(a1 + 16))
    {
      v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v15 = *(v6 + 72);
      v16 = v48;
      (*(v6 + 16))(v48, a1 + v14 + v15 * v12, v49);
      v45(&v50, v16);
      if (v4)
      {
        (*(v6 + 8))(v48, v49);

        goto LABEL_19;
      }

      v17 = v50;
      v19 = sub_226F491D4(v50);
      v20 = v11[2];
      v21 = (v18 & 1) == 0;
      v22 = v20 + v21;
      if (__OFADD__(v20, v21))
      {
        goto LABEL_21;
      }

      v23 = v18;
      if (v11[3] < v22)
      {
        sub_226FE8B4C(v22, 1);
        v11 = v51;
        v24 = sub_226F491D4(v17);
        if ((v23 & 1) != (v25 & 1))
        {
          goto LABEL_23;
        }

        v19 = v24;
      }

      if (v23)
      {
        v39 = 0;
        v26 = v11[7];
        v27 = *v47;
        (*v47)(v44, v48, v49);
        v28 = *(v26 + 8 * v19);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v26 + 8 * v19) = v28;
        v38 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v28 = sub_2273A55CC(0, *(v28 + 2) + 1, 1, v28);
          *(v26 + 8 * v19) = v28;
        }

        v31 = *(v28 + 2);
        v30 = *(v28 + 3);
        if (v31 >= v30 >> 1)
        {
          v28 = sub_2273A55CC(v30 > 1, v31 + 1, 1, v28);
          *(v26 + 8 * v19) = v28;
        }

        v13 = v38;
        v4 = v39;
        *(v28 + 2) = v31 + 1;
        v13(&v28[v14 + v31 * v15], v44, v49);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E00, &qword_227679AB0);
        v32 = swift_allocObject();
        *(v32 + 16) = v37;
        (*v47)((v32 + v14), v48, v49);
        v11[(v19 >> 6) + 8] |= 1 << v19;
        *(v11[6] + 8 * v19) = v17;
        *(v11[7] + 8 * v19) = v32;
        v33 = v11[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_22;
        }

        v11[2] = v35;
      }

      ++v12;
      v6 = v40;
      a1 = v41;
      if (v43 == v12)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    result = sub_22766D220();
    __break(1u);
  }

  else
  {
LABEL_19:

    return v11;
  }

  return result;
}

uint64_t sub_227039E78(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = MEMORY[0x277D84F98];
  v41 = MEMORY[0x277D84F98];
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  v33 = v9;
  v31 = result;
  if (v8)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_8:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v12 >= v9)
    {
LABEL_28:

      return v4;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
  }

  while (!v8);
  v34 = v4;
  v11 = v12;
  while (1)
  {
    v13 = __clz(__rbit64(v8)) | (v11 << 6);
    v14 = *(v3 + 48) + 24 * v13;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    v40 = *(*(v3 + 56) + 8 * v13);
    sub_226EB396C(v15, v16, v17);

    sub_22703B4CC(&v40, &v35);
    if (v2)
    {

      sub_226EB2DFC(v15, v16, v17);
      v4 = v34;
      goto LABEL_28;
    }

    v8 &= v8 - 1;

    if (v36)
    {
      result = sub_226EB2DFC(v15, v16, v17);
      v9 = v33;
      v4 = v34;
      if (!v8)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v18 = v34;
    v32 = v35;
    v19 = v34[2];
    if (v34[3] <= v19)
    {
      sub_226FF6748(v19 + 1, 1);
      v18 = v41;
    }

    v20 = v18[5];
    v37 = v15;
    v38 = v16;
    v39 = v17;
    sub_22766D370();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    sub_226F480FC();
    sub_227663B10();
    result = sub_22766D3F0();
    v4 = v18;
    v21 = v18 + 8;
    v22 = -1 << *(v18 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~v18[(v23 >> 6) + 8]) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~v18[(v23 >> 6) + 8])) | v23 & 0x7FFFFFFFFFFFFFC0;
    v3 = v31;
LABEL_26:
    *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = v4[6] + 24 * v25;
    *v30 = v15;
    *(v30 + 8) = v16;
    *(v30 + 16) = v17;
    *(v4[7] + 8 * v25) = v32;
    ++v4[2];
    v9 = v33;
    if (!v8)
    {
      goto LABEL_8;
    }

LABEL_7:
    v34 = v4;
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  v3 = v31;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = v21[v24];
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_26;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_22703A184(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F98];
  v31 = MEMORY[0x277D84F98];
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (1)
  {
    if (!v8)
    {
      while (1)
      {
        v18 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v18 >= v9)
        {

          return v4;
        }

        v8 = *(v5 + 8 * v18);
        ++v11;
        if (v8)
        {
          v11 = v18;
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

LABEL_14:
    v19 = (v11 << 9) | (8 * __clz(__rbit64(v8)));
    v20 = *(*(a3 + 48) + v19);
    v30 = *(*(a3 + 56) + v19);

    a1(&v29, &v30);
    if (v3)
    {
      break;
    }

    v21 = v29;
    if (v29)
    {
      v22 = *(v4 + 16);
      if (*(v4 + 24) <= v22)
      {
        sub_226FE8B4C(v22 + 1, 1);
        v4 = v31;
      }

      v12 = *(v4 + 40);
      result = sub_22766D360();
      v13 = v4 + 64;
      v14 = -1 << *(v4 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v4 + 64 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v4 + 64 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v4 + 48) + 8 * v17) = v20;
      *(*(v4 + 56) + 8 * v17) = v21;
      ++*(v4 + 16);
    }

    v8 &= v8 - 1;
  }

  return v4;
}

uint64_t sub_22703A3D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8F20, &qword_2276767D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v36 - v4;
  v42 = sub_227666B60();
  v6 = *(*(v42 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v42);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v36 - v10;
  v11 = MEMORY[0x277D84F98];
  v45 = MEMORY[0x277D84F98];
  v12 = a1 + 64;
  v13 = 1 << *(a1 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a1 + 64);
  v16 = (v13 + 63) >> 6;
  v41 = (v9 + 48);
  v37 = v9;
  v38 = (v9 + 32);
  v43 = a1;

  v18 = 0;
  while (1)
  {
    v19 = v18;
    if (!v15)
    {
      break;
    }

LABEL_9:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v21 = (v18 << 9) | (8 * v20);
    v22 = *(*(v43 + 48) + v21);
    v23 = *(*(v43 + 56) + v21);
    swift_getKeyPath();
    v44 = v23;

    swift_getAtKeyPath();

    if ((*v41)(v5, 1, v42) == 1)
    {
      result = sub_226E97D1C(v5, &qword_27D7B8F20, &qword_2276767D0);
    }

    else
    {
      v24 = *v38;
      (*v38)(v40, v5, v42);
      v24(v39, v40, v42);
      v25 = *(v11 + 16);
      if (*(v11 + 24) <= v25)
      {
        sub_226FE8B60(v25 + 1, 1);
      }

      v11 = v45;
      v26 = *(v45 + 40);
      result = sub_22766D360();
      v27 = v11 + 64;
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v11 + 64 + 8 * (v29 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v28) >> 6;
        while (++v30 != v33 || (v32 & 1) == 0)
        {
          v34 = v30 == v33;
          if (v30 == v33)
          {
            v30 = 0;
          }

          v32 |= v34;
          v35 = *(v27 + 8 * v30);
          if (v35 != -1)
          {
            v31 = __clz(__rbit64(~v35)) + (v30 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v31 = __clz(__rbit64((-1 << v29) & ~*(v11 + 64 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v27 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      *(*(v11 + 48) + 8 * v31) = v22;
      result = (v24)(*(v11 + 56) + *(v37 + 72) * v31, v39, v42);
      ++*(v11 + 16);
    }
  }

  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v16)
    {

      return v11;
    }

    v15 = *(v12 + 8 * v18);
    ++v19;
    if (v15)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_22703A798()
{
  v2 = v0;
  v3 = sub_227284754(0);
  if (!v1)
  {
    v4 = v3;
    [v3 setResultType_];
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v5 = sub_22766C820();
    v6 = [v5 keyPath];

    v7 = sub_22766C000();
    v9 = v8;

    v10 = sub_22766C820();
    v11 = [v10 keyPath];

    v12 = sub_22766C000();
    v14 = v13;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FE8, &qword_227672B80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2276728D0;
    v16 = MEMORY[0x277D837D0];
    *(v15 + 32) = v7;
    *(v15 + 40) = v9;
    *(v15 + 88) = v16;
    *(v15 + 56) = v16;
    *(v15 + 64) = v12;
    *(v15 + 72) = v14;

    v17 = sub_22766C2B0();

    [v4 setPropertiesToFetch_];

    v18 = *(v2 + 16);
    sub_226E99364(0, &qword_28139D2B0, 0x277CBEAC0);
    v19 = sub_22766C9E0();
    v20 = sub_2273C20D4(v19);

    if (v20)
    {
      v39 = v4;
      v21 = *(v20 + 16);
      if (v21)
      {
        v41 = v12;
        v42 = v7;
        v44 = MEMORY[0x277D84F90];
        sub_226F1FBE8(0, v21, 0);
        v22 = 0;
        v23 = v44;
        v40 = v20;
        v43 = v9;
        while (v22 < *(v20 + 16))
        {
          v24 = v23;
          v25 = *(v20 + 8 * v22 + 32);
          v27 = v14;

          v28 = sub_22703AC60(v26, v42, v9, v41, v14);
          v30 = v29;
          v32 = v31;

          v23 = v24;
          v44 = v24;
          v33 = *(v24 + 16);
          v34 = *(v23 + 24);
          if (v33 >= v34 >> 1)
          {
            sub_226F1FBE8((v34 > 1), v33 + 1, 1);
            v23 = v44;
          }

          ++v22;
          *(v23 + 16) = v33 + 1;
          v35 = (v23 + 24 * v33);
          v35[4] = v28;
          v35[5] = v30;
          v35[6] = v32;
          v9 = v43;
          v14 = v27;
          v20 = v40;
          if (v21 == v22)
          {

            goto LABEL_14;
          }
        }

        __break(1u);

        __break(1u);
      }

      else
      {

        v23 = MEMORY[0x277D84F90];
LABEL_14:
        if (*(v23 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9990, &unk_227676790);
          v38 = sub_22766D010();
        }

        else
        {
          v38 = MEMORY[0x277D84F98];
        }

        v44 = v38;
        sub_22704DB08(v23, 1, &v44);
      }
    }

    else
    {

      v36 = sub_227664DD0();
      sub_226EABFDC(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D51018], v36);
      swift_willThrow();
    }
  }
}

uint64_t sub_22703AC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 16) && (v9 = sub_226E92000(a2, a3), (v10 & 1) != 0))
  {
    sub_226E97CC0(*(a1 + 56) + 32 * v9, &v18);
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC990, &qword_227670A30);
  if (!swift_dynamicCast())
  {
    goto LABEL_13;
  }

  v5 = v17;
  if (*(a1 + 16) && (v11 = sub_226E92000(a4, a5), (v12 & 1) != 0))
  {
    sub_226E97CC0(*(a1 + 56) + 32 * v11, &v18);
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_13:
    v14 = sub_227664DD0();
    sub_226EABFDC(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D51018], v14);
    swift_willThrow();
    return v5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B92A0, &qword_2276767A0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_227670CD0;
  *(v13 + 32) = v17;
  return v5;
}

uint64_t sub_22703AE64()
{
  sub_22766CE20();
  MEMORY[0x22AA98450](0xD000000000000028, 0x8000000227697530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  v0 = sub_22766BEC0();
  MEMORY[0x22AA98450](v0);

  MEMORY[0x22AA98450](0xD000000000000014, 0x8000000227697560);
  sub_22704B2CC();
  v1 = sub_22766BEC0();
  MEMORY[0x22AA98450](v1);

  MEMORY[0x22AA98450](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_22703AF8C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_22703AE64();
}

uint64_t sub_22703AF94@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  sub_22766A630();
  sub_22766B370();
  v17 = *(v8 + 8);
  v16 = v8 + 8;
  v15 = v17;
  v17(v14, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_227670CD0;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;

  v19 = v33;
  v20 = sub_226F86AB0(v18, a3);

  if (!v19)
  {
    v22 = v32;
    v30 = v16;
    v31 = v7;
    v33 = v15;
    if (*(v20 + 16))
    {
      v23 = sub_227666B60();
      (*(*(v23 - 8) + 16))(v22, v20 + ((*(*(v23 - 8) + 80) + 32) & ~*(*(v23 - 8) + 80)), v23);
    }

    else
    {

      sub_22766A630();

      v24 = sub_22766B380();
      v25 = sub_22766C890();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v34 = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_226E97AE8(a1, a2, &v34);
        _os_log_impl(&dword_226E8E000, v24, v25, "Failed to fetch CatalogWorkoutReference for workout %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x22AA9A450](v27, -1, -1);
        MEMORY[0x22AA9A450](v26, -1, -1);
      }

      v33(v12, v31);
      v28 = sub_227664EC0();
      sub_226EABFDC(&qword_28139B898, MEMORY[0x277D51210]);
      swift_allocError();
      (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D51180], v28);
      return swift_willThrow();
    }
  }

  return result;
}

char *sub_22703B334(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A630();
  sub_22766B370();
  (*(v7 + 8))(v10, v6);
  v11 = v3[21];
  __swift_project_boxed_opaque_existential_0(v3 + 17, v3[20]);
  v12 = sub_22766A2C0();
  v13 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_227019A10(a1, v12, 0, *v13, v13[1], *(v13 + 16), v13[3]);

  v14 = sub_226EE010C(100);

  return v14;
}

uint64_t sub_22703B4CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    v25 = MEMORY[0x277D84F90];
    sub_226F1F090(0, v4, 0);
    v5 = v25;
    v6 = (v3 + 32);
    v7 = v25[2];
    do
    {
      v9 = *v6;
      v6 += 5;
      v8 = v9;
      v26 = v5;
      v10 = v5[3];
      v11 = v7 + 1;
      if (v7 >= v10 >> 1)
      {
        sub_226F1F090((v10 > 1), v7 + 1, 1);
        v5 = v26;
      }

      v5[2] = v11;
      v5[v7++ + 4] = v8;
      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
    v11 = *(MEMORY[0x277D84F90] + 16);
    if (!v11)
    {
      v12 = 0;
      v23 = 1;
      goto LABEL_19;
    }
  }

  v12 = v5[4];
  v13 = v11 - 1;
  if (v11 != 1)
  {
    if (v11 <= 4)
    {
      v14 = 1;
      goto LABEL_14;
    }

    v14 = v13 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v15 = vdupq_n_s64(v12);
    v16 = (v5 + 7);
    v17 = v13 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = v15;
    do
    {
      v15 = vbslq_s8(vcgtq_s64(v15, v16[-1]), v15, v16[-1]);
      v18 = vbslq_s8(vcgtq_s64(v18, *v16), v18, *v16);
      v16 += 2;
      v17 -= 4;
    }

    while (v17);
    v19 = vbslq_s8(vcgtq_s64(v15, v18), v15, v18);
    v20 = vextq_s8(v19, v19, 8uLL).u64[0];
    v12 = vbsl_s8(vcgtd_s64(v19.i64[0], v20), *v19.i8, v20);
    if (v13 != (v13 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_14:
      v21 = v11 - v14;
      v22 = 8 * v14 + 32;
      do
      {
        if (v12 <= *(v5 + v22))
        {
          v12 = *(v5 + v22);
        }

        v22 += 8;
        --v21;
      }

      while (v21);
    }
  }

  v23 = 0;
LABEL_19:

  *a2 = v12;
  *(a2 + 8) = v23;
  return result;
}

uint64_t sub_22703B664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v82 = a4;
  v86 = a5;
  v85 = sub_227664010();
  v8 = *(v85 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v85);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_227663D60();
  v80 = *(v84 - 8);
  v12 = *(v80 + 64);
  MEMORY[0x28223BE20](v84);
  v83 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v92 = &v77 - v15;
  MEMORY[0x28223BE20](v16);
  v88 = &v77 - v17;
  v18 = sub_22766B390();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v78 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v77 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v77 - v26;
  sub_22766A630();
  sub_22766B370();
  v28 = *(v19 + 8);
  v89 = v18;
  v90 = v28;
  v91 = v19 + 8;
  v28(v27, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  inited = swift_initStackObject();
  v79 = xmmword_227670CD0;
  *(inited + 16) = xmmword_227670CD0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;

  v30 = sub_226F4BE8C(inited);
  swift_setDeallocating();
  sub_226FA6DA4(inited + 32);
  v94 = MEMORY[0x277D84F90];
  v31 = v81;
  v32 = sub_2270134B0(v30);
  v33 = v80;

  sub_22745FA30(v32);
  v34 = sub_22701380C(MEMORY[0x277D84FA0]);
  sub_22745FA30(v34);
  v93 = a1;
  sub_22766D140();
  sub_22766C540();
  sub_22766C540();
  sub_22766C540();
  sub_227663FC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC9B0, &unk_2276758F0);
  v35 = *(sub_2276660A0() - 8);
  v36 = *(v35 + 72);
  v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v79;
  v39 = v85;
  (*(v8 + 16))(v38 + v37, v11, v85);
  swift_storeEnumTagMultiPayload();
  sub_22745FA30(v38);
  (*(v8 + 8))(v11, v39);
  v40 = v82;
  v41 = v94;
  v93 = MEMORY[0x277D84F90];
  v42 = sub_2276672F0();
  v43 = sub_2270134CC(v42);

  sub_22745FA30(v43);
  v44 = sub_2276672D0();
  v45 = sub_2270134E8(v44);

  sub_22745FA30(v45);
  v46 = sub_227667280();
  v47 = sub_227013504(v46);
  v48 = v83;

  sub_22745FA30(v47);
  v49 = sub_227667260();
  v50 = sub_227013B2C(v49);
  v81 = v31;

  sub_22745FA30(v50);
  sub_226F438E8(v93);

  sub_226F438E8(v41);

  v51 = v92;
  v52 = v84;
  sub_227663D10();
  sub_22766A630();
  (*(v33 + 16))(v48, v51, v52);
  v85 = v24;
  v53 = sub_22766B380();
  v54 = sub_22766C8B0();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = v33;
    v57 = swift_slowAlloc();
    v93 = v57;
    *v55 = 136315138;
    sub_226EABFDC(&qword_28139BC38, MEMORY[0x277D504B0]);
    v58 = sub_22766D140();
    v59 = v48;
    v60 = v52;
    v62 = v61;
    v83 = *(v56 + 8);
    (v83)(v59, v60);
    v63 = sub_226E97AE8(v58, v62, &v93);
    v52 = v60;

    *(v55 + 4) = v63;
    _os_log_impl(&dword_226E8E000, v53, v54, "Filtering catalog using: %s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    v64 = v57;
    v33 = v56;
    MEMORY[0x22AA9A450](v64, -1, -1);
    MEMORY[0x22AA9A450](v55, -1, -1);
  }

  else
  {

    v83 = *(v33 + 8);
    (v83)(v48, v52);
  }

  v65 = v89;
  v90(v85, v89);
  v66 = v88;
  (*(v33 + 32))(v88, v92, v52);
  v67 = v87;
  v68 = v81;
  v69 = sub_22703B334(v66, v86);
  if (v68)
  {
    (v83)(v66, v52);
  }

  else
  {
    v70 = v69;
    sub_22766A630();

    v71 = sub_22766B380();
    v72 = sub_22766C8B0();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = v52;
      v74 = swift_slowAlloc();
      *v74 = 134217984;
      *(v74 + 4) = *(v70 + 16);

      _os_log_impl(&dword_226E8E000, v71, v72, "Found %ld workouts satisfying filter conditions", v74, 0xCu);
      v75 = v74;
      v52 = v73;
      v65 = v89;
      MEMORY[0x22AA9A450](v75, -1, -1);
    }

    else
    {
    }

    v90(v78, v65);
    v67 = sub_22735AD38(v70, v40);

    (v83)(v66, v52);
  }

  return v67;
}

uint64_t sub_22703BF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v146 = a5;
  v148 = a4;
  v127 = a3;
  v7 = sub_227664010();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v126 - v13;
  v130 = sub_227663D60();
  v131 = *(v130 - 8);
  v15 = *(v131 + 64);
  v16 = MEMORY[0x28223BE20](v130);
  v132 = (&v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v16);
  v134 = &v126 - v19;
  MEMORY[0x28223BE20](v18);
  v129 = &v126 - v20;
  v21 = sub_22766B390();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v147 = &v126 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v126 - v26;
  sub_22766A630();
  sub_22766B370();
  v28 = *(v22 + 8);
  v143 = v21;
  v135 = v28;
  v136 = (v22 + 8);
  (v28)(v27, v21);
  v150 = MEMORY[0x277D84F90];
  v137 = a1;
  v29 = v145;
  v30 = sub_2270134B0(a1);
  sub_22745FA30(v30);
  v31 = sub_22701380C(MEMORY[0x277D84FA0]);
  sub_22745FA30(v31);
  v149 = a2;
  sub_22766D140();
  sub_22766C540();
  sub_22766C540();
  sub_22766C540();
  sub_227663FC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC9B0, &unk_2276758F0);
  v32 = *(sub_2276660A0() - 8);
  v33 = *(v32 + 72);
  v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_227670CD0;
  v140 = v8[2];
  v141 = v8 + 2;
  v140(v35 + v34, v14, v7);
  swift_storeEnumTagMultiPayload();
  sub_22745FA30(v35);
  v142 = v8;
  v36 = v8[1];
  v145 = v7;
  v37 = v7;
  v38 = v132;
  v39 = v131;
  v138 = v36;
  v139 = v8 + 1;
  v36(v14, v37);
  v40 = v150;
  v149 = MEMORY[0x277D84F90];
  v41 = sub_2276672F0();
  v42 = sub_2270134CC(v41);

  sub_22745FA30(v42);
  v43 = sub_2276672D0();
  v44 = sub_2270134E8(v43);

  sub_22745FA30(v44);
  v45 = sub_227667280();
  v46 = sub_227013504(v45);

  sub_22745FA30(v46);
  v47 = sub_227667260();
  v48 = sub_227013B2C(v47);
  v133 = v29;

  sub_22745FA30(v48);
  sub_226F438E8(v149);

  sub_226F438E8(v40);

  v49 = v134;
  sub_227663D10();
  sub_22766A630();
  v50 = v130;
  (*(v39 + 16))(v38, v49);
  v51 = sub_22766B380();
  v52 = sub_22766C8B0();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v149 = v54;
    *v53 = 136315138;
    sub_226EABFDC(&qword_28139BC38, MEMORY[0x277D504B0]);
    v55 = sub_22766D140();
    v56 = v38;
    v57 = v49;
    v59 = v58;
    v128 = *(v131 + 8);
    v128(v56, v50);
    v60 = sub_226E97AE8(v55, v59, &v149);
    v49 = v57;

    *(v53 + 4) = v60;
    _os_log_impl(&dword_226E8E000, v51, v52, "Filtering catalog using: %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    v61 = v54;
    v39 = v131;
    MEMORY[0x22AA9A450](v61, -1, -1);
    MEMORY[0x22AA9A450](v53, -1, -1);
  }

  else
  {

    v128 = *(v39 + 8);
    v128(v38, v50);
  }

  (v135)(v147, v143);
  v62 = *(v39 + 32);
  v63 = v129;
  v62(v129, v49, v50);
  v64 = v144[21];
  __swift_project_boxed_opaque_existential_0(v144 + 17, v144[20]);
  v65 = sub_22766A2C0();
  v66 = sub_2276672A0();
  v67 = __swift_project_boxed_opaque_existential_0(v146, v146[3]);
  sub_227019A10(v63, v65, v66, *v67, v67[1], *(v67 + 16), v67[3]);

  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v69 = v133;
  sub_22703A798();
  if (v69)
  {
    v128(v63, v50);

    return KeyPath;
  }

  v147 = v70;

  v149 = v127;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9C0, &unk_227676780);
  sub_226E9CFD0(&qword_27D7B9E50, &unk_27D7BC9C0, &unk_227676780);
  v71 = sub_22766C220();

  v136 = *(v71 + 16);
  if (!v136)
  {

    v124 = 0;
    KeyPath = MEMORY[0x277D84F98];
    v128(v63, v50);
LABEL_54:
    sub_226EA9E3C(v124);
    return KeyPath;
  }

  v127 = 0;
  v132 = 0;
  v72 = 0;
  v73 = v137;
  v74 = v137 + 56;
  v135 = (v71 + ((*(v142 + 80) + 32) & ~*(v142 + 80)));
  v133 = MEMORY[0x277D84F98];
  v134 = v71;
  v75 = v147;
  while (2)
  {
    if (v72 >= *(v71 + 16))
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v140(v12, &v135[v142[9] * v72], v145);
    sub_227664000();
    v77 = v76 / 60.0;
    if ((*&v77 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if (v77 <= -9.22337204e18)
    {
LABEL_60:
      __break(1u);
      break;
    }

    if (v77 < 9.22337204e18)
    {
      v143 = v77;
      v144 = (v72 + 1);
      v78 = 1 << *(v73 + 32);
      if (v78 < 64)
      {
        v79 = ~(-1 << v78);
      }

      else
      {
        v79 = -1;
      }

      v80 = v79 & *(v73 + 56);
      v81 = (v78 + 63) >> 6;

      v82 = 0;
LABEL_17:
      if (v80)
      {
        v83 = v80;
        goto LABEL_23;
      }

      while (1)
      {
        v84 = v82 + 1;
        if (__OFADD__(v82, 1))
        {
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        if (v84 >= v81)
        {
          break;
        }

        v83 = *(v74 + 8 * v84);
        ++v82;
        if (v83)
        {
          v82 = v84;
LABEL_23:
          v80 = (v83 - 1) & v83;
          if (*(v75 + 2))
          {
            v148 = (v83 - 1) & v83;
            v85 = *(v73 + 48) + ((v82 << 10) | (16 * __clz(__rbit64(v83))));
            v86 = *v85;
            v87 = *(v85 + 8);

            v146 = v86;
            v88 = sub_226E92000(v86, v87);
            if (v89)
            {
              v90 = *(v147 + 7);
              v91 = *(v90 + 8 * v88);
              v92 = *(v91 + 16);
              if (v92)
              {
                v93 = *(v90 + 8 * v88);

                v94 = 0;
                while (1)
                {
                  if (v94 >= *(v91 + 16))
                  {
                    goto LABEL_57;
                  }

                  v95 = *(v91 + 8 * v94 + 32);
                  sub_227664000();
                  v97 = v96;
                  sub_227663FF0();
                  v99 = v97 + v98;
                  sub_227664000();
                  v101 = v100;
                  sub_227663FE0();
                  if (v101 - v102 <= v95 && v95 <= v99)
                  {
                    break;
                  }

                  if (v92 == ++v94)
                  {

                    v73 = v137;
                    goto LABEL_35;
                  }
                }

                sub_226EA9E3C(v132);
                v104 = v133;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v149 = v104;
                v106 = v146;
                v107 = sub_226E92000(v146, v87);
                v109 = v107;
                v110 = *(v104 + 16);
                v111 = (v108 & 1) == 0;
                v112 = v110 + v111;
                if (__OFADD__(v110, v111))
                {
                  goto LABEL_62;
                }

                if (*(v104 + 24) >= v112)
                {
                  if (isUniquelyReferenced_nonNull_native)
                  {
                    v115 = v149;
                    if ((v108 & 1) == 0)
                    {
                      goto LABEL_46;
                    }
                  }

                  else
                  {
                    v116 = v108;
                    sub_226FF2374();
                    v115 = v149;
                    if ((v116 & 1) == 0)
                    {
                      goto LABEL_46;
                    }
                  }
                }

                else
                {
                  LODWORD(v133) = v108;
                  sub_226FE6980(v112, isUniquelyReferenced_nonNull_native);
                  v113 = sub_226E92000(v106, v87);
                  if ((v133 & 1) != (v114 & 1))
                  {
                    goto LABEL_63;
                  }

                  v109 = v113;
                  v115 = v149;
                  if ((v133 & 1) == 0)
                  {
LABEL_46:
                    sub_22736CCBC(v109, v106, v87, MEMORY[0x277D84F90], v115);
                    goto LABEL_47;
                  }
                }

LABEL_47:
                v117 = v109;
                v118 = *(v115 + 56);
                v119 = *(v118 + 8 * v117);
                v120 = swift_isUniquelyReferenced_nonNull_native();
                v121 = v117;
                *(v118 + 8 * v117) = v119;
                v133 = v115;
                if ((v120 & 1) == 0)
                {
                  v119 = sub_2273A5610(0, *(v119 + 2) + 1, 1, v119);
                  *(v118 + 8 * v117) = v119;
                }

                v123 = *(v119 + 2);
                v122 = *(v119 + 3);
                if (v123 >= v122 >> 1)
                {
                  v119 = sub_2273A5610((v122 > 1), v123 + 1, 1, v119);
                  *(v118 + 8 * v121) = v119;
                }

                *(v119 + 2) = v123 + 1;
                *&v119[8 * v123 + 32] = v143;
                v132 = sub_22703CD34;
                v73 = v137;
                goto LABEL_36;
              }
            }

LABEL_35:

LABEL_36:
            v75 = v147;
            v80 = v148;
          }

          goto LABEL_17;
        }
      }

      v138(v12, v145);

      v72 = v144;
      v71 = v134;
      if (v144 != v136)
      {
        continue;
      }

      v124 = v132;
      KeyPath = v133;
      v128(v129, v130);
      goto LABEL_54;
    }

    break;
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_22703CD44(uint64_t a1, uint64_t a2, void *a3)
{
  v72 = a3;
  v5 = sub_227663D60();
  v78 = *(v5 - 8);
  v6 = *(v78 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v69 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v66 - v10;
  MEMORY[0x28223BE20](v9);
  v74 = &v66 - v12;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v68 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v66 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v66 - v21;
  sub_22766A630();
  sub_22766B370();
  v23 = *(v14 + 8);
  v75 = v13;
  v76 = v23;
  v77 = v14 + 8;
  v23(v22, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227670CD0;
  *(inited + 32) = sub_227666A90();
  *(inited + 40) = v25;
  v26 = sub_226F3E6A8(inited);
  swift_setDeallocating();
  sub_226FA6DA4(inited + 32);
  v27 = MEMORY[0x277D84F90];
  v79 = MEMORY[0x277D84F90];
  v28 = sub_2270134B0(v26);

  sub_22745FA30(v28);
  v29 = sub_22701380C(MEMORY[0x277D84FA0]);
  sub_22745FA30(v29);
  v30 = v79;
  v79 = v27;
  v31 = v5;
  v32 = sub_2276672F0();
  v33 = sub_2270134CC(v32);

  sub_22745FA30(v33);
  v34 = sub_2276672D0();
  v35 = sub_2270134E8(v34);

  sub_22745FA30(v35);
  v36 = sub_227667280();
  v37 = sub_227013504(v36);

  sub_22745FA30(v37);
  v67 = a2;
  v38 = sub_227667260();
  v39 = sub_227013B2C(v38);

  sub_22745FA30(v39);
  sub_226F438E8(v79);

  sub_226F438E8(v30);

  sub_227663D10();
  sub_22766A630();
  v40 = v78;
  v41 = *(v78 + 16);
  v42 = v69;
  v71 = v11;
  v41();
  v70 = v20;
  v43 = sub_22766B380();
  v44 = sub_22766C8B0();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v79 = v46;
    *v45 = 136315138;
    sub_226EABFDC(&qword_28139BC38, MEMORY[0x277D504B0]);
    v47 = v42;
    v48 = sub_22766D140();
    v49 = v31;
    v51 = v50;
    v52 = *(v40 + 8);
    v52(v47, v49);
    v53 = sub_226E97AE8(v48, v51, &v79);

    *(v45 + 4) = v53;
    _os_log_impl(&dword_226E8E000, v43, v44, "Filtering catalog using: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x22AA9A450](v46, -1, -1);
    MEMORY[0x22AA9A450](v45, -1, -1);

    v54 = v75;
    v76(v70, v75);
    v55 = v78;
  }

  else
  {

    v55 = v40;
    v52 = *(v40 + 8);
    v52(v42, v31);
    v56 = v75;
    v76(v70, v75);
    v49 = v31;
    v54 = v56;
  }

  v57 = v74;
  (*(v55 + 32))(v74, v71, v49);
  v58 = v73;
  v59 = sub_22703B334(v57, v72);
  if (v3)
  {
    v52(v57, v49);
  }

  else
  {
    v60 = v59;
    sub_22766A630();

    v61 = sub_22766B380();
    v62 = sub_22766C8B0();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 134217984;
      *(v63 + 4) = *(v60 + 16);

      _os_log_impl(&dword_226E8E000, v61, v62, "Found %ld matching workouts", v63, 0xCu);
      v64 = v63;
      v54 = v75;
      MEMORY[0x22AA9A450](v64, -1, -1);
    }

    else
    {
    }

    v76(v68, v54);
    v58 = sub_22735AD38(v60, v67);

    v52(v57, v49);
  }

  return v58;
}

uint64_t sub_22703D460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E48, qword_2276766C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v53 - v11;
  v70 = sub_227667400();
  v13 = *(v70 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v70);
  v69 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + *(type metadata accessor for WorkoutPlanGenerationScaffold() + 60));
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = 0;
    v73 = v16 + 32;
    v67 = (v13 + 48);
    v68 = (v13 + 56);
    v66 = (v13 + 32);
    v57 = v17 - 1;
    v58 = a3;
    v59 = MEMORY[0x277D84F90];
LABEL_3:
    v19 = v18;
    while (1)
    {
      if (v19 >= *(v16 + 16))
      {
        __break(1u);
        goto LABEL_38;
      }

      v20 = *(v73 + 8 * v19);
      v21 = *(v20 + 16);
      if (v21)
      {
        v22 = *(v73 + 8 * v19);

        v23 = MEMORY[0x22AA95620](v19);
        if (v23 != 7)
        {
          v56 = v23;
          v53 = v8;
          v54 = a4;
          v24 = 0;
          v25 = (v20 + 64);
          v72 = MEMORY[0x277D84F90];
          v64 = v16;
          v65 = v13;
          v62 = v20;
          v63 = v17;
          v55 = v19 + 1;
          v61 = v21;
          while (v24 < *(v20 + 16))
          {
            v26 = v12;
            v27 = *(v25 - 3);
            v71 = *(v25 - 4);
            v28 = *(v25 - 2);
            v29 = *(v25 - 1);
            v30 = *v25;
            v31 = *(a2 + 16);

            sub_226EB396C(v28, v29, v30);
            if (v31 && (v32 = sub_226F491D8(v28, v29, v30), (v33 & 1) != 0))
            {
              v34 = (*(a2 + 56) + 16 * v32);
              v35 = v34[1];
              v60 = *v34;

              sub_2276673D0();
              v36 = 0;
            }

            else
            {
              v36 = 1;
            }

            v12 = v26;
            v37 = v26;
            v38 = v70;
            (*v68)(v37, v36, 1, v70);

            sub_226EB2DFC(v28, v29, v30);
            if ((*v67)(v12, 1, v38) == 1)
            {
              sub_226E97D1C(v12, &qword_27D7B9E48, qword_2276766C0);
              v16 = v64;
              v13 = v65;
              v17 = v63;
            }

            else
            {
              v39 = *v66;
              (*v66)(v69, v12, v38);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v17 = v63;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v72 = sub_2273A5758(0, *(v72 + 2) + 1, 1, v72);
              }

              v42 = *(v72 + 2);
              v41 = *(v72 + 3);
              if (v42 >= v41 >> 1)
              {
                v72 = sub_2273A5758(v41 > 1, v42 + 1, 1, v72);
              }

              v43 = v72;
              *(v72 + 2) = v42 + 1;
              v13 = v65;
              v39(&v43[((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v65 + 72) * v42], v69, v38);
              v16 = v64;
            }

            ++v24;
            v25 += 40;
            v20 = v62;
            if (v61 == v24)
            {

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v59 = sub_2273A5624(0, v59[2] + 1, 1, v59);
              }

              a4 = v54;
              v8 = v53;
              v45 = v59[2];
              v44 = v59[3];
              v46 = v56;
              if (v45 >= v44 >> 1)
              {
                v50 = sub_2273A5624((v44 > 1), v45 + 1, 1, v59);
                v46 = v56;
                v59 = v50;
              }

              v47 = v59;
              v59[2] = v45 + 1;
              v48 = &v47[2 * v45];
              *(v48 + 32) = v46;
              v48[5] = v72;
              v49 = v57 == v19;
              a3 = v58;
              v18 = v55;
              if (v49)
              {
                goto LABEL_32;
              }

              goto LABEL_3;
            }
          }

LABEL_38:
          __break(1u);
LABEL_39:
          result = swift_unexpectedError();
          __break(1u);
          return result;
        }
      }

      if (v17 == ++v19)
      {
        a3 = v58;
        goto LABEL_32;
      }
    }
  }

  v59 = MEMORY[0x277D84F90];
LABEL_32:
  if (v59[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9978, &qword_227674DB0);
    v51 = sub_22766D010();
  }

  else
  {
    v51 = MEMORY[0x277D84F98];
  }

  v74 = v51;
  sub_22704BBEC(v59, 1, &v74);
  if (v8)
  {
    goto LABEL_39;
  }

  sub_22704DFD0(v74, a3);
  return sub_227665C00();
}

uint64_t sub_22703D9B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DD0, &qword_227676628);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v24 - v12;
  v14 = sub_227668780();
  if (v14 == sub_227668780())
  {
    v15 = sub_227667220();
    if (*(v15 + 16))
    {
      v16 = *(v15 + 32);

      (*(v10 + 16))(v13, v2 + OBJC_IVAR____TtC15SeymourServices19WorkoutPlanProvider__workoutPlanAlgorithmSeed, v9);
      sub_227669730();
      v17 = *(v10 + 8);
      v10 += 8;
      v17(v13, v9);
      if (v26 == 1)
      {
        if (v16 < 0)
        {
          __break(1u);
          goto LABEL_6;
        }
      }

      else
      {
        v16 = v25;
      }

LABEL_17:
      sub_227664430();
      return v16;
    }

LABEL_6:
  }

  v18 = *(sub_227667220() + 16);

  if (!v18)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v24[1] = a1;
  v20 = sub_226E97A5C(v18);
  (*(v10 + 16))(v13, v2 + OBJC_IVAR____TtC15SeymourServices19WorkoutPlanProvider__workoutPlanAlgorithmSeed, v9);
  sub_227669730();
  (*(v10 + 8))(v13, v9);
  if (v26 != 1)
  {
    goto LABEL_13;
  }

  result = sub_227667220();
  if ((v20 & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

  if (v20 < *(result + 16))
  {
    v16 = *(result + 8 * v20 + 32);

    if ((v16 & 0x8000000000000000) == 0)
    {
LABEL_14:
      sub_22766A630();
      v21 = sub_22766B380();
      v22 = sub_22766C8B0();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 134217984;
        *(v23 + 4) = v16;
        _os_log_impl(&dword_226E8E000, v21, v22, "Seeded Random Number Generator with seed=%llu", v23, 0xCu);
        MEMORY[0x22AA9A450](v23, -1, -1);
      }

      (*(v5 + 8))(v8, v4);
      goto LABEL_17;
    }

    __break(1u);
LABEL_13:
    v16 = v25;
    goto LABEL_14;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_22703DD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 320) = v73;
  *(v9 + 328) = v8;
  *(v9 + 312) = v72;
  *(v9 + 187) = v71;
  *(v9 + 296) = v70;
  *(v9 + 280) = v69;
  *(v9 + 264) = v68;
  *(v9 + 248) = a7;
  *(v9 + 256) = a8;
  *(v9 + 232) = a5;
  *(v9 + 240) = a6;
  *(v9 + 216) = a3;
  *(v9 + 224) = a4;
  *(v9 + 200) = a1;
  *(v9 + 208) = a2;
  v10 = sub_227662860();
  *(v9 + 336) = v10;
  v11 = *(v10 - 8);
  *(v9 + 344) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 352) = swift_task_alloc();
  v13 = sub_227664EC0();
  *(v9 + 360) = v13;
  v14 = *(v13 - 8);
  *(v9 + 368) = v14;
  *(v9 + 376) = *(v14 + 64);
  *(v9 + 384) = swift_task_alloc();
  *(v9 + 392) = swift_task_alloc();
  *(v9 + 400) = swift_task_alloc();
  *(v9 + 408) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0) - 8) + 64) + 15;
  *(v9 + 416) = swift_task_alloc();
  v16 = sub_227662940();
  *(v9 + 424) = v16;
  v17 = *(v16 - 8);
  *(v9 + 432) = v17;
  v18 = *(v17 + 64) + 15;
  *(v9 + 440) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550) - 8) + 64) + 15;
  *(v9 + 448) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480) - 8) + 64) + 15;
  *(v9 + 456) = swift_task_alloc();
  v21 = sub_2276681F0();
  *(v9 + 464) = v21;
  v22 = *(v21 - 8);
  *(v9 + 472) = v22;
  v23 = *(v22 + 64) + 15;
  *(v9 + 480) = swift_task_alloc();
  v24 = sub_227664CE0();
  *(v9 + 488) = v24;
  v25 = *(v24 - 8);
  *(v9 + 496) = v25;
  *(v9 + 504) = *(v25 + 64);
  *(v9 + 512) = swift_task_alloc();
  *(v9 + 520) = swift_task_alloc();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  *(v9 + 528) = v26;
  v27 = *(v26 - 8);
  *(v9 + 536) = v27;
  v28 = *(v27 + 64) + 15;
  *(v9 + 544) = swift_task_alloc();
  v29 = sub_227665CA0();
  *(v9 + 552) = v29;
  v30 = *(v29 - 8);
  *(v9 + 560) = v30;
  v31 = *(v30 + 64) + 15;
  *(v9 + 568) = swift_task_alloc();
  v32 = sub_2276638D0();
  *(v9 + 576) = v32;
  v33 = *(v32 - 8);
  *(v9 + 584) = v33;
  v34 = *(v33 + 64) + 15;
  *(v9 + 592) = swift_task_alloc();
  *(v9 + 600) = swift_task_alloc();
  v35 = sub_227664440();
  *(v9 + 608) = v35;
  v36 = *(v35 - 8);
  *(v9 + 616) = v36;
  v37 = *(v36 + 64) + 15;
  *(v9 + 624) = swift_task_alloc();
  v38 = sub_227666B60();
  *(v9 + 632) = v38;
  v39 = *(v38 - 8);
  *(v9 + 640) = v39;
  v40 = *(v39 + 64) + 15;
  *(v9 + 648) = swift_task_alloc();
  *(v9 + 656) = swift_task_alloc();
  v41 = sub_227668480();
  *(v9 + 664) = v41;
  v42 = *(v41 - 8);
  *(v9 + 672) = v42;
  v43 = *(v42 + 64) + 15;
  *(v9 + 680) = swift_task_alloc();
  *(v9 + 688) = swift_task_alloc();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E08, &qword_227676658);
  *(v9 + 696) = v44;
  v45 = *(*(v44 - 8) + 64) + 15;
  *(v9 + 704) = swift_task_alloc();
  v46 = sub_227663FA0();
  *(v9 + 712) = v46;
  v47 = *(v46 - 8);
  *(v9 + 720) = v47;
  v48 = *(v47 + 64) + 15;
  *(v9 + 728) = swift_task_alloc();
  v49 = sub_227662750();
  *(v9 + 736) = v49;
  v50 = *(v49 - 8);
  *(v9 + 744) = v50;
  v51 = *(v50 + 64) + 15;
  *(v9 + 752) = swift_task_alloc();
  *(v9 + 760) = swift_task_alloc();
  *(v9 + 768) = swift_task_alloc();
  v52 = sub_227667370();
  *(v9 + 776) = v52;
  v53 = *(v52 - 8);
  *(v9 + 784) = v53;
  *(v9 + 792) = *(v53 + 64);
  *(v9 + 800) = swift_task_alloc();
  *(v9 + 808) = swift_task_alloc();
  *(v9 + 816) = swift_task_alloc();
  *(v9 + 824) = swift_task_alloc();
  v54 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E10, &qword_227676660) - 8) + 64) + 15;
  *(v9 + 832) = swift_task_alloc();
  *(v9 + 840) = swift_task_alloc();
  *(v9 + 848) = swift_task_alloc();
  v55 = sub_227663540();
  *(v9 + 856) = v55;
  v56 = *(v55 - 8);
  *(v9 + 864) = v56;
  v57 = *(v56 + 64) + 15;
  *(v9 + 872) = swift_task_alloc();
  v58 = sub_227665C20();
  *(v9 + 880) = v58;
  v59 = *(v58 - 8);
  *(v9 + 888) = v59;
  *(v9 + 896) = *(v59 + 64);
  *(v9 + 904) = swift_task_alloc();
  *(v9 + 912) = swift_task_alloc();
  v60 = sub_2276627D0();
  *(v9 + 920) = v60;
  v61 = *(v60 - 8);
  *(v9 + 928) = v61;
  v62 = *(v61 + 64) + 15;
  *(v9 + 936) = swift_task_alloc();
  *(v9 + 944) = swift_task_alloc();
  *(v9 + 952) = swift_task_alloc();
  v63 = sub_22766B390();
  *(v9 + 960) = v63;
  v64 = *(v63 - 8);
  *(v9 + 968) = v64;
  v65 = *(v64 + 64) + 15;
  *(v9 + 976) = swift_task_alloc();
  *(v9 + 984) = swift_task_alloc();
  *(v9 + 992) = swift_task_alloc();
  *(v9 + 1000) = swift_task_alloc();
  *(v9 + 1008) = swift_task_alloc();
  *(v9 + 1016) = swift_task_alloc();
  *(v9 + 1024) = swift_task_alloc();
  *(v9 + 1032) = swift_task_alloc();
  *(v9 + 1040) = swift_task_alloc();
  *(v9 + 1048) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22703E6B4, 0, 0);
}

uint64_t sub_22703E6B4()
{
  v159 = v0;
  v149 = *(v0 + 1048);
  v1 = *(v0 + 952);
  v2 = *(v0 + 928);
  v3 = *(v0 + 920);
  v4 = *(v0 + 912);
  v5 = *(v0 + 888);
  v6 = *(v0 + 880);
  v7 = *(v0 + 864);
  v127 = *(v0 + 856);
  v130 = *(v0 + 872);
  v140 = *(v0 + 848);
  v8 = *(v0 + 288);
  v125 = *(v0 + 296);
  v133 = *(v0 + 280);
  v9 = *(v0 + 256);
  v153 = *(v0 + 248);
  v145 = *(v0 + 232);
  v136 = *(v0 + 224);
  sub_22766A630();
  v10 = *(v2 + 16);
  *(v0 + 1056) = v10;
  *(v0 + 1064) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v1, v9, v3);
  v11 = *(v5 + 16);
  *(v0 + 1072) = v11;
  *(v0 + 1080) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v4, v8, v6);
  (*(v7 + 16))(v130, v125, v127);
  sub_226E93170(v133, v140, &qword_27D7B9E10, &qword_227676660);

  v12 = sub_22766B380();
  v13 = sub_22766C8B0();

  if (os_log_type_enabled(v12, v13))
  {
    v150 = v13;
    v154 = v12;
    v14 = *(v0 + 952);
    v15 = *(v0 + 928);
    v16 = *(v0 + 920);
    v17 = *(v0 + 888);
    v122 = *(v0 + 880);
    v123 = *(v0 + 912);
    v18 = *(v0 + 864);
    v124 = *(v0 + 856);
    v126 = *(v0 + 872);
    v137 = *(v0 + 840);
    v141 = *(v0 + 848);
    v131 = *(v0 + 187);
    v134 = *(v0 + 312);
    v128 = *(v0 + 304);
    v121 = *(v0 + 248);
    v119 = *(v0 + 664);
    v120 = *(v0 + 240);
    v19 = *(v0 + 224);
    v20 = *(v0 + 232);
    v21 = *(v0 + 216);
    v22 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    v158[0] = v146;
    *v22 = 136317186;
    *(v22 + 4) = sub_226E97AE8(v21, v19, v158);
    *(v22 + 12) = 2080;
    sub_226EABFDC(&unk_28139BD90, MEMORY[0x277CC95F0]);
    v23 = sub_22766D140();
    v25 = v24;
    (*(v15 + 8))(v14, v16);
    v26 = sub_226E97AE8(v23, v25, v158);

    *(v22 + 14) = v26;
    *(v22 + 22) = 2080;
    sub_226EABFDC(&qword_27D7B84C8, MEMORY[0x277D534C8]);
    v27 = sub_22766C610();
    v29 = sub_226E97AE8(v27, v28, v158);

    *(v22 + 24) = v29;
    *(v22 + 32) = 2080;
    *(v22 + 34) = sub_226E97AE8(v120, v121, v158);
    *(v22 + 42) = 2080;
    sub_226EABFDC(&qword_27D7B9E20, MEMORY[0x277D51CB0]);
    v30 = sub_22766D140();
    v32 = v31;
    (*(v17 + 8))(v123, v122);
    v33 = sub_226E97AE8(v30, v32, v158);

    *(v22 + 44) = v33;
    *(v22 + 52) = 2080;
    sub_226EABFDC(&qword_27D7B9E28, MEMORY[0x277D4FFA8]);
    v34 = sub_22766D140();
    v36 = v35;
    (*(v18 + 8))(v126, v124);
    v37 = sub_226E97AE8(v34, v36, v158);

    *(v22 + 54) = v37;
    *(v22 + 62) = 2080;
    *(v0 + 176) = v128;
    *(v0 + 184) = v131 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9298, &unk_227676680);
    sub_22704F918();
    v38 = sub_227663B60();
    v40 = sub_226E97AE8(v38, v39, v158);

    *(v22 + 64) = v40;
    *(v22 + 72) = 2048;
    *(v22 + 74) = v134;
    *(v22 + 82) = 2080;
    sub_226E93170(v141, v137, &qword_27D7B9E10, &qword_227676660);
    v41 = sub_2276686C0();
    v42 = *(v41 - 8);
    v43 = (*(v42 + 48))(v137, 1, v41);
    v44 = *(v0 + 840);
    if (v43 == 1)
    {
      sub_226E97D1C(*(v0 + 840), &qword_27D7B9E10, &qword_227676660);
      v45 = 0xE200000000000000;
      v46 = 23899;
    }

    else
    {
      v46 = sub_227668690();
      v45 = v56;
      (*(v42 + 8))(v44, v41);
    }

    v57 = *(v0 + 1048);
    v58 = *(v0 + 968);
    v59 = *(v0 + 960);
    sub_226E97D1C(*(v0 + 848), &qword_27D7B9E10, &qword_227676660);
    v60 = sub_226E97AE8(v46, v45, v158);

    *(v22 + 84) = v60;
    _os_log_impl(&dword_226E8E000, v154, v150, "Making WorkoutPlan algorithmVersion: %s, identifier: %s modalityPreferences: %s, name: %s schedule: %s, startDate: %s, variation: %s workoutPlanLength: %ld\nmetrics: %s", v22, 0x5Cu);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v146, -1, -1);
    MEMORY[0x22AA9A450](v22, -1, -1);

    v55 = *(v58 + 8);
    v55(v57, v59);
  }

  else
  {
    v155 = *(v0 + 1048);
    v47 = *(v0 + 968);
    v147 = *(v0 + 952);
    v151 = *(v0 + 960);
    v48 = *(v0 + 928);
    v138 = *(v0 + 912);
    v142 = *(v0 + 920);
    v49 = *(v0 + 888);
    v50 = *(v0 + 880);
    v51 = *(v0 + 872);
    v52 = *(v0 + 864);
    v53 = *(v0 + 856);
    v54 = *(v0 + 848);

    sub_226E97D1C(v54, &qword_27D7B9E10, &qword_227676660);
    (*(v52 + 8))(v51, v53);
    (*(v49 + 8))(v138, v50);
    (*(v48 + 8))(v147, v142);
    v55 = *(v47 + 8);
    v55(v155, v151);
  }

  *(v0 + 1088) = v55;
  v61 = *(v0 + 1040);
  v63 = *(v0 + 264);
  v62 = *(v0 + 272);
  sub_22766A630();

  v64 = sub_22766B380();
  v65 = sub_22766C8B0();

  v66 = os_log_type_enabled(v64, v65);
  v67 = *(v0 + 1040);
  v68 = *(v0 + 968);
  v69 = *(v0 + 960);
  v156 = v55;
  if (v66)
  {
    v71 = *(v0 + 264);
    v70 = *(v0 + 272);
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v158[0] = v73;
    *v72 = 136315138;
    v74 = sub_22703AE64();
    v76 = sub_226E97AE8(v74, v75, v158);
    v55 = v156;

    *(v72 + 4) = v76;
    _os_log_impl(&dword_226E8E000, v64, v65, "Using modalityIdentifierMap: %s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v73);
    MEMORY[0x22AA9A450](v73, -1, -1);
    MEMORY[0x22AA9A450](v72, -1, -1);
  }

  v55(v67, v69);
  v77 = *(v0 + 1032);
  v78 = *(v0 + 824);
  v79 = *(v0 + 784);
  v80 = *(v0 + 776);
  v81 = *(v0 + 320);
  sub_22766A630();
  v82 = *(v79 + 16);
  *(v0 + 1096) = v82;
  *(v0 + 1104) = (v79 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v148 = v82;
  v82(v78, v81, v80);
  v83 = sub_22766B380();
  v84 = sub_22766C8B0();
  v85 = os_log_type_enabled(v83, v84);
  v86 = *(v0 + 1032);
  v87 = *(v0 + 968);
  v88 = *(v0 + 960);
  v89 = *(v0 + 824);
  v90 = *(v0 + 784);
  v91 = *(v0 + 776);
  if (v85)
  {
    v92 = swift_slowAlloc();
    v143 = v88;
    v93 = swift_slowAlloc();
    v158[0] = v93;
    *v92 = 136315138;
    sub_226EABFDC(&qword_27D7B9DF0, MEMORY[0x277D52CA8]);
    v139 = v86;
    v94 = sub_22766D140();
    v96 = v95;
    (*(v90 + 8))(v89, v91);
    v97 = sub_226E97AE8(v94, v96, v158);

    *(v92 + 4) = v97;
    _os_log_impl(&dword_226E8E000, v83, v84, "Using configuration: %s", v92, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v93);
    MEMORY[0x22AA9A450](v93, -1, -1);
    MEMORY[0x22AA9A450](v92, -1, -1);

    v156(v139, v143);
  }

  else
  {

    (*(v90 + 8))(v89, v91);
    v55(v86, v88);
  }

  v98 = *(v0 + 816);
  v157 = *(v0 + 792);
  v99 = *(v0 + 784);
  v100 = *(v0 + 768);
  v101 = *(v0 + 744);
  v102 = *(v0 + 736);
  v103 = *(v0 + 328);
  v132 = *(v0 + 320);
  v135 = *(v0 + 776);
  v104 = *(v0 + 288);
  v106 = *(v0 + 264);
  v105 = *(v0 + 272);
  sub_227662740();
  sub_2276626F0();
  *(v0 + 1112) = v107;
  v108 = *(v101 + 8);
  *(v0 + 1120) = v108;
  *(v0 + 1128) = (v101 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v108(v100, v102);
  v109 = sub_227665BE0();

  v110 = sub_22704F1AC(v109, v106);
  *(v0 + 1136) = v110;

  v144 = v103[25];
  v129 = v103[26];
  __swift_project_boxed_opaque_existential_0(v103 + 22, v144);
  v148(v98, v132, v135);
  v111 = (*(v99 + 80) + 48) & ~*(v99 + 80);
  v112 = swift_allocObject();
  *(v0 + 1144) = v112;
  *(v112 + 2) = v103;
  *(v112 + 3) = v110;
  *(v112 + 4) = v106;
  *(v112 + 5) = v105;
  (*(v99 + 32))(&v112[v111], v98, v135);
  v113 = *(v129 + 24);

  v152 = (v113 + *v113);
  v114 = v113[1];
  v115 = swift_task_alloc();
  *(v0 + 1152) = v115;
  *v115 = v0;
  v115[1] = sub_22703F364;
  v116 = *(v0 + 704);
  v117 = *(v0 + 696);

  return (v152)(v116, sub_22704F57C, v112, v117, v144, v129);
}