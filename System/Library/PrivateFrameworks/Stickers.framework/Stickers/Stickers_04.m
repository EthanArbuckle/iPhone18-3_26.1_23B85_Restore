char *Sticker.__allocating_init(type:identifier:representations:name:effect:byteCount:metadata:externalURI:accessibilityName:attributionInfo:searchText:creationDate:lastUsedDate:libraryIndex:sanitizedPrompt:rewrittenPrompt:promptPrimaryLanguageIdentifier:prefersAnimation:)(unsigned __int8 *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, void *a12, unint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unint64_t a28, char a29)
{
  v133 = a5;
  v134 = a6;
  v132 = a4;
  v137 = a3;
  v143 = a1;
  v130 = a15;
  v129 = a14;
  v135 = a13;
  v136 = a12;
  v142 = a11;
  v141 = a10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92220, &unk_1B8A281A0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v122 - v34;
  v36 = sub_1B8A23904();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v122 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = v29;
  v41 = objc_allocWithZone(v29);
  v42 = &v41[OBJC_IVAR___STKSticker_accessibilityName];
  *v42 = 0;
  *(v42 + 1) = 0;
  v43 = &v41[OBJC_IVAR___STKSticker_searchText];
  *v43 = 0;
  *(v43 + 1) = 0;
  v125 = v43;
  v44 = &v41[OBJC_IVAR___STKSticker_sanitizedPrompt];
  *v44 = 0;
  *(v44 + 1) = 0;
  v126 = v44;
  v45 = &v41[OBJC_IVAR___STKSticker_rewrittenPrompt];
  *v45 = 0;
  *(v45 + 1) = 0;
  v127 = v45;
  v46 = &v41[OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier];
  *v46 = 0;
  *(v46 + 1) = 0;
  v128 = v46;
  v47 = &v41[OBJC_IVAR___STKSticker_metadata];
  *&v41[OBJC_IVAR___STKSticker_metadata] = xmmword_1B8A26F80;
  v48 = &v41[OBJC_IVAR___STKSticker_externalURI];
  *v48 = 0;
  v48[1] = 0;
  v131 = OBJC_IVAR___STKSticker_attributionInfo;
  *&v41[OBJC_IVAR___STKSticker_attributionInfo] = 0;
  LODWORD(v140) = *v143;
  (*(v37 + 56))(&v41[OBJC_IVAR___STKSticker__companionRecentUUID], 1, 1, v36);
  v143 = v41;
  v122 = OBJC_IVAR___STKSticker_animatedVariantIsPreferred;
  v41[OBJC_IVAR___STKSticker_animatedVariantIsPreferred] = 2;
  v124 = a2;
  sub_1B89AF268(a2, v35, &unk_1EBA92220, &unk_1B8A281A0);
  v49 = *(v37 + 48);
  if (v49(v35, 1, v36) == 1)
  {
    sub_1B8A238F4();
    v50 = v49(v35, 1, v36);
    v51 = v36;
    v52 = v37;
    if (v50 != 1)
    {
      sub_1B89A8A78(v35, &unk_1EBA92220, &unk_1B8A281A0);
      v51 = v36;
      v52 = v37;
    }
  }

  else
  {
    (*(v37 + 32))(v40, v35, v36);
    v51 = v36;
    v52 = v37;
  }

  v53 = v143;
  v143[OBJC_IVAR___STKSticker_type] = v140;
  v138 = v52;
  v139 = v51;
  v54 = *(v52 + 16);
  v140 = v40;
  v54(&v53[OBJC_IVAR___STKSticker_identifier], v40);
  v55 = v137;
  *&v53[OBJC_IVAR___STKSticker_representations] = v137;
  swift_beginAccess();
  v56 = *(v42 + 1);
  v57 = v130;
  *v42 = v129;
  *(v42 + 1) = v57;

  v58 = &v53[OBJC_IVAR___STKSticker_name];
  v59 = v133;
  *v58 = v132;
  *(v58 + 1) = v59;
  *&v53[OBJC_IVAR___STKSticker_effect] = v134;
  swift_beginAccess();
  v60 = *v47;
  v61 = v47[1];
  v62 = v141;
  v63 = v142;
  *v47 = v141;
  v47[1] = v63;
  sub_1B89C3C44(v62, v63);
  sub_1B89B4A04(v60, v61);
  v65 = v135;
  v64 = v136;
  if (!v135)
  {
    v66 = sub_1B8A238A4();
    v146 = 0xD00000000000001BLL;
    v147 = 0x80000001B8A2A9A0;
    MEMORY[0x1B8CC3E20](v66);

    v64 = v146;
    v65 = v147;
  }

  swift_beginAccess();
  v67 = v48[1];
  *v48 = v64;
  v48[1] = v65;

  v68 = v131;
  swift_beginAccess();
  v69 = *&v53[v68];
  *&v53[v68] = a16;
  v70 = a16;

  v71 = (v55 >> 62);
  if (v55 >> 62)
  {
    goto LABEL_62;
  }

  for (i = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
  {
    v73 = MEMORY[0x1E69E7CC0];
    v136 = v70;
    if (i)
    {
      v145 = MEMORY[0x1E69E7CC0];
      result = sub_1B8A0394C(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v75 = v71;
      v73 = v145;
      if ((v55 & 0xC000000000000001) != 0)
      {
        for (j = 0; j != i; ++j)
        {
          v77 = MEMORY[0x1B8CC44E0](j, v55);
          v78 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v79 = *(v77 + v78);
          swift_unknownObjectRelease();
          v145 = v73;
          v81 = v73[2];
          v80 = v73[3];
          if (v81 >= v80 >> 1)
          {
            sub_1B8A0394C((v80 > 1), v81 + 1, 1);
            v73 = v145;
          }

          v73[2] = v81 + 1;
          v73[v81 + 4] = v79;
        }
      }

      else
      {
        v82 = (v55 + 32);
        do
        {
          v83 = *v82;
          v84 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v85 = *(v83 + v84);
          v145 = v73;
          v87 = v73[2];
          v86 = v73[3];
          if (v87 >= v86 >> 1)
          {
            sub_1B8A0394C((v86 > 1), v87 + 1, 1);
            v73 = v145;
          }

          v73[2] = v87 + 1;
          v73[v87 + 4] = v85;
          ++v82;
          --i;
        }

        while (i);
      }

      v71 = v75;
    }

    v88 = v73[2];
    if (!v88)
    {
      break;
    }

    v70 = 0;
    v89 = v73 + 4;
    while (1)
    {
      v90 = *v89++;
      v91 = __OFADD__(v70, v90);
      v70 += v90;
      if (v91)
      {
        break;
      }

      if (!--v88)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

  v70 = 0;
LABEL_28:

  v92 = v143;
  *&v143[OBJC_IVAR___STKSticker_byteCount] = v70;
  if (a20)
  {
    v93 = [objc_opt_self() currentEnvironment];
    v94 = [v93 timeProvider];

    [v94 timestamp];
    v96 = v95;
    v97 = v143;
    swift_unknownObjectRelease();
  }

  else
  {
    v97 = v92;
    v96 = a19;
  }

  v98 = a29;
  v135 = a28;
  v134 = a27;
  v133 = a26;
  v132 = a25;
  v131 = a24;
  *&v97[OBJC_IVAR___STKSticker_creationDate] = v96;
  if (a22)
  {
    v99 = [objc_opt_self() currentEnvironment];
    v100 = [v99 timeProvider];

    [v100 timestamp];
    v102 = v101;
    v97 = v143;
    swift_unknownObjectRelease();
  }

  else
  {
    v102 = a21;
  }

  v103 = v128;
  *&v97[OBJC_IVAR___STKSticker_lastUsedDate] = v102;
  *&v97[OBJC_IVAR___STKSticker_libraryIndex] = a7;
  v104 = v125;
  swift_beginAccess();
  v105 = *(v104 + 1);
  *v104 = a17;
  *(v104 + 1) = a18;

  v106 = v126;
  swift_beginAccess();
  v107 = *(v106 + 1);
  v108 = v131;
  *v106 = a23;
  *(v106 + 1) = v108;

  v109 = v127;
  swift_beginAccess();
  v110 = *(v109 + 1);
  v111 = v133;
  *v109 = v132;
  *(v109 + 1) = v111;

  swift_beginAccess();
  v112 = *(v103 + 1);
  v113 = v135;
  *v103 = v134;
  *(v103 + 1) = v113;

  if (a29 == 2)
  {
    if (v71)
    {
      v114 = sub_1B8A24554();
    }

    else
    {
      v114 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v114)
    {
      v70 = 0;
      while (1)
      {
        if ((v55 & 0xC000000000000001) != 0)
        {
          v116 = MEMORY[0x1B8CC44E0](v70, v55);
        }

        else
        {
          if (v70 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_61;
          }

          v116 = *(v55 + 8 * v70 + 32);
        }

        v117 = v116;
        v71 = (v70 + 1);
        if (__OFADD__(v70, 1))
        {
          goto LABEL_60;
        }

        v118 = &v116[OBJC_IVAR___STKStickerRepresentation_role];
        swift_beginAccess();
        v119 = *v118 == 0xD000000000000020 && 0x80000001B8A2A290 == *(v118 + 1);
        if (v119 || (sub_1B8A24954() & 1) != 0)
        {
          v115 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
          swift_beginAccess();
          LODWORD(v115) = v117[v115];

          if (v115 == 1)
          {
            (*(v138 + 8))(v140, v139);

            v98 = 1;
            goto LABEL_57;
          }
        }

        else
        {
        }

        ++v70;
        if (v71 == v114)
        {

          (*(v138 + 8))(v140, v139);
          v98 = 0;
LABEL_57:
          v97 = v143;
          goto LABEL_58;
        }
      }
    }

    (*(v138 + 8))(v140, v139);

    v98 = 2;
  }

  else
  {
    (*(v138 + 8))(v140, v139);
  }

LABEL_58:
  v120 = v123;
  v97[v122] = v98;
  v144.receiver = v97;
  v144.super_class = v120;
  v121 = objc_msgSendSuper2(&v144, sel_init);

  sub_1B89B4A04(v141, v142);
  sub_1B89A8A78(v124, &unk_1EBA92220, &unk_1B8A281A0);
  return v121;
}

char *Sticker.__allocating_init(type:representations:name:metadata:externalURI:accessibilityName:attributionInfo:searchText:sanitizedPrompt:rewrittenPrompt:promptPrimaryLanguageIdentifier:)(unsigned __int8 *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19)
{
  v112 = a8;
  v111 = a7;
  v116 = a5;
  v109 = a4;
  v108 = a3;
  v98 = sub_1B8A23934();
  v97 = *(v98 - 8);
  v22 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v96 = &v94[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_1B8A23904();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v94[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = *a1;
  v113 = type metadata accessor for Sticker(0);
  v30 = objc_allocWithZone(v113);
  v31 = &v30[OBJC_IVAR___STKSticker_accessibilityName];
  *v31 = 0;
  v31[1] = 0;
  v110 = v31;
  v32 = &v30[OBJC_IVAR___STKSticker_searchText];
  *v32 = 0;
  v32[1] = 0;
  v33 = &v30[OBJC_IVAR___STKSticker_sanitizedPrompt];
  *v33 = 0;
  v33[1] = 0;
  v34 = &v30[OBJC_IVAR___STKSticker_rewrittenPrompt];
  *v34 = 0;
  v34[1] = 0;
  v35 = &v30[OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier];
  *v35 = 0;
  v35[1] = 0;
  v36 = &v30[OBJC_IVAR___STKSticker_metadata];
  *&v30[OBJC_IVAR___STKSticker_metadata] = xmmword_1B8A26F80;
  v37 = &v30[OBJC_IVAR___STKSticker_externalURI];
  *v37 = 0;
  v37[1] = 0;
  v106 = v37;
  v107 = OBJC_IVAR___STKSticker_attributionInfo;
  *&v30[OBJC_IVAR___STKSticker_attributionInfo] = 0;
  (*(v25 + 56))(&v30[OBJC_IVAR___STKSticker__companionRecentUUID], 1, 1, v24);
  v30[OBJC_IVAR___STKSticker_animatedVariantIsPreferred] = 2;
  sub_1B8A238F4();
  v95 = v29;
  v30[OBJC_IVAR___STKSticker_type] = v29;
  v115 = v25;
  (*(v25 + 16))(&v30[OBJC_IVAR___STKSticker_identifier], v28, v24);
  *&v30[OBJC_IVAR___STKSticker_representations] = a2;
  if (a2 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
  {
    v114 = v28;
    v39 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v119 = MEMORY[0x1E69E7CC0];

      result = sub_1B8A0394C(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v104 = v24;
      v105 = a6;
      v39 = v119;
      if ((a2 & 0xC000000000000001) != 0)
      {
        for (j = 0; j != i; ++j)
        {
          v42 = MEMORY[0x1B8CC44E0](j, a2);
          v43 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v44 = *(v42 + v43);
          swift_unknownObjectRelease();
          v119 = v39;
          v28 = v39[2];
          v45 = v39[3];
          if (v28 >= v45 >> 1)
          {
            sub_1B8A0394C((v45 > 1), v28 + 1, 1);
            v39 = v119;
          }

          v39[2] = v28 + 1;
          v39[v28 + 4] = v44;
        }
      }

      else
      {
        v46 = 32;
        do
        {
          v47 = *(a2 + v46);
          v48 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v49 = *(v47 + v48);
          v119 = v39;
          v28 = v39[2];
          v50 = v39[3];
          if (v28 >= v50 >> 1)
          {
            sub_1B8A0394C((v50 > 1), v28 + 1, 1);
            v39 = v119;
          }

          v39[2] = v28 + 1;
          v39[v28 + 4] = v49;
          v46 += 8;
          --i;
        }

        while (i);
      }

      a6 = v105;
      v24 = v104;
    }

    v51 = v39[2];
    if (!v51)
    {
      break;
    }

    v52 = 0;
    v53 = v39 + 4;
    while (1)
    {
      v54 = *v53++;
      v55 = __OFADD__(v52, v54);
      v52 += v54;
      if (v55)
      {
        break;
      }

      if (!--v51)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_29:
    ;
  }

  v52 = 0;
LABEL_22:
  v105 = a19;
  v104 = a17;
  v103 = a16;
  v102 = a15;
  v101 = a14;
  v100 = a13;
  v99 = a12;

  *&v30[OBJC_IVAR___STKSticker_byteCount] = v52;
  v56 = &v30[OBJC_IVAR___STKSticker_name];
  v57 = v109;
  *v56 = v108;
  v56[1] = v57;
  *&v30[OBJC_IVAR___STKSticker_effect] = 0;
  swift_beginAccess();
  v58 = *v36;
  v59 = v36[1];
  v60 = v116;
  *v36 = v116;
  v36[1] = a6;
  sub_1B89C3C44(v60, a6);
  sub_1B89B4A04(v58, v59);
  v61 = v114;
  v62 = v112;
  v63 = v111;
  if (!v112)
  {
    v118[0] = v95;
    v63 = sub_1B8A04AC4(v118);
    v62 = v64;
  }

  v65 = v106;
  swift_beginAccess();
  v66 = v65[1];
  *v65 = v63;
  v65[1] = v62;

  v67 = v110;
  swift_beginAccess();
  v68 = v67[1];
  *v67 = a9;
  v67[1] = a10;

  v69 = v107;
  swift_beginAccess();
  v70 = *&v30[v69];
  *&v30[v69] = a11;
  v71 = a11;

  v72 = [objc_opt_self() currentEnvironment];
  v73 = [v72 timeProvider];

  [v73 timestamp];
  v75 = v74;
  swift_unknownObjectRelease();
  *&v30[OBJC_IVAR___STKSticker_creationDate] = v75;
  *&v30[OBJC_IVAR___STKSticker_lastUsedDate] = v75;
  *&v30[OBJC_IVAR___STKSticker_libraryIndex] = 0;
  v117.receiver = v30;
  v117.super_class = v113;
  v76 = objc_msgSendSuper2(&v117, sel_init);
  sub_1B89FE9A8();
  (*(v115 + 8))(v61, v24);
  v77 = &v76[OBJC_IVAR___STKSticker_searchText];
  swift_beginAccess();
  v78 = *(v77 + 1);
  v79 = v100;
  *v77 = v99;
  *(v77 + 1) = v79;
  v80 = v76;

  v81 = &v80[OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier];
  swift_beginAccess();
  v82 = v81[1];
  *v81 = 0;
  v81[1] = 0;

  v83 = &v80[OBJC_IVAR___STKSticker_sanitizedPrompt];
  swift_beginAccess();
  v84 = *(v83 + 1);
  v85 = v102;
  *v83 = v101;
  *(v83 + 1) = v85;

  v86 = &v80[OBJC_IVAR___STKSticker_rewrittenPrompt];
  swift_beginAccess();
  v87 = *(v86 + 1);
  v88 = v104;
  *v86 = v103;
  *(v86 + 1) = v88;

  v89 = v105;
  if (v105)
  {

    sub_1B89B4A04(v116, a6);
  }

  else
  {
    v91 = v96;
    sub_1B8A23924();
    a18 = sub_1B8A23914();
    v89 = v92;

    sub_1B89B4A04(v116, a6);
    (*(v97 + 8))(v91, v98);
  }

  v93 = v81[1];
  *v81 = a18;
  v81[1] = v89;

  return v80;
}

Stickers::Sticker::StickerType_optional __swiftcall Sticker.StickerType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1B89F931C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1B8CC44E0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1B8A24554();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1B89F944C()
{
  v0 = sub_1B8A23BC4();
  __swift_allocate_value_buffer(v0, qword_1EBA911F0);
  __swift_project_value_buffer(v0, qword_1EBA911F0);
  return sub_1B8A23BB4();
}

id sub_1B89F94E0(uint64_t a1)
{
  v2 = sub_1B8A23904();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1 + OBJC_IVAR___STKSticker_identifier, v2);
  v7 = sub_1B8A238B4();
  (*(v3 + 8))(v6, v2);

  return v7;
}

uint64_t _s8Stickers7StickerC10identifier10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___STKSticker_identifier;
  v4 = sub_1B8A23904();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1B89F96DC()
{
  v1 = OBJC_IVAR___STKSticker_representations;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1B89F9794(uint64_t a1)
{
  v3 = OBJC_IVAR___STKSticker_representations;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  sub_1B89FE9A8();
  v5 = *(v1 + v3);
  if (v5 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
  {

    if (!i)
    {
      break;
    }

    v14 = v1;
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1B8CC44E0](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      v1 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = &v9[OBJC_IVAR___STKStickerRepresentation_role];
      swift_beginAccess();
      v12 = *v11 == 0xD000000000000020 && 0x80000001B8A2A290 == *(v11 + 1);
      if (v12 || (sub_1B8A24954() & 1) != 0)
      {
        v8 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
        swift_beginAccess();
        LOBYTE(v8) = v10[v8];

        if (v8)
        {
          LOBYTE(i) = 1;
          goto LABEL_20;
        }
      }

      else
      {
      }

      ++v7;
      if (v1 == i)
      {
        LOBYTE(i) = 0;
LABEL_20:
        v1 = v14;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

LABEL_21:

  *(v1 + OBJC_IVAR___STKSticker_animatedVariantIsPreferred) = i;
  return result;
}

void (*sub_1B89F995C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___STKSticker_representations;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  swift_beginAccess();
  return sub_1B89F99E4;
}

void sub_1B89F99E4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[6];
    v5 = v3[7];
    sub_1B89FE9A8();
    v6 = *(v4 + v5);
    if (v6 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
    {

      if (!i)
      {
        break;
      }

      v8 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1B8CC44E0](v8, v6);
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v10 = *(v6 + 8 * v8 + 32);
        }

        v11 = v10;
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v13 = &v10[OBJC_IVAR___STKStickerRepresentation_role];
        swift_beginAccess();
        v14 = *v13 == 0xD000000000000020 && 0x80000001B8A2A290 == *(v13 + 1);
        if (v14 || (sub_1B8A24954() & 1) != 0)
        {
          v9 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
          swift_beginAccess();
          LOBYTE(v9) = v11[v9];

          if (v9)
          {
            LOBYTE(i) = 1;
            goto LABEL_21;
          }
        }

        else
        {
        }

        ++v8;
        if (v12 == i)
        {
          LOBYTE(i) = 0;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

LABEL_21:
    v15 = v3[6];

    *(v15 + OBJC_IVAR___STKSticker_animatedVariantIsPreferred) = i;
  }

  free(v3);
}

uint64_t sub_1B89F9C78()
{
  v1 = OBJC_IVAR___STKSticker_byteCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B89F9D8C()
{
  v1 = (v0 + OBJC_IVAR___STKSticker_name);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_1B89F9E50(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___STKSticker_name);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1B89F9EB0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___STKSticker_name);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

BOOL sub_1B89FA22C()
{
  v1 = (v0 + OBJC_IVAR___STKSticker_searchText);
  swift_beginAccess();
  v2 = v1[1];
  if (!v2)
  {
    return 0;
  }

  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  return v3 != 0;
}

uint64_t sub_1B89FA2E4()
{
  v1 = OBJC_IVAR___STKSticker_effect;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B89FA37C(uint64_t a1)
{
  v3 = OBJC_IVAR___STKSticker_effect;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B89FA4CC()
{
  v1 = v0 + OBJC_IVAR___STKSticker_metadata;
  swift_beginAccess();
  v2 = *v1;
  sub_1B89C3C44(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_1B89FA5BC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___STKSticker_metadata);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1B89B4A04(v6, v7);
}

uint64_t sub_1B89FA61C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___STKSticker_metadata);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return sub_1B89C3C44(v4, v5);
}

uint64_t sub_1B89FA674(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR___STKSticker_metadata);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_1B89C3C44(v2, v3);
  return sub_1B89B4A04(v5, v6);
}

id sub_1B89FA75C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  if (v3[1])
  {
    v4 = *v3;

    v5 = sub_1B8A23EF4();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1B89FA7F0(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_1B89FA850(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1B8A23F24();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_1B89FA8D8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_1B89FA934(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v6;
  v7[1] = v5;
}

void *sub_1B89FAA48()
{
  v1 = OBJC_IVAR___STKSticker_attributionInfo;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1B89FAAF4(uint64_t a1)
{
  v3 = OBJC_IVAR___STKSticker_attributionInfo;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1B89FAB4C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___STKSticker_attributionInfo;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

double sub_1B89FAC54()
{
  v1 = OBJC_IVAR___STKSticker_creationDate;
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_1B89FAD34()
{
  v1 = OBJC_IVAR___STKSticker_lastUsedDate;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B89FADCC(double a1)
{
  v3 = OBJC_IVAR___STKSticker_lastUsedDate;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1B89FAEC4()
{
  v1 = OBJC_IVAR___STKSticker_libraryIndex;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B89FB0B0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___STKSticker__companionRecentUUID;
  swift_beginAccess();
  return sub_1B89AF268(v1 + v3, a1, &unk_1EBA92220, &unk_1B8A281A0);
}

uint64_t sub_1B89FB258(uint64_t a1)
{
  v3 = OBJC_IVAR___STKSticker__companionRecentUUID;
  swift_beginAccess();
  sub_1B89DD9E4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1B89FB2B8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92220, &unk_1B8A281A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1B89AF268(a1, &v11 - v6, &unk_1EBA92220, &unk_1B8A281A0);
  v8 = *a2;
  v9 = OBJC_IVAR___STKSticker__companionRecentUUID;
  swift_beginAccess();
  sub_1B89DD9E4(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t sub_1B89FB424()
{
  v1 = OBJC_IVAR___STKSticker_effect;
  swift_beginAccess();
  if (*(v0 + v1) <= 0)
  {
    v2 = *(v0 + OBJC_IVAR___STKSticker_animatedVariantIsPreferred);
    if (v2 != 2)
    {
      return v2 & 1;
    }

    v4 = OBJC_IVAR___STKSticker_representations;
    swift_beginAccess();
    v5 = *(v0 + v4);
    if (v5 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
    {

      if (!i)
      {
        break;
      }

      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1B8CC44E0](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v9 = *(v5 + 8 * v7 + 32);
        }

        v10 = v9;
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v12 = &v9[OBJC_IVAR___STKStickerRepresentation_role];
        swift_beginAccess();
        v13 = *v12 == 0xD000000000000020 && 0x80000001B8A2A290 == *(v12 + 1);
        if (v13 || (sub_1B8A24954() & 1) != 0)
        {
          v8 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
          swift_beginAccess();
          LOBYTE(v8) = v10[v8];

          if (v8)
          {

            LOBYTE(v2) = 1;
            return v2 & 1;
          }
        }

        else
        {
        }

        ++v7;
        if (v11 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

LABEL_22:
  }

  LOBYTE(v2) = 0;
  return v2 & 1;
}

char *Sticker.__allocating_init(type:representations:name:metadata:externalURI:accessibilityName:attributionInfo:)(unsigned __int8 *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v12 = v11;
  v79 = a8;
  v78 = a7;
  v75 = a4;
  v74 = a3;
  v17 = sub_1B8A23904();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v12;
  v22 = objc_allocWithZone(v12);
  v23 = &v22[OBJC_IVAR___STKSticker_accessibilityName];
  *v23 = 0;
  v23[1] = 0;
  v77 = v23;
  v24 = &v22[OBJC_IVAR___STKSticker_searchText];
  *v24 = 0;
  v24[1] = 0;
  v25 = &v22[OBJC_IVAR___STKSticker_sanitizedPrompt];
  *v25 = 0;
  v25[1] = 0;
  v26 = &v22[OBJC_IVAR___STKSticker_rewrittenPrompt];
  *v26 = 0;
  v26[1] = 0;
  v27 = &v22[OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier];
  *v27 = 0;
  v27[1] = 0;
  v28 = &v22[OBJC_IVAR___STKSticker_metadata];
  *&v22[OBJC_IVAR___STKSticker_metadata] = xmmword_1B8A26F80;
  v29 = &v22[OBJC_IVAR___STKSticker_externalURI];
  *v29 = 0;
  v29[1] = 0;
  v73 = v29;
  v76 = OBJC_IVAR___STKSticker_attributionInfo;
  *&v22[OBJC_IVAR___STKSticker_attributionInfo] = 0;
  LODWORD(a1) = *a1;
  (*(v18 + 56))(&v22[OBJC_IVAR___STKSticker__companionRecentUUID], 1, 1, v17);
  v22[OBJC_IVAR___STKSticker_animatedVariantIsPreferred] = 2;
  sub_1B8A238F4();
  v72 = a1;
  v22[OBJC_IVAR___STKSticker_type] = a1;
  v82 = v18;
  v30 = *(v18 + 16);
  v80 = v21;
  v30(&v22[OBJC_IVAR___STKSticker_identifier], v21, v17);
  *&v22[OBJC_IVAR___STKSticker_representations] = a2;
  if (a2 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
  {
    v32 = MEMORY[0x1E69E7CC0];
    v83 = a6;
    if (i)
    {
      v86 = MEMORY[0x1E69E7CC0];

      result = sub_1B8A0394C(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v70 = v17;
      v71 = a5;
      v32 = v86;
      if ((a2 & 0xC000000000000001) != 0)
      {
        for (j = 0; j != i; ++j)
        {
          v35 = MEMORY[0x1B8CC44E0](j, a2);
          v36 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v37 = *(v35 + v36);
          swift_unknownObjectRelease();
          v86 = v32;
          v39 = v32[2];
          v38 = v32[3];
          if (v39 >= v38 >> 1)
          {
            sub_1B8A0394C((v38 > 1), v39 + 1, 1);
            v32 = v86;
          }

          v32[2] = v39 + 1;
          v32[v39 + 4] = v37;
        }
      }

      else
      {
        v40 = 32;
        do
        {
          v41 = *(a2 + v40);
          v42 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v43 = *(v41 + v42);
          v86 = v32;
          v45 = v32[2];
          v44 = v32[3];
          if (v45 >= v44 >> 1)
          {
            sub_1B8A0394C((v44 > 1), v45 + 1, 1);
            v32 = v86;
          }

          v32[2] = v45 + 1;
          v32[v45 + 4] = v43;
          v40 += 8;
          --i;
        }

        while (i);
      }

      a6 = v83;
      a5 = v71;
      v17 = v70;
    }

    v46 = v32[2];
    if (!v46)
    {
      break;
    }

    a2 = 0;
    v47 = v32 + 4;
    while (1)
    {
      v48 = *v47++;
      v49 = __OFADD__(a2, v48);
      a2 += v48;
      if (v49)
      {
        break;
      }

      if (!--v46)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    ;
  }

  a2 = 0;
LABEL_22:

  *&v22[OBJC_IVAR___STKSticker_byteCount] = a2;
  v50 = &v22[OBJC_IVAR___STKSticker_name];
  v51 = v75;
  *v50 = v74;
  v50[1] = v51;
  *&v22[OBJC_IVAR___STKSticker_effect] = 0;
  swift_beginAccess();
  v52 = *v28;
  v53 = v28[1];
  *v28 = a5;
  v28[1] = a6;
  sub_1B89C3C44(a5, a6);
  sub_1B89B4A04(v52, v53);
  v54 = v80;
  v55 = v79;
  v56 = v78;
  if (!v79)
  {
    v85[0] = v72;
    v56 = sub_1B8A04AC4(v85);
    v55 = v57;
  }

  v58 = v73;
  swift_beginAccess();
  v59 = v58[1];
  *v58 = v56;
  v58[1] = v55;

  v60 = v77;
  swift_beginAccess();
  v61 = v60[1];
  *v60 = a9;
  v60[1] = a10;

  v62 = v76;
  swift_beginAccess();
  v63 = *&v22[v62];
  *&v22[v62] = a11;
  v64 = a11;

  v65 = [objc_opt_self() currentEnvironment];
  v66 = [v65 timeProvider];

  [v66 timestamp];
  v68 = v67;
  swift_unknownObjectRelease();
  *&v22[OBJC_IVAR___STKSticker_creationDate] = v68;
  *&v22[OBJC_IVAR___STKSticker_lastUsedDate] = v68;
  *&v22[OBJC_IVAR___STKSticker_libraryIndex] = 0;
  v84.receiver = v22;
  v84.super_class = v81;
  v69 = objc_msgSendSuper2(&v84, sel_init);
  sub_1B89FE9A8();

  (*(v82 + 8))(v54, v17);
  sub_1B89B4A04(a5, v83);
  return v69;
}

char *Sticker.init(type:representations:name:metadata:externalURI:accessibilityName:attributionInfo:)(unsigned __int8 *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v13 = sub_1B8A04C00(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);

  sub_1B89B4A04(a5, a6);
  return v13;
}

char *Sticker.__allocating_init(type:representations:name:metadata:externalURI:accessibilityName:attributionInfo:searchText:sanitizedPrompt:promptPrimaryLanguageIdentifier:)(unsigned __int8 *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17)
{
  v107 = a8;
  v106 = a7;
  v111 = a5;
  v104 = a4;
  v103 = a3;
  v95 = sub_1B8A23934();
  v94 = *(v95 - 8);
  v20 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v93 = &v91[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_1B8A23904();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v91[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LODWORD(a1) = *a1;
  v108 = type metadata accessor for Sticker(0);
  v27 = objc_allocWithZone(v108);
  v28 = &v27[OBJC_IVAR___STKSticker_accessibilityName];
  *v28 = 0;
  v28[1] = 0;
  v105 = v28;
  v29 = &v27[OBJC_IVAR___STKSticker_searchText];
  *v29 = 0;
  v29[1] = 0;
  v30 = &v27[OBJC_IVAR___STKSticker_sanitizedPrompt];
  *v30 = 0;
  v30[1] = 0;
  v31 = &v27[OBJC_IVAR___STKSticker_rewrittenPrompt];
  *v31 = 0;
  v31[1] = 0;
  v32 = &v27[OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier];
  *v32 = 0;
  v32[1] = 0;
  v33 = &v27[OBJC_IVAR___STKSticker_metadata];
  *&v27[OBJC_IVAR___STKSticker_metadata] = xmmword_1B8A26F80;
  v34 = &v27[OBJC_IVAR___STKSticker_externalURI];
  *v34 = 0;
  v34[1] = 0;
  v101 = v34;
  v102 = OBJC_IVAR___STKSticker_attributionInfo;
  *&v27[OBJC_IVAR___STKSticker_attributionInfo] = 0;
  (*(v23 + 56))(&v27[OBJC_IVAR___STKSticker__companionRecentUUID], 1, 1, v22);
  v27[OBJC_IVAR___STKSticker_animatedVariantIsPreferred] = 2;
  sub_1B8A238F4();
  v92 = a1;
  v27[OBJC_IVAR___STKSticker_type] = a1;
  v110 = v23;
  v35 = *(v23 + 16);
  v109 = v26;
  v35(&v27[OBJC_IVAR___STKSticker_identifier], v26, v22);
  *&v27[OBJC_IVAR___STKSticker_representations] = a2;
  if (a2 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
  {
    v37 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v114 = MEMORY[0x1E69E7CC0];

      result = sub_1B8A0394C(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v99 = v22;
      v100 = a6;
      v37 = v114;
      if ((a2 & 0xC000000000000001) != 0)
      {
        for (j = 0; j != i; ++j)
        {
          v40 = MEMORY[0x1B8CC44E0](j, a2);
          v41 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v42 = *(v40 + v41);
          swift_unknownObjectRelease();
          v114 = v37;
          v44 = v37[2];
          v43 = v37[3];
          if (v44 >= v43 >> 1)
          {
            sub_1B8A0394C((v43 > 1), v44 + 1, 1);
            v37 = v114;
          }

          v37[2] = v44 + 1;
          v37[v44 + 4] = v42;
        }
      }

      else
      {
        v45 = 32;
        do
        {
          v46 = *(a2 + v45);
          v47 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v48 = *(v46 + v47);
          v114 = v37;
          v50 = v37[2];
          v49 = v37[3];
          if (v50 >= v49 >> 1)
          {
            sub_1B8A0394C((v49 > 1), v50 + 1, 1);
            v37 = v114;
          }

          v37[2] = v50 + 1;
          v37[v50 + 4] = v48;
          v45 += 8;
          --i;
        }

        while (i);
      }

      a6 = v100;
      v22 = v99;
    }

    v51 = v37[2];
    if (!v51)
    {
      break;
    }

    v52 = 0;
    v53 = v37 + 4;
    while (1)
    {
      v54 = *v53++;
      v55 = __OFADD__(v52, v54);
      v52 += v54;
      if (v55)
      {
        break;
      }

      if (!--v51)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_29:
    ;
  }

  v52 = 0;
LABEL_22:
  v100 = a17;
  v99 = a15;
  v98 = a14;
  v97 = a13;
  v96 = a12;

  *&v27[OBJC_IVAR___STKSticker_byteCount] = v52;
  v56 = &v27[OBJC_IVAR___STKSticker_name];
  v57 = v104;
  *v56 = v103;
  v56[1] = v57;
  *&v27[OBJC_IVAR___STKSticker_effect] = 0;
  swift_beginAccess();
  v58 = *v33;
  v59 = v33[1];
  v60 = v111;
  *v33 = v111;
  v33[1] = a6;
  sub_1B89C3C44(v60, a6);
  sub_1B89B4A04(v58, v59);
  v61 = v109;
  v62 = v107;
  v63 = v106;
  if (!v107)
  {
    v113[0] = v92;
    v63 = sub_1B8A04AC4(v113);
    v62 = v64;
  }

  v65 = v101;
  swift_beginAccess();
  v66 = v65[1];
  *v65 = v63;
  v65[1] = v62;

  v67 = v105;
  swift_beginAccess();
  v68 = v67[1];
  *v67 = a9;
  v67[1] = a10;

  v69 = v102;
  swift_beginAccess();
  v70 = *&v27[v69];
  *&v27[v69] = a11;
  v71 = a11;

  v72 = [objc_opt_self() currentEnvironment];
  v73 = [v72 timeProvider];

  [v73 timestamp];
  v75 = v74;
  swift_unknownObjectRelease();
  *&v27[OBJC_IVAR___STKSticker_creationDate] = v75;
  *&v27[OBJC_IVAR___STKSticker_lastUsedDate] = v75;
  *&v27[OBJC_IVAR___STKSticker_libraryIndex] = 0;
  v112.receiver = v27;
  v112.super_class = v108;
  v76 = objc_msgSendSuper2(&v112, sel_init);
  sub_1B89FE9A8();
  (*(v110 + 8))(v61, v22);
  v77 = &v76[OBJC_IVAR___STKSticker_searchText];
  swift_beginAccess();
  v78 = *(v77 + 1);
  v79 = v97;
  *v77 = v96;
  *(v77 + 1) = v79;
  v80 = v76;

  v81 = &v80[OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier];
  swift_beginAccess();
  v82 = v81[1];
  *v81 = 0;
  v81[1] = 0;

  v83 = &v80[OBJC_IVAR___STKSticker_sanitizedPrompt];
  swift_beginAccess();
  v84 = *(v83 + 1);
  v85 = v99;
  *v83 = v98;
  *(v83 + 1) = v85;

  v86 = v100;
  if (v100)
  {

    sub_1B89B4A04(v111, a6);
  }

  else
  {
    v88 = v93;
    sub_1B8A23924();
    a16 = sub_1B8A23914();
    v86 = v89;

    sub_1B89B4A04(v111, a6);
    (*(v94 + 8))(v88, v95);
  }

  v90 = v81[1];
  *v81 = a16;
  v81[1] = v86;

  return v80;
}

char *Sticker.__allocating_init(type:representations:name:metadata:externalURI:accessibilityName:attributionInfo:searchText:promptPrimaryLanguageIdentifier:)(unsigned __int8 *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v90 = a8;
  v89 = a7;
  v86 = a4;
  v85 = a3;
  v19 = sub_1B8A23904();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a1) = *a1;
  v91 = type metadata accessor for Sticker(0);
  v24 = objc_allocWithZone(v91);
  v25 = &v24[OBJC_IVAR___STKSticker_accessibilityName];
  *v25 = 0;
  v25[1] = 0;
  v88 = v25;
  v26 = &v24[OBJC_IVAR___STKSticker_searchText];
  *v26 = 0;
  v26[1] = 0;
  v27 = &v24[OBJC_IVAR___STKSticker_sanitizedPrompt];
  *v27 = 0;
  v27[1] = 0;
  v28 = &v24[OBJC_IVAR___STKSticker_rewrittenPrompt];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v24[OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier];
  *v29 = 0;
  v29[1] = 0;
  v30 = &v24[OBJC_IVAR___STKSticker_metadata];
  *&v24[OBJC_IVAR___STKSticker_metadata] = xmmword_1B8A26F80;
  v31 = &v24[OBJC_IVAR___STKSticker_externalURI];
  *v31 = 0;
  v31[1] = 0;
  v84 = v31;
  v87 = OBJC_IVAR___STKSticker_attributionInfo;
  *&v24[OBJC_IVAR___STKSticker_attributionInfo] = 0;
  (*(v20 + 56))(&v24[OBJC_IVAR___STKSticker__companionRecentUUID], 1, 1, v19);
  v24[OBJC_IVAR___STKSticker_animatedVariantIsPreferred] = 2;
  sub_1B8A238F4();
  HIDWORD(v79) = a1;
  v24[OBJC_IVAR___STKSticker_type] = a1;
  v93 = v20;
  v32 = *(v20 + 16);
  v92 = v23;
  v32(&v24[OBJC_IVAR___STKSticker_identifier], v23, v19);
  *&v24[OBJC_IVAR___STKSticker_representations] = a2;
  if (a2 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
  {
    v34 = MEMORY[0x1E69E7CC0];
    v94 = a6;
    if (i)
    {
      v97 = MEMORY[0x1E69E7CC0];

      result = sub_1B8A0394C(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v82 = v19;
      v83 = a5;
      v34 = v97;
      if ((a2 & 0xC000000000000001) != 0)
      {
        for (j = 0; j != i; ++j)
        {
          v37 = MEMORY[0x1B8CC44E0](j, a2);
          v38 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v39 = *(v37 + v38);
          swift_unknownObjectRelease();
          v97 = v34;
          v41 = v34[2];
          v40 = v34[3];
          if (v41 >= v40 >> 1)
          {
            sub_1B8A0394C((v40 > 1), v41 + 1, 1);
            v34 = v97;
          }

          v34[2] = v41 + 1;
          v34[v41 + 4] = v39;
        }
      }

      else
      {
        v42 = 32;
        do
        {
          v43 = *(a2 + v42);
          v44 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v45 = *(v43 + v44);
          v97 = v34;
          v47 = v34[2];
          v46 = v34[3];
          if (v47 >= v46 >> 1)
          {
            sub_1B8A0394C((v46 > 1), v47 + 1, 1);
            v34 = v97;
          }

          v34[2] = v47 + 1;
          v34[v47 + 4] = v45;
          v42 += 8;
          --i;
        }

        while (i);
      }

      a6 = v94;
      a5 = v83;
      v19 = v82;
    }

    v48 = v34[2];
    if (!v48)
    {
      break;
    }

    a2 = 0;
    v49 = v34 + 4;
    while (1)
    {
      v50 = *v49++;
      v51 = __OFADD__(a2, v50);
      a2 += v50;
      if (v51)
      {
        break;
      }

      if (!--v48)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    ;
  }

  a2 = 0;
LABEL_22:
  v83 = a15;
  v82 = a14;
  v81 = a13;
  v80 = a12;

  *&v24[OBJC_IVAR___STKSticker_byteCount] = a2;
  v52 = &v24[OBJC_IVAR___STKSticker_name];
  v53 = v86;
  *v52 = v85;
  v52[1] = v53;
  *&v24[OBJC_IVAR___STKSticker_effect] = 0;
  swift_beginAccess();
  v54 = *v30;
  v55 = v30[1];
  *v30 = a5;
  v30[1] = a6;
  sub_1B89C3C44(a5, a6);
  sub_1B89B4A04(v54, v55);
  v56 = v92;
  v57 = v90;
  v58 = v89;
  if (!v90)
  {
    v96[0] = BYTE4(v79);
    v58 = sub_1B8A04AC4(v96);
    v57 = v59;
  }

  v60 = v84;
  swift_beginAccess();
  v61 = v60[1];
  *v60 = v58;
  v60[1] = v57;

  v62 = v88;
  swift_beginAccess();
  v63 = v62[1];
  *v62 = a9;
  v62[1] = a10;

  v64 = v87;
  swift_beginAccess();
  v65 = *&v24[v64];
  *&v24[v64] = a11;
  v66 = a11;

  v67 = [objc_opt_self() currentEnvironment];
  v68 = [v67 timeProvider];

  [v68 timestamp];
  v70 = v69;
  swift_unknownObjectRelease();
  *&v24[OBJC_IVAR___STKSticker_creationDate] = v70;
  *&v24[OBJC_IVAR___STKSticker_lastUsedDate] = v70;
  *&v24[OBJC_IVAR___STKSticker_libraryIndex] = 0;
  v95.receiver = v24;
  v95.super_class = v91;
  v71 = objc_msgSendSuper2(&v95, sel_init);
  sub_1B89FE9A8();
  (*(v93 + 8))(v56, v19);

  sub_1B89B4A04(a5, v94);
  v72 = &v71[OBJC_IVAR___STKSticker_searchText];
  swift_beginAccess();
  v73 = *(v72 + 1);
  v74 = v81;
  *v72 = v80;
  *(v72 + 1) = v74;
  v75 = v71;

  v76 = &v75[OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier];
  swift_beginAccess();
  v77 = v76[1];
  v78 = v83;
  *v76 = v82;
  v76[1] = v78;

  return v75;
}

char *Sticker.__allocating_init(type:representations:name:metadata:externalURI:)(unsigned __int8 *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = objc_allocWithZone(v8);
  v18 = sub_1B8A052F4(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_1B89B4A04(a5, a6);
  return v18;
}

char *Sticker.init(type:representations:name:metadata:externalURI:)(unsigned __int8 *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = sub_1B8A052F4(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_1B89B4A04(a5, a6);
  return v10;
}

char *Sticker.init(type:identifier:representations:name:effect:byteCount:metadata:externalURI:accessibilityName:attributionInfo:searchText:creationDate:lastUsedDate:libraryIndex:sanitizedPrompt:rewrittenPrompt:promptPrimaryLanguageIdentifier:prefersAnimation:)(unsigned __int8 *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, void *a12, unint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unint64_t a28, char a29)
{
  v133 = a5;
  v134 = a6;
  v132 = a4;
  v137 = a3;
  v142 = a1;
  v130 = a15;
  v129 = a14;
  v135 = a13;
  v136 = a12;
  v141 = a11;
  v140 = a10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92220, &unk_1B8A281A0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v121 - v34;
  v36 = sub_1B8A23904();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v121 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = &v29[OBJC_IVAR___STKSticker_accessibilityName];
  *v41 = 0;
  *(v41 + 1) = 0;
  v42 = &v29[OBJC_IVAR___STKSticker_searchText];
  *v42 = 0;
  *(v42 + 1) = 0;
  v125 = v42;
  v43 = &v29[OBJC_IVAR___STKSticker_sanitizedPrompt];
  *v43 = 0;
  *(v43 + 1) = 0;
  v126 = v43;
  v44 = &v29[OBJC_IVAR___STKSticker_rewrittenPrompt];
  *v44 = 0;
  *(v44 + 1) = 0;
  v127 = v44;
  v45 = &v29[OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier];
  *v45 = 0;
  *(v45 + 1) = 0;
  v128 = v45;
  v46 = &v29[OBJC_IVAR___STKSticker_metadata];
  *&v29[OBJC_IVAR___STKSticker_metadata] = xmmword_1B8A26F80;
  v47 = &v29[OBJC_IVAR___STKSticker_externalURI];
  *v47 = 0;
  v47[1] = 0;
  v131 = OBJC_IVAR___STKSticker_attributionInfo;
  *&v29[OBJC_IVAR___STKSticker_attributionInfo] = 0;
  LODWORD(v139) = *v142;
  (*(v37 + 56))(&v29[OBJC_IVAR___STKSticker__companionRecentUUID], 1, 1, v36);
  v142 = v29;
  v123 = OBJC_IVAR___STKSticker_animatedVariantIsPreferred;
  v124 = a2;
  v29[OBJC_IVAR___STKSticker_animatedVariantIsPreferred] = 2;
  sub_1B89AF268(a2, v35, &unk_1EBA92220, &unk_1B8A281A0);
  v48 = *(v37 + 48);
  if (v48(v35, 1, v36) == 1)
  {
    sub_1B8A238F4();
    if (v48(v35, 1, v36) != 1)
    {
      sub_1B89A8A78(v35, &unk_1EBA92220, &unk_1B8A281A0);
    }
  }

  else
  {
    (*(v37 + 32))(v40, v35, v36);
  }

  v49 = v142;
  v142[OBJC_IVAR___STKSticker_type] = v139;
  v138 = v37;
  v139 = v40;
  v50 = *(v37 + 16);
  v122 = v36;
  v50(&v49[OBJC_IVAR___STKSticker_identifier], v40, v36);
  v51 = v137;
  *&v49[OBJC_IVAR___STKSticker_representations] = v137;
  swift_beginAccess();
  v52 = *(v41 + 1);
  v53 = v130;
  *v41 = v129;
  *(v41 + 1) = v53;

  v54 = &v49[OBJC_IVAR___STKSticker_name];
  v55 = v133;
  *v54 = v132;
  *(v54 + 1) = v55;
  *&v49[OBJC_IVAR___STKSticker_effect] = v134;
  swift_beginAccess();
  v56 = *v46;
  v57 = v46[1];
  v58 = v140;
  v59 = v141;
  *v46 = v140;
  v46[1] = v59;
  sub_1B89C3C44(v58, v59);
  sub_1B89B4A04(v56, v57);
  v61 = v135;
  v60 = v136;
  if (!v135)
  {
    v62 = sub_1B8A238A4();
    v145 = 0xD00000000000001BLL;
    v146 = 0x80000001B8A2A9A0;
    MEMORY[0x1B8CC3E20](v62);

    v60 = v145;
    v61 = v146;
  }

  swift_beginAccess();
  v63 = v47[1];
  *v47 = v60;
  v47[1] = v61;

  v64 = v131;
  swift_beginAccess();
  v65 = *&v49[v64];
  *&v49[v64] = a16;
  v66 = a16;

  v67 = (v51 >> 62);
  if (v51 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
  {
    v69 = MEMORY[0x1E69E7CC0];
    v136 = v66;
    if (!i)
    {
      goto LABEL_22;
    }

    v144 = MEMORY[0x1E69E7CC0];
    result = sub_1B8A0394C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v71 = v67;
    v69 = v144;
    if ((v51 & 0xC000000000000001) != 0)
    {
      for (j = 0; j != i; ++j)
      {
        v73 = MEMORY[0x1B8CC44E0](j, v51);
        v74 = OBJC_IVAR___STKStickerRepresentation_byteCount;
        swift_beginAccess();
        v75 = *(v73 + v74);
        swift_unknownObjectRelease();
        v144 = v69;
        v77 = v69[2];
        v76 = v69[3];
        if (v77 >= v76 >> 1)
        {
          sub_1B8A0394C((v76 > 1), v77 + 1, 1);
          v69 = v144;
        }

        v69[2] = v77 + 1;
        v69[v77 + 4] = v75;
      }
    }

    else
    {
      v78 = (v51 + 32);
      do
      {
        v79 = *v78;
        v80 = OBJC_IVAR___STKStickerRepresentation_byteCount;
        swift_beginAccess();
        v81 = *(v79 + v80);
        v144 = v69;
        v83 = v69[2];
        v82 = v69[3];
        if (v83 >= v82 >> 1)
        {
          sub_1B8A0394C((v82 > 1), v83 + 1, 1);
          v69 = v144;
        }

        v69[2] = v83 + 1;
        v69[v83 + 4] = v81;
        ++v78;
        --i;
      }

      while (i);
    }

    v67 = v71;
LABEL_22:
    v84 = v69[2];
    if (v84)
    {
      v66 = 0;
      v85 = v69 + 4;
      while (1)
      {
        v86 = *v85++;
        v87 = __OFADD__(v66, v86);
        v66 += v86;
        if (v87)
        {
          break;
        }

        if (!--v84)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
    }

    else
    {
      v66 = 0;
LABEL_28:

      v88 = v142;
      *&v142[OBJC_IVAR___STKSticker_byteCount] = v66;
      if (a20)
      {
        v89 = [objc_opt_self() currentEnvironment];
        v90 = [v89 timeProvider];

        [v90 timestamp];
        v92 = v91;
        v88 = v142;
        swift_unknownObjectRelease();
      }

      else
      {
        v92 = a19;
      }

      v93 = a29;
      v135 = a28;
      v134 = a27;
      v133 = a26;
      v132 = a25;
      v131 = a24;
      *&v88[OBJC_IVAR___STKSticker_creationDate] = v92;
      if (a22)
      {
        v94 = [objc_opt_self() currentEnvironment];
        v95 = [v94 timeProvider];

        [v95 timestamp];
        v97 = v96;
        v88 = v142;
        swift_unknownObjectRelease();
      }

      else
      {
        v97 = a21;
      }

      v98 = v128;
      *&v88[OBJC_IVAR___STKSticker_lastUsedDate] = v97;
      *&v88[OBJC_IVAR___STKSticker_libraryIndex] = a7;
      v99 = v125;
      swift_beginAccess();
      v100 = *(v99 + 1);
      *v99 = a17;
      *(v99 + 1) = a18;

      v101 = v126;
      swift_beginAccess();
      v102 = *(v101 + 1);
      v103 = v131;
      *v101 = a23;
      *(v101 + 1) = v103;

      v104 = v127;
      swift_beginAccess();
      v105 = *(v104 + 1);
      v106 = v133;
      *v104 = v132;
      *(v104 + 1) = v106;

      swift_beginAccess();
      v107 = *(v98 + 1);
      v108 = v135;
      *v98 = v134;
      *(v98 + 1) = v108;

      if (a29 != 2)
      {
        (*(v138 + 8))(v139, v122);

LABEL_56:
        v117 = v124;
        v118 = v142;
        v142[v123] = v93;
        v119 = type metadata accessor for Sticker(0);
        v143.receiver = v118;
        v143.super_class = v119;
        v120 = objc_msgSendSuper2(&v143, sel_init);

        sub_1B89B4A04(v140, v141);
        sub_1B89A8A78(v117, &unk_1EBA92220, &unk_1B8A281A0);
        return v120;
      }

      if (v67)
      {
        v109 = sub_1B8A24554();
        v111 = v138;
        v110 = v139;
        if (!v109)
        {
LABEL_53:
          (*(v111 + 8))(v110, v122);

          v93 = 2;
          goto LABEL_56;
        }
      }

      else
      {
        v109 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v111 = v138;
        v110 = v139;
        if (!v109)
        {
          goto LABEL_53;
        }
      }

      v66 = 0;
      while (1)
      {
        if ((v51 & 0xC000000000000001) != 0)
        {
          v113 = MEMORY[0x1B8CC44E0](v66, v51);
        }

        else
        {
          if (v66 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_59;
          }

          v113 = *(v51 + 8 * v66 + 32);
        }

        v114 = v113;
        v67 = (v66 + 1);
        if (__OFADD__(v66, 1))
        {
          break;
        }

        v115 = &v113[OBJC_IVAR___STKStickerRepresentation_role];
        swift_beginAccess();
        v116 = *v115 == 0xD000000000000020 && 0x80000001B8A2A290 == *(v115 + 1);
        if (v116 || (sub_1B8A24954() & 1) != 0)
        {
          v112 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
          swift_beginAccess();
          LOBYTE(v112) = v114[v112];

          if (v112)
          {
            (*(v138 + 8))(v139, v122);

            v93 = 1;
            goto LABEL_56;
          }
        }

        else
        {
        }

        ++v66;
        if (v67 == v109)
        {

          (*(v138 + 8))(v139, v122);
          v93 = 0;
          goto LABEL_56;
        }
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B89FD71C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F30, &qword_1B8A26600);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B8A28040;
  v73[0] = 0;
  v73[1] = 0xE000000000000000;
  MEMORY[0x1B8CC3E20](0x203D2065707974, 0xE700000000000000);
  LOBYTE(v71) = *(v0 + OBJC_IVAR___STKSticker_type);
  sub_1B8A24704();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  strcpy(v73, "identifier = ");
  HIWORD(v73[1]) = -4864;
  sub_1B8A23904();
  sub_1B8A05C8C(&qword_1ED82DE78, MEMORY[0x1E69695A8]);
  v3 = sub_1B8A24934();
  MEMORY[0x1B8CC3E20](v3);

  v4 = v73[1];
  *(v2 + 48) = v73[0];
  *(v2 + 56) = v4;
  v73[0] = 0;
  v73[1] = 0xE000000000000000;
  sub_1B8A24634();

  v71 = 0xD000000000000012;
  v72 = 0x80000001B8A2B0F0;
  v5 = OBJC_IVAR___STKSticker_representations;
  swift_beginAccess();
  v6 = *(v1 + v5);
  v7 = type metadata accessor for Sticker.Representation();

  v9 = MEMORY[0x1B8CC3F80](v8, v7);
  v11 = v10;

  MEMORY[0x1B8CC3E20](v9, v11);

  *(v2 + 64) = 0xD000000000000012;
  *(v2 + 72) = v72;
  v12 = (v1 + OBJC_IVAR___STKSticker_accessibilityName);
  swift_beginAccess();
  v13 = v12[1];
  if (v13)
  {
    v14 = *v12;
    v15 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v15 = *v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {

      sub_1B8A24634();

      v70[3] = 0xD000000000000014;
      v70[4] = 0x80000001B8A2B130;
      MEMORY[0x1B8CC3E20](v14, v13);

      v17 = *(v2 + 16);
      v16 = *(v2 + 24);
      if (v17 >= v16 >> 1)
      {
        v2 = sub_1B89DD314((v16 > 1), v17 + 1, 1, v2);
      }

      *(v2 + 16) = v17 + 1;
      v18 = v2 + 16 * v17;
      *(v18 + 32) = 0xD000000000000014;
      *(v18 + 40) = 0x80000001B8A2B130;
    }
  }

  v19 = (v1 + OBJC_IVAR___STKSticker_externalURI);
  swift_beginAccess();
  v20 = v19[1];
  if (v20)
  {
    v21 = *v19;

    sub_1B8A24634();

    strcpy(v70, "externalURI = ");
    HIBYTE(v70[1]) = -18;
    MEMORY[0x1B8CC3E20](v21, v20);

    v22 = v70[0];
    v23 = v70[1];
    v25 = *(v2 + 16);
    v24 = *(v2 + 24);
    if (v25 >= v24 >> 1)
    {
      v2 = sub_1B89DD314((v24 > 1), v25 + 1, 1, v2);
    }

    *(v2 + 16) = v25 + 1;
    v26 = v2 + 16 * v25;
    *(v26 + 32) = v22;
    *(v26 + 40) = v23;
  }

  v27 = (v1 + OBJC_IVAR___STKSticker_metadata);
  swift_beginAccess();
  v28 = v27[1];
  if (v28 >> 60 == 15)
  {
    goto LABEL_24;
  }

  v29 = *v27;
  sub_1B89B4A18(*v27, v28);
  sub_1B8A24634();

  v31 = v28 >> 62;
  if ((v28 >> 62) > 1)
  {
    if (v31 != 2 || !__OFSUB__(*(v29 + 24), *(v29 + 16)))
    {
      goto LABEL_21;
    }

    __break(1u);
LABEL_20:
    if (__OFSUB__(HIDWORD(v29), v29))
    {
      __break(1u);
      return result;
    }

    goto LABEL_21;
  }

  if (v31)
  {
    goto LABEL_20;
  }

LABEL_21:
  v32 = sub_1B8A24934();
  MEMORY[0x1B8CC3E20](v32);

  MEMORY[0x1B8CC3E20](0x736574796220, 0xE600000000000000);
  v34 = *(v2 + 16);
  v33 = *(v2 + 24);
  if (v34 >= v33 >> 1)
  {
    v2 = sub_1B89DD314((v33 > 1), v34 + 1, 1, v2);
  }

  sub_1B89B4A04(v29, v28);
  *(v2 + 16) = v34 + 1;
  v35 = v2 + 16 * v34;
  *(v35 + 32) = 0x617461646174656DLL;
  *(v35 + 40) = 0xEB00000000203D20;
LABEL_24:
  v36 = OBJC_IVAR___STKSticker_attributionInfo;
  swift_beginAccess();
  v37 = *(v1 + v36);
  if (v37)
  {
    v38 = v37;
    sub_1B8A24634();

    v39 = [v38 description];
    v40 = sub_1B8A23F24();
    v42 = v41;

    MEMORY[0x1B8CC3E20](v40, v42);

    v44 = *(v2 + 16);
    v43 = *(v2 + 24);
    if (v44 >= v43 >> 1)
    {
      v2 = sub_1B89DD314((v43 > 1), v44 + 1, 1, v2);
    }

    *(v2 + 16) = v44 + 1;
    v45 = v2 + 16 * v44;
    *(v45 + 32) = 0xD000000000000012;
    *(v45 + 40) = 0x80000001B8A2B110;
  }

  MEMORY[0x1B8CC3E20](0x3D20746365666665, 0xE900000000000020);
  v46 = OBJC_IVAR___STKSticker_effect;
  swift_beginAccess();
  v69 = *(v1 + v46);
  sub_1B8A24704();
  v48 = *(v2 + 16);
  v47 = *(v2 + 24);
  if (v48 >= v47 >> 1)
  {
    v2 = sub_1B89DD314((v47 > 1), v48 + 1, 1, v2);
  }

  *(v2 + 16) = v48 + 1;
  v49 = v2 + 16 * v48;
  *(v49 + 32) = 0;
  *(v49 + 40) = 0xE000000000000000;
  sub_1B8A24634();
  MEMORY[0x1B8CC3E20](0x497972617262696CLL, 0xEF203D207865646ELL);
  v50 = OBJC_IVAR___STKSticker_libraryIndex;
  swift_beginAccess();
  v51 = *(v1 + v50);
  sub_1B8A241A4();
  v53 = *(v2 + 16);
  v52 = *(v2 + 24);
  if (v53 >= v52 >> 1)
  {
    v2 = sub_1B89DD314((v52 > 1), v53 + 1, 1, v2);
  }

  *(v2 + 16) = v53 + 1;
  v54 = v2 + 16 * v53;
  *(v54 + 32) = 0;
  *(v54 + 40) = 0xE000000000000000;
  sub_1B8A24634();
  MEMORY[0x1B8CC3E20](0x6E6F697461657263, 0xEF203D2065746144);
  v55 = OBJC_IVAR___STKSticker_creationDate;
  swift_beginAccess();
  v56 = *(v1 + v55);
  sub_1B8A241A4();
  v58 = *(v2 + 16);
  v57 = *(v2 + 24);
  if (v58 >= v57 >> 1)
  {
    v2 = sub_1B89DD314((v57 > 1), v58 + 1, 1, v2);
  }

  *(v2 + 16) = v58 + 1;
  v59 = v2 + 16 * v58;
  *(v59 + 32) = 0;
  *(v59 + 40) = 0xE000000000000000;
  sub_1B8A24634();
  MEMORY[0x1B8CC3E20](0x646573557473616CLL, 0xEF203D2065746144);
  v60 = OBJC_IVAR___STKSticker_lastUsedDate;
  swift_beginAccess();
  v61 = *(v1 + v60);
  sub_1B8A241A4();
  v63 = *(v2 + 16);
  v62 = *(v2 + 24);
  if (v63 >= v62 >> 1)
  {
    v2 = sub_1B89DD314((v62 > 1), v63 + 1, 1, v2);
  }

  *(v2 + 16) = v63 + 1;
  v64 = v2 + 16 * v63;
  *(v64 + 32) = 0;
  *(v64 + 40) = 0xE000000000000000;
  swift_getObjectType();
  v65 = sub_1B8A24A94();
  MEMORY[0x1B8CC3E20](v65);

  MEMORY[0x1B8CC3E20](58, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F40, &unk_1B8A27050);
  sub_1B89CCD90(&qword_1EBA911A0, &unk_1EBA91F40, &unk_1B8A27050);
  v66 = sub_1B8A23EB4();
  v68 = v67;

  MEMORY[0x1B8CC3E20](v66, v68);

  MEMORY[0x1B8CC3E20](62, 0xE100000000000000);
  return 60;
}

BOOL sub_1B89FE0BC(uint64_t a1)
{
  sub_1B89AF268(a1, v41, &unk_1EBA91F50, &unk_1B8A26500);
  if (v42)
  {
    type metadata accessor for Sticker(0);
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR___STKSticker_type) != v40[OBJC_IVAR___STKSticker_type])
      {
        goto LABEL_29;
      }

      sub_1B8A23904();
      sub_1B8A05C8C(&qword_1EBA91640, MEMORY[0x1E69695A8]);
      v2 = v1;
      if ((sub_1B8A23ED4() & 1) == 0)
      {
        goto LABEL_29;
      }

      v3 = v1;
      v4 = (v1 + OBJC_IVAR___STKSticker_accessibilityName);
      swift_beginAccess();
      v5 = *v4;
      v6 = v4[1];
      v7 = &v40[OBJC_IVAR___STKSticker_accessibilityName];
      swift_beginAccess();
      v8 = *(v7 + 1);
      if (v6)
      {
        if (!v8 || (v5 != *v7 || v6 != v8) && (sub_1B8A24954() & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else if (v8)
      {
        goto LABEL_29;
      }

      v9 = (v2 + OBJC_IVAR___STKSticker_name);
      swift_beginAccess();
      v10 = *v9;
      v11 = v9[1];
      v12 = &v40[OBJC_IVAR___STKSticker_name];
      swift_beginAccess();
      if ((v10 != *v12 || v11 != *(v12 + 1)) && (sub_1B8A24954() & 1) == 0)
      {
        goto LABEL_29;
      }

      v13 = OBJC_IVAR___STKSticker_effect;
      swift_beginAccess();
      v14 = *(v2 + v13);
      v15 = OBJC_IVAR___STKSticker_effect;
      swift_beginAccess();
      if (v14 != *&v40[v15])
      {
        goto LABEL_29;
      }

      v16 = OBJC_IVAR___STKSticker_representations;
      swift_beginAccess();
      v17 = *(v2 + v16);
      v18 = OBJC_IVAR___STKSticker_representations;
      swift_beginAccess();
      v19 = *&v40[v18];

      v20 = sub_1B89F7DF4(v17, v19);

      if ((v20 & 1) == 0)
      {
        goto LABEL_29;
      }

      v21 = (v2 + OBJC_IVAR___STKSticker_metadata);
      swift_beginAccess();
      v23 = *v21;
      v22 = v21[1];
      v24 = &v40[OBJC_IVAR___STKSticker_metadata];
      swift_beginAccess();
      v26 = *v24;
      v25 = v24[1];
      if (v22 >> 60 == 15)
      {
        if (v25 >> 60 == 15)
        {
          sub_1B89C3C44(v23, v22);
          sub_1B89C3C44(v26, v25);
          sub_1B89B4A04(v23, v22);
LABEL_24:
          v28 = OBJC_IVAR___STKSticker_attributionInfo;
          swift_beginAccess();
          v29 = *(v2 + v28);
          v30 = OBJC_IVAR___STKSticker_attributionInfo;
          swift_beginAccess();
          v31 = *&v40[v30];
          if (v29)
          {
            if (v31)
            {
              type metadata accessor for Sticker.AttributionInfo();
              v32 = v31;
              v33 = v29;
              v3 = v2;
              v34 = sub_1B8A24404();

              if (v34)
              {
                goto LABEL_27;
              }
            }
          }

          else if (!v31)
          {
LABEL_27:
            v35 = OBJC_IVAR___STKSticker_libraryIndex;
            swift_beginAccess();
            v36 = *(v3 + v35);
            v37 = OBJC_IVAR___STKSticker_libraryIndex;
            swift_beginAccess();
            v38 = *&v40[v37];

            return v36 == v38;
          }

LABEL_29:

          return 0;
        }
      }

      else if (v25 >> 60 != 15)
      {
        sub_1B89C3C44(v23, v22);
        sub_1B89C3C44(v26, v25);
        sub_1B89C3C44(v23, v22);
        sub_1B89C3C44(v26, v25);
        v27 = sub_1B8A0495C(v23, v22, v26, v25);
        sub_1B89B4A04(v26, v25);
        sub_1B89B4A04(v23, v22);
        sub_1B89B4A04(v26, v25);
        sub_1B89B4A04(v23, v22);
        if ((v27 & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_24;
      }

      sub_1B89C3C44(v23, v22);
      sub_1B89C3C44(v26, v25);

      sub_1B89B4A04(v23, v22);
      sub_1B89B4A04(v26, v25);
    }
  }

  else
  {
    sub_1B89A8A78(v41, &unk_1EBA91F50, &unk_1B8A26500);
  }

  return 0;
}

_BYTE *sub_1B89FE67C()
{
  v1 = OBJC_IVAR___STKSticker_representations;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1B8CC44E0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
      swift_beginAccess();
      if (v6[v8])
      {

        return v6;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_13:

  return 0;
}

uint64_t sub_1B89FE7C0(uint64_t a1)
{
  v3 = OBJC_IVAR___STKSticker_representations;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v17[7] = a1;
  v17[0] = a1;
  v16 = v17;

  v5 = sub_1B89F931C(sub_1B8A058EC, v15, v4);

  if (v5)
  {
    v6 = *(v1 + v3);
    if (v6 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
    {

      if (!i)
      {
        break;
      }

      for (j = 0; ; ++j)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1B8CC44E0](j, v6);
        }

        else
        {
          if (j >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v9 = *(v6 + 8 * j + 32);
        }

        v10 = v9;
        v11 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        sub_1B89AB538(0, &qword_1EBA91AE8, 0x1E69E58C0);
        v12 = sub_1B8A24404();
        v13 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
        swift_beginAccess();
        v10[v13] = v12 & 1;

        if (v11 == i)
        {
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }
  }

  else
  {
    sub_1B8A05944();
    swift_allocError();
    return swift_willThrow();
  }
}

void sub_1B89FE9A8()
{
  v1 = OBJC_IVAR___STKSticker_representations;
  swift_beginAccess();
  v34 = v1;
  v35 = v0;
  v2 = *&v0[v1];
  v3 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_41:
    v4 = sub_1B8A24554();
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (v4 != v5)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1B8CC44E0](v5, v2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_38;
      }

      v7 = *(v2 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v10 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
    swift_beginAccess();
    LOBYTE(v10) = v8[v10];

    ++v5;
    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1B89DD0F4(0, *(v6 + 2) + 1, 1, v6);
      }

      v12 = *(v6 + 2);
      v11 = *(v6 + 3);
      if (v12 >= v11 >> 1)
      {
        v6 = sub_1B89DD0F4((v11 > 1), v12 + 1, 1, v6);
      }

      *(v6 + 2) = v12 + 1;
      *&v6[8 * v12 + 32] = v5 - 1;
      v5 = v9;
    }
  }

  v13 = *(v6 + 2);
  if (!v13)
  {

    v15 = *&v35[v34];
    if (v15 >> 62)
    {
      if (v15 < 0)
      {
        v30 = *&v35[v34];
      }

      if (sub_1B8A24554())
      {
        goto LABEL_21;
      }
    }

    else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_21:
      if ((v15 & 0xC000000000000001) != 0)
      {

        v16 = MEMORY[0x1B8CC44E0](0, v15);

        goto LABEL_24;
      }

      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v16 = *(v15 + 32);
LABEL_24:
        if (qword_1EBA911E8 != -1)
        {
          swift_once();
        }

        v17 = sub_1B8A23BC4();
        __swift_project_value_buffer(v17, qword_1EBA911F0);
        v18 = v35;
        v19 = sub_1B8A23BA4();
        v20 = sub_1B8A24214();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *v21 = 138412290;
          *(v21 + 4) = v18;
          *v22 = v18;
          v23 = v18;
          _os_log_impl(&dword_1B89A7000, v19, v20, "Implicitly preferring the first representation of sticker: %@", v21, 0xCu);
          sub_1B89A8A78(v22, &qword_1EBA919E0, &qword_1B8A262D0);
          MEMORY[0x1B8CC5170](v22, -1, -1);
          MEMORY[0x1B8CC5170](v21, -1, -1);
        }

        v24 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
        swift_beginAccess();
        *(&v16->isa + v24) = 1;
LABEL_48:

        return;
      }

      __break(1u);
LABEL_51:
      swift_once();
LABEL_46:
      v31 = sub_1B8A23BC4();
      __swift_project_value_buffer(v31, qword_1EBA911F0);
      v16 = sub_1B8A23BA4();
      v32 = sub_1B8A24234();
      if (os_log_type_enabled(v16, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1B89A7000, v16, v32, "No representation was preferred, but none was preferable", v33, 2u);
        MEMORY[0x1B8CC5170](v33, -1, -1);
      }

      goto LABEL_48;
    }

    if (qword_1EBA911E8 == -1)
    {
      goto LABEL_46;
    }

    goto LABEL_51;
  }

  v14 = v13 - 1;
  v3 = v34;
  if (v13 != 1)
  {
    v25 = 40;
    do
    {
      v26 = *&v6[v25];
      v2 = *&v35[v34];
      if ((v2 & 0xC000000000000001) != 0)
      {
        v29 = *&v35[v34];

        v27 = MEMORY[0x1B8CC44E0](v26, v2);
      }

      else
      {
        if ((v26 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        if (v26 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v27 = *(v2 + 8 * v26 + 32);
      }

      v28 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
      swift_beginAccess();
      v27[v28] = 0;

      v25 += 8;
      --v14;
    }

    while (v14);
  }
}

uint64_t sub_1B89FEE5C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1B8A24024();
  }

  else
  {
    return 0;
  }
}

id Sticker.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92220, &unk_1B8A281A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v111 - v6;
  v8 = sub_1B8A23904();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v126 = &v111 - v14;
  v15 = (v1 + OBJC_IVAR___STKSticker_accessibilityName);
  *v15 = 0;
  v15[1] = 0;
  v128 = v15;
  v16 = (v1 + OBJC_IVAR___STKSticker_searchText);
  *v16 = 0;
  v16[1] = 0;
  v132 = v16;
  v17 = (v1 + OBJC_IVAR___STKSticker_sanitizedPrompt);
  *v17 = 0;
  v17[1] = 0;
  v133 = v17;
  v18 = (v1 + OBJC_IVAR___STKSticker_rewrittenPrompt);
  *v18 = 0;
  v18[1] = 0;
  v134 = v18;
  v19 = (v1 + OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier);
  *v19 = 0;
  v19[1] = 0;
  v135 = v19;
  v129 = v1 + OBJC_IVAR___STKSticker_metadata;
  *(v1 + OBJC_IVAR___STKSticker_metadata) = xmmword_1B8A26F80;
  v20 = (v1 + OBJC_IVAR___STKSticker_externalURI);
  *v20 = 0;
  v20[1] = 0;
  v130 = v20;
  v131 = (v1 + OBJC_IVAR___STKSticker_attributionInfo);
  *(v1 + OBJC_IVAR___STKSticker_attributionInfo) = 0;
  v21 = *(v9 + 56);
  v127 = OBJC_IVAR___STKSticker__companionRecentUUID;
  v21(v1 + OBJC_IVAR___STKSticker__companionRecentUUID, 1, 1, v8);
  *(v1 + OBJC_IVAR___STKSticker_animatedVariantIsPreferred) = 2;
  v22 = sub_1B8A23EF4();
  v125 = [a1 decodeIntegerForKey_];

  sub_1B89AB538(0, &qword_1ED82DF70, 0x1E696AFB0);
  v23 = sub_1B8A243B4();
  if (!v23)
  {
    goto LABEL_21;
  }

  v24 = v23;
  v21(v7, 1, 1, v8);
  sub_1B8A05C8C(&qword_1EBA92230, MEMORY[0x1E69695A8]);
  sub_1B8A24784();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    goto LABEL_21;
  }

  v25 = *(v9 + 32);
  v25(v13, v7, v8);
  v26 = v126;
  v25(v126, v13, v8);
  type metadata accessor for Sticker.Representation();
  v27 = sub_1B8A243C4();
  if (!v27)
  {
    (*(v9 + 8))(v26, v8);
LABEL_21:

LABEL_22:
    v53 = v128[1];

    v54 = v132[1];

    v55 = v133[1];

    v56 = v134[1];

    v57 = v135[1];

    sub_1B89B4A04(*v129, *(v129 + 1));
    v58 = v130[1];

    sub_1B89A8A78(v2 + v127, &unk_1EBA92220, &unk_1B8A281A0);
    type metadata accessor for Sticker(0);
    v59 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x30);
    v60 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v28 = v27;
  sub_1B89AB538(0, &qword_1EBA91F70, 0x1E696AEC0);
  v29 = sub_1B8A243B4();
  if (!v29)
  {
    (*(v9 + 8))(v26, v8);

    goto LABEL_22;
  }

  v143 = 0;
  v144 = 0;
  v30 = v29;
  sub_1B8A23F14();

  v31 = v144;
  if (!v144)
  {

LABEL_36:

    (*(v9 + 8))(v26, v8);
    goto LABEL_22;
  }

  v32 = v143;
  v33 = sub_1B8A243B4();
  if (!v33)
  {
    (*(v9 + 8))(v26, v8);

LABEL_44:

    goto LABEL_22;
  }

  v143 = 0;
  v144 = 0;
  v34 = v33;
  sub_1B8A23F14();

  if (!v144)
  {

    goto LABEL_36;
  }

  v122 = v32;
  v123 = v144;
  v124 = v28;
  v120 = v143;
  v35 = sub_1B8A23EF4();
  v119 = [a1 decodeIntegerForKey_];

  v36 = sub_1B8A23EF4();
  v121 = [a1 decodeIntegerForKey_];

  v37 = sub_1B8A23EF4();
  [a1 decodeDoubleForKey_];
  v39 = v38;

  v40 = sub_1B8A23EF4();
  [a1 decodeDoubleForKey_];
  v42 = v41;

  v43 = sub_1B8A243B4();
  if (!v43)
  {
    (*(v9 + 8))(v26, v8);

    v62 = &v142;
LABEL_43:
    v73 = *(v62 - 32);
    goto LABEL_44;
  }

  v143 = 0;
  v144 = 0;
  v44 = v43;
  sub_1B8A23F14();

  if (!v144)
  {

    v63 = &v142;
LABEL_35:
    v66 = *(v63 - 32);
    goto LABEL_36;
  }

  v118 = v144;
  v117 = v143;
  v45 = sub_1B8A243B4();
  if (!v45)
  {
    (*(v9 + 8))(v26, v8);

    v64 = &v142;
LABEL_42:
    v72 = *(v64 - 32);

    v62 = &v139;
    goto LABEL_43;
  }

  v143 = 0;
  v144 = 0;
  v46 = v45;
  sub_1B8A23F14();

  if (!v144)
  {

    v63 = &v139;
    goto LABEL_35;
  }

  v116 = v144;
  v115 = v143;
  v47 = sub_1B8A243B4();
  if (!v47)
  {
    (*(v9 + 8))(v26, v8);

    v65 = &v142;
LABEL_41:
    v71 = *(v65 - 32);

    v64 = &v138;
    goto LABEL_42;
  }

  v143 = 0;
  v144 = 0;
  v48 = v47;
  sub_1B8A23F14();

  if (!v144)
  {

    v63 = &v138;
    goto LABEL_35;
  }

  v114 = v144;
  v113 = v143;
  v49 = sub_1B8A243B4();
  if (!v49)
  {
    (*(v9 + 8))(v26, v8);

    goto LABEL_40;
  }

  v143 = 0;
  v144 = 0;
  v50 = v49;
  sub_1B8A23F14();

  if (!v144)
  {

    v63 = &v137;
    goto LABEL_35;
  }

  if (v125)
  {
    v51 = v122;
    if (v125 != 1)
    {
      (*(v9 + 8))(v26, v8);

LABEL_40:

      v65 = &v137;
      goto LABEL_41;
    }

    v112 = v143;
    v125 = v144;
    v127 = v31;
    v52 = 1;
  }

  else
  {
    v112 = v143;
    v125 = v144;
    v127 = v31;
    v52 = 0;
    v51 = v122;
  }

  type metadata accessor for Sticker.AttributionInfo();
  v122 = sub_1B8A243B4();
  sub_1B89AB538(0, &qword_1EBA91F78, 0x1E695DEF0);
  v67 = sub_1B8A243B4();
  if (v67)
  {
    v68 = v67;
    v111 = sub_1B8A237C4();
    v70 = v69;
  }

  else
  {
    v111 = 0;
    v70 = 0xF000000000000000;
  }

  v74 = sub_1B8A23EF4();
  [a1 decodeDoubleForKey_];
  v76 = v75;

  *(v2 + OBJC_IVAR___STKSticker_type) = v52;
  (*(v9 + 16))(v2 + OBJC_IVAR___STKSticker_identifier, v26, v8);
  *(v2 + OBJC_IVAR___STKSticker_representations) = v124;
  v77 = v128;
  swift_beginAccess();
  v78 = v77[1];
  v79 = v127;
  *v77 = v51;
  v77[1] = v79;

  v80 = (v2 + OBJC_IVAR___STKSticker_name);
  v81 = v123;
  *v80 = v120;
  v80[1] = v81;
  v82 = sub_1B8A052DC(v119);
  if (v83)
  {
    v84 = 0;
  }

  else
  {
    v84 = v82;
  }

  *(v2 + OBJC_IVAR___STKSticker_effect) = v84;
  v85 = v26;
  v86 = v129;
  swift_beginAccess();
  v87 = *v86;
  v88 = v86[1];
  v89 = v111;
  *v86 = v111;
  v86[1] = v70;
  sub_1B89C3C44(v89, v70);
  sub_1B89B4A04(v87, v88);
  v90 = sub_1B8A238A4();
  v140 = 0xD00000000000001BLL;
  v141 = 0x80000001B8A2A9A0;
  MEMORY[0x1B8CC3E20](v90);

  sub_1B89B4A04(v89, v70);
  v91 = v140;
  v92 = v141;
  (*(v9 + 8))(v85, v8);
  v93 = v130;
  swift_beginAccess();
  v94 = v93[1];
  *v93 = v91;
  v93[1] = v92;

  v95 = v131;
  swift_beginAccess();
  v96 = *v95;
  *v95 = v122;

  *(v2 + OBJC_IVAR___STKSticker_byteCount) = v121;
  *(v2 + OBJC_IVAR___STKSticker_creationDate) = v39;
  *(v2 + OBJC_IVAR___STKSticker_lastUsedDate) = v42;
  *(v2 + OBJC_IVAR___STKSticker_libraryIndex) = v76;
  v97 = v132;
  swift_beginAccess();
  v98 = v97[1];
  v99 = v118;
  *v97 = v117;
  v97[1] = v99;

  v100 = v133;
  swift_beginAccess();
  v101 = v100[1];
  v102 = v116;
  *v100 = v115;
  v100[1] = v102;

  v103 = v134;
  swift_beginAccess();
  v104 = v103[1];
  v105 = v114;
  *v103 = v113;
  v103[1] = v105;

  v106 = v135;
  swift_beginAccess();
  v107 = v106[1];
  v108 = v125;
  *v106 = v112;
  v106[1] = v108;

  v109 = type metadata accessor for Sticker(0);
  v136.receiver = v2;
  v136.super_class = v109;
  v110 = objc_msgSendSuper2(&v136, sel_init);

  return v110;
}

void sub_1B89FFDE4(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR___STKSticker_type);
  v5 = sub_1B8A23EF4();
  [a1 encodeInteger:v4 forKey:v5];

  v6 = sub_1B8A238B4();
  v7 = sub_1B8A23EF4();
  [a1 encodeObject:v6 forKey:v7];

  v8 = OBJC_IVAR___STKSticker_representations;
  swift_beginAccess();
  v9 = *(v2 + v8);
  type metadata accessor for Sticker.Representation();

  v10 = sub_1B8A240E4();

  v11 = sub_1B8A23EF4();
  [a1 encodeObject:v10 forKey:v11];

  v12 = (v2 + OBJC_IVAR___STKSticker_accessibilityName);
  swift_beginAccess();
  if (v12[1])
  {
    v13 = *v12;

    v14 = sub_1B8A23EF4();
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_1B8A23EF4();
  [a1 encodeObject:v14 forKey:v15];
  swift_unknownObjectRelease();

  v16 = (v2 + OBJC_IVAR___STKSticker_name);
  swift_beginAccess();
  v18 = *v16;
  v17 = v16[1];

  v19 = sub_1B8A23EF4();

  v20 = sub_1B8A23EF4();
  [a1 encodeObject:v19 forKey:v20];

  v21 = OBJC_IVAR___STKSticker_effect;
  swift_beginAccess();
  v22 = *(v2 + v21);
  v23 = sub_1B8A23EF4();
  [a1 encodeInteger:v22 forKey:v23];

  v24 = (v2 + OBJC_IVAR___STKSticker_metadata);
  swift_beginAccess();
  v25 = 0;
  v26 = v24[1];
  if (v26 >> 60 != 15)
  {
    v27 = *v24;
    sub_1B89B4A18(v27, v26);
    v25 = sub_1B8A237A4();
    sub_1B89B4A04(v27, v26);
  }

  v28 = sub_1B8A23EF4();
  [a1 encodeObject:v25 forKey:v28];
  swift_unknownObjectRelease();

  v29 = OBJC_IVAR___STKSticker_attributionInfo;
  swift_beginAccess();
  v30 = *(v2 + v29);
  v31 = sub_1B8A23EF4();
  [a1 encodeObject:v30 forKey:v31];

  v32 = OBJC_IVAR___STKSticker_byteCount;
  swift_beginAccess();
  v33 = *(v2 + v32);
  v34 = sub_1B8A23EF4();
  [a1 encodeInteger:v33 forKey:v34];

  v35 = OBJC_IVAR___STKSticker_creationDate;
  swift_beginAccess();
  v36 = *(v2 + v35);
  v37 = sub_1B8A23EF4();
  [a1 encodeDouble:v37 forKey:v36];

  v38 = OBJC_IVAR___STKSticker_lastUsedDate;
  swift_beginAccess();
  v39 = *(v2 + v38);
  v40 = sub_1B8A23EF4();
  [a1 encodeDouble:v40 forKey:v39];

  v41 = OBJC_IVAR___STKSticker_libraryIndex;
  swift_beginAccess();
  v42 = *(v2 + v41);
  v43 = sub_1B8A23EF4();
  [a1 encodeDouble:v43 forKey:v42];

  v44 = (v2 + OBJC_IVAR___STKSticker_searchText);
  swift_beginAccess();
  if (v44[1])
  {
    v45 = *v44;

    v46 = sub_1B8A23EF4();
  }

  else
  {
    v46 = 0;
  }

  v47 = sub_1B8A23EF4();
  [a1 encodeObject:v46 forKey:v47];
  swift_unknownObjectRelease();

  v48 = (v2 + OBJC_IVAR___STKSticker_sanitizedPrompt);
  swift_beginAccess();
  if (v48[1])
  {
    v49 = *v48;

    v50 = sub_1B8A23EF4();
  }

  else
  {
    v50 = 0;
  }

  v51 = sub_1B8A23EF4();
  [a1 encodeObject:v50 forKey:v51];
  swift_unknownObjectRelease();

  v52 = (v2 + OBJC_IVAR___STKSticker_rewrittenPrompt);
  swift_beginAccess();
  if (v52[1])
  {
    v53 = *v52;

    v54 = sub_1B8A23EF4();
  }

  else
  {
    v54 = 0;
  }

  v55 = sub_1B8A23EF4();
  [a1 encodeObject:v54 forKey:v55];
  swift_unknownObjectRelease();

  v56 = (v2 + OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier);
  swift_beginAccess();
  if (v56[1])
  {
    v57 = *v56;

    v58 = sub_1B8A23EF4();
  }

  else
  {
    v58 = 0;
  }

  v59 = sub_1B8A23EF4();
  [a1 encodeObject:v58 forKey:v59];
  swift_unknownObjectRelease();
}

uint64_t sub_1B8A00618()
{
  v1 = *v0;
  sub_1B8A24A14();
  MEMORY[0x1B8CC48A0](v1);
  return sub_1B8A24A34();
}

uint64_t sub_1B8A0068C()
{
  v1 = *v0;
  sub_1B8A24A14();
  MEMORY[0x1B8CC48A0](v1);
  return sub_1B8A24A34();
}

uint64_t sub_1B8A006D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B8A052DC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unsigned __int8 *sub_1B8A007C0@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92220, &unk_1B8A281A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v92 - v4;
  v6 = sub_1B8A23904();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91F80, &unk_1B8A26440);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v92 - v13;
  v15 = sub_1B8A23784();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v19;
  sub_1B8A23764();
  if ((*(v20 + 48))(v14, 1, v15) == 1)
  {
    sub_1B89A8A78(v14, &qword_1EBA91F80, &unk_1B8A26440);
LABEL_10:
    type metadata accessor for Sticker.URIType(0);
    return swift_storeEnumTagMultiPayload();
  }

  (*(v20 + 32))(v18, v14, v15);
  v21 = sub_1B8A23754();
  if (!v22)
  {
LABEL_9:
    (*(v20 + 8))(v18, v15);
    goto LABEL_10;
  }

  if (v21 == 0x72656B63697473 && v22 == 0xE700000000000000)
  {
  }

  else
  {
    v24 = sub_1B8A24954();

    if ((v24 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v97 = v20;
  v98 = a1;
  v26 = sub_1B8A236B4();
  v27 = v26;
  v28 = v26[2];
  if ((v28 - 6) < 0xFFFFFFFFFFFFFFFELL)
  {
    goto LABEL_14;
  }

  v30 = v26[6];
  v29 = v26[7];
  v31 = v30 == 1919251317 && v29 == 0xE400000000000000;
  v32 = v31;
  v96 = v32;
  if (!v31 && (sub_1B8A24954() & 1) == 0 && (v30 != 0x746E65636572 || v29 != 0xE600000000000000) && (sub_1B8A24954() & 1) == 0)
  {
    if (v30 == 0x696A6F6D656DLL && v29 == 0xE600000000000000 || (sub_1B8A24954() & 1) != 0)
    {
      if (v28 == 4)
      {
        v43 = v27[8];
        v44 = v27[9];
        v46 = v27[10];
        v45 = v27[11];

        (*(v97 + 8))(v18, v15);
        v47 = v98;
        *v98 = v43;
        v47[1] = v44;
        v47[2] = v46;
        v47[3] = v45;
        type metadata accessor for Sticker.URIType(0);
        return swift_storeEnumTagMultiPayload();
      }
    }

    else if (v30 == 0x696A6F6D65 && v29 == 0xE500000000000000 || (sub_1B8A24954() & 1) != 0)
    {
      if (v28 == 4)
      {
        v62 = v27[8];
        v61 = v27[9];
        v64 = v27[10];
        v63 = v27[11];

        if (v62 == 0x696669746E656469 && v61 == 0xEA00000000007265)
        {

          v65 = v98;
        }

        else
        {
          v85 = sub_1B8A24954();

          v65 = v98;
          if ((v85 & 1) == 0)
          {
            (*(v97 + 8))(v18, v15);

            goto LABEL_10;
          }
        }

        v86 = sub_1B89FEE5C(v64, v63);
        v88 = v87;

        (*(v97 + 8))(v18, v15);
        if (v88)
        {
          *v65 = v86;
          v65[1] = v88;
          type metadata accessor for Sticker.URIType(0);
          return swift_storeEnumTagMultiPayload();
        }

        goto LABEL_10;
      }
    }

    else if (v30 == 0x61705F6472696874 && v29 == 0xEB00000000797472 || (sub_1B8A24954()) && v28 == 5)
    {
      v78 = v27[8];
      v79 = v27[9];
      v81 = v27[10];
      v80 = v27[11];
      v83 = v27[12];
      v82 = v27[13];

      (*(v97 + 8))(v18, v15);
      v84 = v98;
      *v98 = v78;
      v84[1] = v79;
      v84[2] = v81;
      v84[3] = v80;
      v84[4] = v83;
      v84[5] = v82;
      type metadata accessor for Sticker.URIType(0);
      return swift_storeEnumTagMultiPayload();
    }

LABEL_14:
    (*(v97 + 8))(v18, v15);
LABEL_31:

    type metadata accessor for Sticker.URIType(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v28 != 4)
  {
    v39 = *(v97 + 8);

    v39(v18, v15);

    goto LABEL_31;
  }

  v33 = v29;
  v34 = v27[8];
  v35 = v27[9];
  v36 = v27[10];
  v92 = v30;
  v93 = v36;
  v37 = v27[11];
  v95 = v33;

  v94 = v37;

  if (v34 == 0x696669746E656469 && v35 == 0xEA00000000007265)
  {

    v38 = v98;
LABEL_34:

    sub_1B8A23894();

    (*(v97 + 8))(v18, v15);
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      v41 = *(v7 + 32);
      v41(v10, v5, v6);
      v41(v38, v10, v6);
      type metadata accessor for Sticker.URIType(0);
      return swift_storeEnumTagMultiPayload();
    }

    sub_1B89A8A78(v5, &unk_1EBA92220, &unk_1B8A281A0);
    goto LABEL_10;
  }

  v40 = sub_1B8A24954();
  v38 = v98;
  if (v40)
  {

    goto LABEL_34;
  }

  if (v34 == 0x7865646E69 && v35 == 0xE500000000000000)
  {

    v42 = v94;
  }

  else
  {
    v48 = sub_1B8A24954();

    v42 = v94;
    if ((v48 & 1) == 0)
    {
      (*(v97 + 8))(v18, v15);

      goto LABEL_10;
    }
  }

  v49 = HIBYTE(v42) & 0xF;
  result = v93;
  v50 = v93 & 0xFFFFFFFFFFFFLL;
  if ((v42 & 0x2000000000000000) != 0)
  {
    v51 = HIBYTE(v42) & 0xF;
  }

  else
  {
    v51 = v93 & 0xFFFFFFFFFFFFLL;
  }

  v52 = v95;
  if (!v51)
  {

    goto LABEL_116;
  }

  if ((v42 & 0x1000000000000000) == 0)
  {
    if ((v42 & 0x2000000000000000) != 0)
    {
      v99[0] = v93;
      v99[1] = v42 & 0xFFFFFFFFFFFFFFLL;
      if (v93 == 43)
      {
        if (v49)
        {
          if (--v49)
          {
            v54 = 0;
            v69 = v99 + 1;
            while (1)
            {
              v70 = *v69 - 48;
              if (v70 > 9)
              {
                break;
              }

              v71 = 10 * v54;
              if ((v54 * 10) >> 64 != (10 * v54) >> 63)
              {
                break;
              }

              v54 = v71 + v70;
              if (__OFADD__(v71, v70))
              {
                break;
              }

              ++v69;
              if (!--v49)
              {
                goto LABEL_115;
              }
            }
          }

          goto LABEL_114;
        }

LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

      if (v93 != 45)
      {
        if (v49)
        {
          v54 = 0;
          v74 = v99;
          while (1)
          {
            v75 = *v74 - 48;
            if (v75 > 9)
            {
              break;
            }

            v76 = 10 * v54;
            if ((v54 * 10) >> 64 != (10 * v54) >> 63)
            {
              break;
            }

            v54 = v76 + v75;
            if (__OFADD__(v76, v75))
            {
              break;
            }

            ++v74;
            if (!--v49)
            {
              goto LABEL_115;
            }
          }
        }

        goto LABEL_114;
      }

      if (v49)
      {
        if (--v49)
        {
          v54 = 0;
          v58 = v99 + 1;
          while (1)
          {
            v59 = *v58 - 48;
            if (v59 > 9)
            {
              break;
            }

            v60 = 10 * v54;
            if ((v54 * 10) >> 64 != (10 * v54) >> 63)
            {
              break;
            }

            v54 = v60 - v59;
            if (__OFSUB__(v60, v59))
            {
              break;
            }

            ++v58;
            if (!--v49)
            {
              goto LABEL_115;
            }
          }
        }

        goto LABEL_114;
      }
    }

    else
    {
      if ((v93 & 0x1000000000000000) != 0)
      {
        result = ((v42 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_1B8A246A4();
      }

      v53 = *result;
      if (v53 == 43)
      {
        if (v50 >= 1)
        {
          v49 = v50 - 1;
          if (v50 != 1)
          {
            v54 = 0;
            if (result)
            {
              v66 = result + 1;
              while (1)
              {
                v67 = *v66 - 48;
                if (v67 > 9)
                {
                  goto LABEL_114;
                }

                v68 = 10 * v54;
                if ((v54 * 10) >> 64 != (10 * v54) >> 63)
                {
                  goto LABEL_114;
                }

                v54 = v68 + v67;
                if (__OFADD__(v68, v67))
                {
                  goto LABEL_114;
                }

                ++v66;
                if (!--v49)
                {
                  goto LABEL_115;
                }
              }
            }

            goto LABEL_106;
          }

          goto LABEL_114;
        }

        goto LABEL_140;
      }

      if (v53 != 45)
      {
        if (v50)
        {
          v54 = 0;
          if (result)
          {
            while (1)
            {
              v72 = *result - 48;
              if (v72 > 9)
              {
                goto LABEL_114;
              }

              v73 = 10 * v54;
              if ((v54 * 10) >> 64 != (10 * v54) >> 63)
              {
                goto LABEL_114;
              }

              v54 = v73 + v72;
              if (__OFADD__(v73, v72))
              {
                goto LABEL_114;
              }

              ++result;
              if (!--v50)
              {
                goto LABEL_106;
              }
            }
          }

          goto LABEL_106;
        }

LABEL_114:
        v54 = 0;
        LOBYTE(v49) = 1;
LABEL_115:
        v100 = v49;
        v77 = v49;

        if (v77)
        {
LABEL_116:

          (*(v97 + 8))(v18, v15);
          goto LABEL_10;
        }

        goto LABEL_129;
      }

      if (v50 >= 1)
      {
        v49 = v50 - 1;
        if (v50 != 1)
        {
          v54 = 0;
          if (result)
          {
            v55 = result + 1;
            while (1)
            {
              v56 = *v55 - 48;
              if (v56 > 9)
              {
                goto LABEL_114;
              }

              v57 = 10 * v54;
              if ((v54 * 10) >> 64 != (10 * v54) >> 63)
              {
                goto LABEL_114;
              }

              v54 = v57 - v56;
              if (__OFSUB__(v57, v56))
              {
                goto LABEL_114;
              }

              ++v55;
              if (!--v49)
              {
                goto LABEL_115;
              }
            }
          }

LABEL_106:
          LOBYTE(v49) = 0;
          goto LABEL_115;
        }

        goto LABEL_114;
      }

      __break(1u);
    }

    __break(1u);
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  v54 = sub_1B8A03EA4(v93, v42, 10);
  v90 = v89;

  if (v90)
  {
    goto LABEL_116;
  }

LABEL_129:
  if (v96 & 1) != 0 || (sub_1B8A24954())
  {
    (*(v97 + 8))(v18, v15);

    *v38 = v54;
    *(v38 + 8) = 1;
    goto LABEL_10;
  }

  if (v92 == 0x746E65636572 && v52 == 0xE600000000000000)
  {

    (*(v97 + 8))(v18, v15);
LABEL_136:
    *v38 = v54;
    *(v38 + 8) = 0;
    goto LABEL_10;
  }

  v91 = sub_1B8A24954();

  result = (*(v97 + 8))(v18, v15);
  if (v91)
  {
    goto LABEL_136;
  }

LABEL_142:
  __break(1u);
  return result;
}

unint64_t sub_1B8A01448()
{
  v0 = sub_1B8A238A4();
  MEMORY[0x1B8CC3E20](v0);

  return 0xD00000000000001BLL;
}

unint64_t sub_1B8A014B0()
{
  sub_1B8A24634();

  v0 = sub_1B8A24934();
  MEMORY[0x1B8CC3E20](v0);

  return 0xD000000000000016;
}

uint64_t sub_1B8A01544()
{
  sub_1B8A24634();
  MEMORY[0x1B8CC3E20](0xD00000000000001CLL, 0x80000001B8A2B190);
  sub_1B8A23EA4();
  return 0;
}

unint64_t sub_1B8A015D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B8A24634();

  MEMORY[0x1B8CC3E20](a1, a2);
  MEMORY[0x1B8CC3E20](47, 0xE100000000000000);
  MEMORY[0x1B8CC3E20](a3, a4);
  return 0xD000000000000012;
}

id Sticker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1B8A01720(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0x6E65736572706572;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6E756F4365747962;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0x6554686372616573;
      break;
    case 7:
      result = 0x657A6974696E6173;
      break;
    case 8:
      result = 0x6574746972776572;
      break;
    case 9:
      result = 0xD00000000000001FLL;
      break;
    case 10:
      result = 0x746365666665;
      break;
    case 11:
      result = 0x617461646174656DLL;
      break;
    case 12:
      result = 0x6C616E7265747865;
      break;
    case 13:
      result = 0x7475626972747461;
      break;
    case 14:
      result = 0x6E6F697461657263;
      break;
    case 15:
      result = 0x646573557473616CLL;
      break;
    case 16:
      result = 0x497972617262696CLL;
      break;
    case 17:
      result = 0xD000000000000014;
      break;
    case 18:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B8A01974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B8A071D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B8A019A8(uint64_t a1)
{
  v2 = sub_1B8A059B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8A019E4(uint64_t a1)
{
  v2 = sub_1B8A059B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id Sticker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Sticker(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B8A01B98(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92220, &unk_1B8A281A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v62 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F88, &qword_1B8A284C0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v62 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B8A059B8();
  sub_1B8A24A64();
  v82 = *(v2 + OBJC_IVAR___STKSticker_type);
  LOBYTE(v81) = 0;
  sub_1B89AA61C();
  v14 = v83;
  sub_1B8A248F4();
  if (v14)
  {
    return (*(v9 + 8))(v12, v8);
  }

  v83 = v9;
  v64 = v7;
  v82 = 1;
  v16 = sub_1B8A23904();
  sub_1B8A05C8C(&unk_1EBA91650, MEMORY[0x1E69695A8]);
  sub_1B8A248F4();
  v17 = OBJC_IVAR___STKSticker_representations;
  swift_beginAccess();
  v81 = *(v2 + v17);
  v80 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91B08, &qword_1B8A267C0);
  sub_1B8A05A60(&unk_1EBA914B0, &unk_1EBA91518);
  sub_1B8A248F4();
  v62[1] = v16;
  v63 = v2;
  v18 = (v2 + OBJC_IVAR___STKSticker_accessibilityName);
  swift_beginAccess();
  v19 = v12;
  v20 = *v18;
  v21 = v18[1];
  v80 = 3;

  sub_1B8A24884();

  v22 = OBJC_IVAR___STKSticker_byteCount;
  v23 = v63;
  swift_beginAccess();
  v24 = *(v23 + v22);
  v79 = 4;
  sub_1B8A248E4();
  v25 = (v23 + OBJC_IVAR___STKSticker_name);
  swift_beginAccess();
  v26 = *v25;
  v27 = v25[1];
  v78 = 5;

  sub_1B8A248B4();

  v28 = (v63 + OBJC_IVAR___STKSticker_searchText);
  swift_beginAccess();
  v29 = *v28;
  v30 = v28[1];
  v77 = 6;

  sub_1B8A24884();

  v31 = (v63 + OBJC_IVAR___STKSticker_sanitizedPrompt);
  swift_beginAccess();
  v32 = *v31;
  v33 = v31[1];
  v76 = 7;

  sub_1B8A24884();

  v34 = (v63 + OBJC_IVAR___STKSticker_rewrittenPrompt);
  swift_beginAccess();
  v35 = *v34;
  v36 = v34[1];
  v75 = 8;

  sub_1B8A24884();

  v37 = (v63 + OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier);
  swift_beginAccess();
  v38 = *v37;
  v39 = v37[1];
  v74 = 9;

  sub_1B8A24884();

  v40 = OBJC_IVAR___STKSticker_effect;
  v41 = v63;
  swift_beginAccess();
  v73 = *(v41 + v40);
  LOBYTE(v71) = 10;
  sub_1B8A05A0C();
  sub_1B8A248F4();
  v42 = (v63 + OBJC_IVAR___STKSticker_metadata);
  swift_beginAccess();
  v43 = v42[1];
  v71 = *v42;
  v72 = v43;
  v70 = 11;
  sub_1B89C3C44(v71, v43);
  sub_1B89CDFE4();
  sub_1B8A248A4();
  sub_1B89B4A04(v71, v72);
  v44 = (v63 + OBJC_IVAR___STKSticker_externalURI);
  swift_beginAccess();
  v45 = *v44;
  v46 = v44[1];
  v70 = 12;

  sub_1B8A24884();

  v47 = OBJC_IVAR___STKSticker_attributionInfo;
  v48 = v63;
  swift_beginAccess();
  v69 = *(v48 + v47);
  v68 = 13;
  type metadata accessor for Sticker.AttributionInfo();
  sub_1B8A05C8C(&qword_1EBA91510, type metadata accessor for Sticker.AttributionInfo);
  sub_1B8A248A4();
  v49 = OBJC_IVAR___STKSticker_creationDate;
  v50 = v63;
  swift_beginAccess();
  v51 = *(v50 + v49);
  v68 = 14;
  sub_1B8A248D4();
  v52 = OBJC_IVAR___STKSticker_lastUsedDate;
  v53 = v63;
  swift_beginAccess();
  v54 = *(v53 + v52);
  v67 = 15;
  sub_1B8A248D4();
  v55 = OBJC_IVAR___STKSticker_libraryIndex;
  v56 = v63;
  swift_beginAccess();
  v57 = *(v56 + v55);
  v66 = 16;
  sub_1B8A248D4();
  v58 = OBJC_IVAR___STKSticker__companionRecentUUID;
  v59 = v63;
  swift_beginAccess();
  v60 = v64;
  sub_1B89AF268(v59 + v58, v64, &unk_1EBA92220, &unk_1B8A281A0);
  v65 = 17;
  sub_1B8A248A4();
  sub_1B89A8A78(v60, &unk_1EBA92220, &unk_1B8A281A0);
  v61 = *(v63 + OBJC_IVAR___STKSticker_animatedVariantIsPreferred);
  v65 = 18;
  sub_1B8A24894();
  return (*(v83 + 8))(v19, v8);
}

char *Sticker.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92220, &unk_1B8A281A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v92 = v89 - v5;
  v6 = sub_1B8A23904();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F98, &qword_1B8A284C8);
  v93 = *(v95 - 8);
  v11 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v13 = v89 - v12;
  v14 = &v1[OBJC_IVAR___STKSticker_accessibilityName];
  *v14 = 0;
  v14[1] = 0;
  v118 = v14;
  v15 = &v1[OBJC_IVAR___STKSticker_searchText];
  *v15 = 0;
  v15[1] = 0;
  v104 = v15;
  v16 = &v1[OBJC_IVAR___STKSticker_sanitizedPrompt];
  *v16 = 0;
  *(v16 + 1) = 0;
  v106 = v16;
  v17 = &v1[OBJC_IVAR___STKSticker_rewrittenPrompt];
  *v17 = 0;
  v17[1] = 0;
  v103 = v17;
  v18 = &v1[OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier];
  *v18 = 0;
  v18[1] = 0;
  v102 = v18;
  v101 = &v1[OBJC_IVAR___STKSticker_metadata];
  *&v1[OBJC_IVAR___STKSticker_metadata] = xmmword_1B8A26F80;
  v19 = &v1[OBJC_IVAR___STKSticker_externalURI];
  *v19 = 0;
  v19[1] = 0;
  v100 = v19;
  v99 = OBJC_IVAR___STKSticker_attributionInfo;
  *&v1[OBJC_IVAR___STKSticker_attributionInfo] = 0;
  v20 = *(v7 + 56);
  v98 = OBJC_IVAR___STKSticker__companionRecentUUID;
  v20(&v1[OBJC_IVAR___STKSticker__companionRecentUUID], 1, 1, v6);
  v21 = OBJC_IVAR___STKSticker_animatedVariantIsPreferred;
  v105 = v1;
  v1[OBJC_IVAR___STKSticker_animatedVariantIsPreferred] = 2;
  v22 = a1[3];
  v23 = a1[4];
  v97 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v22);
  sub_1B8A059B8();
  v94 = v13;
  v24 = v96;
  sub_1B8A24A54();
  if (v24)
  {
    v26 = v104;
    v27 = v105;
    __swift_destroy_boxed_opaque_existential_0(v97);
    v28 = v118[1];

    v29 = v26[1];

    v30 = *(v106 + 1);

    v31 = v103[1];

    v32 = v102[1];

    sub_1B89B4A04(*v101, *(v101 + 1));
    v33 = v100[1];

    sub_1B89A8A78(v27 + v98, &unk_1EBA92220, &unk_1B8A281A0);
    type metadata accessor for Sticker(0);
    v34 = *((*MEMORY[0x1E69E7D40] & *v27) + 0x30);
    v35 = *((*MEMORY[0x1E69E7D40] & *v27) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v90 = v21;
    v25 = v93;
    v91 = v7;
    v96 = v6;
    v116 = 0;
    sub_1B89ADD08();
    sub_1B8A24854();
    v37 = v105;
    *(v105 + OBJC_IVAR___STKSticker_type) = v117;
    LOBYTE(v117) = 1;
    v38 = sub_1B8A05C8C(&qword_1ED82DE80, MEMORY[0x1E69695A8]);
    v39 = v96;
    sub_1B8A24854();
    v40 = v104;
    v89[2] = v38;
    (*(v91 + 32))(v37 + OBJC_IVAR___STKSticker_identifier, v10, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91B08, &qword_1B8A267C0);
    v116 = 2;
    sub_1B8A05A60(&qword_1ED82DBD0, &qword_1ED82DC38);
    sub_1B8A24854();
    *(v37 + OBJC_IVAR___STKSticker_representations) = v117;
    LOBYTE(v117) = 3;
    v89[1] = 0;
    v41 = sub_1B8A247C4();
    v43 = v42;
    v44 = v118;
    swift_beginAccess();
    v45 = v44[1];
    *v44 = v41;
    v44[1] = v43;

    v116 = 4;
    *(v37 + OBJC_IVAR___STKSticker_byteCount) = sub_1B8A24844();
    v116 = 5;
    v46 = sub_1B8A24814();
    v47 = (v37 + OBJC_IVAR___STKSticker_name);
    *v47 = v46;
    v47[1] = v48;
    v116 = 6;
    v49 = sub_1B8A247C4();
    v51 = v50;
    swift_beginAccess();
    v52 = v40[1];
    *v40 = v49;
    v40[1] = v51;

    v115 = 7;
    v89[0] = sub_1B8A247C4();
    v54 = v53;
    v55 = v106;
    swift_beginAccess();
    v56 = v55[1];
    *v55 = v89[0];
    v55[1] = v54;

    v114 = 8;
    v57 = sub_1B8A247C4();
    v59 = v58;
    v60 = v103;
    swift_beginAccess();
    v61 = v60[1];
    *v60 = v57;
    v60[1] = v59;

    v113 = 9;
    v62 = sub_1B8A247C4();
    v64 = v63;
    v65 = v102;
    swift_beginAccess();
    v66 = v65[1];
    *v65 = v62;
    v65[1] = v64;

    LOBYTE(v110) = 10;
    sub_1B8A05AFC();
    sub_1B8A24854();
    *(v105 + OBJC_IVAR___STKSticker_effect) = v112;
    LOBYTE(v112) = 11;
    sub_1B89ADF2C();
    sub_1B8A247F4();
    v67 = v110;
    v68 = v111;
    v69 = v101;
    swift_beginAccess();
    v70 = *v69;
    v71 = v69[1];
    *v69 = v67;
    v69[1] = v68;
    sub_1B89B4A04(v70, v71);
    LOBYTE(v110) = 12;
    v72 = sub_1B8A247C4();
    v74 = v73;
    v75 = v100;
    swift_beginAccess();
    v76 = v75[1];
    *v75 = v72;
    v75[1] = v74;

    type metadata accessor for Sticker.AttributionInfo();
    v109 = 13;
    sub_1B8A05C8C(&qword_1ED82DC00, type metadata accessor for Sticker.AttributionInfo);
    sub_1B8A247F4();
    v77 = v108;
    v78 = v99;
    v79 = v105;
    swift_beginAccess();
    v80 = *(v79 + v78);
    *(v79 + v78) = v77;

    LOBYTE(v108) = 14;
    sub_1B8A24834();
    *(v105 + OBJC_IVAR___STKSticker_creationDate) = v81;
    LOBYTE(v108) = 15;
    sub_1B8A24834();
    *(v105 + OBJC_IVAR___STKSticker_lastUsedDate) = v82;
    LOBYTE(v108) = 16;
    sub_1B8A24834();
    *(v105 + OBJC_IVAR___STKSticker_libraryIndex) = v83;
    LOBYTE(v108) = 17;
    sub_1B8A247F4();
    v84 = v98;
    v85 = v105;
    swift_beginAccess();
    sub_1B89DD9E4(v92, v85 + v84);
    swift_endAccess();
    LOBYTE(v108) = 18;
    v86 = sub_1B8A247D4();
    v87 = v105;
    *(v105 + v90) = v86;
    v88 = type metadata accessor for Sticker(0);
    v107.receiver = v87;
    v107.super_class = v88;
    v10 = objc_msgSendSuper2(&v107, sel_init);
    (*(v25 + 8))(v94, v95);
    __swift_destroy_boxed_opaque_existential_0(v97);
  }

  return v10;
}

char *sub_1B8A03384@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for Sticker(0));
  result = Sticker.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1B8A03400@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR___STKSticker_identifier;
  v5 = sub_1B8A23904();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t StickerError.hashValue.getter()
{
  sub_1B8A24A14();
  MEMORY[0x1B8CC48A0](0);
  return sub_1B8A24A34();
}

uint64_t sub_1B8A03528@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
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
    v10 = sub_1B8A23594();
    if (v10)
    {
      v11 = sub_1B8A235B4();
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
      result = sub_1B8A235A4();
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
      v19 = *MEMORY[0x1E69E9840];
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
  v10 = sub_1B8A23594();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1B8A235B4();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1B8A235A4();
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

uint64_t sub_1B8A03758(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x1E69E9840];
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
    v10 = sub_1B8A048A4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1B89AFC38(a3, a4);
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
  sub_1B8A03528(v14, a3, a4, &v13);
  v10 = v4;
  sub_1B89AFC38(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

char *sub_1B8A038E8(char *a1, int64_t a2, char a3)
{
  result = sub_1B8A039B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B8A03908(size_t a1, int64_t a2, char a3)
{
  result = sub_1B8A03BC0(a1, a2, a3, *v3, &qword_1EBA92050, ".p", MEMORY[0x1E6969530]);
  *v3 = result;
  return result;
}

char *sub_1B8A0394C(char *a1, int64_t a2, char a3)
{
  result = sub_1B8A03ABC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B8A0396C(size_t a1, int64_t a2, char a3)
{
  result = sub_1B8A03BC0(a1, a2, a3, *v3, &qword_1EBA91C00, &qword_1B8A271C0, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

char *sub_1B8A039B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F30, &qword_1B8A26600);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B8A03ABC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92070, &qword_1B8A27038);
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
    v10 = MEMORY[0x1E69E7CC0];
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

size_t sub_1B8A03BC0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t (*sub_1B8A03D9C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B8CC44E0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1B8A07848;
  }

  __break(1u);
  return result;
}

void (*sub_1B8A03E1C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B8CC44E0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1B8A03E9C;
  }

  __break(1u);
  return result;
}

unsigned __int8 *sub_1B8A03EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1B8A24034();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B8A04430();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1B8A246A4();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1B8A04430()
{
  v0 = sub_1B8A24044();
  v4 = sub_1B8A044B0(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1B8A044B0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1B8A23F84();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1B8A24454();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1B89A9408(v9, 0);
  v12 = sub_1B8A04608(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1B8A23F84();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1B8A246A4();
LABEL_4:

  return sub_1B8A23F84();
}

unint64_t sub_1B8A04608(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1B8A04828(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1B8A23FE4();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1B8A246A4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1B8A04828(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1B8A23FC4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1B8A04828(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1B8A23FF4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1B8CC3E50](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1B8A048A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1B8A23594();
  v11 = result;
  if (result)
  {
    result = sub_1B8A235B4();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1B8A235A4();
  sub_1B8A03528(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1B8A0495C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_1B89B4A18(a3, a4);
          return sub_1B8A03758(v13, a2, a3, a4) & 1;
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

uint64_t sub_1B8A04AC4(_BYTE *a1)
{
  if (*a1)
  {
    v1 = 1919251317;
  }

  else
  {
    v1 = 0x746E65636572;
  }

  if (*a1)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE600000000000000;
  }

  sub_1B8A24634();

  MEMORY[0x1B8CC3E20](v1, v2);

  MEMORY[0x1B8CC3E20](0x6669746E6564692FLL, 0xEC0000002F726569);
  sub_1B8A23904();
  sub_1B8A05C8C(&qword_1ED82DE78, MEMORY[0x1E69695A8]);
  v3 = sub_1B8A24934();
  MEMORY[0x1B8CC3E20](v3);

  return 0x3A72656B63697473;
}

char *sub_1B8A04C00(unsigned __int8 *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v12 = v11;
  v81 = a7;
  v78 = a6;
  v77 = a5;
  v75 = a4;
  v74 = a3;
  v16 = sub_1B8A23904();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = &v12[OBJC_IVAR___STKSticker_accessibilityName];
  *v21 = 0;
  v21[1] = 0;
  v80 = v21;
  v22 = &v12[OBJC_IVAR___STKSticker_searchText];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v12[OBJC_IVAR___STKSticker_sanitizedPrompt];
  *v23 = 0;
  v23[1] = 0;
  v24 = &v12[OBJC_IVAR___STKSticker_rewrittenPrompt];
  *v24 = 0;
  v24[1] = 0;
  v25 = &v12[OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier];
  *v25 = 0;
  v25[1] = 0;
  v26 = &v12[OBJC_IVAR___STKSticker_metadata];
  *&v12[OBJC_IVAR___STKSticker_metadata] = xmmword_1B8A26F80;
  v27 = &v12[OBJC_IVAR___STKSticker_externalURI];
  *v27 = 0;
  v27[1] = 0;
  v76 = v27;
  v79 = OBJC_IVAR___STKSticker_attributionInfo;
  *&v12[OBJC_IVAR___STKSticker_attributionInfo] = 0;
  LODWORD(a1) = *a1;
  (*(v17 + 56))(&v12[OBJC_IVAR___STKSticker__companionRecentUUID], 1, 1, v16);
  v12[OBJC_IVAR___STKSticker_animatedVariantIsPreferred] = 2;
  sub_1B8A238F4();
  v73 = a1;
  v12[OBJC_IVAR___STKSticker_type] = a1;
  (*(v17 + 16))(&v12[OBJC_IVAR___STKSticker_identifier], v20, v16);
  *&v12[OBJC_IVAR___STKSticker_representations] = a2;
  if (a2 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
  {
    v82 = a8;
    v29 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v85 = MEMORY[0x1E69E7CC0];

      result = sub_1B8A0394C(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v70 = v20;
      v71 = v17;
      v72 = v16;
      v29 = v85;
      if ((a2 & 0xC000000000000001) != 0)
      {
        for (j = 0; j != i; ++j)
        {
          v32 = MEMORY[0x1B8CC44E0](j, a2);
          v33 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v34 = *(v32 + v33);
          swift_unknownObjectRelease();
          v85 = v29;
          v36 = v29[2];
          v35 = v29[3];
          if (v36 >= v35 >> 1)
          {
            sub_1B8A0394C((v35 > 1), v36 + 1, 1);
            v29 = v85;
          }

          v29[2] = v36 + 1;
          v29[v36 + 4] = v34;
        }
      }

      else
      {
        v37 = 32;
        do
        {
          v38 = *(a2 + v37);
          v39 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v40 = *(v38 + v39);
          v85 = v29;
          v42 = v29[2];
          v41 = v29[3];
          if (v42 >= v41 >> 1)
          {
            sub_1B8A0394C((v41 > 1), v42 + 1, 1);
            v29 = v85;
          }

          v29[2] = v42 + 1;
          v29[v42 + 4] = v40;
          v37 += 8;
          --i;
        }

        while (i);
      }

      v16 = v72;
      v17 = v71;
      v20 = v70;
    }

    v43 = v29[2];
    if (!v43)
    {
      break;
    }

    a8 = 0;
    v44 = v29 + 4;
    while (1)
    {
      v45 = *v44++;
      v46 = __OFADD__(a8, v45);
      a8 += v45;
      if (v46)
      {
        break;
      }

      if (!--v43)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    ;
  }

  a8 = 0;
LABEL_22:

  *&v12[OBJC_IVAR___STKSticker_byteCount] = a8;
  v47 = &v12[OBJC_IVAR___STKSticker_name];
  v48 = v75;
  *v47 = v74;
  v47[1] = v48;
  *&v12[OBJC_IVAR___STKSticker_effect] = 0;
  swift_beginAccess();
  v49 = *v26;
  v50 = v26[1];
  v51 = v77;
  v52 = v78;
  *v26 = v77;
  v26[1] = v52;
  sub_1B89C3C44(v51, v52);
  sub_1B89B4A04(v49, v50);
  v54 = v81;
  v53 = v82;
  if (!v82)
  {
    v84[0] = v73;
    v54 = sub_1B8A04AC4(v84);
    v53 = v55;
  }

  v56 = v76;
  swift_beginAccess();
  v57 = v56[1];
  *v56 = v54;
  v56[1] = v53;

  v58 = v80;
  swift_beginAccess();
  v59 = v58[1];
  *v58 = a9;
  v58[1] = a10;

  v60 = v79;
  swift_beginAccess();
  v61 = *&v12[v60];
  *&v12[v60] = a11;
  v62 = a11;

  v63 = [objc_opt_self() currentEnvironment];
  v64 = [v63 timeProvider];

  [v64 timestamp];
  v66 = v65;
  swift_unknownObjectRelease();
  *&v12[OBJC_IVAR___STKSticker_creationDate] = v66;
  *&v12[OBJC_IVAR___STKSticker_lastUsedDate] = v66;
  *&v12[OBJC_IVAR___STKSticker_libraryIndex] = 0;
  v67 = type metadata accessor for Sticker(0);
  v83.receiver = v12;
  v83.super_class = v67;
  v68 = objc_msgSendSuper2(&v83, sel_init);
  sub_1B89FE9A8();

  (*(v17 + 8))(v20, v16);
  return v68;
}

unint64_t sub_1B8A051FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B8A24634();

  MEMORY[0x1B8CC3E20](a1, a2);
  MEMORY[0x1B8CC3E20](47, 0xE100000000000000);
  MEMORY[0x1B8CC3E20](a3, a4);
  MEMORY[0x1B8CC3E20](47, 0xE100000000000000);
  MEMORY[0x1B8CC3E20](a5, a6);
  return 0xD000000000000017;
}

uint64_t sub_1B8A052DC(uint64_t result)
{
  if ((result + 1) >= 6)
  {
    return 0;
  }

  return result;
}

char *sub_1B8A052F4(unsigned __int8 *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v75 = a6;
  v74 = a5;
  v72 = a4;
  v71 = a3;
  v14 = sub_1B8A23904();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &v9[OBJC_IVAR___STKSticker_accessibilityName];
  *v19 = 0;
  v19[1] = 0;
  v77 = v19;
  v20 = &v9[OBJC_IVAR___STKSticker_searchText];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v9[OBJC_IVAR___STKSticker_sanitizedPrompt];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v9[OBJC_IVAR___STKSticker_rewrittenPrompt];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v9[OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier];
  *v23 = 0;
  v23[1] = 0;
  v24 = &v9[OBJC_IVAR___STKSticker_metadata];
  *&v9[OBJC_IVAR___STKSticker_metadata] = xmmword_1B8A26F80;
  v25 = &v9[OBJC_IVAR___STKSticker_externalURI];
  *v25 = 0;
  v25[1] = 0;
  v73 = v25;
  v76 = OBJC_IVAR___STKSticker_attributionInfo;
  *&v9[OBJC_IVAR___STKSticker_attributionInfo] = 0;
  LODWORD(a1) = *a1;
  (*(v15 + 56))(&v9[OBJC_IVAR___STKSticker__companionRecentUUID], 1, 1, v14);
  v9[OBJC_IVAR___STKSticker_animatedVariantIsPreferred] = 2;
  sub_1B8A238F4();
  v70 = a1;
  v9[OBJC_IVAR___STKSticker_type] = a1;
  (*(v15 + 16))(&v9[OBJC_IVAR___STKSticker_identifier], v18, v14);
  *&v9[OBJC_IVAR___STKSticker_representations] = a2;
  if (a2 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
  {
    v78 = a7;
    v27 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v81 = MEMORY[0x1E69E7CC0];

      result = sub_1B8A0394C(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v66 = a8;
      v67 = v18;
      v68 = v15;
      v69 = v14;
      v27 = v81;
      if ((a2 & 0xC000000000000001) != 0)
      {
        for (j = 0; j != i; ++j)
        {
          v30 = MEMORY[0x1B8CC44E0](j, a2);
          v31 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v32 = *(v30 + v31);
          swift_unknownObjectRelease();
          v81 = v27;
          v34 = v27[2];
          v33 = v27[3];
          if (v34 >= v33 >> 1)
          {
            sub_1B8A0394C((v33 > 1), v34 + 1, 1);
            v27 = v81;
          }

          v27[2] = v34 + 1;
          v27[v34 + 4] = v32;
        }
      }

      else
      {
        v35 = 32;
        do
        {
          v36 = *(a2 + v35);
          v37 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v38 = *(v36 + v37);
          v81 = v27;
          v40 = v27[2];
          v39 = v27[3];
          if (v40 >= v39 >> 1)
          {
            sub_1B8A0394C((v39 > 1), v40 + 1, 1);
            v27 = v81;
          }

          v27[2] = v40 + 1;
          v27[v40 + 4] = v38;
          v35 += 8;
          --i;
        }

        while (i);
      }

      v14 = v69;
      v15 = v68;
      v18 = v67;
      a8 = v66;
    }

    v41 = v27[2];
    if (!v41)
    {
      break;
    }

    a7 = 0;
    v42 = v27 + 4;
    while (1)
    {
      v43 = *v42++;
      v44 = __OFADD__(a7, v43);
      a7 += v43;
      if (v44)
      {
        break;
      }

      if (!--v41)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    ;
  }

  a7 = 0;
LABEL_22:

  *&v9[OBJC_IVAR___STKSticker_byteCount] = a7;
  v45 = &v9[OBJC_IVAR___STKSticker_name];
  v46 = v72;
  *v45 = v71;
  v45[1] = v46;
  *&v9[OBJC_IVAR___STKSticker_effect] = 0;
  swift_beginAccess();
  v47 = *v24;
  v48 = v24[1];
  v49 = v74;
  v50 = v75;
  *v24 = v74;
  v24[1] = v50;
  sub_1B89C3C44(v49, v50);
  sub_1B89B4A04(v47, v48);
  v51 = v78;
  if (!a8)
  {
    v80[0] = v70;
    v51 = sub_1B8A04AC4(v80);
    a8 = v52;
  }

  v53 = v73;
  swift_beginAccess();
  v54 = v53[1];
  *v53 = v51;
  v53[1] = a8;

  v55 = v77;
  swift_beginAccess();
  v56 = v55[1];
  *v55 = 0;
  v55[1] = 0;

  v57 = v76;
  swift_beginAccess();
  v58 = *&v9[v57];
  *&v9[v57] = 0;

  v59 = [objc_opt_self() currentEnvironment];
  v60 = [v59 timeProvider];

  [v60 timestamp];
  v62 = v61;
  swift_unknownObjectRelease();
  *&v9[OBJC_IVAR___STKSticker_creationDate] = v62;
  *&v9[OBJC_IVAR___STKSticker_lastUsedDate] = v62;
  *&v9[OBJC_IVAR___STKSticker_libraryIndex] = 0;
  v63 = type metadata accessor for Sticker(0);
  v79.receiver = v9;
  v79.super_class = v63;
  v64 = objc_msgSendSuper2(&v79, sel_init);
  sub_1B89FE9A8();

  (*(v15 + 8))(v18, v14);
  return v64;
}

uint64_t sub_1B8A058EC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  type metadata accessor for Sticker.Representation();
  return sub_1B8A24404() & 1;
}

unint64_t sub_1B8A05944()
{
  result = qword_1EBA91F60;
  if (!qword_1EBA91F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91F60);
  }

  return result;
}

unint64_t sub_1B8A059B8()
{
  result = qword_1ED82DC80;
  if (!qword_1ED82DC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DC80);
  }

  return result;
}

unint64_t sub_1B8A05A0C()
{
  result = qword_1EBA91500;
  if (!qword_1EBA91500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91500);
  }

  return result;
}

uint64_t sub_1B8A05A60(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA91B08, &qword_1B8A267C0);
    sub_1B8A05C8C(a2, type metadata accessor for Sticker.Representation);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B8A05AFC()
{
  result = qword_1ED82DBE0;
  if (!qword_1ED82DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DBE0);
  }

  return result;
}

unint64_t sub_1B8A05B54()
{
  result = qword_1EBA91FA8;
  if (!qword_1EBA91FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91FA8);
  }

  return result;
}

unint64_t sub_1B8A05BF0()
{
  result = qword_1EBA91FC0;
  if (!qword_1EBA91FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91FC0);
  }

  return result;
}

uint64_t sub_1B8A05C8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B8A05CD8()
{
  result = qword_1EBA91FD0;
  if (!qword_1EBA91FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91FD0);
  }

  return result;
}

uint64_t keypath_set_9Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t keypath_get_6Tm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

double keypath_get_28Tm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

uint64_t keypath_set_29Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

void sub_1B8A05E80()
{
  v0 = sub_1B8A23904();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B8A06D00();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of Sticker.__allocating_init(type:identifier:representations:name:effect:byteCount:metadata:externalURI:accessibilityName:attributionInfo:searchText:creationDate:lastUsedDate:libraryIndex:sanitizedPrompt:rewrittenPrompt:promptPrimaryLanguageIdentifier:prefersAnimation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *(v20 + 688);
  LOBYTE(a19) = a19 & 1;
  v23 = a8 & 1;

  return v22(a1, a2, a3, a4, a5, a6, a7, v23, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void sub_1B8A06D00()
{
  if (!qword_1ED82F440)
  {
    sub_1B8A23904();
    v0 = sub_1B8A24444();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED82F440);
    }
  }
}

void sub_1B8A06D68()
{
  sub_1B8A23904();
  if (v0 <= 0x3F)
  {
    sub_1B8A06E18();
    if (v1 <= 0x3F)
    {
      sub_1B8A06E78();
      if (v2 <= 0x3F)
      {
        sub_1B8A06ED8();
        if (v3 <= 0x3F)
        {
          sub_1B8A06F08();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B8A06E18()
{
  if (!qword_1EBA91498)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBA91498);
    }
  }
}

void sub_1B8A06E78()
{
  if (!qword_1EBA914C0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBA914C0);
    }
  }
}

uint64_t sub_1B8A06ED8()
{
  result = qword_1EBA914D8;
  if (!qword_1EBA914D8)
  {
    result = MEMORY[0x1E69E5EE0];
    atomic_store(MEMORY[0x1E69E5EE0], &qword_1EBA914D8);
  }

  return result;
}

void sub_1B8A06F08()
{
  if (!qword_1EBA914D0)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EBA914D0);
    }
  }
}

uint64_t getEnumTagSinglePayload for Sticker.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Sticker.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B8A070D0()
{
  result = qword_1EBA92040;
  if (!qword_1EBA92040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA92040);
  }

  return result;
}

unint64_t sub_1B8A07128()
{
  result = qword_1ED82DC68;
  if (!qword_1ED82DC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DC68);
  }

  return result;
}

unint64_t sub_1B8A07180()
{
  result = qword_1ED82DC70;
  if (!qword_1ED82DC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DC70);
  }

  return result;
}

uint64_t sub_1B8A071D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B8A24954() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1B8A24954() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65736572706572 && a2 == 0xEF736E6F69746174 || (sub_1B8A24954() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B8A2A430 == a2 || (sub_1B8A24954() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E756F4365747962 && a2 == 0xE900000000000074 || (sub_1B8A24954() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1B8A24954() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6554686372616573 && a2 == 0xEA00000000007478 || (sub_1B8A24954() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x657A6974696E6173 && a2 == 0xEF74706D6F725064 || (sub_1B8A24954() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6574746972776572 && a2 == 0xEF74706D6F72506ELL || (sub_1B8A24954() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001B8A2B150 == a2 || (sub_1B8A24954() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x746365666665 && a2 == 0xE600000000000000 || (sub_1B8A24954() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (sub_1B8A24954() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6C616E7265747865 && a2 == 0xEB00000000495255 || (sub_1B8A24954() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEF6F666E496E6F69 || (sub_1B8A24954() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (sub_1B8A24954() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x646573557473616CLL && a2 == 0xEC00000065746144 || (sub_1B8A24954() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x497972617262696CLL && a2 == 0xEC0000007865646ELL || (sub_1B8A24954() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B8A2B310 == a2 || (sub_1B8A24954() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001B8A2B330 == a2)
  {

    return 18;
  }

  else
  {
    v6 = sub_1B8A24954();

    if (v6)
    {
      return 18;
    }

    else
    {
      return 19;
    }
  }
}

unint64_t sub_1B8A077F4()
{
  result = qword_1ED82DBF0;
  if (!qword_1ED82DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DBF0);
  }

  return result;
}

void sub_1B8A07858(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92220, &unk_1B8A281A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  sub_1B89B7FFC(a1, &v12 - v6);
  v8 = *a2;
  v9 = sub_1B8A23904();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_1B8A238B4();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setIdentifier_];
}

void sub_1B8A07984(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 metadata];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B8A237C4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1B8A079EC(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *a1;
    v3 = sub_1B8A237A4();
  }

  v5 = v3;
  [v2 setMetadata_];
}

void sub_1B8A07A64(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = sub_1B8A23F24();
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
}

uint64_t sub_1B8A07AB8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManagedSticker();
  result = sub_1B8A24644();
  *a1 = result;
  return result;
}

void keypath_set_14Tm(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a2;
  v9 = sub_1B8A23EF4();
  [v8 *a5];
}

id sub_1B8A07C2C()
{
  v1 = *(v0 + 24);
  v4 = 0;
  v2 = *(v1 + 64);
  [v2 lock];
  sub_1B8A07F00(v1, &v4);
  result = [v2 unlock];
  if (v4)
  {
    [*(v1 + 32) postNotificationName:*(v1 + 16) object:swift_weakLoadStrong()];
  }

  return result;
}

id sub_1B8A07D10()
{
  v1 = *(v0 + 32);
  v7 = 0;
  v2 = *(v1 + 64);
  [v2 lock];
  sub_1B8A07F00(v1, &v7);
  [v2 unlock];
  if (v7)
  {
    [*(v1 + 32) postNotificationName:*(v1 + 16) object:swift_weakLoadStrong()];
  }

  v3 = *(v0 + 24);
  v6[0] = 0;
  v4 = *(v3 + 64);
  [v4 lock];
  sub_1B8A07F00(v3, v6);
  result = [v4 unlock];
  if (v6[0])
  {
    [*(v3 + 32) postNotificationName:*(v3 + 16) object:swift_weakLoadStrong()];
  }

  return result;
}

uint64_t sub_1B8A07E94()
{
  swift_weakDestroy();
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_1B8A07F00(uint64_t result, _BYTE *a2)
{
  if (*(result + 48))
  {
    *(result + 56) = 1;
  }

  else
  {
    v10[10] = v2;
    v10[11] = v3;
    *a2 = 1;
    v4 = *(result + 40);
    v5 = result;
    v6 = swift_allocObject();
    swift_weakInit();
    v10[4] = sub_1B8A088F8;
    v10[5] = v6;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1B89AEDDC;
    v10[3] = &block_descriptor_32;
    v7 = _Block_copy(v10);

    v8 = [v4 afterDelay:v7 performBlock:1.0];
    _Block_release(v7);
    v9 = *(v5 + 48);
    *(v5 + 48) = v8;
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1B8A08028()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v10 = 0;
  v5 = *(v0 + 64);
  [v5 lock];
  sub_1B8A081E4(v0, &v10);
  result = [v5 unlock];
  if (v10)
  {
    [*(v0 + 32) postNotificationName:*(v0 + 16) object:swift_weakLoadStrong()];

    if (*(v0 + 72) == 1)
    {
      v7 = sub_1B8A24184();
      (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
      v8 = swift_allocObject();
      v8[2] = 0;
      v8[3] = 0;
      v8[4] = v0;

      sub_1B8A201C0(0, 0, v4, &unk_1B8A28BA8, v8);

      return sub_1B8A08578(v4);
    }
  }

  return result;
}

uint64_t sub_1B8A081E4(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 56) == 1)
  {
    *(a1 + 56) = 0;
    *a2 = 1;
    v2 = *(a1 + 40);
    v4 = swift_allocObject();
    swift_weakInit();
    v10[4] = sub_1B8A085E0;
    v10[5] = v4;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1B89AEDDC;
    v10[3] = &block_descriptor_2;
    v5 = _Block_copy(v10);

    v6 = [v2 afterDelay:v5 performBlock:1.0];
    _Block_release(v5);
    v7 = *(a1 + 48);
    *(a1 + 48) = v6;
  }

  else
  {
    v8 = *(a1 + 48);
    *(a1 + 48) = 0;
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1B8A08310()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B8A08028();
  }

  return result;
}

uint64_t sub_1B8A08388()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v2, v1, 0, 0, 1u);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B8A0841C()
{
  swift_weakDestroy();

  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1B8A084C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B89BBE18;

  return sub_1B8A08368(a1, v4, v5, v6);
}

uint64_t sub_1B8A08578(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8A085FC()
{
  swift_weakInit();
  swift_weakAssign();
  v1 = qword_1ED82E4F8;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED82E500;
  v3 = objc_opt_self();

  v4 = v2;
  v5 = [v3 currentEnvironment];
  v6 = [v5 notificationCenter];

  _s33CoalescingNotificationBroadcasterCMa();
  v7 = swift_allocObject();
  swift_weakInit();
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = [objc_allocWithZone(MEMORY[0x1E6996878]) init];
  *(v7 + 16) = v4;
  swift_weakAssign();
  *(v7 + 32) = v6;
  v8 = [v3 currentEnvironment];
  v9 = [v8 schedulerProvider];

  v10 = [v9 backgroundSchedulerWithQualityOfService_];

  swift_unknownObjectRelease();
  *(v7 + 40) = v10;
  *(v7 + 72) = 0;
  *(v0 + 24) = v7;
  if (qword_1EBA91580 != -1)
  {
    swift_once();
  }

  v11 = qword_1EBA91588;
  v12 = [v3 currentEnvironment];
  v13 = [v12 notificationCenter];

  v14 = swift_allocObject();
  swift_weakInit();
  *(v14 + 48) = 0;
  *(v14 + 56) = 0;
  *(v14 + 64) = [objc_allocWithZone(MEMORY[0x1E6996878]) init];
  *(v14 + 16) = v11;
  swift_weakAssign();

  *(v14 + 32) = v13;
  v15 = [v3 currentEnvironment];
  v16 = [v15 schedulerProvider];

  v17 = [v16 backgroundSchedulerWithQualityOfService_];
  swift_unknownObjectRelease();
  *(v14 + 40) = v17;
  *(v14 + 72) = 1;
  *(v0 + 32) = v14;
  return v0;
}

uint64_t sub_1B8A08900(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x696A6F6D656DLL;
  v6 = 0xE500000000000000;
  v7 = 0x696A6F6D65;
  if (a1 != 4)
  {
    v7 = 0x7261506472696874;
    v6 = 0xEA00000000007974;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x746E6F4372657375;
  v9 = 0xEB00000000746E65;
  if (a1 != 1)
  {
    v8 = 0x6472616F6279656BLL;
    v9 = 0xEE00746E65636552;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x746E65636572;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x696A6F6D656DLL)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x696A6F6D65)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEA00000000007974;
      if (v10 != 0x7261506472696874)
      {
LABEL_34:
        v13 = sub_1B8A24954();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEB00000000746E65;
      if (v10 != 0x746E6F4372657375)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE00746E65636552;
      if (v10 != 0x6472616F6279656BLL)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x746E65636572)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1B8A08B04()
{
  sub_1B8A24A14();
  sub_1B8A23F94();

  return sub_1B8A24A34();
}

uint64_t sub_1B8A08C18()
{
  sub_1B8A24A14();
  sub_1B8A23F94();

  return sub_1B8A24A34();
}

id static LaunchStateManagerAPI.xpcInterface.getter()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

uint64_t sub_1B8A08D7C()
{
  v0 = sub_1B8A23BC4();
  __swift_allocate_value_buffer(v0, qword_1EBA95F90);
  __swift_project_value_buffer(v0, qword_1EBA95F90);
  return sub_1B8A23BB4();
}

id LaunchStateManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LaunchStateManager.init()()
{
  *&v0[OBJC_IVAR____TtC8Stickers18LaunchStateManager_cachedConfiguration] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LaunchStateManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1B8A08EE0()
{
  v1 = OBJC_IVAR____TtC8Stickers18LaunchStateManager_cachedConfiguration;
  v2 = *(v0 + OBJC_IVAR____TtC8Stickers18LaunchStateManager_cachedConfiguration);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Stickers18LaunchStateManager_cachedConfiguration);
  }

  else
  {
    v4 = sub_1B8A0A6C0();
    if (!v4)
    {
      v4 = [objc_allocWithZone(type metadata accessor for LaunchConfiguration()) init];
    }

    v3 = v4;
  }

  v5 = *(v0 + v1);
  *(v0 + v1) = v3;
  v6 = v2;
  v7 = v3;

  return v7;
}

void sub_1B8A08FA8()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_1B8A23EF4();
  [v1 removeObjectForKey_];

  v3 = *(v0 + OBJC_IVAR____TtC8Stickers18LaunchStateManager_cachedConfiguration);
  *(v0 + OBJC_IVAR____TtC8Stickers18LaunchStateManager_cachedConfiguration) = 0;
}

void sub_1B8A0904C(void *a1)
{
  v4 = sub_1B8A23544();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1B8A23534();
  type metadata accessor for LaunchConfiguration();
  sub_1B8A0B370(&unk_1EBA92170);
  v7 = sub_1B8A23524();
  v9 = v8;

  if (!v2)
  {
    v10 = [objc_opt_self() standardUserDefaults];
    v11 = sub_1B8A237A4();
    v12 = sub_1B8A23EF4();
    [v10 setObject:v11 forKey:v12];
    sub_1B89AFC38(v7, v9);

    v13 = *(v1 + OBJC_IVAR____TtC8Stickers18LaunchStateManager_cachedConfiguration);
    *(v1 + OBJC_IVAR____TtC8Stickers18LaunchStateManager_cachedConfiguration) = a1;
    v14 = a1;
  }
}

Stickers::StickerSectionType_optional __swiftcall StickerSectionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B8A24794();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StickerSectionType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x746E65636572;
  v3 = 0x696A6F6D656DLL;
  v4 = 0x696A6F6D65;
  if (v1 != 4)
  {
    v4 = 0x7261506472696874;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x746E6F4372657375;
  if (v1 != 1)
  {
    v5 = 0x6472616F6279656BLL;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_1B8A09314()
{
  *v0;
  *v0;
  *v0;
  sub_1B8A23F94();
}

void sub_1B8A09424(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x746E65636572;
  v5 = 0xE600000000000000;
  v6 = 0x696A6F6D656DLL;
  v7 = 0xE500000000000000;
  v8 = 0x696A6F6D65;
  if (v2 != 4)
  {
    v8 = 0x7261506472696874;
    v7 = 0xEA00000000007974;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000746E65;
  v10 = 0x746E6F4372657375;
  if (v2 != 1)
  {
    v10 = 0x6472616F6279656BLL;
    v9 = 0xEE00746E65636552;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t LaunchConfiguration.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Stickers19LaunchConfiguration_identifier);
  v2 = *(v0 + OBJC_IVAR____TtC8Stickers19LaunchConfiguration_identifier + 8);

  return v1;
}

char *LaunchConfiguration.init()()
{
  v0 = sub_1B8A23884();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LaunchConfiguration();
  v6 = objc_allocWithZone(v5);
  v6[OBJC_IVAR____TtC8Stickers19LaunchConfiguration_sectionType] = 0;
  v7 = &v6[OBJC_IVAR____TtC8Stickers19LaunchConfiguration_identifier];
  *v7 = 0;
  v7[1] = 0;
  v8 = [objc_opt_self() currentEnvironment];
  v9 = [v8 timeProvider];

  [v9 timestamp];
  v11 = v10;
  swift_unknownObjectRelease();
  *&v6[OBJC_IVAR____TtC8Stickers19LaunchConfiguration_creationDate] = v11;
  v17.receiver = v6;
  v17.super_class = v5;
  v12 = objc_msgSendSuper2(&v17, sel_init);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v13 = v12;
  sub_1B8A23814();
  sub_1B8A237F4();
  v15 = v14;

  (*(v1 + 8))(v4, v0);
  *&v13[OBJC_IVAR____TtC8Stickers19LaunchConfiguration_creationDate] = v15;
  return v13;
}

id LaunchConfiguration.__allocating_init(sectionType:identifier:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v7[OBJC_IVAR____TtC8Stickers19LaunchConfiguration_sectionType] = *a1;
  v8 = &v7[OBJC_IVAR____TtC8Stickers19LaunchConfiguration_identifier];
  *v8 = a2;
  v8[1] = a3;
  v9 = [objc_opt_self() currentEnvironment];
  v10 = [v9 timeProvider];

  [v10 timestamp];
  v12 = v11;
  swift_unknownObjectRelease();
  *&v7[OBJC_IVAR____TtC8Stickers19LaunchConfiguration_creationDate] = v12;
  v14.receiver = v7;
  v14.super_class = v3;
  return objc_msgSendSuper2(&v14, sel_init);
}

id LaunchConfiguration.init(sectionType:identifier:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v3[OBJC_IVAR____TtC8Stickers19LaunchConfiguration_sectionType] = *a1;
  v4 = &v3[OBJC_IVAR____TtC8Stickers19LaunchConfiguration_identifier];
  *v4 = a2;
  v4[1] = a3;
  v5 = [objc_opt_self() currentEnvironment];
  v6 = [v5 timeProvider];

  [v6 timestamp];
  v8 = v7;
  swift_unknownObjectRelease();
  *&v3[OBJC_IVAR____TtC8Stickers19LaunchConfiguration_creationDate] = v8;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for LaunchConfiguration();
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t static LaunchConfiguration.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EBA920E0 = a1;
  return result;
}

uint64_t LaunchConfiguration.init(coder:)(void *a1)
{
  sub_1B8A0A9EC();
  v2 = sub_1B8A243B4();
  if (v2)
  {
    rawValue._countAndFlagsBits = 0;
    v3 = v2;
    sub_1B8A23F14();
  }

  type metadata accessor for LaunchConfiguration();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1B8A09DA4(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC8Stickers19LaunchConfiguration_sectionType) > 2u)
  {
    *(v1 + OBJC_IVAR____TtC8Stickers19LaunchConfiguration_sectionType);
  }

  v3 = sub_1B8A23EF4();

  v4 = sub_1B8A23EF4();
  [a1 encodeObject:v3 forKey:v4];

  if (*(v1 + OBJC_IVAR____TtC8Stickers19LaunchConfiguration_identifier + 8))
  {
    v5 = *(v1 + OBJC_IVAR____TtC8Stickers19LaunchConfiguration_identifier);
    v6 = sub_1B8A23EF4();
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_1B8A23EF4();
  [a1 encodeObject:v6 forKey:v7];
  swift_unknownObjectRelease();

  v8 = *(v1 + OBJC_IVAR____TtC8Stickers19LaunchConfiguration_creationDate);
  v9 = sub_1B8A23EF4();
  [a1 encodeDouble:v9 forKey:v8];
}

uint64_t sub_1B8A0A044()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697461657263;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x546E6F6974636573;
  }
}

uint64_t sub_1B8A0A0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B8A0B18C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B8A0A0E8(uint64_t a1)
{
  v2 = sub_1B8A0AA38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8A0A124(uint64_t a1)
{
  v2 = sub_1B8A0AA38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1B8A0A178(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1B8A0A1C4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92110, &qword_1B8A28BB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B8A0AA38();
  sub_1B8A24A64();
  v15[15] = *(v3 + OBJC_IVAR____TtC8Stickers19LaunchConfiguration_sectionType);
  v15[14] = 0;
  sub_1B8A0AA8C();
  sub_1B8A248F4();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = *(v3 + OBJC_IVAR____TtC8Stickers19LaunchConfiguration_identifier);
  v12 = *(v3 + OBJC_IVAR____TtC8Stickers19LaunchConfiguration_identifier + 8);
  v15[13] = 1;
  sub_1B8A24884();
  v14 = *(v3 + OBJC_IVAR____TtC8Stickers19LaunchConfiguration_creationDate);
  v15[12] = 2;
  sub_1B8A248D4();
  return (*(v6 + 8))(v9, v5);
}

id LaunchConfiguration.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92128, &qword_1B8A28BB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B8A0AA38();
  sub_1B8A24A54();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for LaunchConfiguration();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v18 = 0;
    sub_1B8A0AAE0();
    sub_1B8A24854();
    v1[OBJC_IVAR____TtC8Stickers19LaunchConfiguration_sectionType] = v19;
    v19 = 1;
    v11 = sub_1B8A247C4();
    v13 = &v1[OBJC_IVAR____TtC8Stickers19LaunchConfiguration_identifier];
    *v13 = v11;
    v13[1] = v14;
    v19 = 2;
    sub_1B8A24834();
    *&v1[OBJC_IVAR____TtC8Stickers19LaunchConfiguration_creationDate] = v15;
    v16 = type metadata accessor for LaunchConfiguration();
    v17.receiver = v1;
    v17.super_class = v16;
    v3 = objc_msgSendSuper2(&v17, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

id sub_1B8A0A648@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for LaunchConfiguration());
  result = LaunchConfiguration.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1B8A0A6C0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1B8A23EF4();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1B8A244A4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    if (swift_dynamicCast())
    {
      v3 = sub_1B8A23514();
      v4 = *(v3 + 48);
      v5 = *(v3 + 52);
      swift_allocObject();
      sub_1B8A23504();
      type metadata accessor for LaunchConfiguration();
      sub_1B8A0B370(qword_1EBA92180);
      sub_1B8A234F4();
      sub_1B89AFC38(v7, v8);

      return *&v11[0];
    }
  }

  else
  {
    sub_1B8A0B308(v11);
  }

  return 0;
}

unint64_t sub_1B8A0A9EC()
{
  result = qword_1EBA91F70;
  if (!qword_1EBA91F70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA91F70);
  }

  return result;
}

unint64_t sub_1B8A0AA38()
{
  result = qword_1EBA92118;
  if (!qword_1EBA92118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA92118);
  }

  return result;
}

unint64_t sub_1B8A0AA8C()
{
  result = qword_1EBA92120;
  if (!qword_1EBA92120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA92120);
  }

  return result;
}

unint64_t sub_1B8A0AAE0()
{
  result = qword_1EBA92130;
  if (!qword_1EBA92130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA92130);
  }

  return result;
}

unint64_t sub_1B8A0AB38()
{
  result = qword_1EBA92138;
  if (!qword_1EBA92138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA92138);
  }

  return result;
}

unint64_t sub_1B8A0AB90()
{
  result = qword_1EBA92140;
  if (!qword_1EBA92140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA92148, &qword_1B8A28CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA92140);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StickerSectionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StickerSectionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LaunchConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LaunchConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B8A0B088()
{
  result = qword_1EBA92150;
  if (!qword_1EBA92150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA92150);
  }

  return result;
}

unint64_t sub_1B8A0B0E0()
{
  result = qword_1EBA92158;
  if (!qword_1EBA92158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA92158);
  }

  return result;
}

unint64_t sub_1B8A0B138()
{
  result = qword_1EBA92160;
  if (!qword_1EBA92160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA92160);
  }

  return result;
}

uint64_t sub_1B8A0B18C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x546E6F6974636573 && a2 == 0xEB00000000657079;
  if (v4 || (sub_1B8A24954() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1B8A24954() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B8A24954();

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

unint64_t sub_1B8A0B2B4()
{
  result = qword_1EBA92168;
  if (!qword_1EBA92168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA92168);
  }

  return result;
}

uint64_t sub_1B8A0B308(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F50, &unk_1B8A26500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8A0B370(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LaunchConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B8A0B3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1B89AF268(a3, v27 - v11, &qword_1EBA92200, &qword_1B8A28000);
  v13 = sub_1B8A24184();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1B89A8A78(v12, &qword_1EBA92200, &qword_1B8A28000);
  }

  else
  {
    sub_1B8A24174();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1B8A24154();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1B8A23F64() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_1B89A8A78(a3, &qword_1EBA92200, &qword_1B8A28000);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B89A8A78(a3, &qword_1EBA92200, &qword_1B8A28000);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

void sub_1B8A0B704(uint64_t a1)
{
  v45 = sub_1B8A23784();
  v3 = *(v45 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_1B8A24554();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  if (v6)
  {
    v53 = MEMORY[0x1E69E7CC0];
    sub_1B8A038E8(0, v6 & ~(v6 >> 63), 0);
    v48 = v53;
    if (v46)
    {
      v7 = sub_1B8A24504();
    }

    else
    {
      v9 = -1 << *(a1 + 32);
      v7 = sub_1B8A244D4();
      v8 = *(a1 + 36);
    }

    v50 = v7;
    v51 = v8;
    v52 = v46 != 0;
    if ((v6 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v42 = v6;
      v43 = (v3 + 8);
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v40 = a1 + 56;
      v41 = v11;
      v38 = v1;
      v39 = a1 + 64;
      while (v10 < v6)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v50;
        v15 = v52;
        v47 = v51;
        v16 = a1;
        sub_1B8A0FD0C(v50, v51, v52, a1);
        v18 = v17;
        v19 = [v17 URIRepresentation];
        v20 = v44;
        sub_1B8A23724();

        v21 = sub_1B8A236A4();
        v23 = v22;
        (*v43)(v20, v45);

        v24 = v48;
        v53 = v48;
        v26 = *(v48 + 16);
        v25 = *(v48 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1B8A038E8((v25 > 1), v26 + 1, 1);
          v24 = v53;
        }

        *(v24 + 16) = v26 + 1;
        v27 = v24 + 16 * v26;
        *(v27 + 32) = v21;
        *(v27 + 40) = v23;
        v48 = v24;
        if (v46)
        {
          if (!v15)
          {
            goto LABEL_42;
          }

          a1 = v16;
          if (sub_1B8A24524())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v6 = v42;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA921C0, &unk_1B8A28FF0);
          v12 = sub_1B8A241E4();
          sub_1B8A245A4();
          v12(v49, 0);
          if (v10 == v6)
          {
LABEL_34:
            sub_1B8A10228(v50, v51, v52);
            return;
          }
        }

        else
        {
          if (v15)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v16;
          v28 = 1 << *(v16 + 32);
          if (v14 >= v28)
          {
            goto LABEL_38;
          }

          v29 = v14 >> 6;
          v30 = *(v40 + 8 * (v14 >> 6));
          if (((v30 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v16 + 36) != v47)
          {
            goto LABEL_40;
          }

          v31 = v30 & (-2 << (v14 & 0x3F));
          if (v31)
          {
            v28 = __clz(__rbit64(v31)) | v14 & 0x7FFFFFFFFFFFFFC0;
            v6 = v42;
          }

          else
          {
            v32 = v29 << 6;
            v33 = v29 + 1;
            v34 = (v39 + 8 * v29);
            v6 = v42;
            while (v33 < (v28 + 63) >> 6)
            {
              v36 = *v34++;
              v35 = v36;
              v32 += 64;
              ++v33;
              if (v36)
              {
                sub_1B8A10228(v14, v47, 0);
                v28 = __clz(__rbit64(v35)) + v32;
                goto LABEL_33;
              }
            }

            sub_1B8A10228(v14, v47, 0);
          }

LABEL_33:
          v37 = *(v16 + 36);
          v50 = v28;
          v51 = v37;
          v52 = 0;
          if (v10 == v6)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }
}

uint64_t sub_1B8A0BB18()
{
  v0 = sub_1B8A23BC4();
  __swift_allocate_value_buffer(v0, qword_1EBA91220);
  __swift_project_value_buffer(v0, qword_1EBA91220);
  return sub_1B8A23BB4();
}

uint64_t sub_1B8A0BB98()
{
  v0 = sub_1B8A242B4();
  __swift_allocate_value_buffer(v0, qword_1EBA912A8);
  __swift_project_value_buffer(v0, qword_1EBA912A8);
  return sub_1B8A242A4();
}

char *sub_1B8A0BBE8(void *a1)
{
  v2 = v1;
  v4 = *v1;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92198, &qword_1B8A28FD8);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v2 + 3) = v5;
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1B8A24554())
  {
    sub_1B8A0FF30(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CD0];
  }

  *(v2 + 4) = v6;
  *(v2 + 5) = 0;
  v7 = OBJC_IVAR____TtC8Stickers30SpotlightFailedIndexingManager_activityDebouncer;
  v8 = type metadata accessor for ActivityDebouncer();
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  *&v2[OBJC_IVAR____TtC8Stickers30SpotlightFailedIndexingManager_transaction] = 0;
  swift_unknownObjectWeakAssign();
  v9 = [objc_opt_self() defaultCenter];
  v10 = *MEMORY[0x1E695D390];
  v11 = [objc_opt_self() mainQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = v4;
  v18[4] = sub_1B8A0D888;
  v18[5] = v12;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1B8A0C648;
  v18[3] = &block_descriptor_3;
  v13 = _Block_copy(v18);

  v14 = [v9 addObserverForName:v10 object:0 queue:v11 usingBlock:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();

  type metadata accessor for CloudKitImportIndexingDebouncer();
  swift_allocObject();

  v15 = sub_1B8A0CE78(sub_1B8A0D890, v2, 5000.0);

  v16 = *(v2 + 5);
  *(v2 + 5) = v15;

  return v2;
}

void sub_1B8A0BEAC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B8A242B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA921D8, &qword_1B8A29000);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = (&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v41 - v13;
  v15 = type metadata accessor for ActivityDebouncer();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B8A23574();
  if (!v20)
  {
    return;
  }

  v21 = v20;
  v22 = *MEMORY[0x1E695D398];
  v44 = sub_1B8A23F24();
  v45 = v23;
  sub_1B8A245D4();
  if (!*(v21 + 16) || (v24 = sub_1B8A0DFA8(aBlock), (v25 & 1) == 0))
  {

    sub_1B8A1029C(aBlock);
    return;
  }

  sub_1B89A9360(*(v21 + 56) + 32 * v24, v46);
  sub_1B8A1029C(aBlock);

  sub_1B89AB538(0, &qword_1EBA91110, 0x1E695D678);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v41 = OBJC_IVAR____TtC8Stickers30SpotlightFailedIndexingManager_transaction;
  v42 = v44;
  if (!*(a2 + OBJC_IVAR____TtC8Stickers30SpotlightFailedIndexingManager_transaction))
  {
    goto LABEL_8;
  }

  v26 = OBJC_IVAR____TtC8Stickers30SpotlightFailedIndexingManager_activityDebouncer;
  swift_beginAccess();
  sub_1B89AF268(a2 + v26, v14, &unk_1EBA921D8, &qword_1B8A29000);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1B89A8A78(v14, &unk_1EBA921D8, &qword_1B8A29000);
LABEL_8:
    if (qword_1EBA91218 != -1)
    {
      swift_once();
    }

    v27 = sub_1B8A23BC4();
    __swift_project_value_buffer(v27, qword_1EBA91220);
    v28 = sub_1B8A23BA4();
    v29 = sub_1B8A24214();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1B89A7000, v28, v29, "Received CloudKit change notification. Opening transaction", v30, 2u);
      MEMORY[0x1B8CC5170](v30, -1, -1);
    }

    v31 = os_transaction_create();
    v32 = *(a2 + v41);
    *(a2 + v41) = v31;
    swift_unknownObjectRelease();
    if (qword_1EBA912A0 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v3, qword_1EBA912A8);
    (*(v4 + 16))(v7, v33, v3);
    v34 = swift_allocObject();
    swift_weakInit();
    sub_1B8A205A4(v7, &unk_1B8A29010, v34, v12);
    (*(v16 + 56))(v12, 0, 1, v15);
    v35 = OBJC_IVAR____TtC8Stickers30SpotlightFailedIndexingManager_activityDebouncer;
    swift_beginAccess();
    sub_1B8A10380(v12, a2 + v35);
    swift_endAccess();
    goto LABEL_18;
  }

  sub_1B8A1041C(v14, v19);
  sub_1B8A20470();
  sub_1B8A10480(v19);
LABEL_18:
  v36 = v42;
  if ([v42 type] != 1)
  {
    goto LABEL_22;
  }

  v37 = *(a2 + 40);
  if (!v37)
  {
    goto LABEL_22;
  }

  v38 = *(v37 + 16);
  v39 = swift_allocObject();
  *(v39 + 16) = sub_1B8A103F0;
  *(v39 + 24) = v37;
  aBlock[4] = sub_1B8A103F4;
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8A0B6DC;
  aBlock[3] = &block_descriptor_49;
  v40 = _Block_copy(aBlock);
  swift_retain_n();

  dispatch_sync(v38, v40);
  _Block_release(v40);
  LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

  if (v38)
  {
    __break(1u);
LABEL_22:
  }
}

uint64_t sub_1B8A0C4F0()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC8Stickers30SpotlightFailedIndexingManager_transaction);
    *(v3 + OBJC_IVAR____TtC8Stickers30SpotlightFailedIndexingManager_transaction) = 0;
    swift_unknownObjectRelease();
    if (qword_1EBA91218 != -1)
    {
      swift_once();
    }

    v5 = sub_1B8A23BC4();
    __swift_project_value_buffer(v5, qword_1EBA91220);
    v6 = sub_1B8A23BA4();
    v7 = sub_1B8A24214();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1B89A7000, v6, v7, "Did remove indexing responder transaction", v8, 2u);
      MEMORY[0x1B8CC5170](v8, -1, -1);
    }
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1B8A0C648(uint64_t a1)
{
  v2 = sub_1B8A23584();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1B8A23554();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

void sub_1B8A0C73C(uint64_t a1)
{
  if (qword_1EBA91218 != -1)
  {
    swift_once();
  }

  v2 = sub_1B8A23BC4();
  __swift_project_value_buffer(v2, qword_1EBA91220);
  v3 = sub_1B8A23BA4();
  v4 = sub_1B8A24214();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B89A7000, v3, v4, "CloudKit imports have stabilized", v5, 2u);
    MEMORY[0x1B8CC5170](v5, -1, -1);
  }

  v6 = *(a1 + 24);

  os_unfair_lock_lock(v6 + 4);

  swift_beginAccess();
  v7 = *(a1 + 32);

  v9 = sub_1B8A0DDE8(v8);

  v10 = *(a1 + 24);

  os_unfair_lock_unlock(v10 + 4);

  if ((v9 & 0x8000000000000000) != 0 || (v9 & 0x4000000000000000) != 0)
  {
    v11 = sub_1B8A24554();
  }

  else
  {
    v11 = *(v9 + 16);
  }

  if (v11 >= 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = *(a1 + 24);

      os_unfair_lock_lock(v14 + 4);

      v15 = *(a1 + 32);

      sub_1B8A0B704(v16);

      v17 = *(a1 + 24);

      os_unfair_lock_unlock(v17 + 4);

      v18 = [objc_opt_self() defaultSearchableIndex];
      v19 = sub_1B8A240E4();

      v21[4] = sub_1B8A10220;
      v21[5] = a1;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 1107296256;
      v21[2] = sub_1B89AEDDC;
      v21[3] = &block_descriptor_39;
      v20 = _Block_copy(v21);

      [v13 searchableIndex:v18 reindexSearchableItemsWithIdentifiers:v19 acknowledgementHandler:v20];
      _Block_release(v20);
    }
  }
}