void *sub_1B94FB84C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__backgroundColor, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__mediaItem, &qword_1EBACFDE8, &qword_1B96D3DF8);
  v5 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__details);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__playAction, &qword_1EBACAFA8, &qword_1B96B9880);
  v6 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__offers);

  v7 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__watchListIdentifier + 8);

  v8 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__watchListButtonLabel + 8);

  v9 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__watchListContinuationText + 8);

  v10 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__watchListConfirmationText + 8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__specialOfferButtonLabel, &qword_1EBACB1D0, &qword_1B96B9870);
  return v0;
}

uint64_t sub_1B94FB974()
{
  v0 = sub_1B94FB84C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Searchfoundation_MediaInfoCardSection.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Searchfoundation_MediaInfoCardSection(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Searchfoundation_MediaInfoCardSection._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B94FAEE8(v15);
    *(v4 + v8) = v11;
  }

  return sub_1B94FBA68(v11, a1, a2, a3);
}

uint64_t sub_1B94FBA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      case '3':
        sub_1B94FBF04();
        continue;
      case '4':
        sub_1B94FBFE0();
        continue;
      case '5':
        sub_1B94FC0BC();
        continue;
      case '6':
        sub_1B94FC198();
        continue;
      case '7':
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__watchListIdentifier;
        goto LABEL_21;
      case '8':
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__watchListButtonLabel;
        goto LABEL_21;
      case '9':
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__watchListContinuationText;
        goto LABEL_21;
      case ':':
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__watchListConfirmationText;
LABEL_21:
        sub_1B8EB8AB0(v11, v12, v13, v14, v15);
        break;
      case ';':
        sub_1B94FC274();
        break;
      case '<':
        sub_1B94FC300();
        break;
      case '=':
        sub_1B94FC3DC();
        break;
      default:
        switch(result)
        {
          case 1:
            sub_1B94FBD5C();
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
            sub_1B94FBE28();
            break;
          default:
            continue;
        }

        break;
    }
  }
}

uint64_t sub_1B94FBD5C()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Punchout();
  sub_1B8CD34A0(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B94FBE28()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B8CD34A0(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94FBF04()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_MediaItem(0);
  sub_1B8CD34A0(&qword_1EBACFE28, type metadata accessor for Searchfoundation_MediaItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94FBFE0()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_MediaDetail(0);
  sub_1B8CD34A0(&qword_1EBACFE18, type metadata accessor for Searchfoundation_MediaDetail);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B94FC0BC()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_ActionItem(0);
  sub_1B8CD34A0(&unk_1EBACAFB8, type metadata accessor for Searchfoundation_ActionItem);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94FC198()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_MediaOffer(0);
  sub_1B8CD34A0(&qword_1EBACAFE8, type metadata accessor for Searchfoundation_MediaOffer);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B94FC274()
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B94FC300()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_RichText();
  sub_1B8CD34A0(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B94FC3DC()
{
  swift_beginAccess();
  sub_1B94FF0A0();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t Searchfoundation_MediaInfoCardSection.traverse<A>(visitor:)()
{
  v2 = type metadata accessor for Searchfoundation_MediaInfoCardSection(0);
  result = sub_1B94FC4E4(*(v0 + *(v2 + 20)));
  if (!v1)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B94FC4E4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v64 = &v62 - v6;
  v7 = type metadata accessor for Searchfoundation_RichText();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA8, &qword_1B96B9880);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v68 = &v62 - v13;
  v66 = type metadata accessor for Searchfoundation_ActionItem(0);
  v14 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACFDE8, &qword_1B96D3DF8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v72 = &v62 - v18;
  v69 = type metadata accessor for Searchfoundation_MediaItem(0);
  v19 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v70 = &v62 - v23;
  v77 = type metadata accessor for Searchfoundation_Color(0);
  v24 = *(*(v77 - 1) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v71 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {
    v63 = a1;
    type metadata accessor for Searchfoundation_Punchout();
    sub_1B8CD34A0(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);

    sub_1B964C730();
    if (v1)
    {
    }

    a1 = v63;
  }

  swift_beginAccess();
  v26 = *(a1 + 32);
  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = *(a1 + 24) & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    v28 = *(a1 + 32);

    sub_1B964C700();
    if (!v1)
    {

      goto LABEL_9;
    }
  }

LABEL_9:
  swift_beginAccess();
  v29 = *(a1 + 48);
  v30 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v30 = *(a1 + 40) & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {
    v31 = *(a1 + 48);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 56) == 1)
  {
    result = sub_1B964C670();
    if (v1)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(a1 + 57) == 1)
  {
    result = sub_1B964C670();
    if (v1)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(a1 + 58) == 1)
  {
    result = sub_1B964C670();
    if (v1)
    {
      return result;
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
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 80))
  {
    v36 = *(a1 + 88);
    v75 = *(a1 + 80);
    v76 = v36;
    sub_1B92C8A2C();
    result = sub_1B964C680();
    if (v1)
    {
      return result;
    }
  }

  swift_beginAccess();
  v37 = v70;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v37, 1, v77) == 1)
  {
    v77 = v10;
    sub_1B8D9207C(v37, &qword_1EBACB050, &unk_1B96B7BD0);
    v38 = v72;
  }

  else
  {
    sub_1B94FEB70();
    sub_1B8CD34A0(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
    sub_1B964C740();
    v38 = v72;
    if (v1)
    {
      return sub_1B94FEC20();
    }

    v77 = v10;
    sub_1B94FEC20();
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v38, 1, v69) == 1)
  {
    sub_1B8D9207C(v38, &qword_1EBACFDE8, &qword_1B96D3DF8);
  }

  else
  {
    sub_1B94FEB70();
    sub_1B8CD34A0(&qword_1EBACFE28, type metadata accessor for Searchfoundation_MediaItem);
    sub_1B964C740();
    if (v1)
    {
      return sub_1B94FEC20();
    }

    sub_1B94FEC20();
  }

  v39 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__details;
  swift_beginAccess();
  v40 = v68;
  if (*(*(a1 + v39) + 16))
  {
    type metadata accessor for Searchfoundation_MediaDetail(0);
    sub_1B8CD34A0(&qword_1EBACFE18, type metadata accessor for Searchfoundation_MediaDetail);

    sub_1B964C730();
    if (v1)
    {
    }

    v40 = v68;
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v40, 1, v66) == 1)
  {
    sub_1B8D9207C(v40, &qword_1EBACAFA8, &qword_1B96B9880);
    goto LABEL_45;
  }

  sub_1B94FEB70();
  sub_1B8CD34A0(&unk_1EBACAFB8, type metadata accessor for Searchfoundation_ActionItem);
  sub_1B964C740();
  if (v1)
  {
    return sub_1B94FEC20();
  }

  sub_1B94FEC20();
LABEL_45:
  v41 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__offers;
  swift_beginAccess();
  if (*(*(a1 + v41) + 16))
  {
    type metadata accessor for Searchfoundation_MediaOffer(0);
    sub_1B8CD34A0(&qword_1EBACAFE8, type metadata accessor for Searchfoundation_MediaOffer);

    sub_1B964C730();
    if (v1)
    {
    }
  }

  v42 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__watchListIdentifier);
  swift_beginAccess();
  v43 = *v42;
  v44 = v42[1];
  v45 = HIBYTE(v44) & 0xF;
  if ((v44 & 0x2000000000000000) == 0)
  {
    v45 = v43 & 0xFFFFFFFFFFFFLL;
  }

  if (!v45 || (, sub_1B964C700(), result = , !v2))
  {
    v46 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__watchListButtonLabel);
    swift_beginAccess();
    v47 = *v46;
    v48 = v46[1];
    v49 = HIBYTE(v48) & 0xF;
    if ((v48 & 0x2000000000000000) == 0)
    {
      v49 = v47 & 0xFFFFFFFFFFFFLL;
    }

    if (!v49 || (, sub_1B964C700(), result = , !v2))
    {
      v50 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__watchListContinuationText);
      swift_beginAccess();
      v51 = *v50;
      v52 = v50[1];
      v53 = HIBYTE(v52) & 0xF;
      if ((v52 & 0x2000000000000000) == 0)
      {
        v53 = v51 & 0xFFFFFFFFFFFFLL;
      }

      if (!v53 || (, sub_1B964C700(), result = , !v2))
      {
        v54 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__watchListConfirmationText);
        swift_beginAccess();
        v55 = *v54;
        v56 = v54[1];
        v57 = HIBYTE(v56) & 0xF;
        if ((v56 & 0x2000000000000000) == 0)
        {
          v57 = v55 & 0xFFFFFFFFFFFFLL;
        }

        if (!v57 || (, sub_1B964C700(), result = , !v2))
        {
          v58 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__isMediaContainer;
          swift_beginAccess();
          if (*(a1 + v58) != 1 || (result = sub_1B964C670(), !v2))
          {
            swift_beginAccess();
            v59 = v64;
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v59, 1, v7) == 1)
            {
              sub_1B8D9207C(v59, &qword_1EBACB1D0, &qword_1B96B9870);
            }

            else
            {
              sub_1B94FEB70();
              sub_1B8CD34A0(&qword_1ED9D3020, type metadata accessor for Searchfoundation_RichText);
              sub_1B964C740();
              result = sub_1B94FEC20();
              if (v2)
              {
                return result;
              }
            }

            v60 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__watchListItemType);
            result = swift_beginAccess();
            if (*v60)
            {
              v61 = *(v60 + 8);
              v73 = *v60;
              v74 = v61;
              sub_1B94FF0A0();
              return sub_1B964C680();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_MediaInfoCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_3_69();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {
    v5 = *(v1 + v2);

    v6 = sub_1B94FD3D4(v3, v4);

    if (!v6)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD34A0(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  return sub_1B964C850() & 1;
}

BOOL sub_1B94FD3D4(uint64_t a1, uint64_t a2)
{
  v152 = type metadata accessor for Searchfoundation_RichText();
  v4 = *(*(v152 - 8) + 64);
  MEMORY[0x1EEE9AC00](v152);
  v148 = &v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB230, &unk_1B96B8870);
  v6 = *(*(v150 - 8) + 64);
  MEMORY[0x1EEE9AC00](v150);
  v153 = &v147 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB1D0, &qword_1B96B9870);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v149 = (&v147 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v151 = &v147 - v12;
  v157 = type metadata accessor for Searchfoundation_ActionItem(0);
  v13 = *(*(v157 - 8) + 64);
  MEMORY[0x1EEE9AC00](v157);
  v154 = &v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFC0, &qword_1B96CA0E0);
  v15 = *(*(v156 - 8) + 64);
  MEMORY[0x1EEE9AC00](v156);
  v158 = &v147 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAFA8, &qword_1B96B9880);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v155 = &v147 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v165 = &v147 - v21;
  v163 = type metadata accessor for Searchfoundation_MediaItem(0);
  v22 = *(*(v163 - 8) + 64);
  MEMORY[0x1EEE9AC00](v163);
  v159 = &v147 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACFE10, &unk_1B96D4040);
  v24 = *(*(v162 - 8) + 64);
  MEMORY[0x1EEE9AC00](v162);
  v164 = &v147 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACFDE8, &qword_1B96D3DF8);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v161 = &v147 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v166 = &v147 - v30;
  v31 = type metadata accessor for Searchfoundation_Color(0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v160 = &v147 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v167 = &v147 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v37 - 8);
  v41 = &v147 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v147 - v42;
  swift_beginAccess();
  v44 = *(a1 + 16);
  swift_beginAccess();
  v45 = *(a2 + 16);

  sub_1B8D67B1C();
  v47 = v46;

  if ((v47 & 1) == 0)
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v49 = *(a1 + 24);
  v48 = *(a1 + 32);
  swift_beginAccess();
  v50 = v49 == *(a2 + 24) && v48 == *(a2 + 32);
  if (!v50 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v51 = *(a1 + 40);
  v52 = *(a1 + 48);
  swift_beginAccess();
  v53 = v51 == *(a2 + 40) && v52 == *(a2 + 48);
  if (!v53 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v54 = *(a1 + 56);
  swift_beginAccess();
  if (v54 != *(a2 + 56))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v55 = *(a1 + 57);
  swift_beginAccess();
  if (v55 != *(a2 + 57))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v56 = *(a1 + 58);
  swift_beginAccess();
  if (v56 != *(a2 + 58))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v57 = *(a1 + 64);
  v58 = *(a1 + 72);
  swift_beginAccess();
  v59 = v57 == *(a2 + 64) && v58 == *(a2 + 72);
  if (!v59 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  v60 = *(a1 + 80);
  v61 = *(a1 + 88);
  swift_beginAccess();
  v62 = *(a2 + 88);
  if (!sub_1B8D92198(v60, v61, *(a2 + 80)))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v63 = *(v34 + 48);
  v64 = v167;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v64, 1, v31) == 1)
  {
    sub_1B8D9207C(v43, &qword_1EBACB050, &unk_1B96B7BD0);
    if (__swift_getEnumTagSinglePayload(v64 + v63, 1, v31) == 1)
    {
      sub_1B8D9207C(v64, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_30;
    }

LABEL_26:
    v65 = &qword_1EBACB058;
    v66 = &unk_1B96CA9D0;
    v67 = v64;
LABEL_49:
    sub_1B8D9207C(v67, v65, v66);
    goto LABEL_50;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v64 + v63, 1, v31) == 1)
  {
    sub_1B8D9207C(v43, &qword_1EBACB050, &unk_1B96B7BD0);
    sub_1B94FEC20();
    goto LABEL_26;
  }

  v68 = v160;
  sub_1B94FEB70();
  v69 = *(v31 + 20);
  if (*&v41[v69] != *&v68[v69])
  {
    v70 = *&v41[v69];

    sub_1B947FDE4();
    v72 = v71;

    if ((v72 & 1) == 0)
    {
      sub_1B94FEC20();
      v96 = &qword_1EBACB050;
      v97 = &unk_1B96B7BD0;
      sub_1B8D9207C(v43, &qword_1EBACB050, &unk_1B96B7BD0);
      sub_1B94FEC20();
      v67 = v64;
      goto LABEL_48;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD34A0(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v73 = sub_1B964C850();
  sub_1B94FEC20();
  sub_1B8D9207C(v43, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B94FEC20();
  sub_1B8D9207C(v64, &qword_1EBACB050, &unk_1B96B7BD0);
  if ((v73 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_30:
  swift_beginAccess();
  v74 = v166;
  sub_1B8D92024();
  swift_beginAccess();
  v75 = *(v162 + 48);
  v76 = v164;
  sub_1B8D92024();
  sub_1B8D92024();
  v77 = v163;
  if (__swift_getEnumTagSinglePayload(v76, 1, v163) == 1)
  {
    sub_1B8D9207C(v74, &qword_1EBACFDE8, &qword_1B96D3DF8);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v76 + v75, 1, v77);
    v79 = v165;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v76, &qword_1EBACFDE8, &qword_1B96D3DF8);
      goto LABEL_39;
    }

    goto LABEL_35;
  }

  v80 = v161;
  sub_1B8D92024();
  v81 = __swift_getEnumTagSinglePayload(v76 + v75, 1, v77);
  v79 = v165;
  if (v81 == 1)
  {
    sub_1B8D9207C(v166, &qword_1EBACFDE8, &qword_1B96D3DF8);
    sub_1B94FEC20();
LABEL_35:
    v65 = &qword_1EBACFE10;
    v66 = &unk_1B96D4040;
    v67 = v76;
    goto LABEL_49;
  }

  v82 = v159;
  sub_1B94FEB70();
  if (*&v80[*(v77 + 20)] != *&v82[*(v77 + 20)])
  {

    sub_1B95049EC();
    v84 = v83;

    if ((v84 & 1) == 0)
    {
      sub_1B94FEC20();
      v96 = &qword_1EBACFDE8;
      v97 = &qword_1B96D3DF8;
      sub_1B8D9207C(v166, &qword_1EBACFDE8, &qword_1B96D3DF8);
      sub_1B94FEC20();
      v67 = v76;
      goto LABEL_48;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD34A0(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v85 = sub_1B964C850();
  sub_1B94FEC20();
  sub_1B8D9207C(v166, &qword_1EBACFDE8, &qword_1B96D3DF8);
  sub_1B94FEC20();
  sub_1B8D9207C(v76, &qword_1EBACFDE8, &qword_1B96D3DF8);
  if ((v85 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_39:
  v86 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__details;
  swift_beginAccess();
  v87 = *(a1 + v86);
  v88 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__details;
  swift_beginAccess();
  v89 = *(a2 + v88);

  sub_1B8D915B8();
  v91 = v90;

  if ((v91 & 1) == 0)
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v92 = *(v156 + 48);
  v93 = v158;
  sub_1B8D92024();
  v94 = v93;
  sub_1B8D92024();
  v95 = v157;
  if (__swift_getEnumTagSinglePayload(v93, 1, v157) != 1)
  {
    v98 = v155;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v94 + v92, 1, v95) == 1)
    {
      sub_1B8D9207C(v79, &qword_1EBACAFA8, &qword_1B96B9880);
      sub_1B94FEC20();
      goto LABEL_46;
    }

    v101 = v154;
    sub_1B94FEB70();
    v102 = *(v95 + 20);
    if (*&v98[v102] == *&v101[v102] || (v103 = *&v98[v102], , , sub_1B92C3040(), v105 = v104, , , (v105 & 1) != 0))
    {
      sub_1B964C2B0();
      sub_1B8CD34A0(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
      v106 = sub_1B964C850();
      sub_1B94FEC20();
      sub_1B8D9207C(v79, &qword_1EBACAFA8, &qword_1B96B9880);
      sub_1B94FEC20();
      sub_1B8D9207C(v158, &qword_1EBACAFA8, &qword_1B96B9880);
      if ((v106 & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_55;
    }

    sub_1B94FEC20();
    v96 = &qword_1EBACAFA8;
    v97 = &qword_1B96B9880;
    sub_1B8D9207C(v79, &qword_1EBACAFA8, &qword_1B96B9880);
    sub_1B94FEC20();
    v67 = v158;
LABEL_48:
    v65 = v96;
    v66 = v97;
    goto LABEL_49;
  }

  sub_1B8D9207C(v79, &qword_1EBACAFA8, &qword_1B96B9880);
  if (__swift_getEnumTagSinglePayload(v93 + v92, 1, v95) != 1)
  {
LABEL_46:
    v65 = &qword_1EBACAFC0;
    v66 = &qword_1B96CA0E0;
    v67 = v94;
    goto LABEL_49;
  }

  sub_1B8D9207C(v93, &qword_1EBACAFA8, &qword_1B96B9880);
LABEL_55:
  v107 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__offers;
  swift_beginAccess();
  v108 = *(a1 + v107);
  v109 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__offers;
  swift_beginAccess();
  v110 = *(a2 + v109);

  sub_1B8D91510();
  v112 = v111;

  if ((v112 & 1) == 0)
  {
    goto LABEL_50;
  }

  v113 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__watchListIdentifier);
  swift_beginAccess();
  v114 = *v113;
  v115 = v113[1];
  v116 = (a2 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__watchListIdentifier);
  swift_beginAccess();
  v117 = v114 == *v116 && v115 == v116[1];
  if (!v117 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_50;
  }

  v118 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__watchListButtonLabel);
  swift_beginAccess();
  v119 = *v118;
  v120 = v118[1];
  v121 = (a2 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__watchListButtonLabel);
  swift_beginAccess();
  v122 = v119 == *v121 && v120 == v121[1];
  if (!v122 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_50;
  }

  v123 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__watchListContinuationText);
  swift_beginAccess();
  v124 = *v123;
  v125 = v123[1];
  v126 = (a2 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__watchListContinuationText);
  swift_beginAccess();
  v127 = v124 == *v126 && v125 == v126[1];
  if (!v127 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_50;
  }

  v128 = (a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__watchListConfirmationText);
  swift_beginAccess();
  v129 = *v128;
  v130 = v128[1];
  v131 = (a2 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__watchListConfirmationText);
  swift_beginAccess();
  v132 = v129 == *v131 && v130 == v131[1];
  if (!v132 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_50;
  }

  v133 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__isMediaContainer;
  swift_beginAccess();
  LODWORD(v133) = *(a1 + v133);
  v134 = OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__isMediaContainer;
  swift_beginAccess();
  if (v133 != *(a2 + v134))
  {
    goto LABEL_50;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v135 = *(v150 + 48);
  v136 = v153;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v136, 1, v152) == 1)
  {
    sub_1B8D9207C(v151, &qword_1EBACB1D0, &qword_1B96B9870);
    if (__swift_getEnumTagSinglePayload(v153 + v135, 1, v152) == 1)
    {
      sub_1B8D9207C(v153, &qword_1EBACB1D0, &qword_1B96B9870);
LABEL_85:
      v141 = a1 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__watchListItemType;
      swift_beginAccess();
      v142 = *v141;
      v143 = *(v141 + 8);

      v144 = a2 + OBJC_IVAR____TtCV10PegasusAPI37Searchfoundation_MediaInfoCardSectionP33_2FA09E6CD413D5C791A58CBB39F9A7E513_StorageClass__watchListItemType;
      swift_beginAccess();
      v145 = *v144;
      v146 = *(v144 + 8);

      return sub_1B8D92198(v142, v143, v145);
    }

    goto LABEL_83;
  }

  v137 = v153;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v137 + v135, 1, v152) == 1)
  {
    sub_1B8D9207C(v151, &qword_1EBACB1D0, &qword_1B96B9870);
    sub_1B94FEC20();
LABEL_83:
    v65 = &qword_1EBACB230;
    v66 = &unk_1B96B8870;
    v67 = v153;
    goto LABEL_49;
  }

  v138 = v153;
  v139 = v148;
  sub_1B94FEB70();
  v140 = static Searchfoundation_RichText.== infix(_:_:)(v149, v139);
  sub_1B94FEC20();
  sub_1B8D9207C(v151, &qword_1EBACB1D0, &qword_1B96B9870);
  sub_1B94FEC20();
  sub_1B8D9207C(v138, &qword_1EBACB1D0, &qword_1B96B9870);
  if (v140)
  {
    goto LABEL_85;
  }

LABEL_50:

  return 0;
}

uint64_t Searchfoundation_MediaInfoCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_MediaInfoCardSection(0);
  sub_1B8CD34A0(&qword_1EBACFDF0, type metadata accessor for Searchfoundation_MediaInfoCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B94FEA00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD34A0(&qword_1EBACFE08, type metadata accessor for Searchfoundation_MediaInfoCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B94FEA80(uint64_t a1)
{
  v2 = sub_1B8CD34A0(&qword_1EBACE768, type metadata accessor for Searchfoundation_MediaInfoCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B94FEAF0()
{
  sub_1B8CD34A0(&qword_1EBACE768, type metadata accessor for Searchfoundation_MediaInfoCardSection);

  return sub_1B964C5D0();
}

uint64_t sub_1B94FEB70()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B94FEBC8()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B94FEC20()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1B94FEDBC()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_MediaInfoCardSection._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B94FEE48()
{
  sub_1B94FF04C(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_1B94FF04C(319, &qword_1ED9F2680, type metadata accessor for Searchfoundation_MediaItem);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_1B94FF04C(319, &qword_1ED9F2328, type metadata accessor for Searchfoundation_ActionItem);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_1B94FF04C(319, &qword_1ED9F2BC0, type metadata accessor for Searchfoundation_RichText);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1B94FF04C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_1B94FF0A0()
{
  result = qword_1EBACFE20;
  if (!qword_1EBACFE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACFE20);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_100(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Searchfoundation_MediaInfoCardSection(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_65()
{
  result = type metadata accessor for Searchfoundation_MediaInfoCardSection(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_3_69()
{
  result = type metadata accessor for Searchfoundation_MediaInfoCardSection(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_44()
{
  v0 = type metadata accessor for Searchfoundation_MediaInfoCardSection._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_12_34()
{
  v1 = *(v0 + *(type metadata accessor for Searchfoundation_MediaInfoCardSection(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_20_17()
{
  v1 = *(v0 + *(type metadata accessor for Searchfoundation_MediaInfoCardSection(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_32_23()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_53_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_65_11()
{

  return sub_1B94FEB70();
}

uint64_t OUTLINED_FUNCTION_67_7()
{

  return sub_1B94FEB70();
}

uint64_t Searchfoundation_MediaItem.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Searchfoundation_MediaItem(0) + 20);
  if (qword_1EBAB85A8 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EBACFE60;
}

uint64_t Searchfoundation_MediaDetail.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_MediaDetail.title.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Searchfoundation_MediaDetail.content.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = *(type metadata accessor for Searchfoundation_MediaDetail(v5) + 24);
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Searchfoundation_Text();
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_67_8();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8E40, &unk_1B964D640);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_84();
    OUTLINED_FUNCTION_182();
    return sub_1B9503174();
  }

  return result;
}

uint64_t Searchfoundation_MediaDetail.content.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = *(type metadata accessor for Searchfoundation_MediaDetail(v1) + 24);
  sub_1B8D9207C(v0 + v2, &qword_1EBAB8E40, &unk_1B964D640);
  OUTLINED_FUNCTION_1_84();
  OUTLINED_FUNCTION_122_0();
  sub_1B9503174();
  v3 = type metadata accessor for Searchfoundation_Text();

  return __swift_storeEnumTagSinglePayload(v0 + v2, 0, 1, v3);
}

uint64_t Searchfoundation_MediaDetail.content.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_Text();
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  *(v3 + 10) = *(type metadata accessor for Searchfoundation_MediaDetail(0) + 24);
  sub_1B8D92024();
  v11 = OUTLINED_FUNCTION_493();
  if (__swift_getEnumTagSinglePayload(v11, v12, v7) == 1)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    *(v10 + 4) = 0;
    v13 = v10 + *(v7 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = OUTLINED_FUNCTION_493();
    if (__swift_getEnumTagSinglePayload(v14, v15, v7) != 1)
    {
      sub_1B8D9207C(v6, &qword_1EBAB8E40, &unk_1B964D640);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_84();
    OUTLINED_FUNCTION_461();
    sub_1B9503174();
  }

  return OUTLINED_FUNCTION_105_0();
}

void sub_1B94FF698(uint64_t **a1, char a2)
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
    v9 = (*a1)[4];
    sub_1B95031CC();
    sub_1B8D9207C(v8 + v3, &qword_1EBAB8E40, &unk_1B964D640);
    sub_1B9503174();
    OUTLINED_FUNCTION_43_1();
    sub_1B9503224();
  }

  else
  {
    sub_1B8D9207C(v8 + v3, &qword_1EBAB8E40, &unk_1B964D640);
    OUTLINED_FUNCTION_1_84();
    sub_1B9503174();
    OUTLINED_FUNCTION_43_1();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

BOOL Searchfoundation_MediaDetail.hasContent.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = *(type metadata accessor for Searchfoundation_MediaDetail(v6) + 24);
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_Text();
  v8 = OUTLINED_FUNCTION_493();
  v11 = __swift_getEnumTagSinglePayload(v8, v9, v10) != 1;
  v12 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v12, v13, &unk_1B964D640);
  return v11;
}

Swift::Void __swiftcall Searchfoundation_MediaDetail.clearContent()()
{
  v1 = type metadata accessor for Searchfoundation_MediaDetail(0);
  sub_1B8D9207C(v0 + *(v1 + 24), &qword_1EBAB8E40, &unk_1B964D640);
  type metadata accessor for Searchfoundation_Text();
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_MediaDetail.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_MediaDetail(0) + 20);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Searchfoundation_MediaDetail.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_MediaDetail(v2) + 20);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Searchfoundation_MediaDetail.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_MediaDetail(v0) + 20);
  return nullsub_1;
}

uint64_t Searchfoundation_MediaDetail.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v2 = type metadata accessor for Searchfoundation_MediaDetail(0);
  v3 = a1 + *(v2 + 20);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 24);
  type metadata accessor for Searchfoundation_Text();
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Searchfoundation_MediaItem.title.getter()
{
  OUTLINED_FUNCTION_9_37();
  OUTLINED_FUNCTION_521();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B94FFA84(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Searchfoundation_MediaItem.title.setter();
}

uint64_t Searchfoundation_MediaItem.title.setter()
{
  OUTLINED_FUNCTION_16();
  v4 = OUTLINED_FUNCTION_29_31();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_32();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B9502AF0(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_18();
  v8 = *(v5 + 24);
  *(v5 + 16) = v2;
  *(v5 + 24) = v0;
}

uint64_t Searchfoundation_MediaItem.title.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_13_32();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_521();
  v5 = *(v4 + 24);
  *(v1 + 48) = *(v4 + 16);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B94FFBB0(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v4)
  {
    v5 = *(v1 + 64);

    OUTLINED_FUNCTION_461();
    Searchfoundation_MediaItem.title.setter();
    v6 = *(v1 + 56);
  }

  else
  {
    v7 = *(v1 + 72);
    v8 = *(v1 + 64);
    v9 = *(v8 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = *(v1 + 72);
      v13 = *(v1 + 64);
      OUTLINED_FUNCTION_16_32();
      v14 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B9502AF0(v14);
      *(v13 + v12) = v11;
    }

    OUTLINED_FUNCTION_18();
    v15 = *(v11 + 24);
    *(v11 + 16) = v3;
    *(v11 + 24) = v2;
  }

  free(v1);
}

uint64_t Searchfoundation_MediaItem.subtitleText.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_9_37();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Searchfoundation_Text();
  OUTLINED_FUNCTION_9_2();
  if (v5)
  {
    OUTLINED_FUNCTION_67_8();
    result = OUTLINED_FUNCTION_9_2();
    if (!v5)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8E40, &unk_1B964D640);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_84();
    OUTLINED_FUNCTION_182();
    return sub_1B9503174();
  }

  return result;
}

uint64_t sub_1B94FFD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1B95031CC();
  return a7(v13);
}

uint64_t Searchfoundation_MediaItem.subtitleText.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_29_31();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_32();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B9502AF0(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_1_84();
  OUTLINED_FUNCTION_69_8();
  v10 = type metadata accessor for Searchfoundation_Text();
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_MediaItem.subtitleText.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_71(v6);
  v7 = type metadata accessor for Searchfoundation_Text();
  OUTLINED_FUNCTION_59_1(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_9_37();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    *(v11 + 4) = 0;
    v13 = v11 + *(v7 + 24);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8E40, &unk_1B964D640);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_84();
    OUTLINED_FUNCTION_246();
    sub_1B9503174();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_MediaItem.thumbnail.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_29_31();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_32();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B9502AF0(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_69_8();
  v10 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_MediaItem.thumbnail.modify()
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
  OUTLINED_FUNCTION_9_37();
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
    OUTLINED_FUNCTION_0_101();
    OUTLINED_FUNCTION_246();
    sub_1B9503174();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

BOOL sub_1B95002E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  OUTLINED_FUNCTION_9_37();
  v16 = *a3;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v17 = a4(0);
  v18 = __swift_getEnumTagSinglePayload(v15, 1, v17) != 1;
  sub_1B8D9207C(v15, v5, v4);
  return v18;
}

uint64_t sub_1B95003E8(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t *a4)
{
  OUTLINED_FUNCTION_16();
  v7 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v14 = *(type metadata accessor for Searchfoundation_MediaItem(0) + 20);
  v15 = *(v4 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_16_32();
    v18 = OUTLINED_FUNCTION_40_0();
    *(v7 + v14) = sub_1B9502AF0(v18);
  }

  a3(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  v23 = *a4;
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B95004F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_9_37();
  v9 = *a1;
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_466();
  sub_1B8D92024();
  v10 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_9_2();
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(v10 + 20);
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5();
    }

    *(a2 + v12) = qword_1EBAB5608;
    v13 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, v14, v10);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v2, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B9503174();
  }

  return result;
}

uint64_t Searchfoundation_MediaItem.reviewGlyph.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_29_31();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_32();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B9502AF0(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_69_8();
  v10 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_MediaItem.reviewGlyph.modify()
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
  OUTLINED_FUNCTION_9_37();
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
    OUTLINED_FUNCTION_0_101();
    OUTLINED_FUNCTION_246();
    sub_1B9503174();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_MediaItem.overlayImage.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_29_31();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_32();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B9502AF0(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_69_8();
  v10 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_MediaItem.overlayImage.modify()
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
  OUTLINED_FUNCTION_9_37();
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
    OUTLINED_FUNCTION_0_101();
    OUTLINED_FUNCTION_246();
    sub_1B9503174();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9500B9C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Searchfoundation_MediaItem.reviewText.setter(v1, v2);
}

uint64_t Searchfoundation_MediaItem.reviewText.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_13_32();
  *(v1 + 72) = v3;
  v4 = (*(v0 + v3) + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__reviewText);
  OUTLINED_FUNCTION_543();
  OUTLINED_FUNCTION_521();
  v5 = v4[1];
  *(v1 + 48) = *v4;
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_MediaItem.punchout.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF90, &unk_1B96B77C0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_9_37();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Searchfoundation_Punchout();
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    Searchfoundation_Punchout.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v1, &qword_1EBACAF90, &unk_1B96B77C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_35();
    OUTLINED_FUNCTION_182();
    return sub_1B9503174();
  }

  return result;
}

uint64_t Searchfoundation_MediaItem.punchout.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF90, &unk_1B96B77C0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_29_31();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_32();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B9502AF0(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_12_35();
  OUTLINED_FUNCTION_69_8();
  v10 = type metadata accessor for Searchfoundation_Punchout();
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_MediaItem.punchout.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_71(v6);
  v7 = type metadata accessor for Searchfoundation_Punchout();
  OUTLINED_FUNCTION_59_1(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_9_37();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v11[2] = 0;
    v11[3] = 0xE000000000000000;
    v11[4] = 0;
    v11[5] = 0xE000000000000000;
    v11[6] = MEMORY[0x1E69E7CC0];
    v11[7] = 0;
    v11[8] = 0xE000000000000000;
    *(v11 + 36) = 0;
    *(v11 + 74) = 0;
    v13 = v11 + *(v7 + 48);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = *(v7 + 52);
    type metadata accessor for Searchfoundation_UserActivityData(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBACAF90, &unk_1B96B77C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_35();
    OUTLINED_FUNCTION_246();
    sub_1B9503174();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B950103C(uint64_t *a1)
{
  v1 = *a1;

  return Searchfoundation_MediaItem.subtitleCustomLineBreaking.setter(v2);
}

uint64_t Searchfoundation_MediaItem.subtitleCustomLineBreaking.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_13_32();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__subtitleCustomLineBreaking;
  OUTLINED_FUNCTION_521();
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B9501124(uint64_t *a1)
{
  OUTLINED_FUNCTION_9_37();
  v3 = *a1;
  OUTLINED_FUNCTION_521();
  v4 = *(v1 + v3);
}

uint64_t sub_1B9501168(uint64_t *a1)
{
  v1 = *a1;

  return Searchfoundation_MediaItem.buyOptions.setter(v2);
}

uint64_t sub_1B95011A0(uint64_t a1, uint64_t *a2)
{
  v6 = OUTLINED_FUNCTION_29_31();
  v7 = *(v2 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_32();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B9502AF0(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  v10 = *a2;
  OUTLINED_FUNCTION_18();
  v11 = *(v7 + v10);
  *(v7 + v10) = a1;
}

uint64_t Searchfoundation_MediaItem.buyOptions.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_13_32();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__buyOptions;
  OUTLINED_FUNCTION_521();
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_514();
}

void sub_1B95012BC(uint64_t *a1, char a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  if (a2)
  {
    v7 = *(v4 + 56);
    v8 = *(*a1 + 48);

    a4(v9);
    v10 = *(v4 + 48);
  }

  else
  {
    v12 = *(v4 + 64);
    v13 = *(v4 + 56);
    v14 = *(v13 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v13 + v12);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v4 + 64);
      v18 = *(v4 + 56);
      OUTLINED_FUNCTION_16_32();
      v19 = OUTLINED_FUNCTION_40_0();
      v16 = sub_1B9502AF0(v19);
      *(v18 + v17) = v16;
    }

    v20 = *a3;
    OUTLINED_FUNCTION_18();
    v21 = *(v16 + v20);
    *(v16 + v20) = v5;
  }

  free(v4);
}

uint64_t sub_1B950138C(void *a1)
{
  OUTLINED_FUNCTION_13_32();
  v4 = (*(v1 + v3) + *a1);
  OUTLINED_FUNCTION_521();
  v6 = *v4;
  v5 = v4[1];

  return OUTLINED_FUNCTION_288();
}

uint64_t sub_1B95013E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Searchfoundation_MediaItem.contentAdvisory.setter(v1, v2);
}

uint64_t sub_1B950142C(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = v4;
  OUTLINED_FUNCTION_16();
  v8 = *(type metadata accessor for Searchfoundation_MediaItem(0) + 20);
  v9 = *(v4 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_16_32();
    v12 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B9502AF0(v12);
    *(v7 + v8) = v11;
  }

  v13 = (v11 + *a3);
  OUTLINED_FUNCTION_18();
  v14 = v13[1];
  *v13 = v5;
  v13[1] = v3;
}

uint64_t Searchfoundation_MediaItem.contentAdvisory.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_99(v2) + 64) = v0;
  OUTLINED_FUNCTION_13_32();
  *(v1 + 72) = v3;
  v4 = (*(v0 + v3) + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__contentAdvisory);
  OUTLINED_FUNCTION_543();
  OUTLINED_FUNCTION_521();
  v5 = v4[1];
  *(v1 + 48) = *v4;
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9501560(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    v7 = v5;
    v8 = *(v1 + 64);

    v9 = OUTLINED_FUNCTION_461();
    v7(v9);
    v10 = *(v1 + 56);
  }

  else
  {
    v11 = v4;
    v12 = *(v1 + 72);
    v13 = *(v1 + 64);
    v14 = *(v13 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v13 + v12);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v1 + 72);
      v18 = *(v1 + 64);
      OUTLINED_FUNCTION_16_32();
      v19 = OUTLINED_FUNCTION_40_0();
      v16 = sub_1B9502AF0(v19);
      *(v18 + v17) = v16;
    }

    v20 = (v16 + *v11);
    OUTLINED_FUNCTION_18();
    v21 = v20[1];
    *v20 = v3;
    v20[1] = v2;
  }

  free(v1);
}

uint64_t Searchfoundation_MediaItem.contentAdvisoryImage.setter()
{
  OUTLINED_FUNCTION_183_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_29_31();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_32();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B9502AF0(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_0_101();
  OUTLINED_FUNCTION_69_8();
  v10 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_MediaItem.contentAdvisoryImage.modify()
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
  OUTLINED_FUNCTION_9_37();
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
    OUTLINED_FUNCTION_0_101();
    OUTLINED_FUNCTION_246();
    sub_1B9503174();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B950187C(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 32);
  if (a2)
  {
    OUTLINED_FUNCTION_186();
    sub_1B95031CC();
    a3(v5);
    sub_1B9503224();
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

uint64_t Searchfoundation_MediaItem.unknownFields.getter()
{
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Searchfoundation_MediaItem.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_288();

  return v4(v3);
}

uint64_t sub_1B9501A78()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACFE30);
  __swift_project_value_buffer(v0, qword_1EBACFE30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "content";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_MediaDetail.decodeMessage<A>(decoder:)()
{
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
      OUTLINED_FUNCTION_288();
      sub_1B9501CE4();
    }

    else if (result == 1)
    {
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B9501CE4()
{
  v0 = *(type metadata accessor for Searchfoundation_MediaDetail(0) + 24);
  type metadata accessor for Searchfoundation_Text();
  sub_1B9505FC8(&qword_1ED9D3090, type metadata accessor for Searchfoundation_Text);
  return sub_1B964C580();
}

uint64_t Searchfoundation_MediaDetail.traverse<A>(visitor:)(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  OUTLINED_FUNCTION_183(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v22 - v9;
  v11 = type metadata accessor for Searchfoundation_Text();
  v12 = OUTLINED_FUNCTION_59_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v15 = *v3;
  v16 = v3[1];
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17 || (result = sub_1B964C700(), !v2))
  {
    v22[1] = a1;
    v19 = type metadata accessor for Searchfoundation_MediaDetail(0);
    v20 = *(v19 + 24);
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      sub_1B8D9207C(v10, &qword_1EBAB8E40, &unk_1B964D640);
    }

    else
    {
      sub_1B9503174();
      sub_1B9505FC8(&qword_1ED9D3090, type metadata accessor for Searchfoundation_Text);
      sub_1B964C740();
      result = sub_1B9503224();
      if (v2)
      {
        return result;
      }
    }

    v21 = v3 + *(v19 + 20);
    return sub_1B964C290();
  }

  return result;
}

void static Searchfoundation_MediaDetail.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  v3 = type metadata accessor for Searchfoundation_Text();
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E48, &unk_1B96CCC40);
  OUTLINED_FUNCTION_59_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_88();
  v20 = *v1 == *v0 && v1[1] == v0[1];
  if (v20 || (sub_1B964C9F0() & 1) != 0)
  {
    v35 = type metadata accessor for Searchfoundation_MediaDetail(0);
    v21 = *(v35 + 24);
    v22 = *(v16 + 48);
    sub_1B8D92024();
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v2);
    if (v20)
    {
      OUTLINED_FUNCTION_37_0(v2 + v22);
      if (v20)
      {
        sub_1B8D9207C(v2, &qword_1EBAB8E40, &unk_1B964D640);
LABEL_11:
        v23 = *(v35 + 20);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_2_66();
        sub_1B9505FC8(v24, v25);
        sub_1B964C850();
        goto LABEL_26;
      }
    }

    else
    {
      sub_1B8D92024();
      OUTLINED_FUNCTION_37_0(v2 + v22);
      if (!v26)
      {
        OUTLINED_FUNCTION_1_84();
        sub_1B9503174();
        v29 = *v15 == *v9 && *(v15 + 1) == *(v9 + 8);
        if (v29 || (sub_1B964C9F0()) && *(v15 + 4) == *(v9 + 16))
        {
          v30 = *(v3 + 24);
          sub_1B964C2B0();
          OUTLINED_FUNCTION_2_66();
          sub_1B9505FC8(v31, v32);
          v33 = sub_1B964C850();
          sub_1B9503224();
          sub_1B9503224();
          sub_1B8D9207C(v2, &qword_1EBAB8E40, &unk_1B964D640);
          if ((v33 & 1) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_11;
        }

        sub_1B9503224();
        sub_1B9503224();
        v27 = &qword_1EBAB8E40;
        v28 = &unk_1B964D640;
LABEL_25:
        sub_1B8D9207C(v2, v27, v28);
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_35_16();
      sub_1B9503224();
    }

    v27 = &qword_1EBAB8E48;
    v28 = &unk_1B96CCC40;
    goto LABEL_25;
  }

LABEL_26:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B95023B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9505FC8(&qword_1EBACFEB0, type metadata accessor for Searchfoundation_MediaDetail);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9502438(uint64_t a1)
{
  v2 = sub_1B9505FC8(&qword_1EBACFE18, type metadata accessor for Searchfoundation_MediaDetail);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95024A8()
{
  sub_1B9505FC8(&qword_1EBACFE18, type metadata accessor for Searchfoundation_MediaDetail);

  return sub_1B964C5D0();
}

uint64_t sub_1B9502544()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACFE48);
  __swift_project_value_buffer(v0, qword_1EBACFE48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1B96511C0;
  v4 = v29 + v3;
  v5 = v29 + v3 + v1[14];
  *(v29 + v3) = 1;
  *v5 = "title";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "subtitleText";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "thumbnail";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "reviewGlyph";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "overlayImage";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "reviewText";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "punchout";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "subtitleCustomLineBreaking";
  *(v21 + 1) = 26;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "buyOptions";
  *(v23 + 1) = 10;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "contentAdvisory";
  *(v25 + 1) = 15;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "contentAdvisoryImage";
  *(v27 + 1) = 20;
  v27[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B950294C()
{
  OUTLINED_FUNCTION_16_32();
  result = sub_1B95029BC();
  qword_1EBACFE60 = result;
  return result;
}

uint64_t sub_1B95029BC()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__subtitleText;
  v2 = type metadata accessor for Searchfoundation_Text();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__thumbnail;
  v4 = type metadata accessor for Searchfoundation_Image(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__reviewGlyph, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__overlayImage, 1, 1, v4);
  v5 = (v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__reviewText);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__punchout;
  v7 = type metadata accessor for Searchfoundation_Punchout();
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  v8 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__subtitleCustomLineBreaking) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__buyOptions) = v8;
  v9 = (v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__contentAdvisory);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__contentAdvisoryImage, 1, 1, v4);
  return v0;
}

uint64_t sub_1B9502AF0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF90, &unk_1B96B77C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v45 = v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41[2] = v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v11 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__subtitleText;
  v12 = type metadata accessor for Searchfoundation_Text();
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__thumbnail;
  v14 = type metadata accessor for Searchfoundation_Image(0);
  __swift_storeEnumTagSinglePayload(v1 + v13, 1, 1, v14);
  v41[1] = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__reviewGlyph;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__reviewGlyph, 1, 1, v14);
  v41[3] = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__overlayImage;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__overlayImage, 1, 1, v14);
  v15 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__reviewText);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__punchout;
  v41[4] = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__punchout;
  v17 = type metadata accessor for Searchfoundation_Punchout();
  __swift_storeEnumTagSinglePayload(v1 + v16, 1, 1, v17);
  v42 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__subtitleCustomLineBreaking;
  v18 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__subtitleCustomLineBreaking) = MEMORY[0x1E69E7CC0];
  v19 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__buyOptions;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__buyOptions) = v18;
  v20 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__contentAdvisory);
  v43 = v19;
  v44 = v20;
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v46 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__contentAdvisoryImage;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__contentAdvisoryImage, 1, 1, v14);
  swift_beginAccess();
  v22 = *(a1 + 16);
  v21 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v22;
  *(v1 + 24) = v21;
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
  v23 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__reviewText);
  swift_beginAccess();
  v25 = *v23;
  v24 = v23[1];
  swift_beginAccess();
  v26 = v15[1];
  *v15 = v25;
  v15[1] = v24;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v27 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__subtitleCustomLineBreaking;
  swift_beginAccess();
  v28 = *(a1 + v27);
  v29 = v42;
  swift_beginAccess();
  v30 = *(v1 + v29);
  *(v1 + v29) = v28;

  v31 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__buyOptions;
  swift_beginAccess();
  v32 = *(a1 + v31);
  v33 = v43;
  swift_beginAccess();
  v34 = *(v1 + v33);
  *(v1 + v33) = v32;

  v35 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__contentAdvisory);
  swift_beginAccess();
  v37 = *v35;
  v36 = v35[1];
  v38 = v44;
  swift_beginAccess();
  v39 = v38[1];
  *v38 = v37;
  v38[1] = v36;

  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v1;
}

uint64_t sub_1B9503174()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B95031CC()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B9503224()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1B9503278()
{
  v1 = *(v0 + 24);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__subtitleText, &qword_1EBAB8E40, &unk_1B964D640);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__thumbnail, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__reviewGlyph, &qword_1EBAB8EA8, &unk_1B96B77D0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__overlayImage, &qword_1EBAB8EA8, &unk_1B96B77D0);
  v2 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__reviewText + 8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__punchout, &qword_1EBACAF90, &unk_1B96B77C0);
  v3 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__subtitleCustomLineBreaking);

  v4 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__buyOptions);

  v5 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__contentAdvisory + 8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__contentAdvisoryImage, &qword_1EBAB8EA8, &unk_1B96B77D0);
  return v0;
}

uint64_t sub_1B95033A0()
{
  v0 = sub_1B9503278();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Searchfoundation_MediaItem.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Searchfoundation_MediaItem(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Searchfoundation_MediaItem._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B9502AF0(v15);
    *(v4 + v8) = v11;
  }

  return sub_1B9503494(v11, a1, a2, a3);
}

uint64_t sub_1B9503494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        break;
      case 2:
        sub_1B9503650();
        break;
      case 3:
        sub_1B950372C();
        break;
      case 4:
        sub_1B9503808();
        break;
      case 5:
        sub_1B95038E4();
        break;
      case 6:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__reviewText;
        goto LABEL_12;
      case 7:
        sub_1B95039C0();
        break;
      case 8:
        sub_1B9503A9C();
        break;
      case 9:
        sub_1B9503B28();
        break;
      case 10:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__contentAdvisory;
LABEL_12:
        sub_1B8EB8AB0(v11, v12, v13, v14, v15);
        break;
      case 11:
        sub_1B9503C04();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9503650()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Text();
  sub_1B9505FC8(&qword_1ED9D3090, type metadata accessor for Searchfoundation_Text);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B950372C()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B9505FC8(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9503808()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B9505FC8(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B95038E4()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B9505FC8(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B95039C0()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Punchout();
  sub_1B9505FC8(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9503A9C()
{
  swift_beginAccess();
  sub_1B964C4D0();
  return swift_endAccess();
}

uint64_t sub_1B9503B28()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_MediaOffer(0);
  sub_1B9505FC8(&qword_1EBACAFE8, type metadata accessor for Searchfoundation_MediaOffer);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B9503C04()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Image(0);
  sub_1B9505FC8(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t Searchfoundation_MediaItem.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Searchfoundation_MediaItem(0);
  result = sub_1B9503D48(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B9503D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v74 = a4;
  v73 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF90, &unk_1B96B77C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v72 = &v60 - v9;
  v65 = type metadata accessor for Searchfoundation_Punchout();
  v10 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v67 = &v60 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v69 = &v60 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v70 = &v60 - v21;
  v71 = type metadata accessor for Searchfoundation_Image(0);
  v22 = *(*(v71 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v71);
  v62 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v64 = &v60 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v66 = &v60 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v68 = &v60 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = &v60 - v32;
  v34 = type metadata accessor for Searchfoundation_Text();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  swift_beginAccess();
  v36 = a1;
  v37 = *(a1 + 16);
  v38 = *(a1 + 24);
  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = v37 & 0xFFFFFFFFFFFFLL;
  }

  if (v39)
  {

    sub_1B964C700();
    if (v5)
    {
    }

    v61 = v16;
  }

  else
  {
    v61 = v16;
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v33, 1, v34) == 1)
  {
    sub_1B8D9207C(v33, &qword_1EBAB8E40, &unk_1B964D640);
    v41 = v5;
  }

  else
  {
    sub_1B9503174();
    sub_1B9505FC8(&qword_1ED9D3090, type metadata accessor for Searchfoundation_Text);
    sub_1B964C740();
    v41 = v5;
    if (v5)
    {
      return sub_1B9503224();
    }

    sub_1B9503224();
  }

  v42 = v36;
  swift_beginAccess();
  v43 = v70;
  sub_1B8D92024();
  v44 = v71;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, 1, v71);
  v46 = v72;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v43, &qword_1EBAB8EA8, &unk_1B96B77D0);
  }

  else
  {
    sub_1B9503174();
    sub_1B9505FC8(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
    sub_1B964C740();
    if (v41)
    {
      return sub_1B9503224();
    }

    sub_1B9503224();
  }

  swift_beginAccess();
  v47 = v69;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v47, 1, v44) == 1)
  {
    sub_1B8D9207C(v47, &qword_1EBAB8EA8, &unk_1B96B77D0);
    goto LABEL_22;
  }

  sub_1B9503174();
  sub_1B9505FC8(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
  sub_1B964C740();
  if (v41)
  {
    return sub_1B9503224();
  }

  sub_1B9503224();
LABEL_22:
  swift_beginAccess();
  v48 = v67;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v48, 1, v44) == 1)
  {
    sub_1B8D9207C(v48, &qword_1EBAB8EA8, &unk_1B96B77D0);
  }

  else
  {
    sub_1B9503174();
    sub_1B9505FC8(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
    sub_1B964C740();
    result = sub_1B9503224();
    if (v41)
    {
      return result;
    }

    v46 = v72;
  }

  v49 = (v42 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__reviewText);
  swift_beginAccess();
  v50 = *v49;
  v51 = v49[1];
  v52 = HIBYTE(v51) & 0xF;
  if ((v51 & 0x2000000000000000) == 0)
  {
    v52 = v50 & 0xFFFFFFFFFFFFLL;
  }

  if (!v52 || (, sub_1B964C700(), result = , !v41))
  {
    swift_beginAccess();
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v46, 1, v65) == 1)
    {
      sub_1B8D9207C(v46, &qword_1EBACAF90, &unk_1B96B77C0);
    }

    else
    {
      sub_1B9503174();
      sub_1B9505FC8(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
      sub_1B964C740();
      result = sub_1B9503224();
      if (v41)
      {
        return result;
      }
    }

    v53 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__subtitleCustomLineBreaking;
    swift_beginAccess();
    if (!*(*(v42 + v53) + 16) || (, sub_1B964C6E0(), result = , !v41))
    {
      v54 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__buyOptions;
      swift_beginAccess();
      if (!*(*(v42 + v54) + 16) || (type metadata accessor for Searchfoundation_MediaOffer(0), sub_1B9505FC8(&qword_1EBACAFE8, type metadata accessor for Searchfoundation_MediaOffer), , sub_1B964C730(), result = , !v41))
      {
        v55 = (v42 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__contentAdvisory);
        swift_beginAccess();
        v56 = *v55;
        v57 = v55[1];
        v58 = HIBYTE(v57) & 0xF;
        if ((v57 & 0x2000000000000000) == 0)
        {
          v58 = v56 & 0xFFFFFFFFFFFFLL;
        }

        if (!v58 || (, sub_1B964C700(), result = , !v41))
        {
          swift_beginAccess();
          v59 = v61;
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v59, 1, v44) == 1)
          {
            return sub_1B8D9207C(v59, &qword_1EBAB8EA8, &unk_1B96B77D0);
          }

          sub_1B9503174();
          sub_1B9505FC8(&qword_1ED9D3080, type metadata accessor for Searchfoundation_Image);
          sub_1B964C740();
          return sub_1B9503224();
        }
      }
    }
  }

  return result;
}

uint64_t static Searchfoundation_MediaItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_13_32();
  if (*(v1 + v2) != *(v0 + v2))
  {
    v3 = *(v1 + v2);

    sub_1B95049EC();
    v5 = v4;

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_66();
  sub_1B9505FC8(v6, v7);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

void sub_1B95049EC()
{
  OUTLINED_FUNCTION_284();
  v1 = v0;
  v3 = v2;
  v199 = type metadata accessor for Searchfoundation_Punchout();
  v4 = OUTLINED_FUNCTION_59_1(v199);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v195 = v8 - v7;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB028, &unk_1B96B98F0);
  OUTLINED_FUNCTION_59_1(v198);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v200 = &v190 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF90, &unk_1B96B77C0);
  v14 = OUTLINED_FUNCTION_183(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_66();
  v196 = v17 - v18;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_266_0();
  v202 = v20;
  v216 = type metadata accessor for Searchfoundation_Image(0);
  v21 = OUTLINED_FUNCTION_59_1(v216);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_66();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_682();
  v197 = v28;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_682();
  v203 = v30;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_266_0();
  v207 = v32;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EB0, &qword_1B964D6B0);
  v33 = OUTLINED_FUNCTION_59_1(v214);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_66();
  v38 = v36 - v37;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_682();
  v205 = v40;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_682();
  v209 = v42;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_266_0();
  v213 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  v46 = OUTLINED_FUNCTION_183(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_66();
  v194 = v49 - v50;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_682();
  v201 = v52;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_682();
  v204 = v54;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_682();
  v206 = v56;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_682();
  v208 = v58;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_682();
  v210 = v60;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_682();
  v211 = v62;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_266_0();
  v218 = v64;
  v217 = type metadata accessor for Searchfoundation_Text();
  v65 = OUTLINED_FUNCTION_59_1(v217);
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_62();
  v212 = v69 - v68;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E48, &unk_1B96CCC40);
  OUTLINED_FUNCTION_59_1(v70);
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v190 - v74;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E40, &unk_1B964D640);
  v77 = OUTLINED_FUNCTION_183(v76);
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_66();
  v215 = v80 - v81;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v190 - v83;
  OUTLINED_FUNCTION_521();
  v86 = *(v3 + 16);
  v85 = *(v3 + 24);
  OUTLINED_FUNCTION_521();
  v87 = v86 == *(v1 + 16) && v85 == *(v1 + 24);
  if (v87 || (sub_1B964C9F0() & 1) != 0)
  {
    v192 = v26;
    v193 = v38;
    v88 = v1;
    OUTLINED_FUNCTION_521();
    sub_1B8D92024();
    OUTLINED_FUNCTION_521();
    v89 = *(v70 + 48);
    sub_1B8D92024();
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v75, 1, v217) == 1)
    {

      sub_1B8D9207C(v84, &qword_1EBAB8E40, &unk_1B964D640);
      OUTLINED_FUNCTION_37_0(&v75[v89]);
      v90 = v218;
      if (!v87)
      {
        goto LABEL_18;
      }

      sub_1B8D9207C(v75, &qword_1EBAB8E40, &unk_1B964D640);
    }

    else
    {
      v94 = v215;
      sub_1B8D92024();
      OUTLINED_FUNCTION_37_0(&v75[v89]);
      v90 = v218;
      if (v87)
      {

        sub_1B8D9207C(v84, &qword_1EBAB8E40, &unk_1B964D640);
        OUTLINED_FUNCTION_35_16();
        sub_1B9503224();
LABEL_18:
        v95 = &qword_1EBAB8E48;
        v96 = &unk_1B96CCC40;
        v97 = v75;
LABEL_57:
        sub_1B8D9207C(v97, v95, v96);
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_1_84();
      v98 = v212;
      sub_1B9503174();
      v99 = *v94 == *v98 && *(v94 + 8) == *(v98 + 8);
      if (!v99 && (sub_1B964C9F0() & 1) == 0 || *(v94 + 16) != *(v98 + 16))
      {

        v110 = &unk_1B964D640;
        sub_1B8D9207C(v84, &qword_1EBAB8E40, &unk_1B964D640);
        OUTLINED_FUNCTION_36_10();
        sub_1B9503224();
        sub_1B9503224();
        v97 = v75;
        v95 = &qword_1EBAB8E40;
LABEL_28:
        v96 = v110;
        goto LABEL_57;
      }

      v191 = v88;
      v100 = *(v217 + 24);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_2_66();
      sub_1B9505FC8(v101, v102);

      v103 = sub_1B964C850();
      OUTLINED_FUNCTION_466();
      sub_1B8D9207C(v104, v105, v106);
      OUTLINED_FUNCTION_36_10();
      sub_1B9503224();
      v88 = v191;
      sub_1B9503224();
      OUTLINED_FUNCTION_466();
      sub_1B8D9207C(v107, v108, v109);
      if ((v103 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    OUTLINED_FUNCTION_521();
    OUTLINED_FUNCTION_485();
    sub_1B8D92024();
    OUTLINED_FUNCTION_521();
    OUTLINED_FUNCTION_59_14();
    v91 = v90;
    v92 = v213;
    OUTLINED_FUNCTION_485();
    sub_1B8D92024();
    v93 = v92;
    OUTLINED_FUNCTION_84_0();
    OUTLINED_FUNCTION_8_43(v92);
    if (v87)
    {
      sub_1B8D9207C(v91, &qword_1EBAB8EA8, &unk_1B96B77D0);
      OUTLINED_FUNCTION_8_43(&unk_1ED9E3000 + v92);
      if (!v87)
      {
        goto LABEL_56;
      }

      sub_1B8D9207C(v92, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }

    else
    {
      v111 = v211;
      sub_1B8D92024();
      OUTLINED_FUNCTION_8_43(&unk_1ED9E3000 + v92);
      if (v112)
      {
        v113 = v218;
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_0_101();
      v114 = v207;
      sub_1B9503174();
      OUTLINED_FUNCTION_58_14();
      if (v111 != *(v114 + v115))
      {

        OUTLINED_FUNCTION_543();
        sub_1B94C6890();
        OUTLINED_FUNCTION_649();

        if ((&unk_1ED9E3000 & 1) == 0)
        {
          goto LABEL_77;
        }
      }

      sub_1B964C2B0();
      OUTLINED_FUNCTION_2_66();
      sub_1B9505FC8(v116, v117);
      OUTLINED_FUNCTION_485();
      LODWORD(v217) = sub_1B964C850();
      OUTLINED_FUNCTION_4_57();
      sub_1B9503224();
      OUTLINED_FUNCTION_80_8(v218);
      sub_1B9503224();
      OUTLINED_FUNCTION_80_8(v93);
      if ((v217 & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    OUTLINED_FUNCTION_521();
    v118 = v210;
    OUTLINED_FUNCTION_485();
    sub_1B8D92024();
    OUTLINED_FUNCTION_521();
    OUTLINED_FUNCTION_59_14();
    v119 = v209;
    OUTLINED_FUNCTION_84_0();
    v93 = v119;
    OUTLINED_FUNCTION_84_0();
    OUTLINED_FUNCTION_8_43(v119);
    if (v87)
    {
      sub_1B8D9207C(v118, &qword_1EBAB8EA8, &unk_1B96B77D0);
      OUTLINED_FUNCTION_8_43(&unk_1ED9E3000 + v119);
      if (!v87)
      {
        goto LABEL_56;
      }

      sub_1B8D9207C(v119, &qword_1EBAB8EA8, &unk_1B96B77D0);
      goto LABEL_46;
    }

    v120 = v208;
    sub_1B8D92024();
    OUTLINED_FUNCTION_8_43(&unk_1ED9E3000 + v119);
    if (v121)
    {
      v113 = v210;
      goto LABEL_55;
    }

    OUTLINED_FUNCTION_0_101();
    v122 = v203;
    sub_1B9503174();
    OUTLINED_FUNCTION_58_14();
    if (v120 == *(v122 + v123) || (, , OUTLINED_FUNCTION_543(), sub_1B94C6890(), OUTLINED_FUNCTION_649(), , (&unk_1ED9E3000 & 1) != 0))
    {
      sub_1B964C2B0();
      OUTLINED_FUNCTION_2_66();
      sub_1B9505FC8(v124, v125);
      v126 = sub_1B964C850();
      OUTLINED_FUNCTION_4_57();
      sub_1B9503224();
      OUTLINED_FUNCTION_80_8(v210);
      OUTLINED_FUNCTION_461();
      sub_1B9503224();
      OUTLINED_FUNCTION_80_8(v93);
      if (v126)
      {
LABEL_46:
        OUTLINED_FUNCTION_521();
        v127 = v206;
        OUTLINED_FUNCTION_84_0();
        OUTLINED_FUNCTION_521();
        v128 = *(v214 + 48);
        v93 = v205;
        OUTLINED_FUNCTION_84_0();
        OUTLINED_FUNCTION_84_0();
        OUTLINED_FUNCTION_8_43(v93);
        if (v87)
        {
          sub_1B8D9207C(v127, &qword_1EBAB8EA8, &unk_1B96B77D0);
          OUTLINED_FUNCTION_8_43(v93 + v128);
          if (v87)
          {
            sub_1B8D9207C(v93, &qword_1EBAB8EA8, &unk_1B96B77D0);
            goto LABEL_63;
          }

LABEL_56:
          v95 = &qword_1EBAB8EB0;
          v96 = &qword_1B964D6B0;
          v97 = v93;
          goto LABEL_57;
        }

        v129 = v204;
        sub_1B8D92024();
        OUTLINED_FUNCTION_8_43(v93 + v128);
        if (!v130)
        {
          OUTLINED_FUNCTION_0_101();
          v131 = v197;
          sub_1B9503174();
          OUTLINED_FUNCTION_58_14();
          if (v129 == *(v131 + v132) || (, , OUTLINED_FUNCTION_543(), sub_1B94C6890(), OUTLINED_FUNCTION_649(), , (v128 & 1) != 0))
          {
            sub_1B964C2B0();
            OUTLINED_FUNCTION_2_66();
            sub_1B9505FC8(v133, v134);
            OUTLINED_FUNCTION_485();
            v135 = sub_1B964C850();
            OUTLINED_FUNCTION_4_57();
            sub_1B9503224();
            OUTLINED_FUNCTION_485();
            sub_1B8D9207C(v136, v137, v138);
            OUTLINED_FUNCTION_461();
            sub_1B9503224();
            OUTLINED_FUNCTION_485();
            sub_1B8D9207C(v139, v140, v141);
            if ((v135 & 1) == 0)
            {
              goto LABEL_58;
            }

LABEL_63:
            v142 = (v3 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__reviewText);
            OUTLINED_FUNCTION_521();
            v143 = *v142;
            v144 = v142[1];
            v145 = (v88 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__reviewText);
            OUTLINED_FUNCTION_521();
            if (v143 != *v145 || v144 != v145[1])
            {
              OUTLINED_FUNCTION_543();
              if ((sub_1B964C9F0() & 1) == 0)
              {
                goto LABEL_58;
              }
            }

            OUTLINED_FUNCTION_521();
            v147 = v202;
            OUTLINED_FUNCTION_485();
            sub_1B8D92024();
            OUTLINED_FUNCTION_521();
            v148 = *(v198 + 48);
            v149 = v200;
            OUTLINED_FUNCTION_84_0();
            OUTLINED_FUNCTION_84_0();
            if (__swift_getEnumTagSinglePayload(v149, 1, v199) == 1)
            {
              sub_1B8D9207C(v147, &qword_1EBACAF90, &unk_1B96B77C0);
              OUTLINED_FUNCTION_37_0(v149 + v148);
              v150 = v201;
              if (!v87)
              {
                goto LABEL_76;
              }

              sub_1B8D9207C(v149, &qword_1EBACAF90, &unk_1B96B77C0);
            }

            else
            {
              sub_1B8D92024();
              OUTLINED_FUNCTION_37_0(v149 + v148);
              v150 = v201;
              if (v87)
              {
                sub_1B8D9207C(v202, &qword_1EBACAF90, &unk_1B96B77C0);
                sub_1B9503224();
LABEL_76:
                v95 = &qword_1EBACB028;
                v96 = &unk_1B96B98F0;
                v97 = v149;
                goto LABEL_57;
              }

              sub_1B9503174();
              OUTLINED_FUNCTION_186();
              v154 = static Searchfoundation_Punchout.== infix(_:_:)();
              sub_1B9503224();
              sub_1B8D9207C(v202, &qword_1EBACAF90, &unk_1B96B77C0);
              sub_1B9503224();
              sub_1B8D9207C(v149, &qword_1EBACAF90, &unk_1B96B77C0);
              if ((v154 & 1) == 0)
              {
                goto LABEL_58;
              }
            }

            v155 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__subtitleCustomLineBreaking;
            OUTLINED_FUNCTION_521();
            v156 = *(v3 + v155);
            v157 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__subtitleCustomLineBreaking;
            OUTLINED_FUNCTION_521();
            if ((sub_1B8D6123C(v156, *(v88 + v157)) & 1) == 0)
            {
              goto LABEL_58;
            }

            v158 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__buyOptions;
            OUTLINED_FUNCTION_521();
            v159 = *(v3 + v158);
            v160 = OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__buyOptions;
            OUTLINED_FUNCTION_521();
            v161 = *(v88 + v160);

            OUTLINED_FUNCTION_543();
            sub_1B8D91510();
            v163 = v162;

            if ((v163 & 1) == 0)
            {
              goto LABEL_58;
            }

            v164 = (v3 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__contentAdvisory);
            OUTLINED_FUNCTION_521();
            v165 = *v164;
            v166 = v164[1];
            v167 = (v88 + OBJC_IVAR____TtCV10PegasusAPI26Searchfoundation_MediaItemP33_FF22E06B1C4E2F0460D7AEADFE58855B13_StorageClass__contentAdvisory);
            OUTLINED_FUNCTION_521();
            if (v165 != *v167 || v166 != v167[1])
            {
              OUTLINED_FUNCTION_543();
              if ((sub_1B964C9F0() & 1) == 0)
              {
                goto LABEL_58;
              }
            }

            OUTLINED_FUNCTION_521();
            OUTLINED_FUNCTION_485();
            sub_1B8D92024();
            OUTLINED_FUNCTION_521();
            OUTLINED_FUNCTION_59_14();
            v169 = v193;
            OUTLINED_FUNCTION_84_0();
            v170 = v169;
            sub_1B8D92024();
            OUTLINED_FUNCTION_8_43(v169);
            if (v87)
            {

              sub_1B8D9207C(v150, &qword_1EBAB8EA8, &unk_1B96B77D0);
              OUTLINED_FUNCTION_8_43(&unk_1ED9E3000 + v169);
              if (v87)
              {
                sub_1B8D9207C(v169, &qword_1EBAB8EA8, &unk_1B96B77D0);
                goto LABEL_59;
              }
            }

            else
            {
              v171 = v194;
              sub_1B8D92024();
              OUTLINED_FUNCTION_8_43(&unk_1ED9E3000 + v170);
              if (!v172)
              {
                OUTLINED_FUNCTION_0_101();
                v176 = v192;
                sub_1B9503174();
                v177 = *(v216 + 20);
                if (*(v171 + v177) == *(v176 + v177) || (v178 = *(v171 + v177), , , OUTLINED_FUNCTION_543(), sub_1B94C6890(), OUTLINED_FUNCTION_649(), , (&unk_1ED9E3000 & 1) != 0))
                {
                  sub_1B964C2B0();
                  OUTLINED_FUNCTION_2_66();
                  sub_1B9505FC8(v179, v180);
                  sub_1B964C850();

                  OUTLINED_FUNCTION_4_57();
                  sub_1B9503224();
                  OUTLINED_FUNCTION_466();
                  sub_1B8D9207C(v181, v182, v183);
                  sub_1B9503224();
                  OUTLINED_FUNCTION_466();
                  sub_1B8D9207C(v184, v185, v186);
                  goto LABEL_59;
                }

                OUTLINED_FUNCTION_5_45();
                sub_1B9503224();
                OUTLINED_FUNCTION_176_2();
                sub_1B8D9207C(v187, v188, v189);
                sub_1B9503224();
                OUTLINED_FUNCTION_176_2();
                goto LABEL_95;
              }

              sub_1B8D9207C(v150, &qword_1EBAB8EA8, &unk_1B96B77D0);
              OUTLINED_FUNCTION_37_14();
              sub_1B9503224();
            }

            v173 = &qword_1EBAB8EB0;
            v174 = &qword_1B964D6B0;
            v175 = v170;
LABEL_95:
            sub_1B8D9207C(v175, v173, v174);
            goto LABEL_59;
          }

          goto LABEL_77;
        }

        v113 = v206;
LABEL_55:
        sub_1B8D9207C(v113, &qword_1EBAB8EA8, &unk_1B96B77D0);
        OUTLINED_FUNCTION_37_14();
        sub_1B9503224();
        goto LABEL_56;
      }

LABEL_58:

      goto LABEL_59;
    }

LABEL_77:
    OUTLINED_FUNCTION_5_45();
    sub_1B9503224();
    v110 = &unk_1B96B77D0;
    OUTLINED_FUNCTION_176_2();
    sub_1B8D9207C(v151, v152, v153);
    sub_1B9503224();
    v97 = OUTLINED_FUNCTION_246();
    goto LABEL_28;
  }

LABEL_59:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9505D78(void (*a1)(void))
{
  sub_1B964CA70();
  a1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B9505FC8(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9505E58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9505FC8(&qword_1EBACFEA8, type metadata accessor for Searchfoundation_MediaItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9505ED8(uint64_t a1)
{
  v2 = sub_1B9505FC8(&qword_1EBACFE28, type metadata accessor for Searchfoundation_MediaItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9505F48()
{
  sub_1B9505FC8(&qword_1EBACFE28, type metadata accessor for Searchfoundation_MediaItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B9505FC8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B9506278()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B9506560(319, &qword_1ED9F31F0, type metadata accessor for Searchfoundation_Text);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B9506350()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_MediaItem._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B95063DC()
{
  sub_1B9506560(319, &qword_1ED9F31F0, type metadata accessor for Searchfoundation_Text);
  if (v1 <= 0x3F)
  {
    v7 = *(v0 - 8) + 64;
    sub_1B9506560(319, &qword_1ED9F9768, type metadata accessor for Searchfoundation_Image);
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8) + 64;
      sub_1B9506560(319, &qword_1ED9F9678, type metadata accessor for Searchfoundation_Punchout);
      if (v6 <= 0x3F)
      {
        v8 = *(v5 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B9506560(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_9_37()
{
  result = type metadata accessor for Searchfoundation_MediaItem(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_13_32()
{
  result = type metadata accessor for Searchfoundation_MediaItem(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_32()
{
  v0 = type metadata accessor for Searchfoundation_MediaItem._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_29_31()
{
  v1 = *(v0 + *(type metadata accessor for Searchfoundation_MediaItem(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_67_8()
{
  *v0 = 0;
  *(v0 + 8) = 0xE000000000000000;
  *(v0 + 16) = 0;
  v3 = v0 + *(v1 + 24);

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_69_8()
{

  return sub_1B9503174();
}

uint64_t OUTLINED_FUNCTION_80_8(uint64_t a1)
{

  return sub_1B8D9207C(a1, v1, v2);
}

uint64_t Searchfoundation_MediaPlayerCardSection.init()@<X0>(uint64_t a1@<X8>)
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
  v3 = type metadata accessor for Searchfoundation_MediaPlayerCardSection();
  v4 = a1 + *(v3 + 60);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v5 = *(v3 + 64);
  v6 = type metadata accessor for Searchfoundation_Color(0);

  return __swift_storeEnumTagSinglePayload(a1 + v5, 1, 1, v6);
}

uint64_t type metadata accessor for Searchfoundation_MediaPlayerCardSection()
{
  result = qword_1ED9F0A58;
  if (!qword_1ED9F0A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_MediaPlayerCardSection.punchoutOptions.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Searchfoundation_MediaPlayerCardSection.punchoutPickerTitle.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_MediaPlayerCardSection.punchoutPickerTitle.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Searchfoundation_MediaPlayerCardSection.punchoutPickerDismissText.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_MediaPlayerCardSection.punchoutPickerDismissText.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Searchfoundation_MediaPlayerCardSection.type.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_MediaPlayerCardSection.type.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

void Searchfoundation_MediaPlayerCardSection.separatorStyle.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

uint64_t Searchfoundation_MediaPlayerCardSection.separatorStyle.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t Searchfoundation_MediaPlayerCardSection.backgroundColor.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_88();
  v8 = type metadata accessor for Searchfoundation_MediaPlayerCardSection();
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

uint64_t sub_1B9506CC4(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_Color(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B92C896C(a1, v5);
  return Searchfoundation_MediaPlayerCardSection.backgroundColor.setter(v5);
}

uint64_t Searchfoundation_MediaPlayerCardSection.backgroundColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_MediaPlayerCardSection() + 64);
  sub_1B8D9207C(v1 + v3, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B92C8908(a1, v1 + v3);
  v4 = type metadata accessor for Searchfoundation_Color(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Searchfoundation_MediaPlayerCardSection.backgroundColor.modify(void *a1))(uint64_t **a1, char a2)
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
  v11 = *(type metadata accessor for Searchfoundation_MediaPlayerCardSection() + 64);
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

BOOL Searchfoundation_MediaPlayerCardSection.hasBackgroundColor.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_88();
  v6 = type metadata accessor for Searchfoundation_MediaPlayerCardSection();
  sub_1B92C7198(v0 + *(v6 + 64), v1);
  type metadata accessor for Searchfoundation_Color(0);
  v7 = OUTLINED_FUNCTION_493();
  v10 = __swift_getEnumTagSinglePayload(v7, v8, v9) != 1;
  sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
  return v10;
}

Swift::Void __swiftcall Searchfoundation_MediaPlayerCardSection.clearBackgroundColor()()
{
  v1 = *(type metadata accessor for Searchfoundation_MediaPlayerCardSection() + 64);
  sub_1B8D9207C(v0 + v1, &qword_1EBACB050, &unk_1B96B7BD0);
  v2 = type metadata accessor for Searchfoundation_Color(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Searchfoundation_MediaPlayerCardSection.title.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_MediaPlayerCardSection.title.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Searchfoundation_MediaPlayerCardSection.subtitle.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_MediaPlayerCardSection.subtitle.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Searchfoundation_MediaPlayerCardSection.mediaItems.setter(uint64_t a1)
{
  v3 = *(v1 + 112);

  *(v1 + 112) = a1;
  return result;
}

uint64_t Searchfoundation_MediaPlayerCardSection.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_MediaPlayerCardSection() + 60);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Searchfoundation_MediaPlayerCardSection.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_MediaPlayerCardSection() + 60);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t sub_1B950731C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACFEB8);
  __swift_project_value_buffer(v0, qword_1EBACFEB8);
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
  *v27 = 53;
  *v28 = "mediaItems";
  *(v28 + 1) = 10;
  v28[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_MediaPlayerCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB85B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBACFEB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_MediaPlayerCardSection.decodeMessage<A>(decoder:)()
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
        sub_1B950791C();
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
        sub_1B95079BC();
        break;
      default:
        if (result == 51 || result == 52)
        {
LABEL_13:
          sub_1B964C530();
        }

        else if (result == 53)
        {
          OUTLINED_FUNCTION_9();
          sub_1B9507A70();
        }

        break;
    }
  }
}

uint64_t sub_1B950791C()
{
  type metadata accessor for Searchfoundation_Punchout();
  sub_1B950887C(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
  return sub_1B964C570();
}

uint64_t sub_1B95079BC()
{
  v0 = *(type metadata accessor for Searchfoundation_MediaPlayerCardSection() + 64);
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B950887C(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
  return sub_1B964C580();
}

uint64_t sub_1B9507A70()
{
  type metadata accessor for Searchfoundation_MediaItem(0);
  sub_1B950887C(&qword_1EBACFE28, type metadata accessor for Searchfoundation_MediaItem);
  return sub_1B964C570();
}

uint64_t Searchfoundation_MediaPlayerCardSection.traverse<A>(visitor:)()
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
    sub_1B950887C(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
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

              v36 = type metadata accessor for Searchfoundation_MediaPlayerCardSection();
              sub_1B92C7198(v2 + *(v36 + 64), v8);
              if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
              {
                sub_1B8D9207C(v8, &qword_1EBACB050, &unk_1B96B7BD0);
                v1 = v25;
              }

              else
              {
                sub_1B92C8908(v8, v14);
                sub_1B950887C(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
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
                  if (!*(*(v2 + 112) + 16) || (type metadata accessor for Searchfoundation_MediaItem(0), OUTLINED_FUNCTION_14_24(), sub_1B950887C(&qword_1EBACFE28, type metadata accessor for Searchfoundation_MediaItem), OUTLINED_FUNCTION_5_34(), result = sub_1B964C730(), !v1))
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

uint64_t static Searchfoundation_MediaPlayerCardSection.== infix(_:_:)()
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

  v26 = type metadata accessor for Searchfoundation_MediaPlayerCardSection();
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
        OUTLINED_FUNCTION_3_71();
        sub_1B950887C(v39, v40);
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
      sub_1B8D6E1DC();
      if (v46)
      {
        v47 = *(v26 + 60);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_3_71();
        sub_1B950887C(v48, v49);
        v33 = sub_1B964C850();
        return v33 & 1;
      }
    }
  }

LABEL_28:
  v33 = 0;
  return v33 & 1;
}

uint64_t Searchfoundation_MediaPlayerCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_MediaPlayerCardSection();
  sub_1B950887C(&qword_1EBACFED0, type metadata accessor for Searchfoundation_MediaPlayerCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B95083EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B950887C(&qword_1EBACFEE8, type metadata accessor for Searchfoundation_MediaPlayerCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B950846C(uint64_t a1)
{
  v2 = sub_1B950887C(&qword_1EBACE760, type metadata accessor for Searchfoundation_MediaPlayerCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B95084DC()
{
  sub_1B950887C(&qword_1EBACE760, type metadata accessor for Searchfoundation_MediaPlayerCardSection);

  return sub_1B964C5D0();
}

void sub_1B95086A4()
{
  sub_1B9508818(319, &qword_1ED9EB330, type metadata accessor for Searchfoundation_Punchout, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B9508818(319, &qword_1ED9D3A48, type metadata accessor for Searchfoundation_MediaItem, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v2 <= 0x3F)
      {
        sub_1B9508818(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B9508818(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B950887C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Searchfoundation_MediaRemoteControlCardSection.init()@<X0>(uint64_t a1@<X8>)
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
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0xE000000000000000;
  v2 = type metadata accessor for Searchfoundation_MediaRemoteControlCardSection();
  v3 = a1 + *(v2 + 60);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Searchfoundation_Color(0);

  return __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
}

uint64_t type metadata accessor for Searchfoundation_MediaRemoteControlCardSection()
{
  result = qword_1ED9EFE88;
  if (!qword_1ED9EFE88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_MediaRemoteControlCardSection.punchoutOptions.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Searchfoundation_MediaRemoteControlCardSection.punchoutPickerTitle.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_MediaRemoteControlCardSection.punchoutPickerTitle.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Searchfoundation_MediaRemoteControlCardSection.punchoutPickerDismissText.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_MediaRemoteControlCardSection.punchoutPickerDismissText.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Searchfoundation_MediaRemoteControlCardSection.type.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_MediaRemoteControlCardSection.type.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

void Searchfoundation_MediaRemoteControlCardSection.separatorStyle.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

uint64_t Searchfoundation_MediaRemoteControlCardSection.separatorStyle.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t Searchfoundation_MediaRemoteControlCardSection.backgroundColor.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_88();
  v8 = type metadata accessor for Searchfoundation_MediaRemoteControlCardSection();
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

uint64_t sub_1B9508D9C(uint64_t a1)
{
  v2 = type metadata accessor for Searchfoundation_Color(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B92C896C(a1, v5);
  return Searchfoundation_MediaRemoteControlCardSection.backgroundColor.setter(v5);
}

uint64_t Searchfoundation_MediaRemoteControlCardSection.backgroundColor.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_MediaRemoteControlCardSection() + 64);
  sub_1B8D9207C(v1 + v3, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B92C8908(a1, v1 + v3);
  v4 = type metadata accessor for Searchfoundation_Color(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Searchfoundation_MediaRemoteControlCardSection.backgroundColor.modify(void *a1))(uint64_t **a1, char a2)
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
  v11 = *(type metadata accessor for Searchfoundation_MediaRemoteControlCardSection() + 64);
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

BOOL Searchfoundation_MediaRemoteControlCardSection.hasBackgroundColor.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_88();
  v6 = type metadata accessor for Searchfoundation_MediaRemoteControlCardSection();
  sub_1B92C7198(v0 + *(v6 + 64), v1);
  type metadata accessor for Searchfoundation_Color(0);
  v7 = OUTLINED_FUNCTION_493();
  v10 = __swift_getEnumTagSinglePayload(v7, v8, v9) != 1;
  sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
  return v10;
}

Swift::Void __swiftcall Searchfoundation_MediaRemoteControlCardSection.clearBackgroundColor()()
{
  v1 = *(type metadata accessor for Searchfoundation_MediaRemoteControlCardSection() + 64);
  sub_1B8D9207C(v0 + v1, &qword_1EBACB050, &unk_1B96B7BD0);
  v2 = type metadata accessor for Searchfoundation_Color(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Searchfoundation_MediaRemoteControlCardSection.playbackRouteUniqueIdentifier.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_MediaRemoteControlCardSection.playbackRouteUniqueIdentifier.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Searchfoundation_MediaRemoteControlCardSection.playbackBundleIdentifier.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_MediaRemoteControlCardSection.playbackBundleIdentifier.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 112);

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t Searchfoundation_MediaRemoteControlCardSection.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_MediaRemoteControlCardSection() + 60);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Searchfoundation_MediaRemoteControlCardSection.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Searchfoundation_MediaRemoteControlCardSection() + 60);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, a1);
}

uint64_t sub_1B95093D0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACFEF0);
  __swift_project_value_buffer(v0, qword_1EBACFEF0);
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
  *v24 = "playbackRouteUniqueIdentifier";
  *(v24 + 1) = 29;
  v24[16] = 2;
  v7();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "playbackRouteUniqueIdentifierIsEncrypted";
  *(v26 + 1) = 40;
  v26[16] = 2;
  v7();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 53;
  *v28 = "playbackBundleIdentifier";
  *(v28 + 1) = 24;
  v28[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Searchfoundation_MediaRemoteControlCardSection._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB85B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBACFEF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Searchfoundation_MediaRemoteControlCardSection.decodeMessage<A>(decoder:)()
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
        sub_1B95099D0();
        continue;
      case 2:
      case 3:
      case 7:
        goto LABEL_13;
      case 4:
      case 5:
      case 6:
        goto LABEL_12;
      case 8:
        OUTLINED_FUNCTION_9();
        sub_1B92C7E00();
        continue;
      case 9:
        OUTLINED_FUNCTION_9();
        sub_1B9509A70();
        continue;
      default:
        switch(result)
        {
          case '3':
            goto LABEL_13;
          case '4':
LABEL_12:
            sub_1B964C400();
            break;
          case '5':
LABEL_13:
            sub_1B964C530();
            break;
        }

        break;
    }
  }
}

uint64_t sub_1B95099D0()
{
  type metadata accessor for Searchfoundation_Punchout();
  sub_1B950A7B8(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
  return sub_1B964C570();
}

uint64_t sub_1B9509A70()
{
  v0 = *(type metadata accessor for Searchfoundation_MediaRemoteControlCardSection() + 64);
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B950A7B8(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
  return sub_1B964C580();
}

uint64_t Searchfoundation_MediaRemoteControlCardSection.traverse<A>(visitor:)()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - v7;
  v9 = type metadata accessor for Searchfoundation_Color(0);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v0 + 16))
  {
    v38 = v0;
    v15 = v8;
    v16 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    type metadata accessor for Searchfoundation_Punchout();
    sub_1B950A7B8(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
    OUTLINED_FUNCTION_5_34();
    result = sub_1B964C730();
    if (v1)
    {
      return result;
    }

    v14 = v16;
    v8 = v15;
    v2 = v38;
  }

  v18 = *(v2 + 8);
  v19 = *(v2 + 16);
  OUTLINED_FUNCTION_1();
  if (!v20 || (result = OUTLINED_FUNCTION_6_32(), !v1))
  {
    v21 = *(v2 + 24);
    v22 = *(v2 + 32);
    OUTLINED_FUNCTION_1();
    if (!v23 || (result = OUTLINED_FUNCTION_6_32(), !v1))
    {
      if (*(v2 + 40) != 1 || (OUTLINED_FUNCTION_24_3(), result = sub_1B964C670(), !v1))
      {
        if (*(v2 + 41) != 1 || (OUTLINED_FUNCTION_24_3(), result = sub_1B964C670(), !v1))
        {
          if (*(v2 + 42) != 1 || (OUTLINED_FUNCTION_24_3(), result = sub_1B964C670(), !v1))
          {
            v24 = *(v2 + 48);
            v25 = *(v2 + 56);
            OUTLINED_FUNCTION_1();
            if (!v26 || (result = OUTLINED_FUNCTION_6_32(), !v1))
            {
              v27 = v1;
              if (*(v2 + 64))
              {
                v28 = *(v2 + 72);
                v36 = *(v2 + 64);
                v37 = v28;
                sub_1B92C8A2C();
                OUTLINED_FUNCTION_5_34();
                result = sub_1B964C680();
                if (v1)
                {
                  return result;
                }

                v27 = 0;
              }

              v38 = type metadata accessor for Searchfoundation_MediaRemoteControlCardSection();
              sub_1B92C7198(v2 + *(v38 + 64), v8);
              if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
              {
                sub_1B8D9207C(v8, &qword_1EBACB050, &unk_1B96B7BD0);
                v1 = v27;
              }

              else
              {
                sub_1B92C8908(v8, v14);
                sub_1B950A7B8(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
                OUTLINED_FUNCTION_5_34();
                sub_1B964C740();
                result = sub_1B92C89D0(v14);
                if (v1)
                {
                  return result;
                }
              }

              v29 = *(v2 + 80);
              v30 = *(v2 + 88);
              OUTLINED_FUNCTION_1();
              if (!v31 || (result = OUTLINED_FUNCTION_6_32(), !v1))
              {
                if (*(v2 + 96) != 1 || (OUTLINED_FUNCTION_24_3(), result = sub_1B964C670(), !v1))
                {
                  v32 = *(v2 + 104);
                  v33 = *(v2 + 112);
                  OUTLINED_FUNCTION_1();
                  if (!v34 || (result = OUTLINED_FUNCTION_6_32(), !v1))
                  {
                    v35 = v2 + *(v38 + 60);
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

uint64_t static Searchfoundation_MediaRemoteControlCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v3 = type metadata accessor for Searchfoundation_Color(0);
  v4 = OUTLINED_FUNCTION_59_1(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
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

  v26 = type metadata accessor for Searchfoundation_MediaRemoteControlCardSection();
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
        OUTLINED_FUNCTION_2_67();
        sub_1B950A7B8(v39, v40);
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
  if (v42 || (sub_1B964C9F0()) && *(v1 + 96) == *(v0 + 96))
  {
    v43 = v1[13] == v0[13] && v1[14] == v0[14];
    if (v43 || (sub_1B964C9F0() & 1) != 0)
    {
      v44 = *(v26 + 60);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_2_67();
      sub_1B950A7B8(v45, v46);
      v33 = sub_1B964C850();
      return v33 & 1;
    }
  }

LABEL_28:
  v33 = 0;
  return v33 & 1;
}

uint64_t Searchfoundation_MediaRemoteControlCardSection.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Searchfoundation_MediaRemoteControlCardSection();
  sub_1B950A7B8(&qword_1EBACFF08, type metadata accessor for Searchfoundation_MediaRemoteControlCardSection);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B950A3CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B950A7B8(&qword_1EBACFF20, type metadata accessor for Searchfoundation_MediaRemoteControlCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B950A44C(uint64_t a1)
{
  v2 = sub_1B950A7B8(&qword_1EBACE6B0, type metadata accessor for Searchfoundation_MediaRemoteControlCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B950A4BC()
{
  sub_1B950A7B8(&qword_1EBACE6B0, type metadata accessor for Searchfoundation_MediaRemoteControlCardSection);

  return sub_1B964C5D0();
}

void sub_1B950A684()
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

uint64_t sub_1B950A7B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Searchfoundation_MessageCardSection.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Searchfoundation_MessageCardSection(0) + 20);
  if (qword_1EBAB85E8 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EBACFFB8;
}

uint64_t sub_1B950A8E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9513208();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Searchfoundation_MessageStatus.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B950A9D4@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_MessageStatus.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B950AA08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B95131B4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Searchfoundation_MessageServiceType.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B950AAF4@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_MessageServiceType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B950AB44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B95101F4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t (*static Searchfoundation_MessageAttachmentType.allCases.modify())()
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B950AC30@<X0>(uint64_t *a1@<X8>)
{
  result = static Searchfoundation_MessageAttachmentType.allCases.getter();
  *a1 = result;
  return result;
}

void Searchfoundation_MessageAttachment.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Searchfoundation_MessageAttachment.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Searchfoundation_MessageAttachment.url.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  v6 = *(type metadata accessor for Searchfoundation_MessageAttachment(v5) + 28);
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Searchfoundation_URL();
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    OUTLINED_FUNCTION_158_4();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8E20, &unk_1B964D620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_102();
    OUTLINED_FUNCTION_182();
    return sub_1B950F950();
  }

  return result;
}

uint64_t Searchfoundation_MessageAttachment.url.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_MessageAttachment(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_0_102();
  OUTLINED_FUNCTION_122_0();
  sub_1B950F950();
  type metadata accessor for Searchfoundation_URL();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_MessageAttachment.url.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_URL();
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_MessageAttachment(0) + 28);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_115(v11);
  sub_1B8D92024();
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v7);
  if (v14)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v15 = v10 + *(v7 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v16, v17, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBAB8E20, &unk_1B964D620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_102();
    OUTLINED_FUNCTION_461();
    sub_1B950F950();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_MessageAttachment.hasURL.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Searchfoundation_MessageAttachment(v6);
  OUTLINED_FUNCTION_115(*(v7 + 28));
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_URL();
  v8 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v8, v9, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v13, v14, &unk_1B964D620);
  return v12;
}

Swift::Void __swiftcall Searchfoundation_MessageAttachment.clearURL()()
{
  v1 = type metadata accessor for Searchfoundation_MessageAttachment(0);
  sub_1B8D9207C(v0 + *(v1 + 28), &qword_1EBAB8E20, &unk_1B964D620);
  type metadata accessor for Searchfoundation_URL();
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_MessageAttachment.linkMetadata.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_MessageAttachment.linkMetadata.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B8D538A0(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Searchfoundation_MessageAttachment.photosLibraryImage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v8 = *(type metadata accessor for Searchfoundation_MessageAttachment(v7) + 32);
  OUTLINED_FUNCTION_106_0();
  v9 = type metadata accessor for Searchfoundation_PhotosLibraryImage(0);
  OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = 0;
    *(a1 + 24) = MEMORY[0x1E69E7CC0];
    *(a1 + 32) = 0;
    *(a1 + 40) = 0xE000000000000000;
    v11 = a1 + *(v9 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC618, &unk_1B96B9990);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_42();
    OUTLINED_FUNCTION_182();
    return sub_1B950F950();
  }

  return result;
}

uint64_t Searchfoundation_MessageAttachment.photosLibraryImage.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_MessageAttachment(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBACC618, &unk_1B96B9990);
  OUTLINED_FUNCTION_6_42();
  OUTLINED_FUNCTION_122_0();
  sub_1B950F950();
  type metadata accessor for Searchfoundation_PhotosLibraryImage(0);
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_MessageAttachment.photosLibraryImage.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC618, &unk_1B96B9990);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Searchfoundation_PhotosLibraryImage(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Searchfoundation_MessageAttachment(0) + 32);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_115(v11);
  sub_1B8D92024();
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v7);
  if (v14)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    *(v10 + 16) = 0;
    v10[3] = MEMORY[0x1E69E7CC0];
    v10[4] = 0;
    v10[5] = 0xE000000000000000;
    v15 = v10 + *(v7 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v16, v17, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBACC618, &unk_1B96B9990);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_42();
    OUTLINED_FUNCTION_461();
    sub_1B950F950();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B950B3F0()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v4 = v1;
  v5 = *(*v0 + 10);
  v6 = (*v0)[3];
  v7 = (*v0)[4];
  v8 = (*v0)[1];
  v9 = (*v0)[2];
  v10 = **v0;
  if (v11)
  {
    v12 = (*v0)[4];
    sub_1B950F9A8();
    sub_1B8D9207C(v10 + v5, v4, v3);
    sub_1B950F950();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v9);
    sub_1B950FA00();
  }

  else
  {
    sub_1B8D9207C(v10 + v5, v1, v2);
    sub_1B950F950();
    OUTLINED_FUNCTION_80();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v9);
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_283();

  free(v19);
}

uint64_t Searchfoundation_MessageAttachment.hasPhotosLibraryImage.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = type metadata accessor for Searchfoundation_MessageAttachment(v6);
  OUTLINED_FUNCTION_115(*(v7 + 32));
  sub_1B8D92024();
  type metadata accessor for Searchfoundation_PhotosLibraryImage(0);
  v8 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v8, v9, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = OUTLINED_FUNCTION_182();
  sub_1B8D9207C(v13, v14, &unk_1B96B9990);
  return v12;
}

Swift::Void __swiftcall Searchfoundation_MessageAttachment.clearPhotosLibraryImage()()
{
  v1 = type metadata accessor for Searchfoundation_MessageAttachment(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &qword_1EBACC618, &unk_1B96B9990);
  type metadata accessor for Searchfoundation_PhotosLibraryImage(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_MessageAttachment.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Searchfoundation_MessageAttachment(0) + 24);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Searchfoundation_MessageAttachment.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_MessageAttachment(v2) + 24);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Searchfoundation_MessageAttachment.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Searchfoundation_MessageAttachment(v0) + 24);
  return nullsub_1;
}

uint64_t Searchfoundation_MessageAttachment.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_1B9652FE0;
  v2 = type metadata accessor for Searchfoundation_MessageAttachment(0);
  v3 = a1 + v2[6];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = v2[7];
  type metadata accessor for Searchfoundation_URL();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = v2[8];
  type metadata accessor for Searchfoundation_PhotosLibraryImage(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t Searchfoundation_MessageCardSection.punchoutOptions.getter()
{
  OUTLINED_FUNCTION_3_72();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 16);
}

uint64_t sub_1B950B7F8(uint64_t *a1)
{
  v1 = *a1;

  return Searchfoundation_MessageCardSection.punchoutOptions.setter();
}

uint64_t Searchfoundation_MessageCardSection.punchoutOptions.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Searchfoundation_MessageCardSection(v2) + 20);
  v4 = *(v1 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_9_38();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B950FB70(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3();
  v9 = *(v6 + 16);
  *(v6 + 16) = v0;
}

uint64_t Searchfoundation_MessageCardSection.punchoutOptions.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_3_72();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v4 + 16);

  return OUTLINED_FUNCTION_514();
}

void sub_1B950B90C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    v4 = *(v2 + 56);
    v5 = *(*a1 + 48);

    Searchfoundation_MessageCardSection.punchoutOptions.setter();
    v6 = *(v2 + 48);
  }

  else
  {
    v7 = *(v2 + 64);
    v8 = *(v2 + 56);
    v9 = *(v8 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = *(v2 + 64);
      v13 = *(v2 + 56);
      OUTLINED_FUNCTION_9_38();
      v14 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B950FB70(v14);
      *(v13 + v12) = v11;
    }

    OUTLINED_FUNCTION_18();
    v15 = *(v11 + 16);
    *(v11 + 16) = v3;
  }

  free(v2);
}

uint64_t Searchfoundation_MessageCardSection.punchoutPickerTitle.getter()
{
  OUTLINED_FUNCTION_3_72();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);

  return OUTLINED_FUNCTION_432();
}

void sub_1B950BA04(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_MessageCardSection.punchoutPickerTitle.setter();
}

void Searchfoundation_MessageCardSection.punchoutPickerTitle.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_14_28();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_9_38();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B950FB70(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 32);
  *(v5 + 24) = v2;
  *(v5 + 32) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_MessageCardSection.punchoutPickerTitle.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 64) = v0;
  OUTLINED_FUNCTION_3_72();
  *(v1 + 72) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 32);
  *(v1 + 48) = *(v5 + 24);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B950BB14(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Searchfoundation_MessageCardSection.punchoutPickerTitle.setter();
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
      OUTLINED_FUNCTION_9_38();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B950FB70(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_18();
    v14 = *(v9 + 32);
    *(v9 + 24) = v4;
    *(v9 + 32) = v3;
  }

  free(v1);
}

uint64_t Searchfoundation_MessageCardSection.punchoutPickerDismissText.getter()
{
  OUTLINED_FUNCTION_3_72();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);

  return OUTLINED_FUNCTION_432();
}

void sub_1B950BBF0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_MessageCardSection.punchoutPickerDismissText.setter();
}

void Searchfoundation_MessageCardSection.punchoutPickerDismissText.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_14_28();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_9_38();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B950FB70(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 48);
  *(v5 + 40) = v2;
  *(v5 + 48) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_MessageCardSection.punchoutPickerDismissText.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 64) = v0;
  OUTLINED_FUNCTION_3_72();
  *(v1 + 72) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 48);
  *(v1 + 48) = *(v5 + 40);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B950BD00(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Searchfoundation_MessageCardSection.punchoutPickerDismissText.setter();
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
      OUTLINED_FUNCTION_9_38();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B950FB70(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_18();
    v14 = *(v9 + 48);
    *(v9 + 40) = v4;
    *(v9 + 48) = v3;
  }

  free(v1);
}

uint64_t Searchfoundation_MessageCardSection.canBeHidden.getter()
{
  OUTLINED_FUNCTION_3_72();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 56);
}

uint64_t Searchfoundation_MessageCardSection.canBeHidden.setter()
{
  v3 = OUTLINED_FUNCTION_43_17();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_9_38();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B950FB70(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 56) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_MessageCardSection.canBeHidden.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_3_72();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v4 + 56);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B950BE98(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_9_38();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B950FB70(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_18();
  *(v6 + 56) = v3;

  free(v1);
}

uint64_t Searchfoundation_MessageCardSection.hasTopPadding_p.getter()
{
  OUTLINED_FUNCTION_3_72();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 57);
}

uint64_t Searchfoundation_MessageCardSection.hasTopPadding_p.setter()
{
  v3 = OUTLINED_FUNCTION_43_17();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_9_38();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B950FB70(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 57) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_MessageCardSection.hasTopPadding_p.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_3_72();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v4 + 57);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B950C01C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_9_38();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B950FB70(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_18();
  *(v6 + 57) = v3;

  free(v1);
}

uint64_t Searchfoundation_MessageCardSection.hasBottomPadding_p.getter()
{
  OUTLINED_FUNCTION_3_72();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 58);
}

uint64_t Searchfoundation_MessageCardSection.hasBottomPadding_p.setter()
{
  v3 = OUTLINED_FUNCTION_43_17();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_9_38();
    v5 = OUTLINED_FUNCTION_40_0();
    v6 = sub_1B950FB70(v5);
    OUTLINED_FUNCTION_157_2(v6);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v4 + 58) = v0 & 1;
  return result;
}

uint64_t Searchfoundation_MessageCardSection.hasBottomPadding_p.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_3_72();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v4 + 58);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B950C1A0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    OUTLINED_FUNCTION_9_38();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B950FB70(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  OUTLINED_FUNCTION_18();
  *(v6 + 58) = v3;

  free(v1);
}

uint64_t Searchfoundation_MessageCardSection.type.getter()
{
  OUTLINED_FUNCTION_3_72();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 64);
  v4 = *(v2 + 72);

  return OUTLINED_FUNCTION_432();
}

void sub_1B950C268(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_MessageCardSection.type.setter();
}

void Searchfoundation_MessageCardSection.type.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_14_28();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_9_38();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B950FB70(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 72);
  *(v5 + 64) = v2;
  *(v5 + 72) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_MessageCardSection.type.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 64) = v0;
  OUTLINED_FUNCTION_3_72();
  *(v1 + 72) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 72);
  *(v1 + 48) = *(v5 + 64);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B950C378(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Searchfoundation_MessageCardSection.type.setter();
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
      OUTLINED_FUNCTION_9_38();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B950FB70(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_18();
    v14 = *(v9 + 72);
    *(v9 + 64) = v4;
    *(v9 + 72) = v3;
  }

  free(v1);
}

uint64_t Searchfoundation_MessageCardSection.separatorStyle.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3_72();
  v4 = *(v1 + v3);
  result = OUTLINED_FUNCTION_10_4();
  v6 = *(v4 + 88);
  *a1 = *(v4 + 80);
  *(a1 + 8) = v6;
  return result;
}

void Searchfoundation_MessageCardSection.separatorStyle.setter()
{
  OUTLINED_FUNCTION_193_0();
  v2 = v0;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_16_33();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_9_38();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B950FB70(v8);
    *(v2 + v1) = v7;
  }

  OUTLINED_FUNCTION_9_3();
  *(v7 + 80) = v4;
  *(v7 + 88) = v5;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_MessageCardSection.separatorStyle.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_3_72();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 88);
  *(v1 + 72) = *(v4 + 80);
  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B950C538()
{
  OUTLINED_FUNCTION_243();
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 84);
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 80);
  v6 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v1 + 84);
    v10 = *(v1 + 88);
    OUTLINED_FUNCTION_9_38();
    v11 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B950FB70(v11);
    *(v10 + v9) = v8;
  }

  OUTLINED_FUNCTION_18();
  *(v8 + 80) = v2;
  *(v8 + 88) = v5;
  OUTLINED_FUNCTION_242();

  free(v12);
}

uint64_t Searchfoundation_MessageCardSection.backgroundColor.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_3_72();
  v9 = *(v1 + v8);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_106_0();
  v10 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_9_2();
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(v10 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45();
    }

    *(a1 + v12) = qword_1ED9CD1C8;
    v13 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, v14, v10);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v2, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_43();
    OUTLINED_FUNCTION_182();
    return sub_1B950F950();
  }

  return result;
}

uint64_t Searchfoundation_MessageCardSection.backgroundColor.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_16_33();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_9_38();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B950FB70(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_7_43();
  sub_1B950F950();
  type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_MessageCardSection.backgroundColor.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Searchfoundation_Color(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = *(v9 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v2 + 48) = v11;
  OUTLINED_FUNCTION_3_72();
  v13 = *(v0 + v12);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = *(v8 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45();
    }

    *&v11[v15] = qword_1ED9CD1C8;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v8);

    if (EnumTagSinglePayload != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_43();
    sub_1B950F950();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_MessageCardSection.messageText.getter()
{
  OUTLINED_FUNCTION_3_72();
  v2 = (*(v0 + v1) + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageText);
  OUTLINED_FUNCTION_6_2();
  v4 = *v2;
  v3 = v2[1];

  return OUTLINED_FUNCTION_288();
}

void sub_1B950CA60(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_MessageCardSection.messageText.setter();
}

void Searchfoundation_MessageCardSection.messageText.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_14_28();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_9_38();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B950FB70(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  v8 = (v5 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageText);
  OUTLINED_FUNCTION_18();
  v9 = v8[1];
  *v8 = v2;
  v8[1] = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_MessageCardSection.messageText.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 64) = v0;
  OUTLINED_FUNCTION_3_72();
  *(v1 + 72) = v4;
  v5 = (*(v0 + v4) + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageText);
  OUTLINED_FUNCTION_62_0();
  v6 = v5[1];
  *(v1 + 48) = *v5;
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B950CB8C(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Searchfoundation_MessageCardSection.messageText.setter();
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
      OUTLINED_FUNCTION_9_38();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B950FB70(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    v14 = (v9 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageText);
    OUTLINED_FUNCTION_18();
    v15 = v14[1];
    *v14 = v4;
    v14[1] = v3;
  }

  free(v1);
}

uint64_t Searchfoundation_MessageCardSection.messageStatus.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_3_72();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3) + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageStatus;
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B950CCD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_3_72();
  v6 = *(v2 + v5) + *a1;
  result = OUTLINED_FUNCTION_6_2();
  v8 = *(v6 + 8);
  *a2 = *v6;
  *(a2 + 8) = v8;
  return result;
}

void *sub_1B950CD30@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  result = a1(&v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_1B950CD78(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;
  return a5(&v7);
}

void sub_1B950CDC8()
{
  OUTLINED_FUNCTION_193_0();
  v2 = v1;
  v3 = v0;
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(type metadata accessor for Searchfoundation_MessageCardSection(0) + 20);
  v8 = *(v0 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v0 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_9_38();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B950FB70(v11);
    *(v3 + v7) = v10;
  }

  v12 = v10 + *v2;
  OUTLINED_FUNCTION_18();
  *v12 = v5;
  *(v12 + 8) = v6;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_MessageCardSection.messageServiceType.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_3_72();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3) + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageServiceType;
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B950CED4()
{
  OUTLINED_FUNCTION_243();
  v1 = v0;
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *(*v2 + 84);
  v6 = *(*v2 + 88);
  v7 = *(*v2 + 80);
  v8 = *(v6 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + 84);
    v12 = *(v3 + 88);
    OUTLINED_FUNCTION_9_38();
    v13 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B950FB70(v13);
    *(v12 + v11) = v10;
  }

  v14 = v10 + *v1;
  OUTLINED_FUNCTION_18();
  *v14 = v4;
  *(v14 + 8) = v7;
  OUTLINED_FUNCTION_242();

  free(v15);
}

uint64_t Searchfoundation_MessageCardSection.audioMessageURL.getter()
{
  v2 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_3_72();
  v7 = *(v0 + v6);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_106_0();
  type metadata accessor for Searchfoundation_URL();
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    OUTLINED_FUNCTION_158_4();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8E20, &unk_1B964D620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_102();
    OUTLINED_FUNCTION_182();
    return sub_1B950F950();
  }

  return result;
}

uint64_t Searchfoundation_MessageCardSection.audioMessageURL.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_16_33();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_9_38();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B950FB70(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_0_102();
  sub_1B950F950();
  type metadata accessor for Searchfoundation_URL();
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_MessageCardSection.audioMessageURL.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  OUTLINED_FUNCTION_71(v6);
  v7 = type metadata accessor for Searchfoundation_URL();
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v2 + 48) = v10;
  OUTLINED_FUNCTION_3_72();
  v12 = *(v0 + v11);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v13)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v14 = v10 + *(v7 + 20);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v13)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8E20, &unk_1B964D620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_102();
    sub_1B950F950();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B950D2D0()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 32);
  if (v7)
  {
    v8 = *(*v0 + 48);
    sub_1B950F9A8();
    v2(v3);
    sub_1B950FA00();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v6);
  OUTLINED_FUNCTION_242();

  free(v9);
}

uint64_t sub_1B950D3A8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  OUTLINED_FUNCTION_3_72();
  v16 = *(v4 + v15);
  v17 = *a3;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v18 = a4(0);
  OUTLINED_FUNCTION_178(v14, 1, v18);
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  sub_1B8D9207C(v14, a1, a2);
  return v20;
}

void sub_1B950D4B0()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  v12 = *(type metadata accessor for Searchfoundation_MessageCardSection(0) + 20);
  v13 = *(v0 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v0 + v12);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_9_38();
    v16 = OUTLINED_FUNCTION_40_0();
    *(v5 + v12) = sub_1B950FB70(v16);
  }

  v4(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = *v2;
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_MessageCardSection.messageAttachment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  OUTLINED_FUNCTION_3_72();
  v10 = *(v1 + v9);
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v11 = type metadata accessor for Searchfoundation_MessageAttachment(0);
  OUTLINED_FUNCTION_178(v8, 1, v11);
  if (v12)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    *(a1 + 16) = xmmword_1B9652FE0;
    v13 = a1 + v11[6];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = v11[7];
    type metadata accessor for Searchfoundation_URL();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    v19 = v11[8];
    type metadata accessor for Searchfoundation_PhotosLibraryImage(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    result = OUTLINED_FUNCTION_178(v8, 1, v11);
    if (!v12)
    {
      return sub_1B8D9207C(v8, &qword_1EBACFFC0, "Z\b");
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_46();
    return sub_1B950F950();
  }

  return result;
}

uint64_t sub_1B950D708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_183(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79();
  sub_1B950F9A8();
  return a7(v7);
}

uint64_t Searchfoundation_MessageCardSection.messageAttachment.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACFFC0, "Z\b");
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_16_33();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_9_38();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B950FB70(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_5_46();
  sub_1B950F950();
  type metadata accessor for Searchfoundation_MessageAttachment(0);
  OUTLINED_FUNCTION_80();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_MessageCardSection.messageAttachment.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACFFC0, "Z\b");
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  v8 = type metadata accessor for Searchfoundation_MessageAttachment(v7);
  OUTLINED_FUNCTION_59_1(v8);
  v10 = *(v9 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v2 + 48) = v11;
  OUTLINED_FUNCTION_3_72();
  v13 = *(v0 + v12);
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    *v11 = 0;
    v11[8] = 1;
    *(v11 + 1) = xmmword_1B9652FE0;
    v15 = &v11[v8[6]];
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v16 = v8[7];
    type metadata accessor for Searchfoundation_URL();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    v21 = v8[8];
    type metadata accessor for Searchfoundation_PhotosLibraryImage(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v1, &qword_1EBACFFC0, "Z\b");
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_46();
    sub_1B950F950();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_MessageCardSection.unknownFields.getter()
{
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Searchfoundation_MessageCardSection.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_288();

  return v4(v3);
}

uint64_t sub_1B950DB7C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACFF40);
  __swift_project_value_buffer(v0, qword_1EBACFF40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MessageStatusUnknown";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MessageStatusUnsent";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MessageStatusSent";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MessageStatusSending";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B950DDE4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACFF58);
  __swift_project_value_buffer(v0, qword_1EBACFF58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MessageServiceTypeUnknown";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MessageServiceTypeiMessage";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MessageServiceTypeSMS";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MessageServiceTypeOther";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B950E04C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACFF70);
  __swift_project_value_buffer(v0, qword_1EBACFF70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MessageAttachmentTypeUnknown";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MessageAttachmentTypePhoto";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MessageAttachmentTypeLivePhoto";
  *(v12 + 1) = 30;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MessageAttachmentTypeVideo";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "MessageAttachmentTypeWeb";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B950E30C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACFF88);
  __swift_project_value_buffer(v0, qword_1EBACFF88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 56;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 57;
  *v10 = "url";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 58;
  *v12 = "linkMetadata";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 59;
  *v14 = "photosLibraryImage";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Searchfoundation_MessageAttachment.decodeMessage<A>(decoder:)()
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
      case '8':
        OUTLINED_FUNCTION_288();
        OUTLINED_FUNCTION_24_3();
        sub_1B950E63C();
        break;
      case '9':
        OUTLINED_FUNCTION_288();
        OUTLINED_FUNCTION_24_3();
        sub_1B950E6A4();
        break;
      case ':':
        sub_1B964C470();
        break;
      case ';':
        OUTLINED_FUNCTION_288();
        OUTLINED_FUNCTION_24_3();
        sub_1B950E758();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B950E6A4()
{
  v0 = *(type metadata accessor for Searchfoundation_MessageAttachment(0) + 28);
  type metadata accessor for Searchfoundation_URL();
  sub_1B9510248(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL);
  return sub_1B964C580();
}

uint64_t sub_1B950E758()
{
  v0 = *(type metadata accessor for Searchfoundation_MessageAttachment(0) + 32);
  type metadata accessor for Searchfoundation_PhotosLibraryImage(0);
  sub_1B9510248(&qword_1EBACC9B8, type metadata accessor for Searchfoundation_PhotosLibraryImage);
  return sub_1B964C580();
}

uint64_t Searchfoundation_MessageAttachment.traverse<A>(visitor:)()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC618, &unk_1B96B9990);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v34 - v7;
  v8 = type metadata accessor for Searchfoundation_PhotosLibraryImage(0);
  v9 = OUTLINED_FUNCTION_59_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v37 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_183(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_22_3();
  v18 = type metadata accessor for Searchfoundation_URL();
  v19 = OUTLINED_FUNCTION_59_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_62();
  if (!*v0 || (v22 = *(v0 + 8), v38 = *v0, v39 = v22, sub_1B95101F4(), result = sub_1B964C680(), !v1))
  {
    v35 = v8;
    v24 = type metadata accessor for Searchfoundation_MessageAttachment(0);
    v25 = *(v24 + 28);
    sub_1B8D92024();
    v26 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v26, v27, v18);
    v36 = v24;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v2, &qword_1EBAB8E20, &unk_1B964D620);
    }

    else
    {
      sub_1B950F950();
      sub_1B9510248(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL);
      sub_1B964C740();
      result = sub_1B950FA00();
      if (v1)
      {
        return result;
      }

      v24 = v36;
    }

    if (sub_1B8D99EA8(v0[2], v0[3]) || (v29 = v0[2], v30 = v0[3], result = sub_1B964C6A0(), !v1))
    {
      v31 = *(v24 + 32);
      v32 = v40;
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v32, 1, v35) == 1)
      {
        sub_1B8D9207C(v32, &qword_1EBACC618, &unk_1B96B9990);
      }

      else
      {
        sub_1B950F950();
        sub_1B9510248(&qword_1EBACC9B8, type metadata accessor for Searchfoundation_PhotosLibraryImage);
        sub_1B964C740();
        result = sub_1B950FA00();
        if (v1)
        {
          return result;
        }
      }

      v33 = v0 + *(v36 + 24);
      return sub_1B964C290();
    }
  }

  return result;
}

void static Searchfoundation_MessageAttachment.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = v2;
  v5 = v4;
  v69 = type metadata accessor for Searchfoundation_PhotosLibraryImage(0);
  v6 = OUTLINED_FUNCTION_59_1(v69);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v11 = (v10 - v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC618, &unk_1B96B9990);
  OUTLINED_FUNCTION_183(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  v68 = (&v64 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC620, &unk_1B96D4760);
  OUTLINED_FUNCTION_59_1(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_79();
  v21 = type metadata accessor for Searchfoundation_URL();
  v22 = OUTLINED_FUNCTION_59_1(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_62();
  v27 = (v26 - v25);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_183(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_88();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E28, &unk_1B96B7BB0);
  OUTLINED_FUNCTION_59_1(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v64 - v36;
  v38 = *v5;
  v39 = *v3;
  if (*(v3 + 8) != 1)
  {
    if (v38 != v39)
    {
      goto LABEL_36;
    }

LABEL_6:
    v66 = v1;
    v64 = v11;
    v65 = type metadata accessor for Searchfoundation_MessageAttachment(0);
    v40 = *(v65 + 28);
    v41 = *(v32 + 48);
    v67 = v5;
    sub_1B8D92024();
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(v37, 1, v21);
    if (v42)
    {
      OUTLINED_FUNCTION_178(&v37[v41], 1, v21);
      if (v42)
      {
        sub_1B8D9207C(v37, &qword_1EBAB8E20, &unk_1B964D620);
LABEL_23:
        if ((MEMORY[0x1BFADC060](v67[2], v67[3], v3[2], v3[3]) & 1) == 0)
        {
          goto LABEL_36;
        }

        v52 = v65;
        v51 = v66;
        v53 = *(v65 + 32);
        v54 = *(v17 + 48);
        sub_1B8D92024();
        v55 = v51;
        sub_1B8D92024();
        v56 = v69;
        OUTLINED_FUNCTION_178(v51, 1, v69);
        if (v42)
        {
          OUTLINED_FUNCTION_178(v51 + v54, 1, v56);
          if (v42)
          {
            sub_1B8D9207C(v51, &qword_1EBACC618, &unk_1B96B9990);
            goto LABEL_43;
          }
        }

        else
        {
          v57 = v68;
          sub_1B8D92024();
          OUTLINED_FUNCTION_178(v55 + v54, 1, v56);
          if (!v58)
          {
            v59 = v64;
            sub_1B950F950();
            v60 = static Searchfoundation_PhotosLibraryImage.== infix(_:_:)(v57, v59);
            sub_1B950FA00();
            sub_1B950FA00();
            sub_1B8D9207C(v55, &qword_1EBACC618, &unk_1B96B9990);
            if ((v60 & 1) == 0)
            {
              goto LABEL_36;
            }

LABEL_43:
            v61 = *(v52 + 24);
            sub_1B964C2B0();
            OUTLINED_FUNCTION_8_44();
            sub_1B9510248(v62, v63);
            sub_1B964C850();
            goto LABEL_36;
          }

          sub_1B950FA00();
        }

        v43 = &unk_1EBACC620;
        v44 = &unk_1B96D4760;
        v45 = v55;
LABEL_16:
        sub_1B8D9207C(v45, v43, v44);
        goto LABEL_36;
      }
    }

    else
    {
      sub_1B8D92024();
      OUTLINED_FUNCTION_178(&v37[v41], 1, v21);
      if (!v42)
      {
        OUTLINED_FUNCTION_0_102();
        sub_1B950F950();
        v46 = *v0 == *v27 && v0[1] == v27[1];
        if (v46 || (sub_1B964C9F0() & 1) != 0)
        {
          v47 = *(v21 + 20);
          sub_1B964C2B0();
          OUTLINED_FUNCTION_8_44();
          sub_1B9510248(v48, v49);
          v50 = sub_1B964C850();
          sub_1B950FA00();
          sub_1B950FA00();
          sub_1B8D9207C(v37, &qword_1EBAB8E20, &unk_1B964D620);
          if ((v50 & 1) == 0)
          {
            goto LABEL_36;
          }

          goto LABEL_23;
        }

        sub_1B950FA00();
        OUTLINED_FUNCTION_182();
        sub_1B950FA00();
        v43 = &qword_1EBAB8E20;
        v44 = &unk_1B964D620;
LABEL_15:
        v45 = v37;
        goto LABEL_16;
      }

      sub_1B950FA00();
    }

    v43 = &qword_1EBAB8E28;
    v44 = &unk_1B96B7BB0;
    goto LABEL_15;
  }

  switch(v39)
  {
    case 1:
      if (v38 == 1)
      {
        goto LABEL_6;
      }

      break;
    case 2:
      if (v38 == 2)
      {
        goto LABEL_6;
      }

      break;
    case 3:
      if (v38 == 3)
      {
        goto LABEL_6;
      }

      break;
    case 4:
      if (v38 == 4)
      {
        goto LABEL_6;
      }

      break;
    default:
      if (!v38)
      {
        goto LABEL_6;
      }

      break;
  }

LABEL_36:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B950F2A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9510248(&qword_1EBAD0088, type metadata accessor for Searchfoundation_MessageAttachment);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B950F320(uint64_t a1)
{
  v2 = sub_1B9510248(&qword_1EBAD0060, type metadata accessor for Searchfoundation_MessageAttachment);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B950F390()
{
  sub_1B9510248(&qword_1EBAD0060, type metadata accessor for Searchfoundation_MessageAttachment);

  return sub_1B964C5D0();
}

uint64_t sub_1B950F42C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBACFFA0);
  __swift_project_value_buffer(v0, qword_1EBACFFA0);
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
  *v24 = "messageText";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v7();
  v25 = (v34 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 52;
  *v26 = "messageStatus";
  *(v26 + 1) = 13;
  v26[16] = 2;
  v7();
  v27 = (v34 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 53;
  *v28 = "messageServiceType";
  *(v28 + 1) = 18;
  v28[16] = 2;
  v7();
  v29 = (v34 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 54;
  *v30 = "audioMessageURL";
  *(v30 + 1) = 15;
  v30[16] = 2;
  v7();
  v31 = (v34 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 55;
  *v32 = "messageAttachment";
  *(v32 + 1) = 17;
  v32[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B950F900()
{
  OUTLINED_FUNCTION_9_38();
  result = sub_1B950FA74();
  qword_1EBACFFB8 = result;
  return result;
}

uint64_t sub_1B950F950()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B950F9A8()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B950FA00()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1B950FA74()
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
  v1 = OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__backgroundColor;
  v2 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageText);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = v0 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageStatus;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v0 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageServiceType;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__audioMessageURL;
  v7 = type metadata accessor for Searchfoundation_URL();
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageAttachment;
  v9 = type metadata accessor for Searchfoundation_MessageAttachment(0);
  __swift_storeEnumTagSinglePayload(v0 + v8, 1, 1, v9);
  return v0;
}

uint64_t sub_1B950FB70(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACFFC0, "Z\b");
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v55 = &v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v54 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v49 = &v45 - v11;
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 56) = 0;
  *(v1 + 58) = 0;
  v45 = (v1 + 58);
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 64) = 0;
  v46 = (v1 + 64);
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  v47 = (v1 + 80);
  *(v1 + 88) = 1;
  v12 = OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__backgroundColor;
  v48 = OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__backgroundColor;
  v13 = type metadata accessor for Searchfoundation_Color(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  v14 = (v1 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageText);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = v1 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageStatus;
  v50 = v1 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageStatus;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v1 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageServiceType;
  v51 = v1 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageServiceType;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__audioMessageURL;
  v52 = OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__audioMessageURL;
  v18 = type metadata accessor for Searchfoundation_URL();
  __swift_storeEnumTagSinglePayload(v1 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageAttachment;
  v53 = OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageAttachment;
  v20 = type metadata accessor for Searchfoundation_MessageAttachment(0);
  __swift_storeEnumTagSinglePayload(v1 + v19, 1, 1, v20);
  swift_beginAccess();
  v21 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v21;
  swift_beginAccess();
  v23 = *(a1 + 24);
  v22 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v23;
  *(v1 + 32) = v22;

  swift_beginAccess();
  v25 = *(a1 + 40);
  v24 = *(a1 + 48);
  swift_beginAccess();
  v26 = *(v1 + 48);
  *(v1 + 40) = v25;
  *(v1 + 48) = v24;

  swift_beginAccess();
  LOBYTE(v24) = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v24;
  swift_beginAccess();
  LOBYTE(v24) = *(a1 + 57);
  swift_beginAccess();
  *(v1 + 57) = v24;
  swift_beginAccess();
  LOBYTE(v24) = *(a1 + 58);
  v27 = v45;
  swift_beginAccess();
  *v27 = v24;
  swift_beginAccess();
  v29 = *(a1 + 64);
  v28 = *(a1 + 72);
  v30 = v46;
  swift_beginAccess();
  v31 = *(v1 + 72);
  *v30 = v29;
  *(v1 + 72) = v28;

  swift_beginAccess();
  v32 = *(a1 + 80);
  LOBYTE(v31) = *(a1 + 88);
  v33 = v47;
  swift_beginAccess();
  *v33 = v32;
  *(v1 + 88) = v31;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v34 = (a1 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageText);
  swift_beginAccess();
  v36 = *v34;
  v35 = v34[1];
  swift_beginAccess();
  v37 = v14[1];
  *v14 = v36;
  v14[1] = v35;

  v38 = (a1 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageStatus);
  swift_beginAccess();
  v39 = *v38;
  LOBYTE(v38) = *(v38 + 8);
  v40 = v50;
  swift_beginAccess();
  *v40 = v39;
  *(v40 + 8) = v38;
  v41 = (a1 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageServiceType);
  swift_beginAccess();
  v42 = *v41;
  LOBYTE(v41) = *(v41 + 8);
  v43 = v51;
  swift_beginAccess();
  *v43 = v42;
  *(v43 + 8) = v41;
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

unint64_t sub_1B95101F4()
{
  result = qword_1EBACFFC8;
  if (!qword_1EBACFFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACFFC8);
  }

  return result;
}

uint64_t sub_1B9510248(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1B9510290()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[9];

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__backgroundColor, &qword_1EBACB050, &unk_1B96B7BD0);
  v5 = *(v0 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageText + 8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__audioMessageURL, &qword_1EBAB8E20, &unk_1B964D620);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageAttachment, &qword_1EBACFFC0, "Z\b");
  return v0;
}

uint64_t sub_1B951033C()
{
  v0 = sub_1B9510290();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Searchfoundation_MessageCardSection.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for Searchfoundation_MessageCardSection(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Searchfoundation_MessageCardSection._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    *(v1 + v2) = sub_1B950FB70(v9);
  }

  OUTLINED_FUNCTION_24_3();
  return sub_1B951042C(v10, v11, v12, v13);
}

uint64_t sub_1B951042C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B95106B0();
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
        sub_1B951077C();
        break;
      default:
        switch(result)
        {
          case '3':
            sub_1B9510858();
            break;
          case '4':
            v11 = sub_1B9513208;
            v12 = a2;
            v13 = a1;
            v14 = a3;
            v15 = a4;
            v16 = &OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageStatus;
            goto LABEL_16;
          case '5':
            v11 = sub_1B95131B4;
            v12 = a2;
            v13 = a1;
            v14 = a3;
            v15 = a4;
            v16 = &OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageServiceType;
LABEL_16:
            sub_1B95108E4(v12, v13, v14, v15, v16, v11);
            break;
          case '6':
            sub_1B9510988();
            break;
          case '7':
            sub_1B9510A64();
            break;
          default:
            continue;
        }

        break;
    }
  }
}

uint64_t sub_1B95106B0()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Punchout();
  sub_1B9510248(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B951077C()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_Color(0);
  sub_1B9510248(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9510858()
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B95108E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
{
  v7 = *a5;
  OUTLINED_FUNCTION_131();
  v8 = swift_beginAccess();
  a6(v8);
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B9510988()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_URL();
  sub_1B9510248(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9510A64()
{
  swift_beginAccess();
  type metadata accessor for Searchfoundation_MessageAttachment(0);
  sub_1B9510248(&qword_1EBAD0060, type metadata accessor for Searchfoundation_MessageAttachment);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t Searchfoundation_MessageCardSection.traverse<A>(visitor:)()
{
  v2 = type metadata accessor for Searchfoundation_MessageCardSection(0);
  result = sub_1B9510BAC(*(v0 + *(v2 + 20)));
  if (!v1)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B9510BAC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACFFC0, "Z\b");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v45 - v6;
  v8 = type metadata accessor for Searchfoundation_MessageAttachment(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v46 = v45 - v12;
  v47 = type metadata accessor for Searchfoundation_URL();
  v13 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v45[1] = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v49 = v45 - v17;
  v50 = type metadata accessor for Searchfoundation_Color(0);
  v18 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v48 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v57 = a1;
  if (*(*(a1 + 16) + 16))
  {
    v45[0] = v7;
    type metadata accessor for Searchfoundation_Punchout();
    sub_1B9510248(&qword_1ED9D3030, type metadata accessor for Searchfoundation_Punchout);

    sub_1B964C730();
    if (v1)
    {
    }

    v7 = v45[0];
  }

  v20 = v57;
  swift_beginAccess();
  v21 = *(v20 + 24);
  v22 = *(v20 + 32);
  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
    goto LABEL_9;
  }

  sub_1B964C700();
  if (v2)
  {
  }

LABEL_9:
  v24 = v57;
  swift_beginAccess();
  v25 = *(v24 + 40);
  v26 = *(v24 + 48);
  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {

    sub_1B964C700();
    if (v2)
    {
    }
  }

  v29 = v57;
  swift_beginAccess();
  if (*(v29 + 56) != 1 || (result = sub_1B964C670(), !v2))
  {
    swift_beginAccess();
    if (*(v29 + 57) != 1 || (result = sub_1B964C670(), !v2))
    {
      swift_beginAccess();
      if (*(v29 + 58) != 1 || (result = sub_1B964C670(), !v2))
      {
        swift_beginAccess();
        v30 = *(v29 + 64);
        v31 = *(v29 + 72);
        v32 = HIBYTE(v31) & 0xF;
        if ((v31 & 0x2000000000000000) == 0)
        {
          v32 = v30 & 0xFFFFFFFFFFFFLL;
        }

        if (v32)
        {

          sub_1B964C700();
          if (v2)
          {
          }
        }

        v33 = v57;
        swift_beginAccess();
        if (!*(v33 + 80) || (v34 = *(v33 + 88), v55 = *(v33 + 80), v56 = v34, sub_1B92C8A2C(), result = sub_1B964C680(), !v2))
        {
          v45[0] = OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__backgroundColor;
          swift_beginAccess();
          v35 = v49;
          sub_1B8D92024();
          if (__swift_getEnumTagSinglePayload(v35, 1, v50) == 1)
          {
            sub_1B8D9207C(v35, &qword_1EBACB050, &unk_1B96B7BD0);
          }

          else
          {
            v45[0] = type metadata accessor for Searchfoundation_Color;
            sub_1B950F950();
            sub_1B9510248(qword_1ED9CD030, type metadata accessor for Searchfoundation_Color);
            sub_1B964C740();
            result = sub_1B950FA00();
            if (v2)
            {
              return result;
            }
          }

          v36 = (v57 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageText);
          swift_beginAccess();
          v37 = *v36;
          v38 = v36[1];
          v39 = HIBYTE(v38) & 0xF;
          if ((v38 & 0x2000000000000000) == 0)
          {
            v39 = v37 & 0xFFFFFFFFFFFFLL;
          }

          if (!v39 || (, sub_1B964C700(), result = , !v2))
          {
            v40 = (v57 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageStatus);
            swift_beginAccess();
            if (!*v40 || (v41 = *(v40 + 8), v53 = *v40, v54 = v41, sub_1B9513208(), result = sub_1B964C680(), !v2))
            {
              v42 = (v57 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageServiceType);
              swift_beginAccess();
              if (!*v42 || (v43 = *(v42 + 8), v51 = *v42, v52 = v43, sub_1B95131B4(), result = sub_1B964C680(), !v2))
              {
                v50 = OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__audioMessageURL;
                swift_beginAccess();
                v44 = v46;
                sub_1B8D92024();
                if (__swift_getEnumTagSinglePayload(v44, 1, v47) == 1)
                {
                  sub_1B8D9207C(v44, &qword_1EBAB8E20, &unk_1B964D620);
                }

                else
                {
                  v50 = type metadata accessor for Searchfoundation_URL;
                  sub_1B950F950();
                  sub_1B9510248(&qword_1ED9D30B8, type metadata accessor for Searchfoundation_URL);
                  sub_1B964C740();
                  result = sub_1B950FA00();
                  if (v2)
                  {
                    return result;
                  }
                }

                v50 = OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageAttachment;
                swift_beginAccess();
                sub_1B8D92024();
                if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
                {
                  return sub_1B8D9207C(v7, &qword_1EBACFFC0, "Z\b");
                }

                else
                {
                  sub_1B950F950();
                  sub_1B9510248(&qword_1EBAD0060, type metadata accessor for Searchfoundation_MessageAttachment);
                  sub_1B964C740();
                  return sub_1B950FA00();
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

uint64_t static Searchfoundation_MessageCardSection.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_3_72();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {
    v5 = *(v1 + v2);

    v6 = sub_1B951161C(v3, v4);

    if (!v6)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_8_44();
  sub_1B9510248(v7, v8);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

BOOL sub_1B951161C(uint64_t a1, uint64_t a2)
{
  v103 = type metadata accessor for Searchfoundation_MessageAttachment(0);
  v4 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103);
  v100[1] = v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAD00A0, &unk_1B96D5000);
  v6 = *(*(v102 - 8) + 64);
  MEMORY[0x1EEE9AC00](v102);
  v104 = v100 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACFFC0, "Z\b");
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v100[2] = v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v109 = v100 - v12;
  v107 = type metadata accessor for Searchfoundation_URL();
  v13 = *(*(v107 - 8) + 64);
  MEMORY[0x1EEE9AC00](v107);
  v101 = v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E28, &unk_1B96B7BB0);
  v15 = *(*(v106 - 8) + 64);
  MEMORY[0x1EEE9AC00](v106);
  v108 = v100 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v105 = v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v110 = v100 - v21;
  v22 = type metadata accessor for Searchfoundation_Color(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v111 = v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB058, &unk_1B96CA9D0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v112 = v100 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v32 = v100 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v34 = v100 - v33;
  swift_beginAccess();
  v35 = *(a1 + 16);
  swift_beginAccess();
  v36 = *(a2 + 16);

  sub_1B8D67B1C();
  v38 = v37;

  if ((v38 & 1) == 0)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v40 = *(a1 + 24);
  v39 = *(a1 + 32);
  swift_beginAccess();
  v41 = v40 == *(a2 + 24) && v39 == *(a2 + 32);
  if (!v41 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v42 = *(a1 + 40);
  v43 = *(a1 + 48);
  swift_beginAccess();
  v44 = v42 == *(a2 + 40) && v43 == *(a2 + 48);
  if (!v44 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v45 = *(a1 + 56);
  swift_beginAccess();
  if (v45 != *(a2 + 56))
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v46 = *(a1 + 57);
  swift_beginAccess();
  if (v46 != *(a2 + 57))
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v47 = *(a1 + 58);
  swift_beginAccess();
  if (v47 != *(a2 + 58))
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v48 = *(a1 + 64);
  v49 = *(a1 + 72);
  swift_beginAccess();
  v50 = v48 == *(a2 + 64) && v49 == *(a2 + 72);
  if (!v50 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v51 = *(a1 + 80);
  v52 = *(a1 + 88);
  swift_beginAccess();
  v53 = *(a2 + 88);
  if (!sub_1B8D92198(v51, v52, *(a2 + 80)))
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v54 = *(v25 + 48);
  v55 = v112;
  sub_1B8D92024();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v55, 1, v22) == 1)
  {
    sub_1B8D9207C(v34, &qword_1EBACB050, &unk_1B96B7BD0);
    if (__swift_getEnumTagSinglePayload(v55 + v54, 1, v22) == 1)
    {
      sub_1B8D9207C(v55, &qword_1EBACB050, &unk_1B96B7BD0);
      goto LABEL_34;
    }

LABEL_26:
    v56 = &qword_1EBACB058;
    v57 = &unk_1B96CA9D0;
    v58 = v55;
LABEL_27:
    sub_1B8D9207C(v58, v56, v57);
    goto LABEL_28;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v55 + v54, 1, v22) == 1)
  {
    sub_1B8D9207C(v34, &qword_1EBACB050, &unk_1B96B7BD0);
    sub_1B950FA00();
    goto LABEL_26;
  }

  v60 = v111;
  sub_1B950F950();
  v61 = *(v22 + 20);
  if (*&v32[v61] != *&v60[v61])
  {
    v62 = *&v32[v61];

    sub_1B947FDE4();
    v64 = v63;

    if ((v64 & 1) == 0)
    {
      sub_1B950FA00();
      v87 = &qword_1EBACB050;
      v88 = &unk_1B96B7BD0;
      sub_1B8D9207C(v34, &qword_1EBACB050, &unk_1B96B7BD0);
      sub_1B950FA00();
      v58 = v55;
LABEL_45:
      v56 = v87;
      v57 = v88;
      goto LABEL_27;
    }
  }

  sub_1B964C2B0();
  sub_1B9510248(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  v65 = sub_1B964C850();
  sub_1B950FA00();
  sub_1B8D9207C(v34, &qword_1EBACB050, &unk_1B96B7BD0);
  sub_1B950FA00();
  sub_1B8D9207C(v55, &qword_1EBACB050, &unk_1B96B7BD0);
  if ((v65 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_34:
  v66 = (a1 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageText);
  swift_beginAccess();
  v67 = *v66;
  v68 = v66[1];
  v69 = (a2 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageText);
  swift_beginAccess();
  v70 = v67 == *v69 && v68 == v69[1];
  if (!v70 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_28;
  }

  v71 = a1 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageStatus;
  swift_beginAccess();
  v72 = *v71;
  v73 = *(v71 + 8);
  v74 = a2 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageStatus;
  swift_beginAccess();
  v75 = *(v74 + 8);
  if (!sub_1B8D92198(v72, v73, *v74))
  {
    goto LABEL_28;
  }

  v76 = a1 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageServiceType;
  swift_beginAccess();
  v77 = *v76;
  v78 = *(v76 + 8);
  v79 = a2 + OBJC_IVAR____TtCV10PegasusAPI35Searchfoundation_MessageCardSectionP33_5AFDA64847FE8DF7DE22482C0332709113_StorageClass__messageServiceType;
  swift_beginAccess();
  v80 = *(v79 + 8);
  if (!sub_1B8D92198(v77, v78, *v79))
  {
    goto LABEL_28;
  }

  swift_beginAccess();
  v81 = v110;
  sub_1B8D92024();
  swift_beginAccess();
  v82 = *(v106 + 48);
  v83 = v108;
  sub_1B8D92024();
  sub_1B8D92024();
  v84 = v107;
  if (__swift_getEnumTagSinglePayload(v83, 1, v107) != 1)
  {
    v89 = v105;
    sub_1B8D92024();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v83 + v82, 1, v84);
    v86 = v109;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v110, &qword_1EBAB8E20, &unk_1B964D620);
      sub_1B950FA00();
      goto LABEL_48;
    }

    v91 = v101;
    sub_1B950F950();
    v92 = *v89 == *v91 && v89[1] == v91[1];
    if (v92 || (sub_1B964C9F0() & 1) != 0)
    {
      v93 = *(v84 + 20);
      sub_1B964C2B0();
      sub_1B9510248(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
      v94 = sub_1B964C850();
      sub_1B950FA00();
      sub_1B8D9207C(v110, &qword_1EBAB8E20, &unk_1B964D620);
      sub_1B950FA00();
      sub_1B8D9207C(v83, &qword_1EBAB8E20, &unk_1B964D620);
      if (v94)
      {
        goto LABEL_55;
      }

LABEL_28:

      return 0;
    }

    sub_1B950FA00();
    v87 = &qword_1EBAB8E20;
    v88 = &unk_1B964D620;
    sub_1B8D9207C(v110, &qword_1EBAB8E20, &unk_1B964D620);
    sub_1B950FA00();
    v58 = v83;
    goto LABEL_45;
  }

  sub_1B8D9207C(v81, &qword_1EBAB8E20, &unk_1B964D620);
  v85 = __swift_getEnumTagSinglePayload(v83 + v82, 1, v84);
  v86 = v109;
  if (v85 != 1)
  {
LABEL_48:
    v56 = &qword_1EBAB8E28;
    v57 = &unk_1B96B7BB0;
    v58 = v83;
    goto LABEL_27;
  }

  sub_1B8D9207C(v83, &qword_1EBAB8E20, &unk_1B964D620);
LABEL_55:
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  v95 = *(v102 + 48);
  v96 = v104;
  sub_1B8D92024();
  sub_1B8D92024();
  v97 = v103;
  if (__swift_getEnumTagSinglePayload(v96, 1, v103) == 1)
  {

    sub_1B8D9207C(v86, &qword_1EBACFFC0, "Z\b");
    if (__swift_getEnumTagSinglePayload(v96 + v95, 1, v97) == 1)
    {
      sub_1B8D9207C(v96, &qword_1EBACFFC0, "Z\b");
      return 1;
    }

    goto LABEL_60;
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v96 + v95, 1, v97) == 1)
  {

    sub_1B8D9207C(v86, &qword_1EBACFFC0, "Z\b");
    sub_1B950FA00();
LABEL_60:
    sub_1B8D9207C(v96, &qword_1EBAD00A0, &unk_1B96D5000);
    return 0;
  }

  sub_1B950F950();
  static Searchfoundation_MessageAttachment.== infix(_:_:)();
  v99 = v98;

  sub_1B950FA00();
  sub_1B8D9207C(v86, &qword_1EBACFFC0, "Z\b");
  sub_1B950FA00();
  sub_1B8D9207C(v96, &qword_1EBACFFC0, "Z\b");
  return (v99 & 1) != 0;
}

uint64_t sub_1B9512598(void (*a1)(void))
{
  sub_1B964CA70();
  a1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B9510248(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B9512678(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9510248(&qword_1EBAD0080, type metadata accessor for Searchfoundation_MessageCardSection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B95126F8(uint64_t a1)
{
  v2 = sub_1B9510248(&qword_1EBACE700, type metadata accessor for Searchfoundation_MessageCardSection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9512768()
{
  sub_1B9510248(&qword_1EBACE700, type metadata accessor for Searchfoundation_MessageCardSection);

  return sub_1B964C5D0();
}

unint64_t sub_1B95127EC()
{
  result = qword_1EBACFFE0;
  if (!qword_1EBACFFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACFFE0);
  }

  return result;
}

unint64_t sub_1B9512844()
{
  result = qword_1EBACFFE8;
  if (!qword_1EBACFFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACFFE8);
  }

  return result;
}

unint64_t sub_1B951289C()
{
  result = qword_1EBACFFF0;
  if (!qword_1EBACFFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBACFFF0);
  }

  return result;
}

unint64_t sub_1B9512924()
{
  result = qword_1EBAD0008;
  if (!qword_1EBAD0008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0008);
  }

  return result;
}

unint64_t sub_1B951297C()
{
  result = qword_1EBAD0010;
  if (!qword_1EBAD0010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0010);
  }

  return result;
}

unint64_t sub_1B95129D4()
{
  result = qword_1EBAD0018;
  if (!qword_1EBAD0018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0018);
  }

  return result;
}

unint64_t sub_1B9512A5C()
{
  result = qword_1EBAD0030;
  if (!qword_1EBAD0030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0030);
  }

  return result;
}

unint64_t sub_1B9512AB4()
{
  result = qword_1EBAD0038;
  if (!qword_1EBAD0038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0038);
  }

  return result;
}

unint64_t sub_1B9512B0C()
{
  result = qword_1EBAD0040;
  if (!qword_1EBAD0040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0040);
  }

  return result;
}

void sub_1B9512E28()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B9512F14(319, &qword_1ED9F97C8, type metadata accessor for Searchfoundation_URL);
    if (v1 <= 0x3F)
    {
      sub_1B9512F14(319, &qword_1ED9F89D8, type metadata accessor for Searchfoundation_PhotosLibraryImage);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B9512F14(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1B9512F90()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Searchfoundation_MessageCardSection._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B951301C()
{
  sub_1B9512F14(319, &qword_1ED9F9780, type metadata accessor for Searchfoundation_Color);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1B9512F14(319, &qword_1ED9F97C8, type metadata accessor for Searchfoundation_URL);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1B9512F14(319, &qword_1ED9F1960, type metadata accessor for Searchfoundation_MessageAttachment);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_1B95131B4()
{
  result = qword_1EBAD0090;
  if (!qword_1EBAD0090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0090);
  }

  return result;
}

unint64_t sub_1B9513208()
{
  result = qword_1EBAD0098;
  if (!qword_1EBAD0098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBAD0098);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_72()
{
  result = type metadata accessor for Searchfoundation_MessageCardSection(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_9_38()
{
  v0 = type metadata accessor for Searchfoundation_MessageCardSection._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_14_28()
{
  v1 = *(v0 + *(type metadata accessor for Searchfoundation_MessageCardSection(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_16_33()
{
  v1 = *(v0 + *(type metadata accessor for Searchfoundation_MessageCardSection(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_43_17()
{
  v1 = *(v0 + *(type metadata accessor for Searchfoundation_MessageCardSection(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t Searchfoundation_MetaInfoCardSection.init()@<X0>(uint64_t a1@<X8>)
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
  v2 = type metadata accessor for Searchfoundation_MetaInfoCardSection();
  v3 = a1 + v2[13];
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = v2[14];
  type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = v2[15];
  v10 = type metadata accessor for Searchfoundation_URL();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  v14 = v2[16];
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v10);
  v18 = v2[17];
  type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
}

uint64_t type metadata accessor for Searchfoundation_MetaInfoCardSection()
{
  result = qword_1ED9F12A0;
  if (!qword_1ED9F12A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Searchfoundation_MetaInfoCardSection.punchoutOptions.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Searchfoundation_MetaInfoCardSection.punchoutPickerTitle.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_MetaInfoCardSection.punchoutPickerTitle.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Searchfoundation_MetaInfoCardSection.punchoutPickerDismissText.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_MetaInfoCardSection.punchoutPickerDismissText.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Searchfoundation_MetaInfoCardSection.type.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_MetaInfoCardSection.type.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

void Searchfoundation_MetaInfoCardSection.separatorStyle.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

uint64_t Searchfoundation_MetaInfoCardSection.separatorStyle.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t Searchfoundation_MetaInfoCardSection.backgroundColor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_9_39();
  v8 = OUTLINED_FUNCTION_115(*(v7 + 56));
  OUTLINED_FUNCTION_28_2(v8, v9);
  v10 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_9_2();
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v12 = *(v10 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45();
    }

    *(a1 + v12) = qword_1ED9CD1C8;
    v13 = OUTLINED_FUNCTION_493();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, v14, v10);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_85();
    v16 = OUTLINED_FUNCTION_182();
    return sub_1B9514524(v16, v17, v18);
  }

  return result;
}

uint64_t Searchfoundation_MetaInfoCardSection.backgroundColor.setter()
{
  OUTLINED_FUNCTION_313();
  v1 = type metadata accessor for Searchfoundation_MetaInfoCardSection();
  sub_1B8D9207C(v0 + *(v1 + 56), &qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_1_85();
  OUTLINED_FUNCTION_51_15(v2, v3, v4);
  type metadata accessor for Searchfoundation_Color(0);
  v5 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void (*Searchfoundation_MetaInfoCardSection.backgroundColor.modify())(uint64_t **a1, char a2)
{
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_145_1(v5);
  v7 = type metadata accessor for Searchfoundation_Color(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_202_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_30_30(v12);
  OUTLINED_FUNCTION_16_4(*(v13 + 56));
  OUTLINED_FUNCTION_178(v5, 1, v7);
  if (v14)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = *(v7 + 20);
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45();
    }

    OUTLINED_FUNCTION_57_2();
    if (v7 != 1)
    {
      sub_1B8D9207C(v5, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_85();
    sub_1B9514524(v5, v9, v16);
  }

  return sub_1B9513AB4;
}

uint64_t Searchfoundation_MetaInfoCardSection.hasBackgroundColor.getter()
{
  v0 = OUTLINED_FUNCTION_40_8();
  OUTLINED_FUNCTION_183(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_9_39();
  v5 = OUTLINED_FUNCTION_115(*(v4 + 56));
  OUTLINED_FUNCTION_63_4(v5, v6);
  v7 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_11(v7);
  return OUTLINED_FUNCTION_193_1();
}

Swift::Void __swiftcall Searchfoundation_MetaInfoCardSection.clearBackgroundColor()()
{
  v1 = type metadata accessor for Searchfoundation_MetaInfoCardSection();
  sub_1B8D9207C(v0 + *(v1 + 56), &qword_1EBACB050, &unk_1B96B7BD0);
  type metadata accessor for Searchfoundation_Color(0);
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Searchfoundation_MetaInfoCardSection.contentURL.getter()
{
  v1 = OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_9_39();
  v6 = OUTLINED_FUNCTION_115(*(v5 + 60));
  OUTLINED_FUNCTION_28_2(v6, v7);
  type metadata accessor for Searchfoundation_URL();
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    OUTLINED_FUNCTION_158_4();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8E20, &unk_1B964D620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_103();
    v9 = OUTLINED_FUNCTION_182();
    return sub_1B9514524(v9, v10, v11);
  }

  return result;
}

uint64_t sub_1B9513CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(char *))
{
  v10 = a5(0);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v17 - v14;
  sub_1B9514768(a1, &v17 - v14, a6);
  return a7(v15);
}

uint64_t Searchfoundation_MetaInfoCardSection.contentURL.setter()
{
  OUTLINED_FUNCTION_313();
  v1 = type metadata accessor for Searchfoundation_MetaInfoCardSection();
  sub_1B8D9207C(v0 + *(v1 + 60), &qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_0_103();
  OUTLINED_FUNCTION_51_15(v2, v3, v4);
  type metadata accessor for Searchfoundation_URL();
  v5 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void (*Searchfoundation_MetaInfoCardSection.contentURL.modify())(uint64_t **a1, char a2)
{
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_131_1();
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  OUTLINED_FUNCTION_145_1(v5);
  v6 = type metadata accessor for Searchfoundation_URL();
  *(v0 + 16) = v6;
  OUTLINED_FUNCTION_59_1(v6);
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_202_0(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = *(OUTLINED_FUNCTION_30_30(v11) + 60);
  *(v0 + 40) = v12;
  v13 = OUTLINED_FUNCTION_115(v12);
  sub_1B8DD9078(v13, v14, &qword_1EBAB8E20, &unk_1B964D620);
  v15 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v15, v16, v6);
  if (v17)
  {
    OUTLINED_FUNCTION_157_6();
    v18 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v18, v19, v6);
    if (!v17)
    {
      sub_1B8D9207C(v5, &qword_1EBAB8E20, &unk_1B964D620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_103();
    sub_1B9514524(v5, v8, v20);
  }

  return sub_1B9513EE4;
}