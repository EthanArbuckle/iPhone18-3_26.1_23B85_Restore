void sub_2204099A0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22040E580(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_22040B3C8(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_220407E70(v14, v18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__embedding;
    swift_beginAccess();
    sub_22040BA48(v18, &v7[v19], qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    swift_endAccess();
    sub_22040E5E8(v13, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_22040B3C8(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_220407E70(v13, v18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__embedding;
    swift_beginAccess();
    sub_22040BA48(v18, &v23[v31], qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

void (*Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.adCategories.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__adCategories;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_220409CF4;
}

uint64_t sub_220409D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22040EA84(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v16 - v7;
  v9 = *(a1 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20));
  v10 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__groupBackingStock;
  swift_beginAccess();
  sub_220407D80(v9 + v10, v8, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v11 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v12 = *(*(v11 - 8) + 48);
  if (v12(v8, 1, v11) != 1)
  {
    return sub_220407E70(v8, a2, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  }

  sub_22042B670();
  v13 = (a2 + *(v11 + 20));
  *v13 = 0;
  v13[1] = 0;
  v14 = (a2 + *(v11 + 24));
  *v14 = 0;
  v14[1] = 0;
  result = (v12)(v8, 1, v11);
  if (result != 1)
  {
    return sub_220407E00(v8, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  }

  return result;
}

uint64_t sub_220409EC4(uint64_t a1, uint64_t a2)
{
  sub_22040EA84(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22040E580(a1, v14, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v15 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v16 = *(a2 + v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(a2 + v15);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v18 = sub_22040B3C8(v18);
    *(a2 + v15) = v18;
  }

  sub_220407E70(v14, v8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  (*(v10 + 56))(v8, 0, 1, v9);
  v22 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__groupBackingStock;
  swift_beginAccess();
  sub_22040BA48(v8, &v18[v22], qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  return swift_endAccess();
}

void (*Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.groupBackingStock.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  sub_22040EA84(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v5 + 88) = v8;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  *(v5 + 96) = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  *(v5 + 104) = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  *(v5 + 120) = v14;
  v16 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v5 + 128) = v16;
  v17 = *(v1 + v16);
  v18 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__groupBackingStock;
  swift_beginAccess();
  sub_220407D80(v17 + v18, v9, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v19 = *(v12 + 48);
  if (v19(v9, 1, v10) == 1)
  {
    sub_22042B670();
    v20 = (v15 + *(v10 + 20));
    *v20 = 0;
    v20[1] = 0;
    v21 = (v15 + *(v10 + 24));
    *v21 = 0;
    v21[1] = 0;
    if (v19(v9, 1, v10) != 1)
    {
      sub_220407E00(v9, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    }
  }

  else
  {
    sub_220407E70(v9, v15, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  }

  return sub_22040A384;
}

void sub_22040A384(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_22040E580(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v7 = sub_22040B3C8(v7);
      *(v9 + v8) = v7;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v15 = *(v2 + 96);
    v16 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_220407E70(v14, v18, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    (*(v16 + 56))(v18, 0, 1, v15);
    v19 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__groupBackingStock;
    swift_beginAccess();
    sub_22040BA48(v18, &v7[v19], qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    swift_endAccess();
    sub_22040E5E8(v13, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  }

  else
  {
    v20 = *(v2 + 72);
    v21 = *(v20 + v3);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v20 + v3);
    if ((v22 & 1) == 0)
    {
      v24 = *(v2 + 128);
      v25 = *(v2 + 72);
      v26 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_22040B3C8(v23);
      *(v25 + v24) = v23;
    }

    v14 = *(v2 + 112);
    v13 = *(v2 + 120);
    v29 = *(v2 + 96);
    v30 = *(v2 + 104);
    v18 = *(v2 + 80);
    v17 = *(v2 + 88);
    sub_220407E70(v13, v18, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    (*(v30 + 56))(v18, 0, 1, v29);
    v31 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__groupBackingStock;
    swift_beginAccess();
    sub_22040BA48(v18, &v23[v31], qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    swift_endAccess();
  }

  free(v13);
  free(v14);
  free(v17);
  free(v18);

  free(v2);
}

BOOL sub_22040A628(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t *a3, uint64_t (*a4)(void))
{
  sub_22040EA84(0, a1, a2, MEMORY[0x277D83D88]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v19 - v12;
  v14 = *(v4 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20));
  v15 = *a3;
  swift_beginAccess();
  sub_220407D80(v14 + v15, v13, a1, a2);
  v16 = a4(0);
  v17 = (*(*(v16 - 8) + 48))(v13, 1, v16) != 1;
  sub_220407E00(v13, a1, a2);
  return v17;
}

uint64_t sub_22040A79C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  sub_22040EA84(0, a1, a2, MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v25 - v13;
  v15 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v16 = *(v4 + v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v4 + v15);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v18 = sub_22040B3C8(v18);
    *(v9 + v15) = v18;
  }

  v22 = a3(0);
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v23 = *a4;
  swift_beginAccess();
  sub_22040BA48(v14, &v18[v23], a1, a2);
  return swift_endAccess();
}

uint64_t sub_22040A908@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20));
  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t sub_22040A974(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);

  v9 = *(a2 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v11 = sub_22040B3C8(v11);
    *(a2 + v8) = v11;
  }

  v15 = *a5;
  swift_beginAccess();
  v16 = *&v11[v15];
  *&v11[v15] = v7;
}

void (*Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.stocks.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__stocks;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_22040AAD8;
}

void sub_22040AAE4(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v6 = (*a1 + 72);
  v5 = *v6;
  v7 = *(*a1 + 88);
  v8 = *(*a1 + 80);
  if (a2)
  {
    v9 = *(*a1 + 72);

    v10 = *(v8 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v4 + 88);
      v14 = *(v4 + 80);
      v15 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      swift_allocObject();
      v12 = sub_22040B3C8(v12);
      *(v14 + v13) = v12;
    }

    v18 = *a3;
    swift_beginAccess();
    v19 = *&v12[v18];
    *&v12[v18] = v5;

    v20 = *v6;
  }

  else
  {
    v21 = *(v8 + v7);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(v8 + v7);
    if ((v22 & 1) == 0)
    {
      v24 = *(v4 + 88);
      v25 = *(v4 + 80);
      v26 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v23 = sub_22040B3C8(v23);
      *(v25 + v24) = v23;
    }

    v29 = *a3;
    swift_beginAccess();
    v30 = *&v23[v29];
    *&v23[v29] = v5;
  }

  free(v4);
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22042B680();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.unknownFields.setter(uint64_t a1)
{
  v3 = sub_22042B680();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_22040AD34()
{
  v0 = sub_22042B8C0();
  __swift_allocate_value_buffer(v0, qword_280FA17B0);
  __swift_project_value_buffer(v0, qword_280FA17B0);
  sub_22040EA84(0, &qword_280FA01C8, sub_2203E170C, MEMORY[0x277D84560]);
  sub_2203E170C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_220430320;
  v5 = v30 + v4;
  v6 = v30 + v4 + *(v2 + 56);
  *(v30 + v4) = 1;
  *v6 = "topic_ids";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22042B8A0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "publisher_id";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "features";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v13 = *MEMORY[0x277D21870];
  v9();
  v14 = (v5 + 3 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "length";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 5;
  *v17 = "group";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v9();
  v18 = (v5 + 5 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 6;
  *v19 = "feed";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v9();
  v20 = (v5 + 6 * v3);
  v21 = v20 + *(v2 + 56);
  *v20 = 7;
  *v21 = "view_action";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v9();
  v22 = (v5 + 7 * v3);
  v23 = v22 + *(v2 + 56);
  *v22 = 8;
  *v23 = "embedding";
  *(v23 + 1) = 9;
  v23[16] = 2;
  v9();
  v24 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v24 = "ad_categories";
  *(v24 + 8) = 13;
  *(v24 + 16) = 2;
  v9();
  v25 = (v5 + 9 * v3);
  v26 = v25 + *(v2 + 56);
  *v25 = 10;
  *v26 = "group_backing_stock";
  *(v26 + 1) = 19;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v3);
  v28 = v27 + *(v2 + 56);
  *v27 = 11;
  *v28 = "stocks";
  *(v28 + 1) = 6;
  v28[16] = 2;
  v9();
  return sub_22042B8B0();
}

uint64_t static Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA17A8 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA17B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

char *sub_22040B210()
{
  v0 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_22040B250();
  qword_280FA1A18 = result;
  return result;
}

char *sub_22040B250()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + 2) = MEMORY[0x277D84F90];
  *(v0 + 3) = 0;
  *(v0 + 4) = 0xE000000000000000;
  v2 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__features;
  v3 = type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  *&v0[OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__length] = 0;
  v4 = &v0[OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__group];
  *v4 = 0;
  v4[8] = 1;
  v5 = &v0[OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__feed];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v0[OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__viewAction];
  *v6 = 0;
  v6[8] = 1;
  v7 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__embedding;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List();
  (*(*(v8 - 8) + 56))(&v0[v7], 1, 1, v8);
  *&v0[OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__adCategories] = v1;
  v9 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__groupBackingStock;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  (*(*(v10 - 8) + 56))(&v0[v9], 1, 1, v10);
  *&v0[OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__stocks] = v1;
  return v0;
}

char *sub_22040B3C8(void *a1)
{
  v70 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock;
  v3 = MEMORY[0x277D83D88];
  sub_22040EA84(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v68 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List;
  v69 = &v59 - v7;
  sub_22040EA84(0, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, v3);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v67 = &v59 - v11;
  v62 = type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures;
  sub_22040EA84(0, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures, v3);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v60 = &v59 - v15;
  v16 = MEMORY[0x277D84F90];
  *(v1 + 2) = MEMORY[0x277D84F90];
  *(v1 + 3) = 0;
  *(v1 + 4) = 0xE000000000000000;
  v17 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__features;
  v59 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__features;
  v18 = type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures();
  (*(*(v18 - 8) + 56))(&v1[v17], 1, 1, v18);
  v61 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__length;
  *&v1[OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__length] = 0;
  v19 = &v1[OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__group];
  *v19 = 0;
  v19[8] = 1;
  v20 = &v1[OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__feed];
  *v20 = 0;
  v20[8] = 1;
  v21 = &v1[OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__viewAction];
  *v21 = 0;
  v21[8] = 1;
  v22 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__embedding;
  v63 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__embedding;
  v23 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List();
  (*(*(v23 - 8) + 56))(&v1[v22], 1, 1, v23);
  v64 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__adCategories;
  *&v1[OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__adCategories] = v16;
  v24 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__groupBackingStock;
  v65 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__groupBackingStock;
  v25 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  (*(*(v25 - 8) + 56))(&v1[v24], 1, 1, v25);
  v66 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__stocks;
  *&v1[OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__stocks] = v16;
  swift_beginAccess();
  v26 = a1[2];
  swift_beginAccess();
  *(v1 + 2) = v26;
  swift_beginAccess();
  v27 = a1[3];
  v28 = a1[4];
  swift_beginAccess();
  *(v1 + 3) = v27;
  *(v1 + 4) = v28;
  v29 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__features;

  swift_beginAccess();
  v30 = a1 + v29;
  v31 = v60;
  v32 = v62;
  sub_220407D80(v30, v60, qword_280FA1D70, v62);
  v33 = v59;
  swift_beginAccess();
  sub_22040BA48(v31, &v1[v33], qword_280FA1D70, v32);
  swift_endAccess();
  v34 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__length;
  swift_beginAccess();
  LODWORD(v34) = *(a1 + v34);
  v35 = v61;
  swift_beginAccess();
  *&v1[v35] = v34;
  v36 = a1 + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__group;
  swift_beginAccess();
  v37 = *v36;
  LOBYTE(v36) = v36[8];
  swift_beginAccess();
  *v19 = v37;
  v19[8] = v36;
  v38 = a1 + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__feed;
  swift_beginAccess();
  v39 = *v38;
  LOBYTE(v38) = v38[8];
  swift_beginAccess();
  *v20 = v39;
  v20[8] = v38;
  v40 = a1 + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__viewAction;
  swift_beginAccess();
  v41 = *v40;
  LOBYTE(v40) = v40[8];
  swift_beginAccess();
  *v21 = v41;
  v21[8] = v40;
  v42 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__embedding;
  swift_beginAccess();
  v44 = v67;
  v43 = v68;
  sub_220407D80(a1 + v42, v67, qword_280FA05D0, v68);
  v45 = v63;
  swift_beginAccess();
  sub_22040BA48(v44, &v1[v45], qword_280FA05D0, v43);
  swift_endAccess();
  v46 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__adCategories;
  swift_beginAccess();
  v47 = *(a1 + v46);
  v48 = v64;
  swift_beginAccess();
  v49 = *&v1[v48];
  *&v1[v48] = v47;

  v50 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__groupBackingStock;
  swift_beginAccess();
  v52 = v69;
  v51 = v70;
  sub_220407D80(a1 + v50, v69, qword_280FA2010, v70);
  v53 = v65;
  swift_beginAccess();
  sub_22040BA48(v52, &v1[v53], qword_280FA2010, v51);
  swift_endAccess();
  v54 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__stocks;
  swift_beginAccess();
  v55 = *(a1 + v54);

  v56 = v66;
  swift_beginAccess();
  v57 = *&v1[v56];
  *&v1[v56] = v55;

  return v1;
}

uint64_t sub_22040BA48(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22040EA84(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_22040BAC8()
{
  v1 = v0[2];

  v2 = v0[4];

  sub_220407E00(v0 + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__features, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  sub_220407E00(v0 + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__embedding, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v3 = *(v0 + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__adCategories);

  sub_220407E00(v0 + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__groupBackingStock, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v4 = *(v0 + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__stocks);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v3 + v8);
    v13 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v11 = sub_22040B3C8(v12);
    *(v4 + v8) = v11;
  }

  return sub_22040BC78(v11, a1, a2, a3);
}

uint64_t sub_22040BC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22042B700();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 5)
      {
        if (result <= 2)
        {
          if (result == 1)
          {
            sub_22040BEFC();
          }

          else if (result == 2)
          {
            sub_22040BF80();
          }
        }

        else if (result == 3)
        {
          sub_22040C004();
        }

        else
        {
          if (result != 4)
          {
            v11 = sub_2203FD48C;
            v12 = a2;
            v13 = a1;
            v14 = a3;
            v15 = a4;
            v16 = &OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__group;
            goto LABEL_5;
          }

          sub_22040C0E0();
        }
      }

      else if (result > 8)
      {
        switch(result)
        {
          case 9:
            sub_22040C2F0();
            break;
          case 10:
            sub_22040C37C();
            break;
          case 11:
            sub_22040C458();
            break;
        }
      }

      else
      {
        if (result == 6)
        {
          v11 = sub_2203F9E10;
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__feed;
          goto LABEL_5;
        }

        if (result == 7)
        {
          v11 = sub_22040EA30;
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__viewAction;
LABEL_5:
          sub_22040C16C(v12, v13, v14, v15, v16, v11);
          goto LABEL_6;
        }

        sub_22040C214();
      }

LABEL_6:
      result = sub_22042B700();
    }
  }

  return result;
}

uint64_t sub_22040BEFC()
{
  swift_beginAccess();
  sub_22042B750();
  return swift_endAccess();
}

uint64_t sub_22040BF80()
{
  swift_beginAccess();
  sub_22042B770();
  return swift_endAccess();
}

uint64_t sub_22040C004()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures();
  sub_22040E690(&qword_280FA1DD8, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  sub_22042B7A0();
  return swift_endAccess();
}

uint64_t sub_22040C0E0()
{
  swift_beginAccess();
  sub_22042B780();
  return swift_endAccess();
}

uint64_t sub_22040C16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t))
{
  v7 = *a5;
  v8 = swift_beginAccess();
  a6(v8);
  sub_22042B730();
  return swift_endAccess();
}

uint64_t sub_22040C214()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List();
  sub_22040E690(&unk_280FA0618, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_22042B7A0();
  return swift_endAccess();
}

uint64_t sub_22040C2F0()
{
  swift_beginAccess();
  sub_22042B750();
  return swift_endAccess();
}

uint64_t sub_22040C37C()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  sub_22040E690(&unk_280FA2060, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_22042B7A0();
  return swift_endAccess();
}

uint64_t sub_22040C458()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  sub_22040E690(&unk_280FA2060, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_22042B790();
  return swift_endAccess();
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0);
  result = sub_22040C5A0(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_22042B660();
  }

  return result;
}

uint64_t sub_22040C5A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (*(a1[2] + 16))
  {
    v9 = a1[2];

    sub_22042B850();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v11 = a1[4];
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = a1[3] & 0xFFFFFFFFFFFFLL;
  }

  if (!v12 || (v13 = a1[4], , sub_22042B860(), result = , !v4))
  {
    result = sub_22040C95C(a1, a2, a3, a4);
    if (!v4)
    {
      v14 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__length;
      swift_beginAccess();
      if (*(a1 + v14))
      {
        sub_22042B870();
      }

      v15 = a1 + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__group;
      swift_beginAccess();
      if (*v15)
      {
        v24 = *v15;
        v25 = v15[8];
        sub_2203FD48C();
        sub_22042B830();
      }

      v16 = a1 + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__feed;
      swift_beginAccess();
      if (*v16)
      {
        v22 = *v16;
        v23 = v16[8];
        sub_2203F9E10();
        sub_22042B830();
      }

      v17 = a1 + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__viewAction;
      swift_beginAccess();
      if (*v17)
      {
        v20 = *v17;
        v21 = v17[8];
        sub_22040EA30();
        sub_22042B830();
      }

      sub_22040CBB4(a1, a2, a3, a4);
      v18 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__adCategories;
      swift_beginAccess();
      if (*(*(a1 + v18) + 16))
      {

        sub_22042B850();
      }

      sub_22040CE0C(a1, a2, a3, a4);
      v19 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__stocks;
      result = swift_beginAccess();
      if (*(*(a1 + v19) + 16))
      {
        type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
        sub_22040E690(&unk_280FA2060, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);

        sub_22042B880();
      }
    }
  }

  return result;
}

uint64_t sub_22040C95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  sub_22040EA84(0, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__features;
  swift_beginAccess();
  sub_220407D80(a1 + v16, v9, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_220407E00(v9, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  }

  sub_220407E70(v9, v15, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  sub_22040E690(&qword_280FA1DD8, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  sub_22042B890();
  return sub_22040E5E8(v15, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
}

uint64_t sub_22040CBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  sub_22040EA84(0, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__embedding;
  swift_beginAccess();
  sub_220407D80(a1 + v16, v9, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_220407E00(v9, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  sub_220407E70(v9, v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_22040E690(&unk_280FA0618, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_22042B890();
  return sub_22040E5E8(v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
}

uint64_t sub_22040CE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[7] = a4;
  v18[1] = a2;
  v18[2] = a3;
  sub_22040EA84(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__groupBackingStock;
  swift_beginAccess();
  sub_220407D80(a1 + v16, v9, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_220407E00(v9, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  }

  sub_220407E70(v9, v15, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_22040E690(&unk_280FA2060, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_22042B890();
  return sub_22040E5E8(v15, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
}

uint64_t sub_22040D064(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock();
  v126 = *(v4 - 8);
  v127 = v4;
  v5 = *(v126 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v123 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22040EAE8(0, &qword_27CF52418, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v125 = v8;
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v120 - v11;
  v13 = MEMORY[0x277D83D88];
  sub_22040EA84(0, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  v124 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v136 = &v120 - v20;
  v133 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List();
  v131 = *(v133 - 8);
  v21 = *(v131 + 64);
  MEMORY[0x28223BE20](v133, v22);
  v128 = &v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22040EAE8(0, &qword_27CF52700, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v130 = v24;
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24, v26);
  v132 = &v120 - v27;
  sub_22040EA84(0, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, v13);
  v29 = *(*(v28 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v28 - 8, v30);
  v129 = &v120 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v33);
  v134 = &v120 - v34;
  v35 = type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures();
  v138 = *(v35 - 8);
  v36 = *(v138 + 64);
  MEMORY[0x28223BE20](v35, v37);
  v137 = &v120 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22040EAE8(0, &qword_27CF52708, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  v40 = v39;
  v41 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39, v42);
  v44 = &v120 - v43;
  sub_22040EA84(0, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures, v13);
  v46 = *(*(v45 - 8) + 64);
  v48 = MEMORY[0x28223BE20](v45 - 8, v47);
  v50 = &v120 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48, v51);
  v53 = &v120 - v52;
  swift_beginAccess();
  v54 = a1[2];
  swift_beginAccess();
  if ((sub_220405D20(v54, a2[2]) & 1) == 0)
  {
    goto LABEL_65;
  }

  v120 = v12;
  swift_beginAccess();
  v56 = a1[3];
  v55 = a1[4];
  v135 = a1;
  swift_beginAccess();
  if ((v56 != a2[3] || v55 != a2[4]) && (sub_22042BF50() & 1) == 0)
  {
    goto LABEL_65;
  }

  v121 = v50;
  v122 = a2;
  v57 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__features;
  v58 = v135;
  swift_beginAccess();
  sub_220407D80(v58 + v57, v53, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  v59 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__features;
  v60 = v122;
  swift_beginAccess();
  v61 = *(v40 + 48);
  sub_220407D80(v53, v44, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  sub_220407D80(v60 + v59, &v44[v61], qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  v62 = *(v138 + 48);
  if (v62(v44, 1, v35) == 1)
  {

    sub_220407E00(v53, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
    v63 = v58;
    if (v62(&v44[v61], 1, v35) == 1)
    {
      sub_220407E00(v44, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
      goto LABEL_13;
    }

LABEL_10:
    v65 = &qword_27CF52708;
    v66 = qword_280FA1D70;
    v67 = type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures;
    v68 = v44;
LABEL_11:
    sub_22040EB60(v68, v65, v66, v67);
    goto LABEL_64;
  }

  v64 = v121;
  sub_220407D80(v44, v121, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  if (v62(&v44[v61], 1, v35) == 1)
  {

    sub_220407E00(v53, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
    sub_22040E5E8(v64, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
    goto LABEL_10;
  }

  v69 = v137;
  sub_220407E70(&v44[v61], v137, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  v63 = v135;

  v70 = _s21StocksPersonalization010Com_Apple_a1_B16_ArticleFeaturesV2eeoiySbAC_ACtFZ_0(v64, v69);
  sub_22040E5E8(v69, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  sub_220407E00(v53, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  sub_22040E5E8(v64, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  v60 = v122;
  sub_220407E00(v44, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures);
  if ((v70 & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_13:
  v71 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__length;
  swift_beginAccess();
  LODWORD(v71) = *(v63 + v71);
  v72 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__length;
  swift_beginAccess();
  if (v71 != *(v60 + v72))
  {
    goto LABEL_64;
  }

  v73 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__group;
  swift_beginAccess();
  v74 = *(v63 + v73);
  v75 = v60 + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__group;
  swift_beginAccess();
  v76 = *v75;
  if (*(v75 + 8) == 1)
  {
    v77 = v136;
    if (v76 <= 2)
    {
      if (v76)
      {
        if (v76 == 1)
        {
          if (v74 != 1)
          {
            goto LABEL_64;
          }
        }

        else if (v74 != 2)
        {
          goto LABEL_64;
        }
      }

      else if (v74)
      {
        goto LABEL_64;
      }
    }

    else if (v76 > 4)
    {
      if (v76 == 5)
      {
        if (v74 != 5)
        {
          goto LABEL_64;
        }
      }

      else if (v74 != 6)
      {
        goto LABEL_64;
      }
    }

    else if (v76 == 3)
    {
      if (v74 != 3)
      {
        goto LABEL_64;
      }
    }

    else if (v74 != 4)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v77 = v136;
    if (v74 != v76)
    {
      goto LABEL_64;
    }
  }

  v78 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__feed;
  swift_beginAccess();
  v79 = *(v63 + v78);
  v80 = v60 + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__feed;
  swift_beginAccess();
  v81 = *v80;
  if (*(v80 + 8) == 1)
  {
    if (v81 > 1)
    {
      if (v81 == 2)
      {
        if (v79 != 2)
        {
          goto LABEL_64;
        }
      }

      else if (v79 != 3)
      {
        goto LABEL_64;
      }
    }

    else if (v81)
    {
      if (v79 != 1)
      {
        goto LABEL_64;
      }
    }

    else if (v79)
    {
      goto LABEL_64;
    }
  }

  else if (v79 != v81)
  {
    goto LABEL_64;
  }

  v82 = v63 + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__viewAction;
  swift_beginAccess();
  v83 = *v82;
  v84 = *(v82 + 8);
  v85 = v60 + OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__viewAction;
  swift_beginAccess();
  v86 = *(v85 + 8);
  if (!sub_2203EABD4(v83, v84, *v85))
  {
    goto LABEL_64;
  }

  v87 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__embedding;
  swift_beginAccess();
  v88 = v134;
  sub_220407D80(v63 + v87, v134, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v89 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__embedding;
  swift_beginAccess();
  v90 = *(v130 + 48);
  v91 = v132;
  sub_220407D80(v88, v132, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v92 = v91;
  sub_220407D80(v60 + v89, v91 + v90, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v93 = *(v131 + 48);
  v94 = v91;
  v95 = v133;
  if (v93(v94, 1, v133) == 1)
  {
    sub_220407E00(v88, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    if (v93(v92 + v90, 1, v95) == 1)
    {
      sub_220407E00(v92, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      goto LABEL_31;
    }

    goto LABEL_59;
  }

  v105 = v129;
  sub_220407D80(v92, v129, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if (v93(v92 + v90, 1, v95) == 1)
  {
    sub_220407E00(v134, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_22040E5E8(v105, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
LABEL_59:
    v65 = &qword_27CF52700;
    v66 = qword_280FA05D0;
    v67 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List;
    v68 = v92;
    goto LABEL_11;
  }

  v106 = v128;
  sub_220407E70(v92 + v90, v128, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v107 = v92;
  if ((sub_2203FC480(*v105, *(v105 + 8), *v106, *(v106 + 8)) & 1) == 0)
  {
    sub_220407E00(v134, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_22040E5E8(v106, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_22040E5E8(v105, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_220407E00(v92, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    goto LABEL_64;
  }

  v108 = *(v133 + 20);
  sub_22042B680();
  sub_22040E690(&qword_27CF52420, MEMORY[0x277D216C8]);
  v109 = sub_22042BA10();
  sub_220407E00(v134, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_22040E5E8(v106, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v60 = v122;
  sub_22040E5E8(v105, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_220407E00(v107, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if ((v109 & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_31:
  v96 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__adCategories;
  swift_beginAccess();
  v97 = *(v63 + v96);
  v98 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__adCategories;
  swift_beginAccess();
  if ((sub_220405D20(v97, *(v60 + v98)) & 1) == 0)
  {
    goto LABEL_64;
  }

  v99 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__groupBackingStock;
  swift_beginAccess();
  sub_220407D80(v63 + v99, v77, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v100 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__groupBackingStock;
  swift_beginAccess();
  v101 = *(v125 + 48);
  v102 = v120;
  sub_220407D80(v77, v120, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_220407D80(v60 + v100, v102 + v101, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v103 = v127;
  v104 = *(v126 + 48);
  if (v104(v102, 1, v127) == 1)
  {
    sub_220407E00(v77, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    if (v104(v102 + v101, 1, v103) == 1)
    {
      sub_220407E00(v102, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
LABEL_71:
      v116 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__stocks;
      swift_beginAccess();
      v117 = *(v63 + v116);
      v118 = OBJC_IVAR____TtCV21StocksPersonalization61Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadataP33_7441C0F8AE1593DAA6735B7CA221A47813_StorageClass__stocks;
      swift_beginAccess();
      v119 = *(v60 + v118);

      v110 = sub_220405DB0(v117, v119);

      return v110 & 1;
    }

    goto LABEL_69;
  }

  v112 = v124;
  sub_220407D80(v102, v124, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  if (v104(v102 + v101, 1, v103) == 1)
  {
    sub_220407E00(v77, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
    sub_22040E5E8(v112, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
LABEL_69:
    v65 = &qword_27CF52418;
    v66 = qword_280FA2010;
    v67 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock;
    v68 = v102;
    goto LABEL_11;
  }

  v113 = v102 + v101;
  v114 = v123;
  sub_220407E70(v113, v123, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v115 = _s21StocksPersonalization010Com_Apple_a1_B13_SessionStockV2eeoiySbAC_ACtFZ_0(v112, v114);
  sub_22040E5E8(v114, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_220407E00(v77, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  sub_22040E5E8(v112, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  v60 = v122;
  sub_220407E00(v102, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock);
  if (v115)
  {
    goto LABEL_71;
  }

LABEL_64:

LABEL_65:
  v110 = 0;
  return v110 & 1;
}

uint64_t Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata.hashValue.getter()
{
  sub_22042BFC0();
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0);
  sub_22040E690(&qword_27CF526E8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);
  sub_22042B9F0();
  return sub_22042BFE0();
}

uint64_t sub_22040E1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22042B670();
  v4 = *(a1 + 20);
  if (qword_280FA1A10 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_280FA1A18;
}

uint64_t sub_22040E288(uint64_t a1, uint64_t a2)
{
  v4 = sub_22040E690(&qword_27CF526F8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22040E304@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA17A8 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA17B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_22040E3AC(uint64_t a1)
{
  v2 = sub_22040E690(&unk_280FA1798, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22040E418()
{
  sub_22040E690(&unk_280FA1798, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata);

  return sub_22042B800();
}

uint64_t _s21StocksPersonalization010Com_Apple_a1_B29_SessionArticleLegacyMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = sub_22040D064(v5, v6);

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  sub_22042B680();
  sub_22040E690(&qword_27CF52420, MEMORY[0x277D216C8]);
  return sub_22042BA10() & 1;
}

uint64_t sub_22040E580(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22040E5E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22040E690(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22040E7D8()
{
  result = sub_22042B680();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticleLegacyMetadata._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22040E864()
{
  sub_22040EA84(319, qword_280FA1D70, type metadata accessor for Com_Apple_Stocks_Personalization_ArticleFeatures, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_22040EA84(319, qword_280FA05D0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_22040EA84(319, qword_280FA2010, type metadata accessor for Com_Apple_Stocks_Personalization_SessionStock, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_22040EA30()
{
  result = qword_280FA1E18;
  if (!qword_280FA1E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA1E18);
  }

  return result;
}

void sub_22040EA84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22040EAE8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_22040EA84(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_22040EB60(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22040EAE8(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t UnwatchSymbolEventUserInfo.stock.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22042AAC0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UnwatchSymbolEventUserInfo.init(stock:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22042AAC0();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for UnwatchSymbolEventUserInfo()
{
  result = qword_27CF52710;
  if (!qword_27CF52710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WatchSymbolEventUserInfo.stock.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22042AAC0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WatchSymbolEventUserInfo.init(stock:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22042AAC0();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for WatchSymbolEventUserInfo()
{
  result = qword_27CF52720;
  if (!qword_27CF52720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventArticleRead.duration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277D21628];
  sub_220411E24(0, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead();
  sub_220411AA0(v1 + *(v9 + 24), v8, &qword_280FA2210, v3);
  v10 = sub_22042B650();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_22042B640();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_22040F1C0(v8, &qword_280FA2210, MEMORY[0x277D21628]);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead()
{
  result = qword_280FA1CB8;
  if (!qword_280FA1CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventArticleRead.duration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead() + 24);
  sub_22040F1C0(v1 + v3, &qword_280FA2210, MEMORY[0x277D21628]);
  v4 = sub_22042B650();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventArticleRead.article.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead() + 20);
  sub_22040F1C0(v1 + v3, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  sub_22040F230(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_22040F1C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220411E24(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22040F230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventArticleRead.init()@<X0>(uint64_t a1@<X8>)
{
  sub_22042B670();
  v2 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead();
  v3 = *(v2 + 20);
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = *(v2 + 24);
  v6 = sub_22042B650();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1 + v5, 1, 1, v6);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventArticleRead.article.getter@<X0>(char *a1@<X8>)
{
  sub_220411E24(0, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle, MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead();
  sub_220411AA0(v1 + *(v8 + 20), v7, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  v9 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_22040F230(v7, a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  v13 = &a1[*(v9 + 24)];
  sub_22042B670();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_22040F1C0(v7, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  }

  return result;
}

uint64_t sub_22040F524@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_220411E24(0, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead();
  sub_220411AA0(a1 + *(v9 + 20), v8, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_22040F230(v8, a2);
  }

  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v12 = *(v10 + 20);
  v13 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
  v14 = &a2[*(v10 + 24)];
  sub_22042B670();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_22040F1C0(v8, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  }

  return result;
}

uint64_t sub_22040F6E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220411B20(a1, v9);
  v10 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead() + 20);
  sub_22040F1C0(a2 + v10, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  sub_22040F230(v9, a2 + v10);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

void (*Com_Apple_Stocks_Personalization_SessionEventArticleRead.article.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_220411E24(0, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead() + 20);
  *(v5 + 12) = v16;
  sub_220411AA0(v1 + v16, v9, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    v18 = *(v10 + 20);
    v19 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
    (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
    v20 = &v15[*(v10 + 24)];
    sub_22042B670();
    if (v17(v9, 1, v10) != 1)
    {
      sub_22040F1C0(v9, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
    }
  }

  else
  {
    sub_22040F230(v9, v15);
  }

  return sub_22040FA84;
}

void sub_22040FA84(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_220411B20((*a1)[5], v4);
    sub_22040F1C0(v9 + v3, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
    sub_22040F230(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_220411B84(v5);
  }

  else
  {
    sub_22040F1C0(v9 + v3, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
    sub_22040F230(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_Stocks_Personalization_SessionEventArticleRead.hasArticle.getter()
{
  sub_220411E24(0, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle, MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead();
  sub_220411AA0(v0 + *(v6 + 20), v5, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_22040F1C0(v5, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  return v8;
}

Swift::Void __swiftcall Com_Apple_Stocks_Personalization_SessionEventArticleRead.clearArticle()()
{
  v1 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead() + 20);
  sub_22040F1C0(v0 + v1, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  v2 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_22040FD64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D21628];
  sub_220411E24(0, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead();
  sub_220411AA0(a1 + *(v10 + 24), v9, &qword_280FA2210, v4);
  v11 = sub_22042B650();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a2, v9, v11);
  }

  sub_22042B640();
  result = (v13)(v9, 1, v11);
  if (result != 1)
  {
    return sub_22040F1C0(v9, &qword_280FA2210, MEMORY[0x277D21628]);
  }

  return result;
}

uint64_t sub_22040FEFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22042B650();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4);
  v10 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead() + 24);
  sub_22040F1C0(a2 + v10, &qword_280FA2210, MEMORY[0x277D21628]);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

void (*Com_Apple_Stocks_Personalization_SessionEventArticleRead.duration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_220411E24(0, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_22042B650();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead() + 24);
  *(v5 + 12) = v16;
  sub_220411AA0(v1 + v16, v9, &qword_280FA2210, MEMORY[0x277D21628]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_22042B640();
    if (v17(v9, 1, v10) != 1)
    {
      sub_22040F1C0(v9, &qword_280FA2210, MEMORY[0x277D21628]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_220410284;
}

void sub_220410284(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_22040F1C0(v9 + v3, &qword_280FA2210, MEMORY[0x277D21628]);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_22040F1C0(v9 + v3, &qword_280FA2210, MEMORY[0x277D21628]);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_Stocks_Personalization_SessionEventArticleRead.hasDuration.getter()
{
  v1 = MEMORY[0x277D21628];
  sub_220411E24(0, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead();
  sub_220411AA0(v0 + *(v7 + 24), v6, &qword_280FA2210, v1);
  v8 = sub_22042B650();
  v9 = (*(*(v8 - 8) + 48))(v6, 1, v8) != 1;
  sub_22040F1C0(v6, &qword_280FA2210, v1);
  return v9;
}

Swift::Void __swiftcall Com_Apple_Stocks_Personalization_SessionEventArticleRead.clearDuration()()
{
  v1 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead() + 24);
  sub_22040F1C0(v0 + v1, &qword_280FA2210, MEMORY[0x277D21628]);
  v2 = sub_22042B650();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventArticleRead.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22042B680();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventArticleRead.unknownFields.setter(uint64_t a1)
{
  v3 = sub_22042B680();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2204106C0()
{
  v0 = sub_22042B8C0();
  __swift_allocate_value_buffer(v0, qword_280FA1CE0);
  __swift_project_value_buffer(v0, qword_280FA1CE0);
  sub_220411E24(0, &qword_280FA01C8, sub_2203E170C, MEMORY[0x277D84560]);
  sub_2203E170C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22042D3E0;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "article";
  *(v7 + 8) = 7;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21870];
  v9 = sub_22042B8A0();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "duration";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  return sub_22042B8B0();
}

uint64_t static Com_Apple_Stocks_Personalization_SessionEventArticleRead._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA1CD8 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA1CE0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventArticleRead.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_22042B700();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_2204109DC();
    }

    else if (result == 2)
    {
      sub_220410A90();
    }
  }

  return result;
}

uint64_t sub_2204109DC()
{
  v0 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead() + 20);
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  sub_220411F5C(&qword_280FA1EE8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  return sub_22042B7A0();
}

uint64_t sub_220410A90()
{
  v0 = *(type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead() + 24);
  sub_22042B650();
  sub_220411F5C(&unk_280FA2218, MEMORY[0x277D21628]);
  return sub_22042B7A0();
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventArticleRead.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_220410BB4(v3, a1, a2, a3);
  if (!v4)
  {
    sub_220410DD8(v3, a1, a2, a3);
    return sub_22042B660();
  }

  return result;
}

uint64_t sub_220410BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[3] = a4;
  v18[1] = a3;
  sub_220411E24(0, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead();
  sub_220411AA0(a1 + *(v16 + 20), v9, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_22040F1C0(v9, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  }

  sub_22040F230(v9, v15);
  sub_220411F5C(&qword_280FA1EE8, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  sub_22042B890();
  return sub_220411B84(v15);
}

uint64_t sub_220410DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[3] = a4;
  v19[1] = a3;
  v5 = MEMORY[0x277D21628];
  sub_220411E24(0, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = v19 - v9;
  v11 = sub_22042B650();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead();
  sub_220411AA0(a1 + *(v17 + 24), v10, &qword_280FA2210, v5);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_22040F1C0(v10, &qword_280FA2210, MEMORY[0x277D21628]);
  }

  (*(v12 + 32))(v16, v10, v11);
  sub_220411F5C(&unk_280FA2218, MEMORY[0x277D21628]);
  sub_22042B890();
  return (*(v12 + 8))(v16, v11);
}

uint64_t Com_Apple_Stocks_Personalization_SessionEventArticleRead.hashValue.getter()
{
  sub_22042BFC0();
  type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead();
  sub_220411F5C(&qword_27CF52730, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
  sub_22042B9F0();
  return sub_22042BFE0();
}

uint64_t sub_2204110AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22042B670();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = sub_22042B650();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_2204111BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_220411F5C(&qword_27CF52740, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_220411238@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA1CD8 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA1CE0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2204112E0(uint64_t a1)
{
  v2 = sub_220411F5C(&qword_280FA1CD0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22041134C()
{
  sub_220411F5C(&qword_280FA1CD0, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);

  return sub_22042B800();
}

uint64_t _s21StocksPersonalization010Com_Apple_a1_B24_SessionEventArticleReadV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v65 = a1;
  v2 = sub_22042B650();
  v62 = *(v2 - 8);
  v63 = v2;
  v3 = *(v62 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v58 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D21628];
  v7 = MEMORY[0x277D83D88];
  sub_220411E24(0, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v59 = &v58 - v11;
  sub_220411E88(0, &qword_27CF52558, &qword_280FA2210, v6);
  v60 = v12;
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12, v14);
  v61 = &v58 - v15;
  v16 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = (&v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_220411E24(0, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle, v7);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v26 = (&v58 - v25);
  sub_220411E88(0, &qword_27CF52748, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  v28 = v27 - 8;
  v29 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v58 - v31;
  v33 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead();
  v34 = *(v33 + 20);
  v35 = *(v28 + 56);
  sub_220411AA0(v65 + v34, v32, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  v36 = v64 + v34;
  v37 = v64;
  sub_220411AA0(v36, &v32[v35], qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
  v38 = *(v17 + 48);
  if (v38(v32, 1, v16) != 1)
  {
    sub_220411AA0(v32, v26, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
    if (v38(&v32[v35], 1, v16) != 1)
    {
      sub_22040F230(&v32[v35], v21);
      v43 = _s21StocksPersonalization010Com_Apple_a1_B15_SessionArticleV2eeoiySbAC_ACtFZ_0(v26, v21);
      sub_220411B84(v21);
      sub_220411B84(v26);
      sub_22040F1C0(v32, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
      if ((v43 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_220411B84(v26);
LABEL_6:
    v39 = &qword_27CF52748;
    v40 = qword_280FA1E98;
    v41 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle;
    v42 = v32;
LABEL_14:
    sub_220411F00(v42, v39, v40, v41);
    goto LABEL_15;
  }

  if (v38(&v32[v35], 1, v16) != 1)
  {
    goto LABEL_6;
  }

  sub_22040F1C0(v32, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
LABEL_8:
  v44 = *(v33 + 24);
  v45 = v61;
  v46 = *(v60 + 48);
  v47 = MEMORY[0x277D21628];
  sub_220411AA0(v65 + v44, v61, &qword_280FA2210, MEMORY[0x277D21628]);
  sub_220411AA0(v37 + v44, v45 + v46, &qword_280FA2210, v47);
  v49 = v62;
  v48 = v63;
  v50 = *(v62 + 48);
  if (v50(v45, 1, v63) == 1)
  {
    if (v50(v45 + v46, 1, v48) == 1)
    {
      sub_22040F1C0(v45, &qword_280FA2210, MEMORY[0x277D21628]);
LABEL_18:
      sub_22042B680();
      sub_220411F5C(&qword_27CF52420, MEMORY[0x277D216C8]);
      v52 = sub_22042BA10();
      return v52 & 1;
    }

    goto LABEL_13;
  }

  v51 = v59;
  sub_220411AA0(v45, v59, &qword_280FA2210, MEMORY[0x277D21628]);
  if (v50(v45 + v46, 1, v48) == 1)
  {
    (*(v49 + 8))(v51, v48);
LABEL_13:
    v39 = &qword_27CF52558;
    v40 = &qword_280FA2210;
    v41 = MEMORY[0x277D21628];
    v42 = v45;
    goto LABEL_14;
  }

  v54 = v45 + v46;
  v55 = v58;
  (*(v49 + 32))(v58, v54, v48);
  sub_220411F5C(&qword_27CF52560, MEMORY[0x277D21628]);
  v56 = sub_22042BA10();
  v57 = *(v49 + 8);
  v57(v55, v48);
  v57(v51, v48);
  sub_22040F1C0(v45, &qword_280FA2210, MEMORY[0x277D21628]);
  if (v56)
  {
    goto LABEL_18;
  }

LABEL_15:
  v52 = 0;
  return v52 & 1;
}

uint64_t sub_220411AA0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220411E24(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_220411B20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220411B84(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220411D28()
{
  sub_22042B680();
  if (v0 <= 0x3F)
  {
    sub_220411E24(319, qword_280FA1E98, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_220411E24(319, &qword_280FA2210, MEMORY[0x277D21628], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_220411E24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_220411E88(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_220411E24(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_220411F00(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220411E88(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_220411F5C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t Com_Apple_Stocks_Personalization_ViewActionType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 9;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_220411FFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22040EA30();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_220412048()
{
  v0 = sub_22042B8C0();
  __swift_allocate_value_buffer(v0, qword_280FA1E28);
  __swift_project_value_buffer(v0, qword_280FA1E28);
  sub_2203E4774();
  sub_2203E170C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_22042F8C0;
  v5 = v25 + v4;
  v6 = v25 + v4 + *(v2 + 56);
  *(v25 + v4) = 0;
  *v6 = "VIEW_ACTION_TYPE_UNKNOWN";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_22042B8A0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "VIEW_ACTION_TYPE_APP_LAUNCH";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "VIEW_ACTION_TYPE_SWIPE";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "VIEW_ACTION_TYPE_HEADLINE_TAP";
  *(v14 + 1) = 29;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "VIEW_ACTION_TYPE_DEEPLINK";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "VIEW_ACTION_TYPE_AFFORDANCE_TAP";
  *(v18 + 1) = 31;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "VIEW_ACTION_TYPE_RETURN_FROM_ARTICLE";
  *(v20 + 1) = 36;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "VIEW_ACTION_TYPE_USER_NAVIGATION";
  *(v22 + 1) = 32;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 8;
  *v23 = "VIEW_ACTION_TYPE_WIDGET_HEADLINE_TAP";
  *(v23 + 8) = 36;
  *(v23 + 16) = 2;
  v9();
  return sub_22042B8B0();
}

uint64_t static Com_Apple_Stocks_Personalization_ViewActionType._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA1E20 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA1E28);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_220412458()
{
  result = qword_280FA1E10;
  if (!qword_280FA1E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA1E10);
  }

  return result;
}

unint64_t sub_2204124B0()
{
  result = qword_280FA1E00;
  if (!qword_280FA1E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA1E00);
  }

  return result;
}

unint64_t sub_220412508()
{
  result = qword_27CF52750;
  if (!qword_27CF52750)
  {
    sub_220412560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF52750);
  }

  return result;
}

void sub_220412560()
{
  if (!qword_27CF52758)
  {
    v0 = sub_22042BB60();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF52758);
    }
  }
}

unint64_t sub_2204125B4()
{
  result = qword_280FA1E08;
  if (!qword_280FA1E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA1E08);
  }

  return result;
}

uint64_t sub_220412608@<X0>(uint64_t a1@<X8>)
{
  if (qword_280FA1E20 != -1)
  {
    swift_once();
  }

  v2 = sub_22042B8C0();
  v3 = __swift_project_value_buffer(v2, qword_280FA1E28);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2204127C4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_22041EC9C(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for EventArticleFeatures();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2204128F0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_22041ECD0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2204129E4@<X0>(void *a1@<X0>, int a2@<W1>, void *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v228 = a4;
  v231 = a3;
  v227 = a2;
  v229 = a5;
  v226 = type metadata accessor for ArticleFeatures();
  v6 = *(*(v226 - 8) + 64);
  MEMORY[0x28223BE20](v226, v7);
  v233 = v225 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = (*(v10 + 40))(v9, v10);
  v13 = v12;
  v14 = a1[3];
  v15 = a1[4];
  v232 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  (*(v15 + 56))(v14, v15);
  swift_getAssociatedTypeWitness();
  v234 = sub_2203CFDB8(0, &qword_280FA1060);
  v16 = sub_22042BDE0();

  v17 = *(v16 + 16);
  if (!v17)
  {

    v18 = MEMORY[0x277D84F90];
    v28 = *(MEMORY[0x277D84F90] + 16);
    if (!v28)
    {
      goto LABEL_23;
    }

    goto LABEL_7;
  }

  *&v238 = MEMORY[0x277D84F90];
  sub_2203C3A84(0, v17, 0);
  v18 = v238;
  v235 = v16;
  v19 = v16 + 32;
  do
  {
    sub_2203C37C0(v19, v241);
    v20 = AssociatedTypeWitness;
    v21 = v243;
    __swift_project_boxed_opaque_existential_1(v241, AssociatedTypeWitness);
    v22 = (*(v21 + 8))(v20, v21);
    v24 = v23;
    __swift_destroy_boxed_opaque_existential_1(v241);
    *&v238 = v18;
    v26 = *(v18 + 16);
    v25 = *(v18 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_2203C3A84((v25 > 1), v26 + 1, 1);
      v18 = v238;
    }

    *(v18 + 16) = v26 + 1;
    v27 = v18 + 16 * v26;
    *(v27 + 32) = v22;
    *(v27 + 40) = v24;
    v19 += 40;
    --v17;
  }

  while (v17);

  v28 = *(v18 + 16);
  if (v28)
  {
LABEL_7:
    v29 = 0;
    v30 = v18 + 40;
    v235 = (v28 - 1);
    v31 = MEMORY[0x277D84F90];
LABEL_8:
    v32 = (v30 + 16 * v29);
    v33 = v29;
    while (v33 < *(v18 + 16))
    {
      v34 = *(v32 - 1);
      v35 = *v32;
      if (v34 != v11 || v35 != v13)
      {
        v37 = *(v32 - 1);
        v38 = *v32;
        if ((sub_22042BF50() & 1) == 0)
        {

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v241[0] = v31;
          v230 = v30;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2203C3A84(0, *(v31 + 16) + 1, 1);
            v31 = v241[0];
          }

          v41 = *(v31 + 16);
          v40 = *(v31 + 24);
          if (v41 >= v40 >> 1)
          {
            sub_2203C3A84((v40 > 1), v41 + 1, 1);
            v31 = v241[0];
          }

          v29 = (v33 + 1);
          *(v31 + 16) = v41 + 1;
          v42 = v31 + 16 * v41;
          *(v42 + 32) = v34;
          *(v42 + 40) = v35;
          v30 = v230;
          if (v235 == v33)
          {
            goto LABEL_23;
          }

          goto LABEL_8;
        }
      }

      v33 = (v33 + 1);
      v32 += 2;
      if (v28 == v33)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

LABEL_23:

  sub_2204142E8(0, &qword_280FA2560, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_22042D3F0;
  *(v43 + 32) = v11;
  *(v43 + 40) = v13;
  v44 = v231[7];
  if (!__OFSUB__(v44, 1))
  {
    v45 = v43;

    v46 = sub_22042BB30();

    v241[0] = v45;
    sub_2204128F0(v46);
    v47 = v233;
    *v233 = v11;
    *(v47 + 1) = v13;
    v48 = v47;
    v241[0] = 0;
    v241[1] = 0xE000000000000000;
    v225[1] = v44;
    v49 = sub_22042BB20();

    *(v48 + 2) = v49;
    v50 = v232;
    v51 = v232[3];
    v52 = v232[4];
    __swift_project_boxed_opaque_existential_1(v232, v51);
    v53 = *(v52 + 48);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v243 = AssociatedConformanceWitness;
    __swift_allocate_boxed_opaque_existential_1(v241);
    v230 = v49;

    v53(v51, v52);
    v55 = AssociatedTypeWitness;
    v56 = v243;
    __swift_project_boxed_opaque_existential_1(v241, AssociatedTypeWitness);
    v57 = swift_getAssociatedTypeWitness();
    v58 = *(v57 - 8);
    v59 = *(v58 + 64);
    MEMORY[0x28223BE20](v57, v60);
    v62 = v225 - v61;
    (*(AssociatedConformanceWitness + 40))(v55, v56);
    v63 = swift_getAssociatedConformanceWitness();
    v64 = (*(v63 + 8))(v57, v63);
    (*(v58 + 8))(v62, v57);
    __swift_destroy_boxed_opaque_existential_1(v241);
    v65 = v233;
    *&v64 = v64;
    *(v233 + 6) = LODWORD(v64);
    v66 = v50[3];
    v67 = v50[4];
    __swift_project_boxed_opaque_existential_1(v50, v66);
    v68 = *(v67 + 48);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v69 = swift_getAssociatedConformanceWitness();
    v243 = v69;
    __swift_allocate_boxed_opaque_existential_1(v241);
    v68(v66, v67);
    v70 = AssociatedTypeWitness;
    v71 = v243;
    __swift_project_boxed_opaque_existential_1(v241, AssociatedTypeWitness);
    v72 = swift_getAssociatedTypeWitness();
    v235 = v225;
    v73 = *(v72 - 8);
    v74 = *(v73 + 64);
    MEMORY[0x28223BE20](v72, v75);
    v77 = v225 - v76;
    (*(v69 + 40))(v70, v71);
    v78 = swift_getAssociatedConformanceWitness();
    v79 = (*(v78 + 16))(v72, v78);
    (*(v73 + 8))(v77, v72);
    __swift_destroy_boxed_opaque_existential_1(v241);
    *&v79 = v79;
    *(v65 + 7) = LODWORD(v79);
    v80 = v50[3];
    v81 = v50[4];
    __swift_project_boxed_opaque_existential_1(v50, v80);
    v82 = *(v81 + 48);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v83 = swift_getAssociatedConformanceWitness();
    v243 = v83;
    __swift_allocate_boxed_opaque_existential_1(v241);
    v82(v80, v81);
    v84 = AssociatedTypeWitness;
    v85 = v243;
    __swift_project_boxed_opaque_existential_1(v241, AssociatedTypeWitness);
    v86 = swift_getAssociatedTypeWitness();
    v87 = *(v86 - 8);
    v88 = *(v87 + 64);
    MEMORY[0x28223BE20](v86, v89);
    v91 = v225 - v90;
    (*(v83 + 48))(v84, v85);
    v92 = swift_getAssociatedConformanceWitness();
    v93 = (*(v92 + 8))(v86, v92);
    (*(v87 + 8))(v91, v86);
    __swift_destroy_boxed_opaque_existential_1(v241);
    *&v93 = v93;
    *(v233 + 8) = LODWORD(v93);
    v94 = v50[3];
    v95 = v50[4];
    __swift_project_boxed_opaque_existential_1(v50, v94);
    v96 = *(v95 + 48);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v97 = swift_getAssociatedConformanceWitness();
    v243 = v97;
    __swift_allocate_boxed_opaque_existential_1(v241);
    v96(v94, v95);
    v98 = AssociatedTypeWitness;
    v99 = v243;
    __swift_project_boxed_opaque_existential_1(v241, AssociatedTypeWitness);
    v100 = swift_getAssociatedTypeWitness();
    v101 = *(v100 - 8);
    v102 = *(v101 + 64);
    MEMORY[0x28223BE20](v100, v103);
    v105 = v225 - v104;
    (*(v97 + 48))(v98, v99);
    v106 = swift_getAssociatedConformanceWitness();
    v107 = (*(v106 + 16))(v100, v106);
    (*(v101 + 8))(v105, v100);
    *&v107 = v107;
    __swift_destroy_boxed_opaque_existential_1(v241);
    *(v233 + 9) = LODWORD(v107);
    v108 = v50[3];
    v109 = v50[4];
    __swift_project_boxed_opaque_existential_1(v50, v108);
    v110 = *(v109 + 48);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v111 = swift_getAssociatedConformanceWitness();
    v243 = v111;
    __swift_allocate_boxed_opaque_existential_1(v241);
    v110(v108, v109);
    v112 = AssociatedTypeWitness;
    v113 = v243;
    __swift_project_boxed_opaque_existential_1(v241, AssociatedTypeWitness);
    (*(v111 + 56))(v112, v113);
    swift_getAssociatedTypeWitness();
    sub_2203CFDB8(0, qword_280FA1068);
    v114 = sub_22042BDE0();

    v235 = *(v114 + 16);
    if (v235)
    {
      v115 = 0;
      v116 = v114 + 32;
      v117 = MEMORY[0x277D84F98];
      while (1)
      {
        if (v115 >= *(v114 + 16))
        {
          goto LABEL_108;
        }

        sub_2203C37C0(v116, &v238);
        v120 = v239;
        v121 = v240;
        __swift_project_boxed_opaque_existential_1(&v238, v239);
        v122 = (*(v121 + 16))(v120, v121);
        v124 = v123;
        sub_2203C37C0(&v238, v237);
        v125 = swift_isUniquelyReferenced_nonNull_native();
        v236 = v117;
        v126 = sub_2203FFB78(v122, v124);
        v128 = v117[2];
        v129 = (v127 & 1) == 0;
        v130 = __OFADD__(v128, v129);
        v131 = v128 + v129;
        if (v130)
        {
          goto LABEL_109;
        }

        v132 = v127;
        if (v117[3] < v131)
        {
          break;
        }

        if (v125)
        {
          goto LABEL_34;
        }

        v137 = v126;
        sub_2204011A4();
        v126 = v137;
        if (v132)
        {
LABEL_26:
          v118 = v126;

          v117 = v236;
          v119 = (v236[7] + 40 * v118);
          __swift_destroy_boxed_opaque_existential_1(v119);
          sub_2203C5934(v237, v119);
          goto LABEL_27;
        }

LABEL_35:
        v117 = v236;
        v236[(v126 >> 6) + 8] |= 1 << v126;
        v134 = (v117[6] + 16 * v126);
        *v134 = v122;
        v134[1] = v124;
        sub_2203C5934(v237, v117[7] + 40 * v126);
        v135 = v117[2];
        v130 = __OFADD__(v135, 1);
        v136 = v135 + 1;
        if (v130)
        {
          goto LABEL_114;
        }

        v117[2] = v136;
LABEL_27:
        v115 = (v115 + 1);
        __swift_destroy_boxed_opaque_existential_1(&v238);
        v116 += 40;
        if (v235 == v115)
        {
          goto LABEL_40;
        }
      }

      sub_22040019C(v131, v125);
      v126 = sub_2203FFB78(v122, v124);
      if ((v132 & 1) != (v133 & 1))
      {
        goto LABEL_117;
      }

LABEL_34:
      if (v132)
      {
        goto LABEL_26;
      }

      goto LABEL_35;
    }

    v117 = MEMORY[0x277D84F98];
LABEL_40:

    __swift_destroy_boxed_opaque_existential_1(v241);
    v138 = v230;
    v235 = *(v230 + 16);
    if (v235)
    {
      v139 = 0;
      v140 = (v230 + 40);
      v141 = MEMORY[0x277D84F90];
      v142 = MEMORY[0x277D84F90];
      while (v139 < *(v138 + 16))
      {
        v143 = *(v140 - 1);
        v144 = *v140;
        v145 = v117[2];

        if (v145 && (v146 = sub_2203FFB78(v143, v144), (v147 & 1) != 0))
        {
          sub_2203C37C0(v117[7] + 40 * v146, &v238);
          sub_2203C5934(&v238, v241);
          v148 = AssociatedTypeWitness;
          v149 = v243;
          __swift_project_boxed_opaque_existential_1(v241, AssociatedTypeWitness);
          v150 = (*(*(v149 + 8) + 8))(v148);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v141 = sub_22041EDF4(0, *(v141 + 2) + 1, 1, v141);
          }

          v152 = *(v141 + 2);
          v151 = *(v141 + 3);
          if (v152 >= v151 >> 1)
          {
            v141 = sub_22041EDF4((v151 > 1), v152 + 1, 1, v141);
          }

          v153 = v150;
          *(v141 + 2) = v152 + 1;
          *&v141[4 * v152 + 32] = v153;
          v154 = AssociatedTypeWitness;
          v155 = v243;
          __swift_project_boxed_opaque_existential_1(v241, AssociatedTypeWitness);
          v156 = (*(*(v155 + 8) + 16))(v154);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v142 = sub_22041EDF4(0, *(v142 + 2) + 1, 1, v142);
          }

          v158 = *(v142 + 2);
          v157 = *(v142 + 3);
          if (v158 >= v157 >> 1)
          {
            v142 = sub_22041EDF4((v157 > 1), v158 + 1, 1, v142);
          }

          v159 = v156;
          *(v142 + 2) = v158 + 1;
          *&v142[4 * v158 + 32] = v159;
          __swift_destroy_boxed_opaque_existential_1(v241);
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v141 = sub_22041EDF4(0, *(v141 + 2) + 1, 1, v141);
          }

          v161 = *(v141 + 2);
          v160 = *(v141 + 3);
          if (v161 >= v160 >> 1)
          {
            v141 = sub_22041EDF4((v160 > 1), v161 + 1, 1, v141);
          }

          *(v141 + 2) = v161 + 1;
          *&v141[4 * v161 + 32] = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v142 = sub_22041EDF4(0, *(v142 + 2) + 1, 1, v142);
          }

          v163 = *(v142 + 2);
          v162 = *(v142 + 3);
          if (v163 >= v162 >> 1)
          {
            v142 = sub_22041EDF4((v162 > 1), v163 + 1, 1, v142);
          }

          *(v142 + 2) = v163 + 1;
          *&v142[4 * v163 + 32] = 0;
        }

        v139 = (v139 + 1);
        v140 += 2;
        if (v235 == v139)
        {
          goto LABEL_65;
        }
      }

LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    v142 = MEMORY[0x277D84F90];
    v141 = MEMORY[0x277D84F90];
LABEL_65:

    v164 = v233;
    *(v233 + 5) = v141;
    *(v164 + 6) = v142;
    v165 = v232[3];
    v166 = v232[4];
    __swift_project_boxed_opaque_existential_1(v232, v165);
    (*(v166 + 56))(v165, v166);
    swift_getAssociatedTypeWitness();
    v167 = sub_22042BDE0();

    v234 = *(v167 + 16);
    if (!v234)
    {
      v170 = MEMORY[0x277D84F98];
LABEL_81:

      if (!v235)
      {
        v194 = MEMORY[0x277D84F90];
        v193 = MEMORY[0x277D84F90];
LABEL_106:

        v216 = v233;
        *(v233 + 7) = v193;
        *(v216 + 64) = v194;
        v217 = v232;
        v218 = v232[3];
        v219 = v232[4];
        __swift_project_boxed_opaque_existential_1(v232, v218);
        (*(v219 + 64))(v218, v219);
        v220 = v231;
        v221 = v231[6];
        v222 = v231[16];
        v223 = v216 + *(v226 + 56);
        sub_22042B450();
        sub_2203CF9DC(v220);
        sub_2203CFCD8(v216, v229);
        return __swift_destroy_boxed_opaque_existential_1(v217);
      }

      v190 = 0;
      v191 = v230;
      v192 = (v230 + 40);
      v193 = MEMORY[0x277D84F90];
      v194 = MEMORY[0x277D84F90];
      while (v190 < *(v191 + 16))
      {
        v195 = *(v192 - 1);
        v196 = *v192;
        v197 = v170[2];

        if (v197 && (v198 = sub_2203FFB78(v195, v196), (v199 & 1) != 0))
        {
          sub_2203C37C0(v170[7] + 40 * v198, &v238);
          sub_2203C5934(&v238, v241);
          v200 = AssociatedTypeWitness;
          v201 = v243;
          __swift_project_boxed_opaque_existential_1(v241, AssociatedTypeWitness);
          v202 = (*(v201 + 16))(v200, v201);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v193 = sub_22041EDF4(0, *(v193 + 2) + 1, 1, v193);
          }

          v204 = *(v193 + 2);
          v203 = *(v193 + 3);
          if (v204 >= v203 >> 1)
          {
            v193 = sub_22041EDF4((v203 > 1), v204 + 1, 1, v193);
          }

          v205 = v202;
          *(v193 + 2) = v204 + 1;
          *&v193[4 * v204 + 32] = v205;
          v206 = AssociatedTypeWitness;
          v207 = v243;
          __swift_project_boxed_opaque_existential_1(v241, AssociatedTypeWitness);
          v208 = (*(v207 + 24))(v206, v207);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v194 = sub_22041EDF4(0, *(v194 + 2) + 1, 1, v194);
          }

          v210 = *(v194 + 2);
          v209 = *(v194 + 3);
          if (v210 >= v209 >> 1)
          {
            v194 = sub_22041EDF4((v209 > 1), v210 + 1, 1, v194);
          }

          v211 = v208;
          *(v194 + 2) = v210 + 1;
          *&v194[4 * v210 + 32] = v211;
          __swift_destroy_boxed_opaque_existential_1(v241);
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v193 = sub_22041EDF4(0, *(v193 + 2) + 1, 1, v193);
          }

          v213 = *(v193 + 2);
          v212 = *(v193 + 3);
          if (v213 >= v212 >> 1)
          {
            v193 = sub_22041EDF4((v212 > 1), v213 + 1, 1, v193);
          }

          *(v193 + 2) = v213 + 1;
          *&v193[4 * v213 + 32] = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v194 = sub_22041EDF4(0, *(v194 + 2) + 1, 1, v194);
          }

          v215 = *(v194 + 2);
          v214 = *(v194 + 3);
          if (v215 >= v214 >> 1)
          {
            v194 = sub_22041EDF4((v214 > 1), v215 + 1, 1, v194);
          }

          *(v194 + 2) = v215 + 1;
          *&v194[4 * v215 + 32] = 0;
        }

        v190 = (v190 + 1);
        v192 += 2;
        if (v235 == v190)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_113;
    }

    v168 = 0;
    v169 = v167 + 32;
    v170 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v168 >= *(v167 + 16))
      {
        goto LABEL_111;
      }

      sub_2203C37C0(v169, v241);
      v173 = AssociatedTypeWitness;
      v174 = v243;
      __swift_project_boxed_opaque_existential_1(v241, AssociatedTypeWitness);
      v175 = (*(v174 + 8))(v173, v174);
      v177 = v176;
      sub_2203C37C0(v241, &v238);
      v178 = swift_isUniquelyReferenced_nonNull_native();
      *&v237[0] = v170;
      v179 = sub_2203FFB78(v175, v177);
      v181 = v170[2];
      v182 = (v180 & 1) == 0;
      v130 = __OFADD__(v181, v182);
      v183 = v181 + v182;
      if (v130)
      {
        goto LABEL_112;
      }

      v184 = v180;
      if (v170[3] < v183)
      {
        break;
      }

      if (v178)
      {
        goto LABEL_75;
      }

      v189 = v179;
      sub_220401174();
      v179 = v189;
      if (v184)
      {
LABEL_67:
        v171 = v179;

        v170 = *&v237[0];
        v172 = (*(*&v237[0] + 56) + 40 * v171);
        __swift_destroy_boxed_opaque_existential_1(v172);
        sub_2203C5934(&v238, v172);
        goto LABEL_68;
      }

LABEL_76:
      v170 = *&v237[0];
      *(*&v237[0] + 8 * (v179 >> 6) + 64) |= 1 << v179;
      v186 = (v170[6] + 16 * v179);
      *v186 = v175;
      v186[1] = v177;
      sub_2203C5934(&v238, v170[7] + 40 * v179);
      v187 = v170[2];
      v130 = __OFADD__(v187, 1);
      v188 = v187 + 1;
      if (v130)
      {
        goto LABEL_115;
      }

      v170[2] = v188;
LABEL_68:
      ++v168;
      __swift_destroy_boxed_opaque_existential_1(v241);
      v169 += 40;
      if (v234 == v168)
      {
        goto LABEL_81;
      }
    }

    sub_22040016C(v183, v178);
    v179 = sub_2203FFB78(v175, v177);
    if ((v184 & 1) != (v185 & 1))
    {
      goto LABEL_117;
    }

LABEL_75:
    if (v184)
    {
      goto LABEL_67;
    }

    goto LABEL_76;
  }

LABEL_116:
  __break(1u);
LABEL_117:
  result = sub_22042BF70();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for ArticleFeatures()
{
  result = qword_280FA1118;
  if (!qword_280FA1118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_2204141EC()
{
  sub_2204142E8(319, &qword_280FA25C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2204142E8(319, &unk_280FA0400, MEMORY[0x277D83A90], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_22042B460();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2204142E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_220414354(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22041439C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event.article.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_2204148B0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220414908(v2, v18, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  if (swift_getEnumCaseMultiPayload())
  {
    v25 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
    (*(*(v25 - 8) + 56))(a1, 1, 1, v25);
    return sub_220414970(v18, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  }

  else
  {
    sub_2204149D0(v18, v13, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
    sub_220414908(&v13[*(v9 + 20)], v8, sub_2204148B0);
    v19 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(0);
    v20 = *(v19 - 8);
    v21 = *(v20 + 48);
    if (v21(v8, 1, v19) == 1)
    {
      *a1 = 0;
      *(a1 + 1) = 0xE000000000000000;
      v22 = *(v19 + 20);
      v23 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle.OneOf_Metadata(0);
      (*(*(v23 - 8) + 56))(&a1[v22], 1, 1, v23);
      v24 = &a1[*(v19 + 24)];
      sub_22042B670();
      sub_220414970(v13, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
      if (v21(v8, 1, v19) != 1)
      {
        sub_220414970(v8, sub_2204148B0);
      }
    }

    else
    {
      sub_220414970(v13, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEventArticleRead);
      sub_2204149D0(v8, a1, type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle);
    }

    return (*(v20 + 56))(a1, 0, 1, v19);
  }
}

uint64_t Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event.string.getter()
{
  v1 = type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220414908(v0, v5, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = 0x52656C6369747261;
  v8 = 0x6D79536863746177;
  if (EnumCaseMultiPayload != 2)
  {
    v8 = 0x5368637461776E75;
  }

  if (EnumCaseMultiPayload)
  {
    v7 = 0x65466C6F626D7973;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  sub_220414970(v5, type metadata accessor for Com_Apple_Stocks_Personalization_SessionEvent.OneOf_Event);
  return v9;
}

void sub_2204148B0()
{
  if (!qword_280FA1E98[0])
  {
    type metadata accessor for Com_Apple_Stocks_Personalization_SessionArticle(255);
    v0 = sub_22042BCF0();
    if (!v1)
    {
      atomic_store(v0, qword_280FA1E98);
    }
  }
}

uint64_t sub_220414908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_220414970(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2204149D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_220414A38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4 - 8, v7);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 16);
  if (v11)
  {
    v29 = a2;
    *&v30 = MEMORY[0x277D84F90];
    sub_2203CE7CC(0, v11, 0);
    v12 = v30;
    v13 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v14 = *(v5 + 72);
    do
    {
      sub_220414C88(v13, v10);
      v15 = *v10;
      v16 = v10[1];
      sub_2203DF3D8(*v10, v16);
      result = sub_220414CEC(v10);
      *&v30 = v12;
      v18 = v12[2];
      v17 = v12[3];
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        result = sub_2203CE7CC((v17 > 1), v18 + 1, 1);
        v12 = v30;
      }

      v12[2] = v19;
      v20 = &v12[2 * v18];
      v20[4] = v15;
      v20[5] = v16;
      v13 += v14;
      --v11;
    }

    while (v11);
    v30 = xmmword_22042D6B0;
    a2 = v29;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
    v19 = *(MEMORY[0x277D84F90] + 16);
    v30 = xmmword_22042D6B0;
    if (!v19)
    {
LABEL_11:

      v25 = *(&v30 + 1);
      *a2 = v30;
      a2[1] = v25;
      v26 = *MEMORY[0x277CFBB40];
      v27 = sub_22042B310();
      return (*(*(v27 - 8) + 104))(a2, v26, v27);
    }
  }

  v21 = 0;
  v22 = v12 + 5;
  while (v21 < v12[2])
  {
    ++v21;
    v24 = *(v22 - 1);
    v23 = *v22;
    sub_2203DF3D8(v24, *v22);
    sub_22042A560();
    result = sub_2203DF1B0(v24, v23);
    v22 += 2;
    if (v19 == v21)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_220414C88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220414CEC(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220414D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x277D85720];
  sub_220416944(0, &unk_280FA03F0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = v27 - v12;
  sub_220416AFC(a3, v27 - v12, &unk_280FA03F0, v9);
  v14 = sub_22042BB90();
  v15 = *(v14 - 8);
  LODWORD(v9) = (*(v15 + 48))(v13, 1, v14);

  if (v9 == 1)
  {
    sub_220416B7C(v13, &unk_280FA03F0, MEMORY[0x277D85720]);
  }

  else
  {
    sub_22042BB80();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22042BB70();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22042BA80() + 32;
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

      sub_220416B7C(a3, &unk_280FA03F0, MEMORY[0x277D85720]);

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

  sub_220416B7C(a3, &unk_280FA03F0, MEMORY[0x277D85720]);
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

uint64_t sub_220415090@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203BFB80(0, &unk_280FA07E0);
  result = sub_22042AD30();
  if (!v31)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203BFBDC();
  result = sub_22042AD20();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = result;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203BFB80(0, &qword_280FA24F0);
  result = sub_22042AD30();
  if (v29[3])
  {
    v9 = v31;
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
    v11 = *(*(v9 - 8) + 64);
    MEMORY[0x28223BE20](v10, v10);
    v13 = (&v28[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v13;
    v16 = type metadata accessor for GroupIDStockMessageTranslator();
    v28[3] = v16;
    v28[4] = &off_2834016E0;
    v28[0] = v15;
    v17 = type metadata accessor for UserEventHistoryEventProcessor(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    v20 = swift_allocObject();
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v28, v16);
    v22 = *(*(v16 - 8) + 64);
    MEMORY[0x28223BE20](v21, v21);
    v24 = (&v28[-1] - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v25 + 16))(v24);
    v26 = sub_220416468(*v24, v7, v29, v20);

    __swift_destroy_boxed_opaque_existential_1(v28);
    __swift_destroy_boxed_opaque_existential_1(v30);
    result = sub_2203BFC94(&qword_280FA14A8, type metadata accessor for UserEventHistoryEventProcessor);
    *a2 = v26;
    a2[1] = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_220415384@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203BFB80(0, &unk_280FA24E0);
  result = sub_22042AD30();
  if (v14)
  {
    __swift_project_boxed_opaque_existential_1(&v12, v14);
    v5 = sub_22042A9F0();
    __swift_destroy_boxed_opaque_existential_1(&v12);
    if (qword_280FA09F8 != -1)
    {
      swift_once();
    }

    sub_2203C1EE8();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_22042D3F0;
    v12 = 0;
    v13 = 0xE000000000000000;
    v7 = v5 & 1;
    if (v5)
    {
      v8 = 0x64656C62616E65;
    }

    else
    {
      v8 = 0x64656C6261736964;
    }

    if (v5)
    {
      v9 = 0xE700000000000000;
    }

    else
    {
      v9 = 0xE800000000000000;
    }

    MEMORY[0x223D7BDE0](v8, v9);

    v10 = v12;
    v11 = v13;
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 64) = sub_2203C1FA8();
    *(v6 + 32) = v10;
    *(v6 + 40) = v11;
    sub_22042BCA0();
    sub_22042B8D0();

    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220415534@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203BFB80(0, &qword_280FA24F0);
  result = sub_22042AD30();
  if (v12)
  {
    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2203BFB80(0, &unk_280FA24D0);
    result = sub_22042AD30();
    if (v10)
    {
      v7 = type metadata accessor for GroupIDStockMessageTranslator();
      v8 = swift_allocObject();
      sub_2203C5934(&v11, v8 + 16);
      result = sub_2203C5934(&v9, v8 + 56);
      a2[3] = v7;
      a2[4] = &off_2834016E0;
      *a2 = v8;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220415650(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  _s7FactoryCMa();
  result = sub_22042AD20();
  if (result)
  {
    v4 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2203BFB80(0, &qword_280FA22A8);
    result = sub_22042AD30();
    if (v8)
    {
      sub_2203BFBDC();
      v6 = *(v5 + 48);
      v7 = *(v5 + 52);
      swift_allocObject();
      return sub_22042B400();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220415734()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_22042BCC0();
  v3 = v2;

  _s7FactoryCMa();
  result = swift_allocObject();
  *(result + 16) = v1;
  *(result + 24) = v3;
  *(result + 32) = 1;
  *(result + 40) = 1;
  return result;
}

uint64_t sub_2204157B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203C14A4();
  sub_22042B900();
  v4 = sub_22042AD00();

  if (v4)
  {
    v6 = sub_22042B440();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    result = sub_22042B430();
    v9 = MEMORY[0x277D34B10];
    a2[3] = v6;
    a2[4] = v9;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220415870(void *a1)
{
  v2 = sub_22042AE60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22042ADE0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2203BFB80(0, &qword_280FA24C0);
  result = sub_22042AD30();
  if (v21)
  {
    sub_2203C5934(&v20, v22);
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2203C14A4();
    sub_22042B900();
    v14 = sub_22042AD00();

    if (v14)
    {
      sub_2203C37C0(v22, &v20);
      v15 = swift_allocObject();
      sub_2203C5934(&v20, v15 + 16);
      sub_22042ADD0();
      (*(v3 + 104))(v7, *MEMORY[0x277D6CE30], v2);
      v16 = sub_22042B920();
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      swift_allocObject();
      v19 = sub_22042B910();
      __swift_destroy_boxed_opaque_existential_1(v22);
      return v19;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_220415ADC(void *a1)
{
  v2 = sub_22042AE70();
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v27 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D6CED0];
  sub_220416944(0, &qword_280FA2400, MEMORY[0x277D6CED0], MEMORY[0x277D83D88]);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8, v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v27 - v14;
  v16 = sub_22042A790();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22042AA40();
  sub_22042A780();
  (*(v17 + 8))(v21, v16);
  v23 = v28;
  sub_220416AFC(v15, v12, &qword_280FA2400, v6);
  if ((*(v23 + 48))(v12, 1, v2) == 1)
  {
    sub_220416B7C(v15, &qword_280FA2400, MEMORY[0x277D6CED0]);
  }

  else
  {
    v24 = v27;
    (*(v23 + 32))(v27, v12, v2);
    sub_220415E48(&v29);
    (*(v23 + 8))(v24, v2);
    sub_220416B7C(v15, &qword_280FA2400, MEMORY[0x277D6CED0]);
    result = v29;
    if (v29)
    {
      return result;
    }
  }

  v26 = [objc_opt_self() defaultPolicy];

  return v26;
}

void sub_220415E48(void *a1@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = sub_22042A3E0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_22042A3D0();
  sub_22042AE70();
  sub_2203BFC94(&qword_280FA2408, MEMORY[0x277D6CED0]);
  v6 = sub_22042A3C0();
  if (v1)
  {

    v8 = v1;
LABEL_3:
    if (qword_280FA09F8 != -1)
    {
      swift_once();
    }

    sub_22042BC80();
    sub_2203C1EE8();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_22042D3F0;
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_2203BFB80(0, &unk_280FA01A0);
    sub_22042BDF0();
    v10 = v23;
    v11 = v24;
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = sub_2203C1FA8();
    *(v9 + 32) = v10;
    *(v9 + 40) = v11;
    sub_22042B8D0();
    MEMORY[0x223D7C730](v8);

    goto LABEL_6;
  }

  v14 = v6;
  v15 = v7;

  v16 = objc_opt_self();
  v17 = sub_22042A540();
  sub_2203DF1B0(v14, v15);
  v23 = 0;
  v18 = [v16 JSONObjectWithData:v17 options:0 error:&v23];

  if (!v18)
  {
    v22 = v23;
    v8 = sub_22042A480();

    swift_willThrow();
    goto LABEL_3;
  }

  v19 = v23;
  sub_22042BD00();
  swift_unknownObjectRelease();
  sub_220416404();
  if (swift_dynamicCast())
  {
    v20 = objc_allocWithZone(MEMORY[0x277D31388]);
    v21 = sub_22042B9B0();

    v12 = [v20 initWithDictionary_];

    goto LABEL_7;
  }

  if (qword_280FA09F8 != -1)
  {
    swift_once();
  }

  sub_22042BC80();
  sub_22042B8D0();
LABEL_6:
  v12 = 0;
LABEL_7:
  *a1 = v12;
  v13 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22041620C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_220416304;

  return v7(a1);
}

uint64_t sub_220416304()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_220416404()
{
  if (!qword_280FA0480)
  {
    v0 = sub_22042B9D0();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA0480);
    }
  }
}

uint64_t sub_220416468(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v42 = a4;
  v44 = a2;
  v45 = a3;
  sub_220416944(0, &unk_280FA03F0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v6 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v43 = &v37 - v7;
  sub_220416944(0, &qword_280FA03D8, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent, MEMORY[0x277D85780]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v37 - v12;
  sub_220416944(0, &qword_280FA03D0, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent, MEMORY[0x277D85788]);
  v40 = v14;
  v15 = *(v14 - 8);
  v16 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v18 = &v37 - v17;
  sub_220416944(0, &qword_280FA03B8, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent, MEMORY[0x277D857B8]);
  v20 = v19;
  v21 = *(v19 - 8);
  v41 = *(v21 + 64);
  MEMORY[0x28223BE20]();
  v23 = &v37 - v22;
  v46[3] = type metadata accessor for GroupIDStockMessageTranslator();
  v46[4] = &off_2834016E0;
  v46[0] = a1;
  v24 = OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_eventStream;
  v38 = OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_continuation;
  type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent(0);
  (*(v10 + 104))(v13, *MEMORY[0x277D85778], v9);
  sub_22042BBA0();
  (*(v10 + 8))(v13, v9);
  v39 = *(v21 + 32);
  v25 = v42;
  v26 = v20;
  v39(v42 + v24, v23, v20);
  v27 = v25;
  (*(v15 + 32))(v25 + v38, v18, v40);
  sub_2203C37C0(v46, v25 + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_groupIDStockMessageTranslator);
  v28 = v45;
  *(v25 + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_sessionManager) = v44;
  sub_2203C37C0(v28, v25 + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_stockEntityService);
  v29 = sub_22042BB90();
  v30 = v43;
  (*(*(v29 - 8) + 56))(v43, 1, 1, v29);
  v31 = swift_allocObject();
  swift_weakInit();
  v32 = v26;
  (*(v21 + 16))(v23, v27 + OBJC_IVAR____TtC21StocksPersonalization30UserEventHistoryEventProcessor_eventStream, v26);
  v33 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v34 = (v41 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  v39(v35 + v33, v23, v32);
  *(v35 + v34) = v31;

  sub_220414D48(0, 0, v30, &unk_220430A88, v35);

  __swift_destroy_boxed_opaque_existential_1(v45);
  __swift_destroy_boxed_opaque_existential_1(v46);
  return v27;
}

void sub_220416944(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2204169A8(uint64_t a1)
{
  v3 = v2;
  sub_220416944(0, &qword_280FA03B8, type metadata accessor for UserEventHistoryEventProcessor.IncomingEvent, MEMORY[0x277D857B8]);
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_2203C3E30;

  return sub_2203D2848(a1, v7, v8, v1 + v6, v9);
}

uint64_t sub_220416AFC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220416944(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_220416B7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220416944(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_220416BEC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_220416D5C;

  return sub_22041620C(a1, v5);
}

uint64_t sub_220416CA4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2203C3E30;

  return sub_22041620C(a1, v5);
}

char *sub_220416D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v184 = a2;
  v200 = a3;
  sub_220418144(0, &unk_280FA22F8, MEMORY[0x277CFBB58], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v199 = &v179 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v207 = &v179 - v10;
  v205 = sub_22042B310();
  v189 = *(v205 - 8);
  v11 = *(v189 + 64);
  MEMORY[0x28223BE20](v205, v12);
  v198 = &v179 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_22042B130();
  v203 = *(v187 - 8);
  v14 = *(v203 + 64);
  v16 = MEMORY[0x28223BE20](v187, v15);
  v197 = &v179 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v180 = &v179 - v19;
  v181 = sub_22042B460();
  v202 = *(v181 - 8);
  v20 = *(v202 + 64);
  MEMORY[0x28223BE20](v181, v21);
  v179 = &v179 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_22042B370();
  v185 = *(v186 - 8);
  v23 = *(v185 + 64);
  MEMORY[0x28223BE20](v186, v24);
  v204 = &v179 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = type metadata accessor for ArticleFeatures();
  v26 = *(v201 - 8);
  v27 = *(v26 + 64);
  v29 = MEMORY[0x28223BE20](v201, v28);
  v31 = &v179 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v32);
  v206 = &v179 - v33;
  sub_220418144(0, &unk_280FA0248, sub_2203CB050, MEMORY[0x277D84560]);
  sub_2203CB050();
  v195 = v34;
  v35 = (*(*(v34 - 8) + 80) + 32) & ~*(*(v34 - 8) + 80);
  v194 = *(*(v34 - 8) + 72);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_220430150;
  v182 = v36;
  v193 = (v36 + v35);
  sub_22042B120();
  v37 = *(a1 + 16);
  v191 = v26;
  v196 = v37;
  v192 = a1;
  if (v37)
  {
    v209[0] = MEMORY[0x277D84F90];
    sub_2203C3A84(0, v37, 0);
    v38 = v209[0];
    v39 = v26;
    v40 = a1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v41 = *(v39 + 72);
    do
    {
      sub_2204181A8(v40, v31);
      v43 = *v31;
      v42 = *(v31 + 1);

      sub_22041820C(v31);
      v209[0] = v38;
      v45 = *(v38 + 16);
      v44 = *(v38 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_2203C3A84((v44 > 1), v45 + 1, 1);
        v38 = v209[0];
      }

      *(v38 + 16) = v45 + 1;
      v46 = v38 + 16 * v45;
      *(v46 + 32) = v43;
      *(v46 + 40) = v42;
      v40 += v41;
      --v37;
    }

    while (v37);
    a1 = v192;
    v26 = v191;
  }

  v47 = v193;
  v48 = &v193[*(v195 + 48)];
  sub_22042B300();
  v190 = &v194[v47];
  sub_22042B120();
  v49 = MEMORY[0x277D84F90];
  if (v196)
  {
    v50 = a1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v51 = *(v26 + 72);
    v52 = v196;
    v53 = v206;
    do
    {
      sub_2204181A8(v50, v53);
      v209[0] = *(v53 + 16);
      sub_2203D193C();
      sub_2203CB0C0();

      v54 = sub_22042BA00();
      v56 = v55;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_22041ECD0(0, *(v49 + 2) + 1, 1, v49);
      }

      v58 = *(v49 + 2);
      v57 = *(v49 + 3);
      v53 = v206;
      if (v58 >= v57 >> 1)
      {
        v49 = sub_22041ECD0((v57 > 1), v58 + 1, 1, v49);
        v53 = v206;
      }

      sub_22041820C(v53);
      *(v49 + 2) = v58 + 1;
      v59 = &v49[16 * v58];
      *(v59 + 4) = v54;
      *(v59 + 5) = v56;
      v50 += v51;
      --v52;
    }

    while (v52);
  }

  v60 = &v190[*(v195 + 48)];
  sub_22042B300();
  v61 = &v193[2 * v194];
  result = sub_22042B120();
  v63 = v196;
  if (v196)
  {
    v209[0] = MEMORY[0x277D84F90];
    sub_2203CE8EC(0, v196, 0);
    v64 = v209[0];
    v65 = v192 + ((*(v191 + 80) + 32) & ~*(v191 + 80));
    v66 = *(v191 + 72);
    do
    {
      sub_2204181A8(v65, v31);
      v67 = *(v31 + 5);

      result = sub_22041820C(v31);
      v209[0] = v64;
      v69 = *(v64 + 16);
      v68 = *(v64 + 24);
      v70 = v69 + 1;
      if (v69 >= v68 >> 1)
      {
        result = sub_2203CE8EC((v68 > 1), v69 + 1, 1);
        v64 = v209[0];
      }

      *(v64 + 16) = v70;
      *(v64 + 8 * v69 + 32) = v67;
      v65 += v66;
      --v63;
    }

    while (v63);
    goto LABEL_21;
  }

  v71 = MEMORY[0x277D84F90];
  v70 = *(MEMORY[0x277D84F90] + 16);
  v64 = MEMORY[0x277D84F90];
  if (!v70)
  {
LABEL_38:
    v84 = *(v195 + 48);

    *&v61[v84] = v71;
    v85 = *(v189 + 104);
    LODWORD(v206) = *MEMORY[0x277CFBB48];
    v190 = v85;
    (v85)(&v61[v84]);
    v188 = &v193[3 * v194];
    result = sub_22042B120();
    v86 = v196;
    if (v196)
    {
      v209[0] = MEMORY[0x277D84F90];
      sub_2203CE8EC(0, v196, 0);
      v87 = v209[0];
      v88 = v192 + ((*(v191 + 80) + 32) & ~*(v191 + 80));
      v89 = *(v191 + 72);
      do
      {
        sub_2204181A8(v88, v31);
        v90 = *(v31 + 6);

        result = sub_22041820C(v31);
        v209[0] = v87;
        v92 = *(v87 + 16);
        v91 = *(v87 + 24);
        v93 = v92 + 1;
        if (v92 >= v91 >> 1)
        {
          result = sub_2203CE8EC((v91 > 1), v92 + 1, 1);
          v87 = v209[0];
        }

        *(v87 + 16) = v93;
        *(v87 + 8 * v92 + 32) = v90;
        v88 += v89;
        --v86;
      }

      while (v86);
      goto LABEL_45;
    }

    v94 = MEMORY[0x277D84F90];
    v93 = *(MEMORY[0x277D84F90] + 16);
    v87 = MEMORY[0x277D84F90];
    if (v93)
    {
LABEL_45:
      v95 = 0;
      v94 = MEMORY[0x277D84F90];
      do
      {
        if (v95 >= *(v87 + 16))
        {
          goto LABEL_126;
        }

        v96 = v87 + 8 * v95;
        v97 = *(v96 + 32);
        v98 = *(v97 + 16);
        v99 = *(v94 + 2);
        v100 = v99 + v98;
        if (__OFADD__(v99, v98))
        {
          goto LABEL_127;
        }

        v101 = *(v96 + 32);

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result && v100 <= *(v94 + 3) >> 1)
        {
          if (!*(v97 + 16))
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (v99 <= v100)
          {
            v102 = v99 + v98;
          }

          else
          {
            v102 = v99;
          }

          result = sub_22041EDF4(result, v102, 1, v94);
          v94 = result;
          if (!*(v97 + 16))
          {
LABEL_46:

            if (v98)
            {
              goto LABEL_128;
            }

            goto LABEL_47;
          }
        }

        v103 = *(v94 + 2);
        if ((*(v94 + 3) >> 1) - v103 < v98)
        {
          goto LABEL_136;
        }

        memcpy(&v94[4 * v103 + 32], (v97 + 32), 4 * v98);

        if (v98)
        {
          v104 = *(v94 + 2);
          v82 = __OFADD__(v104, v98);
          v105 = v104 + v98;
          if (v82)
          {
            goto LABEL_140;
          }

          *(v94 + 2) = v105;
        }

LABEL_47:
        ++v95;
      }

      while (v93 != v95);
    }

    v106 = *(v195 + 48);

    v107 = v188;
    *&v188[v106] = v94;
    (v190)(&v107[v106], v206, v205);
    v188 = &v193[4 * v194];
    result = sub_22042B120();
    v108 = v196;
    if (v196)
    {
      v209[0] = MEMORY[0x277D84F90];
      sub_2203CE8EC(0, v196, 0);
      v109 = v209[0];
      v110 = v192 + ((*(v191 + 80) + 32) & ~*(v191 + 80));
      v111 = *(v191 + 72);
      do
      {
        sub_2204181A8(v110, v31);
        v112 = *(v31 + 7);

        result = sub_22041820C(v31);
        v209[0] = v109;
        v114 = *(v109 + 16);
        v113 = *(v109 + 24);
        v115 = v114 + 1;
        if (v114 >= v113 >> 1)
        {
          result = sub_2203CE8EC((v113 > 1), v114 + 1, 1);
          v109 = v209[0];
        }

        *(v109 + 16) = v115;
        *(v109 + 8 * v114 + 32) = v112;
        v110 += v111;
        --v108;
      }

      while (v108);
      goto LABEL_69;
    }

    v116 = MEMORY[0x277D84F90];
    v115 = *(MEMORY[0x277D84F90] + 16);
    v109 = MEMORY[0x277D84F90];
    if (v115)
    {
LABEL_69:
      v117 = 0;
      v116 = MEMORY[0x277D84F90];
      do
      {
        if (v117 >= *(v109 + 16))
        {
          goto LABEL_129;
        }

        v118 = v109 + 8 * v117;
        v119 = *(v118 + 32);
        v120 = *(v119 + 16);
        v121 = *(v116 + 2);
        v122 = v121 + v120;
        if (__OFADD__(v121, v120))
        {
          goto LABEL_130;
        }

        v123 = *(v118 + 32);

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result && v122 <= *(v116 + 3) >> 1)
        {
          if (!*(v119 + 16))
          {
            goto LABEL_70;
          }
        }

        else
        {
          if (v121 <= v122)
          {
            v124 = v121 + v120;
          }

          else
          {
            v124 = v121;
          }

          result = sub_22041EDF4(result, v124, 1, v116);
          v116 = result;
          if (!*(v119 + 16))
          {
LABEL_70:

            if (v120)
            {
              goto LABEL_131;
            }

            goto LABEL_71;
          }
        }

        v125 = *(v116 + 2);
        if ((*(v116 + 3) >> 1) - v125 < v120)
        {
          goto LABEL_137;
        }

        memcpy(&v116[4 * v125 + 32], (v119 + 32), 4 * v120);

        if (v120)
        {
          v126 = *(v116 + 2);
          v82 = __OFADD__(v126, v120);
          v127 = v126 + v120;
          if (v82)
          {
            goto LABEL_141;
          }

          *(v116 + 2) = v127;
        }

LABEL_71:
        ++v117;
      }

      while (v115 != v117);
    }

    v128 = *(v195 + 48);

    v129 = v188;
    *&v188[v128] = v116;
    (v190)(&v129[v128], v206, v205);
    v194 = &v193[5 * v194];
    result = sub_22042B120();
    v130 = v196;
    if (v196)
    {
      v209[0] = MEMORY[0x277D84F90];
      sub_2203CE8EC(0, v196, 0);
      v131 = v209[0];
      v132 = v192 + ((*(v191 + 80) + 32) & ~*(v191 + 80));
      v133 = *(v191 + 72);
      do
      {
        sub_2204181A8(v132, v31);
        v134 = *(v31 + 8);

        result = sub_22041820C(v31);
        v209[0] = v131;
        v136 = *(v131 + 16);
        v135 = *(v131 + 24);
        v137 = v136 + 1;
        if (v136 >= v135 >> 1)
        {
          result = sub_2203CE8EC((v135 > 1), v136 + 1, 1);
          v131 = v209[0];
        }

        *(v131 + 16) = v137;
        *(v131 + 8 * v136 + 32) = v134;
        v132 += v133;
        --v130;
      }

      while (v130);
    }

    else
    {
      v131 = MEMORY[0x277D84F90];
      v137 = *(MEMORY[0x277D84F90] + 16);
      v138 = MEMORY[0x277D84F90];
      if (!v137)
      {
LABEL_110:
        v151 = *(v195 + 48);

        v152 = v194;
        *&v194[v151] = v138;
        (v190)(&v152[v151], v206, v205);
        sub_22042B340();
        sub_2203C37C0(v183 + 16, v209);
        v153 = v210;
        v154 = v211;
        v155 = __swift_project_boxed_opaque_existential_1(v209, v210);
        v156 = v196;
        if (v196)
        {
          v193 = v155;
          v194 = v154;
          v195 = v153;
          v208 = MEMORY[0x277D84F90];
          sub_2203CE89C(0, v196, 0);
          v157 = v208;
          v158 = v192 + ((*(v191 + 80) + 32) & ~*(v191 + 80));
          v206 = *(v191 + 72);
          v159 = (v202 + 16);
          v160 = v181;
          v161 = v179;
          do
          {
            v162 = v156;
            sub_2204181A8(v158, v31);
            (*v159)(v161, &v31[*(v201 + 56)], v160);
            sub_22041820C(v31);
            v208 = v157;
            v164 = *(v157 + 16);
            v163 = *(v157 + 24);
            if (v164 >= v163 >> 1)
            {
              sub_2203CE89C(v163 > 1, v164 + 1, 1);
              v160 = v181;
              v157 = v208;
            }

            *(v157 + 16) = v164 + 1;
            (*(v202 + 32))(v157 + ((*(v202 + 80) + 32) & ~*(v202 + 80)) + *(v202 + 72) * v164, v161, v160);
            v158 += v206;
            --v156;
          }

          while (v162 != 1);
        }

        sub_22042B4E0();

        __swift_destroy_boxed_opaque_existential_1(v209);
        v165 = sub_22042B350();
        v166 = *(v165 + 16);
        v167 = v187;
        if (v166)
        {
          v168 = *(v203 + 16);
          v169 = (*(v203 + 80) + 32) & ~*(v203 + 80);
          v192 = v165;
          v170 = v165 + v169;
          v171 = (v189 + 48);
          v201 = v189 + 32;
          v172 = *(v203 + 72);
          v194 = (v189 + 56);
          v195 = v189 + 16;
          v193 = (v189 + 8);
          v206 = v203 + 8;
          v203 += 16;
          v173 = v180;
          v202 = v189 + 48;
          v196 = v172;
          v174 = v205;
          v168(v180, v165 + v169, v187);
          while (1)
          {
            sub_22042B380();
            v178 = v207;
            if ((*v171)(v207, 1, v174) == 1)
            {
              (*v206)(v173, v167);
              sub_220418268(v178);
            }

            else
            {
              v175 = v198;
              (*v201)(v198, v178, v174);
              v168(v197, v173, v167);
              v176 = v199;
              (*v195)(v199, v175, v174);
              (*v194)(v176, 0, 1, v174);
              v171 = v202;
              sub_22042B390();
              v177 = v175;
              v172 = v196;
              (*v193)(v177, v174);
              (*v206)(v173, v167);
            }

            v170 += v172;
            if (!--v166)
            {
              break;
            }

            v168(v173, v170, v167);
          }
        }

        return (*(v185 + 8))(v204, v186);
      }
    }

    v139 = 0;
    v138 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v139 >= *(v131 + 16))
      {
        goto LABEL_132;
      }

      v140 = v131;
      v141 = v131 + 8 * v139;
      v142 = *(v141 + 32);
      v143 = *(v142 + 16);
      v144 = *(v138 + 2);
      v145 = v144 + v143;
      if (__OFADD__(v144, v143))
      {
        goto LABEL_133;
      }

      v146 = *(v141 + 32);

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v145 <= *(v138 + 3) >> 1)
      {
        if (!*(v142 + 16))
        {
          goto LABEL_94;
        }
      }

      else
      {
        if (v144 <= v145)
        {
          v147 = v144 + v143;
        }

        else
        {
          v147 = v144;
        }

        result = sub_22041EDF4(result, v147, 1, v138);
        v138 = result;
        if (!*(v142 + 16))
        {
LABEL_94:

          v131 = v140;
          if (v143)
          {
            goto LABEL_134;
          }

          goto LABEL_95;
        }
      }

      v148 = *(v138 + 2);
      if ((*(v138 + 3) >> 1) - v148 < v143)
      {
        goto LABEL_138;
      }

      memcpy(&v138[4 * v148 + 32], (v142 + 32), 4 * v143);

      v131 = v140;
      if (v143)
      {
        v149 = *(v138 + 2);
        v82 = __OFADD__(v149, v143);
        v150 = v149 + v143;
        if (v82)
        {
          goto LABEL_142;
        }

        *(v138 + 2) = v150;
      }

LABEL_95:
      if (v137 == ++v139)
      {
        goto LABEL_110;
      }
    }
  }

LABEL_21:
  v72 = 0;
  v71 = MEMORY[0x277D84F90];
  while (v72 < *(v64 + 16))
  {
    v73 = v64 + 8 * v72;
    v74 = *(v73 + 32);
    v75 = *(v74 + 16);
    v76 = *(v71 + 2);
    v77 = v76 + v75;
    if (__OFADD__(v76, v75))
    {
      goto LABEL_124;
    }

    v78 = *(v73 + 32);

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v77 <= *(v71 + 3) >> 1)
    {
      if (!*(v74 + 16))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v76 <= v77)
      {
        v79 = v76 + v75;
      }

      else
      {
        v79 = v76;
      }

      result = sub_22041EDF4(result, v79, 1, v71);
      v71 = result;
      if (!*(v74 + 16))
      {
LABEL_22:

        if (v75)
        {
          goto LABEL_125;
        }

        goto LABEL_23;
      }
    }

    v80 = *(v71 + 2);
    if ((*(v71 + 3) >> 1) - v80 < v75)
    {
      goto LABEL_135;
    }

    memcpy(&v71[4 * v80 + 32], (v74 + 32), 4 * v75);

    if (v75)
    {
      v81 = *(v71 + 2);
      v82 = __OFADD__(v81, v75);
      v83 = v81 + v75;
      if (v82)
      {
        goto LABEL_139;
      }

      *(v71 + 2) = v83;
    }

LABEL_23:
    if (v70 == ++v72)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_22041810C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_220418144(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2204181A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleFeatures();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22041820C(uint64_t a1)
{
  v2 = type metadata accessor for ArticleFeatures();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220418268(uint64_t a1)
{
  sub_220418144(0, &unk_280FA22F8, MEMORY[0x277CFBB58], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2204182F4(uint64_t result, uint64_t a2)
{
  if (a2 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = v2;
    v11 = v3;
    v4 = result;
    v8 = sub_22041867C(2 * a2);
    v9 = v5;
    sub_22041836C(&v8, 0);
    v6 = v8;
    v7 = v9;
    result = sub_2203DF1B0(*v4, *(v4 + 8));
    *v4 = v6;
    *(v4 + 8) = v7;
  }

  return result;
}

uint64_t *sub_22041836C(uint64_t *result, int a2)
{
  v3 = result;
  v24 = *MEMORY[0x277D85DE8];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_2203DF1B0(v5, v4);
      __b = v5;
      v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_22042D6B0;
      sub_2203DF1B0(0, 0xC000000000000000);
      result = sub_2204185D4(&__b, a2);
      v7 = __b;
      v8 = v23 | 0x4000000000000000;
    }

    else
    {
      sub_2203DF1B0(v5, v4);
      __b = v5;
      LOWORD(v23) = v4;
      BYTE2(v23) = BYTE2(v4);
      BYTE3(v23) = BYTE3(v4);
      BYTE4(v23) = BYTE4(v4);
      BYTE5(v23) = BYTE5(v4);
      BYTE6(v23) = BYTE6(v4);
      result = memset(&__b, a2, BYTE6(v4));
      v7 = __b;
      v8 = v23 | ((WORD2(v23) | (BYTE6(v23) << 16)) << 32);
    }

    *v3 = v7;
    v3[1] = v8;
    goto LABEL_14;
  }

  if (v6 != 2)
  {
LABEL_14:
    v20 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = *result;

  sub_2203DF1B0(v5, v4);
  __b = v5;
  v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_22042D6B0;
  sub_2203DF1B0(0, 0xC000000000000000);
  sub_22042A510();
  v10 = v23;
  v11 = *(__b + 16);
  v12 = *(__b + 24);
  result = sub_22042A430();
  if (result)
  {
    v13 = result;
    v14 = sub_22042A460();
    v15 = v11 - v14;
    if (__OFSUB__(v11, v14))
    {
      __break(1u);
    }

    else
    {
      v16 = __OFSUB__(v12, v11);
      v17 = v12 - v11;
      if (!v16)
      {
        v18 = sub_22042A450();
        if (v18 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }

        result = memset(v13 + v15, a2, v19);
        *v3 = __b;
        v3[1] = v10 | 0x8000000000000000;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2204185D4(int *a1, int a2)
{
  result = sub_22042A520();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a1 + 1);

  result = sub_22042A430();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = result;
  result = sub_22042A460();
  v9 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v6 - v5;
  v11 = sub_22042A450();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v8 + v9), a2, v12);
}

uint64_t sub_22041867C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_22042A470();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_22042A440();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_22042A530();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

unint64_t sub_22041871C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v90 = a3;
  v87 = a2;
  v84 = sub_22042A680();
  v82 = *(v84 - 8);
  v4 = *(v82 + 64);
  MEMORY[0x28223BE20](v84, v5);
  v83 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22042B130();
  v86 = *(v7 - 8);
  v8 = *(v86 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203CDA6C();
  v13 = v12;
  v85 = *(v12 - 8);
  v14 = *(v85 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v88 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for StocksTabiArticleData(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v112 = a1;
  v93 = v21;
  v94 = v21;
  v95 = &off_280FA1360;
  swift_getKeyPath();
  sub_2203C3120(0, &qword_280FA0428, type metadata accessor for StocksTabiArticleData, MEMORY[0x277D83940]);
  sub_220421078();
  v24 = sub_22042BAF0();

  v25 = *(v24 + 16);
  if (!v25)
  {
LABEL_10:

    return sub_2203CF834(MEMORY[0x277D84F90]);
  }

  v80 = v13;
  v81 = 0;
  v78 = v7;
  v79 = v11;
  *&v112 = MEMORY[0x277D84F90];
  v92 = v25;
  sub_2203C3A84(0, v25, 0);
  v26 = 0;
  v27 = v112;
  v91 = v24 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  do
  {
    if (v26 >= *(v24 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    v28 = v18;
    v29 = v27;
    sub_220421400(v91 + *(v18 + 72) * v26, v23, type metadata accessor for StocksTabiArticleData);
    v30 = *&v23[*(v93 + 7)];
    v31 = [swift_unknownObjectRetain() itemID];
    v32 = sub_22042BA30();
    v34 = v33;
    swift_unknownObjectRelease();

    sub_220421100(v23, type metadata accessor for StocksTabiArticleData);
    v27 = v29;
    *&v112 = v29;
    v36 = *(v29 + 16);
    v37 = *(v27 + 24);
    if (v36 >= v37 >> 1)
    {
      sub_2203C3A84((v37 > 1), v36 + 1, 1);
      v27 = v112;
    }

    ++v26;
    *(v27 + 16) = v36 + 1;
    v38 = v27 + 16 * v36;
    *(v38 + 32) = v32;
    *(v38 + 40) = v34;
    v18 = v28;
  }

  while (v92 != v26);
  v39 = v89;
  v40 = v90;
  if (!*(v24 + 16))
  {
    goto LABEL_10;
  }

  v41 = *(v89 + OBJC_IVAR____TtC21StocksPersonalization28ComputeServiceScoringService_computeService);
  v42 = MEMORY[0x28223BE20](v27, v35);
  *(&v78 - 6) = v42;
  *(&v78 - 5) = v39;
  *(&v78 - 4) = v40;
  *(&v78 - 3) = v24;
  *(&v78 - 2) = v87;
  v43 = v42;
  v44 = v81;
  sub_22042B1C0();
  if (v44)
  {

    v23 = v44;
    goto LABEL_31;
  }

  v93 = v43;

  if (*(v39 + OBJC_IVAR____TtC21StocksPersonalization28ComputeServiceScoringService_isSubscribed))
  {
    sub_22042B1D0();
    v124 = v109;
    v125 = v110;
    v126 = v111;
    v120 = v105;
    v121 = v106;
    v122 = v107;
    v123 = v108;
    v116 = v101;
    v117 = v102;
    v118 = v103;
    v119 = v104;
    v112 = v97;
    v113 = v98;
    v114 = v99;
    v115 = v100;
    sub_2203CF92C(&v112, v96);
    sub_2203CF988(&v112);
    v46 = *(&v112 + 1);
    v91 = v114;
  }

  else
  {
    sub_22042B1D0();
    v124 = v109;
    v125 = v110;
    v126 = v111;
    v120 = v105;
    v121 = v106;
    v122 = v107;
    v123 = v108;
    v116 = v101;
    v117 = v102;
    v118 = v103;
    v119 = v104;
    v112 = v97;
    v113 = v98;
    v114 = v99;
    v115 = v100;
    sub_2203CF92C(&v112, v96);
    sub_2203CF988(&v112);
    v46 = *(&v116 + 1);
    v91 = v118;
  }

  v92 = v46;

  sub_2203CF9DC(&v112);
  v47 = v79;
  v49 = v82;
  v48 = v83;
  v50 = v40;
  v51 = v84;
  (*(v82 + 16))(v83, v50, v84);
  v52 = (*(v49 + 88))(v48, v51);
  if (v52 == *MEMORY[0x277D692E0])
  {
    v53 = *(v49 + 8);

    v53(v48, v51);

    goto LABEL_17;
  }

  if (v52 == *MEMORY[0x277D692D0])
  {
LABEL_17:
    v54 = v80;
    v55 = v47;
    goto LABEL_19;
  }

  v54 = v80;
  v55 = v47;
  if (v52 != *MEMORY[0x277D692D8])
  {
    result = sub_22042BF40();
    __break(1u);
    return result;
  }

LABEL_19:

  sub_22042B120();
  sub_2204215E8(&qword_280FA2340, sub_2203CDA6C);
  v56 = sub_22042B2B0();
  v57 = *(v56 + 16);
  if (v57)
  {
    *&v112 = MEMORY[0x277D84F90];
    v58 = v56;
    sub_2203CE87C(0, v57, 0);
    v59 = v58;
    v60 = v112;
    v61 = *(v112 + 16);
    v62 = 32;
    do
    {
      v63 = *(v59 + v62);
      *&v112 = v60;
      v64 = v60[3];
      if (v61 >= v64 >> 1)
      {
        sub_2203CE87C((v64 > 1), v61 + 1, 1);
        v59 = v58;
        v60 = v112;
      }

      v60[2] = v61 + 1;
      *&v60[v61 + 4] = v63;
      v62 += 4;
      ++v61;
      --v57;
    }

    while (v57);
  }

  else
  {

    v60 = MEMORY[0x277D84F90];
  }

  v65 = v60[2];
  v66 = v93[2];
  if (v65 != v66)
  {

    *&v112 = 0;
    *(&v112 + 1) = 0xE000000000000000;
    sub_22042BD70();

    *&v112 = 0x20646E756F46;
    *(&v112 + 1) = 0xE600000000000000;
    *&v97 = v65;
    v71 = sub_22042BF20();
    MEMORY[0x223D7BDE0](v71);

    MEMORY[0x223D7BDE0](0xD000000000000015, 0x80000002204317A0);
    *&v97 = v66;
    v72 = sub_22042BF20();
    MEMORY[0x223D7BDE0](v72);

    v73 = v112;
    sub_2203CFA88();
    v23 = swift_allocError();
    *v74 = v73;
    *(v74 + 16) = 1;
    swift_willThrow();
    (*(v86 + 8))(v55, v78);
    (*(v85 + 8))(v88, v54);
LABEL_31:
    if (qword_280FA0650 == -1)
    {
LABEL_32:
      sub_22042BC80();
      sub_220420DE4(0, &qword_280FA01B0, &qword_280FA0190, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_22042D3F0;
      *&v112 = 0;
      *(&v112 + 1) = 0xE000000000000000;
      *&v97 = v23;
      sub_2203CFDB8(0, &unk_280FA01A0);
      sub_22042BDF0();
      v76 = v112;
      *(v75 + 56) = MEMORY[0x277D837D0];
      *(v75 + 64) = sub_2203C1FA8();
      *(v75 + 32) = v76;
      sub_22042B8D0();

      v77 = sub_2203CF834(MEMORY[0x277D84F90]);
      MEMORY[0x223D7C730](v23);
      return v77;
    }

LABEL_34:
    swift_once();
    goto LABEL_32;
  }

  if (qword_280FA0808 != -1)
  {
    swift_once();
  }

  sub_220420DE4(0, &qword_280FA01B0, &qword_280FA0190, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v67 = swift_allocObject();
  v68 = MEMORY[0x277D83B88];
  *(v67 + 16) = xmmword_22042D3F0;
  v69 = MEMORY[0x277D83C10];
  *(v67 + 56) = v68;
  *(v67 + 64) = v69;
  *(v67 + 32) = v65;
  sub_22042BCA0();
  sub_22042B8D0();

  v70 = sub_2203CFADC(v93, v60);

  (*(v86 + 8))(v55, v78);
  (*(v85 + 8))(v88, v54);
  return v70;
}

uint64_t sub_220419354@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v47 = a6;
  v45 = a5;
  v44 = a4;
  v51 = a7;
  v10 = sub_22042B370();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v48 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22042A680();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22042B130();
  v49 = *(v50 - 8);
  v20 = *(v49 + 64);
  MEMORY[0x28223BE20](v50, v21);
  v46 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[9];
  v53[8] = a1[8];
  v53[9] = v23;
  v53[10] = a1[10];
  v24 = a1[5];
  v53[4] = a1[4];
  v53[5] = v24;
  v25 = a1[7];
  v53[6] = a1[6];
  v53[7] = v25;
  v26 = a1[1];
  v53[0] = *a1;
  v53[1] = v26;
  v27 = a1[3];
  v53[2] = a1[2];
  v53[3] = v27;
  if (qword_280FA0808 != -1)
  {
    swift_once();
  }

  sub_220420DE4(0, &qword_280FA01B0, &qword_280FA0190, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v28 = swift_allocObject();
  v43 = xmmword_22042D3F0;
  *(v28 + 16) = xmmword_22042D3F0;
  v29 = *(a2 + 16);
  v30 = MEMORY[0x277D83C10];
  *(v28 + 56) = MEMORY[0x277D83B88];
  *(v28 + 64) = v30;
  *(v28 + 32) = v29;
  sub_22042BCA0();
  sub_22042B8D0();

  if (*(a3 + OBJC_IVAR____TtC21StocksPersonalization28ComputeServiceScoringService_isSubscribed) == 1)
  {
    v54 = *a1;
  }

  else
  {
    v54 = a1[4];
  }

  sub_2203CFEC4(&v54, v52);

  (*(v15 + 16))(v19, v44, v14);
  v31 = (*(v15 + 88))(v19, v14);
  if (v31 == *MEMORY[0x277D692E0])
  {
    v32 = *(v15 + 8);

    v32(v19, v14);

LABEL_10:

    v33 = v46;
    sub_22042B120();
    v34 = sub_220419900(v45);
    sub_2203CE184(v53, v34, v48);

    v47 = sub_22042A5C0();
    v45 = v35;
    v44 = qword_27CF524E0;
    sub_2203C3120(0, &qword_280FA0258, MEMORY[0x277CFBAD0], MEMORY[0x277D84560]);
    v36 = v49;
    v37 = *(v49 + 72);
    v38 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = v43;
    v40 = v50;
    (*(v36 + 16))(v39 + v38, v33, v50);

    sub_2204211D0(v39);
    swift_setDeallocating();
    v41 = *(v36 + 8);
    v41(v39 + v38, v40);
    swift_deallocClassInstance();
    sub_22042B320();
    return (v41)(v33, v40);
  }

  if (v31 == *MEMORY[0x277D692D0] || v31 == *MEMORY[0x277D692D8])
  {
    goto LABEL_10;
  }

  result = sub_22042BF40();
  __break(1u);
  return result;
}

uint64_t sub_220419900(uint64_t a1)
{
  v2 = type metadata accessor for StocksTabiArticleData(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v19 = MEMORY[0x277D84F90];
    sub_2203CE9FC(0, v8, 0);
    v9 = v19;
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    do
    {
      sub_220421400(v10, v7, type metadata accessor for StocksTabiArticleData);
      v19 = v9;
      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2203CE9FC((v12 > 1), v13 + 1, 1);
        v9 = v19;
      }

      v17 = v2;
      v18 = &off_280FA1360;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16);
      sub_220421400(v7, boxed_opaque_existential_1, type metadata accessor for StocksTabiArticleData);
      *(v9 + 16) = v13 + 1;
      sub_2203C5934(&v16, v9 + 40 * v13 + 32);
      sub_220421100(v7, type metadata accessor for StocksTabiArticleData);
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t sub_220419AD0(uint64_t a1)
{
  v2 = sub_22042A6E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v23 = MEMORY[0x277D84F90];
    sub_2203CEAD4(0, v8, 0);
    v9 = v23;
    v12 = *(v3 + 16);
    v10 = v3 + 16;
    v11 = v12;
    v13 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v19 = *(v10 + 56);
    do
    {
      v11(v7, v13, v2);
      v23 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_2203CEAD4((v14 > 1), v15 + 1, 1);
      }

      v21 = v2;
      v22 = MEMORY[0x277D692E8];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
      v11(boxed_opaque_existential_1, v7, v2);
      v9 = v23;
      *(v23 + 16) = v15 + 1;
      sub_2203C5934(&v20, v9 + 40 * v15 + 32);
      (*(v10 - 8))(v7, v2);
      v13 += v19;
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t sub_220419C9C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = result;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = sub_22042AAC0();
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(&v19, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      v13 = v20;
      if (v20)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    v14 = v19;
    result = swift_isUniquelyReferenced_nonNull_native();
    v21 = v14;
    if ((result & 1) == 0)
    {
      result = sub_22041ECD0(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v16 = *(v8 + 16);
    v15 = *(v8 + 24);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      result = sub_22041ECD0((v15 > 1), v16 + 1, 1, v8);
      v17 = v16 + 1;
      v8 = result;
    }

    *(v8 + 16) = v17;
    v18 = v8 + 16 * v16;
    *(v18 + 32) = v21;
    *(v18 + 40) = v13;
  }

  while (v7 != v4);
  return v8;
}

void *NewsHeadlineScorerFactory.workServiceScoringService.getter()
{
  v1 = *(v0 + 176);
  v2 = v1;
  return v1;
}

uint64_t NewsHeadlineScorerFactory.__allocating_init(stockEntityService:watchlistManager:appConfigurationManager:newsPersonalizationScorer:workServiceScoringService:)(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  sub_2203C5934(a1, v10 + 16);
  sub_2203C5934(a2, v10 + 56);
  sub_2203C5934(a3, v10 + 96);
  sub_2203C5934(a4, v10 + 136);
  *(v10 + 176) = a5;
  return v10;
}

uint64_t NewsHeadlineScorerFactory.init(stockEntityService:watchlistManager:appConfigurationManager:newsPersonalizationScorer:workServiceScoringService:)(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  sub_2203C5934(a1, v5 + 16);
  sub_2203C5934(a2, v5 + 56);
  sub_2203C5934(a3, v5 + 96);
  sub_2203C5934(a4, v5 + 136);
  *(v5 + 176) = a5;
  return v5;
}

uint64_t NewsHeadlineScorerFactory.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));

  return v0;
}

uint64_t NewsHeadlineScorerFactory.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));

  return swift_deallocClassInstance();
}

uint64_t NewsHeadlineScorerFactory.fetchHeadlineScorer()()
{
  sub_2203C3120(0, &unk_280FA25E0, MEMORY[0x277D69810], MEMORY[0x277D83940]);
  sub_22042AF00();

  v0 = sub_22042AEA0();
  sub_2203C33A4();
  sub_22042AED0();

  v1 = sub_22042AEA0();
  sub_2203CFDB8(0, &unk_280FA2890);
  v2 = sub_22042AED0();

  return v2;
}

uint64_t sub_22041A1B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_2203C33A4();
  v7 = *(v6 + 48);
  *a3 = a2;
  v8 = sub_22042A830();
  (*(*(v8 - 8) + 16))(&a3[v7], a1, v8);
}

uint64_t sub_22041A24C(uint64_t a1, void *a2)
{
  v68 = a2;
  v3 = sub_22042A5B0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v70 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_22042A790();
  v84 = *(v75 - 8);
  v7 = *(v84 + 64);
  v9 = MEMORY[0x28223BE20](v75, v8);
  v67 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v63 - v12;
  v14 = sub_22042A830();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v63 - v22;
  sub_2203C33A4();
  v25 = v24 - 8;
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24, v27);
  v29 = (&v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_220421400(a1, v29, sub_2203C33A4);
  v66 = *v29;
  v30 = v15[1];
  v31 = v29 + *(v25 + 56);
  v72 = v15 + 1;
  v71 = v30;
  v30(v31, v14);
  sub_220421400(a1, v29, sub_2203C33A4);
  v32 = *v29;

  v33 = v15[4];
  v34 = v29 + *(v25 + 56);
  v76 = v14;
  v33(v23, v34, v14);
  v35 = v68[16];
  v36 = v68;
  __swift_project_boxed_opaque_existential_1(v68 + 12, v68[15]);
  sub_22042AA40();
  v37 = v15[2];
  v73 = v23;
  v37(v20, v23, v14);
  v38 = *(v84 + 16);
  v39 = v67;
  v74 = v13;
  v40 = v13;
  v41 = v75;
  v38(v67, v40, v75);
  sub_2203C37C0((v36 + 17), v83);
  v42 = v36[22];
  v43 = type metadata accessor for NewsHeadlineScorer(0);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  v65 = v43;
  v46 = swift_allocObject();
  v64 = OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_stockEntities;
  v37((v46 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_stockEntities), v20, v76);
  v47 = v41;
  v48 = OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_appConfiguration;
  v38((v46 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_appConfiguration), v39, v41);
  v49 = v66;
  v78 = v20;
  v68 = v42;
  v50 = v42;
  v51 = v69;
  v52 = sub_220419C9C(sub_2204217B8, v77, v49);
  v69 = v51;
  if (v51)
  {
    MEMORY[0x223D7C730](v69);
    v71(v46 + v64, v76);
    (*(v84 + 8))(v46 + v48, v41);
    v61 = *(*v46 + 48);
    v62 = *(*v46 + 52);
    result = swift_deallocPartialClassInstance();
    __break(1u);
  }

  else
  {
    v53 = v52;

    *(v46 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_subscribedStockEntities) = v53;
    v79[3] = sub_22042AA80();
    v79[4] = MEMORY[0x277D69700];
    __swift_allocate_boxed_opaque_existential_1(v79);

    sub_22042A770();
    sub_22042A5A0();
    v81 = sub_22042A640();
    v82 = MEMORY[0x277D69260];
    __swift_allocate_boxed_opaque_existential_1(&v80);
    sub_22042A620();
    v84 = *(v84 + 8);
    (v84)(v39, v47);
    sub_2203C5934(&v80, v46 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_articleScorer);
    sub_2203C5934(v83, v46 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_newsPersonalizationScorer);
    *(v46 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_workServiceScoringService) = v68;
    v54 = v20;
    v55 = v76;
    v56 = v71;
    v71(v54, v76);
    sub_22042AF00();
    v57 = swift_allocObject();
    *(v57 + 16) = sub_220421520;
    *(v57 + 24) = v46;

    v58 = sub_22042AEA0();
    sub_2203CFDB8(0, &unk_280FA2890);
    v59 = sub_22042AEE0();

    (v84)(v74, v75);
    v56(v73, v55);
    return v59;
  }

  return result;
}

uint64_t NewsHeadlineScorer.__allocating_init(stocks:stockEntities:appConfiguration:newsPersonalizationScorer:workServiceScoringService:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v31 = a4;
  v32 = a5;
  v9 = sub_22042A5B0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v29[3] = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v5 + 48);
  v14 = *(v5 + 52);
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_stockEntities;
  v17 = sub_22042A830();
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);
  v29[2] = v16;
  v30 = v17;
  v19(v15 + v16, a2);
  v20 = OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_appConfiguration;
  v21 = sub_22042A790();
  v22 = *(v21 - 8);
  v23 = *(v22 + 16);
  v29[1] = v20;
  v24 = v15 + v20;
  v25 = a3;
  v23(v24, a3, v21);
  v33 = a2;
  v35 = a2;
  v26 = sub_220419C9C(sub_22041B0E0, v34, a1);

  *(v15 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_subscribedStockEntities) = v26;
  v36[3] = sub_22042AA80();
  v36[4] = MEMORY[0x277D69700];
  __swift_allocate_boxed_opaque_existential_1(v36);

  sub_22042A770();
  sub_22042A5A0();
  v38 = sub_22042A640();
  v39 = MEMORY[0x277D69260];
  __swift_allocate_boxed_opaque_existential_1(&v37);
  sub_22042A620();
  (*(v22 + 8))(v25, v21);
  sub_2203C5934(&v37, v15 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_articleScorer);
  sub_2203C5934(v31, v15 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_newsPersonalizationScorer);
  v27 = v33;
  *(v15 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_workServiceScoringService) = v32;
  (*(v18 + 8))(v27, v30);
  return v15;
}

uint64_t NewsHeadlineScorer.prepareForUse()()
{
  v1 = *(v0 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_newsPersonalizationScorer + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_newsPersonalizationScorer), *(v0 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_newsPersonalizationScorer + 24));
  return sub_22042AA10();
}

uint64_t sub_22041ACC8@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

void *NewsHeadlineScorer.workServiceScoringService.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_workServiceScoringService);
  v2 = v1;
  return v1;
}

char *NewsHeadlineScorer.init(stocks:stockEntities:appConfiguration:newsPersonalizationScorer:workServiceScoringService:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v6 = v5;
  v21 = *v6;
  v10 = sub_22042A5B0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v13 = OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_stockEntities;
  v14 = sub_22042A830();
  v15 = *(v14 - 8);
  v22 = v14;
  (*(v15 + 16))(&v6[v13], a2);
  v16 = OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_appConfiguration;
  v17 = sub_22042A790();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v6[v16], a3, v17);
  v26 = a2;
  v19 = sub_220419C9C(sub_2204217B8, v25, a1);

  *&v6[OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_subscribedStockEntities] = v19;
  v27[3] = sub_22042AA80();
  v27[4] = MEMORY[0x277D69700];
  __swift_allocate_boxed_opaque_existential_1(v27);

  sub_22042A770();
  sub_22042A5A0();
  v29 = sub_22042A640();
  v30 = MEMORY[0x277D69260];
  __swift_allocate_boxed_opaque_existential_1(&v28);
  sub_22042A620();
  (*(v18 + 8))(a3, v17);
  sub_2203C5934(&v28, &v6[OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_articleScorer]);
  sub_2203C5934(a4, &v6[OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_newsPersonalizationScorer]);
  *&v6[OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_workServiceScoringService] = a5;
  (*(v15 + 8))(a2, v22);
  return v6;
}

uint64_t NewsHeadlineScorer.deinit()
{
  v1 = OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_stockEntities;
  v2 = sub_22042A830();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_appConfiguration;
  v4 = sub_22042A790();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_subscribedStockEntities);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_articleScorer));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_newsPersonalizationScorer));

  return v0;
}

uint64_t NewsHeadlineScorer.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_stockEntities;
  v2 = sub_22042A830();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_appConfiguration;
  v4 = sub_22042A790();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_subscribedStockEntities);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_articleScorer));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_newsPersonalizationScorer));

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

size_t NewsHeadlineScorer.scoreHeadlines(_:origin:)(unint64_t a1, void *a2)
{
  v134 = sub_22042A610();
  v125 = *(v134 - 8);
  v5 = *(v125 + 64);
  MEMORY[0x28223BE20](v134, v6);
  v8 = (&v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_22042A9A0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v128 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_22042A930();
  v149 = *(v153 - 8);
  v13 = *(v149 + 64);
  v15 = MEMORY[0x28223BE20](v153, v14);
  v148 = &v124 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v152 = &v124 - v18;
  v147 = type metadata accessor for ScorableHeadline(0);
  v140 = *(v147 - 8);
  v19 = *(v140 + 64);
  v21 = MEMORY[0x28223BE20](v147, v20);
  v130 = &v124 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v129 = &v124 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v144 = &v124 - v28;
  MEMORY[0x28223BE20](v27, v29);
  v139 = (&v124 - v30);
  sub_22041C240();
  v145 = v31;
  v133 = *(v31 - 8);
  v32 = *(v133 + 64);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v126 = &v124 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v36);
  v143 = &v124 - v37;
  v38 = sub_22042A5E0();
  v137 = *(v38 - 8);
  v39 = *(v137 + 64);
  MEMORY[0x28223BE20](v38, v40);
  v136 = &v124 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for StocksTabiArticleData(0);
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42 - 8, v45);
  v47 = (&v124 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v151 = sub_22041C2F4(a2);
  v154 = v2;
  v155 = v48;
  v49 = *(v2 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_newsPersonalizationScorer + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_newsPersonalizationScorer), *(v2 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_newsPersonalizationScorer + 24));
  v50 = sub_22042AA20();
  v51 = a1;
  v142 = v50;
  v138 = v38;
  if (a1 >> 62)
  {
LABEL_63:
    v122 = v51;
    v123 = sub_22042BE10();
    v51 = v122;
    v52 = v123;
  }

  else
  {
    v52 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v53 = v52 & ~(v52 >> 63);
  v131 = v8;
  v150 = v51;
  v146 = v52;
  v141 = a2;
  if (v52)
  {
    v54 = v51;
    v156[0] = MEMORY[0x277D84F90];
    result = sub_2203CEA84(0, v52 & ~(v52 >> 63), 0);
    if (v52 < 0)
    {
      __break(1u);
LABEL_65:
      __break(1u);
      return result;
    }

    v56 = 0;
    a2 = v156[0];
    v51 = v54;
    do
    {
      if ((v54 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223D7C0A0](v56, v51);
      }

      else
      {
        v57 = *&v51[8 * v56 + 32];
        swift_unknownObjectRetain();
      }

      swift_getObjectType();
      sub_22041C548(v151, v155, v47);
      swift_unknownObjectRelease();
      v156[0] = a2;
      v59 = a2[2];
      v58 = a2[3];
      if (v59 >= v58 >> 1)
      {
        sub_2203CEA84(v58 > 1, v59 + 1, 1);
        a2 = v156[0];
      }

      ++v56;
      a2[2] = v59 + 1;
      sub_2204208BC(v47, a2 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v59, type metadata accessor for StocksTabiArticleData);
      v52 = v146;
      v51 = v150;
    }

    while (v146 != v56);
  }

  else
  {
    a2 = MEMORY[0x277D84F90];
  }

  v60 = v51;
  v61 = *(v154 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_workServiceScoringService);
  v43 = v145;
  v8 = v142;
  if (v61)
  {
    v62 = v61;
    v63 = v136;
    sub_22042A5D0();
    v141 = sub_22041871C(a2, v63, v141);

    (*(v137 + 8))(v63, v138);
  }

  else
  {

    v141 = sub_2203CF834(MEMORY[0x277D84F90]);
  }

  if (!v52)
  {

    v47 = MEMORY[0x277D84F90];
    goto LABEL_38;
  }

  v156[0] = MEMORY[0x277D84F90];
  result = sub_2203CEA34(0, v53, 0);
  if (v52 < 0)
  {
    goto LABEL_65;
  }

  v64 = 0;
  v47 = v156[0];
  v65 = v60;
  v138 = (v60 & 0xC000000000000001);
  do
  {
    if (v138)
    {
      a2 = MEMORY[0x223D7C0A0](v64, v65);
    }

    else
    {
      a2 = *&v65[8 * v64 + 32];
      swift_unknownObjectRetain();
    }

    swift_getObjectType();
    v66 = [a2 articleID];
    v67 = sub_22042BA30();
    v69 = v68;

    v70 = [a2 articleID];
    v71 = sub_22042BA30();
    v73 = v72;

    if (v8[2])
    {
      v74 = sub_2203FFB78(v71, v73);
      v76 = v75;

      if (v76)
      {
        v77 = *(v8[7] + 8 * v74);
        v78 = v77;
        goto LABEL_28;
      }
    }

    else
    {
    }

    v77 = 0;
LABEL_28:
    v79 = v141;
    if (*(v141 + 16))
    {
      v80 = sub_2203FFB78(v67, v69);
      v82 = v81;

      if (v82)
      {
        v83 = 0;
        v84 = *(*(v79 + 56) + 8 * v80);
        goto LABEL_33;
      }
    }

    else
    {
    }

    v84 = 0.0;
    v83 = 1;
LABEL_33:
    v43 = v145;
    v85 = v139;
    FCHeadlineProviding.scorable(withOrigin:newsScoreProfile:tabiScore:)(v77, v84, v83, v139);
    swift_unknownObjectRelease();

    v156[0] = v47;
    v87 = *(v47 + 2);
    v86 = *(v47 + 3);
    if (v87 >= v86 >> 1)
    {
      sub_2203CEA34(v86 > 1, v87 + 1, 1);
      v47 = v156[0];
    }

    ++v64;
    *(v47 + 2) = v87 + 1;
    sub_2204208BC(v85, v47 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v87, type metadata accessor for ScorableHeadline);
    v65 = v150;
    v8 = v142;
  }

  while (v146 != v64);

LABEL_38:
  v88 = *(v154 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_articleScorer + 32);
  __swift_project_boxed_opaque_existential_1((v154 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_articleScorer), *(v154 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_articleScorer + 24));
  sub_2204215E8(qword_280FA27F0, type metadata accessor for ScorableHeadline);
  v89 = sub_22042A840();

  v90 = v89;
  v146 = *(v89 + 16);
  if (v146)
  {
    v91 = 0;
    v151 = OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_subscribedStockEntities;
    v51 = (v89 + ((*(v133 + 80) + 32) & ~*(v133 + 80)));
    v150 = (v149 + 32);
    v140 = v133 + 8;
    v141 = v133 + 16;
    v92 = MEMORY[0x277D84F98];
    v132 = v90;
    v127 = v51;
    do
    {
      if (v91 >= *(v90 + 16))
      {
        goto LABEL_62;
      }

      v142 = v92;
      v139 = *(v133 + 72);
      v137 = v91;
      v138 = *(v133 + 16);
      v138(v143, &v51[v139 * v91], v43);
      v99 = v144;
      sub_22042A660();
      v100 = [*v99 identifier];
      v135 = sub_22042BA30();
      v136 = v101;

      a2 = *(v99 + 9);
      v155 = a2[2];
      if (v155)
      {
        v43 = 0;
        v8 = a2 + 5;
        v47 = MEMORY[0x277D84F90];
        while (v43 < a2[2])
        {
          v103 = *v8;
          v104 = *(v154 + v151);
          v156[0] = *(v8 - 1);
          v156[1] = v103;
          MEMORY[0x28223BE20](v102, v51);
          *(&v124 - 2) = v156;

          if (sub_220420810(sub_220420924, (&v124 - 4), v104))
          {
            v105 = v148;
            sub_22042A920();
            v106 = *v150;
            (*v150)(v152, v105, v153);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_22041F0B8(0, *(v47 + 2) + 1, 1, v47, &unk_280FA2580, MEMORY[0x277D69420], MEMORY[0x277D69420]);
            }

            v108 = *(v47 + 2);
            v107 = *(v47 + 3);
            if (v108 >= v107 >> 1)
            {
              v47 = sub_22041F0B8(v107 > 1, v108 + 1, 1, v47, &unk_280FA2580, MEMORY[0x277D69420], MEMORY[0x277D69420]);
            }

            *(v47 + 2) = v108 + 1;
            v102 = v106(v47 + ((*(v149 + 80) + 32) & ~*(v149 + 80)) + *(v149 + 72) * v108, v152, v153);
          }

          else
          {
          }

          ++v43;
          v8 += 2;
          if (v155 == v43)
          {
            goto LABEL_40;
          }
        }

        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

LABEL_40:
      v93 = v137 + 1;
      v8 = v131;
      v43 = v145;
      a2 = v143;
      sub_22042A650();
      v94 = v144;
      v95 = *&v144[*(v147 + 60)];
      v96 = v128;
      sub_22042A8F0();
      v97 = v142;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v156[0] = v97;
      sub_220420690(v96, v135, v136, isUniquelyReferenced_nonNull_native);

      v47 = *v140;
      v91 = v93;
      (*v140)(a2, v43);
      v92 = v156[0];
      sub_220421100(v94, type metadata accessor for ScorableHeadline);
      v90 = v132;
      v51 = v127;
    }

    while (v93 != v146);
    v142 = v92;
    v109 = (v125 + 8);
    v110 = v126;
    do
    {
      v111 = v51;
      (v138)(v110);
      v112 = v129;
      sub_22042A660();
      v113 = *(v112 + *(v147 + 60));
      v114 = v113;
      sub_220421100(v112, type metadata accessor for ScorableHeadline);
      if (v113)
      {
        sub_22042A650();
        sub_22042A600();
        v116 = v115;
        (*v109)(v8, v134);
        [v114 setTabiScore_];
      }

      v117 = v130;
      sub_22042A660();
      v118 = *(v117 + *(v147 + 60));
      v119 = v118;
      sub_220421100(v117, type metadata accessor for ScorableHeadline);
      if (v118)
      {
        sub_22042A650();
        sub_22042A5F0();
        v121 = v120;
        (*v109)(v8, v134);
        [v119 setAgedPersonalizationScore_];
      }

      v47(v110, v43);
      v51 = v139 + v111;
      --v146;
    }

    while (v146);

    return v142;
  }

  else
  {

    return MEMORY[0x277D84F98];
  }
}

void sub_22041C240()
{
  if (!qword_280FA28B8)
  {
    type metadata accessor for ScorableHeadline(255);
    sub_2204215E8(qword_280FA27F0, type metadata accessor for ScorableHeadline);
    v0 = sub_22042A670();
    if (!v1)
    {
      atomic_store(v0, &qword_280FA28B8);
    }
  }
}

uint64_t sub_22041C2F4(uint64_t a1)
{
  v2 = sub_22042AAC0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22042A680();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v13, a1, v8);
  v14 = (*(v9 + 88))(v13, v8);
  if (v14 == *MEMORY[0x277D692E0])
  {
    (*(v9 + 96))(v13, v8);
    (*(v3 + 32))(v7, v13, v2);
    sub_22042AAB0();
    v15 = sub_22042A820();
    v17 = v16;

    if (!v17)
    {
      v15 = 0;
    }

    (*(v3 + 8))(v7, v2);
  }

  else
  {
    if (v14 != *MEMORY[0x277D692D0] && v14 != *MEMORY[0x277D692D8])
    {
      result = sub_22042BF40();
      __break(1u);
      return result;
    }

    return 0;
  }

  return v15;
}

uint64_t sub_22041C548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = sub_22042A810();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StocksTabiArticleData(0);
  v15 = v14[5];

  sub_22041E568(a3 + v15);
  sub_22042BCB0();
  v16 = sub_22042A800();
  (*(v9 + 8))(v13, v8);
  *a3 = a1;
  a3[1] = a2;
  *(a3 + v14[6]) = v16;
  *(a3 + v14[7]) = v4;
  return swift_unknownObjectRetain();
}

uint64_t FCHeadlineProviding.scorable(withOrigin:newsScoreProfile:tabiScore:)@<X0>(void *a1@<X2>, double a2@<X3>, int a3@<W4>, void *a4@<X8>)
{
  v5 = v4;
  v114 = a3;
  v113 = a2;
  v115 = a1;
  v7 = MEMORY[0x277D83D88];
  sub_2203C3120(0, &qword_280FA28D8, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v109 = v94 - v11;
  v12 = sub_22042A5B0();
  v111 = *(v12 - 8);
  v13 = *(v111 + 64);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v97 = v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v110 = v94 - v18;
  v121 = sub_22042A7E0();
  v117 = *(v121 - 8);
  v19 = *(v117 + 64);
  MEMORY[0x28223BE20](v121, v20);
  v120 = v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203C3120(0, &qword_280FA28A0, MEMORY[0x277D693A8], v7);
  v23 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v22 - 8, v24);
  v99 = v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v98 = v94 - v29;
  MEMORY[0x28223BE20](v28, v30);
  v32 = v94 - v31;
  v108 = sub_22042A810();
  v107 = *(v108 - 8);
  v33 = *(v107 + 64);
  MEMORY[0x28223BE20](v108, v34);
  v36 = v94 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_22042A750();
  v104 = *(v105 - 8);
  v37 = *(v104 + 64);
  MEMORY[0x28223BE20](v105, v38);
  v40 = v94 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22041E568(v40);
  v41 = v32;
  sub_22042BCB0();
  sub_22042A7F0();
  v124 = sub_22042A740();
  v125 = MEMORY[0x277D692F0];
  __swift_allocate_boxed_opaque_existential_1(&v123);
  sub_22042A6A0();
  v103 = v40;
  v42 = sub_22042A6F0();
  v102 = sub_220419AD0(v42);

  v43 = [v5 sourceChannelID];
  v112 = v12;
  if (v43)
  {
    v44 = v43;
    v101 = sub_22042BA30();
    v100 = v45;
  }

  else
  {
    v101 = 0;
    v100 = 0xE000000000000000;
  }

  v106 = v36;
  v46 = sub_22042A800();
  v47 = *(v46 + 16);
  v116 = v41;
  if (v47)
  {
    v95 = a4;
    v96 = v5;
    v122 = MEMORY[0x277D84F90];
    sub_2203C3A84(0, v47, 0);
    v48 = v122;
    v119 = *(v117 + 16);
    v49 = (*(v117 + 80) + 32) & ~*(v117 + 80);
    v94[1] = v46;
    v50 = v46 + v49;
    v118 = *(v117 + 72);
    v51 = (v117 + 8);
    do
    {
      v52 = v120;
      v53 = v121;
      v119(v120, v50, v121);
      v54 = sub_22042A7A0();
      v56 = v55;
      (*v51)(v52, v53);
      v122 = v48;
      v58 = *(v48 + 16);
      v57 = *(v48 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_2203C3A84((v57 > 1), v58 + 1, 1);
        v48 = v122;
      }

      *(v48 + 16) = v58 + 1;
      v59 = v48 + 16 * v58;
      *(v59 + 32) = v54;
      *(v59 + 40) = v56;
      v50 += v118;
      --v47;
    }

    while (v47);

    v5 = v96;
    a4 = v95;
    v41 = v116;
  }

  else
  {

    v48 = MEMORY[0x277D84F90];
  }

  [v5 globalUserFeedback];
  v61 = v60;
  v62 = v98;
  sub_220420940(v41, v98);
  v63 = v117;
  v64 = *(v117 + 48);
  v65 = v121;
  v66 = v64(v62, 1, v121);
  v67 = v111;
  if (v66 == 1)
  {
    sub_220420FC4(v62, &qword_280FA28A0, MEMORY[0x277D693A8]);
    v68 = 0;
  }

  else
  {
    sub_22042A7B0();
    v63 = v117;
    v68 = v69;
    (*(v117 + 8))(v62, v65);
  }

  v70 = v99;
  sub_220420940(v41, v99);
  if (v64(v70, 1, v65) == 1)
  {
    sub_220420FC4(v70, &qword_280FA28A0, MEMORY[0x277D693A8]);
    v71 = 0;
  }

  else
  {
    sub_22042A7C0();
    v71 = v72;
    (*(v63 + 8))(v70, v65);
  }

  v73 = v112;
  v74 = v102;
  v75 = v67;
  v76 = [v5 publishDate];
  if (v76)
  {
    v77 = v97;
    v78 = v76;
    sub_22042A580();

    v79 = v5;
    v80 = *(v67 + 32);
    v81 = v73;
    v82 = v109;
    v80(v109, v77, v81);
    (*(v67 + 56))(v82, 0, 1, v81);
    v83 = v110;
    v84 = v82;
    v73 = v81;
    v80(v110, v84, v81);
    v75 = v67;
    v5 = v79;
    v41 = v116;
  }

  else
  {
    v85 = v109;
    (*(v67 + 56))(v109, 1, 1, v73);
    v83 = v110;
    sub_22042A5A0();
    if ((*(v67 + 48))(v85, 1, v73) != 1)
    {
      sub_220420FC4(v85, &qword_280FA28D8, MEMORY[0x277CC9578]);
    }
  }

  v86 = [v5 feedHalfLifeMilliseconds];
  sub_220420FC4(v41, &qword_280FA28A0, MEMORY[0x277D693A8]);
  (*(v107 + 8))(v106, v108);
  (*(v104 + 8))(v103, v105);
  if (v114)
  {
    v87 = 0.0;
  }

  else
  {
    v87 = v113;
  }

  v88 = v86;
  *a4 = v5;
  sub_2203C5934(&v123, (a4 + 1));
  v89 = v101;
  a4[6] = v74;
  a4[7] = v89;
  a4[8] = v100;
  a4[9] = v48;
  a4[10] = v61;
  a4[11] = v68;
  a4[12] = v71;
  v90 = type metadata accessor for ScorableHeadline(0);
  (*(v75 + 32))(a4 + v90[12], v83, v73);
  *(a4 + v90[13]) = v88;
  *(a4 + v90[14]) = 0;
  v91 = v115;
  *(a4 + v90[15]) = v115;
  *(a4 + v90[16]) = v87;
  v92 = v91;
  return swift_unknownObjectRetain();
}

uint64_t NewsHeadlineScorer.applyImportanceScoreRankPenalty(_:remainingSymbols:)(uint64_t a1, uint64_t a2)
{
  v124 = a1;
  v122 = sub_22042A7E0();
  v91 = *(v122 - 8);
  v4 = *(v91 + 64);
  MEMORY[0x28223BE20](v122, v5);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_22042A810();
  v120 = *(v99 - 8);
  v8 = *(v120 + 64);
  MEMORY[0x28223BE20](v99, v9);
  v98 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_22042A9A0();
  v109 = *(v114 - 8);
  v11 = *(v109 + 64);
  MEMORY[0x28223BE20](v114, v12);
  v115 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_22042AB00();
  v103 = *(v102 - 8);
  v14 = *(v103 + 64);
  v16 = MEMORY[0x28223BE20](v102, v15);
  v101 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v100 = &v91 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v119 = (&v91 - v22);
  v23 = sub_22042AA80();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = v2;
  sub_22042A770();
  sub_22042AA60();
  v97 = v29;
  result = (*(v24 + 8))(v28, v23);
  v31 = 0;
  v32 = *(a2 + 16);
  v33 = a2 + 40;
  v123 = MEMORY[0x277D84F90];
  v121 = a2 + 40;
LABEL_2:
  v34 = (v33 + 16 * v31);
  while (v32 != v31)
  {
    if (v31 >= v32)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return result;
    }

    v35 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      goto LABEL_36;
    }

    v36 = *(v34 - 1);
    v37 = *v34;

    v38 = sub_22042A820();
    v40 = v39;

    ++v31;
    v34 += 2;
    if (v40)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22041ECD0(0, *(v123 + 2) + 1, 1, v123);
        v123 = result;
      }

      v33 = v121;
      v42 = *(v123 + 2);
      v41 = *(v123 + 3);
      if (v42 >= v41 >> 1)
      {
        result = sub_22041ECD0((v41 > 1), v42 + 1, 1, v123);
        v123 = result;
      }

      v43 = v123;
      *(v123 + 2) = v42 + 1;
      v44 = &v43[16 * v42];
      *(v44 + 4) = v38;
      *(v44 + 5) = v40;
      v31 = v35;
      goto LABEL_2;
    }
  }

  v45 = v124;
  v46 = *(v124 + 16);
  if (v46)
  {
    v127 = MEMORY[0x277D84F90];
    v116 = v46;
    sub_2203CEB0C(0, v46, 0);
    v47 = 0;
    v121 = v127;
    v113 = *(v103 + 16);
    v110 = (*(v103 + 80) + 32) & ~*(v103 + 80);
    v112 = v45 + v110;
    v111 = (v103 + 88);
    v118 = *MEMORY[0x277D69850];
    v117 = (v103 + 32);
    v108 = (v103 + 8);
    v96 = (v103 + 96);
    v95 = (v109 + 32);
    v94 = (v120 + 8);
    v124 = v91 + 16;
    v125 = (v91 + 8);
    v93 = (v109 + 8);
    v92 = (v103 + 104);
    v48 = *(v103 + 72);
    v49 = v122;
    v50 = v102;
    v51 = v101;
    v52 = v100;
    v53 = v119;
    v103 += 16;
    v109 = v48;
    do
    {
      v120 = v47;
      v54 = v113;
      v113(v52, (v112 + v48 * v47), v50);
      v54(v51, v52, v50);
      v55 = (*v111)(v51, v50);
      if (v55 == v118)
      {
        (*v96)(v51, v50);
        v56 = *v51;
        sub_2204209D4();
        v58 = v57;
        (*v95)(v115, &v51[*(v57 + 48)], v114);
        sub_22042A850();
        v60 = v59;
        swift_getObjectType();
        v61 = v98;
        sub_22042BCB0();
        v62 = sub_22042A800();
        (*v94)(v61, v99);
        v63 = *(v62 + 16);
        if (v63)
        {
          v106 = v58;
          v107 = v56;
          v64 = 0;
          v65 = (*(v91 + 80) + 32) & ~*(v91 + 80);
          v105 = v62;
          v66 = v62 + v65;
          v67 = *(v91 + 72);
          v68 = *(v91 + 16);
          v68(v7, v62 + v65, v49);
          while (1)
          {
            sub_22042A7B0();
            if (v60 >= v69)
            {
              (*v125)(v7, v49);
            }

            else
            {
              v126[0] = sub_22042A7A0();
              v126[1] = v70;
              MEMORY[0x28223BE20](v126[0], v70);
              v90 = v126;
              v71 = sub_220420810(sub_2204217D0, v89, v123);
              v49 = v122;
              (*v125)(v7, v122);

              if ((v71 & 1) != 0 && __OFADD__(v64++, 1))
              {
                __break(1u);
                goto LABEL_35;
              }
            }

            v66 += v67;
            if (!--v63)
            {
              break;
            }

            v68(v7, v66, v49);
          }

          v56 = v107;
          v58 = v106;
        }

        else
        {

          v64 = 0;
        }

        v107 = *(v58 + 48);
        v73 = v119;
        *v119 = v56;
        v74 = v115;
        sub_22042A970();
        sub_22042A8A0();
        sub_22042A8E0();
        sub_22042A8D0();
        sub_22042A8B0();
        v106 = sub_22042A940();
        sub_22042A910();
        v76 = v75;
        sub_22042A890();
        sub_22042A630();
        v105 = v77;
        sub_22042A880();
        sub_22042A630();
        sub_22042A870();
        sub_22042A630();
        v79 = v78;
        sub_22042A8C0();
        sub_22042A900();
        sub_22042A950();
        result = sub_22042A860();
        if (__OFADD__(result, v64))
        {
          goto LABEL_37;
        }

        sub_22042A990();
        v104 = v76;
        v81 = v80;
        sub_22042A980();
        v90 = v82;
        v89[0] = v79;
        v89[1] = v81;
        sub_22042A960();
        (*v93)(v74, v114);
        v52 = v100;
        v50 = v102;
        (*v108)(v100, v102);
        (*v92)(v73, v118, v50);
        v51 = v101;
      }

      else
      {
        (*v117)(v53, v52, v50);
        (*v108)(v51, v50);
      }

      v83 = v120;
      v84 = v121;
      v127 = v121;
      v86 = *(v121 + 16);
      v85 = *(v121 + 24);
      if (v86 >= v85 >> 1)
      {
        sub_2203CEB0C(v85 > 1, v86 + 1, 1);
        v83 = v120;
        v84 = v127;
      }

      *(v84 + 16) = v86 + 1;
      v121 = v84;
      v48 = v109;
      v87 = v84 + v110 + v86 * v109;
      v53 = v119;
      v88 = v83 + 1;
      (*v117)(v87, v119, v50);
      v47 = v88;
    }

    while (v88 != v116);

    return v121;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

uint64_t NewsHeadlineScorer.applyChannelDiversificationPenalty(_:priorChannelIDs:)(uint64_t a1, uint64_t a2)
{
  v97 = a1;
  v89 = sub_22042A9A0();
  v3 = *(v89 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v89, v5);
  v90 = v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22042AB00();
  v96 = *(v7 - 8);
  v8 = *(v96 + 64);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v95 = (v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v10, v12);
  v99 = v83 - v14;
  MEMORY[0x28223BE20](v13, v15);
  v17 = v83 - v16;
  v18 = sub_22042AA80();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18, v21);
  v23 = v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22042A770();
  sub_22042AA70();
  v83[1] = v24;
  (*(v19 + 8))(v23, v18);
  v25 = *(a2 + 16);
  v98 = v7;
  v100 = v17;
  v85 = v3;
  if (!v25)
  {
    v27 = MEMORY[0x277D84F98];
LABEL_21:
    v48 = v97;
    v49 = *(v97 + 16);
    if (!v49)
    {

      return MEMORY[0x277D84F90];
    }

    v101 = MEMORY[0x277D84F90];
    sub_2203CEB0C(0, v49, 0);
    v50 = v101;
    v51 = *(v96 + 16);
    v92 = (*(v96 + 80) + 32) & ~*(v96 + 80);
    v52 = (v48 + v92);
    v91 = *(v96 + 72);
    v93 = (v96 + 88);
    v94 = v51;
    v53 = (v96 + 32);
    v88 = (v96 + 8);
    v87 = (v96 + 96);
    LODWORD(v97) = *MEMORY[0x277D69850];
    v86 = (v85 + 4);
    ++v85;
    v96 += 16;
    v83[0] = v96 + 88;
    while (1)
    {
      v54 = v99;
      v55 = v94;
      v94(v99, v52, v7);
      v56 = v95;
      v55(v95, v54, v7);
      v57 = (*v93)(v56, v7);
      if (v57 == v97)
      {
        (*v87)(v56, v7);
        v58 = *v56;
        sub_2204209D4();
        v60 = v59;
        v61 = v89;
        v62 = v90;
        (*v86)(v90, v56 + *(v59 + 48), v89);
        v63 = [v58 sourceChannelID];
        if (v63)
        {
          v64 = v63;
          v65 = sub_22042BA30();
          v67 = v66;

          if (v27[2])
          {
            v68 = sub_2203FFB78(v65, v67);
            v70 = v69;

            if (v70)
            {
              v84 = *(v27[7] + 8 * v68);
              v83[6] = *(v60 + 48);
              v71 = v100;
              *v100 = v58;
              v72 = v90;
              sub_22042A970();
              sub_22042A8A0();
              sub_22042A8E0();
              sub_22042A8D0();
              sub_22042A8B0();
              v83[5] = sub_22042A940();
              sub_22042A850();
              sub_22042A910();
              v74 = v73;
              sub_22042A890();
              v83[4] = v75;
              sub_22042A880();
              sub_22042A870();
              v76 = v84;
              sub_22042A630();
              v83[3] = sub_22042A8C0();
              sub_22042A900();
              if (__OFADD__(sub_22042A950(), v76))
              {
                goto LABEL_43;
              }

              v84 = sub_22042A860();
              sub_22042A990();
              v83[2] = v74;
              sub_22042A980();
              sub_22042A960();
              (*v85)(v72, v89);
              v7 = v98;
              (*v88)(v99, v98);
              (*v83[0])(v71, v97, v7);
              goto LABEL_35;
            }

            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
          }

          v77 = v89;
          v78 = v90;
        }

        else
        {
          swift_unknownObjectRelease();
          v77 = v61;
          v78 = v62;
        }

        (*v85)(v78, v77);
        v7 = v98;
        (*v53)(v100, v99, v98);
      }

      else
      {
        (*v53)(v100, v54, v7);
        (*v88)(v56, v7);
      }

LABEL_35:
      v101 = v50;
      v80 = v50[2];
      v79 = v50[3];
      if (v80 >= v79 >> 1)
      {
        sub_2203CEB0C(v79 > 1, v80 + 1, 1);
        v50 = v101;
      }

      v50[2] = v80 + 1;
      v81 = v91;
      (*v53)(v50 + v92 + v80 * v91, v100, v7);
      v52 += v81;
      if (!--v49)
      {

        return v50;
      }
    }
  }

  v26 = (a2 + 40);
  v27 = MEMORY[0x277D84F98];
  while (1)
  {
    v29 = *(v26 - 1);
    v28 = *v26;
    v30 = v27[2];

    if (!v30 || (v31 = sub_2203FFB78(v29, v28), (v32 & 1) == 0))
    {
      v34 = 1;
      goto LABEL_11;
    }

    v33 = *(v27[7] + 8 * v31);
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101 = v27;
    v36 = sub_2203FFB78(v29, v28);
    v38 = v27[2];
    v39 = (v37 & 1) == 0;
    v40 = __OFADD__(v38, v39);
    v41 = v38 + v39;
    if (v40)
    {
      goto LABEL_41;
    }

    v42 = v37;
    if (v27[3] >= v41)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v47 = v36;
        sub_2204017A8();
        v36 = v47;
      }
    }

    else
    {
      sub_220400B10(v41, isUniquelyReferenced_nonNull_native);
      v36 = sub_2203FFB78(v29, v28);
      if ((v42 & 1) != (v43 & 1))
      {
        goto LABEL_44;
      }
    }

    v7 = v98;
    v27 = v101;
    if (v42)
    {
      *(v101[7] + 8 * v36) = v34;
    }

    else
    {
      v101[(v36 >> 6) + 8] |= 1 << v36;
      v44 = (v27[6] + 16 * v36);
      *v44 = v29;
      v44[1] = v28;
      *(v27[7] + 8 * v36) = v34;
      v45 = v27[2];
      v40 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      if (v40)
      {
        goto LABEL_42;
      }

      v27[2] = v46;
    }

    v26 += 2;
    if (!--v25)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_22042BF70();
  __break(1u);
  return result;
}

uint64_t sub_22041E420()
{
  v1 = (*v0 + OBJC_IVAR____TtC21StocksPersonalization18NewsHeadlineScorer_newsPersonalizationScorer);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  return sub_22042AA10();
}

uint64_t sub_22041E4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_22042A750();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22041E568@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22042A740();
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  MEMORY[0x28223BE20](v6, v7);
  v8 = sub_22042BA70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2203C3120(0, &qword_280FA28A8, MEMORY[0x277D692F8], MEMORY[0x277D83D88]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = v30 - v17;
  if (([v1 respondsToSelector_] & 1) != 0 && (v19 = objc_msgSend(v1, sel_stocksFields)) != 0 && (v20 = objc_msgSend(v19, sel_stocksScoresJSON), swift_unknownObjectRelease(), v20))
  {
    v30[0] = a1;
    sub_22042BA30();

    v21 = sub_22042A380();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_22042A370();
    sub_22042BA60();
    v24 = sub_22042BA40();
    v26 = v25;
    result = (*(v9 + 8))(v13, v8);
    if (v26 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {

      v28 = sub_22042A750();
      sub_2204215E8(&qword_280FA28B0, MEMORY[0x277D692F8]);
      sub_22042A360();
      sub_2203DF298(v24, v26);

      v29 = *(v28 - 8);
      (*(v29 + 56))(v18, 0, 1, v28);
      return (*(v29 + 32))(v30[0], v18, v28);
    }
  }

  else
  {
    sub_22042A720();
    sub_22042A720();
    return sub_22042A690();
  }

  return result;
}

uint64_t ScorableHeadline.sourceChannelID.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t ScorableHeadline.publishedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ScorableHeadline(0) + 48);
  v4 = sub_22042A5B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *ScorableHeadline.newsScoreProfile.getter()
{
  v1 = *(v0 + *(type metadata accessor for ScorableHeadline(0) + 60));
  v2 = v1;
  return v1;
}

double ScorableHeadline.newsPersonalizationScore.getter()
{
  v1 = *(v0 + *(type metadata accessor for ScorableHeadline(0) + 60));
  if (!v1)
  {
    return 0.0;
  }

  [v1 personalizationScore];
  return result;
}

uint64_t sub_22041EB94()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

double sub_22041EBCC(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 60));
  if (!v2)
  {
    return 0.0;
  }

  [v2 personalizationScore];
  return result;
}

uint64_t sub_22041EC10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_22042A5B0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

char *sub_22041ECD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2203C38AC(0, &qword_280FA2560, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_22041EDF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2203C38AC(0, &qword_280FA01D8, MEMORY[0x277D83A90], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_22041EF44(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_22042164C();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2203C38AC(0, &qword_280FA25C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_22041F0B8(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_2203C3120(0, a5, a6, MEMORY[0x277D84560]);
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

uint64_t sub_22041F2AC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_22042A9A0();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_22041F35C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22042B130();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_2204215E8(&qword_280FA2370, MEMORY[0x277CFBAD0]);
  v37 = a2;
  v14 = sub_22042B9E0();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_2204215E8(&qword_280FA2368, MEMORY[0x277CFBAD0]);
      v24 = sub_22042BA10();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_22041FD30(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_22041F63C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_22042BFC0();
  sub_22042BAA0();
  v9 = sub_22042BFE0();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_22042BF50() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_22041FFD4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22041F78C(uint64_t a1)
{
  v2 = v1;
  v42 = sub_22042B130();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_22042136C();
  result = sub_22042BD50();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_2204215E8(&qword_280FA2370, MEMORY[0x277CFBAD0]);
      result = sub_22042B9E0();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_22041FADC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_220421760();
  result = sub_22042BD50();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_22042BFC0();
      sub_22042BAA0();
      result = sub_22042BFE0();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_22041FD30(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_22042B130();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22041F78C(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_2204236D4();
      goto LABEL_12;
    }

    sub_220420154(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_2204215E8(&qword_280FA2370, MEMORY[0x277CFBAD0]);
  v16 = sub_22042B9E0();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_2204215E8(&qword_280FA2368, MEMORY[0x277CFBAD0]);
      v24 = sub_22042BA10();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22042BF60();
  __break(1u);
  return result;
}

uint64_t sub_22041FFD4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22041FADC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2204238FC();
      goto LABEL_16;
    }

    sub_220420464(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_22042BFC0();
  sub_22042BAA0();
  result = sub_22042BFE0();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_22042BF50();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_22042BF60();
  __break(1u);
  return result;
}

uint64_t sub_220420154(uint64_t a1)
{
  v2 = v1;
  v38 = sub_22042B130();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_22042136C();
  v11 = sub_22042BD50();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_2204215E8(&qword_280FA2370, MEMORY[0x277CFBAD0]);
      result = sub_22042B9E0();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_220420464(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_220421760();
  result = sub_22042BD50();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_22042BFC0();

      sub_22042BAA0();
      result = sub_22042BFE0();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_220420690(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2203FFB78(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_220401518();
      goto LABEL_7;
    }

    sub_22040077C(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_2203FFB78(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_22042BF70();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_22042A9A0();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_22041F2AC(v12, a2, a3, a1, v18);
}

uint64_t sub_220420810(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_2204208BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_220420940(uint64_t a1, uint64_t a2)
{
  sub_2203C3120(0, &qword_280FA28A0, MEMORY[0x277D693A8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2204209D4()
{
  if (!qword_280FA0388)
  {
    sub_2203C3314(255, &qword_280FA25C0, &protocolRef_FCHeadlineProviding);
    sub_22042A9A0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280FA0388);
    }
  }
}

uint64_t sub_220420A54(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22042BF50() & 1;
  }
}

uint64_t sub_220420B00()
{
  result = sub_22042A830();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_22042A790();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_220420C44()
{
  sub_2203C3314(319, &qword_280FA25C0, &protocolRef_FCHeadlineProviding);
  if (v0 <= 0x3F)
  {
    sub_2203CFDB8(319, &unk_280FA28C8);
    if (v1 <= 0x3F)
    {
      sub_220420DE4(319, qword_280FA2600, &unk_280FA28C8, MEMORY[0x277D69258], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_2203C38AC(319, &qword_280FA25C8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_22042A5B0();
          if (v4 <= 0x3F)
          {
            sub_2203C3120(319, &qword_280FA25A0, sub_220420E4C, MEMORY[0x277D83D88]);
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

void sub_220420DE4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2203CFDB8(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_220420E4C()
{
  result = qword_280FA25A8;
  if (!qword_280FA25A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280FA25A8);
  }

  return result;
}

void sub_220420EC0()
{
  sub_22042A750();
  if (v0 <= 0x3F)
  {
    sub_2203C3120(319, &unk_280FA25F0, MEMORY[0x277D693A8], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_2203C3314(319, &qword_280FA25B8, &protocolRef_FCFeedPersonalizingItem);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_220420FC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2203C3120(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_220421034@<X0>(void *a1@<X8>)
{
  result = swift_getAtKeyPath();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

unint64_t sub_220421078()
{
  result = qword_280FA0420;
  if (!qword_280FA0420)
  {
    sub_2203C3120(255, &qword_280FA0428, type metadata accessor for StocksTabiArticleData, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FA0420);
  }

  return result;
}

uint64_t sub_220421100(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_220421160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  v8 = *(a1 + 208);
  v16[12] = *(a1 + 192);
  v16[13] = v8;
  v17 = *(a1 + 224);
  v9 = *(a1 + 144);
  v16[8] = *(a1 + 128);
  v16[9] = v9;
  v10 = *(a1 + 176);
  v16[10] = *(a1 + 160);
  v16[11] = v10;
  v11 = *(a1 + 80);
  v16[4] = *(a1 + 64);
  v16[5] = v11;
  v12 = *(a1 + 112);
  v16[6] = *(a1 + 96);
  v16[7] = v12;
  v13 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v13;
  v14 = *(a1 + 48);
  v16[2] = *(a1 + 32);
  v16[3] = v14;
  return sub_220419354(v16, v3, v4, v5, v6, v7, a2);
}

uint64_t sub_2204211D0(uint64_t a1)
{
  v2 = sub_22042B130();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  v13 = sub_2204215E8(&qword_280FA2370, MEMORY[0x277CFBAD0]);
  result = MEMORY[0x223D7BF30](v12, v2, v13);
  v21 = result;
  if (v12)
  {
    v17 = *(v3 + 16);
    v15 = v3 + 16;
    v16 = v17;
    v18 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v19 = *(v15 + 56);
    do
    {
      v16(v8, v18, v2);
      sub_22041F35C(v11, v8);
      (*(v15 - 8))(v11, v2);
      v18 += v19;
      --v12;
    }

    while (v12);
    return v21;
  }

  return result;
}