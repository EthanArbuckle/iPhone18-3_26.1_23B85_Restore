void *sub_1B93BD704()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle, &qword_1EBACB1D0, &qword_1B96B9870);
  v5 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItems);

  return v0;
}

void sub_1B93BD82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v9 = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(v9)
    {
      case 1:
        sub_1B944724C();
        break;
      case 2:
        sub_1B94472E0();
        break;
      case 3:
        sub_1B9447330();
        break;
      case 4:
        sub_1B9447380();
        break;
      case 5:
        sub_1B94473D0();
        break;
      case 6:
        sub_1B9447420();
        break;
      case 7:
        sub_1B9447470();
        break;
      case 8:
        sub_1B94474C0();
        break;
      case 9:
        sub_1B93BDA5C();
        break;
      default:
        switch(v9)
        {
          case '3':
            sub_1B93BDB38();
            break;
          case '4':
            sub_1B93BDC14();
            break;
          case '5':
            sub_1B93BDCF0();
            break;
          case '6':
            sub_1B94257F4(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__maxVisibleButtonItems, MEMORY[0x1E69AAD00]);
            break;
          default:
            continue;
        }

        break;
    }
  }
}

uint64_t sub_1B93BDA5C()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93BDB38()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText();
  sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93BDC14()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText();
  sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93BDCF0()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ButtonItem(0);
  sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B93BDDFC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v38 = v35 - v7;
  v8 = type metadata accessor for Searchfoundation_RichText();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v35[1] = v35 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v39 = v35 - v16;
  v42 = type metadata accessor for Searchfoundation_Color(0);
  v17 = *(*(v42 - 1) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v37 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {
    v35[0] = a1;
    type metadata accessor for Searchfoundation_Punchout();
    sub_1B8CD3068(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);

    sub_1B964C730();
    if (v1)
    {
    }

    a1 = v35[0];
  }

  swift_beginAccess();
  v19 = *(a1 + 32);
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = *(a1 + 24) & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v21 = *(a1 + 32);

    sub_1B964C700();
    if (!v1)
    {

      goto LABEL_9;
    }
  }

LABEL_9:
  swift_beginAccess();
  v22 = *(a1 + 48);
  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = *(a1 + 40) & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    v24 = *(a1 + 48);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 56) != 1 || (result = sub_1B964C670(), !v1))
  {
    swift_beginAccess();
    if (*(a1 + 57) != 1 || (result = sub_1B964C670(), !v1))
    {
      swift_beginAccess();
      if (*(a1 + 58) != 1 || (result = sub_1B964C670(), !v1))
      {
        swift_beginAccess();
        v26 = *(a1 + 72);
        v27 = HIBYTE(v26) & 0xF;
        if ((v26 & 0x2000000000000000) == 0)
        {
          v27 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
        }

        if (!v27 || (v28 = *(a1 + 72), , sub_1B964C700(), result = , !v1))
        {
          swift_beginAccess();
          if (!*(a1 + 80) || (v29 = *(a1 + 88), v40 = *(a1 + 80), v41 = v29, sub_1B92C8A2C(), result = sub_1B964C680(), !v1))
          {
            swift_beginAccess();
            v30 = v39;
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v30, 1, v42) == 1)
            {
              v42 = v12;
              sub_1B8D9207C(v30, &qword_1EBACB050, &unk_1B96B7BD0);
            }

            else
            {
              sub_1B944B02C();
              sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
              sub_1B964C740();
              result = sub_1B944B0D4();
              if (v1)
              {
                return result;
              }

              v42 = v12;
            }

            swift_beginAccess();
            v31 = v38;
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v31, 1, v8) == 1)
            {
              sub_1B8D9207C(v31, &qword_1EBACB1D0, &qword_1B96B9870);
            }

            else
            {
              sub_1B944B02C();
              sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
              sub_1B964C740();
              result = sub_1B944B0D4();
              if (v1)
              {
                return result;
              }
            }

            swift_beginAccess();
            v32 = v36;
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v32, 1, v8) == 1)
            {
              sub_1B8D9207C(v32, &qword_1EBACB1D0, &qword_1B96B9870);
            }

            else
            {
              sub_1B944B02C();
              sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
              sub_1B964C740();
              result = sub_1B944B0D4();
              if (v1)
              {
                return result;
              }
            }

            v33 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItems;
            swift_beginAccess();
            if (!*(*(a1 + v33) + 16) || (type metadata accessor for Searchfoundation_ButtonItem(0), sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem), , sub_1B964C730(), result = , !v1))
            {
              v34 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__maxVisibleButtonItems;
              swift_beginAccess();
              result = *(a1 + v34);
              if (result)
              {
                return sub_1B964C720();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_1B93BE71C(uint64_t a1, uint64_t a2)
{
  v93 = type metadata accessor for Searchfoundation_RichText();
  v4 = *(*(v93 - 8) + 64);
  MEMORY[0x1EEE9AC00](v93);
  v88 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB230, &unk_1B96B8870);
  v6 = *(*(v94 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v94);
  v89 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v96 = &v87 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v87 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v92 = &v87 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v90 = &v87 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v95 = &v87 - v18;
  v19 = type metadata accessor for Searchfoundation_Color(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v91 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v97 = &v87 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v29 = &v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v87 - v30;
  swift_beginAccess();
  v32 = *(a1 + 16);
  swift_beginAccess();
  v33 = *(a2 + 16);

  sub_1B8D67B1C();
  v35 = v34;

  if ((v35 & 1) == 0)
  {
    goto LABEL_45;
  }

  swift_beginAccess();
  v36 = *(a1 + 24);
  v37 = *(a1 + 32);
  swift_beginAccess();
  v38 = v36 == *(a2 + 24) && v37 == *(a2 + 32);
  if (!v38 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_45;
  }

  swift_beginAccess();
  v39 = *(a1 + 40);
  v40 = *(a1 + 48);
  swift_beginAccess();
  v41 = v39 == *(a2 + 40) && v40 == *(a2 + 48);
  if (!v41 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_45;
  }

  swift_beginAccess();
  v42 = *(a1 + 56);
  swift_beginAccess();
  if (v42 != *(a2 + 56))
  {
    goto LABEL_45;
  }

  swift_beginAccess();
  v43 = *(a1 + 57);
  swift_beginAccess();
  if (v43 != *(a2 + 57))
  {
    goto LABEL_45;
  }

  swift_beginAccess();
  v44 = *(a1 + 58);
  swift_beginAccess();
  if (v44 != *(a2 + 58))
  {
    goto LABEL_45;
  }

  swift_beginAccess();
  v45 = *(a1 + 64);
  v46 = *(a1 + 72);
  swift_beginAccess();
  v47 = v45 == *(a2 + 64) && v46 == *(a2 + 72);
  if (!v47 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_45;
  }

  swift_beginAccess();
  v48 = *(a1 + 80);
  v49 = *(a1 + 88);
  swift_beginAccess();
  v50 = *(a2 + 88);
  if (!sub_1B8D92198(v48, v49, *(a2 + 80)))
  {
    goto LABEL_45;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v51 = *(v22 + 48);
  v52 = v97;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v52, 1, v19) == 1)
  {
    sub_1B8D9207C(v31, &qword_1EBACB050, &unk_1B96B7BD0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v52 + v51, 1, v19);
    v54 = v96;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v52, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v52 + v51, 1, v19) == 1)
  {
    sub_1B8D9207C(v31, &qword_1EBACB050, &unk_1B96B7BD0);
    sub_1B944B0D4();
LABEL_26:
    v55 = &qword_1EBACB058;
    v56 = &unk_1B96CA9D0;
    v57 = v52;
LABEL_44:
    sub_1B8D9207C(v57, v55, v56);
    goto LABEL_45;
  }

  v58 = v91;
  sub_1B944B02C();
  v59 = *(v19 + 20);
  if (*&v29[v59] != *&v58[v59])
  {
    v60 = *&v29[v59];

    sub_1B947FDE4();
    v62 = v61;

    if ((v62 & 1) == 0)
    {
      sub_1B944B0D4();
      sub_1B8D9207C(v31, &qword_1EBACB050, &unk_1B96B7BD0);
      sub_1B944B0D4();
      v57 = v52;
      v55 = &qword_1EBACB050;
      v56 = &unk_1B96B7BD0;
      goto LABEL_44;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v63 = sub_1B964C850();
  sub_1B944B0D4();
  sub_1B8D9207C(v31, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B944B0D4();
  sub_1B8D9207C(v52, &qword_1EBACB050, &unk_1B96B7BD0);
  v54 = v96;
  if ((v63 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_30:
  swift_beginAccess();
  v64 = v95;
  sub_1B8D92024();
  swift_beginAccess();
  v65 = *(v94 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  v66 = v93;
  if (__swift_getEnumTagSinglePayload(v54, 1, v93) == 1)
  {
    sub_1B8D9207C(v64, &qword_1EBACB1D0, &qword_1B96B9870);
    v67 = __swift_getEnumTagSinglePayload(v54 + v65, 1, v66);
    v68 = v92;
    if (v67 != 1)
    {
LABEL_43:
      v55 = &qword_1EBACB230;
      v56 = &unk_1B96B8870;
      v57 = v54;
      goto LABEL_44;
    }

    sub_1B8D9207C(v54, &qword_1EBACB1D0, &qword_1B96B9870);
  }

  else
  {
    v69 = v90;
    sub_1B8D92024();
    v70 = __swift_getEnumTagSinglePayload(v54 + v65, 1, v66);
    v68 = v92;
    if (v70 == 1)
    {
      sub_1B8D9207C(v95, &qword_1EBACB1D0, &qword_1B96B9870);
LABEL_42:
      sub_1B944B0D4();
      goto LABEL_43;
    }

    v71 = v88;
    sub_1B944B02C();
    LODWORD(v97) = static Searchfoundation_RichText.== infix(_:_:)(v69, v71);
    sub_1B944B0D4();
    sub_1B8D9207C(v95, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B944B0D4();
    sub_1B8D9207C(v54, &qword_1EBACB1D0, &qword_1B96B9870);
    if ((v97 & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v72 = *(v94 + 48);
  v54 = v89;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v54, 1, v66) != 1)
  {
    v73 = v87;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v54 + v72, 1, v66) != 1)
    {
      v75 = v88;
      sub_1B944B02C();
      v76 = static Searchfoundation_RichText.== infix(_:_:)(v73, v75);
      sub_1B944B0D4();
      sub_1B8D9207C(v68, &qword_1EBACB1D0, &qword_1B96B9870);
      sub_1B944B0D4();
      sub_1B8D9207C(v54, &qword_1EBACB1D0, &qword_1B96B9870);
      if ((v76 & 1) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_48;
    }

    sub_1B8D9207C(v68, &qword_1EBACB1D0, &qword_1B96B9870);
    goto LABEL_42;
  }

  sub_1B8D9207C(v68, &qword_1EBACB1D0, &qword_1B96B9870);
  if (__swift_getEnumTagSinglePayload(v54 + v72, 1, v66) != 1)
  {
    goto LABEL_43;
  }

  sub_1B8D9207C(v54, &qword_1EBACB1D0, &qword_1B96B9870);
LABEL_48:
  v77 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItems;
  swift_beginAccess();
  v78 = *(a1 + v77);
  v79 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItems;
  swift_beginAccess();
  v80 = *(a2 + v79);

  sub_1B8D6B7F8();
  v82 = v81;

  if (v82)
  {
    v83 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__maxVisibleButtonItems;
    swift_beginAccess();
    v84 = *(a1 + v83);

    v85 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_HeroTitleCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__maxVisibleButtonItems;
    swift_beginAccess();
    v86 = *(a2 + v85);

    return v84 == v86;
  }

LABEL_45:

  return 0;
}

uint64_t sub_1B93BF4E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDE88, type metadata accessor for Searchfoundation_HeroTitleCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B93BF568(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD098, type metadata accessor for Searchfoundation_HeroTitleCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B93BF5D8()
{
  sub_1B8CD3068(&qword_1EBACD098, type metadata accessor for Searchfoundation_HeroTitleCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B93BF670()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACB688);
  __swift_project_value_buffer(v0, qword_1EBACB688);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "values";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "initiallyVisibleValues";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "showMoreString";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

void Searchfoundation_InfoTuple.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B941F188();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C540();
        break;
      default:
        continue;
    }
  }
}

void Searchfoundation_InfoTuple.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_107_5(), sub_1B964C700(), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (type metadata accessor for Searchfoundation_CommandButtonItem(0), OUTLINED_FUNCTION_997(), sub_1B8CD3068(v3, v4), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_175_1(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v0))
    {
      if (!*(v1 + 24) || (OUTLINED_FUNCTION_29(), sub_1B964C710(), !v0))
      {
        v5 = *(v1 + 32);
        v6 = *(v1 + 40);
        OUTLINED_FUNCTION_1();
        if (!v7 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
        {
          v8 = *(type metadata accessor for Searchfoundation_InfoTuple(0) + 32);
          OUTLINED_FUNCTION_163_6();
          sub_1B964C290();
        }
      }
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t static Searchfoundation_InfoTuple.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v3 + 16);
  v8 = *(v2 + 16);
  sub_1B8D7BB24();
  if ((v9 & 1) == 0 || *(v3 + 24) != *(v2 + 24))
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v12 = v6 && v10 == v11;
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v13 = type metadata accessor for Searchfoundation_InfoTuple(0);
  OUTLINED_FUNCTION_764(v13);
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v14, v15);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B93BFC18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDE80, type metadata accessor for Searchfoundation_InfoTuple);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B93BFC98(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACC7A0, type metadata accessor for Searchfoundation_InfoTuple);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B93BFD08()
{
  sub_1B8CD3068(&qword_1EBACC7A0, type metadata accessor for Searchfoundation_InfoTuple);

  return sub_1B964C5D0();
}

uint64_t sub_1B93BFD94()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACB6A0);
  __swift_project_value_buffer(v0, qword_1EBACB6A0);
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
  *v24 = "infoTuples";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "initiallyVisibleTuples";
  *(v26 + 1) = 22;
  v26[16] = 2;
  v7();
  return sub_1B964C760();
}

void Searchfoundation_InfoCardSection.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_187_4();
        OUTLINED_FUNCTION_9();
        sub_1B944A84C();
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
        sub_1B8D22150();
        break;
      case 9:
        OUTLINED_FUNCTION_9();
        sub_1B93CC664();
        break;
      default:
        if (v1 == 51)
        {
          OUTLINED_FUNCTION_9();
          sub_1B93C4AC4();
        }

        else if (v1 == 52)
        {
          OUTLINED_FUNCTION_12();
          sub_1B964C560();
        }

        break;
    }
  }
}

void Searchfoundation_InfoCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_151();
  v9 = type metadata accessor for Searchfoundation_Color(v8);
  v10 = OUTLINED_FUNCTION_46(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_175_3();
  OUTLINED_FUNCTION_835();
  if (v13)
  {
    OUTLINED_FUNCTION_868_0();
    OUTLINED_FUNCTION_14_24();
    OUTLINED_FUNCTION_71_9();
    sub_1B8CD3068(v14, v15);
    OUTLINED_FUNCTION_200_6();
    OUTLINED_FUNCTION_5_34();
    sub_1B964C730();
    if (v1)
    {
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_834_0();
  }

  else
  {
    v1 = v0;
  }

  v16 = *(v2 + 8);
  v17 = *(v2 + 16);
  OUTLINED_FUNCTION_1();
  if (!v18 || (OUTLINED_FUNCTION_860(), OUTLINED_FUNCTION_127_2(), sub_1B964C700(), !v1))
  {
    v19 = *(v2 + 24);
    v20 = *(v2 + 32);
    OUTLINED_FUNCTION_1();
    if (!v21 || (OUTLINED_FUNCTION_877(), OUTLINED_FUNCTION_127_2(), sub_1B964C700(), !v1))
    {
      OUTLINED_FUNCTION_1212();
      if (!v22 || (OUTLINED_FUNCTION_1069(), OUTLINED_FUNCTION_454_1(), sub_1B964C670(), !v1))
      {
        OUTLINED_FUNCTION_1209();
        if (!v22 || (OUTLINED_FUNCTION_454_1(), sub_1B964C670(), !v1))
        {
          OUTLINED_FUNCTION_1261();
          if (!v22 || (OUTLINED_FUNCTION_454_1(), sub_1B964C670(), !v1))
          {
            v23 = *(v2 + 48);
            v24 = *(v2 + 56);
            OUTLINED_FUNCTION_1();
            if (!v25 || (OUTLINED_FUNCTION_1171(), OUTLINED_FUNCTION_127_2(), sub_1B964C700(), !v1))
            {
              v26 = v1;
              v27 = *(v2 + 64);
              if (v27)
              {
                v28 = *(v2 + 72);
                OUTLINED_FUNCTION_540_0(v27);
                sub_1B92C8A2C();
                OUTLINED_FUNCTION_687();
                sub_1B964C680();
                if (v1)
                {
                  goto LABEL_32;
                }

                v26 = 0;
              }

              v32 = type metadata accessor for Searchfoundation_InfoCardSection(0);
              OUTLINED_FUNCTION_285_1(*(v32 + 60));
              sub_1B8D92024();
              OUTLINED_FUNCTION_243_1();
              if (v22)
              {
                sub_1B8D9207C(v3, &qword_1EBACB050, &unk_1B96B7BD0);
                v1 = v26;
              }

              else
              {
                OUTLINED_FUNCTION_5_36();
                OUTLINED_FUNCTION_1277();
                OUTLINED_FUNCTION_70_10();
                sub_1B8CD3068(v29, v30);
                OUTLINED_FUNCTION_597_0();
                OUTLINED_FUNCTION_687();
                sub_1B964C740();
                OUTLINED_FUNCTION_32_19();
                sub_1B944B0D4();
                if (v1)
                {
                  goto LABEL_32;
                }
              }

              if (!*(*(v2 + 80) + 16) || (type metadata accessor for Searchfoundation_InfoTuple(0), sub_1B8CD3068(&qword_1EBACC7A0, type metadata accessor for Searchfoundation_InfoTuple), OUTLINED_FUNCTION_694_1(), OUTLINED_FUNCTION_39_4(), OUTLINED_FUNCTION_1332(), !v1))
              {
                if (!*(v2 + 88) || (OUTLINED_FUNCTION_454_1(), sub_1B964C720(), !v1))
                {
                  v31 = *(v32 + 56);
                  OUTLINED_FUNCTION_163_6();
                  sub_1B964C290();
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_32:
  OUTLINED_FUNCTION_272_0();
}

void sub_1B93C0690()
{
  OUTLINED_FUNCTION_284();
  v7 = v6;
  v9 = v8;
  v10 = OUTLINED_FUNCTION_112();
  v11 = type metadata accessor for Searchfoundation_Color(v10);
  v12 = OUTLINED_FUNCTION_171_4(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_173();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  OUTLINED_FUNCTION_46(v22);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_1329();
  if ((v26 & 1) == 0)
  {
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_892();
  v29 = v29 && v27 == v28;
  if (!v29 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_822_0();
  v32 = v29 && v30 == v31;
  if (!v32 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_891();
  if (!v29)
  {
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_824_0();
  if (!v29)
  {
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_890();
  if (!v29)
  {
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_823_0();
  v35 = v29 && v33 == v34;
  if (!v35 && (sub_1B964C9F0() & 1) == 0 || !OUTLINED_FUNCTION_889())
  {
    goto LABEL_40;
  }

  v52 = v9(0);
  v36 = *(v52 + 60);
  v37 = *(v5 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v3);
  if (!v29)
  {
    OUTLINED_FUNCTION_467();
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v3 + v37);
    if (!v38)
    {
      sub_1B944B02C();
      v41 = *(v1 + 20);
      if (*(v4 + v41) == *(v17 + v41))
      {
        goto LABEL_36;
      }

      v42 = *(v4 + v41);

      OUTLINED_FUNCTION_542();
      sub_1B947FDE4();
      v44 = v43;

      if (v44)
      {
LABEL_36:
        v45 = sub_1B964C2B0();
        OUTLINED_FUNCTION_0_84();
        sub_1B8CD3068(v46, v47);
        OUTLINED_FUNCTION_272_2();
        OUTLINED_FUNCTION_396_0();
        sub_1B964C850();
        OUTLINED_FUNCTION_78_7();
        sub_1B944B0D4();
        sub_1B944B0D4();
        sub_1B8D9207C(v3, &qword_1EBACB050, &unk_1B96B7BD0);
        if (v45)
        {
          goto LABEL_37;
        }

LABEL_40:
        v51 = 0;
        goto LABEL_41;
      }

      sub_1B944B0D4();
      OUTLINED_FUNCTION_197();
      sub_1B944B0D4();
      v39 = &qword_1EBACB050;
      v40 = &unk_1B96B7BD0;
LABEL_33:
      sub_1B8D9207C(v3, v39, v40);
      goto LABEL_40;
    }

    sub_1B944B0D4();
LABEL_32:
    v39 = &qword_1EBACB058;
    v40 = &unk_1B96CA9D0;
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_37_0(v3 + v37);
  if (!v29)
  {
    goto LABEL_32;
  }

  sub_1B8D9207C(v3, &qword_1EBACB050, &unk_1B96B7BD0);
LABEL_37:
  if ((v7(*(v2 + 80), *(v0 + 80)) & 1) == 0 || *(v2 + 88) != *(v0 + 88))
  {
    goto LABEL_40;
  }

  v48 = *(v52 + 56);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v49, v50);
  v51 = OUTLINED_FUNCTION_199_0();
LABEL_41:
  OUTLINED_FUNCTION_264(v51);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B93C0AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDE78, type metadata accessor for Searchfoundation_InfoCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B93C0B70(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD0C0, type metadata accessor for Searchfoundation_InfoCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B93C0BE0()
{
  sub_1B8CD3068(&qword_1EBACD0C0, type metadata accessor for Searchfoundation_InfoCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B93C0C6C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4748);
  __swift_project_value_buffer(v0, qword_1EBAB4748);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1B9656D00;
  v4 = v35 + v3;
  v5 = v35 + v3 + v1[14];
  *(v35 + v3) = 1;
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
  *v24 = 51;
  *v25 = "cardSections";
  *(v25 + 1) = 12;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 52;
  *v27 = "title";
  *(v27 + 1) = 5;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 53;
  *v29 = "buttonItem";
  *(v29 + 1) = 10;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 54;
  *v31 = "collectionStyle";
  *(v31 + 1) = 15;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 55;
  *v33 = "titleButtonItem";
  *(v33 + 1) = 15;
  v33[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B93C1174()
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
  v2 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v3 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__cardSections) = v1;
  v4 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title;
  v5 = type metadata accessor for Searchfoundation_RichText();
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItem;
  v7 = type metadata accessor for Searchfoundation_CommandButtonItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__collectionStyle;
  v9 = type metadata accessor for Searchfoundation_CollectionStyle(0);
  __swift_storeEnumTagSinglePayload(v0 + v8, 1, 1, v9);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleButtonItem, 1, 1, v7);
  return v0;
}

uint64_t sub_1B93C1288(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC568, &qword_1B96B9898);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v53 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC3D48, &qword_1B9689670);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v52 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v50 = &v41 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v46 = &v41 - v14;
  v15 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 56) = 0;
  *(v1 + 58) = 0;
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  v42 = (v1 + 64);
  v43 = (v1 + 80);
  *(v1 + 88) = 1;
  v16 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v44 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v17 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v1 + v16, 1, 1, v17);
  v45 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__cardSections;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__cardSections) = v15;
  v18 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title;
  v47 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title;
  v19 = type metadata accessor for Searchfoundation_RichText();
  __swift_storeEnumTagSinglePayload(v1 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItem;
  v48 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItem;
  v21 = type metadata accessor for Searchfoundation_CommandButtonItem(0);
  __swift_storeEnumTagSinglePayload(v1 + v20, 1, 1, v21);
  v22 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__collectionStyle;
  v49 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__collectionStyle;
  v23 = type metadata accessor for Searchfoundation_CollectionStyle(0);
  __swift_storeEnumTagSinglePayload(v1 + v22, 1, 1, v23);
  v51 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleButtonItem;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleButtonItem, 1, 1, v21);
  swift_beginAccess();
  v24 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v24;
  swift_beginAccess();
  v26 = *(a1 + 24);
  v25 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v26;
  *(v1 + 32) = v25;

  swift_beginAccess();
  v28 = *(a1 + 40);
  v27 = *(a1 + 48);
  swift_beginAccess();
  v29 = *(v1 + 48);
  *(v1 + 40) = v28;
  *(v1 + 48) = v27;

  swift_beginAccess();
  LOBYTE(v27) = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v27;
  swift_beginAccess();
  LOBYTE(v27) = *(a1 + 57);
  swift_beginAccess();
  *(v1 + 57) = v27;
  swift_beginAccess();
  LOBYTE(v27) = *(a1 + 58);
  swift_beginAccess();
  *(v1 + 58) = v27;
  swift_beginAccess();
  v31 = *(a1 + 64);
  v30 = *(a1 + 72);
  v32 = v42;
  swift_beginAccess();
  v33 = *(v1 + 72);
  *v32 = v31;
  *(v1 + 72) = v30;

  swift_beginAccess();
  v34 = *(a1 + 80);
  LOBYTE(v33) = *(a1 + 88);
  v35 = v43;
  swift_beginAccess();
  *v35 = v34;
  *(v1 + 88) = v33;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v36 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__cardSections;
  swift_beginAccess();
  v37 = *(a1 + v36);
  v38 = v45;
  swift_beginAccess();
  v39 = *(v1 + v38);
  *(v1 + v38) = v37;

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

void *sub_1B93C19B8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor, &qword_1EBACB050, &unk_1B96B7BD0);
  v5 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__cardSections);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonItem, &unk_1EBAC3D48, &qword_1B9689670);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__collectionStyle, &qword_1EBACC568, &qword_1B96B9898);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__titleButtonItem, &unk_1EBAC3D48, &qword_1B9689670);
  return v0;
}

void sub_1B93C1B20()
{
  while (1)
  {
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        sub_1B944724C();
        break;
      case 2:
        sub_1B94472E0();
        break;
      case 3:
        sub_1B9447330();
        break;
      case 4:
        sub_1B9447380();
        break;
      case 5:
        sub_1B94473D0();
        break;
      case 6:
        sub_1B9447420();
        break;
      case 7:
        sub_1B9447470();
        break;
      case 8:
        sub_1B94474C0();
        break;
      case 9:
        sub_1B93C1D44();
        break;
      default:
        switch(v1)
        {
          case '3':
            sub_1B93C1E20();
            break;
          case '4':
            sub_1B93C1EFC();
            break;
          case '5':
            sub_1B93C1FD8();
            break;
          case '6':
            sub_1B93C20B4();
            break;
          case '7':
            sub_1B93C2190();
            break;
          default:
            continue;
        }

        break;
    }
  }
}

uint64_t sub_1B93C1D44()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93C1E20()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_CardSection(0);
  sub_1B8CD3068(&qword_1ED9D2F68, type metadata accessor for Searchfoundation_CardSection);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B93C1EFC()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText();
  sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93C1FD8()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_CommandButtonItem(0);
  sub_1B8CD3068(&qword_1EBAB4E28, type metadata accessor for Searchfoundation_CommandButtonItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93C20B4()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_CollectionStyle(0);
  sub_1B8CD3068(&qword_1ED9CBF48, type metadata accessor for Searchfoundation_CollectionStyle);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93C2190()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_CommandButtonItem(0);
  sub_1B8CD3068(&qword_1EBAB4E28, type metadata accessor for Searchfoundation_CommandButtonItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93C229C(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC568, &qword_1B96B9898);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v50 - v8;
  v55 = type metadata accessor for Searchfoundation_CollectionStyle(0);
  v9 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC3D48, &qword_1B9689670);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v53 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v57 = &v50 - v15;
  v16 = type metadata accessor for Searchfoundation_CommandButtonItem(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v54 = &v50 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v58 = &v50 - v24;
  v59 = type metadata accessor for Searchfoundation_RichText();
  v25 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v56 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v62 = &v50 - v29;
  v65 = type metadata accessor for Searchfoundation_Color(0);
  v30 = *(*(v65 - 1) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v61 = &v50 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {
    v51 = a1;
    type metadata accessor for Searchfoundation_Punchout();
    sub_1B8CD3068(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);

    sub_1B964C730();
    if (v3)
    {
    }

    a1 = v51;
  }

  swift_beginAccess();
  v32 = *(a1 + 32);
  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = *(a1 + 24) & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {
    goto LABEL_9;
  }

  v34 = *(a1 + 32);

  sub_1B964C700();
  if (v3)
  {
  }

LABEL_9:
  swift_beginAccess();
  v35 = *(a1 + 48);
  v36 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = *(a1 + 40) & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {
    v37 = *(a1 + 48);

    sub_1B964C700();
    if (v3)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 56) != 1 || (result = sub_1B964C670(), !v3))
  {
    swift_beginAccess();
    if (*(a1 + 57) != 1 || (result = sub_1B964C670(), !v3))
    {
      swift_beginAccess();
      if (*(a1 + 58) != 1 || (result = sub_1B964C670(), !v3))
      {
        swift_beginAccess();
        v39 = *(a1 + 72);
        v40 = HIBYTE(v39) & 0xF;
        if ((v39 & 0x2000000000000000) == 0)
        {
          v40 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
        }

        if (v40)
        {
          v41 = *(a1 + 72);

          sub_1B964C700();
          if (v3)
          {
          }
        }

        swift_beginAccess();
        if (!*(a1 + 80) || (v42 = *(a1 + 88), v63 = *(a1 + 80), v64 = v42, sub_1B92C8A2C(), result = sub_1B964C680(), !v3))
        {
          swift_beginAccess();
          v43 = v62;
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v43, 1, v65) == 1)
          {
            v65 = v20;
            v44 = a3;
            sub_1B8D9207C(v43, &qword_1EBACB050, &unk_1B96B7BD0);
          }

          else
          {
            sub_1B944B02C();
            sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
            sub_1B964C740();
            result = sub_1B944B0D4();
            if (v3)
            {
              return result;
            }

            v65 = v20;
            v44 = a3;
          }

          v45 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__cardSections;
          swift_beginAccess();
          if (!*(*(a1 + v45) + 16) || (type metadata accessor for Searchfoundation_CardSection(0), sub_1B8CD3068(&qword_1ED9D2F68, type metadata accessor for Searchfoundation_CardSection), , sub_1B964C730(), result = , !v3))
          {
            swift_beginAccess();
            v46 = v58;
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v46, 1, v59) == 1)
            {
              sub_1B8D9207C(v46, &qword_1EBACB1D0, &qword_1B96B9870);
              v47 = v60;
            }

            else
            {
              sub_1B944B02C();
              sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
              sub_1B964C740();
              result = sub_1B944B0D4();
              v47 = v60;
              if (v3)
              {
                return result;
              }
            }

            swift_beginAccess();
            v48 = v57;
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v48, 1, v16) == 1)
            {
              v62 = v44;
              sub_1B8D9207C(v48, &unk_1EBAC3D48, &qword_1B9689670);
            }

            else
            {
              sub_1B944B02C();
              sub_1B8CD3068(&qword_1EBAB4E28, type metadata accessor for Searchfoundation_CommandButtonItem);
              sub_1B964C740();
              result = sub_1B944B0D4();
              if (v3)
              {
                return result;
              }

              v62 = v44;
            }

            swift_beginAccess();
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v47, 1, v55) == 1)
            {
              sub_1B8D9207C(v47, &qword_1EBACC568, &qword_1B96B9898);
            }

            else
            {
              sub_1B944B02C();
              sub_1B8CD3068(&qword_1ED9CBF48, type metadata accessor for Searchfoundation_CollectionStyle);
              sub_1B964C740();
              result = sub_1B944B0D4();
              if (v3)
              {
                return result;
              }
            }

            swift_beginAccess();
            v49 = v53;
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v49, 1, v16) == 1)
            {
              return sub_1B8D9207C(v49, &unk_1EBAC3D48, &qword_1B9689670);
            }

            else
            {
              sub_1B944B02C();
              sub_1B8CD3068(&qword_1EBAB4E28, type metadata accessor for Searchfoundation_CommandButtonItem);
              sub_1B964C740();
              return sub_1B944B0D4();
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_1B93C2F18(uint64_t a1, uint64_t a2)
{
  v117 = type metadata accessor for Searchfoundation_CollectionStyle(0);
  v4 = *(*(v117 - 8) + 64);
  MEMORY[0x1EEE9AC00](v117);
  v111[0] = v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE1D0, &qword_1B96CA380);
  v6 = *(*(v115 - 8) + 64);
  MEMORY[0x1EEE9AC00](v115);
  v118 = v111 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC568, &qword_1B96B9898);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v111[2] = v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v116 = v111 - v12;
  v123 = type metadata accessor for Searchfoundation_CommandButtonItem(0);
  v13 = *(*(v123 - 8) + 64);
  MEMORY[0x1EEE9AC00](v123);
  v114 = v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3E68, &qword_1B968A570);
  v15 = *(*(v122 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v122);
  v112 = v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v121 = v111 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC3D48, &qword_1B9689670);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v111[1] = v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v113 = v111 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v119 = v111 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v130 = v111 - v27;
  v127 = type metadata accessor for Searchfoundation_RichText();
  v28 = *(*(v127 - 8) + 64);
  MEMORY[0x1EEE9AC00](v127);
  v120 = v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB230, &unk_1B96B8870);
  v30 = *(*(v125 - 8) + 64);
  MEMORY[0x1EEE9AC00](v125);
  v128 = v111 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8);
  v124 = v111 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v126 = v111 - v36;
  v37 = type metadata accessor for Searchfoundation_Color(0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v129 = v111 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v131 = v111 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x1EEE9AC00](v43 - 8);
  v47 = v111 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v49 = v111 - v48;
  swift_beginAccess();
  v50 = *(a1 + 16);
  swift_beginAccess();
  v51 = *(a2 + 16);

  sub_1B8D67B1C();
  v53 = v52;

  if ((v53 & 1) == 0)
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v54 = *(a1 + 24);
  v55 = *(a1 + 32);
  swift_beginAccess();
  v56 = v54 == *(a2 + 24) && v55 == *(a2 + 32);
  if (!v56 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v57 = *(a1 + 40);
  v58 = *(a1 + 48);
  swift_beginAccess();
  v59 = v57 == *(a2 + 40) && v58 == *(a2 + 48);
  if (!v59 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v60 = *(a1 + 56);
  swift_beginAccess();
  if (v60 != *(a2 + 56))
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v61 = *(a1 + 57);
  swift_beginAccess();
  if (v61 != *(a2 + 57))
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v62 = *(a1 + 58);
  swift_beginAccess();
  if (v62 != *(a2 + 58))
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v63 = *(a1 + 64);
  v64 = *(a1 + 72);
  swift_beginAccess();
  v65 = v63 == *(a2 + 64) && v64 == *(a2 + 72);
  if (!v65 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v66 = *(a1 + 80);
  v67 = *(a1 + 88);
  swift_beginAccess();
  v68 = *(a2 + 88);
  if (!sub_1B8D92198(v66, v67, *(a2 + 80)))
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v69 = *(v40 + 48);
  v70 = v131;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v70, 1, v37) == 1)
  {
    sub_1B8D9207C(v49, &qword_1EBACB050, &unk_1B96B7BD0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v70 + v69, 1, v37);
    v72 = v130;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v70, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_35;
    }

LABEL_26:
    v73 = &qword_1EBACB058;
    v74 = &unk_1B96CA9D0;
LABEL_27:
    v75 = v70;
LABEL_28:
    sub_1B8D9207C(v75, v73, v74);
    goto LABEL_29;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v70 + v69, 1, v37) == 1)
  {
    sub_1B8D9207C(v49, &qword_1EBACB050, &unk_1B96B7BD0);
    sub_1B944B0D4();
    goto LABEL_26;
  }

  v77 = v129;
  sub_1B944B02C();
  v78 = *(v37 + 20);
  if (*&v47[v78] != *&v77[v78])
  {
    v79 = *&v47[v78];

    sub_1B947FDE4();
    v81 = v80;

    if ((v81 & 1) == 0)
    {
      sub_1B944B0D4();
      sub_1B8D9207C(v49, &qword_1EBACB050, &unk_1B96B7BD0);
      sub_1B944B0D4();
      v75 = v70;
      v73 = &qword_1EBACB050;
      v74 = &unk_1B96B7BD0;
      goto LABEL_28;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v82 = sub_1B964C850();
  sub_1B944B0D4();
  sub_1B8D9207C(v49, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B944B0D4();
  sub_1B8D9207C(v70, &qword_1EBACB050, &unk_1B96B7BD0);
  v72 = v130;
  if ((v82 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_35:
  v83 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__cardSections;
  swift_beginAccess();
  v84 = *(a1 + v83);
  v85 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CollectionCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__cardSections;
  swift_beginAccess();
  v86 = *(a2 + v85);

  v87 = sub_1B8D684DC(v84, v86);

  if ((v87 & 1) == 0)
  {
    goto LABEL_29;
  }

  swift_beginAccess();
  v88 = v126;
  sub_1B8D92024();
  swift_beginAccess();
  v89 = *(v125 + 48);
  v70 = v128;
  sub_1B8D92024();
  sub_1B8D92024();
  v90 = v127;
  if (__swift_getEnumTagSinglePayload(v70, 1, v127) == 1)
  {
    sub_1B8D9207C(v88, &qword_1EBACB1D0, &qword_1B96B9870);
    if (__swift_getEnumTagSinglePayload(v70 + v89, 1, v90) == 1)
    {
      sub_1B8D9207C(v70, &qword_1EBACB1D0, &qword_1B96B9870);
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  v91 = v124;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v70 + v89, 1, v90) == 1)
  {
    sub_1B8D9207C(v88, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B944B0D4();
LABEL_41:
    v73 = &qword_1EBACB230;
    v74 = &unk_1B96B8870;
    goto LABEL_27;
  }

  v92 = v120;
  sub_1B944B02C();
  v93 = static Searchfoundation_RichText.== infix(_:_:)(v91, v92);
  sub_1B944B0D4();
  sub_1B8D9207C(v88, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B944B0D4();
  sub_1B8D9207C(v70, &qword_1EBACB1D0, &qword_1B96B9870);
  if ((v93 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_44:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v94 = *(v122 + 48);
  v95 = v72;
  v96 = v121;
  sub_1B8D92024();
  sub_1B8D92024();
  v97 = v123;
  if (__swift_getEnumTagSinglePayload(v96, 1, v123) == 1)
  {
    sub_1B8D9207C(v95, &unk_1EBAC3D48, &qword_1B9689670);
    if (__swift_getEnumTagSinglePayload(v96 + v94, 1, v97) == 1)
    {
      sub_1B8D9207C(v96, &unk_1EBAC3D48, &qword_1B9689670);
      goto LABEL_51;
    }

LABEL_49:
    v73 = &qword_1EBAC3E68;
    v74 = &qword_1B968A570;
LABEL_57:
    v75 = v96;
    goto LABEL_28;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v96 + v94, 1, v97) == 1)
  {
    sub_1B8D9207C(v130, &unk_1EBAC3D48, &qword_1B9689670);
    sub_1B944B0D4();
    goto LABEL_49;
  }

  sub_1B944B02C();
  static Searchfoundation_CommandButtonItem.== infix(_:_:)();
  v99 = v98;
  sub_1B944B0D4();
  sub_1B8D9207C(v130, &unk_1EBAC3D48, &qword_1B9689670);
  sub_1B944B0D4();
  sub_1B8D9207C(v96, &unk_1EBAC3D48, &qword_1B9689670);
  if ((v99 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_51:
  swift_beginAccess();
  v100 = v116;
  sub_1B8D92024();
  swift_beginAccess();
  v101 = *(v115 + 48);
  v96 = v118;
  sub_1B8D92024();
  sub_1B8D92024();
  v102 = v117;
  if (__swift_getEnumTagSinglePayload(v96, 1, v117) != 1)
  {
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v96 + v101, 1, v102) != 1)
    {
      sub_1B944B02C();
      static Searchfoundation_CollectionStyle.== infix(_:_:)();
      v104 = v103;
      sub_1B944B0D4();
      sub_1B8D9207C(v100, &qword_1EBACC568, &qword_1B96B9898);
      sub_1B944B0D4();
      sub_1B8D9207C(v96, &qword_1EBACC568, &qword_1B96B9898);
      if (v104)
      {
        goto LABEL_59;
      }

LABEL_29:

      return 0;
    }

    sub_1B8D9207C(v100, &qword_1EBACC568, &qword_1B96B9898);
    sub_1B944B0D4();
    goto LABEL_56;
  }

  sub_1B8D9207C(v100, &qword_1EBACC568, &qword_1B96B9898);
  if (__swift_getEnumTagSinglePayload(v96 + v101, 1, v102) != 1)
  {
LABEL_56:
    v73 = &qword_1EBACE1D0;
    v74 = &qword_1B96CA380;
    goto LABEL_57;
  }

  sub_1B8D9207C(v96, &qword_1EBACC568, &qword_1B96B9898);
LABEL_59:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v105 = *(v122 + 48);
  v106 = v112;
  sub_1B8D92024();
  sub_1B8D92024();
  v107 = v123;
  if (__swift_getEnumTagSinglePayload(v106, 1, v123) == 1)
  {

    sub_1B8D9207C(v113, &unk_1EBAC3D48, &qword_1B9689670);
    if (__swift_getEnumTagSinglePayload(v106 + v105, 1, v107) == 1)
    {
      sub_1B8D9207C(v106, &unk_1EBAC3D48, &qword_1B9689670);
      return 1;
    }

    goto LABEL_64;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v106 + v105, 1, v107) == 1)
  {

    sub_1B8D9207C(v113, &unk_1EBAC3D48, &qword_1B9689670);
    sub_1B944B0D4();
    v106 = v112;
LABEL_64:
    sub_1B8D9207C(v106, &qword_1EBAC3E68, &qword_1B968A570);
    return 0;
  }

  v108 = v112;
  sub_1B944B02C();
  static Searchfoundation_CommandButtonItem.== infix(_:_:)();
  v110 = v109;

  sub_1B944B0D4();
  sub_1B8D9207C(v113, &unk_1EBAC3D48, &qword_1B9689670);
  sub_1B944B0D4();
  sub_1B8D9207C(v108, &unk_1EBAC3D48, &qword_1B9689670);
  return (v110 & 1) != 0;
}

uint64_t sub_1B93C4340(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDE70, type metadata accessor for Searchfoundation_CollectionCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B93C43C0(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1ED9CA440, type metadata accessor for Searchfoundation_CollectionCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B93C4430()
{
  sub_1B8CD3068(&qword_1ED9CA440, type metadata accessor for Searchfoundation_CollectionCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B93C44BC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACB6B8);
  __swift_project_value_buffer(v0, qword_1EBACB6B8);
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
  *v24 = "leadingCardSections";
  *(v24 + 1) = 19;
  v24[16] = 2;
  v7();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "trailingCardSections";
  *(v26 + 1) = 20;
  v26[16] = 2;
  v7();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 53;
  *v28 = "leadingToTrailingRatio";
  *(v28 + 1) = 22;
  v28[16] = 2;
  v7();
  return sub_1B964C760();
}

void Searchfoundation_LeadingTrailingCardSection.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_187_4();
        OUTLINED_FUNCTION_9();
        sub_1B944A84C();
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
        sub_1B8D22150();
        break;
      case 9:
        OUTLINED_FUNCTION_9();
        sub_1B93CC664();
        break;
      default:
        switch(v1)
        {
          case '3':
            OUTLINED_FUNCTION_1001();
            OUTLINED_FUNCTION_9();
            sub_1B93C4AC4();
            break;
          case '4':
            OUTLINED_FUNCTION_9();
            sub_1B93C4B18();
            break;
          case '5':
            OUTLINED_FUNCTION_9();
            sub_1B93C4BB8();
            break;
        }

        break;
    }
  }
}

void sub_1B93C4AC4()
{
  OUTLINED_FUNCTION_273_0();
  v0 = OUTLINED_FUNCTION_114_1();
  v1(v0);
  v2 = OUTLINED_FUNCTION_128();
  sub_1B8CD3068(v2, v3);
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B93C4B18()
{
  type metadata accessor for Searchfoundation_CardSection(0);
  sub_1B8CD3068(&qword_1ED9D2F68, type metadata accessor for Searchfoundation_CardSection);
  return sub_1B964C570();
}

uint64_t sub_1B93C4BB8()
{
  v0 = *(type metadata accessor for Searchfoundation_LeadingTrailingCardSection(0) + 64);
  type metadata accessor for Searchfoundation_GraphicalFloat(0);
  sub_1B8CD3068(&qword_1ED9D2D38, type metadata accessor for Searchfoundation_GraphicalFloat);
  return sub_1B964C580();
}

void Searchfoundation_LeadingTrailingCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = OUTLINED_FUNCTION_640_0(v7);
  v9 = type metadata accessor for Searchfoundation_GraphicalFloat(v8);
  v10 = OUTLINED_FUNCTION_46(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_175_3();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_185();
  v18 = v17;
  v19 = OUTLINED_FUNCTION_201();
  v50 = type metadata accessor for Searchfoundation_Color(v19);
  v20 = OUTLINED_FUNCTION_59_1(v50);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_835();
  if (v23)
  {
    type metadata accessor for Searchfoundation_Punchout();
    OUTLINED_FUNCTION_14_24();
    OUTLINED_FUNCTION_71_9();
    sub_1B8CD3068(v24, v25);
    OUTLINED_FUNCTION_200_6();
    sub_1B964C730();
    if (v1)
    {
      goto LABEL_34;
    }

    v2 = v0;
  }

  v26 = *(v2 + 8);
  v27 = *(v2 + 16);
  OUTLINED_FUNCTION_1();
  if (!v28 || (OUTLINED_FUNCTION_860(), OUTLINED_FUNCTION_127_2(), sub_1B964C700(), !v1))
  {
    v29 = *(v2 + 24);
    v30 = *(v2 + 32);
    OUTLINED_FUNCTION_1();
    if (!v31 || (OUTLINED_FUNCTION_877(), OUTLINED_FUNCTION_127_2(), sub_1B964C700(), !v1))
    {
      if (*(v2 + 40) != 1 || (OUTLINED_FUNCTION_1069(), OUTLINED_FUNCTION_454_1(), sub_1B964C670(), !v1))
      {
        if (*(v2 + 41) != 1 || (OUTLINED_FUNCTION_454_1(), sub_1B964C670(), !v1))
        {
          if (*(v2 + 42) != 1 || (OUTLINED_FUNCTION_454_1(), sub_1B964C670(), !v1))
          {
            v32 = *(v2 + 48);
            v33 = *(v2 + 56);
            OUTLINED_FUNCTION_1();
            if (v34)
            {
              OUTLINED_FUNCTION_1171();
              OUTLINED_FUNCTION_127_2();
              sub_1B964C700();
              if (v1)
              {
                goto LABEL_34;
              }

              v48 = 0;
            }

            else
            {
              v48 = v1;
            }

            v35 = *(v2 + 64);
            if (v35)
            {
              v36 = *(v2 + 72);
              OUTLINED_FUNCTION_540_0(v35);
              sub_1B92C8A2C();
              OUTLINED_FUNCTION_1350();
              sub_1B964C680();
              if (v1)
              {
                goto LABEL_34;
              }

              v48 = 0;
            }

            v37 = type metadata accessor for Searchfoundation_LeadingTrailingCardSection(0);
            v38 = v37[15];
            sub_1B8D92024();
            OUTLINED_FUNCTION_37_0(v18);
            if (v39)
            {
              sub_1B8D9207C(v18, &qword_1EBACB050, &unk_1B96B7BD0);
              v1 = v48;
            }

            else
            {
              OUTLINED_FUNCTION_5_36();
              sub_1B944B02C();
              OUTLINED_FUNCTION_70_10();
              sub_1B8CD3068(v40, v41);
              OUTLINED_FUNCTION_129();
              OUTLINED_FUNCTION_1350();
              sub_1B964C740();
              OUTLINED_FUNCTION_32_19();
              sub_1B944B0D4();
              if (v1)
              {
                goto LABEL_34;
              }
            }

            if (!*(*(v2 + 80) + 16) || (type metadata accessor for Searchfoundation_CardSection(0), OUTLINED_FUNCTION_335_0(), sub_1B8CD3068(v42, v43), OUTLINED_FUNCTION_694_1(), OUTLINED_FUNCTION_39_4(), OUTLINED_FUNCTION_1332(), !v1))
            {
              if (!*(*(v2 + 88) + 16) || (type metadata accessor for Searchfoundation_CardSection(0), OUTLINED_FUNCTION_335_0(), sub_1B8CD3068(v44, v45), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_39_4(), OUTLINED_FUNCTION_1332(), !v1))
              {
                v46 = v37[16];
                sub_1B8D92024();
                OUTLINED_FUNCTION_32(v49);
                if (v39)
                {
                  sub_1B8D9207C(v49, &qword_1EBACAF98, &qword_1B96B98A0);
LABEL_33:
                  v47 = v2 + v37[14];
                  OUTLINED_FUNCTION_12();
                  sub_1B964C290();
                  goto LABEL_34;
                }

                OUTLINED_FUNCTION_99_10();
                sub_1B944B02C();
                sub_1B8CD3068(&qword_1ED9D2D38, type metadata accessor for Searchfoundation_GraphicalFloat);
                OUTLINED_FUNCTION_597_0();
                OUTLINED_FUNCTION_687();
                sub_1B964C740();
                OUTLINED_FUNCTION_505_2();
                sub_1B944B0D4();
                if (!v1)
                {
                  goto LABEL_33;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_34:
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_LeadingTrailingCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v9 = OUTLINED_FUNCTION_112();
  v10 = type metadata accessor for Searchfoundation_GraphicalFloat(v9);
  v11 = OUTLINED_FUNCTION_205_4(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_21();
  v72 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF98, &qword_1B96B98A0);
  OUTLINED_FUNCTION_183(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_137();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB020, &unk_1B96B7BC0);
  OUTLINED_FUNCTION_163_4(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_185();
  v73 = v23;
  v24 = OUTLINED_FUNCTION_201();
  v25 = type metadata accessor for Searchfoundation_Color(v24);
  v26 = OUTLINED_FUNCTION_171_4(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_165_5();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_88();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  OUTLINED_FUNCTION_59_1(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_95_4();
  OUTLINED_FUNCTION_1329();
  if ((v37 & 1) == 0)
  {
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_892();
  v40 = v40 && v38 == v39;
  if (!v40 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_822_0();
  v43 = v40 && v41 == v42;
  if (!v43 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_891();
  if (!v40)
  {
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_824_0();
  if (!v40)
  {
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_890();
  if (!v40)
  {
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_823_0();
  v46 = v40 && v44 == v45;
  if (!v46 && (sub_1B964C9F0() & 1) == 0 || !OUTLINED_FUNCTION_889())
  {
    goto LABEL_54;
  }

  v69 = type metadata accessor for Searchfoundation_LeadingTrailingCardSection(0);
  v70 = v69[15];
  v47 = *(v33 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v8);
  if (v40)
  {
    OUTLINED_FUNCTION_37_0(v8 + v47);
    if (v40)
    {
      sub_1B8D9207C(v8, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_38;
    }

    goto LABEL_32;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v8 + v47);
  if (v48)
  {
    OUTLINED_FUNCTION_32_19();
    sub_1B944B0D4();
LABEL_32:
    v49 = &qword_1EBACB058;
    v50 = &unk_1B96CA9D0;
LABEL_33:
    v51 = v8;
LABEL_34:
    sub_1B8D9207C(v51, v49, v50);
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_5_36();
  sub_1B944B02C();
  v52 = *(v1 + 20);
  if (*(v3 + v52) != *(v7 + v52))
  {
    v53 = *(v3 + v52);

    OUTLINED_FUNCTION_696();
    sub_1B947FDE4();
    v71 = v54;

    if ((v71 & 1) == 0)
    {
      OUTLINED_FUNCTION_336_0();
      sub_1B944B0D4();
      OUTLINED_FUNCTION_182();
      sub_1B944B0D4();
      v49 = &qword_1EBACB050;
      v50 = &unk_1B96B7BD0;
      goto LABEL_33;
    }
  }

  v55 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v56, v57);
  OUTLINED_FUNCTION_709_0();
  sub_1B964C850();
  OUTLINED_FUNCTION_78_7();
  sub_1B944B0D4();
  OUTLINED_FUNCTION_177_1();
  sub_1B944B0D4();
  sub_1B8D9207C(v8, &qword_1EBACB050, &unk_1B96B7BD0);
  if ((v55 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_38:
  if ((sub_1B8D684DC(*(v2 + 80), *(v0 + 80)) & 1) == 0 || (sub_1B8D684DC(*(v2 + 88), *(v0 + 88)) & 1) == 0)
  {
    goto LABEL_54;
  }

  v58 = v69[16];
  v59 = *(v6 + 48);
  OUTLINED_FUNCTION_89_10();
  sub_1B8D92024();
  OUTLINED_FUNCTION_164_1();
  OUTLINED_FUNCTION_99_0(v73);
  if (!v40)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_99_0(v73 + v59);
    if (!v60)
    {
      OUTLINED_FUNCTION_99_10();
      sub_1B944B02C();
      if (*v4 == *v72)
      {
        v61 = *(v5 + 20);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_84();
        sub_1B8CD3068(v62, v63);
        v64 = sub_1B964C850();
        sub_1B944B0D4();
        OUTLINED_FUNCTION_541_0();
        sub_1B944B0D4();
        sub_1B8D9207C(v73, &qword_1EBACAF98, &qword_1B96B98A0);
        if (v64)
        {
          goto LABEL_53;
        }

LABEL_54:
        v68 = 0;
        goto LABEL_55;
      }

      sub_1B944B0D4();
      OUTLINED_FUNCTION_1165();
      v49 = &qword_1EBACAF98;
      v50 = &qword_1B96B98A0;
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_505_2();
    sub_1B944B0D4();
LABEL_49:
    v49 = &qword_1EBACB020;
    v50 = &unk_1B96B7BC0;
LABEL_50:
    v51 = v73;
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_99_0(v73 + v59);
  if (!v40)
  {
    goto LABEL_49;
  }

  sub_1B8D9207C(v73, &qword_1EBACAF98, &qword_1B96B98A0);
LABEL_53:
  v65 = v69[14];
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v66, v67);
  v68 = OUTLINED_FUNCTION_199_0();
LABEL_55:
  OUTLINED_FUNCTION_264(v68);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B93C5808(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDE68, type metadata accessor for Searchfoundation_LeadingTrailingCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B93C5888(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD0E0, type metadata accessor for Searchfoundation_LeadingTrailingCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B93C58F8()
{
  sub_1B8CD3068(&qword_1EBACD0E0, type metadata accessor for Searchfoundation_LeadingTrailingCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B93C5984()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4F28);
  __swift_project_value_buffer(v0, qword_1EBAB4F28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "collectionStyleRow";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "collectionStyleGrid";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "collectionStyleScrolling";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 100;
  *v14 = "initiallyVisibleCardSectionCount";
  *(v14 + 1) = 32;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_CollectionStyle.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 100:
        OUTLINED_FUNCTION_9();
        sub_1B93C6B68();
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_17_3();
        sub_1B93C6178(v7, v8, v9, v10);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_17_3();
        sub_1B93C6670(v11, v12, v13, v14);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_17_3();
        sub_1B93C5C80(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_1B93C5C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_CollectionStyleRow(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC570, &qword_1B96B98A8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Searchfoundation_CollectionStyle.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE1B8, &qword_1B96CA368);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &unk_1EBACC570, &qword_1B96B98A8);
  }

  else
  {
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B944B0D4();
    }

    else
    {
      sub_1B8D9207C(v22, &qword_1EBACE1B8, &qword_1B96CA368);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_1B8CD3068(&qword_1ED9CA8E8, type metadata accessor for Searchfoundation_CollectionStyleRow);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBACE1B8, &qword_1B96CA368);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBACE1B8, &qword_1B96CA368);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBACE1B8, &qword_1B96CA368);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBACE1B8, &qword_1B96CA368);
  v27 = v29;
  sub_1B8D9207C(v29, &unk_1EBACC570, &qword_1B96B98A8);
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B93C6178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_CollectionStyleGrid(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC570, &qword_1B96B98A8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Searchfoundation_CollectionStyle.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE1C0, &qword_1B96CA370);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &unk_1EBACC570, &qword_1B96B98A8);
  }

  else
  {
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v22, &qword_1EBACE1C0, &qword_1B96CA370);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD108, type metadata accessor for Searchfoundation_CollectionStyleGrid);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBACE1C0, &qword_1B96CA370);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBACE1C0, &qword_1B96CA370);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBACE1C0, &qword_1B96CA370);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBACE1C0, &qword_1B96CA370);
  v27 = v29;
  sub_1B8D9207C(v29, &unk_1EBACC570, &qword_1B96B98A8);
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B93C6670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Searchfoundation_CollectionStyleHorizontallyScrolling(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC570, &qword_1B96B98A8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Searchfoundation_CollectionStyle.OneOf_Value(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE1C8, &qword_1B96CA378);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &unk_1EBACC570, &qword_1B96B98A8);
  }

  else
  {
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v22, &qword_1EBACE1C8, &qword_1B96CA378);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD120, type metadata accessor for Searchfoundation_CollectionStyleHorizontallyScrolling);
  v23 = v33;
  sub_1B964C580();
  if (v23)
  {
    v24 = v22;
    return sub_1B8D9207C(v24, &qword_1EBACE1C8, &qword_1B96CA378);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBACE1C8, &qword_1B96CA378);
    v24 = v20;
    return sub_1B8D9207C(v24, &qword_1EBACE1C8, &qword_1B96CA378);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v22, &qword_1EBACE1C8, &qword_1B96CA378);
  v27 = v29;
  sub_1B8D9207C(v29, &unk_1EBACC570, &qword_1B96B98A8);
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

void Searchfoundation_CollectionStyle.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_605_1();
  OUTLINED_FUNCTION_614();
  v3 = OUTLINED_FUNCTION_190_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_211_2();
  OUTLINED_FUNCTION_200();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_CollectionStyle.OneOf_Value(0);
  OUTLINED_FUNCTION_90(v0);
  if (v9)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_616();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v11 = OUTLINED_FUNCTION_100_5();
      sub_1B93C6EFC(v11, v12, v13, v14);
    }

    else
    {
      v19 = OUTLINED_FUNCTION_100_5();
      sub_1B93C7110(v19, v20, v21, v22);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_100_5();
    sub_1B93C6CEC(v15, v16, v17, v18);
  }

  OUTLINED_FUNCTION_334_1();
  sub_1B944B0D4();
  if (!v1)
  {
LABEL_8:
    v23 = type metadata accessor for Searchfoundation_CollectionStyle(0);
    if (!*(v2 + *(v23 + 20)) || (OUTLINED_FUNCTION_29(), sub_1B964C710(), !v1))
    {
      v24 = *(v23 + 24);
      OUTLINED_FUNCTION_163_6();
      sub_1B964C290();
    }
  }

  OUTLINED_FUNCTION_492_1();
  OUTLINED_FUNCTION_606_1();
}

uint64_t sub_1B93C6CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC570, &qword_1B96B98A8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_CollectionStyleRow(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_CollectionStyle.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &unk_1EBACC570, &qword_1B96B98A8);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1ED9CA8E8, type metadata accessor for Searchfoundation_CollectionStyleRow);
      sub_1B964C740();
      return sub_1B944B0D4();
    }

    result = sub_1B944B0D4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B93C6EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC570, &qword_1B96B98A8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_CollectionStyleGrid(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_CollectionStyle.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &unk_1EBACC570, &qword_1B96B98A8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1EBACD108, type metadata accessor for Searchfoundation_CollectionStyleGrid);
      sub_1B964C740();
      return sub_1B944B0D4();
    }

    result = sub_1B944B0D4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B93C7110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC570, &qword_1B96B98A8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Searchfoundation_CollectionStyleHorizontallyScrolling(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_CollectionStyle.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1B8D9207C(v7, &unk_1EBACC570, &qword_1B96B98A8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B944B02C();
      sub_1B8CD3068(&qword_1EBACD120, type metadata accessor for Searchfoundation_CollectionStyleHorizontallyScrolling);
      sub_1B964C740();
      return sub_1B944B0D4();
    }

    result = sub_1B944B0D4();
  }

  __break(1u);
  return result;
}

void static Searchfoundation_CollectionStyle.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_280();
  v4 = type metadata accessor for Searchfoundation_CollectionStyle.OneOf_Value(v3);
  v5 = OUTLINED_FUNCTION_201_5(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31_8();
  v8 = OUTLINED_FUNCTION_686();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_79();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC7C0, &qword_1B96B9A98);
  OUTLINED_FUNCTION_183(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_88();
  v19 = *(v18 + 56);
  OUTLINED_FUNCTION_113_0();
  OUTLINED_FUNCTION_92_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_92_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v2);
  if (v20)
  {
    OUTLINED_FUNCTION_50(v2 + v19);
    if (v20)
    {
      sub_1B8D9207C(v2, &unk_1EBACC570, &qword_1B96B98A8);
      goto LABEL_11;
    }

LABEL_9:
    sub_1B8D9207C(v2, &qword_1EBACC7C0, &qword_1B96B9A98);
LABEL_13:
    v26 = 0;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v2 + v19);
  if (v20)
  {
    OUTLINED_FUNCTION_334_1();
    sub_1B944B0D4();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_882();
  sub_1B944B02C();
  OUTLINED_FUNCTION_246();
  static Searchfoundation_CollectionStyle.OneOf_Value.== infix(_:_:)();
  v22 = v21;
  sub_1B944B0D4();
  OUTLINED_FUNCTION_467();
  sub_1B944B0D4();
  sub_1B8D9207C(v2, &unk_1EBACC570, &qword_1B96B98A8);
  if ((v22 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v23 = type metadata accessor for Searchfoundation_CollectionStyle(0);
  if (*(v1 + *(v23 + 20)) != *(v0 + *(v23 + 20)))
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_188_1(v23);
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v24, v25);
  v26 = OUTLINED_FUNCTION_634();
LABEL_14:
  OUTLINED_FUNCTION_264(v26);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B93C7604(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDE60, type metadata accessor for Searchfoundation_CollectionStyle);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B93C7684(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1ED9CBF48, type metadata accessor for Searchfoundation_CollectionStyle);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B93C76F4()
{
  sub_1B8CD3068(&qword_1ED9CBF48, type metadata accessor for Searchfoundation_CollectionStyle);

  return sub_1B964C5D0();
}

uint64_t sub_1B93C7780()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4BE8);
  __swift_project_value_buffer(v0, qword_1EBAB4BE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "drawPlattersIfNecessary";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isInsetGrouped";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "rowStyle";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_CollectionStyleRow.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_9();
      sub_1B93C7A24();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C400();
    }
  }

  return result;
}

void Searchfoundation_CollectionStyleRow.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_800();
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1351();
  if (!v2 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v0))
  {
    if (*(v1 + 1) != 1 || (OUTLINED_FUNCTION_1068(), OUTLINED_FUNCTION_29(), sub_1B964C670(), !v0))
    {
      if (!*(v1 + 8) || (v3 = *(v1 + 16), OUTLINED_FUNCTION_94_4(), sub_1B944C528(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v0))
      {
        v4 = *(type metadata accessor for Searchfoundation_CollectionStyleRow(0) + 28);
        OUTLINED_FUNCTION_163_6();
        sub_1B964C290();
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t sub_1B93C7BF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDE58, type metadata accessor for Searchfoundation_CollectionStyleRow);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B93C7C78(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1ED9CA8E8, type metadata accessor for Searchfoundation_CollectionStyleRow);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B93C7CE8()
{
  sub_1B8CD3068(&qword_1ED9CA8E8, type metadata accessor for Searchfoundation_CollectionStyleRow);

  return sub_1B964C5D0();
}

uint64_t sub_1B93C7D74()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACB6D0);
  __swift_project_value_buffer(v0, qword_1EBACB6D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "numberOfColumns";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "gridStyle";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_CollectionStyleGrid.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_9();
      sub_1B93C7FC4();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_41_7();
      sub_1B964C560();
    }
  }

  return result;
}

uint64_t sub_1B93C8170(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDE50, type metadata accessor for Searchfoundation_CollectionStyleGrid);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B93C81F0(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD108, type metadata accessor for Searchfoundation_CollectionStyleGrid);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B93C8260()
{
  sub_1B8CD3068(&qword_1EBACD108, type metadata accessor for Searchfoundation_CollectionStyleGrid);

  return sub_1B964C5D0();
}

uint64_t sub_1B93C83F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDE48, type metadata accessor for Searchfoundation_CollectionStyleHorizontallyScrolling);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B93C8474(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD120, type metadata accessor for Searchfoundation_CollectionStyleHorizontallyScrolling);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B93C84E4()
{
  sub_1B8CD3068(&qword_1EBACD120, type metadata accessor for Searchfoundation_CollectionStyleHorizontallyScrolling);

  return sub_1B964C5D0();
}

uint64_t sub_1B93C8570()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACB700);
  __swift_project_value_buffer(v0, qword_1EBACB700);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1B9656D00;
  v4 = v34 + v3 + v1[14];
  *(v34 + v3) = 1;
  *v4 = "punchoutOptions";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v34 + v3 + v2 + v1[14];
  *(v34 + v3 + v2) = 2;
  *v8 = "punchoutPickerTitle";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v34 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "punchoutPickerDismissText";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v7();
  v11 = (v34 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "canBeHidden";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v34 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "hasTopPadding";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v34 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasBottomPadding";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v34 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "type";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v7();
  v19 = (v34 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "separatorStyle";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v7();
  v21 = (v34 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "backgroundColor";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v34 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 51;
  *v24 = "image";
  *(v24 + 1) = 5;
  v24[16] = 2;
  v7();
  v25 = (v34 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "toggledImage";
  *(v26 + 1) = 12;
  v26[16] = 2;
  v7();
  v27 = (v34 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 53;
  *v28 = "title";
  *(v28 + 1) = 5;
  v28[16] = 2;
  v7();
  v29 = (v34 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 54;
  *v30 = "toggledTitle";
  *(v30 + 1) = 12;
  v30[16] = 2;
  v7();
  v31 = (v34 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 55;
  *v32 = "subtitle";
  *(v32 + 1) = 8;
  v32[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B93C8A74()
{
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
  v1 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v2 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__image;
  v4 = type metadata accessor for Searchfoundation_Image(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__toggledImage, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title;
  v6 = type metadata accessor for Searchfoundation_RichText();
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__toggledTitle, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle, 1, 1, v6);
  return v0;
}

uint64_t sub_1B93C8B94(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v44 = &v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v38 = &v33 - v11;
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 56) = 0;
  *(v1 + 58) = 0;
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  v34 = (v1 + 64);
  v35 = (v1 + 80);
  *(v1 + 88) = 1;
  v12 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v36 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v13 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__image;
  v37 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__image;
  v15 = type metadata accessor for Searchfoundation_Image(0);
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v39 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__toggledImage;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__toggledImage, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title;
  v40 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title;
  v17 = type metadata accessor for Searchfoundation_RichText();
  __swift_storeEnumTagSinglePayload(v1 + v16, 1, 1, v17);
  v42 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__toggledTitle;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__toggledTitle, 1, 1, v17);
  v43 = OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle, 1, 1, v17);
  swift_beginAccess();
  v18 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v18;
  swift_beginAccess();
  v20 = *(a1 + 24);
  v19 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v20;
  *(v1 + 32) = v19;

  swift_beginAccess();
  v22 = *(a1 + 40);
  v21 = *(a1 + 48);
  swift_beginAccess();
  v23 = *(v1 + 48);
  *(v1 + 40) = v22;
  *(v1 + 48) = v21;

  swift_beginAccess();
  LOBYTE(v21) = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v21;
  swift_beginAccess();
  v24 = *(a1 + 57);
  swift_beginAccess();
  *(v1 + 57) = v24;
  swift_beginAccess();
  v25 = *(a1 + 58);
  swift_beginAccess();
  *(v1 + 58) = v25;
  swift_beginAccess();
  v27 = *(a1 + 64);
  v26 = *(a1 + 72);
  v28 = v34;
  swift_beginAccess();
  v29 = *(v1 + 72);
  *v28 = v27;
  *(v1 + 72) = v26;

  swift_beginAccess();
  v30 = *(a1 + 80);
  LOBYTE(v29) = *(a1 + 88);
  v31 = v35;
  swift_beginAccess();
  *v31 = v30;
  *(v1 + 88) = v29;
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

void *sub_1B93C9288()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__image, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__toggledImage, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__toggledTitle, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Searchfoundation_CommandRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitle, &qword_1EBACB1D0, &qword_1B96B9870);
  return v0;
}

void sub_1B93C93F8()
{
  while (1)
  {
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        sub_1B944724C();
        break;
      case 2:
        sub_1B94472E0();
        break;
      case 3:
        sub_1B9447330();
        break;
      case 4:
        sub_1B9447380();
        break;
      case 5:
        sub_1B94473D0();
        break;
      case 6:
        sub_1B9447420();
        break;
      case 7:
        sub_1B9447470();
        break;
      case 8:
        sub_1B94474C0();
        break;
      case 9:
        sub_1B93C961C();
        break;
      default:
        switch(v1)
        {
          case '3':
            sub_1B93C96F8();
            break;
          case '4':
            sub_1B93C97D4();
            break;
          case '5':
            sub_1B93C98B0();
            break;
          case '6':
            sub_1B93C998C();
            break;
          case '7':
            sub_1B93C9A68();
            break;
          default:
            continue;
        }

        break;
    }
  }
}

uint64_t sub_1B93C961C()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93C96F8()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93C97D4()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93C98B0()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText();
  sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93C998C()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText();
  sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93C9A68()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText();
  sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93C9B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v61 = v60 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v63 = v60 - v15;
  v16 = type metadata accessor for Searchfoundation_RichText();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v60[1] = v60 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v60[2] = v60 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v69 = v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v68 = v60 - v28;
  v70 = type metadata accessor for Searchfoundation_Image(0);
  v29 = *(*(v70 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v70);
  v62 = v60 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v64 = v60 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v66 = v60 - v35;
  v67 = type metadata accessor for Searchfoundation_Color(0);
  v36 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v65 = v60 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v73 = a1;
  if (*(*(a1 + 16) + 16))
  {
    v60[0] = v16;
    type metadata accessor for Searchfoundation_Punchout();
    sub_1B8CD3068(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);

    sub_1B964C730();
    if (v4)
    {
    }

    v16 = v60[0];
  }

  v38 = v73;
  swift_beginAccess();
  v39 = *(v38 + 24);
  v40 = *(v38 + 32);
  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {

    sub_1B964C700();
    if (!v5)
    {

      goto LABEL_9;
    }
  }

LABEL_9:
  v42 = v73;
  swift_beginAccess();
  v43 = *(v42 + 40);
  v44 = *(v42 + 48);
  v45 = HIBYTE(v44) & 0xF;
  if ((v44 & 0x2000000000000000) == 0)
  {
    v45 = v43 & 0xFFFFFFFFFFFFLL;
  }

  if (v45)
  {

    sub_1B964C700();
    if (v5)
    {
    }
  }

  v47 = v73;
  swift_beginAccess();
  if (*(v47 + 56) != 1 || (result = sub_1B964C670(), !v5))
  {
    swift_beginAccess();
    if (*(v47 + 57) != 1 || (result = sub_1B964C670(), !v5))
    {
      swift_beginAccess();
      if (*(v47 + 58) != 1 || (result = sub_1B964C670(), !v5))
      {
        swift_beginAccess();
        v48 = *(v47 + 64);
        v49 = *(v47 + 72);
        v50 = HIBYTE(v49) & 0xF;
        if ((v49 & 0x2000000000000000) == 0)
        {
          v50 = v48 & 0xFFFFFFFFFFFFLL;
        }

        if (v50)
        {

          sub_1B964C700();
          if (v5)
          {
          }
        }

        v51 = v73;
        swift_beginAccess();
        if (!*(v51 + 80) || (v52 = *(v51 + 88), v71 = *(v51 + 80), v72 = v52, sub_1B92C8A2C(), result = sub_1B964C680(), !v5))
        {
          v53 = a4;
          v60[0] = v12;
          swift_beginAccess();
          v54 = v66;
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v54, 1, v67) == 1)
          {
            v65 = v20;
            sub_1B8D9207C(v54, &qword_1EBACB050, &unk_1B96B7BD0);
            v67 = a4;
            v55 = v68;
            v56 = v69;
          }

          else
          {
            sub_1B944B02C();
            sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
            sub_1B964C740();
            result = sub_1B944B0D4();
            v55 = v68;
            v56 = v69;
            if (v5)
            {
              return result;
            }

            v67 = v53;
            v65 = v20;
          }

          swift_beginAccess();
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v55, 1, v70) == 1)
          {
            sub_1B8D9207C(v55, &qword_1EBAB8EA8, &unk_1B96B77D0);
          }

          else
          {
            sub_1B944B02C();
            sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
            sub_1B964C740();
            result = sub_1B944B0D4();
            if (v5)
            {
              return result;
            }
          }

          swift_beginAccess();
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v56, 1, v70) == 1)
          {
            sub_1B8D9207C(v56, &qword_1EBAB8EA8, &unk_1B96B77D0);
          }

          else
          {
            sub_1B944B02C();
            sub_1B8CD3068(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
            sub_1B964C740();
            result = sub_1B944B0D4();
            if (v5)
            {
              return result;
            }
          }

          swift_beginAccess();
          v57 = v63;
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v57, 1, v16) == 1)
          {
            sub_1B8D9207C(v57, &qword_1EBACB1D0, &qword_1B96B9870);
          }

          else
          {
            sub_1B944B02C();
            sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
            sub_1B964C740();
            result = sub_1B944B0D4();
            if (v5)
            {
              return result;
            }
          }

          swift_beginAccess();
          v58 = v61;
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v58, 1, v16) == 1)
          {
            sub_1B8D9207C(v58, &qword_1EBACB1D0, &qword_1B96B9870);
          }

          else
          {
            sub_1B944B02C();
            sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
            sub_1B964C740();
            result = sub_1B944B0D4();
            if (v5)
            {
              return result;
            }
          }

          swift_beginAccess();
          v59 = v60[0];
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v59, 1, v16) == 1)
          {
            return sub_1B8D9207C(v59, &qword_1EBACB1D0, &qword_1B96B9870);
          }

          else
          {
            sub_1B944B02C();
            sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
            sub_1B964C740();
            return sub_1B944B0D4();
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_1B93CA848(uint64_t a1, uint64_t a2)
{
  v138 = type metadata accessor for Searchfoundation_RichText();
  v4 = *(*(v138 - 8) + 64);
  MEMORY[0x1EEE9AC00](v138);
  v131 = &v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB230, &unk_1B96B8870);
  v6 = *(*(v137 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v137);
  v129 = &v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v130 = &v125 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v135 = &v125 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v126 = (&v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v128 = &v125 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v127 = &v125 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v134 = &v125 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v132 = &v125 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v136 = &v125 - v24;
  v146 = type metadata accessor for Searchfoundation_Image(0);
  v25 = *(*(v146 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v146);
  v133 = &v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v139 = &v125 - v28;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EB0, &qword_1B964D6B0);
  v29 = *(*(v145 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v145);
  v141 = &v125 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v144 = &v125 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8);
  v140 = &v125 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v148 = &v125 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v143 = &v125 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v147 = &v125 - v41;
  v42 = type metadata accessor for Searchfoundation_Color(0);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v142 = &v125 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45);
  v149 = &v125 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x1EEE9AC00](v48 - 8);
  v52 = &v125 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v54 = &v125 - v53;
  swift_beginAccess();
  v55 = *(a1 + 16);
  swift_beginAccess();
  v56 = *(a2 + 16);

  sub_1B8D67B1C();
  v58 = v57;

  if ((v58 & 1) == 0)
  {
    goto LABEL_47;
  }

  swift_beginAccess();
  v59 = *(a1 + 24);
  v60 = *(a1 + 32);
  swift_beginAccess();
  v61 = v59 == *(a2 + 24) && v60 == *(a2 + 32);
  if (!v61 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_47;
  }

  swift_beginAccess();
  v62 = *(a1 + 40);
  v63 = *(a1 + 48);
  swift_beginAccess();
  v64 = v62 == *(a2 + 40) && v63 == *(a2 + 48);
  if (!v64 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_47;
  }

  swift_beginAccess();
  v65 = *(a1 + 56);
  swift_beginAccess();
  if (v65 != *(a2 + 56))
  {
    goto LABEL_47;
  }

  swift_beginAccess();
  v66 = *(a1 + 57);
  swift_beginAccess();
  if (v66 != *(a2 + 57))
  {
    goto LABEL_47;
  }

  swift_beginAccess();
  v67 = *(a1 + 58);
  swift_beginAccess();
  if (v67 != *(a2 + 58))
  {
    goto LABEL_47;
  }

  swift_beginAccess();
  v68 = *(a1 + 64);
  v69 = *(a1 + 72);
  swift_beginAccess();
  v70 = v68 == *(a2 + 64) && v69 == *(a2 + 72);
  if (!v70 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_47;
  }

  swift_beginAccess();
  v71 = *(a1 + 80);
  v72 = *(a1 + 88);
  swift_beginAccess();
  v73 = *(a2 + 88);
  if (!sub_1B8D92198(v71, v72, *(a2 + 80)))
  {
    goto LABEL_47;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v74 = *(v45 + 48);
  v75 = v149;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v75, 1, v42) == 1)
  {
    sub_1B8D9207C(v54, &qword_1EBACB050, &unk_1B96B7BD0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v75 + v74, 1, v42);
    v78 = v147;
    v77 = v148;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v75, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v75 + v74, 1, v42) == 1)
  {
    sub_1B8D9207C(v54, &qword_1EBACB050, &unk_1B96B7BD0);
    sub_1B944B0D4();
LABEL_26:
    v79 = &qword_1EBACB058;
    v80 = &unk_1B96CA9D0;
    v81 = v75;
LABEL_46:
    sub_1B8D9207C(v81, v79, v80);
    goto LABEL_47;
  }

  v82 = v142;
  sub_1B944B02C();
  v83 = *(v42 + 20);
  if (*&v52[v83] != *&v82[v83])
  {
    v84 = *&v52[v83];

    sub_1B947FDE4();
    v86 = v85;

    if ((v86 & 1) == 0)
    {
      sub_1B944B0D4();
      sub_1B8D9207C(v54, &qword_1EBACB050, &unk_1B96B7BD0);
      sub_1B944B0D4();
      v81 = v75;
      v79 = &qword_1EBACB050;
      v80 = &unk_1B96B7BD0;
      goto LABEL_46;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v87 = sub_1B964C850();
  sub_1B944B0D4();
  sub_1B8D9207C(v54, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B944B0D4();
  sub_1B8D9207C(v75, &qword_1EBACB050, &unk_1B96B7BD0);
  v78 = v147;
  v77 = v148;
  if ((v87 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_30:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v88 = v144;
  v89 = *(v145 + 48);
  sub_1B8D92024();
  v90 = v88;
  sub_1B8D92024();
  v91 = v146;
  if (__swift_getEnumTagSinglePayload(v88, 1, v146) == 1)
  {
    sub_1B8D9207C(v78, &qword_1EBAB8EA8, &unk_1B96B77D0);
    if (__swift_getEnumTagSinglePayload(v88 + v89, 1, v91) != 1)
    {
LABEL_45:
      v79 = &qword_1EBAB8EB0;
      v80 = &qword_1B964D6B0;
      v81 = v90;
      goto LABEL_46;
    }

    sub_1B8D9207C(v88, &qword_1EBAB8EA8, &unk_1B96B77D0);
  }

  else
  {
    v92 = v143;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v88 + v89, 1, v91) == 1)
    {
      sub_1B8D9207C(v78, &qword_1EBAB8EA8, &unk_1B96B77D0);
LABEL_44:
      sub_1B944B0D4();
      goto LABEL_45;
    }

    v93 = v139;
    sub_1B944B02C();
    if (*&v92[*(v91 + 20)] != *&v93[*(v91 + 20)])
    {

      sub_1B94C6890();
      v95 = v94;

      if ((v95 & 1) == 0)
      {
        sub_1B944B0D4();
        sub_1B8D9207C(v78, &qword_1EBAB8EA8, &unk_1B96B77D0);
LABEL_64:
        sub_1B944B0D4();
        v81 = v90;
        v79 = &qword_1EBAB8EA8;
        v80 = &unk_1B96B77D0;
        goto LABEL_46;
      }
    }

    sub_1B964C2B0();
    sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
    LODWORD(v149) = sub_1B964C850();
    sub_1B944B0D4();
    sub_1B8D9207C(v78, &qword_1EBAB8EA8, &unk_1B96B77D0);
    sub_1B944B0D4();
    sub_1B8D9207C(v90, &qword_1EBAB8EA8, &unk_1B96B77D0);
    if ((v149 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v96 = *(v145 + 48);
  v97 = v77;
  v98 = v141;
  sub_1B8D92024();
  v90 = v98;
  sub_1B8D92024();
  v99 = v146;
  if (__swift_getEnumTagSinglePayload(v98, 1, v146) == 1)
  {
    sub_1B8D9207C(v97, &qword_1EBAB8EA8, &unk_1B96B77D0);
    if (__swift_getEnumTagSinglePayload(v98 + v96, 1, v99) == 1)
    {
      sub_1B8D9207C(v98, &qword_1EBAB8EA8, &unk_1B96B77D0);
      goto LABEL_53;
    }

    goto LABEL_45;
  }

  v100 = v140;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v98 + v96, 1, v99) == 1)
  {
    sub_1B8D9207C(v148, &qword_1EBAB8EA8, &unk_1B96B77D0);
    goto LABEL_44;
  }

  v102 = v133;
  sub_1B944B02C();
  if (*&v100[*(v99 + 20)] != *&v102[*(v99 + 20)])
  {

    sub_1B94C6890();
    v104 = v103;

    if ((v104 & 1) == 0)
    {
      sub_1B944B0D4();
      sub_1B8D9207C(v148, &qword_1EBAB8EA8, &unk_1B96B77D0);
      goto LABEL_64;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v105 = sub_1B964C850();
  sub_1B944B0D4();
  sub_1B8D9207C(v148, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B944B0D4();
  sub_1B8D9207C(v90, &qword_1EBAB8EA8, &unk_1B96B77D0);
  if ((v105 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_53:
  swift_beginAccess();
  v106 = v136;
  sub_1B8D92024();
  swift_beginAccess();
  v107 = *(v137 + 48);
  v108 = v135;
  sub_1B8D92024();
  sub_1B8D92024();
  v109 = v138;
  if (__swift_getEnumTagSinglePayload(v108, 1, v138) == 1)
  {
    sub_1B8D9207C(v106, &qword_1EBACB1D0, &qword_1B96B9870);
    if (__swift_getEnumTagSinglePayload(v108 + v107, 1, v109) != 1)
    {
LABEL_68:
      v79 = &qword_1EBACB230;
      v80 = &unk_1B96B8870;
      v81 = v108;
      goto LABEL_46;
    }

    sub_1B8D9207C(v108, &qword_1EBACB1D0, &qword_1B96B9870);
  }

  else
  {
    v110 = v132;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v108 + v107, 1, v109) == 1)
    {
      v111 = v136;
LABEL_67:
      sub_1B8D9207C(v111, &qword_1EBACB1D0, &qword_1B96B9870);
      sub_1B944B0D4();
      goto LABEL_68;
    }

    v112 = v131;
    sub_1B944B02C();
    v113 = static Searchfoundation_RichText.== infix(_:_:)(v110, v112);
    sub_1B944B0D4();
    sub_1B8D9207C(v136, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B944B0D4();
    sub_1B8D9207C(v108, &qword_1EBACB1D0, &qword_1B96B9870);
    if ((v113 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v114 = *(v137 + 48);
  v108 = v130;
  sub_1B8D92024();
  sub_1B8D92024();
  v115 = v138;
  if (__swift_getEnumTagSinglePayload(v108, 1, v138) != 1)
  {
    v116 = v127;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v108 + v114, 1, v115) == 1)
    {
      v111 = v134;
      goto LABEL_67;
    }

    v117 = v131;
    sub_1B944B02C();
    v118 = static Searchfoundation_RichText.== infix(_:_:)(v116, v117);
    sub_1B944B0D4();
    sub_1B8D9207C(v134, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B944B0D4();
    sub_1B8D9207C(v108, &qword_1EBACB1D0, &qword_1B96B9870);
    if (v118)
    {
      goto LABEL_70;
    }

LABEL_47:

    return 0;
  }

  sub_1B8D9207C(v134, &qword_1EBACB1D0, &qword_1B96B9870);
  if (__swift_getEnumTagSinglePayload(v108 + v114, 1, v115) != 1)
  {
    goto LABEL_68;
  }

  sub_1B8D9207C(v108, &qword_1EBACB1D0, &qword_1B96B9870);
LABEL_70:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v119 = *(v137 + 48);
  v120 = v129;
  sub_1B8D92024();
  sub_1B8D92024();
  v121 = v138;
  if (__swift_getEnumTagSinglePayload(v120, 1, v138) == 1)
  {

    sub_1B8D9207C(v128, &qword_1EBACB1D0, &qword_1B96B9870);
    if (__swift_getEnumTagSinglePayload(v120 + v119, 1, v121) == 1)
    {
      sub_1B8D9207C(v129, &qword_1EBACB1D0, &qword_1B96B9870);
      return 1;
    }

    goto LABEL_75;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v120 + v119, 1, v121) == 1)
  {

    sub_1B8D9207C(v128, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B944B0D4();
LABEL_75:
    sub_1B8D9207C(v129, &qword_1EBACB230, &unk_1B96B8870);
    return 0;
  }

  v122 = v129;
  v123 = v131;
  sub_1B944B02C();
  v124 = static Searchfoundation_RichText.== infix(_:_:)(v126, v123);

  sub_1B944B0D4();
  sub_1B8D9207C(v128, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B944B0D4();
  sub_1B8D9207C(v122, &qword_1EBACB1D0, &qword_1B96B9870);
  return (v124 & 1) != 0;
}

uint64_t sub_1B93CBF80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDE40, type metadata accessor for Searchfoundation_CommandRowCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B93CC000(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD138, type metadata accessor for Searchfoundation_CommandRowCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B93CC070()
{
  sub_1B8CD3068(&qword_1EBACD138, type metadata accessor for Searchfoundation_CommandRowCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B93CC0FC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACB720);
  __swift_project_value_buffer(v0, qword_1EBACB720);
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
  *v26 = "applicationBundleIdentifier";
  *(v26 + 1) = 27;
  v26[16] = 2;
  v7();
  return sub_1B964C760();
}

void Searchfoundation_AppIconCardSection.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_187_4();
        OUTLINED_FUNCTION_9();
        sub_1B944A84C();
        break;
      case 2:
      case 3:
      case 7:
        goto LABEL_12;
      case 4:
      case 5:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 8:
        OUTLINED_FUNCTION_9();
        sub_1B8D22150();
        break;
      case 9:
        OUTLINED_FUNCTION_9();
        sub_1B93CC664();
        break;
      default:
        if (v1 == 51 || v1 == 52)
        {
LABEL_12:
          OUTLINED_FUNCTION_12();
          sub_1B964C530();
        }

        break;
    }
  }
}

void sub_1B93CC664()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_147_1();
  v1 = *(v0(0) + 60);
  type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_70_10();
  sub_1B8CD3068(v2, v3);
  OUTLINED_FUNCTION_49_1();
  sub_1B964C580();
  OUTLINED_FUNCTION_823();
}

void Searchfoundation_AppIconCardSection.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_151();
  v8 = type metadata accessor for Searchfoundation_Color(v7);
  v9 = OUTLINED_FUNCTION_46(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_175_3();
  OUTLINED_FUNCTION_835();
  if (v12)
  {
    OUTLINED_FUNCTION_868_0();
    OUTLINED_FUNCTION_14_24();
    OUTLINED_FUNCTION_71_9();
    sub_1B8CD3068(v13, v14);
    OUTLINED_FUNCTION_200_6();
    OUTLINED_FUNCTION_5_34();
    sub_1B964C730();
    if (v0)
    {
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_834_0();
  }

  v15 = *(v1 + 8);
  v16 = *(v1 + 16);
  OUTLINED_FUNCTION_1();
  if (!v17 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
  {
    v18 = *(v1 + 24);
    v19 = *(v1 + 32);
    OUTLINED_FUNCTION_1();
    if (!v20 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
    {
      OUTLINED_FUNCTION_1212();
      if (!v21 || (OUTLINED_FUNCTION_1069(), OUTLINED_FUNCTION_29(), sub_1B964C670(), !v0))
      {
        OUTLINED_FUNCTION_1209();
        if (!v21 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v0))
        {
          OUTLINED_FUNCTION_1261();
          if (!v21 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v0))
          {
            v22 = *(v1 + 48);
            v23 = *(v1 + 56);
            OUTLINED_FUNCTION_1();
            if (!v24 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
            {
              v25 = *(v1 + 64);
              if (!v25 || (v26 = *(v1 + 72), OUTLINED_FUNCTION_540_0(v25), sub_1B92C8A2C(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v0))
              {
                v36 = type metadata accessor for Searchfoundation_AppIconCardSection(0);
                OUTLINED_FUNCTION_285_1(*(v36 + 60));
                sub_1B8D92024();
                OUTLINED_FUNCTION_243_1();
                if (v21)
                {
                  sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
                }

                else
                {
                  OUTLINED_FUNCTION_5_36();
                  OUTLINED_FUNCTION_1277();
                  OUTLINED_FUNCTION_70_10();
                  sub_1B8CD3068(v27, v28);
                  OUTLINED_FUNCTION_597_0();
                  OUTLINED_FUNCTION_687();
                  sub_1B964C740();
                  OUTLINED_FUNCTION_32_19();
                  sub_1B944B0D4();
                  if (v0)
                  {
                    goto LABEL_30;
                  }
                }

                v29 = *(v1 + 80);
                v30 = *(v1 + 88);
                OUTLINED_FUNCTION_1();
                if (!v31 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
                {
                  v32 = *(v1 + 96);
                  v33 = *(v1 + 104);
                  OUTLINED_FUNCTION_1();
                  if (!v34 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
                  {
                    v35 = *(v36 + 56);
                    OUTLINED_FUNCTION_163_6();
                    sub_1B964C290();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_30:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Searchfoundation_AppIconCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_112();
  v5 = type metadata accessor for Searchfoundation_Color(v4);
  v6 = OUTLINED_FUNCTION_171_4(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_106_8();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_137();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  OUTLINED_FUNCTION_163_4(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_1329();
  if ((v17 & 1) == 0)
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_892();
  v20 = v20 && v18 == v19;
  if (!v20 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_822_0();
  v23 = v20 && v21 == v22;
  if (!v23 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_891();
  if (!v20)
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_824_0();
  if (!v20)
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_890();
  if (!v20)
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_823_0();
  v26 = v20 && v24 == v25;
  if (!v26 && (sub_1B964C9F0() & 1) == 0 || !OUTLINED_FUNCTION_889())
  {
    goto LABEL_34;
  }

  v42 = type metadata accessor for Searchfoundation_AppIconCardSection(0);
  v27 = *(v42 + 60);
  v28 = *(v3 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_75_9();
  if (!v20)
  {
    OUTLINED_FUNCTION_1_0();
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v2 + v28);
    if (!v29)
    {
      OUTLINED_FUNCTION_5_36();
      OUTLINED_FUNCTION_1275();
      OUTLINED_FUNCTION_494_0();
      if (v33 || (, , OUTLINED_FUNCTION_616(), sub_1B947FDE4(), OUTLINED_FUNCTION_813(), , (&unk_1B96B7BD0 & 1) != 0))
      {
        v34 = sub_1B964C2B0();
        OUTLINED_FUNCTION_0_84();
        sub_1B8CD3068(v35, v36);
        OUTLINED_FUNCTION_654_0();
        OUTLINED_FUNCTION_78_7();
        sub_1B944B0D4();
        OUTLINED_FUNCTION_531_0();
        sub_1B944B0D4();
        sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
        if ((v34 & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_39;
      }

      OUTLINED_FUNCTION_336_0();
      sub_1B944B0D4();
      OUTLINED_FUNCTION_1165();
      v30 = &qword_1EBACB050;
      v31 = &unk_1B96B7BD0;
LABEL_33:
      sub_1B8D9207C(v2, v30, v31);
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_32_19();
    sub_1B944B0D4();
LABEL_32:
    v30 = &qword_1EBACB058;
    v31 = &unk_1B96CA9D0;
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_37_0(v2 + v28);
  if (!v20)
  {
    goto LABEL_32;
  }

  sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
LABEL_39:
  v37 = v1[10] == v0[10] && v1[11] == v0[11];
  if (v37 || (sub_1B964C9F0() & 1) != 0)
  {
    v38 = v1[12] == v0[12] && v1[13] == v0[13];
    if (v38 || (sub_1B964C9F0() & 1) != 0)
    {
      v39 = *(v42 + 56);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_84();
      sub_1B8CD3068(v40, v41);
      v32 = OUTLINED_FUNCTION_199_0();
      goto LABEL_35;
    }
  }

LABEL_34:
  v32 = 0;
LABEL_35:
  OUTLINED_FUNCTION_264(v32);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B93CCDB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDE38, type metadata accessor for Searchfoundation_AppIconCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B93CCE34(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD150, type metadata accessor for Searchfoundation_AppIconCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B93CCEA4()
{
  sub_1B8CD3068(&qword_1EBACD150, type metadata accessor for Searchfoundation_AppIconCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B93CCF3C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACB738);
  __swift_project_value_buffer(v0, qword_1EBACB738);
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
  *v26 = "subtitleButtonItem";
  *(v26 + 1) = 18;
  v26[16] = 2;
  v7();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 53;
  *v28 = "trailingButtonItems";
  *(v28 + 1) = 19;
  v28[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B93CD3CC()
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
  v2 = OBJC_IVAR____TtCV10PegasusAPI49Searchfoundation_LargeTitleDetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v3 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtCV10PegasusAPI49Searchfoundation_LargeTitleDetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title;
  v5 = type metadata accessor for Searchfoundation_RichText();
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10PegasusAPI49Searchfoundation_LargeTitleDetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitleButtonItem;
  v7 = type metadata accessor for Searchfoundation_ButtonItem(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI49Searchfoundation_LargeTitleDetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingButtonItems) = v1;
  return v0;
}

uint64_t sub_1B93CD49C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v45 = &v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v44 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v41 = &v36 - v11;
  v12 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 56) = 0;
  *(v1 + 58) = 0;
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  v37 = (v1 + 64);
  v38 = (v1 + 80);
  *(v1 + 88) = 1;
  v13 = OBJC_IVAR____TtCV10PegasusAPI49Searchfoundation_LargeTitleDetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v39 = OBJC_IVAR____TtCV10PegasusAPI49Searchfoundation_LargeTitleDetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor;
  v14 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v1 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10PegasusAPI49Searchfoundation_LargeTitleDetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title;
  v40 = OBJC_IVAR____TtCV10PegasusAPI49Searchfoundation_LargeTitleDetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title;
  v16 = type metadata accessor for Searchfoundation_RichText();
  __swift_storeEnumTagSinglePayload(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV10PegasusAPI49Searchfoundation_LargeTitleDetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitleButtonItem;
  v42 = OBJC_IVAR____TtCV10PegasusAPI49Searchfoundation_LargeTitleDetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitleButtonItem;
  v18 = type metadata accessor for Searchfoundation_ButtonItem(0);
  __swift_storeEnumTagSinglePayload(v1 + v17, 1, 1, v18);
  v43 = OBJC_IVAR____TtCV10PegasusAPI49Searchfoundation_LargeTitleDetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingButtonItems;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI49Searchfoundation_LargeTitleDetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingButtonItems) = v12;
  swift_beginAccess();
  v19 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v19;
  swift_beginAccess();
  v21 = *(a1 + 24);
  v20 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v21;
  *(v1 + 32) = v20;

  swift_beginAccess();
  v23 = *(a1 + 40);
  v22 = *(a1 + 48);
  swift_beginAccess();
  v24 = *(v1 + 48);
  *(v1 + 40) = v23;
  *(v1 + 48) = v22;

  swift_beginAccess();
  LOBYTE(v22) = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v22;
  swift_beginAccess();
  LOBYTE(v22) = *(a1 + 57);
  swift_beginAccess();
  *(v1 + 57) = v22;
  swift_beginAccess();
  LOBYTE(v22) = *(a1 + 58);
  swift_beginAccess();
  *(v1 + 58) = v22;
  swift_beginAccess();
  v26 = *(a1 + 64);
  v25 = *(a1 + 72);
  v27 = v37;
  swift_beginAccess();
  v28 = *(v1 + 72);
  *v27 = v26;
  *(v1 + 72) = v25;

  swift_beginAccess();
  v29 = *(a1 + 80);
  LOBYTE(v28) = *(a1 + 88);
  v30 = v38;
  swift_beginAccess();
  *v30 = v29;
  *(v1 + 88) = v28;
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
  v31 = OBJC_IVAR____TtCV10PegasusAPI49Searchfoundation_LargeTitleDetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingButtonItems;
  swift_beginAccess();
  v32 = *(a1 + v31);

  v33 = v43;
  swift_beginAccess();
  v34 = *(v1 + v33);
  *(v1 + v33) = v32;

  return v1;
}

void *sub_1B93CDA50()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI49Searchfoundation_LargeTitleDetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__backgroundColor, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI49Searchfoundation_LargeTitleDetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__title, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI49Searchfoundation_LargeTitleDetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__subtitleButtonItem, &qword_1EBACC580, &qword_1B96B98B8);
  v5 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI49Searchfoundation_LargeTitleDetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingButtonItems);

  return v0;
}

void sub_1B93CDB68()
{
  while (1)
  {
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        sub_1B944724C();
        break;
      case 2:
        sub_1B94472E0();
        break;
      case 3:
        sub_1B9447330();
        break;
      case 4:
        sub_1B9447380();
        break;
      case 5:
        sub_1B94473D0();
        break;
      case 6:
        sub_1B9447420();
        break;
      case 7:
        sub_1B9447470();
        break;
      case 8:
        sub_1B94474C0();
        break;
      case 9:
        sub_1B93CDD40();
        break;
      default:
        switch(v1)
        {
          case '3':
            sub_1B93CDE1C();
            break;
          case '4':
            sub_1B93CDEF8();
            break;
          case '5':
            sub_1B93CDFD4();
            break;
        }

        break;
    }
  }
}

uint64_t sub_1B93CDD40()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93CDE1C()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText();
  sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93CDEF8()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ButtonItem(0);
  sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B93CDFD4()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ButtonItem(0);
  sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B93CE0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v37 = v36 - v8;
  v9 = type metadata accessor for Searchfoundation_ButtonItem(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v39 = v36 - v13;
  v40 = type metadata accessor for Searchfoundation_RichText();
  v14 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v36[1] = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v41 = v36 - v18;
  v44 = type metadata accessor for Searchfoundation_Color(0);
  v19 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v38 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {
    v36[0] = a1;
    type metadata accessor for Searchfoundation_Punchout();
    sub_1B8CD3068(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);

    sub_1B964C730();
    if (v3)
    {
    }

    a1 = v36[0];
  }

  swift_beginAccess();
  v21 = *(a1 + 32);
  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = *(a1 + 24) & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    v23 = *(a1 + 32);

    sub_1B964C700();
    if (!v3)
    {

      goto LABEL_9;
    }
  }

LABEL_9:
  swift_beginAccess();
  v24 = *(a1 + 48);
  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = *(a1 + 40) & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    v26 = *(a1 + 48);

    sub_1B964C700();
    if (v3)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 56) != 1 || (result = sub_1B964C670(), !v3))
  {
    swift_beginAccess();
    if (*(a1 + 57) != 1 || (result = sub_1B964C670(), !v3))
    {
      swift_beginAccess();
      if (*(a1 + 58) != 1 || (result = sub_1B964C670(), !v3))
      {
        swift_beginAccess();
        v28 = *(a1 + 72);
        v29 = HIBYTE(v28) & 0xF;
        if ((v28 & 0x2000000000000000) == 0)
        {
          v29 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
        }

        if (!v29 || (v30 = *(a1 + 72), , sub_1B964C700(), result = , !v3))
        {
          swift_beginAccess();
          if (!*(a1 + 80) || (v31 = *(a1 + 88), v42 = *(a1 + 80), v43 = v31, sub_1B92C8A2C(), result = sub_1B964C680(), !v3))
          {
            swift_beginAccess();
            v32 = v41;
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v32, 1, v44) == 1)
            {
              v38 = v9;
              v44 = a3;
              sub_1B8D9207C(v32, &qword_1EBACB050, &unk_1B96B7BD0);
            }

            else
            {
              sub_1B944B02C();
              sub_1B8CD3068(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
              sub_1B964C740();
              result = sub_1B944B0D4();
              if (v3)
              {
                return result;
              }

              v38 = v9;
              v44 = a3;
            }

            swift_beginAccess();
            v33 = v39;
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v33, 1, v40) == 1)
            {
              sub_1B8D9207C(v33, &qword_1EBACB1D0, &qword_1B96B9870);
            }

            else
            {
              sub_1B944B02C();
              sub_1B8CD3068(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
              sub_1B964C740();
              result = sub_1B944B0D4();
              if (v3)
              {
                return result;
              }
            }

            swift_beginAccess();
            v34 = v37;
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v34, 1, v38) == 1)
            {
              sub_1B8D9207C(v34, &qword_1EBACC580, &qword_1B96B98B8);
            }

            else
            {
              sub_1B944B02C();
              sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem);
              sub_1B964C740();
              result = sub_1B944B0D4();
              if (v3)
              {
                return result;
              }
            }

            v35 = OBJC_IVAR____TtCV10PegasusAPI49Searchfoundation_LargeTitleDetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingButtonItems;
            result = swift_beginAccess();
            if (*(*(a1 + v35) + 16))
            {
              sub_1B8CD3068(&qword_1EBAB5430, type metadata accessor for Searchfoundation_ButtonItem);

              sub_1B964C730();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B93CEA18(uint64_t a1, uint64_t a2)
{
  v107 = type metadata accessor for Searchfoundation_ButtonItem(0);
  v4 = *(*(v107 - 8) + 64);
  MEMORY[0x1EEE9AC00](v107);
  v103 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACCBF8, &unk_1B96B9AC8);
  v6 = *(*(v106 - 8) + 64);
  MEMORY[0x1EEE9AC00](v106);
  v108 = &v102 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC580, &qword_1B96B98B8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v105 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v114 = &v102 - v12;
  v112 = type metadata accessor for Searchfoundation_RichText();
  v13 = *(*(v112 - 8) + 64);
  MEMORY[0x1EEE9AC00](v112);
  v104 = (&v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB230, &unk_1B96B8870);
  v15 = *(*(v111 - 8) + 64);
  MEMORY[0x1EEE9AC00](v111);
  v113 = &v102 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v109 = (&v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v115 = &v102 - v21;
  v22 = type metadata accessor for Searchfoundation_Color(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v110 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v116 = &v102 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v32 = &v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v102 - v33;
  swift_beginAccess();
  v35 = *(a1 + 16);
  swift_beginAccess();
  v36 = *(a2 + 16);

  sub_1B8D67B1C();
  v38 = v37;

  if ((v38 & 1) == 0)
  {
    goto LABEL_46;
  }

  swift_beginAccess();
  v40 = *(a1 + 24);
  v39 = *(a1 + 32);
  swift_beginAccess();
  v41 = v40 == *(a2 + 24) && v39 == *(a2 + 32);
  if (!v41 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_46;
  }

  swift_beginAccess();
  v42 = *(a1 + 40);
  v43 = *(a1 + 48);
  swift_beginAccess();
  v44 = v42 == *(a2 + 40) && v43 == *(a2 + 48);
  if (!v44 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_46;
  }

  swift_beginAccess();
  v45 = *(a1 + 56);
  swift_beginAccess();
  if (v45 != *(a2 + 56))
  {
    goto LABEL_46;
  }

  swift_beginAccess();
  v46 = *(a1 + 57);
  swift_beginAccess();
  if (v46 != *(a2 + 57))
  {
    goto LABEL_46;
  }

  swift_beginAccess();
  v47 = *(a1 + 58);
  swift_beginAccess();
  if (v47 != *(a2 + 58))
  {
    goto LABEL_46;
  }

  swift_beginAccess();
  v48 = *(a1 + 64);
  v49 = *(a1 + 72);
  swift_beginAccess();
  v50 = v48 == *(a2 + 64) && v49 == *(a2 + 72);
  if (!v50 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_46;
  }

  swift_beginAccess();
  v51 = *(a1 + 80);
  v52 = *(a1 + 88);
  swift_beginAccess();
  v53 = *(a2 + 88);
  if (!sub_1B8D92198(v51, v52, *(a2 + 80)))
  {
    goto LABEL_46;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v54 = *(v25 + 48);
  v55 = v116;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v55, 1, v22) == 1)
  {
    sub_1B8D9207C(v34, &qword_1EBACB050, &unk_1B96B7BD0);
    if (__swift_getEnumTagSinglePayload(v55 + v54, 1, v22) == 1)
    {
      sub_1B8D9207C(v55, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_30;
    }

LABEL_26:
    v56 = &qword_1EBACB058;
    v57 = &unk_1B96CA9D0;
    v58 = v55;
LABEL_45:
    sub_1B8D9207C(v58, v56, v57);
    goto LABEL_46;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v55 + v54, 1, v22) == 1)
  {
    sub_1B8D9207C(v34, &qword_1EBACB050, &unk_1B96B7BD0);
    sub_1B944B0D4();
    goto LABEL_26;
  }

  v59 = v110;
  sub_1B944B02C();
  v60 = *(v22 + 20);
  if (*&v32[v60] != *(v59 + v60))
  {
    v61 = *&v32[v60];

    sub_1B947FDE4();
    v63 = v62;

    if ((v63 & 1) == 0)
    {
      sub_1B944B0D4();
      v79 = &qword_1EBACB050;
      v80 = &unk_1B96B7BD0;
      sub_1B8D9207C(v34, &qword_1EBACB050, &unk_1B96B7BD0);
      sub_1B944B0D4();
      v58 = v55;
LABEL_41:
      v56 = v79;
      v57 = v80;
      goto LABEL_45;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v64 = sub_1B964C850();
  sub_1B944B0D4();
  sub_1B8D9207C(v34, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B944B0D4();
  sub_1B8D9207C(v55, &qword_1EBACB050, &unk_1B96B7BD0);
  if ((v64 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_30:
  swift_beginAccess();
  v65 = v115;
  sub_1B8D92024();
  swift_beginAccess();
  v66 = *(v111 + 48);
  v67 = v113;
  sub_1B8D92024();
  sub_1B8D92024();
  v68 = v112;
  if (__swift_getEnumTagSinglePayload(v67, 1, v112) == 1)
  {
    sub_1B8D9207C(v65, &qword_1EBACB1D0, &qword_1B96B9870);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v67 + v66, 1, v68);
    v70 = v114;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v67, &qword_1EBACB1D0, &qword_1B96B9870);
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  v71 = v109;
  sub_1B8D92024();
  v72 = __swift_getEnumTagSinglePayload(v67 + v66, 1, v68);
  v70 = v114;
  if (v72 == 1)
  {
    sub_1B8D9207C(v115, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B944B0D4();
LABEL_35:
    v56 = &qword_1EBACB230;
    v57 = &unk_1B96B8870;
    v58 = v67;
    goto LABEL_45;
  }

  v73 = v104;
  sub_1B944B02C();
  v74 = static Searchfoundation_RichText.== infix(_:_:)(v71, v73);
  sub_1B944B0D4();
  sub_1B8D9207C(v115, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B944B0D4();
  sub_1B8D9207C(v67, &qword_1EBACB1D0, &qword_1B96B9870);
  if ((v74 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_37:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v75 = *(v106 + 48);
  v76 = v108;
  sub_1B8D92024();
  v77 = v76;
  sub_1B8D92024();
  v78 = v107;
  if (__swift_getEnumTagSinglePayload(v76, 1, v107) == 1)
  {
    sub_1B8D9207C(v70, &qword_1EBACC580, &qword_1B96B98B8);
    if (__swift_getEnumTagSinglePayload(v76 + v75, 1, v78) == 1)
    {
      sub_1B8D9207C(v76, &qword_1EBACC580, &qword_1B96B98B8);
LABEL_51:
      v97 = OBJC_IVAR____TtCV10PegasusAPI49Searchfoundation_LargeTitleDetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingButtonItems;
      swift_beginAccess();
      v98 = *(a1 + v97);
      v99 = OBJC_IVAR____TtCV10PegasusAPI49Searchfoundation_LargeTitleDetailedRowCardSectionP33_8B6B46006750B7327475329E07D4337013_StorageClass__trailingButtonItems;
      swift_beginAccess();
      v100 = *(a2 + v99);

      sub_1B8D6B7F8();
      v82 = v101;

      return v82 & 1;
    }

    goto LABEL_44;
  }

  v81 = v105;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v76 + v75, 1, v78) == 1)
  {
    sub_1B8D9207C(v70, &qword_1EBACC580, &qword_1B96B98B8);
    sub_1B944B0D4();
LABEL_44:
    v56 = &qword_1EBACCBF8;
    v57 = &unk_1B96B9AC8;
    v58 = v76;
    goto LABEL_45;
  }

  v84 = v103;
  sub_1B944B02C();
  v85 = *(v78 + 20);
  v86 = *(v81 + v85);
  v87 = *(v84 + v85);
  if (v86 != v87)
  {

    sub_1B941D6DC(v86, v87, v88, v89, v90, v91, v92, v93, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113);
    v95 = v94;

    if ((v95 & 1) == 0)
    {
      sub_1B944B0D4();
      v79 = &qword_1EBACC580;
      v80 = &qword_1B96B98B8;
      sub_1B8D9207C(v70, &qword_1EBACC580, &qword_1B96B98B8);
      sub_1B944B0D4();
      v58 = v77;
      goto LABEL_41;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD3068(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v96 = sub_1B964C850();
  sub_1B944B0D4();
  sub_1B8D9207C(v70, &qword_1EBACC580, &qword_1B96B98B8);
  sub_1B944B0D4();
  sub_1B8D9207C(v77, &qword_1EBACC580, &qword_1B96B98B8);
  if (v96)
  {
    goto LABEL_51;
  }

LABEL_46:

  v82 = 0;
  return v82 & 1;
}

uint64_t sub_1B93CF954(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD3068(&qword_1EBACDE30, type metadata accessor for Searchfoundation_LargeTitleDetailedRowCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B93CF9D4(uint64_t a1)
{
  v2 = sub_1B8CD3068(&qword_1EBACD168, type metadata accessor for Searchfoundation_LargeTitleDetailedRowCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B93CFA44()
{
  sub_1B8CD3068(&qword_1EBACD168, type metadata accessor for Searchfoundation_LargeTitleDetailedRowCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B93CFADC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5550);
  __swift_project_value_buffer(v0, qword_1EBAB5550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v128 = swift_allocObject();
  *(v128 + 16) = xmmword_1B96B94A0;
  v4 = v128 + v3 + v1[14];
  *(v128 + v3) = 1;
  *v4 = "showContactCardCommand";
  *(v4 + 8) = 22;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v128 + v3 + v2 + v1[14];
  *(v128 + v3 + v2) = 2;
  *v8 = "showSFCardCommand";
  *(v8 + 8) = 17;
  *(v8 + 16) = 2;
  v7();
  v9 = (v128 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "showAppStoreSheetCommand";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v7();
  v11 = (v128 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "openPunchoutCommand";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v7();
  v13 = (v128 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "openFileProviderItemCommand";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v7();
  v15 = (v128 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "openAppClipCommand";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v7();
  v17 = (v128 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "openWebClipCommand";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v7();
  v19 = (v128 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "requestAppClipInstallCommand";
  *(v20 + 1) = 28;
  v20[16] = 2;
  v7();
  v21 = (v128 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "requestUserReportCommand";
  *(v22 + 1) = 24;
  v22[16] = 2;
  v7();
  v23 = (v128 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "launchAppCommand";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v7();
  v25 = (v128 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "runVoiceShortcutCommand";
  *(v26 + 1) = 23;
  v26[16] = 2;
  v7();
  v27 = (v128 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "indexedUserActivityCommand";
  *(v28 + 1) = 26;
  v28[16] = 2;
  v7();
  v29 = (v128 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "openCoreSpotlightItemCommand";
  *(v30 + 1) = 28;
  v30[16] = 2;
  v7();
  v31 = (v128 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "performIntentCommand";
  *(v32 + 1) = 20;
  v32[16] = 2;
  v7();
  v33 = (v128 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "searchInAppCommand";
  *(v34 + 1) = 18;
  v34[16] = 2;
  v7();
  v35 = (v128 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "updateSearchQueryCommand";
  *(v36 + 1) = 24;
  v36[16] = 2;
  v7();
  v37 = (v128 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "searchWebCommand";
  *(v38 + 1) = 16;
  v38[16] = 2;
  v7();
  v39 = (v128 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "invokeSiriCommand";
  *(v40 + 1) = 17;
  v40[16] = 2;
  v7();
  v41 = (v128 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "performContactQueryCommand";
  *(v42 + 1) = 26;
  v42[16] = 2;
  v7();
  v43 = (v128 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "openCalculationCommand";
  *(v44 + 1) = 22;
  v44[16] = 2;
  v7();
  v45 = (v128 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "playVideoCommand";
  *(v46 + 1) = 16;
  v46[16] = 2;
  v7();
  v47 = (v128 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "callCommand";
  *(v48 + 1) = 11;
  v48[16] = 2;
  v7();
  v49 = (v128 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "emailCommand";
  *(v50 + 1) = 12;
  v50[16] = 2;
  v7();
  v51 = (v128 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "beginMapsRoutingCommand";
  *(v52 + 1) = 23;
  v52[16] = 2;
  v7();
  v53 = (v128 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 25;
  *v54 = "toggleAudioCommand";
  *(v54 + 1) = 18;
  v54[16] = 2;
  v7();
  v55 = (v128 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 26;
  *v56 = "performPersonEntityQueryCommand";
  *(v56 + 1) = 31;
  v56[16] = 2;
  v7();
  v57 = (v128 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 27;
  *v58 = "showPurchaseRequestSheetCommand";
  *(v58 + 1) = 31;
  v58[16] = 2;
  v7();
  v59 = (v128 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 28;
  *v60 = "showScreenTimeRequestSheetCommand";
  *(v60 + 1) = 33;
  v60[16] = 2;
  v7();
  v61 = (v128 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 29;
  *v62 = "performEntityQueryCommand";
  *(v62 + 1) = 25;
  v62[16] = 2;
  v7();
  v63 = (v128 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 30;
  *v64 = "shareCommand";
  *(v64 + 1) = 12;
  v64[16] = 2;
  v7();
  v65 = (v128 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 31;
  *v66 = "copyCommand";
  *(v66 + 1) = 11;
  v66[16] = 2;
  v7();
  v67 = (v128 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 32;
  *v68 = "toggleWatchListStatusCommand";
  *(v68 + 1) = 28;
  v68[16] = 2;
  v7();
  v69 = (v128 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 33;
  *v70 = "showPhotosOneUpViewCommand";
  *(v70 + 1) = 26;
  v70[16] = 2;
  v7();
  v71 = (v128 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 34;
  *v72 = "playMediaCommand";
  *(v72 + 1) = 16;
  v72[16] = 2;
  v7();
  v73 = (v128 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 35;
  *v74 = "openMediaCommand";
  *(v74 + 1) = 16;
  v74[16] = 2;
  v7();
  v75 = (v128 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 36;
  *v76 = "addToPhotosLibraryCommand";
  *(v76 + 1) = 25;
  v76[16] = 2;
  v7();
  v77 = (v128 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 37;
  *v78 = "performContactActionCommand";
  *(v78 + 1) = 27;
  v78[16] = 2;
  v7();
  v79 = (v128 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 38;
  *v80 = "expandInlineCommand";
  *(v80 + 1) = 19;
  v80[16] = 2;
  v7();
  v81 = (v128 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 39;
  *v82 = "subscribeForUpdatesCommand";
  *(v82 + 1) = 26;
  v82[16] = 2;
  v7();
  v83 = (v128 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 40;
  *v84 = "viewEmailCommand";
  *(v84 + 1) = 16;
  v84[16] = 2;
  v7();
  v85 = (v128 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 41;
  *v86 = "rejectPeopleInPhotoCommand";
  *(v86 + 1) = 26;
  v86[16] = 2;
  v7();
  v87 = (v128 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 42;
  *v88 = "showWrapperResponseViewCommand";
  *(v88 + 1) = 30;
  v88[16] = 2;
  v7();
  v89 = (v128 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 43;
  *v90 = "clearProactiveCategoryCommand";
  *(v90 + 1) = 29;
  v90[16] = 2;
  v7();
  v91 = (v128 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 44;
  *v92 = "createContactCommand";
  *(v92 + 1) = 20;
  v92[16] = 2;
  v7();
  v93 = (v128 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 45;
  *v94 = "createCalendarEventCommand";
  *(v94 + 1) = 26;
  v94[16] = 2;
  v7();
  v95 = (v128 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 46;
  *v96 = "createReminderCommand";
  *(v96 + 1) = 21;
  v96[16] = 2;
  v7();
  v97 = (v128 + v3 + 46 * v2);
  v98 = v97 + v1[14];
  *v97 = 47;
  *v98 = "manageReservationCommand";
  *(v98 + 1) = 24;
  v98[16] = 2;
  v7();
  v99 = (v128 + v3 + 47 * v2);
  v100 = v99 + v1[14];
  *v99 = 48;
  *v100 = "updateSportsFollowingStatusCommand";
  *(v100 + 1) = 34;
  v100[16] = 2;
  v7();
  v101 = (v128 + v3 + 48 * v2);
  v102 = v101 + v1[14];
  *v101 = 49;
  *v102 = "requestProductPageCommand";
  *(v102 + 1) = 25;
  v102[16] = 2;
  v7();
  v103 = (v128 + v3 + 49 * v2);
  v104 = v103 + v1[14];
  *v103 = 50;
  *v104 = "flightCheckinCommand";
  *(v104 + 1) = 20;
  v104[16] = 2;
  v7();
  v105 = (v128 + v3 + 50 * v2);
  v106 = v105 + v1[14];
  *v105 = 51;
  *v106 = "executeToolCommand";
  *(v106 + 1) = 18;
  v106[16] = 2;
  v7();
  v107 = (v128 + v3 + 51 * v2);
  v108 = v107 + v1[14];
  *v107 = 52;
  *v108 = "executeMenuItemCommand";
  *(v108 + 1) = 22;
  v108[16] = 2;
  v7();
  v109 = (v128 + v3 + 52 * v2);
  v110 = v109 + v1[14];
  *v109 = 53;
  *v110 = "fillToolParameterCommand";
  *(v110 + 1) = 24;
  v110[16] = 2;
  v7();
  v111 = (v128 + v3 + 53 * v2);
  v112 = v111 + v1[14];
  *v111 = 54;
  *v112 = "fillToolAppParameterCommand";
  *(v112 + 1) = 27;
  v112[16] = 2;
  v7();
  v113 = (v128 + v3 + 54 * v2);
  v114 = v113 + v1[14];
  *v113 = 55;
  *v114 = "fillToolFileParameterCommand";
  *(v114 + 1) = 28;
  v114[16] = 2;
  v7();
  v115 = (v128 + v3 + 55 * v2);
  v116 = v115 + v1[14];
  *v115 = 56;
  *v116 = "fillToolAppEntityParameterCommand";
  *(v116 + 1) = 33;
  v116[16] = 2;
  v7();
  v117 = (v128 + v3 + 56 * v2);
  v118 = v117 + v1[14];
  *v117 = 57;
  *v118 = "fillToolPersonParameterCommand";
  *(v118 + 1) = 30;
  v118[16] = 2;
  v7();
  v119 = (v128 + v3 + 57 * v2);
  v120 = v119 + v1[14];
  *v119 = 100;
  *v120 = "commandDetail";
  *(v120 + 1) = 13;
  v120[16] = 2;
  v7();
  v121 = (v128 + v3 + 58 * v2);
  v122 = v121 + v1[14];
  *v121 = 101;
  *v122 = "normalizedTopic";
  *(v122 + 1) = 15;
  v122[16] = 2;
  v7();
  v123 = (v128 + v3 + 59 * v2);
  v124 = v123 + v1[14];
  *v123 = 102;
  *v124 = "backendData";
  *(v124 + 1) = 11;
  v124[16] = 2;
  v7();
  v125 = (v128 + v3 + 60 * v2);
  v126 = v125 + v1[14];
  *v125 = 103;
  *v126 = "commandReference";
  *(v126 + 1) = 16;
  v126[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B93D0B04()
{
  v1 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  v2 = type metadata accessor for Searchfoundation_Command.OneOf_Value(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__commandDetail);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__normalizedTopic;
  v5 = type metadata accessor for Searchfoundation_Topic(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__backendData) = xmmword_1B9652FE0;
  v6 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__commandReference;
  v7 = type metadata accessor for Searchfoundation_CommandReference(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  return v0;
}

uint64_t sub_1B93D0BB8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D80, &unk_1B964D580);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v28[2] = v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC590, &unk_1B96B98C8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC588, &qword_1B96B98C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  v11 = type metadata accessor for Searchfoundation_Command.OneOf_Value(0);
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v11);
  v12 = (v1 + OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__commandDetail);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__normalizedTopic;
  v14 = type metadata accessor for Searchfoundation_Topic(0);
  __swift_storeEnumTagSinglePayload(v1 + v13, 1, 1, v14);
  v15 = (v1 + OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__backendData);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__backendData) = xmmword_1B9652FE0;
  v16 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__commandReference;
  v28[1] = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__commandReference;
  v17 = type metadata accessor for Searchfoundation_CommandReference(0);
  __swift_storeEnumTagSinglePayload(v1 + v16, 1, 1, v17);
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v18 = (a1 + OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__commandDetail);
  swift_beginAccess();
  v20 = *v18;
  v19 = v18[1];
  swift_beginAccess();
  v21 = v12[1];
  *v12 = v20;
  v12[1] = v19;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v22 = (a1 + OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__backendData);
  swift_beginAccess();
  v24 = *v22;
  v23 = v22[1];
  swift_beginAccess();
  v25 = *v15;
  v26 = v15[1];
  *v15 = v24;
  v15[1] = v23;
  sub_1B8D91FCC(v24, v23);
  sub_1B8D538A0(v25, v26);
  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v1;
}

uint64_t sub_1B93D0F9C()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value, &qword_1EBACC588, &qword_1B96B98C0);
  v1 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__commandDetail + 8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__normalizedTopic, &unk_1EBACC590, &unk_1B96B98C8);
  sub_1B8D538A0(*(v0 + OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__backendData[0]), *(v0 + OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__backendData[0] + 8));
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__commandReference, &qword_1EBAB8D80, &unk_1B964D580);
  return v0;
}

uint64_t sub_1B93D10AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B93D17E4(a1, a2, a3, a4);
        break;
      case 2:
        sub_1B93D1D38(a1, a2, a3, a4);
        break;
      case 3:
        sub_1B93D22A8(a1, a2, a3, a4);
        break;
      case 4:
        sub_1B93D2818(a1, a2, a3, a4);
        break;
      case 5:
        sub_1B93D2D88(a1, a2, a3, a4);
        break;
      case 6:
        sub_1B93D32F8(a1, a2, a3, a4);
        break;
      case 7:
        sub_1B93D3868(a1, a2, a3, a4);
        break;
      case 8:
        sub_1B93D3DD8(a1, a2, a3, a4);
        break;
      case 9:
        sub_1B93D4348(a1, a2, a3, a4);
        break;
      case 10:
        sub_1B93D48B8(a1, a2, a3, a4);
        break;
      case 11:
        sub_1B93D4E28(a1, a2, a3, a4);
        break;
      case 12:
        sub_1B93D5398(a1, a2, a3, a4);
        break;
      case 13:
        sub_1B93D5908(a1, a2, a3, a4);
        break;
      case 14:
        sub_1B93D5E78(a1, a2, a3, a4);
        break;
      case 15:
        sub_1B93D63E8(a1, a2, a3, a4);
        break;
      case 16:
        sub_1B93D6958(a1, a2, a3, a4);
        break;
      case 17:
        sub_1B93D6EC8(a1, a2, a3, a4);
        break;
      case 18:
        sub_1B93D7438(a1, a2, a3, a4);
        break;
      case 19:
        sub_1B93D79A8(a1, a2, a3, a4);
        break;
      case 20:
        sub_1B93D7F18(a1, a2, a3, a4);
        break;
      case 21:
        sub_1B93D8488(a1, a2, a3, a4);
        break;
      case 22:
        sub_1B93D89F8(a1, a2, a3, a4);
        break;
      case 23:
        sub_1B93D8F68(a1, a2, a3, a4);
        break;
      case 24:
        sub_1B93D94D8(a1, a2, a3, a4);
        break;
      case 25:
        sub_1B93D9A48(a1, a2, a3, a4);
        break;
      case 26:
        sub_1B93D9FB8(a1, a2, a3, a4);
        break;
      case 27:
        sub_1B93DA528(a1, a2, a3, a4);
        break;
      case 28:
        sub_1B93DAA98(a1, a2, a3, a4);
        break;
      case 29:
        sub_1B93DB008(a1, a2, a3, a4);
        break;
      case 30:
        sub_1B93DB578(a1, a2, a3, a4);
        break;
      case 31:
        sub_1B93DBAE8(a1, a2, a3, a4);
        break;
      case 32:
        sub_1B93DC058(a1, a2, a3, a4);
        break;
      case 33:
        sub_1B93DC5C8(a1, a2, a3, a4);
        break;
      case 34:
        sub_1B93DCB38(a1, a2, a3, a4);
        break;
      case 35:
        sub_1B93DD0A8(a1, a2, a3, a4);
        break;
      case 36:
        sub_1B93DD618(a1, a2, a3, a4);
        break;
      case 37:
        sub_1B93DDB88(a1, a2, a3, a4);
        break;
      case 38:
        sub_1B93DE0F8(a1, a2, a3, a4);
        break;
      case 39:
        sub_1B93DE668(a1, a2, a3, a4);
        break;
      case 40:
        sub_1B93DEBD8(a1, a2, a3, a4);
        break;
      case 41:
        sub_1B93DF148(a1, a2, a3, a4);
        break;
      case 42:
        sub_1B93DF6B8(a1, a2, a3, a4);
        break;
      case 43:
        sub_1B93DFC28(a1, a2, a3, a4);
        break;
      case 44:
        sub_1B93E0198(a1, a2, a3, a4);
        break;
      case 45:
        sub_1B93E0708(a1, a2, a3, a4);
        break;
      case 46:
        sub_1B93E0C78(a1, a2, a3, a4);
        break;
      case 47:
        sub_1B93E11E8(a1, a2, a3, a4);
        break;
      case 48:
        sub_1B93E1758(a1, a2, a3, a4);
        break;
      case 49:
        sub_1B93E1CC8(a1, a2, a3, a4);
        break;
      case 50:
        sub_1B93E2238(a1, a2, a3, a4);
        break;
      case 51:
        sub_1B93E27A8(a1, a2, a3, a4);
        break;
      case 52:
        sub_1B93E2D18(a1, a2, a3, a4);
        break;
      case 53:
        sub_1B93E3288(a1, a2, a3, a4);
        break;
      case 54:
        sub_1B93E37F8(a1, a2, a3, a4);
        break;
      case 55:
        sub_1B93E3D68(a1, a2, a3, a4);
        break;
      case 56:
        sub_1B93E42D8(a1, a2, a3, a4);
        break;
      case 57:
        sub_1B93E4848(a1, a2, a3, a4);
        break;
      case 100:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__commandDetail;
        v12 = MEMORY[0x1E69AACE0];
        goto LABEL_55;
      case 101:
        sub_1B93E4DB8();
        break;
      case 102:
        v11 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__backendData;
        v12 = MEMORY[0x1E69AAC78];
LABEL_55:
        sub_1B94420D8(a2, a1, a3, a4, v11, v12);
        break;
      case 103:
        sub_1B93E4E94();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B93D17E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v40 = a3;
  v39 = a2;
  v5 = type metadata accessor for Searchfoundation_ShowContactCardCommand(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC588, &qword_1B96B98C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - v14;
  v16 = type metadata accessor for Searchfoundation_Command.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACDFF0, &qword_1B96CA1A0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v32 - v24;
  __swift_storeEnumTagSinglePayload(&v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v34 = a1;
  v32 = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBACC588, &qword_1B96B98C0);
  }

  else
  {
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B944B0D4();
    }

    else
    {
      sub_1B8D9207C(v25, &qword_1EBACDFF0, &qword_1B96CA1A0);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }
  }

  sub_1B8CD3068(&qword_1EBACD1E8, type metadata accessor for Searchfoundation_ShowContactCardCommand);
  v28 = v37;
  sub_1B964C580();
  if (v28)
  {
    v29 = v25;
    return sub_1B8D9207C(v29, &qword_1EBACDFF0, &qword_1B96CA1A0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACDFF0, &qword_1B96CA1A0);
    v29 = v23;
    return sub_1B8D9207C(v29, &qword_1EBACDFF0, &qword_1B96CA1A0);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v25, &qword_1EBACDFF0, &qword_1B96CA1A0);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v16);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B93D1D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_ShowSFCardCommand(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC588, &qword_1B96B98C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_Command.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACDFF8, &qword_1B96CA1A8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBACC588, &qword_1B96B98C0);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v25, &qword_1EBACDFF8, &qword_1B96CA1A8);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBAB4DF0, type metadata accessor for Searchfoundation_ShowSFCardCommand);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACDFF8, &qword_1B96CA1A8);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACDFF8, &qword_1B96CA1A8);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACDFF8, &qword_1B96CA1A8);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACDFF8, &qword_1B96CA1A8);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B93D22A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_ShowAppStoreSheetCommand(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC588, &qword_1B96B98C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_Command.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE000, &qword_1B96CA1B0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBACC588, &qword_1B96B98C0);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v25, &qword_1EBACE000, &qword_1B96CA1B0);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD200, type metadata accessor for Searchfoundation_ShowAppStoreSheetCommand);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACE000, &qword_1B96CA1B0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACE000, &qword_1B96CA1B0);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACE000, &qword_1B96CA1B0);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACE000, &qword_1B96CA1B0);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B93D2818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_OpenPunchoutCommand(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC588, &qword_1B96B98C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_Command.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE008, &qword_1B96CA1B8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBACC588, &qword_1B96B98C0);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B8D9207C(v25, &qword_1EBACE008, &qword_1B96CA1B8);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(qword_1ED9D25E8, type metadata accessor for Searchfoundation_OpenPunchoutCommand);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACE008, &qword_1B96CA1B8);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACE008, &qword_1B96CA1B8);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACE008, &qword_1B96CA1B8);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACE008, &qword_1B96CA1B8);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B93D2D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_OpenFileProviderItemCommand(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC588, &qword_1B96B98C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_Command.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE010, &qword_1B96CA1C0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBACC588, &qword_1B96B98C0);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B8D9207C(v25, &qword_1EBACE010, &qword_1B96CA1C0);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD250, type metadata accessor for Searchfoundation_OpenFileProviderItemCommand);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACE010, &qword_1B96CA1C0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACE010, &qword_1B96CA1C0);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACE010, &qword_1B96CA1C0);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACE010, &qword_1B96CA1C0);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B93D32F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_OpenAppClipCommand(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC588, &qword_1B96B98C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_Command.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE018, &qword_1B96CA1C8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBACC588, &qword_1B96B98C0);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B8D9207C(v25, &qword_1EBACE018, &qword_1B96CA1C8);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD268, type metadata accessor for Searchfoundation_OpenAppClipCommand);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACE018, &qword_1B96CA1C8);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACE018, &qword_1B96CA1C8);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACE018, &qword_1B96CA1C8);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACE018, &qword_1B96CA1C8);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B93D3868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_OpenWebClipCommand(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC588, &qword_1B96B98C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_Command.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE020, &qword_1B96CA1D0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBACC588, &qword_1B96B98C0);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B8D9207C(v25, &qword_1EBACE020, &qword_1B96CA1D0);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD280, type metadata accessor for Searchfoundation_OpenWebClipCommand);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACE020, &qword_1B96CA1D0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACE020, &qword_1B96CA1D0);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACE020, &qword_1B96CA1D0);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACE020, &qword_1B96CA1D0);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B93D3DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_RequestAppClipInstallCommand(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC588, &qword_1B96B98C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_Command.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE028, &qword_1B96CA1D8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBACC588, &qword_1B96B98C0);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1B8D9207C(v25, &qword_1EBACE028, &qword_1B96CA1D8);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD298, type metadata accessor for Searchfoundation_RequestAppClipInstallCommand);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACE028, &qword_1B96CA1D8);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACE028, &qword_1B96CA1D8);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACE028, &qword_1B96CA1D8);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACE028, &qword_1B96CA1D8);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B93D4348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_RequestUserReportCommand(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC588, &qword_1B96B98C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_Command.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE030, &qword_1B96CA1E0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBACC588, &qword_1B96B98C0);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1B8D9207C(v25, &qword_1EBACE030, &qword_1B96CA1E0);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD2B0, type metadata accessor for Searchfoundation_RequestUserReportCommand);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACE030, &qword_1B96CA1E0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACE030, &qword_1B96CA1E0);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACE030, &qword_1B96CA1E0);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACE030, &qword_1B96CA1E0);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B93D48B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_LaunchAppCommand(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC588, &qword_1B96B98C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_Command.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE038, &qword_1B96CA1E8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBACC588, &qword_1B96B98C0);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1B8D9207C(v25, &qword_1EBACE038, &qword_1B96CA1E8);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD2C8, type metadata accessor for Searchfoundation_LaunchAppCommand);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACE038, &qword_1B96CA1E8);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACE038, &qword_1B96CA1E8);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACE038, &qword_1B96CA1E8);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACE038, &qword_1B96CA1E8);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B93D4E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_RunVoiceShortcutCommand(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC588, &qword_1B96B98C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_Command.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE040, &qword_1B96CA1F0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBACC588, &qword_1B96B98C0);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1B8D9207C(v25, &qword_1EBACE040, &qword_1B96CA1F0);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD2E0, type metadata accessor for Searchfoundation_RunVoiceShortcutCommand);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACE040, &qword_1B96CA1F0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACE040, &qword_1B96CA1F0);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACE040, &qword_1B96CA1F0);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACE040, &qword_1B96CA1F0);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B93D5398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_IndexedUserActivityCommand(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC588, &qword_1B96B98C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_Command.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE048, &qword_1B96CA1F8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBACC588, &qword_1B96B98C0);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1B8D9207C(v25, &qword_1EBACE048, &qword_1B96CA1F8);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD2F8, type metadata accessor for Searchfoundation_IndexedUserActivityCommand);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACE048, &qword_1B96CA1F8);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACE048, &qword_1B96CA1F8);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACE048, &qword_1B96CA1F8);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACE048, &qword_1B96CA1F8);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B93D5908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_OpenCoreSpotlightItemCommand(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC588, &qword_1B96B98C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_Command.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE050, &qword_1B96CA200);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBACC588, &qword_1B96B98C0);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1B8D9207C(v25, &qword_1EBACE050, &qword_1B96CA200);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD310, type metadata accessor for Searchfoundation_OpenCoreSpotlightItemCommand);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACE050, &qword_1B96CA200);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACE050, &qword_1B96CA200);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACE050, &qword_1B96CA200);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACE050, &qword_1B96CA200);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B93D5E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_PerformIntentCommand(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC588, &qword_1B96B98C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_Command.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE058, &qword_1B96CA208);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBACC588, &qword_1B96B98C0);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_1B8D9207C(v25, &qword_1EBACE058, &qword_1B96CA208);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD328, type metadata accessor for Searchfoundation_PerformIntentCommand);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACE058, &qword_1B96CA208);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACE058, &qword_1B96CA208);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACE058, &qword_1B96CA208);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACE058, &qword_1B96CA208);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B93D63E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_SearchInAppCommand(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC588, &qword_1B96B98C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_Command.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE060, &qword_1B96CA210);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBACC588, &qword_1B96B98C0);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_1B8D9207C(v25, &qword_1EBACE060, &qword_1B96CA210);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD340, type metadata accessor for Searchfoundation_SearchInAppCommand);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACE060, &qword_1B96CA210);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACE060, &qword_1B96CA210);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACE060, &qword_1B96CA210);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACE060, &qword_1B96CA210);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B93D6958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  updated = type metadata accessor for Searchfoundation_UpdateSearchQueryCommand(0);
  v6 = *(*(updated - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](updated);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC588, &qword_1B96B98C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_Command.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE068, &qword_1B96CA218);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, updated);
  v26 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBACC588, &qword_1B96B98C0);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_1B8D9207C(v25, &qword_1EBACE068, &qword_1B96CA218);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, updated);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD358, type metadata accessor for Searchfoundation_UpdateSearchQueryCommand);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACE068, &qword_1B96CA218);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, updated) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACE068, &qword_1B96CA218);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACE068, &qword_1B96CA218);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACE068, &qword_1B96CA218);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B93D6EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_SearchWebCommand(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC588, &qword_1B96B98C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_Command.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE070, &qword_1B96CA220);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBACC588, &qword_1B96B98C0);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_1B8D9207C(v25, &qword_1EBACE070, &qword_1B96CA220);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD370, type metadata accessor for Searchfoundation_SearchWebCommand);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACE070, &qword_1B96CA220);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACE070, &qword_1B96CA220);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACE070, &qword_1B96CA220);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACE070, &qword_1B96CA220);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B93D7438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_InvokeSiriCommand(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC588, &qword_1B96B98C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_Command.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE078, &qword_1B96CA228);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBACC588, &qword_1B96B98C0);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_1B8D9207C(v25, &qword_1EBACE078, &qword_1B96CA228);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD388, type metadata accessor for Searchfoundation_InvokeSiriCommand);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACE078, &qword_1B96CA228);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACE078, &qword_1B96CA228);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACE078, &qword_1B96CA228);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACE078, &qword_1B96CA228);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B93D79A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  Command = type metadata accessor for Searchfoundation_PerformContactQueryCommand(0);
  v6 = *(*(Command - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](Command);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC588, &qword_1B96B98C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_Command.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE080, &qword_1B96CA230);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, Command);
  v26 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBACC588, &qword_1B96B98C0);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_1B8D9207C(v25, &qword_1EBACE080, &qword_1B96CA230);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, Command);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD3A0, type metadata accessor for Searchfoundation_PerformContactQueryCommand);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACE080, &qword_1B96CA230);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, Command) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACE080, &qword_1B96CA230);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACE080, &qword_1B96CA230);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACE080, &qword_1B96CA230);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B93D7F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_OpenCalculationCommand(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC588, &qword_1B96B98C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_Command.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE088, &qword_1B96CA238);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBACC588, &qword_1B96B98C0);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_1B8D9207C(v25, &qword_1EBACE088, &qword_1B96CA238);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD3E8, type metadata accessor for Searchfoundation_OpenCalculationCommand);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACE088, &qword_1B96CA238);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACE088, &qword_1B96CA238);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACE088, &qword_1B96CA238);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACE088, &qword_1B96CA238);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B93D8488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_PlayVideoCommand(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC588, &qword_1B96B98C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_Command.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE090, &qword_1B96CA240);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBACC588, &qword_1B96B98C0);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_1B8D9207C(v25, &qword_1EBACE090, &qword_1B96CA240);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD400, type metadata accessor for Searchfoundation_PlayVideoCommand);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACE090, &qword_1B96CA240);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACE090, &qword_1B96CA240);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACE090, &qword_1B96CA240);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACE090, &qword_1B96CA240);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B93D89F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_CallCommand(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC588, &qword_1B96B98C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_Command.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE098, &qword_1B96CA248);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBACC588, &qword_1B96B98C0);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_1B8D9207C(v25, &qword_1EBACE098, &qword_1B96CA248);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBAB53C8, type metadata accessor for Searchfoundation_CallCommand);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACE098, &qword_1B96CA248);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACE098, &qword_1B96CA248);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACE098, &qword_1B96CA248);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACE098, &qword_1B96CA248);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B93D8F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_EmailCommand(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC588, &qword_1B96B98C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_Command.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE0A0, &qword_1B96CA250);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBACC588, &qword_1B96B98C0);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_1B8D9207C(v25, &qword_1EBACE0A0, &qword_1B96CA250);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD458, type metadata accessor for Searchfoundation_EmailCommand);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACE0A0, &qword_1B96CA250);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACE0A0, &qword_1B96CA250);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACE0A0, &qword_1B96CA250);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACE0A0, &qword_1B96CA250);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B93D94D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_BeginMapsRoutingCommand(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC588, &qword_1B96B98C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_Command.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE0A8, &qword_1B96CA258);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBACC588, &qword_1B96B98C0);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_1B8D9207C(v25, &qword_1EBACE0A8, &qword_1B96CA258);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBAB4630, type metadata accessor for Searchfoundation_BeginMapsRoutingCommand);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACE0A8, &qword_1B96CA258);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACE0A8, &qword_1B96CA258);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACE0A8, &qword_1B96CA258);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACE0A8, &qword_1B96CA258);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B93D9A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_ToggleAudioCommand(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC588, &qword_1B96B98C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_Command.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE0B0, &qword_1B96CA260);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBACC588, &qword_1B96B98C0);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_1B8D9207C(v25, &qword_1EBACE0B0, &qword_1B96CA260);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD478, type metadata accessor for Searchfoundation_ToggleAudioCommand);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACE0B0, &qword_1B96CA260);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACE0B0, &qword_1B96CA260);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACE0B0, &qword_1B96CA260);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACE0B0, &qword_1B96CA260);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B93D9FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  Command = type metadata accessor for Searchfoundation_PerformPersonEntityQueryCommand(0);
  v6 = *(*(Command - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](Command);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC588, &qword_1B96B98C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_Command.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE0B8, &qword_1B96CA268);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, Command);
  v26 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBACC588, &qword_1B96B98C0);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_1B8D9207C(v25, &qword_1EBACE0B8, &qword_1B96CA268);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, Command);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD3B8, type metadata accessor for Searchfoundation_PerformPersonEntityQueryCommand);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACE0B8, &qword_1B96CA268);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, Command) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACE0B8, &qword_1B96CA268);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACE0B8, &qword_1B96CA268);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACE0B8, &qword_1B96CA268);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B93DA528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_ShowPurchaseRequestSheetCommand(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC588, &qword_1B96B98C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_Command.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE0C0, &qword_1B96CA270);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBACC588, &qword_1B96B98C0);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_1B8D9207C(v25, &qword_1EBACE0C0, &qword_1B96CA270);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD218, type metadata accessor for Searchfoundation_ShowPurchaseRequestSheetCommand);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACE0C0, &qword_1B96CA270);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACE0C0, &qword_1B96CA270);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACE0C0, &qword_1B96CA270);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACE0C0, &qword_1B96CA270);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B93DAA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_ShowScreenTimeRequestSheetCommand(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC588, &qword_1B96B98C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_Command.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE0C8, &qword_1B96CA278);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBACC588, &qword_1B96B98C0);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_1B8D9207C(v25, &qword_1EBACE0C8, &qword_1B96CA278);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD230, type metadata accessor for Searchfoundation_ShowScreenTimeRequestSheetCommand);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACE0C8, &qword_1B96CA278);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACE0C8, &qword_1B96CA278);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACE0C8, &qword_1B96CA278);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACE0C8, &qword_1B96CA278);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B93DB008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  Command = type metadata accessor for Searchfoundation_PerformEntityQueryCommand(0);
  v6 = *(*(Command - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](Command);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC588, &qword_1B96B98C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_Command.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE0D0, &qword_1B96CA280);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, Command);
  v26 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBACC588, &qword_1B96B98C0);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      sub_1B8D9207C(v25, &qword_1EBACE0D0, &qword_1B96CA280);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, Command);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD3D0, type metadata accessor for Searchfoundation_PerformEntityQueryCommand);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACE0D0, &qword_1B96CA280);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, Command) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACE0D0, &qword_1B96CA280);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACE0D0, &qword_1B96CA280);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACE0D0, &qword_1B96CA280);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B93DB578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_ShareCommand(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC588, &qword_1B96B98C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_Command.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE0D8, &qword_1B96CA288);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBACC588, &qword_1B96B98C0);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      sub_1B8D9207C(v25, &qword_1EBACE0D8, &qword_1B96CA288);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD740, type metadata accessor for Searchfoundation_ShareCommand);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACE0D8, &qword_1B96CA288);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACE0D8, &qword_1B96CA288);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACE0D8, &qword_1B96CA288);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACE0D8, &qword_1B96CA288);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B93DBAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_CopyCommand(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC588, &qword_1B96B98C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_Command.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE0E0, &qword_1B96CA290);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBACC588, &qword_1B96B98C0);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      sub_1B8D9207C(v25, &qword_1EBACE0E0, &qword_1B96CA290);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD4A8, type metadata accessor for Searchfoundation_CopyCommand);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACE0E0, &qword_1B96CA290);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACE0E0, &qword_1B96CA290);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACE0E0, &qword_1B96CA290);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACE0E0, &qword_1B96CA290);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B93DC058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v41 = a3;
  v40 = a2;
  v5 = type metadata accessor for Searchfoundation_ToggleWatchListStatusCommand(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC588, &qword_1B96B98C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - v14;
  v16 = type metadata accessor for Searchfoundation_Command.OneOf_Value(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACE0E8, &qword_1B96CA298);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v32 - v24;
  __swift_storeEnumTagSinglePayload(v32 - v24, 1, 1, v5);
  v26 = OBJC_IVAR____TtCV10PegasusAPI24Searchfoundation_CommandP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
  swift_beginAccess();
  v32[1] = v26;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v16);
  v35 = v16;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v15, &qword_1EBACC588, &qword_1B96B98C0);
  }

  else
  {
    v32[0] = a1;
    sub_1B944B02C();
    sub_1B944B02C();
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      sub_1B8D9207C(v25, &qword_1EBACE0E8, &qword_1B96CA298);
      sub_1B944B02C();
      sub_1B944B02C();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
    }

    else
    {
      sub_1B944B0D4();
    }
  }

  sub_1B8CD3068(&qword_1EBACD490, type metadata accessor for Searchfoundation_ToggleWatchListStatusCommand);
  v27 = v38;
  sub_1B964C580();
  if (v27)
  {
    v28 = v25;
    return sub_1B8D9207C(v28, &qword_1EBACE0E8, &qword_1B96CA298);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v5) == 1)
  {
    sub_1B8D9207C(v25, &qword_1EBACE0E8, &qword_1B96CA298);
    v28 = v23;
    return sub_1B8D9207C(v28, &qword_1EBACE0E8, &qword_1B96CA298);
  }

  sub_1B944B02C();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v30 = v35;
  sub_1B8D9207C(v25, &qword_1EBACE0E8, &qword_1B96CA298);
  v31 = v33;
  sub_1B944B02C();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}