char *sub_1B89D0F60(char *a1, void *a2)
{
  v4 = sub_1B8A23904();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x1EEE9AC00](v4);
  v123 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92220, &unk_1B8A281A0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v104 - v13;
  v15 = OBJC_IVAR___STKSticker_representations;
  swift_beginAccess();
  v16 = *&a1[v15];
  v129 = a2;

  v18 = sub_1B89D0AD0(v17, &v129);

  v19 = *&a1[v15];

  LOBYTE(v16) = sub_1B89F7DF4(v18, v19);

  if (v16)
  {
    v20 = a1;
  }

  else
  {
    v124 = v18;
    LODWORD(v112) = a1[OBJC_IVAR___STKSticker_type];
    v113 = v5[2];
    v114 = v5 + 2;
    v113(v14, &a1[OBJC_IVAR___STKSticker_identifier], v4);
    v121 = v5[7];
    (v121)(v14, 0, 1, v4);
    v21 = &a1[OBJC_IVAR___STKSticker_name];
    swift_beginAccess();
    v22 = *(v21 + 1);
    v111 = *v21;
    v118 = v22;
    v23 = &a1[OBJC_IVAR___STKSticker_metadata];
    swift_beginAccess();
    v24 = v23[1];
    v120 = *v23;
    v122 = v24;
    v25 = &a1[OBJC_IVAR___STKSticker_externalURI];
    swift_beginAccess();
    v26 = v25[1];
    v115 = *v25;
    v119 = v26;
    v27 = OBJC_IVAR___STKSticker_creationDate;
    swift_beginAccess();
    v28 = *&a1[v27];
    v29 = OBJC_IVAR___STKSticker_lastUsedDate;
    swift_beginAccess();
    v30 = *&a1[v29];
    v31 = OBJC_IVAR___STKSticker_libraryIndex;
    swift_beginAccess();
    v32 = *&a1[v31];
    v105 = type metadata accessor for Sticker(0);
    v33 = objc_allocWithZone(v105);
    v34 = &v33[OBJC_IVAR___STKSticker_accessibilityName];
    *v34 = 0;
    *(v34 + 1) = 0;
    v35 = &v33[OBJC_IVAR___STKSticker_searchText];
    *v35 = 0;
    *(v35 + 1) = 0;
    v106 = v35;
    v36 = &v33[OBJC_IVAR___STKSticker_sanitizedPrompt];
    *v36 = 0;
    *(v36 + 1) = 0;
    v107 = v36;
    v37 = &v33[OBJC_IVAR___STKSticker_rewrittenPrompt];
    *v37 = 0;
    *(v37 + 1) = 0;
    v108 = v37;
    v38 = &v33[OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier];
    *v38 = 0;
    *(v38 + 1) = 0;
    v109 = v38;
    v39 = v5;
    v40 = &v33[OBJC_IVAR___STKSticker_metadata];
    *&v33[OBJC_IVAR___STKSticker_metadata] = xmmword_1B8A26F80;
    v41 = &v33[OBJC_IVAR___STKSticker_externalURI];
    *v41 = 0;
    v41[1] = 0;
    v110 = OBJC_IVAR___STKSticker_attributionInfo;
    *&v33[OBJC_IVAR___STKSticker_attributionInfo] = 0;
    (v121)(&v33[OBJC_IVAR___STKSticker__companionRecentUUID], 1, 1, v4);
    v121 = v33;
    v104 = OBJC_IVAR___STKSticker_animatedVariantIsPreferred;
    v33[OBJC_IVAR___STKSticker_animatedVariantIsPreferred] = 2;
    v116 = v14;
    sub_1B89AF268(v14, v12, &unk_1EBA92220, &unk_1B8A281A0);
    v42 = v39[6];
    v43 = v42(v12, 1, v4);
    v117 = v39;
    if (v43 == 1)
    {

      v44 = v120;
      sub_1B89C3C44(v120, v122);

      v45 = v123;
      sub_1B8A238F4();
      v46 = v44;
      if (v42(v12, 1, v4) != 1)
      {
        sub_1B89A8A78(v12, &unk_1EBA92220, &unk_1B8A281A0);
      }
    }

    else
    {
      v47 = v39[4];
      v45 = v123;
      v47(v123, v12, v4);

      v46 = v120;
      sub_1B89C3C44(v120, v122);
    }

    v48 = v121;
    v121[OBJC_IVAR___STKSticker_type] = v112;
    v112 = v4;
    v113(&v48[OBJC_IVAR___STKSticker_identifier], v45, v4);
    v49 = v124;
    *&v48[OBJC_IVAR___STKSticker_representations] = v124;
    swift_beginAccess();
    v50 = *(v34 + 1);
    *v34 = 0;
    *(v34 + 1) = 0;

    v51 = &v48[OBJC_IVAR___STKSticker_name];
    v52 = v118;
    *v51 = v111;
    v51[1] = v52;
    *&v48[OBJC_IVAR___STKSticker_effect] = 0;
    swift_beginAccess();
    v53 = *v40;
    v54 = v40[1];
    v55 = v122;
    *v40 = v46;
    v40[1] = v55;
    sub_1B89C3C44(v46, v55);
    sub_1B89B4A04(v53, v54);
    v56 = v115;
    v57 = v119;
    if (!v119)
    {
      v58 = sub_1B8A238A4();
      v127 = 0xD00000000000001BLL;
      v128 = 0x80000001B8A2A9A0;
      v46 = v120;
      MEMORY[0x1B8CC3E20](v58);

      v56 = v127;
      v57 = v128;
    }

    swift_beginAccess();
    v59 = v41[1];
    *v41 = v56;
    v41[1] = v57;

    v60 = v110;
    swift_beginAccess();
    v61 = *&v48[v60];
    *&v48[v60] = 0;

    v62 = v49 >> 62;
    v63 = v117;
    if (v49 >> 62)
    {
      goto LABEL_56;
    }

    for (i = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
    {
      v65 = MEMORY[0x1E69E7CC0];
      if (i)
      {
        v126 = MEMORY[0x1E69E7CC0];
        result = sub_1B8A0394C(0, i & ~(i >> 63), 0);
        if (i < 0)
        {
          __break(1u);
          return result;
        }

        v65 = v126;
        if ((v49 & 0xC000000000000001) != 0)
        {
          for (j = 0; j != i; ++j)
          {
            v68 = MEMORY[0x1B8CC44E0](j, v124);
            v69 = OBJC_IVAR___STKStickerRepresentation_byteCount;
            swift_beginAccess();
            v70 = *(v68 + v69);
            swift_unknownObjectRelease();
            v126 = v65;
            v49 = v65[2];
            v71 = v65[3];
            if (v49 >= v71 >> 1)
            {
              sub_1B8A0394C((v71 > 1), v49 + 1, 1);
              v65 = v126;
            }

            v65[2] = v49 + 1;
            v65[v49 + 4] = v70;
          }
        }

        else
        {
          v72 = (v49 + 32);
          do
          {
            v73 = *v72;
            v74 = OBJC_IVAR___STKStickerRepresentation_byteCount;
            swift_beginAccess();
            v75 = *(v73 + v74);
            v126 = v65;
            v49 = v65[2];
            v76 = v65[3];
            if (v49 >= v76 >> 1)
            {
              sub_1B8A0394C((v76 > 1), v49 + 1, 1);
              v65 = v126;
            }

            v65[2] = v49 + 1;
            v65[v49 + 4] = v75;
            ++v72;
            --i;
          }

          while (i);
        }

        v46 = v120;
      }

      v77 = v65[2];
      v78 = v116;
      v79 = 0;
      if (!v77)
      {
        break;
      }

      v80 = v65 + 4;
      v81 = v124;
      while (1)
      {
        v82 = *v80++;
        v83 = __OFADD__(v79, v82);
        v79 += v82;
        if (v83)
        {
          break;
        }

        if (!--v77)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      ;
    }

    v81 = v124;
LABEL_30:

    v84 = v121;
    *&v121[OBJC_IVAR___STKSticker_byteCount] = v79;
    *&v84[OBJC_IVAR___STKSticker_creationDate] = v28;
    *&v84[OBJC_IVAR___STKSticker_lastUsedDate] = v30;
    *&v84[OBJC_IVAR___STKSticker_libraryIndex] = v32;
    v85 = v106;
    swift_beginAccess();
    v86 = *(v85 + 1);
    *v85 = 0;
    *(v85 + 1) = 0;

    v87 = v107;
    swift_beginAccess();
    v88 = *(v87 + 1);
    *v87 = 0;
    *(v87 + 1) = 0;

    v89 = v108;
    swift_beginAccess();
    v90 = *(v89 + 1);
    *v89 = 0;
    *(v89 + 1) = 0;

    v91 = v109;
    swift_beginAccess();
    v92 = *(v91 + 1);
    *v91 = 0;
    *(v91 + 1) = 0;

    if (v62)
    {
      v93 = sub_1B8A24554();
      v95 = v122;
      v94 = v123;
      if (v93)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v93 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v95 = v122;
      v94 = v123;
      if (v93)
      {
LABEL_32:
        v96 = 0;
        v62 = v81 & 0xC000000000000001;
        v63 = v81 & 0xFFFFFFFFFFFFFF8;
        v46 = &OBJC_IVAR___STKStickerRepresentation_role;
        while (1)
        {
          if (v62)
          {
            v98 = MEMORY[0x1B8CC44E0](v96, v81);
          }

          else
          {
            if (v96 >= *(v63 + 16))
            {
              goto LABEL_55;
            }

            v98 = *(v81 + 8 * v96 + 32);
          }

          v99 = v98;
          v49 = v96 + 1;
          if (__OFADD__(v96, 1))
          {
            goto LABEL_54;
          }

          v100 = &v98[OBJC_IVAR___STKStickerRepresentation_role];
          swift_beginAccess();
          v101 = *v100 == 0xD000000000000020 && 0x80000001B8A2A290 == *(v100 + 1);
          if (v101 || (sub_1B8A24954() & 1) != 0)
          {
            v97 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
            swift_beginAccess();
            LOBYTE(v97) = v99[v97];

            if (v97)
            {
              (*(v117 + 8))(v123, v112);

              v102 = 1;
              goto LABEL_50;
            }
          }

          else
          {
          }

          ++v96;
          v81 = v124;
          if (v49 == v93)
          {

            (*(v117 + 8))(v123, v112);
            v102 = 0;
LABEL_50:
            v78 = v116;
            v46 = v120;
            v95 = v122;
            goto LABEL_51;
          }
        }
      }
    }

    (*(v63 + 8))(v94, v112);

    v102 = 2;
LABEL_51:
    v103 = v121;
    v121[v104] = v102;
    v125.receiver = v103;
    v125.super_class = v105;
    v20 = objc_msgSendSuper2(&v125, sel_init);
    sub_1B89B4A04(v46, v95);
    sub_1B89A8A78(v78, &unk_1EBA92220, &unk_1B8A281A0);
  }

  return v20;
}

char *sub_1B89D1AA0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1B8A24554();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = sub_1B8A24554();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = (v12 + v11);
  if (v13)
  {
    goto LABEL_18;
  }

  sub_1B89B3DCC(result);

  return sub_1B89DD8C8(v6, v5, 1, v3);
}

void sub_1B89D1B8C(unint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_18:
    v16 = a1;
    v4 = sub_1B8A24554();
    a1 = v16;
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = a1 & 0xC000000000000001;
  v17 = a1;
  v7 = a1 + 32;
  v21 = v4;
  v19 = a1 & 0xC000000000000001;
  v20 = v3;
  v18 = a1 + 32;
  while (v5 != v4)
  {
    if (v6)
    {
      v8 = MEMORY[0x1B8CC44E0](v5, v17);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      v8 = *(v7 + 8 * v5);
    }

    v9 = v8;
    v10 = 0;
    v11 = *(a2 + 16);
    while (v11 != v10)
    {
      v12 = *(sub_1B8A23904() - 8);
      v13 = v10 + 1;
      v14 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v10;
      sub_1B89D2040();
      v10 = v13;
      if (sub_1B8A23ED4())
      {

        return;
      }
    }

    v15 = __OFADD__(v5++, 1);
    v4 = v21;
    v6 = v19;
    v3 = v20;
    v7 = v18;
    if (v15)
    {
      __break(1u);
      return;
    }
  }
}

uint64_t sub_1B89D1D3C(unint64_t *a1, uint64_t a2)
{
  v5 = a1;
  v6 = *a1;
  sub_1B89D1B8C(*a1, a2);
  v9 = v7;
  if (v3)
  {
    return v9;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_1B8A24554();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = v5;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
LABEL_8:
    v11 = v5 + 8 * v10;
    v12 = *(v11 + 32);
    *(v11 + 32) = v2;

    *v28 = v6;
LABEL_9:
    v13 = __OFADD__(v9++, 1);
    if (v13)
    {
      goto LABEL_49;
    }

    v13 = __OFADD__(v10++, 1);
    if (!v13)
    {
      goto LABEL_11;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_11:
  if (v6 >> 62)
  {
    if (v10 == sub_1B8A24554())
    {
      return v9;
    }
  }

  else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return v9;
  }

  v29 = v9;
  if ((v6 & 0xC000000000000001) == 0)
  {
    if ((v10 & 0x8000000000000000) == 0)
    {
      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v14 = *(v6 + 8 * v10 + 32);
      goto LABEL_17;
    }

    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v14 = MEMORY[0x1B8CC44E0](v10, v6);
LABEL_17:
  v15 = v14;
  v16 = 0;
  v17 = *(a2 + 16);
  while (v17 != v16)
  {
    v18 = *(sub_1B8A23904() - 8);
    v19 = v16 + 1;
    v20 = a2 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v16;
    sub_1B89D2040();
    v16 = v19;
    if (sub_1B8A23ED4())
    {

      v9 = v29;
      v13 = __OFADD__(v10++, 1);
      if (v13)
      {
        goto LABEL_48;
      }

      goto LABEL_11;
    }
  }

  v9 = v29;
  if (v29 == v10)
  {
    goto LABEL_9;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1B8CC44E0](v29, v6);
    v21 = MEMORY[0x1B8CC44E0](v10, v6);
    goto LABEL_30;
  }

  if ((v29 & 0x8000000000000000) != 0)
  {
    goto LABEL_51;
  }

  v22 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v29 >= v22)
  {
    goto LABEL_52;
  }

  if (v10 >= v22)
  {
    goto LABEL_53;
  }

  v23 = *(v6 + 32 + 8 * v10);
  v2 = *(v6 + 32 + 8 * v29);
  v21 = v23;
LABEL_30:
  v24 = v21;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_1B89D0994(v6);
    v25 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v25) = 0;
  }

  v5 = v6 & 0xFFFFFFFFFFFFFF8;
  v26 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v29 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v29 + 0x20) = v24;

  if ((v6 & 0x8000000000000000) != 0 || v25)
  {
    v6 = sub_1B89D0994(v6);
    v5 = v6 & 0xFFFFFFFFFFFFFF8;
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_38;
    }

LABEL_44:
    __break(1u);
    return v9;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_44;
  }

LABEL_38:
  if (v10 < *(v5 + 16))
  {
    goto LABEL_8;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return sub_1B8A24554();
}

unint64_t sub_1B89D2040()
{
  result = qword_1EBA91640;
  if (!qword_1EBA91640)
  {
    sub_1B8A23904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91640);
  }

  return result;
}

uint64_t StickerStore.__allocating_init(persistence:)(uint64_t a1)
{
  v2 = swift_allocObject();
  StickerStore.init(persistence:)(a1);
  return v2;
}

uint64_t sub_1B89D20D8(uint64_t a1)
{
  v35 = sub_1B8A23904();
  v2 = *(v35 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v52 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1E69E7CC0];
  sub_1B8A0396C(0, 0, 0);
  v5 = v49;
  sub_1B89B090C(a1, v39);
  v6 = v46;
  v7 = __swift_project_boxed_opaque_existential_0(v45, v46);
  v8 = sub_1B89AA114(v39, v38);
  v50[2] = v42;
  v50[3] = v43;
  v51 = v44;
  v50[0] = v40;
  v50[1] = v41;
  v36[2] = v42;
  v36[3] = v43;
  v37 = v44;
  v36[0] = v40;
  v36[1] = v41;
  v9 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v7, v6);
  sub_1B89A8FB4(v50, v47);
  sub_1B89B09B0(v38, v36, v11, v6, v47);
  result = sub_1B89B0BC8(v39);
  v34[2] = v2 + 32;
  while (1)
  {
    v14 = v48;
    v15 = v48 >> 62;
    if (v48 >> 62)
    {
      if (!sub_1B8A24554())
      {
LABEL_30:
        result = sub_1B89B0C1C();
        v24 = v48;
        v25 = v48 >> 62;
        if (v48 >> 62)
        {
          v33 = sub_1B8A24554();
          v23 = v52;
          if (!v33)
          {
LABEL_65:
            sub_1B89B44F4(0);
LABEL_66:
            sub_1B89B4780(v47);
            return v5;
          }

          result = sub_1B8A24554();
          if (!result)
          {
            goto LABEL_79;
          }

          result = sub_1B8A24554();
          if (!result)
          {
            goto LABEL_80;
          }
        }

        else
        {
          v23 = v52;
          if (!*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_65;
          }
        }

        if ((v24 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x1B8CC44E0](0, v24);
        }

        else
        {
          if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_70;
          }

          v26 = *(v24 + 32);
        }

        v17 = v26;
        if (v25)
        {
          result = sub_1B8A24554();
          if (!result)
          {
            goto LABEL_74;
          }

          result = sub_1B8A24554();
          if (result < 1)
          {
            goto LABEL_75;
          }

          result = sub_1B8A24554();
        }

        else
        {
          result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!result)
          {
            goto LABEL_74;
          }
        }

        v27 = result - 1;
        if (__OFSUB__(result, 1))
        {
          goto LABEL_71;
        }

        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (!v25)
          {
            v28 = v24 & 0xFFFFFFFFFFFFFF8;
            if (v27 > *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
LABEL_48:
              v29 = *(v28 + 16);
              goto LABEL_50;
            }

            goto LABEL_51;
          }
        }

        else if (!v25)
        {
          v28 = v24 & 0xFFFFFFFFFFFFFF8;
          goto LABEL_48;
        }

        sub_1B8A24554();
LABEL_50:
        v24 = sub_1B8A24674();
        v48 = v24;
LABEL_51:
        sub_1B89DD6CC(0, 1, 0);
        v48 = v24;
        sub_1B89B44F4(v17);
        if (!v17)
        {
          goto LABEL_66;
        }

        goto LABEL_52;
      }

      result = sub_1B8A24554();
      if (!result)
      {
        goto LABEL_76;
      }

      result = sub_1B8A24554();
      if (!result)
      {
        goto LABEL_77;
      }
    }

    else if (!*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

    if ((v14 & 0xC000000000000001) == 0)
    {
      break;
    }

    v16 = MEMORY[0x1B8CC44E0](0, v14);
LABEL_7:
    v17 = v16;
    if (v15)
    {
      result = sub_1B8A24554();
      if (!result)
      {
        goto LABEL_72;
      }

      result = sub_1B8A24554();
      if (result < 1)
      {
        goto LABEL_73;
      }

      result = sub_1B8A24554();
    }

    else
    {
      result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_72;
      }
    }

    v18 = result - 1;
    if (__OFSUB__(result, 1))
    {
      goto LABEL_68;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v15)
      {
LABEL_21:
        sub_1B8A24554();
      }

      else
      {
        v19 = v14 & 0xFFFFFFFFFFFFFF8;
LABEL_20:
        v20 = *(v19 + 16);
      }

      v14 = sub_1B8A24674();
      v19 = v14 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_23;
    }

    if (v15)
    {
      goto LABEL_21;
    }

    v19 = v14 & 0xFFFFFFFFFFFFFF8;
    if (v18 > *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_20;
    }

LABEL_23:

    if (v14 >> 62)
    {
      result = sub_1B8A24554();
      if (__OFSUB__(result, 1))
      {
        goto LABEL_78;
      }

      memmove((v19 + 32), (v19 + 40), 8 * (result - 1));
      result = sub_1B8A24554();
      v22 = result - 1;
      if (__OFSUB__(result, 1))
      {
        goto LABEL_69;
      }
    }

    else
    {
      v21 = *(v19 + 16);
      result = memmove((v19 + 32), (v19 + 40), 8 * v21 - 8);
      v22 = v21 - 1;
      if (__OFSUB__(v21, 1))
      {
        goto LABEL_69;
      }
    }

    *(v19 + 16) = v22;
    v48 = v14;
    v23 = v52;
LABEL_52:
    v30 = v35;
    (*(v2 + 16))(v23, v17 + OBJC_IVAR___STKSticker_identifier, v35);

    v49 = v5;
    v32 = *(v5 + 16);
    v31 = *(v5 + 24);
    if (v32 >= v31 >> 1)
    {
      sub_1B8A0396C(v31 > 1, v32 + 1, 1);
      v30 = v35;
      v5 = v49;
    }

    *(v5 + 16) = v32 + 1;
    result = (*(v2 + 32))(v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v32, v23, v30);
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v14 + 32);
    goto LABEL_7;
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
  return result;
}

uint64_t sub_1B89D26F0()
{
  result = sub_1B8A23EF4();
  qword_1ED82E500 = result;
  return result;
}

uint64_t sub_1B89D274C()
{
  result = sub_1B8A23EF4();
  qword_1EBA91588 = result;
  return result;
}

uint64_t sub_1B89D27A8()
{
  v0 = sub_1B8A23784();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B89B8558(v4);
  v5 = sub_1B8A236A4();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  qword_1EBA91BC0 = v5;
  *algn_1EBA91BC8 = v7;
  return result;
}

uint64_t static StickerStore.sharedDirectoryLocation.getter()
{
  if (qword_1EBA916A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBA91BC0;

  return v0;
}

uint64_t sub_1B89D2920()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v2 = v0;
    _s8NotifierCMa();
    swift_allocObject();

    v1 = sub_1B8A085FC();

    v3 = *(v2 + 56);
    *(v2 + 56) = v1;
  }

  return v1;
}

uint64_t static StickerStore.createAPIStore()()
{
  v0 = type metadata accessor for StickerStore.PersistenceType();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1B8A23784();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 2, 3, v4);
  type metadata accessor for StickerStore();
  v6 = swift_allocObject();
  StickerStore.init(persistence:)(v3);
  v5(v3, 2, 3, v4);
  sub_1B89D2AFC(v3, 1, v9);
  sub_1B89DD868(v3, type metadata accessor for StickerStore.PersistenceType);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v6 + 16));
  sub_1B89D2F5C(v9, v6 + 16);
  swift_endAccess();
  return v6;
}

uint64_t sub_1B89D2AFC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = sub_1B8A23784();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CoreDataDataMapper.StoreType(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StickerStore.PersistenceType();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B89DEA2C(a1, v18, type metadata accessor for StickerStore.PersistenceType);
  v19 = (*(v7 + 48))(v18, 3, v6);
  if (v19 > 1)
  {
    if (v19 == 2)
    {
      (*(v7 + 56))(v14, 1, 2, v6);
      v25 = type metadata accessor for CoreDataDataMapper(0);
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      v28 = a2 & 1;
      v29 = v14;
    }

    else
    {
      (*(v7 + 56))(v14, 2, 2, v6);
      v25 = type metadata accessor for CoreDataDataMapper(0);
      v32 = *(v25 + 48);
      v33 = *(v25 + 52);
      swift_allocObject();
      v29 = v14;
      v28 = 0;
    }

    result = sub_1B89EFC8C(v29, v28);
    v31 = &off_1F373ED58;
    a3[3] = v25;
  }

  else
  {
    if (!v19)
    {
      (*(v7 + 32))(v10, v18, v6);
      (*(v7 + 16))(v14, v10, v6);
      (*(v7 + 56))(v14, 0, 2, v6);
      v20 = type metadata accessor for CoreDataDataMapper(0);
      v21 = *(v20 + 48);
      v22 = *(v20 + 52);
      swift_allocObject();
      v23 = sub_1B89EFC8C(v14, 0);
      a3[3] = v20;
      a3[4] = &off_1F373ED58;
      *a3 = v23;
      return (*(v7 + 8))(v10, v6);
    }

    v30 = type metadata accessor for XPCDataMapper();
    result = swift_allocObject();
    *(result + 40) = &type metadata for XPCProxyProvider;
    *(result + 48) = &off_1F373EA20;
    v31 = &protocol witness table for XPCDataMapper;
    a3[3] = v30;
  }

  a3[4] = v31;
  *a3 = result;
  return result;
}

uint64_t StickerStore.init(persistence:)(uint64_t a1)
{
  *(v1 + 56) = 0;
  type metadata accessor for ImageGlyphRecency();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for RecencyServiceClient();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v3 + 112) = v4;
  *(v1 + 64) = v3;
  sub_1B89D2AFC(a1, 0, v6);
  sub_1B89DD868(a1, type metadata accessor for StickerStore.PersistenceType);
  sub_1B89D2F5C(v6, v1 + 16);
  return v1;
}

uint64_t type metadata accessor for StickerStore.PersistenceType()
{
  result = qword_1ED82E528;
  if (!qword_1ED82E528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B89D2F5C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t StickerStore.__allocating_init(dataMappper:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 56) = 0;
  type metadata accessor for ImageGlyphRecency();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for RecencyServiceClient();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v3 + 112) = v4;
  *(v2 + 64) = v3;
  sub_1B89D2F5C(a1, v2 + 16);
  return v2;
}

uint64_t StickerStore.init(dataMappper:)(__int128 *a1)
{
  *(v1 + 56) = 0;
  type metadata accessor for ImageGlyphRecency();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for RecencyServiceClient();
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  *(v3 + 112) = v4;
  *(v1 + 64) = v3;
  sub_1B89D2F5C(a1, v1 + 16);
  return v1;
}

uint64_t sub_1B89D3090(char *a1)
{
  v11 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA0, qword_1B8A265A0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA8, qword_1B8A281D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1B8CC3470](KeyPath, 1);
  sub_1B89AADD4(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B8A26260;
  v8 = swift_getKeyPath();
  MEMORY[0x1B8CC3470](v8, 1);
  swift_setDeallocating();
  (*(v2 + 8))(v5 + v4, v1);
  swift_deallocClassInstance();
  LOBYTE(v14) = v11;
  *(&v14 + 1) = 0;
  *&v15 = 0;
  v16 = 0uLL;
  *(&v15 + 1) = v7;
  LOBYTE(v17) = 1;
  *(&v17 + 1) = 8;
  v18 = 0;
  v9 = sub_1B89A9EC8(&v14);
  v12[2] = v16;
  v12[3] = v17;
  v13 = v18;
  v12[0] = v14;
  v12[1] = v15;
  sub_1B89A9028(v12);
  return v9;
}

void *sub_1B89D3270(uint64_t a1, unsigned __int8 *a2, void **a3)
{
  v6 = *a2;
  v7 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92070, &qword_1B8A27038);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B8A26260;
  *(v8 + 32) = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BD8, &unk_1B8A27040);
  v17 = sub_1B89CCD90(&qword_1EBA914A0, &qword_1EBA91BD8, &unk_1B8A27040);
  v15[0] = v8;
  v14 = v6;
  v13 = v7;
  sub_1B89D3700(v15, &v14, &v13, v18);
  __swift_destroy_boxed_opaque_existential_0(v15);
  if (!v4)
  {
    v9 = v19;
    v10 = v20;
    __swift_project_boxed_opaque_existential_0(v18, v19);
    v15[2] = v9;
    v16 = v10;
    sub_1B8A24074();
    v3 = v13;
    if (!v13)
    {
      sub_1B89C353C();
      swift_allocError();
      *v12 = 1;
      swift_willThrow();
    }

    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  return v3;
}

uint64_t sub_1B89D3410()
{
  sub_1B89B090C(v0, v16);
  v1 = v23;
  v2 = __swift_project_boxed_opaque_existential_0(v22, v23);
  v3 = sub_1B89AA114(v16, v15);
  v26[2] = v19;
  v26[3] = v20;
  v27 = v21;
  v26[0] = v17;
  v26[1] = v18;
  v13[2] = v19;
  v13[3] = v20;
  v14 = v21;
  v13[0] = v17;
  v13[1] = v18;
  v4 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v2, v1);
  sub_1B89A8FB4(v26, v24);
  sub_1B89B09B0(v15, v13, v6, v1, v24);
  sub_1B89B0BC8(v16);
  v8 = v25;
  v9 = v25 >> 62;
  if (v25 >> 62)
  {
    if (sub_1B8A24554())
    {
      result = sub_1B8A24554();
      if (!result)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      if (sub_1B8A24554())
      {
        goto LABEL_3;
      }

      __break(1u);
    }
  }

  else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if ((v8 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1B8CC44E0](0, v8);
      if (!v9)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }

    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v8 + 32);
      if (!v9)
      {
LABEL_6:
        v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:
        if (v11)
        {
          sub_1B89D09F8(0, 1);
LABEL_33:
          sub_1B89B4780(v24);
          return v10;
        }

        __break(1u);
        goto LABEL_28;
      }

LABEL_18:
      v11 = sub_1B8A24554();
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_22;
  }

  result = sub_1B89B0C1C();
  v8 = v25;
  v9 = v25 >> 62;
  if (!(v25 >> 62))
  {
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

LABEL_26:
    v10 = 0;
LABEL_32:
    sub_1B89B44F4(v10);
    goto LABEL_33;
  }

LABEL_22:
  if (!sub_1B8A24554())
  {
    goto LABEL_26;
  }

  result = sub_1B8A24554();
  if (result)
  {
    result = sub_1B8A24554();
    if (!result)
    {
      __break(1u);
      goto LABEL_26;
    }

LABEL_13:
    if ((v8 & 0xC000000000000001) == 0)
    {
      if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v10 = *(v8 + 32);
      if (v9)
      {
        goto LABEL_29;
      }

      goto LABEL_16;
    }

LABEL_28:
    v10 = MEMORY[0x1B8CC44E0](0, v8);
    if (v9)
    {
LABEL_29:
      result = sub_1B8A24554();
LABEL_30:
      if (result)
      {
        sub_1B89D09F8(0, 1);
        goto LABEL_32;
      }

      goto LABEL_35;
    }

LABEL_16:
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_30;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1B89D3700@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, void **a3@<X2>, uint64_t *a4@<X8>)
{
  v46 = a4;
  v5 = v4;
  v9 = sub_1B8A23984();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v15 = *a3;
  v16 = a1[3];
  v17 = __swift_project_boxed_opaque_existential_0(a1, v16);
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  (*(v20 + 16))(&v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B89DD820(&qword_1EBA91630, MEMORY[0x1E6969B50]);
  sub_1B8A244B4();
  LOBYTE(v49[0]) = v14;
  v21 = v47;
  v22 = sub_1B89D3090(v49);
  if (!v21)
  {
    LODWORD(v47) = v14;
    v23 = v15;
    v24 = v22;
    v25 = sub_1B8A23954();
    if ((v26 & 1) == 0 && (v25 & 0x8000000000000000) == 0 && v25 < v24)
    {
      v29 = sub_1B8A23944();
      if ((v30 & 1) == 0 && (v29 & 0x8000000000000000) == 0 && v29 < v24)
      {
        swift_beginAccess();
        sub_1B89AA114(v5 + 16, v49);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA0, qword_1B8A265A0);
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA8, qword_1B8A281D0);
        v42 = *(v31 - 8);
        v43 = v31;
        v41 = *(v42 + 72);
        v32 = *(v42 + 80);
        v44 = v13;
        v33 = swift_allocObject();
        KeyPath = swift_getKeyPath();
        v45 = v23;
        sub_1B89A9148(v23);
        MEMORY[0x1B8CC3470](KeyPath, 1);
        sub_1B89AADD4(0);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_1B8A26260;
        v36 = swift_getKeyPath();
        MEMORY[0x1B8CC3470](v36, 1);
        swift_setDeallocating();
        (*(v42 + 8))(v33 + ((v32 + 32) & ~v32), v43);
        swift_deallocClassInstance();
        v50 = 1;
        v48 = 0;
        v37 = v46;
        v46[3] = &type metadata for StickerSequence;
        v37[4] = sub_1B89DD7CC();
        v38 = swift_allocObject();
        *v37 = v38;
        *(v38 + 152) = sub_1B8A23964();
        *(v38 + 160) = sub_1B89DD820(&qword_1EBA91638, MEMORY[0x1E6969B30]);
        __swift_allocate_boxed_opaque_existential_1((v38 + 128));
        v39 = v44;
        sub_1B8A23974();
        sub_1B89AA114(v49, v38 + 16);
        *(v38 + 56) = v47;
        v40 = v45;
        *(v38 + 64) = 0;
        *(v38 + 72) = v40;
        *(v38 + 88) = 0;
        *(v38 + 96) = 0;
        *(v38 + 80) = v35;
        *(v38 + 104) = 1;
        *(v38 + 112) = 8;
        *(v38 + 120) = 0;
        __swift_destroy_boxed_opaque_existential_0(v49);
        return (*(v10 + 8))(v39, v9);
      }
    }

    sub_1B89C353C();
    swift_allocError();
    *v27 = 1;
    swift_willThrow();
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1B89D3BB0(uint64_t a1, void **a2)
{
  v2 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA0, qword_1B8A265A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA8, qword_1B8A281D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1B8CC3470](KeyPath, 1);
  sub_1B89AADD4(0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B8A26260;
  v10 = swift_getKeyPath();
  MEMORY[0x1B8CC3470](v10, 1);
  swift_setDeallocating();
  (*(v4 + 8))(v7 + v6, v3);
  swift_deallocClassInstance();
  v34[0] = 1;
  sub_1B89A9148(v2);
  sub_1B89AADD4(0);
  sub_1B89AB538(0, &qword_1EBA91188, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AB0, &qword_1B8A299C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B8A26570;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1B89AEE6C();
  *(v11 + 32) = 0x696669746E656469;
  *(v11 + 40) = 0xEA00000000007265;
  v12 = sub_1B8A238B4();
  *(v11 + 96) = sub_1B89AB538(0, &qword_1ED82DF70, 0x1E696AFB0);
  *(v11 + 104) = sub_1B89CD424();
  *(v11 + 72) = v12;
  v13 = sub_1B8A24204();
  LOBYTE(v35) = 2;
  *(&v35 + 1) = v13;
  *&v36 = v2;
  v37 = 0;
  v38 = 0;
  *(&v36 + 1) = v9;
  LOBYTE(v39) = 1;
  *(&v39 + 1) = 8;
  v40 = 0;
  v31 = 0u;
  v32 = v39;
  v33 = 0;
  v29 = v35;
  v30 = v36;
  sub_1B89A8FB4(&v35, v20);
  v14 = v17;
  v15 = v41;
  sub_1B89AFE74(&v29, v34);
  v18[2] = v31;
  v18[3] = v32;
  v19 = v33;
  v18[0] = v29;
  v18[1] = v30;
  sub_1B89A9028(v18);
  if (!v15)
  {
    v14 = sub_1B89D3410();
    sub_1B89B0BC8(v34);
  }

  v20[0] = 2;
  v21 = v13;
  v22 = v2;
  v24 = 0;
  v25 = 0;
  v23 = v9;
  v26 = 1;
  v27 = 8;
  v28 = 0;
  sub_1B89A9028(v20);
  return v14;
}

uint64_t sub_1B89D3F20@<X0>(void *a1@<X0>, id *a2@<X1>, uint64_t *a3@<X8>)
{
  v30 = a1;
  v28 = a3;
  v29 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA0, qword_1B8A265A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA8, qword_1B8A281D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1B8CC3470](KeyPath, 1);
  sub_1B89AADD4(0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B8A26260;
  v10 = swift_getKeyPath();
  MEMORY[0x1B8CC3470](v10, 1);
  swift_setDeallocating();
  (*(v4 + 8))(v7 + v6, v3);
  swift_deallocClassInstance();
  LOBYTE(v49[0]) = 1;
  LOBYTE(v44) = 0;
  v11 = v29;
  sub_1B89A9148(v29);
  sub_1B89AADD4(0);
  sub_1B89AB538(0, &qword_1EBA91188, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AB0, &qword_1B8A299C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B8A26570;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = sub_1B89AEE6C();
  *(v12 + 32) = 0x696669746E656469;
  *(v12 + 40) = 0xEA00000000007265;
  v13 = v30[3];
  v14 = __swift_project_boxed_opaque_existential_0(v30, v13);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  (*(v17 + 16))(&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B8A23904();
  v18 = sub_1B8A24144();
  *(v12 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AB8, &unk_1B8A265F0);
  *(v12 + 104) = sub_1B89CCD90(&qword_1EBA91AC0, &qword_1EBA91AB8, &unk_1B8A265F0);
  *(v12 + 72) = v18;
  v19 = sub_1B8A24204();
  LOBYTE(v53) = 2;
  *(&v53 + 1) = *v52;
  DWORD1(v53) = *&v52[3];
  *(&v53 + 1) = v19;
  *&v54 = v11;
  v55 = 0;
  v56 = 0;
  *(&v54 + 1) = v9;
  LOBYTE(v57) = 1;
  *(&v57 + 1) = *v51;
  DWORD1(v57) = *&v51[3];
  *(&v57 + 1) = 8;
  v58 = 0;
  v46 = 0u;
  v47 = v57;
  v48 = 0;
  v44 = v53;
  v45 = v54;
  sub_1B89A8FB4(&v53, &v33);
  v20 = v59;
  sub_1B89AFE74(&v44, v49);
  v31[2] = v46;
  v31[3] = v47;
  v32 = v48;
  v31[0] = v44;
  v31[1] = v45;
  sub_1B89A9028(v31);
  if (!v20)
  {
    v21 = v28;
    v28[3] = &type metadata for StickerSequence;
    v21[4] = sub_1B89DD7CC();
    v22 = swift_allocObject();
    *v21 = v22;
    v23 = v49[7];
    *(v22 + 112) = v49[6];
    *(v22 + 128) = v23;
    *(v22 + 144) = v49[8];
    *(v22 + 160) = v50;
    v24 = v49[3];
    *(v22 + 48) = v49[2];
    *(v22 + 64) = v24;
    v25 = v49[5];
    *(v22 + 80) = v49[4];
    *(v22 + 96) = v25;
    v26 = v49[1];
    *(v22 + 16) = v49[0];
    *(v22 + 32) = v26;
  }

  v33 = 2;
  *v34 = *v52;
  *&v34[3] = *&v52[3];
  v35 = v19;
  v36 = v11;
  v38 = 0;
  v39 = 0;
  v37 = v9;
  v40 = 1;
  *v41 = *v51;
  *&v41[3] = *&v51[3];
  v42 = 8;
  v43 = 0;
  return sub_1B89A9028(&v33);
}

uint64_t sub_1B89D43E8(uint64_t a1, uint64_t a2, id *a3)
{
  v45 = a2;
  v46 = a1;
  v41 = sub_1B8A23904();
  v39 = *(v41 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for Sticker.URIType(0);
  v6 = *(*(v42 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v42);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v38 - v9;
  v73 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA0, qword_1B8A265A0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA8, qword_1B8A281D0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1B8CC3470](KeyPath, 1);
  sub_1B89AADD4(0);
  v16 = v45;
  v17 = swift_allocObject();
  v17[1] = xmmword_1B8A26260;
  v18 = swift_getKeyPath();
  MEMORY[0x1B8CC3470](v18, 1);
  swift_setDeallocating();
  (*(v11 + 8))(v14 + v13, v10);
  swift_deallocClassInstance();
  v65[0] = 1;
  LOBYTE(v60) = 0;
  v19 = v73;
  sub_1B89A9148(v73);
  sub_1B89AADD4(0);
  sub_1B89AB538(0, &qword_1EBA91188, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AB0, &qword_1B8A299C0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B8A26570;
  v21 = MEMORY[0x1E69E6158];
  *(v20 + 56) = MEMORY[0x1E69E6158];
  v22 = sub_1B89AEE6C();
  *(v20 + 32) = 0x6C616E7265747865;
  *(v20 + 40) = 0xEB00000000495255;
  *(v20 + 96) = v21;
  *(v20 + 104) = v22;
  v23 = v19;
  v24 = v46;
  *(v20 + 64) = v22;
  *(v20 + 72) = v24;
  *(v20 + 80) = v16;

  v25 = sub_1B8A24204();
  LOBYTE(v68) = 2;
  *(&v68 + 1) = v25;
  *&v69 = v23;
  v70 = 0uLL;
  *(&v69 + 1) = v17;
  LOBYTE(v71) = 1;
  v26 = v48;
  *(&v71 + 1) = 8;
  v72 = 0;
  v62 = 0uLL;
  v63 = v71;
  v64 = 0;
  v60 = v68;
  v61 = v69;
  sub_1B89A8FB4(&v68, &v55);
  v27 = v47;
  sub_1B89AFE74(&v60, v65);
  if (!v27)
  {
    v28 = v44;
    v57 = v62;
    v58 = v63;
    v59 = v64;
    v55 = v60;
    v56 = v61;
    sub_1B89A9028(&v55);
    v29 = sub_1B89D3410();
    if (v29)
    {
      v26 = v29;
    }

    else
    {
      type metadata accessor for Sticker(0);
      sub_1B8A007C0(v28);
      v26 = v43;
      sub_1B89DEA2C(v28, v43, type metadata accessor for Sticker.URIType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if ((EnumCaseMultiPayload - 2) >= 3)
        {
          sub_1B89C353C();
          swift_allocError();
          *v37 = 3;
        }

        else
        {
          v32 = v26;
          v26 = type metadata accessor for Sticker.URIType;
          sub_1B89DD868(v32, type metadata accessor for Sticker.URIType);
          sub_1B89C353C();
          swift_allocError();
          *v33 = 2;
        }

        swift_willThrow();
        sub_1B89DD868(v28, type metadata accessor for Sticker.URIType);
        sub_1B89B0BC8(v65);
        goto LABEL_3;
      }

      if (EnumCaseMultiPayload)
      {
        v36 = *v26;
        v54 = *(v26 + 8);
        v49[0] = 0;
        v26 = sub_1B89D3270(v36, &v54, v49);
        sub_1B89AADD4(0);
      }

      else
      {
        v35 = v39;
        v34 = v40;
        (*(v39 + 32))(v40, v26, v41);
        v49[0] = 0;
        v26 = sub_1B89D3BB0(v34, v49);
        sub_1B89AADD4(0);
        (*(v35 + 8))(v34, v41);
      }

      sub_1B89DD868(v28, type metadata accessor for Sticker.URIType);
    }

    sub_1B89B0BC8(v65);
    LOBYTE(v49[0]) = 2;
    *(v49 + 1) = *v67;
    HIDWORD(v49[0]) = *&v67[3];
    v49[1] = v25;
    v49[2] = v73;
    v49[4] = 0;
    v49[5] = 0;
    v49[3] = v17;
    v50 = 1;
    *v51 = *v66;
    *&v51[3] = *&v66[3];
    v52 = 8;
    v53 = 0;
    sub_1B89A9028(v49);
    return v26;
  }

  v57 = v62;
  v58 = v63;
  v59 = v64;
  v55 = v60;
  v56 = v61;
  sub_1B89A9028(&v55);
LABEL_3:
  LOBYTE(v60) = 2;
  *(&v60 + 1) = *v67;
  DWORD1(v60) = *&v67[3];
  *(&v60 + 1) = v25;
  *&v61 = v73;
  v62 = 0uLL;
  *(&v61 + 1) = v17;
  LOBYTE(v63) = 1;
  *(&v63 + 1) = *v66;
  DWORD1(v63) = *&v66[3];
  *(&v63 + 1) = 8;
  v64 = 0;
  sub_1B89A9028(&v60);
  return v26;
}

uint64_t sub_1B89D4ABC(uint64_t a1, uint64_t a2, void **a3)
{
  v57 = a1;
  v22 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA0, qword_1B8A265A0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA8, qword_1B8A281D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1B8CC3470](KeyPath, 1);
  sub_1B89AADD4(0);
  v10 = swift_allocObject();
  v10[1] = xmmword_1B8A26260;
  v11 = swift_getKeyPath();
  MEMORY[0x1B8CC3470](v11, 1);
  swift_setDeallocating();
  (*(v5 + 8))(v8 + v7, v4);
  swift_deallocClassInstance();
  v39 = 1;
  sub_1B89A9148(v22);
  sub_1B89AADD4(0);
  sub_1B89AB538(0, &qword_1EBA91188, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AB0, &qword_1B8A299C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B8A26570;
  v13 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v14 = sub_1B89AEE6C();
  *(v12 + 32) = 0x6C616E7265747865;
  *(v12 + 40) = 0xEB00000000495255;
  *(v12 + 96) = v13;
  *(v12 + 104) = v14;
  v15 = v57;
  *(v12 + 64) = v14;
  *(v12 + 72) = v15;
  *(v12 + 80) = a2;

  v16 = sub_1B8A24204();
  LOBYTE(v52) = 2;
  *(&v52 + 1) = v16;
  *&v53 = v22;
  v54 = 0uLL;
  *(&v53 + 1) = v10;
  LOBYTE(v55) = 1;
  *(&v55 + 1) = 8;
  v56 = 0;
  v36 = 0uLL;
  v37 = v55;
  v38 = 0;
  v34 = v52;
  v35 = v53;
  sub_1B89A8FB4(&v52, &v29);
  v17 = v21;
  sub_1B89AFE74(&v34, &v39);
  if (!v23)
  {
    v31 = v36;
    v32 = v37;
    v33 = v38;
    v29 = v34;
    v30 = v35;
    sub_1B89A9028(&v29);
    sub_1B89B035C(&v39);
    v17 = v18;
    sub_1B89B0BC8(&v39);
    if (v17 < 0 || (v17 & 0x4000000000000000) != 0)
    {
      if (sub_1B8A24554())
      {
        goto LABEL_7;
      }
    }

    else if (*(v17 + 16))
    {
LABEL_7:
      LOBYTE(v24[0]) = 2;
      *(v24 + 1) = *v51;
      HIDWORD(v24[0]) = *&v51[3];
      v24[1] = v16;
      v24[2] = v22;
      v24[4] = 0;
      v24[5] = 0;
      v24[3] = v10;
      v25 = 1;
      *v26 = *v50;
      *&v26[3] = *&v50[3];
      v27 = 8;
      v28 = 0;
      sub_1B89A9028(v24);
      return v17;
    }

    v24[0] = 0;
    v20 = sub_1B89D43E8(v57, a2, v24);
    sub_1B89AADD4(0);
    if (v20)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA921D0, &unk_1B8A281C0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1B8A26280;
      *(v17 + 32) = v20;
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
    }

    goto LABEL_7;
  }

  v31 = v36;
  v32 = v37;
  v33 = v38;
  v29 = v34;
  v30 = v35;
  sub_1B89A9028(&v29);
  v39 = 2;
  *v40 = *v51;
  *&v40[3] = *&v51[3];
  v41 = v16;
  v42 = v22;
  v44 = 0;
  v45 = 0;
  v43 = v10;
  v46 = 1;
  *v47 = *v50;
  *&v47[3] = *&v50[3];
  v48 = 8;
  v49 = 0;
  sub_1B89A9028(&v39);
  return v17;
}

uint64_t sub_1B89D4F18@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA0, qword_1B8A265A0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA8, qword_1B8A281D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1B8CC3470](KeyPath, 1);
  sub_1B89AADD4(0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B8A26260;
  v11 = swift_getKeyPath();
  MEMORY[0x1B8CC3470](v11, 1);
  swift_setDeallocating();
  (*(v5 + 8))(v8 + v7, v4);
  swift_deallocClassInstance();
  v19[0] = 0;
  sub_1B89A9148(v3);
  sub_1B89AADD4(0);
  sub_1B89AB538(0, &qword_1EBA91188, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AB0, &qword_1B8A299C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B8A26570;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = sub_1B89AEE6C();
  *(v12 + 32) = 0x6C616E7265747865;
  *(v12 + 40) = 0xEB00000000495255;
  *(v12 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F40, &unk_1B8A27050);
  *(v12 + 104) = sub_1B89CCD90(&qword_1EBA91AC8, &unk_1EBA91F40, &unk_1B8A27050);
  *(v12 + 72) = a1;

  v13 = sub_1B8A24204();
  LOBYTE(v33) = 2;
  *(&v33 + 1) = v13;
  *&v34 = v3;
  v35 = 0;
  v36 = 0;
  *(&v34 + 1) = v10;
  LOBYTE(v37) = 1;
  *(&v37 + 1) = 8;
  v38 = 0;
  v30 = 0u;
  v31 = v37;
  v32 = 0;
  v28 = v33;
  v29 = v34;
  sub_1B89A8FB4(&v33, v19);
  sub_1B89AFE74(&v28, a3);
  v17[2] = v30;
  v17[3] = v31;
  v18 = v32;
  v17[0] = v28;
  v17[1] = v29;
  sub_1B89A9028(v17);
  v19[0] = 2;
  v20 = v13;
  v21 = v3;
  v23 = 0;
  v24 = 0;
  v22 = v10;
  v25 = 1;
  v26 = 8;
  v27 = 0;
  return sub_1B89A9028(v19);
}

uint64_t sub_1B89D524C(_BYTE *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92220, &unk_1B8A281A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v117 - v6;
  v8 = sub_1B8A23934();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v152 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B8A23904();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1[OBJC_IVAR___STKSticker_type] & 1) == 0)
  {
    sub_1B89C353C();
    swift_allocError();
    *v52 = 5;
    swift_willThrow();
    return v7;
  }

  v140 = v9;
  v141 = v8;
  v122 = v7;
  v143 = v2;
  v144 = v1;
  v17 = OBJC_IVAR___STKSticker_representations;
  v149 = v14;
  swift_beginAccess();
  v153 = v12;
  v18 = *&a1[v17];
  v19 = &a1[OBJC_IVAR___STKSticker_name];
  swift_beginAccess();
  v20 = v19[1];
  v132 = *v19;
  v21 = &a1[OBJC_IVAR___STKSticker_metadata];
  swift_beginAccess();
  v22 = *v21;
  v148 = v16;
  v150 = v21[1];
  v23 = v150;
  v151 = v22;

  v131 = v20;

  sub_1B89C3C44(v22, v23);
  v24 = sub_1B8A238A4();
  v156 = 0xD00000000000001BLL;
  v157 = 0x80000001B8A2A9A0;
  MEMORY[0x1B8CC3E20](v24);

  v128 = v157;
  v129 = v156;
  v25 = &a1[OBJC_IVAR___STKSticker_accessibilityName];
  swift_beginAccess();
  v26 = v25[1];
  v130 = *v25;
  v145 = v26;
  v27 = OBJC_IVAR___STKSticker_attributionInfo;
  swift_beginAccess();
  v146 = *&a1[v27];
  v28 = &a1[OBJC_IVAR___STKSticker_searchText];
  swift_beginAccess();
  v29 = v28[1];
  v135 = *v28;
  v147 = v29;
  v30 = &a1[OBJC_IVAR___STKSticker_sanitizedPrompt];
  swift_beginAccess();
  v31 = v30[1];
  v137 = *v30;
  v142 = a1;
  v32 = &a1[OBJC_IVAR___STKSticker_rewrittenPrompt];
  swift_beginAccess();
  v33 = v32[1];
  v139 = *v32;
  v134 = type metadata accessor for Sticker(0);
  v34 = objc_allocWithZone(v134);
  v35 = &v34[OBJC_IVAR___STKSticker_accessibilityName];
  *v35 = 0;
  *(v35 + 1) = 0;
  v127 = v35;
  v36 = &v34[OBJC_IVAR___STKSticker_searchText];
  *v36 = 0;
  *(v36 + 1) = 0;
  v37 = &v34[OBJC_IVAR___STKSticker_sanitizedPrompt];
  *v37 = 0;
  *(v37 + 1) = 0;
  v38 = &v34[OBJC_IVAR___STKSticker_rewrittenPrompt];
  *v38 = 0;
  *(v38 + 1) = 0;
  v39 = &v34[OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier];
  *v39 = 0;
  *(v39 + 1) = 0;
  v123 = &v34[OBJC_IVAR___STKSticker_metadata];
  *&v34[OBJC_IVAR___STKSticker_metadata] = xmmword_1B8A26F80;
  v40 = &v34[OBJC_IVAR___STKSticker_externalURI];
  *v40 = 0;
  v40[1] = 0;
  v125 = v40;
  v126 = &v34[OBJC_IVAR___STKSticker_attributionInfo];
  *&v34[OBJC_IVAR___STKSticker_attributionInfo] = 0;
  v41 = v149;
  v42 = v153;
  v120 = *(v149 + 56);
  v121 = v149 + 56;
  v120(&v34[OBJC_IVAR___STKSticker__companionRecentUUID], 1, 1, v153);
  v34[OBJC_IVAR___STKSticker_animatedVariantIsPreferred] = 2;
  v43 = v146;
  v44 = v148;
  sub_1B89C3C44(v151, v150);
  v138 = v33;

  v124 = v43;

  v136 = v31;

  sub_1B8A238F4();
  v34[OBJC_IVAR___STKSticker_type] = 0;
  v118 = *(v41 + 16);
  v119 = v41 + 16;
  v118(&v34[OBJC_IVAR___STKSticker_identifier], v44, v42);
  v133 = v34;
  *&v34[OBJC_IVAR___STKSticker_representations] = v18;
  if (v18 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
  {
    v46 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v155 = MEMORY[0x1E69E7CC0];

      sub_1B8A0394C(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
LABEL_33:
        v7 = MEMORY[0x1B8CC44E0](0, v31);
        v113 = MEMORY[0x1B8CC44E0](1, v31);
        goto LABEL_28;
      }

      v46 = v155;
      if ((v18 & 0xC000000000000001) != 0)
      {
        v47 = 0;
        v33 = &OBJC_IVAR___STKStickerRepresentation_byteCount;
        do
        {
          v48 = MEMORY[0x1B8CC44E0](v47, v18);
          v49 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v31 = *(v48 + v49);
          swift_unknownObjectRelease();
          v155 = v46;
          v51 = v46[2];
          v50 = v46[3];
          if (v51 >= v50 >> 1)
          {
            sub_1B8A0394C((v50 > 1), v51 + 1, 1);
            v46 = v155;
          }

          ++v47;
          v46[2] = v51 + 1;
          v46[v51 + 4] = v31;
        }

        while (i != v47);
      }

      else
      {
        v33 = 32;
        do
        {
          v53 = *(v18 + v33);
          v54 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v31 = *(v53 + v54);
          v155 = v46;
          v56 = v46[2];
          v55 = v46[3];
          if (v56 >= v55 >> 1)
          {
            sub_1B8A0394C((v55 > 1), v56 + 1, 1);
            v46 = v155;
          }

          v46[2] = v56 + 1;
          v46[v56 + 4] = v31;
          v33 += 8;
          --i;
        }

        while (i);
      }
    }

    v57 = v46[2];
    v58 = 0;
    if (!v57)
    {
      break;
    }

    v59 = v46 + 4;
    while (1)
    {
      v60 = *v59++;
      v61 = __OFADD__(v58, v60);
      v58 += v60;
      if (v61)
      {
        break;
      }

      if (!--v57)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_31:
    ;
  }

LABEL_22:
  v62 = v153;

  v63 = v132;
  v64 = v133;
  *&v133[OBJC_IVAR___STKSticker_byteCount] = v58;
  v65 = &v64[OBJC_IVAR___STKSticker_name];
  v66 = v131;
  *v65 = v63;
  *(v65 + 1) = v66;
  *&v64[OBJC_IVAR___STKSticker_effect] = 0;
  v67 = v123;
  swift_beginAccess();
  v68 = *v67;
  v69 = v67[1];
  v70 = v150;
  v71 = v151;
  *v67 = v151;
  v67[1] = v70;
  sub_1B89C3C44(v71, v70);
  sub_1B89B4A04(v68, v69);
  v72 = v125;
  swift_beginAccess();
  v73 = v72[1];
  v74 = v128;
  *v72 = v129;
  v72[1] = v74;

  v75 = v127;
  swift_beginAccess();
  v76 = *(v75 + 1);
  v77 = v145;
  *v75 = v130;
  *(v75 + 1) = v77;

  v78 = v126;
  swift_beginAccess();
  v79 = *v78;
  *v78 = v146;
  v80 = v124;
  v146 = v80;

  v81 = [objc_opt_self() currentEnvironment];
  v82 = [v81 timeProvider];

  [v82 timestamp];
  v84 = v83;
  swift_unknownObjectRelease();
  *&v64[OBJC_IVAR___STKSticker_creationDate] = v84;
  *&v64[OBJC_IVAR___STKSticker_lastUsedDate] = v84;
  *&v64[OBJC_IVAR___STKSticker_libraryIndex] = 0;
  v154.receiver = v64;
  v154.super_class = v134;
  v85 = objc_msgSendSuper2(&v154, sel_init);
  sub_1B89FE9A8();

  (*(v149 + 8))(v148, v62);
  sub_1B89B4A04(v71, v70);
  v86 = &v85[OBJC_IVAR___STKSticker_searchText];
  swift_beginAccess();
  v87 = *(v86 + 1);
  v88 = v147;
  *v86 = v135;
  *(v86 + 1) = v88;
  v89 = v85;

  v90 = &v89[OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier];
  swift_beginAccess();
  v91 = v90[1];
  *v90 = 0;
  v90[1] = 0;

  v92 = &v89[OBJC_IVAR___STKSticker_sanitizedPrompt];
  swift_beginAccess();
  v93 = *(v92 + 1);
  v94 = v136;
  *v92 = v137;
  *(v92 + 1) = v94;

  v95 = &v89[OBJC_IVAR___STKSticker_rewrittenPrompt];
  swift_beginAccess();
  v96 = *(v95 + 1);
  v97 = v138;
  *v95 = v139;
  *(v95 + 1) = v97;

  v98 = v152;
  sub_1B8A23924();
  v99 = sub_1B8A23914();
  v101 = v100;

  sub_1B89B4A04(v71, v70);
  (*(v140 + 8))(v98, v141);
  v102 = v90[1];
  *v90 = v99;
  v90[1] = v101;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA921D0, &unk_1B8A281C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8A26FE0;
  v104 = v142;
  *(inited + 32) = v142;
  v7 = (inited + 32);
  *(inited + 40) = v89;
  v33 = v89;
  v105 = v104;
  v106 = v143;
  v107 = sub_1B89D6150(inited);
  if (v106)
  {

    swift_setDeallocating();
    v108 = *(inited + 16);
    swift_arrayDestroy();
    return v7;
  }

  v31 = v107;
  v18 = v153;
  swift_setDeallocating();
  v109 = *(inited + 16);
  result = swift_arrayDestroy();
  if ((v31 & 0xC000000000000001) != 0)
  {
    goto LABEL_33;
  }

  v111 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v111)
  {
    if (v111 != 1)
    {
      v112 = *(v31 + 40);
      v7 = *(v31 + 32);
      v113 = v112;
LABEL_28:
      v114 = v113;

      v115 = v122;
      v118(v122, &v114[OBJC_IVAR___STKSticker_identifier], v18);
      v120(v115, 0, 1, v18);
      v116 = OBJC_IVAR___STKSticker__companionRecentUUID;
      swift_beginAccess();
      sub_1B89DD9E4(v115, &v7[v116]);
      swift_endAccess();
      sub_1B89D2920();
      sub_1B8A07D10();

      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1B89D5E3C(NSObject *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BD0, qword_1B8A26FF0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v28 - v10);
  v34 = v9;
  v12 = &v28 + *(v9 + 48) - v10;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v13 = *(v29 + 48);
  v14 = sub_1B8A17FE0(v12, a1);
  *v11 = v15;
  *&v12[v13] = v14;
  swift_beginAccess();
  sub_1B89AA114(v2 + 16, v33);
  v16 = type metadata accessor for StickerStore();
  v31 = v16;
  v32 = &off_1F373ECA0;
  v30[0] = v2;
  type metadata accessor for StickerStore.AddStickerMethod();
  inited = swift_initStackObject();
  v18 = v31;
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  inited[7] = *v22;
  inited[10] = v16;
  inited[11] = &off_1F373ECA0;
  sub_1B89D2F5C(v33, (inited + 2));

  __swift_destroy_boxed_opaque_existential_0(v30);
  v24 = v28;
  v28 = sub_1B89DC134(a1);
  if (!v24)
  {
    sub_1B89D2920();
    sub_1B8A07D10();
  }

  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0(inited + 2);
  __swift_destroy_boxed_opaque_existential_0(inited + 7);
  sub_1B89AF268(v11, v8, &qword_1EBA91BD0, qword_1B8A26FF0);
  v25 = v8 + *(v34 + 48);
  sub_1B8A1A7A0(v25, *(v25 + *(v29 + 48)), *v8);

  sub_1B89A8A78(v11, &qword_1EBA91BD0, qword_1B8A26FF0);
  v26 = sub_1B8A23B14();
  (*(*(v26 - 8) + 8))(v25, v26);
  return v28;
}

uint64_t sub_1B89D6150(unint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BD0, qword_1B8A26FF0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v50 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v45 - v9);
  v11 = &v45 + *(v8 + 48) - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v12 = *(v49 + 48);
  v13 = sub_1B8A18688(v11, a1);
  *v10 = v14;
  *&v11[v12] = v13;
  swift_beginAccess();
  sub_1B89AA114((v1 + 2), v56);
  v15 = type metadata accessor for StickerStore();
  v54 = v15;
  v55 = &off_1F373ECA0;
  v53[0] = v1;
  type metadata accessor for StickerStore.AddStickerMethod();
  inited = swift_initStackObject();
  v17 = v54;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v53, v54);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  inited[7] = *v21;
  inited[10] = v15;
  inited[11] = &off_1F373ECA0;
  v52 = inited;
  sub_1B89D2F5C(v56, (inited + 2));

  __swift_destroy_boxed_opaque_existential_0(v53);
  v23 = a1;
  v48 = inited + 7;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v44)
  {
    v25 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v26 = v23;
    v45 = v1;
    v57 = MEMORY[0x1E69E7CC0];
    v1 = &v57;
    result = sub_1B8A246D4();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v46 = v4;
    v47 = v10;
    v28 = 0;
    v29 = v26;
    v4 = v26 & 0xC000000000000001;
    v23 = &v58;
    v51 = v26 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v10 = (v28 + 1);
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v4)
      {
        v30 = MEMORY[0x1B8CC44E0](v28, v29);
      }

      else
      {
        if (v28 >= *(v51 + 16))
        {
          goto LABEL_18;
        }

        v30 = *(v29 + 8 * v28 + 32);
      }

      v31 = v30;
      sub_1B89DC134(v30);
      if (v2)
      {
        v38 = v52;
        swift_setDeallocating();
        __swift_destroy_boxed_opaque_existential_0(v38 + 2);
        __swift_destroy_boxed_opaque_existential_0(v48);

        v39 = v47;
        v40 = v50;
        sub_1B89AF268(v47, v50, &qword_1EBA91BD0, qword_1B8A26FF0);
        v41 = *v40;
        v25 = v40 + *(v46 + 48);
        sub_1B8A1AB54(v25, *(v25 + *(v49 + 48)), v41);

        sub_1B89A8A78(v39, &qword_1EBA91BD0, qword_1B8A26FF0);
        v42 = sub_1B8A23B14();
        (*(*(v42 - 8) + 8))(v25, v42);
        return v25;
      }

      v1 = &v57;
      sub_1B8A246B4();
      v32 = *(v57 + 16);
      sub_1B8A246E4();
      sub_1B8A246F4();
      sub_1B8A246C4();
      ++v28;
      v29 = v26;
      if (v10 == i)
      {
        v25 = v57;
        v10 = v47;
        v4 = v46;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v43 = v23;
    v44 = sub_1B8A24554();
    v23 = v43;
  }

LABEL_14:
  sub_1B89D2920();
  sub_1B8A07D10();

  v33 = v52;
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0(v33 + 2);
  __swift_destroy_boxed_opaque_existential_0(v48);
  v34 = v50;
  sub_1B89AF268(v10, v50, &qword_1EBA91BD0, qword_1B8A26FF0);
  v35 = *v34;
  v36 = v34 + *(v4 + 48);
  sub_1B8A1AB54(v36, *(v36 + *(v49 + 48)), v35);

  sub_1B89A8A78(v10, &qword_1EBA91BD0, qword_1B8A26FF0);
  v37 = sub_1B8A23B14();
  (*(*(v37 - 8) + 8))(v36, v37);
  return v25;
}

void sub_1B89D6690(uint64_t a1)
{
  v115 = sub_1B8A23904();
  v86 = *(v115 - 8);
  v3 = *(v86 + 64);
  v4 = MEMORY[0x1EEE9AC00](v115);
  v85 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v95 = (&v82 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BD0, qword_1B8A26FF0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v82 - v13);
  v15 = &v82 + *(v12 + 48) - v13;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v16 = *(v87 + 48);
  v17 = sub_1B8A18F94(v15, a1);
  *v14 = v18;
  *&v15[v16] = v17;
  swift_beginAccess();
  sub_1B89AA114(v1 + 16, &v99);
  v19 = v101;
  v20 = v102;
  __swift_project_boxed_opaque_existential_0(&v99, v101);
  v21 = *(v20 + 32);
  v92 = a1;
  v22 = v94;
  v21(a1, v19, v20);
  if (v22)
  {
    v88 = v22;
    __swift_destroy_boxed_opaque_existential_0(&v99);
    sub_1B89AF268(v14, v11, &qword_1EBA91BD0, qword_1B8A26FF0);
    v23 = v11 + *(v7 + 48);
    sub_1B8A1A2B4(v23, *(v23 + *(v87 + 48)), *v11);

    v24 = v14;
    goto LABEL_89;
  }

  v89 = v1;
  v83 = v14;
  v84 = v11;
  v82 = v7;
  __swift_destroy_boxed_opaque_existential_0(&v99);
  v25 = v92;
  v26 = *(v92 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  if (v26)
  {
    v88 = 0;
    v107[0] = MEMORY[0x1E69E7CC0];
    sub_1B8A038E8(0, v26, 0);
    v28 = *(v86 + 16);
    v27 = v107[0];
    v29 = v25 + ((*(v86 + 80) + 32) & ~*(v86 + 80));
    v92 = 0x80000001B8A2A9A0;
    v93 = v28;
    v30 = *(v86 + 72);
    v94 = (v86 + 16);
    v90 = (v86 + 8);
    v91 = v30;
    v31 = v115;
    v32 = v95;
    do
    {
      v93(v32, v29, v31);
      v33 = sub_1B8A238A4();
      v99 = 0xD00000000000001BLL;
      v100 = v92;
      MEMORY[0x1B8CC3E20](v33);
      v31 = v115;

      v34 = v99;
      v35 = v100;
      (*v90)(v32, v31);
      v107[0] = v27;
      v37 = *(v27 + 16);
      v36 = *(v27 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1B8A038E8((v36 > 1), v37 + 1, 1);
        v31 = v115;
        v27 = v107[0];
      }

      *(v27 + 16) = v37 + 1;
      v38 = v27 + 16 * v37;
      *(v38 + 32) = v34;
      *(v38 + 40) = v35;
      v29 += v91;
      --v26;
      v32 = v95;
    }

    while (v26);
    v39 = v88;
  }

  else
  {
    v39 = 0;
  }

  v106 = 0;
  v40 = v89;
  sub_1B89D4F18(v27, &v106, v107);
  v41 = v84;
  v42 = v87;
  v88 = v39;
  if (v39)
  {
    sub_1B89AADD4(0);

LABEL_12:
    v43 = v83;
    sub_1B89AF268(v83, v41, &qword_1EBA91BD0, qword_1B8A26FF0);
    v44 = *v41;
    v45 = *(v82 + 48);
    goto LABEL_88;
  }

  sub_1B89AADD4(0);

  v46 = v114;
  v47 = __swift_project_boxed_opaque_existential_0(v113, v114);
  v48 = sub_1B89AA114(v107, v98);
  v104[2] = v110;
  v104[3] = v111;
  v105 = v112;
  v104[0] = v108;
  v104[1] = v109;
  v96[2] = v110;
  v96[3] = v111;
  v97 = v112;
  v96[0] = v108;
  v96[1] = v109;
  v49 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v82 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v52 + 16))(v51, v47, v46);
  sub_1B89A8FB4(v104, &v99);
  sub_1B89B09B0(v98, v96, v51, v46, &v99);
  v93 = (v86 + 32);
  v94 = (v86 + 16);
  v95 = MEMORY[0x1E69E7CC0];
  v53 = v40;
  while (1)
  {
    v55 = v103;
    v56 = v103 >> 62;
    if (v103 >> 62)
    {
      break;
    }

    if (!*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_52;
    }

LABEL_21:
    if ((v55 & 0xC000000000000001) != 0)
    {
      v57 = MEMORY[0x1B8CC44E0](0, v55);
    }

    else
    {
      if (!*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
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
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
        return;
      }

      v57 = *(v55 + 32);
    }

    v58 = v57;
    if (v56)
    {
      if (!sub_1B8A24554())
      {
        goto LABEL_95;
      }

      if (sub_1B8A24554() < 1)
      {
        goto LABEL_96;
      }

      v59 = sub_1B8A24554();
    }

    else
    {
      v59 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v59)
      {
        goto LABEL_95;
      }
    }

    v60 = v59 - 1;
    if (__OFSUB__(v59, 1))
    {
      goto LABEL_91;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v56)
      {
LABEL_38:
        sub_1B8A24554();
      }

      else
      {
        v61 = v55 & 0xFFFFFFFFFFFFFF8;
LABEL_37:
        v62 = *(v61 + 16);
      }

      v55 = sub_1B8A24674();
      v61 = v55 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_40;
    }

    if (v56)
    {
      goto LABEL_38;
    }

    v61 = v55 & 0xFFFFFFFFFFFFFF8;
    if (v60 > *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_37;
    }

LABEL_40:

    if (v55 >> 62)
    {
      v74 = sub_1B8A24554();
      if (__OFSUB__(v74, 1))
      {
        goto LABEL_101;
      }

      memmove((v61 + 32), (v61 + 40), 8 * (v74 - 1));
      v75 = sub_1B8A24554();
      v64 = v75 - 1;
      if (__OFSUB__(v75, 1))
      {
        goto LABEL_92;
      }
    }

    else
    {
      v63 = *(v61 + 16);
      memmove((v61 + 32), (v61 + 40), 8 * v63 - 8);
      v64 = v63 - 1;
      if (__OFSUB__(v63, 1))
      {
        goto LABEL_92;
      }
    }

    *(v61 + 16) = v64;
    v103 = v55;
    v53 = v89;
LABEL_17:
    if (v58[OBJC_IVAR___STKSticker_type])
    {
    }

    else
    {
      (*v94)(v85, &v58[OBJC_IVAR___STKSticker_identifier], v115);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v95 = sub_1B89DCF18(0, v95[2] + 1, 1, v95, &qword_1EBA91C00, &qword_1B8A271C0, MEMORY[0x1E69695A8]);
      }

      v66 = v95[2];
      v65 = v95[3];
      if (v66 >= v65 >> 1)
      {
        v95 = sub_1B89DCF18(v65 > 1, v66 + 1, 1, v95, &qword_1EBA91C00, &qword_1B8A271C0, MEMORY[0x1E69695A8]);
      }

      v67 = v95;
      v95[2] = v66 + 1;
      (*(v86 + 32))(v67 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v66, v85, v115);
    }
  }

  if (sub_1B8A24554())
  {
    if (!sub_1B8A24554())
    {
      goto LABEL_99;
    }

    if (!sub_1B8A24554())
    {
      goto LABEL_100;
    }

    goto LABEL_21;
  }

LABEL_52:
  sub_1B89B0C1C();
  v54 = v103;
  v68 = v103 >> 62;
  if (!(v103 >> 62))
  {
    if (!*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_81;
    }

    goto LABEL_54;
  }

  if (sub_1B8A24554())
  {
    if (!sub_1B8A24554())
    {
      goto LABEL_102;
    }

    if (!sub_1B8A24554())
    {
      goto LABEL_103;
    }

LABEL_54:
    if ((v54 & 0xC000000000000001) != 0)
    {
      v69 = MEMORY[0x1B8CC44E0](0, v54);
    }

    else
    {
      if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_93;
      }

      v69 = *(v54 + 32);
    }

    v58 = v69;
    if (v68)
    {
      if (!sub_1B8A24554())
      {
        goto LABEL_97;
      }

      if (sub_1B8A24554() < 1)
      {
        goto LABEL_98;
      }

      v70 = sub_1B8A24554();
    }

    else
    {
      v70 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v70)
      {
        goto LABEL_97;
      }
    }

    v71 = v70 - 1;
    if (__OFSUB__(v70, 1))
    {
      goto LABEL_94;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v68)
      {
        v72 = v54 & 0xFFFFFFFFFFFFFF8;
        if (v71 > *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_70:
          v73 = *(v72 + 16);
LABEL_15:
          v54 = sub_1B8A24674();
          v103 = v54;
        }

        sub_1B89DD6CC(0, 1, 0);
        v103 = v54;
        sub_1B89B44F4(v58);
        if (!v58)
        {
          goto LABEL_82;
        }

        goto LABEL_17;
      }
    }

    else if (!v68)
    {
      v72 = v54 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_70;
    }

    sub_1B8A24554();
    goto LABEL_15;
  }

LABEL_81:
  sub_1B89B44F4(0);
LABEL_82:
  sub_1B89B4780(&v99);
  v76 = v95;
  if (v95[2])
  {
    sub_1B89AA114(v53 + 16, &v99);
    v77 = v101;
    v78 = v102;
    __swift_project_boxed_opaque_existential_0(&v99, v101);
    v79 = v88;
    (*(v78 + 32))(v76, v77, v78);
    v42 = v87;
    v88 = v79;
    if (v79)
    {
      sub_1B89B0BC8(v107);

      __swift_destroy_boxed_opaque_existential_0(&v99);
      goto LABEL_12;
    }

    __swift_destroy_boxed_opaque_existential_0(&v99);
    v80 = v82;
    v43 = v83;
  }

  else
  {

    v80 = v82;
    v43 = v83;
    v42 = v87;
  }

  sub_1B89D2920();
  sub_1B8A07D10();

  sub_1B89B0BC8(v107);
  sub_1B89AF268(v43, v41, &qword_1EBA91BD0, qword_1B8A26FF0);
  v44 = *v41;
  v45 = *(v80 + 48);
LABEL_88:
  v23 = v41 + v45;
  sub_1B8A1A2B4(v41 + v45, *(v41 + v45 + *(v42 + 48)), v44);

  v24 = v43;
LABEL_89:
  sub_1B89A8A78(v24, &qword_1EBA91BD0, qword_1B8A26FF0);
  v81 = sub_1B8A23B14();
  (*(*(v81 - 8) + 8))(v23, v81);
}

uint64_t sub_1B89D71FC()
{
  swift_beginAccess();
  sub_1B89AA114(v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_0(v4, v5);
  (*(v2 + 56))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_0(v4);
}

uint64_t sub_1B89D7290(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BD0, qword_1B8A26FF0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v23[-v11];
  v13 = &v23[*(v10 + 48) - v11];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v15 = *(v14 + 48);
  v16 = sub_1B8A18F94(v13, a1);
  *v12 = v17;
  *&v13[v15] = v16;
  swift_beginAccess();
  sub_1B89AA114(v3 + 16, v24);
  v18 = v25;
  v19 = v26;
  __swift_project_boxed_opaque_existential_0(v24, v25);
  (*(v19 + 32))(a1, v18, v19);
  __swift_destroy_boxed_opaque_existential_0(v24);
  if (!v2)
  {
    sub_1B89D2920();
    sub_1B8A07D10();
  }

  sub_1B89AF268(v12, v9, &qword_1EBA91BD0, qword_1B8A26FF0);
  v20 = v9 + *(v5 + 48);
  sub_1B8A1A2B4(v20, *(v20 + *(v14 + 48)), *v9);

  sub_1B89A8A78(v12, &qword_1EBA91BD0, qword_1B8A26FF0);
  v21 = sub_1B8A23B14();
  return (*(*(v21 - 8) + 8))(v20, v21);
}

uint64_t sub_1B89D74B4(char *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BD0, qword_1B8A26FF0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v70 = (&v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v67 - v9);
  v11 = &v67 + *(v8 + 48) - v9;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v12 = *(v75 + 48);
  v13 = sub_1B8A194B4(v11, a1);
  *v10 = v14;
  *&v11[v12] = v13;
  swift_beginAccess();
  sub_1B89AA114(v1 + 16, &v71);
  v15 = v73;
  v16 = v74;
  __swift_project_boxed_opaque_existential_0(&v71, v73);
  (*(v16 + 40))(a1, v15, v16);
  if (v2)
  {
LABEL_2:
    __swift_destroy_boxed_opaque_existential_0(&v71);
    goto LABEL_24;
  }

  __swift_destroy_boxed_opaque_existential_0(&v71);
  if (a1[OBJC_IVAR___STKSticker_type] != 1)
  {
    goto LABEL_23;
  }

  v68 = v1;
  v17 = sub_1B8A238A4();
  v71 = 0xD00000000000001BLL;
  v72 = 0x80000001B8A2A9A0;
  MEMORY[0x1B8CC3E20](v17);

  v18 = v71;
  v71 = 0;
  v19 = sub_1B89D4ABC(v18, v72, &v71);
  sub_1B89AADD4(0);

  v67 = 0;
  if (v19 >> 62)
  {
LABEL_21:
    v20 = sub_1B8A24554();
    if (v20)
    {
      goto LABEL_6;
    }

LABEL_22:

    goto LABEL_23;
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
    goto LABEL_22;
  }

LABEL_6:
  v21 = 0;
  v69 = v4;
  while ((v19 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x1B8CC44E0](v21, v19);
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      goto LABEL_16;
    }

LABEL_10:
    if (v22[OBJC_IVAR___STKSticker_type] != 1)
    {
      goto LABEL_17;
    }

    ++v21;
    v24 = v23 == v20;
    v4 = v69;
    if (v24)
    {
      goto LABEL_22;
    }
  }

  if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_21;
  }

  v22 = *(v19 + 8 * v21 + 32);
  v23 = v21 + 1;
  if (!__OFADD__(v21, 1))
  {
    goto LABEL_10;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  v25 = v22;

  v26 = &a1[OBJC_IVAR___STKSticker_name];
  swift_beginAccess();
  v28 = *v26;
  v27 = *(v26 + 1);
  v29 = &v25[OBJC_IVAR___STKSticker_name];
  swift_beginAccess();
  v30 = *(v29 + 1);
  *v29 = v28;
  *(v29 + 1) = v27;

  v31 = OBJC_IVAR___STKSticker_effect;
  swift_beginAccess();
  v32 = *&a1[v31];
  v33 = OBJC_IVAR___STKSticker_effect;
  swift_beginAccess();
  *&v25[v33] = v32;
  v34 = &a1[OBJC_IVAR___STKSticker_metadata];
  swift_beginAccess();
  v36 = *v34;
  v35 = v34[1];
  v37 = &v25[OBJC_IVAR___STKSticker_metadata];
  swift_beginAccess();
  v38 = *v37;
  v39 = v37[1];
  *v37 = v36;
  v37[1] = v35;
  sub_1B89C3C44(v36, v35);
  sub_1B89B4A04(v38, v39);
  v40 = &a1[OBJC_IVAR___STKSticker_externalURI];
  swift_beginAccess();
  v42 = *v40;
  v41 = *(v40 + 1);
  v43 = &v25[OBJC_IVAR___STKSticker_externalURI];
  swift_beginAccess();
  v44 = *(v43 + 1);
  *v43 = v42;
  *(v43 + 1) = v41;

  v45 = &a1[OBJC_IVAR___STKSticker_accessibilityName];
  swift_beginAccess();
  v47 = *v45;
  v46 = *(v45 + 1);
  v48 = &v25[OBJC_IVAR___STKSticker_accessibilityName];
  swift_beginAccess();
  v49 = *(v48 + 1);
  *v48 = v47;
  *(v48 + 1) = v46;

  v50 = OBJC_IVAR___STKSticker_attributionInfo;
  swift_beginAccess();
  v51 = *&a1[v50];
  v52 = OBJC_IVAR___STKSticker_attributionInfo;
  swift_beginAccess();
  v53 = *&v25[v52];
  *&v25[v52] = v51;
  v54 = v51;

  v55 = OBJC_IVAR___STKSticker_representations;
  swift_beginAccess();
  v56 = *&a1[v55];
  v57 = v25;

  sub_1B89F9794(v58);
  sub_1B89AA114(v68 + 16, &v71);
  v59 = v73;
  v60 = v74;
  __swift_project_boxed_opaque_existential_0(&v71, v73);
  v61 = v67;
  (*(v60 + 40))(v25, v59, v60);
  v4 = v69;
  if (v61)
  {

    goto LABEL_2;
  }

  __swift_destroy_boxed_opaque_existential_0(&v71);
LABEL_23:
  sub_1B89D2920();
  sub_1B8A07C2C();

LABEL_24:
  v62 = v70;
  sub_1B89AF268(v10, v70, &qword_1EBA91BD0, qword_1B8A26FF0);
  v63 = *v62;
  v64 = v62 + *(v4 + 48);
  sub_1B8A1AB68(v64, *(v64 + *(v75 + 48)), v63);

  sub_1B89A8A78(v10, &qword_1EBA91BD0, qword_1B8A26FF0);
  v65 = sub_1B8A23B14();
  return (*(*(v65 - 8) + 8))(v64, v65);
}

uint64_t sub_1B89D7B00(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BD0, qword_1B8A26FF0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v23[-v11];
  v13 = &v23[*(v10 + 48) - v11];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v15 = *(v14 + 48);
  v16 = sub_1B8A194B4(v13, a1);
  *v12 = v17;
  *&v13[v15] = v16;
  swift_beginAccess();
  sub_1B89AA114(v3 + 16, v24);
  v18 = v25;
  v19 = v26;
  __swift_project_boxed_opaque_existential_0(v24, v25);
  (*(v19 + 40))(a1, v18, v19);
  __swift_destroy_boxed_opaque_existential_0(v24);
  if (!v2)
  {
    sub_1B89D2920();
    sub_1B8A07C2C();
  }

  sub_1B89AF268(v12, v9, &qword_1EBA91BD0, qword_1B8A26FF0);
  v20 = v9 + *(v5 + 48);
  sub_1B8A1AB68(v20, *(v20 + *(v14 + 48)), *v9);

  sub_1B89A8A78(v12, &qword_1EBA91BD0, qword_1B8A26FF0);
  v21 = sub_1B8A23B14();
  return (*(*(v21 - 8) + 8))(v20, v21);
}

uint64_t sub_1B89D7D24(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BD0, qword_1B8A26FF0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v56 - v13);
  v64 = *a3;
  v15 = &v56 + *(v12 + 48) - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v17 = *(v16 + 48);
  v18 = sub_1B8A19874(v15, a1, a2);
  v66 = v14;
  *v14 = v19;
  *&v15[v17] = v18;
  v62 = a2;
  v63 = a1;
  if (a1 != a2)
  {
    v56 = v11;
    v57 = v16;
    v58 = v7;
    v20 = v65;
    swift_beginAccess();
    sub_1B89AA114(v20 + 16, v82);
    v60 = v84;
    v61 = v83;
    v59 = __swift_project_boxed_opaque_existential_0(v82, v83);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA0, qword_1B8A265A0);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA8, qword_1B8A281D0);
    v22 = *(v21 - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v25 = swift_allocObject();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1B8CC3470](KeyPath, 1);
    sub_1B89AADD4(0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1B8A26260;
    v28 = swift_getKeyPath();
    MEMORY[0x1B8CC3470](v28, 1);
    swift_setDeallocating();
    (*(v22 + 8))(v25 + v24, v21);
    swift_deallocClassInstance();
    LOBYTE(v72) = 0;
    v29 = v64;
    LOBYTE(v77) = v64;
    *(&v77 + 1) = 0;
    *&v78 = 0;
    v79 = 0uLL;
    *(&v78 + 1) = v27;
    LOBYTE(v80) = 1;
    *(&v80 + 1) = 8;
    v81 = 0;
    v30 = v67;
    v31 = (*(v60 + 8))(&v77, v61);
    v67 = v30;
    if (v30)
    {
      v74 = v79;
      v75 = v80;
      v76 = v81;
      v72 = v77;
      v73 = v78;
      sub_1B89A9028(&v72);
      __swift_destroy_boxed_opaque_existential_0(v82);
      goto LABEL_21;
    }

    v32 = v31;
    v33 = v65;
    v74 = v79;
    v75 = v80;
    v76 = v81;
    v72 = v77;
    v73 = v78;
    sub_1B89A9028(&v72);
    __swift_destroy_boxed_opaque_existential_0(v82);
    v34 = v62;
    if ((v63 & 0x8000000000000000) != 0 || v32 <= v63 || (v62 & 0x8000000000000000) != 0 || v32 < v62)
    {
      sub_1B89C353C();
      v35 = swift_allocError();
      *v36 = 1;
      v67 = v35;
      swift_willThrow();
      goto LABEL_21;
    }

    if (v63 < v62)
    {
      if (__OFADD__(v62, 1))
      {
        __break(1u);
LABEL_23:
        swift_once();
LABEL_16:
        v39 = type metadata accessor for StickerSignposter();
        v40 = __swift_project_value_buffer(v39, qword_1ED8303D8);
        v41 = v56;
        sub_1B89AF268(v66, v56, &qword_1EBA91BD0, qword_1B8A26FF0);
        v42 = v41 + *(v58 + 48);
        sub_1B8A19B24("Index position determined", 25, 2, v42, *(v42 + *(v57 + 48)));

        v43 = sub_1B8A23B14();
        v44 = *(v43 - 8);
        v45 = *(v44 + 8);
        v62 = v44 + 8;
        v45(v42, v43);
        v71[0] = v29;
        v68[0] = 0;
        v46 = v67;
        v47 = sub_1B89D3270(v63, v71, v68);
        v67 = v46;
        if (v46)
        {
          sub_1B89AADD4(0);
        }

        else
        {
          v48 = v47;
          sub_1B89AADD4(0);
          sub_1B89AF268(v66, v41, &qword_1EBA91BD0, qword_1B8A26FF0);
          v60 = v40;
          v61 = v45;
          v49 = v41 + *(v58 + 48);
          sub_1B8A19B24("Existing sticker fetched", 24, 2, v49, *(v49 + *(v57 + 48)));

          v45(v49, v43);
          v50 = OBJC_IVAR___STKSticker_libraryIndex;
          swift_beginAccess();
          *&v48[v50] = v3;
          sub_1B89AF268(v66, v41, &qword_1EBA91BD0, qword_1B8A26FF0);
          v51 = v41 + *(v58 + 48);
          sub_1B8A19B24("Sticker assigned", 16, 2, v51, *(v51 + *(v57 + 48)));

          v61(v51, v43);
          sub_1B89AA114(v33 + 16, v68);
          v52 = v69;
          v53 = v70;
          __swift_project_boxed_opaque_existential_0(v68, v69);
          v54 = v67;
          (*(v53 + 40))(v48, v52, v53);
          v67 = v54;
          if (v54)
          {

            __swift_destroy_boxed_opaque_existential_0(v68);
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_0(v68);
            sub_1B89D2920();
            sub_1B8A07C2C();
          }
        }

        goto LABEL_21;
      }

      if (v32 >= (v62 + 1))
      {
        v34 = v62 + 1;
      }

      else
      {
        v34 = v32;
      }
    }

    LOBYTE(v68[0]) = v29;
    v37 = v67;
    sub_1B89D83E4(v34, v32, v68);
    v67 = v37;
    if (v37)
    {
      goto LABEL_21;
    }

    v3 = v38;
    if (qword_1ED82E690 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_21:
  sub_1B89DDA78(v66);
  return sub_1B89A8A78(v66, &qword_1EBA91BD0, qword_1B8A26FF0);
}

void sub_1B89D83E4(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *a3;
  if (!a1)
  {
    if (a2 >= 1)
    {
      LOBYTE(v30[0]) = *a3;
      v31[0] = 0;
      v9 = sub_1B89D3270(0, v30, v31);
      sub_1B89AADD4(0);
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    return;
  }

  if (a1 != a2)
  {
    v3 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92070, &qword_1B8A27038);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1B8A26570;
    if (!__OFSUB__(a1, 1))
    {
      v14 = v13;
      *(v13 + 32) = a1 - 1;
      *(v13 + 40) = a1;
      v30[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BD8, &unk_1B8A27040);
      v30[4] = sub_1B89CCD90(&qword_1EBA914A0, &qword_1EBA91BD8, &unk_1B8A27040);
      v30[0] = v14;
      v29 = v6;
      v28 = 0;
      sub_1B89D3700(v30, &v29, &v28, v31);
      sub_1B89AADD4(0);
      __swift_destroy_boxed_opaque_existential_0(v30);
      if (v4)
      {
        return;
      }

      v15 = v32;
      v16 = __swift_project_boxed_opaque_existential_0(v31, v32);
      v17 = *(*(v15 - 8) + 64);
      MEMORY[0x1EEE9AC00](v16);
      (*(v19 + 16))(&v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
      type metadata accessor for Sticker(0);
      v3 = sub_1B8A24144();
      __swift_destroy_boxed_opaque_existential_0(v31);
      v5 = v3 & 0xC000000000000001;
      if ((v3 & 0xC000000000000001) == 0)
      {
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_25;
        }

        v20 = *(v3 + 32);
LABEL_16:
        v21 = v20;
        v22 = OBJC_IVAR___STKSticker_libraryIndex;
        swift_beginAccess();
        v23 = *&v21[v22];

        if (v5)
        {
          v24 = MEMORY[0x1B8CC44E0](1, v3);
LABEL_20:
          v25 = v24;

          v26 = OBJC_IVAR___STKSticker_libraryIndex;
          swift_beginAccess();
          v27 = *&v25[v26];

          return;
        }

        if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
        {
          v24 = *(v3 + 40);
          goto LABEL_20;
        }

LABEL_25:
        __break(1u);
        return;
      }

LABEL_23:
      v20 = MEMORY[0x1B8CC44E0](0, v3);
      goto LABEL_16;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = __OFSUB__(a1, 1);
  v8 = a1 - 1;
  if (v7)
  {
    __break(1u);
    goto LABEL_22;
  }

  LOBYTE(v30[0]) = *a3;
  v31[0] = 0;
  v9 = sub_1B89D3270(v8, v30, v31);
  sub_1B89AADD4(0);
  if (!v4)
  {
LABEL_5:
    v10 = OBJC_IVAR___STKSticker_libraryIndex;
    swift_beginAccess();
    v11 = *&v9[v10];
  }
}

uint64_t sub_1B89D8798()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA0, qword_1B8A265A0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA8, qword_1B8A281D0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1B8CC3470](KeyPath, 1);
  sub_1B89AADD4(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B8A26260;
  v7 = swift_getKeyPath();
  MEMORY[0x1B8CC3470](v7, 1);
  swift_setDeallocating();
  (*(v1 + 8))(v4 + v3, v0);
  swift_deallocClassInstance();
  v13[0] = 1;
  LOBYTE(v14[0]) = 2;
  v14[1] = 0;
  *&v15 = 0;
  v16 = 0uLL;
  *(&v15 + 1) = v6;
  LOBYTE(v17) = 1;
  *(&v17 + 1) = 8;
  v18 = 0;
  v11[2] = 0uLL;
  v11[3] = v17;
  v12 = 0;
  v11[0] = v14[0];
  v11[1] = v15;
  sub_1B89AFE74(v11, v13);
  sub_1B89B035C(v13);
  v9 = v8;
  sub_1B89A9028(v14);
  sub_1B89B0BC8(v13);
  return v9;
}

void sub_1B89D8968(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5, _DWORD *a6, uint64_t *a7, uint64_t a8, unint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, char *a14)
{
  v215 = a8;
  v226 = a6;
  LODWORD(v216) = a5;
  v217 = a4;
  v229 = a3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91F80, &unk_1B8A26440);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v220 = &v202 - v19;
  v221 = sub_1B8A23784();
  v219 = *(v221 - 8);
  v20 = *(v219 + 64);
  MEMORY[0x1EEE9AC00](v221);
  v223 = &v202 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92220, &unk_1B8A281A0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v218 = &v202 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v222 = &v202 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v202 - v28;
  v30 = sub_1B8A23904();
  v31 = *(v30 - 8);
  v32 = v31[8];
  v33 = MEMORY[0x1EEE9AC00](v30);
  v224 = &v202 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = &v202 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v202 - v38;
  v228 = a7;
  v40 = a1;

  sub_1B8A23894();
  v213 = v31[6];
  v214 = v31 + 6;
  v41 = v213(v29, 1, v30);
  v225 = v30;
  if (v41 == 1)
  {
    sub_1B89A8A78(v29, &unk_1EBA92220, &unk_1B8A281A0);
LABEL_3:
    v42 = v228;
    v43 = v226;
    if (qword_1ED82E688 != -1)
    {
      swift_once();
    }

    v211 = a14;
    v44 = sub_1B8A23BC4();
    v45 = __swift_project_value_buffer(v44, qword_1ED8303C0);

    v210 = v45;
    v46 = sub_1B8A23BA4();
    v47 = sub_1B8A24224();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v235[0] = v49;
      *v48 = 136315394;
      *(v48 + 4) = sub_1B89A907C(v40, a2, v235);
      *(v48 + 12) = 2080;
      v50 = v43;
      if (v228)
      {
        v51 = v43;
      }

      else
      {
        v51 = 0;
      }

      if (v228)
      {
        v52 = v228;
      }

      else
      {
        v52 = 0xE000000000000000;
      }

      v53 = v31;
      v54 = sub_1B89A907C(v51, v52, v235);

      *(v48 + 14) = v54;
      v31 = v53;
      _os_log_impl(&dword_1B89A7000, v46, v47, "Donating recent with non-store identifier %s externalURI %s", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CC5170](v49, -1, -1);
      v55 = v48;
      v42 = v228;
      MEMORY[0x1B8CC5170](v55, -1, -1);
    }

    else
    {
      v50 = v43;
    }

    v58 = v220;
    v59 = v221;
    v60 = v223;
    if (!v42)
    {
      v228 = 0;
      goto LABEL_54;
    }

    v61 = v50;
    sub_1B8A23764();
    v62 = v219;
    if ((*(v219 + 48))(v58, 1, v59) == 1)
    {
      sub_1B89A8A78(v58, &qword_1EBA91F80, &unk_1B8A26440);
      goto LABEL_33;
    }

    (*(v62 + 32))(v60, v58, v59);
    if ((sub_1B8A23684() & 1) == 0 || !v211 || (v79 = &v211[OBJC_IVAR___STKStickerAttributionInfo_bundleIdentifier], swift_beginAccess(), (v80 = *(v79 + 1)) == 0))
    {
      (*(v62 + 8))(v60, v59);
      goto LABEL_33;
    }

    v235[0] = *v79;
    v235[1] = v80;
    v234[0] = 58;
    v234[1] = 0xE100000000000000;
    sub_1B89DDFCC();
    v220 = v211;
    v81 = sub_1B8A24474();
    if (v81[2] != 3)
    {
      (*(v62 + 8))(v223, v59);

      v42 = v228;
      goto LABEL_33;
    }

    v212 = v31;
    v83 = v81[4];
    v82 = v81[5];
    v31 = v81[6];
    v84 = v81[7];
    v85 = v81[9];
    v209 = v81[8];

    if (v83 == 0xD000000000000032 && 0x80000001B8A2AA30 == v82)
    {
    }

    else
    {
      v192 = sub_1B8A24954();

      if ((v192 & 1) == 0)
      {
        (*(v219 + 8))(v223, v221);

        v31 = v212;
        v42 = v228;
        v61 = v226;
        goto LABEL_33;
      }
    }

    v61 = v226;
    i = v219;
    v193 = v220;
    if ((v31 != 0x3030303030303030 || v84 != 0xEA00000000003030) && (sub_1B8A24954() & 1) == 0)
    {
      goto LABEL_123;
    }

    (*(i + 8))(v223, v221);

    v42 = v228;
    v31 = v212;
LABEL_33:
    while (1)
    {
      v235[0] = 0;
      v86 = v227;
      v87 = sub_1B89D43E8(v61, v42, v235);
      v88 = v86;
      if (v86)
      {
        break;
      }

      v98 = v87;
      sub_1B89AADD4(v235[0]);
      v227 = 0;
      if (v98)
      {
        swift_bridgeObjectRetain_n();
        v99 = sub_1B8A23BA4();
        v100 = sub_1B8A24224();

        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          v212 = v31;
          v103 = v102;
          v235[0] = v102;
          *v101 = 136315138;
          v104 = sub_1B89A907C(v61, v42, v235);
          LODWORD(v226) = v100;
          v105 = v61;
          v106 = v104;

          *(v101 + 4) = v106;
          v61 = v105;
          _os_log_impl(&dword_1B89A7000, v99, v226, "Donating existing sticker with externalURI %s", v101, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v103);
          v107 = v103;
          v31 = v212;
          MEMORY[0x1B8CC5170](v107, -1, -1);
          MEMORY[0x1B8CC5170](v101, -1, -1);
        }

        else
        {
        }

        v191 = v227;
        sub_1B89DA0E4(v98);
        v88 = v191;
        if (!v191)
        {

          goto LABEL_15;
        }

        goto LABEL_35;
      }

      v226 = v61;
      v228 = v42;
LABEL_54:
      v221 = a13;
      v219 = a12;
      v210 = a11;
      v209 = a10;
      v212 = v31;
      v108 = v31[7];
      v109 = v222;
      v110 = v225;
      v108(v222, 1, 1, v225);
      v111 = v215;
      if (!a9)
      {
        v111 = 0;
      }

      v215 = v111;
      v112 = 0xE000000000000000;
      if (a9)
      {
        v112 = a9;
      }

      v207 = a9;
      v208 = v112;
      v113 = v217;
      if (v216)
      {
        v113 = -1;
      }

      v217 = v113;
      v203 = type metadata accessor for Sticker(0);
      v114 = objc_allocWithZone(v203);
      v115 = &v114[OBJC_IVAR___STKSticker_accessibilityName];
      *v115 = 0;
      *(v115 + 1) = 0;
      v116 = &v114[OBJC_IVAR___STKSticker_searchText];
      *v116 = 0;
      *(v116 + 1) = 0;
      v204 = v116;
      v117 = &v114[OBJC_IVAR___STKSticker_sanitizedPrompt];
      *v117 = 0;
      *(v117 + 1) = 0;
      v205 = v117;
      v118 = &v114[OBJC_IVAR___STKSticker_rewrittenPrompt];
      *v118 = 0;
      *(v118 + 1) = 0;
      v206 = v118;
      v119 = &v114[OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier];
      *v119 = 0;
      *(v119 + 1) = 0;
      v216 = v119;
      v84 = &v114[OBJC_IVAR___STKSticker_metadata];
      *&v114[OBJC_IVAR___STKSticker_metadata] = xmmword_1B8A26F80;
      v120 = &v114[OBJC_IVAR___STKSticker_externalURI];
      *v120 = 0;
      *(v120 + 1) = 0;
      v220 = OBJC_IVAR___STKSticker_attributionInfo;
      *&v114[OBJC_IVAR___STKSticker_attributionInfo] = 0;
      v108(&v114[OBJC_IVAR___STKSticker__companionRecentUUID], 1, 1, v110);
      v223 = v114;
      v202 = OBJC_IVAR___STKSticker_animatedVariantIsPreferred;
      v114[OBJC_IVAR___STKSticker_animatedVariantIsPreferred] = 2;
      v121 = v218;
      sub_1B89AF268(v109, v218, &unk_1EBA92220, &unk_1B8A281A0);
      v122 = v213;
      if (v213(v121, 1, v110) == 1)
      {

        v123 = v224;
        sub_1B8A238F4();
        v124 = v122(v121, 1, v110);
        v125 = v212;
        v126 = v229;
        if (v124 != 1)
        {
          v127 = v212;
          sub_1B89A8A78(v121, &unk_1EBA92220, &unk_1B8A281A0);
          v125 = v127;
        }
      }

      else
      {
        v128 = v212;
        v123 = v224;
        (v212[4])(v224, v121, v110);

        v125 = v128;
        v126 = v229;
      }

      v63 = v223;
      v223[OBJC_IVAR___STKSticker_type] = 0;
      (v125[2])(v63 + OBJC_IVAR___STKSticker_identifier, v123, v110);
      *(v63 + OBJC_IVAR___STKSticker_representations) = v126;
      swift_beginAccess();
      v129 = *(v115 + 1);
      v37 = v210;
      *v115 = v209;
      *(v115 + 1) = v37;

      v130 = (v63 + OBJC_IVAR___STKSticker_name);
      v131 = v208;
      *v130 = v215;
      v130[1] = v131;
      *(v63 + OBJC_IVAR___STKSticker_effect) = v217;
      swift_beginAccess();
      v132 = *v84;
      v133 = v84[1];
      i = v219;
      v135 = v221;
      *v84 = v219;
      v84[1] = v135;

      sub_1B89C3C44(i, v135);
      sub_1B89B4A04(v132, v133);
      v136 = v228;
      if (!v228)
      {
        i = 0x80000001B8A2A9A0;
        v137 = sub_1B8A238A4();
        v232 = 0xD00000000000001BLL;
        v233 = 0x80000001B8A2A9A0;
        MEMORY[0x1B8CC3E20](v137);

        v136 = v233;
        v226 = v232;
      }

      swift_beginAccess();
      v138 = *(v120 + 1);
      *v120 = v226;
      *(v120 + 1) = v136;

      v139 = v220;
      swift_beginAccess();
      v140 = *&v139[v63];
      v141 = v211;
      *&v139[v63] = v211;
      v142 = v141;

      v31 = (v126 >> 62);
      if (v126 >> 62)
      {
        v39 = sub_1B8A24554();
      }

      else
      {
        v39 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v143 = MEMORY[0x1E69E7CC0];
      if (v39)
      {
        v228 = (v126 >> 62);
        v231 = MEMORY[0x1E69E7CC0];
        sub_1B8A0394C(0, v39 & ~(v39 >> 63), 0);
        if (v39 < 0)
        {
          __break(1u);
          goto LABEL_130;
        }

        v143 = v231;
        if ((v126 & 0xC000000000000001) != 0)
        {
          for (i = 0; i != v39; ++i)
          {
            v144 = MEMORY[0x1B8CC44E0](i, v229);
            v145 = OBJC_IVAR___STKStickerRepresentation_byteCount;
            swift_beginAccess();
            v146 = *(v144 + v145);
            swift_unknownObjectRelease();
            v231 = v143;
            v148 = v143[2];
            v147 = v143[3];
            v84 = (v148 + 1);
            if (v148 >= v147 >> 1)
            {
              sub_1B8A0394C((v147 > 1), v148 + 1, 1);
              v143 = v231;
            }

            v143[2] = v84;
            v143[v148 + 4] = v146;
          }
        }

        else
        {
          v84 = (v126 + 32);
          do
          {
            v149 = *v84;
            v150 = OBJC_IVAR___STKStickerRepresentation_byteCount;
            swift_beginAccess();
            v151 = *(v149 + v150);
            v231 = v143;
            v153 = v143[2];
            v152 = v143[3];
            i = v153 + 1;
            if (v153 >= v152 >> 1)
            {
              sub_1B8A0394C((v152 > 1), v153 + 1, 1);
              v143 = v231;
            }

            v143[2] = i;
            v143[v153 + 4] = v151;
            ++v84;
            --v39;
          }

          while (v39);
        }

        v63 = v223;
        v31 = v228;
      }

      v154 = v143[2];
      if (v154)
      {
        v85 = 0;
        v155 = v143 + 4;
        while (1)
        {
          v156 = *v155++;
          v157 = __OFADD__(v85, v156);
          v85 += v156;
          if (v157)
          {
            break;
          }

          if (!--v154)
          {
            goto LABEL_87;
          }
        }

        __break(1u);
LABEL_123:

        v194 = sub_1B8A236D4();
        v61 = sub_1B8A051FC(v31, v84, v209, v85, v194, v195);
        v42 = v196;

        v177 = sub_1B8A23BA4();
        v197 = sub_1B8A24224();
        if (!os_log_type_enabled(v177, v197))
        {
          goto LABEL_127;
        }

        v198 = swift_slowAlloc();
        v199 = swift_slowAlloc();
        v235[0] = v199;
        *v198 = 136315138;
        v200 = v42;
        v201 = sub_1B89A907C(v61, v42, v235);

        *(v198 + 4) = v201;
        v42 = v200;
        _os_log_impl(&dword_1B89A7000, v177, v197, "Converted externalURI to %s", v198, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v199);
        MEMORY[0x1B8CC5170](v199, -1, -1);
        MEMORY[0x1B8CC5170](v198, -1, -1);

        (*(v219 + 8))(v223, v221);
        v31 = v212;
      }

      else
      {
        v85 = 0;
LABEL_87:

        *(v63 + OBJC_IVAR___STKSticker_byteCount) = v85;
        v158 = objc_opt_self();
        v159 = [v158 currentEnvironment];
        v160 = [v159 timeProvider];

        [v160 timestamp];
        v162 = v161;
        swift_unknownObjectRelease();
        *&v223[OBJC_IVAR___STKSticker_creationDate] = v162;
        v163 = [v158 currentEnvironment];
        v164 = [v163 timeProvider];

        v165 = v223;
        [v164 timestamp];
        v167 = v166;
        swift_unknownObjectRelease();
        *&v165[OBJC_IVAR___STKSticker_lastUsedDate] = v167;
        *&v165[OBJC_IVAR___STKSticker_libraryIndex] = 0;
        v168 = v204;
        swift_beginAccess();
        v169 = *(v168 + 1);
        *v168 = 0;
        *(v168 + 1) = 0;

        v170 = v205;
        swift_beginAccess();
        v171 = *(v170 + 1);
        *v170 = 0;
        *(v170 + 1) = 0;

        v172 = v206;
        swift_beginAccess();
        v173 = *(v172 + 1);
        *v172 = 0;
        *(v172 + 1) = 0;

        v174 = v216;
        swift_beginAccess();
        v175 = *(v174 + 1);
        *v174 = 0;
        *(v174 + 1) = 0;

        if (v31)
        {
          v176 = v229;
          v177 = sub_1B8A24554();
          if (!v177)
          {
LABEL_104:
            v185 = 2;
            v186 = v212;
LABEL_108:
            (v186[1])(v224, v225);
            v187 = v203;
            v165[v202] = v185;
            v230.receiver = v165;
            v230.super_class = v187;
            v188 = objc_msgSendSuper2(&v230, sel_init);
            sub_1B89A8A78(v222, &unk_1EBA92220, &unk_1B8A281A0);
            v189 = v227;
            v190 = sub_1B89D5E3C(v188);

            if (!v189)
            {
            }

            return;
          }
        }

        else
        {
          v176 = v229;
          v177 = *((v229 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v177)
          {
            goto LABEL_104;
          }
        }

        v178 = 0;
        v61 = v176 & 0xC000000000000001;
        v42 = (v176 & 0xFFFFFFFFFFFFFF8);
        i = 0x80000001B8A2A290;
        while (1)
        {
          if (v61)
          {
            v180 = MEMORY[0x1B8CC44E0](v178, v229);
          }

          else
          {
            if (v178 >= v42[2])
            {
              goto LABEL_126;
            }

            v180 = *(v229 + 8 * v178 + 32);
          }

          v181 = v180;
          v182 = (v178 + 1);
          if (__OFADD__(v178, 1))
          {
            break;
          }

          v183 = &v180[OBJC_IVAR___STKStickerRepresentation_role];
          swift_beginAccess();
          v184 = *v183 == 0xD000000000000020 && 0x80000001B8A2A290 == *(v183 + 1);
          if (v184 || (sub_1B8A24954() & 1) != 0)
          {
            v179 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
            swift_beginAccess();
            LOBYTE(v179) = v181[v179];

            if (v179)
            {
              v185 = 1;
              goto LABEL_107;
            }
          }

          else
          {
          }

          ++v178;
          if (v182 == v177)
          {
            v185 = 0;
LABEL_107:
            v186 = v212;
            v165 = v223;
            goto LABEL_108;
          }
        }

        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:

        (*(i + 8))(v223, v221);
        v31 = v212;
      }
    }

    sub_1B89AADD4(v235[0]);
LABEL_35:
    v227 = 0;
    v235[0] = v88;
    v89 = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A20, &qword_1B8A26468);
    if (!swift_dynamicCast() || v232 != 2)
    {

      return;
    }

    v90 = sub_1B8A23BA4();
    v91 = sub_1B8A24224();

    v92 = os_log_type_enabled(v90, v91);
    v228 = v42;
    if (v92)
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v234[0] = v94;
      *v93 = 136315138;
      if (v42)
      {
        v95 = v61;
      }

      else
      {
        v95 = 0x3E726F7272653CLL;
      }

      v212 = v31;
      if (v42)
      {
        v96 = v42;
      }

      else
      {
        v96 = 0xE700000000000000;
      }

      v97 = sub_1B89A907C(v95, v96, v234);
      v31 = v212;

      *(v93 + 4) = v97;
      _os_log_impl(&dword_1B89A7000, v90, v91, "No existing sticker with externalURI %s", v93, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v94);
      MEMORY[0x1B8CC5170](v94, -1, -1);
      MEMORY[0x1B8CC5170](v93, -1, -1);
    }

    v226 = v61;
    goto LABEL_54;
  }

  (v31[4])(v39, v29, v30);
  v235[0] = 1;
  v56 = v227;
  v57 = sub_1B89D3BB0(v39, v235);
  if (v56)
  {
    (v31[1])(v39, v30);
LABEL_15:
  }

  else
  {
    v63 = v57;
    v227 = 0;
    if (!v57)
    {
      (v31[1])(v39, v225);
      goto LABEL_3;
    }

    if (qword_1ED82E688 != -1)
    {
LABEL_130:
      swift_once();
    }

    v64 = sub_1B8A23BC4();
    __swift_project_value_buffer(v64, qword_1ED8303C0);
    v65 = v225;
    (v31[2])(v37, v39, v225);
    v66 = sub_1B8A23BA4();
    v67 = v31;
    v68 = sub_1B8A24224();
    if (os_log_type_enabled(v66, v68))
    {
      v69 = swift_slowAlloc();
      v226 = v69;
      v228 = swift_slowAlloc();
      v235[0] = v228;
      *v69 = 136315138;
      sub_1B89DD820(&qword_1ED82DE78, MEMORY[0x1E69695A8]);
      v70 = v67;
      v212 = v67;
      v71 = sub_1B8A24934();
      v229 = v63;
      v73 = v72;
      v74 = v70[1];
      v74(v37, v65);
      v75 = sub_1B89A907C(v71, v73, v235);
      v63 = v229;

      v76 = v226;
      *(v226 + 1) = v75;
      v77 = v76;
      _os_log_impl(&dword_1B89A7000, v66, v68, "Donating recent with identifier %s", v76, 0xCu);
      v78 = v228;
      __swift_destroy_boxed_opaque_existential_0(v228);
      MEMORY[0x1B8CC5170](v78, -1, -1);
      MEMORY[0x1B8CC5170](v77, -1, -1);
    }

    else
    {

      v74 = v31[1];
      v74(v37, v65);
    }

    sub_1B89DA0E4(v63);
    v74(v39, v225);
  }
}

void sub_1B89DA0E4(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v157 - v8;
  v181 = sub_1B8A23904();
  v184 = *(v181 - 8);
  v10 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v181);
  v182 = &v157 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92220, &unk_1B8A281A0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v180 = &v157 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v183 = &v157 - v16;
  v17 = (a1 + OBJC_IVAR___STKSticker_externalURI);
  swift_beginAccess();
  v18 = a1;
  if (v17[1])
  {
    v19 = *v17;
    v20 = v17[1];
  }

  else
  {
    v21 = sub_1B8A238A4();
    v190 = 0xD00000000000001BLL;
    v191 = 0x80000001B8A2A9A0;
    MEMORY[0x1B8CC3E20](v21);

    v19 = v190;
    v20 = v191;
  }

  v190 = 1;

  v22 = sub_1B89D4ABC(v19, v20, &v190);
  if (v3)
  {

    return;
  }

  v23 = v22;

  v24 = *(v18 + OBJC_IVAR___STKSticker_type);
  v25 = v23 >> 62;
  v179 = v4;
  v185 = 0;
  if (v24)
  {
    v177 = v9;
    v178 = v18;
    if (v25)
    {
LABEL_40:
      v26 = sub_1B8A24554();
      if (v26)
      {
LABEL_10:
        v27 = 0;
        while (1)
        {
          if ((v23 & 0xC000000000000001) != 0)
          {
            v28 = MEMORY[0x1B8CC44E0](v27, v23);
          }

          else
          {
            if (v27 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_38;
            }

            v28 = *(v23 + 8 * v27 + 32);
          }

          v29 = v28;
          v30 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          if (*(v28 + OBJC_IVAR___STKSticker_type) != 1)
          {
            break;
          }

          ++v27;
          if (v30 == v26)
          {
            goto LABEL_41;
          }
        }

LABEL_31:

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA921D0, &unk_1B8A281C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1B8A26FE0;
        v34 = v178;
        *(inited + 32) = v178;
        *(inited + 40) = v29;
        v35 = v34;
        v36 = v29;
        v37 = v185;
        sub_1B89DB854(inited);
        if (v37)
        {

          swift_setDeallocating();
          v38 = *(inited + 16);
          swift_arrayDestroy();
          return;
        }

        swift_setDeallocating();
        v45 = *(inited + 16);
        swift_arrayDestroy();
        v9 = v177;
        goto LABEL_101;
      }
    }

    else
    {
      v26 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26)
      {
        goto LABEL_10;
      }
    }

LABEL_41:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA921D0, &unk_1B8A281C0);
    v47 = swift_initStackObject();
    *(v47 + 16) = xmmword_1B8A26280;
    v48 = v178;
    *(v47 + 32) = v178;
    v49 = v48;
    v50 = v185;
    sub_1B89DB854(v47);
    swift_setDeallocating();
    v51 = *(v47 + 16);
    swift_arrayDestroy();
    if (v50)
    {
      return;
    }

    v185 = 0;
    v52 = v184;
    v174 = *(v184 + 56);
    v53 = v181;
    v174(v183, 1, 1, v181);
    v54 = OBJC_IVAR___STKSticker_representations;
    swift_beginAccess();
    v178 = *&v49[v54];
    v55 = &v49[OBJC_IVAR___STKSticker_name];
    swift_beginAccess();
    v56 = *(v55 + 1);
    v168 = *v55;
    v171 = v56;
    v57 = OBJC_IVAR___STKSticker_effect;
    swift_beginAccess();
    v166 = *&v49[v57];
    v58 = &v49[OBJC_IVAR___STKSticker_metadata];
    swift_beginAccess();
    v59 = v58[1];
    v173 = *v58;
    v60 = v17[1];
    v169 = *v17;
    v175 = v59;
    v176 = v60;
    v61 = &v49[OBJC_IVAR___STKSticker_accessibilityName];
    swift_beginAccess();
    v62 = *(v61 + 1);
    v164 = *v61;
    v170 = v62;
    v63 = OBJC_IVAR___STKSticker_attributionInfo;
    swift_beginAccess();
    v172 = *&v49[v63];
    v159 = type metadata accessor for Sticker(0);
    v64 = objc_allocWithZone(v159);
    v65 = v64 + OBJC_IVAR___STKSticker_accessibilityName;
    *v65 = 0;
    *(v65 + 1) = 0;
    v66 = v64 + OBJC_IVAR___STKSticker_searchText;
    *v66 = 0;
    *(v66 + 1) = 0;
    v160 = v66;
    v67 = v64 + OBJC_IVAR___STKSticker_sanitizedPrompt;
    *v67 = 0;
    *(v67 + 1) = 0;
    v161 = v67;
    v68 = v64 + OBJC_IVAR___STKSticker_rewrittenPrompt;
    *v68 = 0;
    *(v68 + 1) = 0;
    v162 = v68;
    v69 = v64 + OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier;
    *v69 = 0;
    *(v69 + 1) = 0;
    v163 = v69;
    v70 = (v64 + OBJC_IVAR___STKSticker_metadata);
    *(v64 + OBJC_IVAR___STKSticker_metadata) = xmmword_1B8A26F80;
    v71 = v64 + OBJC_IVAR___STKSticker_externalURI;
    *v71 = 0;
    *(v71 + 1) = 0;
    v165 = v71;
    v167 = OBJC_IVAR___STKSticker_attributionInfo;
    *(v64 + OBJC_IVAR___STKSticker_attributionInfo) = 0;
    v174(v64 + OBJC_IVAR___STKSticker__companionRecentUUID, 1, 1, v53);
    v72 = OBJC_IVAR___STKSticker_animatedVariantIsPreferred;
    v174 = v64;
    *(v64 + OBJC_IVAR___STKSticker_animatedVariantIsPreferred) = 2;
    v73 = v180;
    sub_1B89AF268(v183, v180, &unk_1EBA92220, &unk_1B8A281A0);
    v74 = *(v52 + 48);
    v75 = v74(v73, 1, v53);
    v158 = v72;
    if (v75 == 1)
    {

      v76 = v173;
      sub_1B89C3C44(v173, v175);
      v77 = v172;

      v78 = v182;
      sub_1B8A238F4();
      v79 = v74(v73, 1, v53);
      v80 = v78;
      v141 = v79 == 1;
      v81 = v184;
      v82 = v76;
      v83 = v73;
      v9 = v175;
      if (!v141)
      {
        sub_1B89A8A78(v83, &unk_1EBA92220, &unk_1B8A281A0);
      }
    }

    else
    {
      v81 = v184;
      v80 = v182;
      (*(v184 + 32))(v182, v73, v53);

      v82 = v173;
      v9 = v175;
      sub_1B89C3C44(v173, v175);
      v84 = v172;
    }

    v85 = v174;
    *(v174 + OBJC_IVAR___STKSticker_type) = 0;
    (*(v81 + 16))(v85 + OBJC_IVAR___STKSticker_identifier, v80, v53);
    v86 = v178;
    *(v85 + OBJC_IVAR___STKSticker_representations) = v178;
    swift_beginAccess();
    v87 = *(v65 + 1);
    v88 = v170;
    *v65 = v164;
    *(v65 + 1) = v88;

    v89 = (v85 + OBJC_IVAR___STKSticker_name);
    v90 = v171;
    *v89 = v168;
    v89[1] = v90;
    *(v85 + OBJC_IVAR___STKSticker_effect) = v166;
    swift_beginAccess();
    v91 = *v70;
    v92 = v70[1];
    *v70 = v82;
    v70[1] = v9;
    sub_1B89C3C44(v82, v9);
    sub_1B89B4A04(v91, v92);
    v93 = v169;
    if (!v176)
    {
      v94 = sub_1B8A238A4();
      v188 = 0xD00000000000001BLL;
      v189 = 0x80000001B8A2A9A0;
      MEMORY[0x1B8CC3E20](v94);

      v93 = v188;
      v176 = v189;
    }

    v95 = v165;
    swift_beginAccess();
    v96 = v95[1];
    v97 = v176;
    *v95 = v93;
    v95[1] = v97;

    v98 = v167;
    swift_beginAccess();
    v99 = *(v85 + v98);
    v100 = v172;
    *(v85 + v98) = v172;
    v101 = v100;

    if (v86 >> 62)
    {
      v102 = sub_1B8A24554();
    }

    else
    {
      v102 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = MEMORY[0x1E69E7CC0];
    v176 = v101;
    v180 = v86 >> 62;
    if (v102)
    {
      v187 = MEMORY[0x1E69E7CC0];
      sub_1B8A0394C(0, v102 & ~(v102 >> 63), 0);
      if (v102 < 0)
      {
        __break(1u);
        return;
      }

      v23 = v187;
      if ((v86 & 0xC000000000000001) != 0)
      {
        v103 = v86;
        for (i = 0; i != v102; ++i)
        {
          v105 = MEMORY[0x1B8CC44E0](i, v103);
          v106 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v9 = *(v105 + v106);
          swift_unknownObjectRelease();
          v187 = v23;
          v108 = *(v23 + 16);
          v107 = *(v23 + 24);
          if (v108 >= v107 >> 1)
          {
            sub_1B8A0394C((v107 > 1), v108 + 1, 1);
            v23 = v187;
          }

          *(v23 + 16) = v108 + 1;
          *(v23 + 8 * v108 + 32) = v9;
        }
      }

      else
      {
        v103 = v86;
        v145 = (v86 + 32);
        do
        {
          v146 = *v145;
          v147 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v9 = *(v146 + v147);
          v187 = v23;
          v149 = *(v23 + 16);
          v148 = *(v23 + 24);
          if (v149 >= v148 >> 1)
          {
            sub_1B8A0394C((v148 > 1), v149 + 1, 1);
            v23 = v187;
          }

          *(v23 + 16) = v149 + 1;
          *(v23 + 8 * v149 + 32) = v9;
          ++v145;
          --v102;
        }

        while (v102);
      }
    }

    else
    {
      v103 = v86;
    }

    v109 = *(v23 + 16);
    if (!v109)
    {
      v110 = 0;
      v18 = v103;
      v112 = v174;
LABEL_65:

      *(v112 + OBJC_IVAR___STKSticker_byteCount) = v110;
      v115 = objc_opt_self();
      v116 = [v115 currentEnvironment];
      v117 = [v116 timeProvider];

      [v117 timestamp];
      v119 = v118;
      swift_unknownObjectRelease();
      *(v112 + OBJC_IVAR___STKSticker_creationDate) = v119;
      v120 = [v115 currentEnvironment];
      v121 = [v120 timeProvider];

      [v121 timestamp];
      v123 = v122;
      swift_unknownObjectRelease();
      *(v112 + OBJC_IVAR___STKSticker_lastUsedDate) = v123;
      *(v112 + OBJC_IVAR___STKSticker_libraryIndex) = 0;
      v124 = v160;
      swift_beginAccess();
      v125 = *(v124 + 1);
      *v124 = 0;
      *(v124 + 1) = 0;

      v126 = v161;
      swift_beginAccess();
      v127 = *(v126 + 1);
      *v126 = 0;
      *(v126 + 1) = 0;

      v128 = v162;
      swift_beginAccess();
      v129 = *(v128 + 1);
      *v128 = 0;
      *(v128 + 1) = 0;

      v130 = v163;
      swift_beginAccess();
      v131 = *(v130 + 1);
      *v130 = 0;
      *(v130 + 1) = 0;

      if (v180)
      {
        v23 = sub_1B8A24554();
      }

      else
      {
        v23 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v132 = v173;
      v133 = v175;
      v134 = v185;
      if (v23)
      {
        v135 = 0;
        v9 = (v18 & 0xC000000000000001);
        v18 &= 0xFFFFFFFFFFFFFF8uLL;
        while (1)
        {
          if (v9)
          {
            v137 = MEMORY[0x1B8CC44E0](v135, v178);
          }

          else
          {
            if (v135 >= *(v18 + 16))
            {
              goto LABEL_97;
            }

            v137 = v178[v135 + 4];
          }

          v138 = v137;
          v139 = v135 + 1;
          if (__OFADD__(v135, 1))
          {
            goto LABEL_96;
          }

          v140 = &v137[OBJC_IVAR___STKStickerRepresentation_role];
          swift_beginAccess();
          v141 = *v140 == 0xD000000000000020 && 0x80000001B8A2A290 == *(v140 + 1);
          if (v141 || (sub_1B8A24954() & 1) != 0)
          {
            v136 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
            swift_beginAccess();
            LOBYTE(v136) = v138[v136];

            if (v136)
            {
              (*(v184 + 8))(v182, v181);

              v142 = 1;
              v134 = v185;
              goto LABEL_86;
            }
          }

          else
          {
          }

          ++v135;
          v141 = v139 == v23;
          v134 = v185;
          if (v141)
          {

            (*(v184 + 8))(v182, v181);
            v142 = 0;
LABEL_86:
            v132 = v173;
            v133 = v175;
            goto LABEL_87;
          }
        }
      }

      (*(v184 + 8))(v182, v181);

      v142 = 2;
LABEL_87:
      v143 = v174;
      *(v174 + v158) = v142;
      v186.receiver = v143;
      v186.super_class = v159;
      v36 = objc_msgSendSuper2(&v186, sel_init);

      sub_1B89B4A04(v132, v133);
      sub_1B89A8A78(v183, &unk_1EBA92220, &unk_1B8A281A0);
      v144 = sub_1B89D5E3C(v36);
      v9 = v177;
      if (v134)
      {

        return;
      }

      goto LABEL_101;
    }

    v110 = 0;
    v111 = (v23 + 32);
    v18 = v103;
    v112 = v174;
    while (1)
    {
      v113 = *v111++;
      v114 = __OFADD__(v110, v113);
      v110 += v113;
      if (v114)
      {
        break;
      }

      if (!--v109)
      {
        goto LABEL_65;
      }
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
  }

  else if (!v25)
  {
    v31 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v31)
    {
      goto LABEL_99;
    }

LABEL_21:
    v17 = 0;
    while (1)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x1B8CC44E0](v17, v23);
        v29 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v17 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v32 = *(v23 + 8 * v17 + 32);
        v29 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      if (v32[OBJC_IVAR___STKSticker_type])
      {
        break;
      }

      v17 = (v17 + 1);
      if (v29 == v31)
      {
        goto LABEL_99;
      }
    }

    v39 = v32;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA921D0, &unk_1B8A281C0);
    v40 = swift_initStackObject();
    *(v40 + 16) = xmmword_1B8A26FE0;
    *(v40 + 32) = v18;
    *(v40 + 40) = v39;
    v41 = v18;
    v42 = v39;
    v43 = v185;
    sub_1B89DB854(v40);
    if (v43)
    {

      swift_setDeallocating();
      v44 = *(v40 + 16);
      swift_arrayDestroy();
      return;
    }

    swift_setDeallocating();
    v46 = *(v40 + 16);
    swift_arrayDestroy();
    goto LABEL_100;
  }

  v31 = sub_1B8A24554();
  if (v31)
  {
    goto LABEL_21;
  }

LABEL_99:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA921D0, &unk_1B8A281C0);
  v150 = swift_initStackObject();
  *(v150 + 16) = xmmword_1B8A26280;
  *(v150 + 32) = v18;
  v151 = v18;
  v152 = v185;
  sub_1B89DB854(v150);
  swift_setDeallocating();
  v153 = *(v150 + 16);
  swift_arrayDestroy();
  if (!v152)
  {
LABEL_100:
    v36 = v18;
LABEL_101:
    v154 = v36;
    v155 = sub_1B8A24184();
    (*(*(v155 - 8) + 56))(v9, 1, 1, v155);
    v156 = swift_allocObject();
    v156[2] = 0;
    v156[3] = 0;
    v156[4] = v154;
    v156[5] = v179;

    sub_1B89DB560(0, 0, v9, &unk_1B8A271B8, v156);

    sub_1B89A8A78(v9, &qword_1EBA92200, &qword_1B8A28000);
  }
}

uint64_t sub_1B89DB268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B89DB288, 0, 0);
}

uint64_t sub_1B89DB288()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = *(v0[3] + 64);
    v3 = OBJC_IVAR___STKSticker_identifier;
    v4 = v1;
    v5 = swift_task_alloc();
    v0[4] = v5;
    *v5 = v0;
    v5[1] = sub_1B89DB384;

    return ImageGlyphRecency.recordEngagement(for:)(v1 + v3);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1B89DB384()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_1B89DB4FC;
  }

  else
  {
    v3 = sub_1B89DB498;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B89DB498()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B89DB4FC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 40);

  return v1();
}

uint64_t sub_1B89DB560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1B89AF268(a3, v24 - v10, &qword_1EBA92200, &qword_1B8A28000);
  v12 = sub_1B8A24184();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1B89A8A78(v11, &qword_1EBA92200, &qword_1B8A28000);
  }

  else
  {
    sub_1B8A24174();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1B8A24154();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1B8A23F64() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void sub_1B89DB7CC(uint64_t a1)
{
  v5 = 1;
  v2 = sub_1B89D3BB0(a1, &v5);
  if (!v1)
  {
    if (v2)
    {
      v3 = v2;
      sub_1B89DA0E4(v2);
    }

    else
    {
      sub_1B89C353C();
      swift_allocError();
      *v4 = 2;
      swift_willThrow();
    }
  }
}

uint64_t sub_1B89DB854(unint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BD0, qword_1B8A26FF0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v42 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v39 - v10);
  v43 = v9;
  v12 = &v39 + *(v9 + 48) - v10;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v13 = *(v41 + 48);
  sub_1B8A19CDC(v12, a1);
  v44 = v11;
  *v11 = v14;
  *&v12[v13] = v15;
  swift_beginAccess();
  sub_1B89AA114(v3 + 16, v48);
  v16 = type metadata accessor for StickerStore();
  v46 = v16;
  v47 = &off_1F373ECA0;
  v45[0] = v3;
  type metadata accessor for StickerStore.TouchStickerMethod();
  inited = swift_initStackObject();
  v18 = v46;
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22);
  inited[7] = *v22;
  v40 = inited + 7;
  inited[10] = v16;
  inited[11] = &off_1F373ECA0;
  v49 = inited;
  sub_1B89D2F5C(v48, (inited + 2));
  v39 = v3;

  __swift_destroy_boxed_opaque_existential_0(v45);
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B8A24554())
  {
    v25 = 0;
    v26 = a1 & 0xC000000000000001;
    v27 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v26)
      {
        v28 = a1;
        v29 = MEMORY[0x1B8CC44E0](v25, a1);
      }

      else
      {
        if (v25 >= *(v27 + 16))
        {
          goto LABEL_15;
        }

        v28 = a1;
        v29 = *(a1 + 8 * v25 + 32);
      }

      v30 = v29;
      a1 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      sub_1B89DC838(v29);
      if (v2)
      {

        goto LABEL_18;
      }

      ++v25;
      v31 = a1 == i;
      a1 = v28;
      if (v31)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:
  sub_1B89D2920();
  sub_1B8A07D10();

LABEL_18:
  v32 = v49;
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0(v32 + 2);
  __swift_destroy_boxed_opaque_existential_0(v40);
  v33 = v44;
  v34 = v42;
  sub_1B89AF268(v44, v42, &qword_1EBA91BD0, qword_1B8A26FF0);
  v35 = *v34;
  v36 = v34 + *(v43 + 48);
  sub_1B8A1A2A0(v36, *(v36 + *(v41 + 48)), v35);

  sub_1B89A8A78(v33, &qword_1EBA91BD0, qword_1B8A26FF0);
  v37 = sub_1B8A23B14();
  return (*(*(v37 - 8) + 8))(v36, v37);
}

uint64_t sub_1B89DBC38(uint64_t a1)
{
  swift_beginAccess();
  sub_1B89AA114(v1 + 16, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_0(v6, v7);
  (*(v4 + 48))(a1, v3, v4);
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t *StickerStore.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return v0;
}

uint64_t StickerStore.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  return swift_deallocClassInstance();
}

void sub_1B89DBE2C(uint64_t a1)
{
  v3 = *v1;
  v7 = 1;
  v4 = sub_1B89D3BB0(a1, &v7);
  if (!v2)
  {
    if (v4)
    {
      v5 = v4;
      sub_1B89DA0E4(v4);
    }

    else
    {
      sub_1B89C353C();
      swift_allocError();
      *v6 = 2;
      swift_willThrow();
    }
  }
}

__n128 sub_1B89DBF00(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, _DWORD *a6, uint64_t *a7, uint64_t a8, unint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, char *a14)
{
  v15 = *v14;
  sub_1B89D8968(a1, a2, a3, a4, a5 & 1, a6, a7, a8, a9, a10, a11, a12, a13, a14);
  return result;
}

uint64_t sub_1B89DBF88()
{
  v1 = *v0;
  swift_beginAccess();
  sub_1B89AA114(v1 + 16, v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_0(v5, v6);
  (*(v3 + 56))(v2, v3);
  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t sub_1B89DC08C(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1B89AA114(v3 + 16, v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_0(v7, v8);
  (*(v5 + 48))(a1, v4, v5);
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

void *sub_1B89DC134(uint64_t a1)
{
  v2 = v1;
  v34 = *(a1 + OBJC_IVAR___STKSticker_type);
  v21 = v1[6];
  v22 = v1[5];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA0, qword_1B8A265A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA8, qword_1B8A281D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  v8 = &unk_1B8A27010;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1B8CC3470](KeyPath, 1);
  sub_1B89AADD4(0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B8A26260;
  v11 = swift_getKeyPath();
  MEMORY[0x1B8CC3470](v11, 1);
  swift_setDeallocating();
  v12 = v3;
  v13 = v34;
  (*(v4 + 8))(v7 + v6, v12);
  swift_deallocClassInstance();
  LOBYTE(v24) = 0;
  LOBYTE(v29) = v34;
  *(&v29 + 1) = 0;
  *&v30 = 0;
  v31 = 0uLL;
  *(&v30 + 1) = v10;
  LOBYTE(v32) = 1;
  *(&v32 + 1) = 8;
  v33 = 0;
  v14 = (*(v21 + 8))(&v29, v22);
  if (v23)
  {
    v26 = v31;
    v27 = v32;
    v28 = v33;
    v24 = v29;
    v25 = v30;
    sub_1B89A9028(&v24);
  }

  else
  {
    v15 = v14;
    v26 = v31;
    v27 = v32;
    v28 = v33;
    v24 = v29;
    v25 = v30;
    sub_1B89A9028(&v24);
    sub_1B89DC400(a1, v15);
    v16 = v2[5];
    v17 = v2[6];
    __swift_project_boxed_opaque_existential_0(v2 + 2, v16);
    v8 = (*(v17 + 24))(a1, v16, v17);
    v19 = 50;
    if (v13)
    {
      v19 = 1000;
    }

    if (v15 >= v19)
    {
      v35 = v13;
      sub_1B89DC418(&v35);
    }
  }

  return v8;
}

uint64_t sub_1B89DC418(unsigned __int8 *a1)
{
  v2 = v1;
  v18 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA0, qword_1B8A265A0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA8, qword_1B8A281D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1B8CC3470](KeyPath, 1);
  sub_1B89AADD4(0);
  *(swift_allocObject() + 16) = xmmword_1B8A26260;
  v9 = swift_getKeyPath();
  MEMORY[0x1B8CC3470](v9, 1);
  swift_setDeallocating();
  (*(v4 + 8))(v7 + v6, v3);
  swift_deallocClassInstance();
  v35[0] = 1;
  LOBYTE(v36[0]) = 0;
  if (v18)
  {
    v10 = 1000;
  }

  else
  {
    v10 = 50;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B8A26260;
  v12 = swift_getKeyPath();
  MEMORY[0x1B8CC3470](v12, 1);

  v13 = __swift_project_boxed_opaque_existential_0((v1 + 56), *(v1 + 80));
  LOBYTE(v36[0]) = v18;
  v36[1] = 0;
  *&v37 = 0;
  *(&v37 + 1) = v11;
  v38 = v10;
  v39 = 0;
  LOBYTE(v40) = 1;
  *(&v40 + 1) = 8;
  v41 = 0;
  v32 = v10;
  v33 = v40;
  v34 = 0;
  v30 = v36[0];
  v31 = v37;
  v14 = *v13;
  sub_1B89A8FB4(v36, v28);
  sub_1B89AFE74(&v30, v35);
  v28[2] = v32;
  v28[3] = v33;
  v29 = v34;
  v28[0] = v30;
  v28[1] = v31;
  sub_1B89A9028(v28);
  v15 = sub_1B89D20D8(v35);
  v16 = *__swift_project_boxed_opaque_existential_0((v2 + 56), *(v2 + 80));
  sub_1B89D6690(v15);
  sub_1B89B0BC8(v35);

  v19[0] = v18;
  v20 = 0;
  v21 = 0;
  v22 = v11;
  v23 = v10;
  v24 = 0;
  v25 = 1;
  v26 = 8;
  v27 = 0;
  return sub_1B89A9028(v19);
}

void sub_1B89DC838(uint64_t a1)
{
  v3 = v1;
  v4 = a1;
  v5 = OBJC_IVAR___STKSticker_type;
  if (*(a1 + OBJC_IVAR___STKSticker_type))
  {
    v6 = v2;
  }

  else
  {
    v26 = OBJC_IVAR___STKSticker_type;
    v29 = v1[5];
    v28 = v1[6];
    __swift_project_boxed_opaque_existential_0(v1 + 2, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA0, qword_1B8A265A0);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91AA8, qword_1B8A281D0);
    v17 = *(v16 - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v20 = swift_allocObject();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1B8CC3470](KeyPath, 1);
    sub_1B89AADD4(0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1B8A26260;
    v23 = swift_getKeyPath();
    MEMORY[0x1B8CC3470](v23, 1);
    swift_setDeallocating();
    (*(v17 + 8))(v20 + v19, v16);
    swift_deallocClassInstance();
    LOBYTE(v30) = 0;
    LOBYTE(v35) = 0;
    *(&v35 + 1) = 0;
    *&v36 = 0;
    v37 = 0uLL;
    *(&v36 + 1) = v22;
    LOBYTE(v38) = 1;
    *(&v38 + 1) = 8;
    v39 = 0;
    v24 = (*(v28 + 8))(&v35, v29);
    if (v2)
    {
      v32 = v37;
      v33 = v38;
      v34 = v39;
      v30 = v35;
      v31 = v36;
      sub_1B89A9028(&v30);
      return;
    }

    v25 = v24;
    v32 = v37;
    v33 = v38;
    v34 = v39;
    v30 = v35;
    v31 = v36;
    sub_1B89A9028(&v30);
    v4 = a1;
    sub_1B89DC400(a1, v25);
    v6 = 0;
    v5 = v26;
  }

  v7 = [objc_opt_self() currentEnvironment];
  v8 = [v7 timeProvider];

  [v8 timestamp];
  v10 = v9;
  swift_unknownObjectRelease();
  v11 = OBJC_IVAR___STKSticker_lastUsedDate;
  swift_beginAccess();
  *(v4 + v11) = v10;
  v12 = v3[5];
  v13 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3 + 2, v12);
  (*(v13 + 40))(v4, v12, v13);
  if (!v6 && *(v4 + v5) == 1)
  {
    v14 = v3[5];
    v15 = v3[6];
    __swift_project_boxed_opaque_existential_0(v3 + 2, v14);
    (*(v15 + 48))(v4, v14, v15);
  }
}

void sub_1B89DCBAC(uint64_t a1, uint64_t a2)
{
  v6 = __swift_project_boxed_opaque_existential_0((v2 + 56), *(v2 + 80));
  if (a2 < 1)
  {
    v11 = 1024.0;
  }

  else
  {
    v7 = *v6;
    v13[0] = *(a1 + OBJC_IVAR___STKSticker_type);
    v14 = 0;
    v8 = sub_1B89D3270(0, v13, &v14);
    sub_1B89AADD4(0);
    if (v3)
    {
      return;
    }

    v9 = OBJC_IVAR___STKSticker_libraryIndex;
    swift_beginAccess();
    v10 = *&v8[v9];

    v11 = v10 + 1024.0;
  }

  v12 = OBJC_IVAR___STKSticker_libraryIndex;
  swift_beginAccess();
  *(a1 + v12) = v11;
}

uint64_t sub_1B89DCCAC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return swift_deallocClassInstance();
}

void sub_1B89DCCEC()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    MEMORY[0x1B8CC44E0](0, v1);
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (v1 < 0)
  {
    v4 = *v0;
  }

  else
  {
    v4 = *v0 & 0xFFFFFFFFFFFFFF8;
  }

  if (!sub_1B8A24554())
  {
    goto LABEL_20;
  }

  if (!sub_1B8A24554())
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    *(v1 + 32);
    if (!v2)
    {
LABEL_6:
      v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_16;
    }

LABEL_15:
    v3 = sub_1B8A24554();
LABEL_16:
    if (v3)
    {
      sub_1B89D09F8(0, 1);
      return;
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

char *sub_1B89DCDEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BE8, &unk_1B8A281B0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_1B89DCF18(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

char *sub_1B89DD0F4(char *result, int64_t a2, char a3, char *a4)
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

char *sub_1B89DD1F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BF8, &unk_1B8A271A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B89DD314(char *result, int64_t a2, char a3, char *a4)
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

char *sub_1B89DD420(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BF0, &unk_1B8A27190);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1B89DD514(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v6 = result;
  v7 = MEMORY[0x1E69E7CC0];
  if ((a4 & 1) != 0 || a3)
  {
    v13 = a2 - result;
    if (__OFSUB__(a2, result))
    {
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v8 = 0;
    v14 = (MEMORY[0x1E69E7CC0] + 32);
    v26 = a3;
    while (v13 >= 1)
    {
      v15 = a2;
      if ((a4 & 1) == 0)
      {
        v15 = a2;
        if (v13 > a3)
        {
          v15 = v6 + a3;
          if (__OFADD__(v6, a3))
          {
            goto LABEL_35;
          }

          if (v15 < v6)
          {
            goto LABEL_36;
          }

          if (v15 > a2)
          {
            goto LABEL_33;
          }
        }
      }

      if (!v8)
      {
        v16 = v7[3];
        if (((v16 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_37;
        }

        v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
        if (v17 <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = v17;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BE8, &unk_1B8A281B0);
        v19 = swift_allocObject();
        v20 = _swift_stdlib_malloc_size(v19);
        v21 = v20 - 32;
        if (v20 < 32)
        {
          v21 = v20 - 17;
        }

        v22 = v21 >> 4;
        v19[2] = v18;
        v19[3] = 2 * (v21 >> 4);
        v23 = (v19 + 4);
        v24 = v7[3] >> 1;
        if (v7[2])
        {
          v25 = v7 + 4;
          if (v19 != v7 || v23 >= v25 + 16 * v24)
          {
            memmove(v19 + 4, v25, 16 * v24);
          }

          v7[2] = 0;
        }

        v14 = (v23 + 16 * v24);
        v8 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - v24;

        v7 = v19;
        a3 = v26;
      }

      v11 = __OFSUB__(v8--, 1);
      if (v11)
      {
        goto LABEL_34;
      }

      *v14 = v6;
      v14[1] = v15;
      v14 += 2;
      v6 = v15;
      v13 = a2 - v15;
      if (__OFSUB__(a2, v15))
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v7[3];
  if (v9 < 2)
  {
    return v7;
  }

  v10 = v9 >> 1;
  v11 = __OFSUB__(v10, v8);
  v12 = v10 - v8;
  if (!v11)
  {
    v7[2] = v12;
    return v7;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1B89DD6CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for Sticker(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1B8A24554();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1B8A24554();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B89DD7CC()
{
  result = qword_1EBA91570;
  if (!qword_1EBA91570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91570);
  }

  return result;
}

uint64_t sub_1B89DD820(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B89DD868(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1B89DD8C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for Sticker(0);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1B8A24554();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_1B8A24554();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_1B89DD9E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92220, &unk_1B8A281A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B89DDA78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91A58, &qword_1B8A29640);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v53 = &v52 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91BD0, qword_1B8A26FF0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = (&v52 - v18);
  MEMORY[0x1EEE9AC00](v17);
  v21 = (&v52 - v20);
  sub_1B89AF268(a1, &v52 - v20, &qword_1EBA91BD0, qword_1B8A26FF0);
  v22 = *v21;
  v23 = v21 + *(v12 + 56);
  v24 = *&v23[*(v2 + 48)];
  v25 = sub_1B8A23B14();
  v26 = *(v25 - 8);
  v27 = v26[2];
  v55 = v23;
  v27(v10, v23, v25);
  *&v10[*(v2 + 48)] = v24;
  *v19 = v22;
  sub_1B89A9E58(v10, v19 + *(v12 + 56));
  v56 = v19;
  sub_1B89AF268(v19, v16, &qword_1EBA91BD0, qword_1B8A26FF0);
  v28 = *v16;
  v29 = *(v12 + 56);
  v30 = v53;
  v31 = *(v16 + v29 + *(v2 + 48));
  v32 = v26[4];
  v32(v6);
  v33 = *(v2 + 48);
  (v32)(v30, v6, v25);
  *(v30 + v33) = v31;
  v34 = qword_1ED82E690;
  v54 = v24;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for StickerSignposter();
  __swift_project_value_buffer(v35, qword_1ED8303D8);
  sub_1B89AF268(v30, v6, &qword_1EBA91A58, &qword_1B8A29640);
  sub_1B89AF7B8("move stickers", 13, 2, v6, *&v6[*(v2 + 48)]);

  v36 = v26[1];
  v36(v6, v25);
  v37 = [objc_opt_self() currentEnvironment];
  v38 = [v37 timeProvider];

  [v38 timestamp];
  v40 = v39;
  swift_unknownObjectRelease();
  v41 = [objc_opt_self() stringForTimeInterval_];
  v42 = sub_1B8A23F24();
  v44 = v43;

  if (qword_1ED82E688 != -1)
  {
    swift_once();
  }

  v45 = sub_1B8A23BC4();
  __swift_project_value_buffer(v45, qword_1ED8303C0);

  v46 = sub_1B8A23BA4();
  v47 = sub_1B8A24214();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v57 = v49;
    *v48 = 136315138;
    v50 = sub_1B89A907C(v42, v44, &v57);

    *(v48 + 4) = v50;
    _os_log_impl(&dword_1B89A7000, v46, v47, "END moveSticker(at:to:) (%s)", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x1B8CC5170](v49, -1, -1);
    MEMORY[0x1B8CC5170](v48, -1, -1);
  }

  else
  {
  }

  sub_1B89A8A78(v30, &qword_1EBA91A58, &qword_1B8A29640);
  sub_1B89A8A78(v56, &qword_1EBA91BD0, qword_1B8A26FF0);
  return (v36)(v55, v25);
}

unint64_t sub_1B89DDFCC()
{
  result = qword_1EBA91BE0;
  if (!qword_1EBA91BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91BE0);
  }

  return result;
}

uint64_t sub_1B89DE600()
{
  v0 = sub_1B8A23784();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void sub_1B89DE67C(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t *__return_ptr, id *))
{
  v4 = a3 >> 1;
  v5 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v7 = a2;
  v44 = a3 >> 1;
  if (v5)
  {
    if (v5 <= 0)
    {
      goto LABEL_40;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F30, &qword_1B8A26600);
    v8 = swift_allocObject();
    v9 = _swift_stdlib_malloc_size(v8);
    v10 = v9 - 32;
    if (v9 < 32)
    {
      v10 = v9 - 17;
    }

    v8[2] = v5;
    v8[3] = 2 * (v10 >> 4);
    if (v5 < 0)
    {
LABEL_40:
      __break(1u);
    }

    else
    {
      v11 = 0;
      v12 = v8[3];
      v41 = v12 >> 1;
      v13 = v8 + 4;
      if (v7 <= v4)
      {
        v14 = v4;
      }

      else
      {
        v14 = v7;
      }

      v15 = v14 - v7;
      v16 = (v12 >> 1) | 0x8000000000000000;
      v17 = a1 + 8 * v7;
      while (v5 != v11)
      {
        if (v15 == v11)
        {
          goto LABEL_42;
        }

        v48 = *(v17 + 8 * v11);
        v18 = v48;
        a4(&v46, &v48);

        if (v16 == v11)
        {
          goto LABEL_43;
        }

        ++v11;
        v19 = v47;
        *v13 = v46;
        v13[1] = v19;
        v13 += 2;
        if (v5 == v11)
        {
          v7 = a2;
          v20 = v41 - v11;
          v21 = a2 + v11;
          v4 = v44;
          if (a2 + v11 != v44)
          {
            goto LABEL_18;
          }

          goto LABEL_36;
        }
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v8 = MEMORY[0x1E69E7CC0];
  v22 = *(MEMORY[0x1E69E7CC0] + 24);

  v13 = v8 + 4;
  v20 = v22 >> 1;
  v21 = v7;
  if (v7 != v4)
  {
LABEL_18:
    v23 = v21;
    while (v21 >= v7 && v23 < v4)
    {
      v48 = *(a1 + 8 * v23);
      v24 = v48;
      a4(&v46, &v48);

      v25 = v46;
      v26 = v47;
      if (!v20)
      {
        v27 = v8[3];
        if (((v27 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_46;
        }

        v28 = v27 & 0xFFFFFFFFFFFFFFFELL;
        if (v28 <= 1)
        {
          v29 = 1;
        }

        else
        {
          v29 = v28;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F30, &qword_1B8A26600);
        v30 = swift_allocObject();
        v31 = _swift_stdlib_malloc_size(v30);
        v32 = v31 - 32;
        if (v31 < 32)
        {
          v32 = v31 - 17;
        }

        v33 = v32 >> 4;
        v30[2] = v29;
        v30[3] = 2 * (v32 >> 4);
        v34 = (v30 + 4);
        v35 = v8[3] >> 1;
        if (v8[2])
        {
          v36 = v8 + 4;
          if (v30 != v8 || v34 >= v36 + 16 * v35)
          {
            memmove(v30 + 4, v36, 16 * v35);
          }

          v8[2] = 0;
        }

        v13 = (v34 + 16 * v35);
        v20 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v35;

        v8 = v30;
        v7 = a2;
      }

      v37 = __OFSUB__(v20--, 1);
      if (v37)
      {
        goto LABEL_45;
      }

      ++v23;
      *v13 = v25;
      v13[1] = v26;
      v13 += 2;
      v4 = v44;
      if (v44 == v23)
      {
        goto LABEL_36;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_36:
  v38 = v8[3];
  if (v38 >= 2)
  {
    v39 = v38 >> 1;
    v37 = __OFSUB__(v39, v20);
    v40 = v39 - v20;
    if (v37)
    {
LABEL_48:
      __break(1u);
      return;
    }

    v8[2] = v40;
  }
}

uint64_t sub_1B89DE964(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B89BBE18;

  return sub_1B89DB268(a1, v4, v5, v7, v6);
}

uint64_t sub_1B89DEA2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B89DEAB0()
{
  v0 = sub_1B8A23BC4();
  __swift_allocate_value_buffer(v0, qword_1EBA91C08);
  __swift_project_value_buffer(v0, qword_1EBA91C08);
  return sub_1B8A23BB4();
}

const char *sub_1B89DEB30(uint64_t a1, uint64_t a2, sqlite3 *a3)
{
  if (a3)
  {
    v4 = sub_1B8A23F64();
    v5 = sqlite3_exec(a3, (v4 + 32), 0, 0, 0);

    return sub_1B89DEC68(v5, a3);
  }

  else
  {
    if (qword_1EBA916B0 != -1)
    {
      swift_once();
    }

    v7 = sub_1B8A23BC4();
    __swift_project_value_buffer(v7, qword_1EBA91C08);
    v8 = sub_1B8A23BA4();
    v9 = sub_1B8A24234();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1B89A7000, v8, v9, "Database is not available", v10, 2u);
      MEMORY[0x1B8CC5170](v10, -1, -1);
    }

    return 0;
  }
}

const char *sub_1B89DEC68(int a1, sqlite3 *db)
{
  v3 = dword_1F373EE00 == a1 || unk_1F373EE04 == a1 || dword_1F373EE08 == a1;
  v4 = v3;
  if (v3)
  {
    return v4;
  }

  v6 = sqlite3_extended_errcode(db);
  result = sqlite3_errstr(a1);
  if (result)
  {
    v8 = sub_1B8A23EE4();
    if (v9)
    {
      v10 = v9;
      v11 = v8;
      if (qword_1EBA916B0 != -1)
      {
        swift_once();
      }

      v12 = sub_1B8A23BC4();
      __swift_project_value_buffer(v12, qword_1EBA91C08);

      v13 = sub_1B8A23BA4();
      v14 = sub_1B8A24234();

      if (!os_log_type_enabled(v13, v14))
      {

        goto LABEL_23;
      }

      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 67109634;
      *(v15 + 4) = a1;
      *(v15 + 8) = 1024;
      *(v15 + 10) = v6;
      *(v15 + 14) = 2080;
      v17 = sub_1B89A907C(v11, v10, &v22);

      *(v15 + 16) = v17;
      _os_log_impl(&dword_1B89A7000, v13, v14, "error: %d extended: %d description: %s", v15, 0x18u);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1B8CC5170](v16, -1, -1);
      v18 = v15;
    }

    else
    {
      if (qword_1EBA916B0 != -1)
      {
        swift_once();
      }

      v19 = sub_1B8A23BC4();
      __swift_project_value_buffer(v19, qword_1EBA91C08);
      v13 = sub_1B8A23BA4();
      v20 = sub_1B8A24234();
      if (!os_log_type_enabled(v13, v20))
      {
        goto LABEL_23;
      }

      v21 = swift_slowAlloc();
      *v21 = 67109376;
      *(v21 + 4) = a1;
      *(v21 + 8) = 1024;
      *(v21 + 10) = v6;
      _os_log_impl(&dword_1B89A7000, v13, v20, "error: %d extended: %d", v21, 0xEu);
      v18 = v21;
    }

    MEMORY[0x1B8CC5170](v18, -1, -1);
LABEL_23:

    return v4;
  }

  __break(1u);
  return result;
}

sqlite3 *sub_1B89DEF00()
{
  ppDb[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1B8A23784();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - v6;
  ppDb[0] = 0;
  sub_1B89B8558(&v23 - v6);
  sub_1B8A23744();
  v8 = sub_1B8A23F64();

  v9 = sqlite3_open_v2((v8 + 32), ppDb, 1, 0);

  if (sub_1B89DEC68(v9, ppDb[0]))
  {
    (*(v1 + 8))(v7, v0);
  }

  else
  {
    ppDb[0] = 0;
    if (qword_1EBA916B0 != -1)
    {
      swift_once();
    }

    v10 = sub_1B8A23BC4();
    __swift_project_value_buffer(v10, qword_1EBA91C08);
    (*(v1 + 16))(v5, v7, v0);
    v11 = sub_1B8A23BA4();
    v12 = sub_1B8A24244();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v24;
      *v13 = 136315138;
      sub_1B89DF25C();
      v14 = sub_1B8A24934();
      v16 = v15;
      v17 = *(v1 + 8);
      v17(v5, v0);
      v18 = sub_1B89A907C(v14, v16, &v25);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1B89A7000, v11, v12, "Failed to open path: %s", v13, 0xCu);
      v19 = v24;
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x1B8CC5170](v19, -1, -1);
      MEMORY[0x1B8CC5170](v13, -1, -1);

      v17(v7, v0);
    }

    else
    {

      v20 = *(v1 + 8);
      v20(v5, v0);
      v20(v7, v0);
    }
  }

  result = ppDb[0];
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1B89DF25C()
{
  result = qword_1EBA91468;
  if (!qword_1EBA91468)
  {
    sub_1B8A23784();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91468);
  }

  return result;
}

uint64_t Settings.shouldInitializeCloudKitSchema.getter()
{
  result = os_variant_has_internal_content();
  if (result)
  {
    if (sub_1B89DF2F8())
    {
      return 1;
    }

    else
    {
      return sub_1B89DF3B0() & 1;
    }
  }

  return result;
}

uint64_t sub_1B89DF2F8()
{
  v0 = [objc_opt_self() processInfo];
  v1 = sub_1B89DF5A4(0xD00000000000001DLL, 0x80000001B8A2AC30);
  v3 = v2;

  if (v3)
  {
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      v5 = sub_1B89DFD70(v1, v3);
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1B89DF3B0()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_1B8A23E74();
  if (*(v2 + 16) && (v3 = sub_1B8A0DE98(0xD00000000000001BLL, 0x80000001B8A2AC10), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v6 = *v5;
    v7 = v5[1];

    v8 = sub_1B8A23F54();
    v10 = v9;

    LOBYTE(v8) = sub_1B89DFD70(v8, v10);

    return v8 & 1;
  }

  else
  {

    return 0;
  }
}

uint64_t getEnumTagSinglePayload for Settings(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Settings(_WORD *result, int a2, int a3)
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

uint64_t sub_1B89DF5A4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91C20, &qword_1B8A271E8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v97 - v7;
  v100 = v2;
  v9 = [v2 arguments];
  v10 = sub_1B8A240F4();

  v13 = *(v10 + 16);
  if (!v13)
  {
LABEL_18:

    return 0;
  }

  v14 = 0;
  v15 = 56;
  while (1)
  {
    if (v14 >= *(v10 + 16))
    {
      __break(1u);
      goto LABEL_91;
    }

    if (*(v10 + v15 - 24) == a1 && *(v10 + v15 - 16) == a2)
    {
      break;
    }

    v17 = *(v10 + v15 - 24);
    v18 = *(v10 + v15 - 16);
    if (sub_1B8A24954())
    {
      break;
    }

    v103 = a1;
    v104 = a2;

    MEMORY[0x1B8CC3E20](61, 0xE100000000000000);
    v19 = sub_1B8A24004();

    if (v19)
    {
      break;
    }

    ++v14;
    v15 += 16;
    if (v13 == v14)
    {
      goto LABEL_18;
    }
  }

  v20 = [v100 arguments];
  v21 = sub_1B8A240F4();

  if (v14 >= *(v21 + 16))
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    v92 = result;
    v93 = v12;

    sub_1B8A03EA4(v92, v93, 10);
    v95 = v94;

    result = v92;
    if (v95)
    {
      goto LABEL_87;
    }

    return result;
  }

  v23 = *(v21 + v15 - 24);
  v22 = *(v21 + v15 - 16);

  v99 = v23;
  v103 = v23;
  v104 = v22;
  v101 = 4013373;
  v102 = 0xE300000000000000;
  v24 = sub_1B8A23934();
  v98 = *(*(v24 - 8) + 56);
  v98(v8, 1, 1, v24);
  sub_1B89DDFCC();
  sub_1B8A24484();
  v26 = v25;
  sub_1B89E02E4(v8);
  if ((v26 & 1) == 0)
  {
    goto LABEL_18;
  }

  v103 = v99;
  v104 = v22;
  v101 = 15677;
  v102 = 0xE200000000000000;
  v98(v8, 1, 1, v24);
  sub_1B8A24484();
  v28 = v27;
  v30 = v29;
  sub_1B89E02E4(v8);
  if ((v30 & 1) == 0)
  {
    v39 = v28;
LABEL_22:
    v40 = sub_1B89E034C(v39, v99, v22);
    v42 = v41;
    v44 = v43;
    v46 = v45;

    v47 = MEMORY[0x1B8CC3DF0](v40, v42, v44, v46);

    return v47;
  }

  v103 = v99;
  v104 = v22;
  v101 = 61;
  v102 = 0xE100000000000000;
  v98(v8, 1, 1, v24);
  sub_1B8A24484();
  v32 = v31;
  v34 = v33;
  sub_1B89E02E4(v8);
  if ((v34 & 1) == 0)
  {
    v39 = v32;
    goto LABEL_22;
  }

  v35 = v100;
  v36 = [v100 arguments];
  v37 = sub_1B8A240F4();

  v38 = *(v37 + 16);

  if (v38 - 1 == v14)
  {
    return 0;
  }

  v48 = [v35 arguments];
  v49 = sub_1B8A240F4();

  if (v14 + 1 >= *(v49 + 16))
  {
    goto LABEL_92;
  }

  v50 = *(v49 + v15 - 8);
  v51 = *(v49 + v15);

  v12 = v51;
  result = v50;
  v52 = HIBYTE(v51) & 0xF;
  v53 = v50 & 0xFFFFFFFFFFFFLL;
  if ((v51 & 0x2000000000000000) != 0)
  {
    v54 = HIBYTE(v51) & 0xF;
  }

  else
  {
    v54 = v50 & 0xFFFFFFFFFFFFLL;
  }

  if (!v54)
  {
    goto LABEL_87;
  }

  if ((v51 & 0x1000000000000000) != 0)
  {
    goto LABEL_93;
  }

  if ((v51 & 0x2000000000000000) != 0)
  {
    v103 = v50;
    v104 = v51 & 0xFFFFFFFFFFFFFFLL;
    if (v50 == 43)
    {
      if (!v52)
      {
LABEL_99:
        __break(1u);
        return result;
      }

      if (--v52)
      {
        v77 = 0;
        v78 = &v103 + 1;
        while (1)
        {
          v79 = *v78 - 48;
          if (v79 > 9)
          {
            break;
          }

          v80 = (v77 * 10) >> 64;
          v81 = 10 * v77;
          if (v80 != v81 >> 63)
          {
            break;
          }

          v64 = __OFADD__(v81, v79);
          v77 = v81 + v79;
          if (v64)
          {
            break;
          }

          ++v78;
          if (!--v52)
          {
            goto LABEL_86;
          }
        }
      }
    }

    else if (v50 == 45)
    {
      if (!v52)
      {
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      if (--v52)
      {
        v65 = 0;
        v66 = &v103 + 1;
        while (1)
        {
          v67 = *v66 - 48;
          if (v67 > 9)
          {
            break;
          }

          v68 = (v65 * 10) >> 64;
          v69 = 10 * v65;
          if (v68 != v69 >> 63)
          {
            break;
          }

          v64 = __OFSUB__(v69, v67);
          v65 = v69 - v67;
          if (v64)
          {
            break;
          }

          ++v66;
          if (!--v52)
          {
            goto LABEL_86;
          }
        }
      }
    }

    else if (v52)
    {
      v86 = 0;
      v87 = &v103;
      while (1)
      {
        v88 = *v87 - 48;
        if (v88 > 9)
        {
          break;
        }

        v89 = (v86 * 10) >> 64;
        v90 = 10 * v86;
        if (v89 != v90 >> 63)
        {
          break;
        }

        v64 = __OFADD__(v90, v88);
        v86 = v90 + v88;
        if (v64)
        {
          break;
        }

        v87 = (v87 + 1);
        if (!--v52)
        {
          goto LABEL_86;
        }
      }
    }

LABEL_85:
    LOBYTE(v52) = 1;
    goto LABEL_86;
  }

  if ((v50 & 0x1000000000000000) != 0)
  {
    v52 = (v51 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v52 = sub_1B8A246A4();
    result = v50;
    v53 = v96;
  }

  v55 = *v52;
  if (v55 == 43)
  {
    v70 = v53 == 1;
    v57 = v53 < 1;
    v71 = v53 - 1;
    if (v57)
    {
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    if (v70)
    {
      goto LABEL_85;
    }

    if (!v52)
    {
      goto LABEL_86;
    }

    v72 = 0;
    v73 = (v52 + 1);
    while (1)
    {
      v74 = *v73 - 48;
      if (v74 > 9)
      {
        goto LABEL_85;
      }

      v75 = (v72 * 10) >> 64;
      v76 = 10 * v72;
      if (v75 != v76 >> 63)
      {
        goto LABEL_85;
      }

      v64 = __OFADD__(v76, v74);
      v72 = v76 + v74;
      if (v64)
      {
        goto LABEL_85;
      }

      ++v73;
      if (!--v71)
      {
LABEL_77:
        LOBYTE(v52) = 0;
        goto LABEL_86;
      }
    }
  }

  if (v55 != 45)
  {
    if (!v53)
    {
      goto LABEL_85;
    }

    if (!v52)
    {
      goto LABEL_86;
    }

    v82 = 0;
    while (1)
    {
      v83 = *v52 - 48;
      if (v83 > 9)
      {
        goto LABEL_85;
      }

      v84 = (v82 * 10) >> 64;
      v85 = 10 * v82;
      if (v84 != v85 >> 63)
      {
        goto LABEL_85;
      }

      v64 = __OFADD__(v85, v83);
      v82 = v85 + v83;
      if (v64)
      {
        goto LABEL_85;
      }

      ++v52;
      if (!--v53)
      {
        goto LABEL_77;
      }
    }
  }

  v56 = v53 == 1;
  v57 = v53 < 1;
  v58 = v53 - 1;
  if (v57)
  {
    __break(1u);
    goto LABEL_97;
  }

  if (v56)
  {
    goto LABEL_85;
  }

  if (v52)
  {
    v59 = 0;
    v60 = (v52 + 1);
    while (1)
    {
      v61 = *v60 - 48;
      if (v61 > 9)
      {
        goto LABEL_85;
      }

      v62 = (v59 * 10) >> 64;
      v63 = 10 * v59;
      if (v62 != v63 >> 63)
      {
        goto LABEL_85;
      }

      v64 = __OFSUB__(v63, v61);
      v59 = v63 - v61;
      if (v64)
      {
        goto LABEL_85;
      }

      ++v60;
      if (!--v58)
      {
        goto LABEL_77;
      }
    }
  }

LABEL_86:
  LOBYTE(v101) = v52;
  if (v52)
  {
LABEL_87:
    v91 = result;
    if (sub_1B8A24004())
    {

      return 0;
    }

    return v91;
  }

  return result;
}

unsigned __int8 *sub_1B89DFD70(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91C20, &qword_1B8A271E8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v40 - v6;
  v42 = a1;
  v43 = a2;
  v40 = 49;
  v41 = 0xE100000000000000;
  v8 = sub_1B8A23934();
  v9 = *(*(v8 - 8) + 56);
  v10 = 1;
  v9(v7, 1, 1, v8);
  sub_1B89DDFCC();
  v11 = sub_1B8A24494();
  sub_1B89E02E4(v7);
  if (!v11)
  {
    return v10;
  }

  v42 = a1;
  v43 = a2;
  v40 = 7562617;
  v41 = 0xE300000000000000;
  v10 = 1;
  v9(v7, 1, 1, v8);
  v12 = sub_1B8A24494();
  sub_1B89E02E4(v7);
  if (!v12)
  {
    return v10;
  }

  v42 = a1;
  v43 = a2;
  v40 = 1702195828;
  v41 = 0xE400000000000000;
  v10 = 1;
  v9(v7, 1, 1, v8);
  v13 = sub_1B8A24494();
  sub_1B89E02E4(v7);
  if (!v13)
  {
    return v10;
  }

  v42 = a1;
  v43 = a2;
  v40 = 28271;
  v41 = 0xE200000000000000;
  v10 = 1;
  v9(v7, 1, 1, v8);
  v14 = sub_1B8A24494();
  result = sub_1B89E02E4(v7);
  if (!v14)
  {
    return v10;
  }

  v16 = HIBYTE(a2) & 0xF;
  v17 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v18 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    return 0;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {

    v20 = sub_1B8A03EA4(a1, a2, 10);
    v39 = v38;

    if (v39)
    {
      return 0;
    }

    return (v20 > 0);
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      result = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1B8A246A4();
    }

    v19 = *result;
    if (v19 == 43)
    {
      if (v17 >= 1)
      {
        v16 = v17 - 1;
        if (v17 != 1)
        {
          v20 = 0;
          if (result)
          {
            v27 = result + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_66;
              }

              v29 = 10 * v20;
              if ((v20 * 10) >> 64 != (10 * v20) >> 63)
              {
                goto LABEL_66;
              }

              v20 = v29 + v28;
              if (__OFADD__(v29, v28))
              {
                goto LABEL_66;
              }

              ++v27;
              if (!--v16)
              {
                goto LABEL_67;
              }
            }
          }

          goto LABEL_58;
        }

        goto LABEL_66;
      }

      goto LABEL_74;
    }

    if (v19 != 45)
    {
      if (v17)
      {
        v20 = 0;
        if (result)
        {
          while (1)
          {
            v33 = *result - 48;
            if (v33 > 9)
            {
              goto LABEL_66;
            }

            v34 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              goto LABEL_66;
            }

            v20 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              goto LABEL_66;
            }

            ++result;
            if (!--v17)
            {
              goto LABEL_58;
            }
          }
        }

        goto LABEL_58;
      }

LABEL_66:
      v20 = 0;
      LOBYTE(v16) = 1;
LABEL_67:
      LOBYTE(v40) = v16;
      if (v16)
      {
        return 0;
      }

      return (v20 > 0);
    }

    if (v17 >= 1)
    {
      v16 = v17 - 1;
      if (v17 != 1)
      {
        v20 = 0;
        if (result)
        {
          v21 = result + 1;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              goto LABEL_66;
            }

            v23 = 10 * v20;
            if ((v20 * 10) >> 64 != (10 * v20) >> 63)
            {
              goto LABEL_66;
            }

            v20 = v23 - v22;
            if (__OFSUB__(v23, v22))
            {
              goto LABEL_66;
            }

            ++v21;
            if (!--v16)
            {
              goto LABEL_67;
            }
          }
        }

LABEL_58:
        LOBYTE(v16) = 0;
        goto LABEL_67;
      }

      goto LABEL_66;
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v42 = a1;
  v43 = a2 & 0xFFFFFFFFFFFFFFLL;
  if (a1 != 43)
  {
    if (a1 != 45)
    {
      if (v16)
      {
        v20 = 0;
        v35 = &v42;
        while (1)
        {
          v36 = *v35 - 48;
          if (v36 > 9)
          {
            break;
          }

          v37 = 10 * v20;
          if ((v20 * 10) >> 64 != (10 * v20) >> 63)
          {
            break;
          }

          v20 = v37 + v36;
          if (__OFADD__(v37, v36))
          {
            break;
          }

          v35 = (v35 + 1);
          if (!--v16)
          {
            goto LABEL_67;
          }
        }
      }

      goto LABEL_66;
    }

    if (v16)
    {
      if (--v16)
      {
        v20 = 0;
        v24 = &v42 + 1;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v20;
          if ((v20 * 10) >> 64 != (10 * v20) >> 63)
          {
            break;
          }

          v20 = v26 - v25;
          if (__OFSUB__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v16)
          {
            goto LABEL_67;
          }
        }
      }

      goto LABEL_66;
    }

    goto LABEL_73;
  }

  if (v16)
  {
    if (--v16)
    {
      v20 = 0;
      v30 = &v42 + 1;
      while (1)
      {
        v31 = *v30 - 48;
        if (v31 > 9)
        {
          break;
        }

        v32 = 10 * v20;
        if ((v20 * 10) >> 64 != (10 * v20) >> 63)
        {
          break;
        }

        v20 = v32 + v31;
        if (__OFADD__(v32, v31))
        {
          break;
        }

        ++v30;
        if (!--v16)
        {
          goto LABEL_67;
        }
      }
    }

    goto LABEL_66;
  }

LABEL_75:
  __break(1u);
  return result;
}

uint64_t sub_1B89E02E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91C20, &qword_1B8A271E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B89E034C(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1B8A24044();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B89E0398(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v3 = *(sub_1B8A23884() - 8);
    v4 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_1B89E042C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_21:
    v22 = sub_1B8A24554();
    if (v9)
    {
      if (v22 < v9)
      {
        result = sub_1B8A24554();
        v9 = result;
        if (result < 0)
        {
          goto LABEL_28;
        }
      }
    }

    result = sub_1B8A24554();
    if (result < 0)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }

    result = sub_1B8A24554();
    if (result >= v9)
    {
      goto LABEL_10;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v5 = a4;
  v6 = a3;
  v8 = a2;
  v9 = a1;
  v7 = a5;
  v10 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_21;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9)
  {
    v9 = v12;
  }

  else
  {
    v9 = 0;
  }

  if (result < v9)
  {
    goto LABEL_26;
  }

LABEL_10:
  if ((v8 & 0xC000000000000001) != 0 && v9)
  {
    sub_1B89AB538(0, &qword_1EBA91E50, 0x1E699BAF8);

    v13 = 0;
    do
    {
      v14 = v13 + 1;
      sub_1B8A24654();
      v13 = v14;
    }

    while (v9 != v14);
  }

  else
  {
  }

  if (v10)
  {
    v16 = sub_1B8A24734();
    v17 = v19;
    v15 = v20;
    v18 = v21;
  }

  else
  {
    v15 = 0;
    v16 = v8 & 0xFFFFFFFFFFFFFF8;
    v17 = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
    v18 = (2 * v9) | 1;
  }

  *v7 = v16;
  v7[1] = v17;
  v7[2] = v15;
  v7[3] = v18;
  v7[4] = v6;
  v7[5] = v5;
  return result;
}

uint64_t ImageGlyphRecency.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for RecencyServiceClient();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v0 + 112) = v1;
  return v0;
}

uint64_t ImageGlyphRecency.recordEngagement(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B8A239A4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_1B8A23904();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B89E0738, v1, 0);
}

uint64_t sub_1B89E0738()
{
  v30 = v0;
  if (qword_1EBA91528 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  v5 = sub_1B8A23BC4();
  __swift_project_value_buffer(v5, qword_1EBA91530);
  v6 = *(v2 + 16);
  v6(v1, v4, v3);
  v7 = sub_1B8A23BA4();
  v8 = sub_1B8A24224();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[8];
  v10 = v0[9];
  v12 = v0[7];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v13 = 136315138;
    sub_1B89ECA60(&qword_1ED82DE78, MEMORY[0x1E69695A8]);
    v27 = v8;
    v14 = v6;
    v15 = sub_1B8A24934();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = sub_1B89A907C(v18, v17, &v29);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_1B89A7000, v7, v27, "Local client initiated record engagement for sticker: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1B8CC5170](v28, -1, -1);
    MEMORY[0x1B8CC5170](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[6];
  v21 = v0[4];
  v22 = v0[5];
  v23 = *(v0[3] + 112);
  v6(v20, v0[2], v0[7]);
  (*(v22 + 104))(v20, *MEMORY[0x1E69D4778], v21);
  v24 = swift_task_alloc();
  v0[10] = v24;
  *v24 = v0;
  v24[1] = sub_1B89E09FC;
  v25 = v0[6];

  return sub_1B89E84BC(v25);
}

uint64_t sub_1B89E09FC(double a1)
{
  v4 = *(*v2 + 80);
  v5 = *v2;
  v5[11] = v1;

  if (v1)
  {
    v6 = v5[3];
    (*(v5[5] + 8))(v5[6], v5[4]);

    return MEMORY[0x1EEE6DFA0](sub_1B89E0B90, v6, 0);
  }

  else
  {
    v7 = v5[9];
    (*(v5[5] + 8))(v5[6], v5[4]);

    v8 = v5[1];
    v9.n128_f64[0] = a1;

    return v8(v9);
  }
}

uint64_t sub_1B89E0B90()
{
  v1 = v0[9];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_1B89E0C00()
{
  v0 = sub_1B8A23BC4();
  __swift_allocate_value_buffer(v0, qword_1EBA91530);
  __swift_project_value_buffer(v0, qword_1EBA91530);
  return sub_1B8A23BB4();
}

uint64_t sub_1B89E0C84()
{
  v0 = type metadata accessor for StickerStore.PersistenceType();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B8A23784();
  (*(*(v4 - 8) + 56))(v3, 1, 3, v4);
  type metadata accessor for StickerStore();
  swift_allocObject();
  result = StickerStore.init(persistence:)(v3);
  qword_1EBA91C28 = result;
  return result;
}

uint64_t sub_1B89E0D60(uint64_t a1)
{
  v2 = sub_1B89EB6E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B89E0D9C(uint64_t a1)
{
  v2 = sub_1B89EB6E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B89E0DD8()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x696A6F6D65;
  if (*v0 != 2)
  {
    v2 = 0x6574636172616863;
  }

  if (*v0)
  {
    v1 = 0x72656B63697473;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B89E0E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B89EC73C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B89E0E7C(uint64_t a1)
{
  v2 = sub_1B89EB690();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B89E0EB8(uint64_t a1)
{
  v2 = sub_1B89EB690();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B89E0EF4(uint64_t a1)
{
  v2 = sub_1B89EB738();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B89E0F30(uint64_t a1)
{
  v2 = sub_1B89EB738();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B89E0F6C()
{
  sub_1B8A24A14();
  MEMORY[0x1B8CC48A0](0);
  return sub_1B8A24A34();
}

uint64_t sub_1B89E0FB0()
{
  sub_1B8A24A14();
  MEMORY[0x1B8CC48A0](0);
  return sub_1B8A24A34();
}

uint64_t sub_1B89E0FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B8A24954();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B89E1070(uint64_t a1)
{
  v2 = sub_1B89EB78C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B89E10AC(uint64_t a1)
{
  v2 = sub_1B89EB78C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B89E10F4(uint64_t a1)
{
  v2 = sub_1B89EB7E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B89E1130(uint64_t a1)
{
  v2 = sub_1B89EB7E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RecencyRecordWrapper.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91C30, &qword_1B8A27200);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v30 - v5;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91C38, &qword_1B8A27208);
  v34 = *(v36 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v32 = &v30 - v7;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91C40, &qword_1B8A27210);
  v33 = *(v35 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91C48, &qword_1B8A27218);
  v31 = *(v11 - 8);
  v12 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91C50, &qword_1B8A27220);
  v42 = *(v15 - 8);
  v43 = v15;
  v16 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - v17;
  v19 = *v1;
  v40 = v1[1];
  v41 = v19;
  v20 = *(v1 + 16);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B89EB690();
  sub_1B8A24A64();
  if (v20 <= 1)
  {
    if (!v20)
    {
      v46 = 1;
      sub_1B89EB78C();
      v22 = v43;
      sub_1B8A24874();
      v44 = v41;
      type metadata accessor for Sticker(0);
      sub_1B89ECA60(&qword_1EBA911E0, type metadata accessor for Sticker);
      v23 = v35;
      sub_1B8A248F4();
      (*(v33 + 8))(v10, v23);
      return (*(v42 + 8))(v18, v22);
    }

    v47 = 2;
    sub_1B89EB738();
    v25 = v32;
    v26 = v43;
    sub_1B8A24874();
    v27 = v36;
    sub_1B8A248B4();
    v28 = v34;
    goto LABEL_7;
  }

  if (v20 == 2)
  {
    v48 = 3;
    sub_1B89EB6E4();
    v25 = v37;
    v26 = v43;
    sub_1B8A24874();
    v27 = v39;
    sub_1B8A248B4();
    v28 = v38;
LABEL_7:
    (*(v28 + 8))(v25, v27);
    return (*(v42 + 8))(v18, v26);
  }

  v45 = 0;
  sub_1B89EB7E0();
  v29 = v43;
  sub_1B8A24874();
  (*(v31 + 8))(v14, v11);
  return (*(v42 + 8))(v18, v29);
}

uint64_t RecencyRecordWrapper.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) != 2)
    {
      return MEMORY[0x1B8CC48A0](0);
    }

    v4 = 3;
  }

  else
  {
    if (!*(v0 + 16))
    {
      MEMORY[0x1B8CC48A0](1);
      return sub_1B8A24414();
    }

    v4 = 2;
  }

  MEMORY[0x1B8CC48A0](v4);

  return sub_1B8A23F94();
}

uint64_t RecencyRecordWrapper.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1B8A24A14();
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      MEMORY[0x1B8CC48A0](0);
      return sub_1B8A24A34();
    }

    v4 = 3;
    goto LABEL_7;
  }

  if (v3)
  {
    v4 = 2;
LABEL_7:
    MEMORY[0x1B8CC48A0](v4);
    sub_1B8A23F94();
    return sub_1B8A24A34();
  }

  MEMORY[0x1B8CC48A0](1);
  sub_1B8A24414();
  return sub_1B8A24A34();
}

uint64_t RecencyRecordWrapper.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91C80, &qword_1B8A27228);
  v70 = *(v74 - 8);
  v3 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v62 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91C88, &qword_1B8A27230);
  v68 = *(v5 - 8);
  v69 = v5;
  v6 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v62 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91C90, &qword_1B8A27238);
  v9 = *(v8 - 8);
  v66 = v8;
  v67 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v62 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91C98, &qword_1B8A27240);
  v65 = *(v13 - 8);
  v14 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v62 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91CA0, &qword_1B8A27248);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v62 - v20;
  v22 = a1[3];
  v23 = a1[4];
  v76 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v22);
  sub_1B89EB690();
  v24 = v75;
  sub_1B8A24A54();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_0(v76);
  }

  v62 = v13;
  v63 = 0;
  v25 = v12;
  v27 = v72;
  v26 = v73;
  v28 = v74;
  v75 = v18;
  v64 = v21;
  v29 = sub_1B8A24864();
  v30 = *(v29 + 16);
  if (!v30 || ((v31 = *(v29 + 32), v30 == 1) ? (v32 = v31 == 4) : (v32 = 1), v32))
  {
    v33 = sub_1B8A24694();
    swift_allocError();
    v35 = v34;
    v36 = v17;
    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91CA8, &qword_1B8A27250) + 48);
    *v35 = &type metadata for RecencyRecordWrapper;
    v38 = v64;
    sub_1B8A247B4();
    sub_1B8A24684();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
    swift_willThrow();
    (*(v75 + 8))(v38, v36);
LABEL_9:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v76);
  }

  if (*(v29 + 32) > 1u)
  {
    if (v31 == 2)
    {
      v80 = 2;
      sub_1B89EB738();
      v44 = v63;
      v45 = v64;
      sub_1B8A247A4();
      if (v44)
      {
LABEL_17:
        (*(v75 + 8))(v45, v17);
        goto LABEL_9;
      }

      v54 = v69;
      v55 = sub_1B8A24814();
      v63 = 0;
      v51 = v55;
      v52 = v60;
      (*(v68 + 8))(v27, v54);
      (*(v75 + 8))(v45, v17);
      swift_unknownObjectRelease();
      v53 = 1;
    }

    else
    {
      v81 = 3;
      sub_1B89EB6E4();
      v49 = v63;
      v50 = v64;
      sub_1B8A247A4();
      if (v49)
      {
        (*(v75 + 8))(v50, v17);
        goto LABEL_9;
      }

      v58 = sub_1B8A24814();
      v59 = v75;
      v63 = 0;
      v51 = v58;
      v52 = v61;
      (*(v70 + 8))(v26, v28);
      (*(v59 + 8))(v50, v17);
      swift_unknownObjectRelease();
      v53 = 2;
    }

    v42 = v71;
    goto LABEL_27;
  }

  if (*(v29 + 32))
  {
    v79 = 1;
    sub_1B89EB78C();
    v46 = v25;
    v47 = v63;
    v45 = v64;
    sub_1B8A247A4();
    v42 = v71;
    v48 = v75;
    if (!v47)
    {
      type metadata accessor for Sticker(0);
      sub_1B89ECA60(&qword_1EBA914E0, type metadata accessor for Sticker);
      v56 = v46;
      v57 = v66;
      sub_1B8A24854();
      (*(v67 + 8))(v56, v57);
      (*(v48 + 8))(v45, v17);
      swift_unknownObjectRelease();
      v63 = 0;
      v52 = 0;
      v53 = 0;
      v51 = v77;
      goto LABEL_27;
    }

    goto LABEL_17;
  }

  v78 = 0;
  sub_1B89EB7E0();
  v41 = v63;
  v40 = v64;
  sub_1B8A247A4();
  v42 = v71;
  v43 = v75;
  v63 = v41;
  if (v41)
  {
    (*(v75 + 8))(v40, v17);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v76);
  }

  (*(v65 + 8))(v16, v62);
  (*(v43 + 8))(v40, v17);
  swift_unknownObjectRelease();
  v51 = 0;
  v52 = 0;
  v53 = 3;
LABEL_27:
  *v42 = v51;
  *(v42 + 8) = v52;
  *(v42 + 16) = v53;
  return __swift_destroy_boxed_opaque_existential_0(v76);
}

uint64_t sub_1B89E2054()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1B8A24A14();
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      MEMORY[0x1B8CC48A0](0);
      return sub_1B8A24A34();
    }

    v4 = 3;
    goto LABEL_7;
  }

  if (v3)
  {
    v4 = 2;
LABEL_7:
    MEMORY[0x1B8CC48A0](v4);
    sub_1B8A23F94();
    return sub_1B8A24A34();
  }

  MEMORY[0x1B8CC48A0](1);
  sub_1B8A24414();
  return sub_1B8A24A34();
}

uint64_t sub_1B89E2104()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) != 2)
    {
      return MEMORY[0x1B8CC48A0](0);
    }

    v4 = 3;
  }

  else
  {
    if (!*(v0 + 16))
    {
      MEMORY[0x1B8CC48A0](1);
      return sub_1B8A24414();
    }

    v4 = 2;
  }

  MEMORY[0x1B8CC48A0](v4);

  return sub_1B8A23F94();
}

uint64_t sub_1B89E21B0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1B8A24A14();
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      MEMORY[0x1B8CC48A0](0);
      return sub_1B8A24A34();
    }

    v4 = 3;
    goto LABEL_7;
  }

  if (v3)
  {
    v4 = 2;
LABEL_7:
    MEMORY[0x1B8CC48A0](v4);
    sub_1B8A23F94();
    return sub_1B8A24A34();
  }

  MEMORY[0x1B8CC48A0](1);
  sub_1B8A24414();
  return sub_1B8A24A34();
}

uint64_t sub_1B89E22A4(uint64_t a1)
{
  v2 = sub_1B89EB888();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B89E22E0(uint64_t a1)
{
  v2 = sub_1B89EB888();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B89E231C()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x72656B63697473;
  if (*v0 != 2)
  {
    v2 = 0x6574636172616863;
  }

  if (*v0)
  {
    v1 = 0x696A6F6D65;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B89E2398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B89EC8A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B89E23C0(uint64_t a1)
{
  v2 = sub_1B89EB834();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B89E23FC(uint64_t a1)
{
  v2 = sub_1B89EB834();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B89E2438(uint64_t a1)
{
  v2 = sub_1B89EB930();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B89E2474(uint64_t a1)
{
  v2 = sub_1B89EB930();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B89E24B0(uint64_t a1)
{
  v2 = sub_1B89EB8DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B89E24EC(uint64_t a1)
{
  v2 = sub_1B89EB8DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B89E2528(uint64_t a1)
{
  v2 = sub_1B89EB984();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B89E2564(uint64_t a1)
{
  v2 = sub_1B89EB984();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageGlyphType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91CB0, &qword_1B8A27258);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91CB8, &qword_1B8A27260);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91CC0, &qword_1B8A27268);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91CC8, &qword_1B8A27270);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91CD0, &qword_1B8A27278);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B89EB834();
  sub_1B8A24A64();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_1B89EB8DC();
      v24 = v33;
      sub_1B8A24874();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_1B89EB888();
      v24 = v36;
      sub_1B8A24874();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_1B89EB930();
    v24 = v30;
    sub_1B8A24874();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_1B89EB984();
  sub_1B8A24874();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

uint64_t ImageGlyphType.hashValue.getter()
{
  v1 = *v0;
  sub_1B8A24A14();
  MEMORY[0x1B8CC48A0](v1);
  return sub_1B8A24A34();
}

uint64_t ImageGlyphType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91D00, &qword_1B8A27280);
  v47 = *(v51 - 8);
  v3 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v54 = v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91D08, &qword_1B8A27288);
  v6 = *(v5 - 8);
  v49 = v5;
  v50 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v53 = v42 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91D10, &qword_1B8A27290);
  v45 = *(v48 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v11 = v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91D18, &qword_1B8A27298);
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91D20, &qword_1B8A272A0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v42 - v19;
  v21 = a1[3];
  v22 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v21);
  sub_1B89EB834();
  v23 = v55;
  sub_1B8A24A54();
  if (!v23)
  {
    v43 = v12;
    v44 = 0;
    v24 = v53;
    v25 = v54;
    v55 = v17;
    v26 = v20;
    v27 = sub_1B8A24864();
    v28 = *(v27 + 16);
    if (!v28 || ((v29 = *(v27 + 32), v28 == 1) ? (v30 = v29 == 4) : (v30 = 1), v30))
    {
      v31 = sub_1B8A24694();
      swift_allocError();
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91CA8, &qword_1B8A27250) + 48);
      *v33 = &type metadata for ImageGlyphType;
      sub_1B8A247B4();
      sub_1B8A24684();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
      swift_willThrow();
      (*(v55 + 8))(v26, v16);
    }

    else
    {
      v42[1] = v27;
      if (v29 <= 1)
      {
        if (v29)
        {
          v58 = 1;
          sub_1B89EB930();
          v39 = v44;
          sub_1B8A247A4();
          if (!v39)
          {
            (*(v45 + 8))(v11, v48);
            goto LABEL_23;
          }
        }

        else
        {
          v57 = 0;
          sub_1B89EB984();
          v35 = v44;
          sub_1B8A247A4();
          if (!v35)
          {
            (*(v46 + 8))(v15, v43);
LABEL_23:
            (*(v55 + 8))(v20, v16);
LABEL_25:
            swift_unknownObjectRelease();
            *v52 = v29;
            return __swift_destroy_boxed_opaque_existential_0(v56);
          }
        }

        (*(v55 + 8))(v20, v16);
        goto LABEL_20;
      }

      v36 = v52;
      v37 = v55;
      if (v29 == 2)
      {
        v59 = 2;
        sub_1B89EB8DC();
        v38 = v44;
        sub_1B8A247A4();
        if (!v38)
        {
          (*(v50 + 8))(v24, v49);
          (*(v37 + 8))(v26, v16);
          swift_unknownObjectRelease();
          *v36 = 2;
          return __swift_destroy_boxed_opaque_existential_0(v56);
        }
      }

      else
      {
        v60 = 3;
        sub_1B89EB888();
        v40 = v44;
        sub_1B8A247A4();
        if (!v40)
        {
          (*(v47 + 8))(v25, v51);
          (*(v37 + 8))(v26, v16);
          goto LABEL_25;
        }
      }

      (*(v37 + 8))(v26, v16);
    }

LABEL_20:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v56);
}