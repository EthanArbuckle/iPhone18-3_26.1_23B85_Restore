uint64_t sub_1A468FAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (a1 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__disambiguationSession);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  *v9 = a2;
  v9[1] = a3;
  v9[2] = a4;
  v9[3] = a5;
  sub_1A40C7F38(a2, a3);
  return sub_1A3DAECB8(v10, v11);
}

void (*sub_1A468FB80(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1080))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A469B4A4(&qword_1EB125430, type metadata accessor for GenerativeStoryAmbiguityManager);
  sub_1A52415F4();

  v4[7] = sub_1A468F7CC();
  return sub_1A468FCD0;
}

uint64_t sub_1A468FCDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 792))();
  *a2 = result;
  return result;
}

uint64_t sub_1A468FD30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  KeyPath = swift_getKeyPath();
  v6[2] = v3;
  v6[3] = v2;
  (*(*v3 + 1088))(KeyPath, sub_1A469B5E4, v6, MEMORY[0x1E69E7CA8] + 8);
}

void sub_1A468FDF4()
{
  swift_getKeyPath();
  (*(*v0 + 1080))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A468FE80(uint64_t a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 1088))();
}

void sub_1A468FF28(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__userSuggestionByTokenString;
  swift_beginAccess();
  *(a1 + v4) = a2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A468FFA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 840))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4690060()
{
  swift_getKeyPath();
  (*(*v0 + 1080))();
}

uint64_t sub_1A46900DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 888))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4690184(uint64_t a1, void *a2)
{
  if (*(v2 + *a2) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 1088))(v4);
  }
}

uint64_t sub_1A469028C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager____lazy_storage___appleMusicUnavailableHandler;
  if (*(v0 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager____lazy_storage___appleMusicUnavailableHandler))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager____lazy_storage___appleMusicUnavailableHandler);
  }

  else
  {
    type metadata accessor for GenerativeStoryAppleMusicUnavailableHandler();
    v2 = sub_1A470E13C();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t GenerativeStoryAmbiguityManager.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  GenerativeStoryAmbiguityManager.init(delegate:)(a1, a2);
  return v4;
}

uint64_t GenerativeStoryAmbiguityManager.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 32) = 0;
  v5 = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__currentlyResolvingAmbiguity;
  v6 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  (*(*(v6 - 8) + 56))(v3 + v5, 1, 1, v6);
  v7 = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__forceDisambiguatedTexts) = sub_1A4699900(MEMORY[0x1E69E7CC0]);
  *(v3 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__currentPeoplePickerSelection) = v7;
  v8 = MEMORY[0x1E69E7CC8];
  *(v3 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__tokenToPeoplePickerSelection) = MEMORY[0x1E69E7CC8];
  *(v3 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__selectedLocationAssetsUUIDs) = 0;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__isPresentingPeoplePicker) = 0;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__isPresentingEventPicker) = 0;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__isPresentingLocationsPicker) = 0;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__unresolvedAmbiguityData) = v7;
  v9 = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager_logger;
  v10 = sub_1A3C4A780();
  v11 = sub_1A5246F24();
  (*(*(v11 - 8) + 16))(v3 + v9, v10, v11);
  v12 = (v3 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__disambiguationSession);
  *v12 = 0u;
  v12[1] = 0u;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__userSuggestionByTokenString) = v8;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager____lazy_storage___appleMusicUnavailableHandler) = 0;
  sub_1A5241604();
  *(v3 + 24) = a2;
  swift_unknownObjectUnownedInit();
  type metadata accessor for GenerativeStoryEventAmbiguityDataSource();
  *(v3 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__eventAmbiguityDataSource) = sub_1A3FFECB0();
  type metadata accessor for GenerativeStoryDateAmbiguityDataSource(0);
  *(v3 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__dateAmbiguityDataSource) = GenerativeStoryDateAmbiguityDataSource.__allocating_init()();
  sub_1A52415B4();
  sub_1A3C52C70(0, &qword_1EB126860);
  v13 = [swift_getObjCClassFromMetadata() sharedInstance];
  LODWORD(v10) = [v13 enableLocationDisambiguation];

  if (v10)
  {
    sub_1A52415B4();
  }

  if ([objc_opt_self() isMemoryCreationTimeEventDisambiguationEnabled])
  {
    sub_1A52415B4();
    sub_1A52415B4();
  }

  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1A4690674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v83 = a4;
  v86 = a1;
  v87 = a2;
  v6 = MEMORY[0x1E69E6720];
  sub_1A4699E4C(0, &unk_1EB128BE8, MEMORY[0x1E69DBEC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v81 = v65 - v8;
  v80 = type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  MEMORY[0x1EEE9AC00](v80);
  v79 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v78 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v77 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v89 = v65 - v13;
  v90 = sub_1A5244FE4();
  v14 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v16 = v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A52444C4();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v67 = v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v69 = v65 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v68 = v65 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v70 = v65 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v82 = v65 - v27;
  v66 = v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v65 - v30;
  sub_1A4699E4C(0, &qword_1EB130318, MEMORY[0x1E69C0EC8], v6);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v73 = v65 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = v65 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = v65 - v38;
  v40 = [objc_opt_self() isMemoryCreationTimeEventDisambiguationEnabled];
  v41 = *(*v4 + 960);
  v76 = v4;
  result = v41(a3, v40);
  v43 = *(result + 16);
  v88 = v18;
  v85 = v43;
  v75 = v39;
  if (!v43)
  {

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v84 = v36;
  v44 = v17;
  v45 = result;
  v46 = 0;
  v47 = (v14 + 8);
  while (v46 < *(v45 + 16))
  {
    v48 = v45;
    v49 = v44;
    (*(v88 + 16))(v31, v45 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v46, v44);
    sub_1A5244484();
    v50 = sub_1A47C04C0();
    (*v47)(v16, v90);
    if (v50)
    {
      v52 = v88;
      v53 = v75;
      (*(v88 + 32))(v75, v31, v44);
      v51 = 0;
      v54 = v84;
LABEL_9:
      (*(v52 + 56))(v53, v51, 1, v49);
      sub_1A469B324(v53, v54, &qword_1EB130318, MEMORY[0x1E69C0EC8], MEMORY[0x1E69E6720], sub_1A4699E4C);
      v55 = *(v52 + 48);
      v72 = v52 + 48;
      v71 = v55;
      v56 = v55(v54, 1, v49);
      v74 = v49;
      if (v56 == 1)
      {
        sub_1A3C2CB78(v54, &qword_1EB130318, MEMORY[0x1E69C0EC8], MEMORY[0x1E69E6720], sub_1A4699E4C);
      }

      else
      {

        v57 = *(v52 + 32);
        v58 = v82;
        v57(v82, v54, v49);
        sub_1A4699E4C(0, &qword_1EB13FD78, MEMORY[0x1E69C0EC8], MEMORY[0x1E69E6F90]);
        v59 = (*(v52 + 80) + 32) & ~*(v52 + 80);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_1A52F8E10;
        v57((v60 + v59), v58, v49);
      }

      if (v83)
      {
        v61 = v83;
      }

      else
      {
        v61 = MEMORY[0x1E69E7CC0];
      }

      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v63 = v86;
      v64 = v87;
      v65[-6] = v76;
      v65[-5] = v63;
      v65[-4] = v64;
      v65[-3] = v61;
      v65[-2] = 0;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    ++v46;
    result = (*(v18 + 8))(v31, v44);
    v45 = v48;
    if (v85 == v46)
    {
      v51 = 1;
      v52 = v88;
      v53 = v75;
      v54 = v84;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A46916B8(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v36 = type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  MEMORY[0x1EEE9AC00](v36);
  v32 = sub_1A52444C4();
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524BEE4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BF64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v27 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1A524BEC4();
  v23[8] = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v23[7] = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1A524BFC4();
  v26 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v23[6] = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v25 = v23 - v13;
  sub_1A3F52CD8();
  v37 = *(v14 - 8);
  v38 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v35 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4699E4C(0, &qword_1EB12EE60, sub_1A3F52CD8, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  MEMORY[0x1EEE9AC00](v17);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23[1] = v8;
    v23[2] = v6;
    v23[3] = v7;
    v23[4] = v4;
    v23[5] = v3;
    v28 = result;
    v19 = sub_1A5246F04();
    v20 = sub_1A524D264();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1A3C1C000, v19, v20, "Apple Music unavailability was resolved, automatically restarting generation", v21, 2u);
      MEMORY[0x1A590EEC0](v21, -1, -1);
    }

    (*(*v28 + 688))();
    v37 += 48;
    v22 = v30 + 32;
    v30 += 8;
    v31 = v22;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}

uint64_t sub_1A469224C(uint64_t a1, char a2)
{
  sub_1A4699E4C(0, &qword_1EB12EE20, MEMORY[0x1E69C14E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v89 = (&v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v94 = &v88 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v96 = &v88 - v9;
  v10 = sub_1A5244FE4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v90 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v92 = (&v88 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v88 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v88 = &v88 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v93 = &v88 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v100 = &v88 - v23;
  v104 = sub_1A52444C4();
  MEMORY[0x1EEE9AC00](v104);
  v25 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v88 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v102 = &v88 - v30;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v88 - v34;
  if (a2)
  {
    v36 = *(a1 + 16);
    if (v36)
    {
      v38 = *(v32 + 16);
      v37 = v32 + 16;
      v99 = v38;
      v97 = ((*(v37 + 64) + 32) & ~*(v37 + 64));
      v39 = v97 + a1;
      v40 = *(v37 + 56);
      v41 = (v11 + 8);
      v95 = (v11 + 88);
      v91 = *MEMORY[0x1E69C1368];
      LODWORD(v90) = *MEMORY[0x1E69C1328];
      v92 = (v37 - 8);
      v103 = v37;
      v101 = (v37 + 16);
      v42 = MEMORY[0x1E69E7CC0];
      v98 = v40;
      (v38)(v35, v39, v104, v33);
      while (1)
      {
        v45 = v100;
        sub_1A5244484();
        v46 = sub_1A47C096C();
        v47 = *v41;
        (*v41)(v45, v10);
        if (v46 & 1) != 0 || ((v48 = v100, sub_1A5244484(), v49 = sub_1A47C0BC8(), v47(v48, v10), v50 = v96, (v49) || (v51 = v93, sub_1A5244484(), v52 = *v95, v53 = (*v95)(v51, v10), v47(v51, v10), v50 = v94, v53 == v91) || (v54 = v88, sub_1A5244484(), v55 = v52(v54, v10), v47(v54, v10), v50 = v89, v55 == v90)) && (sub_1A52444A4(), v56 = sub_1A5245604(), v57 = (*(*(v56 - 8) + 48))(v50, 1, v56), sub_1A3C2CB78(v50, &qword_1EB12EE20, MEMORY[0x1E69C14E0], MEMORY[0x1E69E6720], sub_1A4699E4C), v57 == 1))
        {
          v58 = *v101;
          (*v101)(v102, v35, v104);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v105 = v42;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1A46976F0(0, *(v42 + 16) + 1, 1);
            v42 = v105;
          }

          v61 = *(v42 + 16);
          v60 = *(v42 + 24);
          if (v61 >= v60 >> 1)
          {
            sub_1A46976F0(v60 > 1, v61 + 1, 1);
            v42 = v105;
          }

          *(v42 + 16) = v61 + 1;
          v44 = v98;
          v58(v97 + v42 + v61 * v98, v102, v104);
        }

        else
        {
          (*v92)(v35, v104);
          v44 = v98;
        }

        v39 += v44;
        if (!--v36)
        {
          break;
        }

        (v99)(v35, v39, v104, v43);
      }

      return v42;
    }

    return MEMORY[0x1E69E7CC0];
  }

  v62 = *(a1 + 16);
  if (!v62)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v64 = *(v32 + 16);
  v63 = v32 + 16;
  v97 = v64;
  v93 = ((*(v63 + 64) + 32) & ~*(v63 + 64));
  v65 = &v93[a1];
  v66 = *(v63 + 56);
  v99 = (v11 + 88);
  LODWORD(v95) = *MEMORY[0x1E69C1368];
  v94 = (v11 + 8);
  v91 = *MEMORY[0x1E69C1328];
  v89 = (v63 - 8);
  v103 = v63;
  v101 = (v63 + 16);
  v42 = MEMORY[0x1E69E7CC0];
  v98 = v10;
  v96 = v66;
  do
  {
    v102 = v62;
    v97(v28, v65, v104, v33);
    sub_1A5244484();
    v67 = *v99;
    v68 = (*v99)(v17, v10);
    v69 = v10;
    v70 = *v94;
    (*v94)(v17, v69);
    if (v68 == v95 || (v71 = v28, v72 = v25, v73 = v17, v74 = v92, sub_1A5244484(), v75 = v67(v74, v69), v76 = v74, v17 = v73, v25 = v72, v28 = v71, v70(v76, v69), v75 == v91) || (v77 = v90, sub_1A5244484(), v78 = sub_1A47C0BC8(), v70(v77, v69), (v78 & 1) != 0) || (v79 = v100, sub_1A5244484(), v80 = sub_1A47C096C(), v70(v79, v69), (v80 & 1) != 0))
    {
      v81 = *v101;
      (*v101)(v25, v28, v104);
      v82 = swift_isUniquelyReferenced_nonNull_native();
      v105 = v42;
      if ((v82 & 1) == 0)
      {
        sub_1A46976F0(0, *(v42 + 16) + 1, 1);
        v42 = v105;
      }

      v83 = v102;
      v85 = *(v42 + 16);
      v84 = *(v42 + 24);
      if (v85 >= v84 >> 1)
      {
        sub_1A46976F0(v84 > 1, v85 + 1, 1);
        v42 = v105;
      }

      *(v42 + 16) = v85 + 1;
      v86 = v96;
      v81(&v93[v42 + v85 * v96], v25, v104);
    }

    else
    {
      (*v89)(v28, v104);
      v86 = v96;
      v83 = v102;
    }

    v65 += v86;
    v62 = v83 - 1;
    v10 = v98;
  }

  while (v62);
  return v42;
}

void (*sub_1A4692B28())(void *a1)
{
  result = sub_1A468FB80(v5);
  if (!*(v1 + 8))
  {
    return (result)(v5, 0);
  }

  v2 = *(v1 + 24);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 24) = v4;
    return (result)(v5, 0);
  }

  return result;
}

uint64_t sub_1A4692BA8()
{
  swift_getKeyPath();
  v2 = v0;
  v3 = 0u;
  v4 = 0u;
  (*(*v0 + 1088))();
}

uint64_t sub_1A4692C50(void *a1)
{
  v11 = sub_1A4699900(MEMORY[0x1E69E7CC0]);
  v2 = *MEMORY[0x1E6978F98];
  v3 = [a1 length];
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = &v11;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1A4699F14;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1A40919A8;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A40912AC;
  aBlock[3] = &block_descriptor_244;
  v6 = _Block_copy(aBlock);
  v7 = a1;

  [v7 enumerateAttribute:v2 inRange:0 options:v3 usingBlock:{0, v6}];

  _Block_release(v6);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v9 = v11;

    return v9;
  }

  return result;
}

uint64_t sub_1A4692FE0()
{
  v1 = (*(*v0 + 984))();
  (*(*v0 + 1008))(v1);

  result = (*(*v0 + 344))(v2);
  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  if ((v6 & *(result + 64)) != 0)
  {
LABEL_7:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  while (1)
  {
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      return result;
    }

    if (v7 >= ((v5 + 63) >> 6))
    {
      break;
    }

    ++v4;
    if (*(result + 64 + 8 * v7))
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_1A4693208(uint64_t a1)
{
  v3 = sub_1A52414C4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A5241494();
  v10 = v6;
  v7 = sub_1A469A40C(a1, sub_1A469A0C4, v9, sub_1A469A0D0, sub_1A469A0D0);
  (*(*v1 + 352))(v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1A469335C(void *a1)
{
  v2 = sub_1A52414C4();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 QUToken];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 entityCategoryTypes];

    sub_1A5241444();
    sub_1A469B4A4(&qword_1EB12AF60, MEMORY[0x1E6969B50]);
    v10 = sub_1A524CFE4();
    (*(v3 + 8))(v6, v2);
    if (v10)
    {
      return 1;
    }
  }

  result = [a1 suggestion];
  if (result)
  {
    v12 = result;
    if ([result categoriesType] == 7)
    {

      return 1;
    }

    else
    {
      v13 = [v12 categoriesType];

      return v13 == 9;
    }
  }

  return result;
}

uint64_t sub_1A469358C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  sub_1A4699E4C(0, &qword_1EB126008, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v19 = v18 - v5;
  v6 = (*(*v2 + 792))(v4);
  v7 = 0;
  v8 = *(v6 + 64);
  v22 = v6;
  v9 = 1 << *(v6 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v8;
  v18[0] = MEMORY[0x1E69E7CC8];
  v18[1] = v6 + 64;
  v12 = 0;
  if (v11)
  {
LABEL_7:
    v13 = (*(v22 + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v11)))));
    v14 = *v13;
    v15 = v13[1];
    v25 = v20;
    v26 = v21;
    v23 = v14;
    v24 = v15;
    v16 = sub_1A5241284();
    (*(*(v16 - 8) + 56))(v19, 1, 1, v16);
    sub_1A3D5F9DC();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  while (1)
  {
    v7 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v7 >= ((v9 + 63) >> 6))
    {

      return v18[0];
    }

    v11 = *(v6 + 64 + 8 * v7);
    ++v12;
    if (v11)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  __break(1u);
  __break(1u);
  type metadata accessor for _NSRange(0);
  result = sub_1A524EB84();
  __break(1u);
  return result;
}

uint64_t sub_1A46939E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1A4699E4C(0, &qword_1EB130318, MEMORY[0x1E69C0EC8], MEMORY[0x1E69E6720]);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v33[-v8 - 8];
  v10 = *(*v2 + 792);
  v11 = *(v10(v7) + 16);

  if (v11)
  {
    v13 = (v10)(result);
    v14 = sub_1A46989C0(v13);

    v16 = *((v10)(v15) + 16);

    v17 = *(v14 + 16);
    v18 = (*(*v3 + 408))(v33);
    *v19 = MEMORY[0x1E69E7CC0];

    v20 = v18(v33, 0);
    v21 = (*(*v3 + 440))(v20);
    MEMORY[0x1EEE9AC00](v21);
    *(&v32 - 2) = a1;
    *(&v32 - 1) = a2;
    v23 = sub_1A469A40C(v22, sub_1A469A240, (&v32 - 4), sub_1A469A298, sub_1A469A298);

    v24 = (*(*v3 + 448))(v23);
    v25 = (*(*v3 + 840))(v24);
    v26 = sub_1A52444C4();
    (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
    (*(*v25 + 480))(v9);

    sub_1A3C2CB78(v9, &qword_1EB130318, MEMORY[0x1E69C0EC8], MEMORY[0x1E69E6720], sub_1A4699E4C);
    if (v16 == v17)
    {
    }

    else
    {
      v27 = sub_1A5246F04();
      v28 = sub_1A524D264();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 134217984;
        *(v29 + 4) = v16 - v17;
        _os_log_impl(&dword_1A3C1C000, v27, v28, "Removing %ld previous applied user suggestions", v29, 0xCu);
        MEMORY[0x1A590EEC0](v29, -1, -1);
      }

      KeyPath = swift_getKeyPath();
      v31 = MEMORY[0x1EEE9AC00](KeyPath);
      *(&v32 - 2) = v3;
      *(&v32 - 1) = v14;
      (*(*v3 + 1088))(v31);
    }
  }

  return result;
}

uint64_t sub_1A4693ED0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A52444C4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A469B0D8(a1, v6, type metadata accessor for GenerativeStoryAmbiguityData.Payload);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = sub_1A469B580(v6, type metadata accessor for GenerativeStoryAmbiguityData.Payload);
    __break(1u);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = sub_1A5244464();
    v13 = v12;
    if (*((*(*v2 + 440))() + 16))
    {
      sub_1A3C5DCA4(v11, v13);
      if (v14)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

void sub_1A4694224(uint64_t a1)
{
  v34 = sub_1A523FBB4();
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A52444C4();
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4699E4C(0, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v31 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*a1 + 392);
  v16 = *(v15(v13) + 16);

  if (v16)
  {
    (*(*a1 + 296))(v17);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_1A3C2CB78(v10, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720], sub_1A4699E4C);
    }

    else
    {
      v18 = v31;
      sub_1A469B2BC(v10, v31, type metadata accessor for GenerativeStoryAmbiguityData);
      sub_1A469B0D8(v18, v5, type metadata accessor for GenerativeStoryAmbiguityData.Payload);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v29 + 32))(v28, v5, v30);
        v22 = sub_1A5244464();
        v24 = v23;
        if (*((*(*a1 + 440))() + 16))
        {
          sub_1A3C5DCA4(v22, v24);
          if (v25)
          {
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }
        }

        (v15)(v26);

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A469B580(v18, type metadata accessor for GenerativeStoryAmbiguityData);
      sub_1A469B580(v5, type metadata accessor for GenerativeStoryAmbiguityData.Payload);
    }

    v19 = sub_1A5246F04();
    v20 = sub_1A524D244();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1A3C1C000, v19, v20, "People picker selection changed but no current ambiguity", v21, 2u);
      MEMORY[0x1A590EEC0](v21, -1, -1);
    }
  }
}

uint64_t sub_1A4694C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4694CE0, v6, v5);
}

uint64_t sub_1A4694CE0()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1A52415B4();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

void sub_1A4694DBC(uint64_t a1)
{
  v2 = type metadata accessor for GenerativeStoryEventSuggestion();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*a1 + 840);
  v8 = *v7(v4);
  v9 = (*(v8 + 264))();

  v10 = *(v9 + 16);

  if (!v10)
  {
    return;
  }

  v12 = (v7)(v11);
  v13 = (*(*v12 + 488))(v12);

  if (v13)
  {
    v15 = (v7)(v14);
    (*(*v15 + 472))(v15);

    v17 = *(v7)(v16);
    v18 = (*(v17 + 264))();

    v37 = MEMORY[0x1E69E7CD0];
    if (*(v18 + 16))
    {
      sub_1A469B0D8(v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v6, type metadata accessor for GenerativeStoryEventSuggestion);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v24 = MEMORY[0x1E69E7CD0];
    v25 = *(MEMORY[0x1E69E7CD0] + 16);
    if (!v25)
    {

      goto LABEL_14;
    }

    v19 = sub_1A3C51BF0(v25, 0);
    v20 = sub_1A3C423E8(&v37, v19 + 4, v25, v24);
    sub_1A3C42540();
    if (v20 == v25)
    {
LABEL_14:
      v26 = objc_allocWithZone(MEMORY[0x1E6978A98]);
      v27 = sub_1A524CA14();

      v28 = [v26 initForPersonalEventFilterWithMomentUUIDs_];

      sub_1A46965F0(v28);
      v29 = v28;
      v30 = sub_1A5246F04();
      v31 = sub_1A524D224();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        *(v32 + 4) = v29;
        *v33 = v29;
        v34 = v29;
        _os_log_impl(&dword_1A3C1C000, v30, v31, "Applied personal event suggestion: %@", v32, 0xCu);
        sub_1A469B580(v33, sub_1A3D3F118);
        MEMORY[0x1A590EEC0](v33, -1, -1);
        MEMORY[0x1A590EEC0](v32, -1, -1);
      }

      v35 = *(v7)();
      (*(v35 + 448))();

      return;
    }

    __break(1u);
  }

  v36 = sub_1A5246F04();
  v21 = sub_1A524D264();
  if (os_log_type_enabled(v36, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1A3C1C000, v36, v21, "Not updating event disambiguation as it has not changed value", v22, 2u);
    MEMORY[0x1A590EEC0](v22, -1, -1);
  }

  v23 = v36;
}

uint64_t sub_1A4695320(uint64_t result)
{
  v1 = 0;
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  if ((v3 & *(result + 56)) != 0)
  {
LABEL_7:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  while (1)
  {
    v4 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return result;
    }

    if (v4 >= ((v2 + 63) >> 6))
    {
      break;
    }

    ++v1;
    if (*(result + 56 + 8 * v4))
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_1A4695424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A46954BC, v6, v5);
}

uint64_t sub_1A46954BC()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1A52415B4();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A4695598(uint64_t *a1)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1A4699E4C(0, &qword_1EB126090, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v64 = &v55 - v4;
  sub_1A4699E4C(0, &qword_1EB130318, MEMORY[0x1E69C0EC8], v2);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v59 = &v55 - v6;
  v60 = type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A52444C4();
  v57 = *(v8 - 8);
  v58 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4699E4C(0, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, v2);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v55 - v11;
  v13 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4699E4C(0, &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents, v2);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v55 - v18;
  v20 = type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents(0);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  v62 = *(*a1 + 888);
  v63 = v25 + 888;
  v26 = v62(v22);
  (*(*v26 + 136))(v26);

  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    return sub_1A3C2CB78(v19, &qword_1EB125158, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents, MEMORY[0x1E69E6720], sub_1A4699E4C);
  }

  v28 = sub_1A469B2BC(v19, v24, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents);
  (*(*a1 + 296))(v28);
  v29 = v24;
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1A3C2CB78(v12, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720], sub_1A4699E4C);
    v30 = v64;
  }

  else
  {
    sub_1A469B2BC(v12, v16, type metadata accessor for GenerativeStoryAmbiguityData);
    v31 = v61;
    sub_1A469B0D8(v16, v61, type metadata accessor for GenerativeStoryAmbiguityData.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v30 = v64;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1A469B580(v16, type metadata accessor for GenerativeStoryAmbiguityData);
      v33 = type metadata accessor for GenerativeStoryAmbiguityData.Payload;
      v34 = v31;
    }

    else
    {
      v36 = v56;
      v35 = v57;
      v37 = v58;
      v38 = (*(v57 + 32))(v56, v31, v58);
      v39 = (*(*a1 + 840))(v38);
      v40 = v59;
      (*(v35 + 16))(v59, v36, v37);
      (*(v35 + 56))(v40, 0, 1, v37);
      (*(*v39 + 480))(v40);

      sub_1A3C2CB78(v40, &qword_1EB130318, MEMORY[0x1E69C0EC8], MEMORY[0x1E69E6720], sub_1A4699E4C);
      (*(v35 + 8))(v36, v37);
      v33 = type metadata accessor for GenerativeStoryAmbiguityData;
      v34 = v16;
    }

    sub_1A469B580(v34, v33);
  }

  sub_1A469B324(v29 + *(v20 + 20), v30, &qword_1EB126090, MEMORY[0x1E6968278], MEMORY[0x1E69E6720], sub_1A4699E4C);
  v41 = sub_1A5240604();
  v42 = sub_1A5240664();
  v43 = *(v42 - 8);
  v44 = 0;
  if ((*(v43 + 48))(v30, 1, v42) != 1)
  {
    v44 = sub_1A5240604();
    (*(v43 + 8))(v30, v42);
  }

  v45 = [objc_allocWithZone(MEMORY[0x1E6978A98]) initForDateFilterWithStartDateComponents:v41 endDateComponents:v44];

  sub_1A46965F0(v45);
  v46 = v45;
  v47 = sub_1A5246F04();
  v48 = sub_1A524D224();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = v29;
    v51 = swift_slowAlloc();
    *v49 = 138412290;
    *(v49 + 4) = v46;
    *v51 = v46;
    v52 = v46;
    _os_log_impl(&dword_1A3C1C000, v47, v48, "Applied date components suggestion: %@", v49, 0xCu);
    sub_1A469B580(v51, sub_1A3D3F118);
    v53 = v51;
    v29 = v50;
    MEMORY[0x1A590EEC0](v53, -1, -1);
    MEMORY[0x1A590EEC0](v49, -1, -1);
  }

  v54 = (v62)();
  (*(*v54 + 176))(v54);

  return sub_1A469B580(v29, type metadata accessor for GenerativeStoryDateAmbiguityDataSource.SelectedDateComponents);
}

uint64_t sub_1A4695F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4695FF4, v6, v5);
}

uint64_t sub_1A4695FF4()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1A52415B4();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

void sub_1A46960D0(uint64_t a1)
{
  if ((*(*a1 + 488))())
  {
    v2 = objc_allocWithZone(MEMORY[0x1E6978A98]);
    v3 = sub_1A524CF34();

    v4 = [v2 initForLocationFilterWithAssetUUIDs:v3 locationText:0];

    sub_1A46965F0(v4);
    v10 = v4;
    v5 = sub_1A5246F04();
    v6 = sub_1A524D224();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v10;
      *v8 = v10;
      v9 = v10;
      _os_log_impl(&dword_1A3C1C000, v5, v6, "Applied location suggestion: %@", v7, 0xCu);
      sub_1A469B580(v8, sub_1A3D3F118);
      MEMORY[0x1A590EEC0](v8, -1, -1);
      MEMORY[0x1A590EEC0](v7, -1, -1);
    }

    (*(*a1 + 496))(0);
  }
}

uint64_t sub_1A46962DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A4699E4C(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_1A524CCB4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1A524CC54();

  v9 = sub_1A524CC44();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;

  sub_1A3EA52F4(0, 0, v6, a3, v10);
}

uint64_t sub_1A469647C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4696514, v6, v5);
}

uint64_t sub_1A4696514()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1A52415B4();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A46965F0(uint64_t a1)
{
  v2 = v1;
  v35 = a1;
  v3 = type metadata accessor for GenerativeStoryAmbiguityData.Payload(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A52444C4();
  v34 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4699E4C(0, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v36 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  v14 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v1 + 296))(v16);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_1A3C2CB78(v13, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720], sub_1A4699E4C);
  }

  sub_1A469B2BC(v13, v18, type metadata accessor for GenerativeStoryAmbiguityData);
  sub_1A469B0D8(v18, v5, type metadata accessor for GenerativeStoryAmbiguityData.Payload);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_1A469B580(v5, type metadata accessor for GenerativeStoryAmbiguityData.Payload);
    v21 = v35;
  }

  else
  {
    v22 = v34;
    (*(v34 + 32))(v8, v5, v6);
    v37[0] = 2;
    v23 = sub_1A5244464();
    v21 = v35;
    (*(*v1 + 992))(v35, v37, v23, v24);

    v20 = (*(v22 + 8))(v8, v6);
  }

  v38 = 0;
  v25 = (*v1 + 688);
  v26 = *v25;
  v27 = *((*v25)(v20) + 16);

  if (v27)
  {
    v29 = v26(v28);
    MEMORY[0x1EEE9AC00](v29);
    *(&v34 - 4) = v18;
    *(&v34 - 3) = v21;
    *(&v34 - 2) = &v38;
    v30 = sub_1A3FC5364(sub_1A469AAF0, (&v34 - 6), v29);

    (*(*v2 + 696))(v30);
  }

  else
  {
    swift_unknownObjectUnownedLoadStrong();
    v31 = v2[3];
    ObjectType = swift_getObjectType();
    (*(v31 + 16))(ObjectType, v31);
    swift_unknownObjectRelease();
  }

  v33 = v36;
  (*(v15 + 56))(v36, 1, 1, v14);
  (*(*v2 + 304))(v33);
  return sub_1A469B580(v18, type metadata accessor for GenerativeStoryAmbiguityData);
}

uint64_t GenerativeStoryAmbiguityManager.deinit()
{
  sub_1A3C6B94C(v0 + 16);
  sub_1A3C2CB78(v0 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__currentlyResolvingAmbiguity, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720], sub_1A4699E4C);

  v1 = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager_logger;
  v2 = sub_1A5246F24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1A3DAECB8(*(v0 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__disambiguationSession), *(v0 + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__disambiguationSession + 8));

  v3 = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t GenerativeStoryAmbiguityManager.__deallocating_deinit()
{
  GenerativeStoryAmbiguityManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1A4696ECC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  if ((v3 & *(result + 64)) != 0)
  {
LABEL_10:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v4 = 0;
  while (1)
  {
    v5 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v5 >= ((v2 + 63) >> 6))
    {
      return 1;
    }

    ++v4;
    if (*(result + 64 + 8 * v5))
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_1A469704C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A523FBB4();
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v7 = 0;
    v8 = *(a1 + 64);
    v16 = a1 + 64;
    v9 = 1 << *(a1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & v8;
    v12 = (v9 + 63) >> 6;
    v21 = v24 + 8;
    v22 = v24 + 16;
    v17 = v12;
    v18 = a1;
    if (v11)
    {
      v20 = (v11 - 1) & v11;
      goto LABEL_12;
    }

    v13 = 0;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        return;
      }

      v14 = *(v16 + 8 * v7);
      ++v13;
      if (v14)
      {
        v20 = (v14 - 1) & v14;
LABEL_12:
        v19 = v7;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
    __break(1u);
    __break(1u);
  }
}

unint64_t sub_1A46973E4(uint64_t a1, uint64_t a2)
{
  sub_1A524EC94();
  MEMORY[0x1A590A010](a1);
  MEMORY[0x1A590A010](a2);
  v4 = sub_1A524ECE4();

  return sub_1A4697464(a1, a2, v4);
}

unint64_t sub_1A4697464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_1A46974DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A523FBB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_1A469B4A4(&qword_1EB1260F0, MEMORY[0x1E6985D18]);
    v22 = sub_1A524C594();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

size_t sub_1A46976F0(size_t a1, int64_t a2, char a3)
{
  result = sub_1A4697740(a1, a2, a3, *v3, &qword_1EB13FD78, MEMORY[0x1E69C0EC8], MEMORY[0x1E69C0EC8]);
  *v3 = result;
  return result;
}

size_t sub_1A4697740(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A4699E4C(0, a5, a6, MEMORY[0x1E69E6F90]);
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

uint64_t sub_1A4697934(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A469AC84();
  v37 = a2;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + v22;
      v38 = *v26;
      v27 = *(v26 + 8);
      if ((v37 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      result = sub_1A524ECE4();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v7 + 56) + v16;
      *v18 = v38;
      *(v18 + 8) = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A4697BEC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A469ACE4();
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v30 = *(*(v5 + 48) + 16 * v19);
      v20 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v21 = v20;
      }

      sub_1A524EC94();
      MEMORY[0x1A590A010](v30);
      MEMORY[0x1A590A010](*(&v30 + 1));
      result = sub_1A524ECE4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v30;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1A4697E78(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1A469ABEC();
  v34 = a2;
  result = sub_1A524E774();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      result = sub_1A524ECE4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_1A4698114(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A3C5DCA4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A452AFAC(v16, a4 & 1);
      v11 = sub_1A3C5DCA4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1A524EB84();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1A452B25C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    v24 = (v21[6] + 16 * v11);
    *v24 = a2;
    v24[1] = a3;
    *(v21[7] + 8 * v11) = a1;
    v25 = v21[2];
    v15 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v15)
    {
      v21[2] = v26;

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_17;
  }

  v22 = v21[7];
  v23 = *(v22 + 8 * v11);
  *(v22 + 8 * v11) = a1;
}

void sub_1A469828C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1A3C5DCA4(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1A4697934(v18, a5 & 1);
      v13 = sub_1A3C5DCA4(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_1A524EB84();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_1A4698598();
      v13 = v21;
    }
  }

  v23 = *v6;
  if ((v19 & 1) == 0)
  {
    v23[(v13 >> 6) + 8] |= 1 << v13;
    v26 = (v23[6] + 16 * v13);
    *v26 = a3;
    v26[1] = a4;
    v27 = v23[7] + 16 * v13;
    *v27 = a1;
    *(v27 + 8) = a2;
    v28 = v23[2];
    v17 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v17)
    {
      v23[2] = v29;

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_17;
  }

  v24 = v23[7] + 16 * v13;
  v25 = *(v24 + 8);
  *v24 = a1;
  *(v24 + 8) = a2;
}

uint64_t sub_1A469841C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A3C5DCA4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A4697E78(v16, a4 & 1);
      v11 = sub_1A3C5DCA4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1A469885C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    v23 = (v21[6] + 16 * v11);
    *v23 = a2;
    v23[1] = a3;
    *(v21[7] + 8 * v11) = a1;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_17;
  }

  *(v21[7] + 8 * v11) = a1;
}

void *sub_1A4698598()
{
  v1 = v0;
  sub_1A469AC84();
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = 16 * (v13 | (v8 << 6));
        v17 = (*(v2 + 48) + v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = *(v2 + 56) + v16;
        v21 = *v20;
        v22 = *(v20 + 8);
        v23 = (*(v4 + 48) + v16);
        *v23 = v19;
        v23[1] = v18;
        v24 = *(v4 + 56) + v16;
        *v24 = v21;
        *(v24 + 8) = v22;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }

  return result;
}

id sub_1A4698708()
{
  v1 = v0;
  sub_1A469ACE4();
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1A469885C()
{
  v1 = v0;
  sub_1A469ABEC();
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_17;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_18;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = (*(v2 + 48) + 16 * v16);
        v18 = v17[1];
        v19 = *(*(v2 + 56) + 8 * v16);
        v20 = (*(v4 + 48) + 16 * v16);
        *v20 = *v17;
        v20[1] = v18;
        *(*(v4 + 56) + 8 * v16) = v19;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A46989C0(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1A4698B20(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1A4698CF8(v8, v4, v2);
  result = MEMORY[0x1A590EEC0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1A4698B20(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    result = sub_1A3F5CDC4();
    if (result)
    {
      *(v4 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_1A46991DC(v4, a2, v5, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return sub_1A46991DC(v4, a2, v5, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1A4698C58(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a6(result, a2, a3);

    return v10;
  }

  return result;
}

void *sub_1A4698CF8(void *result, uint64_t a2, uint64_t a3)
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

    v6 = sub_1A4698B20(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1A4698D70(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1A469ADA0();
  result = sub_1A524E794();
  if (a2 < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a1;
  }

  if (v8)
  {
LABEL_13:
    sub_1A524EC94();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v9 = 0;
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      return result;
    }

    ++v9;
    if (a1[v10])
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1A4698FA4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1A469ABEC();
  result = sub_1A524E794();
  if (a2 < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a1;
  }

  if (v8)
  {
LABEL_13:
    sub_1A524EC94();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v9 = 0;
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      return result;
    }

    ++v9;
    if (a1[v10])
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1A46991DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1A469AC84();
  result = sub_1A524E794();
  if (a2 < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a1;
  }

  if (v8)
  {
LABEL_13:
    sub_1A524EC94();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v9 = 0;
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      return result;
    }

    ++v9;
    if (a1[v10])
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1A4699430(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v3 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v20 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E6720];
  sub_1A4699E4C(0, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  sub_1A469B4EC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 56);
  sub_1A469B324(a1, v12, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, v6, sub_1A4699E4C);
  sub_1A469B324(v21, &v12[v14], &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, v6, sub_1A4699E4C);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) != 1)
  {
    sub_1A469B324(v12, v9, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720], sub_1A4699E4C);
    if (v15(&v12[v14], 1, v3) != 1)
    {
      v17 = v20;
      sub_1A469B2BC(&v12[v14], v20, type metadata accessor for GenerativeStoryAmbiguityData);
      sub_1A469B4A4(&qword_1EB12FBF0, type metadata accessor for GenerativeStoryAmbiguityData);
      v18 = sub_1A524C594();
      sub_1A469B580(v17, type metadata accessor for GenerativeStoryAmbiguityData);
      sub_1A469B580(v9, type metadata accessor for GenerativeStoryAmbiguityData);
      sub_1A3C2CB78(v12, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720], sub_1A4699E4C);
      v16 = v18 ^ 1;
      return v16 & 1;
    }

    sub_1A469B580(v9, type metadata accessor for GenerativeStoryAmbiguityData);
    goto LABEL_6;
  }

  if (v15(&v12[v14], 1, v3) != 1)
  {
LABEL_6:
    sub_1A469B580(v12, sub_1A469B4EC);
    v16 = 1;
    return v16 & 1;
  }

  sub_1A3C2CB78(v12, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720], sub_1A4699E4C);
  v16 = 0;
  return v16 & 1;
}

uint64_t sub_1A4699840(uint64_t a1, uint64_t a2)
{
  sub_1A4699E4C(0, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4699900(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A469ADA0();
    sub_1A524E794();

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return MEMORY[0x1E69E7CC8];
}

void sub_1A4699A90()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__selectedLocationAssetsUUIDs;
  swift_beginAccess();
  *(v2 + v3) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4699B5C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore31GenerativeStoryAmbiguityManager__unresolvedAmbiguityData) = *(v0 + 24);
  swift_unknownObjectUnownedLoadStrong();
  swift_getObjectType();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t (*sub_1A4699CD4())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1A469B398;
}

uint64_t (*sub_1A4699D34())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1A469B1E4;
}

uint64_t (*sub_1A4699D94())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1A469B000;
}

uint64_t (*sub_1A4699DF4())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1A469AF28;
}

void sub_1A4699E4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A4699EB0()
{
  v1 = *(sub_1A52444C4() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1A46916B8(v2, v3);
}

void sub_1A4699F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = MEMORY[0x1E69E7CA0];
  sub_1A469B324(a1, v16, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A469B140);
  if (v16[3])
  {
    sub_1A3C52C70(0, &qword_1EB13CD38);
    if (swift_dynamicCast())
    {
      if ([v15 ambiguityType])
      {
      }

      else
      {
        v9 = [v6 attributedSubstringFromRange_];
        v10 = [v9 string];
        v11 = sub_1A524C674();
        v13 = v12;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16[0] = *v7;
        *v7 = 0x8000000000000000;
        sub_1A4698114(v15, v11, v13, isUniquelyReferenced_nonNull_native);

        *v7 = v16[0];
      }
    }
  }

  else
  {
    sub_1A3C2CB78(v16, &qword_1EB126130, v8 + 8, MEMORY[0x1E69E6720], sub_1A469B140);
  }
}

uint64_t *sub_1A469A0D0(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = 1 << *(a3 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  if ((v4 & *(a3 + 64)) != 0)
  {
LABEL_8:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v5 = 0;
  while (1)
  {
    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v6 >= ((v3 + 63) >> 6))
    {
      return sub_1A4698D70(result, a2, 0, a3);
    }

    ++v5;
    if (*(a3 + 64 + 8 * v6))
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_1A469A298(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = 1 << *(a3 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  if ((v4 & *(a3 + 64)) != 0)
  {
LABEL_8:
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v5 = 0;
  while (1)
  {
    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v6 >= ((v3 + 63) >> 6))
    {
      return sub_1A4698FA4(result, a2, 0, a3);
    }

    ++v5;
    if (*(a3 + 64 + 8 * v6))
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A469A40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, unint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t))
{
  v9 = a1;
  v18[1] = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 32);
  v11 = ((1 << v10) + 63) >> 6;
  if ((v10 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v13 = v18 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = a4(v13, v11, v9, a2, a3);
    if (v5)
    {
      return swift_willThrow();
    }

    return result;
  }

  v16 = swift_slowAlloc();
  v17 = sub_1A4698C58(v16, v11, v9, a2, a3, a5);
  result = MEMORY[0x1A590EEC0](v16, -1, -1);
  if (!v5)
  {
    return v17;
  }

  return result;
}

void sub_1A469A5A4()
{
  sub_1A4699E4C(319, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1A5246F24();
    if (v1 <= 0x3F)
    {
      sub_1A5241614();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1A469AAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = type metadata accessor for GenerativeStoryAmbiguityData(0);
  v9 = *(v8 + 24);
  v11 = *(a1 + v9);
  v10 = *(a1 + v9 + 8);
  v12 = (v6 + v9);
  v14 = *v12;
  v13 = v12[1];
  if (v11 == v14 && v10 == v13)
  {
    GenerativeStoryAmbiguityData.copy(withAppliedDisambiguation:)(v5, a2);
  }

  v16 = v8;
  v21 = *(a1 + *(v8 + 36));
  v20 = 0;
  if (static GenerativeStoryAmbiguityData.MenuAutoPresentationState.== infix(_:_:)(&v21, &v20) && (*v7 & 1) == 0)
  {
    *v7 = 1;
    v18 = *(v16 + 20);
    v19 = 1;
    sub_1A47BF4FC(a1 + v18, &v19, a2);
  }

  return sub_1A469B0D8(a1, a2, type metadata accessor for GenerativeStoryAmbiguityData);
}

void sub_1A469ABEC()
{
  if (!qword_1EB13FD80)
  {
    sub_1A4699E4C(255, &qword_1EB120D40, MEMORY[0x1E6985D18], MEMORY[0x1E69E62F8]);
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13FD80);
    }
  }
}

void sub_1A469AC84()
{
  if (!qword_1EB13FD88)
  {
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13FD88);
    }
  }
}

void sub_1A469ACE4()
{
  if (!qword_1EB13FD90)
  {
    type metadata accessor for _NSRange(255);
    sub_1A3C52C70(255, &qword_1EB1209D8);
    sub_1A469B4A4(&qword_1EB120568, type metadata accessor for _NSRange);
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13FD90);
    }
  }
}

void sub_1A469ADA0()
{
  if (!qword_1EB13CD80)
  {
    sub_1A3C52C70(255, &qword_1EB13CD38);
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13CD80);
    }
  }
}

uint64_t sub_1A469AE18(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A4699E4C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A469AE98()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_unknownObjectUnownedLoadStrong();
    v2 = *(v1 + 24);

    ObjectType = swift_getObjectType();
    (*(v2 + 24))(ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1A469AF60(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3CA8098;

  return sub_1A469647C(a1, v5, v6, v4);
}

uint64_t sub_1A469B038(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3CA8098;

  return sub_1A4695424(a1, v5, v6, v4);
}

uint64_t sub_1A469B0D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A469B140(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A469B190(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A469B21C(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3D60150;

  return sub_1A4695F5C(a1, v5, v6, v4);
}

uint64_t sub_1A469B2BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A469B324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1A469B3D0(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3CA8098;

  return sub_1A4694C48(a1, v5, v6, v4);
}

uint64_t sub_1A469B4A4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A469B4EC()
{
  if (!qword_1EB13FD98)
  {
    sub_1A4699E4C(255, &qword_1EB129A38, type metadata accessor for GenerativeStoryAmbiguityData, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13FD98);
    }
  }
}

uint64_t sub_1A469B580(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A469B638(uint64_t a1)
{
  sub_1A469BF4C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A469BFA4();
  v5 = sub_1A524D334();
  v6 = *(a1 + 16);
  if (v6 <= 4)
  {
    if (*(a1 + 16) > 1u)
    {
      if (v6 != 2)
      {
        if (v6 == 3)
        {
          v7 = sub_1A5240524();
          (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
          sub_1A3CB8F68();
          v8 = swift_allocObject();
          *(v8 + 16) = xmmword_1A52F9790;
          *(v8 + 32) = v5;
          sub_1A5244194();
          swift_allocObject();
          v9 = v5;
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        sub_1A3CB8F68();
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1A52F9790;
        *(v17 + 32) = v5;
        sub_1A5241EF4();
        swift_allocObject();
        v18 = v5;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A5241EB4();
      v13 = sub_1A5240524();
      (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
      sub_1A3CB8F68();
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1A52F9790;
      *(v14 + 32) = v5;
      v15 = v5;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    if (*(a1 + 16))
    {
      v19 = sub_1A5240524();
      (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
      sub_1A3CB8F68();
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1A52F9790;
      *(v20 + 32) = v5;
      sub_1A5243E64();
      swift_allocObject();
      v21 = v5;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else if (*(a1 + 16) > 7u)
  {
    if (v6 != 8)
    {
      if (v6 == 9)
      {
        sub_1A5242B34();
        swift_allocObject();
        v10 = v5;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A5243DB4();
      swift_allocObject();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else if (v6 == 5)
  {
    sub_1A5242674();
    swift_allocObject();
    v16 = v5;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3CB8F68();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A52F9790;
  *(v11 + 32) = v5;
  sub_1A5244174();
  swift_allocObject();
  v12 = v5;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A469BDAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LemonadeBookmark(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for LemonadeMockObservableCollectionBookmark();
  sub_1A3C5820C(a2, v15, type metadata accessor for LemonadeBookmark);
  (*(v10 + 16))(v12, a1, a4);

  v17 = sub_1A4838E98(v15, a3, v12);
  a5[3] = v16;
  result = swift_getWitnessTable();
  a5[4] = result;
  *a5 = v17;
  return result;
}

void sub_1A469BF4C()
{
  if (!qword_1EB1260A0)
  {
    sub_1A5240524();
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1260A0);
    }
  }
}

unint64_t sub_1A469BFA4()
{
  result = qword_1EB13D178;
  if (!qword_1EB13D178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB13D178);
  }

  return result;
}

uint64_t sub_1A469BFF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PhotosViewBannerCompletionReason.description.getter()
{
  if (*v0)
  {
    return 0x6574656C706D6F63;
  }

  else
  {
    return 0x657373696D736964;
  }
}

uint64_t PhotosViewBannerCompletionReason.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

unint64_t sub_1A469C110()
{
  result = qword_1EB13FDD8;
  if (!qword_1EB13FDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FDD8);
  }

  return result;
}

uint64_t sub_1A469C164()
{
  if (*v0)
  {
    return 0x6574656C706D6F63;
  }

  else
  {
    return 0x657373696D736964;
  }
}

id sub_1A469C24C(uint64_t a1, void *a2, uint64_t a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = objc_allocWithZone(v7);
  v15 = &v14[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_pixelBufferDidChangeHandler];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v14[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_providePlaceholderHandler];
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord__currentPixelBuffer;
  sub_1A46A19AC();
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  *(v18 + 16) = 0;
  *&v14[v17] = v18;
  v19 = OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord__desiredPlayState;
  sub_1A46A1A48();
  v20 = swift_allocObject();
  *(v20 + 24) = 0;
  *(v20 + 16) = 0;
  *&v14[v19] = v20;
  *&v14[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_player] = 0;
  *&v14[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_scene] = 0;
  v14[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_isLoadingScene] = 0;
  *&v14[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_generationTask] = 0;
  v21 = &v14[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_spriteSize];
  *v21 = a4;
  v21[1] = a5;
  *(v21 + 16) = 0;
  v22 = &v14[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_displayScale];
  *v22 = a6;
  *(v22 + 8) = 0;
  sub_1A3EBECA4(a3, v33);
  v23 = v34;
  if (v34)
  {
    v24 = __swift_project_boxed_opaque_existential_1(v33, v34);
    v25 = *(v23 - 8);
    v26 = MEMORY[0x1EEE9AC00](v24);
    v28 = &v32 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v28, v26);
    v29 = sub_1A524EA94();
    (*(v25 + 8))(v28, v23);
    __swift_destroy_boxed_opaque_existential_0(v33);
  }

  else
  {
    v29 = 0;
  }

  v32.receiver = v14;
  v32.super_class = v7;
  v30 = objc_msgSendSuper2(&v32, sel_initWithDisplayAsset_mediaProvider_geometryReference_, a1, a2, v29);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_1A3C35B00(a3);
  return v30;
}

void sub_1A469C630(uint64_t a1)
{
  v3 = sub_1A524BEE4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v32 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1A524BF64();
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5246F24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v1[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord__desiredPlayState];
  os_unfair_lock_lock((v12 + 24));
  v13 = *(v12 + 16);
  *(v12 + 16) = a1;
  os_unfair_lock_unlock((v12 + 24));
  if (v13 != a1)
  {
    v29 = v4;
    v30 = v3;
    sub_1A5246BD4();
    v14 = v1;
    v15 = sub_1A5246F04();
    v16 = sub_1A524D264();

    if (os_log_type_enabled(v15, v16))
    {
      v26[3] = v16;
      v17 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v17 = 136446466;
      v28 = v14;
      v18 = [v14 displayAsset];
      if (v18)
      {
        v19 = [v18 uuid];
        swift_unknownObjectRelease();
        if (v19)
        {
          sub_1A524C674();
        }
      }

      sub_1A3C2EF94();
    }

    (*(v9 + 8))(v11, v8);
    v20 = v29;
    if (qword_1EB1CD270 != -1)
    {
      swift_once();
    }

    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1A46A1D34;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_245;
    v22 = _Block_copy(aBlock);

    sub_1A524BF14();
    v34 = MEMORY[0x1E69E7CC0];
    sub_1A3C29D74(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    v23 = MEMORY[0x1E69E7F60];
    sub_1A46A1D84(0, &qword_1EB12B1C0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C9AEE0(&qword_1EB12B1B0, &qword_1EB12B1C0, v23);
    v24 = v32;
    v25 = v30;
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v7, v24, v22);
    _Block_release(v22);
    (*(v20 + 8))(v24, v25);
    (*(v31 + 8))(v7, v33);
  }
}

void *sub_1A469CD20()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord__currentPixelBuffer);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = v2;
  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

void sub_1A469CDC0(void *a1)
{
  sub_1A46A1DE8();
}

void (*sub_1A469CDF8(void *a1))(id *a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord__currentPixelBuffer);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  *a1 = v4;
  return sub_1A469CE68;
}

void sub_1A469CE68(id *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    v2 = v4;
    sub_1A46A1DE8();

    v3 = v2;
  }

  else
  {
    sub_1A46A1DE8();
    v3 = v4;
  }
}

void sub_1A469CEE8(void *a1@<X8>)
{
  *a1 = 0x3FF0000000000000;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0x3FF0000000000000;
  a1[4] = 0;
  a1[5] = 0;
}

id sub_1A469D064(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = (a1 + *a3);
  swift_beginAccess();
  v6 = *v5;
  if (*v5)
  {
    v7 = v5[1];
    aBlock[4] = v6;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = a4;
    v8 = _Block_copy(aBlock);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1A469D144(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  sub_1A3D607F0(*v2);
  return v3;
}

id sub_1A469D2C8()
{
  if (*&v0[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_generationTask])
  {

    sub_1A524CD94();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXGridInlineSpatialPhotoAssetPlaybackRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A469D474()
{
  v8 = sub_1A524D464();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1A3C52C70(0, &qword_1EB12B180);
  sub_1A524BF14();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A3C29D74(&qword_1EB126AD0, MEMORY[0x1E69E8030]);
  v5 = MEMORY[0x1E69E8030];
  sub_1A46A1D84(0, &qword_1EB126E40, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1A3C9AEE0(&qword_1EB126E30, &qword_1EB126E40, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v8);
  result = sub_1A524D4B4();
  qword_1EB1CD278 = result;
  return result;
}

uint64_t sub_1A469D6FC()
{
  v8 = sub_1A524D464();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1A3C52C70(0, &qword_1EB12B180);
  sub_1A524BF14();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A3C29D74(&qword_1EB126AD0, MEMORY[0x1E69E8030]);
  v5 = MEMORY[0x1E69E8030];
  sub_1A46A1D84(0, &qword_1EB126E40, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1A3C9AEE0(&qword_1EB126E30, &qword_1EB126E40, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v8);
  result = sub_1A524D4B4();
  qword_1EB1CD288 = result;
  return result;
}

void sub_1A469D984(uint64_t a1)
{
  v3 = sub_1A5246F24();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_1A5246BD4();
    v7 = v1;
    v8 = sub_1A5246F04();
    v9 = sub_1A524D244();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v10 = 136446210;
      v11 = [v7 displayAsset];
      if (v11)
      {
        v12 = [v11 uuid];
        swift_unknownObjectRelease();
        if (v12)
        {
          sub_1A524C674();
        }
      }

      sub_1A3C2EF94();
    }

    (*(v4 + 8))(v6, v3);
    sub_1A524CD94();
  }
}

void sub_1A469DBD4()
{
  v0 = sub_1A5246B34();
  v66 = *(v0 - 8);
  v67 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v65 = v59 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v61 = v59 - v3;
  v4 = sub_1A5246F24();
  v68 = *(v4 - 8);
  v69 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v62 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v64 = v59 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v59 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v59 - v12;
  v14 = sub_1A5246B54();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v59 - v19;
  v21 = sub_1A524BFF4();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EB1CD270 != -1)
  {
    swift_once();
  }

  v25 = qword_1EB1CD278;
  *v24 = qword_1EB1CD278;
  (*(v22 + 104))(v24, *MEMORY[0x1E69E8020], v21);
  v63 = v25;
  LOBYTE(v25) = sub_1A524C024();
  (*(v22 + 8))(v24, v21);
  if (v25)
  {
    sub_1A5246B94();
    (*(v15 + 104))(v17, *MEMORY[0x1E69C1B80], v14);
    sub_1A3C29D74(&qword_1EB12EDD8, MEMORY[0x1E69C1B90]);
    v26 = sub_1A524C534();
    v27 = *(v15 + 8);
    v27(v17, v14);
    v27(v20, v14);
    v28 = v70;
    if ((v26 & 1) == 0 && (v70[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_spriteSize + 16] & 1) == 0)
    {
      v29 = [v70 desiredPlayState];
      v30 = v29;
      if (v29 == 1)
      {
        if (!*&v28[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_scene])
        {
          sub_1A5246BD4();
          v31 = v28;
          v32 = sub_1A5246F04();
          v33 = sub_1A524D264();

          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            *v34 = 136446210;
            v35 = [v31 displayAsset];
            v60 = 1;
            if (v35)
            {
              v36 = [v35 uuid];
              swift_unknownObjectRelease();
              if (v36)
              {
                sub_1A524C674();
              }
            }

            sub_1A3C2EF94();
          }

          (*(v68 + 8))(v13, v69);
          sub_1A469E9B4();
        }
      }

      else if (!v29)
      {
        v37 = OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_scene;
        if (*&v28[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_scene])
        {
          sub_1A5246BD4();
          v38 = v28;
          v39 = sub_1A5246F04();
          v40 = sub_1A524D264();

          if (os_log_type_enabled(v39, v40))
          {
            v59[1] = v40;
            v41 = swift_slowAlloc();
            v71 = swift_slowAlloc();
            *v41 = 136446210;
            v42 = [v38 displayAsset];
            v60 = 0;
            if (v42)
            {
              v43 = [v42 uuid];
              swift_unknownObjectRelease();
              if (v43)
              {
                sub_1A524C674();
              }
            }

            sub_1A3C2EF94();
          }

          (*(v68 + 8))(v10, v69);
          *&v28[v37] = 0;

          v44 = OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_player;
          if (*&v38[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_player])
          {
            (*(v66 + 104))(v61, *MEMORY[0x1E69C1B60], v67);

            sub_1A5246B04();
          }

          *&v38[v44] = 0;
        }

        v45 = *&v28[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_generationTask];
        if (v45)
        {
          *&v28[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_generationTask] = 0;
          sub_1A469D984(v45);

          v28[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_isLoadingScene] = 0;
        }
      }

      if (*&v28[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_scene])
      {
        v46 = OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_player;
        v47 = *&v28[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_player];

        if (v47)
        {
          goto LABEL_36;
        }

        v48 = v64;
        sub_1A5246BD4();
        v49 = v28;
        v50 = sub_1A5246F04();
        v51 = sub_1A524D264();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v71 = v61;
          *v52 = 136446466;
          v53 = [v49 displayAsset];
          if (v53)
          {
            v54 = [v53 uuid];
            swift_unknownObjectRelease();
            if (v54)
            {
              sub_1A524C674();
            }
          }

          sub_1A3C2EF94();
        }

        (*(v68 + 8))(v48, v69);
        sub_1A5246B44();
        swift_allocObject();
        v55 = v63;

        v56 = sub_1A5246B24();
        v57 = v70;
        *&v70[v46] = v56;

        swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_1A5246B14();

        if (*&v57[v46])
        {
LABEL_36:
          v58 = MEMORY[0x1E69C1B68];
          if (v30 != 1)
          {
            v58 = MEMORY[0x1E69C1B60];
          }

          (*(v66 + 104))(v65, *v58, v67);

          sub_1A5246B04();
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1A469E9B4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1A524BEE4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BF64();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v1[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_isLoadingScene] & 1) == 0)
  {
    v1[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_isLoadingScene] = 1;
    if ([v1 displayAsset])
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        v13 = v12;
        v23 = v8;
        if (qword_1EB1CD270 != -1)
        {
          swift_once();
        }

        v24 = v4;
        v14 = qword_1EB1CD278;
        if (qword_1EB1CD280 != -1)
        {
          swift_once();
        }

        v22 = qword_1EB1CD288;
        v15 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v16 = swift_allocObject();
        v16[2] = v15;
        v16[3] = v14;
        v16[4] = v13;
        v16[5] = ObjectType;
        aBlock[4] = sub_1A46A1ED4;
        aBlock[5] = v16;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1A3C2E0D0;
        aBlock[3] = &block_descriptor_32_4;
        v21 = _Block_copy(aBlock);

        v17 = v14;
        swift_unknownObjectRetain();
        sub_1A524BF14();
        v25 = MEMORY[0x1E69E7CC0];
        sub_1A3C29D74(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
        v18 = MEMORY[0x1E69E7F60];
        sub_1A46A1D84(0, &qword_1EB12B1C0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
        sub_1A3C9AEE0(&qword_1EB12B1B0, &qword_1EB12B1C0, v18);
        sub_1A524E224();
        v19 = v21;
        MEMORY[0x1A5908800](0, v11, v6, v21);
        _Block_release(v19);
        swift_unknownObjectRelease();
        (*(v24 + 8))(v6, v3);
        (*(v23 + 8))(v11, v7);
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1A469EDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[11] = a4;
  sub_1A46A1D84(0, &qword_1EB12B270, 255, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v14[13] = v14 - v5;
  v6 = sub_1A5246F24();
  v14[9] = *(v6 - 8);
  v14[10] = v6;
  MEMORY[0x1EEE9AC00](v6);
  v14[12] = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46A1D84(0, &qword_1EB13FEC8, v8, type metadata accessor for PXGridInlineSpatialPhotoAssetPlaybackRecord, off_1E77210B0);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    type metadata accessor for PXGridInlineSpatialPhotoAssetPlaybackRecord();
    v13 = v12;
    sub_1A5245DF4();
  }

  return result;
}

uint64_t sub_1A469F818(int a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v24 = a1;
  v4 = sub_1A524BEE4();
  v26 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_1A524BF64();
  v7 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A46A1D84(0, &qword_1EB13FEC8, v10, type metadata accessor for PXGridInlineSpatialPhotoAssetPlaybackRecord, off_1E77210B0);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v17 = &v23[-v16];
  (*(v13 + 16))(&v23[-v16], a3, v12, v15);
  v18 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v19 = swift_allocObject();
  (*(v13 + 32))(v19 + v18, v17, v12);
  *(v19 + v18 + v14) = v24;
  aBlock[4] = sub_1A46A21EC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_68_1;
  v20 = _Block_copy(aBlock);
  sub_1A524BF14();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1A3C29D74(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v21 = MEMORY[0x1E69E7F60];
  sub_1A46A1D84(0, &qword_1EB12B1C0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C9AEE0(&qword_1EB12B1B0, &qword_1EB12B1C0, v21);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v9, v6, v20);
  _Block_release(v20);
  (*(v26 + 8))(v6, v4);
  (*(v7 + 8))(v9, v25);
}

uint64_t sub_1A469FBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v8 = sub_1A524CC04();
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();
  v9 = sub_1A5246F24();
  v7[10] = v9;
  v7[11] = *(v9 - 8);
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A469FD2C, 0, 0);
}

uint64_t sub_1A469FD2C()
{
  if (qword_1EB1CD290 != -1)
  {
    swift_once();
  }

  v1 = sub_1A5245104();
  __swift_project_value_buffer(v1, qword_1EB1CD298);
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_1A469FE0C;
  v3 = *(v0 + 24);

  return MEMORY[0x1EEE2A290](v3);
}

uint64_t sub_1A469FE0C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1A46A015C;
  }

  else
  {
    v2 = sub_1A469FF20;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A469FF20()
{
  v1 = v0[4];
  sub_1A5246BD4();
  v2 = v1;
  v3 = sub_1A5246F04();
  LOBYTE(v1) = sub_1A524D264();

  if (os_log_type_enabled(v3, v1))
  {
    v4 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 136446210;
    v7 = [v4 displayAsset];
    if (v7)
    {
      v8 = [v7 uuid];
      swift_unknownObjectRelease();
      if (v8)
      {
        sub_1A524C674();
      }
    }

    sub_1A3C2EF94();
  }

  v9 = v0[14];
  v10 = v0[10];
  v11 = v0[11];

  (*(v11 + 8))(v9, v10);
  sub_1A469F818(1, v0[5], v0[6]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1A46A015C()
{
  v1 = *(v0 + 128);
  *(v0 + 16) = v1;
  v2 = v1;
  sub_1A3DBD9A0();
  v3 = swift_dynamicCast();
  v4 = *(v0 + 128);
  v5 = *(v0 + 32);
  if (v3)
  {

    sub_1A5246BD4();
    v6 = v5;
    v7 = sub_1A5246F04();
    v8 = sub_1A524D264();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 32);
      v10 = swift_slowAlloc();
      swift_slowAlloc();
      *v10 = 136446210;
      v11 = [v9 displayAsset];
      if (v11)
      {
        v12 = [v11 uuid];
        swift_unknownObjectRelease();
        if (v12)
        {
          sub_1A524C674();
        }
      }

      sub_1A3C2EF94();
    }

    v21 = *(v0 + 104);
    v22 = *(v0 + 80);
    v23 = *(v0 + 88);

    (*(v23 + 8))(v21, v22);
    v28 = *(v0 + 64);
    v27 = *(v0 + 72);
    v29 = *(v0 + 56);
    sub_1A469F818(0, *(v0 + 40), *(v0 + 48));
    (*(v28 + 8))(v27, v29);
    v30 = *(v0 + 16);
  }

  else
  {

    sub_1A5246BD4();
    v13 = v5;
    v14 = v4;
    v15 = sub_1A5246F04();
    v16 = sub_1A524D244();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 32);
      v18 = swift_slowAlloc();
      swift_slowAlloc();
      swift_slowAlloc();
      *v18 = 136446466;
      v19 = [v17 displayAsset];
      if (v19)
      {
        v20 = [v19 uuid];
        swift_unknownObjectRelease();
        if (v20)
        {
          sub_1A524C674();
        }
      }

      sub_1A3C2EF94();
    }

    v25 = *(v0 + 88);
    v24 = *(v0 + 96);
    v26 = *(v0 + 80);

    (*(v25 + 8))(v24, v26);
    v31 = *(v0 + 128);
    sub_1A469F818(0, *(v0 + 40), *(v0 + 48));
    v30 = v31;
  }

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1A46A0610(uint64_t a1)
{
  sub_1A46A1D84(0, &unk_1EB12B250, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = swift_projectBox();
  v6 = sub_1A5240E64();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v4, a1, v6);
  (*(v7 + 56))(v4, 0, 1, v6);
  swift_beginAccess();
  return sub_1A46A2154(v4, v5);
}

uint64_t sub_1A46A0760(uint64_t a1)
{
  v2 = sub_1A5240E64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_1A5240DE4();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1A46A0854(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v52 = a5;
  v53 = a4;
  v54 = a3;
  v6 = sub_1A5246F24();
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v43 - v10;
  v11 = sub_1A524BEE4();
  v47 = *(v11 - 8);
  v48 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1A524BF64();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v43 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1E6968FB0];
  sub_1A46A1D84(0, &unk_1EB12B250, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v43 - v16;
  v18 = sub_1A5240E64();
  v19 = *(v18 - 1);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v43 - v23;
  v25 = swift_projectBox();
  swift_beginAccess();
  sub_1A46A20AC(v25, v17, &unk_1EB12B250, v14);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1A3C6898C(v17, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
    sub_1A5246BD4();
    v26 = v53;
    v27 = a1;
    v28 = sub_1A5246F04();
    v29 = sub_1A524D244();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v30 = 136446466;
      v31 = [v26 displayAsset];
      if (v31)
      {
        v32 = [v31 uuid];
        swift_unknownObjectRelease();
        if (v32)
        {
          sub_1A524C674();
        }
      }

      sub_1A3C2EF94();
    }

    (*(v50 + 8))(v8, v51);
    return sub_1A469F818(0, v54, v52);
  }

  else
  {
    v33 = v53;
    (*(v19 + 32))(v24, v17, v18);
    (*(v19 + 16))(v21, v24, v18);
    sub_1A5246BC4();
    swift_allocObject();
    v34 = sub_1A5246BB4();
    v35 = swift_allocObject();
    *(v35 + 16) = v33;
    *(v35 + 24) = v34;
    aBlock[4] = sub_1A46A212C;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_62_0;
    v36 = _Block_copy(aBlock);
    v37 = v33;

    v53 = v18;
    v38 = v43;
    sub_1A524BF14();
    v55 = MEMORY[0x1E69E7CC0];
    sub_1A3C29D74(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    v39 = MEMORY[0x1E69E7F60];
    sub_1A46A1D84(0, &qword_1EB12B1C0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C9AEE0(&qword_1EB12B1B0, &qword_1EB12B1C0, v39);
    v40 = v45;
    v41 = v48;
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v38, v40, v36);
    _Block_release(v36);

    (*(v47 + 8))(v40, v41);
    (*(v44 + 8))(v38, v46);
    (*(v19 + 8))(v24, v53);
  }
}

uint64_t sub_1A46A1224()
{
  v0 = sub_1A52450C4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5245104();
  __swift_allocate_value_buffer(v4, qword_1EB1CD298);
  __swift_project_value_buffer(v4, qword_1EB1CD298);
  (*(v1 + 104))(v3, *MEMORY[0x1E69C13D0], v0);
  return sub_1A52450E4();
}

uint64_t sub_1A46A132C(uint64_t a1)
{
  v3 = sub_1A5246F24();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BFF4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EB1CD270 != -1)
  {
    swift_once();
  }

  v11 = qword_1EB1CD278;
  *v10 = qword_1EB1CD278;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v12 = v11;
  LOBYTE(v11) = sub_1A524C024();
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    sub_1A5246BD4();
    v14 = v1;
    v15 = sub_1A5246F04();
    v16 = sub_1A524D264();

    if (os_log_type_enabled(v15, v16))
    {
      v21[1] = v3;
      v21[2] = a1;
      v17 = swift_slowAlloc();
      v21[3] = swift_slowAlloc();
      *v17 = 136446210;
      v18 = [v14 displayAsset];
      if (v18)
      {
        v19 = [v18 uuid];
        swift_unknownObjectRelease();
        if (v19)
        {
          sub_1A524C674();
        }
      }

      sub_1A3C2EF94();
    }

    (*(v4 + 8))(v6, v3);
    *&v14[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_scene] = a1;

    v14[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_isLoadingScene] = 0;
    return sub_1A469DBD4(v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A46A16AC(char a1)
{
  v3 = sub_1A524BFF4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EB1CD270 != -1)
  {
    swift_once();
  }

  v7 = qword_1EB1CD278;
  *v6 = qword_1EB1CD278;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v8 = v7;
  LOBYTE(v7) = sub_1A524C024();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    if (*(v1 + OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_isLoadingScene) == 1)
    {
      *(v1 + OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_isLoadingScene) = 0;
      v10 = *(v1 + OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_generationTask);
      *(v1 + OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_generationTask) = 0;
      sub_1A469D984(v10);

      if (a1)
      {
        return sub_1A469DBD4(result);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1A46A182C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1A3EBECA4(a3, v17);
  v8 = v18;
  if (v18)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v17, v18);
    v10 = *(v8 - 8);
    v11 = MEMORY[0x1EEE9AC00](v9);
    v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = sub_1A524EA94();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    v14 = 0;
  }

  v15 = [v4 initWithDisplayAsset:a1 mediaProvider:a2 geometryReference:v14 spriteSize:0.0 displayScale:{0.0, 1.0}];
  swift_unknownObjectRelease();
  sub_1A3C35B00(a3);
  return v15;
}

void sub_1A46A19AC()
{
  if (!qword_1EB13FDF8)
  {
    sub_1A46A1D84(255, &qword_1EB13FE00, 255, type metadata accessor for CVBuffer, MEMORY[0x1E69E6720]);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1A524E4E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13FDF8);
    }
  }
}

void sub_1A46A1A48()
{
  if (!qword_1EB13FE10)
  {
    type metadata accessor for PXVideoSessionDesiredPlayState(255);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1A524E4E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13FE10);
    }
  }
}

id sub_1A46A1AD8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v13 = &v6[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_pixelBufferDidChangeHandler];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v6[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_providePlaceholderHandler];
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord__currentPixelBuffer;
  sub_1A46A19AC();
  v16 = swift_allocObject();
  *(v16 + 24) = 0;
  *(v16 + 16) = 0;
  *&v6[v15] = v16;
  v17 = OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord__desiredPlayState;
  sub_1A46A1A48();
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  *&v6[v17] = v18;
  *&v6[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_player] = 0;
  *&v6[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_scene] = 0;
  v6[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_isLoadingScene] = 0;
  *&v6[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_playbackQueue_generationTask] = 0;
  *(v18 + 16) = 0;
  v19 = &v6[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_spriteSize];
  *v19 = a4;
  v19[1] = a5;
  *(v19 + 16) = 0;
  v20 = &v6[OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord_displayScale];
  *v20 = a6;
  *(v20 + 8) = 0;
  sub_1A3EBECA4(a3, v32);
  v21 = v33;
  if (v33)
  {
    v22 = __swift_project_boxed_opaque_existential_1(v32, v33);
    v23 = *(v21 - 8);
    v24 = MEMORY[0x1EEE9AC00](v22);
    v26 = &v31 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v26, v24);
    v27 = sub_1A524EA94();
    (*(v23 + 8))(v26, v21);
    __swift_destroy_boxed_opaque_existential_0(v32);
  }

  else
  {
    v27 = 0;
  }

  v28 = type metadata accessor for PXGridInlineSpatialPhotoAssetPlaybackRecord();
  v31.receiver = v6;
  v31.super_class = v28;
  v29 = objc_msgSendSuper2(&v31, sel_initWithDisplayAsset_mediaProvider_geometryReference_, a1, a2, v27);
  swift_unknownObjectRelease();
  sub_1A3C35B00(a3);
  return v29;
}

void sub_1A46A1D34()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A469DBD4();
  }
}

void sub_1A46A1D84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A46A1DE8()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore43PXGridInlineSpatialPhotoAssetPlaybackRecord__currentPixelBuffer);
  os_unfair_lock_lock((v1 + 24));
  sub_1A46A2374((v1 + 16), &v6);
  os_unfair_lock_unlock((v1 + 24));
  if (v6)
  {
    v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD0))();
    if (v2)
    {
      v4 = v3;
      v5 = v2;
      v2();
      sub_1A3C784D4(v5, v4);
    }
  }
}

uint64_t sub_1A46A1EE8(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1A46A1D84(0, &qword_1EB13FEC8, a3, type metadata accessor for PXGridInlineSpatialPhotoAssetPlaybackRecord, off_1E77210B0);
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3 + ((*(*(v5 - 8) + 80) + 40) & ~*(*(v5 - 8) + 80));

  return sub_1A46A0854(a1, v6, v7, v8, v9);
}

uint64_t sub_1A46A1F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A46A1D84(0, &qword_1EB13FEC8, a3, type metadata accessor for PXGridInlineSpatialPhotoAssetPlaybackRecord, off_1E77210B0);
  v6 = (*(*(v5 - 8) + 80) + 56) & ~*(*(v5 - 8) + 80);
  v7 = v3[4];
  v8 = v3[5];
  v9 = v3[6];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1A3D60150;

  return sub_1A469FBF4(v10, v11, v12, v7, v8, v9, v3 + v6);
}

uint64_t sub_1A46A20AC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A46A1D84(0, a3, 255, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A46A2154(uint64_t a1, uint64_t a2)
{
  sub_1A46A1D84(0, &unk_1EB12B250, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1A46A22E0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0xB0);
    v5 = a1;
    v4(a1);
  }
}

id sub_1A46A2374@<X0>(void **a1@<X0>, BOOL *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *a1;
  v7 = v5 == 0;
  if (*a1)
  {
    if (v5)
    {
      type metadata accessor for CVBuffer(0);
      sub_1A3C29D74(&qword_1EB13FED0, type metadata accessor for CVBuffer);
      v7 = sub_1A5241714();
    }

    else
    {
      v7 = 0;
    }
  }

  *a1 = v5;
  *a2 = (v7 & 1) == 0;
  return v5;
}

void sub_1A46A2440(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t type metadata accessor for AsyncPersonImageConfiguration()
{
  result = qword_1EB164D40;
  if (!qword_1EB164D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A46A250C@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  *a7 = a1;
  *(a7 + 8) = a2 & 1;
  *(a7 + 9) = a3;
  *(a7 + 10) = a4;
  v12 = type metadata accessor for AsyncPersonImageConfiguration();
  v13 = v12[7];
  v14 = sub_1A5243624();
  result = (*(*(v14 - 8) + 32))(a7 + v13, a5, v14);
  *(a7 + v12[8]) = a8;
  *(a7 + v12[9]) = a6;
  return result;
}

id sub_1A46A25C0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  result = [v1 uuid];
  v4 = result;
  if (v2)
  {
    if (result)
    {
LABEL_5:
      v5 = sub_1A524C674();

      return v5;
    }

    __break(1u);
  }

  if (result)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_1A46A2660(unsigned int *a1)
{
  v1 = *a1;
  v2 = [objc_opt_self() sharedManager];
  [v2 cancelRequestForRequestID_];
}

BOOL sub_1A46A26D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AsyncPersonImageConfiguration();
  v5 = *(v4 + 36);
  v6 = *(a1 + v5);
  if (v6)
  {
    v7 = *(a2 + v5);
    if (([v6 hasContentEqualTo_] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + v5))
    {
      return 0;
    }

    v7 = 0;
    v6 = 0;
  }

  v8 = v6;
  v9 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
      return 0;
    }
  }

  v11 = *a1;
  v12 = sub_1A524EB54();
  v20 = *a2;
  v13 = *a2;
  v14 = sub_1A524EB54();
  v15 = v12;
  v16 = v14;
  if (v12 == v14)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = [v15 isEqual:v16];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 9) == *(a2 + 9) && *(a1 + 10) == *(a2 + 10))
  {
    sub_1A5243624();
    sub_1A46A323C(&qword_1EB124D78, MEMORY[0x1E69C2540]);
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v20 == v19)
    {
      return *(a1 + *(v4 + 32)) == *(a2 + *(v4 + 32));
    }
  }

  return 0;
}

void sub_1A46A2908()
{
  v0 = sub_1A5243624();
  MEMORY[0x1EEE9AC00](v0);
  type metadata accessor for AsyncPersonImageConfiguration();
  PXSizeScale();
}

unint64_t sub_1A46A2CAC()
{
  result = qword_1EB125830;
  if (!qword_1EB125830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125830);
  }

  return result;
}

void sub_1A46A2D70()
{
  sub_1A5243624();
  if (v0 <= 0x3F)
  {
    sub_1A3F2D6AC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A46A2E48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  if (*(a1 + 64))
  {
    v6 = swift_allocObject();
    v6[2] = v4;
    v6[3] = v3;
    v6[4] = v5;
    aBlock[4] = sub_1A46A3010;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_246;
    _Block_copy(aBlock);

    sub_1A46A30B8(a1, v15);
  }

  else
  {
    v7 = *(a1 + 8);
    [*a1 px_pixelSize];
    v9 = v8;
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = v4;
    *(v12 + 24) = v3;
    *(v12 + 32) = v5;
    *(v12 + 40) = v9;
    *(v12 + 48) = v11;
    v13 = *(a1 + 16);
    *(v12 + 72) = *(a1 + 32);
    *(v12 + 56) = v13;
    *(v12 + 88) = v7 & 1;
    v15[4] = sub_1A46A31D4;
    v15[5] = v12;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_1A3C2E0D0;
    v15[3] = &block_descriptor_16_10;
    _Block_copy(v15);

    v14 = v5;
  }

  px_dispatch_on_main_queue();
}

void sub_1A46A3010()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  sub_1A46A3180();
  v3 = swift_allocError();
  *v4 = v2;
  v7 = v13;
  v8 = v14;
  v9 = v15;
  v10 = v16;
  v12 = 1;
  v6 = v3;
  v11 = 1;
  v5 = v2;
  v1(&v6);
}

uint64_t sub_1A46A30B8(uint64_t a1, uint64_t a2)
{
  sub_1A46A311C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A46A311C()
{
  if (!qword_1EB13FED8)
  {
    sub_1A46A3180();
    v0 = sub_1A524ECF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13FED8);
    }
  }
}

unint64_t sub_1A46A3180()
{
  result = qword_1EB13FEE0;
  if (!qword_1EB13FEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FEE0);
  }

  return result;
}

uint64_t sub_1A46A31D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 88);
  v13 = 0;
  v6 = v2;
  v4 = *(v0 + 56);
  v7 = *(v0 + 40);
  v8 = v4;
  v9 = *(v0 + 72);
  v10 = v3;
  v11 = 0;
  v12 = 0;
  return v1(&v6);
}

uint64_t sub_1A46A323C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1A46A328C()
{
  result = [objc_allocWithZone(type metadata accessor for PlacesLocationAuthorizationMonitor()) init];
  qword_1EB17AC78 = result;
  return result;
}

uint64_t *sub_1A46A32C0()
{
  if (qword_1EB17AC70 != -1)
  {
    swift_once();
  }

  return &qword_1EB17AC78;
}

id static PlacesLocationAuthorizationMonitor.sharedInstance.getter()
{
  if (qword_1EB17AC70 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB17AC78;

  return v1;
}

uint64_t type metadata accessor for PlacesLocationAuthorizationMonitor()
{
  result = qword_1EB160EC0;
  if (!qword_1EB160EC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata accessor for CLAuthorizationStatus()
{
  if (!qword_1EB126990)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB126990);
    }
  }
}

uint64_t sub_1A46A3480@<X0>(void **a1@<X0>, _DWORD *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x68))();
  *a2 = result;
  return result;
}

void sub_1A46A3534()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A46A4328(&unk_1EB1252D8, type metadata accessor for PlacesLocationAuthorizationMonitor);
  v1 = v0;
  sub_1A5245714();
}

void sub_1A46A35F4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A46A4328(&unk_1EB1252D8, type metadata accessor for PlacesLocationAuthorizationMonitor);
  v1 = v0;
  sub_1A5245724();
}

void sub_1A46A36A0(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = swift_getKeyPath();
  *(v4 + 48) = swift_getKeyPath();
  *(v4 + 32) = v1;
  v5 = v1;
  sub_1A46A4328(&unk_1EB1252D8, type metadata accessor for PlacesLocationAuthorizationMonitor);
  sub_1A5245704();
}

void sub_1A46A3794(id **a1)
{
  v1 = *a1;
  ((*a1)[7])(*a1, 0);

  free(v1);
}

void PlacesLocationAuthorizationMonitor.init(locationManager:)()
{
  v0 = sub_1A46A3B70();
  MEMORY[0x1EEE9AC00](v0);
  LODWORD(v1) = 0;
  v2 = 1;
  type metadata accessor for PlacesLocationAuthorizationMonitor();
  type metadata accessor for CLAuthorizationStatus();
  sub_1A46A4328(&unk_1EB1252D8, type metadata accessor for PlacesLocationAuthorizationMonitor);
  sub_1A46A4328(&unk_1EB1269A0, type metadata accessor for CLAuthorizationStatus);
  sub_1A5245754();
}

uint64_t sub_1A46A3B70()
{
  result = qword_1EB124BC8;
  if (!qword_1EB124BC8)
  {
    type metadata accessor for PlacesLocationAuthorizationMonitor();
    type metadata accessor for CLAuthorizationStatus();
    sub_1A46A4328(&unk_1EB1252D8, type metadata accessor for PlacesLocationAuthorizationMonitor);
    sub_1A5245764();
  }

  return result;
}

uint64_t sub_1A46A3C1C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

void sub_1A46A3C78(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___PXPlacesLocationAuthorizationMonitor_observable;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1A46A3CD8()
{
  v1 = OBJC_IVAR___PXPlacesLocationAuthorizationMonitor_observable;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1A46A3D2C(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPlacesLocationAuthorizationMonitor_observable;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id PlacesLocationAuthorizationMonitor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlacesLocationAuthorizationMonitor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A46A3E64@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **v1) + 0x88))();
  *a1 = result;
  return result;
}

void sub_1A46A3EC0()
{
  type metadata accessor for PlacesLocationAuthorizationMonitor();
  sub_1A46A4328(&unk_1EB1252D8, type metadata accessor for PlacesLocationAuthorizationMonitor);

  sub_1A5245C54();
}

void _s12PhotosUICore34PlacesLocationAuthorizationMonitorC024locationManagerDidChangeE0yySo010CLLocationH0CF_0()
{
  v1 = [*(v0 + OBJC_IVAR___PXPlacesLocationAuthorizationMonitor_locationManager) authorizationStatus];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x88))();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v1;
  v6[4] = sub_1A46A457C;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1A3DC72D4;
  v6[3] = &block_descriptor_247;
  v4 = _Block_copy(v6);
  v5 = v0;

  [v2 performChanges_];
  _Block_release(v4);
}

unint64_t sub_1A46A40E4()
{
  result = qword_1EB13FF00;
  if (!qword_1EB13FF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FF00);
  }

  return result;
}

unint64_t sub_1A46A413C()
{
  result = qword_1EB13FF08;
  if (!qword_1EB13FF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FF08);
  }

  return result;
}

unint64_t sub_1A46A4194()
{
  result = qword_1EB13FF10;
  if (!qword_1EB13FF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FF10);
  }

  return result;
}

unint64_t sub_1A46A41EC()
{
  result = qword_1EB13FF18;
  if (!qword_1EB13FF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FF18);
  }

  return result;
}

unint64_t sub_1A46A4244()
{
  result = qword_1EB13FF20;
  if (!qword_1EB13FF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FF20);
  }

  return result;
}

uint64_t sub_1A46A4328(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A46A4374()
{
  result = qword_1EB13FF30;
  if (!qword_1EB13FF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FF30);
  }

  return result;
}

uint64_t sub_1A46A43D0()
{
  result = sub_1A46A3B70();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t SharedAlbumCreationView.viewModel.getter()
{
  sub_1A46A53DC(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  return v1;
}

uint64_t sub_1A46A464C@<X0>(void *a1@<X8>)
{
  sub_1A46A53DC(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  result = sub_1A524B6A4();
  *a1 = v3;
  return result;
}

uint64_t sub_1A46A46C8(void **a1)
{
  v1 = *a1;
  sub_1A46A53DC(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v2 = v1;
  return sub_1A524B6B4();
}

void (*SharedAlbumCreationView.viewModel.modify(void *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v6 = *v1;
  v5 = *(v1 + 8);
  v3[6] = v6;
  v3[7] = v5;
  *v3 = v6;
  v3[1] = v5;
  sub_1A46A53DC(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  v4[8] = v7;
  v8 = v6;

  sub_1A524B6A4();
  return sub_1A3D9CCC4;
}

uint64_t SharedAlbumCreationView.$viewModel.getter()
{
  sub_1A46A53DC(0, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  return v1;
}

void *SharedAlbumCreationView.sharedAlbum.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_1A46A49BC(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = a1;
  type metadata accessor for SharedAlbumActionViewModel();
  v8 = a1;
  sub_1A524B694();
  v9 = v17[1];
  *a4 = v17[0];
  *(a4 + 8) = v9;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  sub_1A46A53DC(0, &qword_1EB12E7A8, sub_1A3D9D024, type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel);
  v10 = a2;
  v11 = v8;
  v12 = sub_1A415F150(v11, a2);
  (*((*MEMORY[0x1E69E7D40] & *v12) + 0x1F8))(a3);
  v17[0] = v12;
  sub_1A46A4C64(0, &qword_1EB13FFA0, type metadata accessor for LemonadeCollectionCustomizationViewModel);
  LOBYTE(v16) = a3 ^ 1;
  v13 = v12;
  v14 = sub_1A4407D6C(v17, &v16, 0, 0);
  v15 = type metadata accessor for SharedAlbumCreationView();
  sub_1A478C8F8(v14, (a4 + *(v15 + 28)));
}

uint64_t type metadata accessor for SharedAlbumCreationView()
{
  result = qword_1EB1CD940;
  if (!qword_1EB1CD940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SharedAlbumCreationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SharedAlbumCreationView() + 28);

  return sub_1A46A4BE4(v3, a1);
}

uint64_t sub_1A46A4BE4(uint64_t a1, uint64_t a2)
{
  sub_1A46A4C64(0, &qword_1EB136178, type metadata accessor for LemonadeCollectionCustomizationView);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A46A4C64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_1A46A53DC(255, &qword_1EB12E7A8, sub_1A3D9D024, type metadata accessor for LemonadeCollectionCustomizationSharedAlbumsModel);
    v7 = v6;
    v8 = sub_1A440DC18();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A46A4D10()
{
  sub_1A46A53DC(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v18 - v1;
  v3 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5240E64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1A5240DE4();

  v11 = objc_allocWithZone(MEMORY[0x1E69789A8]);
  v12 = sub_1A5240D44();
  v13 = [v11 initWithPhotoLibraryURL_];

  (*(v7 + 8))(v9, v6);
  type metadata accessor for LemonadeNavigationContext(0);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for LemonadeDetailsContext();
  (*(*(v14 - 8) + 56))(v2, 1, 1, v14);
  type metadata accessor for LemonadePhotoLibraryContext();
  v15 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v13, 0, 0);
  j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v19);
  v16 = sub_1A3C799F0(v5, 0, 0, 0, v2, &v19, v15, 2);
  type metadata accessor for SharedAlbumActionViewModel();

  v17 = sub_1A3C30368();
  SharedAlbumActionViewModel.__allocating_init(navigationContext:extensionContext:sharedAlbum:sharedAlbums:assets:mediaSources:collectionShareAssetSources:albumName:batchComment:perAssetCreationOptions:selectedPostToAlbumUUID:clientAlreadyHasSensitivityProtectionLogic:updateCallback:doneCallback:)(v16, 0, 0, MEMORY[0x1E69E7CC0], 0, 0, 0, 0, 0, 0, 0, 0, v17 & 1, 0, 0, 0, 0);
}

unint64_t sub_1A46A5188()
{
  result = qword_1EB13FFA8;
  if (!qword_1EB13FFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FFA8);
  }

  return result;
}

uint64_t sub_1A46A51FC(uint64_t a1)
{
  v2 = sub_1A46A551C();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A46A5248(uint64_t a1)
{
  v2 = sub_1A46A551C();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

void sub_1A46A52BC()
{
  sub_1A46A53DC(319, &qword_1EB13ADC0, type metadata accessor for SharedAlbumActionViewModel, MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    sub_1A46A53DC(319, &qword_1EB120A30, sub_1A3D9D024, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A46A4C64(319, &qword_1EB136178, type metadata accessor for LemonadeCollectionCustomizationView);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A46A53DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A46A5450()
{
  result = qword_1EB13FFB0;
  if (!qword_1EB13FFB0)
  {
    sub_1A46A4C64(255, &qword_1EB136178, type metadata accessor for LemonadeCollectionCustomizationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FFB0);
  }

  return result;
}

unint64_t sub_1A46A54C4()
{
  result = qword_1EB136188;
  if (!qword_1EB136188)
  {
    type metadata accessor for SharedAlbumCreationView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB136188);
  }

  return result;
}

unint64_t sub_1A46A551C()
{
  result = qword_1EB13FFB8;
  if (!qword_1EB13FFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FFB8);
  }

  return result;
}

uint64_t sub_1A46A5598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A524CC44();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    sub_1A3C77080(v13);
    if (v4)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v13[0];
    v10 = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD00000000000003FLL, 0x80000001A53B42C0);
  v12 = sub_1A524EEF4();
  MEMORY[0x1A5907B60](v12);

  MEMORY[0x1A5907B60](46, 0xE100000000000000);
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A46A57FC(double a1)
{
  sub_1A524CC54();
  v5 = v1;
  v6 = a1;
  return sub_1A41D1440(sub_1A46A5884, &v4, "PhotosUICore/LemonadeBookmarkItemListManager.swift") & 1;
}

uint64_t sub_1A46A5884@<X0>(_BYTE *a1@<X8>)
{
  result = (*(**(*(v1 + 16) + 32) + 376))(*(v1 + 24));
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A46A58F4()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1A46A598C()
{
  type metadata accessor for LemonadeBookmarkItemListManager();

    ;
  }
}

id sub_1A46A5AA0(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___PXSocialGroupMakeKeyPhotoAction_originalKeyAsset] = 0;
  *&v5[OBJC_IVAR___PXSocialGroupMakeKeyPhotoAction_socialGroup] = a1;
  *&v5[OBJC_IVAR___PXSocialGroupMakeKeyPhotoAction_newKeyAsset] = a2;
  v6 = a1;
  v7 = a2;
  result = [v6 photoLibrary];
  if (result)
  {
    v9 = result;
    v11.receiver = v5;
    v11.super_class = v2;
    v10 = objc_msgSendSuper2(&v11, sel_initWithPhotoLibrary_, result);

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A46A5C48(void (*a1)(), uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR___PXSocialGroupMakeKeyPhotoAction_socialGroup];
  v6 = [v5 photoLibrary];
  if (v6)
  {
    v7 = v6;
    v8 = objc_opt_self();
    v9 = [v7 librarySpecificFetchOptions];

    v10 = [v8 fetchKeyAssetForSocialGroup:v5 options:v9];
    if (v10 && (v11 = [v10 firstObject]) != 0)
    {
      v12 = *&v2[OBJC_IVAR___PXSocialGroupMakeKeyPhotoAction_originalKeyAsset];
      *&v2[OBJC_IVAR___PXSocialGroupMakeKeyPhotoAction_originalKeyAsset] = v11;
    }

    else
    {
      v13 = *&v2[OBJC_IVAR___PXSocialGroupMakeKeyPhotoAction_originalKeyAsset];
      *&v2[OBJC_IVAR___PXSocialGroupMakeKeyPhotoAction_originalKeyAsset] = 0;

      v14 = sub_1A524D244();
      v15 = *sub_1A3CAA3FC();
      if (os_log_type_enabled(v15, v14))
      {
        v16 = v15;
        v17 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v17 = 136315138;
        v18 = [v5 localIdentifier];
        sub_1A524C674();

        sub_1A3C2EF94();
      }
    }

    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = sub_1A46A5F80;
    v27 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1A3C2E0D0;
    v25 = &block_descriptor_248;
    v20 = _Block_copy(&aBlock);

    v26 = a1;
    v27 = a2;
    aBlock = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1A3D6084C;
    v25 = &block_descriptor_3_6;
    v21 = _Block_copy(&aBlock);

    [v2 performChanges:v20 completionHandler:v21];
    _Block_release(v21);
    _Block_release(v20);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A46A5F80()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR___PXSocialGroupMakeKeyPhotoAction_socialGroup;
    v3 = [objc_opt_self() changeRequestForSocialGroup:*(Strong + OBJC_IVAR___PXSocialGroupMakeKeyPhotoAction_socialGroup) userAction:1];
    if (v3)
    {
      v4 = v3;
      [v3 setKeyAsset_];
    }

    else
    {
      v5 = sub_1A524D244();
      v6 = *sub_1A3CAA3FC();
      if (os_log_type_enabled(v6, v5))
      {
        v7 = v6;
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 136315138;
        v10 = [*&v1[v2] localIdentifier];
        sub_1A524C674();

        sub_1A3C2EF94();
      }
    }
  }
}

void sub_1A46A616C(void (*a1)(), uint64_t a2)
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = sub_1A46A6414;
  v13 = v5;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1A3C2E0D0;
  v11 = &block_descriptor_7_2;
  v6 = _Block_copy(&v8);

  v12 = a1;
  v13 = a2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1A3D6084C;
  v11 = &block_descriptor_10_11;
  v7 = _Block_copy(&v8);

  [v2 performChanges:v6 completionHandler:v7];
  _Block_release(v7);
  _Block_release(v6);
}

uint64_t sub_1A46A62F4(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

void sub_1A46A6414()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___PXSocialGroupMakeKeyPhotoAction_originalKeyAsset);
    if (v2)
    {
      v3 = OBJC_IVAR___PXSocialGroupMakeKeyPhotoAction_socialGroup;
      v4 = *(Strong + OBJC_IVAR___PXSocialGroupMakeKeyPhotoAction_socialGroup);
      v5 = objc_opt_self();
      v6 = v2;
      v7 = [v5 changeRequestForSocialGroup:v4 userAction:1];
      if (v7)
      {
        v8 = v7;
        [v7 setKeyAsset_];

        return;
      }

      v15 = sub_1A524D244();
      v16 = *sub_1A3CAA3FC();
      if (os_log_type_enabled(v16, v15))
      {
        v17 = v16;
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 136315138;
        v20 = [*&v1[v3] localIdentifier];
        sub_1A524C674();

        sub_1A3C2EF94();
      }
    }

    else
    {
      v9 = sub_1A524D244();
      v10 = *sub_1A3CAA3FC();
      if (os_log_type_enabled(v10, v9))
      {
        v11 = v10;
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 136315138;
        v14 = [*&v1[OBJC_IVAR___PXSocialGroupMakeKeyPhotoAction_socialGroup] localIdentifier];
        sub_1A524C674();

        sub_1A3C2EF94();
      }
    }
  }
}

uint64_t StoryAsyncPlayerView.init(player:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for StoryAsyncPlayerView();
  type metadata accessor for TungstenFirstFrameObserver();

  return sub_1A5247C74();
}

uint64_t sub_1A46A67A8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TungstenFirstFrameObserver();
  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_hostingController);
  v4 = v3;
  result = sub_1A3EEE49C(v3);
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for StoryAsyncPlayerView()
{
  result = qword_1EB1884D0;
  if (!qword_1EB1884D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StoryAsyncPlayerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v3 = type metadata accessor for StoryAsyncPlayerView();
  v43 = *(v3 - 8);
  v42 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TungstenHostingView();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A46A6D8C();
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46A6DEC();
  v39 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46A6EB0();
  v16 = *(v15 - 8);
  v44 = v15;
  v45 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v40 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  TungstenHostingView.init(hostingController:)(*(*v1 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_hostingController), v7);
  sub_1A46A7148(0, &qword_1EB13FFD8, MEMORY[0x1E697DA80]);
  v19 = sub_1A5247C84();
  v20 = (*(*v47 + 136))(v19);

  v21 = 0.001;
  if (v20)
  {
    v22 = 1.0;
  }

  else
  {
    v22 = 0.001;
  }

  v23 = sub_1A46A71A8(v7, v11, type metadata accessor for TungstenHostingView);
  *&v11[*(v9 + 44)] = v22;
  v24 = MEMORY[0x1A5907080](v23, 0.15, 1.0, 0.0);
  v25 = sub_1A5247C84();
  v26 = (*(*v47 + 136))(v25);

  if (v26)
  {
    v21 = 1.0;
  }

  sub_1A46A71A8(v11, v14, sub_1A46A6D8C);
  v27 = v39;
  v28 = &v14[*(v39 + 36)];
  *v28 = v24;
  *(v28 + 1) = v21;
  v47 = v18;
  v29 = v41;
  sub_1A46A70E4(v2, v41);
  v30 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v31 = swift_allocObject();
  sub_1A46A71A8(v29, v31 + v30, type metadata accessor for StoryAsyncPlayerView);
  v32 = type metadata accessor for StoryAsyncPlayer();
  v33 = sub_1A46A6F84();
  v34 = sub_1A46A7354(&qword_1EB12A488, type metadata accessor for StoryAsyncPlayer);
  swift_retain_n();
  v35 = v40;
  sub_1A524B144();

  sub_1A46A72F8(v14);
  v50 = v34;
  v51 = v18;
  v47 = v27;
  v48 = v32;
  v49 = v33;
  swift_getOpaqueTypeConformance2();
  sub_1A46A7354(&qword_1EB12A490, type metadata accessor for StoryAsyncPlayer);
  v36 = v44;
  sub_1A524A4F4();

  return (*(v45 + 8))(v35, v36);
}

void sub_1A46A6D8C()
{
  if (!qword_1EB128868)
  {
    type metadata accessor for TungstenHostingView();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128868);
    }
  }
}

void sub_1A46A6DEC()
{
  if (!qword_1EB128488)
  {
    sub_1A46A6D8C();
    sub_1A46A6E54();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128488);
    }
  }
}

void sub_1A46A6E54()
{
  if (!qword_1EB128018)
  {
    sub_1A3E75420();
    v0 = sub_1A52494B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128018);
    }
  }
}

void sub_1A46A6EB0()
{
  if (!qword_1EB127598)
  {
    sub_1A46A6DEC();
    type metadata accessor for StoryAsyncPlayer();
    sub_1A46A6F84();
    sub_1A46A7354(&qword_1EB12A488, type metadata accessor for StoryAsyncPlayer);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB127598);
    }
  }
}

unint64_t sub_1A46A6F84()
{
  result = qword_1EB128490;
  if (!qword_1EB128490)
  {
    sub_1A46A6DEC();
    sub_1A46A7034();
    sub_1A46A7354(&unk_1EB128020, sub_1A46A6E54);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128490);
  }

  return result;
}

unint64_t sub_1A46A7034()
{
  result = qword_1EB128870;
  if (!qword_1EB128870)
  {
    sub_1A46A6D8C();
    sub_1A46A7354(&qword_1EB12A398, type metadata accessor for TungstenHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128870);
  }

  return result;
}

uint64_t sub_1A46A70E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoryAsyncPlayerView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A46A7148(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    FrameObserver = type metadata accessor for TungstenFirstFrameObserver();
    v7 = a3(a1, FrameObserver);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A46A71A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A46A7210()
{
  v1 = type metadata accessor for StoryAsyncPlayerView();
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  sub_1A46A7148(0, &qword_1EB13FFD8, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v3 = *(*v2 + OBJC_IVAR____TtC12PhotosUICore16StoryAsyncPlayer_hostingController);
  v4 = *(*v7 + 120);
  v5 = v3;
  v4(v3);
}

uint64_t sub_1A46A72F8(uint64_t a1)
{
  sub_1A46A6DEC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A46A7354(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A46A73E4()
{
  type metadata accessor for StoryAsyncPlayer();
  if (v0 <= 0x3F)
  {
    sub_1A46A7148(319, &qword_1EB13FFD8, MEMORY[0x1E697DA80]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A46A7484()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1CD958);
  __swift_project_value_buffer(v0, qword_1EB1CD958);
  sub_1A5246EF4();
}

void sub_1A46A74F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for LemonadeStatusView()
{
  result = qword_1EB16C860;
  if (!qword_1EB16C860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A46A75A4()
{
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadeStatusView();
  sub_1A3FF29A0(v2);
  sub_1A3D63A8C(0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
    sub_1A408BBE8(v2);
    PXPresentationEnvironmentForSender();
  }

  sub_1A5245C94();
}

uint64_t sub_1A46A786C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *(type metadata accessor for LemonadeStatusView() + 20);
  *(a2 + v3) = swift_getKeyPath();
  sub_1A46A74F0(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);

  return swift_storeEnumTagMultiPayload();
}

id sub_1A46A7900@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v11 = *v2;
  sub_1A46A8834(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeStatusView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1A46A87CC(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for LemonadeStatusView);
  v8 = v11;
  *a2 = v11;
  a2[1] = sub_1A46A889C;
  a2[2] = v7;

  return v8;
}

id sub_1A46A7A2C(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  v6 = &v5[OBJC_IVAR____TtC12PhotosUICore21FooterViewCoordinator_viewControllerPresentationHandler];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_1A46A7AA4()
{
  v1 = *v0;
  sub_1A46A7E94();
  sub_1A5249DA4();
  v2 = objc_allocWithZone(PXPhotosGlobalFooterView);
  v3 = v6;
  v4 = [v2 initWithFrame:0 needsWorkaroundFor53118165:{0.0, 0.0, 0.0, 0.0}];
  [v4 setViewModel_];
  [v4 setDelegate_];

  return v4;
}

id sub_1A46A7B60@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = type metadata accessor for FooterViewCoordinator();
  v6 = objc_allocWithZone(v5);
  swift_unknownObjectWeakInit();
  v7 = &v6[OBJC_IVAR____TtC12PhotosUICore21FooterViewCoordinator_viewControllerPresentationHandler];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1A46A7BF4(uint64_t a1, char a2, int a3, int a4, id a5)
{
  if ((a2 & 1) != 0 || *&a1 <= 0.0)
  {
    return 0;
  }

  [a5 sizeThatFits_];
  return v7;
}

uint64_t sub_1A46A7C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A46A7EF0();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A46A7CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A46A7EF0();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A46A7D18()
{
  sub_1A46A7EF0();
  sub_1A52496F4();
  __break(1u);
}

void sub_1A46A7E94()
{
  if (!qword_1EB13FFE0)
  {
    sub_1A46A7EF0();
    v0 = sub_1A5249DB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13FFE0);
    }
  }
}

unint64_t sub_1A46A7EF0()
{
  result = qword_1EB13FFE8;
  if (!qword_1EB13FFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13FFE8);
  }

  return result;
}

void sub_1A46A7F68(void *a1)
{
  v2 = a1;
  if (v2)
  {
    v3 = v2;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    (*(v1 + OBJC_IVAR____TtC12PhotosUICore21FooterViewCoordinator_viewControllerPresentationHandler))(0, v3);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      swift_unknownObjectWeakAssign();
      (*(v1 + OBJC_IVAR____TtC12PhotosUICore21FooterViewCoordinator_viewControllerPresentationHandler))(1, v3);
    }

    else
    {
      if (qword_1EB1CD950 != -1)
      {
        swift_once();
      }

      v5 = sub_1A5246F24();
      __swift_project_value_buffer(v5, qword_1EB1CD958);
      v3 = sub_1A5246F04();
      v6 = sub_1A524D244();
      if (os_log_type_enabled(v3, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1A3C1C000, v3, v6, "No presented view controller to dismiss for the footer view action", v7, 2u);
        MEMORY[0x1A590EEC0](v7, -1, -1);
      }
    }
  }
}

uint64_t sub_1A46A80F0(void *a1)
{
  v2 = sub_1A524BEE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A524BF64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB12B180);
  v10 = sub_1A524D474();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  aBlock[4] = sub_1A46A87BC;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_249;
  v12 = _Block_copy(aBlock);
  v13 = a1;

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A3C29CE4(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C38394();
  sub_1A3C29CE4(&qword_1EB12B1B0, sub_1A3C38394);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v9, v5, v12);
  _Block_release(v12);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1A46A83DC()
{
  result = qword_1EB140000;
  if (!qword_1EB140000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140000);
  }

  return result;
}

unint64_t sub_1A46A8450()
{
  result = qword_1EB140008;
  if (!qword_1EB140008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140008);
  }

  return result;
}

void sub_1A46A84DC()
{
  sub_1A3C52C70(319, &qword_1EB120A10);
  if (v0 <= 0x3F)
  {
    sub_1A46A74F0(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t objectdestroyTm_71()
{
  v1 = (type metadata accessor for LemonadeStatusView() - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[7];
  sub_1A46A74F0(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3D63A8C(0);
    v5 = v4;
    v6 = *(v4 - 8);
    if (!(*(v6 + 48))(v2 + v3, 1, v4))
    {
      (*(v6 + 8))(v2 + v3, v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A46A87CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A46A8834(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

Swift::Void __swiftcall PXCreateSharedAlbumActionPerformer.performLemonadeUserInteractionTask()()
{
  v1 = v0;
  v2 = type metadata accessor for SharedAlbumCreationView();
  MEMORY[0x1EEE9AC00](v2 - 8);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A40730A4(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for LemonadeNavigationContext(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for LemonadeDetailsContext();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  type metadata accessor for LemonadePhotoLibraryContext();
  v11 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)([v0 photoLibrary], 0, 0);
  j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v17);
  v12 = sub_1A3C799F0(v9, 0, 0, 0, v6, &v17, v11, 2);
  type metadata accessor for SharedAlbumActionViewModel();
  v13 = swift_allocObject();
  *(v13 + 16) = v1;

  v14 = v1;
  v15 = sub_1A3C30368();
  SharedAlbumActionViewModel.__allocating_init(navigationContext:extensionContext:sharedAlbum:sharedAlbums:assets:mediaSources:collectionShareAssetSources:albumName:batchComment:perAssetCreationOptions:selectedPostToAlbumUUID:clientAlreadyHasSensitivityProtectionLogic:updateCallback:doneCallback:)(v12, 0, 0, MEMORY[0x1E69E7CC0], 0, 0, 0, 0, 0, 0, 0, 0, v15 & 1, 0, 0, sub_1A46A8BE8, v13);
}

void sub_1A46A8BE8(char a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  if (a2)
  {
    v5 = sub_1A5240B74();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [v4 completeUserInteractionTaskWithSuccess:a1 & 1 error:?];
}

void sub_1A46A8C60()
{
  if (!qword_1EB140078)
  {
    type metadata accessor for SharedAlbumCreationView();
    sub_1A46A54C4();
    v0 = type metadata accessor for PXSwiftUIHostingViewController();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB140078);
    }
  }
}

uint64_t sub_1A46A8CC4(uint64_t a1)
{
  v2 = type metadata accessor for SharedAlbumCreationView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A46A8D68@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for SocialGroupView();
  v15 = a7 + v14[14];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = *(a6 - 8);
  (*(v16 + 16))(a7, a1, a6);
  *(a7 + v14[9]) = a2;
  *(a7 + v14[10]) = a3;
  *(a7 + v14[11]) = a4;
  *(a7 + v14[12]) = a5;
  v17 = a3;
  v18 = PXDisplayCollectionDetailedCountsMake(a2);
  v20 = v19;
  v22 = v21;
  v23 = v18;
  result = (*(v16 + 8))(a1, a6);
  v25 = (a7 + v14[13]);
  *v25 = v20;
  *(v25 + 1) = v22;
  v25[2] = v23;
  return result;
}

uint64_t sub_1A46A8EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v54 = sub_1A5249234();
  v53 = *(v54 - 1);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 24);
  v10 = type metadata accessor for SocialGroupView.AssetView();
  WitnessTable = swift_getWitnessTable();
  v67.n128_u64[0] = v5;
  v67.n128_u64[1] = v10;
  v68 = v9;
  v69 = WitnessTable;
  v12 = type metadata accessor for LemonadeInlineStoryPlayerView();
  v56 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v55 = &v51 - v16;
  v59 = sub_1A5249754();
  v58 = *(v59 - 8);
  v18 = MEMORY[0x1EEE9AC00](v59);
  v19 = &v51 - v17;
  if (*(v2 + *(a1 + 48)) == 1)
  {
    v20 = (*(v6 + 16))(v57, v2, v5, v18);
    v54 = &v51;
    v75.n128_u64[0] = *(v2 + *(a1 + 36));
    v75.n128_u8[8] = 3;
    MEMORY[0x1EEE9AC00](v20);
    v22 = v21;
    sub_1A3D3F1B0(&v67);
    v61 = v67;
    LOBYTE(v62) = LOBYTE(v68);
    v63 = v69;
    v64 = v70;
    v65 = v71;
    v66 = v72;
    sub_1A3D3F204(v57, &v75, &v61, sub_1A46A98B8, 0, 0, v5, v14, v10);
    v57 = swift_getWitnessTable();
    v23 = v56;
    v24 = *(v56 + 2);
    v25 = v55;
    v24(v55, v14, v12);
    v26 = *(v23 + 1);
    v26(v14, v12);
    v24(v14, v25, v12);
    sub_1A3DF4798(v14, v12);
    v26(v14, v12);
    v26(v25, v12);
    v27 = WitnessTable;
  }

  else
  {
    v56 = &v51 - v17;
    v57 = WitnessTable;
    v28 = *(a1 + 56);
    v29 = v2 + *(a1 + 52);
    v30 = *v29;
    v31 = *(v29 + 8);
    v32 = *(v2 + v28);
    if (*(v2 + v28 + 8) != 1)
    {

      sub_1A524D254();
      v33 = sub_1A524A014();
      sub_1A5246DF4();

      v34 = v52;
      sub_1A5249224();
      swift_getAtKeyPath();
      sub_1A3DD15BC(v32, 0);
      (*(v53 + 8))(v34, v54);
    }

    v35 = v31;
    v36 = PXDisplayCollectionDetailedCountsMake(v30);
    v38 = v37;
    v40 = v39;
    v41 = *(v2 + *(a1 + 44));
    v61.n128_u64[0] = v37;
    v61.n128_u64[1] = v39;
    v62 = v36;
    LOBYTE(v63) = v41;
    v42 = *(*(v10 - 8) + 16);
    v42(&v67, &v61, v10);
    v43 = v67;
    v75 = v67;
    v76 = v68;
    v77 = v69;
    v42(&v61, &v75, v10);
    v44 = v61.n128_u64[0];
    v75 = v61;
    v76 = v62;
    v77 = v63;
    v45 = v61.n128_u64[1];
    v46 = v44;
    swift_getWitnessTable();
    v19 = v56;
    v47 = v10;
    v27 = v57;
    sub_1A3DF4890(&v75, v12, v47);
  }

  v73 = swift_getWitnessTable();
  v74 = v27;
  v48 = v59;
  swift_getWitnessTable();
  v49 = v58;
  (*(v58 + 16))(v60, v19, v48);
  return (*(v49 + 8))(v19, v48);
}

void sub_1A46A962C(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X8>)
{
  v6 = sub_1A5249234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a2;
  v10 = type metadata accessor for SocialGroupView();
  v11 = v10[14];
  v12 = a1 + v10[13];
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(a1 + v11);
  if (*(a1 + v11 + 8) != 1)
  {

    sub_1A524D254();
    v30 = v6;
    v16 = sub_1A524A014();
    v31 = v13;
    v17 = v16;
    sub_1A5246DF4();

    v13 = v31;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3DD15BC(v15, 0);
    (*(v7 + 8))(v9, v30);
  }

  v18 = v14;
  v19 = PXDisplayCollectionDetailedCountsMake(v13);
  v21 = v20;
  v23 = v22;
  v24 = *(a1 + v10[11]);
  v33 = v20;
  v34 = v22;
  v35 = v19;
  v36 = v24;
  v25 = type metadata accessor for SocialGroupView.AssetView();
  swift_getWitnessTable();
  v26 = *(*(v25 - 8) + 16);
  v26(&v37, &v33, v25);

  v27 = v37;
  v28 = v38;
  v33 = v37;
  v34 = v38;
  v35 = v39;
  v36 = v40;
  v26(a3, &v33, v25);
}

uint64_t sub_1A46A9908@<X0>(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v31 = a3;
  v29 = a1;
  v33 = a4;
  v7 = sub_1A52429A4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46AA280();
  v32 = v11;
  v30 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46AA474(0, &qword_1EB122D38, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  v17 = sub_1A5243594();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v31 & 1) == 0 || a2)
  {
    v23 = PXDisplayCollectionDetailedCountsMake(v19);
    v24 = v29;
    v34 = v29;
    v35 = a2;
    v36 = a5;
    (*(v8 + 104))(v10, *MEMORY[0x1E69C2050], v7, v23);
    sub_1A46AA2DC();
    v25 = v24;
    v26 = a2;
    sub_1A5242594();
    v27 = v30;
    v28 = v32;
    (*(v30 + 16))(v16, v13, v32);
    swift_storeEnumTagMultiPayload();
    sub_1A46AA330(&qword_1EB129098, MEMORY[0x1E69C2520]);
    sub_1A46AA330(&qword_1EB124F30, sub_1A46AA280);
    sub_1A5249744();
    return (*(v27 + 8))(v13, v28);
  }

  else
  {
    sub_1A5243584();
    (*(v18 + 16))(v16, v21, v17);
    swift_storeEnumTagMultiPayload();
    sub_1A46AA330(&qword_1EB129098, MEMORY[0x1E69C2520]);
    sub_1A46AA330(&qword_1EB124F30, sub_1A46AA280);
    sub_1A5249744();
    return (*(v18 + 8))(v21, v17);
  }
}

void sub_1A46A9D70()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_1A3C52C70(319, &qword_1EB126C28);
    if (v1 <= 0x3F)
    {
      sub_1A3F2D6AC();
      if (v2 <= 0x3F)
      {
        sub_1A46AA1B0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1A46A9E4C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_1A46A9FB8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v18 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *v18 = v19;
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

void sub_1A46AA1B0()
{
  if (!qword_1EB124830)
  {
    v0 = sub_1A5247E54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124830);
    }
  }
}

uint64_t sub_1A46AA200()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1A46AA280()
{
  if (!qword_1EB124F28)
  {
    sub_1A46AA2DC();
    v0 = sub_1A52425B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124F28);
    }
  }
}

unint64_t sub_1A46AA2DC()
{
  result = qword_1EB125598;
  if (!qword_1EB125598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125598);
  }

  return result;
}

uint64_t sub_1A46AA330(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A46AA378()
{
  result = qword_1EB122A98;
  if (!qword_1EB122A98)
  {
    sub_1A46AA474(255, &qword_1EB122A90, MEMORY[0x1E697F960]);
    sub_1A46AA330(&qword_1EB129098, MEMORY[0x1E69C2520]);
    sub_1A46AA330(&qword_1EB124F30, sub_1A46AA280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122A98);
  }

  return result;
}

void sub_1A46AA474(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A5243594();
    sub_1A46AA280();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

double sub_1A46AA53C(double a1, double a2, double a3, double a4)
{
  swift_beginAccess();
  v5.f64[0] = a1;
  v5.f64[1] = a2;
  v6.f64[0] = a3;
  v6.f64[1] = a4;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v4 + 40), v5), vceqq_f64(*(v4 + 56), v6)))))
  {
    *(v4 + 40) = a1;
    *(v4 + 48) = a2;
    result = a4;
    *(v4 + 56) = a3;
    *(v4 + 64) = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A46AD948();
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A46AA674(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 72) == v2)
  {
    *(v1 + 72) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A46AD948();
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A46AA768(double a1)
{
  result = swift_beginAccess();
  if (*(v1 + 80) == a1)
  {
    *(v1 + 80) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A46AD948();
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A46AA864(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 128) == v2)
  {
    *(v1 + 128) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A46AD948();
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A46AA958(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 129) == v2)
  {
    *(v1 + 129) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A46AD948();
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A46AAA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1A46AAAF4(uint64_t result)
{
  v2 = v1;
  v3 = result;
  if ((result & 0x800000000000) != 0)
  {
    v4 = [*(v1 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel_photosViewModel) allowsPreviewHeader];
    result = swift_beginAccess();
    if (v4 == *(v2 + 72))
    {
      *(v2 + 72) = v4;
      if ((v3 & 0x2000000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A46AD948();
    sub_1A52415C4();
  }

  if ((v3 & 0x2000000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  [*(v2 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel_photosViewModel) chromeTitleFloatingFraction];
  v7 = 1.0 - v6;
  result = swift_beginAccess();
  if (*(v2 + 80) == v7)
  {
    *(v2 + 80) = v7;
  }

  else
  {
    v8 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v8);
    sub_1A46AD948();
    sub_1A52415C4();
  }

LABEL_10:
  if ((v3 & 0x800200000000) != 0)
  {
    sub_1A46AAE40();
  }

  else if ((v3 & 4) == 0)
  {
    return result;
  }

  return sub_1A46AAF94();
}

uint64_t sub_1A46AAE40()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel_photosViewModel);
  if ([v1 allowsPreviewHeader])
  {
    v2 = [v1 emptyPlaceholderState] - 4 < 0xFFFFFFFFFFFFFFFELL;
    v3 = (v0 + 128);
    result = swift_beginAccess();
    if (((v2 ^ *(v0 + 128)) & 1) == 0)
    {
LABEL_3:
      *v3 = v2;
      return result;
    }
  }

  else
  {
    v3 = (v0 + 128);
    result = swift_beginAccess();
    LOBYTE(v2) = 0;
    if ((*(v0 + 128) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1A46AD948();
  sub_1A52415C4();
}

uint64_t sub_1A46AAF94()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel_photosViewModel);
  if ([v1 allowsPreviewHeader] && !objc_msgSend(v1, sel_isInSelectMode))
  {
    v4 = [v1 emptyPlaceholderState] - 4 < 0xFFFFFFFFFFFFFFFELL;
    v2 = (v0 + 129);
    result = swift_beginAccess();
    if ((v4 ^ *(v0 + 129)))
    {
      goto LABEL_4;
    }
  }

  else
  {
    v2 = (v0 + 129);
    result = swift_beginAccess();
    LOBYTE(v4) = 0;
    if (*(v0 + 129))
    {
LABEL_4:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A46AD948();
      sub_1A52415C4();
    }
  }

  *v2 = v4;
  return result;
}

uint64_t sub_1A46AB0FC()
{
  swift_getKeyPath();
  sub_1A46AD948();
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 16);
}

__n128 sub_1A46AB184@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A46AD948();
  sub_1A52415D4();

  swift_beginAccess();
  v4 = v3[2].n128_u8[0];
  result = v3[1];
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_1A46AB24C(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  if ((*(v3 + 32) & 1) == 0)
  {
    if ((a3 & 1) == 0 && *(v3 + 16) == *&a1 && *(v3 + 24) == *&a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A46AD948();
    sub_1A52415C4();
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v3 + 16) = *&a1;
  *(v3 + 24) = *&a2;
  *(v3 + 32) = a3 & 1;
  return result;
}

double sub_1A46AB380()
{
  swift_getKeyPath();
  sub_1A46AD948();
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 40);
}

__n128 sub_1A46AB408@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A46AD948();
  sub_1A52415D4();

  swift_beginAccess();
  result = *(v3 + 40);
  v5 = *(v3 + 56);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

double sub_1A46AB4C4()
{
  v1 = v0;
  v2 = sub_1A46ADAC0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v26 = v0;
  sub_1A46AD948();
  sub_1A52415D4();

  swift_beginAccess();
  if (*(v0 + 72) != 1)
  {
    v10 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel__bottomChromeHeight;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v10, v2);
    sub_1A52467B4();
  }

  swift_getKeyPath();
  v25 = v0;
  sub_1A52415D4();

  swift_beginAccess();
  if (*(v0 + 32))
  {
    if (qword_1EB15B710 != -1)
    {
      swift_once();
    }

    v6 = sub_1A5246F24();
    __swift_project_value_buffer(v6, qword_1EB15B718);
    v7 = sub_1A5246F04();
    v8 = sub_1A524D244();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v9 = 136315138;
      sub_1A3C2EF94();
    }

    v11 = [objc_opt_self() currentDevice];
    v12 = [v11 userInterfaceIdiom];

    v13 = 87.0;
    if (v12 == 1)
    {
      v13 = 76.5;
    }

    if (v12 == 6)
    {
      return 98.5;
    }

    else
    {
      return v13;
    }
  }

  else
  {
    v16 = *(v0 + 16);
    v15 = *(v0 + 24);
    if (v15 >= v16)
    {
      v17 = *(v0 + 16);
    }

    else
    {
      v17 = *(v0 + 24);
    }

    v18 = v16 > v15;
    v19 = 0.55;
    if (!v18)
    {
      v19 = 0.6;
    }

    v20 = 0.7;
    if (!v18)
    {
      v20 = 0.565;
    }

    if (v17 <= 460.0)
    {
      v19 = v20;
    }

    v21 = v15 * v19;
    swift_getKeyPath();
    v24 = v0;
    sub_1A52415D4();

    swift_beginAccess();
    return v21 - *(v0 + 40);
  }
}

uint64_t sub_1A46AB9F8()
{
  swift_getKeyPath();
  sub_1A46AD948();
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 72);
}

double sub_1A46ABA7C()
{
  sub_1A5247BA4();
  v2 = v1;
  v3 = *(v0 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel_specModel);
  swift_getKeyPath();
  sub_1A46ADB3C();
  sub_1A52415D4();

  if ([*(v3 + 16) globalHeaderBackgroundShouldRespectSafeAreaInsets])
  {
    swift_getKeyPath();
    sub_1A46AD948();
    sub_1A52415D4();

    swift_beginAccess();
    swift_getKeyPath();
    sub_1A52415D4();
  }

  return v2;
}

id sub_1A46ABBD0()
{
  swift_getKeyPath();
  sub_1A46ADB3C();
  sub_1A52415D4();

  v1 = *(v0 + 16);

  return v1;
}

double sub_1A46ABC50()
{
  sub_1A5247BA4();
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 sharedInstance];
  [v3 interitemSpacing];

  sub_1A46ABA7C();
  if (v4 > 0.0)
  {
    v5 = [objc_opt_self() sharedInstance];
    [v5 sidebarPadding];

    v6 = [v2 sharedInstance];
    [v6 interitemSpacing];
  }

  return v1;
}

uint64_t sub_1A46ABD50@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A46AD948();
  sub_1A52415D4();

  result = swift_beginAccess();
  *a2 = *(v3 + 72);
  return result;
}

double sub_1A46ABE04()
{
  swift_getKeyPath();
  sub_1A46AD948();
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 80);
}

double sub_1A46ABE88@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A46AD948();
  sub_1A52415D4();

  swift_beginAccess();
  result = *(v3 + 80);
  *a2 = result;
  return result;
}

uint64_t sub_1A46ABF3C()
{
  swift_getKeyPath();
  sub_1A46AD948();
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 128);
}

uint64_t sub_1A46ABFC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A46AD948();
  sub_1A52415D4();

  result = swift_beginAccess();
  *a2 = *(v3 + 128);
  return result;
}

uint64_t sub_1A46AC074()
{
  swift_getKeyPath();
  sub_1A46AD948();
  sub_1A52415D4();

  swift_beginAccess();
  return *(v0 + 129);
}

uint64_t sub_1A46AC0F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A46AD948();
  sub_1A52415D4();

  result = swift_beginAccess();
  *a2 = *(v3 + 129);
  return result;
}

void sub_1A46AC1AC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1A46AD948();
  sub_1A52415D4();

  v3 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel__previewContentView;
  swift_beginAccess();
  v4 = *(a2 + v3);
  swift_getObjectType();
  v5 = v4;
  sub_1A524D7A4();
}

void *sub_1A46AC25C()
{
  swift_getKeyPath();
  v5 = v0;
  sub_1A46AD948();
  sub_1A52415D4();

  v1 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel__previewContentView;
  swift_beginAccess();
  v2 = *(v5 + v1);
  v3 = v2;
  return v2;
}

void (*sub_1A46AC2F0(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return sub_1A46AC378;
}

void sub_1A46AC378(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[6];
    v5 = *(v4 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel_photosViewModel);
    v3[4] = sub_1A46AE1EC;
    v3[5] = v4;
    *v3 = MEMORY[0x1E69E9820];
    v3[1] = 1107296256;
    v3[2] = sub_1A3D7692C;
    v3[3] = &block_descriptor_42_4;
    v6 = _Block_copy(v3);

    [v5 performChanges_];
    _Block_release(v6);
  }

  free(v3);
}

id sub_1A46AC46C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A46AD948();
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel__previewContentView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1A46AC510(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A46AC540(v1);
}

void sub_1A46AC540(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel__previewContentView;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    aBlock[0] = v2;
    sub_1A46AD948();
    sub_1A52415C4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for PhotosPreviewHeaderContentView();
  v6 = v5;
  v7 = a1;
  v8 = sub_1A524DBF4();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
  v11 = v7;

  v12 = *(v2 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel_photosViewModel);
  aBlock[4] = sub_1A46ADCC0;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D7692C;
  aBlock[3] = &block_descriptor_250;
  v13 = _Block_copy(aBlock);

  [v12 performChanges_];
  _Block_release(v13);
}

void (*sub_1A46AC73C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1A46AD948();
  sub_1A52415D4();

  *v4 = v1;
  swift_getKeyPath();
  sub_1A52415F4();

  v4[7] = sub_1A46AC2F0(v4);
  return sub_1A46AC844;
}

void sub_1A46AC844(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

void sub_1A46AC8D8()
{
  v1 = v0;
  swift_getKeyPath();
  v9 = v0;
  sub_1A46AD948();
  sub_1A52415D4();

  v2 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel__previewContentView;
  swift_beginAccess();
  v3 = *(v9 + v2);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel_photosViewModel);
    v5 = v3;
    sub_1A48E15E0(v4);
  }

  else
  {
    if (qword_1EB15B710 != -1)
    {
      swift_once();
    }

    v6 = sub_1A5246F24();
    __swift_project_value_buffer(v6, qword_1EB15B718);
    v5 = sub_1A5246F04();
    v7 = sub_1A524D244();
    if (os_log_type_enabled(v5, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1A3C1C000, v5, v7, "can't present 1-up because of missing content view", v8, 2u);
      MEMORY[0x1A590EEC0](v8, -1, -1);
    }
  }
}

uint64_t sub_1A46ACA3C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 88);
  v1 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel__bottomChromeHeight;
  v2 = sub_1A46ADAC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  v3 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1A46ACB34()
{
  sub_1A46ACA3C();

  return swift_deallocClassInstance();
}

void sub_1A46ACB94(uint64_t a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel_photosViewModel) dataSourceManager];
  v4 = [v3 dataSource];

  sub_1A49107E4(v4, a1);
}

void sub_1A46ACCA0()
{
  v1 = sub_1A46ADAC0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel__bottomChromeHeight;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  sub_1A52467B4();
}

void sub_1A46ACDB8()
{
  swift_beginAccess();
  sub_1A46ADAC0();
  sub_1A52467C4();
}

void sub_1A46ACE24(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  *a1 = v2;
  swift_beginAccess();
  sub_1A46ADAC0();
  sub_1A52467A4();
}

void (*sub_1A46ACEC8(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1A46AC73C(v2);
  return sub_1A3D3D728;
}

void sub_1A46ACF3C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel_photosViewModel);
  v3[4] = sub_1A40178A4;
  v3[5] = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_1A3D7692C;
  v3[3] = &block_descriptor_37_5;
  v2 = _Block_copy(v3);
  [v1 performChanges_];
  _Block_release(v2);
}

void sub_1A46ACFEC(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  sub_1A3C52C70(0, &qword_1EB126A08);
  v5 = v4;
  v6 = sub_1A524DBF4();

  if (v6)
  {
    v7 = *(v2 + 16);
    *(v2 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A46ADB3C();
    sub_1A52415C4();
  }
}

id sub_1A46AD128@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A46ADB3C();
  sub_1A52415D4();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_1A46AD1DC()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_1006DC28BB32D3E2873CE0C2560545B221PhotosLayoutSpecModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1A46AD290()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B718);
  __swift_project_value_buffer(v0, qword_1EB15B718);
  sub_1A5246EF4();
}

void sub_1A46AD2F4(void *a1, uint64_t a2)
{
  v3 = v2;
  v10 = 0;
  v6 = sub_1A46ADAC0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = *(MEMORY[0x1E69DDCE0] + 16);
  *(v3 + 40) = *MEMORY[0x1E69DDCE0];
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;
  *(v3 + 56) = v7;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0x3FF0000000000000;
  *(v3 + 128) = 0;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel__previewContentView) = 0;
  v8 = (v3 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel_photosViewModelObservation);
  *v8 = 0;
  v8[1] = 0;
  sub_1A5241604();
  *(v3 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel_photosViewModel) = a1;
  v11 = a2;
  sub_1A3C341C8(a2, v3 + 88);
  v9 = a1;
  aBlock = sub_1A47A5E88();
  swift_getKeyPath();
  sub_1A4233CD4();
  sub_1A52467D4();
}

__n128 sub_1A46AD8EC()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  swift_beginAccess();
  result = v4;
  *(v1 + 56) = v3;
  *(v1 + 40) = v4;
  return result;
}

unint64_t sub_1A46AD948()
{
  result = qword_1EB125E08;
  if (!qword_1EB125E08)
  {
    type metadata accessor for PhotosDetailsViewHeaderContainerViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125E08);
  }

  return result;
}

uint64_t sub_1A46AD9D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 80) = v2;
  return result;
}

uint64_t sub_1A46ADA5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

uint64_t sub_1A46ADAC0()
{
  result = qword_1EB124A58;
  if (!qword_1EB124A58)
  {
    sub_1A46717CC(255, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    sub_1A52467E4();
  }

  return result;
}

unint64_t sub_1A46ADB3C()
{
  result = qword_1EB173DD0;
  if (!qword_1EB173DD0)
  {
    type metadata accessor for PhotosLayoutSpecModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB173DD0);
  }

  return result;
}

void sub_1A46ADBB4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel__previewContentView;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;
  v5 = v1;

  v6 = *(v2 + OBJC_IVAR____TtC12PhotosUICore41PhotosDetailsViewHeaderContainerViewModel_photosViewModel);
  aBlock[4] = sub_1A46AE1EC;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D7692C;
  aBlock[3] = &block_descriptor_46_9;
  v7 = _Block_copy(aBlock);

  [v6 performChanges_];
  _Block_release(v7);
}

uint64_t sub_1A46ADCD0()
{
  result = sub_1A46ADAC0();
  if (v1 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1A46ADE0C()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A46ADEB8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1A46AAAF4(a2);
  }

  return result;
}

void sub_1A46ADF50()
{
  swift_getObjectType();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1A524D7F4();
}

uint64_t sub_1A46ADFE8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 129) = v2;
  return result;
}

uint64_t sub_1A46AE03C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 128) = v2;
  return result;
}

uint64_t sub_1A46AE090()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = sub_1A419BCF8();

  return v2;
}

uint64_t sub_1A46AE0F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 72) = v2;
  return result;
}

uint64_t sub_1A46AE144(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      sub_1A46ACFEC([*(result + 24) spec]);
    }
  }

  return result;
}

uint64_t sub_1A46AE238@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46AE444(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1A3E87388(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5248284();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1A524D254();
    v13 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_1A46AE444(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t LemonadeNavigationContainer.init(navigationContext:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  v6 = MEMORY[0x1E697DCB8];
  sub_1A46AE444(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for LemonadeNavigationContainer();
  v8 = v7[9];
  *(a3 + v8) = swift_getKeyPath();
  sub_1A46AE444(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], v6);
  swift_storeEnumTagMultiPayload();
  v9 = a3 + v7[12];
  sub_1A524B694();
  *v9 = v13;
  *(v9 + 1) = v14;
  v10 = a3 + v7[13];
  *v10 = swift_getKeyPath();
  *(v10 + 1) = 0;
  *(v10 + 8) = 0;
  *(a3 + v7[10]) = a1;

  a2(v11);
}

uint64_t LemonadeNavigationContainer.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v45 = a2;
  v43 = *(a1 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 16);
  sub_1A46AEB0C();
  v9 = v8;
  v10 = *(a1 + 24);
  sub_1A46AE444(255, &qword_1EB140090, sub_1A46AEBC0, MEMORY[0x1E69E6720]);
  v12 = v11;
  v13 = sub_1A46AF12C();
  v51 = v12;
  v52 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = v7;
  v52 = v9;
  v37 = v10;
  v53 = v10;
  v54 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  v51 = v7;
  v52 = v9;
  v53 = v10;
  v54 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v15 = type metadata accessor for LemonadeNavigationStack();
  v41 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  sub_1A46AF234();
  v18 = sub_1A5248804();
  v39 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v38 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v40 = &v36 - v21;
  v22 = v3;
  v23 = v37;
  v46 = v7;
  v47 = v37;
  v48 = v3;

  sub_1A457A75C(sub_1A46AF4DC, v17);
  v25 = v42;
  v24 = v43;
  (*(v43 + 16))(v42, v22, a1);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v7;
  *(v27 + 24) = v23;
  (*(v24 + 32))(v27 + v26, v25, a1);
  WitnessTable = swift_getWitnessTable();
  sub_1A4135204();
  v29 = v38;
  sub_1A524AD04();

  (*(v41 + 8))(v17, v15);
  v30 = sub_1A46B0138(&qword_1EB127AA8, sub_1A46AF234);
  v49 = WitnessTable;
  v50 = v30;
  swift_getWitnessTable();
  v32 = v39;
  v31 = v40;
  v33 = *(v39 + 16);
  v33(v40, v29, v18);
  v34 = *(v32 + 8);
  v34(v29, v18);
  v33(v45, v31, v18);
  return (v34)(v31, v18);
}

void sub_1A46AEB0C()
{
  if (!qword_1EB140088)
  {
    sub_1A46AE444(255, &qword_1EB140090, sub_1A46AEBC0, MEMORY[0x1E69E6720]);
    sub_1A46AF12C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB140088);
    }
  }
}

void sub_1A46AEBC0()
{
  if (!qword_1EB140098)
  {
    sub_1A46AEC74();
    sub_1A46B0138(&qword_1EB1400C0, sub_1A46AEC74);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB140098);
    }
  }
}

void sub_1A46AEC74()
{
  if (!qword_1EB1400A0)
  {
    sub_1A46AECE4();
    sub_1A46AEF90();
    v0 = sub_1A5247F34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1400A0);
    }
  }
}

void sub_1A46AECE4()
{
  if (!qword_1EB1400A8)
  {
    sub_1A46AED4C();
    sub_1A5249F54();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1400A8);
    }
  }
}

void sub_1A46AED4C()
{
  if (!qword_1EB1400B0)
  {
    sub_1A3FF1E68();
    sub_1A46AEE8C();
    sub_1A46B0138(&qword_1EB127458, sub_1A3FF1E68);
    sub_1A52434E4();
    sub_1A46B0138(&unk_1EB124D80, MEMORY[0x1E69C24F0]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1400B0);
    }
  }
}

void sub_1A46AEE8C()
{
  if (!qword_1EB121F08)
  {
    sub_1A3FF1E68();
    sub_1A52434E4();
    sub_1A46B0138(&qword_1EB127458, sub_1A3FF1E68);
    sub_1A46B0138(&unk_1EB124D80, MEMORY[0x1E69C24F0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121F08);
    }
  }
}

unint64_t sub_1A46AEF90()
{
  result = qword_1EB1400B8;
  if (!qword_1EB1400B8)
  {
    sub_1A46AECE4();
    sub_1A3FF1E68();
    sub_1A46AEE8C();
    sub_1A46B0138(&qword_1EB127458, sub_1A3FF1E68);
    sub_1A52434E4();
    sub_1A46B0138(&unk_1EB124D80, MEMORY[0x1E69C24F0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A46B0138(&qword_1EB127710, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1400B8);
  }

  return result;
}

unint64_t sub_1A46AF12C()
{
  result = qword_1EB1400C8;
  if (!qword_1EB1400C8)
  {
    sub_1A46AE444(255, &qword_1EB140090, sub_1A46AEBC0, MEMORY[0x1E69E6720]);
    sub_1A46AEC74();
    sub_1A46B0138(&qword_1EB1400C0, sub_1A46AEC74);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1400C8);
  }

  return result;
}

void sub_1A46AF234()
{
  if (!qword_1EB127AA0)
  {
    sub_1A4135204();
    v0 = sub_1A5249D24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127AA0);
    }
  }
}

uint64_t sub_1A46AF298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v20 = a4;
  sub_1A46AEB0C();
  v8 = v7;
  sub_1A46AE444(255, &qword_1EB140090, sub_1A46AEBC0, MEMORY[0x1E69E6720]);
  sub_1A46AF12C();
  v24 = a2;
  v25 = v8;
  v26 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  type metadata accessor for LemonadeNavigationContainer();
  v21 = a2;
  v22 = a3;
  v23 = a1;
  swift_checkMetadataState();
  sub_1A524B0E4();
  v16 = *(v10 + 16);
  v16(v15, v12, OpaqueTypeMetadata2);
  v17 = *(v10 + 8);
  v17(v12, OpaqueTypeMetadata2);
  v16(v20, v15, OpaqueTypeMetadata2);
  return (v17)(v15, OpaqueTypeMetadata2);
}

uint64_t sub_1A46AF4E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v53 = a4;
  sub_1A46AEBC0();
  v52 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46AEC74();
  v49 = v10;
  v46 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A52498B4();
  v50 = *(v12 - 8);
  v51 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v43 - v16;
  sub_1A46AE444(0, &qword_1EB140090, sub_1A46AEBC0, MEMORY[0x1E69E6720]);
  v18 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v43 - v22;
  v24 = a2;
  v25 = a3;
  v26 = (a1 + *(type metadata accessor for LemonadeNavigationContainer() + 48));
  v27 = *v26;
  v28 = *(v26 + 1);
  LOBYTE(v55) = v27;
  v56 = v28;
  sub_1A46B0944(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v54 == 1)
  {
    v29 = v48;
    sub_1A5249814();
    v30 = (*(v50 + 16))(v14, v29, v51);
    v44 = v18;
    v31 = v49;
    MEMORY[0x1EEE9AC00](v30);
    *(&v43 - 4) = v24;
    *(&v43 - 3) = v25;
    *(&v43 - 2) = a1;
    sub_1A46AECE4();
    sub_1A46AEF90();
    v32 = v45;
    sub_1A5247F24();
    v33 = sub_1A46B0138(&qword_1EB1400C0, sub_1A46AEC74);
    v34 = v47;
    MEMORY[0x1A5904CD0](v32, v31, v33);
    v35 = v52;
    (*(v8 + 16))(v20, v34, v52);
    (*(v8 + 56))(v20, 0, 1, v35);
    v55 = v31;
    v56 = v33;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1A5904D00](v20, v35, OpaqueTypeConformance2);
    sub_1A3D19D5C(v20);
    (*(v8 + 8))(v34, v35);
    v37 = v31;
    v18 = v44;
    (*(v46 + 8))(v32, v37);
    (*(v50 + 8))(v48, v51);
  }

  else
  {
    v38 = v52;
    (*(v8 + 56))(v20, 1, 1, v52);
    v39 = sub_1A46B0138(&qword_1EB1400C0, sub_1A46AEC74);
    v55 = v49;
    v56 = v39;
    v40 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1A5904D00](v20, v38, v40);
    sub_1A3D19D5C(v20);
  }

  v41 = sub_1A46AF12C();
  MEMORY[0x1A5904CD0](v23, v18, v41);
  return sub_1A3D19D5C(v23);
}

uint64_t sub_1A46AFA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v7 = type metadata accessor for LemonadeNavigationContainer();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - v9;
  sub_1A3FF1E68();
  v12 = v11;
  v30 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46AED4C();
  v16 = *(v15 - 8);
  v31 = v15;
  v32 = v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7, v17);
  v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  (*(v8 + 32))(v21 + v20, v10, v7);
  sub_1A524B704();
  sub_1A46AEE8C();
  v23 = v22;
  v24 = sub_1A46B0138(&qword_1EB127458, sub_1A3FF1E68);
  v25 = sub_1A52434E4();
  v26 = sub_1A46B0138(&unk_1EB124D80, MEMORY[0x1E69C24F0]);
  v34 = v12;
  v35 = v25;
  v36 = v24;
  v37 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1A524A4C4();
  (*(v30 + 8))(v14, v12);
  v34 = v12;
  v35 = v23;
  v36 = v24;
  v37 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v28 = v31;
  sub_1A524AA94();
  return (*(v32 + 8))(v19, v28);
}

uint64_t sub_1A46AFE3C()
{
  v0 = sub_1A5248284();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A46AE238(v3);
  sub_1A5248274();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1A46AFF08()
{
  v0 = sub_1A52434E4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247D84();
  sub_1A3FF1E68();
  sub_1A46B0138(&qword_1EB127458, sub_1A3FF1E68);
  sub_1A46B0138(&unk_1EB124D80, MEMORY[0x1E69C24F0]);
  sub_1A524A944();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1A46B0074()
{
  type metadata accessor for LemonadeNavigationContainer();
  sub_1A46B0944(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A46B0138(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A46B0184@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB140080;
  return result;
}

_BYTE *sub_1A46B01D0(_BYTE *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*result == 1)
  {
    result = a2(&v4);
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
  return result;
}

void sub_1A46B028C()
{
  sub_1A46AE444(319, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A46AE444(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for LemonadeNavigationContext(319);
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          sub_1A46B0944(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
          if (v4 <= 0x3F)
          {
            sub_1A46AE444(319, &unk_1EB124680, sub_1A3E316EC, MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1A46B0428(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_1A5248284() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(sub_1A5242D14() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v12 & 0xF8 | 7;
  v16 = v7 + v15 + 1;
  v17 = v9 + 8;
  v18 = v13 + 8;
  if (v14 >= a2)
  {
    goto LABEL_34;
  }

  v19 = ((((*(v10 + 64) + ((v18 + ((v17 + (v16 & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v19 <= 3)
  {
    v20 = ((a2 - v14 + 0xFFFF) >> 16) + 1;
  }

  else
  {
    v20 = 2;
  }

  if (v20 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v20 < 0x100)
  {
    v21 = 1;
  }

  if (v20 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v23 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_34;
      }
    }

    else
    {
      v23 = *(a1 + v19);
      if (!v23)
      {
        goto LABEL_34;
      }
    }

LABEL_30:
    v25 = (v23 - 1) << (8 * v19);
    if (v19 <= 3)
    {
      v26 = *a1;
    }

    else
    {
      v25 = 0;
      v26 = *a1;
    }

    return v14 + (v26 | v25) + 1;
  }

  if (v22)
  {
    v23 = *(a1 + v19);
    if (*(a1 + v19))
    {
      goto LABEL_30;
    }
  }

LABEL_34:
  v27 = ((v17 + ((a1 + v16) & ~v15)) & 0xFFFFFFFFFFFFFFF8);
  if ((v11 & 0x80000000) != 0)
  {
    v29 = *(v10 + 48);

    return v29((v27 + v18) & ~v13);
  }

  else
  {
    v28 = *v27;
    if (v28 >= 0xFFFFFFFF)
    {
      LODWORD(v28) = -1;
    }

    return (v28 + 1);
  }
}

void sub_1A46B0694(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_1A5248284() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_1A5242D14() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v10 + 80);
  v15 = *(v12 + 80);
  if (v13 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  v17 = v14 & 0xF8 | 7;
  v18 = v9 + v17 + 1;
  v19 = v11 + 8;
  v20 = ((((*(v12 + 64) + ((v15 + 8 + ((v19 + (v18 & ~v17)) & 0xFFFFFFFFFFFFFFF8)) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v16 >= a3)
  {
    v23 = 0;
    if (v16 >= a2)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v20 <= 3)
    {
      v21 = ((a3 - v16 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (v16 >= a2)
    {
LABEL_23:
      if (v23 > 1)
      {
        if (v23 != 2)
        {
          *(a1 + v20) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_38;
        }

        *(a1 + v20) = 0;
      }

      else if (v23)
      {
        *(a1 + v20) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      if (!a2)
      {
        return;
      }

LABEL_38:
      v26 = ((v19 + ((a1 + v18) & ~v17)) & 0xFFFFFFFFFFFFFFF8);
      if ((v13 & 0x80000000) != 0)
      {
        v28 = *(v12 + 56);

        v28((v26 + v15 + 8) & ~v15, a2);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v27 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v27 = (a2 - 1);
        }

        *v26 = v27;
      }

      return;
    }
  }

  v24 = ~v16 + a2;
  bzero(a1, v20);
  if (v20 <= 3)
  {
    v25 = HIWORD(v24) + 1;
  }

  else
  {
    v25 = 1;
  }

  if (v20 <= 3)
  {
    *a1 = v24;
    if (v23 > 1)
    {
LABEL_33:
      if (v23 == 2)
      {
        *(a1 + v20) = v25;
      }

      else
      {
        *(a1 + v20) = v25;
      }

      return;
    }
  }

  else
  {
    *a1 = v24;
    if (v23 > 1)
    {
      goto LABEL_33;
    }
  }

  if (v23)
  {
    *(a1 + v20) = v25;
  }
}