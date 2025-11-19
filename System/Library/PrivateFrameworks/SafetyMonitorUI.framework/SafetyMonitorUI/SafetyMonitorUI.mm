uint64_t sub_2646074C8()
{
  v1 = sub_264783E24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 8);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = *(v0 + 64);
  v29 = *(v0 + 72);
  v10 = *(v0 + 80);
  v11 = *(v0 + 96);
  LOBYTE(v31[0]) = *(v0 + 88);
  v31[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75430, &qword_2647875B0);
  result = sub_2647852F4();
  if (v30 != 2 && (v30 & 1) != 0)
  {
    v28 = v1;
    sub_264783DE4();

    sub_26460C9B0(v8, v7);

    v13 = sub_264783E14();
    v27 = sub_2647859F4();
    if (os_log_type_enabled(v13, v27))
    {
      v23 = v13;
      v24 = v7;
      v25 = v10;
      v26 = v2;
      v14 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31[0] = v22;
      *v14 = 136315394;
      *(v14 + 4) = sub_2646DF234(0x61746544776F6873, 0xEE00657079546C69, v31);
      v15 = v14;
      *(v14 + 12) = 2048;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v16 = v30;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v17 = v30;
      if (v30)
      {
        v18 = [v30 sessionState];
      }

      else
      {
        v18 = 0;
      }

      *(v14 + 14) = v18;

      sub_26460C9F4(v8, v24);

      v19 = v23;
      _os_log_impl(&dword_264605000, v23, v27, "%s: present expanded view for state: %ld", v15, 0x16u);
      v20 = v22;
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x266740650](v20, -1, -1);
      MEMORY[0x266740650](v15, -1, -1);

      return (*(v26 + 8))(v5, v28);
    }

    else
    {

      sub_26460C9F4(v8, v7);

      return (*(v2 + 8))(v5, v28);
    }
  }

  return result;
}

uint64_t TranscriptView.init(viewModel:edgeInsets:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75400, &qword_264787540);
  sub_2647852E4();
  *(a1 + 48) = v12;
  *(a1 + 64) = v13;
  *(a1 + 80) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75408, &qword_264787548);
  sub_2647852E4();
  *(a1 + 88) = v12;
  *(a1 + 96) = *(&v12 + 1);
  type metadata accessor for TranscriptViewModel();
  sub_26460B5FC(&qword_27FF75410, type metadata accessor for TranscriptViewModel);
  result = sub_264784174();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  return result;
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

uint64_t sub_2646079D4@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = type metadata accessor for CacheNotAvailableView();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75678, &qword_264787D48);
  v6 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v8 = &v41 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75470, &qword_2647875C8);
  v9 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v11 = (&v41 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75680, &qword_264787D50);
  v47 = *(v12 - 8);
  v13 = *(v47 + 64);
  MEMORY[0x28223BE20](v12);
  v46 = &v41 - v14;
  v15 = v1[5];
  v63 = v1[4];
  v64 = v15;
  v65 = *(v1 + 12);
  v16 = v1[1];
  v59 = *v1;
  v60 = v16;
  v17 = v1[3];
  v61 = v1[2];
  v62 = v17;
  v66[0] = v59;
  v18 = *(&v59 + 1);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783ED4();
  sub_26460CD50(v66, &qword_27FF75428, &qword_2647875A8);

  v19 = v56;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v20 = v56;
  if (v56 && ((v21 = [v56 sessionState], v20, v21 > 9) || ((1 << v21) & 0x27D) == 0))
  {
    *v5 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75688, &unk_264789EA0);
    swift_storeEnumTagMultiPayload();
    sub_26460CBD8(v5, v8, type metadata accessor for CacheNotAvailableView);
    swift_storeEnumTagMultiPayload();
    v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75478, &qword_2647875D0);
    v37 = sub_26460B908();
    v38 = sub_26460B9C0();
    v39 = sub_26460BA14();
    *&v56 = &type metadata for CriticalAlertOnboardingView;
    *(&v56 + 1) = v39;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v56 = v50;
    *(&v56 + 1) = &type metadata for CriticalAlertOnboardingView.Model;
    *&v57 = v36;
    *(&v57 + 1) = v37;
    *&v58 = v38;
    *(&v58 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_26460B5FC(&qword_27FF754A8, type metadata accessor for CacheNotAvailableView);
    sub_264784874();

    return sub_26460CC40(v5, type metadata accessor for CacheNotAvailableView);
  }

  else
  {
    v22 = *(v18 + 40);
    sub_26460CCE8(v66, &v56, &qword_27FF75428, &qword_2647875A8);
    v23 = v22;
    v24 = v19;
    sub_264608110(v23, v24, v18, v11);
    v25 = swift_allocObject();
    v26 = v61;
    *(v25 + 72) = v62;
    v27 = v64;
    *(v25 + 88) = v63;
    *(v25 + 104) = v27;
    v28 = v60;
    *(v25 + 24) = v59;
    *(v25 + 16) = v24;
    *(v25 + 120) = v65;
    *(v25 + 40) = v28;
    *(v25 + 56) = v26;
    v29 = (v11 + *(v50 + 36));
    *v29 = sub_26460CBCC;
    v29[1] = v25;
    v29[2] = 0;
    v29[3] = 0;
    v53 = v62;
    v54 = v63;
    *&v55 = v64;
    v45 = v24;
    sub_26460B5BC(&v59, &v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF75690, &unk_264787D90);
    sub_264785314();
    v53 = v56;
    v54 = v57;
    v55 = v58;
    *&v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75478, &qword_2647875D0);
    *(&v42 + 1) = sub_26460B908();
    v30 = sub_26460B9C0();
    v44 = v2;
    *&v43 = v30;
    v31 = sub_26460BA14();
    v51 = &type metadata for CriticalAlertOnboardingView;
    v52 = v31;
    *(&v43 + 1) = swift_getOpaqueTypeConformance2();
    v32 = v46;
    sub_2647850C4();
    v33 = v54;

    sub_26460C9F4(v33, *(&v33 + 1));
    sub_26460CD50(v11, &qword_27FF75470, &qword_2647875C8);
    v34 = v47;
    (*(v47 + 16))(v8, v32, v12);
    swift_storeEnumTagMultiPayload();
    *&v56 = v50;
    *(&v56 + 1) = &type metadata for CriticalAlertOnboardingView.Model;
    v57 = v42;
    v58 = v43;
    swift_getOpaqueTypeConformance2();
    sub_26460B5FC(&qword_27FF754A8, type metadata accessor for CacheNotAvailableView);
    sub_264784874();

    return (*(v34 + 8))(v32, v12);
  }
}

void sub_264608110(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v227 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v184 = v181 - v9;
  v10 = sub_264783B64();
  v185 = *(v10 - 8);
  v186 = v10;
  v11 = *(v185 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v182 = v181 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v183 = v181 - v15;
  v181[1] = v16;
  MEMORY[0x28223BE20](v14);
  v189 = v181 - v17;
  v18 = sub_264783E24();
  v192 = *(v18 - 8);
  v193 = v18;
  v19 = *(v192 + 64);
  MEMORY[0x28223BE20](v18);
  v212 = v181 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756A0, &qword_264787DA0);
  v222 = *(v21 - 8);
  v223 = v21;
  v22 = v222[8];
  MEMORY[0x28223BE20](v21);
  v207 = v181 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756A8, &qword_264787DA8);
  v205 = *(v24 - 8);
  v206 = v24;
  v25 = *(v205 + 8);
  MEMORY[0x28223BE20](v24);
  v204 = v181 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B0, &unk_264787DB0);
  v217 = *(v27 - 1);
  v218 = v27;
  v28 = *(v217 + 64);
  MEMORY[0x28223BE20](v27);
  v203 = v181 - v29;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v30 = *(*(v220 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v220);
  v188 = v181 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v191 = v181 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v187 = v181 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v190 = v181 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v219 = v181 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v228 = v181 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v230 = (v181 - v44);
  MEMORY[0x28223BE20](v43);
  v229 = v181 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756C0, &unk_264787DC0);
  v208 = *(v46 - 8);
  v209 = v46;
  v47 = *(v208 + 64);
  MEMORY[0x28223BE20](v46);
  v221 = v181 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756C8, &qword_264791F00);
  v214 = *(v49 - 8);
  v215 = v49;
  v50 = *(v214 + 64);
  MEMORY[0x28223BE20](v49);
  v199 = v181 - v51;
  v197 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo(0);
  v52 = *(*(v197 - 8) + 64);
  v53 = MEMORY[0x28223BE20](v197);
  v198 = v181 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v56 = v181 - v55;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756D0, &unk_264787DD0);
  v200 = *(v226 - 8);
  v57 = v200[8];
  MEMORY[0x28223BE20](v226);
  v59 = v181 - v58;
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75688, &unk_264789EA0);
  swift_storeEnumTagMultiPayload();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75490, &qword_2647875D8);
  v61 = v60[12];
  *&v246[0] = 0;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756D8, &qword_26478F7B0);
  sub_2647852E4();
  *(a4 + v61) = v247;
  v63 = v60[13];
  *&v246[0] = 0;
  v201 = v62;
  sub_2647852E4();
  *(a4 + v63) = v247;
  v64 = a4 + v60[14];
  type metadata accessor for CGSize(0);
  v246[0] = 0uLL;
  sub_2647852E4();
  v65 = v248;
  *v64 = v247;
  *(v64 + 2) = v65;
  v66 = (a4 + v60[16]);
  *&v246[0] = MEMORY[0x277D84F90];
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756E0, &qword_264787DE0);
  sub_2647852E4();
  v67 = *(&v247 + 1);
  *v66 = v247;
  v66[1] = v67;
  v68 = a4 + v60[17];
  LOBYTE(v246[0]) = 1;
  sub_2647852E4();
  v69 = *(&v247 + 1);
  *v68 = v247;
  *(v68 + 1) = v69;
  *(a4 + v60[10]) = a1;
  v70 = (a4 + v60[9]);
  v71 = type metadata accessor for SafetyCacheViewModel();
  sub_26460B5FC(&qword_27FF756E8, type metadata accessor for SafetyCacheViewModel);
  v196 = a1;
  v227 = v227;
  v210 = v71;
  *v70 = sub_264784174();
  v70[1] = v72;
  v211 = v72;
  v224 = v60;
  v225 = a4;
  v73 = (a4 + v60[11]);
  type metadata accessor for TranscriptViewModel();
  sub_26460B5FC(&qword_27FF75410, type metadata accessor for TranscriptViewModel);

  v213 = a3;
  *v73 = sub_264784174();
  v73[1] = v74;
  if (qword_27FF75008 != -1)
  {
    swift_once();
  }

  v195 = qword_27FF807E8;
  v216 = type metadata accessor for SafetyCacheMapViewModel(0);
  v75 = objc_allocWithZone(v216);
  *&v75[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_locationDegreeBuffer] = 0x3F847AE147AE147BLL;
  v76 = OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel__annotations;
  *&v247 = MEMORY[0x277D84F90];
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756F0, &qword_264787DE8);
  sub_264783E94();
  v77 = v200;
  (v200[4])(&v75[v76], v59, v226);
  v78 = OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel__annotationInfo;
  v79 = type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo.LocationInfo(0);
  v80 = *(*(v79 - 8) + 56);
  v81 = v56;
  v80(v56, 1, 1, v79);
  v82 = v197;
  v80((v81 + *(v197 + 20)), 1, 1, v79);
  v80((v81 + *(v82 + 24)), 1, 1, v79);
  v80((v81 + *(v82 + 28)), 1, 1, v79);
  sub_26460CBD8(v81, v198, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo);
  v83 = v199;
  sub_264783E94();
  sub_26460CC40(v81, type metadata accessor for SafetyCacheMapViewModel.AnnotationInfo);
  (*(v214 + 32))(&v75[v78], v83, v215);
  v84 = &v75[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_destinationLocation];
  *v84 = 0;
  *(v84 + 1) = 0;
  v84[16] = 1;
  v85 = &v75[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_safetyCache];
  memset(v246, 0, sizeof(v246));
  *v85 = 0u;
  *(v85 + 1) = 0u;
  *(v85 + 2) = 0u;
  *(v85 + 3) = 0u;
  *(v85 + 4) = 0u;
  *(v85 + 5) = 0u;
  sub_26460CD50(v246, &qword_27FF756F8, &qword_264787DF0);
  swift_beginAccess();
  (v77[1])(&v75[v76], v226);
  *&v239 = MEMORY[0x277D84F90];
  sub_264783E94();
  swift_endAccess();
  v86 = v195;
  *&v75[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_contact] = v196;
  v87 = &v75[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_handle];
  *v87 = 0;
  *(v87 + 1) = 0;
  *&v75[OBJC_IVAR____TtC15SafetyMonitorUI23SafetyCacheMapViewModel_geocoder] = v86;
  v245.receiver = v75;
  v245.super_class = v216;

  v88 = objc_msgSendSuper2(&v245, sel_init);
  v89 = swift_allocObject();
  *(v89 + 16) = v88;
  v90 = v225 + v224[15];
  *v90 = sub_26460CCD8;
  *(v90 + 1) = v89;
  v90[16] = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  v91 = v88;
  sub_264783ED4();

  v249 = v241;
  v250 = v242;
  v251 = v243;
  v252 = v244;
  v247 = v239;
  v248 = v240;
  swift_beginAccess();
  v92 = v218;
  sub_264783EA4();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v93 = v233;
  v94 = v92;
  if (v233)
  {
    v199 = [v233 sessionType];
  }

  else
  {
    v199 = 0;
  }

  v95 = sub_264783AF4();
  v226 = v95;
  v96 = *(v95 - 8);
  v97 = *(v96 + 56);
  v98 = v96 + 56;
  v97(v229, 1, 1, v95);
  v97(v230, 1, 1, v95);
  v214 = v98;
  v215 = v97;
  v99 = v97;
  v200 = type metadata accessor for SafetyCacheDetailViewModel();
  v100 = objc_allocWithZone(v200);
  v101 = &v100[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel__safetyCache];
  v237 = 0u;
  v238 = 0u;
  v235 = 0u;
  v236 = 0u;
  v233 = 0u;
  v234 = 0u;
  v198 = v91;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756F8, &qword_264787DF0);
  v103 = v203;
  v196 = v102;
  sub_264783E94();
  v104 = *(v217 + 32);
  v197 = v101;
  v104(v101, v103, v94);
  v105 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel__startLocationInfoViewModel;
  *&v233 = 0;
  v106 = v204;
  sub_264783E94();
  v107 = v206;
  v108 = *(v205 + 4);
  v108(&v100[v105], v106, v206);
  v109 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel__destinationInfoViewModel;
  *&v233 = 0;
  sub_264783E94();
  v108(&v100[v109], v106, v107);
  v110 = &v100[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel__sessionStartTime];
  v111 = v228;
  v99(v228, 1, 1, v226);
  v112 = v219;
  sub_26460CCE8(v111, v219, &qword_27FF756B8, &qword_26478AC90);
  v113 = v207;
  sub_264783E94();
  sub_26460CD50(v111, &qword_27FF756B8, &qword_26478AC90);
  v114 = v222[4];
  v206 = v110;
  v115 = v110;
  v116 = v223;
  v114(v115, v113, v223);
  v117 = &v100[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel__sessionEndTime];
  v215(v111, 1, 1, v226);
  sub_26460CCE8(v111, v112, &qword_27FF756B8, &qword_26478AC90);
  sub_264783E94();
  sub_26460CD50(v111, &qword_27FF756B8, &qword_26478AC90);
  v205 = v117;
  v114(v117, v113, v116);
  v118 = &v100[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_routeIconSize];
  *v118 = 0;
  v118[1] = 0;
  v119 = &v100[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_callFunctionProvider];
  *v119 = 0u;
  *(v119 + 1) = 0u;
  *(v119 + 4) = 0;
  *&v100[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_contact] = 0;
  v120 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_264785C14())
    {
      v121 = sub_26476D298(MEMORY[0x277D84F90]);
    }

    else
    {
      v121 = MEMORY[0x277D84FA0];
    }
  }

  else
  {
    v121 = MEMORY[0x277D84FA0];
  }

  v122 = v218;
  *&v100[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_sinkSet] = v121;
  v123 = v197;
  swift_beginAccess();
  (*(v217 + 8))(v123, v122);
  v235 = v249;
  v236 = v250;
  v237 = v251;
  v238 = v252;
  v233 = v247;
  v234 = v248;
  sub_264783E94();
  swift_endAccess();
  v124 = &v100[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel__cacheMapViewModel];
  swift_beginAccess();
  sub_26460B5FC(&qword_27FF75700, type metadata accessor for SafetyCacheMapViewModel);
  v218 = v198;
  *v124 = sub_264784174();
  v124[1] = v125;
  swift_endAccess();
  swift_beginAccess();
  v232 = v120;
  sub_264783E94();
  swift_endAccess();
  v100[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_isTransparencyMode] = 0;
  *&v100[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_sessionType] = v199;
  v126 = v228;
  sub_26460CCE8(v229, v228, &qword_27FF756B8, &qword_26478AC90);
  v127 = v206;
  swift_beginAccess();
  v128 = v223;
  v129 = v222[1];
  v129(v127, v223);
  v130 = v219;
  sub_26460CCE8(v126, v219, &qword_27FF756B8, &qword_26478AC90);
  sub_264783E94();
  sub_26460CD50(v126, &qword_27FF756B8, &qword_26478AC90);
  swift_endAccess();
  sub_26460CCE8(v230, v126, &qword_27FF756B8, &qword_26478AC90);
  v131 = v205;
  swift_beginAccess();
  v129(v131, v128);
  v132 = v218;
  sub_26460CCE8(v126, v130, &qword_27FF756B8, &qword_26478AC90);
  sub_264783E94();
  sub_26460CD50(v126, &qword_27FF756B8, &qword_26478AC90);
  swift_endAccess();
  v231.receiver = v100;
  v231.super_class = v200;
  v133 = objc_msgSendSuper2(&v231, sel_init);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_26460CDF0(&qword_27FF75708, &qword_27FF756C0, &unk_264787DC0);
  v134 = v133;
  v135 = v209;
  v136 = v221;
  sub_264783F14();

  swift_beginAccess();
  sub_264783E34();
  swift_endAccess();

  sub_26460CD50(v230, &qword_27FF756B8, &qword_26478AC90);
  sub_26460CD50(v229, &qword_27FF756B8, &qword_26478AC90);
  (*(v208 + 8))(v136, v135);
  swift_getKeyPath();
  swift_getKeyPath();
  v137 = v227;
  sub_264783ED4();

  v138 = v239;
  if (v239)
  {
    v139 = [v239 sessionType];

    if (v139 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v140 = v239;
      if (v239)
      {
        v141 = [v239 sessionStartDate];

        v142 = v191;
        if (v141)
        {
          v143 = v187;
          sub_264783AC4();

          v144 = 0;
          v145 = v190;
        }

        else
        {
          v144 = 1;
          v145 = v190;
          v143 = v187;
        }

        v215(v143, v144, 1, v226);
        sub_26460CF84(v143, v145);
      }

      else
      {
        v145 = v190;
        v215(v190, 1, 1, v226);
        v142 = v191;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_26460CCE8(v145, v228, &qword_27FF756B8, &qword_26478AC90);
      v146 = v134;
      sub_264783EE4();
      sub_26460CD50(v145, &qword_27FF756B8, &qword_26478AC90);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v147 = v239;
      if (v239)
      {
        v148 = [v239 estimatedEndDate];

        if (v148)
        {
          v149 = v188;
          sub_264783AC4();

          v150 = 0;
        }

        else
        {
          v150 = 1;
          v149 = v188;
        }

        v215(v149, v150, 1, v226);
        sub_26460CF84(v149, v142);
      }

      else
      {
        v215(v142, 1, 1, v226);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_26460CCE8(v142, v228, &qword_27FF756B8, &qword_26478AC90);
      v151 = v146;
      sub_264783EE4();
      sub_26460CD50(v142, &qword_27FF756B8, &qword_26478AC90);
      v137 = v227;
      v132 = v218;
    }
  }

  *&v241 = &protocol witness table for SafetyCacheViewModel;
  *(&v240 + 1) = v210;
  *&v239 = v137;
  v152 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_callFunctionProvider;
  swift_beginAccess();
  v153 = v137;
  sub_26460CE38(&v239, v134 + v152);
  swift_endAccess();
  v154 = swift_allocObject();
  *(v154 + 16) = v134;
  v155 = v225 + v224[18];
  *v155 = sub_26460CCD8;
  *(v155 + 1) = v154;
  v155[16] = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  v156 = v134;
  v157 = v211;
  sub_264783ED4();

  v158 = v239;
  v159 = v212;
  if (v239)
  {
    v160 = [v239 sessionType];

    if (v160 > 2)
    {
      if (v160 == 3 || v160 == 4)
      {
        goto LABEL_30;
      }
    }

    else if (v160 == 1 || v160 == 2)
    {
      goto LABEL_30;
    }
  }

  sub_264783DE4();
  v161 = sub_264783E14();
  v162 = sub_2647859D4();
  if (os_log_type_enabled(v161, v162))
  {
    v163 = swift_slowAlloc();
    v164 = swift_slowAlloc();
    *&v239 = v164;
    *v163 = 136315138;
    *(v163 + 4) = sub_2646DF234(0xD000000000000031, 0x80000002647931C0, &v239);
    _os_log_impl(&dword_264605000, v161, v162, "%s: Received invalid session type - go straight to safety cache view", v163, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v164);
    MEMORY[0x266740650](v164, -1, -1);
    MEMORY[0x266740650](v163, -1, -1);
  }

  (*(v192 + 8))(v159, v193);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v165 = v239;
  if (!v239)
  {
    goto LABEL_40;
  }

  v166 = [v239 sessionState];

  if (v166 == 3)
  {
    goto LABEL_42;
  }

  if (v166 != 9)
  {
LABEL_40:

    goto LABEL_41;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v167 = v239;
  if (v239 || (swift_getKeyPath(), swift_getKeyPath(), sub_264783ED4(), , , (v167 = v239) != 0))
  {

    v132 = v167;
LABEL_41:

    return;
  }

LABEL_42:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v168 = v239;
  if (!v239)
  {

    goto LABEL_31;
  }

  v169 = [v239 sessionID];

  v170 = v183;
  sub_264783B44();

  v171 = *(v185 + 32);
  v171(v189, v170, v186);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v172 = v239;
  if (v239)
  {
    v173 = [v239 sessionState];

    if (v173 == 9)
    {
      (*(v185 + 8))(v189, v186);
LABEL_30:

LABEL_31:

      return;
    }
  }

  v174 = sub_2647858E4();
  (*(*(v174 - 8) + 56))(v184, 1, 1, v174);
  v230 = v171;
  v176 = v185;
  v175 = v186;
  v177 = v182;
  (*(v185 + 16))(v182, v189, v186);
  v178 = (*(v176 + 80) + 40) & ~*(v176 + 80);
  v179 = swift_allocObject();
  *(v179 + 2) = 0;
  *(v179 + 3) = 0;
  *(v179 + 4) = v157;
  v230(&v179[v178], v177, v175);
  v180 = v157;
  sub_264635430(0, 0, v184, &unk_26478A8B0, v179);

  (*(v176 + 8))(v189, v175);
}

uint64_t sub_264609E20(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC15SafetyMonitorUI20SafetyCacheViewModel_manager);
  v4 = sub_264783B14();
  [v3 detailsViewOpenedForSessionID_];

  v5 = *(*(a2 + 8) + 64);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  CriticalAlertOnboardingView.Model.init(for:receiverSessionStatus:)(v5, *&v16[0], v15);
  v6 = *(a2 + 64);
  v16[0] = *(a2 + 48);
  v16[1] = v6;
  v17 = *(a2 + 80);
  v7 = *(a2 + 64);
  v12 = *(a2 + 48);
  v13 = v7;
  v14 = *(a2 + 80);
  v10 = v15[0];
  v11 = v15[1];
  sub_26460CCE8(v16, v9, &unk_27FF75690, &unk_264787D90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF75690, &unk_264787D90);
  sub_264785304();
  sub_26460C9F4(v12, *(&v12 + 1));
}

uint64_t sub_264609F84(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  sub_26460BA14();

  sub_264785054();
}

uint64_t TranscriptView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v51 = type metadata accessor for CheckInView();
  v2 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v4 = v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75418, &qword_264787550);
  v6 = *(v5 - 8);
  v53 = v5;
  v54 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v50 = v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75420, &qword_264787558);
  v10 = *(v9 - 8);
  v55 = v9;
  v56 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v52 = v49 - v12;
  v13 = v1[5];
  v77 = v1[4];
  *v78 = v13;
  *&v78[16] = *(v1 + 12);
  v14 = v1[1];
  v73 = *v1;
  v74 = v14;
  v15 = v1[3];
  v75 = v1[2];
  v76 = v15;
  v79[0] = v73;
  v16 = *(&v73 + 1);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783ED4();

  sub_26460CD50(v79, &qword_27FF75428, &qword_2647875A8);
  v63 = v68;
  v64 = v69;
  v65 = v70;
  v67 = v72;
  v66 = v71;
  v17 = v74;
  v18 = v75;
  v19 = swift_allocObject();
  v20 = *v78;
  *(v19 + 80) = v77;
  *(v19 + 96) = v20;
  *(v19 + 112) = *&v78[16];
  v21 = v74;
  *(v19 + 16) = v73;
  *(v19 + 32) = v21;
  v22 = v76;
  *(v19 + 48) = v75;
  *(v19 + 64) = v22;
  sub_26460B5BC(&v73, &v58);
  CheckInView.init(state:edgeInsets:buttonAction:)(&v63, sub_26460B5B4, v19, v4, *&v17, *(&v17 + 1), *&v18, *(&v18 + 1));
  v58 = *&v78[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75430, &qword_2647875B0);
  sub_264785314();
  v63 = v68;
  LOBYTE(v64) = v69;
  v23 = swift_allocObject();
  v24 = *v78;
  *(v23 + 80) = v77;
  *(v23 + 96) = v24;
  *(v23 + 112) = *&v78[16];
  v25 = v74;
  *(v23 + 16) = v73;
  *(v23 + 32) = v25;
  v26 = v76;
  *(v23 + 48) = v75;
  *(v23 + 64) = v26;
  sub_26460B5BC(&v73, &v58);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75438, &qword_2647875B8);
  v28 = sub_26460B5FC(&qword_27FF75440, type metadata accessor for CheckInView);
  v47 = sub_26460B644();
  v48 = sub_26460B698();
  v29 = v51;
  sub_2647850C4();

  sub_26460CC40(v4, type metadata accessor for CheckInView);
  swift_getKeyPath();
  swift_getKeyPath();
  v49[1] = v16;

  sub_264783ED4();
  sub_26460CD50(v79, &qword_27FF75428, &qword_2647875A8);

  v30 = v58;
  *&v68 = v58;
  v31 = swift_allocObject();
  v32 = *v78;
  *(v31 + 80) = v77;
  *(v31 + 96) = v32;
  *(v31 + 112) = *&v78[16];
  v33 = v74;
  *(v31 + 16) = v73;
  *(v31 + 32) = v33;
  v34 = v76;
  *(v31 + 48) = v75;
  *(v31 + 64) = v34;
  sub_26460B5BC(&v73, &v58);
  v35 = type metadata accessor for SafetyCacheViewModel();
  *&v58 = v29;
  *(&v58 + 1) = &type metadata for UserType;
  v59 = v27;
  v60 = v28;
  v61 = v47;
  v62 = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = sub_26460B5FC(&qword_27FF754B0, type metadata accessor for SafetyCacheViewModel);
  v38 = v52;
  v39 = v53;
  v40 = v50;
  sub_2647850F4();

  (*(v54 + 8))(v40, v39);

  LOBYTE(v40) = sub_2646B395C();
  sub_26460CD50(v79, &qword_27FF75428, &qword_2647875A8);
  LOBYTE(v68) = v40 & 1;
  v41 = swift_allocObject();
  v42 = *v78;
  *(v41 + 80) = v77;
  *(v41 + 96) = v42;
  *(v41 + 112) = *&v78[16];
  v43 = v74;
  *(v41 + 16) = v73;
  *(v41 + 32) = v43;
  v44 = v76;
  *(v41 + 48) = v75;
  *(v41 + 64) = v44;
  sub_26460B5BC(&v73, &v58);
  *&v58 = v39;
  *(&v58 + 1) = v35;
  v59 = OpaqueTypeConformance2;
  v60 = v37;
  swift_getOpaqueTypeConformance2();
  v45 = v55;
  sub_2647850F4();

  return (*(v56 + 8))(v38, v45);
}

uint64_t sub_26460A6E4(__int128 *a1)
{
  v2 = *(*(a1 + 1) + 48);
  v13 = *(a1 + 88);
  v4 = *(a1 + 88);
  v12[23] = v2;
  sub_26460CCE8(&v13, v12, &qword_27FF75430, &qword_2647875B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75430, &qword_2647875B0);
  sub_264785304();

  v9 = a1[4];
  v10 = a1[5];
  v11 = *(a1 + 12);
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  return sub_2646074C8();
}

uint64_t sub_26460A7A0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75468, &qword_2647875C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75670, &qword_264787D40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v27 - v12;
  v14 = type metadata accessor for InitiatorSessionDetailsView();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*a1)
  {
    v18 = *(a2 + 80);
    v29[4] = *(a2 + 64);
    v29[5] = v18;
    v30 = *(a2 + 96);
    v19 = *(a2 + 16);
    v29[0] = *a2;
    v29[1] = v19;
    v20 = *(a2 + 48);
    v29[2] = *(a2 + 32);
    v29[3] = v20;
    sub_2646079D4(v9);
    sub_26460CA8C(v9, v13);
    swift_storeEnumTagMultiPayload();
    sub_26460B5FC(&qword_27FF75458, type metadata accessor for InitiatorSessionDetailsView);
    sub_26460B79C();
    sub_264784874();
    return sub_26460CAFC(v9);
  }

  else
  {
    v27[1] = v14;
    v27[2] = v6;
    v27[3] = a3;
    v29[0] = *a2;
    v22 = *(&v29[0] + 1);
    if (qword_27FF74FC0 != -1)
    {
      swift_once();
    }

    v23 = off_27FF75B20;
    v24 = *(v22 + 56);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26460CCE8(v29, &v28, &qword_27FF75428, &qword_2647875A8);

    sub_264783ED4();
    sub_26460CD50(v29, &qword_27FF75428, &qword_2647875A8);

    v25 = v28;

    v26 = sub_2646B4B8C();
    sub_26460CD50(v29, &qword_27FF75428, &qword_2647875A8);
    InitiatorSessionDetailsView.init(sessionViewModel:handlerManager:safetyCacheViewModel:showCachePersistence:)(v23, v24, v25, v26 & 1, v17);
    sub_26460CBD8(v17, v13, type metadata accessor for InitiatorSessionDetailsView);
    swift_storeEnumTagMultiPayload();
    sub_26460B5FC(&qword_27FF75458, type metadata accessor for InitiatorSessionDetailsView);
    sub_26460B79C();
    sub_264784874();
    return sub_26460CC40(v17, type metadata accessor for InitiatorSessionDetailsView);
  }
}

uint64_t sub_26460AB4C(void **a1, uint64_t *a2, __int128 *a3)
{
  v4 = *a1;
  v5 = *a2;
  v6 = a3[5];
  v21 = a3[4];
  v22 = v6;
  v23 = *(a3 + 12);
  v7 = a3[1];
  v17 = *a3;
  v18 = v7;
  v8 = a3[3];
  v19 = a3[2];
  v20 = v8;
  result = sub_26460ACA4(v4);
  if (result)
  {
    v24 = *(a3 + 88);
    v17 = *(a3 + 88);
    v16[23] = 2;
    sub_26460CCE8(&v24, v16, &qword_27FF75430, &qword_2647875B0);
    sub_26460CCE8(&v24, v16, &qword_27FF75430, &qword_2647875B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75430, &qword_2647875B0);
    sub_264785304();

    v10 = a3[5];
    v21 = a3[4];
    v22 = v10;
    v23 = *(a3 + 12);
    v11 = a3[1];
    v17 = *a3;
    v18 = v11;
    v12 = a3[3];
    v19 = a3[2];
    v20 = v12;
    sub_2646074C8();
    v17 = v24;
    v16[0] = 1;
    sub_264785304();

    v13 = a3[5];
    v21 = a3[4];
    v22 = v13;
    v23 = *(a3 + 12);
    v14 = a3[1];
    v17 = *a3;
    v18 = v14;
    v15 = a3[3];
    v19 = a3[2];
    v20 = v15;
    return sub_2646074C8();
  }

  return result;
}

uint64_t sub_26460ACA4(void *a1)
{
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v39 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v39 - v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v13 = v42;
  if (!v42)
  {
    sub_264783DE4();
    v24 = sub_264783E14();
    v25 = sub_2647859D4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v42 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_2646DF234(0xD00000000000002CLL, 0x8000000264793190, &v42);
      _os_log_impl(&dword_264605000, v24, v25, "%s: new session state is empty! Unable to present valid expanded view!", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x266740650](v27, -1, -1);
      MEMORY[0x266740650](v26, -1, -1);
    }

    v28 = *(v3 + 8);
    v29 = v7;
    goto LABEL_16;
  }

  v14 = [v42 sessionState];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v15 = v42;
  if (v42)
  {
    v16 = [v42 sessionState];

    if (v16 <= 9 && ((1 << v16) & 0x218) != 0)
    {
      sub_264783DE4();
      v17 = a1;
      v18 = sub_264783E14();
      v19 = sub_2647859D4();
      if (os_log_type_enabled(v18, v19))
      {
        v39 = v14;
        v40 = v2;
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v42 = v21;
        *v20 = 136315650;
        *(v20 + 4) = sub_2646DF234(0xD00000000000002CLL, 0x8000000264793190, &v42);
        *(v20 + 12) = 2048;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_264783ED4();

        v22 = v41;
        if (v41)
        {
          v23 = [v41 sessionState];
        }

        else
        {
          v23 = 0;
        }

        *(v20 + 14) = v23;

        *(v20 + 22) = 2048;
        *(v20 + 24) = v39;
        _os_log_impl(&dword_264605000, v18, v19, "%s: not relaunching expanded view because session status changed from %ld to %ld", v20, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x266740650](v21, -1, -1);
        MEMORY[0x266740650](v20, -1, -1);

        v28 = *(v3 + 8);
        v29 = v12;
        v37 = v40;
        goto LABEL_22;
      }

      v28 = *(v3 + 8);
      v29 = v12;
LABEL_16:
      v37 = v2;
LABEL_22:
      v28(v29, v37);
      return 0;
    }
  }

  sub_264783DE4();
  v30 = a1;
  v31 = sub_264783E14();
  v32 = sub_2647859D4();
  if (os_log_type_enabled(v31, v32))
  {
    v39 = v14;
    v40 = v2;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v42 = v34;
    *v33 = 136315650;
    *(v33 + 4) = sub_2646DF234(0xD00000000000002CLL, 0x8000000264793190, &v42);
    *(v33 + 12) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v35 = v41;
    if (v41)
    {
      v36 = [v41 sessionState];
    }

    else
    {
      v36 = 0;
    }

    *(v33 + 14) = v36;

    *(v33 + 22) = 2048;
    *(v33 + 24) = v39;
    _os_log_impl(&dword_264605000, v31, v32, "%s: updating the expanded view because session status changed from %ld to %ld", v33, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x266740650](v34, -1, -1);
    MEMORY[0x266740650](v33, -1, -1);

    (*(v3 + 8))(v10, v40);
  }

  else
  {

    (*(v3 + 8))(v10, v2);
  }

  return 1;
}

uint64_t sub_26460B294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_264783E24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  v9 = sub_264783E14();
  v10 = sub_2647859B4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_264605000, v9, v10, "shouldShowViewButton changed, requesting to resize view", v11, 2u);
    MEMORY[0x266740650](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v12 = *(*(a3 + 8) + 56);
  result = swift_beginAccess();
  v14 = *(v12 + 64);
  if (v14)
  {
    v15 = *(v12 + 72);

    v14(v16);
    return sub_26460C9A0(v14);
  }

  return result;
}

double sub_26460B444@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *a2 = v5;
  *(a2 + 16) = v6;
  result = *&v7;
  *(a2 + 32) = v7;
  *(a2 + 50) = v9;
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_26460B4DC(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 50);
  v9 = *(a1 + 48);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26460D004(v2, v3, v4, v5, v6, v7, v9 | (v8 << 16));

  return sub_264783EE4();
}

uint64_t sub_26460B5FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26460B644()
{
  result = qword_27FF75448;
  if (!qword_27FF75448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75448);
  }

  return result;
}

unint64_t sub_26460B698()
{
  result = qword_27FF75450;
  if (!qword_27FF75450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75438, &qword_2647875B8);
    sub_26460B5FC(&qword_27FF75458, type metadata accessor for InitiatorSessionDetailsView);
    sub_26460B79C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75450);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_26460B79C()
{
  result = qword_27FF75460;
  if (!qword_27FF75460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75468, &qword_2647875C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75470, &qword_2647875C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75478, &qword_2647875D0);
    sub_26460B908();
    sub_26460B9C0();
    sub_26460BA14();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_26460B5FC(&qword_27FF754A8, type metadata accessor for CacheNotAvailableView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75460);
  }

  return result;
}

unint64_t sub_26460B908()
{
  result = qword_27FF75480;
  if (!qword_27FF75480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75470, &qword_2647875C8);
    sub_26460CDF0(&qword_27FF75488, &qword_27FF75490, &qword_2647875D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75480);
  }

  return result;
}

unint64_t sub_26460B9C0()
{
  result = qword_27FF75498;
  if (!qword_27FF75498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75498);
  }

  return result;
}

unint64_t sub_26460BA14()
{
  result = qword_27FF754A0;
  if (!qword_27FF754A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF754A0);
  }

  return result;
}

uint64_t sub_26460BA68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *a2 = v5;
  return result;
}

uint64_t sub_26460BAE8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v2;
  return sub_264783EE4();
}

uint64_t objectdestroyTm()
{
  v1 = v0[3];

  if (v0[9])
  {

    v2 = v0[11];
  }

  v3 = v0[12];

  v4 = v0[14];

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_26460BBCC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_264784A54();

    return sub_264784264();
  }

  else
  {
    sub_2647842C4();
    swift_getWitnessTable();
    sub_2647849A4();
    sub_264784264();
    sub_264785B44();
    swift_getWitnessTable();
    sub_2647842C4();
    swift_getWitnessTable();
    sub_2647849A4();
    return sub_264784264();
  }
}

uint64_t sub_26460BD30(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_264784A54();
    sub_264784264();
  }

  else
  {
    sub_2647842C4();
    swift_getWitnessTable();
    sub_2647849A4();
    sub_264784264();
    sub_264785B44();
    swift_getWitnessTable();
    sub_2647842C4();
    swift_getWitnessTable();
    sub_2647849A4();
    sub_264784264();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void *sub_26460BF44@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26460BFA4()
{
  v1 = *v0;
  sub_264785F44();
  MEMORY[0x26673FC80](v1);
  return sub_264785F94();
}

uint64_t sub_26460BFEC()
{
  v1 = *v0;
  sub_264785F44();
  MEMORY[0x26673FC80](v1);
  return sub_264785F94();
}

uint64_t sub_26460C040(uint64_t a1)
{
  v2 = sub_26460B5FC(&qword_27FF75788, type metadata accessor for CLError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_26460C0AC(uint64_t a1)
{
  v2 = sub_26460B5FC(&qword_27FF75788, type metadata accessor for CLError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_26460C118(void *a1, uint64_t a2)
{
  v4 = sub_26460B5FC(&qword_27FF75788, type metadata accessor for CLError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_26460C1CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26460B5FC(&qword_27FF75788, type metadata accessor for CLError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_26460C248()
{
  v2 = *v0;
  sub_264785F44();
  sub_264785644();
  return sub_264785F94();
}

uint64_t sub_26460C2A8(uint64_t a1)
{
  v2 = sub_26460B5FC(&qword_27FF75750, type metadata accessor for CLError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26460C314(uint64_t a1)
{
  v2 = sub_26460B5FC(&qword_27FF75750, type metadata accessor for CLError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_26460C384(uint64_t a1)
{
  v2 = sub_26460B5FC(&qword_27FF75788, type metadata accessor for CLError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_26460C3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26460B5FC(&qword_27FF75788, type metadata accessor for CLError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_26460C474(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t get_enum_tag_for_layout_string_15SafetyMonitorUI27CriticalAlertOnboardingViewV5ModelVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_26460C4E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26460C52C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26460C594()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75420, &qword_264787558);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75418, &qword_264787550);
  type metadata accessor for SafetyCacheViewModel();
  type metadata accessor for CheckInView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75438, &qword_2647875B8);
  sub_26460B5FC(&qword_27FF75440, type metadata accessor for CheckInView);
  sub_26460B644();
  sub_26460B698();
  swift_getOpaqueTypeConformance2();
  sub_26460B5FC(&qword_27FF754B0, type metadata accessor for SafetyCacheViewModel);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26460C76C(uint64_t a1, int a2)
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

uint64_t sub_26460C78C(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26460C7EC(uint64_t a1, int a2)
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

uint64_t sub_26460C80C(uint64_t result, int a2, int a3)
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

uint64_t sub_26460C9A0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26460C9B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_26460C9F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
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

uint64_t sub_26460CA8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75468, &qword_2647875C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26460CAFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75468, &qword_2647875C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26460CB68()
{
  v1 = *(v0 + 32);

  if (*(v0 + 80))
  {

    v2 = *(v0 + 96);
  }

  v3 = *(v0 + 104);

  v4 = *(v0 + 120);

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_26460CBD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26460CC40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26460CCA0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26460CCE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26460CD50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26460CDB0()
{
  MEMORY[0x2667406F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26460CDF0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26460CE38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75710, &qword_264787E40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26460CEB8()
{
  v1 = sub_264783B64();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_26460CF84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26460D004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v7 = (a7 >> 21) & 7;
  if (v7 > 1)
  {
    if (v7 - 2 >= 2)
    {
      if (v7 != 4)
      {
        return result;
      }

      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (v7)
  {

LABEL_6:
  }

LABEL_8:
}

uint64_t sub_26460D0A0(uint64_t a1, int a2)
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

uint64_t sub_26460D0C0(uint64_t result, int a2, int a3)
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

void sub_26460D310(uint64_t a1, unint64_t *a2)
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

unint64_t sub_26460D3A8()
{
  result = qword_27FF75778;
  if (!qword_27FF75778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75778);
  }

  return result;
}

uint64_t SessionManagementError.errorDescription.getter()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_264783904();

  return v1;
}

uint64_t SessionManagementError.hashValue.getter()
{
  sub_264785F44();
  MEMORY[0x26673FC80](0);
  return sub_264785F94();
}

uint64_t sub_26460D5F8()
{
  sub_264785F44();
  MEMORY[0x26673FC80](0);
  return sub_264785F94();
}

uint64_t sub_26460D664()
{
  sub_264785F44();
  MEMORY[0x26673FC80](0);
  return sub_264785F94();
}

unint64_t sub_26460D6A8()
{
  result = qword_27FF75920;
  if (!qword_27FF75920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75920);
  }

  return result;
}

unint64_t sub_26460D70C()
{
  result = qword_27FF75928;
  if (!qword_27FF75928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75928);
  }

  return result;
}

uint64_t sub_26460D760()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_264783904();

  return v1;
}

uint64_t getEnumTagSinglePayload for SessionManagementError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SessionManagementError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_26460D90C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_264784574();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759A8, &qword_264788590);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_26460CCE8(v2, &v17 - v11, &qword_27FF759A8, &qword_264788590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_264783F74();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_2647859E4();
    v16 = sub_264784BE4();
    sub_264783DA4();

    sub_264784564();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t CriticalAlertBlurbView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v1 = sub_264783F74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75930, &qword_2647884B0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v46 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75938, &qword_2647884B8);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v46 - v17;
  *v18 = sub_2647845C4();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75940, &qword_2647884C0);
  sub_26460DEA0(&v18[*(v19 + 44)]);
  v20 = sub_264784C34();
  v21 = &v18[*(v15 + 44)];
  *v21 = v20;
  *(v21 + 8) = 0u;
  *(v21 + 24) = 0u;
  v21[40] = 1;
  sub_26460D90C(v8);
  (*(v2 + 104))(v6, *MEMORY[0x277CDF3D0], v1);
  v22 = sub_264783F64();
  v23 = *(v2 + 8);
  v23(v6, v1);
  v23(v8, v1);
  v24 = objc_opt_self();
  v25 = &selRef_quaternarySystemFillColor;
  if ((v22 & 1) == 0)
  {
    v25 = &selRef_tertiarySystemBackgroundColor;
  }

  v26 = [v24 *v25];
  v27 = sub_264785134();
  KeyPath = swift_getKeyPath();
  v29 = v13 + *(v10 + 44);
  v30 = *(sub_2647842B4() + 20);
  v31 = *MEMORY[0x277CE0118];
  v32 = sub_264784674();
  (*(*(v32 - 8) + 104))(&v29[v30], v31, v32);
  __asm { FMOV            V0.2D, #10.0 }

  *v29 = _Q0;
  *&v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75948, &qword_26478B640) + 36)] = 256;
  *v13 = KeyPath;
  v13[1] = v27;
  v38 = sub_264785504();
  v40 = v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75950, &qword_264788500);
  v42 = v47;
  v43 = v47 + *(v41 + 36);
  sub_26460E7E4(v13, v43, &qword_27FF75930, &qword_2647884B0);
  v44 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75958, &qword_264788508) + 36));
  *v44 = v38;
  v44[1] = v40;
  return sub_26460E7E4(v18, v42, &qword_27FF75938, &qword_2647884B8);
}

uint64_t sub_26460DEA0@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759B0, &qword_264788598);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = sub_264785274();
  v10 = sub_264784CC4();
  KeyPath = swift_getKeyPath();
  v12 = sub_264785164();
  v13 = swift_getKeyPath();
  *v8 = sub_264784724();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759B8, &qword_2647885D0);
  sub_26460E088(&v8[*(v14 + 44)]);
  sub_26460CCE8(v8, v6, &qword_27FF759B0, &qword_264788598);
  *a1 = v9;
  a1[1] = KeyPath;
  a1[2] = v10;
  a1[3] = v13;
  a1[4] = v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759C0, &qword_2647885D8);
  sub_26460CCE8(v6, a1 + *(v15 + 48), &qword_27FF759B0, &qword_264788598);

  sub_26460EC10(v8);
  sub_26460EC10(v6);
}

uint64_t sub_26460E088@<X0>(uint64_t *a1@<X8>)
{
  v48 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759C8, &qword_2647885E0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v49 = &v40[-v3];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759D0, &qword_2647885E8);
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v45 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v50 = &v40[-v8];
  v9 = sub_264783B94();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_264785704();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = objc_opt_self();
  v15 = [v14 bundleForClass_];
  sub_264783B84();
  sub_264785754();
  sub_264784644();
  v16 = sub_264784E34();
  v18 = v17;
  v20 = v19;
  sub_264784D74();
  v21 = sub_264784E24();
  v42 = v22;
  v43 = v21;
  v41 = v23;
  v44 = v24;

  sub_26460ECC4(v16, v18, v20 & 1);

  sub_264785694();
  v25 = [v14 bundleForClass_];
  sub_264783B84();
  sub_264785754();
  v26 = v49;
  sub_2647839C4();

  v27 = sub_2647839D4();
  result = (*(*(v27 - 8) + 48))(v26, 1, v27);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v29 = v50;
    sub_264784D94();
    v31 = v45;
    v30 = v46;
    v32 = *(v46 + 16);
    v33 = v47;
    v32(v45, v29, v47);
    v34 = v48;
    v35 = v42;
    v36 = v43;
    *v48 = v43;
    v34[1] = v35;
    v37 = v41 & 1;
    *(v34 + 16) = v41 & 1;
    v34[3] = v44;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759D8, &qword_2647885F0);
    v32(v34 + *(v38 + 48), v31, v33);
    sub_26460C474(v36, v35, v37);
    v39 = *(v30 + 8);

    v39(v50, v33);
    v39(v31, v33);
    sub_26460ECC4(v36, v35, v37);
  }

  return result;
}

uint64_t sub_26460E538@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_264783B94();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_264785704();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_264783B84();
  sub_264785754();
  sub_264784644();
  v8 = sub_264784E34();
  v10 = v9;
  LOBYTE(ObjCClassFromMetadata) = v11;
  sub_264784D74();
  v12 = sub_264784E24();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_26460ECC4(v8, v10, ObjCClassFromMetadata & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

uint64_t sub_26460E734@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264784404();
  *a1 = result;
  return result;
}

uint64_t sub_26460E760@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264784404();
  *a1 = result;
  return result;
}

uint64_t sub_26460E78C(uint64_t *a1)
{
  v1 = *a1;

  return sub_264784414();
}

uint64_t sub_26460E7B8(uint64_t *a1)
{
  v1 = *a1;

  return sub_264784414();
}

uint64_t sub_26460E7E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_26460E87C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75960, &unk_264790C60);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26460E908(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75960, &unk_264790C60);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for CriticalAlertBlurbView()
{
  result = qword_27FF75968;
  if (!qword_27FF75968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26460E9D0()
{
  sub_26460EA3C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26460EA3C()
{
  if (!qword_27FF75978)
  {
    sub_264783F74();
    v0 = sub_264783F94();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF75978);
    }
  }
}

unint64_t sub_26460EA98()
{
  result = qword_27FF75980;
  if (!qword_27FF75980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75950, &qword_264788500);
    sub_26460EB50();
    sub_26460CDF0(&qword_27FF759A0, &qword_27FF75958, &qword_264788508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75980);
  }

  return result;
}

unint64_t sub_26460EB50()
{
  result = qword_27FF75988;
  if (!qword_27FF75988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75938, &qword_2647884B8);
    sub_26460CDF0(&qword_27FF75990, &qword_27FF75998, &qword_264788588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75988);
  }

  return result;
}

uint64_t sub_26460EC10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759B0, &qword_264788598);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26460EC78()
{
  result = qword_27FF779F0;
  if (!qword_27FF779F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF779F0);
  }

  return result;
}

uint64_t sub_26460ECC4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_26460ECD4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2646113A0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26460FA4C(v4);
}

uint64_t sub_26460ED68(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_264611398;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_26460FA4C(v3);
  return sub_26460C9A0(v8);
}

uint64_t sub_26460EE24()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_26460FA4C(v1);
  return v1;
}

uint64_t sub_26460EE74(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_26460C9A0(v5);
}

uint64_t sub_26460EF18@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2646113A0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26460FA4C(v4);
}

uint64_t sub_26460EFAC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_264611398;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  sub_26460FA4C(v3);
  return sub_26460C9A0(v8);
}

uint64_t sub_26460F068()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_26460FA4C(v1);
  return v1;
}

uint64_t sub_26460F0B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_26460C9A0(v5);
}

uint64_t sub_26460F15C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2646113A0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26460FA4C(v4);
}

uint64_t sub_26460F1F0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_264611398;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 48);
  v9 = *(v7 + 56);
  *(v7 + 48) = v6;
  *(v7 + 56) = v5;
  sub_26460FA4C(v3);
  return sub_26460C9A0(v8);
}

uint64_t sub_26460F2AC()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_26460FA4C(v1);
  return v1;
}

uint64_t sub_26460F2FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return sub_26460C9A0(v5);
}

uint64_t sub_26460F3A0@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2646113A0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26460FA4C(v4);
}

uint64_t sub_26460F434(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_264611398;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 64);
  v9 = *(v7 + 72);
  *(v7 + 64) = v6;
  *(v7 + 72) = v5;
  sub_26460FA4C(v3);
  return sub_26460C9A0(v8);
}

uint64_t sub_26460F4F0()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_26460FA4C(v1);
  return v1;
}

uint64_t sub_26460F540(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return sub_26460C9A0(v5);
}

uint64_t sub_26460F5E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = &unk_2647886D8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26460FA4C(v4);
}

uint64_t sub_26460F67C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26460F764;

  return v6();
}

uint64_t sub_26460F764()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26460F858(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = &unk_2647886C8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 80);
  v9 = *(v7 + 88);
  *(v7 + 80) = v6;
  *(v7 + 88) = v5;
  sub_26460FA4C(v3);
  return sub_26460C9A0(v8);
}

uint64_t sub_26460F914(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_264611390;

  return v5();
}

uint64_t sub_26460F9FC()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  sub_26460FA4C(v1);
  return v1;
}

uint64_t sub_26460FA4C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26460FA5C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return sub_26460C9A0(v5);
}

uint64_t sub_26460FB00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 96);
  v5 = *(v3 + 104);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = &unk_2647886B8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26460FA4C(v4);
}

uint64_t sub_26460FB94(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = *a2;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26460F764;

  return v8(v4);
}

uint64_t sub_26460FC88(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = &unk_2647886A8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 96);
  v9 = *(v7 + 104);
  *(v7 + 96) = v6;
  *(v7 + 104) = v5;
  sub_26460FA4C(v3);
  return sub_26460C9A0(v8);
}

uint64_t sub_26460FD44(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_26460FE3C;

  return v6();
}

uint64_t sub_26460FE3C()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26460FF30()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  sub_26460FA4C(v1);
  return v1;
}

uint64_t sub_26460FF80(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 96);
  v6 = *(v2 + 104);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return sub_26460C9A0(v5);
}

uint64_t sub_264610024@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2646113A0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26460FA4C(v4);
}

uint64_t sub_2646100B8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_264611398;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 112);
  v9 = *(v7 + 120);
  *(v7 + 112) = v6;
  *(v7 + 120) = v5;
  sub_26460FA4C(v3);
  return sub_26460C9A0(v8);
}

uint64_t sub_264610174()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  sub_26460FA4C(v1);
  return v1;
}

uint64_t sub_2646101C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 112);
  v6 = *(v2 + 120);
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return sub_26460C9A0(v5);
}

uint64_t sub_264610268@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 128);
  v5 = *(v3 + 136);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2646113A0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26460FA4C(v4);
}

uint64_t sub_2646102FC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_264611398;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 128);
  v9 = *(v7 + 136);
  *(v7 + 128) = v6;
  *(v7 + 136) = v5;
  sub_26460FA4C(v3);
  return sub_26460C9A0(v8);
}

uint64_t sub_2646103B8()
{
  swift_beginAccess();
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  sub_26460FA4C(v1);
  return v1;
}

uint64_t sub_264610408(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 128);
  v6 = *(v2 + 136);
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return sub_26460C9A0(v5);
}

uint64_t sub_2646104AC@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 144);
  v5 = *(v3 + 152);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2646113A0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26460FA4C(v4);
}

uint64_t sub_264610540(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_264611398;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 144);
  v9 = *(v7 + 152);
  *(v7 + 144) = v6;
  *(v7 + 152) = v5;
  sub_26460FA4C(v3);
  return sub_26460C9A0(v8);
}

uint64_t sub_2646105FC()
{
  swift_beginAccess();
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  sub_26460FA4C(v1);
  return v1;
}

uint64_t sub_26461064C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 144);
  v6 = *(v2 + 152);
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return sub_26460C9A0(v5);
}

uint64_t sub_2646106F0@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 160);
  v5 = *(v3 + 168);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_26461103C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26460FA4C(v4);
}

uint64_t sub_264610784(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_264611014;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 160);
  v9 = *(v7 + 168);
  *(v7 + 160) = v6;
  *(v7 + 168) = v5;
  sub_26460FA4C(v3);
  return sub_26460C9A0(v8);
}

uint64_t sub_264610840()
{
  swift_beginAccess();
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  sub_26460FA4C(v1);
  return v1;
}

uint64_t sub_264610890(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 160);
  v6 = *(v2 + 168);
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return sub_26460C9A0(v5);
}

double HandlerManager.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[5] = 0u;
  v0[6] = 0u;
  v0[7] = 0u;
  v0[8] = 0u;
  v0[9] = 0u;
  v0[10] = 0u;
  return result;
}

double HandlerManager.init()()
{
  result = 0.0;
  v0[9] = 0u;
  v0[10] = 0u;
  v0[7] = 0u;
  v0[8] = 0u;
  v0[5] = 0u;
  v0[6] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  return result;
}

uint64_t *HandlerManager.deinit()
{
  v1 = v0[3];
  sub_26460C9A0(v0[2]);
  v2 = v0[5];
  sub_26460C9A0(v0[4]);
  v3 = v0[7];
  sub_26460C9A0(v0[6]);
  v4 = v0[9];
  sub_26460C9A0(v0[8]);
  v5 = v0[11];
  sub_26460C9A0(v0[10]);
  v6 = v0[13];
  sub_26460C9A0(v0[12]);
  v7 = v0[15];
  sub_26460C9A0(v0[14]);
  v8 = v0[17];
  sub_26460C9A0(v0[16]);
  v9 = v0[19];
  sub_26460C9A0(v0[18]);
  v10 = v0[21];
  sub_26460C9A0(v0[20]);
  return v0;
}

uint64_t HandlerManager.__deallocating_deinit()
{
  HandlerManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_264610A38@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for HandlerManager();
  result = sub_264783E64();
  *a1 = result;
  return result;
}

uint64_t sub_264610FDC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264611014()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_26461103C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_264611064(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_264611390;

  return sub_26460FD44(a1, v5);
}

uint64_t sub_264611118(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_26460F764;

  return sub_26460FB94(a1, a2, v7);
}

uint64_t sub_2646111E0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_264611390;

  return sub_26460F914(v2);
}

uint64_t sub_26461128C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26460F764;

  return sub_26460F67C(a1, v5);
}

uint64_t sub_2646113A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_264784574();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759A8, &qword_264788590);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_26460CCE8(v2, &v17 - v11, &qword_27FF759A8, &qword_264788590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_264783F74();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_2647859E4();
    v16 = sub_264784BE4();
    sub_264783DA4();

    sub_264784564();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t DataSharingSelectionList.init(updateHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759A8, &qword_264788590);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for DataSharingSelectionList();
  v7 = a3 + *(v6 + 20);
  result = sub_2647852E4();
  *v7 = v10;
  *(v7 + 1) = v11;
  v9 = (a3 + *(v6 + 24));
  *v9 = a1;
  v9[1] = a2;
  return result;
}

uint64_t DataSharingSelectionList.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v3 = sub_2647845E4();
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3);
  v51 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_264784954();
  v7 = *(v6 - 8);
  v48 = v6;
  v49 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v45 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759E0, &qword_264788718);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759E8, &qword_264788720);
  v44 = *(v15 - 8);
  v16 = *(v44 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v43 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759F0, &qword_264788728);
  v20 = *(v19 - 8);
  v46 = v19;
  v47 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v43 - v22;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759F8, &qword_264788730);
  v24 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v26 = &v43 - v25;
  v55 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75A00, &qword_264788738);
  sub_26460CDF0(&qword_27FF75A08, &qword_27FF75A00, &qword_264788738);
  sub_264784DA4();
  v27 = sub_26460CDF0(&qword_27FF75A10, &qword_27FF759E0, &qword_264788718);
  sub_264785044();
  (*(v11 + 8))(v14, v10);
  v28 = v45;
  sub_264784944();
  v56 = v10;
  v57 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = MEMORY[0x277CDE0D0];
  v31 = v48;
  sub_264785124();
  (*(v49 + 8))(v28, v31);
  (*(v44 + 8))(v18, v15);
  sub_264784C44();
  v56 = v15;
  v57 = v31;
  v58 = OpaqueTypeConformance2;
  v59 = v30;
  swift_getOpaqueTypeConformance2();
  v32 = v46;
  sub_264784EE4();
  (*(v47 + 8))(v23, v32);
  v33 = v51;
  sub_2647845D4();
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75A18, &qword_264788740) + 36);
  v35 = v52;
  v36 = v53;
  (*(v52 + 16))(&v26[v34], v33, v53);
  v37 = v35;
  v38 = *(v35 + 56);
  v38(&v26[v34], 0, 1, v36);
  KeyPath = swift_getKeyPath();
  v40 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75A20, &qword_264788778) + 36)];
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75A28, &qword_264788780) + 28);
  (*(v37 + 32))(v40 + v41, v33, v36);
  v38(v40 + v41, 0, 1, v36);
  *v40 = KeyPath;
  *&v26[*(v50 + 36)] = 256;
  sub_264613860();
  sub_264785004();
  return sub_26460CD50(v26, &qword_27FF759F8, &qword_264788730);
}

uint64_t sub_264611C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a2;
  v136 = sub_2647846B4();
  v141 = *(v136 - 8);
  v3 = *(v141 + 64);
  MEMORY[0x28223BE20](v136);
  v133 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_264784AA4();
  v140 = *(v135 - 8);
  v5 = *(v140 + 64);
  MEMORY[0x28223BE20](v135);
  v131 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DataSharingSelectionList();
  v117 = *(v7 - 8);
  v134 = *(v117 + 8);
  MEMORY[0x28223BE20](v7 - 8);
  v130 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_264783F74();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v100 - v15;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75AB0, &qword_264788900);
  v137 = *(v127 - 8);
  v17 = *(v137 + 64);
  v18 = MEMORY[0x28223BE20](v127);
  v118 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v100 - v20;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75AB8, &qword_264788908);
  v22 = *(*(v126 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v126);
  v123 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v100 - v25;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75AC0, &qword_264788910);
  v138 = *(v128 - 8);
  v27 = *(v138 + 64);
  v28 = MEMORY[0x28223BE20](v128);
  v122 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v100 - v30;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75AC8, &qword_264788918);
  v139 = *(v129 - 8);
  v32 = *(v139 + 64);
  v33 = MEMORY[0x28223BE20](v129);
  v120 = &v100 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v110 = &v100 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75AD0, &qword_264788920);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v124 = &v100 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v121 = &v100 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v119 = &v100 - v43;
  MEMORY[0x28223BE20](v42);
  v132 = &v100 - v44;
  v143 = a1;
  v116 = sub_264614020();
  sub_264785464();
  v45 = a1;
  sub_2646113A4(v16);
  v115 = *MEMORY[0x277CDF3D0];
  v46 = v10[13];
  v113 = v10 + 13;
  v114 = v46;
  v47 = v14;
  v48 = v14;
  v49 = v9;
  v107 = v9;
  v46(v48);
  v106 = v16;
  v50 = v47;
  v109 = v47;
  LOBYTE(v47) = sub_264783F64();
  v51 = v10[1];
  v108 = v10 + 1;
  v112 = v51;
  v51(v50, v49);
  v51(v16, v49);
  v52 = objc_opt_self();
  v53 = &selRef_tertiarySystemBackgroundColor;
  if (v47)
  {
    v53 = &selRef_systemGroupedBackgroundColor;
  }

  v54 = [v52 *v53];
  v144 = sub_264785134();
  v55 = sub_2647853C4();
  v56 = *(v137 + 32);
  v137 += 32;
  v111 = v56;
  v56(v26, v21, v127);
  v57 = v126;
  *&v26[*(v126 + 36)] = v55;
  v58 = v45;
  v59 = v130;
  sub_264614074(v45, v130);
  v60 = (*(v117 + 80) + 16) & ~*(v117 + 80);
  v61 = swift_allocObject();
  sub_2646140DC(v59, v61 + v60);
  v62 = sub_26461414C();
  v104 = v62;
  sub_264784F14();

  sub_26460CD50(v26, &qword_27FF75AB8, &qword_264788908);
  v63 = v131;
  sub_264784A94();
  v144 = v57;
  v145 = v62;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v65 = v110;
  v66 = v128;
  sub_264784FF4();
  v67 = *(v140 + 8);
  v140 += 8;
  v117 = v67;
  v67(v63, v135);
  v68 = *(v138 + 8);
  v138 += 8;
  v105 = v68;
  v68(v31, v66);
  v69 = v133;
  sub_2647846A4();
  v144 = v66;
  v145 = OpaqueTypeConformance2;
  v103 = swift_getOpaqueTypeConformance2();
  v70 = v129;
  sub_264785024();
  v71 = *(v141 + 8);
  v141 += 8;
  v102 = v71;
  v71(v69, v136);
  v72 = *(v139 + 8);
  v139 += 8;
  v101 = v72;
  v72(v65, v70);
  v142 = v58;
  v73 = v118;
  sub_264785464();
  v74 = v106;
  v75 = v58;
  sub_2646113A4(v106);
  v76 = v109;
  v77 = v107;
  v114(v109, v115, v107);
  LOBYTE(v70) = sub_264783F64();
  v78 = v76;
  v79 = v112;
  v112(v78, v77);
  v79(v74, v77);
  v80 = objc_opt_self();
  v81 = &selRef_tertiarySystemBackgroundColor;
  if (v70)
  {
    v81 = &selRef_systemGroupedBackgroundColor;
  }

  v82 = [v80 *v81];
  v144 = sub_264785134();
  v83 = sub_2647853C4();
  v84 = v123;
  v111(v123, v73, v127);
  *(v84 + *(v126 + 36)) = v83;
  v85 = v130;
  sub_264614074(v75, v130);
  v86 = swift_allocObject();
  sub_2646140DC(v85, v86 + v60);
  v87 = v122;
  sub_264784F14();

  sub_26460CD50(v84, &qword_27FF75AB8, &qword_264788908);
  v88 = v131;
  sub_264784A94();
  v89 = v120;
  v90 = v128;
  sub_264784FF4();
  v117(v88, v135);
  v105(v87, v90);
  v91 = v133;
  sub_2647846A4();
  v92 = v119;
  v93 = v129;
  sub_264785024();
  v102(v91, v136);
  v101(v89, v93);
  v94 = v132;
  v95 = v121;
  sub_264614450(v132, v121);
  v96 = v124;
  sub_264614450(v92, v124);
  v97 = v125;
  sub_264614450(v95, v125);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B00, &unk_264788930);
  sub_264614450(v96, v97 + *(v98 + 48));
  sub_26460CD50(v92, &qword_27FF75AD0, &qword_264788920);
  sub_26460CD50(v94, &qword_27FF75AD0, &qword_264788920);
  sub_26460CD50(v96, &qword_27FF75AD0, &qword_264788920);
  return sub_26460CD50(v95, &qword_27FF75AD0, &qword_264788920);
}

uint64_t sub_264612978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_264783B94();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_264785704();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = objc_opt_self();
  v10 = [v9 bundleForClass_];
  sub_264783B84();
  v11 = sub_264785754();
  v13 = v12;
  sub_264785694();
  v14 = [v9 bundleForClass_];
  sub_264783B84();
  v15 = sub_264785754();
  v17 = v16;
  v18 = (a1 + *(type metadata accessor for DataSharingSelectionList() + 20));
  v21 = *v18;
  v22 = *(v18 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B08, &qword_264791CA0);
  result = sub_2647852F4();
  strcpy(a2, "location.fill");
  *(a2 + 14) = -4864;
  *(a2 + 16) = v11;
  *(a2 + 24) = v13;
  *(a2 + 32) = v15;
  *(a2 + 40) = v17;
  *(a2 + 48) = v20 == 2;
  return result;
}

uint64_t sub_264612BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_264783B94();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_264785704();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_264785694();
  sub_26460EC78();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = objc_opt_self();
  v10 = [v9 bundleForClass_];
  sub_264783B84();
  v11 = sub_264785754();
  v13 = v12;
  sub_264785694();
  v14 = [v9 bundleForClass_];
  sub_264783B84();
  v15 = sub_264785754();
  v17 = v16;
  v18 = (a1 + *(type metadata accessor for DataSharingSelectionList() + 20));
  v21 = *v18;
  v22 = *(v18 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B08, &qword_264791CA0);
  result = sub_2647852F4();
  *a2 = 0x6574756F72;
  *(a2 + 8) = 0xE500000000000000;
  *(a2 + 16) = v11;
  *(a2 + 24) = v13;
  *(a2 + 32) = v15;
  *(a2 + 40) = v17;
  *(a2 + 48) = v20 == 1;
  return result;
}

uint64_t sub_264612DF8(uint64_t a1, uint64_t a2, char a3)
{
  v5 = type metadata accessor for DataSharingSelectionList();
  v6 = (a1 + *(v5 + 20));
  v11 = *v6;
  v12 = *(v6 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B08, &qword_264791CA0);
  sub_264785304();
  v7 = [objc_opt_self() setShareAllLocations_];
  v8 = a1 + *(v5 + 24);
  v9 = *(v8 + 8);
  return (*v8)(v7);
}

uint64_t sub_264612EB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);

  v17 = sub_264785294();
  v16 = sub_264784CD4();
  KeyPath = swift_getKeyPath();
  v15 = sub_264785174();
  v18 = sub_264784714();
  v22 = 1;
  sub_264613108(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v24, __src, 0x120uLL);
  sub_26460CCE8(__dst, v19, &qword_27FF75A88, &qword_2647888E0);
  sub_26460CD50(v24, &qword_27FF75A88, &qword_2647888E0);
  memcpy(&v21[7], __dst, 0x120uLL);
  v7 = v22;
  v8 = *(a1 + 48);
  v14 = sub_264785274();
  v9 = sub_264784D34();
  v10 = swift_getKeyPath();
  if (v8)
  {
    v11 = sub_264785174();
  }

  else
  {
    v11 = sub_264785184();
  }

  v12 = v11;
  v19[0] = v18;
  v19[1] = 0;
  LOBYTE(v19[2]) = v7;
  memcpy(&v19[2] + 1, v21, 0x127uLL);
  *a2 = v17;
  a2[1] = KeyPath;
  a2[2] = v16;
  a2[3] = v15;
  memcpy(a2 + 4, v19, 0x138uLL);
  a2[43] = v14;
  a2[44] = v10;
  a2[45] = v9;
  a2[46] = v12;

  sub_26460CCE8(v19, __src, &qword_27FF75A90, &qword_2647888E8);
  *__src = v18;
  *&__src[8] = 0;
  __src[16] = v7;
  memcpy(&__src[17], v21, 0x127uLL);
  sub_26460CD50(__src, &qword_27FF75A90, &qword_2647888E8);
}

uint64_t sub_264613108@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v3 = *(a1 + 24);
  v72 = *(a1 + 16);
  v73 = v3;
  sub_264613FC4();

  v4 = sub_264784E44();
  v6 = v5;
  v8 = v7;
  v9 = sub_264784E14();
  v31 = v10;
  v32 = v9;
  LOBYTE(v3) = v11;
  v33 = v12;
  sub_26460ECC4(v4, v6, v8 & 1);

  sub_264785514();
  sub_264784314();
  v30 = v3 & 1;
  v94 = v3 & 1;
  v13 = *(v2 + 40);
  v72 = *(v2 + 32);
  v73 = v13;

  v14 = sub_264784E44();
  v16 = v15;
  LOBYTE(v2) = v17;
  LODWORD(v72) = sub_2647849C4();
  v18 = sub_264784DF4();
  v20 = v19;
  v22 = v21;
  sub_26460ECC4(v14, v16, v2 & 1);

  sub_264784D74();
  v23 = sub_264784E24();
  v25 = v24;
  LOBYTE(v16) = v26;
  v29 = v27;

  sub_26460ECC4(v18, v20, v22 & 1);

  sub_264785514();
  sub_264784314();
  *&v43 = v32;
  *(&v43 + 1) = v31;
  LOBYTE(v44) = v30;
  *(&v44 + 1) = *v93;
  DWORD1(v44) = *&v93[3];
  *(&v44 + 1) = v33;
  v49 = v90;
  v50 = v91;
  v51 = v92;
  v45 = v86;
  v46 = v87;
  v47 = v88;
  v48 = v89;
  __src[6] = v90;
  __src[7] = v91;
  __src[2] = v86;
  __src[3] = v87;
  __src[4] = v88;
  __src[5] = v89;
  __src[0] = v43;
  __src[1] = v44;
  *&v52 = v23;
  *(&v52 + 1) = v25;
  LOBYTE(v53) = v16 & 1;
  *(&v53 + 1) = *v84;
  DWORD1(v53) = *&v84[3];
  *(&v53 + 1) = v29;
  v58 = v40;
  v59 = v41;
  v60 = v42;
  v54 = v36;
  v55 = v37;
  v56 = v38;
  v57 = v39;
  __src[12] = v37;
  __src[13] = v38;
  __src[10] = v53;
  __src[11] = v36;
  __src[14] = v39;
  __src[15] = v40;
  __src[16] = v41;
  __src[17] = v42;
  v85 = v16 & 1;
  __src[8] = v92;
  __src[9] = v52;
  memcpy(a2, __src, 0x120uLL);
  v61[0] = v23;
  v61[1] = v25;
  v62 = v16 & 1;
  *v63 = *v84;
  *&v63[3] = *&v84[3];
  v64 = v29;
  v69 = v40;
  v70 = v41;
  v71 = v42;
  v65 = v36;
  v66 = v37;
  v67 = v38;
  v68 = v39;
  sub_26460CCE8(&v43, &v72, &qword_27FF75AA0, &qword_2647888F0);
  sub_26460CCE8(&v52, &v72, &qword_27FF75AA0, &qword_2647888F0);
  sub_26460CD50(v61, &qword_27FF75AA0, &qword_2647888F0);
  v72 = v32;
  v73 = v31;
  v74 = v30;
  *v75 = *v93;
  *&v75[3] = *&v93[3];
  v76 = v33;
  v81 = v90;
  v82 = v91;
  v83 = v92;
  v77 = v86;
  v78 = v87;
  v79 = v88;
  v80 = v89;
  return sub_26460CD50(&v72, &qword_27FF75AA0, &qword_2647888F0);
}

void *sub_264613510@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v11[0] = *v1;
  v11[1] = v3;
  v11[2] = *(v1 + 32);
  v12 = *(v1 + 48);
  v4 = sub_2647845C4();
  v10 = 1;
  sub_264612EB0(v11, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v14, __src, sizeof(v14));
  sub_26460CCE8(__dst, v7, &qword_27FF75A80, &qword_2647888A8);
  sub_26460CD50(v14, &qword_27FF75A80, &qword_2647888A8);
  memcpy(&v9[7], __dst, 0x178uLL);
  v5 = v10;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  return memcpy((a1 + 17), v9, 0x17FuLL);
}

uint64_t sub_26461364C(uint64_t a1)
{
  v2 = sub_264783F74();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2647843B4();
}

uint64_t type metadata accessor for DataSharingSelectionList()
{
  result = qword_27FF75A60;
  if (!qword_27FF75A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2646137B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75AA8, &qword_2647888F8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - v4;
  sub_26460CCE8(a1, &v7 - v4, &qword_27FF75AA8, &qword_2647888F8);
  return MEMORY[0x26673E1A0](v5);
}

unint64_t sub_264613860()
{
  result = qword_27FF75A30;
  if (!qword_27FF75A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF759F8, &qword_264788730);
    sub_2646138EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75A30);
  }

  return result;
}

unint64_t sub_2646138EC()
{
  result = qword_27FF75A38;
  if (!qword_27FF75A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75A20, &qword_264788778);
    sub_2646139A4();
    sub_26460CDF0(&qword_27FF75A58, &qword_27FF75A28, &qword_264788780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75A38);
  }

  return result;
}

unint64_t sub_2646139A4()
{
  result = qword_27FF75A40;
  if (!qword_27FF75A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75A18, &qword_264788740);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF759F0, &qword_264788728);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF759E8, &qword_264788720);
    sub_264784954();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF759E0, &qword_264788718);
    sub_26460CDF0(&qword_27FF75A10, &qword_27FF759E0, &qword_264788718);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_26460CDF0(&qword_27FF75A48, &qword_27FF75A50, &qword_264788788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75A40);
  }

  return result;
}

uint64_t sub_264613B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75960, &unk_264790C60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_264613C78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75960, &unk_264790C60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_264613D3C()
{
  sub_26460EA3C();
  if (v0 <= 0x3F)
  {
    sub_264613DD8();
    if (v1 <= 0x3F)
    {
      sub_264613E28();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_264613DD8()
{
  if (!qword_27FF75A70)
  {
    v0 = sub_264785324();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF75A70);
    }
  }
}

unint64_t sub_264613E28()
{
  result = qword_27FF75A78;
  if (!qword_27FF75A78)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27FF75A78);
  }

  return result;
}

uint64_t sub_264613E78()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF759F8, &qword_264788730);
  sub_264613860();
  return swift_getOpaqueTypeConformance2();
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_264613EF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_264613F40(uint64_t result, int a2, int a3)
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
      *(result + 49) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_264613FC4()
{
  result = qword_27FF75A98;
  if (!qword_27FF75A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75A98);
  }

  return result;
}

unint64_t sub_264614020()
{
  result = qword_27FF75AD8;
  if (!qword_27FF75AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75AD8);
  }

  return result;
}

uint64_t sub_264614074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataSharingSelectionList();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2646140DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataSharingSelectionList();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26461414C()
{
  result = qword_27FF75AE0;
  if (!qword_27FF75AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75AB8, &qword_264788908);
    sub_264614204();
    sub_26460CDF0(&qword_27FF75AF0, &qword_27FF75AF8, &qword_264788928);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75AE0);
  }

  return result;
}

unint64_t sub_264614204()
{
  result = qword_27FF75AE8;
  if (!qword_27FF75AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF75AB0, &qword_264788900);
    sub_264614020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF75AE8);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for DataSharingSelectionList();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF759A8, &qword_264788590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_264783F74();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + *(v1 + 20) + 8);

  v9 = *(v5 + *(v1 + 24) + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_264614450(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75AD0, &qword_264788920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_264614574(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_2646145A4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_2646145D0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_2646146C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void *sub_264614718()
{
  v0 = [objc_opt_self() defaultManager];
  v1 = type metadata accessor for SessionViewModel(0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  result = SessionViewModel.init(sessionManager:)(v0);
  off_27FF75B20 = v4;
  return result;
}

uint64_t static SessionViewModel.shared.getter()
{
  if (qword_27FF74FC0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2646147DC()
{
  result = MKDefaultCoordinateRegion();
  *&xmmword_27FF80718 = v1;
  *(&xmmword_27FF80718 + 1) = v2;
  qword_27FF80728 = v3;
  unk_27FF80730 = v4;
  return result;
}

void *SessionViewModel.selfContact.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void SessionViewModel.selfContact.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t SessionViewModel.mostLikelySessionDestinationSource.getter()
{
  v1 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_mostLikelySessionDestinationSource;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SessionViewModel.mostLikelySessionDestinationSource.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_mostLikelySessionDestinationSource;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SessionViewModel.sessionStartEntryType.getter()
{
  v1 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_sessionStartEntryType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SessionViewModel.sessionStartEntryType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_sessionStartEntryType;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_264614A6C();
}

uint64_t sub_264614A6C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  swift_retain_n();
  v8 = sub_264783E14();
  v9 = sub_2647859F4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315650;
    v18 = v1;

    v12 = sub_264785764();
    v14 = sub_2646DF234(v12, v13, &v19);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264793F40, &v19);
    *(v10 + 22) = 2048;
    v15 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_sessionStartEntryType;
    swift_beginAccess();
    v16 = *(v1 + v15);

    *(v10 + 24) = v16;

    _os_log_impl(&dword_264605000, v8, v9, "%s,%s: Session start entry type changed to %lu", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v10, -1, -1);
  }

  else
  {
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t (*SessionViewModel.sessionStartEntryType.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_264614D44;
}

uint64_t sub_264614D5C()
{
  v1 = *v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v7 = sub_264783E14();
  v8 = sub_2647859F4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v0;
    v19 = v10;
    *v9 = 136315650;

    v11 = sub_264785764();
    v13 = sub_2646DF234(v11, v12, &v19);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2646DF234(0xD000000000000013, 0x8000000264793F60, &v19);
    *(v9 + 22) = 2080;
    LOBYTE(v18) = *(v0 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCellularActivated);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EC8, &qword_264789870);
    v14 = sub_264785B34();
    v16 = sub_2646DF234(v14, v15, &v19);

    *(v9 + 24) = v16;
    _os_log_impl(&dword_264605000, v7, v8, "%s,%s: Cellular enabled changed to %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v10, -1, -1);
    MEMORY[0x266740650](v9, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t SessionViewModel.__allocating_init(sessionManager:)(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  SessionViewModel.init(sessionManager:)(a1);
  return v5;
}

void *SessionViewModel.init(sessionManager:)(void *a1)
{
  v2 = v1;
  v159 = a1;
  v130[1] = *v1;
  v3 = sub_264785594();
  v171 = *(v3 - 8);
  v172 = v3;
  v4 = *(v171 + 64);
  MEMORY[0x28223BE20](v3);
  v169 = v130 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_2647855C4();
  v168 = *(v170 - 8);
  v6 = *(v168 + 64);
  MEMORY[0x28223BE20](v170);
  v167 = v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2647855A4();
  v165 = *(v8 - 8);
  v166 = v8;
  v9 = *(v165 + 64);
  MEMORY[0x28223BE20](v8);
  v164 = v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_264783AF4();
  v176 = *(v11 - 8);
  v12 = *(v176 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v163 = v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = v14;
  MEMORY[0x28223BE20](v13);
  v175 = v130 - v15;
  v161 = sub_264783E24();
  v160 = *(v161 - 8);
  v16 = v160[8];
  v17 = MEMORY[0x28223BE20](v161);
  v173 = v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = v130 - v19;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B28, &unk_264788A00);
  v157 = *(v158 - 8);
  v21 = *(v157 + 64);
  MEMORY[0x28223BE20](v158);
  v156 = v130 - v22;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B30, &qword_26478FF50);
  v154 = *(v155 - 8);
  v23 = *(v154 + 64);
  MEMORY[0x28223BE20](v155);
  v153 = v130 - v24;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B38, &qword_264788A10);
  v151 = *(v152 - 8);
  v25 = *(v151 + 64);
  MEMORY[0x28223BE20](v152);
  v150 = v130 - v26;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B40, &qword_264788A18);
  v148 = *(v149 - 8);
  v27 = *(v148 + 64);
  MEMORY[0x28223BE20](v149);
  v147 = v130 - v28;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B48, &qword_264788A20);
  v145 = *(v146 - 8);
  v29 = *(v145 + 64);
  MEMORY[0x28223BE20](v146);
  v144 = v130 - v30;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  v31 = *(v132 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v132);
  v34 = v130 - v33;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B58, &unk_264788A30);
  v141 = *(v142 - 8);
  v35 = *(v141 + 64);
  MEMORY[0x28223BE20](v142);
  v140 = v130 - v36;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  v138 = *(v139 - 8);
  v37 = *(v138 + 64);
  MEMORY[0x28223BE20](v139);
  v137 = v130 - v38;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B68, &qword_264788A40);
  v135 = *(v136 - 8);
  v39 = *(v135 + 64);
  MEMORY[0x28223BE20](v136);
  v134 = v130 - v40;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B70, &qword_264788A48);
  v41 = *(v133 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v133);
  v44 = v130 - v43;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B78, &qword_264788A50);
  v45 = *(v131 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v131);
  v48 = v130 - v47;
  v2[3] = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  v2[4] = [objc_allocWithZone(MEMORY[0x277D4AA90]) init];
  v49 = MEMORY[0x277D84FA0];
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_264785C14())
    {
      v49 = sub_26476D298(MEMORY[0x277D84F90]);
    }

    else
    {
      v49 = MEMORY[0x277D84FA0];
    }
  }

  v143 = v20;
  v2[5] = v49;
  v2[6] = 0;
  v50 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsID;
  v51 = sub_264783B64();
  (*(*(v51 - 8) + 56))(v2 + v50, 1, 1, v51);
  *(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_mostLikelySessionDestinationSource) = 0;
  v52 = v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchInitiatorEligibilityLatency;
  *v52 = 0;
  v52[8] = 1;
  v53 = v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchReceiverEligibilityLatency;
  *v53 = 0;
  v53[8] = 1;
  v54 = v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchLikelyReceiverHandlesLatency;
  *v54 = 0;
  v54[8] = 1;
  *(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchLikelyReceiverHandlesStatus) = 0;
  v55 = v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelyReceiverHandlesLatency;
  *v55 = 0;
  v55[8] = 1;
  *(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelyReceiverHandlesStatus) = 0;
  v56 = v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsLatency;
  *v56 = 0;
  v56[8] = 1;
  *(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsStatus) = 0;
  v57 = *(v176 + 56);
  v57(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchInitiatorEligibilityStartTime, 1, 1, v11);
  v57(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchReceiverEligibilityStartTime, 1, 1, v11);
  v57(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchLikelyReceiverHandlesStartTime, 1, 1, v11);
  v57(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelyReceiverHandlesStartTime, 1, 1, v11);
  v57(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_fetchMostLikelySessionDestinationsStartTime, 1, 1, v11);
  v174 = v11;
  v57(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_lastSuggestionConversionEventTime, 1, 1, v11);
  *(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_sessionStartEntryType) = 0;
  *(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCellularActivated) = 2;
  *(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isPairedDeviceNearby) = 2;
  *(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_suggestedSessionConfiguration) = 0;
  *(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_workoutSessionConfiguration) = 0;
  v58 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__localSessionState;
  aBlock = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C10, &qword_264788A58);
  sub_264783E94();
  (*(v45 + 32))(v2 + v58, v48, v131);
  v59 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__sessionState;
  aBlock = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C20, &qword_264788A60);
  sub_264783E94();
  (*(v41 + 32))(v2 + v59, v44, v133);
  v60 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__recipientHandles;
  aBlock = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C30, &qword_264788A68);
  v61 = v134;
  sub_264783E94();
  (*(v135 + 32))(v2 + v60, v61, v136);
  v62 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__groupID;
  aBlock = 0;
  v178 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C40, &qword_264788A70);
  v63 = v137;
  sub_264783E94();
  (*(v138 + 32))(v2 + v62, v63, v139);
  v64 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__sessionInitializationInfo;
  aBlock = 0;
  v178 = 0;
  v179 = 0;
  v65 = v140;
  sub_264783E94();
  (*(v141 + 32))(v2 + v64, v65, v142);
  v66 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__isInitializing;
  LOBYTE(aBlock) = 0;
  sub_264783E94();
  v67 = *(v31 + 32);
  v68 = v132;
  v67(v2 + v66, v34, v132);
  v69 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__refreshingEligibility;
  LOBYTE(aBlock) = 0;
  sub_264783E94();
  v67(v2 + v69, v34, v68);
  v70 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__refreshingInitiatorEligibility;
  LOBYTE(aBlock) = 0;
  sub_264783E94();
  v67(v2 + v70, v34, v68);
  v71 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__refreshingReceiverEligibility;
  LOBYTE(aBlock) = 0;
  sub_264783E94();
  v67(v2 + v71, v34, v68);
  v72 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__showContactPicker;
  LOBYTE(aBlock) = 0;
  sub_264783E94();
  v67(v2 + v72, v34, v68);
  *(v2 + OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_isCancelling) = 0;
  v73 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__endLocation;
  aBlock = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C80, &qword_264788A78);
  v74 = v144;
  sub_264783E94();
  (*(v145 + 32))(v2 + v73, v74, v146);
  v75 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__candidateSessionDestinations;
  aBlock = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C90, &qword_264788A80);
  v76 = v147;
  sub_264783E94();
  (*(v148 + 32))(v2 + v75, v76, v149);
  v77 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__mostLikelyReceiverHandles;
  aBlock = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CA0, &qword_264788A88);
  v78 = v150;
  sub_264783E94();
  (*(v151 + 32))(v2 + v77, v78, v152);
  v79 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__expectedTravelTime;
  aBlock = 0xBFF0000000000000;
  v80 = v153;
  sub_264783E94();
  (*(v154 + 32))(v2 + v79, v80, v155);
  v81 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__isActiveDevice;
  LOBYTE(aBlock) = 0;
  sub_264783E94();
  v67(v2 + v81, v34, v68);
  v82 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__isProcessingRemoteCommand;
  LOBYTE(aBlock) = 0;
  sub_264783E94();
  v67(v2 + v82, v34, v68);
  v83 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__userSessionConfiguration;
  aBlock = sub_26471B978();
  type metadata accessor for UserSessionConfiguration();
  v84 = v156;
  sub_264783E94();
  (*(v157 + 32))(v2 + v83, v84, v158);
  v85 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__fetchedMostLikelySessionDestinations;
  LOBYTE(aBlock) = 0;
  sub_264783E94();
  v67(v2 + v85, v34, v68);
  v86 = v143;
  sub_264783DF4();
  v87 = sub_264783E14();
  v88 = sub_2647859F4();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 0;
    _os_log_impl(&dword_264605000, v87, v88, "Initiating SessionViewModel", v89, 2u);
    MEMORY[0x266740650](v89, -1, -1);
  }

  v90 = v160[1];
  v91 = v161;
  v90(v86, v161);
  v92 = v159;
  v2[2] = v159;
  v93 = objc_opt_self();
  v94 = v92;
  v95 = [v93 currentDevice];
  v96 = [v95 userInterfaceIdiom];

  swift_beginAccess();
  v183 = v96;
  type metadata accessor for UIUserInterfaceIdiom(0);
  sub_264783E94();
  swift_endAccess();
  v97 = swift_allocObject();
  swift_weakInit();
  v181 = sub_264654F08;
  v182 = v97;
  aBlock = MEMORY[0x277D85DD0];
  v178 = 1107296256;
  v179 = sub_26461910C;
  v180 = &block_descriptor;
  v98 = _Block_copy(&aBlock);

  v160 = v94;
  [v94 startMonitoringSessionStateWithHandler_];
  _Block_release(v98);
  v99 = [objc_opt_self() now];
  sub_264783AC4();

  v100 = v173;
  sub_264783DF4();

  v101 = sub_264783E14();
  v102 = sub_2647859F4();

  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    aBlock = v104;
    *v103 = 136315394;
    v183 = v2;

    v105 = sub_264785764();
    v107 = sub_2646DF234(v105, v106, &aBlock);

    *(v103 + 4) = v107;
    *(v103 + 12) = 2080;
    *(v103 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264793790, &aBlock);
    _os_log_impl(&dword_264605000, v101, v102, "%s, %s: Calling fetchCurrentSessionState", v103, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v104, -1, -1);
    MEMORY[0x266740650](v103, -1, -1);

    v108 = v173;
  }

  else
  {

    v108 = v100;
  }

  v90(v108, v91);
  v109 = v174;
  v110 = v176;
  v111 = swift_allocObject();
  swift_weakInit();
  v112 = v163;
  (*(v110 + 16))(v163, v175, v109);
  v113 = (*(v110 + 80) + 24) & ~*(v110 + 80);
  v114 = swift_allocObject();
  *(v114 + 16) = v111;
  (*(v110 + 32))(v114 + v113, v112, v109);
  v181 = sub_264654FEC;
  v182 = v114;
  aBlock = MEMORY[0x277D85DD0];
  v178 = 1107296256;
  v179 = sub_26461910C;
  v180 = &block_descriptor_7;
  v115 = _Block_copy(&aBlock);

  v116 = v160;
  [v160 fetchCurrentSessionStateWithHandler_];
  _Block_release(v115);
  v117 = swift_allocObject();
  swift_weakInit();
  v181 = sub_264655078;
  v182 = v117;
  aBlock = MEMORY[0x277D85DD0];
  v178 = 1107296256;
  v179 = sub_26465A0C0;
  v180 = &block_descriptor_11;
  v118 = _Block_copy(&aBlock);

  [v116 startMonitoringLocalSessionStateWithHandler_];
  _Block_release(v118);
  v119 = swift_allocObject();
  swift_weakInit();

  v181 = sub_2646550C0;
  v182 = v119;
  aBlock = MEMORY[0x277D85DD0];
  v178 = 1107296256;
  v179 = sub_26465A0C0;
  v180 = &block_descriptor_15;
  v120 = _Block_copy(&aBlock);

  [v116 fetchCurrentLocalSessionStateWithHandler_];
  _Block_release(v120);
  [v2[3] setAllowedUnits_];
  [v2[3] setUnitsStyle_];
  [v2[3] setZeroFormattingBehavior_];
  sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
  v122 = v165;
  v121 = v166;
  v123 = v164;
  (*(v165 + 104))(v164, *MEMORY[0x277D851C0], v166);
  v124 = sub_264785A64();
  (*(v122 + 8))(v123, v121);
  v181 = sub_264655108;
  v182 = v2;
  aBlock = MEMORY[0x277D85DD0];
  v178 = 1107296256;
  v179 = sub_264659F60;
  v180 = &block_descriptor_18;
  v125 = _Block_copy(&aBlock);

  v126 = v167;
  sub_2647855B4();
  v183 = MEMORY[0x277D84F90];
  sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
  sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
  v127 = v169;
  v128 = v172;
  sub_264785BD4();
  MEMORY[0x26673F780](0, v126, v127, v125);
  _Block_release(v125);

  (*(v171 + 8))(v127, v128);
  (*(v168 + 8))(v126, v170);
  (*(v176 + 8))(v175, v174);

  return v2;
}

uint64_t SessionViewModel.deviceClass.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  return sub_2646278E8();
}

uint64_t sub_2646169EC(void *a1, int a2, void *a3)
{
  v83 = a2;
  v85 = a1;
  v82 = sub_264785594();
  v81 = *(v82 - 8);
  v4 = *(v81 + 64);
  MEMORY[0x28223BE20](v82);
  v79 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_2647855C4();
  v78 = *(v80 - 8);
  v6 = *(v78 + 64);
  MEMORY[0x28223BE20](v80);
  v77 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264783E24();
  v86 = *(v8 - 8);
  v9 = *(v86 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v71 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v71 - v16;
  sub_264783DF4();

  v18 = sub_264783E14();
  v19 = sub_2647859F4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v84 = v15;
    v21 = v20;
    v76 = swift_slowAlloc();
    aBlock[0] = v76;
    *v21 = 136315394;
    swift_beginAccess();
    aBlock[6] = swift_weakLoadStrong();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75ED0, &qword_264789878);
    v22 = sub_264785764();
    v24 = sub_2646DF234(v22, v23, aBlock);
    v25 = v86;

    *(v21 + 4) = v24;
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264793790, aBlock);
    _os_log_impl(&dword_264605000, v18, v19, "%s,%s: startMonitoringSessionState starting", v21, 0x16u);
    v26 = v76;
    swift_arrayDestroy();
    MEMORY[0x266740650](v26, -1, -1);
    v27 = v21;
    v15 = v84;
    MEMORY[0x266740650](v27, -1, -1);

    v28 = v25;
  }

  else
  {

    v28 = v86;
  }

  v29 = *(v28 + 8);
  v29(v17, v8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v31 = result;
    sub_264783DF4();

    v32 = v85;
    v33 = v85;
    v34 = a3;
    v35 = v15;
    v36 = sub_264783E14();
    v37 = sub_2647859F4();

    v38 = os_log_type_enabled(v36, v37);
    v74 = v33;
    if (v38)
    {
      v84 = v35;
      v76 = v29;
      v72 = v12;
      v73 = v8;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v87 = v31;
      aBlock[0] = v71;
      *v39 = 136316163;
      type metadata accessor for SessionViewModel(0);

      v41 = sub_264785764();
      v43 = sub_2646DF234(v41, v42, aBlock);

      *(v39 + 4) = v43;
      v32 = v85;
      v75 = a3;
      *(v39 + 12) = 2080;
      *(v39 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264793790, aBlock);
      *(v39 + 22) = 2117;
      *(v39 + 24) = v33;
      *v40 = v32;
      *(v39 + 32) = 1024;
      *(v39 + 34) = v83 & 1;
      *(v39 + 38) = 2080;
      if (v75)
      {
        swift_getErrorValue();
        v44 = v33;
        v32 = v85;
        v45 = sub_264785EF4();
        v47 = v46;
      }

      else
      {
        v61 = v33;
        v47 = 0xE300000000000000;
        v45 = 7104878;
      }

      v62 = sub_2646DF234(v45, v47, aBlock);

      *(v39 + 40) = v62;
      _os_log_impl(&dword_264605000, v36, v37, "%s,%s: startMonitoringSessionState update, state, %{sensitive}@, isActiveDevice, %{BOOL}d, error, %s", v39, 0x30u);
      sub_26460CD50(v40, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v40, -1, -1);
      v63 = v71;
      swift_arrayDestroy();
      MEMORY[0x266740650](v63, -1, -1);
      MEMORY[0x266740650](v39, -1, -1);

      v8 = v73;
      v29 = v76;
      v76(v84, v73);
      a3 = v75;
      v12 = v72;
      if (!v75)
      {
        goto LABEL_14;
      }
    }

    else
    {

      v29(v35, v8);
      if (!a3)
      {
LABEL_14:
        sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
        v64 = sub_264785A44();
        v65 = swift_allocObject();
        *(v65 + 16) = v31;
        *(v65 + 24) = v32;
        *(v65 + 32) = v83 & 1;
        aBlock[4] = sub_264659E14;
        aBlock[5] = v65;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_264659F60;
        aBlock[3] = &block_descriptor_651;
        v66 = _Block_copy(aBlock);

        v67 = v74;

        v68 = v77;
        sub_2647855B4();
        aBlock[0] = MEMORY[0x277D84F90];
        sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
        sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
        v69 = v79;
        v70 = v82;
        sub_264785BD4();
        MEMORY[0x26673F780](0, v68, v69, v66);
        _Block_release(v66);

        (*(v81 + 8))(v69, v70);
        return (*(v78 + 8))(v68, v80);
      }
    }

    v48 = a3;
    sub_264783DF4();

    v49 = a3;
    v50 = sub_264783E14();
    v51 = sub_2647859D4();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v76 = v29;
      v54 = v53;
      v87 = v31;
      aBlock[0] = v53;
      *v52 = 136315650;
      type metadata accessor for SessionViewModel(0);

      v55 = sub_264785764();
      v57 = sub_2646DF234(v55, v56, aBlock);

      *(v52 + 4) = v57;
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264793790, aBlock);
      *(v52 + 22) = 2080;
      swift_getErrorValue();
      v58 = sub_264785EF4();
      v60 = sub_2646DF234(v58, v59, aBlock);

      *(v52 + 24) = v60;
      _os_log_impl(&dword_264605000, v50, v51, "%s, %s: startMonitoringSessionState, error, %s", v52, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v54, -1, -1);
      MEMORY[0x266740650](v52, -1, -1);

      return (v76)(v12, v8);
    }

    else
    {

      return (v29)(v12, v8);
    }
  }

  return result;
}

uint64_t sub_2646174E8(uint64_t a1, void *a2, int a3)
{
  sub_264617568(a2, a3);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  return sub_264628950();
}

void sub_264617568(void *a1, int a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76970, &qword_264789300);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v220 = &v217 - v9;
  v238 = sub_264783B64();
  v231 = *(v238 - 8);
  v10 = *(v231 + 64);
  MEMORY[0x28223BE20](v238);
  v221 = &v217 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75ED8, &qword_264789880);
  v12 = *(*(v228 - 8) + 64);
  MEMORY[0x28223BE20](v228);
  v232 = &v217 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v225 = &v217 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v230 = &v217 - v19;
  MEMORY[0x28223BE20](v18);
  v229 = &v217 - v20;
  v21 = sub_264783E24();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v235 = &v217 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v223 = &v217 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v222 = &v217 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v224 = &v217 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v226 = &v217 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v227 = &v217 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v233 = &v217 - v37;
  MEMORY[0x28223BE20](v36);
  v39 = &v217 - v38;
  sub_264783DF4();
  v40 = a1;

  v41 = sub_264783E14();
  v42 = sub_2647859F4();

  v43 = os_log_type_enabled(v41, v42);
  v237 = a2;
  v240 = v22;
  v236 = v6;
  if (v43)
  {
    LODWORD(v219) = v42;
    v234 = v21;
    v239 = a1;
    v44 = swift_slowAlloc();
    v218 = swift_slowAlloc();
    v244[0] = v218;
    *v44 = 136316675;
    v242 = v3;

    v45 = sub_264785764();
    v47 = sub_2646DF234(v45, v46, v244);

    *(v44 + 4) = v47;
    *(v44 + 12) = 2080;
    *(v44 + 14) = sub_2646DF234(0xD000000000000029, 0x8000000264794620, v244);
    *(v44 + 22) = 1024;
    *(v44 + 24) = a2 & 1;
    *(v44 + 28) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    v48 = v3;
    sub_264783ED4();

    v49 = v242;
    if (v242)
    {
      v50 = [v242 sessionState];
    }

    else
    {
      v50 = 0;
    }

    v242 = v50;
    v243 = v49 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D90, &qword_264789368);
    v52 = sub_264785764();
    v54 = sub_2646DF234(v52, v53, v244);

    *(v44 + 30) = v54;
    *(v44 + 38) = 2080;
    v55 = v239;
    if (v239)
    {
      v56 = [v40 sessionState];
    }

    else
    {
      v56 = 0;
    }

    v242 = v56;
    v243 = v55 == 0;
    v57 = sub_264785764();
    v59 = sub_2646DF234(v57, v58, v244);

    *(v44 + 40) = v59;
    *(v44 + 48) = 2085;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C20, &qword_264788A60);
    v60 = sub_264785764();
    v62 = sub_2646DF234(v60, v61, v244);

    *(v44 + 50) = v62;
    *(v44 + 58) = 2085;
    a1 = v239;
    v242 = v239;
    v63 = v40;
    v64 = sub_264785764();
    v66 = sub_2646DF234(v64, v65, v244);

    *(v44 + 60) = v66;
    _os_log_impl(&dword_264605000, v41, v219, "%s, %s: isActiveDevice, %{BOOL}d, (previous) state.sessionState, %s, --> (current/incoming) state.sessionState, %s, \n (previous) state, %{sensitive}s, (current/incoming) state, %{sensitive}s", v44, 0x44u);
    v67 = v218;
    swift_arrayDestroy();
    MEMORY[0x266740650](v67, -1, -1);
    MEMORY[0x266740650](v44, -1, -1);

    v51 = *(v240 + 8);
    v21 = v234;
    v51(v39, v234);
  }

  else
  {
    v48 = v3;

    v51 = *(v22 + 8);
    v51(v39, v21);
  }

  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v68 = v40;
    v69 = v48;
    sub_264783ED4();

    v70 = v242;
    if (v242)
    {
      sub_264659B70(0, &qword_27FF75F18, 0x277D4ABB0);
      v71 = v68;
      v72 = sub_264785AE4();

      v73 = v238;
      if (v72)
      {

        v74 = v233;
        sub_264783DF4();

        v75 = v71;
        v76 = sub_264783E14();
        v77 = sub_2647859F4();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v79 = a1;
          v80 = v69;
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v234 = v21;
          v83 = v82;
          v242 = v82;
          *v78 = 136315651;
          v244[0] = v80;

          v84 = sub_264785764();
          v86 = v51;
          v87 = sub_2646DF234(v84, v85, &v242);

          *(v78 + 4) = v87;
          *(v78 + 12) = 2080;
          *(v78 + 14) = sub_2646DF234(0xD000000000000029, 0x8000000264794620, &v242);
          *(v78 + 22) = 2117;
          *(v78 + 24) = v75;
          *v81 = v79;
          v88 = v75;
          _os_log_impl(&dword_264605000, v76, v77, "%s,%s: sessionState update ignored, %{sensitive}@", v78, 0x20u);
          sub_26460CD50(v81, &qword_27FF779D0, &qword_26478A9A0);
          MEMORY[0x266740650](v81, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x266740650](v83, -1, -1);
          MEMORY[0x266740650](v78, -1, -1);

          v86(v233, v234);
        }

        else
        {

          v51(v74, v21);
        }

        return;
      }
    }

    else
    {
      v100 = v68;
      v73 = v238;
    }

    v101 = [v68 sessionState];
    if (v101 <= 0xE)
    {
      if (((1 << v101) & 0x5203) != 0)
      {
        goto LABEL_64;
      }

      if (((1 << v101) & 0x194) != 0)
      {
        v239 = a1;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_264783ED4();

        v102 = v242;
        v103 = OBJC_IVAR____TtC15SafetyMonitorUI24UserSessionConfiguration_sessionID;
        swift_beginAccess();
        v104 = v229;
        sub_26460CCE8(v102 + v103, v229, &qword_27FF75CE8, &unk_264788B70);

        v105 = [v68 configuration];
        v219 = v51;
        v235 = v68;
        if (v105)
        {
          v106 = v105;
          v107 = [v105 sessionID];

          v108 = v230;
          sub_264783B44();

          v109 = 0;
        }

        else
        {
          v109 = 1;
          v108 = v230;
        }

        v110 = v231;
        (*(v231 + 56))(v108, v109, 1, v73);
        v111 = *(v228 + 48);
        v112 = v232;
        sub_26460CCE8(v104, v232, &qword_27FF75CE8, &unk_264788B70);
        v113 = v112;
        sub_26460CCE8(v108, v112 + v111, &qword_27FF75CE8, &unk_264788B70);
        v114 = v110;
        v115 = v108;
        v116 = *(v114 + 48);
        if (v116(v113, 1, v73) == 1)
        {
          sub_26460CD50(v115, &qword_27FF75CE8, &unk_264788B70);
          v117 = v232;
          sub_26460CD50(v104, &qword_27FF75CE8, &unk_264788B70);
          v118 = v116(v117 + v111, 1, v73);
          v119 = v235;
          if (v118 == 1)
          {
            sub_26460CD50(v117, &qword_27FF75CE8, &unk_264788B70);
            v120 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
            goto LABEL_37;
          }
        }

        else
        {
          v121 = v225;
          sub_26460CCE8(v113, v225, &qword_27FF75CE8, &unk_264788B70);
          if (v116(v113 + v111, 1, v73) != 1)
          {
            v122 = v121;
            v123 = v231;
            v124 = v221;
            (*(v231 + 32))(v221, v113 + v111, v73);
            sub_264655E3C(&qword_27FF78040, MEMORY[0x277CC95F0]);
            v125 = v113;
            v126 = sub_264785684();
            v127 = *(v123 + 8);
            v127(v124, v73);
            sub_26460CD50(v230, &qword_27FF75CE8, &unk_264788B70);
            sub_26460CD50(v229, &qword_27FF75CE8, &unk_264788B70);
            v127(v122, v73);
            sub_26460CD50(v125, &qword_27FF75CE8, &unk_264788B70);
            v119 = v235;
            v120 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
            if (v126)
            {
LABEL_37:
              swift_getKeyPath();
              swift_getKeyPath();
              sub_264783ED4();

              swift_getKeyPath();
              swift_getKeyPath();
              sub_264783ED4();

              v128 = v244[0];
              if (v244[0])
              {
                if (SessionViewModel.sessionType.getter() == 2)
                {
                  swift_getKeyPath();
                  swift_getKeyPath();
                  v244[0] = v128;

                  v129 = v128;
                  sub_264783EE4();
                  sub_26462513C();
                }

                else
                {
                }
              }
            }

LABEL_46:
            v157 = [v119 v120[91]];
            if (!v157)
            {
              v175 = v224;
              sub_264783DF4();

              v176 = v119;
              v177 = v119;
              v178 = sub_264783E14();
              v179 = sub_2647859D4();

              if (os_log_type_enabled(v178, v179))
              {
                v180 = swift_slowAlloc();
                v181 = swift_slowAlloc();
                v244[0] = v181;
                *v180 = 136315651;
                v241 = v69;

                v182 = sub_264785764();
                v234 = v21;
                v184 = sub_2646DF234(v182, v183, v244);

                *(v180 + 4) = v184;
                *(v180 + 12) = 2080;
                *(v180 + 14) = sub_2646DF234(0xD000000000000029, 0x8000000264794620, v244);
                *(v180 + 22) = 2085;
                v185 = [v177 debugDescription];
                v186 = sub_264785724();
                v188 = v187;

                v189 = sub_2646DF234(v186, v188, v244);

                *(v180 + 24) = v189;
                _os_log_impl(&dword_264605000, v178, v179, "%s, %s: Unable to resolve map item - found nil configuration in sessionState: %{sensitive}s", v180, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x266740650](v181, -1, -1);
                MEMORY[0x266740650](v180, -1, -1);

                v190 = v175;
                v191 = v234;
              }

              else
              {

                v190 = v175;
                v191 = v21;
              }

              v219(v190, v191);
              a1 = v239;
              v68 = v176;
              goto LABEL_64;
            }

            v158 = v157;
            v159 = v227;
            sub_264783DF4();

            v160 = v158;
            v161 = sub_264783E14();
            v162 = sub_2647859F4();

            if (os_log_type_enabled(v161, v162))
            {
              v163 = swift_slowAlloc();
              v164 = v69;
              v165 = swift_slowAlloc();
              v166 = swift_slowAlloc();
              v234 = v21;
              v167 = v166;
              v244[0] = v166;
              *v163 = 136315651;
              v241 = v164;

              v168 = sub_264785764();
              v170 = sub_2646DF234(v168, v169, v244);

              *(v163 + 4) = v170;
              *(v163 + 12) = 2080;
              *(v163 + 14) = sub_2646DF234(0xD000000000000029, 0x8000000264794620, v244);
              *(v163 + 22) = 2117;
              *(v163 + 24) = v160;
              *v165 = v158;
              v171 = v160;
              _os_log_impl(&dword_264605000, v161, v162, "%s,%s: configuration, %{sensitive}@", v163, 0x20u);
              sub_26460CD50(v165, &qword_27FF779D0, &qword_26478A9A0);
              v172 = v165;
              v69 = v164;
              MEMORY[0x266740650](v172, -1, -1);
              swift_arrayDestroy();
              v173 = v167;
              v21 = v234;
              MEMORY[0x266740650](v173, -1, -1);
              MEMORY[0x266740650](v163, -1, -1);

              v174 = v227;
            }

            else
            {

              v174 = v159;
            }

            v192 = v219;
            v219(v174, v21);
            a1 = v239;
            v193 = v226;
            v194 = [v160 sessionType];
            v68 = v235;
            if (v194 != 2)
            {

              goto LABEL_64;
            }

            v195 = [v160 destination];
            if (v195)
            {
              v196 = v195;
              v197 = [v195 destinationMapItem];

              v198 = sub_264783A14();
              v200 = v199;

              sub_26462BC54(v198, v200);
              v201 = v200;
              v68 = v235;
              sub_264655264(v198, v201);
              goto LABEL_64;
            }

            sub_264783DF4();

            v202 = sub_264783E14();
            v203 = sub_2647859E4();

            if (!os_log_type_enabled(v202, v203))
            {

              v192(v193, v21);
              goto LABEL_64;
            }

            v204 = v193;
            v205 = swift_slowAlloc();
            v206 = swift_slowAlloc();
            v244[0] = v206;
            *v205 = 136315394;
            v241 = v69;

            v207 = sub_264785764();
            v209 = sub_2646DF234(v207, v208, v244);

            *(v205 + 4) = v209;
            a1 = v239;
            *(v205 + 12) = 2080;
            *(v205 + 14) = sub_2646DF234(0xD000000000000029, 0x8000000264794620, v244);
            _os_log_impl(&dword_264605000, v202, v203, "%s, %s: Invalid map item handle", v205, 0x16u);
            swift_arrayDestroy();
            v210 = v206;
            v68 = v235;
            MEMORY[0x266740650](v210, -1, -1);
            MEMORY[0x266740650](v205, -1, -1);

            v144 = v204;
            v145 = v21;
LABEL_60:
            v219(v144, v145);
            goto LABEL_64;
          }

          sub_26460CD50(v230, &qword_27FF75CE8, &unk_264788B70);
          v117 = v232;
          sub_26460CD50(v104, &qword_27FF75CE8, &unk_264788B70);
          (*(v231 + 8))(v121, v73);
          v119 = v235;
        }

        sub_26460CD50(v117, &qword_27FF75ED8, &qword_264789880);
        v120 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
        goto LABEL_46;
      }

      if (((1 << v101) & 0xC00) != 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_264783ED4();

        if (v242)
        {
        }

        else
        {
          v219 = v51;
          v146 = v222;
          sub_264783DF4();

          v147 = sub_264783E14();
          v148 = sub_2647859F4();

          if (os_log_type_enabled(v147, v148))
          {
            v149 = swift_slowAlloc();
            v150 = swift_slowAlloc();
            v242 = v150;
            *v149 = 136315394;
            v244[0] = v69;

            v151 = sub_264785764();
            v153 = v21;
            v154 = sub_2646DF234(v151, v152, &v242);

            *(v149 + 4) = v154;
            *(v149 + 12) = 2080;
            *(v149 + 14) = sub_2646DF234(0xD000000000000029, 0x8000000264794620, &v242);
            _os_log_impl(&dword_264605000, v147, v148, "%s, %s: Previous state is nil and we transition to initializing/ready, calling cancelInitialization", v149, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266740650](v150, -1, -1);
            MEMORY[0x266740650](v149, -1, -1);

            v155 = v222;
            v156 = v153;
          }

          else
          {

            v155 = v146;
            v156 = v21;
          }

          v219(v155, v156);
          v211 = v220;
          v212 = sub_2647858E4();
          (*(*(v212 - 8) + 56))(v211, 1, 1, v212);
          sub_2647858B4();

          v213 = sub_2647858A4();
          v214 = swift_allocObject();
          v215 = MEMORY[0x277D85700];
          v214[2] = v213;
          v214[3] = v215;
          v214[4] = v69;
          sub_264635730(0, 0, v211, &unk_2647898A0, v214);
        }

        goto LABEL_64;
      }
    }

    v130 = v223;
    sub_264783DF4();
    v131 = v68;

    v132 = v131;
    v133 = sub_264783E14();
    v134 = sub_2647859D4();

    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      v219 = v51;
      v136 = v135;
      v137 = swift_slowAlloc();
      v235 = v68;
      v138 = v137;
      v242 = v137;
      *v136 = 136315650;
      v244[0] = v69;

      v139 = sub_264785764();
      v234 = v21;
      v141 = sub_2646DF234(v139, v140, &v242);

      *(v136 + 4) = v141;
      *(v136 + 12) = 2080;
      *(v136 + 14) = sub_2646DF234(0xD000000000000029, 0x8000000264794620, &v242);
      *(v136 + 22) = 2048;
      v142 = [v132 sessionState];

      *(v136 + 24) = v142;
      _os_log_impl(&dword_264605000, v133, v134, "%s, %s: Unknown state received %lu", v136, 0x20u);
      swift_arrayDestroy();
      v143 = v138;
      v68 = v235;
      MEMORY[0x266740650](v143, -1, -1);
      MEMORY[0x266740650](v136, -1, -1);

      v144 = v223;
      v145 = v234;
      goto LABEL_60;
    }

    v51(v130, v21);
LABEL_64:
    swift_getKeyPath();
    swift_getKeyPath();
    v244[0] = a1;

    v216 = v68;
    sub_264783EE4();
    sub_26461E5B0();

    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v244[0]) = v237 & 1;

    sub_264783EE4();
    sub_26462815C();

    return;
  }

  v89 = v51;
  v90 = v235;
  sub_264783DF4();

  v91 = sub_264783E14();
  v92 = sub_2647859D4();

  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v242 = v94;
    *v93 = 136315394;
    v244[0] = v48;

    v95 = sub_264785764();
    v97 = v90;
    v98 = sub_2646DF234(v95, v96, &v242);

    *(v93 + 4) = v98;
    *(v93 + 12) = 2080;
    *(v93 + 14) = sub_2646DF234(0xD000000000000029, 0x8000000264794620, &v242);
    _os_log_impl(&dword_264605000, v91, v92, "%s, %s: drop nil state update", v93, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v94, -1, -1);
    MEMORY[0x266740650](v93, -1, -1);

    v99 = v97;
  }

  else
  {

    v99 = v90;
  }

  v89(v99, v21);
}

void sub_26461910C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v10 = a2;
  v9 = a4;
  v8(a2, a3, a4);
}

uint64_t sub_2646191A0(void *a1, int a2, void *a3, uint64_t a4, uint64_t a5)
{
  v101 = a5;
  v113 = a2;
  v115 = a1;
  v111 = sub_264785594();
  v112 = *(v111 - 8);
  v6 = *(v112 + 64);
  MEMORY[0x28223BE20](v111);
  v109 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_2647855C4();
  v108 = *(v110 - 8);
  v8 = *(v108 + 64);
  MEMORY[0x28223BE20](v110);
  v107 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_264783AF4();
  v10 = *(v105 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v105);
  v13 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_264783E24();
  v117 = *(v14 - 8);
  v15 = *(v117 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v106 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v114 = &v96 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v116 = &v96 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v96 - v22;
  sub_264783DF4();

  v24 = sub_264783E14();
  v25 = sub_2647859F4();

  v26 = os_log_type_enabled(v24, v25);
  v103 = v10;
  v102 = v13;
  if (v26)
  {
    v27 = a3;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock[0] = v29;
    *v28 = 136315394;
    swift_beginAccess();
    aBlock[6] = swift_weakLoadStrong();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75ED0, &qword_264789878);
    v30 = sub_264785764();
    v32 = v14;
    v33 = sub_2646DF234(v30, v31, aBlock);

    *(v28 + 4) = v33;
    v14 = v32;
    v34 = v117;
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264793790, aBlock);
    _os_log_impl(&dword_264605000, v24, v25, "%s,%s: fetchCurrentSessionState starting", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v29, -1, -1);
    v35 = v28;
    a3 = v27;
    MEMORY[0x266740650](v35, -1, -1);

    v36 = v34;
  }

  else
  {

    v36 = v117;
  }

  v37 = *(v36 + 8);
  v37(v23, v14);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v39 = v116;
  if (result)
  {
    v40 = result;
    sub_264783DF4();

    v41 = v115;
    v42 = v115;
    v43 = a3;
    v44 = sub_264783E14();
    v45 = sub_2647859F4();

    v46 = os_log_type_enabled(v44, v45);
    v104 = v14;
    v100 = v42;
    if (v46)
    {
      v98 = v37;
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v118 = v40;
      aBlock[0] = v97;
      *v47 = 136316163;
      type metadata accessor for SessionViewModel(0);

      v49 = sub_264785764();
      v51 = sub_2646DF234(v49, v50, aBlock);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2080;
      *(v47 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264793790, aBlock);
      *(v47 + 22) = 2117;
      *(v47 + 24) = v42;
      *v48 = v41;
      *(v47 + 32) = 1024;
      *(v47 + 34) = v113 & 1;
      *(v47 + 38) = 2080;
      v99 = a3;
      if (a3)
      {
        swift_getErrorValue();
        v52 = v42;
        v41 = v115;
        v53 = sub_264785EF4();
        v55 = v54;
      }

      else
      {
        v56 = v42;
        v55 = 0xE300000000000000;
        v53 = 7104878;
      }

      v57 = sub_2646DF234(v53, v55, aBlock);

      *(v47 + 40) = v57;
      _os_log_impl(&dword_264605000, v44, v45, "%s, %s: fetchCurrentSessionState, state, %{sensitive}@, isActiveDevice, %{BOOL}d, error, %s", v47, 0x30u);
      sub_26460CD50(v48, &qword_27FF779D0, &qword_26478A9A0);
      MEMORY[0x266740650](v48, -1, -1);
      v58 = v97;
      swift_arrayDestroy();
      MEMORY[0x266740650](v58, -1, -1);
      MEMORY[0x266740650](v47, -1, -1);

      v14 = v104;
      v37 = v98;
      v98(v116, v104);
      a3 = v99;
    }

    else
    {

      v37(v39, v14);
    }

    v59 = v114;
    if (a3)
    {
      v60 = v37;
      v61 = a3;
      sub_264783DF4();

      v62 = a3;
      v63 = sub_264783E14();
      v64 = a3;
      v65 = sub_2647859D4();

      if (os_log_type_enabled(v63, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v118 = v40;
        aBlock[0] = v67;
        *v66 = 136315650;
        type metadata accessor for SessionViewModel(0);

        v68 = sub_264785764();
        v70 = sub_2646DF234(v68, v69, aBlock);

        *(v66 + 4) = v70;
        *(v66 + 12) = 2080;
        *(v66 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264793790, aBlock);
        *(v66 + 22) = 2080;
        swift_getErrorValue();
        v71 = sub_264785EF4();
        v73 = sub_2646DF234(v71, v72, aBlock);

        *(v66 + 24) = v73;
        _os_log_impl(&dword_264605000, v63, v65, "%s, %s: fetchCurrentSessionState, error, %s", v66, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v67, -1, -1);
        MEMORY[0x266740650](v66, -1, -1);

        return v60(v59, v104);
      }

      else
      {

        return v60(v59, v14);
      }
    }

    else
    {
      if (v41)
      {
        v74 = v106;
        sub_264783DF4();
        v75 = v103;
        v76 = v102;
        v77 = v105;
        (*(v103 + 16))(v102, v101, v105);

        v78 = sub_264783E14();
        v79 = sub_2647859F4();

        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v118 = v40;
          aBlock[0] = v81;
          *v80 = 136315650;
          type metadata accessor for SessionViewModel(0);

          v82 = sub_264785764();
          v84 = sub_2646DF234(v82, v83, aBlock);

          *(v80 + 4) = v84;
          *(v80 + 12) = 2080;
          *(v80 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264793790, aBlock);
          *(v80 + 22) = 2048;
          sub_264783AA4();
          v86 = v85;
          (*(v75 + 8))(v76, v105);
          *(v80 + 24) = -v86;
          _os_log_impl(&dword_264605000, v78, v79, "%s, %s: Completion fetchCurrentSessionState, UI latency: %f seconds", v80, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x266740650](v81, -1, -1);
          MEMORY[0x266740650](v80, -1, -1);

          v87 = v106;
          v88 = v104;
          v41 = v115;
        }

        else
        {

          (*(v75 + 8))(v76, v77);
          v87 = v74;
          v88 = v14;
        }

        v37(v87, v88);
      }

      sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
      v89 = sub_264785A44();
      v90 = swift_allocObject();
      *(v90 + 16) = v40;
      *(v90 + 24) = v41;
      *(v90 + 32) = v113 & 1;
      aBlock[4] = sub_264659D9C;
      aBlock[5] = v90;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_264659F60;
      aBlock[3] = &block_descriptor_645;
      v91 = _Block_copy(aBlock);

      v92 = v100;

      v93 = v107;
      sub_2647855B4();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
      sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
      v94 = v109;
      v95 = v111;
      sub_264785BD4();
      MEMORY[0x26673F780](0, v93, v94, v91);
      _Block_release(v91);

      (*(v112 + 8))(v94, v95);
      return (*(v108 + 8))(v93, v110);
    }
  }

  return result;
}

uint64_t sub_264619F68(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v40 = a7;
  v41 = a5;
  v42 = a6;
  v9 = sub_264783E24();
  v45 = *(v9 - 8);
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_264785594();
  v44 = *(v13 - 8);
  v14 = *(v44 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2647855C4();
  v43 = *(v17 - 8);
  v18 = *(v43 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    if (a2)
    {
      v23 = a2;
      sub_264783DF4();

      v24 = a2;
      v25 = sub_264783E14();
      v26 = sub_2647859D4();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v46 = v22;
        aBlock[0] = v28;
        *v27 = 136315650;
        type metadata accessor for SessionViewModel(0);

        v29 = sub_264785764();
        v31 = sub_2646DF234(v29, v30, aBlock);

        *(v27 + 4) = v31;
        *(v27 + 12) = 2080;
        *(v27 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264793790, aBlock);
        *(v27 + 22) = 2080;
        swift_getErrorValue();
        v32 = sub_264785EF4();
        v34 = sub_2646DF234(v32, v33, aBlock);

        *(v27 + 24) = v34;
        _os_log_impl(&dword_264605000, v25, v26, v40, v27, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v28, -1, -1);
        MEMORY[0x266740650](v27, -1, -1);
      }

      else
      {
      }

      return (*(v45 + 8))(v12, v9);
    }

    else
    {
      sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
      v45 = sub_264785A44();
      v35 = swift_allocObject();
      *(v35 + 16) = v22;
      *(v35 + 24) = a1;
      aBlock[4] = v41;
      aBlock[5] = v35;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_264659F60;
      aBlock[3] = v42;
      v36 = _Block_copy(aBlock);
      v37 = a1;

      sub_2647855B4();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_264655E3C(&qword_27FF75CD8, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
      sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
      sub_264785BD4();
      v38 = v45;
      MEMORY[0x26673F780](0, v20, v16, v36);
      _Block_release(v36);

      (*(v44 + 8))(v16, v13);
      return (*(v43 + 8))(v20, v17);
    }
  }

  return result;
}

void sub_26461A4D4(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchSelfContact];
  swift_beginAccess();
  v3 = *(a1 + 48);
  *(a1 + 48) = v2;
}

uint64_t sub_26461A538(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_26461A57C()
{
  v1 = *v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = SessionViewModel.initializeSessionConfiguration()();
  sub_264783DF4();
  v8 = v7;

  v9 = sub_264783E14();
  v10 = sub_2647859F4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v2;
    v23 = v0;
    v13 = v12;
    v24 = v12;
    *v11 = 136315651;

    v14 = sub_264785764();
    v16 = sub_2646DF234(v14, v15, &v24);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_2646DF234(0xD000000000000014, 0x8000000264794830, &v24);
    *(v11 + 22) = 2085;
    v23 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F20, &qword_2647898A8);
    v17 = sub_264785B34();
    v19 = sub_2646DF234(v17, v18, &v24);

    *(v11 + 24) = v19;
    _os_log_impl(&dword_264605000, v9, v10, "%s, %s: sessionConfiguration is: %{sensitive}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v13, -1, -1);
    MEMORY[0x266740650](v11, -1, -1);

    (*(v3 + 8))(v6, v22);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  return v7;
}

id SessionViewModel.initializeSessionConfiguration()()
{
  v1 = v0;
  v354 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CE8, &unk_264788B70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v338 = &v328 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756B8, &qword_26478AC90);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v335 = &v328 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v333 = &v328 - v9;
  v10 = sub_264783AF4();
  v347 = *(v10 - 8);
  v348 = v10;
  v11 = *(v347 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v346 = &v328 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v341 = &v328 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v336 = &v328 - v17;
  MEMORY[0x28223BE20](v16);
  v342 = &v328 - v18;
  v19 = sub_264783E24();
  v355 = *(v19 - 1);
  v356 = v19;
  v20 = *(v355 + 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v328 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v328 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v328 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v328 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v328 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v350 = &v328 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v337 = &v328 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v330 = &v328 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v334 = &v328 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v331 = &v328 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v329 = &v328 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v332 = &v328 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v339 = &v328 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v344 = &v328 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v343 = &v328 - v55;
  MEMORY[0x28223BE20](v54);
  v57 = &v328 - v56;
  v58 = sub_264783B64();
  v351 = *(v58 - 8);
  v352 = v58;
  v59 = *(v351 + 64);
  v60 = MEMORY[0x28223BE20](v58);
  v345 = &v328 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x28223BE20](v60);
  v340 = &v328 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v66 = &v328 - v65;
  MEMORY[0x28223BE20](v64);
  v353 = &v328 - v67;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v68 = v358[0];
  v69 = sub_26462B210();
  if (!v69)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    if (v358[0] && (v114 = *(v358[0] + 2), , v114))
    {
      sub_264783DF4();

      v115 = sub_264783E14();
      v116 = sub_2647859D4();

      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v357 = v1;
        v358[0] = v118;
        *v117 = 136315394;

        v119 = sub_264785764();
        v121 = sub_2646DF234(v119, v120, v358);

        *(v117 + 4) = v121;
        *(v117 + 12) = 2080;
        *(v117 + 14) = sub_2646DF234(0xD000000000000020, 0x80000002647937B0, v358);
        _os_log_impl(&dword_264605000, v115, v116, "%s, %s: missing conversation", v117, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v118, -1, -1);
        MEMORY[0x266740650](v117, -1, -1);
      }

      else
      {
      }

      v151 = *(v355 + 1);
      v152 = v23;
    }

    else
    {
      sub_264783DF4();

      v122 = sub_264783E14();
      v123 = sub_2647859D4();

      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v357 = v1;
        v358[0] = v125;
        *v124 = 136315394;

        v126 = sub_264785764();
        v128 = sub_2646DF234(v126, v127, v358);

        *(v124 + 4) = v128;
        *(v124 + 12) = 2080;
        *(v124 + 14) = sub_2646DF234(0xD000000000000020, 0x80000002647937B0, v358);
        _os_log_impl(&dword_264605000, v122, v123, "%s, %s: missing recipient handles", v124, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v125, -1, -1);
        MEMORY[0x266740650](v124, -1, -1);
      }

      else
      {
      }

      v151 = *(v355 + 1);
      v152 = v26;
    }

    v153 = v356;
    goto LABEL_66;
  }

  v349 = v69;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v70 = v358[0];
  if (!v358[0] || (v71 = [v358[0] configuration], v70, !v71))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v104 = v356;
    if (v358[0])
    {

      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v105 = v358[0];
      if (v358[0] && (v106 = [v358[0] configuration], v105, v106))
      {

        sub_264783DF4();

        v107 = sub_264783E14();
        v108 = sub_2647859D4();

        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          v357 = v1;
          v358[0] = v110;
          *v109 = 136315394;

          v111 = sub_264785764();
          v113 = sub_2646DF234(v111, v112, v358);

          *(v109 + 4) = v113;
          *(v109 + 12) = 2080;
          *(v109 + 14) = sub_2646DF234(0xD000000000000020, 0x80000002647937B0, v358);
          _os_log_impl(&dword_264605000, v107, v108, "%s, %s: missing sessionID", v109, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266740650](v110, -1, -1);
          MEMORY[0x266740650](v109, -1, -1);
        }

        else
        {
        }

        (*(v355 + 1))(v29, v104);
      }

      else
      {
        sub_264783DF4();

        v129 = sub_264783E14();
        v130 = sub_2647859D4();

        if (os_log_type_enabled(v129, v130))
        {
          v131 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          v357 = v1;
          v358[0] = v132;
          *v131 = 136315394;

          v133 = sub_264785764();
          v135 = sub_2646DF234(v133, v134, v358);

          *(v131 + 4) = v135;
          *(v131 + 12) = 2080;
          *(v131 + 14) = sub_2646DF234(0xD000000000000020, 0x80000002647937B0, v358);
          _os_log_impl(&dword_264605000, v129, v130, "%s, %s: missing configuration", v131, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266740650](v132, -1, -1);
          MEMORY[0x266740650](v131, -1, -1);
        }

        else
        {
        }

        (*(v355 + 1))(v32, v104);
      }
    }

    else
    {
      sub_264783DF4();

      v136 = sub_264783E14();
      v137 = sub_2647859D4();

      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v357 = v1;
        v358[0] = v139;
        *v138 = 136315394;

        v140 = sub_264785764();
        v142 = sub_2646DF234(v140, v141, v358);

        *(v138 + 4) = v142;
        *(v138 + 12) = 2080;
        *(v138 + 14) = sub_2646DF234(0xD000000000000020, 0x80000002647937B0, v358);
        _os_log_impl(&dword_264605000, v136, v137, "%s, %s: missing sessionState", v138, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v139, -1, -1);
        MEMORY[0x266740650](v138, -1, -1);
      }

      else
      {
      }

      (*(v355 + 1))(v35, v104);
    }

    return 0;
  }

  v72 = [v71 sessionID];

  sub_264783B44();
  (*(v351 + 32))(v353, v66, v352);
  sub_264783DF4();

  v73 = sub_264783E14();
  v74 = sub_2647859F4();

  v75 = v68;
  if (os_log_type_enabled(v73, v74))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v328 = swift_slowAlloc();
    v357 = v1;
    v358[0] = v328;
    *v76 = 136316163;

    v78 = sub_264785764();
    v80 = sub_2646DF234(v78, v79, v358);

    *(v76 + 4) = v80;
    *(v76 + 12) = 2080;
    *(v76 + 14) = sub_2646DF234(0xD000000000000020, 0x80000002647937B0, v358);
    *(v76 + 22) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    *(v76 + 24) = v357;
    *(v76 + 32) = 2080;
    v81 = SessionViewModel.sessionDestinationType.getter();
    v82 = [objc_opt_self() destinationTypeToString_];
    v83 = sub_264785724();
    v85 = v84;

    v86 = sub_2646DF234(v83, v85, v358);

    *(v76 + 34) = v86;
    *(v76 + 42) = 2117;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v87 = v357;
    *(v76 + 44) = v357;
    *v77 = v87;
    _os_log_impl(&dword_264605000, v73, v74, "%s, %s:  Sync session configuration set to stored properties self.sessionDuration, %f, self.sessionDestinationType, %s, endLocation %{sensitive}@", v76, 0x34u);
    sub_26460CD50(v77, &qword_27FF779D0, &qword_26478A9A0);
    MEMORY[0x266740650](v77, -1, -1);
    v88 = v328;
    swift_arrayDestroy();
    MEMORY[0x266740650](v88, -1, -1);
    MEMORY[0x266740650](v76, -1, -1);
  }

  v89 = v356;
  v90 = *(v355 + 1);
  v90(v57, v356);
  swift_getKeyPath();
  swift_getKeyPath();
  v328 = v75;
  sub_264783ED4();

  v91 = v358[0];
  v92 = v350;
  if (v358[0] > 2)
  {
    if (v358[0] == 3)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v171 = v358[0];
      if (!v358[0])
      {
        v92 = v330;
        sub_264783DF4();
        v154 = sub_264783E14();
        v222 = sub_2647859E4();
        if (os_log_type_enabled(v154, v222))
        {
          v223 = swift_slowAlloc();
          *v223 = 0;
          _os_log_impl(&dword_264605000, v154, v222, "Unable to create session configuration without an end location.", v223, 2u);
          MEMORY[0x266740650](v223, -1, -1);
        }

        goto LABEL_63;
      }

      v172 = v334;
      sub_264783DF4();

      v173 = sub_264783E14();
      v174 = sub_2647859F4();

      v175 = os_log_type_enabled(v173, v174);
      v356 = v171;
      if (v175)
      {
        v176 = swift_slowAlloc();
        v177 = swift_slowAlloc();
        v357 = v1;
        v358[0] = v177;
        *v176 = 136315394;

        v178 = sub_264785764();
        v180 = sub_2646DF234(v178, v179, v358);

        *(v176 + 4) = v180;
        *(v176 + 12) = 2080;
        *(v176 + 14) = sub_2646DF234(0xD000000000000020, 0x80000002647937B0, v358);
        _os_log_impl(&dword_264605000, v173, v174, "%s, %s: session configuration in .roundTrip case", v176, 0x16u);
        swift_arrayDestroy();
        v181 = v177;
        v171 = v356;
        MEMORY[0x266740650](v181, -1, -1);
        MEMORY[0x266740650](v176, -1, -1);
      }

      v90(v172, v89);
      v225 = v335;
      v226 = v351;
      (*(v351 + 16))(v345, v353, v352);
      v227 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:0.0 longitude:0.0];
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v228 = *&qword_264789920[SLOBYTE(v358[0])];
      result = [v171 _handle];
      if (!result)
      {
        __break(1u);
        goto LABEL_91;
      }

      v229 = result;
      v230 = sub_264783A14();
      v232 = v231;

      v233 = objc_allocWithZone(MEMORY[0x277D4AB88]);
      v234 = sub_264783A04();
      v235 = [v233 initWithCLLocation:v227 eta:0 radius:4 destinationType:v234 destinationMapItem:v228];

      sub_264655264(v230, v232);
      sub_264783AE4();
      v237 = v347;
      v236 = v348;
      (*(v347 + 56))(v225, 1, 1, v348);
      v238 = [objc_opt_self() zelkovaHandoffEnabled];
      v239 = v349;
      v240 = sub_264783B14();
      v241 = sub_264783A64();
      v242 = 0;
      if ((*(v237 + 48))(v225, 1, v236) != 1)
      {
        v242 = sub_264783A64();
        (*(v237 + 8))(v225, v236);
      }

      v243 = [objc_allocWithZone(MEMORY[0x277D4AB78]) initRoundTripSessionConfigurationWithConversation:v239 sessionID:v240 destination:v235 sessionStartDate:v241 userResponseSafeDate:v242 sessionSupportsHandoff:v238 sosReceivers:v239];

      (*(v237 + 8))(v341, v236);
      v244 = *(v226 + 8);
      v245 = v352;
      v244(v345, v352);
      v244(v353, v245);
      return v243;
    }

    else
    {
      if (v358[0] != 4)
      {
LABEL_39:
        sub_264783DF4();

        v154 = sub_264783E14();
        v155 = sub_2647859E4();

        if (os_log_type_enabled(v154, v155))
        {
          v156 = swift_slowAlloc();
          v157 = swift_slowAlloc();
          v357 = v1;
          v358[0] = v157;
          *v156 = 136315650;

          v158 = sub_264785764();
          v160 = sub_2646DF234(v158, v159, v358);

          *(v156 + 4) = v160;
          *(v156 + 12) = 2080;
          *(v156 + 14) = sub_2646DF234(0xD000000000000020, 0x80000002647937B0, v358);
          *(v156 + 22) = 2048;
          *(v156 + 24) = v91;
          _os_log_impl(&dword_264605000, v154, v155, "%s, %s: Bad session type when initializing session: %lu", v156, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x266740650](v157, -1, -1);
          MEMORY[0x266740650](v156, -1, -1);

          v161 = v350;
          goto LABEL_64;
        }

LABEL_63:

        v161 = v92;
        goto LABEL_64;
      }

      v356 = v90;
      v143 = v337;
      sub_264783DF4();

      v144 = sub_264783E14();
      v145 = sub_2647859F4();

      if (os_log_type_enabled(v144, v145))
      {
        v146 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v357 = v1;
        v358[0] = v147;
        *v146 = 136315394;

        v148 = sub_264785764();
        v150 = sub_2646DF234(v148, v149, v358);

        *(v146 + 4) = v150;
        *(v146 + 12) = 2080;
        *(v146 + 14) = sub_2646DF234(0xD000000000000020, 0x80000002647937B0, v358);
        _os_log_impl(&dword_264605000, v144, v145, "%s, %s: session configuration in .workoutBound case", v146, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266740650](v147, -1, -1);
        MEMORY[0x266740650](v146, -1, -1);
      }

      v356(v143, v89);
      v189 = v349;
      sub_264783AE4();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v356 = v358[0];
      swift_getKeyPath();
      swift_getKeyPath();
      v190 = v338;
      sub_264783ED4();

      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v191 = v190;

      v192 = v358[0];
      swift_getKeyPath();
      swift_getKeyPath();
      sub_264783ED4();

      v193 = v358[0];
      v194 = sub_264783B14();
      v195 = sub_264783A64();
      v197 = v351;
      v196 = v352;
      if ((*(v351 + 48))(v191, 1, v352) == 1)
      {
        v198 = 0;
      }

      else
      {
        v198 = sub_264783B14();
        (*(v197 + 8))(v191, v196);
      }

      v199 = [objc_allocWithZone(MEMORY[0x277D4AB78]) initWorkoutBoundSessionConfigurationWithConversation:v189 sessionID:v194 sessionStartDate:v195 sessionSupportsHandoff:v356 == 1 sosReceivers:v189 sessionWorkoutIdentifier:v198 sessionWorkoutType:v192 sessionWorkoutMirrorType:v193];

      (*(v347 + 8))(v346, v348);
      (*(v197 + 8))(v353, v196);
      return v199;
    }
  }

  else
  {
    if (v358[0] != 1)
    {
      if (v358[0] == 2)
      {
        v93 = v344;
        sub_264783DF4();

        v94 = sub_264783E14();
        v95 = sub_2647859F4();

        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v357 = v1;
          v358[0] = v98;
          *v96 = 136315651;

          v99 = sub_264785764();
          v101 = sub_2646DF234(v99, v100, v358);

          *(v96 + 4) = v101;
          *(v96 + 12) = 2080;
          *(v96 + 14) = sub_2646DF234(0xD000000000000020, 0x80000002647937B0, v358);
          *(v96 + 22) = 2117;
          swift_getKeyPath();
          swift_getKeyPath();
          sub_264783ED4();

          v102 = v357;
          *(v96 + 24) = v357;
          *v97 = v102;
          _os_log_impl(&dword_264605000, v94, v95, "%s, %s: setting config to destination bound, endLocation, %{sensitive}@", v96, 0x20u);
          sub_26460CD50(v97, &qword_27FF779D0, &qword_26478A9A0);
          MEMORY[0x266740650](v97, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x266740650](v98, -1, -1);
          MEMORY[0x266740650](v96, -1, -1);

          v103 = v344;
        }

        else
        {

          v103 = v93;
        }

        v90(v103, v356);
        v182 = v339;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_264783ED4();

        v183 = v358[0];
        if (!v358[0])
        {
          v212 = v331;
          sub_264783DF4();

          v213 = sub_264783E14();
          v214 = sub_2647859E4();

          v215 = os_log_type_enabled(v213, v214);
          v216 = v356;
          if (v215)
          {
            v217 = swift_slowAlloc();
            v218 = swift_slowAlloc();
            v357 = v1;
            v358[0] = v218;
            *v217 = 136315394;

            v219 = sub_264785764();
            v221 = sub_2646DF234(v219, v220, v358);

            *(v217 + 4) = v221;
            *(v217 + 12) = 2080;
            *(v217 + 14) = sub_2646DF234(0xD000000000000020, 0x80000002647937B0, v358);
            _os_log_impl(&dword_264605000, v213, v214, "%s, %s: Unable to create session configuration without an end location.", v217, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266740650](v218, -1, -1);
            MEMORY[0x266740650](v217, -1, -1);
          }

          v161 = v212;
          v224 = v216;
          goto LABEL_65;
        }

        v184 = [v358[0] placemark];
        v185 = [v184 location];

        v89 = v356;
        if (v185)
        {
          v186 = [v185 referenceFrame];
          v187 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
          v350 = v183;
          v346 = v185;
          if (v186)
          {
            v188 = [v185 referenceFrame];
          }

          else
          {
            sub_264783DF4();

            v255 = v185;
            v256 = sub_264783E14();
            v257 = sub_2647859D4();

            if (os_log_type_enabled(v256, v257))
            {
              v258 = swift_slowAlloc();
              v345 = swift_slowAlloc();
              v357 = v1;
              v358[0] = v345;
              *v258 = 136315651;

              v259 = sub_264785764();
              v261 = sub_2646DF234(v259, v260, v358);

              *(v258 + 4) = v261;
              *(v258 + 12) = 2080;
              *(v258 + 14) = sub_2646DF234(0xD000000000000020, 0x80000002647937B0, v358);
              *(v258 + 22) = 2085;
              v262 = v257;
              v263 = [v255 description];
              v264 = sub_264785724();
              v266 = v265;

              v267 = v264;
              v89 = v356;
              v268 = sub_2646DF234(v267, v266, v358);
              v185 = v346;

              *(v258 + 24) = v268;
              v269 = v262;
              v187 = &property descriptor for DeviceCacheInfoViewModel.isTransparencyMode;
              _os_log_impl(&dword_264605000, v256, v269, "%s, %s: Non fatal unexpected unknown reference frame, location,%{sensitive}s", v258, 0x20u);
              v270 = v345;
              swift_arrayDestroy();
              MEMORY[0x266740650](v270, -1, -1);
              MEMORY[0x266740650](v258, -1, -1);
            }

            v90(v182, v89);
            v271 = objc_opt_self();
            [v255 v187[101]];
            v273 = v272;
            [v255 v187[101]];
            if ([v271 isLocationShiftRequiredForCoordinate_])
            {
              v188 = 2;
            }

            else
            {
              v188 = 1;
            }
          }

          [v185 v187[101]];
          v275 = v274;
          v277 = v276;
          [v185 altitude];
          v279 = v278;
          [v185 horizontalAccuracy];
          v281 = v280;
          [v185 verticalAccuracy];
          v283 = v282;
          v284 = [v185 timestamp];
          v285 = v342;
          sub_264783AC4();

          v286 = objc_allocWithZone(MEMORY[0x277CE41F8]);
          v287 = sub_264783A64();
          v344 = [v286 initWithCoordinate:v287 altitude:v188 horizontalAccuracy:v275 verticalAccuracy:v277 timestamp:v279 referenceFrame:{v281, v283}];

          v288 = (v347 + 8);
          v289 = *(v347 + 8);
          v289(v285, v348);
          v290 = SessionViewModel.sessionDestinationType.getter();
          v291 = v332;
          sub_264783DF4();

          v292 = sub_264783E14();
          v293 = sub_2647859F4();

          v294 = os_log_type_enabled(v292, v293);
          v355 = v289;
          v356 = v288;
          v345 = v290;
          if (v294)
          {
            v295 = swift_slowAlloc();
            v296 = swift_slowAlloc();
            v357 = v1;
            v358[0] = v296;
            *v295 = 136315394;

            v297 = sub_264785764();
            v299 = v89;
            v300 = sub_2646DF234(v297, v298, v358);

            *(v295 + 4) = v300;
            *(v295 + 12) = 2080;
            *(v295 + 14) = sub_2646DF234(0xD000000000000020, 0x80000002647937B0, v358);
            _os_log_impl(&dword_264605000, v292, v293, "%s, %s: session configuration in .destinationBound case", v295, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266740650](v296, -1, -1);
            MEMORY[0x266740650](v295, -1, -1);

            v301 = v291;
            v302 = v299;
          }

          else
          {

            v301 = v291;
            v302 = v89;
          }

          v90(v301, v302);
          v303 = v350;
          (*(v351 + 16))(v340, v353, v352);
          v304 = sub_264714180();
          swift_getKeyPath();
          swift_getKeyPath();
          sub_264783ED4();

          v305 = *&qword_264789920[SLOBYTE(v358[0])];
          result = [v303 _handle];
          if (result)
          {
            v306 = result;
            v307 = sub_264783A14();
            v309 = v308;

            v310 = objc_allocWithZone(MEMORY[0x277D4AB88]);
            v311 = v344;
            v312 = sub_264783A04();
            v354 = [v310 initWithCLLocation:v311 eta:v304 radius:v345 destinationType:v312 destinationMapItem:v305];

            sub_264655264(v307, v309);
            sub_264783AE4();
            v314 = v347;
            v313 = v348;
            v315 = v333;
            (*(v347 + 56))(v333, 1, 1, v348);
            v316 = [objc_opt_self() zelkovaHandoffEnabled];
            v317 = v349;
            v318 = sub_264783B14();
            v319 = sub_264783A64();
            if ((*(v314 + 48))(v315, 1, v313) == 1)
            {
              v320 = 0;
              v321 = v355;
            }

            else
            {
              v320 = sub_264783A64();
              v322 = v315;
              v321 = v355;
              v355(v322, v313);
            }

            v323 = objc_allocWithZone(MEMORY[0x277D4AB78]);
            v324 = v354;
            v325 = [v323 initDestinationBoundSessionConfigurationWithConversation:v317 sessionID:v318 destination:v354 sessionStartDate:v319 userResponseSafeDate:v320 sessionSupportsHandoff:v316 sosReceivers:v317];

            v321(v336, v313);
            v326 = v352;
            v327 = *(v351 + 8);
            v327(v340, v352);
            v327(v353, v326);
            return v325;
          }

LABEL_91:
          __break(1u);
          return result;
        }

        v246 = v329;
        sub_264783DF4();

        v247 = sub_264783E14();
        v248 = sub_2647859E4();

        if (os_log_type_enabled(v247, v248))
        {
          v249 = swift_slowAlloc();
          v250 = swift_slowAlloc();
          v350 = v183;
          v251 = v250;
          v357 = v1;
          v358[0] = v250;
          *v249 = 136315394;

          v252 = sub_264785764();
          v254 = sub_2646DF234(v252, v253, v358);

          *(v249 + 4) = v254;
          *(v249 + 12) = 2080;
          *(v249 + 14) = sub_2646DF234(0xD000000000000020, 0x80000002647937B0, v358);
          _os_log_impl(&dword_264605000, v247, v248, "%s, %s: Unable to create session configuration without an end location.", v249, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266740650](v251, -1, -1);
          MEMORY[0x266740650](v249, -1, -1);
        }

        else
        {
        }

        v161 = v246;
LABEL_64:
        v224 = v89;
LABEL_65:
        v90(v161, v224);
        v153 = v352;
        v151 = *(v351 + 8);
        v152 = v353;
LABEL_66:
        v151(v152, v153);
        return 0;
      }

      goto LABEL_39;
    }

    v162 = v343;
    sub_264783DF4();

    v163 = sub_264783E14();
    v164 = sub_2647859F4();

    if (os_log_type_enabled(v163, v164))
    {
      v165 = swift_slowAlloc();
      v166 = swift_slowAlloc();
      v357 = v1;
      v358[0] = v166;
      *v165 = 136315394;

      v167 = sub_264785764();
      v169 = sub_2646DF234(v167, v168, v358);

      *(v165 + 4) = v169;
      *(v165 + 12) = 2080;
      *(v165 + 14) = sub_2646DF234(0xD000000000000020, 0x80000002647937B0, v358);
      _os_log_impl(&dword_264605000, v163, v164, "%s, %s: setting config to time bound", v165, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v166, -1, -1);
      MEMORY[0x266740650](v165, -1, -1);

      v170 = v343;
    }

    else
    {

      v170 = v162;
    }

    v90(v170, v89);
    v201 = v348;
    v202 = v349;
    v203 = v342;
    SessionViewModel.endDate.getter();
    v204 = objc_allocWithZone(MEMORY[0x277D4AC08]);
    v205 = sub_264783A64();
    v206 = [v204 initWithTimeBound_];

    (*(v347 + 8))(v203, v201);
    v207 = [objc_opt_self() zelkovaHandoffEnabled];
    v208 = objc_allocWithZone(MEMORY[0x277D4AB78]);
    v209 = v353;
    v210 = sub_264783B14();
    v211 = [v208 initTimeBoundSessionConfigurationWithConversation:v202 sessionID:v210 time:v206 sessionSupportsHandoff:v207 sosReceivers:v202];

    (*(v351 + 8))(v209, v352);
    return v211;
  }
}

void *SessionViewModel.suggestedSessionConfiguration.getter()
{
  v1 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_suggestedSessionConfiguration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_26461D420(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_suggestedSessionConfiguration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  return sub_26461D484();
}

uint64_t sub_26461D484()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v8 = sub_264783E14();
  v9 = sub_2647859F4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315651;
    v20[2] = v0;

    v12 = sub_264785764();
    v14 = sub_2646DF234(v12, v13, &v21);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2646DF234(0xD00000000000001DLL, 0x8000000264793FA0, &v21);
    *(v10 + 22) = 2085;
    v15 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_suggestedSessionConfiguration;
    swift_beginAccess();
    v20[1] = *(v1 + v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F20, &qword_2647898A8);
    v16 = sub_264785B34();
    v18 = sub_2646DF234(v16, v17, &v21);

    *(v10 + 24) = v18;
    _os_log_impl(&dword_264605000, v8, v9, "%s, %s: SUGGESTED SESSION CONFIG WAS CHANGED: %{sensitive}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v10, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t SessionViewModel.workoutSessionConfiguration.getter()
{
  v1 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_workoutSessionConfiguration;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_26461D75C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_workoutSessionConfiguration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;

  return sub_26461D7C8();
}

uint64_t sub_26461D7C8()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v8 = sub_264783E14();
  v9 = sub_2647859F4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315650;
    v20[2] = v0;

    v12 = sub_264785764();
    v14 = sub_2646DF234(v12, v13, &v21);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2646DF234(0xD00000000000001BLL, 0x8000000264793FC0, &v21);
    *(v10 + 22) = 2080;
    v15 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel_workoutSessionConfiguration;
    swift_beginAccess();
    v20[1] = *(v1 + v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75EC0, &qword_264789868);
    v16 = sub_264785B34();
    v18 = sub_2646DF234(v16, v17, &v21);

    *(v10 + 24) = v18;
    _os_log_impl(&dword_264605000, v8, v9, "%s, %s: WORKOUT SESSION CONFIG WAS CHANGED: %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v10, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t SessionViewModel.durationTimerString.getter()
{
  v0 = 0x30303A30303A3030;
  v1 = sub_264783AF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v9 = v15;
  if (v15)
  {
    v10 = [v15 configuration];

    if (v10)
    {
      v11 = [v10 time];

      if (v11)
      {
        v12 = [v11 timeBound];

        sub_264783AC4();
        (*(v2 + 32))(v8, v6, v1);
        v0 = sub_2646552E4(v8);
        (*(v2 + 8))(v8, v1);
      }
    }
  }

  return v0;
}

uint64_t SessionViewModel.currentSessionID.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v7 && (v2 = [v7 configuration], v7, v2))
  {
    v3 = [v2 sessionID];

    sub_264783B44();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_264783B64();
  return (*(*(v5 - 8) + 56))(a1, v4, 1, v5);
}

uint64_t sub_26461DDD4()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v8 = sub_264783E14();
  v9 = sub_2647859F4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v1;
    v20 = v11;
    *v10 = 136315650;

    v12 = sub_264785764();
    v14 = sub_2646DF234(v12, v13, &v20);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2646DF234(0xD000000000000011, 0x8000000264794960, &v20);
    *(v10 + 22) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C10, &qword_264788A58);
    v15 = sub_264785764();
    v17 = sub_2646DF234(v15, v16, &v20);

    *(v10 + 24) = v17;
    _os_log_impl(&dword_264605000, v8, v9, "%s, %s: local was changed to %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v10, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

void (*SessionViewModel.localSessionState.modify(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *a1 = a1[1];
  return sub_26461E118;
}

uint64_t sub_26461E15C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CF0, &qword_264788E58);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B78, &qword_264788A50);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t SessionViewModel.$localSessionState.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CF0, &qword_264788E58);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B78, &qword_264788A50);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$localSessionState.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CF0, &qword_264788E58);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__localSessionState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B78, &qword_264788A50);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_26461E5B0()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v8 = sub_264783E14();
  v9 = sub_2647859F4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v1;
    v20 = v11;
    *v10 = 136315651;

    v12 = sub_264785764();
    v14 = sub_2646DF234(v12, v13, &v20);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2646DF234(0x536E6F6973736573, 0xEC00000065746174, &v20);
    *(v10 + 22) = 2085;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C20, &qword_264788A60);
    v15 = sub_264785764();
    v17 = sub_2646DF234(v15, v16, &v20);

    *(v10 + 24) = v17;
    _os_log_impl(&dword_264605000, v8, v9, "%s, %s: sessionState was changed to %{sensitive}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v10, -1, -1);
  }

  return (*(v4 + 8))(v7, v3);
}

void (*SessionViewModel.sessionState.modify(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *a1 = a1[1];
  return sub_26461E8FC;
}

uint64_t sub_26461E940(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CF8, &qword_264788E60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B70, &qword_264788A48);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t SessionViewModel.$sessionState.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CF8, &qword_264788E60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B70, &qword_264788A48);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$sessionState.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75CF8, &qword_264788E60);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__sessionState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B70, &qword_264788A48);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

id SessionViewModel.sessionDestinationType.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v8 = sub_264783E14();
  v9 = sub_2647859F4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v24 = v1;
    v25 = v11;
    *v10 = 136315651;

    v12 = sub_264785764();
    v14 = sub_2646DF234(v12, v13, &v25);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2646DF234(0xD000000000000016, 0x80000002647937E0, &v25);
    *(v10 + 22) = 2085;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C20, &qword_264788A60);
    v15 = sub_264785764();
    v17 = sub_2646DF234(v15, v16, &v25);

    *(v10 + 24) = v17;
    _os_log_impl(&dword_264605000, v8, v9, "%s, %s: sessionState %{sensitive}s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v10, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v18 = v25;
  if (!v25)
  {
    goto LABEL_10;
  }

  if (![v25 isActiveState])
  {

LABEL_10:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    return v25;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v19 = v25;
  if (v25 && (v20 = [v25 configuration], v19, v20) && (v21 = objc_msgSend(v20, sel_destination), v20, v21))
  {
    v22 = [v21 destinationType];

    return v22;
  }

  else
  {

    return 0;
  }
}

uint64_t SessionViewModel.userSessionConfiguration.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v1;
}

id SessionViewModel.sessionType.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v8 = sub_264783E14();
  v9 = sub_2647859F4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v1;
    v27 = v11;
    *v10 = 136315907;

    v12 = sub_264785764();
    v14 = sub_2646DF234(v12, v13, &v27);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2646DF234(0x546E6F6973736573, 0xEB00000000657079, &v27);
    *(v10 + 22) = 2085;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C20, &qword_264788A60);
    v15 = sub_264785764();
    v17 = sub_2646DF234(v15, v16, &v27);

    *(v10 + 24) = v17;
    *(v10 + 32) = 2085;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    type metadata accessor for UserSessionConfiguration();
    v18 = sub_264785764();
    v20 = sub_2646DF234(v18, v19, &v27);

    *(v10 + 34) = v20;
    _os_log_impl(&dword_264605000, v8, v9, "%s, %s: sessionState %{sensitive}s, userSessionConfiguration %{sensitive}s", v10, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v10, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v21 = v27;
  if (!v27)
  {
    goto LABEL_9;
  }

  if (![v27 isActiveState])
  {

LABEL_9:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    return v27;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v22 = v27;
  if (v27 && (v23 = [v27 configuration], v22, v23))
  {
    v24 = [v23 sessionType];

    return v24;
  }

  else
  {

    return 0;
  }
}

id sub_26461F730()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_264783AF4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v46 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - v8;
  v10 = sub_264783E24();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v15 = sub_264783E14();
  v16 = sub_2647859F4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v44 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v43 = v9;
    v20 = v19;
    v47 = v1;
    v48 = v19;
    *v18 = 136315907;

    v21 = sub_264785764();
    v23 = sub_2646DF234(v21, v22, &v48);
    v45 = v3;
    v24 = v23;

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_2646DF234(0x74616E6974736564, 0xEE004154456E6F69, &v48);
    *(v18 + 22) = 2085;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C20, &qword_264788A60);
    v25 = sub_264785764();
    v27 = sub_2646DF234(v25, v26, &v48);

    *(v18 + 24) = v27;
    *(v18 + 32) = 2085;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    type metadata accessor for UserSessionConfiguration();
    v28 = sub_264785764();
    v30 = sub_2646DF234(v28, v29, &v48);

    *(v18 + 34) = v30;
    v3 = v45;
    _os_log_impl(&dword_264605000, v15, v16, "%s, %s: sessionState %{sensitive}s, userSessionConfiguration %{sensitive}s", v18, 0x2Au);
    swift_arrayDestroy();
    v31 = v20;
    v9 = v43;
    MEMORY[0x266740650](v31, -1, -1);
    v32 = v18;
    v4 = v44;
    MEMORY[0x266740650](v32, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v33 = v48;
  if (!v48)
  {
    goto LABEL_12;
  }

  if (![v48 isActiveState])
  {

LABEL_12:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v35 = sub_264713490();

    return v35;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v34 = v48;
  if (!v48)
  {
    goto LABEL_14;
  }

  v35 = [v48 configuration];

  if (!v35)
  {
LABEL_15:

    return v35;
  }

  v36 = [v35 destination];

  if (!v36)
  {
LABEL_14:

    return 0;
  }

  v35 = [v36 eta];

  if (!v35)
  {
    goto LABEL_15;
  }

  v37 = [v35 etaDate];

  v38 = v46;
  sub_264783AC4();

  (*(v4 + 32))(v9, v38, v3);
  sub_264783AA4();
  if (v39 <= 0.0)
  {
    (*(v4 + 8))(v9, v3);

    return 0;
  }

  else
  {
    sub_264783AA4();
    v41 = v40;

    (*(v4 + 8))(v9, v3);
    return v41;
  }
}

id sub_26461FD8C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_264783AF4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v46 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - v8;
  v10 = sub_264783E24();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v15 = sub_264783E14();
  v16 = sub_2647859F4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v44 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v43 = v9;
    v20 = v19;
    v47 = v1;
    v48 = v19;
    *v18 = 136315907;

    v21 = sub_264785764();
    v23 = sub_2646DF234(v21, v22, &v48);
    v45 = v3;
    v24 = v23;

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_2646DF234(0x6E756F42656D6974, 0xEC00000041544564, &v48);
    *(v18 + 22) = 2085;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C20, &qword_264788A60);
    v25 = sub_264785764();
    v27 = sub_2646DF234(v25, v26, &v48);

    *(v18 + 24) = v27;
    *(v18 + 32) = 2085;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    type metadata accessor for UserSessionConfiguration();
    v28 = sub_264785764();
    v30 = sub_2646DF234(v28, v29, &v48);

    *(v18 + 34) = v30;
    v3 = v45;
    _os_log_impl(&dword_264605000, v15, v16, "%s, %s: sessionState %{sensitive}s, userSessionConfiguration %{sensitive}s", v18, 0x2Au);
    swift_arrayDestroy();
    v31 = v20;
    v9 = v43;
    MEMORY[0x266740650](v31, -1, -1);
    v32 = v18;
    v4 = v44;
    MEMORY[0x266740650](v32, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v33 = v48;
  if (!v48)
  {
    goto LABEL_11;
  }

  if (![v48 isActiveState])
  {

LABEL_11:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    return v48;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  v34 = v48;
  if (v48 && (v35 = [v48 configuration], v34, v35) && (v36 = objc_msgSend(v35, sel_time), v35, v36))
  {
    v37 = [v36 timeBound];

    v38 = v46;
    sub_264783AC4();

    (*(v4 + 32))(v9, v38, v3);
    sub_264783AA4();
    if (v39 <= 0.0)
    {
      (*(v4 + 8))(v9, v3);

      return 0;
    }

    else
    {
      sub_264783AA4();
      v41 = v40;

      (*(v4 + 8))(v9, v3);
      return v41;
    }
  }

  else
  {

    return 0;
  }
}

id SessionViewModel.sessionDuration.getter()
{
  v0 = SessionViewModel.sessionType.getter();
  if (v0 == 2)
  {
    return sub_26461F730();
  }

  if (v0 == 1)
  {
    return sub_26461FD8C();
  }

  return 0;
}

uint64_t sub_264620454(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  return sub_264620548();
}

uint64_t SessionViewModel.recipientHandles.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  return sub_264620548();
}

uint64_t sub_264620548()
{
  v1 = *v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v7 = sub_264783E14();
  v8 = sub_2647859F4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v0;
    v20 = v10;
    *v9 = 136315650;

    v11 = sub_264785764();
    v13 = sub_2646DF234(v11, v12, &v20);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2646DF234(0xD000000000000010, 0x8000000264794940, &v20);
    *(v9 + 22) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C30, &qword_264788A68);
    v14 = sub_264785B34();
    v16 = v15;

    v17 = sub_2646DF234(v14, v16, &v20);

    *(v9 + 24) = v17;
    _os_log_impl(&dword_264605000, v7, v8, "%s, %s: recipientHandles was changed to %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v10, -1, -1);
    MEMORY[0x266740650](v9, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t (*SessionViewModel.recipientHandles.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *a1 = a1[1];
  return sub_2646208A0;
}

uint64_t sub_2646208A0(uint64_t *a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v4;
  v5 = a1[2];
  if (a2)
  {

    sub_264783EE4();
    sub_264620548();
    v6 = *a1;
  }

  else
  {
    v8 = a1[2];

    sub_264783EE4();
    return sub_264620548();
  }
}

uint64_t sub_2646209A8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D00, &qword_264788EB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B68, &qword_264788A40);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t SessionViewModel.$recipientHandles.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D00, &qword_264788EB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B68, &qword_264788A40);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$recipientHandles.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D00, &qword_264788EB0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__recipientHandles;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B68, &qword_264788A40);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

BOOL SessionViewModel.hasRecipientHandles.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  result = v2;
  if (v2)
  {
    v1 = *(v2 + 16);

    return v1 != 0;
  }

  return result;
}

uint64_t SessionViewModel.groupID.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v1;
}

double sub_264620ED0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_264620F50(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  return sub_264621058();
}

uint64_t SessionViewModel.groupID.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  return sub_264621058();
}

uint64_t sub_264621058()
{
  v1 = *v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();

  v7 = sub_264783E14();
  v8 = sub_2647859F4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315650;
    v19[1] = v0;

    v11 = sub_264785764();
    v13 = sub_2646DF234(v11, v12, &v20);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_2646DF234(0x444970756F7267, 0xE700000000000000, &v20);
    *(v9 + 22) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75C40, &qword_264788A70);
    v14 = sub_264785B34();
    v16 = v15;

    v17 = sub_2646DF234(v14, v16, &v20);

    *(v9 + 24) = v17;
    _os_log_impl(&dword_264605000, v7, v8, "%s, %s: groupID was changed to %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v10, -1, -1);
    MEMORY[0x266740650](v9, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

void (*SessionViewModel.groupID.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *v4 = v4[1];
  return sub_2646213E0;
}

void sub_2646213E0(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];
  swift_getKeyPath();
  swift_getKeyPath();
  v3[2] = v4;
  v6 = v3[4];
  v3[3] = v5;
  if (a2)
  {

    sub_264783EE4();
    sub_264621058();
    v7 = v3[1];
  }

  else
  {

    sub_264783EE4();
    sub_264621058();
  }

  free(v3);
}

uint64_t sub_2646214E0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t SessionViewModel.$groupID.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$groupID.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D08, &qword_264788F00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__groupID;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B60, &unk_26478B420);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t SessionViewModel.sessionInitializationInfo.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();
}

double sub_264621984@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_264621A0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  return sub_264621B20();
}

uint64_t SessionViewModel.sessionInitializationInfo.setter(__int128 *a1)
{
  v3 = *a1;
  v1 = *(a1 + 2);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_264783EE4();
  return sub_264621B20();
}

uint64_t sub_264621B20()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  swift_retain_n();
  v8 = sub_264783E14();
  v9 = sub_2647859F4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v24 = v3;
    v11 = v10;
    v23 = swift_slowAlloc();
    v29 = v23;
    *v11 = 136316162;
    v26 = v1;

    v12 = sub_264785764();
    v14 = sub_2646DF234(v12, v13, &v29);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_2646DF234(0xD000000000000019, 0x8000000264794920, &v29);
    *(v11 + 22) = 2048;
    swift_getKeyPath();
    HIDWORD(v22) = v9;
    swift_getKeyPath();
    sub_264783ED4();

    v15 = v26;

    *(v11 + 24) = v15;

    *(v11 + 32) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v16 = v27;

    *(v11 + 34) = v16;

    *(v11 + 42) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v25 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75F68, &qword_264789900);
    v17 = sub_264785764();
    v19 = sub_2646DF234(v17, v18, &v29);

    *(v11 + 44) = v19;
    _os_log_impl(&dword_264605000, v8, BYTE4(v22), "%s, %s: sessionInitializationInfo was changed to initiatorEligibility, %ld, receiverEligibility, %ld, initiatorInvitationTokens %s", v11, 0x34u);
    v20 = v23;
    swift_arrayDestroy();
    MEMORY[0x266740650](v20, -1, -1);
    MEMORY[0x266740650](v11, -1, -1);

    return (*(v4 + 8))(v7, v24);
  }

  else
  {

    return (*(v4 + 8))(v7, v3);
  }
}

void (*SessionViewModel.sessionInitializationInfo.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return sub_264621F90;
}

void sub_264621F90(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  swift_getKeyPath();
  swift_getKeyPath();
  v3[3] = v4;
  v7 = v3[6];
  v3[4] = v5;
  v3[5] = v6;
  if (a2)
  {

    sub_264783EE4();
    sub_264621B20();
    v8 = v3[2];
  }

  else
  {

    sub_264783EE4();
    sub_264621B20();
  }

  free(v3);
}

uint64_t sub_264622094(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D10, &qword_264788F50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B58, &unk_264788A30);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t SessionViewModel.$sessionInitializationInfo.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D10, &qword_264788F50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B58, &unk_264788A30);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$sessionInitializationInfo.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D10, &qword_264788F50);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__sessionInitializationInfo;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B58, &unk_264788A30);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t SessionViewModel.initiatorEligibility.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v1;
}

uint64_t SessionViewModel.receiverEligibility.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v1;
}

uint64_t sub_264622634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = sub_264783EE4();
  return a4(v5);
}

uint64_t sub_2646226B4()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_264783E24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264783DF4();
  swift_retain_n();
  v8 = sub_264783E14();
  v9 = sub_2647859F4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v1;
    v17 = v11;
    *v10 = 136315650;

    v12 = sub_264785764();
    v14 = sub_2646DF234(v12, v13, &v17);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2646DF234(0x616974696E497369, 0xEE00676E697A696CLL, &v17);
    *(v10 + 22) = 1024;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    *(v10 + 24) = v16;

    _os_log_impl(&dword_264605000, v8, v9, "%s, %s: %{BOOL}d", v10, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x266740650](v11, -1, -1);
    MEMORY[0x266740650](v10, -1, -1);
  }

  else
  {
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t (*SessionViewModel.isInitializing.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  *(a1 + 8) = *(a1 + 9);
  return sub_2646229E8;
}

uint64_t sub_264622A2C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t SessionViewModel.$isInitializing.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$isInitializing.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__isInitializing;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*SessionViewModel.refreshingEligibility.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_264622F4C;
}

uint64_t sub_264622F6C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t SessionViewModel.$refreshingEligibility.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$refreshingEligibility.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__refreshingEligibility;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t (*SessionViewModel.refreshingInitiatorEligibility.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

uint64_t sub_2646234A8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t SessionViewModel.$refreshingInitiatorEligibility.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$refreshingInitiatorEligibility.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__refreshingInitiatorEligibility;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

uint64_t sub_264623924()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264783EE4();
}

uint64_t (*SessionViewModel.refreshingReceiverEligibility.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_264783EC4();
  return sub_26465A0B0;
}

void sub_264623A34(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_264623AB8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t SessionViewModel.$refreshingReceiverEligibility.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EB4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SessionViewModel.$refreshingReceiverEligibility.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75D18, &qword_264788FA0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC15SafetyMonitorUI16SessionViewModel__refreshingReceiverEligibility;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75B50, &qword_264788A28);
  sub_264783EA4();
  swift_endAccess();
  return sub_26465A0AC;
}

BOOL SessionViewModel.isStartingAndSending.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v3)
  {
    v0 = [v3 sessionState];

    if (v0 == 10)
    {
      return 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (!v3)
  {
    return 0;
  }

  v2 = [v3 sessionState];

  return v2 == 11;
}