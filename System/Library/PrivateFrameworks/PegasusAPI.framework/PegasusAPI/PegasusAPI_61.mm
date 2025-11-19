uint64_t sub_1B92C1950(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v122 = &v117 - v6;
  v120 = type metadata accessor for Searchfoundation_URL();
  v7 = *(*(v120 - 8) + 64);
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v123 = &v117 - v11;
  v124 = type metadata accessor for Searchfoundation_LatLng(0);
  v12 = *(*(v124 - 8) + 64);
  MEMORY[0x1EEE9AC00](v124);
  v125 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v127 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v128 = &v117 - v18;
  v129 = type metadata accessor for Searchfoundation_Image(0);
  v19 = *(*(v129 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v129);
  v121 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v126 = &v117 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v132 = &v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v133 = &v117 - v27;
  v134 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  v28 = *(*(v134 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v134);
  v130 = &v117 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v131 = &v117 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF90, &unk_1B96B77C0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8);
  v118 = &v117 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v117 - v36;
  v139 = type metadata accessor for Searchfoundation_Punchout();
  v38 = *(*(v139 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v139);
  v117 = &v117 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  swift_beginAccess();
  v41 = *(a1 + 24);
  v42 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v42 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v42)
  {
    v43 = *(a1 + 24);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v44 = *(a1 + 40);
  v45 = HIBYTE(v44) & 0xF;
  if ((v44 & 0x2000000000000000) == 0)
  {
    v45 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v45)
  {
    v46 = *(a1 + 40);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 48) == 1)
  {
    result = sub_1B964C670();
    if (v1)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 56) + 16))
  {
    v48 = *(a1 + 56);

    sub_1B964C6E0();
    if (!v1)
    {

      goto LABEL_16;
    }
  }

LABEL_16:
  swift_beginAccess();
  if (*(a1 + 64) == 1)
  {
    result = sub_1B964C670();
    if (v1)
    {
      return result;
    }
  }

  swift_beginAccess();
  v49 = *(a1 + 80);
  v50 = HIBYTE(v49) & 0xF;
  if ((v49 & 0x2000000000000000) == 0)
  {
    v50 = *(a1 + 72) & 0xFFFFFFFFFFFFLL;
  }

  if (v50)
  {
    v51 = *(a1 + 80);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v37, 1, v139) == 1)
  {
    sub_1B8D9207C(v37, &qword_1EBACAF90, &unk_1B96B77C0);
  }

  else
  {
    sub_1B92C089C();
    sub_1B8CD2F48(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
    sub_1B964C740();
    if (v1)
    {
      return sub_1B92C094C();
    }

    sub_1B92C094C();
  }

  v52 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__applicationBundleIdentifier);
  swift_beginAccess();
  v53 = *v52;
  v54 = v52[1];
  v55 = HIBYTE(v54) & 0xF;
  if ((v54 & 0x2000000000000000) == 0)
  {
    v55 = v53 & 0xFFFFFFFFFFFFLL;
  }

  if (v55)
  {

    sub_1B964C700();
    if (v2)
    {
    }
  }

  v56 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__contactIdentifier);
  swift_beginAccess();
  v57 = *v56;
  v58 = v56[1];
  v59 = HIBYTE(v58) & 0xF;
  if ((v58 & 0x2000000000000000) == 0)
  {
    v59 = v57 & 0xFFFFFFFFFFFFLL;
  }

  if (v59)
  {

    sub_1B964C700();
    if (v2)
    {
    }
  }

  v60 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__phoneNumber);
  swift_beginAccess();
  v61 = *v60;
  v62 = v60[1];
  v63 = HIBYTE(v62) & 0xF;
  if ((v62 & 0x2000000000000000) == 0)
  {
    v63 = v61 & 0xFFFFFFFFFFFFLL;
  }

  if (v63)
  {

    sub_1B964C700();
    if (v2)
    {
    }
  }

  v64 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__email);
  swift_beginAccess();
  v65 = *v64;
  v66 = v64[1];
  v67 = HIBYTE(v66) & 0xF;
  if ((v66 & 0x2000000000000000) == 0)
  {
    v67 = v65 & 0xFFFFFFFFFFFFLL;
  }

  if (v67)
  {

    sub_1B964C700();
    if (v2)
    {
    }
  }

  v68 = a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__mapsData;
  swift_beginAccess();
  if (!sub_1B8D99EA8(*v68, *(v68 + 8)))
  {
    v69 = *v68;
    v70 = *(v68 + 8);
    sub_1B8D91FCC(v69, v70);
    sub_1B964C6A0();
    if (v2)
    {
      return sub_1B8D538A0(v69, v70);
    }

    sub_1B8D538A0(v69, v70);
  }

  swift_beginAccess();
  v71 = v133;
  sub_1B8D92024();
  v72 = v134;
  if (__swift_getEnumTagSinglePayload(v71, 1, v134) == 1)
  {
    sub_1B8D9207C(v71, &qword_1EBACAF98, &qword_1B96B98A0);
  }

  else
  {
    sub_1B92C089C();
    sub_1B8CD2F48(&qword_1ED9D2D38, type metadata accessor for Searchfoundation_GraphicalFloat);
    sub_1B964C740();
    if (v2)
    {
      return sub_1B92C094C();
    }

    sub_1B92C094C();
  }

  swift_beginAccess();
  v73 = v132;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v73, 1, v72) == 1)
  {
    sub_1B8D9207C(v73, &qword_1EBACAF98, &qword_1B96B98A0);
  }

  else
  {
    sub_1B92C089C();
    sub_1B8CD2F48(&qword_1ED9D2D38, type metadata accessor for Searchfoundation_GraphicalFloat);
    sub_1B964C740();
    if (v2)
    {
      return sub_1B92C094C();
    }

    sub_1B92C094C();
  }

  v74 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__provider);
  swift_beginAccess();
  v75 = *v74;
  v76 = v74[1];
  v77 = HIBYTE(v76) & 0xF;
  if ((v76 & 0x2000000000000000) == 0)
  {
    v77 = v75 & 0xFFFFFFFFFFFFLL;
  }

  if (v77)
  {

    sub_1B964C700();
    if (v2)
    {
    }
  }

  v78 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__offerType);
  swift_beginAccess();
  v79 = *v78;
  v80 = v78[1];
  v81 = HIBYTE(v80) & 0xF;
  if ((v80 & 0x2000000000000000) == 0)
  {
    v81 = v79 & 0xFFFFFFFFFFFFLL;
  }

  if (v81)
  {

    sub_1B964C700();
    if (v2)
    {
    }
  }

  v82 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__type);
  swift_beginAccess();
  v83 = *v82;
  v84 = v82[1];
  v85 = HIBYTE(v84) & 0xF;
  if ((v84 & 0x2000000000000000) == 0)
  {
    v85 = v83 & 0xFFFFFFFFFFFFLL;
  }

  if (v85)
  {

    sub_1B964C700();
    if (v2)
    {
    }
  }

  v86 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__labelItunes);
  swift_beginAccess();
  v87 = *v86;
  v88 = v86[1];
  v89 = HIBYTE(v88) & 0xF;
  if ((v88 & 0x2000000000000000) == 0)
  {
    v89 = v87 & 0xFFFFFFFFFFFFLL;
  }

  if (v89)
  {

    sub_1B964C700();
    if (v2)
    {
    }
  }

  v90 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__isItunes;
  swift_beginAccess();
  if (*(a1 + v90) == 1)
  {
    result = sub_1B964C670();
    if (v2)
    {
      return result;
    }
  }

  swift_beginAccess();
  v91 = v128;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v91, 1, v129) == 1)
  {
    sub_1B8D9207C(v91, &qword_1EBAB8EA8, &unk_1B96B77D0);
  }

  else
  {
    sub_1B92C089C();
    sub_1B8CD2F48(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
    sub_1B964C740();
    if (v2)
    {
      return sub_1B92C094C();
    }

    sub_1B92C094C();
  }

  swift_beginAccess();
  v92 = v127;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v92, 1, v129) == 1)
  {
    sub_1B8D9207C(v92, &qword_1EBAB8EA8, &unk_1B96B77D0);
  }

  else
  {
    sub_1B92C089C();
    sub_1B8CD2F48(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
    sub_1B964C740();
    if (v2)
    {
      return sub_1B92C094C();
    }

    sub_1B92C094C();
  }

  swift_beginAccess();
  v93 = v123;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v93, 1, v124) == 1)
  {
    sub_1B8D9207C(v93, &qword_1EBACAFA0, &unk_1B96CB440);
  }

  else
  {
    sub_1B92C089C();
    sub_1B8CD2F48(&qword_1ED9D3070, type metadata accessor for Searchfoundation_LatLng);
    sub_1B964C740();
    if (v2)
    {
      return sub_1B92C094C();
    }

    sub_1B92C094C();
  }

  v94 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__messageIdentifier);
  swift_beginAccess();
  v95 = *v94;
  v96 = v94[1];
  v97 = HIBYTE(v96) & 0xF;
  if ((v96 & 0x2000000000000000) == 0)
  {
    v97 = v95 & 0xFFFFFFFFFFFFLL;
  }

  if (v97)
  {

    sub_1B964C700();
    if (v2)
    {
    }
  }

  swift_beginAccess();
  v98 = v122;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v98, 1, v120) == 1)
  {
    sub_1B8D9207C(v122, &qword_1EBAB8E20, &unk_1B964D620);
    goto LABEL_109;
  }

  sub_1B92C089C();
  sub_1B8CD2F48(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL);
  sub_1B964C740();
  if (v2)
  {
    return sub_1B92C094C();
  }

  sub_1B92C094C();
LABEL_109:
  v99 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__persistentID);
  swift_beginAccess();
  v100 = *v99;
  v101 = v99[1];
  v102 = HIBYTE(v101) & 0xF;
  if ((v101 & 0x2000000000000000) == 0)
  {
    v102 = v100 & 0xFFFFFFFFFFFFLL;
  }

  if (v102)
  {

    sub_1B964C700();
    if (v2)
    {
    }
  }

  v103 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__mediaEntityType);
  swift_beginAccess();
  if (!*v103 || (v104 = *(v103 + 8), v137 = *v103, v138 = v104, sub_1B92C6768(), result = sub_1B964C680(), !v2))
  {
    v105 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__universalLibraryID);
    swift_beginAccess();
    v106 = *v105;
    v107 = v105[1];
    v108 = HIBYTE(v107) & 0xF;
    if ((v107 & 0x2000000000000000) == 0)
    {
      v108 = v106 & 0xFFFFFFFFFFFFLL;
    }

    if (!v108 || (, sub_1B964C700(), result = , !v2))
    {
      v109 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__interactionContentType);
      swift_beginAccess();
      v110 = *v109;
      v111 = v109[1];
      v112 = HIBYTE(v111) & 0xF;
      if ((v111 & 0x2000000000000000) == 0)
      {
        v112 = v110 & 0xFFFFFFFFFFFFLL;
      }

      if (!v112 || (, sub_1B964C700(), result = , !v2))
      {
        swift_beginAccess();
        v113 = v118;
        sub_1B8D92024();
        if (__swift_getEnumTagSinglePayload(v113, 1, v139) == 1)
        {
          sub_1B8D9207C(v118, &qword_1EBACAF90, &unk_1B96B77C0);
        }

        else
        {
          sub_1B92C089C();
          sub_1B8CD2F48(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
          sub_1B964C740();
          result = sub_1B92C094C();
          if (v2)
          {
            return result;
          }
        }

        v114 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__shouldSearchDirectionsAlongCurrentRoute;
        swift_beginAccess();
        if (*(a1 + v114) != 1 || (result = sub_1B964C670(), !v2))
        {
          v115 = (a1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__directionsMode);
          result = swift_beginAccess();
          if (*v115)
          {
            v116 = *(v115 + 8);
            v135 = *v115;
            v136 = v116;
            sub_1B92C67BC();
            return sub_1B964C680();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_ActionItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_16_25();
  if (*(v1 + v2) != *(v0 + v2))
  {
    v3 = *(v1 + v2);

    sub_1B92C3040();
    v5 = v4;

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_81();
  sub_1B8CD2F48(v6, v7);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

void sub_1B92C3040()
{
  OUTLINED_FUNCTION_284();
  v1 = v0;
  v3 = v2;
  v318 = type metadata accessor for Searchfoundation_URL();
  v4 = OUTLINED_FUNCTION_59_1(v318);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_21();
  v314 = v7;
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E28, &unk_1B96B7BB0);
  OUTLINED_FUNCTION_59_1(v315);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_185();
  v320 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  v13 = OUTLINED_FUNCTION_183(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44_0();
  v316 = v16;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_266_0();
  v317 = v18;
  v19 = OUTLINED_FUNCTION_201();
  v325 = type metadata accessor for Searchfoundation_LatLng(v19);
  v20 = OUTLINED_FUNCTION_59_1(v325);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_21();
  v319 = v23;
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB018, &unk_1B96B9910);
  OUTLINED_FUNCTION_59_1(v321);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_185();
  v326 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA0, &unk_1B96CB440);
  v29 = OUTLINED_FUNCTION_183(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_44_0();
  v322 = v32;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_266_0();
  v324 = v34;
  v35 = OUTLINED_FUNCTION_201();
  v334 = type metadata accessor for Searchfoundation_Image(v35);
  v36 = OUTLINED_FUNCTION_59_1(v334);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_44_0();
  v323 = v39;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_266_0();
  v328 = v41;
  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EB0, &qword_1B964D6B0);
  v42 = OUTLINED_FUNCTION_59_1(v332);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_44_0();
  v330 = v45;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_266_0();
  v335 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v49 = OUTLINED_FUNCTION_183(v48);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_44_0();
  v327 = v52;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_682();
  v329 = v54;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_682();
  v331 = v56;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_266_0();
  v333 = v58;
  v59 = OUTLINED_FUNCTION_201();
  v343 = type metadata accessor for Searchfoundation_GraphicalFloat(v59);
  v60 = OUTLINED_FUNCTION_59_1(v343);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_44_0();
  v336 = v63;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_266_0();
  v338 = v65;
  v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB020, &unk_1B96B7BC0);
  v66 = OUTLINED_FUNCTION_59_1(v342);
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_44_0();
  v340 = v69;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_266_0();
  v341 = v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  v73 = OUTLINED_FUNCTION_183(v72);
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_44_0();
  v337 = v76;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_682();
  v339 = v78;
  OUTLINED_FUNCTION_230();
  v80 = MEMORY[0x1EEE9AC00](v79);
  v82 = (v311 - v81);
  MEMORY[0x1EEE9AC00](v80);
  v84 = v311 - v83;
  v346 = type metadata accessor for Searchfoundation_Punchout();
  v85 = OUTLINED_FUNCTION_59_1(v346);
  v87 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_21();
  v344 = v88;
  v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB028, &unk_1B96B98F0);
  v89 = OUTLINED_FUNCTION_59_1(v345);
  v91 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_44_0();
  v313 = v92;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v93);
  v95 = v311 - v94;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF90, &unk_1B96B77C0);
  v97 = OUTLINED_FUNCTION_183(v96);
  v99 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_44_0();
  v311[1] = v100;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_682();
  v312 = v102;
  OUTLINED_FUNCTION_230();
  v104 = MEMORY[0x1EEE9AC00](v103);
  MEMORY[0x1EEE9AC00](v104);
  v106 = v311 - v105;
  OUTLINED_FUNCTION_521();
  v107 = *(v3 + 16);
  v108 = *(v3 + 24);
  OUTLINED_FUNCTION_521();
  v109 = v107 == *(v1 + 16) && v108 == *(v1 + 24);
  if (v109 || (OUTLINED_FUNCTION_690(), (sub_1B964C9F0() & 1) != 0))
  {
    OUTLINED_FUNCTION_521();
    v110 = *(v3 + 32);
    v111 = *(v3 + 40);
    OUTLINED_FUNCTION_521();
    v112 = v110 == *(v1 + 32) && v111 == *(v1 + 40);
    if (v112 || (OUTLINED_FUNCTION_690(), (sub_1B964C9F0() & 1) != 0))
    {
      OUTLINED_FUNCTION_521();
      v113 = *(v3 + 48);
      OUTLINED_FUNCTION_521();
      if (v113 == *(v1 + 48))
      {
        OUTLINED_FUNCTION_521();
        v114 = *(v3 + 56);
        OUTLINED_FUNCTION_521();
        if (sub_1B8D6123C(v114, *(v1 + 56)))
        {
          OUTLINED_FUNCTION_521();
          v115 = *(v3 + 64);
          OUTLINED_FUNCTION_521();
          if (v115 == *(v1 + 64))
          {
            OUTLINED_FUNCTION_521();
            v116 = *(v3 + 72);
            v117 = *(v3 + 80);
            OUTLINED_FUNCTION_521();
            v118 = v116 == *(v1 + 72) && v117 == *(v1 + 80);
            if (v118 || (OUTLINED_FUNCTION_690(), (sub_1B964C9F0() & 1) != 0))
            {
              OUTLINED_FUNCTION_521();
              sub_1B8D92024();
              OUTLINED_FUNCTION_521();
              OUTLINED_FUNCTION_106_3(v345);
              sub_1B8D92024();
              v311[0] = qword_1ED9E1000;
              sub_1B8D92024();
              v119 = v346;
              OUTLINED_FUNCTION_178(v95, 1, v346);
              if (v109)
              {

                sub_1B8D9207C(v106, &qword_1EBACAF90, &unk_1B96B77C0);
                OUTLINED_FUNCTION_178(&v95[v311[0]], 1, v119);
                if (v109)
                {
                  sub_1B8D9207C(v95, &qword_1EBACAF90, &unk_1B96B77C0);
                  goto LABEL_32;
                }
              }

              else
              {
                sub_1B8D92024();
                v120 = OUTLINED_FUNCTION_102_3();
                OUTLINED_FUNCTION_178(v120, v121, v119);
                if (!v122)
                {
                  sub_1B92C089C();

                  LODWORD(v311[0]) = static Searchfoundation_Punchout.== infix(_:_:)();
                  sub_1B92C094C();
                  sub_1B8D9207C(v106, &qword_1EBACAF90, &unk_1B96B77C0);
                  sub_1B92C094C();
                  sub_1B8D9207C(v95, &qword_1EBACAF90, &unk_1B96B77C0);
                  if ((v311[0] & 1) == 0)
                  {
                    goto LABEL_29;
                  }

LABEL_32:
                  v126 = (v3 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__applicationBundleIdentifier);
                  OUTLINED_FUNCTION_79_1();
                  v127 = *v126;
                  v128 = v126[1];
                  OUTLINED_FUNCTION_79_1();
                  OUTLINED_FUNCTION_174_0();
                  v130 = v109 && v128 == v129;
                  if (!v130 && (OUTLINED_FUNCTION_98_8() & 1) == 0)
                  {
                    goto LABEL_29;
                  }

                  v131 = (v3 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__contactIdentifier);
                  OUTLINED_FUNCTION_79_1();
                  v132 = *v131;
                  v133 = v131[1];
                  OUTLINED_FUNCTION_79_1();
                  OUTLINED_FUNCTION_174_0();
                  v135 = v109 && v133 == v134;
                  if (!v135 && (OUTLINED_FUNCTION_98_8() & 1) == 0)
                  {
                    goto LABEL_29;
                  }

                  v136 = (v3 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__phoneNumber);
                  OUTLINED_FUNCTION_79_1();
                  v137 = *v136;
                  v138 = v136[1];
                  OUTLINED_FUNCTION_79_1();
                  OUTLINED_FUNCTION_174_0();
                  v140 = v109 && v138 == v139;
                  if (!v140 && (OUTLINED_FUNCTION_98_8() & 1) == 0)
                  {
                    goto LABEL_29;
                  }

                  v141 = (v3 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__email);
                  OUTLINED_FUNCTION_79_1();
                  v142 = *v141;
                  v143 = v141[1];
                  OUTLINED_FUNCTION_79_1();
                  OUTLINED_FUNCTION_174_0();
                  v145 = v109 && v143 == v144;
                  if (!v145 && (OUTLINED_FUNCTION_98_8() & 1) == 0)
                  {
                    goto LABEL_29;
                  }

                  v146 = (v3 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__mapsData);
                  OUTLINED_FUNCTION_521();
                  v148 = *v146;
                  v147 = v146[1];
                  v149 = (v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__mapsData);
                  OUTLINED_FUNCTION_30_11();
                  v151 = *v149;
                  v150 = v149[1];
                  sub_1B8D91FCC(v148, v147);
                  sub_1B8D91FCC(v151, v150);
                  v152 = MEMORY[0x1BFADC060](v148, v147, v151, v150);
                  sub_1B8D538A0(v151, v150);
                  sub_1B8D538A0(v148, v147);
                  if ((v152 & 1) == 0)
                  {
                    goto LABEL_29;
                  }

                  OUTLINED_FUNCTION_521();
                  OUTLINED_FUNCTION_52_2();
                  OUTLINED_FUNCTION_521();
                  v153 = v341;
                  v154 = *(v342 + 48);
                  OUTLINED_FUNCTION_52_2();
                  OUTLINED_FUNCTION_52_2();
                  v155 = v343;
                  OUTLINED_FUNCTION_178(v153, 1, v343);
                  if (v109)
                  {
                    sub_1B8D9207C(v84, &qword_1EBACAF98, &qword_1B96B98A0);
                    OUTLINED_FUNCTION_37_0(v153 + v154);
                    if (v109)
                    {
                      sub_1B8D9207C(v153, &qword_1EBACAF98, &qword_1B96B98A0);
                      goto LABEL_64;
                    }
                  }

                  else
                  {
                    sub_1B8D92024();
                    OUTLINED_FUNCTION_37_0(v153 + v154);
                    if (!v156)
                    {
                      OUTLINED_FUNCTION_4_44();
                      v157 = v338;
                      sub_1B92C089C();
                      if (*v82 != *v157)
                      {
                        goto LABEL_102;
                      }

                      v158 = *(v155 + 20);
                      sub_1B964C2B0();
                      OUTLINED_FUNCTION_0_81();
                      sub_1B8CD2F48(v159, v160);
                      v161 = OUTLINED_FUNCTION_132_7();
                      OUTLINED_FUNCTION_59_12();
                      sub_1B92C094C();
                      OUTLINED_FUNCTION_396_0();
                      sub_1B8D9207C(v162, v163, v164);
                      sub_1B92C094C();
                      OUTLINED_FUNCTION_396_0();
                      sub_1B8D9207C(v165, v166, v167);
                      if ((v161 & 1) == 0)
                      {
                        goto LABEL_29;
                      }

LABEL_64:
                      OUTLINED_FUNCTION_521();
                      v168 = v339;
                      OUTLINED_FUNCTION_52_2();
                      OUTLINED_FUNCTION_521();
                      v169 = *(v342 + 48);
                      v170 = v340;
                      OUTLINED_FUNCTION_81_1();
                      OUTLINED_FUNCTION_94_2();
                      v171 = OUTLINED_FUNCTION_355();
                      v172 = v343;
                      OUTLINED_FUNCTION_178(v171, v173, v343);
                      if (v109)
                      {
                        sub_1B8D9207C(v168, &qword_1EBACAF98, &qword_1B96B98A0);
                        OUTLINED_FUNCTION_37_0(v170 + v169);
                        if (v109)
                        {
                          sub_1B8D9207C(v170, &qword_1EBACAF98, &qword_1B96B98A0);
                          goto LABEL_76;
                        }
                      }

                      else
                      {
                        v174 = v337;
                        sub_1B8D92024();
                        OUTLINED_FUNCTION_37_0(v170 + v169);
                        if (!v175)
                        {
                          OUTLINED_FUNCTION_4_44();
                          v176 = v336;
                          sub_1B92C089C();
                          if (*v174 == *v176)
                          {
                            v177 = *(v172 + 20);
                            sub_1B964C2B0();
                            OUTLINED_FUNCTION_0_81();
                            sub_1B8CD2F48(v178, v179);
                            v180 = OUTLINED_FUNCTION_132_7();
                            OUTLINED_FUNCTION_59_12();
                            sub_1B92C094C();
                            OUTLINED_FUNCTION_189(v168);
                            sub_1B92C094C();
                            OUTLINED_FUNCTION_189(v170);
                            if ((v180 & 1) == 0)
                            {
                              goto LABEL_29;
                            }

LABEL_76:
                            v181 = (v3 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__provider);
                            OUTLINED_FUNCTION_79_1();
                            v182 = *v181;
                            v183 = v181[1];
                            OUTLINED_FUNCTION_30_11();
                            OUTLINED_FUNCTION_54_4();
                            v185 = v109 && v183 == v184;
                            if (!v185 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
                            {
                              goto LABEL_29;
                            }

                            v186 = (v3 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__offerType);
                            OUTLINED_FUNCTION_79_1();
                            v187 = *v186;
                            v188 = v186[1];
                            OUTLINED_FUNCTION_30_11();
                            OUTLINED_FUNCTION_54_4();
                            v190 = v109 && v188 == v189;
                            if (!v190 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
                            {
                              goto LABEL_29;
                            }

                            v191 = (v3 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__type);
                            OUTLINED_FUNCTION_79_1();
                            v192 = *v191;
                            v193 = v191[1];
                            OUTLINED_FUNCTION_30_11();
                            OUTLINED_FUNCTION_54_4();
                            v195 = v109 && v193 == v194;
                            if (!v195 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
                            {
                              goto LABEL_29;
                            }

                            v196 = (v3 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__labelItunes);
                            OUTLINED_FUNCTION_79_1();
                            v197 = *v196;
                            v198 = v196[1];
                            OUTLINED_FUNCTION_30_11();
                            OUTLINED_FUNCTION_54_4();
                            v200 = v109 && v198 == v199;
                            if (!v200 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
                            {
                              goto LABEL_29;
                            }

                            v201 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__isItunes;
                            OUTLINED_FUNCTION_521();
                            LODWORD(v201) = *(v3 + v201);
                            v202 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__isItunes;
                            OUTLINED_FUNCTION_521();
                            if (v201 != *(v1 + v202))
                            {
                              goto LABEL_29;
                            }

                            OUTLINED_FUNCTION_521();
                            OUTLINED_FUNCTION_81_1();
                            OUTLINED_FUNCTION_521();
                            OUTLINED_FUNCTION_106_3(v332);
                            OUTLINED_FUNCTION_81_1();
                            OUTLINED_FUNCTION_94_2();
                            v203 = OUTLINED_FUNCTION_355();
                            OUTLINED_FUNCTION_178(v203, v204, v334);
                            if (v109)
                            {
                              sub_1B8D9207C(v333, &qword_1EBAB8EA8, &unk_1B96B77D0);
                              v205 = OUTLINED_FUNCTION_105_2(v335);
                              OUTLINED_FUNCTION_178(v205, v206, v207);
                              if (v109)
                              {
                                sub_1B8D9207C(v335, &qword_1EBAB8EA8, &unk_1B96B77D0);
                                goto LABEL_111;
                              }
                            }

                            else
                            {
                              sub_1B8D92024();
                              v211 = OUTLINED_FUNCTION_102_3();
                              OUTLINED_FUNCTION_178(v211, v212, v334);
                              if (!v213)
                              {
                                OUTLINED_FUNCTION_1_68();
                                v214 = v328;
                                sub_1B92C089C();
                                v215 = *(v334 + 20);
                                if (*(v331 + v215) != *(v214 + v215))
                                {
                                  v216 = *(v331 + v215);

                                  sub_1B94C6890();
                                  v218 = v217;

                                  if ((v218 & 1) == 0)
                                  {
LABEL_138:
                                    OUTLINED_FUNCTION_58_11();
                                    sub_1B92C094C();
                                    OUTLINED_FUNCTION_112_1();
                                    sub_1B8D9207C(v251, v252, v253);
                                    sub_1B92C094C();
                                    goto LABEL_103;
                                  }
                                }

                                v219 = sub_1B964C2B0();
                                OUTLINED_FUNCTION_0_81();
                                sub_1B8CD2F48(v220, v221);
                                OUTLINED_FUNCTION_396_0();
                                sub_1B964C850();
                                OUTLINED_FUNCTION_20_13();
                                sub_1B92C094C();
                                OUTLINED_FUNCTION_189(v333);
                                OUTLINED_FUNCTION_133_7();
                                OUTLINED_FUNCTION_189(v335);
                                if ((v219 & 1) == 0)
                                {
                                  goto LABEL_29;
                                }

LABEL_111:
                                OUTLINED_FUNCTION_521();
                                OUTLINED_FUNCTION_81_1();
                                OUTLINED_FUNCTION_521();
                                OUTLINED_FUNCTION_106_3(v332);
                                OUTLINED_FUNCTION_81_1();
                                OUTLINED_FUNCTION_94_2();
                                v222 = OUTLINED_FUNCTION_355();
                                OUTLINED_FUNCTION_178(v222, v223, v334);
                                if (v109)
                                {
                                  sub_1B8D9207C(v329, &qword_1EBAB8EA8, &unk_1B96B77D0);
                                  v224 = OUTLINED_FUNCTION_105_2(v330);
                                  OUTLINED_FUNCTION_178(v224, v225, v334);
                                  if (v109)
                                  {
                                    sub_1B8D9207C(v330, &qword_1EBAB8EA8, &unk_1B96B77D0);
                                    goto LABEL_123;
                                  }
                                }

                                else
                                {
                                  sub_1B8D92024();
                                  v226 = OUTLINED_FUNCTION_102_3();
                                  OUTLINED_FUNCTION_178(v226, v227, v334);
                                  if (!v228)
                                  {
                                    OUTLINED_FUNCTION_1_68();
                                    v229 = v323;
                                    sub_1B92C089C();
                                    v230 = *(v334 + 20);
                                    if (*(v327 + v230) == *(v229 + v230) || (v231 = *(v327 + v230), , , sub_1B94C6890(), v233 = v232, , , (v233 & 1) != 0))
                                    {
                                      v234 = sub_1B964C2B0();
                                      OUTLINED_FUNCTION_0_81();
                                      sub_1B8CD2F48(v235, v236);
                                      OUTLINED_FUNCTION_396_0();
                                      sub_1B964C850();
                                      OUTLINED_FUNCTION_20_13();
                                      sub_1B92C094C();
                                      OUTLINED_FUNCTION_189(v329);
                                      OUTLINED_FUNCTION_133_7();
                                      OUTLINED_FUNCTION_189(v330);
                                      if ((v234 & 1) == 0)
                                      {
                                        goto LABEL_29;
                                      }

LABEL_123:
                                      OUTLINED_FUNCTION_521();
                                      OUTLINED_FUNCTION_81_1();
                                      OUTLINED_FUNCTION_521();
                                      OUTLINED_FUNCTION_106_3(v321);
                                      OUTLINED_FUNCTION_81_1();
                                      OUTLINED_FUNCTION_94_2();
                                      v237 = OUTLINED_FUNCTION_355();
                                      OUTLINED_FUNCTION_178(v237, v238, v325);
                                      if (v109)
                                      {
                                        sub_1B8D9207C(v324, &qword_1EBACAFA0, &unk_1B96CB440);
                                        v239 = OUTLINED_FUNCTION_105_2(v326);
                                        OUTLINED_FUNCTION_178(v239, v240, v241);
                                        if (v109)
                                        {
                                          sub_1B8D9207C(v326, &qword_1EBACAFA0, &unk_1B96CB440);
                                          goto LABEL_128;
                                        }
                                      }

                                      else
                                      {
                                        sub_1B8D92024();
                                        v254 = OUTLINED_FUNCTION_102_3();
                                        OUTLINED_FUNCTION_178(v254, v255, v325);
                                        if (!v256)
                                        {
                                          OUTLINED_FUNCTION_9_28();
                                          v257 = v319;
                                          sub_1B92C089C();
                                          if (*v322 != *v257 || v322[1] != v319[1])
                                          {
LABEL_180:
                                            sub_1B92C094C();
                                            OUTLINED_FUNCTION_112_1();
                                            sub_1B8D9207C(v295, v296, v297);
                                            sub_1B92C094C();
                                            goto LABEL_103;
                                          }

                                          v258 = *(v325 + 24);
                                          sub_1B964C2B0();
                                          OUTLINED_FUNCTION_0_81();
                                          sub_1B8CD2F48(v259, v260);
                                          v261 = OUTLINED_FUNCTION_132_7();
                                          sub_1B92C094C();
                                          OUTLINED_FUNCTION_189(v324);
                                          OUTLINED_FUNCTION_133_7();
                                          OUTLINED_FUNCTION_189(v326);
                                          if ((v261 & 1) == 0)
                                          {
                                            goto LABEL_29;
                                          }

LABEL_128:
                                          v242 = (v3 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__messageIdentifier);
                                          OUTLINED_FUNCTION_79_1();
                                          v243 = *v242;
                                          v244 = v242[1];
                                          OUTLINED_FUNCTION_30_11();
                                          OUTLINED_FUNCTION_54_4();
                                          v246 = v109 && v244 == v245;
                                          if (!v246 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
                                          {
                                            goto LABEL_29;
                                          }

                                          OUTLINED_FUNCTION_521();
                                          OUTLINED_FUNCTION_81_1();
                                          OUTLINED_FUNCTION_521();
                                          OUTLINED_FUNCTION_106_3(v315);
                                          OUTLINED_FUNCTION_81_1();
                                          OUTLINED_FUNCTION_94_2();
                                          v247 = OUTLINED_FUNCTION_355();
                                          OUTLINED_FUNCTION_178(v247, v248, v318);
                                          if (v109)
                                          {
                                            sub_1B8D9207C(v317, &qword_1EBAB8E20, &unk_1B964D620);
                                            v249 = OUTLINED_FUNCTION_105_2(v320);
                                            OUTLINED_FUNCTION_178(v249, v250, v318);
                                            if (v109)
                                            {
                                              sub_1B8D9207C(v320, &qword_1EBAB8E20, &unk_1B964D620);
LABEL_159:
                                              v271 = (v3 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__persistentID);
                                              OUTLINED_FUNCTION_79_1();
                                              v272 = *v271;
                                              v273 = v271[1];
                                              OUTLINED_FUNCTION_30_11();
                                              OUTLINED_FUNCTION_54_4();
                                              v275 = v109 && v273 == v274;
                                              if (!v275 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
                                              {
                                                goto LABEL_29;
                                              }

                                              v276 = v3 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__mediaEntityType;
                                              OUTLINED_FUNCTION_521();
                                              v277 = *v276;
                                              v278 = *(v276 + 8);
                                              v279 = v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__mediaEntityType;
                                              OUTLINED_FUNCTION_30_11();
                                              v280 = *(v279 + 8);
                                              if (!sub_1B8D92198(v277, v278, *v279))
                                              {
                                                goto LABEL_29;
                                              }

                                              v281 = (v3 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__universalLibraryID);
                                              OUTLINED_FUNCTION_79_1();
                                              v282 = *v281;
                                              v283 = v281[1];
                                              OUTLINED_FUNCTION_30_11();
                                              OUTLINED_FUNCTION_54_4();
                                              v285 = v109 && v283 == v284;
                                              if (!v285 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
                                              {
                                                goto LABEL_29;
                                              }

                                              v286 = (v3 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__interactionContentType);
                                              OUTLINED_FUNCTION_79_1();
                                              v287 = *v286;
                                              v288 = v286[1];
                                              OUTLINED_FUNCTION_30_11();
                                              OUTLINED_FUNCTION_54_4();
                                              v290 = v109 && v288 == v289;
                                              if (!v290 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
                                              {
                                                goto LABEL_29;
                                              }

                                              OUTLINED_FUNCTION_521();
                                              OUTLINED_FUNCTION_81_1();
                                              OUTLINED_FUNCTION_521();
                                              OUTLINED_FUNCTION_106_3(v345);
                                              OUTLINED_FUNCTION_81_1();
                                              OUTLINED_FUNCTION_94_2();
                                              v291 = OUTLINED_FUNCTION_355();
                                              OUTLINED_FUNCTION_178(v291, v292, v346);
                                              if (v109)
                                              {
                                                sub_1B8D9207C(v312, &qword_1EBACAF90, &unk_1B96B77C0);
                                                v293 = OUTLINED_FUNCTION_105_2(v313);
                                                OUTLINED_FUNCTION_178(v293, v294, v346);
                                                if (v109)
                                                {
                                                  sub_1B8D9207C(v313, &qword_1EBACAF90, &unk_1B96B77C0);
                                                  goto LABEL_186;
                                                }
                                              }

                                              else
                                              {
                                                sub_1B8D92024();
                                                v298 = OUTLINED_FUNCTION_102_3();
                                                OUTLINED_FUNCTION_178(v298, v299, v346);
                                                if (!v300)
                                                {
                                                  v301 = v313;
                                                  sub_1B92C089C();
                                                  v302 = static Searchfoundation_Punchout.== infix(_:_:)();
                                                  sub_1B92C094C();
                                                  OUTLINED_FUNCTION_189(v312);
                                                  sub_1B92C094C();
                                                  OUTLINED_FUNCTION_189(v301);
                                                  if (v302)
                                                  {
LABEL_186:
                                                    v303 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__shouldSearchDirectionsAlongCurrentRoute;
                                                    OUTLINED_FUNCTION_521();
                                                    LODWORD(v303) = *(v3 + v303);
                                                    v304 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__shouldSearchDirectionsAlongCurrentRoute;
                                                    OUTLINED_FUNCTION_521();
                                                    if (v303 == *(v1 + v304))
                                                    {
                                                      v305 = v3 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__directionsMode;
                                                      OUTLINED_FUNCTION_521();
                                                      v306 = *v305;
                                                      v307 = *(v305 + 8);

                                                      v308 = v1 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ActionItemP33_0E9671004D6230EC0391B782716B514C13_StorageClass__directionsMode;
                                                      OUTLINED_FUNCTION_521();
                                                      v309 = *v308;
                                                      v310 = *(v308 + 8);

                                                      sub_1B8D92198(v306, v307, v309);
                                                      goto LABEL_30;
                                                    }
                                                  }

LABEL_29:

                                                  goto LABEL_30;
                                                }

                                                sub_1B8D9207C(v312, &qword_1EBACAF90, &unk_1B96B77C0);
                                                OUTLINED_FUNCTION_57_13();
                                                sub_1B92C094C();
                                              }

                                              v123 = &qword_1EBACB028;
                                              v124 = &unk_1B96B98F0;
                                              v125 = v313;
LABEL_28:
                                              sub_1B8D9207C(v125, v123, v124);
                                              goto LABEL_29;
                                            }
                                          }

                                          else
                                          {
                                            sub_1B8D92024();
                                            v262 = OUTLINED_FUNCTION_102_3();
                                            OUTLINED_FUNCTION_178(v262, v263, v318);
                                            if (!v264)
                                            {
                                              OUTLINED_FUNCTION_8_35();
                                              v265 = v314;
                                              sub_1B92C089C();
                                              v266 = *v316 == *v265 && v316[1] == v265[1];
                                              if (v266 || (sub_1B964C9F0() & 1) != 0)
                                              {
                                                v267 = *(v318 + 20);
                                                sub_1B964C2B0();
                                                OUTLINED_FUNCTION_0_81();
                                                sub_1B8CD2F48(v268, v269);
                                                v270 = OUTLINED_FUNCTION_132_7();
                                                sub_1B92C094C();
                                                OUTLINED_FUNCTION_189(v317);
                                                OUTLINED_FUNCTION_133_7();
                                                OUTLINED_FUNCTION_189(v320);
                                                if ((v270 & 1) == 0)
                                                {
                                                  goto LABEL_29;
                                                }

                                                goto LABEL_159;
                                              }

                                              goto LABEL_180;
                                            }

                                            sub_1B8D9207C(v317, &qword_1EBAB8E20, &unk_1B964D620);
                                            sub_1B92C094C();
                                          }

                                          v123 = &qword_1EBAB8E28;
                                          v124 = &unk_1B96B7BB0;
                                          v125 = v320;
                                          goto LABEL_28;
                                        }

                                        sub_1B8D9207C(v324, &qword_1EBACAFA0, &unk_1B96CB440);
                                        sub_1B92C094C();
                                      }

                                      v123 = &qword_1EBACB018;
                                      v124 = &unk_1B96B9910;
                                      v125 = v326;
                                      goto LABEL_28;
                                    }

                                    goto LABEL_138;
                                  }

                                  sub_1B8D9207C(v329, &qword_1EBAB8EA8, &unk_1B96B77D0);
                                  OUTLINED_FUNCTION_21_21();
                                  sub_1B92C094C();
                                }

                                v123 = &qword_1EBAB8EB0;
                                v124 = &qword_1B964D6B0;
                                v125 = v330;
                                goto LABEL_28;
                              }

                              sub_1B8D9207C(v333, &qword_1EBAB8EA8, &unk_1B96B77D0);
                              OUTLINED_FUNCTION_21_21();
                              sub_1B92C094C();
                            }

                            v123 = &qword_1EBAB8EB0;
                            v124 = &qword_1B964D6B0;
                            v125 = v335;
                            goto LABEL_28;
                          }

LABEL_102:
                          OUTLINED_FUNCTION_60_10();
                          sub_1B92C094C();
                          OUTLINED_FUNCTION_112_1();
                          sub_1B8D9207C(v208, v209, v210);
                          sub_1B92C094C();
LABEL_103:
                          OUTLINED_FUNCTION_112_1();
                          goto LABEL_28;
                        }

                        sub_1B8D9207C(v168, &qword_1EBACAF98, &qword_1B96B98A0);
                        OUTLINED_FUNCTION_61_8();
                        sub_1B92C094C();
                      }

                      v123 = &qword_1EBACB020;
                      v124 = &unk_1B96B7BC0;
                      v125 = v170;
                      goto LABEL_28;
                    }

                    sub_1B8D9207C(v84, &qword_1EBACAF98, &qword_1B96B98A0);
                    OUTLINED_FUNCTION_61_8();
                    sub_1B92C094C();
                  }

                  v123 = &qword_1EBACB020;
                  v124 = &unk_1B96B7BC0;
                  v125 = v153;
                  goto LABEL_28;
                }

                sub_1B8D9207C(v106, &qword_1EBACAF90, &unk_1B96B77C0);
                OUTLINED_FUNCTION_57_13();
                sub_1B92C094C();
              }

              v123 = &qword_1EBACB028;
              v124 = &unk_1B96B98F0;
              v125 = v95;
              goto LABEL_28;
            }
          }
        }
      }
    }
  }

LABEL_30:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B92C4D3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2F48(&qword_1EBACB010, type metadata accessor for Searchfoundation_ActionItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92C4DBC(uint64_t a1)
{
  v2 = sub_1B8CD2F48(&unk_1EBACAFB8, type metadata accessor for Searchfoundation_ActionItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92C4E2C()
{
  sub_1B8CD2F48(&unk_1EBACAFB8, type metadata accessor for Searchfoundation_ActionItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B92C4EB8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACAF78);
  __swift_project_value_buffer(v0, qword_1EBACAF78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "actionItem";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sublabel";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "offerIdentifier";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isEnabled";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "image";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_MediaOffer.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_288();
        sub_1B92C522C();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 5:
        OUTLINED_FUNCTION_288();
        sub_1B92C52E0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B92C522C()
{
  v0 = *(type metadata accessor for Searchfoundation_MediaOffer(0) + 32);
  type metadata accessor for Searchfoundation_ActionItem(0);
  sub_1B8CD2F48(&unk_1EBACAFB8, type metadata accessor for Searchfoundation_ActionItem);
  return sub_1B964C580();
}

uint64_t sub_1B92C52E0()
{
  v0 = *(type metadata accessor for Searchfoundation_MediaOffer(0) + 36);
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD2F48(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
  return sub_1B964C580();
}

uint64_t Searchfoundation_MediaOffer.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v43 = a3;
  v42 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_185();
  v41 = v10;
  v11 = OUTLINED_FUNCTION_201();
  v39 = type metadata accessor for Searchfoundation_Image(v11);
  v12 = OUTLINED_FUNCTION_59_1(v39);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_21();
  v38[1] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA8, &qword_1B96B9880);
  OUTLINED_FUNCTION_183(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v38 - v20;
  v22 = type metadata accessor for Searchfoundation_ActionItem(0);
  v23 = OUTLINED_FUNCTION_59_1(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_106_8();
  v40 = type metadata accessor for Searchfoundation_MediaOffer(0);
  v26 = v40[8];
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBACAFA8, &qword_1B96B9880);
  }

  else
  {
    sub_1B92C089C();
    sub_1B8CD2F48(&unk_1EBACAFB8, type metadata accessor for Searchfoundation_ActionItem);
    sub_1B964C740();
    result = sub_1B92C094C();
    if (v4)
    {
      return result;
    }
  }

  v28 = *v5;
  v29 = v5[1];
  OUTLINED_FUNCTION_1();
  v30 = v41;
  if (!v31 || (OUTLINED_FUNCTION_119_4(), result = sub_1B964C700(), !v4))
  {
    v32 = v5[2];
    v33 = v5[3];
    OUTLINED_FUNCTION_1();
    if (!v34 || (OUTLINED_FUNCTION_119_4(), result = sub_1B964C700(), !v4))
    {
      if (*(v5 + 32) != 1 || (OUTLINED_FUNCTION_119_4(), result = sub_1B964C670(), !v4))
      {
        v35 = v39;
        v36 = v40[9];
        sub_1B8D92024();
        if (__swift_getEnumTagSinglePayload(v30, 1, v35) == 1)
        {
          sub_1B8D9207C(v30, &qword_1EBAB8EA8, &unk_1B96B77D0);
        }

        else
        {
          sub_1B92C089C();
          sub_1B8CD2F48(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
          OUTLINED_FUNCTION_119_4();
          sub_1B964C740();
          result = sub_1B92C094C();
          if (v4)
          {
            return result;
          }
        }

        v37 = v5 + v40[7];
        return sub_1B964C290();
      }
    }
  }

  return result;
}

void static Searchfoundation_MediaOffer.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v4 = v3;
  v73 = type metadata accessor for Searchfoundation_Image(0);
  v5 = OUTLINED_FUNCTION_59_1(v73);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_21();
  v69 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_185();
  v70 = v13;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EB0, &qword_1B964D6B0);
  OUTLINED_FUNCTION_59_1(v71);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_185();
  v74 = v17;
  v18 = OUTLINED_FUNCTION_201();
  v19 = type metadata accessor for Searchfoundation_ActionItem(v18);
  v20 = OUTLINED_FUNCTION_59_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_106_8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA8, &qword_1B96B9880);
  OUTLINED_FUNCTION_183(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v68 - v27;
  v29 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFC0, &qword_1B96CA0E0) - 8);
  v30 = *(*v29 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v68 - v32;
  v72 = type metadata accessor for Searchfoundation_MediaOffer(0);
  v34 = *(v72 + 32);
  v35 = v29[14];
  v75 = v4;
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v33);
  if (v36)
  {
    OUTLINED_FUNCTION_37_0(&v33[v35]);
    if (v36)
    {
      sub_1B8D9207C(v33, &qword_1EBACAFA8, &qword_1B96B9880);
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(&v33[v35]);
  if (v36)
  {
    sub_1B92C094C();
LABEL_9:
    v37 = &qword_1EBACAFC0;
    v38 = &qword_1B96CA0E0;
LABEL_10:
    v39 = v33;
LABEL_11:
    sub_1B8D9207C(v39, v37, v38);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_11_35();
  sub_1B92C089C();
  v40 = *(v19 + 20);
  if (*&v28[v40] != *(v0 + v40))
  {
    v41 = *&v28[v40];

    sub_1B92C3040();
    v43 = v42;

    if ((v43 & 1) == 0)
    {
      sub_1B92C094C();
      sub_1B92C094C();
      v37 = &qword_1EBACAFA8;
      v38 = &qword_1B96B9880;
      goto LABEL_10;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_81();
  sub_1B8CD2F48(v44, v45);
  v46 = sub_1B964C850();
  sub_1B92C094C();
  sub_1B92C094C();
  sub_1B8D9207C(v33, &qword_1EBACAFA8, &qword_1B96B9880);
  if ((v46 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  v47 = v75;
  v48 = *v75 == *v2 && v75[1] == *(v2 + 8);
  if (!v48 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_12;
  }

  v49 = v47[2] == *(v2 + 16) && v47[3] == *(v2 + 24);
  if (!v49 && (sub_1B964C9F0() & 1) == 0 || *(v47 + 32) != *(v2 + 32))
  {
    goto LABEL_12;
  }

  v50 = v72;
  v51 = *(v72 + 36);
  v52 = *(v71 + 48);
  v53 = v74;
  sub_1B8D92024();
  sub_1B8D92024();
  v54 = v73;
  OUTLINED_FUNCTION_178(v53, 1, v73);
  if (v36)
  {
    OUTLINED_FUNCTION_37_0(v53 + v52);
    if (v36)
    {
      sub_1B8D9207C(v53, &qword_1EBAB8EA8, &unk_1B96B77D0);
LABEL_41:
      v65 = *(v50 + 28);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_81();
      sub_1B8CD2F48(v66, v67);
      sub_1B964C850();
      goto LABEL_12;
    }

    goto LABEL_36;
  }

  v55 = v70;
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v53 + v52);
  if (v56)
  {
    OUTLINED_FUNCTION_21_21();
    sub_1B92C094C();
LABEL_36:
    v37 = &qword_1EBAB8EB0;
    v38 = &qword_1B964D6B0;
LABEL_37:
    v39 = v53;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_1_68();
  v57 = v69;
  sub_1B92C089C();
  v58 = *(v54 + 20);
  if (*(v55 + v58) != *(v57 + v58))
  {
    v59 = *(v55 + v58);

    sub_1B94C6890();
    v61 = v60;

    if ((v61 & 1) == 0)
    {
      sub_1B92C094C();
      sub_1B92C094C();
      v37 = &qword_1EBAB8EA8;
      v38 = &unk_1B96B77D0;
      goto LABEL_37;
    }
  }

  v62 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_81();
  sub_1B8CD2F48(v63, v64);
  sub_1B964C850();
  OUTLINED_FUNCTION_20_13();
  sub_1B92C094C();
  sub_1B92C094C();
  sub_1B8D9207C(v53, &qword_1EBAB8EA8, &unk_1B96B77D0);
  if (v62)
  {
    goto LABEL_41;
  }

LABEL_12:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B92C5E24(void (*a1)(void))
{
  sub_1B964CA70();
  a1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8CD2F48(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B92C5F04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2F48(&qword_1EBACB008, type metadata accessor for Searchfoundation_MediaOffer);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92C5F84(uint64_t a1)
{
  v2 = sub_1B8CD2F48(&qword_1EBACAFE8, type metadata accessor for Searchfoundation_MediaOffer);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92C5FF4()
{
  sub_1B8CD2F48(&qword_1EBACAFE8, type metadata accessor for Searchfoundation_MediaOffer);

  return sub_1B964C5D0();
}

uint64_t sub_1B92C62FC()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_ActionItem._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B92C63A8()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B92C649C(319, &qword_1ED9F2328, type metadata accessor for Searchfoundation_ActionItem);
    if (v1 <= 0x3F)
    {
      sub_1B92C649C(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B92C649C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B92C64F8()
{
  sub_1B92C649C(319, &qword_1ED9F9678, type metadata accessor for Searchfoundation_Punchout);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_1B92C649C(319, &qword_1ED9F8FC0, type metadata accessor for Searchfoundation_GraphicalFloat);
    if (v4 <= 0x3F)
    {
      v11 = *(v3 - 8) + 64;
      sub_1B92C649C(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image);
      if (v6 <= 0x3F)
      {
        v12 = *(v5 - 8) + 64;
        sub_1B92C649C(319, &qword_1ED9F9720, type metadata accessor for Searchfoundation_LatLng);
        if (v8 <= 0x3F)
        {
          v13 = *(v7 - 8) + 64;
          sub_1B92C649C(319, &qword_1ED9F97C8, type metadata accessor for Searchfoundation_URL);
          if (v10 <= 0x3F)
          {
            v14 = *(v9 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

unint64_t sub_1B92C6768()
{
  result = qword_1EBACB030;
  if (!qword_1EBACB030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACB030);
  }

  return result;
}

unint64_t sub_1B92C67BC()
{
  result = qword_1EBAB4BD8;
  if (!qword_1EBAB4BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAB4BD8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_52(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Searchfoundation_ActionItem(0);
  v5 = *(result + 20);
  *(a1 + 72) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_54(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Searchfoundation_ActionItem(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_31()
{
  result = type metadata accessor for Searchfoundation_ActionItem(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_16_25()
{
  result = type metadata accessor for Searchfoundation_ActionItem(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_19_23()
{
  v0 = type metadata accessor for Searchfoundation_ActionItem._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_27_14()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_28_18()
{
  v1 = *(v0 + *(type metadata accessor for Searchfoundation_ActionItem(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_89_11()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_98_8()
{

  return sub_1B964C9F0();
}

uint64_t OUTLINED_FUNCTION_102_10()
{

  return sub_1B92C089C();
}

uint64_t OUTLINED_FUNCTION_103_5()
{

  return sub_1B92C089C();
}

void OUTLINED_FUNCTION_128_7()
{
  *v0 = 0;
  v0[1] = 0xE000000000000000;
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_132_7()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_133_7()
{

  return sub_1B92C094C();
}

uint64_t OUTLINED_FUNCTION_137_4()
{
  v1 = *(v0 + *(type metadata accessor for Searchfoundation_ActionItem(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t Searchfoundation_ActivityIndicatorCardSection.punchoutOptions.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Searchfoundation_ActivityIndicatorCardSection.punchoutPickerTitle.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_ActivityIndicatorCardSection.punchoutPickerTitle.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Searchfoundation_ActivityIndicatorCardSection.punchoutPickerDismissText.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_ActivityIndicatorCardSection.punchoutPickerDismissText.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Searchfoundation_ActivityIndicatorCardSection.type.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_ActivityIndicatorCardSection.type.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

void Searchfoundation_ActivityIndicatorCardSection.separatorStyle.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

uint64_t Searchfoundation_ActivityIndicatorCardSection.separatorStyle.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t Searchfoundation_ActivityIndicatorCardSection.backgroundColor.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_88();
  v8 = type metadata accessor for Searchfoundation_ActivityIndicatorCardSection();
  sub_1B92C7198(v1 + *(v8 + 56), v2);
  v9 = type metadata accessor for Searchfoundation_Color(0);
  v10 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v10, v11, v9) != 1)
  {
    return sub_1B92C8908(v2, a1);
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v12 = *(v9 + 20);
  if (qword_1ED9CD1C0 != -1)
  {
    OUTLINED_FUNCTION_4_45();
  }

  *(a1 + v12) = qword_1ED9CD1C8;
  v13 = OUTLINED_FUNCTION_493();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, v14, v9);

  if (EnumTagSinglePayload != 1)
  {
    return sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
  }

  return result;
}

uint64_t sub_1B92C7044(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_Color(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B92C896C(a1, v5);
  return Searchfoundation_ActivityIndicatorCardSection.backgroundColor.setter(v5);
}

uint64_t Searchfoundation_ActivityIndicatorCardSection.backgroundColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_ActivityIndicatorCardSection() + 56);
  sub_1B8D9207C(v1 + v3, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B92C8908(a1, v1 + v3);
  v4 = type metadata accessor for Searchfoundation_Color(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

uint64_t type metadata accessor for Searchfoundation_ActivityIndicatorCardSection()
{
  result = qword_1ED9F0038;
  if (!qword_1ED9F0038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B92C7198(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*Searchfoundation_ActivityIndicatorCardSection.backgroundColor.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_Color(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_ActivityIndicatorCardSection() + 56);
  *(v3 + 10) = v11;
  sub_1B92C7198(v1 + v11, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(v7 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45();
    }

    *&v10[v12] = qword_1ED9CD1C8;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v6, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    sub_1B92C8908(v6, v10);
  }

  return sub_1B92C739C;
}

void sub_1B92C739C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {
    sub_1B92C896C((*a1)[4], v4);
    sub_1B8D9207C(v8 + v3, &qword_1EBACB050, &unk_1B96B7BD0);
    sub_1B92C8908(v4, v8 + v3);
    OUTLINED_FUNCTION_30_2();
    sub_1B92C89D0(v5);
  }

  else
  {
    sub_1B8D9207C(v8 + v3, &qword_1EBACB050, &unk_1B96B7BD0);
    sub_1B92C8908(v5, v8 + v3);
    OUTLINED_FUNCTION_30_2();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

BOOL Searchfoundation_ActivityIndicatorCardSection.hasBackgroundColor.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_88();
  v6 = type metadata accessor for Searchfoundation_ActivityIndicatorCardSection();
  sub_1B92C7198(v0 + *(v6 + 56), v1);
  type metadata accessor for Searchfoundation_Color(0);
  v7 = OUTLINED_FUNCTION_493();
  v10 = __swift_getEnumTagSinglePayload(v7, v8, v9) != 1;
  sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
  return v10;
}

Swift::Void __swiftcall Searchfoundation_ActivityIndicatorCardSection.clearBackgroundColor()()
{
  v1 = *(type metadata accessor for Searchfoundation_ActivityIndicatorCardSection() + 56);
  sub_1B8D9207C(v0 + v1, &qword_1EBACB050, &unk_1B96B7BD0);
  v2 = type metadata accessor for Searchfoundation_Color(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Searchfoundation_ActivityIndicatorCardSection.text.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_ActivityIndicatorCardSection.text.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Searchfoundation_ActivityIndicatorCardSection.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_ActivityIndicatorCardSection() + 52);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Searchfoundation_ActivityIndicatorCardSection.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_ActivityIndicatorCardSection() + 52);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t Searchfoundation_ActivityIndicatorCardSection.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 42) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  v2 = type metadata accessor for Searchfoundation_ActivityIndicatorCardSection();
  v3 = a1 + *(v2 + 52);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 56);
  v5 = type metadata accessor for Searchfoundation_Color(0);

  return __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
}

uint64_t sub_1B92C77FC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACB038);
  __swift_project_value_buffer(v0, qword_1EBACB038);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9656CE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "punchoutOptions";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "punchoutPickerTitle";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "punchoutPickerDismissText";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "canBeHidden";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "hasTopPadding";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "hasBottomPadding";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "type";
  *(v20 + 1) = 4;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "separatorStyle";
  *(v22 + 1) = 14;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "backgroundColor";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 51;
  *v26 = "text";
  *(v26 + 1) = 4;
  v26[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_ActivityIndicatorCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB7DC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBACB038);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_ActivityIndicatorCardSection.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B92C7D60();
        break;
      case 2:
      case 3:
      case 7:
        goto LABEL_9;
      case 4:
      case 5:
      case 6:
        sub_1B964C400();
        break;
      case 8:
        OUTLINED_FUNCTION_9();
        sub_1B92C7E00();
        break;
      case 9:
        OUTLINED_FUNCTION_9();
        sub_1B92C7E68();
        break;
      default:
        if (result == 51)
        {
LABEL_9:
          sub_1B964C530();
        }

        break;
    }
  }
}

uint64_t sub_1B92C7D60()
{
  type metadata accessor for Searchfoundation_Punchout();
  sub_1B92C8D58(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
  return sub_1B964C570();
}

uint64_t sub_1B92C7E68()
{
  v0 = *(type metadata accessor for Searchfoundation_ActivityIndicatorCardSection() + 56);
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B92C8D58(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
  return sub_1B964C580();
}

uint64_t Searchfoundation_ActivityIndicatorCardSection.traverse<A>(visitor:)()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  v9 = type metadata accessor for Searchfoundation_Color(0);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v0 + 16))
  {
    v35 = v0;
    v15 = v8;
    v16 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    type metadata accessor for Searchfoundation_Punchout();
    sub_1B92C8D58(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
    result = sub_1B964C730();
    if (v1)
    {
      return result;
    }

    v14 = v16;
    v8 = v15;
    v2 = v35;
  }

  v18 = *(v2 + 8);
  v19 = *(v2 + 16);
  OUTLINED_FUNCTION_1();
  if (!v20 || (result = OUTLINED_FUNCTION_3(), !v1))
  {
    v21 = *(v2 + 24);
    v22 = *(v2 + 32);
    OUTLINED_FUNCTION_1();
    if (!v23 || (result = OUTLINED_FUNCTION_3(), !v1))
    {
      if (*(v2 + 40) != 1 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C670(), !v1))
      {
        if (*(v2 + 41) != 1 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C670(), !v1))
        {
          if (*(v2 + 42) != 1 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C670(), !v1))
          {
            v24 = *(v2 + 48);
            v25 = *(v2 + 56);
            OUTLINED_FUNCTION_1();
            if (!v26 || (result = OUTLINED_FUNCTION_3(), !v1))
            {
              if (!*(v2 + 64) || (v27 = *(v2 + 72), v33 = *(v2 + 64), v34 = v27, sub_1B92C8A2C(), OUTLINED_FUNCTION_79_0(), result = sub_1B964C680(), !v1))
              {
                v28 = type metadata accessor for Searchfoundation_ActivityIndicatorCardSection();
                sub_1B92C7198(v2 + *(v28 + 56), v8);
                if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
                {
                  sub_1B8D9207C(v8, &qword_1EBACB050, &unk_1B96B7BD0);
                }

                else
                {
                  v35 = v28;
                  sub_1B92C8908(v8, v14);
                  sub_1B92C8D58(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
                  OUTLINED_FUNCTION_79_0();
                  sub_1B964C740();
                  result = sub_1B92C89D0(v14);
                  if (v1)
                  {
                    return result;
                  }

                  v28 = v35;
                }

                v29 = *(v2 + 80);
                v30 = *(v2 + 88);
                OUTLINED_FUNCTION_1();
                if (!v31 || (result = OUTLINED_FUNCTION_3(), !v1))
                {
                  v32 = v2 + *(v28 + 52);
                  return sub_1B964C290();
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_ActivityIndicatorCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v3 = type metadata accessor for Searchfoundation_Color(0);
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  OUTLINED_FUNCTION_59_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_88();
  v19 = *v1;
  v20 = *v0;
  sub_1B8D67B1C();
  if ((v21 & 1) == 0)
  {
    goto LABEL_28;
  }

  v22 = v1[1] == v0[1] && v1[2] == v0[2];
  if (!v22 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_28;
  }

  v23 = v1[3] == v0[3] && v1[4] == v0[4];
  if (!v23 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_28;
  }

  if (*(v1 + 40) != *(v0 + 40) || *(v1 + 41) != *(v0 + 41) || *(v1 + 42) != *(v0 + 42))
  {
    goto LABEL_28;
  }

  v24 = v1[6] == v0[6] && v1[7] == v0[7];
  if (!v24 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_28;
  }

  v25 = *(v0 + 72);
  if (!sub_1B8D92198(v1[8], *(v1 + 72), v0[8]))
  {
    goto LABEL_28;
  }

  v26 = type metadata accessor for Searchfoundation_ActivityIndicatorCardSection();
  v27 = *(v26 + 56);
  v28 = *(v15 + 48);
  sub_1B92C7198(v1 + v27, v2);
  sub_1B92C7198(v0 + v27, v2 + v28);
  v29 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v29, v30, v3) != 1)
  {
    sub_1B92C7198(v2, v14);
    if (__swift_getEnumTagSinglePayload(v2 + v28, 1, v3) != 1)
    {
      sub_1B92C8908(v2 + v28, v8);
      v35 = *(v3 + 20);
      if (*&v14[v35] == *&v8[v35] || (v36 = *&v14[v35], , , sub_1B947FDE4(), v38 = v37, , , (v38 & 1) != 0))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_2_53();
        sub_1B92C8D58(v39, v40);
        v41 = sub_1B964C850();
        sub_1B92C89D0(v8);
        sub_1B92C89D0(v14);
        sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
        if ((v41 & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_33;
      }

      sub_1B92C89D0(v8);
      sub_1B92C89D0(v14);
      v31 = &qword_1EBACB050;
      v32 = &unk_1B96B7BD0;
LABEL_27:
      sub_1B8D9207C(v2, v31, v32);
      goto LABEL_28;
    }

    sub_1B92C89D0(v14);
LABEL_26:
    v31 = &qword_1EBACB058;
    v32 = &unk_1B96CA9D0;
    goto LABEL_27;
  }

  if (__swift_getEnumTagSinglePayload(v2 + v28, 1, v3) != 1)
  {
    goto LABEL_26;
  }

  sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
LABEL_33:
  v42 = v1[10] == v0[10] && v1[11] == v0[11];
  if (v42 || (sub_1B964C9F0() & 1) != 0)
  {
    v43 = *(v26 + 52);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_2_53();
    sub_1B92C8D58(v44, v45);
    v33 = sub_1B964C850();
    return v33 & 1;
  }

LABEL_28:
  v33 = 0;
  return v33 & 1;
}

uint64_t Searchfoundation_ActivityIndicatorCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_ActivityIndicatorCardSection();
  sub_1B92C8D58(&unk_1EBACB060, type metadata accessor for Searchfoundation_ActivityIndicatorCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B92C8798(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B92C8D58(&qword_1EBACB080, type metadata accessor for Searchfoundation_ActivityIndicatorCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92C8818(uint64_t a1)
{
  v2 = sub_1B92C8D58(&qword_1EBACB070, type metadata accessor for Searchfoundation_ActivityIndicatorCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92C8888()
{
  sub_1B92C8D58(&qword_1EBACB070, type metadata accessor for Searchfoundation_ActivityIndicatorCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B92C8908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_Color(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B92C896C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Searchfoundation_Color(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B92C89D0(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_Color(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B92C8A2C()
{
  result = qword_1ED9CBFB8;
  if (!qword_1ED9CBFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9CBFB8);
  }

  return result;
}

void sub_1B92C8BC8()
{
  sub_1B92C8CF4(319, &qword_1ED9EB330, type metadata accessor for Searchfoundation_Punchout, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B92C8CF4(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B92C8CF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B92C8D58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_4_45()
{

  return swift_once();
}

uint64_t Searchfoundation_AppEntityAnnotation.typeIdentifer.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Searchfoundation_AppEntityAnnotation.typeIdentifer.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Searchfoundation_AppEntityAnnotation.entityIdentifer.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Searchfoundation_AppEntityAnnotation.entityIdentifer.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Searchfoundation_AppEntityAnnotation.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_AppEntityAnnotation() + 24);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Searchfoundation_AppEntityAnnotation()
{
  result = qword_1ED9ECB90;
  if (!qword_1ED9ECB90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_AppEntityAnnotation.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_AppEntityAnnotation() + 24);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Searchfoundation_AppEntityAnnotation.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Searchfoundation_AppEntityAnnotation() + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B92C90D0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACB088);
  __swift_project_value_buffer(v0, qword_1EBACB088);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "typeIdentifer";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entityIdentifer";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_AppEntityAnnotation._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB7DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBACB088);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_AppEntityAnnotation.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Searchfoundation_AppEntityAnnotation.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v4 || (result = OUTLINED_FUNCTION_3(), !v1))
  {
    v6 = v0[2];
    v7 = v0[3];
    OUTLINED_FUNCTION_1();
    if (!v8 || (result = OUTLINED_FUNCTION_3(), !v1))
    {
      v9 = v0 + *(type metadata accessor for Searchfoundation_AppEntityAnnotation() + 24);
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t static Searchfoundation_AppEntityAnnotation.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for Searchfoundation_AppEntityAnnotation() + 24);
  sub_1B964C2B0();
  sub_1B8CD2F90(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  return sub_1B964C850() & 1;
}

uint64_t Searchfoundation_AppEntityAnnotation.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_AppEntityAnnotation();
  sub_1B8CD2F90(&qword_1EBACB0A0, type metadata accessor for Searchfoundation_AppEntityAnnotation);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B92C961C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2F90(&qword_1EBACB0C0, type metadata accessor for Searchfoundation_AppEntityAnnotation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92C969C(uint64_t a1)
{
  v2 = sub_1B8CD2F90(&qword_1EBACB0B0, type metadata accessor for Searchfoundation_AppEntityAnnotation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92C970C()
{
  sub_1B8CD2F90(&qword_1EBACB0B0, type metadata accessor for Searchfoundation_AppEntityAnnotation);

  return sub_1B964C5D0();
}

uint64_t Searchfoundation_AppLinkCardSection.punchoutOptions.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Searchfoundation_AppLinkCardSection.punchoutPickerTitle.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_AppLinkCardSection.punchoutPickerTitle.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Searchfoundation_AppLinkCardSection.punchoutPickerDismissText.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_AppLinkCardSection.punchoutPickerDismissText.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Searchfoundation_AppLinkCardSection.type.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_AppLinkCardSection.type.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

void Searchfoundation_AppLinkCardSection.separatorStyle.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

uint64_t Searchfoundation_AppLinkCardSection.separatorStyle.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t Searchfoundation_AppLinkCardSection.backgroundColor.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_88();
  v8 = type metadata accessor for Searchfoundation_AppLinkCardSection();
  sub_1B92C7198(v1 + *(v8 + 64), v2);
  v9 = type metadata accessor for Searchfoundation_Color(0);
  v10 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v10, v11, v9) != 1)
  {
    return sub_1B92C8908(v2, a1);
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v12 = *(v9 + 20);
  if (qword_1ED9CD1C0 != -1)
  {
    OUTLINED_FUNCTION_4_45();
  }

  *(a1 + v12) = qword_1ED9CD1C8;
  v13 = OUTLINED_FUNCTION_493();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, v14, v9);

  if (EnumTagSinglePayload != 1)
  {
    return sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
  }

  return result;
}

uint64_t type metadata accessor for Searchfoundation_AppLinkCardSection()
{
  result = qword_1ED9F1890;
  if (!qword_1ED9F1890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B92C9CF4(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_Color(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B92C896C(a1, v5);
  return Searchfoundation_AppLinkCardSection.backgroundColor.setter(v5);
}

uint64_t Searchfoundation_AppLinkCardSection.backgroundColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_AppLinkCardSection() + 64);
  sub_1B8D9207C(v1 + v3, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B92C8908(a1, v1 + v3);
  v4 = type metadata accessor for Searchfoundation_Color(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Searchfoundation_AppLinkCardSection.backgroundColor.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_Color(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_AppLinkCardSection() + 64);
  *(v3 + 10) = v11;
  sub_1B92C7198(v1 + v11, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(v7 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45();
    }

    *&v10[v12] = qword_1ED9CD1C8;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v6, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    sub_1B92C8908(v6, v10);
  }

  return sub_1B92C739C;
}

BOOL Searchfoundation_AppLinkCardSection.hasBackgroundColor.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_88();
  v6 = type metadata accessor for Searchfoundation_AppLinkCardSection();
  sub_1B92C7198(v0 + *(v6 + 64), v1);
  type metadata accessor for Searchfoundation_Color(0);
  v7 = OUTLINED_FUNCTION_493();
  v10 = __swift_getEnumTagSinglePayload(v7, v8, v9) != 1;
  sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
  return v10;
}

Swift::Void __swiftcall Searchfoundation_AppLinkCardSection.clearBackgroundColor()()
{
  v1 = *(type metadata accessor for Searchfoundation_AppLinkCardSection() + 64);
  sub_1B8D9207C(v0 + v1, &qword_1EBACB050, &unk_1B96B7BD0);
  v2 = type metadata accessor for Searchfoundation_Color(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Searchfoundation_AppLinkCardSection.title.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_AppLinkCardSection.title.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Searchfoundation_AppLinkCardSection.subtitle.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_AppLinkCardSection.subtitle.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Searchfoundation_AppLinkCardSection.appLinks.setter(uint64_t a1)
{
  v3 = *(v1 + 112);

  *(v1 + 112) = a1;
  return result;
}

uint64_t Searchfoundation_AppLinkCardSection.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_AppLinkCardSection() + 60);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Searchfoundation_AppLinkCardSection.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_AppLinkCardSection() + 60);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t Searchfoundation_AppLinkCardSection.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 42) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0xE000000000000000;
  *(a1 + 112) = v2;
  v3 = type metadata accessor for Searchfoundation_AppLinkCardSection();
  v4 = a1 + *(v3 + 60);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v5 = *(v3 + 64);
  v6 = type metadata accessor for Searchfoundation_Color(0);

  return __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v6);
}

uint64_t sub_1B92CA3EC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACB0C8);
  __swift_project_value_buffer(v0, qword_1EBACB0C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1B964D040;
  v4 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v4 = "punchoutOptions";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v30 + v3 + v2 + v1[14];
  *(v30 + v3 + v2) = 2;
  *v8 = "punchoutPickerTitle";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v30 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "punchoutPickerDismissText";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v30 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "canBeHidden";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v30 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "hasTopPadding";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v30 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasBottomPadding";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v30 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "type";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v30 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "separatorStyle";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v30 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "backgroundColor";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 51;
  *v24 = "title";
  *(v24 + 1) = 5;
  v24[16] = 2;
  v7();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "subtitle";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v7();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 101;
  *v28 = "appLinks";
  *(v28 + 1) = 8;
  v28[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_AppLinkCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB7DD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBACB0C8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_AppLinkCardSection.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B92CA9EC();
        break;
      case 2:
      case 3:
      case 7:
        goto LABEL_13;
      case 4:
      case 5:
      case 6:
        sub_1B964C400();
        break;
      case 8:
        OUTLINED_FUNCTION_9();
        sub_1B92C7E00();
        break;
      case 9:
        OUTLINED_FUNCTION_9();
        sub_1B92CAA8C();
        break;
      default:
        if (result == 51 || result == 52)
        {
LABEL_13:
          sub_1B964C530();
        }

        else if (result == 101)
        {
          OUTLINED_FUNCTION_9();
          sub_1B92CAB40();
        }

        break;
    }
  }
}

uint64_t sub_1B92CA9EC()
{
  type metadata accessor for Searchfoundation_Punchout();
  sub_1B92CB94C(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
  return sub_1B964C570();
}

uint64_t sub_1B92CAA8C()
{
  v0 = *(type metadata accessor for Searchfoundation_AppLinkCardSection() + 64);
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B92CB94C(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
  return sub_1B964C580();
}

uint64_t sub_1B92CAB40()
{
  type metadata accessor for Searchfoundation_AppLink();
  sub_1B92CB94C(&qword_1EBACB0E0, type metadata accessor for Searchfoundation_AppLink);
  return sub_1B964C570();
}

uint64_t Searchfoundation_AppLinkCardSection.traverse<A>(visitor:)()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  v9 = type metadata accessor for Searchfoundation_Color(0);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v0 + 16))
  {
    v36 = v0;
    type metadata accessor for Searchfoundation_Punchout();
    OUTLINED_FUNCTION_14_24();
    sub_1B92CB94C(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
    OUTLINED_FUNCTION_5_34();
    result = sub_1B964C730();
    if (v1)
    {
      return result;
    }

    v2 = v36;
  }

  v16 = *(v2 + 8);
  v17 = *(v2 + 16);
  OUTLINED_FUNCTION_1();
  if (!v18 || (result = OUTLINED_FUNCTION_6_32(), !v1))
  {
    v19 = *(v2 + 24);
    v20 = *(v2 + 32);
    OUTLINED_FUNCTION_1();
    if (!v21 || (result = OUTLINED_FUNCTION_6_32(), !v1))
    {
      if (*(v2 + 40) != 1 || (result = OUTLINED_FUNCTION_12_29(), !v1))
      {
        if (*(v2 + 41) != 1 || (result = OUTLINED_FUNCTION_12_29(), !v1))
        {
          if (*(v2 + 42) != 1 || (result = OUTLINED_FUNCTION_12_29(), !v1))
          {
            v22 = *(v2 + 48);
            v23 = *(v2 + 56);
            OUTLINED_FUNCTION_1();
            if (!v24 || (result = OUTLINED_FUNCTION_6_32(), !v1))
            {
              v25 = v1;
              if (*(v2 + 64))
              {
                v26 = *(v2 + 72);
                v34 = *(v2 + 64);
                v35 = v26;
                sub_1B92C8A2C();
                OUTLINED_FUNCTION_5_34();
                result = sub_1B964C680();
                if (v1)
                {
                  return result;
                }

                v25 = 0;
              }

              v36 = type metadata accessor for Searchfoundation_AppLinkCardSection();
              sub_1B92C7198(v2 + *(v36 + 64), v8);
              if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
              {
                sub_1B8D9207C(v8, &qword_1EBACB050, &unk_1B96B7BD0);
                v1 = v25;
              }

              else
              {
                sub_1B92C8908(v8, v14);
                sub_1B92CB94C(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
                OUTLINED_FUNCTION_5_34();
                sub_1B964C740();
                result = sub_1B92C89D0(v14);
                if (v1)
                {
                  return result;
                }
              }

              v27 = *(v2 + 80);
              v28 = *(v2 + 88);
              OUTLINED_FUNCTION_1();
              if (!v29 || (result = OUTLINED_FUNCTION_6_32(), !v1))
              {
                v30 = *(v2 + 96);
                v31 = *(v2 + 104);
                OUTLINED_FUNCTION_1();
                if (!v32 || (result = OUTLINED_FUNCTION_6_32(), !v1))
                {
                  if (!*(*(v2 + 112) + 16) || (type metadata accessor for Searchfoundation_AppLink(), OUTLINED_FUNCTION_14_24(), sub_1B92CB94C(&qword_1EBACB0E0, type metadata accessor for Searchfoundation_AppLink), OUTLINED_FUNCTION_5_34(), result = sub_1B964C730(), !v1))
                  {
                    v33 = v2 + *(v36 + 60);
                    return sub_1B964C290();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_AppLinkCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v3 = type metadata accessor for Searchfoundation_Color(0);
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  OUTLINED_FUNCTION_59_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_88();
  v19 = *v1;
  v20 = *v0;
  sub_1B8D67B1C();
  if ((v21 & 1) == 0)
  {
    goto LABEL_28;
  }

  v22 = v1[1] == v0[1] && v1[2] == v0[2];
  if (!v22 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_28;
  }

  v23 = v1[3] == v0[3] && v1[4] == v0[4];
  if (!v23 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_28;
  }

  if (*(v1 + 40) != *(v0 + 40) || *(v1 + 41) != *(v0 + 41) || *(v1 + 42) != *(v0 + 42))
  {
    goto LABEL_28;
  }

  v24 = v1[6] == v0[6] && v1[7] == v0[7];
  if (!v24 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_28;
  }

  v25 = *(v0 + 72);
  if (!sub_1B8D92198(v1[8], *(v1 + 72), v0[8]))
  {
    goto LABEL_28;
  }

  v26 = type metadata accessor for Searchfoundation_AppLinkCardSection();
  v27 = *(v26 + 64);
  v28 = *(v15 + 48);
  sub_1B92C7198(v1 + v27, v2);
  sub_1B92C7198(v0 + v27, v2 + v28);
  v29 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v29, v30, v3) != 1)
  {
    sub_1B92C7198(v2, v14);
    if (__swift_getEnumTagSinglePayload(v2 + v28, 1, v3) != 1)
    {
      sub_1B92C8908(v2 + v28, v8);
      v35 = *(v3 + 20);
      if (*&v14[v35] == *&v8[v35] || (v36 = *&v14[v35], , , sub_1B947FDE4(), v38 = v37, , , (v38 & 1) != 0))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_3_55();
        sub_1B92CB94C(v39, v40);
        v41 = sub_1B964C850();
        sub_1B92C89D0(v8);
        sub_1B92C89D0(v14);
        sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
        if ((v41 & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_33;
      }

      sub_1B92C89D0(v8);
      sub_1B92C89D0(v14);
      v31 = &qword_1EBACB050;
      v32 = &unk_1B96B7BD0;
LABEL_27:
      sub_1B8D9207C(v2, v31, v32);
      goto LABEL_28;
    }

    sub_1B92C89D0(v14);
LABEL_26:
    v31 = &qword_1EBACB058;
    v32 = &unk_1B96CA9D0;
    goto LABEL_27;
  }

  if (__swift_getEnumTagSinglePayload(v2 + v28, 1, v3) != 1)
  {
    goto LABEL_26;
  }

  sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
LABEL_33:
  v42 = v1[10] == v0[10] && v1[11] == v0[11];
  if (v42 || (sub_1B964C9F0() & 1) != 0)
  {
    v43 = v1[12] == v0[12] && v1[13] == v0[13];
    if (v43 || (sub_1B964C9F0() & 1) != 0)
    {
      v44 = v1[14];
      v45 = v0[14];
      sub_1B8D7573C();
      if (v46)
      {
        v47 = *(v26 + 60);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_3_55();
        sub_1B92CB94C(v48, v49);
        v33 = sub_1B964C850();
        return v33 & 1;
      }
    }
  }

LABEL_28:
  v33 = 0;
  return v33 & 1;
}

uint64_t Searchfoundation_AppLinkCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_AppLinkCardSection();
  sub_1B92CB94C(&qword_1EBACB0E8, type metadata accessor for Searchfoundation_AppLinkCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B92CB4BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B92CB94C(&qword_1EBACB108, type metadata accessor for Searchfoundation_AppLinkCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92CB53C(uint64_t a1)
{
  v2 = sub_1B92CB94C(&qword_1EBACB0F8, type metadata accessor for Searchfoundation_AppLinkCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92CB5AC()
{
  sub_1B92CB94C(&qword_1EBACB0F8, type metadata accessor for Searchfoundation_AppLinkCardSection);

  return sub_1B964C5D0();
}

void sub_1B92CB774()
{
  sub_1B92CB8E8(319, &qword_1ED9EB330, type metadata accessor for Searchfoundation_Punchout, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B92CB8E8(319, &qword_1ED9D3A68, type metadata accessor for Searchfoundation_AppLink, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v2 <= 0x3F)
      {
        sub_1B92CB8E8(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B92CB8E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B92CB94C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_6_32()
{

  return sub_1B964C700();
}

uint64_t OUTLINED_FUNCTION_12_29()
{

  return sub_1B964C670();
}

uint64_t Searchfoundation_AppLink.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_AppLink.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Searchfoundation_AppLink.appPunchout.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF90, &unk_1B96B77C0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Searchfoundation_AppLink();
  v8 = OUTLINED_FUNCTION_115(*(v7 + 28));
  sub_1B8DD9078(v8, v9, &qword_1EBACAF90, &unk_1B96B77C0);
  v10 = type metadata accessor for Searchfoundation_Punchout();
  v11 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v11, v12, v10);
  if (v13)
  {
    Searchfoundation_Punchout.init()(a1);
    v14 = OUTLINED_FUNCTION_493();
    result = OUTLINED_FUNCTION_178(v14, v15, v10);
    if (!v13)
    {
      return sub_1B8D9207C(v1, &qword_1EBACAF90, &unk_1B96B77C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_54();
    OUTLINED_FUNCTION_182();
    return sub_1B92CD908();
  }

  return result;
}

uint64_t type metadata accessor for Searchfoundation_AppLink()
{
  result = qword_1ED9E3890;
  if (!qword_1ED9E3890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_AppLink.appPunchout.setter()
{
  OUTLINED_FUNCTION_313();
  v1 = type metadata accessor for Searchfoundation_AppLink();
  sub_1B8D9207C(v0 + *(v1 + 28), &qword_1EBACAF90, &unk_1B96B77C0);
  OUTLINED_FUNCTION_2_54();
  sub_1B92CD908();
  type metadata accessor for Searchfoundation_Punchout();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void (*Searchfoundation_AppLink.appPunchout.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF90, &unk_1B96B77C0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_Punchout();
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = type metadata accessor for Searchfoundation_AppLink();
  OUTLINED_FUNCTION_16_4(*(v11 + 28));
  OUTLINED_FUNCTION_178(v6, 1, v7);
  if (v12)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = 0;
    v10[3] = 0xE000000000000000;
    v10[4] = 0;
    v10[5] = 0xE000000000000000;
    v10[6] = MEMORY[0x1E69E7CC0];
    v10[7] = 0;
    v10[8] = 0xE000000000000000;
    *(v10 + 36) = 0;
    *(v10 + 74) = 0;
    v13 = v10 + *(v7 + 48);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = *(v7 + 52);
    type metadata accessor for Searchfoundation_UserActivityData(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    OUTLINED_FUNCTION_178(v6, 1, v7);
    if (!v12)
    {
      sub_1B8D9207C(v6, &qword_1EBACAF90, &unk_1B96B77C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_54();
    sub_1B92CD908();
  }

  return sub_1B92CBDE0;
}

uint64_t Searchfoundation_AppLink.hasAppPunchout.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF90, &unk_1B96B77C0);
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_22_3();
  v4 = type metadata accessor for Searchfoundation_AppLink();
  v5 = OUTLINED_FUNCTION_115(*(v4 + 28));
  sub_1B8DD9078(v5, v6, &qword_1EBACAF90, &unk_1B96B77C0);
  type metadata accessor for Searchfoundation_Punchout();
  v7 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v12, v13, &unk_1B96B77C0);
  return v11;
}

Swift::Void __swiftcall Searchfoundation_AppLink.clearAppPunchout()()
{
  v1 = type metadata accessor for Searchfoundation_AppLink();
  sub_1B8D9207C(v0 + *(v1 + 28), &qword_1EBACAF90, &unk_1B96B77C0);
  type metadata accessor for Searchfoundation_Punchout();
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_AppLink.image.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Searchfoundation_AppLink();
  v8 = OUTLINED_FUNCTION_115(*(v7 + 32));
  sub_1B8DD9078(v8, v9, &qword_1EBAB8EA8, &unk_1B96B77D0);
  v10 = type metadata accessor for Searchfoundation_Image(0);
  v11 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v11, v12, v10);
  if (v13)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = *(v10 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5();
    }

    *(a1 + v14) = qword_1EBAB5608;
    v15 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, v16, v10);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_82();
    OUTLINED_FUNCTION_182();
    return sub_1B92CD908();
  }

  return result;
}

uint64_t sub_1B92CC044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1B92CD95C();
  return a7(v13);
}

uint64_t Searchfoundation_AppLink.image.setter()
{
  OUTLINED_FUNCTION_313();
  v1 = type metadata accessor for Searchfoundation_AppLink();
  sub_1B8D9207C(v0 + *(v1 + 32), &qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_0_82();
  sub_1B92CD908();
  type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void (*Searchfoundation_AppLink.image.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_Image(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = type metadata accessor for Searchfoundation_AppLink();
  OUTLINED_FUNCTION_16_4(*(v11 + 32));
  OUTLINED_FUNCTION_178(v6, 1, v7);
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = *(v7 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5();
    }

    *&v10[v13] = qword_1EBAB5608;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v6, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_82();
    sub_1B92CD908();
  }

  return sub_1B92CC2F4;
}

void sub_1B92CC31C(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 10);
  v8 = (*a1)[3];
  v9 = (*a1)[4];
  v10 = (*a1)[1];
  v11 = (*a1)[2];
  v12 = **a1;
  if (a2)
  {
    v13 = (*a1)[4];
    sub_1B92CD95C();
    sub_1B8D9207C(v12 + v7, a3, a4);
    sub_1B92CD908();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v11);
    sub_1B92CD9B0();
  }

  else
  {
    sub_1B8D9207C(v12 + v7, a3, a4);
    sub_1B92CD908();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v11);
  }

  free(v9);
  free(v8);
  free(v10);

  free(v6);
}

uint64_t Searchfoundation_AppLink.hasImage.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_22_3();
  v4 = type metadata accessor for Searchfoundation_AppLink();
  v5 = OUTLINED_FUNCTION_115(*(v4 + 32));
  sub_1B8DD9078(v5, v6, &qword_1EBAB8EA8, &unk_1B96B77D0);
  type metadata accessor for Searchfoundation_Image(0);
  v7 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v12, v13, &unk_1B96B77D0);
  return v11;
}

Swift::Void __swiftcall Searchfoundation_AppLink.clearImage()()
{
  v1 = type metadata accessor for Searchfoundation_AppLink();
  sub_1B8D9207C(v0 + *(v1 + 32), &qword_1EBAB8EA8, &unk_1B96B77D0);
  type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void Searchfoundation_AppLink.imageAlign.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t Searchfoundation_AppLink.imageAlign.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Searchfoundation_AppLink.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_AppLink() + 24);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Searchfoundation_AppLink.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v2 = *(type metadata accessor for Searchfoundation_AppLink() + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t (*Searchfoundation_AppLink.unknownFields.modify())()
{
  OUTLINED_FUNCTION_313();
  v0 = *(type metadata accessor for Searchfoundation_AppLink() + 24);
  return nullsub_1;
}

uint64_t Searchfoundation_AppLink.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v2 = type metadata accessor for Searchfoundation_AppLink();
  v3 = a1 + v2[6];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = v2[7];
  type metadata accessor for Searchfoundation_Punchout();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = v2[8];
  type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_1B92CC75C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACB110);
  __swift_project_value_buffer(v0, qword_1EBACB110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "appPunchout";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "image";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "imageAlign";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_AppLink._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB7DD8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBACB110);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_AppLink.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B92CCB00();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B92CCBB4();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B92CCC68();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B92CCB00()
{
  v0 = *(type metadata accessor for Searchfoundation_AppLink() + 28);
  type metadata accessor for Searchfoundation_Punchout();
  sub_1B92CDCE0(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
  return sub_1B964C580();
}

uint64_t sub_1B92CCBB4()
{
  v0 = *(type metadata accessor for Searchfoundation_AppLink() + 32);
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B92CDCE0(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
  return sub_1B964C580();
}

uint64_t Searchfoundation_AppLink.traverse<A>(visitor:)(uint64_t a1, uint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v40 = type metadata accessor for Searchfoundation_Image(0);
  v12 = OUTLINED_FUNCTION_59_1(v40);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v36 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF90, &unk_1B96B77C0);
  OUTLINED_FUNCTION_183(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_22_3();
  v21 = type metadata accessor for Searchfoundation_Punchout();
  v22 = OUTLINED_FUNCTION_59_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_62();
  v25 = *v2;
  v26 = v2[1];
  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = *v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27 || (result = sub_1B964C700(), !v3))
  {
    v37 = a2;
    v29 = type metadata accessor for Searchfoundation_AppLink();
    sub_1B8DD9078(v2 + v29[7], v4, &qword_1EBACAF90, &unk_1B96B77C0);
    v30 = OUTLINED_FUNCTION_493();
    if (__swift_getEnumTagSinglePayload(v30, v31, v21) == 1)
    {
      sub_1B8D9207C(v4, &qword_1EBACAF90, &unk_1B96B77C0);
    }

    else
    {
      v35 = v29;
      sub_1B92CD908();
      sub_1B92CDCE0(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
      sub_1B964C740();
      result = sub_1B92CD9B0();
      if (v3)
      {
        return result;
      }

      v29 = v35;
    }

    sub_1B8DD9078(v2 + v29[8], v11, &qword_1EBAB8EA8, &unk_1B96B77D0);
    if (__swift_getEnumTagSinglePayload(v11, 1, v40) == 1)
    {
      sub_1B8D9207C(v11, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }

    else
    {
      sub_1B92CD908();
      sub_1B92CDCE0(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
      sub_1B964C740();
      result = sub_1B92CD9B0();
      if (v3)
      {
        return result;
      }
    }

    if (!v2[2] || (v32 = *(v2 + 24), v38 = v2[2], v39 = v32, sub_1B92CDA04(), result = sub_1B964C680(), !v3))
    {
      v33 = v2 + v29[6];
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t static Searchfoundation_AppLink.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_280();
  v3 = type metadata accessor for Searchfoundation_Image(v2);
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v68 - v14;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EB0, &qword_1B964D6B0);
  OUTLINED_FUNCTION_59_1(v72);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  v73 = &v68 - v18;
  v19 = type metadata accessor for Searchfoundation_Punchout();
  v20 = OUTLINED_FUNCTION_59_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_62();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF90, &unk_1B96B77C0);
  OUTLINED_FUNCTION_183(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v68 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB028, &unk_1B96B98F0);
  OUTLINED_FUNCTION_59_1(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v68 - v33;
  v35 = *v1 == *v0 && v1[1] == v0[1];
  if (!v35 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_27;
  }

  v70 = v3;
  v68 = v9;
  v36 = v0;
  v69 = type metadata accessor for Searchfoundation_AppLink();
  v37 = *(v69 + 28);
  v38 = *(v29 + 48);
  sub_1B8DD9078(v1 + v37, v34, &qword_1EBACAF90, &unk_1B96B77C0);
  sub_1B8DD9078(v36 + v37, &v34[v38], &qword_1EBACAF90, &unk_1B96B77C0);
  OUTLINED_FUNCTION_178(v34, 1, v19);
  if (v35)
  {
    OUTLINED_FUNCTION_178(&v34[v38], 1, v19);
    if (v35)
    {
      sub_1B8D9207C(v34, &qword_1EBACAF90, &unk_1B96B77C0);
      goto LABEL_16;
    }

LABEL_14:
    v40 = &qword_1EBACB028;
    v41 = &unk_1B96B98F0;
    v42 = v34;
LABEL_26:
    sub_1B8D9207C(v42, v40, v41);
    goto LABEL_27;
  }

  sub_1B8DD9078(v34, v28, &qword_1EBACAF90, &unk_1B96B77C0);
  OUTLINED_FUNCTION_178(&v34[v38], 1, v19);
  if (v39)
  {
    sub_1B92CD9B0();
    goto LABEL_14;
  }

  sub_1B92CD908();
  v43 = static Searchfoundation_Punchout.== infix(_:_:)();
  sub_1B92CD9B0();
  sub_1B92CD9B0();
  sub_1B8D9207C(v34, &qword_1EBACAF90, &unk_1B96B77C0);
  if ((v43 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_16:
  v44 = v69;
  v45 = *(v69 + 32);
  v46 = *(v72 + 48);
  v47 = v1;
  v48 = v73;
  sub_1B8DD9078(v1 + v45, v73, &qword_1EBAB8EA8, &unk_1B96B77D0);
  v49 = v36 + v45;
  v50 = v36;
  sub_1B8DD9078(v49, v48 + v46, &qword_1EBAB8EA8, &unk_1B96B77D0);
  v51 = v70;
  OUTLINED_FUNCTION_178(v48, 1, v70);
  if (!v35)
  {
    v52 = v71;
    sub_1B8DD9078(v48, v71, &qword_1EBAB8EA8, &unk_1B96B77D0);
    OUTLINED_FUNCTION_178(v48 + v46, 1, v51);
    if (!v53)
    {
      OUTLINED_FUNCTION_0_82();
      v56 = v68;
      sub_1B92CD908();
      v57 = *(v51 + 20);
      if (*(v52 + v57) == *(v56 + v57) || (v58 = *(v52 + v57), , , sub_1B94C6890(), v60 = v59, , , (v60 & 1) != 0))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_4_46();
        sub_1B92CDCE0(v61, v62);
        v63 = sub_1B964C850();
        sub_1B92CD9B0();
        sub_1B92CD9B0();
        sub_1B8D9207C(v48, &qword_1EBAB8EA8, &unk_1B96B77D0);
        if ((v63 & 1) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_32;
      }

      sub_1B92CD9B0();
      sub_1B92CD9B0();
      v40 = &qword_1EBAB8EA8;
      v41 = &unk_1B96B77D0;
      goto LABEL_25;
    }

    sub_1B92CD9B0();
LABEL_24:
    v40 = &qword_1EBAB8EB0;
    v41 = &qword_1B964D6B0;
LABEL_25:
    v42 = v48;
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_178(v48 + v46, 1, v51);
  if (!v35)
  {
    goto LABEL_24;
  }

  sub_1B8D9207C(v48, &qword_1EBAB8EA8, &unk_1B96B77D0);
LABEL_32:
  v64 = *(v50 + 24);
  if (sub_1B8D92198(v47[2], *(v47 + 24), v50[2]))
  {
    v65 = *(v44 + 24);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_4_46();
    sub_1B92CDCE0(v66, v67);
    v54 = sub_1B964C850();
    return v54 & 1;
  }

LABEL_27:
  v54 = 0;
  return v54 & 1;
}

uint64_t Searchfoundation_AppLink.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_AppLink();
  sub_1B92CDCE0(&qword_1EBACB130, type metadata accessor for Searchfoundation_AppLink);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B92CD798(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B92CDCE0(&qword_1EBACB148, type metadata accessor for Searchfoundation_AppLink);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92CD818(uint64_t a1)
{
  v2 = sub_1B92CDCE0(&qword_1EBACB0E0, type metadata accessor for Searchfoundation_AppLink);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92CD888()
{
  sub_1B92CDCE0(&qword_1EBACB0E0, type metadata accessor for Searchfoundation_AppLink);

  return sub_1B964C5D0();
}

uint64_t sub_1B92CD908()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 32);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t sub_1B92CD95C()
{
  v1 = OUTLINED_FUNCTION_280();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_432();
  v7(v6);
  return v0;
}

uint64_t sub_1B92CD9B0()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_1B92CDA04()
{
  result = qword_1EBACB128;
  if (!qword_1EBACB128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACB128);
  }

  return result;
}

void sub_1B92CDBA0()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B92CDC8C(319, &qword_1ED9F9678, type metadata accessor for Searchfoundation_Punchout);
    if (v1 <= 0x3F)
    {
      sub_1B92CDC8C(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B92CDC8C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B92CDCE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Searchfoundation_ArchiveViewCardSection.punchoutOptions.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Searchfoundation_ArchiveViewCardSection.punchoutPickerTitle.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_ArchiveViewCardSection.punchoutPickerTitle.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Searchfoundation_ArchiveViewCardSection.punchoutPickerDismissText.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_ArchiveViewCardSection.punchoutPickerDismissText.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Searchfoundation_ArchiveViewCardSection.type.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_ArchiveViewCardSection.type.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

void Searchfoundation_ArchiveViewCardSection.separatorStyle.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

uint64_t Searchfoundation_ArchiveViewCardSection.separatorStyle.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t Searchfoundation_ArchiveViewCardSection.backgroundColor.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_88();
  v8 = type metadata accessor for Searchfoundation_ArchiveViewCardSection();
  sub_1B92C7198(v1 + *(v8 + 56), v2);
  v9 = type metadata accessor for Searchfoundation_Color(0);
  v10 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v10, v11, v9) != 1)
  {
    return sub_1B92C8908(v2, a1);
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v12 = *(v9 + 20);
  if (qword_1ED9CD1C0 != -1)
  {
    OUTLINED_FUNCTION_4_45();
  }

  *(a1 + v12) = qword_1ED9CD1C8;
  v13 = OUTLINED_FUNCTION_493();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, v14, v9);

  if (EnumTagSinglePayload != 1)
  {
    return sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
  }

  return result;
}

uint64_t type metadata accessor for Searchfoundation_ArchiveViewCardSection()
{
  result = qword_1ED9F0AA0;
  if (!qword_1ED9F0AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B92CE1C0(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_Color(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B92C896C(a1, v5);
  return Searchfoundation_ArchiveViewCardSection.backgroundColor.setter(v5);
}

uint64_t Searchfoundation_ArchiveViewCardSection.backgroundColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_ArchiveViewCardSection() + 56);
  sub_1B8D9207C(v1 + v3, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B92C8908(a1, v1 + v3);
  v4 = type metadata accessor for Searchfoundation_Color(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Searchfoundation_ArchiveViewCardSection.backgroundColor.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_Color(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_ArchiveViewCardSection() + 56);
  *(v3 + 10) = v11;
  sub_1B92C7198(v1 + v11, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(v7 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45();
    }

    *&v10[v12] = qword_1ED9CD1C8;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v6, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    sub_1B92C8908(v6, v10);
  }

  return sub_1B92C739C;
}

BOOL Searchfoundation_ArchiveViewCardSection.hasBackgroundColor.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_88();
  v6 = type metadata accessor for Searchfoundation_ArchiveViewCardSection();
  sub_1B92C7198(v0 + *(v6 + 56), v1);
  type metadata accessor for Searchfoundation_Color(0);
  v7 = OUTLINED_FUNCTION_493();
  v10 = __swift_getEnumTagSinglePayload(v7, v8, v9) != 1;
  sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
  return v10;
}

Swift::Void __swiftcall Searchfoundation_ArchiveViewCardSection.clearBackgroundColor()()
{
  v1 = *(type metadata accessor for Searchfoundation_ArchiveViewCardSection() + 56);
  sub_1B8D9207C(v0 + v1, &qword_1EBACB050, &unk_1B96B7BD0);
  v2 = type metadata accessor for Searchfoundation_Color(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Searchfoundation_ArchiveViewCardSection.archive.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_ArchiveViewCardSection.archive.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 80), *(v1 + 88));
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Searchfoundation_ArchiveViewCardSection.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_ArchiveViewCardSection() + 52);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Searchfoundation_ArchiveViewCardSection.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_ArchiveViewCardSection() + 52);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t Searchfoundation_ArchiveViewCardSection.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 42) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = xmmword_1B9652FE0;
  v2 = type metadata accessor for Searchfoundation_ArchiveViewCardSection();
  v3 = a1 + *(v2 + 52);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 56);
  v5 = type metadata accessor for Searchfoundation_Color(0);

  return __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
}

uint64_t sub_1B92CE7E4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACB150);
  __swift_project_value_buffer(v0, qword_1EBACB150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9656CE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "punchoutOptions";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "punchoutPickerTitle";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "punchoutPickerDismissText";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "canBeHidden";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "hasTopPadding";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "hasBottomPadding";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "type";
  *(v20 + 1) = 4;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "separatorStyle";
  *(v22 + 1) = 14;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "backgroundColor";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 51;
  *v26 = "archive";
  *(v26 + 1) = 7;
  v26[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_ArchiveViewCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB7DE0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBACB150);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_ArchiveViewCardSection.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B92CED4C();
        break;
      case 2:
      case 3:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
      case 5:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 8:
        OUTLINED_FUNCTION_9();
        sub_1B92C7E00();
        break;
      case 9:
        OUTLINED_FUNCTION_9();
        sub_1B92CEDEC();
        break;
      default:
        if (result == 51)
        {
          OUTLINED_FUNCTION_12();
          sub_1B964C470();
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B92CED4C()
{
  type metadata accessor for Searchfoundation_Punchout();
  sub_1B92CFB0C(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
  return sub_1B964C570();
}

uint64_t sub_1B92CEDEC()
{
  v0 = *(type metadata accessor for Searchfoundation_ArchiveViewCardSection() + 56);
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B92CFB0C(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
  return sub_1B964C580();
}

uint64_t Searchfoundation_ArchiveViewCardSection.traverse<A>(visitor:)()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  v9 = type metadata accessor for Searchfoundation_Color(0);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v0 + 16))
  {
    v34 = v0;
    v15 = v8;
    v16 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    type metadata accessor for Searchfoundation_Punchout();
    sub_1B92CFB0C(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
    result = sub_1B964C730();
    if (v1)
    {
      return result;
    }

    v14 = v16;
    v8 = v15;
    v2 = v34;
  }

  v18 = *(v2 + 8);
  v19 = *(v2 + 16);
  OUTLINED_FUNCTION_1();
  if (!v20 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
  {
    v21 = *(v2 + 24);
    v22 = *(v2 + 32);
    OUTLINED_FUNCTION_1();
    if (!v23 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
    {
      if (*(v2 + 40) != 1 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C670(), !v1))
      {
        if (*(v2 + 41) != 1 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C670(), !v1))
        {
          if (*(v2 + 42) != 1 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C670(), !v1))
          {
            v24 = *(v2 + 48);
            v25 = *(v2 + 56);
            OUTLINED_FUNCTION_1();
            if (!v26 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
            {
              if (!*(v2 + 64) || (v27 = *(v2 + 72), v32 = *(v2 + 64), v33 = v27, sub_1B92C8A2C(), OUTLINED_FUNCTION_79_0(), result = sub_1B964C680(), !v1))
              {
                v28 = type metadata accessor for Searchfoundation_ArchiveViewCardSection();
                sub_1B92C7198(v2 + *(v28 + 56), v8);
                if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
                {
                  sub_1B8D9207C(v8, &qword_1EBACB050, &unk_1B96B7BD0);
                }

                else
                {
                  v34 = v28;
                  sub_1B92C8908(v8, v14);
                  sub_1B92CFB0C(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
                  OUTLINED_FUNCTION_79_0();
                  sub_1B964C740();
                  result = sub_1B92C89D0(v14);
                  if (v1)
                  {
                    return result;
                  }

                  v28 = v34;
                }

                if (sub_1B8D99EA8(*(v2 + 80), *(v2 + 88)) || (v29 = *(v2 + 80), v30 = *(v2 + 88), OUTLINED_FUNCTION_11_5(), result = sub_1B964C6A0(), !v1))
                {
                  v31 = v2 + *(v28 + 52);
                  OUTLINED_FUNCTION_12();
                  return sub_1B964C290();
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_ArchiveViewCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v3 = type metadata accessor for Searchfoundation_Color(0);
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  OUTLINED_FUNCTION_59_1(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_88();
  v19 = *v1;
  v20 = *v0;
  sub_1B8D67B1C();
  if ((v21 & 1) == 0)
  {
    goto LABEL_33;
  }

  v22 = v1[1] == v0[1] && v1[2] == v0[2];
  if (!v22 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_33;
  }

  v23 = v1[3] == v0[3] && v1[4] == v0[4];
  if (!v23 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_33;
  }

  if (*(v1 + 40) != *(v0 + 40) || *(v1 + 41) != *(v0 + 41) || *(v1 + 42) != *(v0 + 42))
  {
    goto LABEL_33;
  }

  v24 = v1[6] == v0[6] && v1[7] == v0[7];
  if (!v24 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_33;
  }

  v25 = *(v0 + 72);
  if (!sub_1B8D92198(v1[8], *(v1 + 72), v0[8]))
  {
    goto LABEL_33;
  }

  v26 = type metadata accessor for Searchfoundation_ArchiveViewCardSection();
  v27 = *(v26 + 56);
  v28 = *(v15 + 48);
  sub_1B92C7198(v1 + v27, v2);
  sub_1B92C7198(v0 + v27, v2 + v28);
  v29 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v29, v30, v3) == 1)
  {
    if (__swift_getEnumTagSinglePayload(v2 + v28, 1, v3) == 1)
    {
      sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_31;
    }

    goto LABEL_26;
  }

  sub_1B92C7198(v2, v14);
  if (__swift_getEnumTagSinglePayload(v2 + v28, 1, v3) == 1)
  {
    sub_1B92C89D0(v14);
LABEL_26:
    v31 = &qword_1EBACB058;
    v32 = &unk_1B96CA9D0;
LABEL_27:
    sub_1B8D9207C(v2, v31, v32);
LABEL_33:
    v43 = 0;
    return v43 & 1;
  }

  sub_1B92C8908(v2 + v28, v8);
  v33 = *(v3 + 20);
  if (*&v14[v33] != *&v8[v33])
  {
    v34 = *&v14[v33];

    sub_1B947FDE4();
    v36 = v35;

    if ((v36 & 1) == 0)
    {
      sub_1B92C89D0(v8);
      sub_1B92C89D0(v14);
      v31 = &qword_1EBACB050;
      v32 = &unk_1B96B7BD0;
      goto LABEL_27;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_55();
  sub_1B92CFB0C(v37, v38);
  v39 = sub_1B964C850();
  sub_1B92C89D0(v8);
  sub_1B92C89D0(v14);
  sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
  if ((v39 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_31:
  if ((MEMORY[0x1BFADC060](v1[10], v1[11], v0[10], v0[11]) & 1) == 0)
  {
    goto LABEL_33;
  }

  v40 = *(v26 + 52);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_55();
  sub_1B92CFB0C(v41, v42);
  v43 = sub_1B964C850();
  return v43 & 1;
}

uint64_t Searchfoundation_ArchiveViewCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_ArchiveViewCardSection();
  sub_1B92CFB0C(&qword_1EBACB168, type metadata accessor for Searchfoundation_ArchiveViewCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B92CF720(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B92CFB0C(&qword_1EBACB188, type metadata accessor for Searchfoundation_ArchiveViewCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92CF7A0(uint64_t a1)
{
  v2 = sub_1B92CFB0C(&qword_1EBACB178, type metadata accessor for Searchfoundation_ArchiveViewCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92CF810()
{
  sub_1B92CFB0C(&qword_1EBACB178, type metadata accessor for Searchfoundation_ArchiveViewCardSection);

  return sub_1B964C5D0();
}

void sub_1B92CF9D8()
{
  sub_1B92C8CF4(319, &qword_1ED9EB330, type metadata accessor for Searchfoundation_Punchout, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B92C8CF4(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B92CFB0C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t Searchfoundation_AudioState.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 6;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B92CFBB0@<X0>(uint64_t *a1@<X8>)
{
  result = Searchfoundation_AudioState.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B92CFBE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B92D7070();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Searchfoundation_AudioState.allCases.setter(void *a1)
{
  OUTLINED_FUNCTION_18();
  off_1EBACB190 = a1;
}

uint64_t sub_1B92CFD1C@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_AudioState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Searchfoundation_AudioPlaybackCardSection.punchoutOptions.getter()
{
  OUTLINED_FUNCTION_3_56();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 16);
}

uint64_t sub_1B92CFDA0(uint64_t *a1)
{
  v1 = *a1;

  return Searchfoundation_AudioPlaybackCardSection.punchoutOptions.setter();
}

uint64_t Searchfoundation_AudioPlaybackCardSection.punchoutOptions.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_AudioPlaybackCardSection(v2) + 20);
  v4 = *(v1 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_6_33();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B92D3058(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 16);
  *(v6 + 16) = v0;
}

uint64_t Searchfoundation_AudioPlaybackCardSection.punchoutOptions.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_3_56();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v4 + 16);

  return OUTLINED_FUNCTION_514();
}

void sub_1B92CFED4(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v3 = *(v2 + 48);
  if (v4)
  {
    v5 = *(v1 + 56);

    Searchfoundation_AudioPlaybackCardSection.punchoutOptions.setter();
    v6 = *(v1 + 48);
  }

  else
  {
    v7 = *(v1 + 64);
    v8 = *(v1 + 56);
    v9 = *(v8 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = *(v1 + 64);
      v13 = *(v1 + 56);
      OUTLINED_FUNCTION_6_33();
      v14 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B92D3058(v14);
      *(v13 + v12) = v11;
    }

    OUTLINED_FUNCTION_59_3();
    v15 = *(v11 + 16);
    *(v11 + 16) = v3;
  }

  free(v1);
}

uint64_t Searchfoundation_AudioPlaybackCardSection.punchoutPickerTitle.getter()
{
  OUTLINED_FUNCTION_2_56();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_432();
}

void sub_1B92CFFC0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_AudioPlaybackCardSection.punchoutPickerTitle.setter();
}

void Searchfoundation_AudioPlaybackCardSection.punchoutPickerTitle.setter()
{
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_10_31();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_33();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B92D3058(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 32);
  *(v5 + 24) = v2;
  *(v5 + 32) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_AudioPlaybackCardSection.punchoutPickerTitle.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_3_56();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 32);
  *(v1 + 48) = *(v4 + 24);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B92D00DC(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    v7 = *(v1 + 64);

    Searchfoundation_AudioPlaybackCardSection.punchoutPickerTitle.setter();
    v8 = *(v1 + 56);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_163_1();
    v10 = *(v5 + v2);
    if ((v9 & 1) == 0)
    {
      v11 = *(v1 + 72);
      v12 = *(v1 + 64);
      OUTLINED_FUNCTION_6_33();
      v13 = OUTLINED_FUNCTION_40_0();
      v14 = sub_1B92D3058(v13);
      OUTLINED_FUNCTION_168(v14);
    }

    OUTLINED_FUNCTION_59_3();
    v15 = *(v10 + 32);
    *(v10 + 24) = v4;
    *(v10 + 32) = v3;
  }

  free(v1);
}

uint64_t Searchfoundation_AudioPlaybackCardSection.punchoutPickerDismissText.getter()
{
  OUTLINED_FUNCTION_2_56();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_432();
}

void sub_1B92D01BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_AudioPlaybackCardSection.punchoutPickerDismissText.setter();
}

void Searchfoundation_AudioPlaybackCardSection.punchoutPickerDismissText.setter()
{
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_10_31();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_33();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B92D3058(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 48);
  *(v5 + 40) = v2;
  *(v5 + 48) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_AudioPlaybackCardSection.punchoutPickerDismissText.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_3_56();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 48);
  *(v1 + 48) = *(v4 + 40);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B92D02D8(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    v7 = *(v1 + 64);

    Searchfoundation_AudioPlaybackCardSection.punchoutPickerDismissText.setter();
    v8 = *(v1 + 56);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_163_1();
    v10 = *(v5 + v2);
    if ((v9 & 1) == 0)
    {
      v11 = *(v1 + 72);
      v12 = *(v1 + 64);
      OUTLINED_FUNCTION_6_33();
      v13 = OUTLINED_FUNCTION_40_0();
      v14 = sub_1B92D3058(v13);
      OUTLINED_FUNCTION_168(v14);
    }

    OUTLINED_FUNCTION_59_3();
    v15 = *(v10 + 48);
    *(v10 + 40) = v4;
    *(v10 + 48) = v3;
  }

  free(v1);
}

uint64_t Searchfoundation_AudioPlaybackCardSection.canBeHidden.getter()
{
  OUTLINED_FUNCTION_3_56();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 56);
}

uint64_t Searchfoundation_AudioPlaybackCardSection.canBeHidden.setter()
{
  v3 = OUTLINED_FUNCTION_38_10();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_33();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B92D3058(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 56) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_AudioPlaybackCardSection.canBeHidden.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_3_56();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v4 + 56);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B92D0478(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_6_33();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B92D3058(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_18();
  *(v6 + 56) = v3;

  free(v1);
}

uint64_t Searchfoundation_AudioPlaybackCardSection.hasTopPadding_p.getter()
{
  OUTLINED_FUNCTION_3_56();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 57);
}

uint64_t Searchfoundation_AudioPlaybackCardSection.hasTopPadding_p.setter()
{
  v3 = OUTLINED_FUNCTION_38_10();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_33();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B92D3058(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 57) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_AudioPlaybackCardSection.hasTopPadding_p.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_3_56();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v4 + 57);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B92D05FC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_6_33();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B92D3058(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_18();
  *(v6 + 57) = v3;

  free(v1);
}

uint64_t Searchfoundation_AudioPlaybackCardSection.hasBottomPadding_p.getter()
{
  OUTLINED_FUNCTION_3_56();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 58);
}

uint64_t Searchfoundation_AudioPlaybackCardSection.hasBottomPadding_p.setter()
{
  v3 = OUTLINED_FUNCTION_38_10();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_33();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B92D3058(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 58) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_AudioPlaybackCardSection.hasBottomPadding_p.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_3_56();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v4 + 58);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B92D0780(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_6_33();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B92D3058(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_18();
  *(v6 + 58) = v3;

  free(v1);
}

uint64_t Searchfoundation_AudioPlaybackCardSection.type.getter()
{
  OUTLINED_FUNCTION_2_56();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_432();
}

void sub_1B92D0844(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_AudioPlaybackCardSection.type.setter();
}

void Searchfoundation_AudioPlaybackCardSection.type.setter()
{
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_10_31();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_33();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B92D3058(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 72);
  *(v5 + 64) = v2;
  *(v5 + 72) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_AudioPlaybackCardSection.type.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_3_56();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 72);
  *(v1 + 48) = *(v4 + 64);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B92D0960(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    v7 = *(v1 + 64);

    Searchfoundation_AudioPlaybackCardSection.type.setter();
    v8 = *(v1 + 56);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_163_1();
    v10 = *(v5 + v2);
    if ((v9 & 1) == 0)
    {
      v11 = *(v1 + 72);
      v12 = *(v1 + 64);
      OUTLINED_FUNCTION_6_33();
      v13 = OUTLINED_FUNCTION_40_0();
      v14 = sub_1B92D3058(v13);
      OUTLINED_FUNCTION_168(v14);
    }

    OUTLINED_FUNCTION_59_3();
    v15 = *(v10 + 72);
    *(v10 + 64) = v4;
    *(v10 + 72) = v3;
  }

  free(v1);
}

uint64_t Searchfoundation_AudioPlaybackCardSection.separatorStyle.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_56();
  result = OUTLINED_FUNCTION_10_4();
  v4 = *(v1 + 88);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v4;
  return result;
}

void Searchfoundation_AudioPlaybackCardSection.separatorStyle.setter()
{
  OUTLINED_FUNCTION_193_0();
  v2 = v0;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_10_31();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_33();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B92D3058(v8);
    *(v2 + v1) = v7;
  }

  OUTLINED_FUNCTION_9_3();
  *(v7 + 80) = v4;
  *(v7 + 88) = v5;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_AudioPlaybackCardSection.separatorStyle.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_3_56();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 88);
  *(v1 + 72) = *(v4 + 80);
  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B92D0B24(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v7 = OUTLINED_FUNCTION_138_2(v6);
  v8 = *(v5 + v2);
  if ((v7 & 1) == 0)
  {
    v9 = *(v1 + 84);
    v10 = *(v1 + 88);
    OUTLINED_FUNCTION_6_33();
    v11 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B92D3058(v11);
    *(v10 + v9) = v8;
  }

  OUTLINED_FUNCTION_18();
  *(v8 + 80) = v3;
  *(v8 + 88) = v4;

  free(v1);
}

uint64_t Searchfoundation_AudioPlaybackCardSection.backgroundColor.getter@<X0>(int a1@<W8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  OUTLINED_FUNCTION_2_56();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_57(v7);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v10 = *(v8 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v7, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_29();
    return sub_1B92D6A28();
  }

  return result;
}

uint64_t Searchfoundation_AudioPlaybackCardSection.backgroundColor.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_10_31();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_33();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B92D3058(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_29();
  OUTLINED_FUNCTION_56_9();
  v10 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_AudioPlaybackCardSection.backgroundColor.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Searchfoundation_Color(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_2_56();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = *(v8 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45();
    }

    OUTLINED_FUNCTION_57_2();
    if (v8 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_29();
    OUTLINED_FUNCTION_53_14();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_AudioPlaybackCardSection.state.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3_56();
  v4 = *(v1 + v3) + OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__state;
  result = OUTLINED_FUNCTION_521();
  v6 = *(v4 + 8);
  *a1 = *v4;
  *(a1 + 8) = v6;
  return result;
}

void *sub_1B92D0FD8@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  result = a1(&v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_1B92D1020(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;
  return a5(&v7);
}

void Searchfoundation_AudioPlaybackCardSection.state.setter()
{
  OUTLINED_FUNCTION_193_0();
  v2 = v0;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_10_31();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_33();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B92D3058(v8);
    *(v2 + v1) = v7;
  }

  v9 = v7 + OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__state;
  OUTLINED_FUNCTION_18();
  *v9 = v4;
  *(v9 + 8) = v5;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_AudioPlaybackCardSection.state.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_3_56();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3) + OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__state;
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 8);
  *(v1 + 72) = *v4;
  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B92D1160(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v7 = OUTLINED_FUNCTION_138_2(v6);
  v8 = *(v5 + v2);
  if ((v7 & 1) == 0)
  {
    v9 = *(v1 + 84);
    v10 = *(v1 + 88);
    OUTLINED_FUNCTION_6_33();
    v11 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B92D3058(v11);
    *(v10 + v9) = v8;
  }

  v12 = v8 + OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__state;
  OUTLINED_FUNCTION_18();
  *v12 = v3;
  *(v12 + 8) = v4;

  free(v1);
}

void sub_1B92D1214(uint64_t *a1)
{
  v1 = *a1;

  Searchfoundation_AudioPlaybackCardSection.playCommands.setter();
}

uint64_t Searchfoundation_AudioPlaybackCardSection.playCommands.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_3_56();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__playCommands;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B92D12F8(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_56();
  v3 = *a1;
  OUTLINED_FUNCTION_10_4();
  v4 = *(v1 + v3);
}

void sub_1B92D1338(uint64_t *a1)
{
  v1 = *a1;

  Searchfoundation_AudioPlaybackCardSection.stopCommands.setter();
}

void sub_1B92D1370()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_10_31();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_33();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B92D3058(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  v10 = *v3;
  OUTLINED_FUNCTION_9_3();
  v11 = *(v7 + v10);
  *(v7 + v10) = v5;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_AudioPlaybackCardSection.stopCommands.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_3_56();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__stopCommands;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_514();
}

void sub_1B92D147C(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v5 = *(v4 + 48);
  if (v6)
  {
    v7 = v3;
    v8 = *(v1 + 56);

    v7(v9);
    v10 = *(v1 + 48);
  }

  else
  {
    v11 = v2;
    v12 = *(v1 + 64);
    v13 = *(v1 + 56);
    v14 = *(v13 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v13 + v12);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v1 + 64);
      v18 = *(v1 + 56);
      OUTLINED_FUNCTION_6_33();
      v19 = OUTLINED_FUNCTION_40_0();
      v20 = sub_1B92D3058(v19);
      OUTLINED_FUNCTION_168(v20);
    }

    v21 = *v11;
    OUTLINED_FUNCTION_59_3();
    v22 = *(v16 + v21);
    *(v16 + v21) = v5;
  }

  free(v1);
}

uint64_t sub_1B92D1540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1B92D6A80();
  return a7(v13);
}

uint64_t Searchfoundation_AudioPlaybackCardSection.detailText.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_10_31();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_33();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B92D3058(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_0_83();
  OUTLINED_FUNCTION_56_9();
  v10 = type metadata accessor for Searchfoundation_RichText();
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_AudioPlaybackCardSection.detailText.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_71(v6);
  v7 = type metadata accessor for Searchfoundation_RichText();
  OUTLINED_FUNCTION_59_1(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_2_56();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    OUTLINED_FUNCTION_48_13(MEMORY[0x1E69E7CC0]);
    v13 = *(v7 + 32);
    v14 = type metadata accessor for Searchfoundation_Text();
    OUTLINED_FUNCTION_84_6(v14);
    v15 = *(v7 + 36);
    v16 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
    OUTLINED_FUNCTION_84_6(v16);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACB1D0, &qword_1B96B9870);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_83();
    OUTLINED_FUNCTION_53_14();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

BOOL sub_1B92D1844(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  OUTLINED_FUNCTION_2_56();
  v16 = *a3;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v17 = a4(0);
  v18 = __swift_getEnumTagSinglePayload(v15, 1, v17) != 1;
  sub_1B8D9207C(v15, v5, v4);
  return v18;
}

uint64_t sub_1B92D1948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4)
{
  OUTLINED_FUNCTION_16();
  v7 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  v16 = *(type metadata accessor for Searchfoundation_AudioPlaybackCardSection(0) + 20);
  v17 = *(v4 + v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v4 + v16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_6_33();
    v20 = OUTLINED_FUNCTION_40_0();
    *(v7 + v16) = sub_1B92D3058(v20);
  }

  v21 = a3(0);
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v21);
  v22 = *a4;
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B92D1A58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  OUTLINED_FUNCTION_2_56();
  v10 = *a1;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v11 = type metadata accessor for Searchfoundation_RichText();
  OUTLINED_FUNCTION_57(v9);
  if (!v12)
  {
    return sub_1B92D6A28();
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v13 = MEMORY[0x1E69E7CC0];
  a2[2] = MEMORY[0x1E69E7CC0];
  a2[3] = v13;
  v14 = a2 + v11[7];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v15 = v11[8];
  v16 = type metadata accessor for Searchfoundation_Text();
  OUTLINED_FUNCTION_249_3(v16);
  v17 = v11[9];
  v18 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
  OUTLINED_FUNCTION_249_3(v18);
  result = OUTLINED_FUNCTION_57(v9);
  if (!v12)
  {
    return sub_1B8D9207C(v9, &qword_1EBACB1D0, &qword_1B96B9870);
  }

  return result;
}

uint64_t Searchfoundation_AudioPlaybackCardSection.title.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_10_31();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_33();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B92D3058(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_0_83();
  OUTLINED_FUNCTION_56_9();
  v10 = type metadata accessor for Searchfoundation_RichText();
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_AudioPlaybackCardSection.title.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_71(v6);
  v7 = type metadata accessor for Searchfoundation_RichText();
  OUTLINED_FUNCTION_59_1(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_2_56();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    OUTLINED_FUNCTION_48_13(MEMORY[0x1E69E7CC0]);
    v13 = *(v7 + 32);
    v14 = type metadata accessor for Searchfoundation_Text();
    OUTLINED_FUNCTION_84_6(v14);
    v15 = *(v7 + 36);
    v16 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
    OUTLINED_FUNCTION_84_6(v16);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACB1D0, &qword_1B96B9870);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_83();
    OUTLINED_FUNCTION_53_14();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_AudioPlaybackCardSection.subtitle.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_10_31();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_33();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B92D3058(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_0_83();
  OUTLINED_FUNCTION_56_9();
  v10 = type metadata accessor for Searchfoundation_RichText();
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_AudioPlaybackCardSection.subtitle.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_71(v6);
  v7 = type metadata accessor for Searchfoundation_RichText();
  OUTLINED_FUNCTION_59_1(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_2_56();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    OUTLINED_FUNCTION_48_13(MEMORY[0x1E69E7CC0]);
    v13 = *(v7 + 32);
    v14 = type metadata accessor for Searchfoundation_Text();
    OUTLINED_FUNCTION_84_6(v14);
    v15 = *(v7 + 36);
    v16 = type metadata accessor for Searchfoundation_GraphicalFloat(0);
    OUTLINED_FUNCTION_84_6(v16);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACB1D0, &qword_1B96B9870);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_83();
    OUTLINED_FUNCTION_53_14();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_AudioPlaybackCardSection.thumbnail.getter@<X0>(int a1@<W8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  OUTLINED_FUNCTION_2_56();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_57(v7);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v10 = *(v8 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5();
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v7, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_36();
    return sub_1B92D6A28();
  }

  return result;
}

uint64_t Searchfoundation_AudioPlaybackCardSection.thumbnail.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_10_31();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_33();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B92D3058(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_7_36();
  OUTLINED_FUNCTION_56_9();
  v10 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_65_2();
  return swift_endAccess();
}

void Searchfoundation_AudioPlaybackCardSection.thumbnail.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Searchfoundation_Image(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  *(v1 + 48) = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_2_56();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = *(v8 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5();
    }

    OUTLINED_FUNCTION_57_2();
    if (v8 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_36();
    OUTLINED_FUNCTION_53_14();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B92D2444(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 32);
  if (a2)
  {
    v9 = *(*a1 + 48);
    sub_1B92D6A80();
    a3(v5);
    sub_1B92D6AD8();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v6);
  free(v5);
  free(v8);

  free(v4);
}

uint64_t Searchfoundation_AudioPlaybackCardSection.unknownFields.getter()
{
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Searchfoundation_AudioPlaybackCardSection.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v2 = sub_1B964C2B0();
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t Searchfoundation_AudioPlaybackCardSection.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Searchfoundation_AudioPlaybackCardSection(0) + 20);
  if (qword_1EBAB7DF8 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EBACB1C8;
}

uint64_t sub_1B92D26A8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACB198);
  __swift_project_value_buffer(v0, qword_1EBACB198);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "AudioStateUnplayed";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AudioStateBuffering";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AudioStateActive";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "AudioStatePaused";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "AudioStateFailed";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "AudioStateFinished";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B92D29A4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACB1B0);
  __swift_project_value_buffer(v0, qword_1EBACB1B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1B96594C0;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "punchoutOptions";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "punchoutPickerTitle";
  *(v9 + 8) = 19;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "punchoutPickerDismissText";
  *(v11 + 1) = 25;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "canBeHidden";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "hasTopPadding";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "hasBottomPadding";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "type";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "separatorStyle";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "backgroundColor";
  *(v23 + 1) = 15;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 61;
  *v25 = "state";
  *(v25 + 1) = 5;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 62;
  *v27 = "playCommands";
  *(v27 + 1) = 12;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 63;
  *v29 = "stopCommands";
  *(v29 + 1) = 12;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 64;
  *v31 = "detailText";
  *(v31 + 1) = 10;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 65;
  *v33 = "title";
  *(v33 + 1) = 5;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 66;
  *v35 = "subtitle";
  *(v35 + 1) = 8;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 67;
  *v37 = "thumbnail";
  *(v37 + 1) = 9;
  v37[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B92D2EFC()
{
  OUTLINED_FUNCTION_6_33();
  result = sub_1B92D2F2C();
  qword_1EBACB1C8 = result;
  return result;
}

uint64_t sub_1B92D2F2C()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 58) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  v2 = OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__backgroundColor;
  v3 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v4 = v0 + OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__state;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__playCommands) = v1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__stopCommands) = v1;
  v5 = OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__detailText;
  v6 = type metadata accessor for Searchfoundation_RichText();
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__title, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__subtitle, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__thumbnail;
  v8 = type metadata accessor for Searchfoundation_Image(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  return v0;
}

uint64_t sub_1B92D3058(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v57 = &v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v55 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v49 = &v45 - v11;
  v12 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 56) = 0;
  *(v1 + 58) = 0;
  v45 = (v1 + 58);
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  v46 = (v1 + 64);
  v47 = (v1 + 80);
  *(v1 + 88) = 1;
  v13 = OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__backgroundColor;
  v14 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v1 + v13, 1, 1, v14);
  v15 = v1 + OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__state;
  v48 = v1 + OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__state;
  *v15 = 0;
  *(v15 + 8) = 1;
  v50 = OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__playCommands;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__playCommands) = v12;
  v51 = OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__stopCommands;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__stopCommands) = v12;
  v16 = OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__detailText;
  v52 = OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__detailText;
  v17 = type metadata accessor for Searchfoundation_RichText();
  __swift_storeEnumTagSinglePayload(v1 + v16, 1, 1, v17);
  v53 = OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__title;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__title, 1, 1, v17);
  v54 = OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__subtitle;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__subtitle, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__thumbnail;
  v56 = OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__thumbnail;
  v19 = type metadata accessor for Searchfoundation_Image(0);
  __swift_storeEnumTagSinglePayload(v1 + v18, 1, 1, v19);
  swift_beginAccess();
  v20 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v20;
  swift_beginAccess();
  v21 = *(a1 + 24);
  v22 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v21;
  *(v1 + 32) = v22;

  swift_beginAccess();
  v24 = *(a1 + 40);
  v23 = *(a1 + 48);
  swift_beginAccess();
  v25 = *(v1 + 48);
  *(v1 + 40) = v24;
  *(v1 + 48) = v23;

  swift_beginAccess();
  LOBYTE(v23) = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v23;
  swift_beginAccess();
  LOBYTE(v23) = *(a1 + 57);
  swift_beginAccess();
  *(v1 + 57) = v23;
  swift_beginAccess();
  LOBYTE(v23) = *(a1 + 58);
  v26 = v45;
  swift_beginAccess();
  *v26 = v23;
  swift_beginAccess();
  v28 = *(a1 + 64);
  v27 = *(a1 + 72);
  v29 = v46;
  swift_beginAccess();
  v30 = *(v1 + 72);
  *v29 = v28;
  *(v1 + 72) = v27;

  swift_beginAccess();
  v31 = *(a1 + 80);
  LOBYTE(v30) = *(a1 + 88);
  v32 = v47;
  swift_beginAccess();
  *v32 = v31;
  *(v1 + 88) = v30;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v33 = (a1 + OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__state);
  swift_beginAccess();
  v34 = *v33;
  LOBYTE(v33) = *(v33 + 8);
  v35 = v48;
  swift_beginAccess();
  *v35 = v34;
  *(v35 + 8) = v33;
  v36 = OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__playCommands;
  swift_beginAccess();
  v37 = *(a1 + v36);
  v38 = v50;
  swift_beginAccess();
  v39 = *(v1 + v38);
  *(v1 + v38) = v37;

  v40 = OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__stopCommands;
  swift_beginAccess();
  v41 = *(a1 + v40);
  v42 = v51;
  swift_beginAccess();
  v43 = *(v1 + v42);
  *(v1 + v42) = v41;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v1;
}

void *sub_1B92D37DC()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__backgroundColor, &qword_1EBACB050, &unk_1B96B7BD0);
  v5 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__playCommands);

  v6 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__stopCommands);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__detailText, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__title, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__subtitle, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__thumbnail, &qword_1EBAB8EA8, &unk_1B96B77D0);
  return v0;
}

uint64_t sub_1B92D38DC()
{
  v0 = sub_1B92D37DC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Searchfoundation_AudioPlaybackCardSection.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Searchfoundation_AudioPlaybackCardSection(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Searchfoundation_AudioPlaybackCardSection._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B92D3058(v15);
    *(v4 + v8) = v11;
  }

  return sub_1B92D39D0(v11, a1, a2, a3);
}

uint64_t sub_1B92D39D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B92D3C44();
        break;
      case 2:
        sub_1B8FD77E8();
        break;
      case 3:
        sub_1B8FD786C();
        break;
      case 4:
        sub_1B92D3D10();
        break;
      case 5:
        sub_1B92D3D94();
        break;
      case 6:
        sub_1B92D3E18();
        break;
      case 7:
        sub_1B8E16ACC();
        break;
      case 8:
        sub_1B92D3E9C();
        break;
      case 9:
        sub_1B92D3F30();
        break;
      default:
        switch(result)
        {
          case '=':
            sub_1B92D400C();
            break;
          case '>':
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__playCommands;
            goto LABEL_16;
          case '?':
            v11 = a2;
            v12 = a1;
            v13 = a3;
            v14 = a4;
            v15 = &OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__stopCommands;
LABEL_16:
            sub_1B92D40A8(v11, v12, v13, v14, v15);
            break;
          case '@':
            sub_1B92D4180();
            break;
          case 'A':
            sub_1B92D425C();
            break;
          case 'B':
            sub_1B92D4338();
            break;
          case 'C':
            sub_1B92D4414();
            break;
          default:
            continue;
        }

        break;
    }
  }
}

uint64_t sub_1B92D3C44()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Punchout();
  sub_1B8CD2FD8(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B92D3D10()
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B92D3D94()
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B92D3E18()
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B92D3E9C()
{
  swift_beginAccess();
  sub_1B92C8A2C();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B92D3F30()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B8CD2FD8(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B92D400C()
{
  swift_beginAccess();
  sub_1B92D7070();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B92D40A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  type metadata accessor for Searchfoundation_AbstractCommand(0);
  sub_1B8CD2FD8(qword_1ED9D2B20, type metadata accessor for Searchfoundation_AbstractCommand);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B92D4180()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText();
  sub_1B8CD2FD8(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B92D425C()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText();
  sub_1B8CD2FD8(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B92D4338()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText();
  sub_1B8CD2FD8(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B92D4414()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD2FD8(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t Searchfoundation_AudioPlaybackCardSection.traverse<A>(visitor:)()
{
  v2 = type metadata accessor for Searchfoundation_AudioPlaybackCardSection(0);
  result = sub_1B92D455C(*(v0 + *(v2 + 20)));
  if (!v1)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B92D455C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v56 - v6;
  v8 = type metadata accessor for Searchfoundation_Image(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v57 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v60 = v56 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v59 = v56 - v18;
  v61 = type metadata accessor for Searchfoundation_RichText();
  v19 = *(*(v61 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v61);
  v56[1] = v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v56[2] = v56 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v58 = v56 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v63 = v56 - v27;
  v64 = type metadata accessor for Searchfoundation_Color(0);
  v28 = *(*(v64 - 1) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v62 = v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v69 = a1;
  if (*(*(a1 + 16) + 16))
  {
    v56[0] = v7;
    type metadata accessor for Searchfoundation_Punchout();
    sub_1B8CD2FD8(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);

    sub_1B964C730();
    if (v1)
    {
    }

    v7 = v56[0];
  }

  v30 = v69;
  swift_beginAccess();
  v31 = *(v30 + 24);
  v32 = *(v30 + 32);
  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {
    goto LABEL_9;
  }

  sub_1B964C700();
  if (v2)
  {
  }

LABEL_9:
  v34 = v69;
  swift_beginAccess();
  v35 = *(v34 + 40);
  v36 = *(v34 + 48);
  v37 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v37 = v35 & 0xFFFFFFFFFFFFLL;
  }

  if (v37)
  {

    sub_1B964C700();
    if (v2)
    {
    }
  }

  v39 = v69;
  swift_beginAccess();
  if (*(v39 + 56) != 1 || (result = sub_1B964C670(), !v2))
  {
    swift_beginAccess();
    if (*(v39 + 57) != 1 || (result = sub_1B964C670(), !v2))
    {
      swift_beginAccess();
      if (*(v39 + 58) != 1 || (result = sub_1B964C670(), !v2))
      {
        swift_beginAccess();
        v40 = *(v39 + 64);
        v41 = *(v39 + 72);
        v42 = HIBYTE(v41) & 0xF;
        if ((v41 & 0x2000000000000000) == 0)
        {
          v42 = v40 & 0xFFFFFFFFFFFFLL;
        }

        if (v42)
        {

          sub_1B964C700();
          if (v2)
          {
          }
        }

        v43 = v69;
        swift_beginAccess();
        if (!*(v43 + 80) || (v44 = *(v43 + 88), v67 = *(v43 + 80), v68 = v44, sub_1B92C8A2C(), result = sub_1B964C680(), !v2))
        {
          v56[0] = OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__backgroundColor;
          swift_beginAccess();
          v45 = v63;
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v45, 1, v64) == 1)
          {
            sub_1B8D9207C(v45, &qword_1EBACB050, &unk_1B96B7BD0);
          }

          else
          {
            sub_1B92D6A28();
            sub_1B8CD2FD8(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
            sub_1B964C740();
            if (v2)
            {
              return sub_1B92D6AD8();
            }

            sub_1B92D6AD8();
          }

          v46 = (v69 + OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__state);
          swift_beginAccess();
          if (!*v46 || (v47 = *(v46 + 8), v65 = *v46, v66 = v47, sub_1B92D7070(), result = sub_1B964C680(), !v2))
          {
            v64 = v11;
            v48 = OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__playCommands;
            v49 = v69;
            swift_beginAccess();
            if (!*(*(v49 + v48) + 16) || (type metadata accessor for Searchfoundation_AbstractCommand(0), sub_1B8CD2FD8(qword_1ED9D2B20, type metadata accessor for Searchfoundation_AbstractCommand), , sub_1B964C730(), result = , !v2))
            {
              v50 = OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__stopCommands;
              v51 = v69;
              swift_beginAccess();
              if (!*(*(v51 + v50) + 16) || (type metadata accessor for Searchfoundation_AbstractCommand(0), sub_1B8CD2FD8(qword_1ED9D2B20, type metadata accessor for Searchfoundation_AbstractCommand), , sub_1B964C730(), result = , !v2))
              {
                swift_beginAccess();
                v52 = v59;
                sub_1B8D92024();
                EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v52, 1, v61);
                v63 = v8;
                if (EnumTagSinglePayload == 1)
                {
                  sub_1B8D9207C(v52, &qword_1EBACB1D0, &qword_1B96B9870);
                  v54 = v60;
                }

                else
                {
                  sub_1B92D6A28();
                  sub_1B8CD2FD8(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
                  sub_1B964C740();
                  result = sub_1B92D6AD8();
                  v54 = v60;
                  if (v2)
                  {
                    return result;
                  }
                }

                swift_beginAccess();
                sub_1B8D92024();
                if (__swift_getEnumTagSinglePayload(v54, 1, v61) == 1)
                {
                  sub_1B8D9207C(v54, &qword_1EBACB1D0, &qword_1B96B9870);
                }

                else
                {
                  sub_1B92D6A28();
                  sub_1B8CD2FD8(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
                  sub_1B964C740();
                  result = sub_1B92D6AD8();
                  if (v2)
                  {
                    return result;
                  }
                }

                swift_beginAccess();
                v55 = v57;
                sub_1B8D92024();
                if (__swift_getEnumTagSinglePayload(v55, 1, v61) == 1)
                {
                  sub_1B8D9207C(v55, &qword_1EBACB1D0, &qword_1B96B9870);
LABEL_49:
                  swift_beginAccess();
                  sub_1B8D92024();
                  if (__swift_getEnumTagSinglePayload(v7, 1, v63) == 1)
                  {
                    return sub_1B8D9207C(v7, &qword_1EBAB8EA8, &unk_1B96B77D0);
                  }

                  sub_1B92D6A28();
                  sub_1B8CD2FD8(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
                  sub_1B964C740();
                  return sub_1B92D6AD8();
                }

                sub_1B92D6A28();
                sub_1B8CD2FD8(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
                sub_1B964C740();
                result = sub_1B92D6AD8();
                if (!v2)
                {
                  goto LABEL_49;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_AudioPlaybackCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_3_56();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {
    v5 = *(v1 + v2);

    v6 = sub_1B92D5348(v3, v4);

    if (!v6)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD2FD8(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  return sub_1B964C850() & 1;
}

BOOL sub_1B92D5348(uint64_t a1, uint64_t a2)
{
  v133 = type metadata accessor for Searchfoundation_Image(0);
  v4 = *(*(v133 - 8) + 64);
  MEMORY[0x1EEE9AC00](v133);
  v129 = &v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EB0, &qword_1B964D6B0);
  v6 = *(*(v130 - 8) + 64);
  MEMORY[0x1EEE9AC00](v130);
  v135 = &v128 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v131 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v132 = &v128 - v12;
  v144 = type metadata accessor for Searchfoundation_RichText();
  v13 = *(*(v144 - 8) + 64);
  MEMORY[0x1EEE9AC00](v144);
  v140 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB230, &unk_1B96B8870);
  v15 = *(*(v145 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v145);
  v138 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v139 = &v128 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v143 = &v128 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v134 = (&v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x1EEE9AC00](v23);
  v137 = &v128 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v136 = &v128 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v142 = &v128 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v141 = &v128 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v147 = &v128 - v33;
  v34 = type metadata accessor for Searchfoundation_Color(0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v146 = &v128 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v148 = &v128 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x1EEE9AC00](v40 - 8);
  v44 = &v128 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v128 - v45;
  swift_beginAccess();
  v47 = *(a1 + 16);
  swift_beginAccess();
  v48 = *(a2 + 16);

  sub_1B8D67B1C();
  v50 = v49;

  if ((v50 & 1) == 0)
  {
    goto LABEL_60;
  }

  swift_beginAccess();
  v52 = *(a1 + 24);
  v51 = *(a1 + 32);
  swift_beginAccess();
  v53 = v52 == *(a2 + 24) && v51 == *(a2 + 32);
  if (!v53 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_60;
  }

  swift_beginAccess();
  v54 = *(a1 + 40);
  v55 = *(a1 + 48);
  swift_beginAccess();
  v56 = v54 == *(a2 + 40) && v55 == *(a2 + 48);
  if (!v56 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_60;
  }

  swift_beginAccess();
  v57 = *(a1 + 56);
  swift_beginAccess();
  if (v57 != *(a2 + 56))
  {
    goto LABEL_60;
  }

  swift_beginAccess();
  v58 = *(a1 + 57);
  swift_beginAccess();
  if (v58 != *(a2 + 57))
  {
    goto LABEL_60;
  }

  swift_beginAccess();
  v59 = *(a1 + 58);
  swift_beginAccess();
  if (v59 != *(a2 + 58))
  {
    goto LABEL_60;
  }

  swift_beginAccess();
  v60 = *(a1 + 64);
  v61 = *(a1 + 72);
  swift_beginAccess();
  v62 = v60 == *(a2 + 64) && v61 == *(a2 + 72);
  if (!v62 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_60;
  }

  swift_beginAccess();
  v63 = *(a1 + 80);
  v64 = *(a1 + 88);
  swift_beginAccess();
  v65 = *(a2 + 88);
  if (!sub_1B8D92198(v63, v64, *(a2 + 80)))
  {
    goto LABEL_60;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v66 = *(v37 + 48);
  v67 = v148;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v67, 1, v34) == 1)
  {
    sub_1B8D9207C(v46, &qword_1EBACB050, &unk_1B96B7BD0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v67 + v66, 1, v34);
    v69 = v147;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v67, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_32;
    }

LABEL_26:
    v71 = &qword_1EBACB058;
    v72 = &unk_1B96CA9D0;
LABEL_27:
    v73 = v67;
LABEL_28:
    sub_1B8D9207C(v73, v71, v72);
    goto LABEL_60;
  }

  sub_1B8D92024();
  v70 = __swift_getEnumTagSinglePayload(v67 + v66, 1, v34);
  v69 = v147;
  if (v70 == 1)
  {
    sub_1B8D9207C(v46, &qword_1EBACB050, &unk_1B96B7BD0);
    sub_1B92D6AD8();
    goto LABEL_26;
  }

  v74 = v146;
  sub_1B92D6A28();
  v75 = *(v34 + 20);
  if (*&v44[v75] != *&v74[v75])
  {
    v76 = *&v44[v75];

    sub_1B947FDE4();
    v78 = v77;

    if ((v78 & 1) == 0)
    {
      sub_1B92D6AD8();
      sub_1B8D9207C(v46, &qword_1EBACB050, &unk_1B96B7BD0);
      sub_1B92D6AD8();
      v73 = v148;
      v71 = &qword_1EBACB050;
      v72 = &unk_1B96B7BD0;
      goto LABEL_28;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD2FD8(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v79 = sub_1B964C850();
  sub_1B92D6AD8();
  sub_1B8D9207C(v46, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B92D6AD8();
  sub_1B8D9207C(v148, &qword_1EBACB050, &unk_1B96B7BD0);
  if ((v79 & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_32:
  v80 = a1 + OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__state;
  swift_beginAccess();
  v81 = *v80;
  v82 = *(v80 + 8);
  v83 = a2 + OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__state;
  swift_beginAccess();
  v84 = *(v83 + 8);
  if (!sub_1B8D92198(v81, v82, *v83))
  {
    goto LABEL_60;
  }

  v85 = OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__playCommands;
  swift_beginAccess();
  v86 = *(a1 + v85);
  v87 = OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__playCommands;
  swift_beginAccess();
  v88 = *(a2 + v87);

  sub_1B8D902C4();
  v90 = v89;

  if ((v90 & 1) == 0)
  {
    goto LABEL_60;
  }

  v91 = OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__stopCommands;
  swift_beginAccess();
  v92 = *(a1 + v91);
  v93 = OBJC_IVAR____TtCV10PegasusAPI41Searchfoundation_AudioPlaybackCardSectionP33_11A9B906AA37E9E08EC64884543CA4BC13_StorageClass__stopCommands;
  swift_beginAccess();
  v94 = *(a2 + v93);

  sub_1B8D902C4();
  v96 = v95;

  if ((v96 & 1) == 0)
  {
    goto LABEL_60;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v97 = *(v145 + 48);
  v98 = v143;
  sub_1B8D92024();
  sub_1B8D92024();
  v99 = v144;
  if (__swift_getEnumTagSinglePayload(v98, 1, v144) == 1)
  {
    sub_1B8D9207C(v69, &qword_1EBACB1D0, &qword_1B96B9870);
    if (__swift_getEnumTagSinglePayload(v98 + v97, 1, v99) == 1)
    {
      sub_1B8D9207C(v98, &qword_1EBACB1D0, &qword_1B96B9870);
      goto LABEL_43;
    }

LABEL_41:
    v71 = &qword_1EBACB230;
    v72 = &unk_1B96B8870;
    v73 = v98;
    goto LABEL_28;
  }

  v100 = v141;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v98 + v97, 1, v99) == 1)
  {
    sub_1B8D9207C(v69, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B92D6AD8();
    goto LABEL_41;
  }

  v101 = v140;
  sub_1B92D6A28();
  v102 = static Searchfoundation_RichText.== infix(_:_:)(v100, v101);
  sub_1B92D6AD8();
  sub_1B8D9207C(v69, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B92D6AD8();
  sub_1B8D9207C(v98, &qword_1EBACB1D0, &qword_1B96B9870);
  if ((v102 & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_43:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v103 = *(v145 + 48);
  v104 = v139;
  sub_1B8D92024();
  v67 = v104;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v104, 1, v99) == 1)
  {
    sub_1B8D9207C(v142, &qword_1EBACB1D0, &qword_1B96B9870);
    if (__swift_getEnumTagSinglePayload(v104 + v103, 1, v99) == 1)
    {
      sub_1B8D9207C(v104, &qword_1EBACB1D0, &qword_1B96B9870);
      goto LABEL_50;
    }

    goto LABEL_48;
  }

  v105 = v136;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v67 + v103, 1, v99) == 1)
  {
    sub_1B8D9207C(v142, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B92D6AD8();
LABEL_48:
    v71 = &qword_1EBACB230;
    v72 = &unk_1B96B8870;
    goto LABEL_27;
  }

  v106 = v140;
  sub_1B92D6A28();
  v107 = v67;
  v108 = static Searchfoundation_RichText.== infix(_:_:)(v105, v106);
  sub_1B92D6AD8();
  sub_1B8D9207C(v142, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B92D6AD8();
  sub_1B8D9207C(v107, &qword_1EBACB1D0, &qword_1B96B9870);
  if ((v108 & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_50:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v109 = *(v145 + 48);
  v110 = v138;
  sub_1B8D92024();
  sub_1B8D92024();
  v111 = v144;
  if (__swift_getEnumTagSinglePayload(v110, 1, v144) != 1)
  {
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v110 + v109, 1, v111) != 1)
    {
      v112 = v138;
      v113 = v140;
      sub_1B92D6A28();
      v114 = static Searchfoundation_RichText.== infix(_:_:)(v134, v113);
      sub_1B92D6AD8();
      sub_1B8D9207C(v137, &qword_1EBACB1D0, &qword_1B96B9870);
      sub_1B92D6AD8();
      sub_1B8D9207C(v112, &qword_1EBACB1D0, &qword_1B96B9870);
      if (v114)
      {
        goto LABEL_57;
      }

LABEL_60:

      return 0;
    }

    sub_1B8D9207C(v137, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B92D6AD8();
    goto LABEL_55;
  }

  sub_1B8D9207C(v137, &qword_1EBACB1D0, &qword_1B96B9870);
  if (__swift_getEnumTagSinglePayload(v110 + v109, 1, v111) != 1)
  {
LABEL_55:
    v71 = &qword_1EBACB230;
    v72 = &unk_1B96B8870;
    v73 = v138;
    goto LABEL_28;
  }

  sub_1B8D9207C(v138, &qword_1EBACB1D0, &qword_1B96B9870);
LABEL_57:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v115 = *(v130 + 48);
  v116 = v135;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v116, 1, v133) == 1)
  {

    sub_1B8D9207C(v132, &qword_1EBAB8EA8, &unk_1B96B77D0);
    if (__swift_getEnumTagSinglePayload(v135 + v115, 1, v133) == 1)
    {
      sub_1B8D9207C(v135, &qword_1EBAB8EA8, &unk_1B96B77D0);
      return 1;
    }

    goto LABEL_65;
  }

  v118 = v135;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v118 + v115, 1, v133) == 1)
  {

    sub_1B8D9207C(v132, &qword_1EBAB8EA8, &unk_1B96B77D0);
    sub_1B92D6AD8();
LABEL_65:
    v119 = &qword_1EBAB8EB0;
    v120 = &qword_1B964D6B0;
    v121 = v135;
LABEL_66:
    sub_1B8D9207C(v121, v119, v120);
    return 0;
  }

  v122 = v129;
  sub_1B92D6A28();
  v123 = *(v133 + 20);
  if (*&v131[v123] != *&v122[v123])
  {
    v124 = *&v131[v123];

    sub_1B94C6890();
    v126 = v125;

    if ((v126 & 1) == 0)
    {

      sub_1B92D6AD8();
      sub_1B8D9207C(v132, &qword_1EBAB8EA8, &unk_1B96B77D0);
      sub_1B92D6AD8();
      v121 = v135;
      v119 = &qword_1EBAB8EA8;
      v120 = &unk_1B96B77D0;
      goto LABEL_66;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD2FD8(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v127 = sub_1B964C850();

  sub_1B92D6AD8();
  sub_1B8D9207C(v132, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B92D6AD8();
  sub_1B8D9207C(v135, &qword_1EBAB8EA8, &unk_1B96B77D0);
  return (v127 & 1) != 0;
}

uint64_t Searchfoundation_AudioPlaybackCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_AudioPlaybackCardSection(0);
  sub_1B8CD2FD8(&qword_1EBACB1D8, type metadata accessor for Searchfoundation_AudioPlaybackCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B92D68B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2FD8(&qword_1EBACB220, type metadata accessor for Searchfoundation_AudioPlaybackCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92D6938(uint64_t a1)
{
  v2 = sub_1B8CD2FD8(&qword_1EBACB210, type metadata accessor for Searchfoundation_AudioPlaybackCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92D69A8()
{
  sub_1B8CD2FD8(&qword_1EBACB210, type metadata accessor for Searchfoundation_AudioPlaybackCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B92D6A28()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B92D6A80()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B92D6AD8()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_1B92D6B30()
{
  result = qword_1EBACB1E0;
  if (!qword_1EBACB1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACB1E0);
  }

  return result;
}

unint64_t sub_1B92D6B88()
{
  result = qword_1EBACB1E8;
  if (!qword_1EBACB1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACB1E8);
  }

  return result;
}

unint64_t sub_1B92D6BE0()
{
  result = qword_1EBACB1F0;
  if (!qword_1EBACB1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACB1F0);
  }

  return result;
}

unint64_t sub_1B92D6C38()
{
  result = qword_1EBACB1F8;
  if (!qword_1EBACB1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBACB200, &qword_1B96B8580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACB1F8);
  }

  return result;
}

uint64_t sub_1B92D6DF4()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_AudioPlaybackCardSection._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B92D6E80()
{
  sub_1B92D701C(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1B92D701C(319, &qword_1ED9F2BC0, type metadata accessor for Searchfoundation_RichText);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1B92D701C(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B92D701C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B92D7070()
{
  result = qword_1EBACB228;
  if (!qword_1EBACB228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACB228);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_56()
{
  result = type metadata accessor for Searchfoundation_AudioPlaybackCardSection(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_3_56()
{
  result = type metadata accessor for Searchfoundation_AudioPlaybackCardSection(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_33()
{
  v0 = type metadata accessor for Searchfoundation_AudioPlaybackCardSection._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_10_31()
{
  v1 = *(v0 + *(type metadata accessor for Searchfoundation_AudioPlaybackCardSection(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_38_10()
{
  v1 = *(v0 + *(type metadata accessor for Searchfoundation_AudioPlaybackCardSection(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_48_13@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = a1;
  v4 = v1 + *(v2 + 28);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_53_14()
{

  return sub_1B92D6A28();
}

uint64_t OUTLINED_FUNCTION_56_9()
{

  return sub_1B92D6A28();
}

uint64_t Searchfoundation_AudioData.audioBuffer.getter()
{
  v1 = *v0;
  sub_1B8D91FCC(*v0, *(v0 + 8));
  return v1;
}

uint64_t Searchfoundation_AudioData.audioBuffer.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B8D538A0(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t Searchfoundation_AudioData.formatID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Searchfoundation_AudioData.formatID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Searchfoundation_AudioData.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_AudioData() + 56);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Searchfoundation_AudioData()
{
  result = qword_1ED9EDE10;
  if (!qword_1ED9EDE10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_AudioData.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_AudioData() + 56);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Searchfoundation_AudioData.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1B9652FE0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  v2 = type metadata accessor for Searchfoundation_AudioData();
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v3 = a1 + *(v2 + 56);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B92D7708()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACB238);
  __swift_project_value_buffer(v0, qword_1EBACB238);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1B9656CE0;
  v4 = v27 + v3;
  v5 = v27 + v3 + v1[14];
  *(v27 + v3) = 1;
  *v5 = "audioBuffer";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "formatID";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "formatFlags";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "sampleRate";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "bitsPerChannel";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "bytesPerFrame";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "channelsPerFrame";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "bytesPerPacket";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "framesPerPacket";
  *(v23 + 1) = 15;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "reserved";
  *(v25 + 1) = 8;
  v25[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_AudioData._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB7E00 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBACB238);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_AudioData.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      default:
        continue;
    }
  }
}

uint64_t Searchfoundation_AudioData.traverse<A>(visitor:)()
{
  v2 = v1;
  if (sub_1B8D99EA8(*v0, *(v0 + 8)) || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C6A0(), (v2 = v1) == 0))
  {
    v4 = *(v0 + 24);
    v5 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v5 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v5 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), (v2 = v1) == 0))
    {
      if (!*(v0 + 32) || (result = OUTLINED_FUNCTION_16_9(), (v2 = v1) == 0))
      {
        if (*(v0 + 40) == 0.0 || (v1 = v2, OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v2))
        {
          if (!*(v0 + 48) || (result = OUTLINED_FUNCTION_16_9(), !v1))
          {
            if (!*(v0 + 52) || (result = OUTLINED_FUNCTION_16_9(), !v1))
            {
              if (!*(v0 + 56) || (result = OUTLINED_FUNCTION_16_9(), !v1))
              {
                if (!*(v0 + 60) || (result = OUTLINED_FUNCTION_16_9(), !v1))
                {
                  if (!*(v0 + 64) || (result = OUTLINED_FUNCTION_16_9(), !v1))
                  {
                    if (!*(v0 + 68) || (result = OUTLINED_FUNCTION_16_9(), !v1))
                    {
                      v6 = v0 + *(type metadata accessor for Searchfoundation_AudioData() + 56);
                      OUTLINED_FUNCTION_12();
                      return sub_1B964C290();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_AudioData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x1BFADC060](*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v4 && (sub_1B964C9F0() & 1) == 0 || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48) || *(a1 + 52) != *(a2 + 52) || *(a1 + 56) != *(a2 + 56) || *(a1 + 60) != *(a2 + 60) || *(a1 + 64) != *(a2 + 64) || *(a1 + 68) != *(a2 + 68))
  {
    return 0;
  }

  v5 = *(type metadata accessor for Searchfoundation_AudioData() + 56);
  sub_1B964C2B0();
  sub_1B8CD3020(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  return sub_1B964C850() & 1;
}

uint64_t Searchfoundation_AudioData.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_AudioData();
  sub_1B8CD3020(&qword_1EBACB250, type metadata accessor for Searchfoundation_AudioData);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B92D8028(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3020(&qword_1EBACB270, type metadata accessor for Searchfoundation_AudioData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92D80A8(uint64_t a1)
{
  v2 = sub_1B8CD3020(&qword_1EBACB260, type metadata accessor for Searchfoundation_AudioData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92D8118()
{
  sub_1B8CD3020(&qword_1EBACB260, type metadata accessor for Searchfoundation_AudioData);

  return sub_1B964C5D0();
}

uint64_t sub_1B92D82E0()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Searchfoundation_ButtonCardSection.punchoutOptions.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Searchfoundation_ButtonCardSection.punchoutPickerTitle.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_ButtonCardSection.punchoutPickerTitle.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Searchfoundation_ButtonCardSection.punchoutPickerDismissText.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_ButtonCardSection.punchoutPickerDismissText.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Searchfoundation_ButtonCardSection.type.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_ButtonCardSection.type.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

void Searchfoundation_ButtonCardSection.separatorStyle.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

uint64_t Searchfoundation_ButtonCardSection.separatorStyle.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t Searchfoundation_ButtonCardSection.backgroundColor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_10_32();
  OUTLINED_FUNCTION_32_11(*(v7 + 52));
  v8 = type metadata accessor for Searchfoundation_Color(0);
  v9 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v9, v10, v8);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(v8 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45();
    }

    *(a1 + v12) = qword_1ED9CD1C8;
    v13 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, v14, v8);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_29();
    return sub_1B92DB0F8(v1, a1, v16);
  }

  return result;
}

uint64_t type metadata accessor for Searchfoundation_ButtonCardSection()
{
  result = qword_1ED9F1A58;
  if (!qword_1ED9F1A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_ButtonCardSection.backgroundColor.setter()
{
  OUTLINED_FUNCTION_313();
  v2 = *(type metadata accessor for Searchfoundation_ButtonCardSection() + 52);
  sub_1B8D9207C(v1 + v2, &qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_9_29();
  sub_1B92DB0F8(v0, v1 + v2, v3);
  type metadata accessor for Searchfoundation_Color(0);
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void (*Searchfoundation_ButtonCardSection.backgroundColor.modify())(uint64_t **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_26_1(v5);
  v7 = type metadata accessor for Searchfoundation_Color(v6);
  *(v1 + 16) = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_30_25(v10);
  OUTLINED_FUNCTION_16_4(*(v11 + 52));
  OUTLINED_FUNCTION_117(v0);
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = *(v7 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45();
    }

    OUTLINED_FUNCTION_57_2();
    if (v7 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_29();
    sub_1B92DB0F8(v0, v9, v14);
  }

  return sub_1B92D8970;
}

uint64_t Searchfoundation_ButtonCardSection.hasBackgroundColor.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_10_32();
  OUTLINED_FUNCTION_23_2(*(v5 + 52));
  v6 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_11(v6);
  return v0;
}

Swift::Void __swiftcall Searchfoundation_ButtonCardSection.clearBackgroundColor()()
{
  v1 = type metadata accessor for Searchfoundation_ButtonCardSection();
  sub_1B8D9207C(v0 + *(v1 + 52), &qword_1EBACB050, &unk_1B96B7BD0);
  type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_ButtonCardSection.title.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  v9 = type metadata accessor for Searchfoundation_ButtonCardSection();
  sub_1B8DD9078(v1 + *(v9 + 56), v8, &qword_1EBACB1D0, &qword_1B96B9870);
  v10 = type metadata accessor for Searchfoundation_RichText();
  OUTLINED_FUNCTION_178(v8, 1, v10);
  if (v11)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    v12 = MEMORY[0x1E69E7CC0];
    a1[2] = MEMORY[0x1E69E7CC0];
    a1[3] = v12;
    v13 = a1 + v10[7];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = v10[8];
    type metadata accessor for Searchfoundation_Text();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    v19 = v10[9];
    type metadata accessor for Searchfoundation_GraphicalFloat(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    result = OUTLINED_FUNCTION_178(v8, 1, v10);
    if (!v11)
    {
      return sub_1B8D9207C(v8, &qword_1EBACB1D0, &qword_1B96B9870);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_83();
    return sub_1B92DB0F8(v8, a1, v24);
  }

  return result;
}

uint64_t sub_1B92D8BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(char *))
{
  v10 = a5(0);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v17 - v14;
  sub_1B92DB154(a1, &v17 - v14, a6);
  return a7(v15);
}

uint64_t Searchfoundation_ButtonCardSection.title.setter()
{
  OUTLINED_FUNCTION_313();
  v2 = *(type metadata accessor for Searchfoundation_ButtonCardSection() + 56);
  sub_1B8D9207C(v1 + v2, &qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_0_83();
  sub_1B92DB0F8(v0, v1 + v2, v3);
  type metadata accessor for Searchfoundation_RichText();
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void (*Searchfoundation_ButtonCardSection.title.modify())(uint64_t **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_26_1(v5);
  v6 = type metadata accessor for Searchfoundation_RichText();
  *(v1 + 16) = v6;
  OUTLINED_FUNCTION_59_1(v6);
  v8 = *(v7 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_30_25(v9);
  OUTLINED_FUNCTION_16_4(*(v10 + 56));
  OUTLINED_FUNCTION_117(v0);
  if (v11)
  {
    *v8 = 0;
    v8[1] = 0xE000000000000000;
    v12 = MEMORY[0x1E69E7CC0];
    v8[2] = MEMORY[0x1E69E7CC0];
    v8[3] = v12;
    v13 = v8 + v6[7];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = v6[8];
    type metadata accessor for Searchfoundation_Text();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    v19 = v6[9];
    type metadata accessor for Searchfoundation_GraphicalFloat(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    OUTLINED_FUNCTION_117(v0);
    if (!v11)
    {
      sub_1B8D9207C(v0, &qword_1EBACB1D0, &qword_1B96B9870);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_83();
    sub_1B92DB0F8(v0, v8, v24);
  }

  return sub_1B92D8E64;
}

void sub_1B92D8E8C(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 10);
  v10 = (*a1)[3];
  v11 = (*a1)[4];
  v12 = (*a1)[1];
  v13 = (*a1)[2];
  v14 = **a1;
  if (a2)
  {
    sub_1B92DB154((*a1)[4], v10, a5);
    sub_1B8D9207C(v14 + v9, a3, a4);
    sub_1B92DB0F8(v10, v14 + v9, a5);
    OUTLINED_FUNCTION_187_1();
    sub_1B92D6AD8();
  }

  else
  {
    sub_1B8D9207C(v14 + v9, a3, a4);
    sub_1B92DB0F8(v11, v14 + v9, a5);
    OUTLINED_FUNCTION_187_1();
  }

  free(v11);
  free(v10);
  free(v12);

  free(v8);
}

uint64_t Searchfoundation_ButtonCardSection.hasTitle.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_10_32();
  OUTLINED_FUNCTION_23_2(*(v5 + 56));
  v6 = type metadata accessor for Searchfoundation_RichText();
  OUTLINED_FUNCTION_11(v6);
  return v0;
}

Swift::Void __swiftcall Searchfoundation_ButtonCardSection.clearTitle()()
{
  v1 = type metadata accessor for Searchfoundation_ButtonCardSection();
  sub_1B8D9207C(v0 + *(v1 + 56), &qword_1EBACB1D0, &qword_1B96B9870);
  type metadata accessor for Searchfoundation_RichText();
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_ButtonCardSection.thumbnail.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_10_32();
  OUTLINED_FUNCTION_32_11(*(v7 + 60));
  v8 = type metadata accessor for Searchfoundation_Image(0);
  v9 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v9, v10, v8);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(v8 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5();
    }

    *(a1 + v12) = qword_1EBAB5608;
    v13 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, v14, v8);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_36();
    return sub_1B92DB0F8(v1, a1, v16);
  }

  return result;
}

uint64_t Searchfoundation_ButtonCardSection.thumbnail.setter()
{
  OUTLINED_FUNCTION_313();
  v2 = *(type metadata accessor for Searchfoundation_ButtonCardSection() + 60);
  sub_1B8D9207C(v1 + v2, &qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_7_36();
  sub_1B92DB0F8(v0, v1 + v2, v3);
  type metadata accessor for Searchfoundation_Image(0);
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void (*Searchfoundation_ButtonCardSection.thumbnail.modify())(uint64_t **a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_86(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_26_1(v5);
  v7 = type metadata accessor for Searchfoundation_Image(v6);
  *(v1 + 16) = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_30_25(v10);
  OUTLINED_FUNCTION_16_4(*(v11 + 60));
  OUTLINED_FUNCTION_117(v0);
  if (v12)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v13 = *(v7 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5();
    }

    OUTLINED_FUNCTION_57_2();
    if (v7 != 1)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_36();
    sub_1B92DB0F8(v0, v9, v14);
  }

  return sub_1B92D9354;
}

uint64_t Searchfoundation_ButtonCardSection.hasThumbnail.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_10_32();
  OUTLINED_FUNCTION_23_2(*(v5 + 60));
  v6 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_11(v6);
  return v0;
}

Swift::Void __swiftcall Searchfoundation_ButtonCardSection.clearThumbnail()()
{
  v1 = type metadata accessor for Searchfoundation_ButtonCardSection();
  sub_1B8D9207C(v0 + *(v1 + 60), &qword_1EBAB8EA8, &unk_1B96B77D0);
  type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_ButtonCardSection.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_ButtonCardSection() + 48);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Searchfoundation_ButtonCardSection.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v2 = *(type metadata accessor for Searchfoundation_ButtonCardSection() + 48);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);

  return v5(v1 + v2, v0);
}

uint64_t (*Searchfoundation_ButtonCardSection.unknownFields.modify())()
{
  OUTLINED_FUNCTION_313();
  v0 = *(type metadata accessor for Searchfoundation_ButtonCardSection() + 48);
  return nullsub_1;
}

uint64_t Searchfoundation_ButtonCardSection.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 42) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  v2 = type metadata accessor for Searchfoundation_ButtonCardSection();
  v3 = a1 + v2[12];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = v2[13];
  type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = v2[14];
  type metadata accessor for Searchfoundation_RichText();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = v2[15];
  type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

uint64_t sub_1B92D9678()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACB278);
  __swift_project_value_buffer(v0, qword_1EBACB278);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B96511C0;
  v4 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v4 = "punchoutOptions";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v28 + v3 + v2 + v1[14];
  *(v28 + v3 + v2) = 2;
  *v8 = "punchoutPickerTitle";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v28 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "punchoutPickerDismissText";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v28 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "canBeHidden";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v28 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "hasTopPadding";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v28 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasBottomPadding";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v28 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "type";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v28 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "separatorStyle";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v28 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "backgroundColor";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 51;
  *v24 = "title";
  *(v24 + 1) = 5;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "thumbnail";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_ButtonCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB7E08 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBACB278);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_ButtonCardSection.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B92D9C34();
        break;
      case 2:
      case 3:
      case 7:
        sub_1B964C530();
        break;
      case 4:
      case 5:
      case 6:
        sub_1B964C400();
        break;
      case 8:
        OUTLINED_FUNCTION_9();
        sub_1B92C7E00();
        break;
      case 9:
        OUTLINED_FUNCTION_9();
        sub_1B92D9CD4();
        break;
      default:
        if (result == 51)
        {
          OUTLINED_FUNCTION_9();
          sub_1B92D9D88();
        }

        else if (result == 52)
        {
          OUTLINED_FUNCTION_9();
          sub_1B92D9E3C();
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B92D9C34()
{
  type metadata accessor for Searchfoundation_Punchout();
  sub_1B92DB510(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
  return sub_1B964C570();
}

uint64_t sub_1B92D9CD4()
{
  v0 = *(type metadata accessor for Searchfoundation_ButtonCardSection() + 52);
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B92DB510(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
  return sub_1B964C580();
}

uint64_t sub_1B92D9D88()
{
  v0 = *(type metadata accessor for Searchfoundation_ButtonCardSection() + 56);
  type metadata accessor for Searchfoundation_RichText();
  sub_1B92DB510(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
  return sub_1B964C580();
}

uint64_t sub_1B92D9E3C()
{
  v0 = *(type metadata accessor for Searchfoundation_ButtonCardSection() + 60);
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B92DB510(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
  return sub_1B964C580();
}

uint64_t Searchfoundation_ButtonCardSection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v58 - v10;
  v12 = type metadata accessor for Searchfoundation_Image(0);
  v13 = OUTLINED_FUNCTION_59_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_62();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  OUTLINED_FUNCTION_183(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_185();
  v62 = v23;
  OUTLINED_FUNCTION_201();
  v24 = type metadata accessor for Searchfoundation_RichText();
  v25 = OUTLINED_FUNCTION_59_1(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_62();
  v60 = v29 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_185();
  v63 = v34;
  v35 = OUTLINED_FUNCTION_201();
  v64 = type metadata accessor for Searchfoundation_Color(v35);
  v36 = OUTLINED_FUNCTION_59_1(v64);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_62();
  v61 = v40 - v39;
  if (*(*v3 + 16))
  {
    v59 = v24;
    type metadata accessor for Searchfoundation_Punchout();
    sub_1B92DB510(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
    v41 = v67;
    result = sub_1B964C730();
    if (v41)
    {
      return result;
    }

    v4 = v3;
    v24 = v59;
  }

  else
  {
    v41 = v67;
  }

  v43 = *(v4 + 8);
  v44 = *(v4 + 16);
  OUTLINED_FUNCTION_1();
  if (!v45 || (result = OUTLINED_FUNCTION_28_19(), !v41))
  {
    v46 = *(v4 + 24);
    v47 = *(v4 + 32);
    OUTLINED_FUNCTION_1();
    if (!v48 || (result = OUTLINED_FUNCTION_28_19(), !v41))
    {
      if (*(v4 + 40) != 1 || (result = OUTLINED_FUNCTION_29_25(), !v41))
      {
        if (*(v4 + 41) != 1 || (result = OUTLINED_FUNCTION_29_25(), !v41))
        {
          if (*(v4 + 42) != 1 || (result = OUTLINED_FUNCTION_29_25(), !v41))
          {
            v49 = *(v4 + 48);
            v50 = *(v4 + 56);
            OUTLINED_FUNCTION_1();
            if (!v51 || (result = OUTLINED_FUNCTION_28_19(), !v41))
            {
              v59 = v24;
              if (!*(v4 + 64) || (v52 = *(v4 + 72), v65 = *(v4 + 64), v66 = v52, sub_1B92C8A2C(), result = sub_1B964C680(), !v41))
              {
                v58[1] = a3;
                v67 = type metadata accessor for Searchfoundation_ButtonCardSection();
                v53 = v63;
                sub_1B8DD9078(v4 + v67[13], v63, &qword_1EBACB050, &unk_1B96B7BD0);
                if (__swift_getEnumTagSinglePayload(v53, 1, v64) == 1)
                {
                  v64 = v18;
                  sub_1B8D9207C(v53, &qword_1EBACB050, &unk_1B96B7BD0);
                }

                else
                {
                  OUTLINED_FUNCTION_9_29();
                  v58[0] = v54;
                  sub_1B92DB0F8(v53, v61, v55);
                  sub_1B92DB510(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
                  OUTLINED_FUNCTION_15_20();
                  sub_1B964C740();
                  result = sub_1B92D6AD8();
                  if (v41)
                  {
                    return result;
                  }

                  v64 = v18;
                }

                v56 = v62;
                sub_1B8DD9078(v4 + v67[14], v62, &qword_1EBACB1D0, &qword_1B96B9870);
                if (__swift_getEnumTagSinglePayload(v56, 1, v59) == 1)
                {
                  sub_1B8D9207C(v56, &qword_1EBACB1D0, &qword_1B96B9870);
                }

                else
                {
                  v63 = v11;
                  sub_1B92DB0F8(v56, v60, type metadata accessor for Searchfoundation_RichText);
                  sub_1B92DB510(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
                  OUTLINED_FUNCTION_15_20();
                  sub_1B964C740();
                  result = sub_1B92D6AD8();
                  if (v41)
                  {
                    return result;
                  }

                  v11 = v63;
                }

                sub_1B8DD9078(v4 + v67[15], v11, &qword_1EBAB8EA8, &unk_1B96B77D0);
                if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
                {
                  sub_1B8D9207C(v11, &qword_1EBAB8EA8, &unk_1B96B77D0);
                }

                else
                {
                  sub_1B92DB0F8(v11, v64, type metadata accessor for Searchfoundation_Image);
                  sub_1B92DB510(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
                  OUTLINED_FUNCTION_15_20();
                  sub_1B964C740();
                  result = sub_1B92D6AD8();
                  if (v41)
                  {
                    return result;
                  }
                }

                v57 = v4 + v67[12];
                return sub_1B964C290();
              }
            }
          }
        }
      }
    }
  }

  return result;
}