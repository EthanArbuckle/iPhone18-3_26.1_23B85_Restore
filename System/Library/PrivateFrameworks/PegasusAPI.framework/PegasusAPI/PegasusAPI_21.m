uint64_t static Snippetpb_MediaSnippet._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB6548 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBABD638);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B8EB7250()
{
  OUTLINED_FUNCTION_8_15();
  result = sub_1B8EB7280();
  qword_1EBABD650 = result;
  return result;
}

uint64_t sub_1B8EB7280()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0xE000000000000000;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0xE000000000000000;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0xE000000000000000;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 160) = MEMORY[0x1E69E7CC0];
  v2 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__artwork;
  v3 = type metadata accessor for Amppb_Artwork(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__offers) = v1;
  v4 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__userRating;
  v5 = type metadata accessor for Amppb_UserRating(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__eBookInfo;
  v7 = type metadata accessor for Amppb_EbookInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__children;
  type metadata accessor for Amppb_Child(0);
  *(v0 + v8) = sub_1B964C7B0();
  v9 = (v0 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__origin);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v0 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__contentRatingsBySystem;
  type metadata accessor for Amppb_ContentRating(0);
  *(v0 + v11) = sub_1B964C7B0();
  v12 = (v0 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__parentName);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = (v0 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__siribaseID);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__ampMusicResult) = 0;
  return v0;
}

uint64_t sub_1B8EB7410(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB96A8, &qword_1B964EED0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v113 = &v94 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9690, &qword_1B964EEB8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v110 = &v94 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9680, &unk_1B964EEA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v105 = &v94 - v11;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 48) = 0;
  v95 = (v1 + 48);
  *(v1 + 40) = 0;
  v94 = (v1 + 40);
  *(v1 + 32) = 0;
  *(v1 + 64) = 0;
  v96 = (v1 + 64);
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  v97 = (v1 + 80);
  *(v1 + 88) = 1;
  *(v1 + 96) = 0;
  v98 = (v1 + 96);
  *(v1 + 104) = 0xE000000000000000;
  *(v1 + 112) = 0;
  v99 = (v1 + 112);
  *(v1 + 120) = 0xE000000000000000;
  *(v1 + 128) = 0;
  v100 = (v1 + 128);
  *(v1 + 136) = 0xE000000000000000;
  *(v1 + 144) = 0;
  v101 = (v1 + 144);
  v12 = MEMORY[0x1E69E7CC0];
  *(v1 + 152) = 0xE000000000000000;
  *(v1 + 160) = v12;
  v102 = (v1 + 160);
  v13 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__artwork;
  v103 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__artwork;
  v14 = type metadata accessor for Amppb_Artwork(0);
  __swift_storeEnumTagSinglePayload(v1 + v13, 1, 1, v14);
  v104 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__offers;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__offers) = v12;
  v15 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__userRating;
  v106 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__userRating;
  v16 = type metadata accessor for Amppb_UserRating(0);
  __swift_storeEnumTagSinglePayload(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__eBookInfo;
  v107 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__eBookInfo;
  v18 = type metadata accessor for Amppb_EbookInfo(0);
  __swift_storeEnumTagSinglePayload(v1 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__children;
  v108 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__children;
  type metadata accessor for Amppb_Child(0);
  *(v1 + v19) = sub_1B964C7B0();
  v20 = (v1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__origin);
  v109 = (v1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__origin);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = (v1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed);
  v111 = (v1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v22 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__contentRatingsBySystem;
  v112 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__contentRatingsBySystem;
  type metadata accessor for Amppb_ContentRating(0);
  *(v1 + v22) = sub_1B964C7B0();
  v23 = (v1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__parentName);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v24 = (v1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__siribaseID);
  v114 = (v1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__siribaseID);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  v115 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__ampMusicResult;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__ampMusicResult) = 0;
  swift_beginAccess();
  v26 = *(a1 + 16);
  v25 = *(a1 + 24);
  swift_beginAccess();
  v27 = *(v1 + 24);
  *(v1 + 16) = v26;
  *(v1 + 24) = v25;

  swift_beginAccess();
  v28 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v28;
  swift_beginAccess();
  v29 = *(a1 + 40);
  v30 = v94;
  swift_beginAccess();
  *v30 = v29;
  swift_beginAccess();
  v32 = *(a1 + 48);
  v31 = *(a1 + 56);
  v33 = v95;
  swift_beginAccess();
  v34 = *(v1 + 56);
  *v33 = v32;
  *(v1 + 56) = v31;

  swift_beginAccess();
  v36 = *(a1 + 64);
  v35 = *(a1 + 72);
  v37 = v96;
  swift_beginAccess();
  v38 = *(v1 + 72);
  *v37 = v36;
  *(v1 + 72) = v35;

  swift_beginAccess();
  v39 = *(a1 + 80);
  LOBYTE(v38) = *(a1 + 88);
  v40 = v97;
  swift_beginAccess();
  *v40 = v39;
  *(v1 + 88) = v38;
  swift_beginAccess();
  v42 = *(a1 + 96);
  v41 = *(a1 + 104);
  v43 = v98;
  swift_beginAccess();
  v44 = *(v1 + 104);
  *v43 = v42;
  *(v1 + 104) = v41;

  swift_beginAccess();
  v46 = *(a1 + 112);
  v45 = *(a1 + 120);
  v47 = v99;
  swift_beginAccess();
  v48 = *(v1 + 120);
  *v47 = v46;
  *(v1 + 120) = v45;

  swift_beginAccess();
  v50 = *(a1 + 128);
  v49 = *(a1 + 136);
  v51 = v100;
  swift_beginAccess();
  v52 = *(v1 + 136);
  *v51 = v50;
  *(v1 + 136) = v49;

  swift_beginAccess();
  v54 = *(a1 + 144);
  v53 = *(a1 + 152);
  v55 = v101;
  swift_beginAccess();
  v56 = *(v1 + 152);
  *v55 = v54;
  *(v1 + 152) = v53;

  swift_beginAccess();
  v57 = *(a1 + 160);
  v58 = v102;
  swift_beginAccess();
  v59 = *v58;
  *v58 = v57;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v60 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__offers;
  swift_beginAccess();
  v61 = *(a1 + v60);
  v62 = v104;
  swift_beginAccess();
  v63 = *(v1 + v62);
  *(v1 + v62) = v61;

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
  v64 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__children;
  swift_beginAccess();
  v65 = *(a1 + v64);
  v66 = v108;
  swift_beginAccess();
  v67 = *(v1 + v66);
  *(v1 + v66) = v65;

  v68 = (a1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__origin);
  swift_beginAccess();
  v70 = *v68;
  v69 = v68[1];
  v71 = v109;
  swift_beginAccess();
  v72 = v71[1];
  *v71 = v70;
  v71[1] = v69;

  v73 = (a1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed);
  swift_beginAccess();
  v75 = *v73;
  v74 = v73[1];
  v76 = v111;
  swift_beginAccess();
  v77 = v76[1];
  *v76 = v75;
  v76[1] = v74;

  v78 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__contentRatingsBySystem;
  swift_beginAccess();
  v79 = *(a1 + v78);
  v80 = v112;
  swift_beginAccess();
  v81 = *(v1 + v80);
  *(v1 + v80) = v79;

  v82 = (a1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__parentName);
  swift_beginAccess();
  v84 = *v82;
  v83 = v82[1];
  swift_beginAccess();
  v85 = v23[1];
  *v23 = v84;
  v23[1] = v83;

  v86 = (a1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__siribaseID);
  swift_beginAccess();
  v88 = *v86;
  v87 = v86[1];
  v89 = v114;
  swift_beginAccess();
  v90 = v89[1];
  *v89 = v88;
  v89[1] = v87;

  v91 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__ampMusicResult;
  swift_beginAccess();
  LOBYTE(v91) = *(a1 + v91);

  v92 = v115;
  swift_beginAccess();
  *(v1 + v92) = v91;
  return v1;
}

void *sub_1B8EB7E28()
{
  v1 = v0[3];

  v2 = v0[7];

  v3 = v0[9];

  v4 = v0[13];

  v5 = v0[15];

  v6 = v0[17];

  v7 = v0[19];

  v8 = v0[20];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__artwork, &qword_1EBAB9680, &unk_1B964EEA0);
  v9 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__offers);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__userRating, &qword_1EBAB9690, &qword_1B964EEB8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__eBookInfo, &qword_1EBAB96A8, &qword_1B964EED0);
  v10 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__children);

  v11 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__origin + 8);

  v12 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed + 8);

  v13 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__contentRatingsBySystem);

  v14 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__parentName + 8);

  v15 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__siribaseID + 8);

  return v0;
}

uint64_t sub_1B8EB7F60()
{
  v0 = sub_1B8EB7E28();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Snippetpb_MediaSnippet.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Snippetpb_MediaSnippet(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Snippetpb_MediaSnippet._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8EB7410(v15);
    *(v4 + v8) = v11;
  }

  return sub_1B8EB8054(v11, a1, a2, a3);
}

uint64_t sub_1B8EB8054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B8DAA85C();
        continue;
      case 2:
        sub_1B8EB8354();
        continue;
      case 3:
        sub_1B8EB83D8();
        continue;
      case 4:
        sub_1B8DC4778();
        continue;
      case 5:
        sub_1B8E16ACC();
        continue;
      case 6:
        sub_1B8EB845C();
        continue;
      case 7:
        sub_1B8E16BD4();
        continue;
      case 8:
        sub_1B8E2F858();
        continue;
      case 9:
        sub_1B8E71858();
        continue;
      case 10:
        sub_1B8E88CF0();
        continue;
      case 11:
        sub_1B8E2FB34();
        continue;
      case 12:
        sub_1B8EB84F0();
        continue;
      case 13:
        sub_1B8EB85CC();
        continue;
      case 14:
        sub_1B8EB86A8();
        continue;
      case 15:
        sub_1B8EB8784();
        continue;
      case 16:
        sub_1B8EB8860();
        continue;
      case 17:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__origin;
        goto LABEL_26;
      case 18:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed;
        goto LABEL_26;
      case 19:
        sub_1B8EB8988();
        continue;
      case 20:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__parentName;
        goto LABEL_26;
      case 21:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__siribaseID;
LABEL_26:
        sub_1B8EB8AB0(v11, v12, v13, v14, v15);
        break;
      case 22:
        sub_1B8EB8B38();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8EB8354()
{
  swift_beginAccess();
  sub_1B964C560();
  return swift_endAccess();
}

uint64_t sub_1B8EB83D8()
{
  swift_beginAccess();
  sub_1B964C560();
  return swift_endAccess();
}

uint64_t sub_1B8EB845C()
{
  swift_beginAccess();
  sub_1B8DAF9CC();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8EB84F0()
{
  swift_beginAccess();
  type metadata accessor for Amppb_Artwork(0);
  sub_1B8CD20A8(&qword_1EBAB96E8, type metadata accessor for Amppb_Artwork);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8EB85CC()
{
  swift_beginAccess();
  type metadata accessor for Amppb_Offer(0);
  sub_1B8CD20A8(&qword_1EBAB9730, type metadata accessor for Amppb_Offer);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8EB86A8()
{
  swift_beginAccess();
  type metadata accessor for Amppb_UserRating(0);
  sub_1B8CD20A8(&qword_1EBAB9750, type metadata accessor for Amppb_UserRating);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8EB8784()
{
  swift_beginAccess();
  type metadata accessor for Amppb_EbookInfo(0);
  sub_1B8CD20A8(&qword_1EBAB97E8, type metadata accessor for Amppb_EbookInfo);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8EB8860()
{
  swift_beginAccess();
  sub_1B964C280();
  type metadata accessor for Amppb_Child(0);
  sub_1B8CD20A8(&qword_1EBAB9748, type metadata accessor for Amppb_Child);
  sub_1B8CD20A8(&qword_1EBAB9740, type metadata accessor for Amppb_Child);
  sub_1B964C3A0();
  return swift_endAccess();
}

uint64_t sub_1B8EB8988()
{
  swift_beginAccess();
  sub_1B964C280();
  type metadata accessor for Amppb_ContentRating(0);
  sub_1B8CD20A8(&qword_1EBAB97C0, type metadata accessor for Amppb_ContentRating);
  sub_1B8CD20A8(&qword_1EBAB96C0, type metadata accessor for Amppb_ContentRating);
  sub_1B964C3A0();
  return swift_endAccess();
}

uint64_t sub_1B8EB8AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8EB8B38()
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t Snippetpb_MediaSnippet.traverse<A>(visitor:)(uint64_t a1, char *a2, uint64_t a3)
{
  v8 = type metadata accessor for Snippetpb_MediaSnippet(0);
  result = sub_1B8EB8C30(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8EB8C30(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB96A8, &qword_1B964EED0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v78 = v77 - v11;
  v79 = type metadata accessor for Amppb_EbookInfo(0);
  v12 = *(*(v79 - 8) + 64);
  MEMORY[0x1EEE9AC00](v79);
  v77[1] = v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9690, &qword_1B964EEB8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v80 = v77 - v16;
  v81 = type metadata accessor for Amppb_UserRating(0);
  v17 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81);
  v77[2] = v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9680, &unk_1B964EEA0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = v77 - v21;
  v23 = type metadata accessor for Amppb_Artwork(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v84 = v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v26 = *(a1 + 24);
  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    v28 = *(a1 + 24);

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 32))
  {
    result = sub_1B964C720();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(a1 + 40))
  {
    result = sub_1B964C720();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  v30 = *(a1 + 56);
  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {
    v32 = *(a1 + 56);

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v33 = *(a1 + 72);
  v34 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
    v35 = *(a1 + 72);

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 80))
  {
    v36 = *(a1 + 88);
    v82 = *(a1 + 80);
    v83 = v36;
    sub_1B8DAF9CC();
    result = sub_1B964C680();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  v37 = *(a1 + 104);
  v38 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v38 = *(a1 + 96) & 0xFFFFFFFFFFFFLL;
  }

  if (v38)
  {
    v39 = *(a1 + 104);

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v40 = *(a1 + 120);
  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = *(a1 + 112) & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {
    v42 = *(a1 + 120);

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v43 = *(a1 + 136);
  v44 = HIBYTE(v43) & 0xF;
  if ((v43 & 0x2000000000000000) == 0)
  {
    v44 = *(a1 + 128) & 0xFFFFFFFFFFFFLL;
  }

  if (v44)
  {
    v45 = *(a1 + 136);

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v46 = *(a1 + 152);
  v47 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v47 = *(a1 + 144) & 0xFFFFFFFFFFFFLL;
  }

  if (v47)
  {
    v48 = *(a1 + 152);

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 160) + 16))
  {
    v49 = *(a1 + 160);

    sub_1B964C6E0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAB9680, &unk_1B964EEA0);
  }

  else
  {
    sub_1B8EBA878();
    sub_1B8CD20A8(&qword_1EBAB96E8, type metadata accessor for Amppb_Artwork);
    sub_1B964C740();
    if (v4)
    {
      return sub_1B8EBA928();
    }

    sub_1B8EBA928();
  }

  v50 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__offers;
  swift_beginAccess();
  v51 = v81;
  if (*(*(a1 + v50) + 16))
  {
    type metadata accessor for Amppb_Offer(0);
    sub_1B8CD20A8(&qword_1EBAB9730, type metadata accessor for Amppb_Offer);

    v52 = a4;
    sub_1B964C730();
    if (v4)
    {
    }
  }

  else
  {
    v52 = a4;
  }

  swift_beginAccess();
  v53 = v80;
  sub_1B8D92024();
  v54 = a3;
  if (__swift_getEnumTagSinglePayload(v53, 1, v51) != 1)
  {
    sub_1B8EBA878();
    sub_1B8CD20A8(&qword_1EBAB9750, type metadata accessor for Amppb_UserRating);
    sub_1B964C740();
    v55 = v79;
    if (!v4)
    {
      sub_1B8EBA928();
      goto LABEL_60;
    }

    return sub_1B8EBA928();
  }

  sub_1B8D9207C(v53, &qword_1EBAB9690, &qword_1B964EEB8);
  v55 = v79;
LABEL_60:
  swift_beginAccess();
  v56 = v78;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v56, 1, v55) == 1)
  {
    v84 = v54;
    sub_1B8D9207C(v56, &qword_1EBAB96A8, &qword_1B964EED0);
  }

  else
  {
    sub_1B8EBA878();
    sub_1B8CD20A8(&qword_1EBAB97E8, type metadata accessor for Amppb_EbookInfo);
    sub_1B964C740();
    result = sub_1B8EBA928();
    if (v4)
    {
      return result;
    }

    v84 = v54;
  }

  v57 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__children;
  swift_beginAccess();
  if (*(*(a1 + v57) + 16))
  {
    v81 = sub_1B964C280();
    type metadata accessor for Amppb_Child(0);
    sub_1B8CD20A8(&qword_1EBAB9748, type metadata accessor for Amppb_Child);
    sub_1B8CD20A8(&qword_1EBAB9740, type metadata accessor for Amppb_Child);

    v58 = v84;
    sub_1B964C5E0();

    if (v4)
    {
      return result;
    }
  }

  else
  {
    v58 = v84;
  }

  v59 = (a1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__origin);
  swift_beginAccess();
  v60 = *v59;
  v61 = v59[1];
  v62 = HIBYTE(v61) & 0xF;
  if ((v61 & 0x2000000000000000) == 0)
  {
    v62 = v60 & 0xFFFFFFFFFFFFLL;
  }

  if (!v62 || (, sub_1B964C700(), result = , !v5))
  {
    v63 = (a1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed);
    swift_beginAccess();
    v64 = *v63;
    v65 = v63[1];
    v66 = HIBYTE(v65) & 0xF;
    if ((v65 & 0x2000000000000000) == 0)
    {
      v66 = v64 & 0xFFFFFFFFFFFFLL;
    }

    if (!v66 || (, sub_1B964C700(), result = , !v5))
    {
      v84 = v58;
      v81 = v52;
      v67 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__contentRatingsBySystem;
      swift_beginAccess();
      if (!*(*(a1 + v67) + 16) || (sub_1B964C280(), type metadata accessor for Amppb_ContentRating(0), sub_1B8CD20A8(&qword_1EBAB97C0, type metadata accessor for Amppb_ContentRating), sub_1B8CD20A8(&qword_1EBAB96C0, type metadata accessor for Amppb_ContentRating), , sub_1B964C5E0(), result = , !v5))
      {
        v68 = (a1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__parentName);
        swift_beginAccess();
        v69 = *v68;
        v70 = v68[1];
        v71 = HIBYTE(v70) & 0xF;
        if ((v70 & 0x2000000000000000) == 0)
        {
          v71 = v69 & 0xFFFFFFFFFFFFLL;
        }

        if (!v71 || (, sub_1B964C700(), result = , !v5))
        {
          v72 = (a1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__siribaseID);
          swift_beginAccess();
          v73 = *v72;
          v74 = v72[1];
          v75 = HIBYTE(v74) & 0xF;
          if ((v74 & 0x2000000000000000) == 0)
          {
            v75 = v73 & 0xFFFFFFFFFFFFLL;
          }

          if (!v75 || (, sub_1B964C700(), result = , !v5))
          {
            v76 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__ampMusicResult;
            result = swift_beginAccess();
            if (*(a1 + v76) == 1)
            {
              return sub_1B964C670();
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1B8EB9A38()
{
  OUTLINED_FUNCTION_284();
  v1 = v0;
  v3 = v2;
  v152 = type metadata accessor for Amppb_EbookInfo(0);
  v4 = OUTLINED_FUNCTION_59_1(v152);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v149[0] = v8 - v7;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9AC0, &qword_1B96507E8);
  OUTLINED_FUNCTION_59_1(v151);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v153 = v149 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB96A8, &qword_1B964EED0);
  v14 = OUTLINED_FUNCTION_183(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_66();
  v149[1] = v17 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v158 = v149 - v20;
  v156 = type metadata accessor for Amppb_UserRating(0);
  v21 = OUTLINED_FUNCTION_59_1(v156);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_62();
  v150 = (v25 - v24);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9760, &qword_1B964EEF0);
  OUTLINED_FUNCTION_59_1(v155);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v28);
  v157 = v149 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9690, &qword_1B964EEB8);
  v31 = OUTLINED_FUNCTION_183(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_66();
  v154 = (v34 - v35);
  MEMORY[0x1EEE9AC00](v36);
  v159 = v149 - v37;
  v38 = type metadata accessor for Amppb_Artwork(0);
  v39 = OUTLINED_FUNCTION_59_1(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_62();
  v44 = (v43 - v42);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB96F0, &unk_1B964EEE0);
  OUTLINED_FUNCTION_59_1(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v48);
  v160 = v149 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9680, &unk_1B964EEA0);
  v51 = OUTLINED_FUNCTION_183(v50);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_66();
  v56 = (v54 - v55);
  MEMORY[0x1EEE9AC00](v57);
  v59 = v149 - v58;
  OUTLINED_FUNCTION_521();
  v61 = *(v3 + 16);
  v60 = *(v3 + 24);
  OUTLINED_FUNCTION_521();
  v62 = v61 == *(v1 + 16) && v60 == *(v1 + 24);
  if (v62 || (sub_1B964C9F0() & 1) != 0)
  {
    OUTLINED_FUNCTION_521();
    v63 = *(v3 + 32);
    OUTLINED_FUNCTION_521();
    if (v63 == *(v1 + 32))
    {
      OUTLINED_FUNCTION_521();
      v64 = *(v3 + 40);
      OUTLINED_FUNCTION_521();
      if (v64 == *(v1 + 40))
      {
        OUTLINED_FUNCTION_521();
        v65 = *(v3 + 48);
        v66 = *(v3 + 56);
        OUTLINED_FUNCTION_521();
        v67 = v65 == *(v1 + 48) && v66 == *(v1 + 56);
        if (v67 || (OUTLINED_FUNCTION_34_2() & 1) != 0)
        {
          OUTLINED_FUNCTION_521();
          v68 = *(v3 + 64);
          v69 = *(v3 + 72);
          OUTLINED_FUNCTION_521();
          v70 = v68 == *(v1 + 64) && v69 == *(v1 + 72);
          if (v70 || (OUTLINED_FUNCTION_34_2() & 1) != 0)
          {
            OUTLINED_FUNCTION_521();
            v71 = *(v3 + 80);
            v72 = *(v3 + 88);
            OUTLINED_FUNCTION_521();
            v73 = *(v1 + 88);
            if (sub_1B8D92198(v71, v72, *(v1 + 80)))
            {
              OUTLINED_FUNCTION_521();
              v74 = *(v3 + 96);
              v75 = *(v3 + 104);
              OUTLINED_FUNCTION_521();
              v76 = v74 == *(v1 + 96) && v75 == *(v1 + 104);
              if (v76 || (OUTLINED_FUNCTION_34_2() & 1) != 0)
              {
                OUTLINED_FUNCTION_521();
                v77 = *(v3 + 112);
                v78 = *(v3 + 120);
                OUTLINED_FUNCTION_521();
                v79 = v77 == *(v1 + 112) && v78 == *(v1 + 120);
                if (v79 || (OUTLINED_FUNCTION_34_2() & 1) != 0)
                {
                  OUTLINED_FUNCTION_521();
                  v80 = *(v3 + 128);
                  v81 = *(v3 + 136);
                  OUTLINED_FUNCTION_521();
                  v82 = v80 == *(v1 + 128) && v81 == *(v1 + 136);
                  if (v82 || (OUTLINED_FUNCTION_34_2() & 1) != 0)
                  {
                    OUTLINED_FUNCTION_521();
                    v83 = *(v3 + 144);
                    v84 = *(v3 + 152);
                    OUTLINED_FUNCTION_521();
                    v85 = v83 == *(v1 + 144) && v84 == *(v1 + 152);
                    if (v85 || (OUTLINED_FUNCTION_34_2() & 1) != 0)
                    {
                      OUTLINED_FUNCTION_521();
                      v86 = *(v3 + 160);
                      OUTLINED_FUNCTION_521();
                      if (sub_1B8D6123C(v86, *(v1 + 160)))
                      {
                        OUTLINED_FUNCTION_521();
                        sub_1B8D92024();
                        OUTLINED_FUNCTION_521();
                        v87 = *(v45 + 48);
                        v88 = v160;
                        sub_1B8D92024();
                        sub_1B8D92024();
                        OUTLINED_FUNCTION_37_0(v88);
                        if (v62)
                        {

                          sub_1B8D9207C(v59, &qword_1EBAB9680, &unk_1B964EEA0);
                          OUTLINED_FUNCTION_37_0(v88 + v87);
                          if (v62)
                          {
                            sub_1B8D9207C(v88, &qword_1EBAB9680, &unk_1B964EEA0);
                            goto LABEL_45;
                          }
                        }

                        else
                        {
                          sub_1B8D92024();
                          OUTLINED_FUNCTION_37_0(v88 + v87);
                          if (!v99)
                          {
                            OUTLINED_FUNCTION_1_23();
                            sub_1B8EBA878();
                            if (*v56 == *v44 && v56[1] == v44[1])
                            {
                              v103 = v56[2] == v44[2] && v56[3] == v44[3];
                              if (v103 || (sub_1B964C9F0() & 1) != 0)
                              {
                                v104 = *(v38 + 28);
                                sub_1B964C2B0();
                                OUTLINED_FUNCTION_28_7();
                                sub_1B8CD20A8(v105, v106);

                                OUTLINED_FUNCTION_91_0();
                                v107 = sub_1B964C850();
                                sub_1B8D9207C(v59, &qword_1EBAB9680, &unk_1B964EEA0);
                                OUTLINED_FUNCTION_27_5();
                                sub_1B8EBA928();
                                sub_1B8EBA928();
                                sub_1B8D9207C(v88, &qword_1EBAB9680, &unk_1B964EEA0);
                                if ((v107 & 1) == 0)
                                {
                                  goto LABEL_79;
                                }

LABEL_45:
                                v89 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__offers;
                                OUTLINED_FUNCTION_521();
                                v90 = *(v3 + v89);
                                v91 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__offers;
                                OUTLINED_FUNCTION_521();
                                v92 = *(v1 + v91);

                                OUTLINED_FUNCTION_696();
                                sub_1B8D7E5B8();
                                v94 = v93;

                                if ((v94 & 1) == 0)
                                {
LABEL_79:

                                  goto LABEL_80;
                                }

                                OUTLINED_FUNCTION_521();
                                v95 = v159;
                                OUTLINED_FUNCTION_91_0();
                                sub_1B8D92024();
                                OUTLINED_FUNCTION_521();
                                v96 = *(v155 + 48);
                                v97 = v157;
                                OUTLINED_FUNCTION_91_0();
                                sub_1B8D92024();
                                OUTLINED_FUNCTION_91_0();
                                sub_1B8D92024();
                                if (__swift_getEnumTagSinglePayload(v97, 1, v156) == 1)
                                {
                                  sub_1B8D9207C(v95, &qword_1EBAB9690, &qword_1B964EEB8);
                                  OUTLINED_FUNCTION_37_0(v97 + v96);
                                  v98 = v158;
                                  if (!v62)
                                  {
                                    goto LABEL_67;
                                  }

                                  sub_1B8D9207C(v97, &qword_1EBAB9690, &qword_1B964EEB8);
                                }

                                else
                                {
                                  v108 = v154;
                                  sub_1B8D92024();
                                  OUTLINED_FUNCTION_37_0(v97 + v96);
                                  v98 = v158;
                                  if (v62)
                                  {
                                    sub_1B8D9207C(v159, &qword_1EBAB9690, &qword_1B964EEB8);
                                    sub_1B8EBA928();
LABEL_67:
                                    v100 = &qword_1EBAB9760;
                                    v101 = &qword_1B964EEF0;
LABEL_77:
                                    v102 = v97;
                                    goto LABEL_78;
                                  }

                                  v109 = v150;
                                  sub_1B8EBA878();
                                  v110 = static Amppb_UserRating.== infix(_:_:)(v108, v109);
                                  sub_1B8EBA928();
                                  OUTLINED_FUNCTION_189(v159);
                                  sub_1B8EBA928();
                                  OUTLINED_FUNCTION_189(v97);
                                  if ((v110 & 1) == 0)
                                  {
                                    goto LABEL_79;
                                  }
                                }

                                OUTLINED_FUNCTION_521();
                                OUTLINED_FUNCTION_91_0();
                                sub_1B8D92024();
                                OUTLINED_FUNCTION_521();
                                v111 = *(v151 + 48);
                                v97 = v153;
                                OUTLINED_FUNCTION_91_0();
                                sub_1B8D92024();
                                OUTLINED_FUNCTION_91_0();
                                sub_1B8D92024();
                                if (__swift_getEnumTagSinglePayload(v97, 1, v152) == 1)
                                {
                                  sub_1B8D9207C(v98, &qword_1EBAB96A8, &qword_1B964EED0);
                                  OUTLINED_FUNCTION_37_0(v97 + v111);
                                  if (!v62)
                                  {
                                    goto LABEL_76;
                                  }

                                  sub_1B8D9207C(v97, &qword_1EBAB96A8, &qword_1B964EED0);
                                }

                                else
                                {
                                  sub_1B8D92024();
                                  OUTLINED_FUNCTION_37_0(v97 + v111);
                                  if (v62)
                                  {
                                    sub_1B8D9207C(v98, &qword_1EBAB96A8, &qword_1B964EED0);
                                    sub_1B8EBA928();
LABEL_76:
                                    v100 = &qword_1EBAB9AC0;
                                    v101 = &qword_1B96507E8;
                                    goto LABEL_77;
                                  }

                                  sub_1B8EBA878();
                                  v112 = static Amppb_EbookInfo.== infix(_:_:)();
                                  sub_1B8EBA928();
                                  OUTLINED_FUNCTION_189(v98);
                                  sub_1B8EBA928();
                                  OUTLINED_FUNCTION_189(v97);
                                  if ((v112 & 1) == 0)
                                  {
                                    goto LABEL_79;
                                  }
                                }

                                v113 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__children;
                                OUTLINED_FUNCTION_521();
                                v114 = *(v3 + v113);
                                v115 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__children;
                                OUTLINED_FUNCTION_521();
                                v116 = *(v1 + v115);

                                OUTLINED_FUNCTION_696();
                                sub_1B8DB2AD0();
                                v118 = v117;

                                if (v118)
                                {
                                  v119 = (v3 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__origin);
                                  OUTLINED_FUNCTION_521();
                                  v120 = *v119;
                                  v121 = v119[1];
                                  OUTLINED_FUNCTION_521();
                                  OUTLINED_FUNCTION_54_4();
                                  v123 = v62 && v121 == v122;
                                  if (v123 || (OUTLINED_FUNCTION_696(), (sub_1B964C9F0() & 1) != 0))
                                  {
                                    v124 = (v3 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed);
                                    OUTLINED_FUNCTION_521();
                                    v125 = *v124;
                                    v126 = v124[1];
                                    OUTLINED_FUNCTION_521();
                                    OUTLINED_FUNCTION_54_4();
                                    v128 = v62 && v126 == v127;
                                    if (v128 || (OUTLINED_FUNCTION_696(), (sub_1B964C9F0() & 1) != 0))
                                    {
                                      v129 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__contentRatingsBySystem;
                                      OUTLINED_FUNCTION_521();
                                      v130 = *(v3 + v129);
                                      v131 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__contentRatingsBySystem;
                                      OUTLINED_FUNCTION_521();
                                      v132 = *(v1 + v131);

                                      OUTLINED_FUNCTION_696();
                                      sub_1B8DB4F98();
                                      v134 = v133;

                                      if (v134)
                                      {
                                        v135 = (v3 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__parentName);
                                        OUTLINED_FUNCTION_521();
                                        v136 = *v135;
                                        v137 = v135[1];
                                        OUTLINED_FUNCTION_521();
                                        OUTLINED_FUNCTION_54_4();
                                        v139 = v62 && v137 == v138;
                                        if (v139 || (OUTLINED_FUNCTION_696(), (sub_1B964C9F0() & 1) != 0))
                                        {
                                          v140 = (v3 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__siribaseID);
                                          OUTLINED_FUNCTION_521();
                                          v141 = *v140;
                                          v142 = v140[1];
                                          OUTLINED_FUNCTION_521();
                                          OUTLINED_FUNCTION_54_4();
                                          v144 = v62 && v142 == v143;
                                          if (v144 || (OUTLINED_FUNCTION_696(), (sub_1B964C9F0() & 1) != 0))
                                          {
                                            v145 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__ampMusicResult;
                                            OUTLINED_FUNCTION_521();
                                            v146 = *(v3 + v145);

                                            v147 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__ampMusicResult;
                                            OUTLINED_FUNCTION_521();
                                            v148 = *(v1 + v147);

                                            goto LABEL_80;
                                          }
                                        }
                                      }
                                    }
                                  }
                                }

                                goto LABEL_79;
                              }
                            }

                            sub_1B8D9207C(v59, &qword_1EBAB9680, &unk_1B964EEA0);
                            OUTLINED_FUNCTION_27_5();
                            sub_1B8EBA928();
                            sub_1B8EBA928();
                            v102 = v88;
                            v100 = &qword_1EBAB9680;
                            v101 = &unk_1B964EEA0;
LABEL_78:
                            sub_1B8D9207C(v102, v100, v101);
                            goto LABEL_79;
                          }

                          sub_1B8D9207C(v59, &qword_1EBAB9680, &unk_1B964EEA0);
                          sub_1B8EBA928();
                        }

                        v100 = &qword_1EBAB96F0;
                        v101 = &unk_1B964EEE0;
                        v102 = v88;
                        goto LABEL_78;
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
  }

LABEL_80:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8EBA878()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B8EBA8D0()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B8EBA928()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t Snippetpb_MediaSnippet.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Snippetpb_MediaSnippet(0);
  sub_1B8CD20A8(&qword_1EBABD660, type metadata accessor for Snippetpb_MediaSnippet);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8EBAA60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD20A8(&qword_1EBABD678, type metadata accessor for Snippetpb_MediaSnippet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EBAAE0(uint64_t a1)
{
  v2 = sub_1B8CD20A8(&qword_1EBABAFB8, type metadata accessor for Snippetpb_MediaSnippet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EBAB50()
{
  sub_1B8CD20A8(&qword_1EBABAFB8, type metadata accessor for Snippetpb_MediaSnippet);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EBAD18()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Snippetpb_MediaSnippet._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B8EBADA4()
{
  sub_1B8EBAF5C(319, &qword_1ED9CDAC0, type metadata accessor for Amppb_Artwork);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1B8EBAF5C(319, &qword_1ED9CD8E0, type metadata accessor for Amppb_UserRating);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1B8EBAF5C(319, &qword_1ED9CD948, type metadata accessor for Amppb_EbookInfo);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B8EBAF5C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_26(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Snippetpb_MediaSnippet(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_15()
{
  result = type metadata accessor for Snippetpb_MediaSnippet(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_4_16()
{
  result = type metadata accessor for Snippetpb_MediaSnippet(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_15()
{
  v1 = *(v0 + *(type metadata accessor for Snippetpb_MediaSnippet(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_8_15()
{
  v0 = type metadata accessor for Snippetpb_MediaSnippet._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_13_8()
{
  v1 = *(v0 + *(type metadata accessor for Snippetpb_MediaSnippet(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_57_3(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for Snippetpb_MediaSnippet(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t Snippetpb_MoviesSnippet.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Snippetpb_MoviesSnippet(0) + 20);
  if (qword_1EBAB6560 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EBABD698;
}

uint64_t static Snippetpb_MoviesSnippet.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_17();
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = sub_1B8EC2CC0(v5, v6);

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_29_9();
  sub_1B8CD20F0(v9, v10);
  return sub_1B964C850() & 1;
}

uint64_t Snippetpb_MoviesSnippet.id.getter()
{
  OUTLINED_FUNCTION_4_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8EBB314(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_MoviesSnippet.id.setter();
}

void Snippetpb_MoviesSnippet.id.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_18_8();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EBF92C(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 24);
  *(v5 + 16) = v2;
  *(v5 + 24) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MoviesSnippet.id.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_24(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 24);
  *(v1 + 48) = *(v5 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBB418(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_MoviesSnippet.id.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_6_7();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8EBF92C(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 24);
    *(v9 + 16) = v4;
    *(v9 + 24) = v3;
  }

  free(v1);
}

uint64_t Snippetpb_MoviesSnippet.canonicalID.getter()
{
  OUTLINED_FUNCTION_4_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8EBB4F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_MoviesSnippet.canonicalID.setter();
}

void Snippetpb_MoviesSnippet.canonicalID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_18_8();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EBF92C(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 40);
  *(v5 + 32) = v2;
  *(v5 + 40) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MoviesSnippet.canonicalID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_24(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 40);
  *(v1 + 48) = *(v5 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBB5F4(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_MoviesSnippet.canonicalID.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_6_7();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8EBF92C(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 40);
    *(v9 + 32) = v4;
    *(v9 + 40) = v3;
  }

  free(v1);
}

uint64_t Snippetpb_MoviesSnippet.titles.getter()
{
  OUTLINED_FUNCTION_4_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 48);
}

uint64_t sub_1B8EBB6C4(uint64_t *a1)
{
  v1 = *a1;

  return Snippetpb_MoviesSnippet.titles.setter();
}

uint64_t Snippetpb_MoviesSnippet.titles.setter()
{
  v3 = OUTLINED_FUNCTION_8_16();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8EBF92C(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  OUTLINED_FUNCTION_9_3();
  v7 = *(v4 + 48);
  *(v4 + 48) = v0;
}

uint64_t Snippetpb_MoviesSnippet.titles.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_27(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 48);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBB7B0(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Snippetpb_MoviesSnippet.titles.setter();
    v6 = *(v1 + 48);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = *(v1 + 64);
      v10 = *(v1 + 56);
      OUTLINED_FUNCTION_6_7();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8EBF92C(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 48);
    *(v8 + 48) = v3;
  }

  free(v1);
}

uint64_t Snippetpb_MoviesSnippet.genres.getter()
{
  OUTLINED_FUNCTION_4_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 56);
}

uint64_t sub_1B8EBB87C(uint64_t *a1)
{
  v1 = *a1;

  return Snippetpb_MoviesSnippet.genres.setter();
}

uint64_t Snippetpb_MoviesSnippet.genres.setter()
{
  v3 = OUTLINED_FUNCTION_8_16();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8EBF92C(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  OUTLINED_FUNCTION_9_3();
  v7 = *(v4 + 56);
  *(v4 + 56) = v0;
}

uint64_t Snippetpb_MoviesSnippet.genres.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_27(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 56);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBB968(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Snippetpb_MoviesSnippet.genres.setter();
    v6 = *(v1 + 48);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = *(v1 + 64);
      v10 = *(v1 + 56);
      OUTLINED_FUNCTION_6_7();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8EBF92C(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 56);
    *(v8 + 56) = v3;
  }

  free(v1);
}

uint64_t Snippetpb_MoviesSnippet.description_p.getter()
{
  OUTLINED_FUNCTION_4_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8EBBA3C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_MoviesSnippet.description_p.setter();
}

void Snippetpb_MoviesSnippet.description_p.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_18_8();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EBF92C(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 72);
  *(v5 + 64) = v2;
  *(v5 + 72) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MoviesSnippet.description_p.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_24(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 72);
  *(v1 + 48) = *(v5 + 64);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBBB40(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_MoviesSnippet.description_p.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_6_7();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8EBF92C(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 72);
    *(v9 + 64) = v4;
    *(v9 + 72) = v3;
  }

  free(v1);
}

uint64_t Snippetpb_MoviesSnippet.actors.getter()
{
  OUTLINED_FUNCTION_4_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 80);
}

uint64_t sub_1B8EBBC10(uint64_t *a1)
{
  v1 = *a1;

  return Snippetpb_MoviesSnippet.actors.setter();
}

uint64_t Snippetpb_MoviesSnippet.actors.setter()
{
  v3 = OUTLINED_FUNCTION_8_16();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8EBF92C(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  OUTLINED_FUNCTION_9_3();
  v7 = *(v4 + 80);
  *(v4 + 80) = v0;
}

uint64_t Snippetpb_MoviesSnippet.actors.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_27(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 80);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBBCFC(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Snippetpb_MoviesSnippet.actors.setter();
    v6 = *(v1 + 48);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = *(v1 + 64);
      v10 = *(v1 + 56);
      OUTLINED_FUNCTION_6_7();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8EBF92C(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 80);
    *(v8 + 80) = v3;
  }

  free(v1);
}

uint64_t Snippetpb_MoviesSnippet.directors.getter()
{
  OUTLINED_FUNCTION_4_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 88);
}

uint64_t sub_1B8EBBDC8(uint64_t *a1)
{
  v1 = *a1;

  return Snippetpb_MoviesSnippet.directors.setter();
}

uint64_t Snippetpb_MoviesSnippet.directors.setter()
{
  v3 = OUTLINED_FUNCTION_8_16();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8EBF92C(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  OUTLINED_FUNCTION_9_3();
  v7 = *(v4 + 88);
  *(v4 + 88) = v0;
}

uint64_t Snippetpb_MoviesSnippet.directors.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_27(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 88);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBBEB4(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Snippetpb_MoviesSnippet.directors.setter();
    v6 = *(v1 + 48);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = *(v1 + 64);
      v10 = *(v1 + 56);
      OUTLINED_FUNCTION_6_7();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8EBF92C(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 88);
    *(v8 + 88) = v3;
  }

  free(v1);
}

uint64_t Snippetpb_MoviesSnippet.releaseDateSecs.getter()
{
  OUTLINED_FUNCTION_4_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 96);
}

uint64_t Snippetpb_MoviesSnippet.releaseDateSecs.setter()
{
  v3 = OUTLINED_FUNCTION_8_16();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8EBF92C(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 96) = v0;
  return result;
}

uint64_t Snippetpb_MoviesSnippet.releaseDateSecs.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[10] = v1;
  OUTLINED_FUNCTION_4_17();
  *(v3 + 22) = v4;
  v5 = *(v1 + v4);
  OUTLINED_FUNCTION_62_0();
  v3[9] = *(v5 + 96);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EBC044(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    OUTLINED_FUNCTION_6_7();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8EBF92C(v10);
    OUTLINED_FUNCTION_168(v11);
  }

  OUTLINED_FUNCTION_18();
  *(v7 + 96) = v2;

  free(v1);
}

uint64_t Snippetpb_MoviesSnippet.thumbnail.getter()
{
  OUTLINED_FUNCTION_4_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 104);
  v4 = *(v2 + 112);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8EBC128(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_MoviesSnippet.thumbnail.setter();
}

void Snippetpb_MoviesSnippet.thumbnail.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_18_8();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EBF92C(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 112);
  *(v5 + 104) = v2;
  *(v5 + 112) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MoviesSnippet.thumbnail.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_24(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 112);
  *(v1 + 48) = *(v5 + 104);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBC22C(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_MoviesSnippet.thumbnail.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_6_7();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8EBF92C(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 112);
    *(v9 + 104) = v4;
    *(v9 + 112) = v3;
  }

  free(v1);
}

uint64_t Snippetpb_MoviesSnippet.runtimeInMinutes.getter()
{
  OUTLINED_FUNCTION_4_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 120);
}

uint64_t Snippetpb_MoviesSnippet.runtimeInMinutes.setter(int a1)
{
  v4 = OUTLINED_FUNCTION_15_9();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EBF92C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 120) = a1;
  return result;
}

uint64_t Snippetpb_MoviesSnippet.runtimeInMinutes.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_16(v3);
  OUTLINED_FUNCTION_222_1(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 80) = *(v0 + 120);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EBC3B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 72);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 84);
    v9 = *(v1 + 72);
    OUTLINED_FUNCTION_6_7();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8EBF92C(v10);
    OUTLINED_FUNCTION_168(v11);
  }

  OUTLINED_FUNCTION_18();
  *(v7 + 120) = v2;

  free(v1);
}

uint64_t Snippetpb_MoviesSnippet.availabilities.getter()
{
  OUTLINED_FUNCTION_4_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 128);
}

uint64_t sub_1B8EBC490(uint64_t *a1)
{
  v1 = *a1;

  return Snippetpb_MoviesSnippet.availabilities.setter();
}

uint64_t Snippetpb_MoviesSnippet.availabilities.setter()
{
  v3 = OUTLINED_FUNCTION_8_16();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8EBF92C(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  OUTLINED_FUNCTION_9_3();
  v7 = *(v4 + 128);
  *(v4 + 128) = v0;
}

uint64_t Snippetpb_MoviesSnippet.availabilities.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_27(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 128);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBC57C(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Snippetpb_MoviesSnippet.availabilities.setter();
    v6 = *(v1 + 48);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = *(v1 + 64);
      v10 = *(v1 + 56);
      OUTLINED_FUNCTION_6_7();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8EBF92C(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 128);
    *(v8 + 128) = v3;
  }

  free(v1);
}

uint64_t Snippetpb_MoviesSnippet.isAppleOriginal.getter()
{
  OUTLINED_FUNCTION_4_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 136);
}

uint64_t Snippetpb_MoviesSnippet.isAppleOriginal.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_15_9();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EBF92C(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 136) = a1 & 1;
  return result;
}

uint64_t Snippetpb_MoviesSnippet.isAppleOriginal.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_16(v3);
  OUTLINED_FUNCTION_102_2(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v0 + 136);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EBC704(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    OUTLINED_FUNCTION_6_7();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8EBF92C(v10);
    OUTLINED_FUNCTION_168(v11);
  }

  OUTLINED_FUNCTION_18();
  *(v7 + 136) = v4;

  free(v1);
}

uint64_t Snippetpb_MoviesSnippet.studios.getter()
{
  OUTLINED_FUNCTION_4_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 144);
}

uint64_t sub_1B8EBC7DC(uint64_t *a1)
{
  v1 = *a1;

  return Snippetpb_MoviesSnippet.studios.setter();
}

uint64_t Snippetpb_MoviesSnippet.studios.setter()
{
  v3 = OUTLINED_FUNCTION_8_16();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B8EBF92C(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  OUTLINED_FUNCTION_9_3();
  v7 = *(v4 + 144);
  *(v4 + 144) = v0;
}

uint64_t Snippetpb_MoviesSnippet.studios.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_27(v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 144);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBC8C8(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_61_1();
    Snippetpb_MoviesSnippet.studios.setter();
    v6 = *(v1 + 48);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_41_2();
    v8 = *(v4 + v2);
    if ((v7 & 1) == 0)
    {
      v9 = *(v1 + 64);
      v10 = *(v1 + 56);
      OUTLINED_FUNCTION_6_7();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8EBF92C(v11);
      OUTLINED_FUNCTION_15(v12);
    }

    OUTLINED_FUNCTION_59_3();
    v13 = *(v8 + 144);
    *(v8 + 144) = v3;
  }

  free(v1);
}

uint64_t Snippetpb_MoviesSnippet.contentRating.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD6A0, &qword_1B9663800);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  OUTLINED_FUNCTION_4_17();
  v10 = *(v1 + v9);
  v11 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__contentRating;
  OUTLINED_FUNCTION_521();
  sub_1B8EC39EC(v10 + v11, v8);
  v12 = type metadata accessor for Moviespb_ContentRating(0);
  OUTLINED_FUNCTION_178(v8, 1, v12);
  if (!v13)
  {
    return sub_1B8EC3A5C(v8, a1);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v14 = a1 + *(v12 + 24);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  result = OUTLINED_FUNCTION_178(v8, 1, v12);
  if (!v13)
  {
    return sub_1B8D9207C(v8, &qword_1EBABD6A0, &qword_1B9663800);
  }

  return result;
}

uint64_t sub_1B8EBCA68(uint64_t a1)
{
  v2 = type metadata accessor for Moviespb_ContentRating(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8EC3B30(a1, v5);
  return Snippetpb_MoviesSnippet.contentRating.setter(v5);
}

uint64_t Snippetpb_MoviesSnippet.contentRating.setter(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD6A0, &qword_1B9663800);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = OUTLINED_FUNCTION_21_6();
  v11 = *(v1 + v2);
  if ((v10 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = sub_1B8EBF92C(v12);
    OUTLINED_FUNCTION_135(v13);
  }

  sub_1B8EC3A5C(a1, v9);
  v14 = type metadata accessor for Moviespb_ContentRating(0);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v14);
  v15 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__contentRating;
  swift_beginAccess();
  sub_1B8EC3AC0(v9, v11 + v15);
  return swift_endAccess();
}

uint64_t Snippetpb_MoviesSnippet.contentRating.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD6A0, &qword_1B9663800);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  v7 = type metadata accessor for Moviespb_ContentRating(0);
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[6] = v10;
  OUTLINED_FUNCTION_4_17();
  v12 = *(v1 + v11);
  v13 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__contentRating;
  OUTLINED_FUNCTION_521();
  sub_1B8EC39EC(v12 + v13, v6);
  OUTLINED_FUNCTION_178(v6, 1, v7);
  if (v14)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = 0;
    v10[3] = 0xE000000000000000;
    v15 = v10 + *(v7 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_178(v6, 1, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBABD6A0, &qword_1B9663800);
    }
  }

  else
  {
    sub_1B8EC3A5C(v6, v10);
  }

  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EBCD50(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  if (a2)
  {
    sub_1B8EC3B30(v4, v3);
    Snippetpb_MoviesSnippet.contentRating.setter(v3);
    sub_1B8EC3B94(v4);
  }

  else
  {
    Snippetpb_MoviesSnippet.contentRating.setter(v4);
  }

  free(v4);
  free(v3);
  free(v6);

  free(v2);
}

uint64_t Snippetpb_MoviesSnippet.hasContentRating.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  OUTLINED_FUNCTION_4_17();
  v10 = *(v0 + v9);
  v11 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__contentRating;
  OUTLINED_FUNCTION_521();
  sub_1B8EC39EC(v10 + v11, v8);
  v12 = type metadata accessor for Moviespb_ContentRating(0);
  OUTLINED_FUNCTION_178(v8, 1, v12);
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  sub_1B8D9207C(v8, &qword_1EBABD6A0, &qword_1B9663800);
  return v14;
}

Swift::Void __swiftcall Snippetpb_MoviesSnippet.clearContentRating()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD6A0, &qword_1B9663800);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  v8 = OUTLINED_FUNCTION_15_9();
  v9 = *(v0 + v1);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8EBF92C(v10);
    OUTLINED_FUNCTION_157_2(v11);
  }

  v12 = type metadata accessor for Moviespb_ContentRating(0);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__contentRating;
  swift_beginAccess();
  sub_1B8EC3AC0(v7, v9 + v13);
  swift_endAccess();
}

void sub_1B8EBCF98(uint64_t *a1)
{
  v1 = *a1;

  Snippetpb_MoviesSnippet.trailers.setter();
}

uint64_t Snippetpb_MoviesSnippet.trailers.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_27(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8EBD060(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_17();
  v4 = *(v1 + v3);
  v5 = *a1;
  OUTLINED_FUNCTION_10_4();
  v6 = *(v4 + v5);
}

void sub_1B8EBD0A4(uint64_t *a1)
{
  v1 = *a1;

  Snippetpb_MoviesSnippet.rottenTomatoReviews.setter();
}

void sub_1B8EBD0DC()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_21_6();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8EBF92C(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3();
  v10 = *(v7 + v3);
  *(v7 + v3) = v5;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MoviesSnippet.rottenTomatoReviews.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_27(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_MoviesSnippet.tomatoMeter.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_16(v1);
  OUTLINED_FUNCTION_222_1(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B8EBD258(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_17();
  v4 = *(v1 + v3);
  v5 = *a1;
  OUTLINED_FUNCTION_10_4();
  return *(v4 + v5);
}

void sub_1B8EBD2A4()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_21_6();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8EBF92C(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3();
  *(v7 + v3) = v5;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MoviesSnippet.freshReviewCount.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_16(v1);
  OUTLINED_FUNCTION_222_1(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EBD370(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 84);
  v7 = *(*a1 + 72);
  v8 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 84);
    v12 = *(v4 + 72);
    OUTLINED_FUNCTION_6_7();
    v13 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8EBF92C(v13);
    *(v12 + v11) = v10;
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_18();
  *(v10 + a3) = v5;

  free(v4);
}

uint64_t Snippetpb_MoviesSnippet.certifiedFresh.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_16(v1);
  OUTLINED_FUNCTION_102_2(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Snippetpb_MoviesSnippet.rottenReviewCount.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_16(v1);
  OUTLINED_FUNCTION_222_1(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EBD534(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_MoviesSnippet.rottenTomatoURL.setter();
}

uint64_t Snippetpb_MoviesSnippet.rottenTomatoURL.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_1_24(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBD614(uint64_t *a1)
{
  v1 = *a1;

  Snippetpb_MoviesSnippet.theaters.setter();
}

uint64_t Snippetpb_MoviesSnippet.theaters.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_27(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8EBD6DC(void *a1)
{
  OUTLINED_FUNCTION_4_17();
  v4 = (*(v1 + v3) + *a1);
  OUTLINED_FUNCTION_521();
  v6 = *v4;
  v5 = v4[1];

  return v6;
}

void sub_1B8EBD734(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_MoviesSnippet.fandangoID.setter();
}

void sub_1B8EBD780()
{
  OUTLINED_FUNCTION_193_0();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v8 = *(type metadata accessor for Snippetpb_MoviesSnippet(0) + 20);
  v9 = *(v0 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v0 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v12 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8EBF92C(v12);
    *(v3 + v8) = v11;
  }

  v13 = (v11 + *v2);
  OUTLINED_FUNCTION_18();
  v14 = v13[1];
  *v13 = v7;
  v13[1] = v5;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MoviesSnippet.fandangoID.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_1_24(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBD8A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_MoviesSnippet.fandangoName.setter();
}

uint64_t Snippetpb_MoviesSnippet.fandangoName.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_1_24(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_MoviesSnippet.numScreenings.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_16(v1);
  OUTLINED_FUNCTION_222_1(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_62_1();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EBDA04(uint64_t *a1)
{
  v1 = *a1;

  Snippetpb_MoviesSnippet.coverArt.setter();
}

uint64_t Snippetpb_MoviesSnippet.coverArt.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_27(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8EBDACC(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_17();
  v4 = *(v1 + v3);
  v5 = *a1;
  OUTLINED_FUNCTION_10_4();
  return *(v4 + v5);
}

void sub_1B8EBDB18()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_21_6();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_7();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8EBF92C(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3();
  *(v7 + v3) = v5 & 1;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MoviesSnippet.isShowtimes.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_16(v1);
  OUTLINED_FUNCTION_102_2(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EBDBE8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 72);
  v7 = *(*a1 + 84);
  v8 = *(v6 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 80);
    v12 = *(v4 + 72);
    OUTLINED_FUNCTION_6_7();
    v13 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8EBF92C(v13);
    *(v12 + v11) = v10;
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_18();
  *(v10 + a3) = v7;

  free(v4);
}

void sub_1B8EBDCA0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_MoviesSnippet.wikiID.setter();
}

uint64_t Snippetpb_MoviesSnippet.wikiID.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_1_24(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBDD80(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_MoviesSnippet.imdbID.setter();
}

uint64_t Snippetpb_MoviesSnippet.imdbID.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_1_24(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBDE60(uint64_t *a1)
{
  v1 = *a1;

  Snippetpb_MoviesSnippet.voiceOnlyActors.setter();
}

uint64_t Snippetpb_MoviesSnippet.voiceOnlyActors.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_27(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBDF28(uint64_t *a1)
{
  v1 = *a1;

  Snippetpb_MoviesSnippet.localizedGenres.setter();
}

uint64_t Snippetpb_MoviesSnippet.localizedGenres.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_27(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBDFF0(uint64_t *a1)
{
  v1 = *a1;

  Snippetpb_MoviesSnippet.characterNames.setter();
}

uint64_t Snippetpb_MoviesSnippet.characterNames.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_27(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBE0B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_MoviesSnippet.siribaseID.setter();
}

uint64_t Snippetpb_MoviesSnippet.siribaseID.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_1_24(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBE198(uint64_t *a1)
{
  v1 = *a1;

  Snippetpb_MoviesSnippet.writers.setter();
}

uint64_t Snippetpb_MoviesSnippet.writers.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_27(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBE260(uint64_t *a1)
{
  v1 = *a1;

  Snippetpb_MoviesSnippet.producers.setter();
}

uint64_t Snippetpb_MoviesSnippet.producers.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_27(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBE328(uint64_t *a1)
{
  v1 = *a1;

  Snippetpb_MoviesSnippet.trailersV2.setter();
}

uint64_t Snippetpb_MoviesSnippet.trailersV2.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_27(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBE3F0(uint64_t *a1)
{
  v1 = *a1;

  Snippetpb_MoviesSnippet.castAndCrew.setter();
}

uint64_t Snippetpb_MoviesSnippet.castAndCrew.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_27(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_MoviesSnippet.boost.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_16(v1);
  OUTLINED_FUNCTION_102_2(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EBE53C(uint64_t *a1)
{
  v1 = *a1;

  Snippetpb_MoviesSnippet.engTokens.setter();
}

uint64_t Snippetpb_MoviesSnippet.engTokens.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_0_27(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBE5F8(uint64_t a1)
{
  OUTLINED_FUNCTION_22_5(a1);
  if (v5)
  {
    v6 = v4;
    v7 = OUTLINED_FUNCTION_61_1();
    v6(v7);
    v8 = *(v1 + 48);
  }

  else
  {
    v9 = v3;
    v10 = *(v1 + 64);
    v11 = *(v1 + 56);
    v12 = *(v11 + v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v11 + v10);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = *(v1 + 64);
      v16 = *(v1 + 56);
      OUTLINED_FUNCTION_6_7();
      v17 = OUTLINED_FUNCTION_40_0();
      v18 = sub_1B8EBF92C(v17);
      OUTLINED_FUNCTION_168(v18);
    }

    v19 = *v9;
    OUTLINED_FUNCTION_59_3();
    v20 = *(v14 + v19);
    *(v14 + v19) = v2;
  }

  free(v1);
}

uint64_t Snippetpb_MoviesSnippet.isAnnTier.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_16(v1);
  OUTLINED_FUNCTION_102_2(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Snippetpb_MoviesSnippet.isIm.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_16(v1);
  OUTLINED_FUNCTION_102_2(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Snippetpb_MoviesSnippet.isStereo.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_16(v1);
  OUTLINED_FUNCTION_102_2(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EBE83C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_MoviesSnippet.kgInternalID.setter();
}

uint64_t Snippetpb_MoviesSnippet.kgInternalID.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_1_24(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EBE910(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    v7 = v5;
    OUTLINED_FUNCTION_191();
    v8 = OUTLINED_FUNCTION_461();
    v7(v8);
    v9 = *(v1 + 56);
  }

  else
  {
    v10 = v4;
    v11 = *(v1 + 72);
    v12 = *(v1 + 64);
    v13 = *(v12 + v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v12 + v11);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = *(v1 + 72);
      v17 = *(v1 + 64);
      OUTLINED_FUNCTION_6_7();
      v18 = OUTLINED_FUNCTION_40_0();
      v15 = sub_1B8EBF92C(v18);
      *(v17 + v16) = v15;
    }

    v19 = (v15 + *v10);
    OUTLINED_FUNCTION_18();
    v20 = v19[1];
    *v19 = v3;
    v19[1] = v2;
  }

  free(v1);
}

uint64_t Snippetpb_MoviesSnippet.unknownFields.getter()
{
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Snippetpb_MoviesSnippet.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1B964C2B0();
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t sub_1B8EBEACC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD680);
  __swift_project_value_buffer(v0, qword_1EBABD680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_1B96637F0;
  v4 = v93 + v3 + v1[14];
  *(v93 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v93 + v3 + v2 + v1[14];
  *(v93 + v3 + v2) = 2;
  *v8 = "canonical_id";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADE8];
  v7();
  v10 = (v93 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "titles";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v7();
  v12 = (v93 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "genres";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v7();
  v14 = (v93 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "description";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v7();
  v16 = (v93 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "actors";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v7();
  v18 = (v93 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "directors";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v7();
  v20 = (v93 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "release_date_secs";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v7();
  v22 = (v93 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "thumbnail";
  *(v23 + 1) = 9;
  v23[16] = 2;
  v7();
  v24 = (v93 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "runtime_in_minutes";
  *(v25 + 1) = 18;
  v25[16] = 2;
  v7();
  v26 = (v93 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "availabilities";
  *(v27 + 1) = 14;
  v27[16] = 2;
  v7();
  v28 = (v93 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "is_apple_original";
  *(v29 + 1) = 17;
  v29[16] = 2;
  v7();
  v30 = (v93 + v3 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "studios";
  *(v31 + 1) = 7;
  v31[16] = 2;
  v7();
  v32 = (v93 + v3 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "content_rating";
  *(v33 + 1) = 14;
  v33[16] = 2;
  v7();
  v34 = (v93 + v3 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "trailers";
  *(v35 + 1) = 8;
  v35[16] = 2;
  v7();
  v36 = (v93 + v3 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "rotten_tomato_reviews";
  *(v37 + 1) = 21;
  v37[16] = 2;
  v7();
  v38 = (v93 + v3 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "tomato_meter";
  *(v39 + 1) = 12;
  v39[16] = 2;
  v7();
  v40 = (v93 + v3 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "fresh_review_count";
  *(v41 + 1) = 18;
  v41[16] = 2;
  v7();
  v42 = (v93 + v3 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "certified_fresh";
  *(v43 + 1) = 15;
  v43[16] = 2;
  v7();
  v44 = (v93 + v3 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "rotten_review_count";
  *(v45 + 1) = 19;
  v45[16] = 2;
  v7();
  v46 = (v93 + v3 + 20 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "rotten_tomato_url";
  *(v47 + 1) = 17;
  v47[16] = 2;
  v7();
  v48 = (v93 + v3 + 21 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "theaters";
  *(v49 + 1) = 8;
  v49[16] = 2;
  v7();
  v50 = (v93 + v3 + 22 * v2);
  v51 = v50 + v1[14];
  *v50 = 23;
  *v51 = "fandango_id";
  *(v51 + 1) = 11;
  v51[16] = 2;
  v7();
  v52 = (v93 + v3 + 23 * v2);
  v53 = v52 + v1[14];
  *v52 = 24;
  *v53 = "fandango_name";
  *(v53 + 1) = 13;
  v53[16] = 2;
  v7();
  v54 = (v93 + v3 + 24 * v2);
  v55 = v54 + v1[14];
  *v54 = 25;
  *v55 = "num_screenings";
  *(v55 + 1) = 14;
  v55[16] = 2;
  v7();
  v56 = (v93 + v3 + 25 * v2);
  v57 = v56 + v1[14];
  *v56 = 26;
  *v57 = "cover_art";
  *(v57 + 1) = 9;
  v57[16] = 2;
  v7();
  v58 = (v93 + v3 + 26 * v2);
  v59 = v58 + v1[14];
  *v58 = 27;
  *v59 = "is_showtimes";
  *(v59 + 1) = 12;
  v59[16] = 2;
  v7();
  v60 = (v93 + v3 + 27 * v2);
  v61 = v60 + v1[14];
  *v60 = 28;
  *v61 = "wiki_id";
  *(v61 + 1) = 7;
  v61[16] = 2;
  v7();
  v62 = (v93 + v3 + 28 * v2);
  v63 = v62 + v1[14];
  *v62 = 29;
  *v63 = "imdb_id";
  *(v63 + 1) = 7;
  v63[16] = 2;
  v7();
  v64 = (v93 + v3 + 29 * v2);
  v65 = v64 + v1[14];
  *v64 = 30;
  *v65 = "voice_only_actors";
  *(v65 + 1) = 17;
  v65[16] = 2;
  v7();
  v66 = (v93 + v3 + 30 * v2);
  v67 = v66 + v1[14];
  *v66 = 31;
  *v67 = "localized_genres";
  *(v67 + 1) = 16;
  v67[16] = 2;
  v7();
  v68 = (v93 + v3 + 31 * v2);
  v69 = v68 + v1[14];
  *v68 = 32;
  *v69 = "character_names";
  *(v69 + 1) = 15;
  v69[16] = 2;
  v7();
  v70 = (v93 + v3 + 32 * v2);
  v71 = v70 + v1[14];
  *v70 = 33;
  *v71 = "siribase_id";
  *(v71 + 1) = 11;
  v71[16] = 2;
  v7();
  v72 = (v93 + v3 + 33 * v2);
  v73 = v72 + v1[14];
  *v72 = 34;
  *v73 = "writers";
  *(v73 + 1) = 7;
  v73[16] = 2;
  v7();
  v74 = (v93 + v3 + 34 * v2);
  v75 = v74 + v1[14];
  *v74 = 35;
  *v75 = "producers";
  *(v75 + 1) = 9;
  v75[16] = 2;
  v7();
  v76 = (v93 + v3 + 35 * v2);
  v77 = v76 + v1[14];
  *v76 = 36;
  *v77 = "trailers_v2";
  *(v77 + 1) = 11;
  v77[16] = 2;
  v7();
  v78 = (v93 + v3 + 36 * v2);
  v79 = v78 + v1[14];
  *v78 = 37;
  *v79 = "cast_and_crew";
  *(v79 + 1) = 13;
  v79[16] = 2;
  v7();
  v80 = (v93 + v3 + 37 * v2);
  v81 = v80 + v1[14];
  *v80 = 38;
  *v81 = "boost";
  *(v81 + 1) = 5;
  v81[16] = 2;
  v7();
  v82 = (v93 + v3 + 38 * v2);
  v83 = v82 + v1[14];
  *v82 = 39;
  *v83 = "engTokens";
  *(v83 + 1) = 9;
  v83[16] = 2;
  v7();
  v84 = (v93 + v3 + 39 * v2);
  v85 = v84 + v1[14];
  *v84 = 40;
  *v85 = "is_ann_tier";
  *(v85 + 1) = 11;
  v85[16] = 2;
  v7();
  v86 = (v93 + v3 + 40 * v2);
  v87 = v86 + v1[14];
  *v86 = 41;
  *v87 = "is_im";
  *(v87 + 1) = 5;
  v87[16] = 2;
  v7();
  v88 = (v93 + v3 + 41 * v2);
  v89 = v88 + v1[14];
  *v88 = 42;
  *v89 = "is_stereo";
  *(v89 + 1) = 9;
  v89[16] = 2;
  v7();
  v90 = (v93 + v3 + 42 * v2);
  v91 = v90 + v1[14];
  *v90 = 43;
  *v91 = "kg_internal_id";
  *(v91 + 1) = 14;
  v91[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Snippetpb_MoviesSnippet._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB6558 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBABD680);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B8EBF700()
{
  OUTLINED_FUNCTION_6_7();
  result = sub_1B8EBF730();
  qword_1EBABD698 = result;
  return result;
}

uint64_t sub_1B8EBF730()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 48) = MEMORY[0x1E69E7CC0];
  *(v0 + 56) = v1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = v1;
  *(v0 + 88) = v1;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0xE000000000000000;
  *(v0 + 120) = 0;
  *(v0 + 128) = v1;
  *(v0 + 136) = 0;
  *(v0 + 144) = v1;
  v2 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__contentRating;
  v3 = type metadata accessor for Moviespb_ContentRating(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__trailers) = v1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenTomatoReviews) = v1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__tomatoMeter) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__freshReviewCount) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__certifiedFresh) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenReviewCount) = 0;
  v4 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenTomatoURL);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__theaters) = v1;
  v5 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__fandangoID);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__fandangoName);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__numScreenings) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__coverArt) = v1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isShowtimes) = 0;
  v7 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__wikiID);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__imdbID);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__voiceOnlyActors) = v1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__localizedGenres) = v1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__characterNames) = v1;
  v9 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__siribaseID);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__writers) = v1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__producers) = v1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__trailersV2) = v1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__castAndCrew) = v1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__boost) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__engTokens) = v1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isAnnTier) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isIm) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isStereo) = 0;
  v10 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__kgInternalID);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  return v0;
}

uint64_t sub_1B8EBF92C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD6A0, &qword_1B9663800);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v166 = &v155 - v5;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  v6 = MEMORY[0x1E69E7CC0];
  *(v1 + 48) = MEMORY[0x1E69E7CC0];
  *(v1 + 56) = v6;
  *(v1 + 64) = 0;
  v156 = (v1 + 64);
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = v6;
  v157 = (v1 + 80);
  *(v1 + 88) = v6;
  v158 = (v1 + 88);
  *(v1 + 104) = 0;
  v160 = (v1 + 104);
  *(v1 + 96) = 0;
  v159 = (v1 + 96);
  *(v1 + 120) = 0;
  v161 = (v1 + 120);
  *(v1 + 128) = v6;
  v162 = (v1 + 128);
  *(v1 + 136) = 0;
  v163 = (v1 + 136);
  *(v1 + 112) = 0xE000000000000000;
  *(v1 + 144) = v6;
  v164 = (v1 + 144);
  v7 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__contentRating;
  v8 = type metadata accessor for Moviespb_ContentRating(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v165 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__trailers;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__trailers) = v6;
  v167 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenTomatoReviews;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenTomatoReviews) = v6;
  v168 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__tomatoMeter;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__tomatoMeter) = 0;
  v169 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__freshReviewCount;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__freshReviewCount) = 0;
  v170 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__certifiedFresh;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__certifiedFresh) = 0;
  v171 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenReviewCount;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenReviewCount) = 0;
  v9 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenTomatoURL);
  v172 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenTomatoURL);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v173 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__theaters;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__theaters) = v6;
  v10 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__fandangoID);
  v174 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__fandangoID);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__fandangoName);
  v175 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__fandangoName);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v176 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__numScreenings;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__numScreenings) = 0;
  v177 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__coverArt;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__coverArt) = v6;
  v178 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isShowtimes;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isShowtimes) = 0;
  v12 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__wikiID);
  v179 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__wikiID);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__imdbID);
  v180 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__imdbID);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v181 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__voiceOnlyActors;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__voiceOnlyActors) = v6;
  v182 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__localizedGenres;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__localizedGenres) = v6;
  v183 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__characterNames;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__characterNames) = v6;
  v14 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__siribaseID);
  v184 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__siribaseID);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v185 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__writers;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__writers) = v6;
  v186 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__producers;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__producers) = v6;
  v187 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__trailersV2;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__trailersV2) = v6;
  v188 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__castAndCrew;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__castAndCrew) = v6;
  v189 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__boost;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__boost) = 0;
  v190 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__engTokens;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__engTokens) = v6;
  v191 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isAnnTier;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isAnnTier) = 0;
  v192 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isIm;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isIm) = 0;
  v193 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isStereo;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isStereo) = 0;
  v15 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__kgInternalID);
  v194 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__kgInternalID);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  swift_beginAccess();
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v16;
  *(v1 + 24) = v17;
  swift_beginAccess();
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v18;
  *(v1 + 40) = v19;

  swift_beginAccess();
  v20 = *(a1 + 48);
  swift_beginAccess();
  v21 = *(v1 + 48);
  *(v1 + 48) = v20;

  swift_beginAccess();
  v22 = *(a1 + 56);
  swift_beginAccess();
  v23 = *(v1 + 56);
  *(v1 + 56) = v22;

  swift_beginAccess();
  v25 = *(a1 + 64);
  v24 = *(a1 + 72);
  v26 = v156;
  swift_beginAccess();
  v27 = *(v1 + 72);
  *v26 = v25;
  *(v1 + 72) = v24;

  swift_beginAccess();
  v28 = *(a1 + 80);
  v29 = v157;
  swift_beginAccess();
  v30 = *v29;
  *v29 = v28;

  swift_beginAccess();
  v31 = *(a1 + 88);
  v32 = v158;
  swift_beginAccess();
  v33 = *v32;
  *v32 = v31;

  swift_beginAccess();
  v34 = *(a1 + 96);
  v35 = v159;
  swift_beginAccess();
  *v35 = v34;
  swift_beginAccess();
  v37 = *(a1 + 104);
  v36 = *(a1 + 112);
  v38 = v160;
  swift_beginAccess();
  v39 = *(v1 + 112);
  *v38 = v37;
  *(v1 + 112) = v36;

  swift_beginAccess();
  LODWORD(v36) = *(a1 + 120);
  v40 = v161;
  swift_beginAccess();
  *v40 = v36;
  swift_beginAccess();
  v41 = *(a1 + 128);
  v42 = v162;
  swift_beginAccess();
  v43 = *v42;
  *v42 = v41;

  swift_beginAccess();
  LOBYTE(v41) = *(a1 + 136);
  v44 = v163;
  swift_beginAccess();
  *v44 = v41;
  swift_beginAccess();
  v45 = *(a1 + 144);
  v46 = v164;
  swift_beginAccess();
  v47 = *v46;
  *v46 = v45;

  v48 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__contentRating;
  swift_beginAccess();
  v49 = a1 + v48;
  v50 = v166;
  sub_1B8EC39EC(v49, v166);
  swift_beginAccess();
  sub_1B8EC3AC0(v50, v1 + v7);
  swift_endAccess();
  v51 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__trailers;
  swift_beginAccess();
  v52 = *(a1 + v51);
  v53 = v165;
  swift_beginAccess();
  v54 = *(v1 + v53);
  *(v1 + v53) = v52;

  v55 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenTomatoReviews;
  swift_beginAccess();
  v56 = *(a1 + v55);
  v57 = v167;
  swift_beginAccess();
  v58 = *(v1 + v57);
  *(v1 + v57) = v56;

  v59 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__tomatoMeter;
  swift_beginAccess();
  LODWORD(v59) = *(a1 + v59);
  v60 = v168;
  swift_beginAccess();
  *(v1 + v60) = v59;
  v61 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__freshReviewCount;
  swift_beginAccess();
  LODWORD(v61) = *(a1 + v61);
  v62 = v169;
  swift_beginAccess();
  *(v1 + v62) = v61;
  v63 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__certifiedFresh;
  swift_beginAccess();
  LOBYTE(v63) = *(a1 + v63);
  v64 = v170;
  swift_beginAccess();
  *(v1 + v64) = v63;
  v65 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenReviewCount;
  swift_beginAccess();
  LODWORD(v65) = *(a1 + v65);
  v66 = v171;
  swift_beginAccess();
  *(v1 + v66) = v65;
  v67 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenTomatoURL);
  swift_beginAccess();
  v69 = *v67;
  v68 = v67[1];
  v70 = v172;
  swift_beginAccess();
  v71 = v70[1];
  *v70 = v69;
  v70[1] = v68;

  v72 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__theaters;
  swift_beginAccess();
  v73 = *(a1 + v72);
  v74 = v173;
  swift_beginAccess();
  v75 = *(v1 + v74);
  *(v1 + v74) = v73;

  v76 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__fandangoID);
  swift_beginAccess();
  v78 = *v76;
  v77 = v76[1];
  v79 = v174;
  swift_beginAccess();
  v80 = v79[1];
  *v79 = v78;
  v79[1] = v77;

  v81 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__fandangoName);
  swift_beginAccess();
  v83 = *v81;
  v82 = v81[1];
  v84 = v175;
  swift_beginAccess();
  v85 = v84[1];
  *v84 = v83;
  v84[1] = v82;

  v86 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__numScreenings;
  swift_beginAccess();
  LODWORD(v86) = *(a1 + v86);
  v87 = v176;
  swift_beginAccess();
  *(v1 + v87) = v86;
  v88 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__coverArt;
  swift_beginAccess();
  v89 = *(a1 + v88);
  v90 = v177;
  swift_beginAccess();
  v91 = *(v1 + v90);
  *(v1 + v90) = v89;

  v92 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isShowtimes;
  swift_beginAccess();
  LOBYTE(v92) = *(a1 + v92);
  v93 = v178;
  swift_beginAccess();
  *(v1 + v93) = v92;
  v94 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__wikiID);
  swift_beginAccess();
  v96 = *v94;
  v95 = v94[1];
  v97 = v179;
  swift_beginAccess();
  v98 = v97[1];
  *v97 = v96;
  v97[1] = v95;

  v99 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__imdbID);
  swift_beginAccess();
  v101 = *v99;
  v100 = v99[1];
  v102 = v180;
  swift_beginAccess();
  v103 = v102[1];
  *v102 = v101;
  v102[1] = v100;

  v104 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__voiceOnlyActors;
  swift_beginAccess();
  v105 = *(a1 + v104);
  v106 = v181;
  swift_beginAccess();
  v107 = *(v1 + v106);
  *(v1 + v106) = v105;

  v108 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__localizedGenres;
  swift_beginAccess();
  v109 = *(a1 + v108);
  v110 = v182;
  swift_beginAccess();
  v111 = *(v1 + v110);
  *(v1 + v110) = v109;

  v112 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__characterNames;
  swift_beginAccess();
  v113 = *(a1 + v112);
  v114 = v183;
  swift_beginAccess();
  v115 = *(v1 + v114);
  *(v1 + v114) = v113;

  v116 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__siribaseID);
  swift_beginAccess();
  v118 = *v116;
  v117 = v116[1];
  v119 = v184;
  swift_beginAccess();
  v120 = v119[1];
  *v119 = v118;
  v119[1] = v117;

  v121 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__writers;
  swift_beginAccess();
  v122 = *(a1 + v121);
  v123 = v185;
  swift_beginAccess();
  v124 = *(v1 + v123);
  *(v1 + v123) = v122;

  v125 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__producers;
  swift_beginAccess();
  v126 = *(a1 + v125);
  v127 = v186;
  swift_beginAccess();
  v128 = *(v1 + v127);
  *(v1 + v127) = v126;

  v129 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__trailersV2;
  swift_beginAccess();
  v130 = *(a1 + v129);
  v131 = v187;
  swift_beginAccess();
  v132 = *(v1 + v131);
  *(v1 + v131) = v130;

  v133 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__castAndCrew;
  swift_beginAccess();
  v134 = *(a1 + v133);
  v135 = v188;
  swift_beginAccess();
  v136 = *(v1 + v135);
  *(v1 + v135) = v134;

  v137 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__boost;
  swift_beginAccess();
  LOBYTE(v137) = *(a1 + v137);
  v138 = v189;
  swift_beginAccess();
  *(v1 + v138) = v137;
  v139 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__engTokens;
  swift_beginAccess();
  v140 = *(a1 + v139);
  v141 = v190;
  swift_beginAccess();
  v142 = *(v1 + v141);
  *(v1 + v141) = v140;

  v143 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isAnnTier;
  swift_beginAccess();
  LOBYTE(v143) = *(a1 + v143);
  v144 = v191;
  swift_beginAccess();
  *(v1 + v144) = v143;
  v145 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isIm;
  swift_beginAccess();
  LOBYTE(v145) = *(a1 + v145);
  v146 = v192;
  swift_beginAccess();
  *(v1 + v146) = v145;
  v147 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isStereo;
  swift_beginAccess();
  LOBYTE(v147) = *(a1 + v147);
  v148 = v193;
  swift_beginAccess();
  *(v1 + v148) = v147;
  v149 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__kgInternalID);
  swift_beginAccess();
  v151 = *v149;
  v150 = v149[1];

  v152 = v194;
  swift_beginAccess();
  v153 = v152[1];
  *v152 = v151;
  v152[1] = v150;

  return v1;
}

void *sub_1B8EC0894()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[9];

  v6 = v0[10];

  v7 = v0[11];

  v8 = v0[14];

  v9 = v0[16];

  v10 = v0[18];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__contentRating, &qword_1EBABD6A0, &qword_1B9663800);
  v11 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__trailers);

  v12 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenTomatoReviews);

  v13 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenTomatoURL + 8);

  v14 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__theaters);

  v15 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__fandangoID + 8);

  v16 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__fandangoName + 8);

  v17 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__coverArt);

  v18 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__wikiID + 8);

  v19 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__imdbID + 8);

  v20 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__voiceOnlyActors);

  v21 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__localizedGenres);

  v22 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__characterNames);

  v23 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__siribaseID + 8);

  v24 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__writers);

  v25 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__producers);

  v26 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__trailersV2);

  v27 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__castAndCrew);

  v28 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__engTokens);

  v29 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__kgInternalID + 8);

  return v0;
}

uint64_t sub_1B8EC0A68()
{
  v0 = sub_1B8EC0894();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Snippetpb_MoviesSnippet.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Snippetpb_MoviesSnippet(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Snippetpb_MoviesSnippet._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8EBF92C(v15);
    *(v4 + v8) = v11;
  }

  return sub_1B8EC0B5C(v11, a1, a2, a3);
}

uint64_t sub_1B8EC0B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B8DAA85C();
        continue;
      case 2:
        sub_1B8DC46F4();
        continue;
      case 3:
        sub_1B8E4C27C();
        continue;
      case 4:
        sub_1B8E88A5C();
        continue;
      case 5:
        sub_1B8E16ACC();
        continue;
      case 6:
        sub_1B8E88AE0();
        continue;
      case 7:
        sub_1B8E88B64();
        continue;
      case 8:
        sub_1B8EC0F80();
        continue;
      case 9:
        sub_1B8EC1004();
        continue;
      case 10:
        sub_1B8EC1088();
        continue;
      case 11:
        sub_1B8EC110C();
        continue;
      case 12:
        sub_1B8EC11D8();
        continue;
      case 13:
        sub_1B8E2FA2C();
        continue;
      case 14:
        sub_1B8EC125C();
        continue;
      case 15:
        sub_1B8EC1338();
        continue;
      case 16:
        sub_1B8EC1414();
        continue;
      case 17:
        v14 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__tomatoMeter;
        goto LABEL_41;
      case 18:
        v14 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__freshReviewCount;
        goto LABEL_41;
      case 19:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__certifiedFresh;
        goto LABEL_50;
      case 20:
        v14 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenReviewCount;
        goto LABEL_41;
      case 21:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenTomatoURL;
        goto LABEL_45;
      case 22:
        sub_1B8EC14F0();
        continue;
      case 23:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__fandangoID;
        goto LABEL_45;
      case 24:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__fandangoName;
        goto LABEL_45;
      case 25:
        v14 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__numScreenings;
LABEL_41:
        sub_1B8EC15CC(a2, a1, a3, a4, v14);
        continue;
      case 26:
        sub_1B8EC1614();
        continue;
      case 27:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isShowtimes;
        goto LABEL_50;
      case 28:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__wikiID;
        goto LABEL_45;
      case 29:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__imdbID;
        goto LABEL_45;
      case 30:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__voiceOnlyActors;
        goto LABEL_48;
      case 31:
        sub_1B8EC16F0();
        continue;
      case 32:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__characterNames;
        goto LABEL_48;
      case 33:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__siribaseID;
        goto LABEL_45;
      case 34:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__writers;
        goto LABEL_48;
      case 35:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__producers;
        goto LABEL_48;
      case 36:
        sub_1B8EC17CC();
        continue;
      case 37:
        sub_1B8EC18A8();
        continue;
      case 38:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__boost;
        goto LABEL_50;
      case 39:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__engTokens;
LABEL_48:
        sub_1B8EC1984(a2, a1, a3, a4, v13);
        continue;
      case 40:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isAnnTier;
        goto LABEL_50;
      case 41:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isIm;
        goto LABEL_50;
      case 42:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isStereo;
LABEL_50:
        sub_1B8EC19CC(a2, a1, a3, a4, v11);
        break;
      case 43:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__kgInternalID;
LABEL_45:
        sub_1B8EC1A14(a2, a1, a3, a4, v12);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8EC0F80()
{
  swift_beginAccess();
  sub_1B964C4B0();
  return swift_endAccess();
}

uint64_t sub_1B8EC1004()
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8EC1088()
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B8EC110C()
{
  swift_beginAccess();
  type metadata accessor for Moviespb_Availability(0);
  sub_1B8CD20F0(&qword_1EBABD330, type metadata accessor for Moviespb_Availability);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8EC11D8()
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8EC125C()
{
  swift_beginAccess();
  type metadata accessor for Moviespb_ContentRating(0);
  sub_1B8CD20F0(&qword_1EBABD360, type metadata accessor for Moviespb_ContentRating);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8EC1338()
{
  swift_beginAccess();
  type metadata accessor for Moviespb_Trailer(0);
  sub_1B8CD20F0(&qword_1EBABD378, type metadata accessor for Moviespb_Trailer);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8EC1414()
{
  swift_beginAccess();
  type metadata accessor for Moviespb_RottenTomatoReview(0);
  sub_1B8CD20F0(&qword_1EBABD390, type metadata accessor for Moviespb_RottenTomatoReview);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8EC14F0()
{
  swift_beginAccess();
  type metadata accessor for Moviespb_MovieTheater(0);
  sub_1B8CD20F0(&qword_1EBABD3A8, type metadata accessor for Moviespb_MovieTheater);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8EC15CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_94_1(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_10();
  sub_1B964C4A0();
  return OUTLINED_FUNCTION_199_1();
}

uint64_t sub_1B8EC1614()
{
  swift_beginAccess();
  type metadata accessor for Moviespb_CoverArt(0);
  sub_1B8CD20F0(&qword_1EBABD3E8, type metadata accessor for Moviespb_CoverArt);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8EC16F0()
{
  swift_beginAccess();
  type metadata accessor for Moviespb_Genre(0);
  sub_1B8CD20F0(&qword_1EBABD400, type metadata accessor for Moviespb_Genre);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8EC17CC()
{
  swift_beginAccess();
  type metadata accessor for Tvpb_TrailerV2(0);
  sub_1B8CD20F0(&qword_1EBABD6E8, type metadata accessor for Tvpb_TrailerV2);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8EC18A8()
{
  swift_beginAccess();
  type metadata accessor for Tvpb_CastAndCrew(0);
  sub_1B8CD20F0(&qword_1EBABD6F0, type metadata accessor for Tvpb_CastAndCrew);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8EC1984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_94_1(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_10();
  sub_1B964C4D0();
  return OUTLINED_FUNCTION_199_1();
}

uint64_t sub_1B8EC19CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_94_1(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_10();
  sub_1B964C400();
  return OUTLINED_FUNCTION_199_1();
}

uint64_t sub_1B8EC1A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_94_1(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_10();
  sub_1B964C530();
  return OUTLINED_FUNCTION_199_1();
}

uint64_t Snippetpb_MoviesSnippet.traverse<A>(visitor:)()
{
  v2 = type metadata accessor for Snippetpb_MoviesSnippet(0);
  result = sub_1B8EC1AC8(*(v0 + *(v2 + 20)));
  if (!v1)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8EC1AC8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD6A0, &qword_1B9663800);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v81 - v6;
  v8 = type metadata accessor for Moviespb_ContentRating(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v83 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = *(a1 + 24);
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v13 = *(a1 + 24);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v14 = *(a1 + 40);
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v16 = *(a1 + 40);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 48) + 16))
  {
    v17 = *(a1 + 48);

    sub_1B964C6E0();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 56) + 16))
  {
    v18 = *(a1 + 56);

    sub_1B964C6E0();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v19 = *(a1 + 72);
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v21 = *(a1 + 72);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 80) + 16))
  {
    v22 = *(a1 + 80);

    sub_1B964C6E0();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 88) + 16))
  {
    v23 = *(a1 + 88);

    sub_1B964C6E0();
    if (!v1)
    {

      goto LABEL_28;
    }
  }

LABEL_28:
  swift_beginAccess();
  if (!*(a1 + 96) || (result = sub_1B964C6D0(), !v1))
  {
    swift_beginAccess();
    v25 = *(a1 + 112);
    v26 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v26 = *(a1 + 104) & 0xFFFFFFFFFFFFLL;
    }

    if (v26)
    {
      v27 = *(a1 + 112);

      sub_1B964C700();
      if (v1)
      {
      }
    }

    swift_beginAccess();
    if (!*(a1 + 120) || (result = sub_1B964C6C0(), !v1))
    {
      swift_beginAccess();
      v82 = *(a1 + 128);
      if (*(v82 + 16))
      {
        type metadata accessor for Moviespb_Availability(0);
        sub_1B8CD20F0(&qword_1EBABD330, type metadata accessor for Moviespb_Availability);

        sub_1B964C730();
        if (v1)
        {
        }
      }

      swift_beginAccess();
      if (*(a1 + 136) != 1 || (result = sub_1B964C670(), !v1))
      {
        swift_beginAccess();
        if (*(*(a1 + 144) + 16))
        {
          v28 = *(a1 + 144);

          sub_1B964C6E0();
          if (v1)
          {
          }
        }

        v29 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__contentRating;
        swift_beginAccess();
        sub_1B8EC39EC(a1 + v29, v7);
        if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
        {
          sub_1B8D9207C(v7, &qword_1EBABD6A0, &qword_1B9663800);
        }

        else
        {
          v30 = v83;
          sub_1B8EC3A5C(v7, v83);
          sub_1B8CD20F0(&qword_1EBABD360, type metadata accessor for Moviespb_ContentRating);
          sub_1B964C740();
          if (v1)
          {
            return sub_1B8EC3B94(v30);
          }

          sub_1B8EC3B94(v30);
        }

        v31 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__trailers;
        swift_beginAccess();
        if (*(*(a1 + v31) + 16))
        {
          type metadata accessor for Moviespb_Trailer(0);
          sub_1B8CD20F0(&qword_1EBABD378, type metadata accessor for Moviespb_Trailer);

          sub_1B964C730();
          if (v1)
          {
          }
        }

        v32 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenTomatoReviews;
        swift_beginAccess();
        if (*(*(a1 + v32) + 16))
        {
          type metadata accessor for Moviespb_RottenTomatoReview(0);
          sub_1B8CD20F0(&qword_1EBABD390, type metadata accessor for Moviespb_RottenTomatoReview);

          sub_1B964C730();
          if (v1)
          {
          }
        }

        v33 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__tomatoMeter;
        swift_beginAccess();
        if (!*(a1 + v33) || (result = sub_1B964C6C0(), !v1))
        {
          v34 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__freshReviewCount;
          swift_beginAccess();
          if (!*(a1 + v34) || (result = sub_1B964C6C0(), !v1))
          {
            v35 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__certifiedFresh;
            swift_beginAccess();
            if (*(a1 + v35) != 1 || (result = sub_1B964C670(), !v1))
            {
              v36 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenReviewCount;
              swift_beginAccess();
              if (!*(a1 + v36) || (result = sub_1B964C6C0(), !v1))
              {
                v37 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenTomatoURL);
                swift_beginAccess();
                v38 = *v37;
                v39 = v37[1];
                v40 = HIBYTE(v39) & 0xF;
                if ((v39 & 0x2000000000000000) == 0)
                {
                  v40 = v38 & 0xFFFFFFFFFFFFLL;
                }

                if (v40)
                {

                  sub_1B964C700();
                  if (v2)
                  {
                  }
                }

                v41 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__theaters;
                swift_beginAccess();
                if (*(*(a1 + v41) + 16))
                {
                  type metadata accessor for Moviespb_MovieTheater(0);
                  sub_1B8CD20F0(&qword_1EBABD3A8, type metadata accessor for Moviespb_MovieTheater);

                  sub_1B964C730();
                  if (v2)
                  {
                  }
                }

                v42 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__fandangoID);
                swift_beginAccess();
                v43 = *v42;
                v44 = v42[1];
                v45 = HIBYTE(v44) & 0xF;
                if ((v44 & 0x2000000000000000) == 0)
                {
                  v45 = v43 & 0xFFFFFFFFFFFFLL;
                }

                if (v45)
                {

                  sub_1B964C700();
                  if (v2)
                  {
                  }
                }

                v46 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__fandangoName);
                swift_beginAccess();
                v47 = *v46;
                v48 = v46[1];
                v49 = HIBYTE(v48) & 0xF;
                if ((v48 & 0x2000000000000000) == 0)
                {
                  v49 = v47 & 0xFFFFFFFFFFFFLL;
                }

                if (v49)
                {

                  sub_1B964C700();
                  if (v2)
                  {
                  }
                }

                v50 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__numScreenings;
                swift_beginAccess();
                if (!*(a1 + v50) || (result = sub_1B964C6C0(), !v2))
                {
                  v51 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__coverArt;
                  swift_beginAccess();
                  if (*(*(a1 + v51) + 16))
                  {
                    type metadata accessor for Moviespb_CoverArt(0);
                    sub_1B8CD20F0(&qword_1EBABD3E8, type metadata accessor for Moviespb_CoverArt);

                    sub_1B964C730();
                    if (v2)
                    {
                    }
                  }

                  v52 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isShowtimes;
                  swift_beginAccess();
                  if (*(a1 + v52) != 1 || (result = sub_1B964C670(), !v2))
                  {
                    v53 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__wikiID);
                    swift_beginAccess();
                    v54 = *v53;
                    v55 = v53[1];
                    v56 = HIBYTE(v55) & 0xF;
                    if ((v55 & 0x2000000000000000) == 0)
                    {
                      v56 = v54 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v56)
                    {

                      sub_1B964C700();
                      if (v2)
                      {
                      }
                    }

                    v57 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__imdbID);
                    swift_beginAccess();
                    v58 = *v57;
                    v59 = v57[1];
                    v60 = HIBYTE(v59) & 0xF;
                    if ((v59 & 0x2000000000000000) == 0)
                    {
                      v60 = v58 & 0xFFFFFFFFFFFFLL;
                    }

                    if (v60)
                    {

                      sub_1B964C700();
                      if (v2)
                      {
                      }
                    }

                    v61 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__voiceOnlyActors;
                    swift_beginAccess();
                    if (*(*(a1 + v61) + 16))
                    {

                      sub_1B964C6E0();
                      if (v2)
                      {
                      }
                    }

                    v62 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__localizedGenres;
                    swift_beginAccess();
                    if (*(*(a1 + v62) + 16))
                    {
                      type metadata accessor for Moviespb_Genre(0);
                      sub_1B8CD20F0(&qword_1EBABD400, type metadata accessor for Moviespb_Genre);

                      sub_1B964C730();
                      if (v2)
                      {
                      }
                    }

                    v63 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__characterNames;
                    swift_beginAccess();
                    if (*(*(a1 + v63) + 16))
                    {

                      sub_1B964C6E0();
                      if (v2)
                      {
                      }
                    }

                    v64 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__siribaseID);
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

                    v68 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__writers;
                    swift_beginAccess();
                    if (*(*(a1 + v68) + 16))
                    {

                      sub_1B964C6E0();
                      if (v2)
                      {
                      }
                    }

                    v69 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__producers;
                    swift_beginAccess();
                    if (*(*(a1 + v69) + 16))
                    {

                      sub_1B964C6E0();
                      if (v2)
                      {
                      }
                    }

                    v70 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__trailersV2;
                    swift_beginAccess();
                    if (*(*(a1 + v70) + 16))
                    {
                      type metadata accessor for Tvpb_TrailerV2(0);
                      sub_1B8CD20F0(&qword_1EBABD6E8, type metadata accessor for Tvpb_TrailerV2);

                      sub_1B964C730();
                      if (v2)
                      {
                      }
                    }

                    v71 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__castAndCrew;
                    swift_beginAccess();
                    if (*(*(a1 + v71) + 16))
                    {
                      type metadata accessor for Tvpb_CastAndCrew(0);
                      sub_1B8CD20F0(&qword_1EBABD6F0, type metadata accessor for Tvpb_CastAndCrew);

                      sub_1B964C730();
                      if (v2)
                      {
                      }
                    }

                    v72 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__boost;
                    swift_beginAccess();
                    if (*(a1 + v72) != 1 || (result = sub_1B964C670(), !v2))
                    {
                      v73 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__engTokens;
                      swift_beginAccess();
                      if (*(*(a1 + v73) + 16))
                      {

                        sub_1B964C6E0();
                        if (v2)
                        {
                        }
                      }

                      v74 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isAnnTier;
                      swift_beginAccess();
                      if (*(a1 + v74) != 1 || (result = sub_1B964C670(), !v2))
                      {
                        v75 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isIm;
                        swift_beginAccess();
                        if (*(a1 + v75) != 1 || (result = sub_1B964C670(), !v2))
                        {
                          v76 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isStereo;
                          swift_beginAccess();
                          if (*(a1 + v76) != 1 || (result = sub_1B964C670(), !v2))
                          {
                            v77 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__kgInternalID);
                            result = swift_beginAccess();
                            v78 = *v77;
                            v79 = v77[1];
                            v80 = HIBYTE(v79) & 0xF;
                            if ((v79 & 0x2000000000000000) == 0)
                            {
                              v80 = v78 & 0xFFFFFFFFFFFFLL;
                            }

                            if (v80)
                            {

                              sub_1B964C700();
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
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B8EC2CC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Moviespb_ContentRating(0);
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v146[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD6F8, &unk_1B9663A40);
  OUTLINED_FUNCTION_59_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v148 = &v146[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD6A0, &qword_1B9663800);
  v16 = OUTLINED_FUNCTION_183(v15);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v146[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v146[-v22];
  OUTLINED_FUNCTION_521();
  v25 = *(a1 + 16);
  v24 = *(a1 + 24);
  OUTLINED_FUNCTION_521();
  v26 = v25 == *(a2 + 16) && v24 == *(a2 + 24);
  if (!v26 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v27 = *(a1 + 32);
  v28 = *(a1 + 40);
  OUTLINED_FUNCTION_521();
  v29 = v27 == *(a2 + 32) && v28 == *(a2 + 40);
  if (!v29 && (OUTLINED_FUNCTION_34_2() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v30 = *(a1 + 48);
  OUTLINED_FUNCTION_521();
  if ((sub_1B8D6123C(v30, *(a2 + 48)) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v31 = *(a1 + 56);
  OUTLINED_FUNCTION_521();
  if ((sub_1B8D6123C(v31, *(a2 + 56)) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v32 = *(a1 + 64);
  v33 = *(a1 + 72);
  OUTLINED_FUNCTION_521();
  v34 = v32 == *(a2 + 64) && v33 == *(a2 + 72);
  if (!v34 && (OUTLINED_FUNCTION_34_2() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v35 = *(a1 + 80);
  OUTLINED_FUNCTION_521();
  if ((sub_1B8D6123C(v35, *(a2 + 80)) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v36 = *(a1 + 88);
  OUTLINED_FUNCTION_521();
  if ((sub_1B8D6123C(v36, *(a2 + 88)) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v37 = *(a1 + 96);
  OUTLINED_FUNCTION_521();
  if (v37 != *(a2 + 96))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v38 = *(a1 + 104);
  v39 = *(a1 + 112);
  OUTLINED_FUNCTION_521();
  v40 = v38 == *(a2 + 104) && v39 == *(a2 + 112);
  if (!v40 && (OUTLINED_FUNCTION_34_2() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v41 = *(a1 + 120);
  OUTLINED_FUNCTION_521();
  if (v41 != *(a2 + 120))
  {
    return 0;
  }

  OUTLINED_FUNCTION_521();
  v42 = *(a1 + 128);
  OUTLINED_FUNCTION_521();
  v43 = *(a2 + 128);

  sub_1B8D89F08();
  v147 = v44;

  if ((v147 & 1) == 0)
  {
    goto LABEL_110;
  }

  OUTLINED_FUNCTION_521();
  v45 = *(a1 + 136);
  OUTLINED_FUNCTION_521();
  if (v45 != *(a2 + 136))
  {
    goto LABEL_110;
  }

  OUTLINED_FUNCTION_521();
  v46 = *(a1 + 144);
  OUTLINED_FUNCTION_521();
  if ((sub_1B8D6123C(v46, *(a2 + 144)) & 1) == 0)
  {
    goto LABEL_110;
  }

  v47 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__contentRating;
  OUTLINED_FUNCTION_521();
  sub_1B8EC39EC(a1 + v47, v23);
  v48 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__contentRating;
  OUTLINED_FUNCTION_521();
  v49 = *(v10 + 48);
  v50 = v148;
  sub_1B8EC39EC(v23, v148);
  sub_1B8EC39EC(a2 + v48, &v50[v49]);
  OUTLINED_FUNCTION_178(v50, 1, v4);
  if (!v26)
  {
    sub_1B8EC39EC(v50, v21);
    OUTLINED_FUNCTION_178(&v50[v49], 1, v4);
    if (!v51)
    {
      sub_1B8EC3A5C(&v50[v49], v9);
      v55 = *v21 == *v9 && v21[1] == *(v9 + 8);
      if (v55 || (sub_1B964C9F0() & 1) != 0)
      {
        v56 = v21[2] == *(v9 + 16) && v21[3] == *(v9 + 24);
        if (v56 || (sub_1B964C9F0() & 1) != 0)
        {
          v57 = *(v4 + 24);
          sub_1B964C2B0();
          OUTLINED_FUNCTION_29_9();
          sub_1B8CD20F0(v58, v59);
          v60 = sub_1B964C850();
          sub_1B8EC3B94(v9);
          v9 = &qword_1B9663800;
          sub_1B8D9207C(v23, &qword_1EBABD6A0, &qword_1B9663800);
          sub_1B8EC3B94(v21);
          sub_1B8D9207C(v50, &qword_1EBABD6A0, &qword_1B9663800);
          if ((v60 & 1) == 0)
          {
            goto LABEL_110;
          }

          goto LABEL_51;
        }
      }

      sub_1B8EC3B94(v9);
      sub_1B8D9207C(v23, &qword_1EBABD6A0, &qword_1B9663800);
      sub_1B8EC3B94(v21);
      v54 = v50;
      v52 = &qword_1EBABD6A0;
      v53 = &qword_1B9663800;
LABEL_39:
      sub_1B8D9207C(v54, v52, v53);
      goto LABEL_110;
    }

    sub_1B8D9207C(v23, &qword_1EBABD6A0, &qword_1B9663800);
    sub_1B8EC3B94(v21);
LABEL_38:
    v52 = &qword_1EBABD6F8;
    v53 = &unk_1B9663A40;
    v54 = v50;
    goto LABEL_39;
  }

  sub_1B8D9207C(v23, &qword_1EBABD6A0, &qword_1B9663800);
  OUTLINED_FUNCTION_178(&v50[v49], 1, v4);
  if (!v26)
  {
    goto LABEL_38;
  }

  sub_1B8D9207C(v50, &qword_1EBABD6A0, &qword_1B9663800);
LABEL_51:
  v61 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__trailers;
  OUTLINED_FUNCTION_521();
  v62 = *(a1 + v61);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_56_3();

  OUTLINED_FUNCTION_696();
  sub_1B8D89F5C();
  OUTLINED_FUNCTION_54_5();

  if (v9)
  {
    v63 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenTomatoReviews;
    OUTLINED_FUNCTION_521();
    v64 = *(a1 + v63);
    OUTLINED_FUNCTION_521();
    OUTLINED_FUNCTION_56_3();

    OUTLINED_FUNCTION_696();
    sub_1B8D8A158();
    OUTLINED_FUNCTION_54_5();

    v65 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__tomatoMeter;
    OUTLINED_FUNCTION_521();
    v66 = *(a1 + v65);
    OUTLINED_FUNCTION_521();
    OUTLINED_FUNCTION_61_2();
    if (v26)
    {
      v67 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__freshReviewCount;
      OUTLINED_FUNCTION_521();
      v68 = *(a1 + v67);
      OUTLINED_FUNCTION_521();
      OUTLINED_FUNCTION_61_2();
      if (v26)
      {
        v69 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__certifiedFresh;
        OUTLINED_FUNCTION_521();
        v70 = *(a1 + v69);
        OUTLINED_FUNCTION_521();
        OUTLINED_FUNCTION_43_4();
        if (v26)
        {
          v71 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenReviewCount;
          OUTLINED_FUNCTION_521();
          v72 = *(a1 + v71);
          OUTLINED_FUNCTION_521();
          OUTLINED_FUNCTION_61_2();
          if (v26)
          {
            v73 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenTomatoURL);
            OUTLINED_FUNCTION_79_1();
            v74 = *v73;
            v75 = v73[1];
            v76 = a2 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__rottenTomatoURL;
            OUTLINED_FUNCTION_30_11();
            OUTLINED_FUNCTION_54_4();
            v78 = v26 && v75 == v77;
            if (v78 || (OUTLINED_FUNCTION_696(), (sub_1B964C9F0() & 1) != 0))
            {
              v79 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__theaters;
              OUTLINED_FUNCTION_521();
              v80 = *(a1 + v79);
              OUTLINED_FUNCTION_521();
              OUTLINED_FUNCTION_56_3();

              OUTLINED_FUNCTION_696();
              sub_1B8D8A338();
              OUTLINED_FUNCTION_54_5();

              if (v76)
              {
                v81 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__fandangoID);
                OUTLINED_FUNCTION_79_1();
                v82 = *v81;
                v83 = v81[1];
                OUTLINED_FUNCTION_30_11();
                OUTLINED_FUNCTION_54_4();
                v85 = v26 && v83 == v84;
                if (v85 || (OUTLINED_FUNCTION_696(), (sub_1B964C9F0() & 1) != 0))
                {
                  v86 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__fandangoName);
                  OUTLINED_FUNCTION_79_1();
                  v87 = *v86;
                  v88 = v86[1];
                  v89 = a2 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__fandangoName;
                  OUTLINED_FUNCTION_30_11();
                  OUTLINED_FUNCTION_54_4();
                  v91 = v26 && v88 == v90;
                  if (v91 || (OUTLINED_FUNCTION_696(), (sub_1B964C9F0() & 1) != 0))
                  {
                    v92 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__numScreenings;
                    OUTLINED_FUNCTION_521();
                    v93 = *(a1 + v92);
                    OUTLINED_FUNCTION_521();
                    OUTLINED_FUNCTION_61_2();
                    if (v26)
                    {
                      v94 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__coverArt;
                      OUTLINED_FUNCTION_521();
                      v95 = *(a1 + v94);
                      OUTLINED_FUNCTION_521();
                      OUTLINED_FUNCTION_56_3();

                      OUTLINED_FUNCTION_696();
                      sub_1B8D748B8();
                      OUTLINED_FUNCTION_54_5();

                      if (v89)
                      {
                        v96 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isShowtimes;
                        OUTLINED_FUNCTION_521();
                        v97 = *(a1 + v96);
                        OUTLINED_FUNCTION_521();
                        OUTLINED_FUNCTION_43_4();
                        if (v26)
                        {
                          v98 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__wikiID);
                          OUTLINED_FUNCTION_79_1();
                          v99 = *v98;
                          v100 = v98[1];
                          OUTLINED_FUNCTION_30_11();
                          OUTLINED_FUNCTION_54_4();
                          v102 = v26 && v100 == v101;
                          if (v102 || (OUTLINED_FUNCTION_696(), (sub_1B964C9F0() & 1) != 0))
                          {
                            v103 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__imdbID);
                            OUTLINED_FUNCTION_79_1();
                            v104 = *v103;
                            v105 = v103[1];
                            v106 = a2 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__imdbID;
                            OUTLINED_FUNCTION_30_11();
                            OUTLINED_FUNCTION_54_4();
                            v108 = v26 && v105 == v107;
                            if (v108 || (OUTLINED_FUNCTION_696(), (sub_1B964C9F0() & 1) != 0))
                            {
                              v109 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__voiceOnlyActors;
                              OUTLINED_FUNCTION_521();
                              v110 = *(a1 + v109);
                              OUTLINED_FUNCTION_521();
                              if (OUTLINED_FUNCTION_58_2())
                              {
                                v111 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__localizedGenres;
                                OUTLINED_FUNCTION_521();
                                v112 = *(a1 + v111);
                                OUTLINED_FUNCTION_521();
                                OUTLINED_FUNCTION_56_3();

                                OUTLINED_FUNCTION_696();
                                sub_1B8D8A38C();
                                OUTLINED_FUNCTION_54_5();

                                if (v106)
                                {
                                  v113 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__characterNames;
                                  OUTLINED_FUNCTION_521();
                                  v114 = *(a1 + v113);
                                  OUTLINED_FUNCTION_521();
                                  if (OUTLINED_FUNCTION_58_2())
                                  {
                                    v115 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__siribaseID);
                                    OUTLINED_FUNCTION_79_1();
                                    v116 = *v115;
                                    v117 = v115[1];
                                    v118 = a2 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__siribaseID;
                                    OUTLINED_FUNCTION_30_11();
                                    OUTLINED_FUNCTION_54_4();
                                    v120 = v26 && v117 == v119;
                                    if (v120 || (OUTLINED_FUNCTION_696(), (sub_1B964C9F0() & 1) != 0))
                                    {
                                      v121 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__writers;
                                      OUTLINED_FUNCTION_521();
                                      v122 = *(a1 + v121);
                                      OUTLINED_FUNCTION_521();
                                      if (OUTLINED_FUNCTION_58_2())
                                      {
                                        v123 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__producers;
                                        OUTLINED_FUNCTION_521();
                                        v124 = *(a1 + v123);
                                        OUTLINED_FUNCTION_521();
                                        if (OUTLINED_FUNCTION_58_2())
                                        {
                                          v125 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__trailersV2;
                                          OUTLINED_FUNCTION_521();
                                          v126 = *(a1 + v125);
                                          OUTLINED_FUNCTION_521();
                                          OUTLINED_FUNCTION_56_3();

                                          OUTLINED_FUNCTION_696();
                                          sub_1B8D8A3CC();
                                          OUTLINED_FUNCTION_54_5();

                                          if (v118)
                                          {
                                            v127 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__castAndCrew;
                                            OUTLINED_FUNCTION_521();
                                            v128 = *(a1 + v127);
                                            OUTLINED_FUNCTION_521();
                                            OUTLINED_FUNCTION_56_3();

                                            OUTLINED_FUNCTION_696();
                                            sub_1B8D8A5D4();
                                            OUTLINED_FUNCTION_54_5();

                                            v129 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__boost;
                                            OUTLINED_FUNCTION_521();
                                            v130 = *(a1 + v129);
                                            OUTLINED_FUNCTION_521();
                                            OUTLINED_FUNCTION_43_4();
                                            if (v26)
                                            {
                                              v131 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__engTokens;
                                              OUTLINED_FUNCTION_521();
                                              v132 = *(a1 + v131);
                                              OUTLINED_FUNCTION_521();
                                              if (OUTLINED_FUNCTION_58_2())
                                              {
                                                v133 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isAnnTier;
                                                OUTLINED_FUNCTION_521();
                                                v134 = *(a1 + v133);
                                                OUTLINED_FUNCTION_521();
                                                OUTLINED_FUNCTION_43_4();
                                                if (v26)
                                                {
                                                  v135 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isIm;
                                                  OUTLINED_FUNCTION_521();
                                                  v136 = *(a1 + v135);
                                                  OUTLINED_FUNCTION_521();
                                                  OUTLINED_FUNCTION_43_4();
                                                  if (v26)
                                                  {
                                                    v137 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__isStereo;
                                                    OUTLINED_FUNCTION_521();
                                                    v138 = *(a1 + v137);
                                                    OUTLINED_FUNCTION_521();
                                                    OUTLINED_FUNCTION_43_4();
                                                    if (v26)
                                                    {
                                                      v140 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_MoviesSnippetP33_F199C19048C5BF86F0818B89959AB78D13_StorageClass__kgInternalID);
                                                      OUTLINED_FUNCTION_79_1();
                                                      v141 = *v140;
                                                      v142 = v140[1];
                                                      OUTLINED_FUNCTION_30_11();
                                                      OUTLINED_FUNCTION_54_4();
                                                      if (v26 && v142 == v143)
                                                      {
                                                      }

                                                      else
                                                      {
                                                        OUTLINED_FUNCTION_696();
                                                        v145 = sub_1B964C9F0();

                                                        if ((v145 & 1) == 0)
                                                        {
                                                          return 0;
                                                        }
                                                      }

                                                      return 1;
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
            }
          }
        }
      }
    }
  }

LABEL_110:

  return 0;
}

uint64_t sub_1B8EC39EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD6A0, &qword_1B9663800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8EC3A5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Moviespb_ContentRating(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8EC3AC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD6A0, &qword_1B9663800);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8EC3B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Moviespb_ContentRating(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8EC3B94(uint64_t a1)
{
  v2 = type metadata accessor for Moviespb_ContentRating(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Snippetpb_MoviesSnippet.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Snippetpb_MoviesSnippet(0);
  sub_1B8CD20F0(&qword_1EBABD6C8, type metadata accessor for Snippetpb_MoviesSnippet);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8EC3CD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD20F0(&qword_1EBABD6E0, type metadata accessor for Snippetpb_MoviesSnippet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EC3D54(uint64_t a1)
{
  v2 = sub_1B8CD20F0(&qword_1EBABAFD8, type metadata accessor for Snippetpb_MoviesSnippet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EC3DC4()
{
  sub_1B8CD20F0(&qword_1EBABAFD8, type metadata accessor for Snippetpb_MoviesSnippet);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EC3F8C()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Snippetpb_MoviesSnippet._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B8EC4018()
{
  sub_1B8EC413C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1B8EC413C()
{
  if (!qword_1ED9CD200)
  {
    type metadata accessor for Moviespb_ContentRating(255);
    v0 = sub_1B964C930();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9CD200);
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_27(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 56) = v2;
  result = type metadata accessor for Snippetpb_MoviesSnippet(0);
  v5 = *(result + 20);
  *(a1 + 64) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_24(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Snippetpb_MoviesSnippet(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_16(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  result = type metadata accessor for Snippetpb_MoviesSnippet(0);
  v4 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_17()
{
  result = type metadata accessor for Snippetpb_MoviesSnippet(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_7()
{
  v0 = type metadata accessor for Snippetpb_MoviesSnippet._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_8_16()
{
  v1 = *(v0 + *(type metadata accessor for Snippetpb_MoviesSnippet(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_15_9()
{
  v1 = *(v0 + *(type metadata accessor for Snippetpb_MoviesSnippet(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_18_8()
{
  v1 = *(v0 + *(type metadata accessor for Snippetpb_MoviesSnippet(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_21_6()
{
  v1 = *(v0 + *(type metadata accessor for Snippetpb_MoviesSnippet(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_30_11()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_54_5()
{
}

uint64_t OUTLINED_FUNCTION_56_3()
{
  v3 = *(v0 + v1);
}

uint64_t OUTLINED_FUNCTION_58_2()
{
  v4 = *(v1 + v2);

  return sub_1B8D6123C(v0, v4);
}

uint64_t Snippetpb_ShoppingSnippet.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 56) = MEMORY[0x1E69E7CC0];
  *(a1 + 64) = v2;
  *(a1 + 72) = v2;
  *(a1 + 80) = v2;
  v3 = type metadata accessor for Snippetpb_ShoppingSnippet();
  v4 = a1 + *(v3 + 52);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v5 = *(v3 + 56);
  type metadata accessor for Argos_Protos_Productdatapb_Product(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t type metadata accessor for Snippetpb_ShoppingSnippet()
{
  result = qword_1ED9CCC08;
  if (!qword_1ED9CCC08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static Snippetpb_ShoppingSnippet.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Productdatapb_Product(0);
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD738, &qword_1B9663A50);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD740, &qword_1B9663A58);
  OUTLINED_FUNCTION_59_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v46 - v20;
  v22 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v22 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_29;
  }

  v23 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v23 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_29;
  }

  v24 = type metadata accessor for Snippetpb_ShoppingSnippet();
  v25 = *(v24 + 56);
  v26 = *(v16 + 48);
  sub_1B8EC47E4(a1 + v25, v21);
  sub_1B8EC47E4(a2 + v25, &v21[v26]);
  OUTLINED_FUNCTION_178(v21, 1, v4);
  if (v22)
  {
    OUTLINED_FUNCTION_178(&v21[v26], 1, v4);
    if (v22)
    {
      sub_1B8D9207C(v21, &qword_1EBABD738, &qword_1B9663A50);
      goto LABEL_21;
    }

LABEL_19:
    sub_1B8D9207C(v21, &qword_1EBABD740, &qword_1B9663A58);
LABEL_29:
    v44 = 0;
    return v44 & 1;
  }

  sub_1B8EC47E4(v21, v15);
  OUTLINED_FUNCTION_178(&v21[v26], 1, v4);
  if (v27)
  {
    sub_1B8EC6578(v15);
    goto LABEL_19;
  }

  sub_1B8EC65D4(&v21[v26], v9);
  static Argos_Protos_Productdatapb_Product.== infix(_:_:)();
  v29 = v28;
  sub_1B8EC6578(v9);
  sub_1B8EC6578(v15);
  sub_1B8D9207C(v21, &qword_1EBABD738, &qword_1B9663A50);
  if ((v29 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_21:
  if (*(a1 + 32) != *(a2 + 32))
  {
    goto LABEL_29;
  }

  if (*(a1 + 33) != *(a2 + 33))
  {
    goto LABEL_29;
  }

  v30 = *(a2 + 48);
  if (!sub_1B8D92198(*(a1 + 40), *(a1 + 48), *(a2 + 40)))
  {
    goto LABEL_29;
  }

  v31 = *(a1 + 56);
  v32 = *(a2 + 56);
  sub_1B8D719A4();
  if ((v33 & 1) == 0)
  {
    goto LABEL_29;
  }

  v34 = *(a1 + 64);
  v35 = *(a2 + 64);
  sub_1B8D719A4();
  if ((v36 & 1) == 0)
  {
    goto LABEL_29;
  }

  v37 = *(a1 + 72);
  v38 = *(a2 + 72);
  sub_1B8D719A4();
  if ((v39 & 1) == 0)
  {
    goto LABEL_29;
  }

  v40 = *(a1 + 80);
  v41 = *(a2 + 80);
  sub_1B8D719A4();
  if ((v42 & 1) == 0)
  {
    goto LABEL_29;
  }

  v43 = *(v24 + 52);
  sub_1B964C2B0();
  sub_1B8CD2138(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v44 = sub_1B964C850();
  return v44 & 1;
}

uint64_t sub_1B8EC47E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD738, &qword_1B9663A50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Snippetpb_ShoppingSnippet.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Snippetpb_ShoppingSnippet.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Snippetpb_ShoppingSnippet.webURL.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Snippetpb_ShoppingSnippet.webURL.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Snippetpb_ShoppingSnippet.product.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD738, &qword_1B9663A50);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for Snippetpb_ShoppingSnippet();
  sub_1B8EC47E4(v1 + *(v9 + 56), v8);
  v10 = type metadata accessor for Argos_Protos_Productdatapb_Product(0);
  OUTLINED_FUNCTION_178(v8, 1, v10);
  if (!v11)
  {
    return sub_1B8EC65D4(v8, a1);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  v12 = a1 + *(v10 + 24);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v13 = *(v10 + 28);
  type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  result = OUTLINED_FUNCTION_178(v8, 1, v10);
  if (!v11)
  {
    return sub_1B8D9207C(v8, &qword_1EBABD738, &qword_1B9663A50);
  }

  return result;
}

uint64_t sub_1B8EC4A84(uint64_t a1)
{
  v2 = type metadata accessor for Argos_Protos_Productdatapb_Product(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8EC6638(a1, v5);
  return Snippetpb_ShoppingSnippet.product.setter(v5);
}

uint64_t Snippetpb_ShoppingSnippet.product.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Snippetpb_ShoppingSnippet() + 56);
  sub_1B8D9207C(v1 + v3, &qword_1EBABD738, &qword_1B9663A50);
  sub_1B8EC65D4(a1, v1 + v3);
  v4 = type metadata accessor for Argos_Protos_Productdatapb_Product(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Snippetpb_ShoppingSnippet.product.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD738, &qword_1B9663A50);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Argos_Protos_Productdatapb_Product(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Snippetpb_ShoppingSnippet() + 56);
  *(v3 + 10) = v11;
  sub_1B8EC47E4(v1 + v11, v6);
  OUTLINED_FUNCTION_178(v6, 1, v7);
  if (v12)
  {
    *v10 = MEMORY[0x1E69E7CC0];
    v10[1] = 0;
    v10[2] = 0xE000000000000000;
    v13 = v10 + *(v7 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = *(v7 + 28);
    type metadata accessor for Argos_Protos_Productdatapb_ProductMetadata(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    OUTLINED_FUNCTION_178(v6, 1, v7);
    if (!v12)
    {
      sub_1B8D9207C(v6, &qword_1EBABD738, &qword_1B9663A50);
    }
  }

  else
  {
    sub_1B8EC65D4(v6, v10);
  }

  return sub_1B8EC4D10;
}

void sub_1B8EC4D10(uint64_t **a1, char a2)
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
    sub_1B8EC6638((*a1)[4], v4);
    sub_1B8D9207C(v8 + v3, &qword_1EBABD738, &qword_1B9663A50);
    sub_1B8EC65D4(v4, v8 + v3);
    OUTLINED_FUNCTION_30_2();
    sub_1B8EC6578(v5);
  }

  else
  {
    sub_1B8D9207C(v8 + v3, &qword_1EBABD738, &qword_1B9663A50);
    sub_1B8EC65D4(v5, v8 + v3);
    OUTLINED_FUNCTION_30_2();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t Snippetpb_ShoppingSnippet.hasProduct.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD738, &qword_1B9663A50);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Snippetpb_ShoppingSnippet();
  sub_1B8EC47E4(v0 + *(v7 + 56), v6);
  v8 = type metadata accessor for Argos_Protos_Productdatapb_Product(0);
  OUTLINED_FUNCTION_178(v6, 1, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  sub_1B8D9207C(v6, &qword_1EBABD738, &qword_1B9663A50);
  return v10;
}

Swift::Void __swiftcall Snippetpb_ShoppingSnippet.clearProduct()()
{
  v1 = type metadata accessor for Snippetpb_ShoppingSnippet();
  sub_1B8D9207C(v0 + *(v1 + 56), &qword_1EBABD738, &qword_1B9663A50);
  type metadata accessor for Argos_Protos_Productdatapb_Product(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void Snippetpb_ShoppingSnippet.renderType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t Snippetpb_ShoppingSnippet.renderType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t Snippetpb_ShoppingSnippet.productReviews.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t Snippetpb_ShoppingSnippet.availableAt.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t Snippetpb_ShoppingSnippet.relatedProducts.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t Snippetpb_ShoppingSnippet.productRatings.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t Snippetpb_ShoppingSnippet.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Snippetpb_ShoppingSnippet() + 52);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Snippetpb_ShoppingSnippet.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Snippetpb_ShoppingSnippet() + 52);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

unint64_t Snippetpb_ShoppingSnippet.RENDER_TYPE.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 5;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B8EC527C@<X0>(uint64_t *a1@<X8>)
{
  result = Snippetpb_ShoppingSnippet.RENDER_TYPE.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8EC52B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EC669C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Snippetpb_ShoppingSnippet.RENDER_TYPE.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBABD700 = a1;
}

uint64_t sub_1B8EC53F8@<X0>(uint64_t *a1@<X8>)
{
  result = static Snippetpb_ShoppingSnippet.RENDER_TYPE.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8EC543C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD708);
  __swift_project_value_buffer(v0, qword_1EBABD708);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1B9656CE0;
  v4 = v27 + v3 + v1[14];
  *(v27 + v3) = 3;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v27 + v3 + v2 + v1[14];
  *(v27 + v3 + v2) = 1;
  *v8 = "web_url";
  *(v8 + 8) = 7;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADE8];
  v7();
  v10 = (v27 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "product";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v7();
  v12 = (v27 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "is_detail";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v7();
  v14 = (v27 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 9;
  *v15 = "is_hero";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v7();
  v16 = (v27 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 10;
  *v17 = "render_type";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v7();
  v18 = (v27 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 5;
  *v19 = "product_reviews";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v7();
  v20 = (v27 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 6;
  *v21 = "available_at";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v7();
  v22 = (v27 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 7;
  *v23 = "related_products";
  *(v23 + 1) = 16;
  v23[16] = 2;
  v7();
  v24 = (v27 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 8;
  *v25 = "product_ratings";
  *(v25 + 1) = 15;
  v25[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Snippetpb_ShoppingSnippet.decodeMessage<A>(decoder:)()
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
      case 3:
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B8EC592C();
        break;
      case 4:
      case 9:
        sub_1B964C400();
        break;
      case 5:
        OUTLINED_FUNCTION_9();
        sub_1B8EC59E0();
        break;
      case 6:
        OUTLINED_FUNCTION_9();
        sub_1B8EC5A80();
        break;
      case 7:
        OUTLINED_FUNCTION_9();
        sub_1B8EC5B20();
        break;
      case 8:
        OUTLINED_FUNCTION_9();
        sub_1B8EC5BC0();
        break;
      case 10:
        OUTLINED_FUNCTION_9();
        sub_1B8EC5C60();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8EC592C()
{
  v0 = *(type metadata accessor for Snippetpb_ShoppingSnippet() + 56);
  type metadata accessor for Argos_Protos_Productdatapb_Product(0);
  sub_1B8CD2138(&qword_1EBAB9FA8, type metadata accessor for Argos_Protos_Productdatapb_Product);
  return sub_1B964C580();
}

uint64_t sub_1B8EC59E0()
{
  type metadata accessor for Argos_Protos_Productdatapb_Product(0);
  sub_1B8CD2138(&qword_1EBAB9FA8, type metadata accessor for Argos_Protos_Productdatapb_Product);
  return sub_1B964C570();
}

uint64_t sub_1B8EC5A80()
{
  type metadata accessor for Argos_Protos_Productdatapb_Product(0);
  sub_1B8CD2138(&qword_1EBAB9FA8, type metadata accessor for Argos_Protos_Productdatapb_Product);
  return sub_1B964C570();
}

uint64_t sub_1B8EC5B20()
{
  type metadata accessor for Argos_Protos_Productdatapb_Product(0);
  sub_1B8CD2138(&qword_1EBAB9FA8, type metadata accessor for Argos_Protos_Productdatapb_Product);
  return sub_1B964C570();
}

uint64_t sub_1B8EC5BC0()
{
  type metadata accessor for Argos_Protos_Productdatapb_Product(0);
  sub_1B8CD2138(&qword_1EBAB9FA8, type metadata accessor for Argos_Protos_Productdatapb_Product);
  return sub_1B964C570();
}

uint64_t Snippetpb_ShoppingSnippet.traverse<A>(visitor:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD738, &qword_1B9663A50);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - v6;
  v8 = type metadata accessor for Argos_Protos_Productdatapb_Product(0);
  v9 = OUTLINED_FUNCTION_59_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v0[2];
  v15 = v0[3];
  OUTLINED_FUNCTION_1();
  if (!v16 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v1))
  {
    v35 = type metadata accessor for Snippetpb_ShoppingSnippet();
    sub_1B8EC47E4(v0 + *(v35 + 56), v7);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
    {
      sub_1B8D9207C(v7, &qword_1EBABD738, &qword_1B9663A50);
    }

    else
    {
      sub_1B8EC65D4(v7, v13);
      OUTLINED_FUNCTION_0_28();
      sub_1B8CD2138(v18, v19);
      OUTLINED_FUNCTION_1_25();
      sub_1B964C740();
      result = sub_1B8EC6578(v13);
      if (v1)
      {
        return result;
      }
    }

    v20 = *v0;
    v21 = v0[1];
    OUTLINED_FUNCTION_1();
    if (!v22 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v1))
    {
      if (*(v0 + 32) != 1 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C670(), !v1))
      {
        if (!*(v0[7] + 16) || (OUTLINED_FUNCTION_0_28(), sub_1B8CD2138(v23, v24), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_1_25(), result = sub_1B964C730(), !v1))
        {
          if (!*(v0[8] + 16) || (OUTLINED_FUNCTION_0_28(), sub_1B8CD2138(v25, v26), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_1_25(), result = sub_1B964C730(), !v1))
          {
            if (!*(v0[9] + 16) || (OUTLINED_FUNCTION_0_28(), sub_1B8CD2138(v27, v28), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_1_25(), result = sub_1B964C730(), !v1))
            {
              if (!*(v0[10] + 16) || (OUTLINED_FUNCTION_0_28(), sub_1B8CD2138(v29, v30), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_1_25(), result = sub_1B964C730(), !v1))
              {
                if (*(v0 + 33) != 1 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C670(), !v1))
                {
                  if (!v0[5] || (v31 = *(v0 + 48), v33 = v0[5], v34 = v31, sub_1B8EC669C(), OUTLINED_FUNCTION_79_0(), result = sub_1B964C680(), !v1))
                  {
                    v32 = v0 + *(v35 + 52);
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

uint64_t Snippetpb_ShoppingSnippet.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Snippetpb_ShoppingSnippet();
  sub_1B8CD2138(&qword_1EBABD750, type metadata accessor for Snippetpb_ShoppingSnippet);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8EC6164(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2138(&qword_1EBABD790, type metadata accessor for Snippetpb_ShoppingSnippet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EC61E4(uint64_t a1)
{
  v2 = sub_1B8CD2138(&qword_1EBABAFB0, type metadata accessor for Snippetpb_ShoppingSnippet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EC6254()
{
  sub_1B8CD2138(&qword_1EBABAFB0, type metadata accessor for Snippetpb_ShoppingSnippet);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EC62D4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD720);
  __swift_project_value_buffer(v0, qword_1EBABD720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "DEFAULT";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DETAIL";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "HERO";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SIMILAR_IMAGES";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "SIMILAR_PRODUCTS";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EC6578(uint64_t a1)
{
  v2 = type metadata accessor for Argos_Protos_Productdatapb_Product(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8EC65D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Productdatapb_Product(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8EC6638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Productdatapb_Product(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B8EC669C()
{
  result = qword_1EBABD748;
  if (!qword_1EBABD748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD748);
  }

  return result;
}

unint64_t sub_1B8EC66F4()
{
  result = qword_1EBABD758;
  if (!qword_1EBABD758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD758);
  }

  return result;
}

unint64_t sub_1B8EC674C()
{
  result = qword_1EBABD760;
  if (!qword_1EBABD760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD760);
  }

  return result;
}

unint64_t sub_1B8EC67A4()
{
  result = qword_1EBABD768;
  if (!qword_1EBABD768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD768);
  }

  return result;
}

unint64_t sub_1B8EC67FC()
{
  result = qword_1EBABD770;
  if (!qword_1EBABD770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBABD778, &qword_1B9663B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD770);
  }

  return result;
}

void sub_1B8EC69A8()
{
  sub_1B8EC6AAC(319, &qword_1EBABA208, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      sub_1B8EC6AAC(319, &qword_1ED9CA900, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8EC6AAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Argos_Protos_Productdatapb_Product(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t Snippetpb_TvShowSnippet.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Snippetpb_TvShowSnippet(0) + 20);
  if (qword_1EBAB6580 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EBABD7B0;
}

uint64_t static Snippetpb_TvShowSnippet.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_4_18();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {
    v5 = *(v1 + v2);

    v6 = sub_1B8ECE508(v3, v4);

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_10_11();
  sub_1B8CD2180(v7, v8);
  return sub_1B964C850() & 1;
}

uint64_t Snippetpb_TvShowSnippet.id.getter()
{
  OUTLINED_FUNCTION_4_18();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8EC6CF8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_TvShowSnippet.id.setter();
}

void Snippetpb_TvShowSnippet.id.setter()
{
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_17_9();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_11();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8ECB0BC(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 24);
  *(v5 + 16) = v2;
  *(v5 + 24) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_TvShowSnippet.id.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_29(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 24);
  *(v1 + 48) = *(v5 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EC6E04(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_TvShowSnippet.id.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_12_11();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8ECB0BC(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 24);
    *(v9 + 16) = v4;
    *(v9 + 24) = v3;
  }

  free(v1);
}

uint64_t Snippetpb_TvShowSnippet.canonicalID.getter()
{
  OUTLINED_FUNCTION_4_18();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8EC6EDC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_TvShowSnippet.canonicalID.setter();
}

void Snippetpb_TvShowSnippet.canonicalID.setter()
{
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_17_9();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_11();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8ECB0BC(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 40);
  *(v5 + 32) = v2;
  *(v5 + 40) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_TvShowSnippet.canonicalID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_29(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 40);
  *(v1 + 48) = *(v5 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EC6FE8(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_TvShowSnippet.canonicalID.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_12_11();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8ECB0BC(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 40);
    *(v9 + 32) = v4;
    *(v9 + 40) = v3;
  }

  free(v1);
}

uint64_t Snippetpb_TvShowSnippet.title.getter()
{
  OUTLINED_FUNCTION_4_18();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8EC70C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_TvShowSnippet.title.setter();
}

void Snippetpb_TvShowSnippet.title.setter()
{
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_17_9();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_11();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8ECB0BC(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 56);
  *(v5 + 48) = v2;
  *(v5 + 56) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_TvShowSnippet.title.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_29(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 56);
  *(v1 + 48) = *(v5 + 48);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EC71CC(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_TvShowSnippet.title.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_12_11();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8ECB0BC(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 56);
    *(v9 + 48) = v4;
    *(v9 + 56) = v3;
  }

  free(v1);
}

uint64_t Snippetpb_TvShowSnippet.description_p.getter()
{
  OUTLINED_FUNCTION_4_18();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8EC72A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_TvShowSnippet.description_p.setter();
}

void Snippetpb_TvShowSnippet.description_p.setter()
{
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_17_9();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_11();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8ECB0BC(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 72);
  *(v5 + 64) = v2;
  *(v5 + 72) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_TvShowSnippet.description_p.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_29(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 72);
  *(v1 + 48) = *(v5 + 64);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EC73B0(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_TvShowSnippet.description_p.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_12_11();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8ECB0BC(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 72);
    *(v9 + 64) = v4;
    *(v9 + 72) = v3;
  }

  free(v1);
}

uint64_t Snippetpb_TvShowSnippet.contentRating.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7B8, &qword_1B9663DA0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  OUTLINED_FUNCTION_4_18();
  v10 = *(v1 + v9);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_39();
  v11 = type metadata accessor for Tvpb_ContentRating(0);
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    OUTLINED_FUNCTION_92_0();
    v13 = a1 + *(v11 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v8, &qword_1EBABD7B8, &qword_1B9663DA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_16();
    return sub_1B8ECF854();
  }

  return result;
}

uint64_t Snippetpb_TvShowSnippet.contentRating.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7B8, &qword_1B9663DA0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_17_9();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_11();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8ECB0BC(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_3_16();
  sub_1B8ECF854();
  v10 = type metadata accessor for Tvpb_ContentRating(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Snippetpb_TvShowSnippet.contentRating.modify()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7B8, &qword_1B9663DA0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Tvpb_ContentRating(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = *(v9 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v2 + 48) = v11;
  OUTLINED_FUNCTION_4_18();
  v13 = *(v0 + v12);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_112_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_114_0();
    v15 = &v11[*(v8 + 24)];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v1, &qword_1EBABD7B8, &qword_1B9663DA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_16();
    OUTLINED_FUNCTION_246();
    sub_1B8ECF854();
  }

  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EC781C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_TvShowSnippet.thumbnail.setter();
}

uint64_t Snippetpb_TvShowSnippet.thumbnail.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_0_29(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EC78FC(uint64_t *a1)
{
  v1 = *a1;

  Snippetpb_TvShowSnippet.genres.setter();
}

uint64_t Snippetpb_TvShowSnippet.genres.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_26(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8EC79C4(uint64_t a1)
{
  OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_29_10(v3);
  v4 = *(v1 + a1);
}

void sub_1B8EC79FC(uint64_t *a1)
{
  v1 = *a1;

  Snippetpb_TvShowSnippet.availabilities.setter();
}

void sub_1B8EC7A34()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_17_9();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_11();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8ECB0BC(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3();
  v10 = *(v7 + v3);
  *(v7 + v3) = v5;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_TvShowSnippet.availabilities.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_26(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EC7B2C(uint64_t *a1)
{
  v1 = *a1;

  Snippetpb_TvShowSnippet.actors.setter();
}

uint64_t Snippetpb_TvShowSnippet.actors.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_26(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8EC7BF4(void *a1)
{
  OUTLINED_FUNCTION_4_18();
  v4 = (*(v1 + v3) + *a1);
  OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_521();
  v6 = *v4;
  v5 = v4[1];

  return v6;
}

void sub_1B8EC7C48(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_TvShowSnippet.premieredNetwork.setter();
}

void sub_1B8EC7C94()
{
  OUTLINED_FUNCTION_193_0();
  v4 = v3;
  v5 = v1;
  OUTLINED_FUNCTION_16();
  v6 = *(type metadata accessor for Snippetpb_TvShowSnippet(0) + 20);
  v7 = *(v1 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_12_11();
    v10 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8ECB0BC(v10);
    *(v5 + v6) = v9;
  }

  v11 = (v9 + *v4);
  OUTLINED_FUNCTION_18();
  v12 = v11[1];
  *v11 = v2;
  v11[1] = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_TvShowSnippet.premieredNetwork.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_0_29(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EC7DB0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_TvShowSnippet.premiereDate.setter();
}

uint64_t Snippetpb_TvShowSnippet.premiereDate.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_0_29(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EC7E90(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_TvShowSnippet.finaleDate.setter();
}

uint64_t Snippetpb_TvShowSnippet.finaleDate.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_0_29(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_TvShowSnippet.commonSense.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7C0, &qword_1B9663DA8);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  OUTLINED_FUNCTION_4_18();
  v10 = *(v1 + v9);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_39();
  v11 = type metadata accessor for Tvpb_CommonSense(0);
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    OUTLINED_FUNCTION_92_0();
    v13 = a1 + *(v11 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v8, &qword_1EBABD7C0, &qword_1B9663DA8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_12();
    return sub_1B8ECF854();
  }

  return result;
}

uint64_t sub_1B8EC8060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79();
  sub_1B8ECF8AC();
  return a7(v7);
}

uint64_t Snippetpb_TvShowSnippet.commonSense.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7C0, &qword_1B9663DA8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_17_9();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_11();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8ECB0BC(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_12();
  sub_1B8ECF854();
  v10 = type metadata accessor for Tvpb_CommonSense(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Snippetpb_TvShowSnippet.commonSense.modify()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7C0, &qword_1B9663DA8);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Tvpb_CommonSense(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = *(v9 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v2 + 48) = v11;
  OUTLINED_FUNCTION_4_18();
  v13 = *(v0 + v12);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_112_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_114_0();
    v15 = &v11[*(v8 + 24)];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v1, &qword_1EBABD7C0, &qword_1B9663DA8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_12();
    OUTLINED_FUNCTION_246();
    sub_1B8ECF854();
  }

  return OUTLINED_FUNCTION_105_0();
}

BOOL sub_1B8EC8394(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_183(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  OUTLINED_FUNCTION_4_18();
  v18 = *(v5 + v17);
  v19 = *a3;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v20 = a4(0);
  v21 = __swift_getEnumTagSinglePayload(v16, 1, v20) != 1;
  sub_1B8D9207C(v16, v6, v4);
  return v21;
}

void sub_1B8EC849C()
{
  OUTLINED_FUNCTION_243();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_16();
  v6 = v0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79();
  v13 = *(type metadata accessor for Snippetpb_TvShowSnippet(0) + 20);
  v14 = *(v0 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v0 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_12_11();
    v17 = OUTLINED_FUNCTION_40_0();
    *(v6 + v13) = sub_1B8ECB0BC(v17);
  }

  v18 = v5(0);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v18);
  v19 = *v3;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t Snippetpb_TvShowSnippet.appleOriginal.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_17(v1);
  OUTLINED_FUNCTION_102_2(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Snippetpb_TvShowSnippet.runtimeInMinutes.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_17(v3);
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__runtimeInMinutes;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 80) = *(v5 + v6);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EC86A8(uint64_t *a1)
{
  v1 = *a1;

  Snippetpb_TvShowSnippet.children.setter();
}

uint64_t Snippetpb_TvShowSnippet.children.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_26(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_TvShowSnippet.parent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7C8, &qword_1B9663DB0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  OUTLINED_FUNCTION_4_18();
  v10 = *(v1 + v9);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_39();
  v11 = type metadata accessor for Tvpb_Parent(0);
  OUTLINED_FUNCTION_9_2();
  if (v12)
  {
    OUTLINED_FUNCTION_92_0();
    *(a1 + 32) = 0;
    *(a1 + 40) = v13;
    v14 = a1 + *(v11 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v12)
    {
      return sub_1B8D9207C(v8, &qword_1EBABD7C8, &qword_1B9663DB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_15();
    return sub_1B8ECF854();
  }

  return result;
}

uint64_t Snippetpb_TvShowSnippet.parent.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7C8, &qword_1B9663DB0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_17_9();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_11();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8ECB0BC(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_11_15();
  sub_1B8ECF854();
  v10 = type metadata accessor for Tvpb_Parent(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Snippetpb_TvShowSnippet.parent.modify()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7C8, &qword_1B9663DB0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Tvpb_Parent(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = *(v9 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v2 + 48) = v11;
  OUTLINED_FUNCTION_4_18();
  v13 = *(v0 + v12);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_112_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_114_0();
    v11[4] = 0;
    v11[5] = v15;
    v16 = v11 + *(v8 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v1, &qword_1EBABD7C8, &qword_1B9663DB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_15();
    OUTLINED_FUNCTION_246();
    sub_1B8ECF854();
  }

  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EC8AD8()
{
  OUTLINED_FUNCTION_243();
  v3 = v1;
  v4 = *(*v0 + 40);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 24);
  v7 = *(*v0 + 32);
  if (v8)
  {
    v9 = v2;
    v10 = *(*v0 + 48);
    sub_1B8ECF8AC();
    v3(v4);
    sub_1B8ECF904(v5, v9);
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v5);
  free(v4);
  free(v7);
  OUTLINED_FUNCTION_242();

  free(v11);
}

uint64_t sub_1B8EC8BEC(uint64_t a1)
{
  OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_29_10(v3);
  return *(v1 + a1);
}

void sub_1B8EC8C2C()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_17_9();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_11();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8ECB0BC(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3();
  *(v7 + v3) = v5;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_TvShowSnippet.seasonNumber.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_17(v3);
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__seasonNumber;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 80) = *(v5 + v6);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EC8D00()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  OUTLINED_FUNCTION_238(v3);
  v5 = *(v4 + 80);
  v6 = *(v0 + 84);
  v7 = *(v0 + 72);
  v8 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v0 + 84);
    v12 = *(v0 + 72);
    OUTLINED_FUNCTION_12_11();
    v13 = OUTLINED_FUNCTION_40_0();
    v14 = sub_1B8ECB0BC(v13);
    OUTLINED_FUNCTION_73_2(v14);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_18();
  *(v10 + v2) = v5;
  OUTLINED_FUNCTION_242();

  free(v15);
}

uint64_t Snippetpb_TvShowSnippet.episodeNumber.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_17(v3);
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumber;
  OUTLINED_FUNCTION_68_0();
  *(v1 + 80) = *(v5 + v6);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Snippetpb_TvShowSnippet.type.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_4_18();
  v4 = *(v1 + v3) + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__type;
  result = OUTLINED_FUNCTION_521();
  v6 = *(v4 + 8);
  *a1 = *v4;
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_1B8EC8E84@<X0>(uint64_t a1@<X8>)
{
  result = Snippetpb_TvShowSnippet.type.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

void sub_1B8EC8EC8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  Snippetpb_TvShowSnippet.type.setter();
}

void Snippetpb_TvShowSnippet.type.setter()
{
  OUTLINED_FUNCTION_193_0();
  v2 = v0;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_17_9();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_11();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8ECB0BC(v8);
    *(v2 + v1) = v7;
  }

  v9 = v7 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__type;
  OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_18();
  *v9 = v4;
  v9[8] = v5;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_TvShowSnippet.type.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[11] = v1;
  OUTLINED_FUNCTION_4_18();
  *(v3 + 21) = v4;
  v5 = *(v1 + v4);
  OUTLINED_FUNCTION_41();
  v6 = *(v1 + 8);
  v3[9] = *v1;
  *(v3 + 80) = v6;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EC8FFC()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_238(v1);
  v3 = *(v2 + 72);
  v4 = *(v0 + 84);
  v5 = *(v0 + 88);
  v6 = *(v0 + 80);
  v7 = *(v5 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v0 + 84);
    v11 = *(v0 + 88);
    OUTLINED_FUNCTION_12_11();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = sub_1B8ECB0BC(v12);
    OUTLINED_FUNCTION_73_2(v13);
  }

  v14 = v9 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__type;
  OUTLINED_FUNCTION_18();
  *v14 = v3;
  *(v14 + 8) = v6;
  OUTLINED_FUNCTION_242();

  free(v15);
}

void sub_1B8EC90B8(uint64_t *a1)
{
  v1 = *a1;

  Snippetpb_TvShowSnippet.coverArt.setter();
}

uint64_t Snippetpb_TvShowSnippet.coverArt.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_26(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

float Snippetpb_TvShowSnippet.episodeNumberFloat.getter()
{
  OUTLINED_FUNCTION_4_18();
  v2 = *(v0 + v1) + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumberFloat;
  OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_521();
  return *v2;
}

uint64_t Snippetpb_TvShowSnippet.episodeNumberFloat.setter(float a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Snippetpb_TvShowSnippet(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_12_11();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8ECB0BC(v8);
    *(v2 + v4) = v7;
  }

  v9 = (v7 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumberFloat);
  OUTLINED_FUNCTION_173_0();
  result = OUTLINED_FUNCTION_18();
  *v9 = a1;
  return result;
}

uint64_t Snippetpb_TvShowSnippet.episodeNumberFloat.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_2_17(v3);
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_41();
  *(v1 + 80) = *v0;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EC92A4(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v3 = *(v2 + 80);
  v4 = *(v1 + 84);
  v5 = *(v1 + 72);
  v6 = *(v5 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v1 + 84);
    v10 = *(v1 + 72);
    OUTLINED_FUNCTION_12_11();
    v11 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8ECB0BC(v11);
    *(v10 + v9) = v8;
  }

  v12 = (v8 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumberFloat);
  OUTLINED_FUNCTION_18();
  *v12 = v3;

  free(v1);
}

void sub_1B8EC9364(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_TvShowSnippet.wikiID.setter();
}

uint64_t Snippetpb_TvShowSnippet.wikiID.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_0_29(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EC9444(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_TvShowSnippet.imdbID.setter();
}

uint64_t Snippetpb_TvShowSnippet.imdbID.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_0_29(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EC9524(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_TvShowSnippet.rottenTomatoesURL.setter();
}

uint64_t Snippetpb_TvShowSnippet.rottenTomatoesURL.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_0_29(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EC9604(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_TvShowSnippet.parentSeasonName.setter();
}

uint64_t Snippetpb_TvShowSnippet.parentSeasonName.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_0_29(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EC96E4(uint64_t *a1)
{
  v1 = *a1;

  Snippetpb_TvShowSnippet.localizedGenres.setter();
}

uint64_t Snippetpb_TvShowSnippet.localizedGenres.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_26(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EC97AC(uint64_t *a1)
{
  v1 = *a1;

  Snippetpb_TvShowSnippet.characterNames.setter();
}

uint64_t Snippetpb_TvShowSnippet.characterNames.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_26(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EC9874(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_TvShowSnippet.siribaseID.setter();
}

uint64_t Snippetpb_TvShowSnippet.siribaseID.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_0_29(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EC9954(uint64_t *a1)
{
  v1 = *a1;

  Snippetpb_TvShowSnippet.directors.setter();
}

uint64_t Snippetpb_TvShowSnippet.directors.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_26(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EC9A1C(uint64_t *a1)
{
  v1 = *a1;

  Snippetpb_TvShowSnippet.trailersV2.setter();
}

uint64_t Snippetpb_TvShowSnippet.trailersV2.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_26(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EC9AE4(uint64_t *a1)
{
  v1 = *a1;

  Snippetpb_TvShowSnippet.castAndCrew.setter();
}

uint64_t Snippetpb_TvShowSnippet.castAndCrew.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_26(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8EC9BAC(uint64_t a1)
{
  OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_29_10(v3);
  return *(v1 + a1);
}

void sub_1B8EC9BEC()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_17_9();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_12_11();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8ECB0BC(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_9_3();
  *(v7 + v3) = v5 & 1;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_TvShowSnippet.boost.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_17(v1);
  OUTLINED_FUNCTION_102_2(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EC9CBC()
{
  OUTLINED_FUNCTION_243();
  v1 = v0;
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 84);
  v7 = *(v5 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v3 + 80);
    v11 = *(v3 + 72);
    OUTLINED_FUNCTION_12_11();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = sub_1B8ECB0BC(v12);
    OUTLINED_FUNCTION_73_2(v13);
  }

  OUTLINED_FUNCTION_271_0();
  OUTLINED_FUNCTION_18();
  *(v9 + v1) = v6;
  OUTLINED_FUNCTION_242();

  free(v14);
}

void sub_1B8EC9D68(uint64_t *a1)
{
  v1 = *a1;

  Snippetpb_TvShowSnippet.engTokens.setter();
}

uint64_t Snippetpb_TvShowSnippet.engTokens.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_1_26(v1);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EC9E24(uint64_t *a1)
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
      OUTLINED_FUNCTION_12_11();
      v19 = OUTLINED_FUNCTION_40_0();
      v20 = sub_1B8ECB0BC(v19);
      OUTLINED_FUNCTION_168(v20);
    }

    v21 = *v11;
    OUTLINED_FUNCTION_59_3();
    v22 = *(v16 + v21);
    *(v16 + v21) = v5;
  }

  free(v1);
}

uint64_t Snippetpb_TvShowSnippet.isAnnTier.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_17(v1);
  OUTLINED_FUNCTION_102_2(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Snippetpb_TvShowSnippet.isIm.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_17(v1);
  OUTLINED_FUNCTION_102_2(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Snippetpb_TvShowSnippet.isStereo.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_2_17(v1);
  OUTLINED_FUNCTION_102_2(v2);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8ECA074(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_TvShowSnippet.kgInternalID.setter();
}

uint64_t Snippetpb_TvShowSnippet.kgInternalID.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_0_29(v2);
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8ECA148()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0(v3);
  if (v6)
  {
    v7 = v5;
    OUTLINED_FUNCTION_191();
    v8 = OUTLINED_FUNCTION_461();
    v7(v8);
    v9 = *(v0 + 56);
  }

  else
  {
    v10 = v4;
    v11 = *(v0 + 72);
    v12 = *(v0 + 64);
    v13 = *(v12 + v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v12 + v11);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = *(v0 + 72);
      v17 = *(v0 + 64);
      OUTLINED_FUNCTION_12_11();
      v18 = OUTLINED_FUNCTION_40_0();
      v19 = sub_1B8ECB0BC(v18);
      OUTLINED_FUNCTION_73_2(v19);
    }

    v20 = (v15 + *v10);
    OUTLINED_FUNCTION_18();
    v21 = v20[1];
    *v20 = v2;
    v20[1] = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v22);
}

uint64_t Snippetpb_TvShowSnippet.unknownFields.getter()
{
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Snippetpb_TvShowSnippet.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1B964C2B0();
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 40);

  return v6(v1, a1, v4);
}

uint64_t sub_1B8ECA2F8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD798);
  __swift_project_value_buffer(v0, qword_1EBABD798);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_1B9663D90;
  v4 = v83 + v3 + v1[14];
  *(v83 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v83 + v3 + v2 + v1[14];
  *(v83 + v3 + v2) = 2;
  *v8 = "canonical_id";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADE8];
  v7();
  v10 = (v83 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "title";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v7();
  v12 = (v83 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "description";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v7();
  v14 = (v83 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "content_rating";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v7();
  v16 = (v83 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "thumbnail";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v7();
  v18 = (v83 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "genres";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v7();
  v20 = (v83 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "availabilities";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v7();
  v22 = (v83 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "actors";
  *(v23 + 1) = 6;
  v23[16] = 2;
  v7();
  v24 = (v83 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 11;
  *v25 = "premiered_network";
  *(v25 + 1) = 17;
  v25[16] = 2;
  v7();
  v26 = (v83 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 12;
  *v27 = "premiere_date";
  *(v27 + 1) = 13;
  v27[16] = 2;
  v7();
  v28 = (v83 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 13;
  *v29 = "finale_date";
  *(v29 + 1) = 11;
  v29[16] = 2;
  v7();
  v30 = (v83 + v3 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 14;
  *v31 = "common_sense";
  *(v31 + 1) = 12;
  v31[16] = 2;
  v7();
  v32 = (v83 + v3 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 15;
  *v33 = "apple_original";
  *(v33 + 1) = 14;
  v33[16] = 2;
  v7();
  v34 = (v83 + v3 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 16;
  *v35 = "runtime_in_minutes";
  *(v35 + 1) = 18;
  v35[16] = 2;
  v7();
  v36 = (v83 + v3 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 17;
  *v37 = "children";
  *(v37 + 1) = 8;
  v37[16] = 2;
  v7();
  v38 = (v83 + v3 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "parent";
  *(v39 + 1) = 6;
  v39[16] = 2;
  v7();
  v40 = (v83 + v3 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "season_number";
  *(v41 + 1) = 13;
  v41[16] = 2;
  v7();
  v42 = (v83 + v3 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "episode_number";
  *(v43 + 1) = 14;
  v43[16] = 2;
  v7();
  v44 = (v83 + v3 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 21;
  *v45 = "type";
  *(v45 + 1) = 4;
  v45[16] = 2;
  v7();
  v46 = (v83 + v3 + 20 * v2);
  v47 = v46 + v1[14];
  *v46 = 22;
  *v47 = "cover_art";
  *(v47 + 1) = 9;
  v47[16] = 2;
  v7();
  v48 = (v83 + v3 + 21 * v2);
  v49 = v48 + v1[14];
  *v48 = 23;
  *v49 = "episode_number_float";
  *(v49 + 1) = 20;
  v49[16] = 2;
  v7();
  v50 = (v83 + v3 + 22 * v2);
  v51 = v50 + v1[14];
  *v50 = 24;
  *v51 = "wiki_id";
  *(v51 + 1) = 7;
  v51[16] = 2;
  v7();
  v52 = (v83 + v3 + 23 * v2);
  v53 = v52 + v1[14];
  *v52 = 25;
  *v53 = "imdb_id";
  *(v53 + 1) = 7;
  v53[16] = 2;
  v7();
  v54 = (v83 + v3 + 24 * v2);
  v55 = v54 + v1[14];
  *v54 = 26;
  *v55 = "rotten_tomatoes_url";
  *(v55 + 1) = 19;
  v55[16] = 2;
  v7();
  v56 = (v83 + v3 + 25 * v2);
  v57 = v56 + v1[14];
  *v56 = 27;
  *v57 = "parent_season_name";
  *(v57 + 1) = 18;
  v57[16] = 2;
  v7();
  v58 = (v83 + v3 + 26 * v2);
  v59 = v58 + v1[14];
  *v58 = 28;
  *v59 = "localized_genres";
  *(v59 + 1) = 16;
  v59[16] = 2;
  v7();
  v60 = (v83 + v3 + 27 * v2);
  v61 = v60 + v1[14];
  *v60 = 29;
  *v61 = "character_names";
  *(v61 + 1) = 15;
  v61[16] = 2;
  v7();
  v62 = (v83 + v3 + 28 * v2);
  v63 = v62 + v1[14];
  *v62 = 30;
  *v63 = "siribase_id";
  *(v63 + 1) = 11;
  v63[16] = 2;
  v7();
  v64 = (v83 + v3 + 29 * v2);
  v65 = v64 + v1[14];
  *v64 = 31;
  *v65 = "directors";
  *(v65 + 1) = 9;
  v65[16] = 2;
  v7();
  v66 = (v83 + v3 + 30 * v2);
  v67 = v66 + v1[14];
  *v66 = 32;
  *v67 = "trailers_v2";
  *(v67 + 1) = 11;
  v67[16] = 2;
  v7();
  v68 = (v83 + v3 + 31 * v2);
  v69 = v68 + v1[14];
  *v68 = 33;
  *v69 = "cast_and_crew";
  *(v69 + 1) = 13;
  v69[16] = 2;
  v7();
  v70 = (v83 + v3 + 32 * v2);
  v71 = v70 + v1[14];
  *v70 = 34;
  *v71 = "boost";
  *(v71 + 1) = 5;
  v71[16] = 2;
  v7();
  v72 = (v83 + v3 + 33 * v2);
  v73 = v72 + v1[14];
  *v72 = 35;
  *v73 = "engTokens";
  *(v73 + 1) = 9;
  v73[16] = 2;
  v7();
  v74 = (v83 + v3 + 34 * v2);
  v75 = v74 + v1[14];
  *v74 = 36;
  *v75 = "is_ann_tier";
  *(v75 + 1) = 11;
  v75[16] = 2;
  v7();
  v76 = (v83 + v3 + 35 * v2);
  v77 = v76 + v1[14];
  *v76 = 37;
  *v77 = "is_im";
  *(v77 + 1) = 5;
  v77[16] = 2;
  v7();
  v78 = (v83 + v3 + 36 * v2);
  v79 = v78 + v1[14];
  *v78 = 38;
  *v79 = "is_stereo";
  *(v79 + 1) = 9;
  v79[16] = 2;
  v7();
  v80 = (v83 + v3 + 37 * v2);
  v81 = v80 + v1[14];
  *v80 = 39;
  *v81 = "kg_internal_id";
  *(v81 + 1) = 14;
  v81[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Snippetpb_TvShowSnippet._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB6578 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBABD798);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_1B8ECAE2C()
{
  OUTLINED_FUNCTION_12_11();
  result = sub_1B8ECAE5C();
  qword_1EBABD7B0 = result;
  return result;
}

void *sub_1B8ECAE5C()
{
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__contentRating;
  v2 = type metadata accessor for Tvpb_ContentRating(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__thumbnail);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__genres) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__availabilities) = v4;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__actors) = v4;
  v5 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__premieredNetwork);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__premiereDate);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__finaleDate);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__commonSense;
  v9 = type metadata accessor for Tvpb_CommonSense(0);
  __swift_storeEnumTagSinglePayload(v0 + v8, 1, 1, v9);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__appleOriginal) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__runtimeInMinutes) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__children) = v4;
  v10 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__parent;
  v11 = type metadata accessor for Tvpb_Parent(0);
  __swift_storeEnumTagSinglePayload(v0 + v10, 1, 1, v11);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__seasonNumber) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumber) = 0;
  v12 = v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__type;
  *v12 = 0;
  v12[8] = 1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__coverArt) = v4;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumberFloat) = 0;
  v13 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__wikiID);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__imdbID);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__rottenTomatoesURL);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__parentSeasonName);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__localizedGenres) = v4;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__characterNames[0]) = v4;
  v17 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__siribaseID);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__directors[0]) = v4;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__trailersV2) = v4;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__castAndCrew) = v4;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__boost) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__engTokens[0]) = v4;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isAnnTier) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isIm) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isStereo) = 0;
  v18 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__kgInternalID);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  return v0;
}

void *sub_1B8ECB0BC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7C8, &qword_1B9663DB0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v175 = v157 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7C0, &qword_1B9663DA8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v168 = v157 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7B8, &qword_1B9663DA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v157[2] = v157 - v11;
  v1[2] = 0;
  v1[4] = 0;
  v1[3] = 0xE000000000000000;
  v1[5] = 0xE000000000000000;
  v1[6] = 0;
  v1[7] = 0xE000000000000000;
  v1[8] = 0;
  v157[0] = v1 + 8;
  v1[9] = 0xE000000000000000;
  v12 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__contentRating;
  v157[1] = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__contentRating;
  v13 = type metadata accessor for Tvpb_ContentRating(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  v14 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__thumbnail);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v158 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__genres;
  v15 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__genres) = MEMORY[0x1E69E7CC0];
  v159 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__availabilities;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__availabilities) = v15;
  v160 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__actors;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__actors) = v15;
  v16 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__premieredNetwork);
  v161 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__premieredNetwork);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__premiereDate);
  v162 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__premiereDate);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__finaleDate);
  v163 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__finaleDate);
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  v19 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__commonSense;
  v164 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__commonSense;
  v20 = type metadata accessor for Tvpb_CommonSense(0);
  __swift_storeEnumTagSinglePayload(v1 + v19, 1, 1, v20);
  v165 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__appleOriginal;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__appleOriginal) = 0;
  v166 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__runtimeInMinutes;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__runtimeInMinutes) = 0;
  v167 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__children;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__children) = v15;
  v21 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__parent;
  v22 = type metadata accessor for Tvpb_Parent(0);
  __swift_storeEnumTagSinglePayload(v1 + v21, 1, 1, v22);
  v169 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__seasonNumber;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__seasonNumber) = 0;
  v170 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumber;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumber) = 0;
  v23 = v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__type;
  v171 = v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__type;
  *v23 = 0;
  v23[8] = 1;
  v172 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__coverArt;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__coverArt) = v15;
  v173 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumberFloat);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumberFloat) = 0;
  v24 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__wikiID);
  v174 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__wikiID);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  v25 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__imdbID);
  v176 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__imdbID);
  *v25 = 0;
  v25[1] = 0xE000000000000000;
  v26 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__rottenTomatoesURL);
  v177 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__rottenTomatoesURL);
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  v27 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__parentSeasonName);
  v178 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__parentSeasonName);
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  v179 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__localizedGenres;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__localizedGenres) = v15;
  v180 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__characterNames[0];
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__characterNames[0]) = v15;
  v28 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__siribaseID);
  v181 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__siribaseID);
  *v28 = 0;
  v28[1] = 0xE000000000000000;
  v182 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__directors[0];
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__directors[0]) = v15;
  v183 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__trailersV2;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__trailersV2) = v15;
  v184 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__castAndCrew;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__castAndCrew) = v15;
  v185 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__boost;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__boost) = 0;
  v186 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__engTokens[0];
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__engTokens[0]) = v15;
  v187 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isAnnTier;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isAnnTier) = 0;
  v188 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isIm;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isIm) = 0;
  v189 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isStereo;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isStereo) = 0;
  v29 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__kgInternalID);
  v190 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__kgInternalID);
  *v29 = 0;
  v29[1] = 0xE000000000000000;
  swift_beginAccess();
  v31 = a1[2];
  v30 = a1[3];
  swift_beginAccess();
  v1[2] = v31;
  v1[3] = v30;
  swift_beginAccess();
  v33 = a1[4];
  v32 = a1[5];
  swift_beginAccess();
  v1[4] = v33;
  v1[5] = v32;

  swift_beginAccess();
  v35 = a1[6];
  v34 = a1[7];
  swift_beginAccess();
  v36 = v1[7];
  v1[6] = v35;
  v1[7] = v34;

  swift_beginAccess();
  v38 = a1[8];
  v37 = a1[9];
  v39 = v157[0];
  swift_beginAccess();
  v40 = v1[9];
  *v39 = v38;
  v1[9] = v37;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v41 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__thumbnail);
  swift_beginAccess();
  v43 = *v41;
  v42 = v41[1];
  swift_beginAccess();
  v44 = v14[1];
  *v14 = v43;
  v14[1] = v42;

  v45 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__genres;
  swift_beginAccess();
  v46 = *(a1 + v45);
  v47 = v158;
  swift_beginAccess();
  v48 = *(v1 + v47);
  *(v1 + v47) = v46;

  v49 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__availabilities;
  swift_beginAccess();
  v50 = *(a1 + v49);
  v51 = v159;
  swift_beginAccess();
  v52 = *(v1 + v51);
  *(v1 + v51) = v50;

  v53 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__actors;
  swift_beginAccess();
  v54 = *(a1 + v53);
  v55 = v160;
  swift_beginAccess();
  v56 = *(v1 + v55);
  *(v1 + v55) = v54;

  v57 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__premieredNetwork);
  swift_beginAccess();
  v59 = *v57;
  v58 = v57[1];
  v60 = v161;
  swift_beginAccess();
  v61 = v60[1];
  *v60 = v59;
  v60[1] = v58;

  v62 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__premiereDate);
  swift_beginAccess();
  v64 = *v62;
  v63 = v62[1];
  v65 = v162;
  swift_beginAccess();
  v66 = v65[1];
  *v65 = v64;
  v65[1] = v63;

  v67 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__finaleDate);
  swift_beginAccess();
  v69 = *v67;
  v68 = v67[1];
  v70 = v163;
  swift_beginAccess();
  v71 = v70[1];
  *v70 = v69;
  v70[1] = v68;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v72 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__appleOriginal;
  swift_beginAccess();
  LOBYTE(v72) = *(a1 + v72);
  v73 = v165;
  swift_beginAccess();
  *(v1 + v73) = v72;
  v74 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__runtimeInMinutes;
  swift_beginAccess();
  LODWORD(v74) = *(a1 + v74);
  v75 = v166;
  swift_beginAccess();
  *(v1 + v75) = v74;
  v76 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__children;
  swift_beginAccess();
  v77 = *(a1 + v76);
  v78 = v167;
  swift_beginAccess();
  v79 = *(v1 + v78);
  *(v1 + v78) = v77;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v80 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__seasonNumber;
  swift_beginAccess();
  LODWORD(v80) = *(a1 + v80);
  v81 = v169;
  swift_beginAccess();
  *(v1 + v81) = v80;
  v82 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumber;
  swift_beginAccess();
  LODWORD(v82) = *(a1 + v82);
  v83 = v170;
  swift_beginAccess();
  *(v1 + v83) = v82;
  v84 = a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__type;
  swift_beginAccess();
  v85 = *v84;
  LOBYTE(v84) = v84[8];
  v86 = v171;
  swift_beginAccess();
  *v86 = v85;
  v86[8] = v84;
  v87 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__coverArt;
  swift_beginAccess();
  v88 = *(a1 + v87);
  v89 = v172;
  swift_beginAccess();
  v90 = *(v1 + v89);
  *(v1 + v89) = v88;

  v91 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumberFloat);
  swift_beginAccess();
  v92 = *v91;
  v93 = v173;
  swift_beginAccess();
  *v93 = v92;
  v94 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__wikiID);
  swift_beginAccess();
  v96 = *v94;
  v95 = v94[1];
  v97 = v174;
  swift_beginAccess();
  v98 = v97[1];
  *v97 = v96;
  v97[1] = v95;

  v99 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__imdbID);
  swift_beginAccess();
  v101 = *v99;
  v100 = v99[1];
  v102 = v176;
  swift_beginAccess();
  v103 = v102[1];
  *v102 = v101;
  v102[1] = v100;

  v104 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__rottenTomatoesURL);
  swift_beginAccess();
  v106 = *v104;
  v105 = v104[1];
  v107 = v177;
  swift_beginAccess();
  v108 = v107[1];
  *v107 = v106;
  v107[1] = v105;

  v109 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__parentSeasonName);
  swift_beginAccess();
  v111 = *v109;
  v110 = v109[1];
  v112 = v178;
  swift_beginAccess();
  v113 = v112[1];
  *v112 = v111;
  v112[1] = v110;

  v114 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__localizedGenres;
  swift_beginAccess();
  v115 = *(a1 + v114);
  v116 = v179;
  swift_beginAccess();
  v117 = *(v1 + v116);
  *(v1 + v116) = v115;

  v118 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__characterNames[0];
  swift_beginAccess();
  v119 = *(v118 + a1);
  v120 = v180;
  swift_beginAccess();
  v121 = *(v120 + v1);
  *(v120 + v1) = v119;

  v122 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__siribaseID);
  swift_beginAccess();
  v124 = *v122;
  v123 = v122[1];
  v125 = v181;
  swift_beginAccess();
  v126 = v125[1];
  *v125 = v124;
  v125[1] = v123;

  v127 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__directors[0];
  swift_beginAccess();
  v128 = *(v127 + a1);
  v129 = v182;
  swift_beginAccess();
  v130 = *(v129 + v1);
  *(v129 + v1) = v128;

  v131 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__trailersV2;
  swift_beginAccess();
  v132 = *(a1 + v131);
  v133 = v183;
  swift_beginAccess();
  v134 = *(v1 + v133);
  *(v1 + v133) = v132;

  v135 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__castAndCrew;
  swift_beginAccess();
  v136 = *(a1 + v135);
  v137 = v184;
  swift_beginAccess();
  v138 = *(v1 + v137);
  *(v1 + v137) = v136;

  v139 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__boost;
  swift_beginAccess();
  LOBYTE(v139) = *(a1 + v139);
  v140 = v185;
  swift_beginAccess();
  *(v1 + v140) = v139;
  v141 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__engTokens[0];
  swift_beginAccess();
  v142 = *(v141 + a1);
  v143 = v186;
  swift_beginAccess();
  v144 = *(v143 + v1);
  *(v143 + v1) = v142;

  v145 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isAnnTier;
  swift_beginAccess();
  LOBYTE(v145) = *(a1 + v145);
  v146 = v187;
  swift_beginAccess();
  *(v1 + v146) = v145;
  v147 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isIm;
  swift_beginAccess();
  LOBYTE(v147) = *(a1 + v147);
  v148 = v188;
  swift_beginAccess();
  *(v1 + v148) = v147;
  v149 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isStereo;
  swift_beginAccess();
  LOBYTE(v149) = *(a1 + v149);
  v150 = v189;
  swift_beginAccess();
  *(v1 + v150) = v149;
  v151 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__kgInternalID);
  swift_beginAccess();
  v153 = *v151;
  v152 = v151[1];

  v154 = v190;
  swift_beginAccess();
  v155 = v154[1];
  *v154 = v153;
  v154[1] = v152;

  return v1;
}

void *sub_1B8ECC06C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__contentRating, &qword_1EBABD7B8, &qword_1B9663DA0);
  v5 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__thumbnail + 8);

  v6 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__genres);

  v7 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__availabilities);

  v8 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__actors);

  v9 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__premieredNetwork + 8);

  v10 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__premiereDate + 8);

  v11 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__finaleDate + 8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__commonSense, &qword_1EBABD7C0, &qword_1B9663DA8);
  v12 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__children);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__parent, &qword_1EBABD7C8, &qword_1B9663DB0);
  v13 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__coverArt);

  v14 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__wikiID + 8);

  v15 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__imdbID + 8);

  v16 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__rottenTomatoesURL + 8);

  v17 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__parentSeasonName + 8);

  v18 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__localizedGenres);

  v19 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__characterNames[0]);

  v20 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__siribaseID + 8);

  v21 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__directors[0]);

  v22 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__trailersV2);

  v23 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__castAndCrew);

  v24 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__engTokens[0]);

  v25 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__kgInternalID + 8);

  return v0;
}

uint64_t sub_1B8ECC27C()
{
  v0 = sub_1B8ECC06C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Snippetpb_TvShowSnippet.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Snippetpb_TvShowSnippet(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Snippetpb_TvShowSnippet._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8ECB0BC(v15);
    *(v4 + v8) = v11;
  }

  return sub_1B8ECC370(v11, a1, a2, a3);
}

uint64_t sub_1B8ECC370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B8DAA85C();
        continue;
      case 2:
        sub_1B8DC46F4();
        continue;
      case 3:
        sub_1B8DC4778();
        continue;
      case 4:
        sub_1B8E16ACC();
        continue;
      case 5:
        sub_1B8ECC70C();
        continue;
      case 6:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__thumbnail;
        goto LABEL_43;
      case 7:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__genres;
        goto LABEL_45;
      case 8:
        sub_1B8ECC7E8();
        continue;
      case 9:
        v13 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__actors;
        goto LABEL_45;
      case 11:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__premieredNetwork;
        goto LABEL_43;
      case 12:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__premiereDate;
        goto LABEL_43;
      case 13:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__finaleDate;
        goto LABEL_43;
      case 14:
        sub_1B8ECC8C4();
        continue;
      case 15:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__appleOriginal;
        goto LABEL_38;
      case 16:
        v14 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__runtimeInMinutes;
        goto LABEL_32;
      case 17:
        sub_1B8ECC9A0();
        continue;
      case 18:
        sub_1B8ECCA7C();
        continue;
      case 19:
        v14 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__seasonNumber;
        goto LABEL_32;
      case 20:
        v14 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumber;
LABEL_32:
        v15 = MEMORY[0x1E69AAC98];
        goto LABEL_33;
      case 21:
        sub_1B8ECCB58();
        continue;
      case 22:
        sub_1B8ECCBF4();
        continue;
      case 23:
        v14 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumberFloat;
        v15 = MEMORY[0x1E69AAC88];
LABEL_33:
        sub_1B8ECCCD0(a2, a1, a3, a4, v14, v15);
        continue;
      case 24:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__wikiID;
        goto LABEL_43;
      case 25:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__imdbID;
        goto LABEL_43;
      case 26:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__rottenTomatoesURL;
        goto LABEL_43;
      case 27:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__parentSeasonName;
        goto LABEL_43;
      case 28:
        sub_1B8ECCD5C();
        continue;
      case 29:
        v13 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__characterNames;
        goto LABEL_45;
      case 30:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__siribaseID;
        goto LABEL_43;
      case 31:
        v13 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__directors;
        goto LABEL_45;
      case 32:
        sub_1B8ECCE38();
        continue;
      case 33:
        sub_1B8ECCF14();
        continue;
      case 34:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__boost;
        goto LABEL_38;
      case 35:
        v13 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__engTokens;
LABEL_45:
        sub_1B8EC1984(a2, a1, a3, a4, v13);
        continue;
      case 36:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isAnnTier;
        goto LABEL_38;
      case 37:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isIm;
        goto LABEL_38;
      case 38:
        v12 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isStereo;
LABEL_38:
        sub_1B8EC19CC(a2, a1, a3, a4, v12);
        break;
      case 39:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__kgInternalID;
LABEL_43:
        sub_1B8EC1A14(a2, a1, a3, a4, v11);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8ECC70C()
{
  swift_beginAccess();
  type metadata accessor for Tvpb_ContentRating(0);
  sub_1B8CD2180(&qword_1EBABD848, type metadata accessor for Tvpb_ContentRating);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8ECC7E8()
{
  swift_beginAccess();
  type metadata accessor for Tvpb_TvAvailability(0);
  sub_1B8CD2180(&qword_1EBABD810, type metadata accessor for Tvpb_TvAvailability);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8ECC8C4()
{
  swift_beginAccess();
  type metadata accessor for Tvpb_CommonSense(0);
  sub_1B8CD2180(&qword_1EBABD840, type metadata accessor for Tvpb_CommonSense);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8ECC9A0()
{
  swift_beginAccess();
  type metadata accessor for Tvpb_Child(0);
  sub_1B8CD2180(&qword_1EBABD818, type metadata accessor for Tvpb_Child);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8ECCA7C()
{
  swift_beginAccess();
  type metadata accessor for Tvpb_Parent(0);
  sub_1B8CD2180(&qword_1EBABD838, type metadata accessor for Tvpb_Parent);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8ECCB58()
{
  swift_beginAccess();
  sub_1B8ECFFBC();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8ECCBF4()
{
  swift_beginAccess();
  type metadata accessor for Tvpb_CoverArt(0);
  sub_1B8CD2180(&qword_1EBABD828, type metadata accessor for Tvpb_CoverArt);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8ECCCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return OUTLINED_FUNCTION_199_1();
}

uint64_t sub_1B8ECCD5C()
{
  swift_beginAccess();
  type metadata accessor for Tvpb_Genre(0);
  sub_1B8CD2180(&qword_1EBABD830, type metadata accessor for Tvpb_Genre);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8ECCE38()
{
  swift_beginAccess();
  type metadata accessor for Tvpb_TrailerV2(0);
  sub_1B8CD2180(&qword_1EBABD6E8, type metadata accessor for Tvpb_TrailerV2);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8ECCF14()
{
  swift_beginAccess();
  type metadata accessor for Tvpb_CastAndCrew(0);
  sub_1B8CD2180(&qword_1EBABD6F0, type metadata accessor for Tvpb_CastAndCrew);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t Snippetpb_TvShowSnippet.traverse<A>(visitor:)()
{
  v2 = type metadata accessor for Snippetpb_TvShowSnippet(0);
  result = sub_1B8ECD05C(*(v0 + *(v2 + 20)));
  if (!v1)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8ECD05C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7C8, &qword_1B9663DB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v129 = &v128 - v6;
  v130 = type metadata accessor for Tvpb_Parent(0);
  v7 = *(*(v130 - 8) + 64);
  MEMORY[0x1EEE9AC00](v130);
  v9 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7C0, &qword_1B9663DA8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v132 = &v128 - v12;
  v133 = type metadata accessor for Tvpb_CommonSense(0);
  v13 = *(*(v133 - 8) + 64);
  MEMORY[0x1EEE9AC00](v133);
  v131 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7B8, &qword_1B9663DA0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v128 - v17;
  v19 = type metadata accessor for Tvpb_ContentRating(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v134 = &v128 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v137 = a1;
  v22 = *(a1 + 16);
  v23 = *(a1 + 24);
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {

    sub_1B964C700();
    if (v2)
    {
    }
  }

  v25 = v137;
  swift_beginAccess();
  v26 = *(v25 + 32);
  v27 = *(v25 + 40);
  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {

    sub_1B964C700();
    if (v2)
    {
    }
  }

  v29 = v137;
  swift_beginAccess();
  v30 = *(v29 + 48);
  v31 = *(v29 + 56);
  v32 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v32 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (v32)
  {

    sub_1B964C700();
    if (!v2)
    {

      goto LABEL_16;
    }
  }

LABEL_16:
  v33 = v137;
  swift_beginAccess();
  v34 = *(v33 + 64);
  v35 = *(v33 + 72);
  v36 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {

    sub_1B964C700();
    if (v2)
    {
    }

    v128 = v9;
  }

  else
  {
    v128 = v9;
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBABD7B8, &qword_1B9663DA0);
    v38 = v2;
  }

  else
  {
    v39 = v134;
    sub_1B8ECF854();
    sub_1B8CD2180(&qword_1EBABD848, type metadata accessor for Tvpb_ContentRating);
    sub_1B964C740();
    v38 = v2;
    if (v2)
    {
      v40 = type metadata accessor for Tvpb_ContentRating;
      v41 = v39;
      return sub_1B8ECF904(v41, v40);
    }

    sub_1B8ECF904(v39, type metadata accessor for Tvpb_ContentRating);
  }

  v42 = (v137 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__thumbnail);
  swift_beginAccess();
  v43 = *v42;
  v44 = v42[1];
  v45 = HIBYTE(v44) & 0xF;
  if ((v44 & 0x2000000000000000) == 0)
  {
    v45 = v43 & 0xFFFFFFFFFFFFLL;
  }

  v46 = v128;
  if (v45)
  {

    sub_1B964C700();
    if (v38)
    {
    }
  }

  v47 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__genres;
  v48 = v137;
  swift_beginAccess();
  if (*(*(v48 + v47) + 16))
  {

    sub_1B964C6E0();
    if (v38)
    {
    }
  }

  v49 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__availabilities;
  v50 = v137;
  swift_beginAccess();
  if (*(*(v50 + v49) + 16))
  {
    type metadata accessor for Tvpb_TvAvailability(0);
    sub_1B8CD2180(&qword_1EBABD810, type metadata accessor for Tvpb_TvAvailability);

    sub_1B964C730();
    if (v38)
    {
    }
  }

  v51 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__actors;
  v52 = v137;
  swift_beginAccess();
  if (*(*(v52 + v51) + 16))
  {

    sub_1B964C6E0();
    if (v38)
    {
    }
  }

  v53 = (v137 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__premieredNetwork);
  swift_beginAccess();
  v54 = *v53;
  v55 = v53[1];
  v56 = HIBYTE(v55) & 0xF;
  if ((v55 & 0x2000000000000000) == 0)
  {
    v56 = v54 & 0xFFFFFFFFFFFFLL;
  }

  if (v56)
  {

    sub_1B964C700();
    if (v38)
    {
    }
  }

  v57 = (v137 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__premiereDate);
  swift_beginAccess();
  v58 = *v57;
  v59 = v57[1];
  v60 = HIBYTE(v59) & 0xF;
  if ((v59 & 0x2000000000000000) == 0)
  {
    v60 = v58 & 0xFFFFFFFFFFFFLL;
  }

  if (v60)
  {

    sub_1B964C700();
    if (!v38)
    {

      goto LABEL_54;
    }
  }

LABEL_54:
  v61 = (v137 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__finaleDate);
  swift_beginAccess();
  v62 = *v61;
  v63 = v61[1];
  v64 = HIBYTE(v63) & 0xF;
  if ((v63 & 0x2000000000000000) == 0)
  {
    v64 = v62 & 0xFFFFFFFFFFFFLL;
  }

  if (v64)
  {

    sub_1B964C700();
    if (v38)
    {
    }
  }

  swift_beginAccess();
  v65 = v132;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v65, 1, v133) == 1)
  {
    sub_1B8D9207C(v65, &qword_1EBABD7C0, &qword_1B9663DA8);
    goto LABEL_65;
  }

  v66 = v131;
  sub_1B8ECF854();
  sub_1B8CD2180(&qword_1EBABD840, type metadata accessor for Tvpb_CommonSense);
  sub_1B964C740();
  if (v38)
  {
    v40 = type metadata accessor for Tvpb_CommonSense;
    v41 = v66;
    return sub_1B8ECF904(v41, v40);
  }

  sub_1B8ECF904(v66, type metadata accessor for Tvpb_CommonSense);
LABEL_65:
  v67 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__appleOriginal;
  v68 = v137;
  swift_beginAccess();
  if (*(v68 + v67) == 1)
  {
    result = sub_1B964C670();
    if (v38)
    {
      return result;
    }
  }

  v69 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__runtimeInMinutes;
  v70 = v137;
  swift_beginAccess();
  if (*(v70 + v69))
  {
    result = sub_1B964C6C0();
    if (v38)
    {
      return result;
    }
  }

  v71 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__children;
  v72 = v137;
  swift_beginAccess();
  if (*(*(v72 + v71) + 16))
  {
    type metadata accessor for Tvpb_Child(0);
    sub_1B8CD2180(&qword_1EBABD818, type metadata accessor for Tvpb_Child);

    sub_1B964C730();
    if (v38)
    {
    }
  }

  swift_beginAccess();
  v73 = v129;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v73, 1, v130) == 1)
  {
    sub_1B8D9207C(v73, &qword_1EBABD7C8, &qword_1B9663DB0);
    goto LABEL_77;
  }

  sub_1B8ECF854();
  sub_1B8CD2180(&qword_1EBABD838, type metadata accessor for Tvpb_Parent);
  sub_1B964C740();
  if (v38)
  {
    v40 = type metadata accessor for Tvpb_Parent;
    v41 = v46;
    return sub_1B8ECF904(v41, v40);
  }

  sub_1B8ECF904(v46, type metadata accessor for Tvpb_Parent);
LABEL_77:
  v74 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__seasonNumber;
  v75 = v137;
  swift_beginAccess();
  if (*(v75 + v74))
  {
    result = sub_1B964C6C0();
    if (v38)
    {
      return result;
    }
  }

  v76 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumber;
  v77 = v137;
  swift_beginAccess();
  if (*(v77 + v76))
  {
    result = sub_1B964C6C0();
    if (v38)
    {
      return result;
    }
  }

  v78 = (v137 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__type);
  swift_beginAccess();
  if (*v78)
  {
    v79 = *(v78 + 8);
    v135 = *v78;
    v136 = v79;
    sub_1B8ECFFBC();
    result = sub_1B964C680();
    v80 = v38;
    if (v38)
    {
      return result;
    }
  }

  else
  {
    v80 = v38;
  }

  v81 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__coverArt;
  v82 = v137;
  swift_beginAccess();
  if (*(*(v82 + v81) + 16))
  {
    type metadata accessor for Tvpb_CoverArt(0);
    sub_1B8CD2180(&qword_1EBABD828, type metadata accessor for Tvpb_CoverArt);

    sub_1B964C730();
    if (v80)
    {
    }
  }

  v83 = (v137 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumberFloat);
  swift_beginAccess();
  if (*v83 != 0.0)
  {
    result = sub_1B964C6B0();
    if (v80)
    {
      return result;
    }
  }

  v84 = (v137 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__wikiID);
  swift_beginAccess();
  v85 = *v84;
  v86 = v84[1];
  v87 = HIBYTE(v86) & 0xF;
  if ((v86 & 0x2000000000000000) == 0)
  {
    v87 = v85 & 0xFFFFFFFFFFFFLL;
  }

  if (v87)
  {

    sub_1B964C700();
    if (v80)
    {
    }
  }

  v88 = (v137 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__imdbID);
  swift_beginAccess();
  v89 = *v88;
  v90 = v88[1];
  v91 = HIBYTE(v90) & 0xF;
  if ((v90 & 0x2000000000000000) == 0)
  {
    v91 = v89 & 0xFFFFFFFFFFFFLL;
  }

  if (v91)
  {

    sub_1B964C700();
    if (v80)
    {
    }
  }

  v92 = (v137 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__rottenTomatoesURL);
  swift_beginAccess();
  v93 = *v92;
  v94 = v92[1];
  v95 = HIBYTE(v94) & 0xF;
  if ((v94 & 0x2000000000000000) == 0)
  {
    v95 = v93 & 0xFFFFFFFFFFFFLL;
  }

  if (v95)
  {

    sub_1B964C700();
    if (v80)
    {
    }
  }

  v96 = (v137 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__parentSeasonName);
  swift_beginAccess();
  v97 = *v96;
  v98 = v96[1];
  v99 = HIBYTE(v98) & 0xF;
  if ((v98 & 0x2000000000000000) == 0)
  {
    v99 = v97 & 0xFFFFFFFFFFFFLL;
  }

  if (v99)
  {

    sub_1B964C700();
    if (v80)
    {
    }
  }

  v100 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__localizedGenres;
  v101 = v137;
  swift_beginAccess();
  if (*(*(v101 + v100) + 16))
  {
    type metadata accessor for Tvpb_Genre(0);
    sub_1B8CD2180(&qword_1EBABD830, type metadata accessor for Tvpb_Genre);

    sub_1B964C730();
    if (v80)
    {
    }
  }

  v102 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__characterNames[0];
  v103 = v137;
  swift_beginAccess();
  if (*(*(v102 + v103) + 16))
  {

    sub_1B964C6E0();
    if (v80)
    {
    }
  }

  v104 = (v137 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__siribaseID);
  swift_beginAccess();
  v105 = *v104;
  v106 = v104[1];
  v107 = HIBYTE(v106) & 0xF;
  if ((v106 & 0x2000000000000000) == 0)
  {
    v107 = v105 & 0xFFFFFFFFFFFFLL;
  }

  if (v107)
  {

    sub_1B964C700();
    if (v80)
    {
    }
  }

  v108 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__directors[0];
  v109 = v137;
  swift_beginAccess();
  if (*(*(v108 + v109) + 16))
  {

    sub_1B964C6E0();
    if (v80)
    {
    }
  }

  v110 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__trailersV2;
  v111 = v137;
  swift_beginAccess();
  if (*(*(v111 + v110) + 16))
  {
    type metadata accessor for Tvpb_TrailerV2(0);
    sub_1B8CD2180(&qword_1EBABD6E8, type metadata accessor for Tvpb_TrailerV2);

    sub_1B964C730();
    if (v80)
    {
    }
  }

  v112 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__castAndCrew;
  v113 = v137;
  swift_beginAccess();
  if (*(*(v113 + v112) + 16))
  {
    type metadata accessor for Tvpb_CastAndCrew(0);
    sub_1B8CD2180(&qword_1EBABD6F0, type metadata accessor for Tvpb_CastAndCrew);

    sub_1B964C730();
    if (v80)
    {
    }
  }

  v114 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__boost;
  v115 = v137;
  swift_beginAccess();
  if (*(v115 + v114) == 1)
  {
    result = sub_1B964C670();
    if (v80)
    {
      return result;
    }
  }

  v116 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__engTokens[0];
  v117 = v137;
  swift_beginAccess();
  if (!*(*(v116 + v117) + 16))
  {
    goto LABEL_134;
  }

  sub_1B964C6E0();
  if (v80)
  {
  }

LABEL_134:
  v118 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isAnnTier;
  v119 = v137;
  swift_beginAccess();
  if (*(v119 + v118) != 1 || (result = sub_1B964C670(), !v80))
  {
    v120 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isIm;
    v121 = v137;
    swift_beginAccess();
    if (*(v121 + v120) != 1 || (result = sub_1B964C670(), !v80))
    {
      v122 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isStereo;
      v123 = v137;
      swift_beginAccess();
      if (*(v123 + v122) != 1 || (result = sub_1B964C670(), !v80))
      {
        v124 = (v137 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__kgInternalID);
        result = swift_beginAccess();
        v125 = *v124;
        v126 = v124[1];
        v127 = HIBYTE(v126) & 0xF;
        if ((v126 & 0x2000000000000000) == 0)
        {
          v127 = v125 & 0xFFFFFFFFFFFFLL;
        }

        if (v127)
        {

          sub_1B964C700();
        }
      }
    }
  }

  return result;
}