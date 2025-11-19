uint64_t sub_1E40A45AC(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  *v1 = sub_1E40A4228();
  return OUTLINED_FUNCTION_116();
}

id sub_1E40A462C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0);
  v1 = sub_1E42062A4();

  v2 = [v0 initWithMAPIDictionaries_];

  return v2;
}

uint64_t sub_1E40A46BC(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  *v1 = sub_1E40A460C();
  return OUTLINED_FUNCTION_116();
}

id sub_1E40A473C(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = v2;
  v4 = *a1;
  v5 = *(v2 + *a1);
  v6 = v5;
  if (v5 == 1)
  {
    v7 = *(v3 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_attributeDict);
    if (v7)
    {
      v8 = a2();
      v9 = *v8;
      v10 = v8[1];

      sub_1E3277E60(v9, v10, v7, &v15);

      if (*(&v16 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
        if (swift_dynamicCast())
        {
          sub_1E3280A90(0, &qword_1ECF3F710);
          sub_1E388A824(v14);

          v6 = sub_1E40A462C();
LABEL_9:
          v11 = *(v3 + v4);
          *(v3 + v4) = v6;
          v12 = v6;
          sub_1E329CC84(v11);
          goto LABEL_10;
        }

LABEL_8:
        v6 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    sub_1E325F748(&v15, &unk_1ECF296E0);
    goto LABEL_8;
  }

LABEL_10:
  sub_1E34AF5F4(v5);
  return v6;
}

uint64_t sub_1E40A48A4(uint64_t a1)
{
  OUTLINED_FUNCTION_94(a1);
  *v1 = sub_1E40A471C();
  return OUTLINED_FUNCTION_116();
}

void sub_1E40A4904(uint64_t a1, char a2, void *a3, void (*a4)(uint64_t))
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(v5 + *a3);
  *(v5 + *a3) = *a1;
  if (a2)
  {
    v8 = v4;
    a4(v6);
  }

  else
  {

    a4(v6);
  }
}

uint64_t sub_1E40A4994()
{
  v1 = OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___isFullyWatched;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___isFullyWatched);
  if (v2 == 2)
  {
    v3 = objc_opt_self();
    OUTLINED_FUNCTION_8();
    v5 = (*(v4 + 616))();
    LOBYTE(v2) = [v3 playedStateForDuration:0 elapsedTime:0 hasBeenPlayed:0 playCount:v5 respectPlayCount:(*(*v0 + 640))()] == 3;
    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

void (*sub_1E40A4A88(void *a1))(uint64_t *a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  *(v1 + 8) = sub_1E40A4994() & 1;
  return sub_1E40A4AD0;
}

uint64_t sub_1E40A4B20()
{
  v1 = sub_1E41FFCB4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_14_10(OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___duration);
  *(v5 + 8) = 1;
  OUTLINED_FUNCTION_14_10(OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___bookmarkTime);
  *(v6 + 8) = 1;
  OUTLINED_FUNCTION_14_10(OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___assetType);
  *(v7 + 8) = 256;
  v41 = xmmword_1E4297170;
  *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___hlsPlaylistURLString) = xmmword_1E4297170;
  OUTLINED_FUNCTION_14_10(OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___resolutionClass);
  *(v8 + 8) = v9;
  OUTLINED_FUNCTION_14_10(OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___videoRange);
  *(v10 + 8) = v11;
  *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___hasDolbyAtmos) = 3;
  v12 = v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___storeID;
  *(v12 + 4) = v11;
  *v12 = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v13);
  *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___allowsManualDownloadRenewal) = 3;
  *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___renewsOfflineKeysAutomatically) = 3;
  *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___redownloadParams) = v41;
  *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___markAsDeleted) = 3;
  *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___contentRating) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___offers) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___personalizedOffers) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___isFullyWatched) = 2;

  v21 = sub_1E38AFA6C(v20);
  v22 = v21;
  if (!v21)
  {
LABEL_6:

    return v22;
  }

  v23 = *(*v21 + 312);

  v23(v43, v24);
  if (v44 == 255)
  {
  }

  else
  {
    v25 = sub_1E325F748(v43, &qword_1ECF2A450);
    v26 = (*(*v22 + 232))(v25);
    v28 = v27;

    v29 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v29 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
      goto LABEL_6;
    }
  }

  v30 = sub_1E41A3110();
  (*(v2 + 16))(v4, v30, v1);

  v31 = sub_1E41FFC94();
  v32 = sub_1E4206814();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v42 = v34;
    *v33 = 136315138;
    v35 = sub_1E4205C74();
    *&v41 = v1;
    v36 = v2;
    v38 = v37;

    v39 = sub_1E3270FC8(v35, v38, &v42);

    *(v33 + 4) = v39;
    _os_log_impl(&dword_1E323F000, v31, v32, "LibFamilySharingPlayableMediaEntity:: received family sharing bad data %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x1E69143B0](v34, -1, -1);
    MEMORY[0x1E69143B0](v33, -1, -1);

    (*(v36 + 8))(v4, v41);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  return 0;
}

void sub_1E40A4F44()
{
  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___hlsPlaylistURLString), *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___hlsPlaylistURLString + 8));
  sub_1E325F748(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___downloadExpirationDate, &qword_1ECF2CDE0);
  sub_1E325F748(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___availabilityEndDate, &qword_1ECF2CDE0);
  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___redownloadParams), *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___redownloadParams + 8));
  sub_1E329CC84(*(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___contentRating));
  sub_1E329CC84(*(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___offers));
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___personalizedOffers);

  sub_1E329CC84(v1);
}

uint64_t sub_1E40A4FF8()
{
  v0 = sub_1E38AFC04();
  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___hlsPlaylistURLString), *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___hlsPlaylistURLString + 8));
  sub_1E325F748(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___downloadExpirationDate, &qword_1ECF2CDE0);
  sub_1E325F748(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___availabilityEndDate, &qword_1ECF2CDE0);
  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___redownloadParams), *(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___redownloadParams + 8));
  sub_1E329CC84(*(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___contentRating));
  sub_1E329CC84(*(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___offers));
  sub_1E329CC84(*(v0 + OBJC_IVAR____TtC8VideosUI35LibFamilySharingPlayableMediaEntity____lazy_storage___personalizedOffers));
  return v0;
}

uint64_t sub_1E40A50AC()
{
  v0 = sub_1E40A4FF8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E40A5330()
{
  OUTLINED_FUNCTION_5_2();
  v1 = (*(v0 + 784))();
  return v1 | ((HIDWORD(v1) & 1) << 32);
}

unint64_t sub_1E40A5568(uint64_t a1)
{
  result = sub_1E402C59C();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for LibFamilySharingPlayableMediaEntity()
{
  result = qword_1EE291040;
  if (!qword_1EE291040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E40A55E4()
{
  sub_1E38B0440();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E40A56D0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 48) + 16 * result);

    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

double String.widthOfString(usingFont:)(void *a1)
{
  v2 = sub_1E4205ED4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF34380);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v4 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F720);
  *(inited + 40) = a1;
  type metadata accessor for Key(0);
  sub_1E3B9794C(&qword_1EE23B100);
  v5 = v4;
  v6 = a1;
  sub_1E4205CB4();
  v7 = sub_1E4205C44();

  [v2 sizeWithAttributes_];
  v9 = v8;

  return ceil(v9);
}

void sub_1E40A588C(uint64_t a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F728);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v36 - v5;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F730);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v40 = v8;
  v9 = *(v1 + 8);
  v10 = v9;
  if (!v9)
  {
    OUTLINED_FUNCTION_8();
    v10 = (*(v11 + 392))();
  }

  v12 = sub_1E40A5DF4(23);
  v13 = v12;
  if (v12 && *v12 != _TtC8VideosUI13TextViewModel)
  {

    v13 = 0;
  }

  v14 = sub_1E40A5DF4(15);
  v15 = v14;
  if (v14 && *v14 != _TtC8VideosUI13TextViewModel)
  {

    v15 = 0;
  }

  v16 = sub_1E40A5DF4(60);
  v17 = v16;
  v18 = v15;
  if (v15)
  {
    goto LABEL_12;
  }

  if (v13)
  {
    swift_retain_n();
    v18 = v13;
LABEL_12:
    v16 = swift_retain_n();
    goto LABEL_13;
  }

  v18 = 0;
LABEL_13:
  v38 = v17;
  if (v9)
  {
    if (v18)
    {
      v19 = *(*v9 + 1624);
      v20 = v18[49];

      v21 = v19(v20, 0);

      if (v21)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

  else if (v18)
  {
LABEL_18:
    v21 = (*(*v18 + 392))(v16);
    goto LABEL_20;
  }

  v21 = 0;
LABEL_20:

  if (v21)
  {
    type metadata accessor for TextLayout();
    v22 = swift_dynamicCastClass();
    if (v22)
    {
      v23 = v22;
      v24 = *(*v22 + 152);

      v37 = v23;
      v24(&v42, v25);

      OUTLINED_FUNCTION_32_1();
      goto LABEL_25;
    }
  }

  v37 = 0;
LABEL_25:
  *v6 = sub_1E4201D54();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F738);
  sub_1E40A5FE0(v13, v2, v38, v15, &v6[*(v26 + 44)]);
  v27 = sub_1E4202764();
  sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v27)
  {
    sub_1E4202774();
  }

  if (v10)
  {
    v28 = *(*v10 + 152);

    v28(&v43, v29);

    OUTLINED_FUNCTION_32_1();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v30 = v40;
  sub_1E329E454(v6, v40, &qword_1ECF3F728);
  OUTLINED_FUNCTION_32_4(v30 + *(v39 + 36));
  v31 = sub_1E4202784();
  sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v31)
  {
    sub_1E4202774();
  }

  if (v10)
  {
    v32 = *(*v10 + 152);

    v32(v44, v33);

    OUTLINED_FUNCTION_32_1();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();

  v34 = v41;
  sub_1E329E454(v30, v41, &qword_1ECF3F730);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F740);
  OUTLINED_FUNCTION_32_4(v34 + *(v35 + 36));
}

uint64_t sub_1E40A5DF4(uint64_t a1)
{
  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 488))();
  if (v3)
  {
    v4 = sub_1E373E010(a1, v3);

    if (v4)
    {
      return v4;
    }
  }

  OUTLINED_FUNCTION_8();
  v6 = (*(v5 + 464))();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  result = sub_1E32AE9B0(v6);
  v9 = result;
  for (i = 0; ; ++i)
  {
    if (v9 == i)
    {

      return 0;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, v7);
      v4 = result;
    }

    else
    {
      if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v4 = *(v7 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1E3742F1C();
    sub_1E4206254();
    sub_1E4206254();
    if (v15 == v13 && v16 == v14)
    {

LABEL_20:

      return v4;
    }

    v12 = sub_1E42079A4();

    if (v12)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1E40A5FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int16 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v144 = a4;
  v143 = a3;
  v8 = sub_1E4201CB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v138 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17_3(&v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v127 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v19);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_5();
  v125 = v21;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F9A8);
  v25 = OUTLINED_FUNCTION_17_2(v24);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F760);
  OUTLINED_FUNCTION_17_2(v30);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v118 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F768);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2_5();
  v131 = v36;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v118 - v38;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F770);
  OUTLINED_FUNCTION_17_2(v42);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v44);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F778);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v46);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F780);
  OUTLINED_FUNCTION_0_10();
  v135 = v47;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F788);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_44();
  if (a1)
  {
    v53 = a1;
    v121 = v52;
    v129 = v51;
    v122 = v13;
    v123 = v10;
    v124 = v8;
    v130 = a5;
    v54 = a2;
    v152 = *(a2 + 8);
    if (v152)
    {
      OUTLINED_FUNCTION_8();
      v56 = *(v55 + 1624);
      v58 = v57;
      v59 = *(v57 + 98);

      sub_1E40A754C(&v152, &v151);
      v60 = v56(v59, 0);
      v61 = sub_1E40A75BC(&v152);
      if (v60)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v58 = v53;
    }

    v63 = (*(*v58 + 392))(v61);
    if (!v63)
    {
      goto LABEL_20;
    }

    v60 = v63;
LABEL_9:
    type metadata accessor for TextLayout();
    v64 = swift_dynamicCastClass();
    if (v64)
    {
      v119 = v27;
      v65 = *(*v64 + 152);

      v65(&v148, v66);
      OUTLINED_FUNCTION_32_1();
      (v65)(v149);
      v120 = v60;

      if (v150)
      {
        v67 = 0;
      }

      else
      {
        v67 = v149[3];
      }

      v68 = sub_1E4201D54();
      v69 = v145;
      *v145 = v68;
      v69[1] = 0;
      *(v69 + 16) = 0;
      *v33 = sub_1E4201B84();
      *(v33 + 1) = v67;
      v33[16] = 0;
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F790);
      sub_1E40A6DB4(v143, v54, &v33[*(v70 + 44)]);
      v71 = sub_1E4202744();
      sub_1E4202774();
      sub_1E4202774();
      if (sub_1E4202774() != v71)
      {
        sub_1E4202774();
      }

      sub_1E4200A54();
      OUTLINED_FUNCTION_9_10();
      sub_1E329E454(v33, v39, &qword_1ECF3F760);
      OUTLINED_FUNCTION_14_179(&v39[*(v34 + 36)]);
      sub_1E329E454(v39, v141, &qword_1ECF3F768);
      v72 = v119;
      v73 = v144;
      if (!v144)
      {
        goto LABEL_29;
      }

      if (v152)
      {
        OUTLINED_FUNCTION_8();
        v75 = *(v74 + 1624);
        v77 = *(*(v76 - 256) + 98);
        sub_1E40A754C(&v152, &v151);

        v78 = v75(v77, 0);
        v73 = v144;
        v79 = v78;
        v80 = sub_1E40A75BC(&v152);
        if (v79)
        {
          goto LABEL_23;
        }
      }

      else
      {
      }

      if (!(*(*v73 + 392))(v80))
      {
LABEL_28:

LABEL_29:
        v93 = 1;
        v86 = v132;
LABEL_30:
        v94 = v140;
        __swift_storeEnumTagSinglePayload(v140, v93, 1, v86);
        v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F798);
        v96 = v145 + *(v95 + 44);
        v97 = v141;
        v98 = v131;
        OUTLINED_FUNCTION_38_2();
        sub_1E3294EE4(v99, v100, v101);
        sub_1E3294EE4(v94, v72, &qword_1ECF2F9A8);
        OUTLINED_FUNCTION_38_2();
        sub_1E3294EE4(v102, v103, v104);
        v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F7A0);
        sub_1E3294EE4(v72, &v96[*(v105 + 48)], &qword_1ECF2F9A8);
        sub_1E325F6F0(v94, &qword_1ECF2F9A8);
        sub_1E325F6F0(v97, &qword_1ECF3F768);
        sub_1E325F6F0(v72, &qword_1ECF2F9A8);
        sub_1E325F6F0(v98, &qword_1ECF3F768);
        v106 = sub_1E4202754();
        sub_1E4202774();
        sub_1E4202774();
        if (sub_1E4202774() != v106)
        {
          sub_1E4202774();
        }

        sub_1E4200A54();
        OUTLINED_FUNCTION_3();
        v107 = v133;
        sub_1E329E454(v145, v133, &qword_1ECF3F770);
        OUTLINED_FUNCTION_32_4(v107 + *(v142 + 36));
        v108 = v137;
        sub_1E4202474();
        v109 = sub_1E40A743C();
        v110 = v134;
        sub_1E4203224();
        (*(v138 + 8))(v108, v139);
        sub_1E325F6F0(v107, &qword_1ECF3F778);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35270);
        v111 = v123;
        v112 = v122;
        if (v143)
        {
          v113 = swift_allocObject();
          *(v113 + 16) = xmmword_1E4299720;
          sub_1E4201CA4();
          sub_1E4201C94();
        }

        else
        {
          v113 = swift_allocObject();
          *(v113 + 16) = xmmword_1E4297BE0;
          sub_1E4201CA4();
        }

        v146 = v113;
        sub_1E40A74F4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35278);
        sub_1E32752B0(&qword_1EE23B5D8, &qword_1ECF35278);
        v114 = v124;
        sub_1E42072E4();
        v146 = v142;
        v147 = v109;
        swift_getOpaqueTypeConformance2();
        v115 = v121;
        v116 = v136;
        sub_1E4203294();

        (*(v111 + 8))(v112, v114);
        (*(v135 + 8))(v110, v116);
        a5 = v130;
        sub_1E329E454(v115, v130, &qword_1ECF3F788);
        v62 = 0;
        goto LABEL_36;
      }

LABEL_23:
      v81 = swift_dynamicCastClass();
      if (v81)
      {
        v82 = *(*v81 + 152);

        v82(&v151, v83);

        OUTLINED_FUNCTION_32_1();

        OUTLINED_FUNCTION_18();
        v84 = v126;
        sub_1E3F23370();

        LOBYTE(v82) = sub_1E4202744();
        sub_1E4202774();
        sub_1E4202774();
        if (sub_1E4202774() != v82)
        {
          sub_1E4202774();
        }

        sub_1E4200A54();
        OUTLINED_FUNCTION_9_10();

        v85 = v125;
        (*(v127 + 32))(v125, v84, v128);
        v86 = v132;
        OUTLINED_FUNCTION_14_179(v85 + *(v132 + 36));
        OUTLINED_FUNCTION_38_2();
        sub_1E329E454(v87, v88, v89);
        OUTLINED_FUNCTION_38_2();
        sub_1E329E454(v90, v91, v92);
        v93 = 0;
        goto LABEL_30;
      }

      goto LABEL_28;
    }

LABEL_20:

    v62 = 1;
    a5 = v130;
LABEL_36:
    v51 = v129;
    return __swift_storeEnumTagSinglePayload(a5, v62, 1, v51);
  }

  v62 = 1;
  return __swift_storeEnumTagSinglePayload(a5, v62, 1, v51);
}

uint64_t sub_1E40A6DB4@<X0>(unsigned __int16 *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v66 = a3;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29878);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F7B8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v59 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25_3();
  v58 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F7C0);
  v16 = OUTLINED_FUNCTION_17_2(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_5();
  v65 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25_3();
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8);
  OUTLINED_FUNCTION_0_10();
  v62 = v22;
  v63 = v21;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_5();
  v64 = v23;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v56 - v25;
  OUTLINED_FUNCTION_18();
  v61 = v26;
  sub_1E3F23370();
  if (a1)
  {
    v27 = *(a2 + 8);
    v70 = v27;
    if (v27)
    {
      v28 = *v27;
      v57 = v6;
      v29 = v10;
      v30 = *(v28 + 1624);
      v31 = a1[49];

      sub_1E40A754C(&v70, &v68);
      v32 = v30(v31, 0);
      v10 = v29;
      v6 = v57;
      v33 = v32;
      v34 = sub_1E40A75BC(&v70);
      if (v33)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    if (!(*(*a1 + 392))(v34))
    {
      v36 = 0;
LABEL_11:
      sub_1E3EC24F4(a1, v36, 0, 0);

      v68 = *(a2 + 16);
      v69 = *(a2 + 32);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8);
      MEMORY[0x1E690E3F0](&v67, v37);

      v38 = v9;
      v39 = v67;
      KeyPath = swift_getKeyPath();
      v41 = swift_allocObject();
      *(v41 + 16) = v39;
      v42 = v59;
      (*(v6 + 32))(v59, v38, v60);
      v43 = (v42 + *(v10 + 36));
      *v43 = KeyPath;
      v43[1] = sub_1E37E09AC;
      v43[2] = v41;
      v44 = v58;
      sub_1E329E454(v42, v58, &qword_1ECF3F7B8);
      sub_1E329E454(v44, v20, &qword_1ECF3F7B8);
      v35 = 0;
      goto LABEL_12;
    }

LABEL_8:
    type metadata accessor for ButtonLayout();
    v36 = swift_dynamicCastClass();
    if (!v36)
    {
    }

    goto LABEL_11;
  }

  v35 = 1;
LABEL_12:
  v45 = v20;
  __swift_storeEnumTagSinglePayload(v20, v35, 1, v10);
  v46 = v61;
  v47 = v62;
  v48 = *(v62 + 16);
  v50 = v63;
  v49 = v64;
  v48(v64, v61, v63);
  v51 = v65;
  sub_1E3294EE4(v45, v65, &qword_1ECF3F7C0);
  v52 = v66;
  v48(v66, v49, v50);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F7C8);
  sub_1E3294EE4(v51, v52 + *(v53 + 48), &qword_1ECF3F7C0);
  sub_1E325F6F0(v45, &qword_1ECF3F7C0);
  v54 = *(v47 + 8);
  v54(v46, v50);
  sub_1E325F6F0(v51, &qword_1ECF3F7C0);
  return (v54)(v49, v50);
}

unint64_t sub_1E40A72F8()
{
  result = qword_1ECF3F748;
  if (!qword_1ECF3F748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F740);
    sub_1E40A7384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F748);
  }

  return result;
}

unint64_t sub_1E40A7384()
{
  result = qword_1ECF3F750;
  if (!qword_1ECF3F750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F730);
    sub_1E32752B0(&qword_1ECF3F758, &qword_1ECF3F728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F750);
  }

  return result;
}

unint64_t sub_1E40A743C()
{
  result = qword_1ECF3F7A8;
  if (!qword_1ECF3F7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F778);
    sub_1E32752B0(&qword_1ECF3F7B0, &qword_1ECF3F770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F7A8);
  }

  return result;
}

unint64_t sub_1E40A74F4()
{
  result = qword_1EE289298;
  if (!qword_1EE289298)
  {
    sub_1E4201CB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289298);
  }

  return result;
}

uint64_t sub_1E40A754C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF342D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E40A75BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF342D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E40A7624()
{
  result = sub_1E4205CB4();
  qword_1EE2AA8E0 = result;
  return result;
}

uint64_t sub_1E40A7664()
{
  result = sub_1E4205CB4();
  qword_1EE2AA8B0 = result;
  return result;
}

uint64_t sub_1E40A76A4()
{
  v0 = sub_1E4207784();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E40A76F0(char a1)
{
  result = 0x6E6F74747542;
  switch(a1)
  {
    case 1:
      result = 1819043139;
      break;
    case 2:
      result = 1935827284;
      break;
    case 3:
      result = 0x686372616553;
      break;
    case 4:
      result = 0x626174627553;
      break;
    case 5:
      result = 0x746E656D75636F44;
      break;
    case 6:
      result = 1954047316;
      break;
    case 7:
      result = 0x676F6C616944;
      break;
    case 8:
      result = 0x65697669746C754DLL;
      break;
    case 9:
      result = 0x6567616D49;
      break;
    case 10:
      result = 0x6F74616369646E49;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E40A7800(unsigned __int8 a1, char a2)
{
  v2 = 0x6E6F74747542;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x6E6F74747542;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1819043139;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1935827284;
      break;
    case 3:
      v5 = 0x686372616553;
      break;
    case 4:
      v5 = 0x626174627553;
      break;
    case 5:
      v3 = 0xE800000000000000;
      v5 = 0x746E656D75636F44;
      break;
    case 6:
      v3 = 0xE400000000000000;
      v5 = 1954047316;
      break;
    case 7:
      v5 = 0x676F6C616944;
      break;
    case 8:
      v5 = 0x65697669746C754DLL;
      v3 = 0xE900000000000077;
      break;
    case 9:
      v3 = 0xE500000000000000;
      v5 = 0x6567616D49;
      break;
    case 10:
      v5 = 0x6F74616369646E49;
      v3 = 0xE900000000000072;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1819043139;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1935827284;
      break;
    case 3:
      v2 = 0x686372616553;
      break;
    case 4:
      v2 = 0x626174627553;
      break;
    case 5:
      v6 = 0xE800000000000000;
      v2 = 0x746E656D75636F44;
      break;
    case 6:
      v6 = 0xE400000000000000;
      v2 = 1954047316;
      break;
    case 7:
      v2 = 0x676F6C616944;
      break;
    case 8:
      v2 = 0x65697669746C754DLL;
      v6 = 0xE900000000000077;
      break;
    case 9:
      v6 = 0xE500000000000000;
      v2 = 0x6567616D49;
      break;
    case 10:
      v2 = 0x6F74616369646E49;
      v6 = 0xE900000000000072;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E40A7A58(char a1)
{
  sub_1E4207B44();
  sub_1E40A76F0(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E40A7AC4()
{
  sub_1E4206014();
}

uint64_t sub_1E40A7C04(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E40A76F0(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E40A7C64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E40A76A4();
  *a1 = result;
  return result;
}

uint64_t sub_1E40A7C94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E40A76F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E40A7CC8()
{
  type metadata accessor for Accessibility();
  sub_1E40A7DC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F7D0);
  sub_1E32752B0(&qword_1EE2888D8, &qword_1ECF3F7D0);
  sub_1E4202EA4();
}

void sub_1E40A7DC8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  if (!v1)
  {
    OUTLINED_FUNCTION_14_180();
    v13 = sub_1E324FBDC();
    (*(v8 + 16))(v12, v13, v6);
    v14 = sub_1E41FFC94();
    v15 = sub_1E42067E4();
    if (os_log_type_enabled(v14, v15))
    {
      OUTLINED_FUNCTION_6_21();
      v21 = OUTLINED_FUNCTION_10_11();
      v22[0] = v21;
      *v3 = 136315138;
      v16 = sub_1E40A76F0(v5);
      v18 = sub_1E3270FC8(v16, v17, v22);

      *(v3 + 4) = v18;
      _os_log_impl(&dword_1E323F000, v14, v15, "Accessibility:: no additionalIdString for %s. Using Default", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_14_180();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v8 + 8))(v12, v6);
  }

  v19 = sub_1E40A76F0(v5);
  v20 = 0xE700000000000000;
  v22[0] = 0x2E56542E414955;
  v22[1] = 0xE700000000000000;
  MEMORY[0x1E69109E0](v19);

  OUTLINED_FUNCTION_16_155();

  if (v1)
  {
    v20 = v1;
  }

  MEMORY[0x1E69109E0](v3, v20);

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40A7FF0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3;
  return MEMORY[0x1E690DE70](v6, a4, &type metadata for AccessibilityIdentifier, a5);
}

void sub_1E40A802C()
{
  OUTLINED_FUNCTION_31_1();
  v47 = v0;
  v2 = v1;
  v4 = v3;
  LODWORD(v46) = v5;
  v7 = v6;
  v50 = v8;
  v44 = *(v3 - 8);
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44 - v14;
  v16 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v44 - v24;
  v26 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v49 = v27;
  v29 = MEMORY[0x1EEE9AC00](v28);
  v48 = &v44 - v30;
  if (v7)
  {
    v53[0] = v45;
    v53[1] = v7;
    v54 = v46;
    v46 = v26;
    MEMORY[0x1E690DE70](v53, v4, &type metadata for AccessibilityIdentifier, v2, v29);
    v31 = sub_1E40A9828();
    v51 = v2;
    v52 = v31;
    OUTLINED_FUNCTION_4_1();
    swift_getWitnessTable();
    v32 = *(v18 + 16);
    v32(v25, v22, v16);
    v33 = *(v18 + 8);
    v33(v22, v16);
    v32(v22, v25, v16);
    v34 = v2;
    v26 = v46;
    v35 = v48;
    sub_1E37B8D98(v22, v16);
    v33(v22, v16);
    v33(v25, v16);
  }

  else
  {
    v36 = v44;
    v37 = *(v44 + 16);
    v37(v15, v47, v4, v29);
    (v37)(v12, v15, v4);
    v38 = sub_1E40A9828();
    v34 = v2;
    v59 = v2;
    v60 = v38;
    OUTLINED_FUNCTION_4_1();
    swift_getWitnessTable();
    v39 = v48;
    sub_1E37B8E90(v12, v16, v4);
    v40 = *(v36 + 8);
    v40(v12, v4);
    v41 = v15;
    v35 = v39;
    v40(v41, v4);
  }

  v42 = sub_1E40A9828();
  v57 = v34;
  v58 = v42;
  OUTLINED_FUNCTION_4_1();
  WitnessTable = swift_getWitnessTable();
  v56 = v34;
  OUTLINED_FUNCTION_2_25();
  swift_getWitnessTable();
  v43 = v49;
  (*(v49 + 16))(v50, v35, v26);
  (*(v43 + 8))(v35, v26);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40A8408()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FBA0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v44 - v10;
  v13 = *(v1 + 16);
  v12 = *(v1 + 24);
  if (!v12 || (v46 = *(v1 + 16), v47 = v12, v51 = 0x7079746F746F7270, v52 = 0xE900000000000065, v14 = sub_1E41FE6C4(), __swift_storeEnumTagSinglePayload(v11, 1, 1, v14), sub_1E32822E0(), sub_1E4207234(), v16 = v15, sub_1E3F863D8(v11), (v16 & 1) != 0))
  {
    sub_1E40A8978();
    v19 = v17;
    if (v18)
    {
      v51 = v17;
      v52 = v18;
      v20 = sub_1E39C2CD0();
      if (v21)
      {
        v22 = v20;
        v23 = v21;
        v44 = v4;
        v45 = v2;
        v24 = sub_1E3CFEA54();
        v25 = *(**v24 + 144);

        LOBYTE(v25) = v25(v26);

        if (v25)
        {
          v27 = *(**v24 + 376);

          v28 = v27(v22, v23);
        }

        else
        {

          v48 = &unk_1F5D5D528;
          v49 = &off_1F5D5C858;
          LOBYTE(v46) = 0;
          v29 = j__OUTLINED_FUNCTION_18();
          v28 = sub_1E39C29F0(&v46, v29 & 1);
          __swift_destroy_boxed_opaque_existential_1(&v46);
        }

        v46 = 0;
        v47 = 0xE000000000000000;
        OUTLINED_FUNCTION_16_155();
        if (v28)
        {
          v30 = 2;
        }

        else
        {
          v30 = 3;
        }

        LOBYTE(v50) = v30;
        sub_1E4207614();
        v19 = v47;
        MEMORY[0x1E69109E0](v46, v47);

        v4 = v44;
        v2 = v45;
      }

      sub_1E40A8F40();
      if (v32)
      {
        v46 = 0x49746E657261702ELL;
        v47 = 0xEB00000000223D64;
        MEMORY[0x1E69109E0]();

        MEMORY[0x1E69109E0](34, 0xE100000000000000);
        v19 = v47;
        MEMORY[0x1E69109E0](v46, v47);
      }

      if (v12)
      {
        OUTLINED_FUNCTION_10_174();
        MEMORY[0x1E69109E0](v13, v12);
        MEMORY[0x1E69109E0](34, 0xE100000000000000);
        MEMORY[0x1E69109E0](v46, v47);
LABEL_17:

LABEL_26:
        sub_1E40A7DC8();

        goto LABEL_27;
      }

      v33 = (*(*v1 + 624))(v31);
      if (v33)
      {
        v34 = v33;
        if (sub_1E373F6E0())
        {
          v35 = *(v34 + 24);
          if (v35)
          {
            v36 = *(v34 + 16);
            OUTLINED_FUNCTION_10_174();

            MEMORY[0x1E69109E0](v36, v35);

            MEMORY[0x1E69109E0](34, 0xE100000000000000);
            MEMORY[0x1E69109E0](v46, v47);

            goto LABEL_17;
          }
        }
      }

      v37 = sub_1E324FBDC();
      (*(v4 + 16))(v8, v37, v2);

      v38 = sub_1E41FFC94();
      v39 = sub_1E42067E4();

      if (os_log_type_enabled(v38, v39))
      {
        OUTLINED_FUNCTION_6_21();
        v40 = OUTLINED_FUNCTION_10_11();
        v46 = v40;
        *v19 = 136315138;
        v50 = *(v1 + 98);
        sub_1E37D144C();
        v41 = sub_1E4207944();
        v43 = sub_1E3270FC8(v41, v42, &v46);

        *(v19 + 4) = v43;
        _os_log_impl(&dword_1E323F000, v38, v39, "Accessibility:: no identifier found for %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v40);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v4 + 8))(v8, v2);
      goto LABEL_26;
    }
  }

LABEL_27:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40A8978()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v62 - v12;
  v14 = (*(*v2 + 320))(v11);
  if (!v15)
  {
    v21 = sub_1E324FBDC();
    (*(v5 + 16))(v9, v21, v3);

    v22 = sub_1E41FFC94();
    v23 = sub_1E42067E4();

    if (os_log_type_enabled(v22, v23))
    {
      OUTLINED_FUNCTION_6_21();
      v24 = OUTLINED_FUNCTION_10_11();
      v64 = v24;
      *v0 = 136315138;
      v25 = (*(*v2 + 376))();
      v27 = sub_1E3270FC8(v25, v26, &v64);

      *(v0 + 4) = v27;
      _os_log_impl(&dword_1E323F000, v22, v23, "Accessibility:: no accessibilityIdentifier for %s", v0, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v5 + 8))(v9, v3);
    goto LABEL_19;
  }

  v64 = 46;
  v65 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v14);
  v62[-2] = &v64;
  v18 = sub_1E37D273C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1E3756228, &v62[-4], v16, v17, v62);
  v19 = v18;
  v20 = v18[2];
  if (v20 < 2)
  {

    goto LABEL_16;
  }

  v28 = v18[4];
  v29 = v18[5];
  v30 = v18[6];
  v31 = v18[7];

  MEMORY[0x1E6910920](v28, v29, v30, v31);

  if (v19[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v63 = v3;
    v32 = v19[8];
    v33 = v19[9];
    v34 = v19[10];
    v35 = v19[11];

    v36 = MEMORY[0x1E6910920](v32, v33, v34, v35);

    if (v20 == 2)
    {

      v37 = 0;
      v38 = 0xE000000000000000;
      goto LABEL_12;
    }

    v62[1] = v36;
    v39 = v19[2];
    if (v39 >= 2)
    {
      v40 = sub_1E39E8C20(2uLL, v39, v19);
      v42 = v41;
      v44 = v43;
      v46 = v45;

      v64 = v40;
      v65 = v42;
      v66 = v44;
      v67 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F7E8);
      sub_1E32752B0(&unk_1EE23ACE0, &qword_1ECF3F7E8);
      sub_1E404AEC4();
      v47 = sub_1E4206244();
      v49 = v48;
      swift_unknownObjectRelease();
      v64 = 46;
      v65 = 0xE100000000000000;
      MEMORY[0x1E69109E0](v47, v49);

      v37 = v64;
      v38 = v65;
LABEL_12:
      sub_1E40A93D4();
      v51 = v50;
      v53 = v52;

      if (v53)
      {
        sub_1E40A93D4();
        v55 = v54;
        v57 = v56;

        if (v57)
        {
          v64 = v51;
          v65 = v53;
          OUTLINED_FUNCTION_16_155();
          MEMORY[0x1E69109E0](v55, v57);

          MEMORY[0x1E69109E0](v37, v38);

LABEL_19:
          OUTLINED_FUNCTION_25_2();
          return;
        }
      }

      v3 = v63;
LABEL_16:
      v58 = sub_1E324FBDC();
      (*(v5 + 16))(v13, v58, v3);
      v59 = sub_1E41FFC94();
      v60 = sub_1E42067F4();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_1E323F000, v59, v60, "Accessibility:: ViewModel accessibilityIdentifier should be two integers separated by a period", v61, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      (*(v5 + 8))(v13, v3);
      goto LABEL_19;
    }
  }

  __break(1u);
}

void sub_1E40A8F40()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  if (!sub_1E385053C())
  {
    v9 = (*(*v1 + 624))();
    v10 = (v4 + 8);
    if (v9)
    {
      type metadata accessor for CollectionViewModel();
      do
      {
        if (swift_dynamicCastClass() || (type metadata accessor for EpisodeCollectionViewModel(), swift_dynamicCastClass()))
        {

          goto LABEL_11;
        }

        v11 = (*(*v9 + 624))();

        v9 = v11;
      }

      while (v11);
      v12 = sub_1E324FBDC();
      (*(v4 + 16))(v8, v12, v2);

      v13 = sub_1E41FFC94();
      v14 = sub_1E42067E4();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = OUTLINED_FUNCTION_6_21();
        v20 = swift_slowAlloc();
        v21 = v20;
        *v15 = 136315138;
        sub_1E37D144C();
        v16 = sub_1E4207944();
        v18 = v10;
        v19 = sub_1E3270FC8(v16, v17, &v21);

        *(v15 + 4) = v19;
        v10 = v18;
        _os_log_impl(&dword_1E323F000, v13, v14, "Accessibility:: no parentId found for %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      (*v10)(v8, v2);
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40A91FC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    (*(*a3 + 320))();
    if (v4)
    {
      sub_1E40A7DC8();
      v6 = v5;
      v8 = v7;

      if (a1)
      {

        sub_1E38E89A0(v6, v8, a1);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1E40A92F8()
{
  v2 = sub_1E4207944();
  OUTLINED_FUNCTION_16_155();
  v0 = sub_1E4207944();
  MEMORY[0x1E69109E0](v0);

  return v2;
}

void sub_1E40A93D4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = HIBYTE(v7) & 0xF;
  v18 = v9 & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v19 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    goto LABEL_73;
  }

  if ((v7 & 0x1000000000000000) != 0)
  {

    v22 = sub_1E37801A4(v9, v7, 10);
    v45 = v44;

    if ((v45 & 1) == 0)
    {
LABEL_70:
      if (*v5 != -1)
      {
        swift_once();
      }

      sub_1E40A97D0(v22, *v3);
      if (v38)
      {
        goto LABEL_76;
      }
    }

LABEL_73:
    v39 = sub_1E324FBDC();
    (*(v12 + 16))(v16, v39, v10);

    v40 = sub_1E41FFC94();
    v41 = sub_1E42067F4();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = OUTLINED_FUNCTION_6_21();
      v43 = swift_slowAlloc();
      v46[0] = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_1E3270FC8(v9, v7, v46);
      _os_log_impl(&dword_1E323F000, v40, v41, v1, v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v12 + 8))(v16, v10);
LABEL_76:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  if ((v7 & 0x2000000000000000) == 0)
  {
    if ((v9 & 0x1000000000000000) != 0)
    {
      v20 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v20 = sub_1E4207524();
    }

    v21 = *v20;
    if (v21 == 43)
    {
      if (v18 >= 1)
      {
        if (v18 != 1)
        {
          v22 = 0;
          if (v20)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_4();
              if (!v24 & v23)
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_1_21();
              if (!v24)
              {
                goto LABEL_68;
              }

              v22 = v31 + v30;
              if (__OFADD__(v31, v30))
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_132();
              if (v24)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_59;
        }

        goto LABEL_68;
      }

      goto LABEL_82;
    }

    if (v21 != 45)
    {
      if (v18)
      {
        v22 = 0;
        if (v20)
        {
          while (1)
          {
            v34 = *v20 - 48;
            if (v34 > 9)
            {
              goto LABEL_68;
            }

            v35 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              goto LABEL_68;
            }

            v22 = v35 + v34;
            if (__OFADD__(v35, v34))
            {
              goto LABEL_68;
            }

            ++v20;
            if (!--v18)
            {
              goto LABEL_59;
            }
          }
        }

        goto LABEL_59;
      }

LABEL_68:
      v22 = 0;
      v27 = 1;
LABEL_69:
      v47 = v27;
      if ((v27 & 1) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_73;
    }

    if (v18 >= 1)
    {
      if (v18 != 1)
      {
        v22 = 0;
        if (v20)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_4();
            if (!v24 & v23)
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_1_21();
            if (!v24)
            {
              goto LABEL_68;
            }

            v22 = v26 - v25;
            if (__OFSUB__(v26, v25))
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_132();
            if (v24)
            {
              goto LABEL_69;
            }
          }
        }

LABEL_59:
        v27 = 0;
        goto LABEL_69;
      }

      goto LABEL_68;
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v46[0] = v9;
  v46[1] = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v9 != 43)
  {
    if (v9 != 45)
    {
      if (v17)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_4();
          if (!v24 & v23)
          {
            break;
          }

          OUTLINED_FUNCTION_1_21();
          if (!v24)
          {
            break;
          }

          v22 = v37 + v36;
          if (__OFADD__(v37, v36))
          {
            break;
          }

          OUTLINED_FUNCTION_132();
          if (v24)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    if (v17)
    {
      if (v17 != 1)
      {
        OUTLINED_FUNCTION_15_170();
        while (1)
        {
          OUTLINED_FUNCTION_1_4();
          if (!v24 & v23)
          {
            break;
          }

          OUTLINED_FUNCTION_1_21();
          if (!v24)
          {
            break;
          }

          v22 = v29 - v28;
          if (__OFSUB__(v29, v28))
          {
            break;
          }

          OUTLINED_FUNCTION_132();
          if (v24)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    goto LABEL_81;
  }

  if (v17)
  {
    if (v17 != 1)
    {
      OUTLINED_FUNCTION_15_170();
      while (1)
      {
        OUTLINED_FUNCTION_1_4();
        if (!v24 & v23)
        {
          break;
        }

        OUTLINED_FUNCTION_1_21();
        if (!v24)
        {
          break;
        }

        v22 = v33 + v32;
        if (__OFADD__(v33, v32))
        {
          break;
        }

        OUTLINED_FUNCTION_132();
        if (v24)
        {
          goto LABEL_69;
        }
      }
    }

    goto LABEL_68;
  }

LABEL_83:
  __break(1u);
}

uint64_t sub_1E40A97D0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1E3928950(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 16 * v3);

  return v5;
}

unint64_t sub_1E40A9828()
{
  result = qword_1EE25E378[0];
  if (!qword_1EE25E378[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE25E378);
  }

  return result;
}

unint64_t sub_1E40A9880()
{
  result = qword_1ECF3F7D8;
  if (!qword_1ECF3F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F7D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AccessibilityIdViewType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E40A99CC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E40A9A0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E40A9A5C()
{
  result = qword_1EE289A68;
  if (!qword_1EE289A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F7E0);
    sub_1E32752B0(&qword_1EE2888D8, &qword_1ECF3F7D0);
    sub_1E3806164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A68);
  }

  return result;
}

void sub_1E40A9BD8(double a1)
{
  if ((*(*v1 + 136))() != a1)
  {

    sub_1E40A9B9C();
  }
}

double sub_1E40A9C44()
{

  sub_1E3B50380(&v1);

  return v1;
}

uint64_t sub_1E40A9C90(double a1, double a2)
{
  *v3 = a1;
  *&v3[1] = a2;

  sub_1E3B50420(v3);
}

void (*sub_1E40A9CDC())(_OWORD **a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_18_4(v2);
  *(v1 + 32) = *(v0 + OBJC_IVAR____TtC8VideosUI13ShowcaseValue__scrollViewContentOffset);

  sub_1E3B50380(v1);
  return sub_1E40A9D50;
}

void sub_1E40A9D50(_OWORD **a1)
{
  v1 = *a1;
  v1[1] = **a1;
  sub_1E3B50420((v1 + 1));

  free(v1);
}

uint64_t sub_1E40A9DA0()
{

  v0 = sub_1E38074D0();

  return v0;
}

uint64_t (*sub_1E40A9EA0())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_18_4(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_8_15(KeyPath);
  return sub_1E3846A58;
}

uint64_t sub_1E40A9F40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35A30);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v9 - v7, a1, v2, v6);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF429B0);
  sub_1E4200654();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void (*sub_1E40AA060())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_18_4(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35A30);
  OUTLINED_FUNCTION_7_12(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF429B0);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E40AA16C;
}

uint64_t sub_1E40AA184()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E40AA1FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1E40AA2B4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t (*sub_1E40AA338())()
{
  v1 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_18_4(v1);
  *(v0 + 32) = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_8_15(KeyPath);
  return sub_1E3844B3C;
}

uint64_t sub_1E40AA3CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F800);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v9 - v7, a1, v2, v6);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F7F8);
  sub_1E4200654();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void (*sub_1E40AA4EC())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_18_4(v2) + 24) = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F800);
  OUTLINED_FUNCTION_7_12(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = __swift_coroFrameAllocStub(v6);
  v1[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_11_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F7F8);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E40AA5F8;
}

void sub_1E40AA610(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = v4[4];
    v8 = v4[5];
    (*(v8 + 16))(*(*a1 + 48), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_1E40AA6D8()
{
  v1 = OBJC_IVAR____TtC8VideosUI13ShowcaseValue_shouldAlwaysShowTitle;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E40AA70C(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI13ShowcaseValue_shouldAlwaysShowTitle;
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + v3) = a1;
  return result;
}

double sub_1E40AA7A0()
{
  v1 = OBJC_IVAR____TtC8VideosUI13ShowcaseValue_navBarTransitionDistance;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E40AA7D4(double a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI13ShowcaseValue_navBarTransitionDistance;
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + v3) = a1;
  return result;
}

double sub_1E40AA868()
{
  v1 = OBJC_IVAR____TtC8VideosUI13ShowcaseValue_titleViewTransitionDistance;
  OUTLINED_FUNCTION_0_12();
  return *(v0 + v1);
}

uint64_t sub_1E40AA89C(double a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI13ShowcaseValue_titleViewTransitionDistance;
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E40AA970()
{
  v1 = OBJC_IVAR____TtC8VideosUI13ShowcaseValue__percentage;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF429B0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  v3(v0 + OBJC_IVAR____TtC8VideosUI13ShowcaseValue__height, v2);
  v4 = OBJC_IVAR____TtC8VideosUI13ShowcaseValue__peekingShelfTopPadding;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F7F8);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_1E40AAA60()
{
  sub_1E40AA970();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E40AAAB8()
{
  v0 = swift_allocObject();
  sub_1E40AAAF0();
  return v0;
}

uint64_t sub_1E40AAAF0()
{
  v1 = v0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F7F8);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF429B0);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v13 = OBJC_IVAR____TtC8VideosUI13ShowcaseValue__percentage;
  v21 = 0x3FF0000000000000;
  sub_1E4200634();
  v14 = *(v9 + 32);
  v14(v1 + v13, v12, v7);
  v15 = OBJC_IVAR____TtC8VideosUI13ShowcaseValue__scrollViewContentOffset;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F7F0);
  v21 = 0;
  v22 = 0;
  *(v1 + v15) = sub_1E3B508D0(&v21);
  v16 = OBJC_IVAR____TtC8VideosUI13ShowcaseValue__height;
  v21 = 0;
  sub_1E4200634();
  v14(v1 + v16, v12, v7);
  v17 = OBJC_IVAR____TtC8VideosUI13ShowcaseValue__peekingShelfTopPadding;
  v21 = 0;
  LOBYTE(v22) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40);
  sub_1E4200634();
  (*(v3 + 32))(v1 + v17, v6, v20);
  *(v1 + OBJC_IVAR____TtC8VideosUI13ShowcaseValue_shouldAlwaysShowTitle) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI13ShowcaseValue_navBarTransitionDistance) = 0x4024000000000000;
  *(v1 + OBJC_IVAR____TtC8VideosUI13ShowcaseValue_titleViewTransitionDistance) = 0x4049000000000000;
  return v1;
}

uint64_t sub_1E40AAD3C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ShowcaseValue();
  result = sub_1E4200514();
  *a1 = result;
  return result;
}

double sub_1E40AAD7C(double a1, double a2, double a3)
{
  v3 = 1.0025;
  if (a3 > 0.0 && a2 < 0.0)
  {
    if (-a2 >= a3)
    {
      v3 = -0.0025;
    }

    else
    {
      v3 = (a2 + a3) / a3 * 1.005 + -0.0025;
    }
  }

  v4 = 0.0;
  if (v3 > 0.0)
  {
    v4 = v3;
  }

  v5 = v4 * 100.0;
  if (v3 <= 1.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 100.0;
  }

  return round(v6) / 100.0;
}

uint64_t type metadata accessor for ShowcaseValue()
{
  result = qword_1EE2A6690;
  if (!qword_1EE2A6690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E40AAE4C()
{
  sub_1E38C734C(319, &qword_1EE28A0A8, MEMORY[0x1E69E7DE0], MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    sub_1E40AAF60();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1E40AAF60()
{
  if (!qword_1EE28A0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CA40);
    v0 = sub_1E4200694();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE28A0A0);
    }
  }
}

id LocalNotificationServiceSound.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1E40AB21C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1E40AB2B4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1E40AB2F0(double *a1, double *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return sub_1E4200A44();
  }

  else
  {
    return 0;
  }
}

__n128 sub_1E40AB330@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1E4203DA4();
  v14 = v13;
  if (a2)
  {

    sub_1E42036E4();
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;
  }

  else
  {
    if (!a4)
    {
      v17 = 0;
      v22 = 0u;
      v23 = 0u;
      v18 = -1;
      goto LABEL_6;
    }

    sub_1E42036E4();
    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    *(v16 + 24) = a5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F818);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F820);
  sub_1E40AB898();
  sub_1E40AB950();
  sub_1E4201F44();
  v22 = v25;
  v23 = v24;
  v17 = v26;
  v18 = v27;
LABEL_6:
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F808);
  (*(*(v19 - 8) + 16))(a6, a1, v19);
  v20 = a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F810) + 36);
  result = v23;
  *v20 = v23;
  *(v20 + 16) = v22;
  *(v20 + 32) = v17;
  *(v20 + 40) = v18;
  *(v20 + 48) = v12;
  *(v20 + 56) = v14;
  return result;
}

uint64_t sub_1E40AB544@<X0>(void *a1@<X8>)
{
  sub_1E4201F74();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_298();
  OUTLINED_FUNCTION_74();
  sub_1E4200E84();
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_74();
  result = v8(v7);
  *a1 = v4;
  a1[1] = v6;
  return result;
}

uint64_t sub_1E40AB60C@<X0>(void *a1@<X8>)
{
  sub_1E4201F74();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_298();
  OUTLINED_FUNCTION_74();
  sub_1E4200E84();
  v4 = v3;
  v6 = v5;
  v7 = OUTLINED_FUNCTION_74();
  v8(v7);
  result = sub_1E4200E44();
  *a1 = v4;
  a1[1] = v6;
  a1[2] = v10;
  a1[3] = v11;
  a1[4] = v12;
  a1[5] = v13;
  return result;
}

uint64_t sub_1E40AB6EC(char a1)
{
  if (a1)
  {
  }

  OUTLINED_FUNCTION_3_269();
  v1 = OUTLINED_FUNCTION_74();
  return sub_1E34AF594(v1);
}

uint64_t sub_1E40AB768(char a1)
{
  if (a1)
  {
  }

  OUTLINED_FUNCTION_3_269();
  v1 = OUTLINED_FUNCTION_74();
  return sub_1E34AF594(v1);
}

unint64_t sub_1E40AB7E4()
{
  result = qword_1EE2A7650[0];
  if (!qword_1EE2A7650[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2A7650);
  }

  return result;
}

unint64_t sub_1E40AB898()
{
  result = qword_1EE289898;
  if (!qword_1EE289898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F818);
    sub_1E32752B0(&qword_1EE2888B0, &qword_1ECF3F828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289898);
  }

  return result;
}

unint64_t sub_1E40AB950()
{
  result = qword_1EE2898A0;
  if (!qword_1EE2898A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F820);
    sub_1E32752B0(&qword_1EE2888B8, &qword_1ECF3F830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2898A0);
  }

  return result;
}

uint64_t sub_1E40ABA34(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E40ABA54(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

unint64_t sub_1E40ABA9C()
{
  result = qword_1EE289A90;
  if (!qword_1EE289A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F810);
    sub_1E32752B0(&qword_1EE288910, &qword_1ECF3F808);
    sub_1E32752B0(&qword_1EE289250, &qword_1ECF3F838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A90);
  }

  return result;
}

uint64_t sub_1E40ABB88(char a1)
{
  switch(a1)
  {
    case 2:
      goto LABEL_13;
    default:
      v2 = sub_1E42079A4();

      if (v2)
      {
        return 1;
      }

      v3 = sub_1E40AC584(a1);
      v5 = v4;
      if (v3 == 0x4F79426565726854 && v4 == 0xEA0000000000656ELL)
      {
        goto LABEL_13;
      }

      v7 = v3;
      v8 = sub_1E42079A4();

      if (v8)
      {
        return 1;
      }

      if (v7 == 0x5479746E65766553 && v5 == 0xED00007974726968)
      {
LABEL_13:

        return 1;
      }

      else
      {
        v10 = sub_1E42079A4();

        return v10 & 1;
      }
  }
}

uint64_t sub_1E40ABD64(unsigned __int8 a1, char a2)
{
  v2 = 0xEA00000000006E65;
  v3 = 0x657263536C6C7566;
  v4 = a1;
  v5 = 0x657263536C6C7566;
  v6 = 0xEA00000000006E65;
  switch(v4)
  {
    case 1:
      v6 = 0xE600000000000000;
      v5 = 0x7463656C6573;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v5 = 1702260589;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v5 = 0x65766F6D6572;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE600000000000000;
      v3 = 0x7463656C6573;
      break;
    case 2:
      v2 = 0xE400000000000000;
      v3 = 1702260589;
      break;
    case 3:
      v2 = 0xE600000000000000;
      v3 = 0x65766F6D6572;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E40ABE98(char a1, char a2)
{
  if (a1)
  {
    v2 = 0xEE00686374615777;
  }

  else
  {
    v2 = 0xED00007469644577;
  }

  if (a2)
  {
    v3 = 0xEE00686374615777;
  }

  else
  {
    v3 = 0xED00007469644577;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E42079A4();
  }

  return v4 & 1;
}

uint64_t sub_1E40ABF38(unsigned __int8 a1, char a2)
{
  v2 = 0x656C676E6953;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x656C676E6953;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x6F775479426F7754;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v5 = 0x656E4F79426F7754;
      break;
    case 3:
      v5 = 0x4F79426565726854;
      v7 = 25966;
      goto LABEL_9;
    case 4:
      v5 = 0x656E4F79426F7774;
      v6 = 0x6F77547942;
      goto LABEL_7;
    case 5:
      v5 = 0x5479746E65766553;
      v6 = 0x7974726968;
LABEL_7:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 6:
      v5 = 0x6669467974666946;
      v7 = 31092;
LABEL_9:
      v3 = v7 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      break;
    default:
      break;
  }

  v8 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v8 = 0xE800000000000000;
      v2 = 0x6F775479426F7754;
      break;
    case 2:
      v8 = 0xE800000000000000;
      v2 = 0x656E4F79426F7754;
      break;
    case 3:
      v2 = 0x4F79426565726854;
      v10 = 25966;
      goto LABEL_18;
    case 4:
      v2 = 0x656E4F79426F7774;
      v9 = 0x6F77547942;
      goto LABEL_16;
    case 5:
      v2 = 0x5479746E65766553;
      v9 = 0x7974726968;
LABEL_16:
      v8 = v9 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 6:
      v2 = 0x6669467974666946;
      v10 = 31092;
LABEL_18:
      v8 = v10 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1E42079A4();
  }

  return v12 & 1;
}

uint64_t sub_1E40AC138(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000776569;
  v3 = 0x567972616D697250;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x616D6972506E6F4ELL;
    }

    else
    {
      v5 = 0x6B636F4C6576694CLL;
    }

    if (v4 == 1)
    {
      v6 = 0xEE00776569567972;
    }

    else
    {
      v6 = 0xEA00000000007075;
    }
  }

  else
  {
    v5 = 0x567972616D697250;
    v6 = 0xEB00000000776569;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x616D6972506E6F4ELL;
    }

    else
    {
      v3 = 0x6B636F4C6576694CLL;
    }

    if (a2 == 1)
    {
      v2 = 0xEE00776569567972;
    }

    else
    {
      v2 = 0xEA00000000007075;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E40AC258(unsigned __int8 a1, char a2)
{
  v2 = 1970169197;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x4D726564726F6572;
    }

    else
    {
      v4 = 0xD000000000000012;
    }

    if (v3 == 1)
    {
      v5 = 0xEB00000000756E65;
    }

    else
    {
      v5 = 0x80000001E42908E0;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1970169197;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x4D726564726F6572;
    }

    else
    {
      v2 = 0xD000000000000012;
    }

    if (a2 == 1)
    {
      v6 = 0xEB00000000756E65;
    }

    else
    {
      v6 = 0x80000001E42908E0;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E40AC360(unsigned __int8 a1, char a2)
{
  v2 = 0xEA00000000007075;
  v3 = 0x6B636F4C6576694CLL;
  v4 = a1;
  v5 = 0x6B636F4C6576694CLL;
  v6 = 0xEA00000000007075;
  switch(v4)
  {
    case 1:
      v5 = 0x507972616D697250;
      v6 = 0xED0000726579616CLL;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v5 = 0x6E6F74747562;
      break;
    case 3:
      v5 = 0x567972616D697250;
      v6 = 0xEB00000000776569;
      break;
    case 4:
      v5 = 0x616D6972506E6F4ELL;
      v6 = 0xEE00776569567972;
      break;
    case 5:
      v6 = 0xE600000000000000;
      v5 = 0x726579616C50;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x507972616D697250;
      v2 = 0xED0000726579616CLL;
      break;
    case 2:
      v2 = 0xE600000000000000;
      v3 = 0x6E6F74747562;
      break;
    case 3:
      v3 = 0x567972616D697250;
      v2 = 0xEB00000000776569;
      break;
    case 4:
      v3 = 0x616D6972506E6F4ELL;
      v2 = 0xEE00776569567972;
      break;
    case 5:
      v2 = 0xE600000000000000;
      v3 = 0x726579616C50;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E40AC544()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E40AC584(char a1)
{
  result = 0x656C676E6953;
  switch(a1)
  {
    case 1:
      result = 0x6F775479426F7754;
      break;
    case 2:
      result = 0x656E4F79426F7754;
      break;
    case 3:
      result = 0x4F79426565726854;
      break;
    case 4:
      result = 0x656E4F79426F7774;
      break;
    case 5:
      result = 0x5479746E65766553;
      break;
    case 6:
      result = 0x6669467974666946;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E40AC6D0()
{
  sub_1E4207B44();
  sub_1E40AC778();
  return sub_1E4207BA4();
}

uint64_t sub_1E40AC718(uint64_t a1, void (*a2)(uint64_t))
{
  sub_1E4207B44();
  a2(a1);
  OUTLINED_FUNCTION_18_0();

  return sub_1E4207BA4();
}

uint64_t sub_1E40AC778()
{
  sub_1E4206014();
}

uint64_t sub_1E40AC824()
{
  sub_1E4206014();
}

uint64_t sub_1E40AC894()
{
  sub_1E4206014();
}

uint64_t sub_1E40AC9B4()
{
  sub_1E4206014();
}

uint64_t sub_1E40ACA58()
{
  sub_1E4206014();
}

uint64_t sub_1E40ACAE8()
{
  sub_1E4206014();
}

uint64_t sub_1E40ACC1C()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E40ACCC0()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E40ACD78(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1E4207B44();
  a3(a2);
  OUTLINED_FUNCTION_18_0();

  return sub_1E4207BA4();
}

uint64_t sub_1E40ACDCC()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E40ACE50()
{
  sub_1E4207B44();
  sub_1E40AC778();
  return sub_1E4207BA4();
}

uint64_t sub_1E40ACE94(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E40AC544();
  *v1 = result;
  return result;
}

uint64_t sub_1E40ACEBC()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E40AC584(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E40ACEE4()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E40ACF90(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E40ACEE4();
  *v1 = result;
  return result;
}

uint64_t sub_1E40ACFB8()
{
  OUTLINED_FUNCTION_11_15();
  result = sub_1E40ACF2C();
  *v0 = 0x65695669746C754DLL;
  v0[1] = v2;
  return result;
}

uint64_t sub_1E40ACFF0()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E40AD030(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_4_262();
  }

  if (a1 == 1)
  {
    return 0x616D6972506E6F4ELL;
  }

  return 0x6B636F4C6576694CLL;
}

uint64_t sub_1E40AD0A8(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E40ACFF0();
  *v1 = result;
  return result;
}

uint64_t sub_1E40AD0D0()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E40AD030(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E40AD0F8()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E40AD138(char a1)
{
  if (!a1)
  {
    return 1970169197;
  }

  if (a1 == 1)
  {
    return 0x4D726564726F6572;
  }

  return 0xD000000000000012;
}

uint64_t sub_1E40AD1B8(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E40AD0F8();
  *v1 = result;
  return result;
}

uint64_t sub_1E40AD1E0()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E40AD138(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E40AD208()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E40AD248(char a1)
{
  result = 0x657263536C6C7566;
  switch(a1)
  {
    case 1:
      result = 0x7463656C6573;
      break;
    case 2:
      result = 1702260589;
      break;
    case 3:
      result = 0x65766F6D6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E40AD2E4(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E40AD208();
  *v1 = result;
  return result;
}

uint64_t sub_1E40AD30C()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E40AD248(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E40AD334()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E40AD374(char a1)
{
  result = 0x6B636F4C6576694CLL;
  switch(a1)
  {
    case 1:
      result = 0x507972616D697250;
      break;
    case 2:
      result = 0x6E6F74747562;
      break;
    case 3:
      result = OUTLINED_FUNCTION_4_262();
      break;
    case 4:
      result = 0x616D6972506E6F4ELL;
      break;
    case 5:
      result = 0x726579616C50;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E40AD49C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E40AD334();
  *v1 = result;
  return result;
}

uint64_t sub_1E40AD4C4()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E40AD374(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E40AD528(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_31_92();
  *(v2 + 48) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1E40AD578()
{
  OUTLINED_FUNCTION_8();
  if ((*(v0 + 104))())
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 16))(ObjectType, v2);
    (*(v2 + 24))(ObjectType, v2);
    OUTLINED_FUNCTION_11_5();
    swift_unknownObjectRelease();
    if (v4 == 1)
    {
      return 0;
    }

    if (v2)
    {
      if (v2 == 1)
      {
        if (v4 < 5)
        {
          return 0x302050707uLL >> (8 * v4);
        }
      }

      else if (v4 == 3)
      {
        return 2;
      }
    }

    else if (v4 < 5)
    {
      return 0x102060707uLL >> (8 * v4);
    }
  }

  return 7;
}

uint64_t sub_1E40AD680()
{
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_2_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E41FE5C4();
  sub_1E41FE574();
  v7 = v6;
  result = (*(v2 + 8))(v5, v0);
  v9 = v7 * 1000.0;
  if (COERCE__INT64(fabs(v7 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v9 < 9.22337204e18)
  {
    return v9;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1E40AD790(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11_5();
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_38();
  sub_1E40AD7D8(v4, a2);
  return v2;
}

void *sub_1E40AD7D8(uint64_t a1, uint64_t a2)
{
  v2[2] = 0x726579616C70;
  v2[3] = 0xE600000000000000;
  v2[4] = [objc_opt_self() sharedInstance];
  v2[6] = 0;
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_31_92();
  v2[6] = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1E40AD874()
{
  result = sub_1E40AD578();
  if (result != 7)
  {
    OUTLINED_FUNCTION_8();
    v2 = *(v1 + 160);

    return v2();
  }

  return result;
}

void sub_1E40AD8E4(char a1)
{
  sub_1E40AC584(a1);
  v2 = sub_1E4205ED4();

  v3 = objc_opt_self();
  OUTLINED_FUNCTION_25_109();
  v4 = sub_1E4205ED4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  sub_1E4205F14();
  v6 = MEMORY[0x1E69E6158];
  sub_1E4207414();
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  *(inited + 96) = v6;
  *(inited + 72) = v8;
  *(inited + 80) = v7;

  v9 = sub_1E4205CB4();
  v10 = sub_1E38A7618(v2, v4, v9, v3);

  [*(v1 + 32) recordPage_];
}

uint64_t sub_1E40ADA50()
{
  result = sub_1E40AD578();
  if (result != 7)
  {
    OUTLINED_FUNCTION_8();
    v2 = *(v1 + 176);

    return v2();
  }

  return result;
}

void sub_1E40ADAA8(char a1)
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1E40ABB88(a1))
  {
    v9 = objc_opt_self();
    sub_1E40AC584(a1);
    v10 = sub_1E4205ED4();

    OUTLINED_FUNCTION_25_109();
    v11 = sub_1E4205ED4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    v28[0] = sub_1E4205F14();
    v28[1] = v13;
    v14 = MEMORY[0x1E69E6158];
    sub_1E4207414();
    v16 = *(v2 + 16);
    v15 = *(v2 + 24);
    *(inited + 96) = v14;
    *(inited + 72) = v16;
    *(inited + 80) = v15;

    v17 = sub_1E4205CB4();
    v18 = sub_1E38A7618(v10, v11, v17, v9);

    [*(v2 + 32) recordPageChange_];
  }

  else
  {
    v19 = sub_1E324FBDC();
    (*(v5 + 16))(v8, v19, v1);
    v20 = sub_1E41FFC94();
    v21 = sub_1E42067E4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28[0] = v23;
      *v22 = 136315138;
      v24 = sub_1E40AC584(a1);
      v26 = sub_1E3270FC8(v24, v25, v28);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1E323F000, v20, v21, "MultiPlayerMetricsRecorder:: ignoring page change for %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1E69143B0](v23, -1, -1);
      MEMORY[0x1E69143B0](v22, -1, -1);
    }

    (*(v5 + 8))(v8, v1);
  }
}

uint64_t sub_1E40ADD80(uint64_t a1)
{
  v29 = sub_1E40AD578();
  if (v29 == 7)
  {
    return MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 104))();
  v1 = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return v1;
  }

  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 8))(ObjectType, v5);
  v8 = *(v7 + 16);
  if (!v8)
  {
LABEL_20:
    swift_unknownObjectRelease();

    return v1;
  }

  result = sub_1E397A444(0, v8, 0);
  v10 = 0;
  v28 = *(v7 + 16);
  v11 = (v7 + 40);
  v12 = MEMORY[0x1E69E6158];
  while (v28 != v10)
  {
    if (v10 >= *(v7 + 16))
    {
      goto LABEL_23;
    }

    v14 = *(v11 - 1);
    v13 = *v11;
    v15 = 1;
    switch(v29)
    {
      case 1:
      case 4:
      case 6:
        goto LABEL_10;
      case 2:
      case 3:
        if (v10)
        {
LABEL_10:
          v15 = 0;
        }

        break;
      case 5:
        v15 = a1 == v10;
        break;
      default:
        break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4298AD0;
    *(inited + 32) = sub_1E4205F14();
    *(inited + 40) = v17;
    v18 = 0x616D6972506E6F4ELL;
    if (v15)
    {
      v18 = 0x567972616D697250;
    }

    v19 = 0xEE00776569567972;
    if (v15)
    {
      v19 = 0xEB00000000776569;
    }

    *(inited + 72) = v12;
    *(inited + 48) = v18;
    *(inited + 56) = v19;
    *(inited + 80) = sub_1E4205F14();
    *(inited + 88) = v20;
    *(inited + 120) = MEMORY[0x1E69E6530];
    *(inited + 96) = v10;
    *(inited + 128) = sub_1E4205F14();
    *(inited + 136) = v21;
    *(inited + 168) = v12;
    *(inited + 144) = v14;
    *(inited + 152) = v13;
    *(inited + 176) = sub_1E4205F14();
    *(inited + 184) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA60);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1E4297BE0;
    swift_bridgeObjectRetain_n();
    *(v23 + 32) = sub_1E40AD680();
    *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32EC0);
    *(inited + 192) = v23;
    v24 = sub_1E4205CB4();

    v26 = *(v1 + 16);
    v25 = *(v1 + 24);
    if (v26 >= v25 >> 1)
    {
      result = sub_1E397A444((v25 > 1), v26 + 1, 1);
    }

    *(v1 + 16) = v26 + 1;
    *(v1 + 8 * v26 + 32) = v24;
    ++v10;
    v11 += 2;
    if (v8 == v10)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void sub_1E40AE0F0(uint64_t a1)
{
  v3 = sub_1E40AD578();
  if (v3 != 7)
  {
    v4 = v3;
    v5 = sub_1E40ADD80(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4298AD0;
    *(inited + 32) = sub_1E4205F14();
    *(inited + 40) = v7;
    v8 = sub_1E40AC584(v4);
    v9 = MEMORY[0x1E69E6158];
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v8;
    *(inited + 56) = v10;
    *(inited + 80) = sub_1E4205F14();
    *(inited + 88) = v11;
    v12 = sub_1E4205F14();
    *(inited + 120) = v9;
    *(inited + 96) = v12;
    *(inited + 104) = v13;
    *(inited + 128) = sub_1E4205F14();
    *(inited + 136) = v14;
    v15 = sub_1E4205F14();
    *(inited + 168) = v9;
    *(inited + 144) = v15;
    *(inited + 152) = v16;
    *(inited + 176) = sub_1E4205F14();
    *(inited + 184) = v17;
    v18 = sub_1E40AF054(v5, MEMORY[0x1E69E7CC0]);

    *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
    *(inited + 192) = v18;
    v19 = sub_1E4205CB4();
    OUTLINED_FUNCTION_22_100(v19);
    OUTLINED_FUNCTION_10_175();
    v20 = OUTLINED_FUNCTION_63_2();
    OUTLINED_FUNCTION_21_119(v20, sel_recordClick_);

    sub_1E3744600(v5);
    OUTLINED_FUNCTION_38();

    OUTLINED_FUNCTION_3_270();
    OUTLINED_FUNCTION_11_5();

    OUTLINED_FUNCTION_26_4(v21, sel_recordImpressions_);
  }
}

void sub_1E40AE2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1E40ADD80(a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E429A240;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v11;
  v12 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v13;
  *(inited + 120) = v12;
  OUTLINED_FUNCTION_29_103();
  *(inited + 96) = v14;
  *(inited + 104) = 0xEA00000000007075;
  *(inited + 128) = sub_1E4205F14();
  *(inited + 136) = v15;
  v16 = sub_1E4205F14();
  *(inited + 168) = v12;
  *(inited + 144) = v16;
  *(inited + 152) = v17;
  *(inited + 176) = sub_1E4205F14();
  *(inited + 184) = v18;

  v19 = sub_1E40AF054(v9, a3);

  *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
  *(inited + 192) = v19;
  *(inited + 224) = sub_1E4205F14();
  *(inited + 232) = v20;
  *(inited + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF311C8);
  *(inited + 240) = a4;

  v21 = sub_1E4205CB4();
  OUTLINED_FUNCTION_22_100(v21);
  OUTLINED_FUNCTION_10_175();
  v22 = OUTLINED_FUNCTION_63_2();
  OUTLINED_FUNCTION_21_119(v22, sel_recordClick_);

  sub_1E3744600(inited);
  OUTLINED_FUNCTION_38();

  OUTLINED_FUNCTION_3_270();
  OUTLINED_FUNCTION_11_5();

  OUTLINED_FUNCTION_26_4(v23, sel_recordImpressions_);
}

void sub_1E40AE4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = sub_1E40ADD80(a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4298AD0;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v11;
  v12 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v13;
  v14 = 0x726579616C50;
  if (a5)
  {
    v14 = 0x507972616D697250;
  }

  v15 = 0xE600000000000000;
  if (a5)
  {
    v15 = 0xED0000726579616CLL;
  }

  *(inited + 120) = v12;
  *(inited + 96) = v14;
  *(inited + 104) = v15;
  *(inited + 128) = sub_1E4205F14();
  *(inited + 136) = v16;
  v17 = sub_1E4205F14();
  *(inited + 168) = v12;
  *(inited + 144) = v17;
  *(inited + 152) = v18;
  *(inited + 176) = sub_1E4205F14();
  *(inited + 184) = v19;

  v20 = sub_1E40AF054(v9, a3);

  *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
  *(inited + 192) = v20;
  v21 = sub_1E4205CB4();
  OUTLINED_FUNCTION_22_100(v21);
  OUTLINED_FUNCTION_10_175();
  v22 = OUTLINED_FUNCTION_63_2();
  OUTLINED_FUNCTION_21_119(v22, sel_recordClick_);

  sub_1E3744600(inited);
  OUTLINED_FUNCTION_38();

  OUTLINED_FUNCTION_3_270();
  OUTLINED_FUNCTION_11_5();

  OUTLINED_FUNCTION_26_4(v23, sel_recordImpressions_);
}

void sub_1E40AE6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 4;
  switch(sub_1E40AD578())
  {
    case 2u:
    case 3u:
      if (!a4)
      {
        goto LABEL_3;
      }

      break;
    case 5u:
LABEL_3:
      v8 = 3;
      break;
    default:
      break;
  }

  v9 = sub_1E40ADD80(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E429A240;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v11;
  v12 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 1702260589;
  *(inited + 56) = 0xE400000000000000;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v13;
  *(inited + 120) = v12;
  *(inited + 96) = 0x4D726564726F6572;
  *(inited + 104) = 0xEB00000000756E65;
  *(inited + 128) = sub_1E4205F14();
  *(inited + 136) = v14;
  *(inited + 168) = v12;
  *(inited + 144) = a1;
  *(inited + 152) = a2;
  *(inited + 176) = sub_1E4205F14();
  *(inited + 184) = v15;
  v16 = sub_1E40AD374(v8);
  *(inited + 216) = v12;
  *(inited + 192) = v16;
  *(inited + 200) = v17;
  *(inited + 224) = sub_1E4205F14();
  *(inited + 232) = v18;

  v19 = sub_1E40AF054(v9, MEMORY[0x1E69E7CC0]);

  *(inited + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
  *(inited + 240) = v19;
  v20 = sub_1E4205CB4();
  OUTLINED_FUNCTION_22_100(v20);
  OUTLINED_FUNCTION_15_171();
  v21 = OUTLINED_FUNCTION_63_2();
  OUTLINED_FUNCTION_21_119(v21, sel_recordClick_);

  sub_1E3744600(inited);
  OUTLINED_FUNCTION_38();

  OUTLINED_FUNCTION_15_171();
  OUTLINED_FUNCTION_11_5();

  OUTLINED_FUNCTION_26_4(v22, sel_recordImpressions_);
}

void sub_1E40AE914(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1E40ADD80(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E429A240;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v8;
  v9 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0x657263536C6C7566;
  *(inited + 56) = 0xEA00000000006E65;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v10;
  *(inited + 120) = v9;
  *(inited + 96) = a1;
  *(inited + 104) = a2;
  *(inited + 128) = sub_1E4205F14();
  *(inited + 136) = v11;
  *(inited + 168) = v9;
  strcpy((inited + 144), "PrimaryPlayer");
  *(inited + 158) = -4864;
  *(inited + 176) = sub_1E4205F14();
  *(inited + 184) = v12;

  v13 = sub_1E40AF054(v6, MEMORY[0x1E69E7CC0]);

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
  *(inited + 216) = v14;
  *(inited + 192) = v13;
  *(inited + 224) = sub_1E4205F14();
  *(inited + 232) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B7A0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1E4297BE0;
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1E4297BD0;
  *(v17 + 32) = sub_1E4205F14();
  *(v17 + 40) = v18;
  *(v17 + 72) = v9;
  *(v17 + 48) = a1;
  *(v17 + 56) = a2;
  *(v17 + 80) = sub_1E4205F14();
  *(v17 + 88) = v19;
  *(v17 + 120) = v9;
  *(v17 + 96) = 0x567972616D697250;
  *(v17 + 104) = 0xEB00000000776569;
  *(v17 + 128) = sub_1E4205F14();
  *(v17 + 136) = v20;
  *(v17 + 168) = MEMORY[0x1E69E6530];
  *(v17 + 144) = a3;

  *(v16 + 32) = sub_1E4205CB4();
  *(inited + 264) = v14;
  *(inited + 240) = v16;
  v21 = sub_1E4205CB4();
  OUTLINED_FUNCTION_22_100(v21);
  OUTLINED_FUNCTION_15_171();
  v22 = OUTLINED_FUNCTION_63_2();
  OUTLINED_FUNCTION_21_119(v22, sel_recordClick_);

  sub_1E3744600(a3);
  OUTLINED_FUNCTION_38();

  OUTLINED_FUNCTION_15_171();
  OUTLINED_FUNCTION_11_5();

  OUTLINED_FUNCTION_26_4(v23, sel_recordImpressions_);
}

void sub_1E40AEC40(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E40ADD80(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E429A240;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v7;
  v8 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0x7463656C6573;
  *(inited + 56) = 0xE600000000000000;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v9;
  *(inited + 120) = v8;
  *(inited + 96) = 0xD000000000000012;
  *(inited + 104) = 0x80000001E42908E0;
  *(inited + 128) = sub_1E4205F14();
  *(inited + 136) = v10;
  *(inited + 168) = v8;
  *(inited + 144) = a1;
  *(inited + 152) = a2;
  *(inited + 176) = sub_1E4205F14();
  *(inited + 184) = v11;
  *(inited + 216) = &unk_1F5D964D8;
  *(inited + 192) = 3;
  *(inited + 224) = sub_1E4205F14();
  *(inited + 232) = v12;

  v13 = sub_1E40AF054(v5, MEMORY[0x1E69E7CC0]);

  *(inited + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
  *(inited + 240) = v13;
  v14 = sub_1E4205CB4();
  OUTLINED_FUNCTION_22_100(v14);
  OUTLINED_FUNCTION_10_175();
  v15 = OUTLINED_FUNCTION_63_2();
  OUTLINED_FUNCTION_21_119(v15, sel_recordClick_);

  sub_1E3744600(v5);
  OUTLINED_FUNCTION_38();

  OUTLINED_FUNCTION_3_270();
  OUTLINED_FUNCTION_11_5();

  OUTLINED_FUNCTION_26_4(v16, sel_recordImpressions_);
}

void sub_1E40AEE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_1E40ADD80(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E429A240;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v14;
  v15 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = a4;
  *(inited + 56) = 0xE600000000000000;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v16;
  *(inited + 120) = v15;
  *(inited + 96) = a5;
  *(inited + 104) = a6;
  *(inited + 128) = sub_1E4205F14();
  *(inited + 136) = v17;
  *(inited + 168) = v15;
  *(inited + 144) = a1;
  *(inited + 152) = a2;
  *(inited + 176) = sub_1E4205F14();
  *(inited + 184) = v18;
  *(inited + 216) = v15;
  *(inited + 192) = a7;
  *(inited + 200) = 0xE600000000000000;
  *(inited + 224) = sub_1E4205F14();
  *(inited + 232) = v19;

  v20 = sub_1E40AF054(v12, MEMORY[0x1E69E7CC0]);

  *(inited + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
  *(inited + 240) = v20;
  v21 = sub_1E4205CB4();
  OUTLINED_FUNCTION_22_100(v21);
  OUTLINED_FUNCTION_10_175();
  v22 = OUTLINED_FUNCTION_63_2();
  OUTLINED_FUNCTION_21_119(v22, sel_recordClick_);

  sub_1E3744600(v12);
  OUTLINED_FUNCTION_38();

  OUTLINED_FUNCTION_3_270();
  OUTLINED_FUNCTION_11_5();

  OUTLINED_FUNCTION_26_4(v23, sel_recordImpressions_);
}

uint64_t sub_1E40AF054(void *a1, uint64_t a2)
{
  v179 = a1;

  v4 = sub_1E3BA7DD8(a2);
  v5 = a1;
  if (v4)
  {
    sub_1E3EA0974(v4);
    v5 = v179;
  }

  v161 = v5[2];
  if (v161)
  {
    v158 = a1;
    v6 = 0;
    v162 = @"impressionId";
    v160 = @"impressionIndex";
    v163 = @"impressionTimes";
    v7 = 32;
    v159 = xmmword_1E4297BE0;
    do
    {
      v8 = sub_1E4205F14();
      v10 = v9;
      *(&v178 + 1) = MEMORY[0x1E69E6530];
      *&v177 = v6 + 1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1E3FA2A70(v5);
      }

      OUTLINED_FUNCTION_19_149();
      if (v11)
      {
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
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
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        result = sub_1E4207A74();
        __break(1u);
        return result;
      }

      v165 = v6 + 1;
      v168 = v7;
      v12 = &v5[v6];
      v171 = v5;
      if (*(&v178 + 1))
      {
        sub_1E329504C(&v177, v176);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_7_237();
        sub_1E327D33C(v8, v10);
        OUTLINED_FUNCTION_31_0();
        if (__OFADD__(v15, v16))
        {
          goto LABEL_86;
        }

        v17 = v13;
        v18 = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
        OUTLINED_FUNCTION_30_86();
        if (sub_1E4207644())
        {
          v19 = sub_1E327D33C(v8, v10);
          if ((v18 & 1) != (v20 & 1))
          {
            goto LABEL_96;
          }

          v17 = v19;
        }

        v21 = v175;
        if (v18)
        {
          v22 = __swift_destroy_boxed_opaque_existential_1(v175[7] + 32 * v17);
          OUTLINED_FUNCTION_27_99(v22, v23, v24, v25, v26, v27, v28, v29, v157, v158, v159, *(&v159 + 1), v160, v161, v162, v163, v165, v7, v171, v175, v176[0]);
        }

        else
        {
          v175[(v17 >> 6) + 8] |= 1 << v17;
          v30 = (v21[6] + 16 * v17);
          *v30 = v8;
          v30[1] = v10;
          sub_1E329504C(v176, (v21[7] + 32 * v17));
          v31 = v21[2];
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (v32)
          {
            goto LABEL_92;
          }

          v21[2] = v33;
        }

        v12[4] = v21;
      }

      else
      {
        sub_1E329505C(&v177);
        sub_1E388BFFC(v8, v10, v176);

        sub_1E329505C(v176);
      }

      sub_1E4205F14();
      *(&v178 + 1) = MEMORY[0x1E69E6530];
      *&v177 = v6;
      OUTLINED_FUNCTION_19_149();
      if (v11)
      {
        goto LABEL_81;
      }

      v36 = v34;
      v37 = v35;
      sub_1E329504C(&v177, v176);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_7_237();
      OUTLINED_FUNCTION_33_91();
      OUTLINED_FUNCTION_31_0();
      if (__OFADD__(v40, v41))
      {
        goto LABEL_82;
      }

      v42 = v38;
      v43 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
      if (sub_1E4207644())
      {
        v44 = OUTLINED_FUNCTION_33_91();
        if ((v43 & 1) != (v45 & 1))
        {
          goto LABEL_96;
        }

        v42 = v44;
      }

      v46 = v175;
      if (v43)
      {
        v47 = __swift_destroy_boxed_opaque_existential_1(v175[7] + 32 * v42);
        OUTLINED_FUNCTION_27_99(v47, v48, v49, v50, v51, v52, v53, v54, v157, v158, v159, *(&v159 + 1), v160, v161, v162, v163, v165, v168, v171, v175, v176[0]);
      }

      else
      {
        OUTLINED_FUNCTION_7_2(&v175[v42 >> 6]);
        v55 = (v175[6] + 16 * v42);
        *v55 = v36;
        v55[1] = v37;
        OUTLINED_FUNCTION_32_93(*(v46 + 56), v157, v158, v159, *(&v159 + 1), v160, v161, v162, v163, v165, v168, v171, v175, v176[0]);
        v56 = *(v46 + 16);
        v32 = __OFADD__(v56, 1);
        v57 = v56 + 1;
        if (v32)
        {
          goto LABEL_87;
        }

        *(v46 + 16) = v57;
      }

      v12[4] = v46;

      v58 = sub_1E4205F14();
      if (v6 >= *(v172 + 16))
      {
        goto LABEL_83;
      }

      v60 = v59;
      v61 = v12[4];
      if (*(v61 + 16) && (v62 = v58, , v63 = sub_1E327D33C(v62, v60), v65 = v64, , (v65 & 1) != 0))
      {
        sub_1E328438C(*(v61 + 56) + 32 * v63, &v177);

        sub_1E329505C(&v177);
      }

      else
      {

        v177 = 0u;
        v178 = 0u;
        sub_1E329505C(&v177);
        v66 = sub_1E4205F14();
        v68 = v67;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA60);
        v69 = swift_allocObject();
        *(v69 + 16) = v159;
        *(v69 + 32) = sub_1E40AD680();
        *(&v178 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32EC0);
        *&v177 = v69;
        OUTLINED_FUNCTION_19_149();
        if (v11)
        {
          goto LABEL_84;
        }

        sub_1E329504C(&v177, v176);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_7_237();
        OUTLINED_FUNCTION_33_91();
        v71 = v70;
        OUTLINED_FUNCTION_31_0();
        if (__OFADD__(v73, v74))
        {
          goto LABEL_85;
        }

        v75 = v72;
        if (sub_1E4207644())
        {
          v76 = OUTLINED_FUNCTION_33_91();
          if ((v71 & 1) != (v77 & 1))
          {
            goto LABEL_96;
          }

          v75 = v76;
        }

        v78 = v175;
        if (v71)
        {
          v79 = __swift_destroy_boxed_opaque_existential_1(v175[7] + 32 * v75);
          OUTLINED_FUNCTION_27_99(v79, v80, v81, v82, v83, v84, v85, v86, v157, v158, v159, *(&v159 + 1), v160, v161, v162, v163, v166, v169, v172, v175, v176[0]);
        }

        else
        {
          OUTLINED_FUNCTION_7_2(&v175[v75 >> 6]);
          v87 = (v175[6] + 16 * v75);
          *v87 = v66;
          v87[1] = v68;
          OUTLINED_FUNCTION_32_93(*(v78 + 56), v157, v158, v159, *(&v159 + 1), v160, v161, v162, v163, v166, v169, v172, v175, v176[0]);
          v88 = *(v78 + 16);
          v32 = __OFADD__(v88, 1);
          v89 = v88 + 1;
          if (v32)
          {
            goto LABEL_91;
          }

          *(v78 + 16) = v89;
        }

        v12[4] = v78;
      }

      v5 = v172;
      v7 = v169 + 8;
      v6 = v166;
    }

    while (v161 != v166);
    v90 = *(v172 + 16);
    v91 = *(v158 + 16);
    if (v91 + 1 < v90)
    {
      v170 = @"impressionParentId";
      v164 = *(v158 + 16);
      v167 = @"impressionType";
      v92 = ~v91 + v90;
      v93 = v91 + 5;
      do
      {
        v94 = sub_1E4205F14();
        v96 = v95;
        *&v176[0] = v5;
        *&v177 = v91;
        BYTE8(v177) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
        sub_1E3D75BF0();
        sub_1E38D2054(&v177, &v175);
        v97 = v175;
        if (v175)
        {
          v98 = sub_1E4205F14();
          if (*(v97 + 16))
          {
            v100 = sub_1E327D33C(v98, v99);
            v102 = v101;

            if (v102)
            {
              sub_1E328438C(*(v97 + 56) + 32 * v100, &v177);

              goto LABEL_52;
            }
          }

          else
          {
          }
        }

        v177 = 0u;
        v178 = 0u;
LABEL_52:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1E3FA2A70(v5);
        }

        OUTLINED_FUNCTION_19_149();
        if (v11)
        {
          goto LABEL_88;
        }

        v173 = v92;
        if (*(&v178 + 1))
        {
          sub_1E329504C(&v177, v176);
          swift_isUniquelyReferenced_nonNull_native();
          v175 = v5[v93];
          v103 = v5;
          v5[v93] = 0x8000000000000000;
          sub_1E327D33C(v94, v96);
          OUTLINED_FUNCTION_31_0();
          if (__OFADD__(v106, v107))
          {
            goto LABEL_93;
          }

          v108 = v104;
          v109 = v105;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
          OUTLINED_FUNCTION_30_86();
          if (sub_1E4207644())
          {
            v110 = sub_1E327D33C(v94, v96);
            if ((v109 & 1) != (v111 & 1))
            {
              goto LABEL_96;
            }

            v108 = v110;
          }

          v112 = v175;
          if (v109)
          {
            v113 = __swift_destroy_boxed_opaque_existential_1(v175[7] + 32 * v108);
            OUTLINED_FUNCTION_27_99(v113, v114, v115, v116, v117, v118, v119, v120, v157, v158, v159, *(&v159 + 1), v160, v161, v162, v164, v167, v170, v173, v175, v176[0]);
          }

          else
          {
            OUTLINED_FUNCTION_7_2(&v175[v108 >> 6]);
            v126 = (v112[6] + 16 * v108);
            *v126 = v94;
            v126[1] = v96;
            OUTLINED_FUNCTION_32_93(v112[7], v157, v158, v159, *(&v159 + 1), v160, v161, v162, v164, v167, v170, v173, v175, v176[0]);
            v127 = v112[2];
            v32 = __OFADD__(v127, 1);
            v128 = v127 + 1;
            if (v32)
            {
              goto LABEL_95;
            }

            v112[2] = v128;
          }

          v129 = v103;
          v103[v93] = v112;
        }

        else
        {
          sub_1E329505C(&v177);
          v121 = sub_1E327D33C(v94, v96);
          v122 = v5;
          if (v123)
          {
            v124 = v121;
            swift_isUniquelyReferenced_nonNull_native();
            v175 = v122[v93];
            v122[v93] = 0x8000000000000000;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
            OUTLINED_FUNCTION_30_86();
            sub_1E4207644();
            v125 = v175;

            sub_1E329504C((*(v125 + 56) + 32 * v124), v176);
            sub_1E4207664();
            v122[v93] = v125;
          }

          else
          {
            memset(v176, 0, sizeof(v176));
          }

          v129 = v122;

          sub_1E329505C(v176);
        }

        sub_1E4205F14();
        *(&v178 + 1) = MEMORY[0x1E69E6158];
        OUTLINED_FUNCTION_29_103();
        *&v177 = v130;
        *(&v177 + 1) = 0xEA00000000007075;
        OUTLINED_FUNCTION_19_149();
        if (v11)
        {
          goto LABEL_89;
        }

        v133 = v131;
        v134 = v132;
        sub_1E329504C(&v177, v176);
        swift_isUniquelyReferenced_nonNull_native();
        v175 = v129[v93];
        v135 = v129;
        v129[v93] = 0x8000000000000000;
        sub_1E327D33C(v133, v134);
        OUTLINED_FUNCTION_31_0();
        if (__OFADD__(v138, v139))
        {
          goto LABEL_90;
        }

        v140 = v136;
        v141 = v137;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
        OUTLINED_FUNCTION_30_86();
        if (sub_1E4207644())
        {
          v142 = sub_1E327D33C(v133, v134);
          if ((v141 & 1) != (v143 & 1))
          {
            goto LABEL_96;
          }

          v140 = v142;
        }

        v144 = v175;
        if (v141)
        {
          v145 = __swift_destroy_boxed_opaque_existential_1(v175[7] + 32 * v140);
          OUTLINED_FUNCTION_27_99(v145, v146, v147, v148, v149, v150, v151, v152, v157, v158, v159, *(&v159 + 1), v160, v161, v162, v164, v167, v170, v173, v175, v176[0]);
        }

        else
        {
          OUTLINED_FUNCTION_7_2(&v175[v140 >> 6]);
          v153 = (v144[6] + 16 * v140);
          *v153 = v133;
          v153[1] = v134;
          OUTLINED_FUNCTION_32_93(v144[7], v157, v158, v159, *(&v159 + 1), v160, v161, v162, v164, v167, v170, v173, v175, v176[0]);
          v154 = v144[2];
          v32 = __OFADD__(v154, 1);
          v155 = v154 + 1;
          if (v32)
          {
            goto LABEL_94;
          }

          v144[2] = v155;
        }

        v5 = v135;
        v135[v93] = v144;

        ++v93;
        v92 = v174 - 1;
        v91 = v164;
      }

      while (v174 != 1);
    }
  }

  return v5;
}

uint64_t sub_1E40AFA64()
{

  sub_1E32AF6F8(v0 + 40);
  return v0;
}

uint64_t sub_1E40AFA94()
{
  sub_1E40AFA64();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

unint64_t sub_1E40AFACC()
{
  result = qword_1ECF3F840;
  if (!qword_1ECF3F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F840);
  }

  return result;
}

unint64_t sub_1E40AFB24()
{
  result = qword_1ECF3F848;
  if (!qword_1ECF3F848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F848);
  }

  return result;
}

unint64_t sub_1E40AFB7C()
{
  result = qword_1ECF3F850;
  if (!qword_1ECF3F850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F850);
  }

  return result;
}

unint64_t sub_1E40AFBD4()
{
  result = qword_1ECF3F858;
  if (!qword_1ECF3F858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F858);
  }

  return result;
}

unint64_t sub_1E40AFC2C()
{
  result = qword_1ECF3F860;
  if (!qword_1ECF3F860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F860);
  }

  return result;
}

unint64_t sub_1E40AFC84()
{
  result = qword_1ECF3F868;
  if (!qword_1ECF3F868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F868);
  }

  return result;
}

_BYTE *sub_1E40AFCFC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_15(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E40AFDC4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_15(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E40AFE9C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_15(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E40AFF64(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_15(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E40B002C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_15(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

_OWORD *OUTLINED_FUNCTION_32_93@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14)
{

  return sub_1E329504C(&a14, (a1 + 32 * v14));
}

BOOL sub_1E40B0110()
{
  v0 = sub_1E4207784();

  return v0 != 0;
}

uint64_t sub_1E40B015C()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E40B01C0()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

BOOL sub_1E40B0208@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1E40B0110();
  *a1 = result;
  return result;
}

uint64_t sub_1E40B0254()
{
  if ([v0 shadowColor])
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_1E3755B54();
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1E329505C(v5);
    return 0;
  }
}

uint64_t sub_1E40B0308(uint64_t a1)
{
  v2 = sub_1E41FDEC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_1E328438C(a1, &v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if (OUTLINED_FUNCTION_6_229())
  {
    if (*(*&v50 + 16))
    {
      v48 = &type metadata for ViewLayoutKeys;
      v49 = &off_1F5D82368;
      LOBYTE(v46) = 2;
      OUTLINED_FUNCTION_0_338();
      if (v52)
      {
        OUTLINED_FUNCTION_3_271();
        OUTLINED_FUNCTION_2_258();
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(&v46);
        sub_1E329505C(&v50);
      }

      OUTLINED_FUNCTION_1_299();
      MEMORY[0x1EEE9AC00](v14);
      v13 = v6;
      *(&v41 - 2) = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40);
      sub_1E4148DE0(sub_1E40B0A20);
      v48 = &type metadata for ViewLayoutKeys;
      v49 = &off_1F5D82368;
      LOBYTE(v46) = 6;
      OUTLINED_FUNCTION_0_338();
      if (v52)
      {
        OUTLINED_FUNCTION_3_271();
        OUTLINED_FUNCTION_2_258();
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(&v46);
        sub_1E329505C(&v50);
      }

      OUTLINED_FUNCTION_1_299();
      MEMORY[0x1EEE9AC00](v15);
      OUTLINED_FUNCTION_5_244();
      sub_1E4148DE0(sub_1E40B0A7C);
      v48 = &_s16ShadowLayoutKeysON;
      v49 = &off_1F5D96520;
      OUTLINED_FUNCTION_0_338();
      if (v52)
      {
        OUTLINED_FUNCTION_3_271();
        OUTLINED_FUNCTION_2_258();
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(&v46);
        sub_1E329505C(&v50);
      }

      OUTLINED_FUNCTION_1_299();
      MEMORY[0x1EEE9AC00](v16);
      OUTLINED_FUNCTION_5_244();
      sub_1E4148DE0(sub_1E40B0AD8);
      v48 = &type metadata for ViewLayoutKeys;
      v49 = &off_1F5D82368;
      LOBYTE(v46) = 21;
      OUTLINED_FUNCTION_0_338();

      MEMORY[0x1EEE9AC00](v17);
      *(&v41 - 2) = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0);
      sub_1E4148DE0(sub_1E40B0AF0);
      __swift_destroy_boxed_opaque_existential_1(a1);
      sub_1E329505C(&v50);
      v18 = &v46;
LABEL_58:
      __swift_destroy_boxed_opaque_existential_1(v18);
      return v13;
    }
  }

  sub_1E328438C(a1, &v46);
  if ((OUTLINED_FUNCTION_6_229() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    return 0;
  }

  v8 = v50;
  v7 = v51;
  v9 = HIBYTE(v51) & 0xF;
  if ((v51 & 0x2000000000000000) == 0)
  {
    v9 = *&v50 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    goto LABEL_14;
  }

  v44 = v6;
  v46 = v50;
  v47 = v51;
  sub_1E41FDE64();
  sub_1E32822E0();
  v10 = sub_1E4207184();
  v11 = *(v3 + 8);
  v11(v5, v2);
  v12 = *(v10 + 16);

  if (v12 < 2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

LABEL_14:

    return 0;
  }

  v46 = v8;
  v47 = v7;
  sub_1E41FDE64();
  v19 = MEMORY[0x1E69E6158];
  v20 = sub_1E4207184();
  v11(v5, v2);

  *&result = COERCE_DOUBLE(sub_1E38EA748(v20));
  if (v22)
  {
    v23 = result;
    v24 = v22;
    sub_1E3755B54();
    v48 = v19;
    v46 = *&v23;
    v47 = v24;
    v42 = sub_1E39F8BAC(&v46);
    __swift_destroy_boxed_opaque_existential_1(&v46);
    *&result = COERCE_DOUBLE();
  }

  else
  {
    v42 = 0;
  }

  v25 = 0;
  v26 = *(v20 + 16);
  v27 = v20 + 40;
  v28 = 0.0;
  v29 = 0.0;
  v30 = 0.0;
  v43 = a1;
  v41 = v20 + 40;
LABEL_28:
  v31 = v30;
  v32 = (v27 + 16 * v25);
  for (i = v25; ; ++i)
  {
    if (v26 == i)
    {

      v13 = v44;
      [v44 setShadowOffset_];
      [v13 setShadowBlurRadius_];
      v40 = v42;
      [v13 setShadowColor_];

      v18 = v43;
      goto LABEL_58;
    }

    if (i >= *(v20 + 16))
    {
      break;
    }

    v35 = *(v32 - 1);
    v34 = *v32;
    v50 = 0.0;
    MEMORY[0x1EEE9AC00](result);
    *(&v41 - 2) = &v50;
    if ((*&v34 & 0x1000000000000000) == 0)
    {
      if ((*&v34 & 0x2000000000000000) != 0)
      {
        v46 = v35;
        v47 = *&v34 & 0xFFFFFFFFFFFFFFLL;

        if (LOBYTE(v35) < 0x21u && ((0x100003E01uLL >> SLOBYTE(v35)) & 1) != 0)
        {
          goto LABEL_41;
        }

LABEL_39:
        v37 = _swift_stdlib_strtod_clocale();
        if (!v37)
        {
          goto LABEL_41;
        }

        v38 = *v37 == 0;
LABEL_42:
        v45 = v38;
        goto LABEL_43;
      }

      if ((*&v35 & 0x1000000000000000) != 0)
      {
        v36 = *((*&v34 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

        if (v36 >= 0x21 || ((0x100003E01uLL >> v36) & 1) == 0)
        {
          goto LABEL_39;
        }

LABEL_41:
        v38 = 0;
        goto LABEL_42;
      }
    }

    sub_1E4207484();
LABEL_43:
    *&result = COERCE_DOUBLE();
    if (v45)
    {
      v30 = v50;
      v25 = 1;
      v27 = v41;
      if (i)
      {
        v25 = i + 1;
        if (i == 2)
        {
          v39 = v50;
        }

        else
        {
          v39 = v28;
        }

        if (i == 2)
        {
          v25 = 3;
        }

        if (i == 1)
        {
          v29 = v50;
        }

        else
        {
          v28 = v39;
        }

        v30 = v31;
        if (i == 1)
        {
          v25 = 2;
        }
      }

      goto LABEL_28;
    }

    v32 += 2;
  }

  __break(1u);
  return result;
}

id sub_1E40B0A20(double *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  [v2 shadowOffset];

  return [v2 setShadowOffset_];
}

id sub_1E40B0A7C()
{
  v1 = *(v0 + 16);
  [v1 shadowOffset];

  return [v1 setShadowOffset_];
}

void sub_1E40B0AF0(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1E3755B54();
  v4 = sub_1E39F8BAC(a1);

  [v3 setShadowColor_];
}

unint64_t sub_1E40B0B70()
{
  result = qword_1ECF3F870;
  if (!qword_1ECF3F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F870);
  }

  return result;
}

_BYTE *_s16ShadowLayoutKeysOwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1E40B0C70()
{
  type metadata accessor for ViewLayout();
  v0 = sub_1E3C2F968();
  v12[0] = 0x4066800000000000;
  LOBYTE(v12[1]) = 0;
  *&v39 = 0x4066800000000000;
  BYTE8(v39) = 0;
  *&v37[0] = 0x406F400000000000;
  BYTE8(v37[0]) = 0;
  *&v34 = 0x406F400000000000;
  BYTE8(v34) = 0;
  *&v31 = 0x4066800000000000;
  BYTE8(v31) = 0;
  v1 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  *&v25 = v28;
  BYTE8(v25) = BYTE8(v28);
  sub_1E3C2FCB8(v12, __src);
  memcpy(v12, __src, 0x59uLL);
  v2 = OUTLINED_FUNCTION_18();
  v3 = *(*v0 + 1600);
  v3(v12, 6, v2 & 1, v1);
  sub_1E3952C88();
  v12[0] = v4;
  v12[1] = v5;
  v12[2] = v6;
  v12[3] = v7;
  LOBYTE(v12[4]) = 0;
  type metadata accessor for UIEdgeInsets();
  v9 = v8;
  sub_1E3C3DE00(v8);
  v37[0] = v39;
  v37[1] = v40;
  v38 = v41;
  sub_1E3C2FC98();
  v31 = v34;
  v32 = v35;
  v33 = v36;
  sub_1E3C3DE00(v9);
  v25 = v28;
  v26 = v29;
  v27 = v30;
  sub_1E3C3DE00(v9);
  v19 = v22;
  v20 = v23;
  v21 = v24;
  sub_1E3C3DE00(v9);
  v13 = v16;
  v14 = v17;
  v15 = v18;
  sub_1E3C2FCB8(v37, __src);
  memcpy(v12, __src, 0xE9uLL);
  v10 = OUTLINED_FUNCTION_18();
  v3(v12, 1, v10 & 1, v9);
  return v0;
}

uint64_t sub_1E40B0EA4()
{
  v0 = swift_allocObject();
  *(v0 + 104) = sub_1E40B0C70();
  return sub_1E3C2F9A0();
}

uint64_t sub_1E40B0F04()
{
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E40B0F48(char a1)
{
  if (!a1)
  {
    return 0x70756B636F6CLL;
  }

  if (a1 == 1)
  {
    return 1953720684;
  }

  return 0x6143797469746E65;
}

uint64_t sub_1E40B0FC0()
{
  sub_1E4206014();
}

uint64_t sub_1E40B104C()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E40B10E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E40B0F04();
  *a1 = result;
  return result;
}

uint64_t sub_1E40B1114@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E40B0F48(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E40B1140()
{
  OUTLINED_FUNCTION_8();
  v2 = (*(v1 + 1016))();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  result = sub_1E32AE9B0(v2);
  if (!result)
  {

    return 0;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    v0 = MEMORY[0x1E6911E60](0, v3);
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    OUTLINED_FUNCTION_77_24();

LABEL_6:

    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E40B121C(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 264) = a1;
}

uint64_t sub_1E40B12B8()
{
  OUTLINED_FUNCTION_15_0();

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E40B12F4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0();
  *(v2 + 296) = a1;
  *(v2 + 304) = a2;
}

uint64_t sub_1E40B136C(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 312) = a1;
}

uint64_t sub_1E40B13D8(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 320) = a1;
}

uint64_t sub_1E40B1448(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v2 + 336);
  *(v2 + 336) = a2;
  swift_unknownObjectWeakAssign();
  if (Strong)
  {
    OUTLINED_FUNCTION_5_0();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = swift_unknownObjectRetain();
      sub_1E40B501C(v8, v5, v7);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

void (*sub_1E40B150C(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_5_0();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 336);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1E40B1584;
}

void sub_1E40B1584(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = v2[4];
  if (a2)
  {
    v5 = swift_unknownObjectRetain();
    sub_1E40B1448(v5, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1E40B1448(v3, v2[4]);
  }

  free(v2);
}

void (*sub_1E40B15F4(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 352);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1E3CC88E0;
}

uint64_t *sub_1E40B1674()
{
  v1 = v0;
  OUTLINED_FUNCTION_8();
  v25 = (*(v2 + 368))();
  v26 = v3;
  MEMORY[0x1E69109E0](23328, 0xE200000000000000);
  sub_1E414A784(v25, v26, v1[2], v1[3]);

  (*(*v0 + 264))(v4);
  if (v5)
  {
    sub_1E37614CC();
    v6 = OUTLINED_FUNCTION_53_1();
    sub_1E38D2484(v6, v7, v8);

    v9 = v26;
  }

  else
  {
    v9 = 0;
  }

  v10 = OUTLINED_FUNCTION_53();
  v13 = sub_1E414A784(v10, v11, v12, v9);
  v15 = v14;

  v17 = v1;
  v18 = (*(*v1 + 1112))(v16);
  v20 = v19;
  if (v19)
  {
    sub_1E37614CC();
    v21 = OUTLINED_FUNCTION_53_1();
    sub_1E38D2484(v21, v22, v23);

    v18 = v25;
    v20 = v26;
  }

  sub_1E414A784(v13, v15, v18, v20);
  OUTLINED_FUNCTION_145();

  MEMORY[0x1E69109E0](93, 0xE100000000000000);

  return v17;
}

uint64_t sub_1E40B18D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = MEMORY[0x1E69109E0](*a1, a1[1]);
  *a4 = a2;
  a4[1] = a3;
  return result;
}

uint64_t sub_1E40B198C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31_58();
  OUTLINED_FUNCTION_81_28();
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_74();
  return sub_1E40B19D4(v4, v5, a3);
}

uint64_t sub_1E40B19D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31_58();
  *(v3 + 248) = 0u;
  *(v3 + 336) = 0;
  *(v3 + 264) = 0u;
  *(v3 + 280) = 0u;
  *(v3 + 296) = 0u;
  *(v3 + 312) = 0u;
  swift_unknownObjectWeakInit();
  *(v3 + 352) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 385) = 0u;
  *(v3 + 360) = 0u;
  *(v3 + 376) = 0u;
  *(v3 + 401) = 1;
  sub_1E3277E60(0xD000000000000018, 0x80000001E42909B0, v4, &v15);
  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    v6 = OUTLINED_FUNCTION_53_37();
    v7 = v14;
    if (!v6)
    {
      v7 = 0;
    }
  }

  else
  {
    sub_1E325F6F0(&v15, &unk_1ECF296E0);
    v7 = 0;
  }

  *(v3 + 280) = v7;

  v8 = OUTLINED_FUNCTION_74();
  v10 = sub_1E39BEDCC(v8, v9, a3);
  if (v10)
  {
    OUTLINED_FUNCTION_8();
    v12 = *(v11 + 1368);

    v12(v4);
  }

  return v10;
}

uint64_t sub_1E40B1B68()
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_81_28();
  swift_allocObject();
  OUTLINED_FUNCTION_13_11();
  return sub_1E40B1BB0();
}

uint64_t sub_1E40B1BB0()
{
  OUTLINED_FUNCTION_48_1();
  *(v0 + 336) = 0;
  *(v0 + 248) = 0u;
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  swift_unknownObjectWeakInit();
  *(v0 + 352) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 385) = 0u;
  *(v0 + 360) = 0u;
  *(v0 + 376) = 0u;
  *(v0 + 401) = 1;
  OUTLINED_FUNCTION_13_11();

  return sub_1E39C0300();
}

Swift::Void __swiftcall CollectionViewModel.updateContextDataRef(_:)(Swift::OpaquePointer_optional a1)
{
  rawValue = a1.value._rawValue;
  OUTLINED_FUNCTION_14_0();
  *(v1 + 320) = rawValue;
}

uint64_t sub_1E40B1C90(uint64_t a1)
{
  OUTLINED_FUNCTION_36();
  v3 = *(v1 + 24);
  v5 = *(v4 + 24);
  v6 = (v3 | v5) == 0;
  if (v3 && v5)
  {
    if (*(v1 + 16) == *(a1 + 16) && v3 == v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_1E42079A4();
    }
  }

  OUTLINED_FUNCTION_27_0();
  v8 = swift_dynamicCastClass();
  v9 = 0;
  if (v8 && (v6 & 1) != 0)
  {
    v10 = v8;
    OUTLINED_FUNCTION_8();
    v12 = *(v11 + 1040);

    v14 = v12(v13);
    v15 = (*(*v10 + 1040))();
    v16 = v15;
    if (v14)
    {
      if (v15)
      {
        v9 = sub_1E3A7B2F4(v14, v15);
      }

      else
      {

        v9 = 0;
      }
    }

    else
    {

      if (!v16)
      {
        v9 = 1;
        return v9 & 1;
      }

      v9 = 0;
    }
  }

  return v9 & 1;
}

uint64_t sub_1E40B1E18()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1040))();
  if (v1)
  {
    v2 = v1;
    result = sub_1E32AE9B0(v1);
    v4 = result;
    v5 = 0;
    while (1)
    {
      v6 = v4 != v5;
      if (v4 == v5)
      {
LABEL_11:

        return v6;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v10 = OUTLINED_FUNCTION_11_6();
        result = MEMORY[0x1E6911E60](v10);
        v7 = result;
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(v2 + 8 * v5 + 32);
      }

      if (__OFADD__(v5, 1))
      {
        break;
      }

      (*(*v7 + 872))(result);
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEA8);
      OUTLINED_FUNCTION_0_32();
      sub_1E32752B0(&qword_1EE23B540, &unk_1ECF2C790);
      v9 = sub_1E4149048(v8);

      ++v5;
      if (v9)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    return 1;
  }

  return result;
}

uint64_t sub_1E40B1FA0()
{
  if (TVAppFeature.isEnabled.getter(10))
  {
    OUTLINED_FUNCTION_111();
    if ((*(v1 + 392))())
    {
      type metadata accessor for CollectionViewLayout();
      v2 = swift_dynamicCastClass();
      if (v2)
      {
        (*(*v2 + 1696))(v4);

        result = LOWORD(v4[0]);
        if (LOWORD(v4[0]) != 263)
        {
          return result;
        }
      }

      else
      {
      }
    }

    return *(v0 + 98);
  }

  return sub_1E40B3588();
}

void sub_1E40B20A4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E32AE9B0(v2);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
LABEL_10:
    v14 = sub_1E3AAF2AC(v5);
    v15 = MEMORY[0x1EEE9AC00](v14);
    (*(*v1 + 1360))(sub_1E40BA468, v15);

    OUTLINED_FUNCTION_25_2();
    return;
  }

  v6 = v4;
  v16 = MEMORY[0x1E69E7CC0];
  sub_1E3E31650(0, v4 & ~(v4 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v5 = v16;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1E6911E60](v7, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v7 + 32);
      }

      v10 = *(v8 + 16);
      v9 = *(v8 + 24);

      v12 = *(v16 + 16);
      v11 = *(v16 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1E3E31650((v11 > 1), v12 + 1, 1);
      }

      ++v7;
      *(v16 + 16) = v12 + 1;
      v13 = v16 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
    }

    while (v6 != v7);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1E40B2234()
{
  OUTLINED_FUNCTION_8();
  (*(v1 + 1040))();
  sub_1E40B36B8();
  v3 = v2;

  if (v3)
  {
    OUTLINED_FUNCTION_14_0();
    *(v0 + 272) = v3;

    OUTLINED_FUNCTION_36();
    if ((*(v5 + 1208))())
    {
      swift_getObjectType();
      v6 = OUTLINED_FUNCTION_75_28();
      v7(v6);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_1E40B2348()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v52 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1E3DD55E0(24, v4, v0);
  OUTLINED_FUNCTION_3_0();
  v2[31] = v11;

  v12 = sub_1E3DD55E0(25, v4, v2);
  OUTLINED_FUNCTION_3_0();
  v2[32] = v12;

  *(&v66 + 1) = &type metadata for ViewModelKeys;
  v67 = &off_1F5D7BCA8;
  LOBYTE(v65) = 26;
  sub_1E3F9F164(&v65);
  __swift_destroy_boxed_opaque_existential_1Tm(&v65);
  sub_1E379D7E4(v60, &v65, &unk_1ECF296E0);
  v51 = v10;
  if (!*(&v66 + 1))
  {
    goto LABEL_6;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((OUTLINED_FUNCTION_86_6() & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_1E379D7E4(v60, &v65, &unk_1ECF296E0);
  if (!*(&v66 + 1))
  {
LABEL_6:
    sub_1E325F6F0(&v65, &unk_1ECF296E0);
    goto LABEL_7;
  }

  if (OUTLINED_FUNCTION_86_6())
  {
    v12 = *&v61[0];
    v13 = type metadata accessor for ViewModel();
    v14 = sub_1E3DD5014(13, v12, v2, v13);

    OUTLINED_FUNCTION_3_0();
    v2[33] = v14;
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_3_0();
  v2[33] = 0;
LABEL_8:

  if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
  {
    OUTLINED_FUNCTION_44_66();
    v18 = xmmword_1E42EA7A0;
LABEL_13:
    v17 = 0uLL;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_47_0();
  v12 = v2;
  if (!(*(v15 + 392))())
  {
    OUTLINED_FUNCTION_44_66();
    goto LABEL_15;
  }

  type metadata accessor for CollectionViewLayout();
  v16 = swift_dynamicCastClass();
  if (!v16)
  {

    OUTLINED_FUNCTION_44_66();
    v18 = xmmword_1E42EA7A0;
    goto LABEL_13;
  }

  (*(*v16 + 1696))(v61);
  v49 = v61[1];
  v53 = v61[0];
  v12 = v62;
  v10 = v63;
  v1 = v64;

  v17 = v49;
  v18 = v53;
LABEL_15:
  v54 = v18;
  v65 = v18;
  v66 = v17;
  v67 = v12;
  v68 = v10;
  v69 = v1;
  OUTLINED_FUNCTION_79_29();
  (*(v19 + 816))();
  if (v54 != 263)
  {
    OUTLINED_FUNCTION_79_29();
    if ((*(v20 + 392))())
    {
      type metadata accessor for CollectionViewLayout();
      if (swift_dynamicCastClass())
      {
        OUTLINED_FUNCTION_30();
        (*(v21 + 1704))(&v65);
      }
    }
  }

  v22 = type metadata accessor for CollectionGroupViewModel();
  v23 = sub_1E3DD5014(27, v4, v2, v22);
  OUTLINED_FUNCTION_3_0();
  v2[34] = v23;

  ViewModelKeys.rawValue.getter(33);
  OUTLINED_FUNCTION_40_74(v24, v25);

  if (v59)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_3_0();
      v2[36] = v55;
    }
  }

  else
  {
    sub_1E325F6F0(v58, &unk_1ECF296E0);
  }

  ViewModelKeys.rawValue.getter(30);
  OUTLINED_FUNCTION_40_74(v26, v27);

  if (v59)
  {
    if (OUTLINED_FUNCTION_31_93())
    {
      OUTLINED_FUNCTION_3_0();
      v2[37] = v55;
      v2[38] = v56;
    }
  }

  else
  {
    sub_1E325F6F0(v58, &unk_1ECF296E0);
  }

  ViewModelKeys.rawValue.getter(31);
  OUTLINED_FUNCTION_40_74(v28, v29);

  if (v59)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    if (OUTLINED_FUNCTION_31_93())
    {
      OUTLINED_FUNCTION_3_0();
      v2[39] = v55;
    }
  }

  else
  {
    sub_1E325F6F0(v58, &unk_1ECF296E0);
  }

  ViewModelKeys.rawValue.getter(35);
  OUTLINED_FUNCTION_40_74(v30, v31);

  if (v59)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    if (OUTLINED_FUNCTION_31_93())
    {
      OUTLINED_FUNCTION_3_0();
      v2[40] = v55;

      sub_1E324FBDC();
      OUTLINED_FUNCTION_0_11();
      v32(v51);

      v33 = sub_1E41FFC94();
      v34 = sub_1E4206814();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = OUTLINED_FUNCTION_49_0();
        v58[0] = OUTLINED_FUNCTION_72_0();
        *v35 = 136446466;
        v50 = v34;
        v36 = sub_1E40B4E10();
        v38 = sub_1E3270FC8(v36, v37, v58);

        *(v35 + 4) = v38;
        *(v35 + 12) = 2080;
        sub_1E4205C74();

        v39 = OUTLINED_FUNCTION_63_0();
        v42 = sub_1E3270FC8(v39, v40, v41);

        *(v35 + 14) = v42;
        _os_log_impl(&dword_1E323F000, v33, v50, "%{public}s AppendContextData [%s]", v35, 0x16u);
        OUTLINED_FUNCTION_77_24();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_79();
      }

      else
      {
      }

      (*(v6 + 8))(v51, v52);
    }
  }

  else
  {
    sub_1E325F6F0(v58, &unk_1ECF296E0);
  }

  v57 = 6;
  OUTLINED_FUNCTION_79_29();
  (*(v43 + 776))(v58, &v57, &unk_1F5D5D888, &off_1F5D5C918);
  if (v59)
  {
    if (swift_dynamicCast() && (v57 & 1) != 0)
    {
      OUTLINED_FUNCTION_79_29();
      (*(v44 + 264))();
      if (!v45 && v2[3])
      {
      }

      type metadata accessor for UpdateEventMonitorController();
      OUTLINED_FUNCTION_4_0();
      swift_allocObject();
      swift_weakInit();

      sub_1E3B03DA0();
      v46 = v2[47];
      v2[47] = v47;
      v48 = v47;

      sub_1E3B050E8();
      sub_1E3B050F0();
    }
  }

  else
  {
    sub_1E325F6F0(v58, &unk_1ECF296E0);
  }

  sub_1E325F6F0(v60, &unk_1ECF296E0);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40B2C84()
{
  v3 = v0;
  v46 = 0;
  OUTLINED_FUNCTION_8();
  v5 = (*(v4 + 1016))();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = sub_1E32AE9B0(v6);
  if (!v7)
  {

    v1 = 0;
    goto LABEL_31;
  }

  v8 = v7;
  if (v7 < 1)
  {
    __break(1u);
    goto LABEL_60;
  }

  v36 = 0;
  v9 = 0;
  v39 = v6 & 0xC000000000000001;
  v38 = *(*v3 + 392);
  v37 = v6;
  do
  {
    if (v39)
    {
      v10 = MEMORY[0x1E6911E60](v9, v6);
    }

    else
    {
      v10 = *(v6 + 8 * v9 + 32);
    }

    v11 = sub_1E40B3480();
    v13 = v12;
    v15 = v14;
    v16 = sub_1E4038DF8(v11, v14, v10, v47);
    v46 = v48;
    if (v38(v16))
    {
      type metadata accessor for CollectionViewLayout();
      if (swift_dynamicCastClass())
      {
        OUTLINED_FUNCTION_30();
        (*(v17 + 1704))(v47);
      }
    }

    OUTLINED_FUNCTION_66_3();
    v19 = (*(v18 + 392))();
    if (!v19)
    {

      v42 = 0;
      v40 = 0u;
      v41 = 0u;
      goto LABEL_22;
    }

    v43[0] = v19;
    type metadata accessor for ViewLayout();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38E68);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v42 = 0;
      v40 = 0u;
      v41 = 0u;
LABEL_21:

LABEL_22:
      sub_1E325F6F0(&v40, &qword_1ECF38E60);
      v6 = v37;
      goto LABEL_23;
    }

    if (!*(&v41 + 1))
    {
      goto LABEL_21;
    }

    sub_1E3251BE8(&v40, v43);
    if (v36)
    {
      v36 = 1;
    }

    else
    {
      v20 = v44;
      v21 = v45;
      __swift_project_boxed_opaque_existential_1(v43, v44);
      v36 = (*(v21 + 8))(v11, v13, v15, v20, v21);
    }

    v6 = v37;

    __swift_destroy_boxed_opaque_existential_1Tm(v43);
LABEL_23:
    ++v9;
  }

  while (v8 != v9);

  if (v36)
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

LABEL_31:
  OUTLINED_FUNCTION_111();
  v22 += 130;
  v2 = *v22;
  v23 = (*v22)();
  if (!v23)
  {
    goto LABEL_38;
  }

  v6 = v23;
  result = sub_1E32AE9B0(v23);
  if (!result)
  {
    v27 = 0;
    goto LABEL_40;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_60:
    MEMORY[0x1E6911E60](0, v6);
LABEL_36:

    OUTLINED_FUNCTION_47_0();
    v26 = (*(v25 + 872))();

    if (v26)
    {
      v27 = sub_1E32AE9B0(v26);
LABEL_40:

LABEL_41:
      v28 = (v2)(v23);
      if (v28)
      {
        v29 = v28;
        result = sub_1E32AE9B0(v28);
        if (result)
        {
          if ((v29 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1E6911E60](0, v29);
          }

          else
          {
            if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_64;
            }
          }

          OUTLINED_FUNCTION_12_6();
          (*(v30 + 888))();
        }

        else
        {
        }
      }

      v31 = (v2)(v28);
      if (v31)
      {
        v32 = v31;
        result = sub_1E32AE9B0(v31);
        if (!result)
        {
          v35 = 0;
          goto LABEL_57;
        }

        if ((v32 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E6911E60](0, v32);
        }

        else
        {
          if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_65;
          }

          OUTLINED_FUNCTION_77_24();
        }

        OUTLINED_FUNCTION_8();
        v34 = (*(v33 + 872))();

        if (v34)
        {
          v35 = sub_1E32AE9B0(v34);
LABEL_57:

          return v1 | (v35 != v27);
        }
      }

      v35 = 0;
      return v1 | (v35 != v27);
    }

LABEL_38:
    v27 = 0;
    goto LABEL_41;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_36;
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_1E40B3228()
{
  OUTLINED_FUNCTION_31_58();
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1040))();
  if (!v1)
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  v12 = v1;
  result = sub_1E32AE9B0(v1);
  v13 = result;
  if (!result)
  {
LABEL_27:
  }

  v3 = 0;
  while (1)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](v3, v12);
    }

    else
    {
      if (v3 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }
    }

    if (__OFADD__(v3++, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_8();
    result = (*(v5 + 872))();
    if (result)
    {
      v6 = result;
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    if (v6 >> 62)
    {
      result = sub_1E4207384();
      v7 = result;
      if (!result)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        goto LABEL_23;
      }
    }

    if (v7 < 1)
    {
      goto LABEL_31;
    }

    for (i = 0; i != v7; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1E6911E60](i, v6);
      }

      else
      {
        v9 = *(v6 + 8 * i + 32);
      }

      if ((*(*v9 + 392))())
      {
        OUTLINED_FUNCTION_30();
        v10 = OUTLINED_FUNCTION_74();
        v11(v10);
      }
    }

LABEL_23:

    if (v3 == v13)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1E40B3480()
{
  OUTLINED_FUNCTION_31_58();
  if (v2 != 5)
  {
    sub_1E3890B18();
    v3 = sub_1E4205E84();
    if (v3)
    {
      v4 = (*(*v0 + 648))(v3);
      if (v4)
      {
        v5 = v4;
        OUTLINED_FUNCTION_5_0();
        v6 = *(v5 + 56);
      }

      else
      {
        v6 = 0;
      }

      sub_1E3C2AD40(v6);
    }
  }

  v7 = v1;
  return OUTLINED_FUNCTION_74();
}

uint64_t sub_1E40B3588()
{
  v1 = *(v0 + 98);
  OUTLINED_FUNCTION_8();
  if ((*(v2 + 392))())
  {
    OUTLINED_FUNCTION_30();
    v4 = (*(v3 + 1560))();

    v5 = *(v0 + 280);
    if (v5)
    {

      v6 = sub_1E3A253B8(v4);
      sub_1E3277E60(v6, v7, v5, &v10);

      if (v11)
      {
        if (swift_dynamicCast())
        {
          v8 = sub_1E38506C8();
          if (v8 == 263)
          {
            return v1;
          }

          else
          {
            return v8;
          }
        }
      }

      else
      {
        sub_1E325F6F0(&v10, &unk_1ECF296E0);
      }
    }
  }

  return v1;
}

void sub_1E40B36B8()
{
  OUTLINED_FUNCTION_31_1();
  v89 = v0;
  v86 = v1;
  v87 = v2;
  v4 = v3;
  sub_1E41FE7A4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  if (v4)
  {
    v80 = v7;
    OUTLINED_FUNCTION_69_32(v6);

    v81 = v10;
    sub_1E41FE794();
    v88 = sub_1E32AE9B0(v4);
    v11 = 0;
    v85 = v4 & 0xC000000000000001;
    v84 = v4 & 0xFFFFFFFFFFFFFF8;
    v79 = v4;
    v91 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v11 == v88)
      {
        if ((sub_1E41FE774() & 1) == 0)
        {
          v77 = OUTLINED_FUNCTION_32_0();
          __swift_instantiateConcreteTypeFromMangledNameV2(v77);
          sub_1E32752B0(&qword_1ECF3F898, &unk_1ECF3F4C0);
          sub_1E32752B0(&qword_1ECF3F8A0, &unk_1ECF3F4C0);
          sub_1E4206774();
        }

        v78 = sub_1E32AE9B0(v91);
        (*(v80 + 8))(v81);
        if (!v78)
        {
        }

        break;
      }

      if (v85)
      {
        MEMORY[0x1E6911E60](v11, v79);
      }

      else
      {
        if (v11 >= *(v84 + 16))
        {
          goto LABEL_68;
        }
      }

      if (__OFADD__(v11, 1))
      {
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
        return;
      }

      v90 = v11 + 1;
      OUTLINED_FUNCTION_111();
      v13 = (*(v12 + 1048))(v86, v87);
      ViewModelKeys.rawValue.getter(27);
      v15 = v14;
      v17 = v16;
      OUTLINED_FUNCTION_36();
      v19 = (*(v18 + 672))();
      sub_1E3277E60(v15, v17, v19, &v97);

      v92 = v13;
      if (!v98)
      {
        goto LABEL_25;
      }

      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
      if ((OUTLINED_FUNCTION_45_17() & 1) == 0)
      {
        goto LABEL_26;
      }

      if (*(v95[0] + 16) <= v11)
      {
        goto LABEL_72;
      }

      v21 = *(v95[0] + 8 * v11 + 32);

      sub_1E384EE08(140);
      sub_1E3277E60(v22, v23, v21, &v97);

      if (!v98)
      {
        goto LABEL_25;
      }

      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      if ((OUTLINED_FUNCTION_86_6() & 1) == 0)
      {
        goto LABEL_26;
      }

      v93 = v24;
      v25 = v95[0];
      ViewModelKeys.rawValue.getter(13);
      sub_1E3277E60(v26, v27, v25, &v97);

      if (v98)
      {
        if (OUTLINED_FUNCTION_45_17())
        {
          v96 = v95[0];
          v28 = sub_1E32AE9B0(v13);
          v83 = v20;
          if (v28)
          {
            v29 = v28;
            *&v97 = MEMORY[0x1E69E7CC0];
            sub_1E3E31650(0, v28 & ~(v28 >> 63), 0);
            if (v29 < 0)
            {
              goto LABEL_77;
            }

            v30 = 0;
            v31 = v97;
            v32 = v13 & 0xC000000000000001;
            do
            {
              if (v32)
              {
                v33 = OUTLINED_FUNCTION_53();
                v34 = MEMORY[0x1E6911E60](v33);
              }

              else
              {
                v34 = *(v13 + 8 * v30 + 32);
              }

              v35 = *(v34 + 16);
              v36 = *(v34 + 24);

              *&v97 = v31;
              v38 = *(v31 + 16);
              v37 = *(v31 + 24);
              if (v38 >= v37 >> 1)
              {
                sub_1E3E31650((v37 > 1), v38 + 1, 1);
                v31 = v97;
              }

              ++v30;
              *(v31 + 16) = v38 + 1;
              v39 = v31 + 16 * v38;
              *(v39 + 32) = v35;
              *(v39 + 40) = v36;
              v13 = v92;
            }

            while (v29 != v30);
          }

          else
          {
            v31 = MEMORY[0x1E69E7CC0];
          }

          v63 = sub_1E3AAF2AC(v31);

          v64 = sub_1E40BA0C4(&v96, v63);
          v65 = v96[2];
          if (v65 < v64)
          {
            goto LABEL_76;
          }

          sub_1E4038CF8(v64, v65);

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320);
          v66 = swift_allocObject();
          *(v66 + 16) = xmmword_1E4298AD0;
          ViewModelKeys.rawValue.getter(27);
          *(v66 + 32) = v67;
          *(v66 + 40) = v68;
          *&v97 = v11;
          *(v66 + 48) = sub_1E4207944();
          *(v66 + 56) = v69;
          ViewModelKeys.rawValue.getter(28);
          *(v66 + 64) = v70;
          *(v66 + 72) = v71;
          ViewModelKeys.rawValue.getter(13);
          *(v66 + 80) = v72;
          *(v66 + 88) = v73;
          *&v97 = v66;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420);
          OUTLINED_FUNCTION_1_34();
          sub_1E32752B0(&qword_1EE23B510, &qword_1ECF2C420);
          v74 = sub_1E4205DF4();
          v76 = v75;

          v98 = v83;
          *&v97 = v96;
          (*(*v89 + 688))(v95);
          OUTLINED_FUNCTION_152();
          sub_1E3FA012C(&v97, v74, v76, v93);
          (v66)(v95, 0);
        }
      }

      else
      {
LABEL_25:
        sub_1E325F6F0(&v97, &unk_1ECF296E0);
      }

LABEL_26:
      OUTLINED_FUNCTION_111();
      *&v97 = (*(v40 + 872))();
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEA8);
      OUTLINED_FUNCTION_0_32();
      sub_1E32752B0(&qword_1EE23B540, &unk_1ECF2C790);
      v42 = sub_1E4149048(v41);

      if (v42)
      {
        sub_1E41FE764();
      }

      if (v92 >> 62)
      {
        v94 = sub_1E4207384();
      }

      else
      {
        v94 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v43 = v91;
      v44 = v91 >> 62;
      if (v91 >> 62)
      {
        v45 = sub_1E4207384();
      }

      else
      {
        v45 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v46 = v45 + v94;
      if (__OFADD__(v45, v94))
      {
        goto LABEL_69;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v44)
        {
          v47 = v91 & 0xFFFFFFFFFFFFFF8;
          if (v46 <= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        }

LABEL_38:
        sub_1E4207384();
        goto LABEL_39;
      }

      if (v44)
      {
        goto LABEL_38;
      }

LABEL_39:
      v43 = sub_1E4207514();
      v47 = v43 & 0xFFFFFFFFFFFFFF8;
LABEL_40:
      v91 = v43;
      v48 = *(v47 + 16);
      v49 = (*(v47 + 24) >> 1) - v48;
      v50 = v47 + 8 * v48;
      if (v92 >> 62)
      {
        v52 = sub_1E4207384();
        if (v52)
        {
          v53 = v52;
          v54 = sub_1E4207384();
          if (v49 < v54)
          {
            goto LABEL_73;
          }

          if (v53 < 1)
          {
            goto LABEL_75;
          }

          v82 = v54;
          v55 = 0;
          v56 = v50 + 32;
          do
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
            v57 = sub_1E3797EB0(&v97, v55, v92);
            v59 = *v58;

            (v57)(&v97, 0);
            *(v56 + 8 * v55++) = v59;
          }

          while (v53 != v55);
          v51 = v82;
          goto LABEL_50;
        }
      }

      else
      {
        v51 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v51)
        {
          if (v49 < v51)
          {
            goto LABEL_74;
          }

          type metadata accessor for ViewModel();
          swift_arrayInitWithCopy();
LABEL_50:

          if (v51 < v94)
          {
            goto LABEL_70;
          }

          if (v51 > 0)
          {
            v60 = *(v47 + 16);
            v61 = __OFADD__(v60, v51);
            v62 = v60 + v51;
            if (v61)
            {
              goto LABEL_71;
            }

            *(v47 + 16) = v62;
          }

          goto LABEL_55;
        }
      }

      if (v94 > 0)
      {
        goto LABEL_70;
      }

LABEL_55:

      v11 = v90;
    }
  }

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40B40C8(unint64_t a1)
{
  v3 = sub_1E32AE9B0(a1);
  v4 = sub_1E32AE9B0(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1E3797CDC(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1E40BA980(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1E40B4174(uint64_t a1)
{
  OUTLINED_FUNCTION_14_0();
  *(v1 + 272) = a1;
}

uint64_t sub_1E40B41C4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E4298880;
  *(v3 + 32) = a1;
  OUTLINED_FUNCTION_14_0();
  *(v1 + 264) = v3;
}

uint64_t sub_1E40B4248()
{
  OUTLINED_FUNCTION_3_0();
  v0[40] = 0;

  ViewModelKeys.rawValue.getter(35);
  v2 = v1;
  v4 = v3;
  memset(v8, 0, sizeof(v8));
  v5 = (*(*v0 + 688))(v7);
  sub_1E3946774(v8, v2, v4);
  return v5(v7, 0);
}

uint64_t sub_1E40B4350()
{
  if ((*(v0 + 401) & 1) == 0)
  {
    return *(v0 + 392);
  }

  LOBYTE(v4) = 6;
  OUTLINED_FUNCTION_8();
  (*(v1 + 776))(v5, &v4, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (!v5[3])
  {
    sub_1E325F6F0(v5, &unk_1ECF296E0);
    goto LABEL_7;
  }

  if (!OUTLINED_FUNCTION_53_37())
  {
LABEL_7:
    result = 0;
    v2 = 1;
    goto LABEL_8;
  }

  v2 = 0;
  result = v4;
LABEL_8:
  *(v0 + 392) = result;
  *(v0 + 400) = v2;
  *(v0 + 401) = 0;
  return result;
}

uint64_t sub_1E40B4424()
{
  result = sub_1E40B4350();
  *(v0 + 392) = 0;
  *(v0 + 400) = 1;
  return result;
}

uint64_t sub_1E40B444C()
{
  OUTLINED_FUNCTION_8();
  result = (*(v0 + 1208))();
  if (result)
  {
    swift_getObjectType();
    v2 = OUTLINED_FUNCTION_75_28();
    v3(v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1E40B44FC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v74 - v16;
  v18 = v0[45];
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  if (!v18)
  {
    v81 = v6;
    v29 = v4;
    v19(v17);
    v30 = v8;

    v31 = sub_1E41FFC94();
    v32 = sub_1E4206814();
    v80 = v30;

    v79 = v32;
    if (os_log_type_enabled(v31, v32))
    {
      v75 = v11;
      v76 = v31;
      v78 = v29;
      v33 = swift_slowAlloc();
      *&v87 = swift_slowAlloc();
      *v33 = 136446978;
      v34 = sub_1E40B4E10();
      OUTLINED_FUNCTION_14_64(v34, v35);
      OUTLINED_FUNCTION_11_5();

      *(v33 + 4) = v8;
      *(v33 + 12) = 2080;
      v37 = (*(*v10 + 376))(v36);
      OUTLINED_FUNCTION_14_64(v37, v38);
      OUTLINED_FUNCTION_11_5();

      *(v33 + 14) = v8;
      *(v33 + 22) = 2080;
      v40 = v2;
      v41 = (*(*v2 + 376))(v39);
      OUTLINED_FUNCTION_14_64(v41, v42);
      OUTLINED_FUNCTION_11_5();

      *(v33 + 24) = v8;
      *(v33 + 32) = 2080;
      v77 = v8;
      if (v8)
      {
        v43 = [v80 description];
        sub_1E4205F14();
        OUTLINED_FUNCTION_152();
      }

      else
      {
        v40 = 0xE700000000000000;
        v8 = 0x6E776F6E6B6E75;
      }

      v45 = v75;
      sub_1E3270FC8(v8, v40, &v87);
      OUTLINED_FUNCTION_11_5();

      *(v33 + 34) = v8;
      v46 = v76;
      _os_log_impl(&dword_1E323F000, v76, v79, "%{public}s fetchSingle %s\nin %s %s", v33, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_21_0();

      (*(v13 + 8))(v17, v45);
      v8 = v77;
      v44 = v78;
    }

    else
    {

      (*(v13 + 8))(v17, v11);
      v44 = v29;
    }

    v47 = v81;
    if (v8)
    {
      v48 = v44;
      v49 = v80;
      v84[0] = v80;
      sub_1E3280A90(0, &qword_1EE23AFD8);
      v50 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F888);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v89 = 0;
        v87 = 0u;
        v88 = 0u;
      }

      v44 = v48;
    }

    else
    {
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    OUTLINED_FUNCTION_111();
    v52 = dynamic_cast_existential_1_conditional(v10);
    if (v52)
    {
      v53 = v51;
    }

    else
    {
      v53 = 0;
    }

    v85 = &unk_1F5D5DAC8;
    v86 = &off_1F5D5C998;
    LOBYTE(v84[0]) = 32;
    v54 = j__OUTLINED_FUNCTION_18();
    v55 = sub_1E39C29F0(v84, v54 & 1);
    __swift_destroy_boxed_opaque_existential_1Tm(v84);
    if (v55)
    {
      goto LABEL_25;
    }

    sub_1E379D7E4(&v87, v84, &qword_1ECF3F878);
    if (v85)
    {
      __swift_project_boxed_opaque_existential_1(v84, v85);
      v56 = OUTLINED_FUNCTION_27_0();
      v58 = v57(v56);
      __swift_destroy_boxed_opaque_existential_1Tm(v84);
    }

    else
    {
      v59 = sub_1E325F6F0(v84, &qword_1ECF3F878);
      v84[0] = v52;
      v84[1] = v53;
      MEMORY[0x1EEE9AC00](v59);
      *(&v74 - 2) = v8;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F880);
      sub_1E4148F70(sub_1E40BA484, (&v74 - 4), v60, &type metadata for DocumentEventUpdateResult, &v83);
      v58 = v83;
    }

    if (v58 - 2 < 2)
    {
LABEL_25:
      if (v52)
      {
        OUTLINED_FUNCTION_3_0();
        if (!v2[48])
        {
          if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
          {
            v61 = sub_1E37CB554(MEMORY[0x1E69E7CC0]);
          }

          else
          {
            v61 = MEMORY[0x1E69E7CD0];
          }

          v2[48] = v61;
        }

        v65 = v47;
        v66 = sub_1E40B193C();
        if (*v67)
        {

          sub_1E37CB934(&v82, v10);
        }

        (v66)(v84, 0);
        OUTLINED_FUNCTION_71_2();
        v69 = v68;
        OUTLINED_FUNCTION_4_0();
        v70 = swift_allocObject();
        swift_weakInit();
        OUTLINED_FUNCTION_4_0();
        v71 = swift_allocObject();
        swift_weakInit();
        v72 = swift_allocObject();
        v72[2] = v70;
        v72[3] = v71;
        v72[4] = v47;
        v72[5] = v44;
        v73 = *(v53 + 16);

        sub_1E34AF604(v65);
        v73(sub_1E40BA55C, v72, v69, v53);

LABEL_41:

        sub_1E325F6F0(&v87, &qword_1ECF3F878);
        goto LABEL_42;
      }
    }

    else
    {
      if (v58)
      {
        OUTLINED_FUNCTION_12_6();
        if ((*(v62 + 1208))())
        {
          OUTLINED_FUNCTION_145();
          swift_getObjectType();
          v63 = OUTLINED_FUNCTION_11_6();
          v64(v63);
          swift_unknownObjectRelease();
        }

        if (v47)
        {
          v47(1);
        }

        goto LABEL_41;
      }
    }

    sub_1E325F6F0(&v87, &qword_1ECF3F878);
    goto LABEL_42;
  }

  v19(v1);

  v20 = sub_1E41FFC94();
  v21 = sub_1E4206814();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_49_0();
    *&v87 = OUTLINED_FUNCTION_72_0();
    *v22 = 136446466;
    v23 = sub_1E40B4E10();
    v25 = OUTLINED_FUNCTION_14_64(v23, v24);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    v27 = (*(*v10 + 376))(v26);
    sub_1E3270FC8(v27, v28, &v87);
    OUTLINED_FUNCTION_15_19();
    *(v22 + 14) = v10;
    _os_log_impl(&dword_1E323F000, v20, v21, "%{public}s fetchSingle already in progress, ignoring request for %s", v22, 0x16u);
    OUTLINED_FUNCTION_58_40();
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_21_0();
  }

  (*(v13 + 8))(v1, v11);
LABEL_42:
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E40B4E10()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);
  }

  else
  {
    v2 = 0xE700000000000000;
    v1 = 0x6E776F6E6B6E55;
  }

  MEMORY[0x1E69109E0](v1, v2);

  MEMORY[0x1E69109E0](8285, 0xE200000000000000);

  return 0xD00000000000001ALL;
}

uint64_t sub_1E40B4EC8(uint64_t a1, void *a2)
{
  v3 = v2;
  if (!a2 || (sub_1E3280A90(0, &qword_1EE23AFD8), v5 = a2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F888), (swift_dynamicCast() & 1) == 0))
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    goto LABEL_8;
  }

  v6 = *(&v12 + 1);
  if (!*(&v12 + 1))
  {
LABEL_8:
    sub_1E325F6F0(&v11, &qword_1ECF3F878);
LABEL_9:
    sub_1E40B50A0();
    return v9 & 1;
  }

  v7 = v13;
  __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
  v8 = (*(v7 + 8))(v3, v6, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(&v11);
  if (!v8)
  {
    v9 = 0;
    return v9 & 1;
  }

  if (v8 != 1)
  {
    goto LABEL_9;
  }

  v9 = 1;
  return v9 & 1;
}

uint64_t sub_1E40B501C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getObjectType();
  if (a1 != a3)
  {
    OUTLINED_FUNCTION_122();
    ObjectType = swift_getObjectType();
    result = (*(a2 + 8))(ObjectType, a2);
    if (result)
    {
      v8 = OUTLINED_FUNCTION_63_0();
      return sub_1E3FCC1B4(v8);
    }
  }

  return result;
}

void sub_1E40B50A0()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v105 = v4;
  v106 = v5;
  LODWORD(v104) = v6;
  v107 = v7;
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v103 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v98 - v16;
  v18 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  OUTLINED_FUNCTION_36();
  if ((*(v25 + 1184))())
  {
    OUTLINED_FUNCTION_145();
    ObjectType = swift_getObjectType();
    (*(v1 + 16))(v107, v104 & 1, v105, v106, ObjectType, v1);
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  v100 = v24;
  v101 = v20;
  v104 = v18;
  v99 = v17;
  v102 = v2;
  v27 = v106;
  OUTLINED_FUNCTION_71_2();
  v29 = (*(v28 + 1112))();
  v31 = v107;
  if (v30)
  {
    v32 = v29;
    v33 = v30;
    OUTLINED_FUNCTION_71_2();
    if ((*(v34 + 648))() && (OUTLINED_FUNCTION_5_0(), swift_unknownObjectWeakLoadStrong(), OUTLINED_FUNCTION_6_19(), , v17))
    {
      if (sub_1E40B5B78())
      {
        sub_1E4206BA4();
        v35 = VUISignpostLogObject();
        v36 = v100;
        sub_1E41FFBE4();
        sub_1E41FFBA4();

        v101[1](v36, v104);
        if (v0[45])
        {
          v104 = v32;
          sub_1E324FBDC();
          v37 = v103;
          OUTLINED_FUNCTION_131_0();
          v35 = v99;
          v38(v99);

          v39 = sub_1E41FFC94();
          v40 = sub_1E4206814();

          if (os_log_type_enabled(v39, v40))
          {
            v41 = OUTLINED_FUNCTION_49_0();
            v101 = v17;
            v42 = v41;
            v100 = OUTLINED_FUNCTION_72_0();
            v108 = v100;
            *v42 = 136315394;
            v43 = sub_1E40B5D58();
            OUTLINED_FUNCTION_58_0(v43, v44);
            OUTLINED_FUNCTION_11_5();

            *(v42 + 4) = v35;
            *(v42 + 12) = 2080;
            v45 = ViewModelRequestType.rawValue.getter(v107);
            OUTLINED_FUNCTION_58_0(v45, v46);
            OUTLINED_FUNCTION_11_5();

            *(v42 + 14) = v35;
            _os_log_impl(&dword_1E323F000, v39, v40, "%s Cancelling to handle new request of type [%s]", v42, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_6_0();
            v17 = v101;
            OUTLINED_FUNCTION_6_0();

            (*(v37 + 8))(v99, v8);
          }

          else
          {

            (*(v37 + 8))(v35, v8);
          }

          v3 = v0;
          if (v0[45])
          {
            OUTLINED_FUNCTION_8();
            v35 = *(v56 + 376);

            (v35)(v57);
          }

          v32 = v104;
          v0[45] = 0;
        }

        type metadata accessor for CollectionServiceRequestContext();
        v58 = v17;
        v59 = sub_1E3E3D284(v107, v32, v33, v17);
        if ((*(*v3 + 1208))())
        {
          OUTLINED_FUNCTION_145();
          v60 = swift_getObjectType();
          (*(v35 + 1))(v60, v35);
          OUTLINED_FUNCTION_11_5();
          swift_unknownObjectRelease();
          if (v35)
          {
            OUTLINED_FUNCTION_11_13();
            (*(v61 + 208))(v35);
          }
        }

        OUTLINED_FUNCTION_71_2();
        (*(v62 + 1136))();
        OUTLINED_FUNCTION_11_13();
        (*(v63 + 232))();
        v64 = sub_1E39C1AA0();
        (*(*v59 + 280))(v64);
        if (sub_1E37D01CC())
        {
          OUTLINED_FUNCTION_71_2();
          (*(v65 + 1160))();
          OUTLINED_FUNCTION_11_13();
          v67 = (*(v66 + 256))();
          v68 = (*(*v3 + 1040))(v67);
          if (v68)
          {
            v69 = sub_1E37D027C(v68);
          }

          else
          {
            v69 = 0;
          }

          v73 = v102;
          OUTLINED_FUNCTION_11_13();
          (*(v74 + 184))(v69);
        }

        else
        {
          OUTLINED_FUNCTION_11_13();
          v71 = *(v70 + 184);

          v71(v72);
          v73 = v102;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A2A8);
        v3[45] = sub_1E37B2890();

        v104 = v3;
        v75 = sub_1E40B5D58();
        v77 = v76;
        sub_1E324FBDC();
        v78 = v103;
        OUTLINED_FUNCTION_131_0();
        v79(v73);

        v80 = sub_1E41FFC94();
        v81 = sub_1E4206814();

        v82 = os_log_type_enabled(v80, v81);
        v100 = v75;
        v101 = v77;
        if (v82)
        {
          v83 = OUTLINED_FUNCTION_49_0();
          v84 = OUTLINED_FUNCTION_72_0();
          v99 = v58;
          v108 = v84;
          *v83 = 136315394;
          *(v83 + 4) = sub_1E3270FC8(v75, v77, &v108);
          *(v83 + 12) = 2080;
          v85 = ViewModelRequestType.rawValue.getter(v107);
          v87 = sub_1E3270FC8(v85, v86, &v108);

          *(v83 + 14) = v87;
          _os_log_impl(&dword_1E323F000, v80, v81, "%s Starting with type [%s]", v83, 0x16u);
          OUTLINED_FUNCTION_58_40();
          v58 = v99;
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();

          (*(v78 + 8))(v102, v8);
        }

        else
        {

          (*(v78 + 8))(v73, v8);
        }

        v88 = v104;
        v89 = v105;
        v90 = *(v104 + 360);
        if (v90)
        {
          OUTLINED_FUNCTION_47_0();
          v92 = *(v91 + 352);

          v94 = v92(v93);

          v95 = v101;
          if (!v94)
          {

            v90 = 0;
            goto LABEL_38;
          }

          OUTLINED_FUNCTION_4_0();
          v90 = swift_allocObject();
          swift_weakInit();
          v96 = swift_allocObject();
          v97 = v100;
          *(v96 + 16) = v90;
          *(v96 + 24) = v97;
          *(v96 + 32) = v95;
          *(v96 + 40) = v107;
          *(v96 + 48) = v89;
          *(v96 + 56) = v27;
          sub_1E34AF604(v89);
          sub_1E41EC148(sub_1E40BAC04, v96);
          OUTLINED_FUNCTION_11_5();
        }

        else
        {
        }

LABEL_38:
        *(v88 + 368) = v90;

        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  sub_1E40B5B78();
  v47 = sub_1E324FBDC();
  v48 = v103;
  (*(v103 + 16))(v13, v47, v8);

  v49 = sub_1E41FFC94();
  v50 = sub_1E4206814();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = OUTLINED_FUNCTION_49_0();
    v108 = OUTLINED_FUNCTION_72_0();
    *v51 = 136446466;
    v52 = sub_1E40B4E10();
    sub_1E3270FC8(v52, v53, &v108);
    OUTLINED_FUNCTION_15_19();
    *(v51 + 4) = v0;
    *(v51 + 12) = 2080;
    v54 = ViewModelRequestType.rawValue.getter(v31);
    sub_1E3270FC8(v54, v55, &v108);
    OUTLINED_FUNCTION_15_19();
    *(v51 + 14) = v0;
    _os_log_impl(&dword_1E323F000, v49, v50, "%{public}s Failed to make fetch request [%s]", v51, 0x16u);
    OUTLINED_FUNCTION_58_40();
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_21_0();
  }

  (*(v48 + 8))(v13, v8);
LABEL_15:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40B5B78()
{
  v1 = *(v0 + 360);
  if (v1)
  {
    sub_1E327F454(v1 + 16, v10);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BC0);
    type metadata accessor for CollectionServiceRequestContext();
    if (swift_dynamicCast())
    {
      v2 = v9;
    }

    else
    {
      v2 = 0;
    }

    if (sub_1E37D01CC())
    {
      if (!v2)
      {
LABEL_19:

        return 1;
      }

      if (*(v2 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_requestType) == 5 || (v10[0] = *(v2 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_requestType), sub_1E37D17DC(), (sub_1E4205E84() & 1) == 0))
      {
LABEL_11:

        goto LABEL_19;
      }

      OUTLINED_FUNCTION_111();
      if ((*(v3 + 168))(v4))
      {
        OUTLINED_FUNCTION_111();
        (*(v5 + 376))(v6);
        goto LABEL_11;
      }
    }

    return 0;
  }

  if (sub_1E37D01CC())
  {
    OUTLINED_FUNCTION_8();
    if ((*(v7 + 1160))())
    {

      return 1;
    }
  }

  return sub_1E37D01CC();
}

unint64_t sub_1E40B5D58()
{
  v1 = 0xD000000000000016;
  v2 = v0[45];
  if (v2)
  {
    sub_1E327F454(v2 + 16, &v11);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BC0);
    type metadata accessor for CollectionServiceRequestContext();
    if (swift_dynamicCast())
    {
      if (v0[3])
      {
        v3 = v0[2];
        v4 = v0[3];
      }

      else
      {
        v4 = 0xE700000000000000;
        v3 = 0x6E776F6E6B6E55;
      }

      v11 = 0xD00000000000001ALL;
      v12 = 0x80000001E4290AF0;

      MEMORY[0x1E69109E0](v3, v4);

      MEMORY[0x1E69109E0](0x736575716552205DLL, 0xEB000000005B2074);

      v6 = v11;
      v5 = v12;
      v7 = sub_1E41FE5E4();
      v9 = v8;
      v11 = v6;
      v12 = v5;

      MEMORY[0x1E69109E0](v7, v9);

      MEMORY[0x1E69109E0](2112093, 0xE300000000000000);

      return v11;
    }

    else
    {
    }
  }

  return v1;
}

void sub_1E40B5F3C()
{
  OUTLINED_FUNCTION_31_1();
  v100 = v1;
  v101 = v0;
  v104 = v2;
  v103 = v3;
  v5 = v4;
  v7 = v6;
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v96 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v96 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v96 - v24;
  v26 = *(v7 + 8);
  v102 = *v7;
  v99 = *(v7 + 16);
  v27 = *(v7 + 17);
  OUTLINED_FUNCTION_5_0();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    if (v27)
    {
      v96[1] = v10;
      if (v99 == 2)
      {
        v30 = sub_1E324FBDC();
        v31 = *(v10 + 16);
        v32 = v8;
        v31(v22, v30, v8);
        v33 = v5;

        v5 = v102;
        v34 = OUTLINED_FUNCTION_68_35();
        sub_1E3781FA4(v34, v35, v36, v37);
        v38 = sub_1E41FFC94();
        v39 = sub_1E42067F4();

        v40 = OUTLINED_FUNCTION_68_35();
        sub_1E37D172C(v40, v41, v42, v43);
        if (os_log_type_enabled(v38, v39))
        {
          v44 = OUTLINED_FUNCTION_49_0();
          v96[0] = v31;
          v45 = v44;
          *&v106[0] = OUTLINED_FUNCTION_72_0();
          *v45 = 136315394;
          v46 = OUTLINED_FUNCTION_35_81();
          *(v45 + 4) = sub_1E3270FC8(v46, v33, v47);
          *(v45 + 12) = 2080;
          *(v45 + 14) = sub_1E3270FC8(v5, v26, v106);
          _os_log_impl(&dword_1E323F000, v38, v39, "%s Received empty items from fragment request: [%s]", v45, 0x16u);
          swift_arrayDestroy();
          v32 = v8;
          OUTLINED_FUNCTION_6_0();
          v31 = v96[0];
          OUTLINED_FUNCTION_6_0();
        }

        OUTLINED_FUNCTION_65_38();
        (v5)(v22, v32);
      }

      else
      {
        v105[0] = sub_1E3F6FB3C(v102, v26, v99);
        v105[1] = v62;
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
        sub_1E4148C68(sub_1E37BCD7C, v63, v106);

        v64 = v106[0];
        v65 = sub_1E324FBDC();
        v32 = v8;
        v96[0] = *(v10 + 16);
        (v96[0])(v19, v65, v8);
        v33 = v5;

        v66 = sub_1E41FFC94();
        v67 = sub_1E42067F4();

        if (os_log_type_enabled(v66, v67))
        {
          v5 = OUTLINED_FUNCTION_49_0();
          *&v106[0] = OUTLINED_FUNCTION_72_0();
          *v5 = 136315394;
          v68 = OUTLINED_FUNCTION_35_81();
          *(v5 + 4) = sub_1E3270FC8(v68, v33, v69);
          *(v5 + 12) = 2080;
          v70 = sub_1E3270FC8(v64, *(&v64 + 1), v106);

          *(v5 + 14) = v70;
          _os_log_impl(&dword_1E323F000, v66, v67, "%s Received error [%s]", v5, 0x16u);
          swift_arrayDestroy();
          v32 = v8;
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_79();
        }

        else
        {
        }

        OUTLINED_FUNCTION_65_38();
        (v5)(v19, v32);
        v31 = v96[0];
      }

      v29[45] = 0;

      v71 = sub_1E37D01CC();
      v72 = v98;
      if (v71)
      {
        v73 = sub_1E324FBDC();
        v74 = v97;
        v31(v97, v73, v32);

        v75 = sub_1E41FFC94();
        v76 = sub_1E42067D4();

        if (os_log_type_enabled(v75, v76))
        {
          v77 = OUTLINED_FUNCTION_6_21();
          *&v106[0] = OUTLINED_FUNCTION_100();
          *v77 = 136315138;
          v78 = OUTLINED_FUNCTION_35_81();
          *(v77 + 4) = sub_1E3270FC8(v78, v33, v79);
          OUTLINED_FUNCTION_72_4(&dword_1E323F000, v80, v81, "%s error trying to append: removing pagination");
          OUTLINED_FUNCTION_18_138();
          OUTLINED_FUNCTION_6_0();
        }

        (v5)(v74, v32);
        OUTLINED_FUNCTION_3_0();
        v29[40] = 0;

        ViewModelKeys.rawValue.getter(35);
        v83 = v82;
        v85 = v84;
        memset(v106, 0, 32);
        v86 = (*(*v29 + 688))(v105);
        sub_1E3946774(v106, v83, v85);
        v86(v105, 0);
      }

      else
      {
        v87 = sub_1E37D01CC();
        if (v99 == 2 && (v87 & 1) != 0)
        {
          v88 = sub_1E324FBDC();
          v31(v72, v88, v32);

          v89 = sub_1E41FFC94();
          v90 = sub_1E42067D4();

          if (os_log_type_enabled(v89, v90))
          {
            v91 = OUTLINED_FUNCTION_6_21();
            *&v106[0] = OUTLINED_FUNCTION_100();
            *v91 = 136315138;
            v92 = OUTLINED_FUNCTION_35_81();
            *(v91 + 4) = sub_1E3270FC8(v92, v33, v93);
            OUTLINED_FUNCTION_72_4(&dword_1E323F000, v94, v95, "%s request type was replace and no items were returned; ignoring.");
            OUTLINED_FUNCTION_18_138();
            OUTLINED_FUNCTION_6_0();
          }

          (v5)(v72, v32);
        }
      }

      if (v104)
      {
        v104(0);
      }
    }

    else
    {
      *(Strong + 360) = 0;

      v54 = sub_1E324FBDC();
      (*(v10 + 16))(v25, v54, v8);

      v55 = sub_1E41FFC94();
      v56 = sub_1E4206814();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = v5;
        v58 = OUTLINED_FUNCTION_6_21();
        v59 = OUTLINED_FUNCTION_100();
        *&v106[0] = v59;
        *v58 = 136315138;
        v60 = OUTLINED_FUNCTION_35_81();
        *(v58 + 4) = sub_1E3270FC8(v60, v57, v61);
        _os_log_impl(&dword_1E323F000, v55, v56, "%s Received success response", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
        OUTLINED_FUNCTION_79();
        OUTLINED_FUNCTION_7_7();
      }

      (*(v10 + 8))(v25, v8);
      sub_1E40B6838();
    }

    v29[46] = 0;
  }

  else
  {
    v48 = sub_1E324FBDC();
    (*(v10 + 16))(v14, v48, v8);

    v49 = sub_1E41FFC94();
    v50 = sub_1E42067F4();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = OUTLINED_FUNCTION_6_21();
      *&v106[0] = OUTLINED_FUNCTION_100();
      *v51 = 136315138;
      v52 = OUTLINED_FUNCTION_35_81();
      *(v51 + 4) = sub_1E3270FC8(v52, v5, v53);
      _os_log_impl(&dword_1E323F000, v49, v50, "%s collection view model object is invalid.", v51, 0xCu);
      OUTLINED_FUNCTION_18_138();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v10 + 8))(v14, v8);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40B6838()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v183 = v5;
  v7 = v6;
  v177 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v175 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v176 = v11 - v10;
  v12 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v181 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v163 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v163 - v21;
  v23 = sub_1E37D01CC();
  v178 = v0;
  v182 = v4;
  if (v23)
  {
    v179 = v12;
    ViewModelKeys.rawValue.getter(35);
    v25 = v24;
    v27 = v26;
    OUTLINED_FUNCTION_5_0();
    v28 = v7[3];
    if (v28)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    }

    else
    {
      v29 = 0;
      *(&v189 + 1) = 0;
      *&v190 = 0;
    }

    *&v189 = v28;
    *(&v190 + 1) = v29;
    OUTLINED_FUNCTION_66_3();
    v37 = *(v36 + 688);

    v38 = (v37)(&v186);
    sub_1E3946774(&v189, v25, v27);
    v38(&v186, 0);
    v39 = v7[3];
    OUTLINED_FUNCTION_3_0();
    v40 = *(v2 + 40);
    *(v2 + 40) = v39;

    OUTLINED_FUNCTION_5_0();
    v41 = v179;
    if (v7[4])
    {

      sub_1E408A950(v42);
      OUTLINED_FUNCTION_122();

      if (v40)
      {

        sub_1E40B8580();
        if (v43)
        {
LABEL_12:
          OUTLINED_FUNCTION_5_0();
          if (v7[6])
          {
            v192[3] = v7[6];

            v44 = OUTLINED_FUNCTION_63_0();
            __swift_instantiateConcreteTypeFromMangledNameV2(v44);
            sub_1E32752B0(&qword_1EE23B610, &qword_1ECF2A770);
            sub_1E38D2484(sub_1E40BA6B4, MEMORY[0x1E69E7CA8] + 8, v192);
          }

          v45 = 1;
          goto LABEL_78;
        }

        goto LABEL_77;
      }

      v46 = v7[4];
      if (v46 && sub_1E32AE9B0(v7[4]))
      {
        OUTLINED_FUNCTION_66_3();
        v47 += 130;
        v37 = *v47;
        v48 = v47;

        v50 = (v37)(v49);
        if (v50)
        {
          sub_1E37D027C(v50);
          OUTLINED_FUNCTION_6_19();

          if (v48)
          {
            v51 = (*v48)[127](v46);

            if (sub_1E32AE9B0(v51))
            {
              v52 = sub_1E324FBDC();
              v53 = v181;
              v54 = v179;
              (*(v181 + 16))(v22, v52, v179);

              v55 = sub_1E41FFC94();
              v56 = sub_1E4206814();

              if (os_log_type_enabled(v55, v56))
              {
                v57 = OUTLINED_FUNCTION_6_21();
                v180 = OUTLINED_FUNCTION_100();
                OUTLINED_FUNCTION_69_32(v180);
                *v57 = 136315138;
                v58 = sub_1E40B5D58();
                v60 = sub_1E3270FC8(v58, v59, v185);

                *(v57 + 4) = v60;
                v2 = v178;
                _os_log_impl(&dword_1E323F000, v55, v56, "%s Appended items from fragment successfully", v57, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v180);
                OUTLINED_FUNCTION_6_0();
                OUTLINED_FUNCTION_79();

                (*(v53 + 8))(v22, v179);
              }

              else
              {

                (*(v53 + 8))(v22, v54);
              }

              sub_1E40B8BC0(v7);

              sub_1E41D89B8(v154);

              if ((*(*v2 + 1208))(v155))
              {
                v157 = v156;
                ObjectType = swift_getObjectType();
                (*(v157 + 16))(v2, v51, ObjectType, v157);

                swift_unknownObjectRelease();
              }

              else
              {
              }

              goto LABEL_12;
            }

LABEL_77:
            v45 = 0;
LABEL_78:
            v34 = v183;
            goto LABEL_79;
          }
        }

        v41 = v179;
      }
    }

    sub_1E324FBDC();
    v119 = v181;
    OUTLINED_FUNCTION_131_0();
    v120(v19);

    v121 = sub_1E41FFC94();
    v122 = sub_1E4206814();

    if (os_log_type_enabled(v121, v122))
    {
      v123 = OUTLINED_FUNCTION_6_21();
      v124 = v119;
      v125 = OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_69_32(v125);
      *v123 = 136315138;
      v126 = sub_1E40B5D58();
      sub_1E3270FC8(v126, v127, v185);
      OUTLINED_FUNCTION_11_5();

      *(v123 + 4) = v37;
      _os_log_impl(&dword_1E323F000, v121, v122, "%s Received empty items for .append", v123, 0xCu);
      OUTLINED_FUNCTION_18_138();
      OUTLINED_FUNCTION_21_0();

      (*(v124 + 8))(v19, v41);
    }

    else
    {

      (*(v119 + 8))(v19, v41);
    }

    goto LABEL_77;
  }

  if ((sub_1E37D01CC() & 1) == 0)
  {
    goto LABEL_77;
  }

  OUTLINED_FUNCTION_5_0();
  v30 = *(v0 + 384);
  v173 = v1;
  if (v30)
  {
    v179 = v12;
    v172 = v30;
    if ((v30 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_1E4207344();
      type metadata accessor for ViewModel();
      sub_1E40BAC18(qword_1EE23BA70, type metadata accessor for ViewModel);
      OUTLINED_FUNCTION_32_0();
      sub_1E4206664();
      v31 = v192[6];
      v32 = v192[7];
      v33 = v192[8];
      v34 = v192[9];
      v35 = v192[10];
    }

    else
    {
      v61 = -1 << *(v30 + 32);
      v31 = v30;
      v32 = v30 + 56;
      v33 = ~v61;
      v62 = -v61;
      if (v62 < 64)
      {
        v63 = ~(-1 << v62);
      }

      else
      {
        v63 = -1;
      }

      v35 = v63 & *(v30 + 56);
      swift_bridgeObjectRetain_n();
      v34 = 0;
    }

    v171 = v33;
    if ((v31 & 0x8000000000000000) == 0)
    {
      goto LABEL_30;
    }

    while (1)
    {
      v64 = sub_1E42073C4();
      if (!v64)
      {
        break;
      }

      *&v186 = v64;
      type metadata accessor for ViewModel();
      swift_dynamicCast();
      v65 = v189;
      v66 = v34;
      v67 = v35;
      if (!v189)
      {
        break;
      }

      while (1)
      {
        OUTLINED_FUNCTION_66_3();
        if (dynamic_cast_existential_1_conditional(v65))
        {
          OUTLINED_FUNCTION_145();
          v70 = swift_getObjectType();
          (*(v34 + 24))(v70, v34);
        }

        v34 = v66;
        v35 = v67;
        if (v31 < 0)
        {
          break;
        }

LABEL_30:
        v68 = v34;
        v69 = v35;
        v66 = v34;
        if (!v35)
        {
          while (1)
          {
            v66 = v68 + 1;
            if (__OFADD__(v68, 1))
            {
              break;
            }

            if (v66 >= ((v33 + 64) >> 6))
            {
              goto LABEL_39;
            }

            v69 = *(v32 + 8 * v66);
            ++v68;
            if (v69)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
          goto LABEL_96;
        }

LABEL_34:
        v67 = (v69 - 1) & v69;
        v65 = *(*(v31 + 48) + ((v66 << 9) | (8 * __clz(__rbit64(v69)))));

        if (!v65)
        {
          goto LABEL_39;
        }
      }
    }

LABEL_39:
    sub_1E34AF4DC();

    v2 = v178;
    v12 = v179;
    v1 = v173;
  }

  v71 = &v189;
  v73 = sub_1E40B193C();
  v74 = v181;
  if (*v72)
  {
    v75 = v72;

    *v75 = MEMORY[0x1E69E7CD0];
  }

  (v73)(&v189, 0);
  OUTLINED_FUNCTION_5_0();
  v76 = v7[5];
  if (!v76)
  {
LABEL_74:
    sub_1E324FBDC();
    OUTLINED_FUNCTION_131_0();
    v128(v1);

    v129 = sub_1E41FFC94();
    v130 = sub_1E4206814();

    if (os_log_type_enabled(v129, v130))
    {
      v131 = OUTLINED_FUNCTION_6_21();
      v132 = v74;
      v133 = v12;
      v134 = OUTLINED_FUNCTION_100();
      *&v189 = v134;
      *v131 = 136315138;
      v135 = sub_1E40B5D58();
      sub_1E3270FC8(v135, v136, &v189);
      OUTLINED_FUNCTION_11_5();

      *(v131 + 4) = v71;
      OUTLINED_FUNCTION_88_21(&dword_1E323F000, v137, v138, "%s Received invalid fragment for .replace");
      __swift_destroy_boxed_opaque_existential_1Tm(v134);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_6_0();

      (*(v132 + 8))(v1, v133);
    }

    else
    {

      (*(v74 + 8))(v1, v12);
    }

    goto LABEL_77;
  }

  ViewModelKeys.rawValue.getter(3);
  sub_1E3277E60(v77, v78, v76, &v189);

  if (!*(&v190 + 1))
  {
    v118 = &v189;
LABEL_73:
    sub_1E325F6F0(v118, &unk_1ECF296E0);
    goto LABEL_74;
  }

  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  v71 = MEMORY[0x1E69E7CA0];
  if ((OUTLINED_FUNCTION_86_6() & 1) == 0)
  {
    goto LABEL_74;
  }

  *(&v190 + 1) = &type metadata for ViewModelKeys;
  *&v191 = &off_1F5D7BCA8;
  LOBYTE(v189) = 13;
  sub_1E3F9F164(&v189);

  if (!*(&v187 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v189);
    v118 = &v186;
    goto LABEL_73;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v189);
    goto LABEL_74;
  }

  v80 = *&v185[0];
  __swift_destroy_boxed_opaque_existential_1Tm(&v189);
  if (!*(v80 + 16))
  {

    goto LABEL_74;
  }

  v166 = v79;
  OUTLINED_FUNCTION_77_24();

  v165 = 0;
  v81 = 0;
  v82 = v79 + 64;
  v169 = v79;
  OUTLINED_FUNCTION_4_4();
  v83 = v74;
  v86 = v85 & v84;
  v164 = (v175 + 8);
  v170 = v83 + 16;
  v171 = v83 + 8;
  *&v87 = 136315394;
  v167 = v87;
  OUTLINED_FUNCTION_71_34();
  v168 = v79 + 64;
  v172 = v88;
  if (!v86)
  {
    goto LABEL_50;
  }

LABEL_54:
  while (1)
  {
    OUTLINED_FUNCTION_50_56();
    v91 = (*(v169 + 48) + 16 * v90);
    v92 = *v91;
    v80 = v91[1];
    sub_1E328438C(*(v169 + 56) + 32 * v90, v185);
    *&v186 = v92;
    *(&v186 + 1) = v80;
    sub_1E329504C(v185, &v187);

    OUTLINED_FUNCTION_71_34();
LABEL_55:
    v189 = v186;
    v190 = v187;
    v191 = v188;
    v93 = *(&v186 + 1);
    if (!*(&v186 + 1))
    {
      break;
    }

    v94 = v189;
    sub_1E329504C(&v190, &v186);

    v95 = sub_1E38506C8();
    if (v95 != 263 && (v96 = v2[49], LOWORD(v185[0]) = v95, LOWORD(v184) = v96, sub_1E3741534(), (sub_1E4205E84() & 1) != 0) && (sub_1E328438C(&v186, v185), (swift_dynamicCast() & 1) != 0))
    {

      v97 = v184;
      OUTLINED_FUNCTION_66_3();
      v99 = *(v98 + 680);

      v99(v100);
      sub_1E4206BA4();
      v101 = VUISignpostLogObject();
      v102 = v176;
      sub_1E41FFBE4();
      sub_1E41FFBA4();

      v71 = v164;
      v175 = *v164;
      v103 = v177;
      (v175)(v102, v177);
      (*(*v2 + 1368))(v97);

      v105 = (*(*v2 + 1040))(v104);
      sub_1E41D7FB4(v105);

      v80 = sub_1E4206B94();
      v106 = VUISignpostLogObject();
      sub_1E41FFBE4();
      OUTLINED_FUNCTION_71_34();
      sub_1E41FFBA4();

      v107 = v102;
      v82 = v168;
      (v175)(v107, v103);
      __swift_destroy_boxed_opaque_existential_1Tm(&v186);
      v165 = 1;
    }

    else
    {
      v175 = v94;
      sub_1E324FBDC();
      OUTLINED_FUNCTION_86_21();
      v108(v80);

      v71 = v12;
      v109 = sub_1E41FFC94();
      v110 = sub_1E4206814();

      if (os_log_type_enabled(v109, v110))
      {
        v111 = OUTLINED_FUNCTION_49_0();
        v80 = OUTLINED_FUNCTION_72_0();
        OUTLINED_FUNCTION_69_32(v80);
        *v111 = v167;
        v112 = sub_1E40B5D58();
        v114 = sub_1E3270FC8(v112, v113, v185);

        *(v111 + 4) = v114;
        v2 = v178;
        *(v111 + 12) = 2080;
        v115 = sub_1E3270FC8(v175, v93, v185);

        *(v111 + 14) = v115;
        _os_log_impl(&dword_1E323F000, v109, v110, "%s Invalid model type in fragment <%s>", v111, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_71_34();
        OUTLINED_FUNCTION_6_0();
        v82 = v168;
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      OUTLINED_FUNCTION_45_70();
      v116 = OUTLINED_FUNCTION_27_0();
      v117(v116);
      __swift_destroy_boxed_opaque_existential_1Tm(&v186);
      v12 = v71;
    }

    v88 = v172;
    if (!v86)
    {
LABEL_50:
      while (1)
      {
        v89 = v81 + 1;
        if (__OFADD__(v81, 1))
        {
          break;
        }

        if (v89 >= v88)
        {
          v86 = 0;
          v187 = 0u;
          v188 = 0u;
          v186 = 0u;
          goto LABEL_55;
        }

        v86 = *(v82 + 8 * v89);
        ++v81;
        if (v86)
        {
          v81 = v89;
          goto LABEL_54;
        }
      }

      __break(1u);
      return;
    }
  }

  v74 = v181;
  v1 = v173;
  if ((v165 & 1) == 0)
  {
    goto LABEL_74;
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_86_21();
  v139 = v174;
  v140(v174);

  v141 = sub_1E41FFC94();
  v142 = sub_1E4206814();

  if (os_log_type_enabled(v141, v142))
  {
    v143 = OUTLINED_FUNCTION_6_21();
    v144 = v12;
    v145 = OUTLINED_FUNCTION_100();
    *&v189 = v145;
    *v143 = 136315138;
    v146 = sub_1E40B5D58();
    v148 = sub_1E3270FC8(v146, v147, &v189);

    *(v143 + 4) = v148;
    OUTLINED_FUNCTION_88_21(&dword_1E323F000, v149, v150, "%s Replaced from fragment successfully");
    __swift_destroy_boxed_opaque_existential_1Tm(v145);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_6_0();

    OUTLINED_FUNCTION_45_70();
    v152 = v139;
    v153 = v144;
  }

  else
  {

    OUTLINED_FUNCTION_45_70();
    v152 = v139;
    v153 = v12;
  }

  v151(v152, v153);
  v34 = v183;
  OUTLINED_FUNCTION_66_3();
  if ((*(v159 + 1208))())
  {
    v161 = v160;
    v162 = swift_getObjectType();
    v45 = (*(v161 + 32))(v2, 1, v162, v161);
    swift_unknownObjectRelease();
    goto LABEL_79;
  }

LABEL_96:
  v45 = 0;
LABEL_79:
  if (v34)
  {
    (v34)(v45 & 1);
  }

  OUTLINED_FUNCTION_25_2();
}