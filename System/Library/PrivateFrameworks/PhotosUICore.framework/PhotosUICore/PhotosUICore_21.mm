void sub_1A3ED8930(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  v11 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v11);
  if (!a1 || (objc_opt_self(), (v12 = swift_dynamicCastObjCClass()) == 0))
  {
    SharedCollectionsLogger.getter();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v13 = v12;
  swift_unknownObjectRetain();
  v14 = [v13 videoComplement];
  [a3 setVideoComplement_];

  [a3 setMediaType_];
  swift_beginAccess();
  v15 = *(a4 + 16);
  if (v15 >> 62)
  {
    v16 = sub_1A524E2B4();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v16 >= *sub_1A45A9D98())
  {
    goto LABEL_13;
  }

  v17 = [a3 videoComplement];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 imagePath];

    if (v19)
    {
      v20 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithContentsOfFile_];

      if (v20)
      {
        swift_beginAccess();
        v21 = v20;
        MEMORY[0x1A5907D70]();
        if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
        }

        sub_1A524CAE4();
        swift_endAccess();
        swift_unknownObjectRelease();

        goto LABEL_14;
      }

LABEL_13:
      swift_unknownObjectRelease();
LABEL_14:
      dispatch_group_leave(a7);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1A3ED8D48(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, NSObject *a8)
{
  v83 = a4;
  v84 = a8;
  v80 = a6;
  v10 = sub_1A5246F24();
  v81 = *(v10 - 8);
  v82 = v10;
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v72 - v12;
  sub_1A3C68AC0(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v72 - v18;
  v20 = sub_1A5240E64();
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v72 - v22;
  v28 = MEMORY[0x1EEE9AC00](v24);
  if (!a1)
  {
    (*(v26 + 56))(v19, 1, 1, v20, v28);
    goto LABEL_6;
  }

  v76 = v27;
  v77 = &v72 - v25;
  v78 = v26;
  v79 = a3;
  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (v29)
  {
    v30 = v29;
    swift_unknownObjectRetain();
    v31 = UIImageJPEGRepresentation(v30, 0.899999976);
    if (v31)
    {
      v32 = v31;
      v33 = sub_1A5240EA4();
      v35 = v34;

      sub_1A3D602A8(v33, v35);
      v36 = sub_1A5240E84();
      sub_1A3C59280(v33, v35);
    }

    else
    {
      v36 = 0;
      v33 = 0;
      v35 = 0xF000000000000000;
    }

    v48 = v83;
    v49 = v79;
    [v79 setMediaData_];

    [v49 setMediaType_];
    swift_beginAccess();
    v50 = *(v48 + 16);
    if (v50 >> 62)
    {
      v51 = sub_1A524E2B4();
    }

    else
    {
      v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v51 < *sub_1A45A9D98())
    {
      swift_beginAccess();
      v52 = swift_unknownObjectRetain();
      MEMORY[0x1A5907D70](v52);
      if (*((*(v48 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v48 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();
      swift_endAccess();
    }

    sub_1A3DB556C(v33, v35);
    swift_unknownObjectRelease();
    goto LABEL_26;
  }

  v85 = a1;
  sub_1A3D60244();
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v38 = v86;
    v37 = v87;
    v39 = sub_1A5240E84();
    v40 = v79;
    [v79 setMediaData_];

    [v40 setMediaType_];
    v41 = v83;
    swift_beginAccess();
    v42 = *(v41 + 16);
    if (v42 >> 62)
    {
      v43 = sub_1A524E2B4();
    }

    else
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v43 < *sub_1A45A9D98() && (v44 = objc_allocWithZone(MEMORY[0x1E69DCAB8]), sub_1A3D602A8(v38, v37), v45 = sub_1A5240E84(), v46 = [v44 initWithData_], v45, sub_1A3C59280(v38, v37), v46))
    {
      swift_beginAccess();
      v47 = v46;
      MEMORY[0x1A5907D70]();
      if (*((*(v41 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v41 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A524CA74();
      }

      sub_1A524CAE4();
      swift_endAccess();
      sub_1A3C59280(v38, v37);
    }

    else
    {
      sub_1A3C59280(v38, v37);
    }

    goto LABEL_26;
  }

  v86 = a1;
  swift_unknownObjectRetain();
  v53 = swift_dynamicCast();
  v54 = v78;
  (*(v78 + 56))(v19, v53 ^ 1u, 1, v20);
  v75 = *(v54 + 48);
  if (v75(v19, 1, v20) == 1)
  {
LABEL_6:
    sub_1A3C68644(v19, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
    SharedCollectionsLogger.getter();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v55 = *(v54 + 32);
  v56 = v77;
  v80 = v54 + 32;
  v74 = v55;
  v55(v77, v19, v20);
  SharedCollectionsLogger.getter();
  (*(v54 + 16))(v23, v56, v20);
  v57 = sub_1A5246F04();
  v58 = sub_1A524D264();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v72 = v59;
    v73 = swift_slowAlloc();
    v86 = v73;
    *v59 = 136446210;
    sub_1A3EE0F88(&qword_1EB12B000, MEMORY[0x1E6968FB0]);
    sub_1A524EA44();
    (*(v54 + 8))(v23, v20);
    sub_1A3C2EF94();
  }

  v60 = *(v54 + 8);
  v60(v23, v20);
  (*(v81 + 8))(v13, v82);
  v61 = v77;
  sub_1A3ED4B30(v77, v16);
  if (v75(v16, 1, v20) == 1)
  {
    v60(v61, v20);
    sub_1A3C68644(v16, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v74(v76, v16, v20);
    v62 = sub_1A5240D44();
    v63 = v79;
    [v79 setMediaURL_];

    [v63 setMediaType_];
    v64 = v83;
    swift_beginAccess();
    v65 = *(v64 + 16);
    if (v65 >> 62)
    {
      v66 = sub_1A524E2B4();
    }

    else
    {
      v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v66 < *sub_1A45A9D98())
    {
      sub_1A5240E14();
      v67 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      v68 = v60;
      v69 = sub_1A524C634();

      v70 = [v67 initWithContentsOfFile_];

      v60 = v68;
      if (v70)
      {
        swift_beginAccess();
        v71 = v70;
        MEMORY[0x1A5907D70]();
        if (*((*(v64 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v64 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1A524CA74();
        }

        sub_1A524CAE4();
        swift_endAccess();
      }
    }

    v60(v76, v20);
    v60(v77, v20);
  }

LABEL_26:
  dispatch_group_leave(v84);
}

void sub_1A3ED98FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1A5246F24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  SharedCollectionsLogger.getter();
  v9 = sub_1A5246F04();
  v10 = sub_1A524D264();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1A3C1C000, v9, v10, "Computed media sources, previews and display media type", v11, 2u);
    MEMORY[0x1A590EEC0](v11, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    (*((*v13 & *v14) + 0x340))(a4);
  }
}

uint64_t sub_1A3ED9BA4()
{
  v1 = sub_1A524BEE4();
  v19 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524BF64();
  v17 = *(v4 - 8);
  v18 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BEF4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1A3C52C70(0, &qword_1EB12B180);
  (*(v8 + 104))(v10, *MEMORY[0x1E69E7F88], v7);
  v12 = sub_1A524D4C4();
  (*(v8 + 8))(v10, v7);
  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  *(v13 + 24) = v11;
  aBlock[4] = sub_1A3EE11B4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_193;
  v14 = _Block_copy(aBlock);
  v15 = v0;

  sub_1A524BF14();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1A3EE0F88(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C68AC0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v6, v3, v14);
  _Block_release(v14);

  (*(v19 + 8))(v3, v1);
  (*(v17 + 8))(v6, v18);
}

uint64_t sub_1A3ED9F7C(void *a1, uint64_t a2)
{
  v124 = sub_1A524BEE4();
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v121 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1A524BF64();
  v120 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v119 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C68AC0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v129 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v137 = &v118 - v9;
  v10 = sub_1A5240E64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v125 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v136 = &v118 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v128 = &v118 - v16;
  v147 = sub_1A5246F24();
  v17 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v143 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v118 = &v118 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v118 - v22;
  SharedCollectionsLogger.getter();
  v24 = sub_1A5246F04();
  v25 = sub_1A524D264();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1A3C1C000, v24, v25, "Computing previews and display media type", v26, 2u);
    MEMORY[0x1A590EEC0](v26, -1, -1);
  }

  v27 = *(v17 + 8);
  v145 = v17 + 8;
  v144 = v27;
  v27(v23, v147);
  v28 = swift_allocObject();
  v29 = MEMORY[0x1E69E7CC0];
  v131 = v28;
  *(v28 + 16) = MEMORY[0x1E69E7CC0];
  v30 = (v28 + 16);
  v31 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x218))();
  v32 = v31;
  if (v31 >> 62)
  {
LABEL_92:
    v149 = sub_1A524E2B4();
    if (v149)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v149 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v149)
    {
LABEL_5:
      v151 = v32 & 0xC000000000000001;
      swift_beginAccess();
      swift_beginAccess();
      v33 = 0;
      v150 = 0;
      v138 = 0;
      v139 = 0;
      v142 = v32 & 0xFFFFFFFFFFFFFF8;
      v141 = (v11 + 8);
      v34 = &selRef_maxColumns;
      *&v35 = 138412290;
      v130 = v35;
      v29 = v143;
      v140 = v30;
      v148 = v32;
      v11 = v149;
      v127 = a2;
      v126 = v10;
      while (1)
      {
        if (v151)
        {
          v41 = MEMORY[0x1A59097F0](v33, v32);
        }

        else
        {
          if (v33 >= *(v142 + 16))
          {
            goto LABEL_87;
          }

          v41 = *(v32 + 8 * v33 + 32);
        }

        v42 = v41;
        if (__OFADD__(v33, 1))
        {
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

        v152 = v33 + 1;
        if ([v41 v34[80]] == 1)
        {
          if (*v30 >> 62)
          {
            v43 = sub_1A524E2B4();
          }

          else
          {
            v43 = *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v43 >= *sub_1A45A9D98())
          {
            goto LABEL_51;
          }

          v44 = dispatch_semaphore_create(0);
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v146 = v44;

            v46 = [v42 mediaURL];
            if (!v46)
            {
              __break(1u);
LABEL_96:
              __break(1u);
LABEL_97:
              __break(1u);
LABEL_98:
              result = sub_1A524E6E4();
              __break(1u);
              return result;
            }

            v47 = v46;
            v48 = v128;
            sub_1A5240DE4();

            sub_1A5240E14();
            v135 = *v141;
            v135(v48, v10);
            v49 = swift_allocObject();
            v49[2] = v131;
            v49[3] = v42;
            v50 = v146;
            v49[4] = v146;

            v51 = v42;
            v52 = v50;
            sub_1A5240D14();

            v53 = objc_allocWithZone(MEMORY[0x1E6988168]);
            v54 = sub_1A5240D44();
            v55 = [v53 initWithURL:v54 options:0];

            v56 = objc_allocWithZone(MEMORY[0x1E6987E68]);
            v133 = v55;
            v57 = [v56 initWithAsset_];
            [v57 setAppliesPreferredTrackTransform_];
            v58 = sub_1A524DAD4();
            v60 = v59;
            v134 = v61;
            v132 = HIDWORD(v59);
            v62 = sub_1A524CCB4();
            v63 = *(v62 - 8);
            v64 = v137;
            (*(v63 + 56))(v137, 1, 1, v62);
            v65 = swift_allocObject();
            *(v65 + 16) = 0;
            *(v65 + 24) = 0;
            *(v65 + 32) = v57;
            *(v65 + 40) = v58;
            v66 = v132;
            *(v65 + 48) = v60;
            *(v65 + 52) = v66;
            *(v65 + 56) = v134;
            *(v65 + 64) = sub_1A3EE11C8;
            *(v65 + 72) = v49;
            v67 = v129;
            sub_1A3D600D0(v64, v129, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
            v68 = (*(v63 + 48))(v67, 1, v62);
            v132 = v57;
            v134 = v49;

            if (v68 == 1)
            {
              sub_1A3C68644(v67, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
            }

            else
            {
              sub_1A524CCA4();
              (*(v63 + 8))(v67, v62);
            }

            v82 = *(v65 + 16);
            swift_unknownObjectRetain();

            v11 = v149;
            if (v82)
            {
              swift_getObjectType();
              v83 = sub_1A524CBC4();
              v85 = v84;
              swift_unknownObjectRelease();
            }

            else
            {
              v83 = 0;
              v85 = 0;
            }

            sub_1A3C68644(v137, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
            v86 = swift_allocObject();
            *(v86 + 16) = &unk_1A53056E8;
            *(v86 + 24) = v65;
            if (v85 | v83)
            {
              v153 = 0;
              v154 = 0;
              v155 = v83;
              v156 = v85;
            }

            a2 = v127;
            v30 = v140;
            v32 = v148;
            v44 = v146;
            swift_task_create();

            v10 = v126;
            v135(v136, v126);
            v29 = v143;
          }

          sub_1A524D704();
        }

        else
        {
          if ([v42 v34[80]] != 3)
          {
            if ([v42 v34[80]] == 2)
            {
              v74 = *v30 >> 62 ? sub_1A524E2B4() : *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v74 < *sub_1A45A9D98())
              {
                v75 = [v42 mediaURL];
                if (v75)
                {
                  v76 = v75;
                  sub_1A5240DE4();

                  sub_1A5240E14();
                  v77 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
                  v78 = sub_1A524C634();

                  v79 = v77;
                  v32 = v148;
                  v80 = [v79 initWithContentsOfFile_];

                  v11 = v149;
                  if (v80)
                  {
                    swift_beginAccess();
                    v81 = v80;
                    MEMORY[0x1A5907D70]();
                    if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      sub_1A524CA74();
                      v32 = v148;
                    }

                    sub_1A524CAE4();
                    swift_endAccess();
                  }

                  (*v141)(v125, v10);
                }

                else
                {
                  v92 = [v42 mediaData];
                  if (v92)
                  {
                    v93 = v92;
                    v94 = sub_1A5240EA4();
                    v96 = v95;

                    v97 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
                    sub_1A3D602A8(v94, v96);
                    v98 = sub_1A5240E84();
                    v99 = [v97 initWithData_];

                    sub_1A3C59280(v94, v96);
                    if (v99)
                    {
                      swift_beginAccess();
                      v100 = v99;
                      MEMORY[0x1A5907D70]();
                      if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                      {
                        sub_1A524CA74();
                        v29 = v143;
                      }

                      sub_1A524CAE4();
                      swift_endAccess();
                      sub_1A3C59280(v94, v96);
                    }

                    else
                    {
                      sub_1A3C59280(v94, v96);
                    }

                    v32 = v148;
                    v11 = v149;
                  }

                  else
                  {
                    SharedCollectionsLogger.getter();
                    v101 = v42;
                    v102 = sub_1A5246F04();
                    v103 = sub_1A524D244();

                    if (os_log_type_enabled(v102, v103))
                    {
                      v104 = swift_slowAlloc();
                      v105 = swift_slowAlloc();
                      *v104 = v130;
                      *(v104 + 4) = v101;
                      *v105 = v101;
                      v106 = v101;
                      _os_log_impl(&dword_1A3C1C000, v102, v103, "Invalid image: %@", v104, 0xCu);
                      sub_1A3CB65E4(v105);
                      v107 = v105;
                      v29 = v143;
                      MEMORY[0x1A590EEC0](v107, -1, -1);
                      v108 = v104;
                      v11 = v149;
                      MEMORY[0x1A590EEC0](v108, -1, -1);
                    }

                    v144(v118, v147);
                    v32 = v148;
                  }
                }
              }
            }

            goto LABEL_51;
          }

          if (*v30 >> 62)
          {
            v69 = sub_1A524E2B4();
          }

          else
          {
            v69 = *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v69 >= *sub_1A45A9D98())
          {
            goto LABEL_51;
          }

          v70 = [v42 videoComplement];
          if (!v70)
          {
            goto LABEL_97;
          }

          v71 = v70;
          v72 = [v70 imagePath];

          if (!v72)
          {
            goto LABEL_96;
          }

          v73 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithContentsOfFile_];

          if (!v73)
          {
            goto LABEL_51;
          }

          swift_beginAccess();
          v44 = v73;
          MEMORY[0x1A5907D70]();
          if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1A524CA74();
            v32 = v148;
          }

          sub_1A524CAE4();
          swift_endAccess();
        }

LABEL_51:
        v34 = &selRef_maxColumns;
        if ([v42 mediaType])
        {
          v87 = [v42 mediaType];
          if (v87 > 1)
          {
            if (v87 == 2)
            {

              v91 = v150 + 1;
              if (__OFADD__(v150, 1))
              {
                goto LABEL_91;
              }
            }

            else
            {
              if (v87 != 3)
              {
                goto LABEL_98;
              }

              v91 = v150 + 1;
              if (__OFADD__(v150, 1))
              {
                goto LABEL_88;
              }
            }

            v150 = v91;
          }

          else if (v87)
          {
            if (v87 != 1)
            {
              goto LABEL_98;
            }

            if (__OFADD__(v138, 1))
            {
              goto LABEL_90;
            }

            ++v138;
          }

          else
          {

            if (__OFADD__(v139, 1))
            {
              goto LABEL_89;
            }

            ++v139;
          }
        }

        else
        {
          SharedCollectionsLogger.getter();
          v88 = v42;
          v89 = sub_1A5246F04();
          v90 = sub_1A524D244();

          if (os_log_type_enabled(v89, v90))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            *v36 = v130;
            *(v36 + 4) = v88;
            *v37 = v88;
            v38 = v88;
            _os_log_impl(&dword_1A3C1C000, v89, v90, "Invalid media source type: %@", v36, 0xCu);
            sub_1A3CB65E4(v37);
            v39 = v37;
            v30 = v140;
            MEMORY[0x1A590EEC0](v39, -1, -1);
            v40 = v36;
            v29 = v143;
            MEMORY[0x1A590EEC0](v40, -1, -1);
          }

          else
          {
            v38 = v89;
            v89 = v88;
          }

          v144(v29, v147);
          v32 = v148;
          v11 = v149;
          v34 = &selRef_maxColumns;
        }

        ++v33;
        if (v152 == v11)
        {

          v109 = 0;
          v29 = MEMORY[0x1E69E7CC0];
          if (v139 <= 0 && v150 != v138)
          {
            if (v150 >= 1)
            {
              v109 = 1;
            }

            else
            {
              v109 = 2;
            }
          }

          goto LABEL_94;
        }
      }
    }
  }

  v109 = 0;
LABEL_94:
  sub_1A3C52C70(0, &qword_1EB12B180);
  v110 = sub_1A524D474();
  v111 = swift_allocObject();
  v112 = v131;
  v111[2] = a2;
  v111[3] = v112;
  v111[4] = v109;
  aBlock[4] = sub_1A3EE11BC;
  aBlock[5] = v111;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_200;
  v113 = _Block_copy(aBlock);

  v114 = v119;
  sub_1A524BF14();
  aBlock[0] = v29;
  sub_1A3EE0F88(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C68AC0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  v115 = v121;
  v116 = v124;
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v114, v115, v113);
  _Block_release(v113);

  (*(v123 + 8))(v115, v116);
  (*(v120 + 8))(v114, v122);
}

void sub_1A3EDB384(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = sub_1A5240E64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v29 - v15;
  v17 = sub_1A5246F24();
  MEMORY[0x1EEE9AC00](v17);
  v21 = v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    v22 = a1;
    MEMORY[0x1A5907D70]();
    if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();
    swift_endAccess();
    goto LABEL_9;
  }

  v32 = v19;
  v33 = a5;
  v34 = v18;
  SharedCollectionsLogger.getter();
  v23 = a4;
  v24 = a2;
  v25 = sub_1A5246F04();
  v26 = sub_1A524D244();

  if (!os_log_type_enabled(v25, v26))
  {

    (*(v32 + 8))(v21, v34);
LABEL_9:
    sub_1A524D714();
    return;
  }

  v31 = v26;
  v27 = swift_slowAlloc();
  v29[1] = swift_slowAlloc();
  v30 = swift_slowAlloc();
  v35 = v30;
  *v27 = 136315394;
  v28 = [v23 mediaURL];

  if (v28)
  {
    sub_1A5240DE4();

    (*(v11 + 32))(v16, v13, v10);
    sub_1A3EE0F88(&qword_1EB12B000, MEMORY[0x1E6968FB0]);
    sub_1A524EA44();
    (*(v11 + 8))(v16, v10);
    sub_1A3C2EF94();
  }

  __break(1u);
}

void sub_1A3EDB7CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  SharedCollectionsLogger.getter();
  v8 = sub_1A5246F04();
  v9 = sub_1A524D264();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1A3C1C000, v8, v9, "Computed previews and display media type", v10, 2u);
    MEMORY[0x1A590EEC0](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v12 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    (*((*v12 & *v13) + 0x340))(a3);
  }
}

uint64_t sub_1A3EDBA0C()
{
  v1 = sub_1A524BEE4();
  v18 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A524BF64();
  v4 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BEF4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB12B180);
  (*(v8 + 104))(v10, *MEMORY[0x1E69E7F88], v7);
  v11 = sub_1A524D4C4();
  (*(v8 + 8))(v10, v7);
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = sub_1A3EE1298;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_219_0;
  v13 = _Block_copy(aBlock);
  v14 = v0;
  sub_1A524BF14();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1A3EE0F88(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C68AC0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v6, v3, v13);
  _Block_release(v13);

  (*(v18 + 8))(v3, v1);
  (*(v4 + 8))(v6, v17);
}

id sub_1A3EDBDB0(void *a1)
{
  v2 = sub_1A524BEE4();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v36[3] = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1A524BF64();
  v36[2] = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36[1] = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5246F24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  SharedCollectionsLogger.getter();
  v9 = sub_1A5246F04();
  v10 = sub_1A524D264();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1A3C1C000, v9, v10, "Computing display media type", v11, 2u);
    MEMORY[0x1A590EEC0](v11, -1, -1);
  }

  v12 = (*(v6 + 8))(v8, v5);
  v13 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x1D0))(v12);
  v14 = v13;
  v15 = v13 & 0xFFFFFFFFFFFFFF8;
  if (v13 >> 62)
  {
LABEL_26:
    v16 = sub_1A524E2B4();
  }

  else
  {
    v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = a1;
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v18 = 0;
    a1 = (v14 & 0xC000000000000001);
    do
    {
      v19 = v18;
      while (1)
      {
        if (a1)
        {
          v20 = MEMORY[0x1A59097F0](v19, v14);
          v18 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v19 >= *(v15 + 16))
          {
            goto LABEL_25;
          }

          v20 = *(v14 + 8 * v19 + 32);
          v18 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }
        }

        v21 = v20;
        v22 = [v21 uuid];
        if (v22)
        {
          break;
        }

        ++v19;
        if (v18 == v16)
        {
          goto LABEL_22;
        }
      }

      v23 = v22;
      v24 = sub_1A524C674();
      v36[0] = v25;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1A3D3D914(0, *(v17 + 2) + 1, 1, v17);
      }

      v27 = *(v17 + 2);
      v26 = *(v17 + 3);
      if (v27 >= v26 >> 1)
      {
        v17 = sub_1A3D3D914((v26 > 1), v27 + 1, 1, v17);
      }

      *(v17 + 2) = v27 + 1;
      v28 = &v17[16 * v27];
      v29 = v36[0];
      *(v28 + 4) = v24;
      *(v28 + 5) = v29;
    }

    while (v18 != v16);
  }

LABEL_22:

  v30 = sub_1A3ED4958();
  v31 = [v30 librarySpecificFetchOptions];

  v32 = objc_opt_self();
  v33 = sub_1A524CA14();
  v34 = [v32 fetchAssetsWithLocalIdentifiers:v33 options:v31];

  result = [v34 fetchedObjects];
  if (result)
  {

    PXMediaTypeForAssets();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3EDC418(void *a1, uint64_t a2)
{
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  SharedCollectionsLogger.getter();
  v8 = sub_1A5246F04();
  v9 = sub_1A524D264();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1A3C1C000, v8, v9, "Computed display media type", v10, 2u);
    MEMORY[0x1A590EEC0](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return (*((*MEMORY[0x1E69E7D40] & *a1) + 0x340))(a2);
}

uint64_t sub_1A3EDC5AC(char a1, void *a2, void *a3, void *a4, void (*a5)(void, void *), uint64_t a6)
{
  v51 = a6;
  v11 = sub_1A5246F24();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v47 - v20;
  (*((*MEMORY[0x1E69E7D40] & *a3) + 0x460))(0, v19);
  if (a1)
  {
    v22 = sub_1A3C56D80();
    (*(v12 + 16))(v21, v22, v11);
    v23 = a4;
    v24 = sub_1A5246F04();
    v25 = sub_1A524D264();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      LODWORD(v49) = v25;
      v27 = v26;
      v48 = swift_slowAlloc();
      v52 = v48;
      *v27 = 136446210;
      v28 = [v23 uuid];
      sub_1A524C674();
      v50 = v11;

      sub_1A3C2EF94();
    }

    result = (*(v12 + 8))(v21, v11);
  }

  else
  {
    v29 = sub_1A3C56D80();
    v30 = *(v12 + 16);
    if (a2)
    {
      v30(v17, v29, v11);
      v31 = v11;
      v32 = a4;
      v33 = a2;
      v34 = sub_1A5246F04();
      v35 = sub_1A524D244();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v50 = v31;
        v37 = v36;
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v52 = v48;
        *v37 = 136446466;
        v38 = [v32 uuid];
        sub_1A524C674();
        v49 = v12;

        sub_1A3C2EF94();
      }

      result = (*(v12 + 8))(v17, v31);
    }

    else
    {
      v49 = v12;
      v30(v14, v29, v11);
      v40 = a4;
      v41 = sub_1A5246F04();
      v42 = sub_1A524D264();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v50 = v11;
        v52 = v44;
        *v43 = 136446210;
        v45 = [v40 uuid];
        v48 = 0;
        v46 = v45;
        sub_1A524C674();

        sub_1A3C2EF94();
      }

      result = (*(v49 + 8))(v14, v11);
    }
  }

  if (a5)
  {

    a5(a1 & 1, a2);
    return sub_1A3C33378(a5);
  }

  return result;
}

uint64_t sub_1A3EDCBF0(char a1)
{
  v2 = v1;
  v37 = sub_1A5246F24();
  v4 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  SharedCollectionsLogger.getter();
  v16 = sub_1A5246F04();
  v17 = sub_1A524D264();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1A3C1C000, v16, v17, "Will dismiss Shared Collection Creation View", v18, 2u);
    MEMORY[0x1A590EEC0](v18, -1, -1);
  }

  v19 = *(v4 + 8);
  v20 = v19(v15, v37);
  v21 = MEMORY[0x1E69E7D40];
  v22 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x140))(v20);
  if (v22)
  {
    v23 = v22;
    if (a1)
    {
      v24 = sub_1A524CA14();
      [v23 completeRequestReturningItems:v24 completionHandler:0];
    }

    else
    {
      v29 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:3072 userInfo:0];
      v24 = sub_1A5240B74();
      [v23 cancelRequestWithError:v24];
    }

    SharedCollectionsLogger.getter();
    v30 = sub_1A5246F04();
    v31 = sub_1A524D264();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1A3C1C000, v30, v31, "Successfully dismissed Shared Collection Creation View (activity)", v32, 2u);
      MEMORY[0x1A590EEC0](v32, -1, -1);
    }
  }

  else
  {
    v25 = (*((*v21 & *v2) + 0x3F8))();
    if (v25)
    {
      v26 = v25;
      v25(a1 & 1);
      SharedCollectionsLogger.getter();
      v23 = sub_1A5246F04();
      v27 = sub_1A524D264();
      if (os_log_type_enabled(v23, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1A3C1C000, v23, v27, "Successfully dismissed Shared Collection Creation View (doneCallback)", v28, 2u);
        MEMORY[0x1A590EEC0](v28, -1, -1);
      }

      sub_1A3C33378(v26);
      v12 = v9;
    }

    else
    {
      SharedCollectionsLogger.getter();
      v23 = sub_1A5246F04();
      v34 = sub_1A524D264();
      if (os_log_type_enabled(v23, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_1A3C1C000, v23, v34, "Failed to dismiss Shared Collection Creation View", v35, 2u);
        MEMORY[0x1A590EEC0](v35, -1, -1);
      }

      v12 = v6;
    }
  }

  return v19(v12, v37);
}

uint64_t sub_1A3EDD070()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x140))();
  if (v3 && (v4 = v3, sub_1A3ED3AA4(), v6 = v5, v4, v6))
  {
  }

  else
  {
    result = (*((*v2 & *v1) + 0x170))();
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

id SharedCollectionActionViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharedCollectionActionViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedCollectionActionViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SharedCollectionActionViewModel.itemProvidersForActivityItemsConfiguration.getter()
{
  v37[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1A5246F24();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - v6;
  v8 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
  v9 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x170))();
  if (!v9)
  {
    SharedCollectionsLogger.getter();
    v18 = sub_1A5246F04();
    v19 = sub_1A524D244();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1A3C1C000, v18, v19, "No shared collection set up when creating CKShare item provider.", v20, 2u);
      MEMORY[0x1A590EEC0](v20, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    goto LABEL_10;
  }

  v10 = v9;
  v37[0] = 0;
  v11 = SharedCollectionsCKShare(from:error:)(v9, v37);
  v12 = v37[0];
  if (!v11)
  {
    v21 = v37[0];
    SharedCollectionsLogger.getter();
    v22 = v10;
    v23 = sub_1A5246F04();
    v24 = sub_1A524D244();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v36 = v21;
      v26 = v25;
      v27 = swift_slowAlloc();
      v35 = v22;
      v28 = v27;
      *v26 = 138412546;
      *(v26 + 4) = v35;
      *(v26 + 12) = 2112;
      v29 = v35;
      *(v26 + 14) = v36;
      *v27 = v10;
      v27[1] = v12;
      v30 = v29;
      v31 = v36;
      _os_log_impl(&dword_1A3C1C000, v23, v24, "Failed to get a CKShare from sharedCollection: %@: %@", v26, 0x16u);
      sub_1A3D3F118();
      swift_arrayDestroy();
      v32 = v28;
      v22 = v35;
      MEMORY[0x1A590EEC0](v32, -1, -1);
      v33 = v26;
      v21 = v36;
      MEMORY[0x1A590EEC0](v33, -1, -1);
    }

    (*(v2 + 8))(v7, v1);
LABEL_10:
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  v13 = v11;
  v14 = v37[0];
  isa = SharedCollectionsCKContainerForSharing()().super.isa;
  v16 = SharedCollectionsAllowedSharingOptionsForSharing()().super.isa;
  sub_1A524D294();
  sub_1A3C6993C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1A52F9790;
  *(v17 + 32) = v8;

  v8 = v16;
LABEL_11:

  return v17;
}

uint64_t SharedCollectionActionViewModel.activityItemsConfigurationMetadata(key:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A524C674();
  v4 = v3;
  if (v2 == sub_1A524C674() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_1A524EAB4();

    if ((v7 & 1) == 0)
    {
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return result;
    }
  }

  v9 = sub_1A3EDD9EC();
  result = sub_1A3C52C70(0, &qword_1EB120AD8);
  *(a1 + 24) = result;
  *a1 = v9;
  return result;
}

unint64_t sub_1A3EDD9EC()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E696ECA0]) init];
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x170))();
  if (v4)
  {
    PHCollection.title.getter();
    v6 = v5;

    if (v6)
    {
      v4 = sub_1A524C634();
    }

    else
    {
      v4 = 0;
    }
  }

  [v2 setTitle_];

  result = (*((*v3 & *v1) + 0x1D0))();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_12:

    return v2;
  }

  v12 = result;
  v13 = sub_1A524E2B4();
  result = v12;
  if (!v13)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1A59097F0](0);
    goto LABEL_10;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(result + 32);
LABEL_10:
    v9 = v8;

    v10 = sub_1A3EE09A0(v9, 64.0, 64.0);
    [v2 setIconProvider_];

    v11 = sub_1A3EE09A0(v9, 200.0, 200.0);
    [v2 setImageProvider_];

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3EDE05C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__displayMediaType;
  result = swift_beginAccess();
  *(v2 + v3) = v1;
  return result;
}

void sub_1A3EDE0D4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__perAssetCreationOptions;
  swift_beginAccess();
  *(v2 + v3) = v1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A3EDE1D0(void *a1, void (*a2)(uint64_t, uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = (v6 + *a1);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  *v9 = v7;
  v9[1] = v8;
  a2(v7, v8);
  return a3(v10, v11);
}

void sub_1A3EDE2A8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v47 = a6;
  v48 = a8;
  v53 = a7;
  v46 = a5;
  v50 = a11;
  v51 = a15;
  v45[14] = a12;
  v45[15] = a14;
  v49 = a10;
  v45[12] = a9;
  v45[13] = a13;
  v20 = sub_1A5246F24();
  v21 = *(v20 - 8);
  v45[16] = v20;
  v45[17] = v21;
  MEMORY[0x1EEE9AC00](v20);
  v45[3] = v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v45[2] = v45 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v45[1] = v45 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v52 = v45 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v45[6] = v45 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v45[5] = v45 - v32;
  v33 = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__extensionContext;
  *(v15 + OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__extensionContext) = 0;
  v34 = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__sharedCollection;
  *(v15 + OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__sharedCollection) = 0;
  v35 = (v15 + OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__albumName);
  *v35 = 0;
  v35[1] = 0xE000000000000000;
  v36 = (v15 + OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__batchComment);
  v45[9] = v15 + OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__batchComment;
  *v36 = 0;
  v36[1] = 0xE000000000000000;
  *(v15 + OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__isCommentFocused) = 0;
  *(v15 + OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__displayMediaType) = 0;
  v45[10] = OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__perAssetCreationOptions;
  *(v15 + OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__perAssetCreationOptions) = 0;
  v37 = (v15 + OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__updateCallback);
  *v37 = 0;
  v37[1] = 0;
  v38 = (v15 + OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__doneCallback);
  *v38 = 0;
  v38[1] = 0;
  *(v15 + OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__publishProgressController) = 0;
  *(v15 + OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel_hasPreparedExtensionSources) = 0;
  sub_1A5241604();
  *(v15 + OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__navigationContext) = a1;
  v39 = *(v15 + v33);

  v45[11] = a2;
  v45[8] = a2;

  *(v15 + v33) = a2;
  v40 = *(v15 + v34);
  v45[4] = a3;

  v45[7] = a3;
  *(v15 + v34) = a3;
  *(v15 + OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__sharedCollections) = a4;
  v41 = MEMORY[0x1E69E7CC0];
  v42 = v47;
  if (v46)
  {
    v43 = v46;
  }

  else
  {
    v43 = MEMORY[0x1E69E7CC0];
  }

  *(v15 + OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__assets) = v43;
  if (v42)
  {
    v44 = v42;
  }

  else
  {
    v44 = v41;
  }

  *(v15 + OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__mediaSources) = v44;
  *(v15 + OBJC_IVAR____TtC12PhotosUICore31SharedCollectionActionViewModel__subscribers) = v41;
  v53 = a4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3EDF40C(void *a1, void *a2)
{
  v3 = v2;
  v6 = v2[2];
  v8 = v3[3];
  v7 = v3[4];
  v9 = v3[5];
  v10 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v6) + 0x460))(0);
  v11 = *((*v10 & *v6) + 0x178);
  v12 = a1;
  v13 = v11(a1);
  v14 = (*((*v10 & *v6) + 0x170))(v13);
  if (v14)
  {

    v15 = [objc_allocWithZone(MEMORY[0x1E69CD9F8]) initWithActivityItemsConfiguration_];
    [v15 setAllowsCustomPresentationStyle_];
    [v15 setModalPresentationStyle_];
    v16 = swift_allocObject();
    *(v16 + 16) = v8;
    *(v16 + 24) = v7;
    v28 = sub_1A3EE0EAC;
    v29 = v16;
    v24 = MEMORY[0x1E69E9820];
    v25 = 1107296256;
    v26 = sub_1A3ED41F0;
    v27 = &block_descriptor_120_0;
    v17 = _Block_copy(&v24);
    sub_1A3C66EE8(v8);

    [v15 setCompletionWithItemsHandler_];
    _Block_release(v17);
    [v9 presentViewController:v15 animated:1 completionHandler:0];
  }

  else
  {
    v18 = swift_allocObject();
    v18[2] = a2;
    v18[3] = v8;
    v18[4] = v7;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1A3EE0C20;
    *(v19 + 24) = v18;
    v28 = sub_1A3D78DD0;
    v29 = v19;
    v24 = MEMORY[0x1E69E9820];
    v25 = 1107296256;
    v26 = sub_1A3D35A90;
    v27 = &block_descriptor_114_0;
    v20 = _Block_copy(&v24);
    sub_1A3C66EE8(v8);
    v21 = a2;

    v22 = [v9 presentAlertWithConfigurationHandler_];
    swift_unknownObjectRelease();
    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

uint64_t sub_1A3EDF794()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1A3EE06F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  sub_1A3C68AC0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - v4;
  v24 = sub_1A5240E64();
  v6 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5240D14();
  v9 = objc_allocWithZone(MEMORY[0x1E6988168]);
  v10 = sub_1A5240D44();
  v11 = [v9 initWithURL:v10 options:0];

  v12 = [objc_allocWithZone(MEMORY[0x1E6987E68]) initWithAsset_];
  [v12 setAppliesPreferredTrackTransform_];
  v13 = sub_1A524DAD4();
  v15 = v14;
  v17 = v16;
  v18 = HIDWORD(v14);
  v19 = sub_1A524CCB4();
  (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = v12;
  *(v20 + 40) = v13;
  *(v20 + 48) = v15;
  *(v20 + 52) = v18;
  *(v20 + 56) = v17;
  *(v20 + 64) = sub_1A3EE1040;
  *(v20 + 72) = v23;
  v21 = v12;

  sub_1A3D4D930(0, 0, v5, &unk_1A53056D8, v20);

  return (*(v6 + 8))(v8, v24);
}

id sub_1A3EE09A0(uint64_t a1, double a2, double a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = [objc_allocWithZone(MEMORY[0x1E6978868]) init];
  [v7 setNetworkAccessAllowed_];
  [v7 setDeliveryMode_];
  [v7 setSynchronous_];
  v8 = [objc_opt_self() defaultManager];
  v16[4] = sub_1A3EE0BC0;
  v16[5] = v6;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1A3DD5B38;
  v16[3] = &block_descriptor_40;
  v9 = _Block_copy(v16);
  v10 = v7;

  [v8 requestImageForAsset:a1 targetSize:1 contentMode:v10 options:v9 resultHandler:{a2, a3}];
  _Block_release(v9);

  swift_beginAccess();
  v11 = *(v6 + 16);
  if (v11)
  {
    v12 = objc_allocWithZone(MEMORY[0x1E696ACA0]);
    v13 = v11;
    v14 = [v12 init];
    [v14 registerObject:v13 visibility:0];
  }

  else
  {

    return 0;
  }

  return v14;
}

void sub_1A3EE0BC0(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  v4 = a1;
}

void sub_1A3EE0C20(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = sub_1A524C634();
  v7 = PXLocalizedSharedCollectionsString(v6);

  if (!v7)
  {
    sub_1A524C674();
    v7 = sub_1A524C634();
  }

  [a1 setTitle_];

  if (v3)
  {
    swift_getErrorValue();
    sub_1A524EBE4();
    v8 = sub_1A524C634();
  }

  else
  {
    v8 = 0;
  }

  [a1 setMessage_];

  sub_1A3C6993C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A52F9790;
  v10 = swift_allocObject();
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v3;
  v11 = objc_allocWithZone(off_1E7721440);
  sub_1A3C66EE8(v4);
  v12 = v3;
  v13 = sub_1A524C634();
  aBlock[4] = sub_1A3EE0F10;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_126;
  v14 = _Block_copy(aBlock);

  v15 = [v11 initWithTitle:v13 style:0 action:v14];
  _Block_release(v14);

  *(v9 + 32) = v15;
  sub_1A3C52C70(0, &qword_1EB12B9F0);
  v16 = sub_1A524CA14();

  [a1 addActions_];
}

void sub_1A3EE0EAC()
{
  v1 = *(v0 + 16);
  if (v1)
  {

    v1(1, 0);

    sub_1A3C33378(v1);
  }
}

void sub_1A3EE0F10()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 32);

    v1(0, v2);

    sub_1A3C33378(v1);
  }
}

uint64_t sub_1A3EE0F88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3EE1040(void *a1, void *a2)
{
  v5 = *(sub_1A5240E64() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_1A3ED7D1C(a1, a2, v8, v2 + v6, v7);
}

uint64_t sub_1A3EE10F0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3CA8098;

  return sub_1A3D4D618(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1A3EE11D4()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3D60150;

  return sub_1A3D4D618(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1A3EE12A8(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1A3EE1368(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;
  sub_1A5247894();
  swift_allocObject();

  return sub_1A52478A4();
}

uint64_t type metadata accessor for PhotosDetailsShazamEventsWidgetView()
{
  result = qword_1EB171F40;
  if (!qword_1EB171F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A3EE14A4()
{
  if (!qword_1EB121D20)
  {
    sub_1A3EE1570(255, &qword_1EB122778, sub_1A3EE1534, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    v0 = sub_1A524B514();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121D20);
    }
  }
}

void sub_1A3EE1570(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A3EE1618()
{
  if (!qword_1EB127380)
  {
    sub_1A3EE16AC(255);
    sub_1A3EE1D98(&qword_1EB127120, sub_1A3EE16AC);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127380);
    }
  }
}

void sub_1A3EE179C()
{
  if (!qword_1EB1274F8)
  {
    sub_1A3EE1B4C(255, &qword_1EB127098, &qword_1EB1273E8, sub_1A3EE18A8, sub_1A3EE16E8);
    v0 = sub_1A524B514();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1274F8);
    }
  }
}

void sub_1A3EE182C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A3EE18A8()
{
  if (!qword_1EB1273F0)
  {
    sub_1A3EE193C(255);
    sub_1A3EE1D98(&qword_1EB127180, sub_1A3EE193C);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1273F0);
    }
  }
}

void sub_1A3EE1970()
{
  if (!qword_1EB12AAC8)
  {
    sub_1A3EE19E8();
    sub_1A3EE2044();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB12AAC8);
    }
  }
}

void sub_1A3EE19E8()
{
  if (!qword_1EB12AAD0)
  {
    sub_1A3EE1A7C();
    sub_1A3EE1D98(&qword_1EB127360, sub_1A3EE1A7C);
    v0 = type metadata accessor for PhotosDetailsDiscoverableView();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12AAD0);
    }
  }
}

void sub_1A3EE1A7C()
{
  if (!qword_1EB127358)
  {
    sub_1A3EE1B10(255);
    sub_1A3EE1D98(&qword_1EB127140, sub_1A3EE1B10);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127358);
    }
  }
}

void sub_1A3EE1B4C(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A3EE182C(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A3EE1BA8()
{
  if (!qword_1EB1275C0)
  {
    sub_1A3EE20B8(255, &qword_1EB1281C0, sub_1A3EC1864);
    sub_1A3EE1D04();
    sub_1A3EE1DE0();
    sub_1A3EE1D98(&unk_1EB1263B0, sub_1A3EE1D04);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1275C0);
    }
  }
}

void sub_1A3EE1C98(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A3C371A0(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A3EE1D04()
{
  if (!qword_1EB1263A0)
  {
    sub_1A52486A4();
    sub_1A3EE1D98(&qword_1EB1288D0, MEMORY[0x1E697E730]);
    v0 = sub_1A524E7B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1263A0);
    }
  }
}

uint64_t sub_1A3EE1D98(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A3EE1DE0()
{
  result = qword_1EB1281D0;
  if (!qword_1EB1281D0)
  {
    sub_1A3EE20B8(255, &qword_1EB1281C0, sub_1A3EC1864);
    sub_1A3EE4AE4(&qword_1EB1282E8, sub_1A3EC1864, sub_1A3E4509C);
    sub_1A3EE1ED4(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1281D0);
  }

  return result;
}

uint64_t sub_1A3EE1ED4(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A3EE1C98(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A3EE1F60()
{
  if (!qword_1EB1282C8)
  {
    sub_1A3EE1FE0(255, &qword_1EB128540, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1282C8);
    }
  }
}

void sub_1A3EE1FE0(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1A3EE1C98(255, a3, a4, a5);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A3EE2044()
{
  if (!qword_1EB1282B8)
  {
    sub_1A3EE20B8(255, &qword_1EB1282C0, sub_1A3EE213C);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1282B8);
    }
  }
}

void sub_1A3EE20B8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A3EE1C98(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A3EE213C()
{
  if (!qword_1EB128530)
  {
    sub_1A3EE5414(255, &qword_1EB1277D8, MEMORY[0x1E69816E8], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB128530);
    }
  }
}

uint64_t sub_1A3EE21CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A3EE1570(0, &qword_1EB122C18, sub_1A3EE1534, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v4);
  sub_1A3EE1618();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE15DC(0);
  MEMORY[0x1EEE9AC00](v8);
  sub_1A3EE1534(0);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v11);
  v15[3] = v15 - v12;
  type metadata accessor for PhotosDetailsShazamEventsWidgetView();
  if (sub_1A42F588C())
  {
    v15[1] = v10;
    v15[2] = a2;
    *v7 = sub_1A5249584();
    *(v7 + 1) = 0x4028000000000000;
    v7[16] = 0;
    sub_1A3EE504C(0, &qword_1EB1244B0, sub_1A3EE16AC);
    sub_1A3EE27E4(a1, &v7[*(v13 + 44)]);
  }

  swift_storeEnumTagMultiPayload();
  sub_1A3EE4AE4(&qword_1EB123550, sub_1A3EE1534, sub_1A3EE4B64);
  return sub_1A5249744();
}

void sub_1A3EE2724()
{
  if (!qword_1EB123D30)
  {
    sub_1A3EE14A4();
    sub_1A3EE278C();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123D30);
    }
  }
}

void sub_1A3EE278C()
{
  if (!qword_1EB122E00)
  {
    v0 = sub_1A52494B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122E00);
    }
  }
}

void sub_1A3EE27E4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[4] = a2;
  sub_1A3EE179C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A3EE1760(0);
  MEMORY[0x1EEE9AC00](v4);
  sub_1A3EE1724(0);
  v15[1] = v5;
  MEMORY[0x1EEE9AC00](v5);
  v15[3] = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  v15[2] = v15 - v9;
  sub_1A3EE16E8(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v15 - v13;
  sub_1A524B994();
  *&v14[*(v11 + 44)] = 0;
  v15[0] = a1;
  sub_1A3EE2D3C(a1);
}

void sub_1A3EE2D3C(uint64_t a1)
{
  sub_1A3EE16E8(0);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A3EE18A8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  *v7 = sub_1A5249314();
  *(v7 + 1) = 0;
  v7[16] = 1;
  sub_1A3EE504C(0, &qword_1EB124550, sub_1A3EE193C);
  sub_1A3EE2FB4(a1, &v7[*(v8 + 44)]);
}

void sub_1A3EE2FB4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  sub_1A3EE20B8(0, &qword_1EB1282C0, sub_1A3EE213C);
  v27 = v3;
  v29 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v24[0] = v24 - v4;
  sub_1A3EE2044();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v30 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v26 = v24 - v8;
  v9 = type metadata accessor for PhotosDetailsShazamEventsWidgetView();
  v25 = *(v9 - 8);
  v10 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v24[2] = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E6720];
  sub_1A3EE5414(0, &qword_1EB12B0D0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  MEMORY[0x1EEE9AC00](v13);
  sub_1A3EE5414(0, &qword_1EB121598, sub_1A3EE1A7C, v11);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (v24 - v15);
  sub_1A3EE19E8();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v28 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v24[1] = v24 - v20;
  *v16 = sub_1A524BC74();
  v16[1] = v21;
  sub_1A3EE504C(0, &qword_1EB124438, sub_1A3EE1B10);
  sub_1A3EE3BD4(a1, v16 + *(v22 + 44));
  sub_1A3EE1A7C();
  (*(*(v23 - 8) + 56))(v16, 0, 1, v23);
  sub_1A3EE3728();
}

void sub_1A3EE3728()
{
  v0 = sub_1A52408C4();
  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v1);
  type metadata accessor for PhotosDetailsShazamEventsWidgetView();
  sub_1A42F55A4();
  PXCappedFontWithTextStyle();
}

void *sub_1A3EE3904()
{
  v0 = sub_1A5248334();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5240E64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhotosDetailsShazamEventsWidgetView();
  result = sub_1A42F5438();
  if (result)
  {
    v16 = v1;
    v17 = v0;
    v12 = [result eventID];
    swift_unknownObjectRelease();
    v13 = sub_1A524C674();
    v15 = v14;

    v18 = 0xD000000000000026;
    v19 = 0x80000001A53BC040;
    MEMORY[0x1A5907B60](v13, v15);

    sub_1A5240E34();

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      return sub_1A3EE4FEC(v6, sub_1A3EE53E0);
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1A3EE4C48(v3);
      sub_1A5248304();
      (*(v16 + 8))(v3, v17);
      return (*(v8 + 8))(v10, v7);
    }
  }

  return result;
}

uint64_t sub_1A3EE3BD4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v71 = a2;
  sub_1A3EE4C14(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v70 = &v66[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3EE1D04();
  v69 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v66[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3EE1BA8();
  v72 = *(v8 - 8);
  v73 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v75 = &v66[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v66[-v11];
  v12 = *(a1 + *(type metadata accessor for PhotosDetailsShazamEventsWidgetView() + 20) + 8);
  sub_1A42F586C();
  v13 = sub_1A524B574();
  v14 = sub_1A524A0E4();
  KeyPath = swift_getKeyPath();
  v16 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x140);
  v16();
  v16();
  sub_1A524BC74();
  sub_1A52481F4();
  v17 = *sub_1A44DE9B8();
  v18 = swift_getKeyPath();
  *&v84 = v13;
  *(&v84 + 1) = KeyPath;
  *(v85 + 8) = v96;
  *(&v85[1] + 8) = v97;
  *(&v85[2] + 8) = v98;
  *&v85[0] = v14;
  *(&v85[3] + 1) = v18;
  v86 = v17;
  v19 = *MEMORY[0x1E697E6E8];
  v20 = sub_1A52486A4();
  (*(*(v20 - 8) + 104))(v7, v19, v20);
  sub_1A3EE1D98(&unk_1EB1288C0, MEMORY[0x1E697E730]);

  result = sub_1A524C594();
  if (result)
  {
    sub_1A3EE20B8(0, &qword_1EB1281C0, sub_1A3EC1864);
    sub_1A3EE1DE0();
    sub_1A3EE1D98(&unk_1EB1263B0, sub_1A3EE1D04);
    v22 = v74;
    sub_1A524AB84();
    sub_1A3EE4FEC(v7, sub_1A3EE1D04);
    v99[2] = v85[1];
    v99[3] = v85[2];
    v99[4] = v85[3];
    v100 = v86;
    v99[0] = v84;
    v99[1] = v85[0];
    sub_1A3EE4F74(v99);
    v23 = *sub_1A4758698();
    sub_1A524B5D4();
    v24 = *MEMORY[0x1E6981698];
    v25 = sub_1A524B594();
    v26 = *(v25 - 8);
    v27 = v70;
    (*(v26 + 104))(v70, v24, v25);
    (*(v26 + 56))(v27, 0, 1, v25);
    v69 = sub_1A524B564();

    sub_1A3EE4FEC(v27, sub_1A3EE4C14);
    v28 = *sub_1A44DE954();
    v68 = swift_getKeyPath();
    v70 = v28;

    v29 = sub_1A524A094();
    v30 = sub_1A524A0A4();
    sub_1A524A0A4();
    if (sub_1A524A0A4() != v29)
    {
      v30 = sub_1A524A0A4();
    }

    v67 = v30;
    sub_1A5247BC4();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v91 = 0;
    v39 = sub_1A524A074();
    v40 = sub_1A524A0A4();
    sub_1A524A0A4();
    if (sub_1A524A0A4() != v39)
    {
      v40 = sub_1A524A0A4();
    }

    sub_1A5247BC4();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v93 = 0;
    v49 = v72;
    v50 = v73;
    v51 = *(v72 + 16);
    v52 = v75;
    v51(v75, v22, v73);
    v53 = v71;
    v51(v71, v52, v50);
    sub_1A3EE182C(0, &qword_1EB1275B8, sub_1A3EE1BA8, sub_1A3EE1F24);
    v55 = &v53[*(v54 + 48)];
    v57 = v68;
    v56 = v69;
    *&v76 = v69;
    *(&v76 + 1) = v68;
    v58 = v70;
    *&v77 = v70;
    LOBYTE(v52) = v67;
    BYTE8(v77) = v67;
    *(&v77 + 9) = *v92;
    HIDWORD(v77) = *&v92[3];
    *&v78 = v32;
    *(&v78 + 1) = v34;
    *&v79 = v36;
    *(&v79 + 1) = v38;
    LOBYTE(v80) = 0;
    *(&v80 + 1) = *v95;
    DWORD1(v80) = *&v95[3];
    BYTE8(v80) = v40;
    HIDWORD(v80) = *&v94[3];
    *(&v80 + 9) = *v94;
    *&v81 = v42;
    *(&v81 + 1) = v44;
    *&v82 = v46;
    *(&v82 + 1) = v48;
    v83 = 0;
    v59 = v80;
    v60 = v81;
    v61 = v82;
    v55[112] = 0;
    *(v55 + 5) = v60;
    *(v55 + 6) = v61;
    v62 = v76;
    v63 = v77;
    v64 = v78;
    *(v55 + 3) = v79;
    *(v55 + 4) = v59;
    *(v55 + 1) = v63;
    *(v55 + 2) = v64;
    *v55 = v62;
    sub_1A3EE5120(&v76, &v84, sub_1A3EE1F24);
    v65 = *(v49 + 8);
    v65(v74, v50);
    *&v84 = v56;
    *(&v84 + 1) = v57;
    *&v85[0] = v58;
    BYTE8(v85[0]) = v52;
    *(v85 + 9) = *v92;
    HIDWORD(v85[0]) = *&v92[3];
    *&v85[1] = v32;
    *(&v85[1] + 1) = v34;
    *&v85[2] = v36;
    *(&v85[2] + 1) = v38;
    LOBYTE(v85[3]) = 0;
    *(&v85[3] + 1) = *v95;
    DWORD1(v85[3]) = *&v95[3];
    BYTE8(v85[3]) = v40;
    HIDWORD(v85[3]) = *&v94[3];
    *(&v85[3] + 9) = *v94;
    v86 = v42;
    v87 = v44;
    v88 = v46;
    v89 = v48;
    v90 = 0;
    sub_1A3EE4FEC(&v84, sub_1A3EE1F24);
    return (v65)(v75, v50);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A3EE4384()
{
  result = qword_1EB12B0E8;
  if (!qword_1EB12B0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B0E8);
  }

  return result;
}

unint64_t sub_1A3EE43D8()
{
  result = qword_1EB12B0E0;
  if (!qword_1EB12B0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B0E0);
  }

  return result;
}

uint64_t sub_1A3EE442C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_1A3EE5414(0, &qword_1EB128A58, MEMORY[0x1E697E178], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v2 = (a1 + *(type metadata accessor for PhotosDetailsShazamEventsWidgetView() + 20));
  type metadata accessor for PhotosDetailsShazamEventsWidgetViewModel();
  sub_1A3EE1D98(&qword_1EB125E70, type metadata accessor for PhotosDetailsShazamEventsWidgetViewModel);
  result = sub_1A5248494();
  *v2 = result;
  v2[1] = v4;
  return result;
}

uint64_t sub_1A3EE4514@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  sub_1A3EE5414(0, &qword_1EB128A58, MEMORY[0x1E697E178], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v4 = (a2 + *(a1 + 20));
  type metadata accessor for PhotosDetailsShazamEventsWidgetViewModel();
  sub_1A3EE1D98(&qword_1EB125E70, type metadata accessor for PhotosDetailsShazamEventsWidgetViewModel);
  result = sub_1A5248494();
  *v4 = result;
  v4[1] = v6;
  return result;
}

uint64_t sub_1A3EE45F8(uint64_t a1)
{
  result = sub_1A3EE1D98(&qword_1EB125E88, type metadata accessor for PhotosDetailsShazamEventsWidgetView);
  *(a1 + 8) = result;
  return result;
}

void sub_1A3EE466C(uint64_t a1@<X8>)
{
  sub_1A3EE14A4();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE21CC(v1, v5);
  v6 = sub_1A524BD54();
  v7 = sub_1A42F5438();
  if (v7)
  {
    swift_unknownObjectRelease();
  }

  sub_1A3EE50B8(v5, a1, sub_1A3EE14A4);
  sub_1A3EE2724();
  v9 = a1 + *(v8 + 36);
  *v9 = v6;
  *(v9 + 8) = v7 == 0;
}

void sub_1A3EE4784()
{
  sub_1A3EE5414(319, &unk_1EB124720, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A3EE4838();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A3EE4838()
{
  if (!qword_1EB1243B0)
  {
    type metadata accessor for PhotosDetailsShazamEventsWidgetViewModel();
    sub_1A3EE1D98(&qword_1EB125E70, type metadata accessor for PhotosDetailsShazamEventsWidgetViewModel);
    v0 = sub_1A52484C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1243B0);
    }
  }
}

unint64_t sub_1A3EE48CC()
{
  result = qword_1EB123D38;
  if (!qword_1EB123D38)
  {
    sub_1A3EE2724();
    sub_1A3EE497C();
    sub_1A3EE1D98(&qword_1EB122E08, sub_1A3EE278C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123D38);
  }

  return result;
}

unint64_t sub_1A3EE497C()
{
  result = qword_1EB121D28;
  if (!qword_1EB121D28)
  {
    sub_1A3EE14A4();
    sub_1A3EE49F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB121D28);
  }

  return result;
}

unint64_t sub_1A3EE49F4()
{
  result = qword_1EB122780;
  if (!qword_1EB122780)
  {
    sub_1A3EE1570(255, &qword_1EB122778, sub_1A3EE1534, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    sub_1A3EE4AE4(&qword_1EB123550, sub_1A3EE1534, sub_1A3EE4B64);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122780);
  }

  return result;
}

uint64_t sub_1A3EE4AE4(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A3EE4B64()
{
  result = qword_1EB123A90;
  if (!qword_1EB123A90)
  {
    sub_1A3EE15DC(255);
    sub_1A3EE1D98(&qword_1EB127388, sub_1A3EE1618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123A90);
  }

  return result;
}

uint64_t sub_1A3EE4C48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE5414(0, &qword_1EB128A58, MEMORY[0x1E697E178], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1A3EE5478(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5248334();
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

uint64_t sub_1A3EE4EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_1A3EE4F74(uint64_t a1)
{
  sub_1A3EE20B8(0, &qword_1EB1281C0, sub_1A3EC1864);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A3EE4FEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A3EE504C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A52483B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A3EE50B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3EE5120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3EE5188(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A3EE51E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosDetailsShazamEventsWidgetView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1A3EE524C()
{
  type metadata accessor for PhotosDetailsShazamEventsWidgetView();

  return sub_1A3EE3904();
}

unint64_t sub_1A3EE52AC()
{
  result = qword_1EB1268C8;
  if (!qword_1EB1268C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1268C8);
  }

  return result;
}

uint64_t sub_1A3EE52F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A3EE5360(uint64_t a1, uint64_t a2)
{
  sub_1A3EE20B8(0, &qword_1EB1282C0, sub_1A3EE213C);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A3EE5414(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A3EE5478(uint64_t a1, uint64_t a2)
{
  sub_1A3EE5414(0, &qword_1EB128A58, MEMORY[0x1E697E178], MEMORY[0x1E697DCB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3EE550C()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B648);
  v1 = __swift_project_value_buffer(v0, qword_1EB15B648);
  v2 = sub_1A45318CC();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void SharedAlbumsActivityItem.type.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 24);
  *(a1 + 24) = v5;
  sub_1A3EE55B4(v2, v3, v4, v5);
}

void sub_1A3EE55B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 0:
      goto LABEL_6;
    case 2:
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    case 1:
LABEL_6:

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

uint64_t SharedAlbumsActivityItem.avatarInfo.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v7[0] = v1[2];
  v7[1] = v2;
  v4 = v1[5];
  v8 = v1[4];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1A3EE564C(v7, &v6);
}

uint64_t SharedAlbumsActivityItem.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SharedAlbumsActivityItem() + 24);
  v4 = sub_1A5241144();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SharedAlbumsActivityItem()
{
  result = qword_1EB1837B0;
  if (!qword_1EB1837B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id SharedAlbumsActivityItem.activityFeedSectionInfo.getter()
{
  v1 = *(v0 + *(type metadata accessor for SharedAlbumsActivityItem() + 36));

  return v1;
}

void sub_1A3EE5800(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SharedAlbumsActivityItem();
  *(a2 + v4[9]) = a1;
  v5 = a1;
  v6 = [v5 transientIdentifier];
  v7 = sub_1A524C674();
  v9 = v8;

  v10 = (a2 + v4[10]);
  *v10 = v7;
  v10[1] = v9;
  PXFeedSectionInfo.activityType.getter(&v25);
  v11 = v26;
  v12 = BYTE8(v26);
  *a2 = v25;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  v13 = [v5 albumTitle];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1A524C674();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  v18 = (a2 + v4[7]);
  *v18 = v15;
  v18[1] = v17;
  v19 = PXFeedSectionInfo.contributorDisplayName.getter();
  v20 = (a2 + v4[8]);
  *v20 = v19;
  v20[1] = v21;
  PXFeedSectionInfo.avatarConfiguration.getter(&v25);
  v22 = v26;
  *(a2 + 32) = v25;
  *(a2 + 48) = v22;
  v23 = v28;
  *(a2 + 64) = v27;
  *(a2 + 80) = v23;
  v24 = [v5 date];

  sub_1A52410F4();
}

void PXFeedSectionInfo.activityType.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 sectionType];
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v26 = 1;
        break;
      case 4:
        if ([v1 inboxModelType] == 5)
        {
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 3;
          *(a1 + 24) = 3;
          return;
        }

        v26 = 2;
        break;
      case 5:
        v26 = 4;
        break;
      default:
        goto LABEL_68;
    }

    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = v26;
    goto LABEL_34;
  }

  if (!v4)
  {
    v6 = [v1 cloudFeedEntry];
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (!v12)
    {
      goto LABEL_64;
    }

    v13 = v12;
    v14 = [v2 cloudFeedEntry];
    v2 = [v14 photoLibrary];

    if (!v2)
    {
      goto LABEL_64;
    }

    v15 = [v13 entryAssets];
    if (!v15)
    {
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      v2 = v6;
LABEL_67:

LABEL_68:
      sub_1A524E6E4();
      __break(1u);
      return;
    }

    v16 = v15;
    v17 = [v15 array];

    v18 = sub_1A524CA34();
    v19 = sub_1A3EE7AE4(v18);

    if (!v19)
    {

      goto LABEL_67;
    }

    v20 = [objc_allocWithZone(MEMORY[0x1E69789A8]) initWithPLPhotoLibrary_];
    v21 = (v19 & 0xFFFFFFFFFFFFFF8);
    if (v19 >> 62)
    {
      if (sub_1A524E2B4())
      {
        goto LABEL_18;
      }
    }

    else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      if ((v19 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1A59097F0](0, v19);
      }

      else
      {
        if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_57:
          if (sub_1A524E2B4())
          {
            sub_1A3EE8EE8(MEMORY[0x1E69E7CC0]);
            goto LABEL_30;
          }

LABEL_29:
          v29 = MEMORY[0x1E69E7CD0];
LABEL_30:
          v61 = v29;
          v30 = swift_allocObject();
          v30[2] = &v62;
          v30[3] = v21;
          v30[4] = &v61;
          v31 = swift_allocObject();
          *(v31 + 16) = sub_1A3EE7F28;
          *(v31 + 24) = v30;
          aBlock[4] = sub_1A3EE8104;
          aBlock[5] = v31;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1A3EE7D08;
          aBlock[3] = &block_descriptor_41;
          v32 = _Block_copy(aBlock);
          v33 = v21;

          [v19 enumerateObjectsUsingBlock_];
          _Block_release(v32);
          LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

          if ((v32 & 1) == 0)
          {
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }

          __break(1u);
          goto LABEL_60;
        }

        v22 = *(v19 + 32);
      }

      v23 = v22;
      v24 = [v22 cloudIsMyAsset];

      v25 = v24;
      goto LABEL_53;
    }

    v25 = 0;
LABEL_53:
    v56 = objc_opt_self();
    sub_1A3C52C70(0, &unk_1EB131220);
    v57 = sub_1A524CA14();
    v58 = [v56 pl:v57 PHAssetsForManagedAssets:v20 photoLibrary:?];

    if (v58)
    {

      sub_1A3C52C70(0, &qword_1EB126660);
      v59 = sub_1A524CA34();

      *a1 = v59;
      *(a1 + 8) = v25;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      return;
    }

    goto LABEL_62;
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      goto LABEL_68;
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
LABEL_34:
    v34 = 3;
LABEL_35:
    *(a1 + 24) = v34;
    return;
  }

  if ([v1 typeForItemAtIndex_] == 1)
  {
    v5 = [v1 commentForItemAtIndex_];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 commentText];
      if (v7)
      {
        v8 = v7;
        v9 = sub_1A524C674();
        v11 = v10;
      }

      else
      {
        v9 = 0;
        v11 = 0xE000000000000000;
      }

      v50 = [v6 isMyComment];
      if (!v50)
      {

        v54 = 0;
        goto LABEL_49;
      }

      v51 = [v6 isMyComment];
      if (v51)
      {
        v52 = v51;
        v53 = [v51 BOOLValue];

        v54 = v53;
LABEL_49:
        *a1 = v9;
        *(a1 + 8) = v11;
        *(a1 + 16) = v54;
        v34 = 1;
        goto LABEL_35;
      }

      goto LABEL_63;
    }

    if (qword_1EB19ADE0 == -1)
    {
LABEL_37:
      v35 = sub_1A5246F24();
      __swift_project_value_buffer(v35, qword_1EB15B648);
      v36 = v2;
      v37 = sub_1A5246F04();
      v38 = sub_1A524D244();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412546;
        *(v39 + 4) = v36;
        *v40 = v36;
        *(v39 + 12) = 2112;
        v41 = [v36 cloudFeedEntry];
        *(v39 + 14) = v41;
        v40[1] = v41;
        _os_log_impl(&dword_1A3C1C000, v37, v38, "Invalid .commentsAdded PXFeedSectionInfo (%@) with zero comments. PLCloudFeedEntry: %@", v39, 0x16u);
        sub_1A3C4B7E8(0, &qword_1EB12B150, &qword_1EB12B160);
        swift_arrayDestroy();
        MEMORY[0x1A590EEC0](v40, -1, -1);
        MEMORY[0x1A590EEC0](v39, -1, -1);
      }

      *a1 = xmmword_1A5305860;
      *(a1 + 16) = 0;
      v34 = 1;
      goto LABEL_35;
    }

LABEL_60:
    swift_once();
    goto LABEL_37;
  }

  v27 = [v1 likesForItemAtIndex_];
  if (v27)
  {
    v19 = v27;
    v62 = 0;
    sub_1A3C52C70(0, &qword_1EB12E388);
    v28 = MEMORY[0x1E69E7CC0];
    v21 = MEMORY[0x1A59084F0](MEMORY[0x1E69E7CC0]);
    if (!(v28 >> 62))
    {
      goto LABEL_29;
    }

    goto LABEL_57;
  }

  if (qword_1EB19ADE0 != -1)
  {
    swift_once();
  }

  v42 = sub_1A5246F24();
  __swift_project_value_buffer(v42, qword_1EB15B648);
  v43 = v1;
  v44 = sub_1A5246F04();
  v45 = sub_1A524D244();

  if (!os_log_type_enabled(v44, v45))
  {

    v55 = MEMORY[0x1E69E7CC0];
    *a1 = MEMORY[0x1E69E7CC0];
    *(a1 + 8) = 0;
    *(a1 + 16) = v55;
    v34 = 2;
    goto LABEL_35;
  }

  v46 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  *v46 = 138412546;
  *(v46 + 4) = v43;
  *v47 = v43;
  *(v46 + 12) = 2112;
  v48 = [v43 cloudFeedEntry];
  *(v46 + 14) = v48;
  v47[1] = v48;
  _os_log_impl(&dword_1A3C1C000, v44, v45, "Invalid .commentsAdded PXFeedSectionInfo (%@) with zero likes. PLCloudFeedEntry: %@", v46, 0x16u);
  sub_1A3C4B7E8(0, &qword_1EB12B150, &qword_1EB12B160);
  swift_arrayDestroy();
  MEMORY[0x1A590EEC0](v47, -1, -1);
  MEMORY[0x1A590EEC0](v46, -1, -1);

  v49 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = v49;
  *(a1 + 24) = 2;
}

id PXFeedSectionInfo.contributorDisplayName.getter()
{
  v1 = [v0 sectionType];
  result = 0;
  if (v1 > 2)
  {
    if (v1 != 3)
    {
      if (v1 == 4)
      {
        result = [v0 invitee];
        if (!result)
        {
          return result;
        }

        v3 = result;
        v17 = [result displayNameWithAddressAppended_];
        goto LABEL_25;
      }

      if (v1 != 5)
      {
        return result;
      }
    }

    result = [objc_opt_self() sharingDisplayNameIncludingEmail:0 allowsEmail:1];
    if (result)
    {
      v8 = result;
      v9 = sub_1A524C674();

      return v9;
    }

    return result;
  }

  switch(v1)
  {
    case 0:
      v10 = [v0 assets];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 firstObject];

        if (v12)
        {
          sub_1A524E0B4();
          swift_unknownObjectRelease();
        }

        else
        {
          *v32 = 0u;
          v33 = 0u;
        }

        v34 = *v32;
        v35 = v33;
        if (*(&v33 + 1))
        {
          sub_1A3C52C70(0, &unk_1EB131220);
          if ((swift_dynamicCast() & 1) == 0)
          {
            return 0;
          }

          v3 = v32[0];
          v23 = [v32[0] cloudOwnerDisplayName];
          if (!v23)
          {
LABEL_42:

            return 0;
          }

          v24 = v23;
          v19 = sub_1A524C674();

          return v19;
        }

        goto LABEL_47;
      }

LABEL_31:
      v34 = 0u;
      v35 = 0u;
      goto LABEL_47;
    case 1:
      v3 = [v0 commentForItemAtIndex_];
      if (v3)
      {
LABEL_17:
        v13 = [v3 isMyComment];
        if (v13)
        {

          result = [v3 isMyComment];
          if (!result)
          {
            __break(1u);
            return result;
          }

          v14 = result;
          v15 = [result BOOLValue];

          if (v15)
          {
            v16 = [objc_opt_self() sharingDisplayNameIncludingEmail:0 allowsEmail:1];
            if (!v16)
            {
              goto LABEL_42;
            }

            goto LABEL_26;
          }
        }

        v17 = [v3 commenterDisplayName];
LABEL_25:
        v16 = v17;
LABEL_26:
        v18 = v16;
        v19 = sub_1A524C674();

        return v19;
      }

      v20 = [v0 likesForItemAtIndex_];
      if (v20)
      {
        v21 = v20;
        v22 = [v20 firstObject];

        if (v22)
        {
          sub_1A524E0B4();
          swift_unknownObjectRelease();
        }

        else
        {
          *v32 = 0u;
          v33 = 0u;
        }

        v34 = *v32;
        v35 = v33;
        if (*(&v33 + 1))
        {
          sub_1A3C52C70(0, &qword_1EB12E390);
          if ((swift_dynamicCast() & 1) == 0)
          {
            return 0;
          }

          v3 = v32[0];
          goto LABEL_17;
        }

LABEL_47:
        sub_1A3C35B00(&v34);
        return 0;
      }

      goto LABEL_31;
    case 2:
      result = [v0 sharedAlbum];
      if (result)
      {
        v3 = result;
        v4 = [objc_opt_self() ownerForSharedAlbum_];
        if (v4)
        {
          v5 = v4;
          v6 = [v4 displayNameWithAddressAppended_];
          v7 = sub_1A524C674();

          return v7;
        }

        if (qword_1EB19ADE0 != -1)
        {
          swift_once();
        }

        v25 = sub_1A5246F24();
        __swift_project_value_buffer(v25, qword_1EB15B648);
        v26 = v0;
        v27 = sub_1A5246F04();
        v28 = sub_1A524D244();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *v29 = 138412546;
          *(v29 + 4) = v26;
          *v30 = v26;
          *(v29 + 12) = 2112;
          v31 = [v26 cloudFeedEntry];
          *(v29 + 14) = v31;
          v30[1] = v31;
          _os_log_impl(&dword_1A3C1C000, v27, v28, ".invitationReceived PXFeedSectionInfo (%@) with a missing owner. PLCloudFeedEntry: %@", v29, 0x16u);
          sub_1A3C4B7E8(0, &qword_1EB12B150, &qword_1EB12B160);
          swift_arrayDestroy();
          MEMORY[0x1A590EEC0](v30, -1, -1);
          MEMORY[0x1A590EEC0](v29, -1, -1);
        }

        goto LABEL_42;
      }

      break;
  }

  return result;
}

void PXFeedSectionInfo.avatarConfiguration.getter(uint64_t *a1@<X8>)
{
  v3 = [v1 sectionType];
  v4 = 0;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      goto LABEL_12;
    }

    if (v3 == 4)
    {
      v35 = [v1 invitee];
      if (v35)
      {
        v36 = v35;
        v37 = [v36 emailAddressString];
        if (v37)
        {
          v38 = v37;
          v86 = sub_1A524C674();
          v11 = v39;
        }

        else
        {
          v86 = 0;
          v11 = 0;
        }

        v66 = [v36 phoneNumberString];

        if (v66)
        {
          v8 = sub_1A524C674();
          v9 = v67;
        }

        else
        {
          v8 = 0;
          v9 = 0;
        }

        v68 = [v36 firstName];
        if (v68)
        {
          v69 = v68;
          v6 = sub_1A524C674();
          v7 = v70;
        }

        else
        {
          v6 = 0;
          v7 = 0;
        }

        v71 = [v36 lastName];
        if (v71)
        {
          v72 = v71;
          v4 = sub_1A524C674();
          v5 = v73;
        }

        else
        {

          v4 = 0;
          v5 = 0;
        }

        v10 = v86;
        goto LABEL_76;
      }

      goto LABEL_73;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    if (v3 == 5)
    {
LABEL_12:
      v20 = objc_opt_self();
      v21 = [v20 sharingUsername];
      if (v21)
      {
        v22 = v21;
        v15 = sub_1A524C674();
        v11 = v23;
      }

      else
      {
        v15 = 0;
        v11 = 0;
      }

      v40 = [v20 sharingFirstName];
      if (v40)
      {
        v41 = v40;
        v6 = sub_1A524C674();
        v7 = v42;
      }

      else
      {
        v6 = 0;
        v7 = 0;
      }

      v43 = [v20 sharingLastName];
      if (v43)
      {
        v44 = v43;
        v4 = sub_1A524C674();
        v5 = v45;

LABEL_67:
        v8 = 0;
        v9 = 0;
        v10 = v15;
        goto LABEL_76;
      }

LABEL_66:
      v4 = 0;
      v5 = 0;
      goto LABEL_67;
    }

    goto LABEL_76;
  }

  if (!v3)
  {
    v24 = [v1 assets];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 firstObject];

      if (v26)
      {
        sub_1A524E0B4();
        swift_unknownObjectRelease();
      }

      else
      {
        *v87 = 0u;
        v88 = 0u;
      }

      v89 = *v87;
      v90 = v88;
      if (*(&v88 + 1))
      {
        sub_1A3C52C70(0, &unk_1EB131220);
        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_73:
          v4 = 0;
          v5 = 0;
          v6 = 0;
          v7 = 0;
LABEL_74:
          v8 = 0;
          goto LABEL_75;
        }

        v56 = [v87[0] cloudOwnerEmail];
        if (v56)
        {
          v57 = v56;
          v15 = sub_1A524C674();
          v11 = v58;
        }

        else
        {
          v15 = 0;
          v11 = 0;
        }

        v77 = [v87[0] cloudOwnerFirstName];
        if (v77)
        {
          v78 = v77;
          v6 = sub_1A524C674();
          v7 = v79;
        }

        else
        {
          v6 = 0;
          v7 = 0;
        }

        v80 = [v87[0] cloudOwnerLastName];
        if (v80)
        {
          v81 = v80;
          v4 = sub_1A524C674();
          v5 = v82;
        }

        else
        {
          v4 = 0;
          v5 = 0;
        }

        if (v11)
        {

          goto LABEL_67;
        }

        if (([v87[0] cloudIsMyAsset] & 1) == 0)
        {

          v8 = 0;
          v9 = 0;
          v11 = 0;
          v10 = v15;
          goto LABEL_76;
        }

        v83 = [objc_opt_self() sharingUsername];
        if (!v83)
        {

          goto LABEL_74;
        }

        v84 = v83;
        v47 = sub_1A524C674();
        v11 = v85;

        goto LABEL_33;
      }

      goto LABEL_72;
    }

LABEL_39:
    v89 = 0u;
    v90 = 0u;
    goto LABEL_72;
  }

  if (v3 != 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    if (v3 == 2)
    {
      v8 = [v1 sharedAlbum];
      if (!v8)
      {
        v4 = 0;
        v5 = 0;
        v6 = 0;
        v7 = 0;
LABEL_75:
        v9 = 0;
        v10 = 0;
        v11 = 0;
        goto LABEL_76;
      }

      v12 = [objc_opt_self() ownerForSharedAlbum_];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 displayAddress];
        v15 = sub_1A524C674();
        v11 = v16;

        v17 = [v13 firstName];
        if (v17)
        {
          v18 = v17;
          v6 = sub_1A524C674();
          v7 = v19;
        }

        else
        {
          v6 = 0;
          v7 = 0;
        }

        v74 = [v13 lastName];
        if (v74)
        {
          v75 = v74;
          v4 = sub_1A524C674();
          v5 = v76;

          goto LABEL_67;
        }

        goto LABEL_66;
      }

      if (qword_1EB19ADE0 != -1)
      {
        swift_once();
      }

      v59 = sub_1A5246F24();
      __swift_project_value_buffer(v59, qword_1EB15B648);
      v60 = v1;
      v61 = sub_1A5246F04();
      v62 = sub_1A524D244();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *v63 = 138412546;
        *(v63 + 4) = v60;
        *v64 = v60;
        *(v63 + 12) = 2112;
        v65 = [v60 cloudFeedEntry];
        *(v63 + 14) = v65;
        v64[1] = v65;
        _os_log_impl(&dword_1A3C1C000, v61, v62, ".invitationReceived PXFeedSectionInfo (%@) with a missing owner. PLCloudFeedEntry: %@", v63, 0x16u);
        sub_1A3C4B7E8(0, &qword_1EB12B150, &qword_1EB12B160);
        swift_arrayDestroy();
        MEMORY[0x1A590EEC0](v64, -1, -1);
        MEMORY[0x1A590EEC0](v63, -1, -1);
      }

      goto LABEL_50;
    }

LABEL_76:
    *a1 = v10;
    a1[1] = v11;
    a1[2] = v8;
    a1[3] = v9;
    a1[4] = v6;
    a1[5] = v7;
    a1[6] = v4;
    a1[7] = v5;
    return;
  }

  v8 = [v1 commentForItemAtIndex_];
  if (!v8)
  {
    v53 = [v1 likesForItemAtIndex_];
    if (v53)
    {
      v54 = v53;
      v55 = [v53 firstObject];

      if (v55)
      {
        sub_1A524E0B4();
        swift_unknownObjectRelease();
      }

      else
      {
        *v87 = 0u;
        v88 = 0u;
      }

      v89 = *v87;
      v90 = v88;
      if (*(&v88 + 1))
      {
        sub_1A3C52C70(0, &qword_1EB12E390);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_73;
        }

        v8 = v87[0];
        goto LABEL_18;
      }

LABEL_72:
      sub_1A3C35B00(&v89);
      goto LABEL_73;
    }

    goto LABEL_39;
  }

LABEL_18:
  v27 = [v8 isMyComment];
  if (!v27)
  {
LABEL_32:
    v46 = [v8 commenterEmail];
    v47 = sub_1A524C674();
    v11 = v48;

    v49 = [v8 commenterFirstName];
    v6 = sub_1A524C674();
    v7 = v50;

    v51 = [v8 commenterLastName];
    v4 = sub_1A524C674();
    v5 = v52;

LABEL_33:
    v10 = v47;
LABEL_34:
    v8 = 0;
    v9 = 0;
    goto LABEL_76;
  }

  v28 = [v8 isMyComment];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 BOOLValue];

    if (v30)
    {
      v31 = [objc_opt_self() sharingUsername];
      if (!v31)
      {
LABEL_50:

        goto LABEL_73;
      }

      v32 = v31;
      v33 = sub_1A524C674();
      v11 = v34;

      v10 = v33;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  __break(1u);
}

id SharedAlbumsActivityItem.photoLibrary.getter()
{
  v1 = [*(v0 + *(type metadata accessor for SharedAlbumsActivityItem() + 36)) photoLibrary];

  return v1;
}

unint64_t SharedAlbumsActivityItem.keyAssets.getter()
{
  v1 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  v13 = *(v0 + *(type metadata accessor for SharedAlbumsActivityItem() + 36));
  v2 = [v13 assets];
  if (!v2)
  {
    return v1;
  }

  v3 = v2;
  result = [v2 count];
  if ((result & 0x8000000000000000) == 0)
  {
    v5 = result;
    if (result)
    {
      v6 = 0;
      for (i = [v3 objectAtIndex_]; ; i = objc_msgSend(v3, sel_objectAtIndex_, v6, v12))
      {
        v8 = i;
        sub_1A524E0B4();
        swift_unknownObjectRelease();
        sub_1A3C52C70(0, &unk_1EB131220);
        if (swift_dynamicCast())
        {
          v9 = [v13 photoLibrary];
          v10 = [v14 pl:v9 PHAssetFromPhotoLibrary:?];

          if (v10)
          {
            v11 = v10;
            MEMORY[0x1A5907D70]();
            if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1A524CA74();
            }

            sub_1A524CAE4();

            v12 = v15;
          }

          else
          {
          }
        }

        if (v5 == ++v6)
        {
          break;
        }
      }

      return v12;
    }

    else
    {
    }

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t SharedAlbumsActivityItem.albumId.getter()
{
  v1 = type metadata accessor for SharedAlbumsActivityItem();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v7 = v21 - v6;
  v9 = [*(v0 + *(v8 + 36)) sharedAlbum];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 uuid];

    v12 = sub_1A524C674();
  }

  else
  {
    if (qword_1EB19ADE0 != -1)
    {
      swift_once();
    }

    v13 = sub_1A5246F24();
    __swift_project_value_buffer(v13, qword_1EB15B648);
    sub_1A3EE91CC(v0, v7);
    sub_1A3EE91CC(v0, v3);
    v14 = sub_1A5246F04();
    v15 = sub_1A524D244();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v21[1] = v15;
      v17 = v16;
      v22 = swift_slowAlloc();
      v23 = v22;
      *v17 = 136315394;
      v18 = *&v7[*(v1 + 36)];
      v19 = [v18 description];
      sub_1A524C674();

      sub_1A3EE9230(v7);
      sub_1A3C2EF94();
    }

    sub_1A3EE9230(v7);
    sub_1A3EE9230(v3);
    return 0;
  }

  return v12;
}

void SharedAlbumsActivityItem.value.getter(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SharedAlbumsActivityItem() + 40));
  v5 = *v3;
  v4 = v3[1];
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v5;
  a1[1] = v4;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t SharedAlbumsActivityItem.diagnosticDescription.getter()
{
  MEMORY[0x1A5907B60](91, 0xE100000000000000);
  v1 = type metadata accessor for SharedAlbumsActivityItem();
  MEMORY[0x1A5907B60](*(v0 + *(v1 + 40)), *(v0 + *(v1 + 40) + 8));
  MEMORY[0x1A5907B60](8285, 0xE200000000000000);
  sub_1A5241144();
  sub_1A3C4BB80(&qword_1EB12AFE8, MEMORY[0x1E6969530]);
  v2 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v2);

  MEMORY[0x1A5907B60](8250, 0xE200000000000000);
  sub_1A524E624();
  return 0;
}

void sub_1A3EE7A3C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 40));
  v5 = *v3;
  v4 = v3[1];
  a2[3] = MEMORY[0x1E69E6158];
  *a2 = v5;
  a2[1] = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3EE7A60(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 40));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A3EE7A78()
{
  sub_1A3C4BB80(&unk_1EB129E20, type metadata accessor for SharedAlbumsActivityItem);

    ;
  }
}

uint64_t sub_1A3EE7AE4(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_1A524E554();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1A3C2F0BC(i, v5);
    sub_1A3C52C70(0, &unk_1EB131220);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1A524E514();
    sub_1A524E564();
    sub_1A524E574();
    sub_1A524E524();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_1A3EE7BF0(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1A524E314();
  }

  else if (*(a2 + 16) && (sub_1A3C52C70(0, &unk_1EB131220), v5 = sub_1A524DBE4(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_1A524DBF4();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1A3EE7D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v9[3] = swift_getObjectType();
  v9[0] = a2;
  swift_unknownObjectRetain();
  v7(v9, a3, a4);
  return __swift_destroy_boxed_opaque_existential_0(v9);
}

uint64_t sub_1A3EE7D80(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1A3C57108(0, v1, 0);
    v2 = v14;
    v4 = a1 + 32;
    do
    {
      sub_1A3C2F0BC(v4, v11);
      swift_dynamicCast();
      v5 = v12;
      v6 = v13;
      v14 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1A3C57108((v7 > 1), v8 + 1, 1);
        v2 = v14;
      }

      *(v2 + 16) = v8 + 1;
      v9 = v2 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1A3EE7E84(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A3C36FC0(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_1A3EE7F28(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  sub_1A3C2F0BC(a1, v15);
  sub_1A3C52C70(0, &qword_1EB12E390);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = [v14 isMyComment];
    if (!v5)
    {
      goto LABEL_6;
    }

    result = [v14 isMyComment];
    if (result)
    {
      v6 = result;
      v7 = [result BOOLValue];

      if (v7)
      {
        *v3 = 1;
        goto LABEL_13;
      }

LABEL_6:
      v8 = [v14 commenterDisplayName];
      if (!v8)
      {
        sub_1A524C674();
        v8 = sub_1A524C634();
      }

      v9 = sub_1A524C674();
      v11 = v10;

      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v9 & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        [v2 addObject_];
      }

LABEL_13:
      v13 = [v14 asset];
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A3EE812C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = sub_1A524E2B4();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v1 = *(a1 + 16);
    if (v1)
    {
LABEL_3:
      sub_1A3EE7E84(v1, 0);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1A3EE81DC(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    v7 = a2;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C52C70(0, &unk_1EB131220);
  v8 = sub_1A524DBE4();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_1A524DBF4();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v17 = *(*(v6 + 48) + 8 * v10);
    *a1 = v17;
    v18 = v17;
    return 0;
  }

  else
  {
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    v15 = a2;
    sub_1A3EE8810(v15, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    *a1 = v15;
    return 1;
  }
}

uint64_t sub_1A3EE8414(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1A3EE9634();
    v2 = sub_1A524E3C4();
    v14 = v2;
    sub_1A524E274();
    if (sub_1A524E304())
    {
      sub_1A3C52C70(0, &unk_1EB131220);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1A3EE85F4();
        }

        v2 = v14;
        result = sub_1A524DBE4();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_1A524E304());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1A3EE85F4()
{
  v1 = v0;
  v2 = *v0;
  sub_1A3EE9634();
  result = sub_1A524E3B4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1A524DBE4();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

void sub_1A3EE8810(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A3EE85F4();
  }

  else
  {
    if (v7 > v6)
    {
      sub_1A3EE8980();
      goto LABEL_12;
    }

    sub_1A3EE8AC4();
  }

  v8 = *v3;
  v9 = sub_1A524DBE4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1A3C52C70(0, &unk_1EB131220);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1A524DBF4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1A524EB74();
  __break(1u);
}

id sub_1A3EE8980()
{
  v1 = v0;
  sub_1A3EE9634();
  v2 = *v0;
  v3 = sub_1A524E3A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1A3EE8AC4()
{
  v1 = v0;
  v2 = *v0;
  sub_1A3EE9634();
  result = sub_1A524E3B4();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_1A524DBE4();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v23;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

id sub_1A3EE8CCC(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_1A524E274();
  sub_1A3C52C70(0, &unk_1EB131220);
  sub_1A3EE96A8();
  result = sub_1A524CF84();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_1A524E304())
      {
        goto LABEL_30;
      }

      sub_1A3C52C70(0, &unk_1EB131220);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void sub_1A3EE8EE8(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1A524E2B4())
    {
LABEL_3:
      sub_1A3EE9634();
      v3 = sub_1A524E3D4();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1A524E2B4();
      if (!v5)
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

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x1A59097F0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1A524DBE4();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1A3C52C70(0, &unk_1EB131220);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_1A524DBF4();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_1A524DBE4();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_1A3C52C70(0, &unk_1EB131220);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_1A524DBF4();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_1A3EE91CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedAlbumsActivityItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A3EE9230(uint64_t a1)
{
  v2 = type metadata accessor for SharedAlbumsActivityItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A3EE938C()
{
  sub_1A5241144();
  if (v0 <= 0x3F)
  {
    sub_1A3C36FC0(319, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1A3C52C70(319, &qword_1EB120A18);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore24SharedAlbumsActivityItemV0E4TypeO(uint64_t a1)
{
  if ((*(a1 + 24) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1A3EE94A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A3EE94F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A3EE9538(uint64_t result, unsigned int a2)
{
  v2 = a2 - 3;
  if (a2 >= 3)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_1A3EE9564(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t sub_1A3EE95C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1A3EE9634()
{
  if (!qword_1EB12E398)
  {
    sub_1A3C52C70(255, &unk_1EB131220);
    sub_1A3EE96A8();
    v0 = sub_1A524E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12E398);
    }
  }
}

unint64_t sub_1A3EE96A8()
{
  result = qword_1EB131230;
  if (!qword_1EB131230)
  {
    sub_1A3C52C70(255, &unk_1EB131220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131230);
  }

  return result;
}

id sub_1A3EE9714()
{
  v1 = v0;
  sub_1A3C37604(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17[-v3];
  v5 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for LemonadeDetailsContext();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  result = [objc_opt_self() px_systemPhotoLibrary];
  if (result)
  {
    v10 = result;
    type metadata accessor for LemonadeNavigationContext(0);
    type metadata accessor for LemonadePhotoLibraryContext();
    v11 = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v10, 0, 0);
    j___s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v19);
    sub_1A3C799F0(v7, 0, 0, 0, v4, &v19, v11, 2);
    v12 = [v1 px_splitViewController];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 isSidebarVisible];
    }

    else
    {
      v14 = 0;
    }

    sub_1A4655DC0(v14);

    sub_1A418E3C8(v15, &v18);

    v17[13] = v18;
    v17[12] = 0;
    sub_1A3EE998C();
    v16 = sub_1A524C594();

    return ((v16 & 1) == 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A3EE998C()
{
  result = qword_1EB125558;
  if (!qword_1EB125558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125558);
  }

  return result;
}

uint64_t sub_1A3EE99E0(char *a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v148 = a6;
  v149 = a7;
  v151 = a5;
  v144 = a4;
  v152 = a3;
  v141 = a2;
  v154 = a1;
  v147 = sub_1A5246F24();
  v150 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v137 = v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v153 = v133 - v12;
  v13 = MEMORY[0x1E69E6720];
  sub_1A3C37604(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v135 = v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v139 = (v133 - v17);
  sub_1A3C37604(0, &qword_1EB1290B0, MEMORY[0x1E69C24E0], v13);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v136 = v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v142 = (v133 - v21);
  v22 = type metadata accessor for LemonadeOneUpPresentationContext(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v143 = v133 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for LemonadeNavigationDestination();
  v138 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v134 = v133 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v146 = v133 - v27;
  v140 = v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v133 - v30;
  v32 = sub_1A5246E54();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = v133 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = v133 - v37;
  if (qword_1EB18EB30 != -1)
  {
    swift_once();
  }

  v39 = sub_1A5246E94();
  __swift_project_value_buffer(v39, qword_1EB18EB38);
  sub_1A5246E44();
  v40 = sub_1A5246E84();
  v41 = sub_1A524D654();
  v42 = sub_1A524DEC4();
  v145 = v24;
  if (v42)
  {
    v43 = a8;
    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v40, v41, v45, "Latency", "", v44, 2u);
    v46 = v44;
    a8 = v43;
    MEMORY[0x1A590EEC0](v46, -1, -1);
  }

  v47 = a9;

  (*(v33 + 16))(v35, v38, v32);
  sub_1A5246ED4();
  swift_allocObject();
  sub_1A5246EC4();
  (*(v33 + 8))(v38, v32);
  v48 = v154;
  sub_1A3EEDA58(v154, v31, type metadata accessor for LemonadeNavigationDestination);
  if (swift_getEnumCaseMultiPayload() == 21)
  {
    v49 = *(v31 + 1);
    aBlock = *v31;
    v159 = v49;
    v160 = *(v31 + 4);
    v50 = v155;
    v51 = [v155 px_topmostPresentedViewController];
    if (!v51)
    {
      v51 = v50;
    }

    v156[0] = aBlock;
    v156[1] = v159;
    v157 = v160;
    v52 = v139;
    sub_1A3EECE98(v152, v139, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720], sub_1A3C37604);
    v53 = type metadata accessor for LemonadeDetailsContext();
    v54 = (*(*(v53 - 8) + 48))(v52, 1, v53);
    v55 = v142;
    if (v54 == 1)
    {
      sub_1A3C2C538(v52, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720], sub_1A3C37604);
      v56 = sub_1A52434D4();
      (*(*(v56 - 8) + 56))(v55, 1, 1, v56);
    }

    else
    {
      sub_1A3EECE98(v52, v142, &qword_1EB1290B0, MEMORY[0x1E69C24E0], MEMORY[0x1E69E6720], sub_1A3C37604);
      sub_1A3EEDC98(v52, type metadata accessor for LemonadeDetailsContext);
    }

    v60 = v148;
    v59 = v149;
    sub_1A3C66EE8(v148);
    v61 = v144;
    v62 = v144;
    v63 = v143;
    sub_1A41DF3FC(v55, v60, v59, v61, v151 & 1, v143);
    v64 = v48;
    v65 = v146;
    sub_1A3EEDA58(v64, v146, type metadata accessor for LemonadeNavigationDestination);
    v66 = (v138[80] + 16) & ~v138[80];
    v67 = (v140 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
    v68 = swift_allocObject();
    sub_1A3CA24F0(v65, v68 + v66, type metadata accessor for LemonadeNavigationDestination);
    v69 = (v68 + v67);
    *v69 = a8;
    v69[1] = a9;
    sub_1A3C66EE8(a8);
    v70 = sub_1A41DF468(v156, v63, sub_1A3EECFBC, v68);

    sub_1A3EEDC98(v63, type metadata accessor for LemonadeOneUpPresentationContext);
    sub_1A3EEAE1C();

    sub_1A3EED05C(&aBlock);

    return v70 & 1;
  }

  sub_1A3EEDC98(v31, type metadata accessor for LemonadeNavigationDestination);
  v162 = &unk_1F1B444B8;
  v57 = swift_dynamicCastObjCProtocolConditional();
  if (v57)
  {
    v58 = [v57 actionProviderDelegate];
  }

  else
  {
    v58 = 0;
  }

  v71 = v147;
  v72 = v150;
  v73 = v153;
  v74 = v141;
  v75 = sub_1A3EEB3C0(v141, v58);
  swift_unknownObjectRelease();
  if (!v75)
  {
    sub_1A3EEAE1C();
    goto LABEL_49;
  }

  v138 = v75;
  v76 = v75;
  v77 = v74;
  v78 = v76;
  sub_1A418E3C8(v77, &aBlock);
  LODWORD(v144) = aBlock;
  if (aBlock > 1u)
  {
    if (aBlock == 2)
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        [v78 setModalPresentationStyle_];
        sub_1A524D394();
      }
    }

    else
    {
      [v78 setModalPresentationStyle_];
    }
  }

  else if (aBlock)
  {
    [v78 setModalPresentationStyle_];
  }

  else
  {
    [v78 setModalPresentationStyle_];
  }

  objc_opt_self();
  v79 = swift_dynamicCastObjCClass();
  v80 = v78;
  if (!v79)
  {
LABEL_34:
    v143 = v78;
    v142 = a8;
    v87 = sub_1A3C38A40();
    v88 = *(v72 + 16);
    v140 = v87;
    v141 = v72 + 16;
    v139 = v88;
    v88(v73);
    v89 = v134;
    sub_1A3EEDA58(v48, v134, type metadata accessor for LemonadeNavigationDestination);
    v90 = v80;
    v91 = sub_1A5246F04();
    v92 = sub_1A524D264();

    v93 = os_log_type_enabled(v91, v92);
    v154 = v90;
    if (v93)
    {
      v94 = swift_slowAlloc();
      swift_slowAlloc();
      v95 = swift_slowAlloc();
      v133[1] = a9;
      *&aBlock = v95;
      *v94 = 136446466;
      sub_1A3EEDA58(v89, v146, type metadata accessor for LemonadeNavigationDestination);
      sub_1A524C714();
      sub_1A3EEDC98(v89, type metadata accessor for LemonadeNavigationDestination);
      sub_1A3C2EF94();
    }

    sub_1A3EEDC98(v89, type metadata accessor for LemonadeNavigationDestination);
    v96 = *(v72 + 8);
    v96(v73, v71);
    v97 = v155;
    v98 = v136;
    v99 = v144;
    v100 = v135;
    sub_1A3EECE98(v152, v135, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720], sub_1A3C37604);
    v101 = type metadata accessor for LemonadeDetailsContext();
    v102 = (*(*(v101 - 8) + 48))(v100, 1, v101);
    v103 = v143;
    if (v102 == 1)
    {
      sub_1A3C2C538(v100, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720], sub_1A3C37604);
      v104 = sub_1A52434D4();
      (*(*(v104 - 8) + 56))(v98, 1, 1, v104);
    }

    else
    {
      sub_1A3EECE98(v100, v98, &qword_1EB1290B0, MEMORY[0x1E69C24E0], MEMORY[0x1E69E6720], sub_1A3C37604);
      sub_1A3EEDC98(v100, type metadata accessor for LemonadeDetailsContext);
    }

    sub_1A524D374();
    LOBYTE(aBlock) = v99;
    LOBYTE(v156[0]) = 0;
    if (static LemonadeDetailsNavigationType.== infix(_:_:)(&aBlock, v156))
    {
      v105 = [v97 navigationController];
      if (v105)
      {
        v106 = v105;
        objc_opt_self();
        v107 = swift_dynamicCastObjCClass();
        v108 = v154;
        if (v107)
        {
          v109 = [v107 topViewController];
          v110 = v142;
          v111 = v151;
          if (v109)
          {
            v112 = v109;

            v103 = v112;
          }
        }

        else
        {
          v110 = v142;
          v111 = v151;
        }

        v129 = [v106 presentedViewController];
        if (v129)
        {

          [v106 dismissViewControllerAnimated:1 completion:0];
        }

        [v106 pushViewController:v103 animated:v111 & 1];
        sub_1A3EEAE1C();
        if (v110)
        {
          v110(v108);
        }

LABEL_59:

        sub_1A3C52C70(0, &qword_1EB126A10);
        v130 = [swift_getObjCClassFromMetadata() sharedInstance];
        v131 = [v130 simulateDetailsViewLeaking];

        if (v131)
        {
          if (qword_1EB161930 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v132 = v103;
          MEMORY[0x1A5907D70]();
          if (*((qword_1EB161938 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((qword_1EB161938 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1A524CA74();
          }

          sub_1A524CAE4();
          swift_endAccess();
        }

        v70 = 1;
        return v70 & 1;
      }

      sub_1A524D244();
      v116 = *sub_1A3CAA3FC();
      sub_1A5246DF4();

LABEL_49:

      v70 = 0;
      return v70 & 1;
    }

    v113 = [v97 px_topmostPresentedViewController];
    if (v113)
    {
      v114 = v113;
      if (![v113 isBeingDismissed])
      {
        v115 = v114;
        goto LABEL_51;
      }
    }

    v115 = v97;
LABEL_51:
    v106 = v115;
    sub_1A5242A74();
    (v139)(v137, v140, v71);
    v103 = v103;
    v117 = sub_1A5246F04();
    v118 = sub_1A524D264();

    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      *v119 = 138543618;
      *(v119 + 4) = v106;
      *(v119 + 12) = 2114;
      *(v119 + 14) = v103;
      v121 = v138;
      *v120 = v106;
      v120[1] = v121;
      v122 = v103;
      v123 = v106;
      _os_log_impl(&dword_1A3C1C000, v117, v118, "Asking presenting view controller %{public}@ to present view controller %{public}@", v119, 0x16u);
      sub_1A3EECF3C(0, &qword_1EB12B150, &qword_1EB12B160, 0x1E69E58C0, MEMORY[0x1E69E6720]);
      swift_arrayDestroy();
      v124 = v120;
      v47 = a9;
      MEMORY[0x1A590EEC0](v124, -1, -1);
      MEMORY[0x1A590EEC0](v119, -1, -1);
    }

    v96(v137, v71);
    v125 = swift_allocObject();
    v126 = v142;
    v125[2] = v142;
    v125[3] = v47;
    v108 = v154;
    v125[4] = v154;
    v160 = sub_1A3EECF0C;
    v161 = v125;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v159 = sub_1A3C2E0D0;
    *(&v159 + 1) = &block_descriptor_42;
    v127 = _Block_copy(&aBlock);
    sub_1A3C66EE8(v126);
    v128 = v108;

    [v106 presentViewController:v103 animated:v151 & 1 completion:v127];
    _Block_release(v127);

    sub_1A3EEAE1C();
    goto LABEL_59;
  }

  v81 = v79;
  v80 = v78;
  v82 = [v81 viewControllers];
  sub_1A3C52C70(0, &qword_1EB126B10);
  v83 = sub_1A524CA34();

  if (!(v83 >> 62))
  {
    result = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v73 = v153;
    if (result)
    {
      goto LABEL_28;
    }

    goto LABEL_33;
  }

  result = sub_1A524E2B4();
  v73 = v153;
  if (!result)
  {
LABEL_33:

    goto LABEL_34;
  }

LABEL_28:
  if ((v83 & 0xC000000000000001) != 0)
  {
    v85 = MEMORY[0x1A59097F0](0, v83);
    goto LABEL_31;
  }

  if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v85 = *(v83 + 32);
LABEL_31:
    v86 = v85;

    v80 = v86;
    v73 = v153;
    goto LABEL_34;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A3EEAE1C()
{
  v0 = sub_1A5246EA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5246E54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB18EB30 != -1)
  {
    swift_once();
  }

  v8 = sub_1A5246E94();
  __swift_project_value_buffer(v8, qword_1EB18EB38);
  v9 = sub_1A5246E84();
  sub_1A5246EB4();
  v10 = sub_1A524D644();
  if (sub_1A524DEC4())
  {

    sub_1A5246EE4();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_1A5246E34();
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v9, v10, v13, "Latency", v11, v12, 2u);
    MEMORY[0x1A590EEC0](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_1A3EEB0A8(void *a1, uint64_t a2, void (*a3)(void))
{
  v6 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - v10;
  v12 = sub_1A5246F24();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a3)
    {
      v21[0] = a1;
      a3();
      v16 = v21[0];
    }
  }

  else
  {
    v17 = sub_1A3C38A40();
    (*(v13 + 16))(v15, v17, v12);
    sub_1A3EEDA58(a2, v11, type metadata accessor for LemonadeNavigationDestination);
    v18 = sub_1A5246F04();
    v19 = sub_1A524D264();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21[1] = swift_slowAlloc();
      *v20 = 136446210;
      sub_1A3EEDA58(v11, v8, type metadata accessor for LemonadeNavigationDestination);
      sub_1A524C714();
      sub_1A3EEDC98(v11, type metadata accessor for LemonadeNavigationDestination);
      sub_1A3C2EF94();
    }

    sub_1A3EEDC98(v11, type metadata accessor for LemonadeNavigationDestination);
    (*(v13 + 8))(v15, v12);
  }
}

id sub_1A3EEB3C0(uint64_t a1, uint64_t a2)
{
  v125 = a1;
  v121 = a2;
  v2 = type metadata accessor for LemonadeRootView();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v119 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1E69E6720];
  sub_1A3C37604(0, &qword_1EB128FD0, MEMORY[0x1E69C2948], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v118 = &v106 - v6;
  v7 = type metadata accessor for LemonadeBookmarksSeeAllPopoverView();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v113 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EED0B0();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v115 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C37604(0, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, v4);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v112 = &v106 - v12;
  sub_1A3EED144();
  v114 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v116 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v117 = (&v106 - v16);
  v17 = type metadata accessor for GenerativeStoryCreationView();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v111 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for LemonadeGenerativeMemoriesConfiguration();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v109 = (&v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v110 = &v106 - v22;
  v23 = type metadata accessor for LemonadeMemoryPlayerConfiguration(0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v107 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v108);
  v106 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v106 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EED270();
  v122 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v123 = &v106 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v106 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v124;
  sub_1A418E3C8(v125, &v127);
  v120 = v127;
  sub_1A3EEDA58(v40, v39, type metadata accessor for LemonadeNavigationDestination);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0xCu:
      v67 = *(v39 + 3);
      v129 = *(v39 + 2);
      v130 = v67;
      v131 = *(v39 + 4);
      v132 = *(v39 + 10);
      v68 = *(v39 + 1);
      v127 = *v39;
      v128 = v68;
      LOBYTE(v133[0]) = v120;
      v43 = sub_1A47A9B44(&v127, v133, v125);
      sub_1A3EEDCF8(&v127);
      return v43;
    case 0xDu:
      sub_1A3CA24F0(v39, v28, type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration);
      LOBYTE(v127) = v120;
      v58 = sub_1A3EEDC50(&qword_1EB125FA0, type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration);
      v43 = sub_1A44D14B4(v28, &v127, v125, v26, v58);
      sub_1A3EEDC98(v28, type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration);
      return v43;
    case 0xEu:
      sub_1A3CA24F0(v39, v34, type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration);
      LOBYTE(v127) = v120;
      v76 = sub_1A3EEDC50(&unk_1EB12AD20, type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration);
      v43 = sub_1A44D14B4(v34, &v127, v125, v32, v76);
      sub_1A3EEDC98(v34, type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration);
      return v43;
    case 0xFu:
      sub_1A3CA24F0(v39, v31, type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration);
      LOBYTE(v127) = v120;
      v84 = sub_1A3EEDC50(&qword_1EB12E448, type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration);
      v43 = sub_1A44D14B4(v31, &v127, v125, v29, v84);
      v48 = type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration;
      goto LABEL_29;
    case 0x10u:
      v31 = v106;
      sub_1A3CA24F0(v39, v106, type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration);
      LOBYTE(v127) = v120;
      v47 = sub_1A3EEDC50(&qword_1EB12AD48, type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration);
      v43 = sub_1A44D14B4(v31, &v127, v125, v108, v47);
      v48 = type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration;
LABEL_29:
      sub_1A3EEDC98(v31, v48);
      return v43;
    case 0x11u:
      v73 = v39[8];
      *&v127 = *v39;
      BYTE8(v127) = v73;
      LOBYTE(v133[0]) = v120;
      sub_1A3D8E838(&v127, v133, v125);
    case 0x12u:
      v74 = *(v39 + 3);
      v129 = *(v39 + 2);
      v130 = v74;
      *&v131 = *(v39 + 8);
      v75 = *(v39 + 1);
      v127 = *v39;
      v128 = v75;
      LOBYTE(v133[0]) = v120;
      v43 = sub_1A426FFD0(v133, v125);
      sub_1A3EEDBFC(&v127);
      return v43;
    case 0x13u:
      v85 = *(v39 + 1);
      v86 = *(v39 + 2);
      v87 = *(v39 + 3);
      *&v127 = *v39;
      *(&v127 + 1) = v85;
      *&v128 = v86;
      *(&v128 + 1) = v87;
      LOBYTE(v133[0]) = v120;
      v88 = sub_1A3EEDBA8();
      v43 = sub_1A42EB4AC(&v127, v133, v125, &type metadata for LemonadeUserAlbumsPhotosPagingGridConfiguration, v88);

      goto LABEL_34;
    case 0x14u:
      v92 = *(v39 + 1);
      v93 = *(v39 + 2);
      v87 = *(v39 + 3);
      *&v127 = *v39;
      *(&v127 + 1) = v92;
      *&v128 = v93;
      *(&v128 + 1) = v87;
      LOBYTE(v133[0]) = v120;
      v94 = sub_1A3EEDB54();
      v43 = sub_1A42EB4AC(&v127, v133, v125, &type metadata for LemonadeSharedAlbumsPhotosPagingGridConfiguration, v94);

LABEL_34:

      return v43;
    case 0x15u:
      sub_1A3EEDC98(v39, type metadata accessor for LemonadeNavigationDestination);
      return 0;
    case 0x16u:
      sub_1A3CA24F0(v39, v107, type metadata accessor for LemonadeMemoryPlayerConfiguration);
      sub_1A498A604();
    case 0x18u:
      v99 = *v39;
      _s12PhotosUICore29lemonadeAlbumsShelfIdentifierAA08LemonadeeF0Ovg_0(&v127);
      v100 = sub_1A4656D64(v40, &v127);
      v101 = sub_1A4655D24(0);
      MEMORY[0x1EEE9AC00](v101);
      *(&v106 - 2) = v99;
      *(&v106 - 1) = v100;
      type metadata accessor for LemonadeAccountView();
      sub_1A3EEDC50(&qword_1EB12A3B0, type metadata accessor for LemonadeAccountView);

      LemonadeNavigationContainer.init(navigationContext:content:)(v102, sub_1A3EED7D8, v117);
      swift_getKeyPath();
      sub_1A3EECF3C(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
      sub_1A4654ADC();
      sub_1A3C37604(0, &unk_1EB1278B0, sub_1A3D63A58, MEMORY[0x1E6980A08]);
      sub_1A3EED838();
      sub_1A52459A4();
    case 0x19u:
      v49 = *(v39 + 5);
      v133[4] = *(v39 + 4);
      v133[5] = v49;
      v134[0] = *(v39 + 6);
      *(v134 + 11) = *(v39 + 107);
      v50 = *(v39 + 1);
      v133[0] = *v39;
      v133[1] = v50;
      v51 = *(v39 + 3);
      v133[2] = *(v39 + 2);
      v133[3] = v51;
      v52 = v125;
      LOBYTE(v127) = *(v125 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
      v53 = sub_1A4656D64(v40, &v127);
      sub_1A3EED680(v133, v126);
      sub_1A412FC64(v126, &v127);
      v54 = OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootDestination;
      sub_1A3EED6DC();
      v43 = sub_1A477FA30(&v127, v53 + v54, v52);

      sub_1A3EED730(&v127);
      sub_1A3EED784(v133);
      return v43;
    case 0x1Au:
      v95 = v110;
      v96 = sub_1A3CA24F0(v39, v110, type metadata accessor for LemonadeGenerativeMemoriesConfiguration);
      if (*(v95 + 8) == 1)
      {
        PXDisplayCollectionDetailedCountsMake(v96);
        v97 = &type metadata for GenerativeStoryTransitionIdentifier;
      }

      else
      {
        v97 = 0;
        v127 = 0uLL;
        *&v128 = 0;
      }

      v103 = v125;
      v104 = v111;
      v105 = v109;
      *(&v128 + 1) = v97;
      sub_1A3EEDAC0();
      sub_1A3EEDA58(v95, v105, type metadata accessor for LemonadeGenerativeMemoriesConfiguration);

      GenerativeStoryCreationView.init(configuration:)(v105, v104);
      v43 = sub_1A3D61F84(&v127, v103, v104);
      sub_1A3EEDC98(v95, type metadata accessor for LemonadeGenerativeMemoriesConfiguration);
      return v43;
    case 0x1Bu:
      sub_1A3EEDC98(v39, type metadata accessor for LemonadeNavigationDestination);
      v55 = v125;
      LOBYTE(v127) = *(v125 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
      v56 = v40;
      sub_1A4656D64(v40, &v127);
      type metadata accessor for LemonadeNavigationDestinationView();
      sub_1A3EEDC50(&qword_1EB129650, type metadata accessor for LemonadeNavigationDestinationView);

      v57 = sub_1A3EEDDB4;
      goto LABEL_38;
    case 0x1Cu:
      *&v127 = *v39;
      v77 = v112;
      sub_1A46535F0(v112);
      v78 = type metadata accessor for LemonadeDetailsContext();
      v79 = 0;
      v80 = 0;
      if (!(*(*(v78 - 8) + 48))(v77, 1, v78))
      {
        v81 = (v77 + *(v78 + 20));
        v79 = *v81;
        v80 = v81[1];
        sub_1A3C66EE8(*v81);
      }

      sub_1A3C2C538(v77, &unk_1EB12A160, type metadata accessor for LemonadeDetailsContext, MEMORY[0x1E69E6720], sub_1A3C37604);
      v43 = sub_1A43BD594(&v127, v79, v80);
      sub_1A3C33378(v79);
      goto LABEL_25;
    case 0x1Du:
      v69 = *v39;
      LOBYTE(v127) = *(v125 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
      v70 = sub_1A4656D64(v40, &v127);
      sub_1A3EED58C();
      MEMORY[0x1EEE9AC00](v71);
      *(&v106 - 2) = v70;
      *(&v106 - 1) = v69;
      type metadata accessor for LemonadeBookmarksEditView(0);
      sub_1A3EEDC50(&unk_1EB129DE8, type metadata accessor for LemonadeBookmarksEditView);

      v72 = v115;
      sub_1A457A75C(sub_1A3EED620, v115);
      v43 = PXSwiftUIHostingViewController.__allocating_init(rootView:)(v72);

      goto LABEL_27;
    case 0x1Eu:
      sub_1A3EED4F8();

      v83 = v113;
      sub_1A40EE7AC(v82, v113);
      v43 = PXSwiftUIHostingViewController.__allocating_init(rootView:)(v83);
LABEL_27:

      return v43;
    case 0x1Fu:
      *&v127 = *v39;
      v46 = sub_1A484F06C(&v127);
      goto LABEL_13;
    case 0x20u:
      sub_1A3EEDC98(v39, type metadata accessor for LemonadeNavigationDestination);
      v55 = v125;
      LOBYTE(v127) = *(v125 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
      v56 = v40;
      sub_1A4656D64(v40, &v127);
      type metadata accessor for LemonadeNavigationDestinationView();
      sub_1A3EEDC50(&qword_1EB129650, type metadata accessor for LemonadeNavigationDestinationView);

      v57 = sub_1A3EED678;
LABEL_38:
      v98 = v123;
      sub_1A47E5794(v57, v123);

      sub_1A3EEDC50(&qword_1EB12E400, sub_1A3EED270);
      v43 = sub_1A477FA30(v98, v56, v55);
      sub_1A3EEDC98(v98, sub_1A3EED270);
      return v43;
    case 0x21u:
      v45 = *v39;
      v43 = sub_1A47EFC4C(*v39);

      return v43;
    case 0x22u:
      *&v127 = *v39;
      v46 = sub_1A4871374(&v127);
LABEL_13:
      v43 = v46;
LABEL_25:
      swift_unknownObjectRelease();
      return v43;
    case 0x24u:
    case 0x25u:
      return *v39;
    case 0x26u:
      v89 = *(v39 + 1);
      v127 = *v39;
      v128 = v89;
      v129 = *(v39 + 2);
      *&v130 = *(v39 + 6);
      sub_1A3EED398();
      sub_1A3EED448(&v127, v126);
      sub_1A43F83A0(v126, v133);
      v43 = PXSwiftUIHostingViewController.__allocating_init(rootView:)(v133);
      result = [v43 view];
      if (result)
      {
        v90 = result;
        v91 = [objc_opt_self() systemBackgroundColor];
        [v90 setBackgroundColor_];

        sub_1A3EED4A4(&v127);
        return v43;
      }

      else
      {
        __break(1u);
      }

      return result;
    case 0x27u:
      goto LABEL_3;
    case 0x28u:
      type metadata accessor for LemonadeRootViewModel();
      v59 = *(*(v125 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext) + 16);
      v60 = objc_opt_self();
      v61 = v59;
      v62 = [v60 defaultManager];
      v63 = [objc_allocWithZone(PXPhotoKitUIMediaProvider) initWithImageManager_];

      v64 = sub_1A5244084();
      v65 = v118;
      (*(*(v64 - 8) + 56))(v118, 1, 1, v64);
      v66 = sub_1A3C5A374();
      sub_1A466CA74(v61, v63, 0, v65, v66 & 1);
    default:
      sub_1A3EEDC98(v39, type metadata accessor for LemonadeNavigationDestination);
LABEL_3:
      v41 = v125;
      LOBYTE(v127) = *(v125 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
      sub_1A4656D64(v40, &v127);
      type metadata accessor for LemonadeNavigationDestinationView();
      sub_1A3EEDC50(&qword_1EB129650, type metadata accessor for LemonadeNavigationDestinationView);

      v42 = v123;
      sub_1A47E5794(sub_1A3EEDDB4, v123);

      sub_1A3EEDC50(&qword_1EB12E400, sub_1A3EED270);
      v43 = sub_1A477FA30(v42, v40, v41);
      sub_1A3EEDC98(v42, sub_1A3EED270);
      [v43 setActionProviderDelegate_];
      return v43;
  }
}

uint64_t sub_1A3EEC884@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EEDA58(a1 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_rootDestination, v6, type metadata accessor for LemonadeNavigationDestination);

  return sub_1A487864C(v6, a1, 0, a2);
}

id sub_1A3EEC940()
{
  sub_1A3EECA74(v8);
  v0 = v9;
  if (v9)
  {
    v1 = __swift_project_boxed_opaque_existential_1(v8, v9);
    v2 = *(v0 - 8);
    v3 = MEMORY[0x1EEE9AC00](v1);
    v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v2 + 16))(v5, v3);
    v6 = sub_1A524EA94();
    (*(v2 + 8))(v5, v0);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_1A3EECBE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ItemHostingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A3EECCF8()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB176AC0);
  __swift_project_value_buffer(v0, qword_1EB176AC0);
  sub_1A5246EF4();
}

uint64_t sub_1A3EECD5C()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5246E94();
  __swift_allocate_value_buffer(v4, qword_1EB18EB38);
  __swift_project_value_buffer(v4, qword_1EB18EB38);
  if (qword_1EB176AB8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EB176AC0);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1A5246E64();
}

uint64_t sub_1A3EECE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1A3EECF0C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32));
  }

  return result;
}

void sub_1A3EECF3C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A3EECFA4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

void sub_1A3EECFBC(void *a1)
{
  v3 = *(type metadata accessor for LemonadeNavigationDestination() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1A3EEB0A8(a1, v1 + v4, v5);
}

void sub_1A3EED0B0()
{
  if (!qword_1EB12E3A0)
  {
    type metadata accessor for LemonadeBookmarksEditView(255);
    sub_1A3EEDC50(&unk_1EB129DE8, type metadata accessor for LemonadeBookmarksEditView);
    v0 = type metadata accessor for LemonadeNavigationStack();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12E3A0);
    }
  }
}

void sub_1A3EED144()
{
  if (!qword_1EB124200)
  {
    sub_1A3EED1DC();
    sub_1A3C37604(255, &unk_1EB1278B0, sub_1A3D63A58, MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124200);
    }
  }
}

void sub_1A3EED1DC()
{
  if (!qword_1EB125628)
  {
    type metadata accessor for LemonadeAccountView();
    sub_1A3EEDC50(&qword_1EB12A3B0, type metadata accessor for LemonadeAccountView);
    v0 = type metadata accessor for LemonadeNavigationContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB125628);
    }
  }
}

void sub_1A3EED270()
{
  if (!qword_1EB12E3B0)
  {
    type metadata accessor for LemonadeNavigationDestinationView();
    sub_1A3EEDC50(&qword_1EB129650, type metadata accessor for LemonadeNavigationDestinationView);
    v0 = type metadata accessor for LemonadePresentationRoot();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12E3B0);
    }
  }
}

void sub_1A3EED304()
{
  if (!qword_1EB12E3C0)
  {
    type metadata accessor for LemonadeRootView();
    sub_1A3EEDC50(&qword_1EB12A4E8, type metadata accessor for LemonadeRootView);
    v0 = type metadata accessor for PXSwiftUIHostingViewController();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12E3C0);
    }
  }
}

void sub_1A3EED398()
{
  if (!qword_1EB12E3D0)
  {
    sub_1A3EED3F4();
    v0 = type metadata accessor for PXSwiftUIHostingViewController();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12E3D0);
    }
  }
}

unint64_t sub_1A3EED3F4()
{
  result = qword_1EB125A58;
  if (!qword_1EB125A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125A58);
  }

  return result;
}

void sub_1A3EED4F8()
{
  if (!qword_1EB12E3E0)
  {
    type metadata accessor for LemonadeBookmarksSeeAllPopoverView();
    sub_1A3EEDC50(&unk_1EB1295D8, type metadata accessor for LemonadeBookmarksSeeAllPopoverView);
    v0 = type metadata accessor for PXSwiftUIHostingViewController();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12E3E0);
    }
  }
}

void sub_1A3EED58C()
{
  if (!qword_1EB12E3F0)
  {
    sub_1A3EED0B0();
    sub_1A3EEDC50(&qword_1EB12E3F8, sub_1A3EED0B0);
    v0 = type metadata accessor for PXSwiftUIHostingViewController();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12E3F0);
    }
  }
}

double sub_1A3EED620@<D0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  return sub_1A431ED94(v4, v3, a1);
}

unint64_t sub_1A3EED6DC()
{
  result = qword_1EB12A958;
  if (!qword_1EB12A958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A958);
  }

  return result;
}

uint64_t sub_1A3EED7D8@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  sub_1A3C5A374();

  return sub_1A4578344(v4, v3, a1);
}

unint64_t sub_1A3EED838()
{
  result = qword_1EB128E10;
  if (!qword_1EB128E10)
  {
    sub_1A3EECF3C(255, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB128E10);
  }

  return result;
}

void sub_1A3EED8BC()
{
  if (!qword_1EB12E408)
  {
    sub_1A3EED144();
    sub_1A3EED920();
    v0 = type metadata accessor for LemonadeHostingController();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12E408);
    }
  }
}

unint64_t sub_1A3EED920()
{
  result = qword_1EB12E410;
  if (!qword_1EB12E410)
  {
    sub_1A3EED144();
    sub_1A3EEDC50(&unk_1EB12E418, sub_1A3EED1DC);
    sub_1A3EED9D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E410);
  }

  return result;
}

unint64_t sub_1A3EED9D0()
{
  result = qword_1EB1278C0;
  if (!qword_1EB1278C0)
  {
    sub_1A3C37604(255, &unk_1EB1278B0, sub_1A3D63A58, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1278C0);
  }

  return result;
}

uint64_t sub_1A3EEDA58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A3EEDAC0()
{
  if (!qword_1EB12E428)
  {
    type metadata accessor for GenerativeStoryCreationView();
    sub_1A3EEDC50(&qword_1EB129B90, type metadata accessor for GenerativeStoryCreationView);
    v0 = type metadata accessor for LemonadeZoomPresentableDetailViewController();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12E428);
    }
  }
}

unint64_t sub_1A3EEDB54()
{
  result = qword_1EB12E438;
  if (!qword_1EB12E438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E438);
  }

  return result;
}

unint64_t sub_1A3EEDBA8()
{
  result = qword_1EB12AE70;
  if (!qword_1EB12AE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AE70);
  }

  return result;
}

uint64_t sub_1A3EEDC50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A3EEDC98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

PhotosUICore::PerformanceBaselineScrollTest_optional __swiftcall PerformanceBaselineScrollTest.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A524E824();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PerformanceBaselineScrollTest.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1A3EEDE88(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "tableViewWithChrome";
  if (v2 == 1)
  {
    v4 = "tableViewWithChrome";
  }

  else
  {
    v4 = "tungstenColorsWithChrome";
  }

  if (*a1)
  {
    v5 = 0xD000000000000018;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = "rollerNavigation";
  }

  if (*a2 != 1)
  {
    v3 = "tungstenColorsWithChrome";
  }

  if (*a2)
  {
    v7 = 0xD000000000000018;
  }

  else
  {
    v7 = 0xD000000000000013;
  }

  if (*a2)
  {
    v8 = v3;
  }

  else
  {
    v8 = "rollerNavigation";
  }

  if (v5 == v7 && (v6 | 0x8000000000000000) == (v8 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1A524EAB4();
  }

  return v9 & 1;
}

uint64_t sub_1A3EEDF54()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A3EEDFE8()
{
  sub_1A524C794();
}

uint64_t sub_1A3EEE068()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

void sub_1A3EEE104(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000018;
  v3 = "tableViewWithChrome";
  if (*v1 != 1)
  {
    v3 = "tungstenColorsWithChrome";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000013;
    v4 = "rollerNavigation";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t PerformanceBaselineScrollTest.unifiedScrollTestDefinition.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5240E64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v18 - v11;
  v13 = *v1;
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD000000000000033, 0x80000001A53BC240);
  v14 = "tableViewWithChrome";
  if (v13 != 1)
  {
    v14 = "tungstenColorsWithChrome";
  }

  if (v13)
  {
    v15 = 0xD000000000000018;
  }

  else
  {
    v15 = 0xD000000000000013;
  }

  if (v13)
  {
    v16 = v14;
  }

  else
  {
    v16 = "rollerNavigation";
  }

  MEMORY[0x1A5907B60](v15, v16 | 0x8000000000000000);

  sub_1A5240E34();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1A3D75F5C(v5);
    result = sub_1A524E6E4();
    __break(1u);
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    (*(v7 + 16))(v9, v12, v6);
    LOBYTE(v18[0]) = v13 == 0;
    PhotosUnifiedScrollTestDefinition.init(url:scrollViewAccessibilityIdentifier:scrollViewKind:)(v9, 0x6F7263536E69616DLL, 0xEE00776569566C6CLL, v18, a1);
    return (*(v7 + 8))(v12, v6);
  }

  return result;
}

unint64_t sub_1A3EEE438()
{
  result = qword_1EB12E450;
  if (!qword_1EB12E450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12E450);
  }

  return result;
}

uint64_t sub_1A3EEE49C(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  sub_1A5241604();
  sub_1A3EEE5E0(a1);
  return v2;
}

uint64_t sub_1A3EEE4F4(uint64_t result)
{
  if (v1[24] == (result & 1))
  {
    v1[24] = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 280))(v3);
  }

  return result;
}

void sub_1A3EEE5E0(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  v4 = (*v1 + 272);
  v5 = *v4;
  (*v4)();

  v6 = v1[2];
  if (v6)
  {
    if (a1)
    {
      sub_1A3C52C70(0, &unk_1EB1269D0);
      v7 = v6;
      v15 = a1;
      v8 = sub_1A524DBF4();

      if (v8)
      {

        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  swift_getKeyPath();
  v5();

  v9 = v2[2];
  if (v9)
  {
    [v9 unregisterFrameObserver_];
  }

  v10 = a1;
  sub_1A3EEEBA8(a1);
  if (v2[3])
  {
    KeyPath = swift_getKeyPath();
    v12 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 280))(v12);
  }

  else
  {
    *(v2 + 24) = 0;
  }

  swift_getKeyPath();
  v5();

  v13 = v2[2];
  if (v13)
  {
    v14 = v13;
    [v14 registerFrameObserver_];
  }
}

void (*sub_1A3EEE850(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 272))(KeyPath);

  v4 = v1[2];
  *a1 = v4;
  v5 = v4;
  return sub_1A3EEE8F8;
}

void sub_1A3EEE8F8(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1A3EEE5E0(v2);
  }

  else
  {
    sub_1A3EEE5E0(*a1);
  }
}

uint64_t sub_1A3EEE960(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  (*(*v1 + 272))();

  if (v1[24] != v2)
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 280))(v5);
  }

  return result;
}

void *sub_1A3EEEA84()
{
  swift_getKeyPath();
  (*(*v0 + 272))();

  v1 = v0[2];
  v2 = v1;
  return v1;
}

id sub_1A3EEEAF0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 272))();

  v4 = v3[2];
  *a2 = v4;

  return v4;
}

void sub_1A3EEEB78(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A3EEEBA8(v1);
}

void sub_1A3EEEBA8(void *a1)
{
  v3 = v1[2];
  if (!v3)
  {
    if (!a1)
    {
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 280))(v9);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1A3C52C70(0, &unk_1EB1269D0);
  v4 = v3;
  v5 = a1;
  v6 = sub_1A524DBF4();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = v1[2];
LABEL_8:
  v1[2] = a1;
}

uint64_t sub_1A3EEED24()
{
  swift_getKeyPath();
  (*(*v0 + 272))();

  return v0[24];
}

uint64_t sub_1A3EEED88@<X0>(_BYTE **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 272))();

  *a2 = v3[24];
  return result;
}

uint64_t sub_1A3EEF00C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore26TungstenFirstFrameObserver___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A3EEF0B0(void *a1)
{
  [a1 unregisterFrameObserver_];
  KeyPath = swift_getKeyPath();
  (*(*v1 + 272))(KeyPath);

  if ((v1[24] & 1) == 0)
  {
    v4 = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](v4);
    v6 = v1;
    v7 = 1;
    (*(*v1 + 280))(v5);
  }

  return result;
}

unint64_t sub_1A3EEF1EC()
{
  result = qword_1EB129B98;
  if (!qword_1EB129B98)
  {
    type metadata accessor for TungstenFirstFrameObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129B98);
  }

  return result;
}

uint64_t type metadata accessor for TungstenFirstFrameObserver()
{
  result = qword_1EB181440;
  if (!qword_1EB181440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3EEF298()
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

void sub_1A3EEF33C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

void sub_1A3EEF394()
{
  v0 = objc_allocWithZone(type metadata accessor for LemonadeCuratedLibraryView.ContainerViewController());

  sub_1A3EEFE74(v1);
  v3 = v2;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  [v4 setToolbarHidden_];
  [v4 setNavigationBarHidden_];
  v5 = v4;
  v6 = [v5 view];
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = v6;
  [v6 setClipsToBounds_];

  v8 = [v5 view];
  if (v8)
  {
    v9 = [v8 subviews];

    sub_1A3C52C70(0, &qword_1EB12B170);
    v10 = sub_1A524CA34();

    if (v10 >> 62)
    {
      if (sub_1A524E2B4())
      {
        goto LABEL_5;
      }
    }

    else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1A59097F0](0, v10);
        goto LABEL_8;
      }

      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v11 = *(v10 + 32);
LABEL_8:
        v12 = v11;

        [v12 setClipsToBounds_];

        return;
      }

      __break(1u);
      goto LABEL_13;
    }

    return;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_1A3EEF5B8()
{
  v1 = v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expansionState;
  swift_beginAccess();
  return *v1;
}

void sub_1A3EEF604(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = &v4[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expansionState];
  swift_beginAccess();
  v8[16] = a3;
  *v8 = a1;
  *(v8 + 1) = a2;
  sub_1A3EF0480();
  if ((sub_1A524C594() & 1) == 0)
  {
    v9 = [v4 viewIfLoaded];
    [v9 setNeedsLayout];
  }
}

void (*sub_1A3EEF6D8(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expansionState;
  *(v3 + 96) = v1;
  *(v3 + 104) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 16);
  *(v4 + 24) = *v6;
  *(v4 + 40) = v7;
  return sub_1A3EEF778;
}

void sub_1A3EEF778(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = (*(*a1 + 96) + *(*a1 + 104));
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(v3 + 16);
  *(v3 + 16) = v5;
  v7 = *v3;
  *v3 = v2;
  *(v3 + 1) = v4;
  *(v1 + 48) = v7;
  *(v1 + 64) = v6;
  *(v1 + 72) = v2;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  sub_1A3EF0480();
  if ((sub_1A524C594() & 1) == 0)
  {
    v8 = [*(v1 + 96) viewIfLoaded];
    [v8 setNeedsLayout];
  }

  free(v1);
}

uint64_t sub_1A3EEF848()
{
  v1 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isTracking;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A3EEF88C(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isTracking;
  swift_beginAccess();
  v5 = v1[v4];
  v1[v4] = a1;
  if (v5 != v3)
  {
    v6 = [v1 viewIfLoaded];
    [v6 setNeedsLayout];
  }
}

void (*sub_1A3EEF918(uint64_t *a1))(id **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isTracking;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1A3EEF9AC;
}

void sub_1A3EEF9AC(id **a1)
{
  v1 = *a1;
  v3 = (*a1)[3];
  v2 = (*a1)[4];
  v4 = *(*a1 + 40);
  v5 = v2[v3];
  v2[v3] = v4;
  if (v4 != v5)
  {
    v6 = [v1[3] viewIfLoaded];
    [v6 setNeedsLayout];
  }

  free(v1);
}

double sub_1A3EEFA24()
{
  v1 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_collapsedHeight;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_1A3EEFA74(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_collapsedHeight;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1A3EF7680;
}

double sub_1A3EEFB08()
{
  v1 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_animatedCuratedLibraryBottomSafeAreaInset;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_1A3EEFB58(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_animatedCuratedLibraryBottomSafeAreaInset;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1A3EEFBEC;
}

void sub_1A3EEFBF0(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 3);
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v5 = *&v3[v4];
  *&v3[v4] = v2;
  if (v5 != v2)
  {
    v6 = [v1[4] viewIfLoaded];
    [v6 setNeedsLayout];
  }

  free(v1);
}

double sub_1A3EEFC6C()
{
  v1 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_navigationBarHeight;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A3EEFCB0(double a1)
{
  v3 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_navigationBarHeight;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  if (v4 != a1)
  {
    v5 = *&v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_curatedLibraryViewModel];
    if (v5)
    {
      if ([v5 zoomLevel] == 4)
      {
        if (v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expanded])
        {
LABEL_6:
          v6 = [v1 viewIfLoaded];
          [v6 setNeedsLayout];

          return;
        }

        if (v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_lastNavigationBarHeight + 8])
        {
          if (a1 > 0.0)
          {
            goto LABEL_6;
          }
        }

        else if (*&v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_lastNavigationBarHeight] < a1)
        {
          goto LABEL_6;
        }
      }
    }
  }
}

void (*sub_1A3EEFDA0(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
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
  v5 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_navigationBarHeight;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1A3EEFE34;
}

void sub_1A3EEFE34(uint64_t a1)
{
  v1 = *a1;
  sub_1A3EEFCB0(*(*a1 + 24));

  free(v1);
}

void sub_1A3EEFE74(uint64_t a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_updater] = 0;
  v4 = &v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_searchObservation];
  *v4 = 0;
  v4[1] = 0;
  *&v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_curatedLibraryViewModel] = 0;
  v5 = &v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_curatedLibraryViewModelObservation];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_zoomableViewModelObservation];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_assetCountsObservation];
  *v7 = 0;
  v7[1] = 0;
  *&v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_zoomableViewModel] = 0;
  v8 = &v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_zoomableObservation];
  *v8 = 0;
  v8[1] = 0;
  *&v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_miniModeAnimator] = 0;
  v9 = &v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_miniModeAnimatorObservation];
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_librarySummaryPresenter;
  *&v2[v10] = [objc_allocWithZone(type metadata accessor for LemonadeCuratedLibraryView.ContainerViewController.LibrarySummaryOutputPresenter()) init];
  v11 = &v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_lastNavigationBarHeight];
  *v11 = 0;
  v11[8] = 1;
  v12 = &v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_cplStatusObservation];
  *v12 = 0;
  v12[1] = 0;
  *&v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController____lazy_storage___scrollAnimationTracker] = 0;
  *&v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController____lazy_storage___cplStatusProvider] = 0;
  v13 = &v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_previousExpansionState];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = -1;
  v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isPerformingScrollAnimation] = 0;
  v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expanded] = 0;
  v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expandedAnimating] = 0;
  v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_hasAppearedOnce] = 0;
  v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAppearingFirstFrame] = 0;
  v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isUpdatingScrollViewForExpansion] = 0;
  *&v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expansionPercentage] = 0;
  *&v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_chromeExpansionPercentage] = 0;
  v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isScrolledToBottom] = 0;
  v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAnimatingScrollTowardsEdge] = 0;
  *&v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_viewModel] = a1;

  v15 = sub_1A46E2430(v14);
  v16 = &v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expansionState];
  *v16 = v15;
  *(v16 + 1) = v17;
  v16[16] = v18;
  *&v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_collapsedHeight] = sub_1A46E20FC();
  *&v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_navigationBarHeight] = sub_1A46E1CC8();
  v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isTracking] = sub_1A46E2B88() & 1;
  sub_1A46E3EC8();
  *&v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_animatedCuratedLibraryBottomSafeAreaInset] = v19;
  v20 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v20 setClipsToBounds_];
  *&v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_clippingView] = v20;
  v31.receiver = v2;
  v31.super_class = type metadata accessor for LemonadeCuratedLibraryView.ContainerViewController();
  v21 = objc_msgSendSuper2(&v31, sel_initWithNibName_bundle_, 0, 0);
  v22 = objc_allocWithZone(off_1E7721940);
  v23 = v21;
  v24 = [v22 initWithTarget:v23 needsUpdateSelector:sel_setNeedsUpdate];
  v25 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_updater;
  v26 = *&v23[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_updater];
  *&v23[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_updater] = v24;
  v27 = v24;

  if (!v27)
  {
    __break(1u);
    goto LABEL_7;
  }

  [v27 addUpdateSelector_];

  v28 = *&v23[v25];
  if (!v28)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  [v28 addUpdateSelector_];
  v29 = *&v23[v25];
  if (!v29)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [v29 addUpdateSelector_];
  v30 = *&v23[v25];
  if (v30)
  {
    [v30 addUpdateSelector_];

    return;
  }

LABEL_9:
  __break(1u);
}

void *sub_1A3EF01D0()
{
  v1 = sub_1A46DF5BC();
  sub_1A3EF28E8(v1 & 1);
  v2 = sub_1A46E44D8();
  v3 = *(v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expandedAnimating);
  *(v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expandedAnimating) = v2 & 1;
  if ((v2 & 1) != v3)
  {
    result = *(v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_updater);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v2 = [result setNeedsUpdateOf_];
  }

  v5 = sub_1A46E2B88(v2);
  v6 = MEMORY[0x1E69E7D40];
  v7 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x178))(v5 & 1);
  v8 = sub_1A46E20FC(v7);
  (*((*v6 & *v0) + 0x190))(v8);
  v9.n128_f64[0] = sub_1A46E1CC8();
  v10 = (*((*v6 & *v0) + 0x1C0))(v9);
  v11 = sub_1A46E2430(v10);
  v12 = (*((*v6 & *v0) + 0x160))(v11);
  v13 = sub_1A46E2434(v12);
  v14 = (*((*v6 & *v0) + 0x418))(v13);
  v15 = sub_1A46E24A8(v14);
  (*((*v6 & *v0) + 0x430))(v15);
  sub_1A46E3EC8();
  v16 = *((*v6 & *v0) + 0x1A8);

  return v16();
}

unint64_t sub_1A3EF0480()
{
  result = qword_1EB125400;
  if (!qword_1EB125400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125400);
  }

  return result;
}

uint64_t sub_1A3EF04D4()
{
  v1 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController____lazy_storage___scrollAnimationTracker;
  if (*(v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController____lazy_storage___scrollAnimationTracker))
  {
    v2 = *(v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController____lazy_storage___scrollAnimationTracker);
  }

  else
  {
    v3 = v0;
    type metadata accessor for PhotosCustomScrollAnimationTracker();
    v2 = sub_1A3C792C0(0xD000000000000019, 0x80000001A53BC9A0, 10.0);
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_1A3EF0560()
{
  v1 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController____lazy_storage___cplStatusProvider;
  v2 = *(v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController____lazy_storage___cplStatusProvider);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController____lazy_storage___cplStatusProvider);
  }

  else
  {
    v4 = [objc_allocWithZone(PXCPLUIStatusProvider) initWithPhotoLibrary:*(*(v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_viewModel) + 16) presentationStyle:2];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1A3EF06C0(char a1)
{
  v2 = v1;
  v40.receiver = v2;
  v40.super_class = type metadata accessor for LemonadeCuratedLibraryView.ContainerViewController();
  objc_msgSendSuper2(&v40, sel_viewIsAppearing_, a1 & 1);
  sub_1A3EF2C30(1);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39[4] = sub_1A3EF68E4;
  v39[5] = v4;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 1107296256;
  v39[2] = sub_1A3C2E0D0;
  v39[3] = &block_descriptor_43;
  v5 = _Block_copy(v39);

  px_perform_after_ca_commit(v5);
  _Block_release(v5);
  v6 = sub_1A46E0BEC();
  v7 = [v6 parentViewController];

  v8 = &qword_1EB12E000;
  v9 = &selRef_setMiddleName_;
  if (v7)
  {

    if (v7 == v2)
    {
      goto LABEL_8;
    }
  }

  v10 = sub_1A46E0BEC();
  [v10 _setIgnoresWrapperViewForContentOverlayInsets_];

  v11 = sub_1A46E0BEC();
  [v2 addChildViewController_];

  v12 = sub_1A46E0BEC();
  v13 = UIViewController.pxView.getter();

  [v13 setAutoresizingMask_];
  [*&v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_clippingView] addSubview_];
  v14 = sub_1A46E0BEC();
  v15 = [v14 secondaryToolbarContainerView];

  if (!v15)
  {
LABEL_6:
    v18 = sub_1A46E0BEC();
    [v18 didMoveToParentViewController_];

    v19 = sub_1A46E0BEC();
    v20 = [v19 contentScrollViewForEdge_];

    v21 = sub_1A46E0BEC();
    v22 = [v21 contentScrollViewForEdge_];

    [v2 setContentScrollView:v20 forEdge:1];
    [v2 setContentScrollView:v22 forEdge:4];
    v23 = sub_1A46E0BEC();
    v24 = UIViewController.pxView.getter();

    [v24 setClipsToBounds_];
    v25 = sub_1A46E0BEC();
    [v25 setUpdateDelegate_];

    v26 = sub_1A46E0BEC();
    v27 = [v26 viewProvider];

    v28 = [v27 gridView];
    v29 = [v28 scrollViewController];

    [v29 setAdjustsContentInsetWhenScrollDisabled_];
    v30 = sub_1A46E0BEC();
    v31 = [v30 viewProvider];

    v32 = [v31 gridView];
    v33 = [v32 scrollViewController];

    [v33 registerObserver_];
    v34 = sub_1A46E0BEC();
    v35 = [v34 viewProvider];

    v36 = [v35 gridView];
    v37 = [v36 rootLayout];

    [v37 setVisibleRectDelegate_];
    sub_1A3EF2134();
    v8 = &qword_1EB12E000;
    result = *&v2[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_updater];
    if (!result)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v9 = &selRef_setMiddleName_;
    [result setNeedsUpdateOf_];

LABEL_8:
    v38 = v8[148];
    result = *&v2[v38];
    if (result)
    {
      [result v9[174]];
      result = *&v2[v38];
      if (result)
      {
        return [result v9[174]];
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

  [v15 _setIgnoresLayerTransformForSafeAreaInsets_];
  result = [v2 view];
  if (result)
  {
    v17 = result;
    [result addSubview_];

    goto LABEL_6;
  }

LABEL_14:
  __break(1u);
  return result;
}

void sub_1A3EF0CB4()
{
  v1 = v0;
  v62.receiver = v0;
  v62.super_class = type metadata accessor for LemonadeCuratedLibraryView.ContainerViewController();
  objc_msgSendSuper2(&v62, sel_viewWillLayoutSubviews);
  v2 = sub_1A46E0BEC();
  v3 = [v2 parentViewController];

  if (!v3 || (sub_1A3C52C70(0, &qword_1EB126B10), v4 = v3, v5 = v1, v6 = sub_1A524DBF4(), v5, v4, v4, (v6 & 1) != 0))
  {
    v7 = *(v1 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_updater);
    if (v7)
    {
      [v7 updateIfNeeded];
      v8 = [v1 view];
      if (v8)
      {
        v9 = v8;
        [v8 bounds];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;

        v63.origin.x = v11;
        v63.origin.y = v13;
        v63.size.width = v15;
        v63.size.height = v17;
        CGRectGetHeight(v63);
        v18 = sub_1A46E0BEC();
        v19 = [v18 viewProvider];

        v20 = [v19 gridView];
        v21 = MEMORY[0x1E69E7D40];
        (*((*MEMORY[0x1E69E7D40] & *v1) + 0x188))();
        (*((*v21 & *v1) + 0x410))();
        *(swift_allocObject() + 16) = 1;
        v22 = *((*v21 & *v1) + 0x1A0);
        if (v22() == 0.0)
        {
          v23 = [v20 scrollViewController];
          [v23 contentInset];
        }

        else
        {
          (v22)(&selRef_resumeChangeDeliveryAndBackgroundLoadingForImportAssetsDataSourceManager_token_);
        }

        v24 = [v1 view];
        if (v24)
        {
          v25 = v24;
          v26 = [v24 window];

          if (!v26)
          {
LABEL_28:
            v48 = sub_1A46E0BEC();
            [v1 additionalSafeAreaInsets];
            [v48 setMinimumContentOverlayInsets_];

            v49 = *(v1 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_curatedLibraryViewModel);
            if (!v49 || ![v49 desiredVerticalAlignment])
            {
              sub_1A3EF6938();
              sub_1A524C524();
            }

            v50 = sub_1A46E0BEC();
            v51 = [v50 secondaryToolbarContainerView];

            if (!v51)
            {
              sub_1A3EF6938();
              sub_1A524C524();
            }

            v52 = [v1 view];
            if (v52)
            {
              v53 = v52;
              [v52 bounds];
              v55 = v54;
              v57 = v56;
              v59 = v58;
              v61 = v60;

              [v51 setBounds_];
              PXRectGetCenter();
            }

            goto LABEL_40;
          }

          [v26 safeAreaInsets];
          v28 = v27;
          v30 = v29;
          v32 = v31;
          v34 = v33;

          v35 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_curatedLibraryViewModel;
          v36 = *(v1 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_curatedLibraryViewModel);
          if (!v36 || [v36 zoomLevel] != 4)
          {
LABEL_23:
            [v1 additionalSafeAreaInsets];
            if (v28 != v47 || v30 != v44 || v32 != v45 || v34 != v46)
            {
              [v1 setAdditionalSafeAreaInsets_];
            }

            goto LABEL_28;
          }

          v37 = *((*v21 & *v1) + 0x1B8);
          v37();
          v39 = *(v1 + v35);
          if (v39)
          {
            v40 = v38.n128_f64[0];
            if ([v39 zoomLevel] == 4)
            {
              if (*(v1 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expanded))
              {
                goto LABEL_20;
              }

              v41 = (v1 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_lastNavigationBarHeight);
              if (*(v1 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_lastNavigationBarHeight + 8))
              {
                if (v40 > 0.0)
                {
                  goto LABEL_20;
                }
              }

              else
              {
                v38.n128_u64[0] = *v41;
                if (*v41 < v40)
                {
                  goto LABEL_20;
                }
              }
            }
          }

          if ((*(v1 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_lastNavigationBarHeight + 8) & 1) == 0)
          {
            v42 = *(v1 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_lastNavigationBarHeight);
            goto LABEL_22;
          }

LABEL_20:
          (v37)(v38);
LABEL_22:
          v43 = (v1 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_lastNavigationBarHeight);
          *v43 = v42;
          *(v43 + 8) = 0;
          v28 = v28 + v42;
          goto LABEL_23;
        }

LABEL_39:
        __break(1u);
        __break(1u);
LABEL_40:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_39;
  }
}

id sub_1A3EF1E58(uint64_t a1, void *a2)
{
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  v4 = v2;
  if (v2 == 1)
  {
    v4 = sub_1A3EF1ED8(a2);
    swift_beginAccess();
    v5 = *v3;
    *v3 = v4;
    v6 = v4;
    sub_1A3C327F4(v5);
  }

  sub_1A3C327E4(v2);
  return v4;
}

id sub_1A3EF1ED8(void *a1)
{
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 view];
  if (result)
  {
    v8 = result;
    v9 = [result px_rootScrollView];

    if (!v9)
    {
      v10 = sub_1A4531AF8();
      (*(v3 + 16))(v6, v10, v2);
      v11 = sub_1A5246F04();
      v12 = sub_1A524D244();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_1A3C1C000, v11, v12, "LemonadeCuratedLibraryView is unable to find shelves ScrollView", v13, 2u);
        MEMORY[0x1A590EEC0](v13, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
      return 0;
    }

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A3EF2134()
{
  v1 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_curatedLibraryViewModel;
  if (!*(v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_curatedLibraryViewModel))
  {
    v2 = v0;
    v3 = sub_1A46E0BEC();
    v4 = [v3 viewProvider];

    v5 = [v4 viewModel];
    v6 = *(v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_librarySummaryPresenter);
    [v5 setLibrarySummaryPresenter_];
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = (v6 + OBJC_IVAR____TtCCV12PhotosUICore26LemonadeCuratedLibraryView23ContainerViewControllerP33_3214E6D65D1AA0606897629850A43E8429LibrarySummaryOutputPresenter_onChange);
    v9 = *(v6 + OBJC_IVAR____TtCCV12PhotosUICore26LemonadeCuratedLibraryView23ContainerViewControllerP33_3214E6D65D1AA0606897629850A43E8429LibrarySummaryOutputPresenter_onChange);
    v10 = v8[1];
    *v8 = sub_1A3EF7654;
    v8[1] = v7;

    sub_1A3C784D4(v9, v10);

    v11 = *(v2 + v1);
    *(v2 + v1) = v5;
    v12 = v5;

    v13 = [v12 zoomablePhotosViewModel];
    v14 = *(v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_zoomableViewModel);
    *(v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_zoomableViewModel) = v13;
    v15 = v13;

    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1A524D1A4();
  }
}

void sub_1A3EF26F8(double a1)
{
  v2 = sub_1A46E0BEC();
  v3 = [v2 viewProvider];

  v4 = [v3 gridView];
  v5 = [v4 scrollViewController];

  v6 = [v5 scrollView];
  v18 = v6;
  swift_unknownObjectRelease();
  if (v18)
  {
    [v18 px:3 contentOffsetForEdge:0.0 padding:{0.0, -a1, 0.0}];
    v8 = v7;
    v10 = v9;
    [v18 contentOffset];
    if (v12 != v8 || v11 != v10)
    {
      v14 = sub_1A46E0BEC();
      v15 = [v14 viewProvider];

      v16 = [v15 gridView];
      v17 = [v16 rootLayout];

      [v17 clearLastVisibleAreaAnchoringInformation];
      [v18 setContentOffset_];
    }
  }
}

void sub_1A3EF28E8(char a1)
{
  v2 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expanded;
  v3 = v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expanded];
  v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expanded] = a1;
  if (v3 == (a1 & 1))
  {
    return;
  }

  v4 = v1;
  v5 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_updater;
  v6 = *&v4[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_updater];
  if (!v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  [v6 setNeedsUpdateOf_];
  v7 = *&v4[v5];
  if (!v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v7 setNeedsUpdateOf_];
  v8 = *&v4[v5];
  if (!v8)
  {
LABEL_14:
    __break(1u);
    return;
  }

  [v8 setNeedsUpdateOf_];
  v9 = sub_1A46E0BEC();
  v10 = [v9 parentViewController];

  if (!v10 || (sub_1A3C52C70(0, &qword_1EB126B10), v11 = v10, v12 = v4, v13 = sub_1A524DBF4(), v12, v11, v11, (v13 & 1) != 0))
  {
    v14 = sub_1A46E0BEC();
    [v14 setIsCollapsed_];
  }

  sub_1A3EF43F4();
}

void sub_1A3EF2A74(char a1)
{
  v2 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_hasAppearedOnce;
  v3 = v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_hasAppearedOnce];
  v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_hasAppearedOnce] = a1;
  if (v3 != (a1 & 1))
  {
    v4 = v1;
    v5 = sub_1A46E0BEC();
    v6 = [v5 parentViewController];

    if (!v6 || (sub_1A3C52C70(0, &qword_1EB126B10), v7 = v6, v8 = v4, v9 = sub_1A524DBF4(), v8, v7, v7, (v9 & 1) != 0))
    {
      v10 = sub_1A46E0BEC();
      v11 = [v10 viewProvider];

      v13 = [v11 gridView];
      if ((v4[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expanded] & 1) != 0 || (v4[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAppearingFirstFrame] & 1) != 0 && sub_1A46DF490() > 0.0 || v4[v2] != 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v4[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAnimatingScrollTowardsEdge];
      }

      [v13 setCanBlockMainThreadIfNeeded_];
    }
  }
}

void sub_1A3EF2C30(char a1)
{
  v2 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAppearingFirstFrame;
  v3 = v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAppearingFirstFrame];
  v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAppearingFirstFrame] = a1;
  if (v3 != (a1 & 1))
  {
    v4 = v1;
    v5 = sub_1A46E0BEC();
    v6 = [v5 parentViewController];

    if (!v6 || (sub_1A3C52C70(0, &qword_1EB126B10), v7 = v6, v8 = v4, v9 = sub_1A524DBF4(), v8, v7, v7, (v9 & 1) != 0))
    {
      v10 = sub_1A46E0BEC();
      v11 = [v10 viewProvider];

      v13 = [v11 gridView];
      if ((v4[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expanded] & 1) != 0 || (v4[v2] & 1) != 0 && sub_1A46DF490() > 0.0 || v4[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_hasAppearedOnce] != 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v4[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAnimatingScrollTowardsEdge];
      }

      [v13 setCanBlockMainThreadIfNeeded_];
    }
  }
}

double sub_1A3EF2DEC()
{
  v1 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expansionPercentage;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A3EF2E3C(uint64_t *a1, double a2)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = *&v2[v4];
  *&v2[v4] = a2;
  if (v5 != a2)
  {
    v6 = [v2 viewIfLoaded];
    [v6 setNeedsLayout];
  }
}

void (*sub_1A3EF2EC0(uint64_t *a1))(id **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expansionPercentage;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1A3EF2F54;
}

void sub_1A3EF2F54(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 3);
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v5 = *&v3[v4];
  *&v3[v4] = v2;
  if (v2 != v5)
  {
    v6 = [v1[4] viewIfLoaded];
    [v6 setNeedsLayout];
  }

  free(v1);
}

double sub_1A3EF2FD0()
{
  v1 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_chromeExpansionPercentage;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1A3EF3014(double a1)
{
  v3 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_chromeExpansionPercentage;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v5 != a1)
  {
    result = *(v1 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_updater);
    if (result)
    {
      return [result setNeedsUpdateOf_];
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void (*sub_1A3EF3098(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_chromeExpansionPercentage;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_1A3EF312C;
}

void sub_1A3EF312C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(v2 + 24);
  v5 = *(v2 + 32);
  v4 = *(v2 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = v3;
  if (a2)
  {
    if (v3 == v6)
    {
      goto LABEL_8;
    }

    v7 = v2;
    v2 = *(*(v2 + 32) + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_updater);
    if (v2)
    {
LABEL_7:
      [v2 setNeedsUpdateOf_];
      v2 = v7;
      goto LABEL_8;
    }

    __break(1u);
  }

  if (v3 != v6)
  {
    v7 = v2;
    v2 = *(*(v2 + 32) + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_updater);
    if (!v2)
    {
      __break(1u);
      return;
    }

    goto LABEL_7;
  }

LABEL_8:

  free(v2);
}

uint64_t sub_1A3EF31D0(uint64_t a1)
{
  v2 = sub_1A524BEE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A524BF64();
  v21 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;

  v11 = sub_1A46E0BEC();
  v12 = [v11 viewProviderIfLoaded];

  if (v12)
  {
    v13 = [v12 gridView];

    if (v13)
    {
      if ([v13 isPerformingUpdate])
      {
        sub_1A3C52C70(0, &qword_1EB12B180);
        v20 = sub_1A524D474();
        v14 = swift_allocObject();
        *(v14 + 16) = sub_1A3EF73B0;
        *(v14 + 24) = v10;
        aBlock[4] = sub_1A3DDBE10;
        aBlock[5] = v14;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1A3C2E0D0;
        aBlock[3] = &block_descriptor_159;
        v19 = _Block_copy(aBlock);

        sub_1A524BF14();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        sub_1A3C29AEC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
        sub_1A3C38394();
        sub_1A3C29AEC(&qword_1EB12B1B0, sub_1A3C38394);
        sub_1A524E224();
        v16 = v19;
        v15 = v20;
        MEMORY[0x1A5908800](0, v8, v5, v19);
        _Block_release(v16);

        (*(v3 + 8))(v5, v2);
        (*(v21 + 8))(v8, v6);
      }
    }
  }

  sub_1A3EF35E4();
}

uint64_t sub_1A3EF35E4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    type metadata accessor for PXCuratedLibraryViewModelChanged(0);
    sub_1A3C29AEC(&qword_1EB126780, type metadata accessor for PXCuratedLibraryViewModelChanged);
    sub_1A524EE54();
  }

  return result;
}

void sub_1A3EF3878(uint64_t a1)
{
  v2 = sub_1A524BEE4();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v3);
  aBlock = a1;
  v5 = 0x2000000;
  type metadata accessor for PXZoomablePhotosViewModelChanged(0);
  sub_1A3C29AEC(&qword_1EB120660, type metadata accessor for PXZoomablePhotosViewModelChanged);
  sub_1A524EE54();
}

void sub_1A3EF3D2C()
{
  v1 = v0;
  v2 = sub_1A46E0BEC();
  v3 = [v2 parentViewController];

  if (!v3 || (sub_1A3C52C70(0, &qword_1EB126B10), v4 = v3, v5 = v1, v6 = sub_1A524DBF4(), v5, v4, v4, (v6 & 1) != 0))
  {
    v7 = sub_1A46E0BEC();
    v8 = [v7 viewProvider];

    v9 = [v8 gridView];
    v10 = [v9 scrollViewController];

    [v10 setIsScrollEnabled_];
  }
}

void sub_1A3EF3F6C()
{
  v1 = v0;
  v2 = sub_1A46E0BEC();
  v3 = [v2 parentViewController];

  if (!v3 || (sub_1A3C52C70(0, &qword_1EB126B10), v4 = v3, v5 = v1, v6 = sub_1A524DBF4(), v5, v4, v4, (v6 & 1) != 0))
  {
    sub_1A3C52C70(0, &qword_1EB126A10);
    v7 = [swift_getObjCClassFromMetadata() sharedInstance];
    v8 = v7;
    if ((v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expanded] & 1) == 0)
    {
      v34 = v7;
      v9 = [v7 resetAllPhotosOnDismiss];
      v8 = v34;
      if (v9)
      {
        v10 = sub_1A46E0BEC();
        v11 = [v10 viewProvider];

        v12 = [v11 gridView];
        v13 = [v12 scrollViewController];

        v14 = sub_1A46E0BEC();
        v15 = [v14 isResetToInitialState];

        if (v15 && (v16 = sub_1A46E0BEC(), v17 = [v16 viewProvider], v16, v18 = objc_msgSend(v17, sel_gridView), v17, objc_msgSend(v18, sel_safeAreaInsets), v20 = v19, v18, (objc_msgSend(v13, sel_isScrolledAtEdge_tolerance_, 3, v20) & 1) != 0))
        {
          if (([v13 isAnimatingScrollTowardsEdge] & 1) == 0 && (objc_msgSend(v13, sel_isScrolledAtEdge_tolerance_, 3, 0.0) & 1) == 0)
          {
            v21 = sub_1A46E0BEC();
            v22 = [v21 viewProvider];

            v23 = [v22 gridView];
            v24 = [v23 scrollViewController];

            [v24 scrollToEdge:3 animated:1];
          }
        }

        else
        {
          [v13 stopScrollingAndZoomingAnimations];
          v25 = sub_1A46E0BEC();
          v26 = [v25 canResetToInitialState];

          if (v26)
          {
            v27 = sub_1A46E0BEC();
            v28 = UIViewController.pxView.getter();

            v29 = [v28 snapshotViewAfterScreenUpdates_];
            if (v29)
            {
              [v28 addSubview_];
            }

            [*&v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_zoomableViewModel] saveCurrentZoomLevelAsUserPreferredIfPossible];
            v30 = sub_1A46E0BEC();
            v31 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v32 = swift_allocObject();
            *(v32 + 16) = v31;
            *(v32 + 24) = v29;

            v33 = v29;
            sub_1A46E5D44(sub_1A3EF7058, v32);
          }
        }

        v8 = v34;
      }
    }
  }
}

void sub_1A3EF43F4()
{
  v1 = v0;
  v2 = sub_1A46E0BEC();
  v3 = [v2 parentViewController];

  if (!v3 || (sub_1A3C52C70(0, &qword_1EB126B10), v4 = v3, v5 = v1, v6 = sub_1A524DBF4(), v5, v4, v4, (v6 & 1) != 0))
  {
    v7 = sub_1A46E0BEC();
    v8 = [v7 viewProvider];

    v10 = [v8 gridView];
    if ((v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expanded] & 1) != 0 || v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAppearingFirstFrame] == 1 && sub_1A46DF490() > 0.0 || v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_hasAppearedOnce] != 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAnimatingScrollTowardsEdge];
    }

    [v10 setCanBlockMainThreadIfNeeded_];
  }
}

void sub_1A3EF4594()
{
  v1 = v0;
  v2 = sub_1A46E0BEC();
  v3 = [v2 parentViewController];

  if (!v3 || (sub_1A3C52C70(0, &qword_1EB126B10), v4 = v3, v5 = v1, v6 = sub_1A524DBF4(), v5, v4, v4, (v6 & 1) != 0))
  {
    v7 = *(v1 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_curatedLibraryViewModel);
    if (v7)
    {
      v8 = *(v1 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expanded);
      v9 = *(v1 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expandedAnimating);
      v10 = v7;
      v11 = sub_1A46E2430(v10);
      if (!sub_1A46E2D80(v11, v12, v13, 3, 0, 4))
      {
        v21 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x428))();
        v16 = xmmword_1A5303A10;
        sub_1A3EF6938();
        sub_1A524C524();
      }

      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      *(v14 + 24) = v8;
      *(v14 + 25) = v9;
      v19 = sub_1A3EF6FE4;
      v20 = v14;
      *&v16 = MEMORY[0x1E69E9820];
      *(&v16 + 1) = 1107296256;
      v17 = sub_1A3D59380;
      v18 = &block_descriptor_119;
      v15 = _Block_copy(&v16);

      [v10 performChanges_];
      _Block_release(v15);
    }
  }
}

void sub_1A3EF481C()
{
  v1 = v0;
  v2 = sub_1A46E0BEC();
  v3 = [v2 parentViewController];

  if (!v3 || (sub_1A3C52C70(0, &qword_1EB126B10), v4 = v3, v5 = v1, v6 = sub_1A524DBF4(), v5, v4, v4, (v6 & 1) != 0))
  {
    v7 = swift_allocObject();
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    v9 = *&v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_curatedLibraryViewModel];
    if (v9 && [v9 zoomLevel] == 4)
    {
      *(v7 + 16) = 0;
      v10 = *&v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_zoomableViewModel];
      if (v10 && ([v10 isDisplayingIndividualItems] & 1) == 0)
      {
        *(v8 + 16) = 1;
      }

      else
      {
        if (v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isScrolledToBottom] != 1)
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        v11 = sub_1A3EF0560();
        v12 = [v11 status];

        if (v12 && (v13 = [v12 stateDescription], v12, v13))
        {
          sub_1A524C674();
        }

        else
        {
          v14 = sub_1A46E0BEC();
          v15 = [v14 viewProvider];

          v16 = [v15 itemCountsController];
          [v16 counts];

          if (v18[0] != 0x7FFFFFFFFFFFFFFFLL && v18[1] != 0x7FFFFFFFFFFFFFFFLL && v18[2] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v17 = PXLocalizedStringForDetailedCountsWithUsage(v18, 3);
            sub_1A524C674();
          }
        }
      }
    }

    else
    {
      *(v7 + 16) = 1;
      sub_1A3CA7CB0();
    }

    sub_1A3CA7B04();
  }
}

CGFloat sub_1A3EF4E4C(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = sub_1A5246F24();
  v33[2] = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v33[1] = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A524BEE4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A524BF64();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v5 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isUpdatingScrollViewForExpansion) & 1) != 0 || (*(v5 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isPerformingScrollAnimation) & 1) != 0 || *(v5 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expandedAnimating) == 1)
  {
    v33[0] = v11;
    v34 = v19;
    objc_opt_self();
    v22 = swift_dynamicCastObjCClassUnconditional();
    v23 = [v22 canHandleVisibleRectRejection];
    [v22 setCanHandleVisibleRectRejection_];
    sub_1A3C52C70(0, &qword_1EB12B180);
    v33[3] = v5;
    v24 = sub_1A524D474();
    v25 = swift_allocObject();
    *(v25 + 16) = v22;
    *(v25 + 24) = v23;
    aBlock[4] = sub_1A3EF6CF0;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_13;
    v26 = _Block_copy(aBlock);
    v27 = a1;

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A3C29AEC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
    sub_1A3C38394();
    sub_1A3C29AEC(&qword_1EB12B1B0, sub_1A3C38394);
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v21, v16, v26);
    _Block_release(v26);

    (*(v14 + 8))(v16, v13);
    (*(v18 + 8))(v21, v34);
    v28 = sub_1A46E0BEC();
    v29 = [v28 viewProvider];

    v30 = [v29 gridView];
    v31 = [v30 scrollViewController];

    [v31 contentBounds];
    CGRectGetHeight(v36);
    [v31 visibleRect];
    CGRectGetMaxY(v37);
    [v22 contentSize];
    v38.origin.x = a2;
    v38.origin.y = a3;
    v38.size.width = a4;
    v38.size.height = a5;
    CGRectGetMaxY(v38);
    sub_1A52416D4();
  }

  return a2;
}

void sub_1A3EF54DC(char a1)
{
  v2 = a1 & 1;
  v3 = sub_1A524BEE4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524BF64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isScrolledToBottom) != v2)
  {
    v22 = v9;
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v13 = sub_1A46E0BEC();
    v14 = [v13 viewProviderIfLoaded];

    if (v14)
    {
      v15 = [v14 gridView];

      if (v15)
      {
        if ([v15 isPerformingUpdate])
        {
          sub_1A3C52C70(0, &qword_1EB12B180);
          v21 = sub_1A524D474();
          v16 = swift_allocObject();
          *(v16 + 16) = sub_1A3EF7654;
          *(v16 + 24) = v12;
          aBlock[4] = sub_1A3DDBE10;
          aBlock[5] = v16;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1A3C2E0D0;
          aBlock[3] = &block_descriptor_167;
          v17 = _Block_copy(aBlock);

          sub_1A524BF14();
          aBlock[0] = MEMORY[0x1E69E7CC0];
          sub_1A3C29AEC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
          sub_1A3C38394();
          sub_1A3C29AEC(&qword_1EB12B1B0, sub_1A3C38394);
          sub_1A524E224();
          v18 = v21;
          MEMORY[0x1A5908800](0, v11, v6, v17);
          _Block_release(v17);

          (*(v4 + 8))(v6, v3);
          (*(v8 + 8))(v11, v22);
LABEL_10:

          return;
        }
      }
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v20 = Strong;
      sub_1A3EF481C();
    }

    goto LABEL_10;
  }
}

void sub_1A3EF58D4(char a1)
{
  v2 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAnimatingScrollTowardsEdge;
  v3 = v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAnimatingScrollTowardsEdge];
  v1[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAnimatingScrollTowardsEdge] = a1;
  if (v3 != (a1 & 1))
  {
    v4 = v1;
    v5 = sub_1A46E0BEC();
    v6 = [v5 parentViewController];

    if (!v6 || (sub_1A3C52C70(0, &qword_1EB126B10), v7 = v6, v8 = v4, v9 = sub_1A524DBF4(), v8, v7, v7, (v9 & 1) != 0))
    {
      v10 = sub_1A46E0BEC();
      v11 = [v10 viewProvider];

      v13 = [v11 gridView];
      if ((v4[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expanded] & 1) != 0 || (v4[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAppearingFirstFrame] & 1) != 0 && sub_1A46DF490() > 0.0 || v4[OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_hasAppearedOnce] != 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v4[v2];
      }

      [v13 setCanBlockMainThreadIfNeeded_];
    }
  }
}

void sub_1A3EF5A90(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isPerformingScrollAnimation;
  if (*(v1 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isPerformingScrollAnimation) == 1 && ([a1 isAnimatingScroll] & 1) == 0)
  {
    v4 = *(v1 + v3);
    *(v1 + v3) = 0;
    if (v4 == 1)
    {
      v5 = sub_1A3EF04D4();
      (*(*v5 + 184))(*(v1 + v3));
    }
  }

  v6 = sub_1A46E0BEC();
  v7 = [v6 viewProvider];

  v8 = [v7 gridView];
  v9 = [v8 scrollViewController];

  LOBYTE(v8) = [v9 isScrolledAtEdge:3 tolerance:2.0];
  v10 = *(v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isScrolledToBottom);
  *(v2 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isScrolledToBottom) = v8;

  sub_1A3EF54DC(v10);
}

void sub_1A3EF5C44(void *a1)
{
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    [v3 setNeedsLayout];

    [a1 contentInset];
    sub_1A46E42D0(v5);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A3EF5DCC()
{
  v1 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isPerformingScrollAnimation;
  v2 = *(v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isPerformingScrollAnimation);
  *(v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isPerformingScrollAnimation) = 0;
  if (v2 == 1)
  {
    v3 = sub_1A3EF04D4();
    (*(*v3 + 184))(*(v0 + v1));
  }

  sub_1A3EF58D4(0);
}

void sub_1A3EF5F10()
{
  v1 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isPerformingScrollAnimation;
  v2 = *(v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isPerformingScrollAnimation);
  *(v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isPerformingScrollAnimation) = 0;
  if (v2 == 1)
  {
    v3 = sub_1A3EF04D4();
    (*(*v3 + 184))(*(v0 + v1));
  }
}

uint64_t sub_1A3EF6150(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtCCV12PhotosUICore26LemonadeCuratedLibraryView23ContainerViewControllerP33_3214E6D65D1AA0606897629850A43E8429LibrarySummaryOutputPresenter_title);
  result = *(v2 + OBJC_IVAR____TtCCV12PhotosUICore26LemonadeCuratedLibraryView23ContainerViewControllerP33_3214E6D65D1AA0606897629850A43E8429LibrarySummaryOutputPresenter_title);
  v6 = *(v2 + OBJC_IVAR____TtCCV12PhotosUICore26LemonadeCuratedLibraryView23ContainerViewControllerP33_3214E6D65D1AA0606897629850A43E8429LibrarySummaryOutputPresenter_title + 8);
  *v4 = a1;
  v4[1] = a2;
  if (v6)
  {
    if (a2)
    {
      v7 = result == a1 && v6 == a2;
      if (v7 || (sub_1A524EAB4() & 1) != 0)
      {
        goto LABEL_14;
      }
    }
  }

  else if (!a2)
  {
    return result;
  }

  v8 = *(v2 + OBJC_IVAR____TtCCV12PhotosUICore26LemonadeCuratedLibraryView23ContainerViewControllerP33_3214E6D65D1AA0606897629850A43E8429LibrarySummaryOutputPresenter_onChange);
  if (!v8)
  {
LABEL_14:
  }

  v9 = *(v2 + OBJC_IVAR____TtCCV12PhotosUICore26LemonadeCuratedLibraryView23ContainerViewControllerP33_3214E6D65D1AA0606897629850A43E8429LibrarySummaryOutputPresenter_onChange + 8);

  v8(v10);

  return sub_1A3C784D4(v8, v9);
}

id sub_1A3EF634C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1A3EF6570(void *a1)
{
  v1 = [a1 topViewController];
  if (v1)
  {
    type metadata accessor for LemonadeCuratedLibraryView.ContainerViewController();
    swift_dynamicCastClassUnconditional();
    sub_1A3EF01D0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A3EF65F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3EF73B8();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A3EF6654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3EF73B8();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A3EF66B8()
{
  sub_1A3EF73B8();
  sub_1A5249ED4();
  __break(1u);
}

void sub_1A3EF6704()
{
  *(v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_updater) = 0;
  v1 = (v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_searchObservation);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_curatedLibraryViewModel) = 0;
  v2 = (v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_curatedLibraryViewModelObservation);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_zoomableViewModelObservation);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_assetCountsObservation);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_zoomableViewModel) = 0;
  v5 = (v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_zoomableObservation);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_miniModeAnimator) = 0;
  v6 = (v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_miniModeAnimatorObservation);
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_librarySummaryPresenter;
  *(v0 + v7) = [objc_allocWithZone(type metadata accessor for LemonadeCuratedLibraryView.ContainerViewController.LibrarySummaryOutputPresenter()) init];
  v8 = v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_lastNavigationBarHeight;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = (v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_cplStatusObservation);
  *v9 = 0;
  v9[1] = 0;
  *(v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController____lazy_storage___scrollAnimationTracker) = 0;
  *(v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController____lazy_storage___cplStatusProvider) = 0;
  v10 = v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_previousExpansionState;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = -1;
  *(v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isPerformingScrollAnimation) = 0;
  *(v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expanded) = 0;
  *(v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expandedAnimating) = 0;
  *(v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_hasAppearedOnce) = 0;
  *(v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAppearingFirstFrame) = 0;
  *(v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isUpdatingScrollViewForExpansion) = 0;
  *(v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_expansionPercentage) = 0;
  *(v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_chromeExpansionPercentage) = 0;
  *(v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isScrolledToBottom) = 0;
  *(v0 + OBJC_IVAR___LemonadeCuratedLibraryView_ContainerViewController_isAnimatingScrollTowardsEdge) = 0;
  sub_1A524E6E4();
  __break(1u);
}

void sub_1A3EF68E4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A3EF2C30(0);
  }
}

unint64_t sub_1A3EF6938()
{
  result = qword_1EB125FF0;
  if (!qword_1EB125FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125FF0);
  }

  return result;
}