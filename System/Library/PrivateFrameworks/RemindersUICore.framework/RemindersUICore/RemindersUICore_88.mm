uint64_t sub_21D92E8D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a4;

  v8 = a4;
  TTRSearchResultCollector.start(completionHandler:)(sub_21D92EF00, v7);
}

void sub_21D92E978(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  swift_beginAccess();
  v9 = sub_21DBF8E0C();
  sub_21D65F7F0(v9, sub_21D65F928, 0, (a3 + 16));
  swift_endAccess();
  swift_beginAccess();
  v10 = *(a4 + 16);
  *(a4 + 16) = a2;
  v11 = a2;

  dispatch_group_leave(a5);
}

uint64_t TTRSearchResultCollector.deinit()
{

  sub_21D0D0E88(*(v0 + 32));
  return v0;
}

uint64_t TTRSearchResultCollector.__deallocating_deinit()
{

  sub_21D0D0E88(*(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t TTRSearchResultCollector.searchQueryPerformer(_:didFindItems:)(uint64_t result)
{
  if (*(v1 + 24) == result)
  {
    swift_beginAccess();
    v2 = sub_21DBF8E0C();
    sub_21D65F7F0(v2, sub_21D65F928, 0, (v1 + 16));
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_21D92EB4C(uint64_t result)
{
  if (*(v1 + 24) == result)
  {
    swift_beginAccess();
    v2 = sub_21DBF8E0C();
    sub_21D65F7F0(v2, sub_21D65F928, 0, (v1 + 16));
    return swift_endAccess();
  }

  return result;
}

unint64_t sub_21D92EBE4()
{
  result = qword_27CE63E20;
  if (!qword_27CE63E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE63E20);
  }

  return result;
}

void sub_21D92EC38(void *a1)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    if (a1)
    {
      v4 = a1;
      v5 = sub_21D178758(MEMORY[0x277D84F90]);
      v6 = a1;
      v2(v5, a1);

      sub_21D0D0E88(v2);
    }

    else
    {
      swift_beginAccess();
      v7 = sub_21DBF8E0C();
      v2(v7, 0);

      sub_21D0D0E88(v2);
    }
  }
}

uint64_t sub_21D92ED94(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    return sub_21DBF8E0C();
  }

  return result;
}

uint64_t sub_21D92EDBC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_21D92EDD4(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D92ED94(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for TTRSearchResultCollectorError(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D92ED94(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_21D92EDBC(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for TTRSearchResultCollectorError(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_21D92EDBC(v4, v5, v6);
  return a1;
}

uint64_t sub_21D92EEC0(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_21D92EED8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t TTRTreeStorageTemporaryNodeLocation.index.getter(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v3, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_21DBFBA8C();
    v6 = *&v3[*(swift_getTupleTypeMetadata2() + 48)];
  }

  else
  {
    v5 = sub_21DBFBA8C();
    v6 = 0;
  }

  (*(*(v5 - 8) + 8))(v3, v5);
  return v6;
}

uint64_t TTRTreeStorageTemporaryNodeLocation.parent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x28223BE20](a1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v3);
  v7 = sub_21DBFBA8C();
  return (*(*(v7 - 8) + 32))(a2, v5, v7);
}

uint64_t TTRTreeStorageTemporaryNodeValue.init(item:auxiliaryData:location:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  v10 = type metadata accessor for TTRTreeStorageTemporaryNodeValue();
  (*(*(a5 - 8) + 32))(a6 + *(v10 + 52), a2, a5);
  v11 = *(v10 + 56);
  v12 = type metadata accessor for TTRTreeStorageTemporaryNodeLocation();
  return (*(*(v12 - 8) + 32))(a6 + v11, a3, v12);
}

uint64_t TTRTreeStorageTemporaryNodeValue.location.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = type metadata accessor for TTRTreeStorageTemporaryNodeLocation();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t *sub_21D92F3E0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = *(v4 - 8);
  v8 = *(v7 + 80);
  v9 = v6 + v8;
  v10 = *(v7 + 64);
  v11 = *(v5 + 80);
  if (*(v5 + 84))
  {
    v12 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v12 = v6 + 1;
  }

  if (((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v14 = v13 + ((((v6 + v8) & ~v8) + v10 + (v11 | 7)) & ~(v11 | 7)) + 1;
  v15 = v11 | v8;
  if (v15 > 7 || ((*(v5 + 80) | *(v7 + 80)) & 0x100000) != 0 || v14 > 0x18)
  {
    v18 = *a2;
    *a1 = *a2;
    v19 = (v18 + ((v15 & 0xF8 ^ 0x1F8) & (v15 + 16)));

    return v19;
  }

  v36 = *(v5 + 84);
  v37 = *(*(*(a3 + 16) - 8) + 64);
  v20 = ~v8;
  v39 = *(a3 + 16);
  v35 = *(v5 + 16);
  v35(a1, a2, v39);
  v38 = a1;
  v22 = (a1 + v9) & v20;
  v23 = (a2 + v9) & v20;
  (*(v7 + 16))(v22, v23, v4);
  v24 = (v10 + 7 + v22) & 0xFFFFFFFFFFFFFFF8;
  v25 = ((v10 + 7 + v23) & 0xFFFFFFFFFFFFFFF8);
  v26 = v25[v13];
  if (v26 < 2)
  {
    v19 = v38;
    v29 = v39;
    goto LABEL_33;
  }

  if (v13 <= 3)
  {
    v27 = v13;
  }

  else
  {
    v27 = 4;
  }

  if (v27 <= 1)
  {
    v19 = v38;
    v29 = v39;
    if (!v27)
    {
      goto LABEL_33;
    }

    v28 = *v25;
  }

  else
  {
    if (v27 == 2)
    {
      v28 = *v25;
    }

    else if (v27 == 3)
    {
      v28 = *v25 | (v25[2] << 16);
    }

    else
    {
      v28 = *v25;
    }

    v19 = v38;
    v29 = v39;
  }

  v30 = (v28 | ((v26 - 2) << (8 * v13))) + 2;
  v31 = v28 + 2;
  if (v13 >= 4)
  {
    v26 = v31;
  }

  else
  {
    v26 = v30;
  }

LABEL_33:
  v32 = (*(v5 + 48))(v25, 1, v29);
  if (v26 == 1)
  {
    if (v32)
    {
      memcpy(((v10 + 7 + v22) & 0xFFFFFFFFFFFFFFF8), v25, v12);
    }

    else
    {
      v35(((v10 + 7 + v22) & 0xFFFFFFFFFFFFFFF8), v25, v39);
      (*(v5 + 56))((v10 + 7 + v22) & 0xFFFFFFFFFFFFFFF8, 0, 1, v39);
    }

    v33 = 7;
    if (!v36)
    {
      v33 = 8;
    }

    *((v37 + v33 + v24) & 0xFFFFFFFFFFFFFFF8) = *(&v25[v37 + v33] & 0xFFFFFFFFFFFFFFF8);
    *(v24 + v13) = 1;
  }

  else
  {
    if (v32)
    {
      memcpy(((v10 + 7 + v22) & 0xFFFFFFFFFFFFFFF8), v25, v12);
    }

    else
    {
      v35(((v10 + 7 + v22) & 0xFFFFFFFFFFFFFFF8), v25, v39);
      (*(v5 + 56))((v10 + 7 + v22) & 0xFFFFFFFFFFFFFFF8, 0, 1, v39);
    }

    *(v24 + v13) = 0;
  }

  return v19;
}

uint64_t sub_21D92F754(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v14 = *(v5 + 8);
  v14(a1, v4);
  v6 = *(v5 + 64) + a1;
  v7 = *(*(a2 + 24) - 8);
  v8 = v7 + 8;
  v9 = (v6 + *(v7 + 80)) & ~*(v7 + 80);
  (*(v7 + 8))(v9);
  v10 = *(v8 + 56);
  v11 = *(v5 + 80) & 0xF8 | 7;
  v12 = v9 + v10 + v11;
  result = (*(v5 + 48))(v12 & ~v11, 1, v4);
  if (!result)
  {

    return (v14)(v12 & ~v11, v4);
  }

  return result;
}

uint64_t sub_21D92F8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = v7;
  v31 = *(v7 + 16);
  v31(a1, a2, v6);
  v9 = *(v7 + 64);
  v10 = *(*(a3 + 24) - 8);
  v11 = v10 + 16;
  v12 = *(v10 + 80);
  v13 = (v9 + v12 + a1) & ~v12;
  v14 = (v9 + v12 + a2) & ~v12;
  (*(v10 + 16))(v13, v14);
  v15 = *(v8 + 84);
  v16 = *(v8 + 80) & 0xF8 | 7;
  v17 = *(v11 + 48) + v16;
  v18 = ((v17 + v13) & ~v16);
  v19 = ((v17 + v14) & ~v16);
  if (v15)
  {
    v20 = v9;
  }

  else
  {
    v20 = v9 + 1;
  }

  if (((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = ((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v22 = v19[v21];
  if (v22 >= 2)
  {
    if (v21 <= 3)
    {
      v23 = v21;
    }

    else
    {
      v23 = 4;
    }

    if (v23 <= 1)
    {
      if (!v23)
      {
        goto LABEL_22;
      }

      v24 = *v19;
    }

    else if (v23 == 2)
    {
      v24 = *v19;
    }

    else if (v23 == 3)
    {
      v24 = *v19 | (v19[2] << 16);
    }

    else
    {
      v24 = *v19;
    }

    v25 = (v24 | ((v22 - 2) << (8 * v21))) + 2;
    v26 = v24 + 2;
    if (v21 >= 4)
    {
      v22 = v26;
    }

    else
    {
      v22 = v25;
    }
  }

LABEL_22:
  v27 = (*(v8 + 48))(v19, 1, v6);
  if (v22 == 1)
  {
    if (v27)
    {
      memcpy(v18, v19, v20);
    }

    else
    {
      v31(v18, v19, v6);
      (*(v8 + 56))(v18, 0, 1, v6);
    }

    v28 = 7;
    if (!v15)
    {
      v28 = 8;
    }

    *((v18 + v9 + v28) & 0xFFFFFFFFFFFFFFF8) = *(&v19[v9 + v28] & 0xFFFFFFFFFFFFFFF8);
    v29 = 1;
  }

  else
  {
    if (v27)
    {
      memcpy(v18, v19, v20);
    }

    else
    {
      v31(v18, v19, v6);
      (*(v8 + 56))(v18, 0, 1, v6);
    }

    v29 = 0;
  }

  *(v18 + v21) = v29;
  return a1;
}

uint64_t sub_21D92FB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = v7;
  (*(v7 + 24))(a1, a2, v6);
  v9 = *(v7 + 64);
  v10 = *(*(a3 + 24) - 8);
  v11 = v10 + 24;
  v12 = *(v10 + 80);
  v13 = (v9 + v12 + a1) & ~v12;
  v14 = (v9 + v12 + a2) & ~v12;
  (*(v10 + 24))(v13, v14);
  v15 = *(v8 + 80) & 0xF8 | 7;
  v16 = *(v11 + 40) + v15;
  v17 = ((v16 + v13) & ~v15);
  v18 = ((v16 + v14) & ~v15);
  if (v17 == v18)
  {
    return a1;
  }

  v33 = *(v8 + 84);
  if (v33)
  {
    v19 = v9;
  }

  else
  {
    v19 = v9 + 1;
  }

  if (((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = ((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v34 = *(v8 + 48);
  if (!v34(v17, 1, v6))
  {
    (*(v8 + 8))(v17, v6);
  }

  v21 = v20;
  v22 = *(v18 + v20);
  if (v22 < 2)
  {
    v23 = v21;
  }

  else
  {
    v23 = v21;
    if (v21 <= 3)
    {
      v24 = v21;
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        v26 = *v18;
        v25 = v21;
      }

      else
      {
        v25 = v21;
        if (v24 == 3)
        {
          v26 = *v18 | (*(v18 + 2) << 16);
        }

        else
        {
          v26 = *v18;
        }
      }

      goto LABEL_23;
    }

    if (v24)
    {
      v26 = *v18;
      v25 = v21;
LABEL_23:
      v27 = (v26 | ((v22 - 2) << (8 * v25))) + 2;
      v28 = v26 + 2;
      if (v25 >= 4)
      {
        v22 = v28;
      }

      else
      {
        v22 = v27;
      }
    }
  }

  v29 = v34(v18, 1, v6);
  if (v22 == 1)
  {
    if (v29)
    {
      memcpy(v17, v18, v19);
    }

    else
    {
      (*(v8 + 16))(v17, v18, v6);
      (*(v8 + 56))(v17, 0, 1, v6);
    }

    v30 = 7;
    if (!v33)
    {
      v30 = 8;
    }

    *((v17 + v9 + v30) & 0xFFFFFFFFFFFFFFF8) = *((v18 + v9 + v30) & 0xFFFFFFFFFFFFFFF8);
    v31 = 1;
  }

  else
  {
    if (v29)
    {
      memcpy(v17, v18, v19);
    }

    else
    {
      (*(v8 + 16))(v17, v18, v6);
      (*(v8 + 56))(v17, 0, 1, v6);
    }

    v31 = 0;
  }

  *(v17 + v23) = v31;
  return a1;
}

uint64_t sub_21D92FECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = v7;
  v31 = *(v7 + 32);
  v31(a1, a2, v6);
  v9 = *(v7 + 64);
  v10 = *(*(a3 + 24) - 8);
  v11 = v10 + 32;
  v12 = *(v10 + 80);
  v13 = (v9 + v12 + a1) & ~v12;
  v14 = (v9 + v12 + a2) & ~v12;
  (*(v10 + 32))(v13, v14);
  v15 = *(v8 + 84);
  v16 = *(v8 + 80) & 0xF8 | 7;
  v17 = *(v11 + 32) + v16;
  v18 = ((v17 + v13) & ~v16);
  v19 = ((v17 + v14) & ~v16);
  if (v15)
  {
    v20 = v9;
  }

  else
  {
    v20 = v9 + 1;
  }

  if (((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = ((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v22 = v19[v21];
  if (v22 >= 2)
  {
    if (v21 <= 3)
    {
      v23 = v21;
    }

    else
    {
      v23 = 4;
    }

    if (v23 <= 1)
    {
      if (!v23)
      {
        goto LABEL_22;
      }

      v24 = *v19;
    }

    else if (v23 == 2)
    {
      v24 = *v19;
    }

    else if (v23 == 3)
    {
      v24 = *v19 | (v19[2] << 16);
    }

    else
    {
      v24 = *v19;
    }

    v25 = (v24 | ((v22 - 2) << (8 * v21))) + 2;
    v26 = v24 + 2;
    if (v21 >= 4)
    {
      v22 = v26;
    }

    else
    {
      v22 = v25;
    }
  }

LABEL_22:
  v27 = (*(v8 + 48))(v19, 1, v6);
  if (v22 == 1)
  {
    if (v27)
    {
      memcpy(v18, v19, v20);
    }

    else
    {
      v31(v18, v19, v6);
      (*(v8 + 56))(v18, 0, 1, v6);
    }

    v28 = 7;
    if (!v15)
    {
      v28 = 8;
    }

    *((v18 + v9 + v28) & 0xFFFFFFFFFFFFFFF8) = *(&v19[v9 + v28] & 0xFFFFFFFFFFFFFFF8);
    v29 = 1;
  }

  else
  {
    if (v27)
    {
      memcpy(v18, v19, v20);
    }

    else
    {
      v31(v18, v19, v6);
      (*(v8 + 56))(v18, 0, 1, v6);
    }

    v29 = 0;
  }

  *(v18 + v21) = v29;
  return a1;
}

uint64_t sub_21D93019C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = v7;
  (*(v7 + 40))(a1, a2, v6);
  v9 = *(v7 + 64);
  v10 = *(*(a3 + 24) - 8);
  v11 = v10 + 40;
  v12 = *(v10 + 80);
  v13 = (v9 + v12 + a1) & ~v12;
  v14 = (v9 + v12 + a2) & ~v12;
  (*(v10 + 40))(v13, v14);
  v15 = *(v8 + 80) & 0xF8 | 7;
  v16 = *(v11 + 24) + v15;
  v17 = ((v16 + v13) & ~v15);
  v18 = ((v16 + v14) & ~v15);
  if (v17 == v18)
  {
    return a1;
  }

  v33 = *(v8 + 84);
  if (v33)
  {
    v19 = v9;
  }

  else
  {
    v19 = v9 + 1;
  }

  if (((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = ((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v34 = *(v8 + 48);
  if (!v34(v17, 1, v6))
  {
    (*(v8 + 8))(v17, v6);
  }

  v21 = v20;
  v22 = *(v18 + v20);
  if (v22 < 2)
  {
    v23 = v21;
  }

  else
  {
    v23 = v21;
    if (v21 <= 3)
    {
      v24 = v21;
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        v26 = *v18;
        v25 = v21;
      }

      else
      {
        v25 = v21;
        if (v24 == 3)
        {
          v26 = *v18 | (*(v18 + 2) << 16);
        }

        else
        {
          v26 = *v18;
        }
      }

      goto LABEL_23;
    }

    if (v24)
    {
      v26 = *v18;
      v25 = v21;
LABEL_23:
      v27 = (v26 | ((v22 - 2) << (8 * v25))) + 2;
      v28 = v26 + 2;
      if (v25 >= 4)
      {
        v22 = v28;
      }

      else
      {
        v22 = v27;
      }
    }
  }

  v29 = v34(v18, 1, v6);
  if (v22 == 1)
  {
    if (v29)
    {
      memcpy(v17, v18, v19);
    }

    else
    {
      (*(v8 + 32))(v17, v18, v6);
      (*(v8 + 56))(v17, 0, 1, v6);
    }

    v30 = 7;
    if (!v33)
    {
      v30 = 8;
    }

    *((v17 + v9 + v30) & 0xFFFFFFFFFFFFFFF8) = *((v18 + v9 + v30) & 0xFFFFFFFFFFFFFFF8);
    v31 = 1;
  }

  else
  {
    if (v29)
    {
      memcpy(v17, v18, v19);
    }

    else
    {
      (*(v8 + 32))(v17, v18, v6);
      (*(v8 + 56))(v17, 0, 1, v6);
    }

    v31 = 0;
  }

  *(v17 + v23) = v31;
  return a1;
}

uint64_t sub_21D9304E0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v5)
  {
    v12 = *(v4 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0xFE)
  {
    v12 = 254;
  }

  if (v5)
  {
    v13 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v13 = v9 + 1;
  }

  if (((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v9 + v10;
  v16 = *(v4 + 80) & 0xF8 | 7;
  v17 = a2 - v12;
  if (a2 <= v12)
  {
    goto LABEL_36;
  }

  v18 = v14 + ((v11 + v16 + (v15 & ~v10)) & ~v16) + 1;
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v22 < 2)
    {
LABEL_36:
      if (v5 == v12)
      {
        return (*(v4 + 48))();
      }

      v26 = (a1 + v15) & ~v10;
      if (v8 == v12)
      {
        return (*(v7 + 48))(v26, v8, v6);
      }

      if (v5)
      {
        v27 = *(*(*(a3 + 16) - 8) + 64);
      }

      else
      {
        v27 = v9 + 1;
      }

      if (((v27 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v27)
      {
        v27 = ((v27 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
      }

      v28 = *(((v26 + v11 + v16) & ~v16) + v27);
      if (v28 >= 2)
      {
        return (v28 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_36;
  }

LABEL_23:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v24 = v18;
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v25 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v25 = *a1;
      }
    }

    else if (v24 == 1)
    {
      v25 = *a1;
    }

    else
    {
      v25 = *a1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v12 + (v25 | v23) + 1;
}

void sub_21D930744(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v5 + 80) & 0xF8 | 7;
  if (v6)
  {
    v15 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v15 = v9 + 1;
  }

  if (((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v15)
  {
    v15 = ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v16 = v15 + ((v11 + v14 + ((v9 + v10) & ~v10)) & ~v14) + 1;
  v17 = a3 >= v13;
  v18 = a3 - v13;
  if (v18 != 0 && v17)
  {
    if (v16 <= 3)
    {
      v23 = ((v18 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
      if (HIWORD(v23))
      {
        v19 = 4;
      }

      else
      {
        if (v23 < 0x100)
        {
          v24 = 1;
        }

        else
        {
          v24 = 2;
        }

        if (v23 >= 2)
        {
          v19 = v24;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v13 < a2)
  {
    v20 = ~v13 + a2;
    if (v16 < 4)
    {
      v22 = (v20 >> (8 * v16)) + 1;
      if (v15 + ((v11 + v14 + ((v9 + v10) & ~v10)) & ~v14) != -1)
      {
        v25 = v20 & ~(-1 << (8 * v16));
        v26 = a1;
        bzero(a1, v16);
        a1 = v26;
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *v26 = v25;
            if (v19 > 1)
            {
LABEL_62:
              if (v19 == 2)
              {
                *&a1[v16] = v22;
              }

              else
              {
                *&a1[v16] = v22;
              }

              return;
            }
          }

          else
          {
            *v26 = v20;
            if (v19 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *v26 = v25;
        v26[2] = BYTE2(v25);
      }

      if (v19 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v21 = a1;
      bzero(a1, v16);
      a1 = v21;
      *v21 = v20;
      v22 = 1;
      if (v19 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v19)
    {
      a1[v16] = v22;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *&a1[v16] = 0;
LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!v19)
  {
    goto LABEL_38;
  }

  a1[v16] = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v6 == v13)
  {
    v27 = *(v5 + 56);

    v27();
  }

  else
  {
    v28 = &a1[v9 + v10] & ~v10;
    if (v8 == v13)
    {
      v29 = *(v7 + 56);

      v29(v28);
    }

    else
    {
      v30 = ((v28 + v11 + v14) & ~v14);
      if (v6)
      {
        v31 = v9;
      }

      else
      {
        v31 = v9 + 1;
      }

      if (((v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v31)
      {
        LODWORD(v31) = ((v31 + 7) & 0xFFFFFFF8) + 8;
      }

      if (a2 > 0xFE)
      {
        v32 = (v31 + 1);
        if (v32 <= 3)
        {
          v33 = ~(-1 << (8 * v32));
        }

        else
        {
          v33 = -1;
        }

        if (v32)
        {
          v34 = v33 & (a2 - 255);
          if (v32 <= 3)
          {
            v35 = v32;
          }

          else
          {
            v35 = 4;
          }

          bzero(v30, v32);
          if (v35 > 2)
          {
            if (v35 == 3)
            {
              *v30 = v34;
              v30[2] = BYTE2(v34);
            }

            else
            {
              *v30 = v34;
            }
          }

          else if (v35 == 1)
          {
            *v30 = v34;
          }

          else
          {
            *v30 = v34;
          }
        }
      }

      else
      {
        v30[v15] = -a2;
      }
    }
  }
}

void *sub_21D930B08(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  if (((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v9 = *(v6 + 80);
  if ((v9 & 0x1000F8) != 0 || v8 + 1 > 0x18)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + (((v9 & 0xF8) + 23) & ~(v9 & 0xF8) & 0x1F8));

    return a1;
  }

  v12 = a2[v8];
  if (v12 >= 2)
  {
    if (v8 <= 3)
    {
      v13 = v8;
    }

    else
    {
      v13 = 4;
    }

    if (v13 <= 1)
    {
      if (!v13)
      {
        goto LABEL_28;
      }

      v14 = *a2;
    }

    else if (v13 == 2)
    {
      v14 = *a2;
    }

    else if (v13 == 3)
    {
      v14 = *a2 | (a2[2] << 16);
    }

    else
    {
      v14 = *a2;
    }

    v15 = (v14 | ((v12 - 2) << (8 * v8))) + 2;
    v16 = v14 + 2;
    if (v8 >= 4)
    {
      v12 = v16;
    }

    else
    {
      v12 = v15;
    }
  }

LABEL_28:
  v17 = (*(v6 + 48))(a2, 1, v5);
  if (v12 == 1)
  {
    if (v17)
    {
      memcpy(a1, a2, v7);
    }

    else
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
    }

    *((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) = *(&a2[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
    *(a1 + v8) = 1;
  }

  else
  {
    if (v17)
    {
      memcpy(a1, a2, v7);
    }

    else
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
    }

    *(a1 + v8) = 0;
  }

  return a1;
}

void *sub_21D930D6C(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  if (((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v9 = a2[v8];
  if (v9 >= 2)
  {
    if (v8 <= 3)
    {
      v10 = v8;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_22;
      }

      v11 = *a2;
    }

    else if (v10 == 2)
    {
      v11 = *a2;
    }

    else if (v10 == 3)
    {
      v11 = *a2 | (a2[2] << 16);
    }

    else
    {
      v11 = *a2;
    }

    v12 = (v11 | ((v9 - 2) << (8 * v8))) + 2;
    v13 = v11 + 2;
    if (v8 >= 4)
    {
      v9 = v13;
    }

    else
    {
      v9 = v12;
    }
  }

LABEL_22:
  v14 = (*(v6 + 48))(a2, 1, v5);
  if (v9 == 1)
  {
    if (v14)
    {
      memcpy(a1, a2, v7);
    }

    else
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
    }

    *((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) = *(&a2[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
    v15 = 1;
  }

  else
  {
    if (v14)
    {
      memcpy(a1, a2, v7);
    }

    else
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
    }

    v15 = 0;
  }

  *(a1 + v8) = v15;
  return a1;
}

unsigned __int16 *sub_21D930F90(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = v6;
  if (*(v6 + 84))
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = *(v6 + 64) + 1;
  }

  if (((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v10 = *(v6 + 48);
  if (!v10(a1, 1, v5))
  {
    (*(v7 + 8))(a1, v5);
  }

  v11 = *(a2 + v9);
  if (v11 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v13 = *a2;
      }

      else if (v12 == 3)
      {
        v13 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v13 = *a2;
      }

      goto LABEL_22;
    }

    if (v12)
    {
      v13 = *a2;
LABEL_22:
      v14 = (v13 | ((v11 - 2) << (8 * v9))) + 2;
      v15 = v13 + 2;
      if (v9 >= 4)
      {
        v11 = v15;
      }

      else
      {
        v11 = v14;
      }
    }
  }

  v16 = v10(a2, 1, v5);
  if (v11 == 1)
  {
    if (v16)
    {
      memcpy(a1, a2, v8);
    }

    else
    {
      (*(v7 + 16))(a1, a2, v5);
      (*(v7 + 56))(a1, 0, 1, v5);
    }

    *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    v17 = 1;
  }

  else
  {
    if (v16)
    {
      memcpy(a1, a2, v8);
    }

    else
    {
      (*(v7 + 16))(a1, a2, v5);
      (*(v7 + 56))(a1, 0, 1, v5);
    }

    v17 = 0;
  }

  *(a1 + v9) = v17;
  return a1;
}

void *sub_21D93120C(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  if (((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v9 = a2[v8];
  if (v9 >= 2)
  {
    if (v8 <= 3)
    {
      v10 = v8;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_22;
      }

      v11 = *a2;
    }

    else if (v10 == 2)
    {
      v11 = *a2;
    }

    else if (v10 == 3)
    {
      v11 = *a2 | (a2[2] << 16);
    }

    else
    {
      v11 = *a2;
    }

    v12 = (v11 | ((v9 - 2) << (8 * v8))) + 2;
    v13 = v11 + 2;
    if (v8 >= 4)
    {
      v9 = v13;
    }

    else
    {
      v9 = v12;
    }
  }

LABEL_22:
  v14 = (*(v6 + 48))(a2, 1, v5);
  if (v9 == 1)
  {
    if (v14)
    {
      memcpy(a1, a2, v7);
    }

    else
    {
      (*(v6 + 32))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
    }

    *((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) = *(&a2[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
    v15 = 1;
  }

  else
  {
    if (v14)
    {
      memcpy(a1, a2, v7);
    }

    else
    {
      (*(v6 + 32))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
    }

    v15 = 0;
  }

  *(a1 + v8) = v15;
  return a1;
}

unsigned __int16 *sub_21D931430(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = v6;
  if (*(v6 + 84))
  {
    v8 = *(v6 + 64);
  }

  else
  {
    v8 = *(v6 + 64) + 1;
  }

  if (((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v10 = *(v6 + 48);
  if (!v10(a1, 1, v5))
  {
    (*(v7 + 8))(a1, v5);
  }

  v11 = *(a2 + v9);
  if (v11 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v13 = *a2;
      }

      else if (v12 == 3)
      {
        v13 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v13 = *a2;
      }

      goto LABEL_22;
    }

    if (v12)
    {
      v13 = *a2;
LABEL_22:
      v14 = (v13 | ((v11 - 2) << (8 * v9))) + 2;
      v15 = v13 + 2;
      if (v9 >= 4)
      {
        v11 = v15;
      }

      else
      {
        v11 = v14;
      }
    }
  }

  v16 = v10(a2, 1, v5);
  if (v11 == 1)
  {
    if (v16)
    {
      memcpy(a1, a2, v8);
    }

    else
    {
      (*(v7 + 32))(a1, a2, v5);
      (*(v7 + 56))(a1, 0, 1, v5);
    }

    *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    v17 = 1;
  }

  else
  {
    if (v16)
    {
      memcpy(a1, a2, v8);
    }

    else
    {
      (*(v7 + 32))(a1, a2, v5);
      (*(v7 + 56))(a1, 0, 1, v5);
    }

    v17 = 0;
  }

  *(a1 + v9) = v17;
  return a1;
}

uint64_t sub_21D9316AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 84))
  {
    v4 = *(v3 + 64);
  }

  else
  {
    v4 = *(v3 + 64) + 1;
  }

  v5 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_28;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v10 < 2)
    {
LABEL_28:
      v12 = *(a1 + v5);
      if (v12 >= 2)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_28;
  }

LABEL_17:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 255;
}

void sub_21D931804(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  if (((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > v6)
  {
    v6 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v7 = v6 + 1;
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = ((a3 + ~(-1 << (8 * v7)) - 254) >> (8 * v7)) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v7 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v6 != -1)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_42:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v6] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_27;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

uint64_t sub_21D9319FC(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  if (*(v2 + 84))
  {
    v3 = *(v2 + 64);
  }

  else
  {
    v3 = *(v2 + 64) + 1;
  }

  v4 = ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v4 <= v3)
  {
    v4 = v3;
  }

  v5 = a1[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        return v5;
      }

      v8 = *a1;
    }

    else if (v7 == 2)
    {
      v8 = *a1;
    }

    else if (v7 == 3)
    {
      v8 = *a1 | (a1[2] << 16);
    }

    else
    {
      v8 = *a1;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    LODWORD(v5) = v8 + 2;
    if (v4 >= 4)
    {
      return v5;
    }

    else
    {
      return v9;
    }
  }

  return v5;
}

void sub_21D931ADC(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  if (((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (a2 <= 1)
  {
    a1[v7] = a2;
    return;
  }

  v8 = a2 - 2;
  if (v7 < 4)
  {
    a1[v7] = (v8 >> (8 * v7)) + 2;
    if (!v7)
    {
      return;
    }

    v8 &= ~(-1 << (8 * v7));
  }

  else
  {
    a1[v7] = 2;
  }

  if (v7 >= 4)
  {
    v9 = 4;
  }

  else
  {
    v9 = v7;
  }

  bzero(a1, v7);
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      *a1 = v8;
      a1[2] = BYTE2(v8);
    }

    else
    {
      *a1 = v8;
    }
  }

  else if (v9 == 1)
  {
    *a1 = v8;
  }

  else
  {
    *a1 = v8;
  }
}

uint64_t sub_21D931C04()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE63E30);
  v1 = __swift_project_value_buffer(v0, qword_27CE63E30);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t NSItemProvider.loadObject<A>(ofType:)()
{
  sub_21DBF82AC();
  sub_21DBF827C();
  sub_21D0CE468();
  v0 = sub_21DBFB12C();
  v1 = sub_21DBF826C();

  return v1;
}

void sub_21D931D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a6;
  v12[3] = a1;
  v12[4] = a2;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = swift_allocObject();
  v14[2] = a6;
  v14[3] = sub_21D932520;
  v14[4] = v12;
  v14[5] = a3;
  v14[6] = a4;
  v17[4] = sub_21D932558;
  v17[5] = v14;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_21D5F87C8;
  v17[3] = &block_descriptor_115;
  v15 = _Block_copy(v17);

  v16 = [a5 loadObjectOfClass:ObjCClassFromMetadata completionHandler:v15];
  _Block_release(v15);
}

void sub_21D931EC8(uint64_t a1, void *a2, void (*a3)(), uint64_t a4, void (*a5)(id))
{
  if (a1 && (v22 = a1, swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE70), (swift_dynamicCast() & 1) != 0))
  {
    a3();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27CE56E78 != -1)
    {
      swift_once();
    }

    v8 = sub_21DBF84BC();
    __swift_project_value_buffer(v8, qword_27CE63E30);
    v9 = a2;
    v10 = sub_21DBF84AC();
    v11 = sub_21DBFAEBC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136315138;
      if (a2)
      {
        swift_getErrorValue();
        v14 = sub_21DBFC74C();
        v16 = v15;
      }

      else
      {
        v16 = 0xE300000000000000;
        v14 = 7104878;
      }

      v17 = sub_21D0CDFB4(v14, v16, &v22);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_21D0C9000, v10, v11, "[NSItemProvider loadObject] failed {error: %s}", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223D46520](v13, -1, -1);
      MEMORY[0x223D46520](v12, -1, -1);
    }

    v18 = a2;
    if (!a2)
    {
      v19 = objc_opt_self();
      v20 = sub_21DBFA12C();
      v18 = [v19 internalErrorWithDebugDescription_];
    }

    v21 = a2;
    a5(v18);
  }
}

uint64_t sub_21D93214C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a2;
  v42 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63E50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = sub_21DBF843C();
  MEMORY[0x28223BE20](v10);
  v33 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = *(a3 + 16);
  if (!v15)
  {
    return 0;
  }

  v37 = &v31 - v14;
  v38 = v6;
  v16 = (v13 + 48);
  v17 = (v13 + 32);
  v34 = (v13 + 8);
  v41 = sub_21D176F0C();
  v18 = (a3 + 40);
  v19 = v39;
  v35 = v9;
  v36 = v16;
  v32 = v17;
  while (1)
  {
    v22 = *(v18 - 1);
    v21 = *v18;
    v45 = v42;
    v46 = v19;
    v43 = v22;
    v44 = v21;
    sub_21DBF8E0C();
    if (!sub_21DBFBB7C())
    {
      break;
    }

    sub_21DBF8E0C();
    sub_21DBF844C();
    v23 = *v16;
    if ((*v16)(v9, 1, v10) == 1)
    {

      v20 = v9;
LABEL_4:
      sub_21D3F983C(v20);
      goto LABEL_5;
    }

    v24 = v9;
    v25 = v37;
    v40 = *v17;
    v40(v37, v24, v10);
    sub_21DBF8E0C();
    v26 = v38;
    sub_21DBF844C();
    if (v23(v26, 1, v10) == 1)
    {

      (*v34)(v25, v10);
      v20 = v26;
      v19 = v39;
      v9 = v35;
      v16 = v36;
      goto LABEL_4;
    }

    v17 = v32;
    v27 = v33;
    v40(v33, v26, v10);
    v28 = sub_21DBF841C();

    v29 = *v34;
    (*v34)(v27, v10);
    v29(v25, v10);
    v19 = v39;
    v9 = v35;
    v16 = v36;
    if (v28)
    {
      return 1;
    }

LABEL_5:
    v18 += 2;
    if (!--v15)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_21D9324A0(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = [swift_getObjCClassFromMetadata() *a4];
  v7 = sub_21DBFA5EC();

  LOBYTE(v6) = sub_21D93214C(a1, a2, v7);

  return v6 & 1;
}

uint64_t sub_21D932520(uint64_t a1)
{
  v2 = *(v1 + 24);
  v4 = a1;
  return v2(&v4);
}

CGSize __swiftcall CGSize.aspectFitting(boundingSize:)(CGSize boundingSize)
{
  v3 = boundingSize.width / v1;
  v4 = boundingSize.height / v2;
  if (boundingSize.height / v2 >= boundingSize.width / v1)
  {
    if (v3 < v4)
    {
      boundingSize.height = v3 * v2;
    }
  }

  else
  {
    boundingSize.width = v4 * v1;
  }

  return boundingSize;
}

__C::CGRect __swiftcall CGSize.centered(in:)(__C::CGRect in)
{
  v3 = v2;
  v4 = v1;
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  v9 = CGRectGetMidX(in) - v1 * 0.5;
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v10 = CGRectGetMidY(v14) - v3 * 0.5;
  v11 = v9;
  v12 = v4;
  v13 = v3;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v10;
  result.origin.x = v11;
  return result;
}

CGSize __swiftcall CGSize.aspectFilling(minimumSize:)(CGSize minimumSize)
{
  v3 = minimumSize.width / v1;
  v4 = minimumSize.height / v2;
  if (minimumSize.width / v1 >= minimumSize.height / v2)
  {
    if (v4 < v3)
    {
      minimumSize.height = v3 * v2;
    }
  }

  else
  {
    minimumSize.width = v4 * v1;
  }

  return minimumSize;
}

double CGSize.integral(forScale:)(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 1.0;
  }

  return 1.0 / a1 * ceil(a1 * a2);
}

id NSAttributedString.replaceTimeZonePlaceholderWithTextEncapsulation(placeholder:dayString:timeZoneEncapsulationProvider:overrideFont:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t a6, objc_class *a7)
{
  v8 = v7;
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v16 = [v7 string];
  if (!v16)
  {
    sub_21DBFA16C();
    v16 = sub_21DBFA12C();
  }

  v17 = sub_21DBFA12C();
  v18 = [v16 rangeOfString_];

  v19 = sub_21DBF4B4C();
  v8 = v7;
  if (v18 != v19)
  {
    a5();
    v21._countAndFlagsBits = a3;
    v21._object = a4;
    v27.value.super.isa = a7;
    isa = TTRTimeZoneDayStringTextEncapsulationProvider.timeZoneAttributedStringWithTextEncapsulation(title:overrideFont:)(v21, v27).super.isa;

    sub_21DBF8E0C();
    v23 = isa;
    v24 = sub_21D47BA90(v25, a1, a2, v23);

    return v24;
  }

  else
  {
LABEL_7:

    return v8;
  }
}

uint64_t TTRReminderLocationPickerMeCardItemProvider.__allocating_init(contactStoreCreator:backgroundQueue:ignoresSeachText:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  sub_21D0D8CF0(0, &qword_280D1B900);
  sub_21DBFB12C();
  sub_21DBF633C();
  swift_allocObject();
  *(v5 + 16) = sub_21DBF62FC();
  *(v5 + 24) = 0;
  *(v5 + 32) = a4;
  return v5;
}

uint64_t TTRReminderLocationPickerMeCardItemProvider.init(contactStoreCreator:backgroundQueue:ignoresSeachText:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 24) = 0;
  sub_21D0D8CF0(0, &qword_280D1B900);
  sub_21DBFB12C();
  sub_21DBF633C();
  swift_allocObject();
  *(v4 + 16) = sub_21DBF62FC();
  *(v4 + 24) = 0;

  *(v4 + 32) = a4;
  return v4;
}

uint64_t TTRReminderLocationPickerMeCardItemProvider.deinit()
{

  return v0;
}

uint64_t TTRReminderLocationPickerMeCardItemProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t TTRReminderLocationPickerMeCardItemProvider.items(matching:location:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_21DBF9D8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0D8CF0(0, &qword_280D1B900);
  *v9 = sub_21DBFB12C();
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v10 = sub_21DBF9DAC();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (*(v3 + 32))
    {
      goto LABEL_14;
    }

    v12 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12)
    {
LABEL_14:
      if (*(v3 + 24))
      {
        v16 = *(v3 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE644A0);
        swift_allocObject();
        sub_21DBF8E0C();
        return sub_21DBF824C();
      }

      else
      {
        sub_21D0D8CF0(0, &qword_280D0C1A0);
        sub_21DBF82FC();

        v13 = sub_21DBF816C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE626E0);
        v14 = sub_21DBF820C();

        return v14;
      }
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE644A0);
      swift_allocObject();
      return sub_21DBF824C();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D932CD0()
{
  sub_21DBF633C();
  sub_21DBF631C();
  v0 = sub_21DBF632C();

  return v0;
}

uint64_t sub_21D932D2C@<X0>(void **a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = sub_21DBF9D8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a1;
  v13 = sub_21D0D8CF0(0, &qword_280D1B900);
  *v11 = sub_21DBFB12C();
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  LOBYTE(a1) = sub_21DBF9DAC();
  (*(v9 + 8))(v11, v8);
  if ((a1 & 1) == 0)
  {
    goto LABEL_26;
  }

  v14 = [v12 postalAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE645B0);
  v13 = sub_21DBFA5EC();

  v11 = v12;
  if (v13 >> 62)
  {
    goto LABEL_27;
  }

  v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15)
  {
    while (1)
    {
      v16 = v13;
      v50 = MEMORY[0x277D84F90];
      result = sub_21D18F1F0(0, v15 & ~(v15 >> 63), 0);
      if (v15 < 0)
      {
        break;
      }

      v38 = a2;
      v39 = a3;
      a2 = 0;
      v13 = v50;
      v18 = v16;
      v43 = v16;
      v44 = v16 & 0xC000000000000001;
      v40 = v4;
      v41 = v16 & 0xFFFFFFFFFFFFFF8;
      v42 = v15;
      while (!__OFADD__(a2, 1))
      {
        if (v44)
        {
          v19 = MEMORY[0x223D44740](a2, v18);
        }

        else
        {
          if (a2 >= *(v41 + 16))
          {
            goto LABEL_25;
          }

          v19 = *(v18 + 8 * a2 + 32);
        }

        v20 = v19;
        v21 = v13;
        v22 = [v19 label];
        v46 = a2 + 1;
        if (v22)
        {
          v23 = v22;
          v24 = sub_21DBFA16C();
          v26 = v25;
        }

        else
        {
          v24 = 0;
          v26 = 0;
        }

        v27 = [v20 value];
        v48 = 0x2D64726143656DLL;
        v49 = 0xE700000000000000;
        if (v26)
        {
          v28 = v24;
        }

        else
        {
          v28 = 0x6C6562616C5F6F6ELL;
        }

        if (v26)
        {
          v29 = v26;
        }

        else
        {
          v29 = 0xE800000000000000;
        }

        sub_21DBF8E0C();
        MEMORY[0x223D42AA0](v28, v29);

        MEMORY[0x223D42AA0](45, 0xE100000000000000);
        v45 = v27;
        v47 = [v27 hash];
        v30 = sub_21DBFC5BC();
        MEMORY[0x223D42AA0](v30);

        a3 = v24;
        v4 = v48;
        v31 = v49;
        v32 = v11;

        v13 = v21;
        v50 = v21;
        v33 = v11;
        v35 = *(v13 + 16);
        v34 = *(v13 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_21D18F1F0((v34 > 1), v35 + 1, 1);
          v13 = v50;
        }

        *(v13 + 16) = v35 + 1;
        v36 = v13 + 56 * v35;
        *(v36 + 32) = v4;
        *(v36 + 40) = v31;
        *(v36 + 48) = v33;
        *(v36 + 56) = a3;
        v37 = v45;
        *(v36 + 64) = v26;
        *(v36 + 72) = v37;
        *(v36 + 80) = 33;
        ++a2;
        v18 = v43;
        v11 = v33;
        if (v46 == v42)
        {

          a3 = v39;
          a2 = v38;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      v15 = sub_21DBFBD7C();
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_28:

    v13 = MEMORY[0x277D84F90];
LABEL_29:
    *(a2 + 24) = v13;
    sub_21DBF8E0C();

    *a3 = v13;
  }

  return result;
}

id static UIImage.ttr_systemSymbolImage(named:)()
{
  v0 = sub_21DBFA12C();
  v1 = [objc_opt_self() _systemImageNamed_];

  return v1;
}

id static UIImage.ttr_image(named:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21DBFA12C();
  v5 = [objc_opt_self() imageNamed:v4 inBundle:a3 compatibleWithTraitCollection:0];

  return v5;
}

uint64_t UIImage.resized(to:scale:)(double a1, double a2, double a3)
{
  v7 = [v3 imageRendererFormat];
  [v7 setScale_];
  v8 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v7 format:{a1, a2}];
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_21D933E04;
  *(v10 + 24) = v9;
  v15[4] = sub_21D112B4C;
  v15[5] = v10;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_21D112B7C;
  v15[3] = &block_descriptor_116;
  v11 = _Block_copy(v15);
  v12 = v3;

  v13 = [v8 imageWithActions_];

  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if ((v7 & 1) == 0)
  {
    return v13;
  }

  __break(1u);
  return result;
}

id static UIImage.ttr_systemSymbolImage(named:withConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21DBFA12C();
  v5 = [objc_opt_self() _systemImageNamed_];

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 imageWithSymbolConfiguration_];

  return v6;
}

uint64_t UIImage.pngDataWithRotation()()
{
  isa = UIImage.drawnWithRotation()().super.isa;
  v1 = UIImagePNGRepresentation(isa);

  if (!v1)
  {
    return 0;
  }

  v2 = sub_21DBF551C();

  return v2;
}

double UIImage.pixelSize.getter()
{
  [v0 size];
  v2 = v1;
  [v0 scale];
  return v2 * v3;
}

id UIImage.init(contentsOf:)(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_21DBF549C();
  v3 = sub_21DBFA12C();

  v4 = [v2 initWithContentsOfFile_];

  v5 = sub_21DBF54CC();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

UIImage __swiftcall UIImage.drawnWithRotation()()
{
  if ([v0 imageOrientation])
  {
    [v13 size];
    v2 = v1;
    v4 = v3;
    v5 = [v13 imageRendererFormat];
    v6 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v5 format:{v2, v4}];

    v7 = swift_allocObject();
    *(v7 + 16) = v13;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_21D933E20;
    *(v8 + 24) = v7;
    aBlock[4] = sub_21D119838;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D112B7C;
    aBlock[3] = &block_descriptor_13_6;
    v9 = _Block_copy(aBlock);
    v10 = v13;

    v11 = [v6 imageWithActions_];

    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }

    else
    {
      return v11;
    }
  }

  else
  {

    return v13;
  }

  return result;
}

UIImage_optional __swiftcall UIImage.drawnOpaque(backgroundColor:)(UIColor backgroundColor)
{
  [v1 size];
  v4 = v3;
  v6 = v5;
  [v1 scale];
  v8 = v7;
  v20.width = v4;
  v20.height = v6;
  UIGraphicsBeginImageContextWithOptions(v20, 0, v8);
  v9 = UIGraphicsGetCurrentContext();
  if (v9)
  {
    v11 = v9;
    [v1 size];
    v13 = v12;
    v15 = v14;
    v16 = [(objc_class *)backgroundColor.super.isa CGColor];
    CGContextSetFillColorWithColor(v11, v16);

    v21.origin.x = 0.0;
    v21.origin.y = 0.0;
    v21.size.width = v13;
    v21.size.height = v15;
    CGContextFillRect(v11, v21);
    [v1 drawInRect:0 blendMode:0.0 alpha:{0.0, v13, v15, 1.0}];
    v17 = UIGraphicsGetImageFromCurrentImageContext();
    if (v17)
    {
      UIGraphicsEndImageContext();
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  result.value.super.isa = v18;
  result.is_nil = v10;
  return result;
}

id sub_21D9339C0()
{
  result = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  qword_27CE63E58 = result;
  return result;
}

id static UIImage.empty.getter()
{
  if (qword_27CE56E80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27CE63E58;

  return v0;
}

void static UIImage.empty.setter(uint64_t a1)
{
  if (qword_27CE56E80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CE63E58;
  qword_27CE63E58 = a1;
}

uint64_t (*static UIImage.empty.modify())()
{
  if (qword_27CE56E80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id UIImage.init(contentsOfSecurityScopedURL:)(char *a1)
{
  v2 = sub_21DBF54CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_21DBF547C())
  {
    (*(v3 + 16))(v5, a1, v2);
    v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_21DBF549C();
    v7 = sub_21DBFA12C();

    v8 = [v6 initWithContentsOfFile_];

    v9 = *(v3 + 8);
    v9(v5, v2);
    if (v8)
    {
      v10 = v8;
      sub_21DBF53DC();
    }
  }

  else
  {
    v8 = 0;
    v9 = *(v3 + 8);
  }

  v9(a1, v2);
  return v8;
}

id sub_21D933D08(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || (sub_21DBFC5BC(), MEMORY[0x223D42AA0](0x61646E656C61632ELL, 0xE900000000000072), v2 = sub_21DBFA12C(), , v3 = [objc_opt_self() _systemImageNamed_], v2, !v3))
  {
    v4 = sub_21DBFA12C();
    v3 = [objc_opt_self() _systemImageNamed_];
  }

  return v3;
}

id sub_21D933E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + qword_27CE63E60);
  *v7 = 0;
  v7[1] = 0;
  v8 = MEMORY[0x277D85000];
  *(v3 + *((*MEMORY[0x277D85000] & *v3) + 0x68)) = 0;
  *(v3 + *((*v8 & *v3) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + *((*v8 & *v3) + 0x90)) = 0;
  v9 = (v3 + *((*v8 & *v3) + 0x78));
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  *(v3 + *((*v8 & *v3) + 0x80)) = 0;
  v10 = (v3 + *((*v8 & *v3) + 0x88));
  *v10 = 0x65436E6F73726550;
  v10[1] = 0xEA00000000006C6CLL;
  v12.receiver = v3;
  v12.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63EA0);
  return objc_msgSendSuper2(&v12, sel_init);
}

void sub_21D933FC4(uint64_t a1)
{
  v3 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  v4 = *(a1 + qword_27CE65590);
  if (*(v3 + 1))
  {
    v5 = v4;
    sub_21DBF8E0C();
    v6 = sub_21DBFA12C();
  }

  else
  {
    v7 = v4;
    v6 = 0;
  }

  [v4 setText_];

  v8 = *(v3 + 2);
  v9 = v8;
  sub_21D9340B0(v8);
}

void sub_21D9340B0(id a1)
{
  v3 = *(v1 + qword_27CE63E78);
  *(v1 + qword_27CE63E78) = a1;
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    v7 = v3;
    goto LABEL_8;
  }

  v7 = v3;
  if (!v3)
  {
    a1 = a1;
    goto LABEL_8;
  }

  sub_21D4B6DC0();
  a1 = a1;
  v4 = v7;
  v5 = sub_21DBFB63C();

  if ((v5 & 1) == 0)
  {
LABEL_8:
    sub_21D934348();

    v6 = v7;
    goto LABEL_9;
  }

  v6 = v4;
LABEL_9:
}

void sub_21D9341DC(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  v3 = *&v2[qword_27CE63E60];
  if (v3)
  {

    v3(v4);
    sub_21D0D0E88(v3);

    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v5);
  }
}

void sub_21D934348()
{
  v1 = *(v0 + qword_27CE63E78);
  if (v1)
  {
    v2 = *(v0 + qword_27CE63E88);
    v3 = v1;
    if (v2)
    {
      v4 = v2;
    }

    else
    {
      v4 = sub_21D934978(v0);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_21DC09CF0;
    *(v9 + 32) = v1;
    sub_21D4B6DC0();
    v10 = v1;
    v11 = v2;
    v12 = sub_21DBFA5DC();

    [v4 setContacts_];
  }

  else
  {
    v5 = v0 + qword_27CE655A0;
    swift_beginAccess();
    v6 = *(v5 + 48);
    v17 = *(v5 + 32);
    v18 = v6;
    v19 = *(v5 + 64);
    v7 = *(v5 + 16);
    v15 = *v5;
    v16 = v7;
    v20[2] = v17;
    v20[3] = v6;
    v21 = v19;
    v20[0] = v15;
    v20[1] = v7;
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *(v5 + 24) = 0x1FFFFFFFELL;
    *(v5 + 64) = 0;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
    sub_21D1ADB0C(&v15, v13);
    sub_21D1ADB7C(v20);
    v13[2] = v17;
    v13[3] = v18;
    v14 = v19;
    v13[0] = v15;
    v13[1] = v16;
    sub_21DA7EF48(v13);
    sub_21D1ADB7C(&v15);
    v8 = *(v0 + qword_27CE63E88);
    *(v0 + qword_27CE63E88) = 0;
  }
}

char *sub_21D934514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v3[qword_27CE63E78] = 0;
  *&v3[qword_27CE63E88] = 0;
  v8 = [objc_opt_self() buttonWithType_];
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v9 = sub_21DBFA12C();

  [v8 setTitle:v9 forState:{0, 0x800000021DC70B80}];

  v10 = [v8 titleLabel];
  if (v10)
  {
    v11 = v10;
    if (qword_280D176B8 != -1)
    {
      swift_once();
    }

    v12 = sub_21D900614(1);
    [v11 setFont_];
  }

  v13 = [v8 titleLabel];
  if (v13)
  {
    v14 = v13;
    [v13 setAdjustsFontForContentSizeCategory_];
  }

  *&v4[qword_27CE63E80] = v8;
  v15 = v8;
  if (a3)
  {
    v16 = sub_21DBFA12C();
  }

  else
  {
    v16 = 0;
  }

  v31.receiver = v4;
  v31.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v31, sel_initWithStyle_reuseIdentifier_, a1, v16);

  v18 = &v17[qword_27CE65610];
  swift_beginAccess();
  v19 = *v18;
  v20 = *(v18 + 1);
  v21 = *(v18 + 2);
  v22 = *(v18 + 3);
  v23 = *(v18 + 4);
  *v18 = v8;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  v24 = v18[40];
  v18[40] = 1;
  v25 = v17;
  v26 = v8;
  v27 = v25;
  sub_21D361B20(v19, v20, v21, v22, v23, v24);
  sub_21D361BB4(v19, v20, v21, v22, v23, v24);
  v29[0] = v19;
  v29[1] = v20;
  v29[2] = v21;
  v29[3] = v22;
  v29[4] = v23;
  v30 = v24;
  sub_21DA7F6B4(v29);

  sub_21D361BB4(v19, v20, v21, v22, v23, v24);
  return v27;
}

char *sub_21D93485C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_21D934514(a3, a4, v6);
}

void sub_21D9348A8(uint64_t a1)
{
  *(a1 + qword_27CE63E78) = 0;
  *(a1 + qword_27CE63E88) = 0;
  sub_21DBFC31C();
  __break(1u);
}

id sub_21D934978(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBDBF0]) init];
  [v2 setThreeDTouchEnabled_];
  v3 = *(a1 + qword_27CE63E88);
  *(a1 + qword_27CE63E88) = v2;
  v4 = v2;

  v5 = [v4 view];
  LOBYTE(v17[0]) = 1;
  LOBYTE(v12) = 1;
  v6 = (a1 + qword_27CE655A0);
  swift_beginAccess();
  v7 = v6[3];
  v14 = v6[2];
  v15 = v7;
  v16 = *(v6 + 64);
  v8 = v6[1];
  v12 = *v6;
  v13 = v8;
  v17[2] = v14;
  v17[3] = v7;
  v18 = v16;
  v17[0] = v12;
  v17[1] = v8;
  *v6 = v5;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 1;
  v6[2] = 0u;
  v6[3] = 0u;
  *(v6 + 64) = 65;
  sub_21D1ADB0C(&v12, v10);
  sub_21D1ADB7C(v17);
  v10[2] = v14;
  v10[3] = v15;
  v11 = v16;
  v10[0] = v12;
  v10[1] = v13;
  sub_21DA7EF48(v10);
  sub_21D1ADB7C(&v12);
  return v4;
}

void sub_21D934AD8()
{
  v1 = *(v0 + qword_27CE63E88);
}

void sub_21D934B28(uint64_t a1)
{
  v2 = *(a1 + qword_27CE63E88);
}

uint64_t sub_21D934C10(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    if (a1 != a4 || a2 != a5)
    {
      v6 = a3;
      v7 = a6;
      v8 = sub_21DBFC64C();
      a6 = v7;
      a3 = v6;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (a5)
  {
    return 0;
  }

  if (a3)
  {
    if (a6)
    {
      v9 = a3;
      v10 = a6;
      sub_21D4B6DC0();
      v11 = v10;
      v12 = v9;
      v13 = sub_21DBFB63C();

      if (v13)
      {
        return 1;
      }
    }
  }

  else if (!a6)
  {
    return 1;
  }

  return 0;
}

id sub_21D934CCC(uint64_t a1)
{
  v3 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78));
  swift_beginAccess();
  v4 = *(a1 + qword_27CE65590);
  sub_21DBF8E0C();
  v5 = v4;
  v6 = sub_21DBFA12C();

  [v5 setText_];

  return [*(a1 + qword_27CE63EC0) setImage_];
}

void sub_21D934DB0()
{
  v1 = *(v0 + qword_27CE63EA8);
  if (v1)
  {
    v2 = v0 + *((*MEMORY[0x277D85000] & *v0) + 0x78);
    swift_beginAccess();
    v3 = *(v2 + 2);
    v4 = *(v2 + 3);
    v8 = *v2;
    v9 = v3;
    v10 = v4;
    sub_21D0D0E78(v1);
    v5 = v8;
    sub_21DBF8E0C();
    v6 = v4;
    v1(&v8);
    sub_21D0D0E88(v1);
    v7 = v8;
  }
}

char *sub_21D934F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = sub_21DBFA16C();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return sub_21D9350A0(v4, v5);
}

char *sub_21D9350A0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  [v5 setContentMode_];
  v6 = [v5 layer];
  [v6 setCornerCurve_];

  v7 = [v5 layer];
  [v7 setCornerRadius_];

  [v5 setClipsToBounds_];
  *&v2[qword_27CE63EC0] = v5;
  v8 = v5;
  if (a2)
  {
    v9 = sub_21DBFA12C();
  }

  else
  {
    v9 = 0;
  }

  v24.receiver = v2;
  v24.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v24, sel_initWithStyle_reuseIdentifier_, 0, v9);

  v11 = *&v10[qword_27CE63EC0];
  LOBYTE(v30[0]) = 1;
  LOBYTE(v25) = 1;
  v12 = &v10[qword_27CE655A0];
  swift_beginAccess();
  v25 = *v12;
  v13 = *(v12 + 1);
  v14 = *(v12 + 2);
  v15 = *(v12 + 3);
  v29 = v12[64];
  v27 = v14;
  v28 = v15;
  v26 = v13;
  v30[0] = *v12;
  v16 = *(v12 + 1);
  v17 = *(v12 + 2);
  v18 = *(v12 + 3);
  v31 = v12[64];
  v30[2] = v17;
  v30[3] = v18;
  v30[1] = v16;
  *v12 = v11;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *(v12 + 3) = 1;
  *(v12 + 2) = 0u;
  *(v12 + 3) = 0u;
  v12[64] = 65;
  v19 = v10;
  v20 = v11;
  sub_21D1ADB0C(&v25, v22);
  sub_21D1ADB7C(v30);
  v22[2] = v27;
  v22[3] = v28;
  v23 = v29;
  v22[0] = v25;
  v22[1] = v26;
  sub_21DA7EF48(v22);

  sub_21D1ADB7C(&v25);
  return v19;
}

unint64_t sub_21D9352FC(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2)
{
  v3 = v2;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v4 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v4)
  {
    v5 = 0;
    v37 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v38 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v34 = isUniquelyReferenced_nonNull_bridgeObject;
    v36 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v40 = MEMORY[0x277D84F90];
    v35 = v4;
    while (1)
    {
      if (v38)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x223D44740](v5, v34);
        v6 = __OFADD__(v5++, 1);
        if (v6)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v5 >= *(v37 + 16))
        {
          goto LABEL_41;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v36 + 8 * v5);
        v6 = __OFADD__(v5++, 1);
        if (v6)
        {
          goto LABEL_40;
        }
      }

      v7 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = [v7 children];
      sub_21D0D8CF0(0, &qword_27CE5DE90);
      v9 = sub_21DBFA5EC();
      v42 = v3;
      v10 = v9;

      v41[0] = v10;
      sub_21D0D8CF0(0, &qword_280D0C1D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DE98);
      sub_21D0D0F1C(&qword_27CE63EE0, &qword_27CE5DE98);
      v11 = sub_21DBFA47C();

      v12 = [v7 children];
      v13 = sub_21DBFA5EC();

      v41[0] = v13;
      sub_21D0D8CF0(0, &qword_280D0C1F0);
      v14 = sub_21DBFA47C();

      v15 = v42;
      v16 = sub_21D9352FC(v14, a2);

      v41[0] = v11;
      sub_21D5621D8(v16);

      v17 = v41[0];
      v3 = v41[0] >> 62;
      v18 = v41[0] >> 62 ? sub_21DBFBD7C() : *((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      v19 = v40 >> 62;
      if (v40 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v20 = isUniquelyReferenced_nonNull_bridgeObject + v18;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v18))
      {
        goto LABEL_39;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v42 = v15;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v19)
        {
          v21 = v40 & 0xFFFFFFFFFFFFFF8;
          if (v20 <= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        sub_21DBFBD7C();
        goto LABEL_19;
      }

      if (v19)
      {
        goto LABEL_18;
      }

LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = sub_21DBFBF9C();
      v40 = isUniquelyReferenced_nonNull_bridgeObject;
      v21 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v22 = *(v21 + 16);
      v23 = *(v21 + 24);
      if (v3)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_21DBFBD7C();
        v24 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_24:
          if (((v23 >> 1) - v22) < v18)
          {
            goto LABEL_43;
          }

          v25 = v21 + 8 * v22 + 32;
          if (v3)
          {
            if (v24 < 1)
            {
              goto LABEL_45;
            }

            sub_21D0D0F1C(&unk_27CE5DE10, &qword_27CE5DE08);
            for (i = 0; i != v24; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DE08);
              v27 = sub_21D198D24(v41, i, v17);
              v29 = *v28;
              (v27)(v41, 0);
              *(v25 + 8 * i) = v29;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v3 = v42;
          if (v18 >= 1)
          {
            v30 = *(v21 + 16);
            v6 = __OFADD__(v30, v18);
            v31 = v30 + v18;
            if (v6)
            {
              goto LABEL_44;
            }

            *(v21 + 16) = v31;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v24 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v24)
        {
          goto LABEL_24;
        }
      }

      v3 = v42;
      if (v18 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v5 == v35)
      {
        return v40;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_21DBFBD7C();
    v20 = isUniquelyReferenced_nonNull_bridgeObject + v18;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v18))
    {
      goto LABEL_13;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v32 = isUniquelyReferenced_nonNull_bridgeObject;
    v4 = sub_21DBFBD7C();
    isUniquelyReferenced_nonNull_bridgeObject = v32;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_21D9357D8(uint64_t a1, void *a2)
{
  sub_21D0CEB98(a1, v36);
  result = swift_dynamicCast();
  if (result)
  {
    v25 = *&v35[64];
    v26 = *&v35[80];
    v21 = *v35;
    v22 = *&v35[16];
    v23 = *&v35[32];
    v24 = *&v35[48];
    v5 = *v35;
    v29 = *&v35[24];
    v30 = *&v35[40];
    v27 = *&v35[96];
    v28 = *&v35[8];
    v34 = *&v35[104];
    v32 = *&v35[72];
    v33 = *&v35[88];
    v31 = *&v35[56];
    if (*v35)
    {
      v6 = *v35;
      v7 = [a2 identifier];
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19[0] = *(v2 + 32);
      *(v2 + 32) = 0x8000000000000000;
      sub_21D477B78(v7, v6, isUniquelyReferenced_nonNull_native);

      *(v2 + 32) = v19[0];
      swift_endAccess();
      swift_beginAccess();
      v9 = *(v2 + 24);
      v20[4] = v25;
      v20[5] = v26;
      v20[6] = v27;
      v20[0] = v21;
      v20[1] = v22;
      v20[2] = v23;
      v20[3] = v24;
      sub_21D1D9C94(v20, v19);
      v10 = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 24) = v9;
      if ((v10 & 1) == 0)
      {
        v9 = sub_21D212760(0, *(v9 + 2) + 1, 1, v9);
        *(v2 + 24) = v9;
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      if (v12 >= v11 >> 1)
      {
        v9 = sub_21D212760((v11 > 1), v12 + 1, 1, v9);
      }

      *(v9 + 2) = v12 + 1;
      v13 = &v9[112 * v12];
      *(v13 + 4) = v5;
      v14 = v28;
      v15 = v29;
      *(v13 + 72) = v30;
      *(v13 + 56) = v15;
      *(v13 + 40) = v14;
      v16 = v31;
      v17 = v32;
      v18 = v33;
      *(v13 + 17) = v34;
      *(v13 + 120) = v18;
      *(v13 + 104) = v17;
      *(v13 + 88) = v16;
      *(v2 + 24) = v9;
      swift_endAccess();
      return sub_21D1D9AE0(&v21);
    }
  }

  return result;
}

uint64_t sub_21D935A1C(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = [a1 traitCollection];
  [v5 displayScale];
  v7 = v6;

  if (v7 == 0.0)
  {
    v7 = 1.0;
  }

  v8 = [a1 effectiveUserInterfaceLayoutDirection] == 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A300);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21DC08D00;
  *(v9 + 32) = v7;
  swift_beginAccess();
  v10 = v2[3];
  v15 = vdupq_n_s64(0x4044000000000000uLL);
  v16 = v9;
  v17 = v8;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = v4;
  sub_21DBF8E0C();

  v13 = a1;
  TTRParticipantAvatarProvider.fillInAvatarImages(for:configuration:completion:)(v10, v15.i64, sub_21D936164, v12);
}

uint64_t sub_21D935BE0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v32 = result;
  if (result)
  {
    v8 = [a3 menu];
    if (v8)
    {
      v9 = v8;
      v10 = [v9 children];
      sub_21D0D8CF0(0, &qword_27CE5DE90);
      sub_21DBFA5EC();

      sub_21D0D8CF0(0, &qword_280D0C1D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DE98);
      sub_21D0D0F1C(&qword_27CE63EE0, &qword_27CE5DE98);
      sub_21DBFA47C();

      v11 = [v9 children];
      sub_21DBFA5EC();

      sub_21D0D8CF0(0, &qword_280D0C1F0);
      v12 = sub_21DBFA47C();

      v13 = sub_21D9352FC(v12, a4);

      sub_21D5621D8(v13);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DE08);
    sub_21D0D0F1C(&qword_27CE63ED8, &qword_27CE5DE08);
    sub_21D93617C();
    v14 = sub_21DBFA46C();

    v15 = *(a1 + 16);
    if (v15)
    {
      v16 = a1 + 72;
      v31 = v14;
      do
      {
        v34 = v15;
        v17 = *(v16 - 40);
        v18 = *(v16 - 32);
        v19 = *(v16 + 64);
        swift_beginAccess();
        v20 = *(v32 + 32);
        v33 = *(v20 + 16);
        v21 = v19;
        v22 = v17;
        v23 = v18;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        if (v33 && (v24 = sub_21D17E07C(v22), (v25 & 1) != 0))
        {
          v26 = *(*(v20 + 56) + 8 * v24);
          swift_endAccess();
          if (*(v31 + 16))
          {
            v27 = v26;
            v28 = sub_21D10FE34(v27);
            if ((v29 & 1) == 0)
            {

              v23 = v22;
              v22 = v27;
              goto LABEL_7;
            }

            v30 = *(*(v31 + 56) + 8 * v28);
            [v30 setImage_];
          }
        }

        else
        {
          swift_endAccess();
        }

LABEL_7:

        v16 += 112;
        v15 = v34 - 1;
      }

      while (v34 != 1);
    }
  }

  return result;
}

uint64_t sub_21D936084()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21D9360F0()
{
  swift_beginAccess();
  *(v0 + 24) = MEMORY[0x277D84F90];

  swift_beginAccess();
  *(v0 + 32) = MEMORY[0x277D84F98];
}

unint64_t sub_21D93617C()
{
  result = qword_27CE57BE8;
  if (!qword_27CE57BE8)
  {
    type metadata accessor for Identifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE57BE8);
  }

  return result;
}

__n128 TTRIListCellStateAdaptor.State.init(title:listName:listColorName:listBadge:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *(a8 + 80) = 0u;
  *(a8 + 96) = 0u;
  *(a8 + 112) = 0u;
  *(a8 + 121) = 0u;
  *(a8 + 48) = xmmword_21DC19C40;
  *(a8 + 64) = 0u;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  v10 = *(a8 + 96);
  v15[2] = *(a8 + 80);
  v15[3] = v10;
  v16[0] = *(a8 + 112);
  *(v16 + 9) = *(a8 + 121);
  v11 = *(a8 + 64);
  v15[0] = *(a8 + 48);
  v15[1] = v11;
  sub_21D0CF7E0(v15, &unk_27CE5E9E0);
  v12 = *(a7 + 48);
  *(a8 + 80) = *(a7 + 32);
  *(a8 + 96) = v12;
  *(a8 + 112) = *(a7 + 64);
  *(a8 + 121) = *(a7 + 73);
  result = *a7;
  v14 = *(a7 + 16);
  *(a8 + 48) = *a7;
  *(a8 + 64) = v14;
  return result;
}

id TTRIListCellContent.__allocating_init(state:)(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = a1[7];
  v9[6] = a1[6];
  v10[0] = v4;
  *(v10 + 9) = *(a1 + 121);
  v5 = a1[3];
  v9[2] = a1[2];
  v9[3] = v5;
  v6 = a1[5];
  v9[4] = a1[4];
  v9[5] = v6;
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  return sub_21DA87F1C(0, 0x6C6C65437473694CLL, 0xE800000000000000, 1, v9);
}

uint64_t TTRIListCellStateAdaptor.State.title.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRIListCellStateAdaptor.State.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TTRIListCellStateAdaptor.State.listName.getter()
{
  v1 = *(v0 + 16);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRIListCellStateAdaptor.State.listName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t TTRIListCellStateAdaptor.State.listColorName.getter()
{
  v1 = *(v0 + 32);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRIListCellStateAdaptor.State.listColorName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t TTRIListCellStateAdaptor.State.listBadge.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[6];
  v10 = v1[5];
  v2 = v10;
  v11 = v3;
  v12[0] = v1[7];
  v4 = v12[0];
  *(v12 + 9) = *(v1 + 121);
  v6 = v1[4];
  v9[0] = v1[3];
  v5 = v9[0];
  v9[1] = v6;
  *(a1 + 73) = *(v12 + 9);
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_21D0D3954(v9, &v8, &unk_27CE5E9E0);
}

__n128 TTRIListCellStateAdaptor.State.listBadge.setter(uint64_t a1)
{
  v3 = v1[6];
  v8[2] = v1[5];
  v8[3] = v3;
  v9[0] = v1[7];
  *(v9 + 9) = *(v1 + 121);
  v4 = v1[4];
  v8[0] = v1[3];
  v8[1] = v4;
  sub_21D0CF7E0(v8, &unk_27CE5E9E0);
  v5 = *(a1 + 48);
  v1[5] = *(a1 + 32);
  v1[6] = v5;
  v1[7] = *(a1 + 64);
  *(v1 + 121) = *(a1 + 73);
  result = *a1;
  v7 = *(a1 + 16);
  v1[3] = *a1;
  v1[4] = v7;
  return result;
}

id TTRIListCellStateAdaptor.prototypeCellView.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_21D568328(v2);
}

uint64_t TTRIListCellStateAdaptor.reuseIdentifier.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRIListCellStateAdaptor.setState(_:on:)(_OWORD *a1, uint64_t a2)
{
  v2 = a1[7];
  v12[6] = a1[6];
  v13[0] = v2;
  *(v13 + 9) = *(a1 + 121);
  v3 = a1[3];
  v12[2] = a1[2];
  v12[3] = v3;
  v4 = a1[5];
  v12[4] = a1[4];
  v12[5] = v4;
  v5 = a1[1];
  v12[0] = *a1;
  v12[1] = v5;
  v10[2] = a2;
  v10[3] = v12;
  v6 = *(a2 + qword_27CE5AF20);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21D937A48;
  *(v7 + 24) = v10;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_117;
  v8 = _Block_copy(aBlock);

  [v6 performBatchUpdates_];
  _Block_release(v8);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void sub_21D936750(char *a1, uint64_t a2)
{
  v4 = *&a1[qword_27CE65590];
  v5 = sub_21DBFA12C();
  [v4 setText_];

  v6 = *&a1[qword_27CE63EE8];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  sub_21DBF8E0C();
  v9 = sub_21DBFA12C();
  [v6 setText_];

  v10 = *(a2 + 64);
  v57 = *(a2 + 48);
  v58 = v10;
  v11 = *(a2 + 96);
  v59 = *(a2 + 80);
  v60 = v11;
  v61[0] = *(a2 + 112);
  *(v61 + 9) = *(a2 + 121);
  v12 = *(&v57 + 1);
  if (*(&v57 + 1) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_21DC08D00;
    *(v13 + 32) = v7;
    *(v13 + 40) = v8;
    v14 = 1;
    v15 = *(a2 + 40);
    if (!v15)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v16 = v57;
  v17 = v58;
  v53 = v59;
  v54 = *(&v58 + 1);
  v51 = v60;
  v52 = *(&v59 + 1);
  v50 = *(&v60 + 1);
  v49 = v61[0];
  v62 = *(a2 + 120);
  v63 = *(a2 + 136);
  v18 = v62;
  if (v63)
  {
    v48 = v58;
    v12 = *(&v62 + 1);
    v19 = *&a1[qword_27CE63EF0];
    v20 = (v19 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emoji);
    swift_beginAccess();
    v21 = *v20;
    v22 = v20[1];
    v23 = v62;
    *v20 = v62;
    v20[1] = v12;
    sub_21D93814C(&v62, v55);
    sub_21D93814C(&v62, v55);
    sub_21D0D3954(&v57, v55, &unk_27CE5E9E0);
    sub_21D1136D0(v21, v22);

    v24 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiFontSize;
    swift_beginAccess();
    v25 = *(v19 + v24);
    *(v19 + v24) = 0x4030000000000000;
    if (v25 == 16.0)
    {
      v26 = v23;
      v17 = v48;
    }

    else
    {
      v40 = *(v19 + OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiView);
      v26 = v23;
      if (v40)
      {
        v41 = v40;
        v42 = [v41 font];
        v17 = v48;
        if (v42)
        {
          v47 = v42;
          v43 = [v42 fontWithSize_];
          v44 = v41;
          v46 = v41;
          v45 = v43;
          [v44 setFont_];
        }

        else
        {
        }
      }

      else
      {
        v17 = v48;
      }
    }
  }

  else
  {
    sub_21D93814C(&v62, v55);
    sub_21D0D3954(&v57, v55, &unk_27CE5E9E0);
    sub_21D114670(0);
    v27 = REMListBadgeEmblem.image.getter(v18);
    sub_21D112D3C(v27);
    sub_21D9381A8(&v62);
    sub_21DBF8E0C();
    v26 = v16;
  }

  v55[0] = v17;
  v55[1] = v54;
  v55[2] = v53;
  v55[3] = v52;
  v55[4] = v51;
  v55[5] = v50;
  v56 = v49 & 1;
  sub_21D0FB960(v17, v54, v53, v52, v51, v50, v49 & 1);
  sub_21D113E3C(v55);
  sub_21D0CF7E0(&v57, &unk_27CE5E9E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21DC08D00;
  *(v13 + 32) = v7;
  *(v13 + 40) = v8;
  if (!v12)
  {
    v14 = 1;
    v15 = *(a2 + 40);
    if (!v15)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (qword_280D16610 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_21DC08D00;
  *(v28 + 56) = MEMORY[0x277D837D0];
  *(v28 + 64) = sub_21D17A884();
  *(v28 + 32) = v26;
  *(v28 + 40) = v12;
  v29 = sub_21DBFA13C();
  v31 = v30;

  v33 = *(v13 + 16);
  v32 = *(v13 + 24);
  v14 = v33 + 1;
  if (v33 >= v32 >> 1)
  {
    v13 = sub_21D210A84((v32 > 1), v33 + 1, 1, v13);
  }

  *(v13 + 16) = v14;
  v34 = v13 + 16 * v33;
  *(v34 + 32) = v29;
  *(v34 + 40) = v31;
  v15 = *(a2 + 40);
  if (v15)
  {
LABEL_16:
    v35 = *(a2 + 32);
    v36 = *(v13 + 24);
    sub_21DBF8E0C();
    if (v14 >= v36 >> 1)
    {
      v13 = sub_21D210A84((v36 > 1), v14 + 1, 1, v13);
    }

    *(v13 + 16) = v14 + 1;
    v37 = v13 + 16 * v14;
    *(v37 + 32) = v35;
    *(v37 + 40) = v15;
  }

LABEL_19:
  v38 = sub_21DBFA12C();
  [a1 setAccessibilityLabel_];

  v55[0] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D1ADAA8();
  sub_21DBFA07C();

  v39 = sub_21DBFA12C();

  [a1 setAccessibilityValue_];
}

id TTRIListCellContent.init(state:)(_OWORD *a1)
{
  v1 = a1[7];
  v6[6] = a1[6];
  v7[0] = v1;
  *(v7 + 9) = *(a1 + 121);
  v2 = a1[3];
  v6[2] = a1[2];
  v6[3] = v2;
  v3 = a1[5];
  v6[4] = a1[4];
  v6[5] = v3;
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  return sub_21DA87F1C(0, 0x6C6C65437473694CLL, 0xE800000000000000, 1, v6);
}

id TTRIDetailListTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_21DBFA12C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

char *TTRIDetailListTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = &v3[qword_27CE63EF8];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v10 = sub_21D900614(1);
  [v9 setFont_];

  [v9 setAdjustsFontForContentSizeCategory_];
  [v9 setLineBreakMode_];
  v11 = [objc_opt_self() secondaryLabelColor];
  [v9 setTextColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21DC09CF0;
  *(v12 + 32) = v9;
  v13 = objc_allocWithZone(MEMORY[0x277CEC638]);
  sub_21D114EC8();
  v14 = v9;
  v15 = sub_21DBFA5DC();

  v16 = [v13 initWithArrangedSubviews_];

  [v16 setAxis_];
  [v16 setDistribution_];
  [v16 setAlignment_];
  [v16 setSpacing_];
  type metadata accessor for TTRListBadgeView();
  *&v4[qword_27CE63EF0] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[qword_27CE63EE8] = v14;
  v17 = v14;
  if (a3)
  {
    v18 = sub_21DBFA12C();
  }

  else
  {
    v18 = 0;
  }

  v51.receiver = v4;
  v51.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v51, sel_initWithStyle_reuseIdentifier_, a1, v18);

  type metadata accessor for TTRIDetailListTableViewCell.ExtraAccessoryProvider();
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  *(v20 + 24) = v14;
  v48 = v14;
  v21 = &v19[qword_27CE65610];
  swift_beginAccess();
  v22 = *v21;
  v23 = *(v21 + 1);
  v24 = *(v21 + 2);
  v25 = *(v21 + 3);
  v26 = *(v21 + 4);
  *v21 = v20;
  *(v21 + 1) = &off_282EDBDD0;
  *(v21 + 3) = 0;
  *(v21 + 4) = 0;
  *(v21 + 2) = 0;
  v27 = v21[40];
  v21[40] = 2;
  v28 = v19;
  v29 = v48;
  v30 = v28;
  v31 = v16;
  sub_21D361B20(v22, v23, v24, v25, v26, v27);
  sub_21D361BB4(v22, v23, v24, v25, v26, v27);
  *&v57 = v22;
  *(&v57 + 1) = v23;
  *&v58 = v24;
  *(&v58 + 1) = v25;
  *&v59 = v26;
  BYTE8(v59) = v27;
  sub_21DA7F6B4(&v57);
  sub_21D361BB4(v22, v23, v24, v25, v26, v27);
  v32 = *&v30[qword_27CE63EF0];
  LOBYTE(v57) = 0;
  LOBYTE(v52) = 1;
  v33 = &v30[qword_27CE655A0];
  swift_beginAccess();
  v52 = *v33;
  v34 = *(v33 + 1);
  v35 = *(v33 + 2);
  v36 = *(v33 + 3);
  v56 = v33[64];
  v54 = v35;
  v55 = v36;
  v53 = v34;
  v57 = *v33;
  v37 = *(v33 + 1);
  v38 = *(v33 + 2);
  v39 = *(v33 + 3);
  v61 = v33[64];
  v59 = v38;
  v60 = v39;
  v58 = v37;
  *v33 = v32;
  __asm { FMOV            V0.2D, #31.0 }

  *(v33 + 8) = _Q0;
  *(v33 + 3) = 0;
  *(v33 + 2) = 0u;
  *(v33 + 3) = 0u;
  v33[64] = 65;
  v45 = v30;
  v46 = v32;
  sub_21D0D3954(&v52, v49, &unk_27CE5EA00);
  sub_21D0CF7E0(&v57, &unk_27CE5EA00);
  v49[2] = v54;
  v49[3] = v55;
  v50 = v56;
  v49[0] = v52;
  v49[1] = v53;
  sub_21DA7EF48(v49);

  sub_21D0CF7E0(&v52, &unk_27CE5EA00);
  [v45 setIsAccessibilityElement_];

  return v45;
}

char *sub_21D937350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return TTRIDetailListTableViewCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

id TTRIDetailListTableViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void TTRIDetailListTableViewCell.init(coder:)()
{
  v1 = (v0 + qword_27CE63EF8);
  *v1 = 0u;
  v1[1] = 0u;
  sub_21DBFC31C();
  __break(1u);
}

void sub_21D937450(uint64_t a1)
{
  v1 = (a1 + qword_27CE63EF8);
  *v1 = 0u;
  v1[1] = 0u;
  sub_21DBFC31C();
  __break(1u);
}

void TTRIDetailListTableViewCell.init(reuseIdentifier:)()
{
  v1 = (v0 + qword_27CE63EF8);
  *v1 = 0u;
  v1[1] = 0u;
  sub_21DBFC31C();
  __break(1u);
}

uint64_t _s15RemindersUICore24TTRIListCellStateAdaptorV0E0V2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v9 = a1[5];
  v10 = *(a1 + 6);
  v58[2] = *(a1 + 5);
  v58[3] = v10;
  v59[0] = *(a1 + 7);
  *(v59 + 9) = *(a1 + 121);
  v11 = *(a1 + 4);
  v58[0] = *(a1 + 3);
  v58[1] = v11;
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  v15 = a2[3];
  v17 = a2[4];
  v16 = a2[5];
  *(v61 + 9) = *(a2 + 121);
  v18 = *(a2 + 7);
  v60[3] = *(a2 + 6);
  v61[0] = v18;
  v19 = *(a2 + 5);
  v60[1] = *(a2 + 4);
  v60[2] = v19;
  v60[0] = *(a2 + 3);
  if ((v4 != v12 || v5 != v13) && (sub_21DBFC64C() & 1) == 0 || (v6 != v14 || v8 != v15) && (sub_21DBFC64C() & 1) == 0)
  {
    goto LABEL_16;
  }

  if (v9)
  {
    if (v16 && (v7 == v17 && v9 == v16 || (sub_21DBFC64C() & 1) != 0))
    {
      goto LABEL_12;
    }

LABEL_16:
    v22 = 0;
    return v22 & 1;
  }

  if (v16)
  {
    goto LABEL_16;
  }

LABEL_12:
  v20 = v58[0];
  v21 = v60[0];
  if (*(&v58[0] + 1) == 1)
  {
    if (*(&v60[0] + 1) == 1)
    {
      v22 = 1;
      *&v52 = *&v58[0];
      *(&v52 + 1) = 1;
      v23 = *(a1 + 7);
      v55 = *(a1 + 6);
      v56[0] = v23;
      *(v56 + 9) = *(a1 + 121);
      v24 = *(a1 + 5);
      v53 = *(a1 + 4);
      v54 = v24;
      sub_21D0D3954(v58, &v47, &unk_27CE5E9E0);
      sub_21D0D3954(v60, &v47, &unk_27CE5E9E0);
      v25 = &v52;
LABEL_23:
      sub_21D0CF7E0(v25, &unk_27CE5E9E0);
      return v22 & 1;
    }

    sub_21D0D3954(v58, &v52, &unk_27CE5E9E0);
    sub_21D0D3954(v60, &v52, &unk_27CE5E9E0);
  }

  else
  {
    v52 = v58[0];
    v27 = *(a1 + 121);
    v28 = *(a1 + 7);
    v55 = *(a1 + 6);
    v56[0] = v28;
    *(v56 + 9) = v27;
    v29 = *(a1 + 5);
    v53 = *(a1 + 4);
    v54 = v29;
    v49 = v29;
    v50 = v55;
    v47 = v58[0];
    v48 = v53;
    v51[0] = v56[0];
    *(v51 + 9) = *(v56 + 9);
    if (*(&v60[0] + 1) != 1)
    {
      v34 = *(a2 + 7);
      v45 = *(a2 + 6);
      v46[0] = v34;
      *(v46 + 9) = *(a2 + 121);
      v35 = *(a2 + 5);
      v43 = *(a2 + 4);
      v44 = v35;
      v42 = v60[0];
      sub_21D0D3954(v58, v40, &unk_27CE5E9E0);
      sub_21D0D3954(v60, v40, &unk_27CE5E9E0);
      sub_21D0D3954(&v52, v40, &unk_27CE5E9E0);
      v22 = _s15RemindersUICore26TTRReminderDetailViewModelV05BadgeeF0V2eeoiySbAE_AEtFZ_0(&v47, &v42);
      v38[2] = v44;
      v38[3] = v45;
      v39[0] = v46[0];
      *(v39 + 9) = *(v46 + 9);
      v38[0] = v42;
      v38[1] = v43;
      sub_21D5AF8C8(v38);
      v40[2] = v49;
      v40[3] = v50;
      v41[0] = v51[0];
      *(v41 + 9) = *(v51 + 9);
      v40[0] = v47;
      v40[1] = v48;
      sub_21D5AF8C8(v40);
      v42 = v20;
      v36 = *(a1 + 7);
      v45 = *(a1 + 6);
      v46[0] = v36;
      *(v46 + 9) = *(a1 + 121);
      v37 = *(a1 + 5);
      v43 = *(a1 + 4);
      v44 = v37;
      v25 = &v42;
      goto LABEL_23;
    }

    v44 = v54;
    v45 = v55;
    v46[0] = v56[0];
    *(v46 + 9) = *(v56 + 9);
    v42 = v52;
    v43 = v53;
    sub_21D0D3954(v58, v40, &unk_27CE5E9E0);
    sub_21D0D3954(v60, v40, &unk_27CE5E9E0);
    sub_21D0D3954(&v52, v40, &unk_27CE5E9E0);
    sub_21D5AF8C8(&v42);
  }

  v52 = v20;
  v30 = *(a1 + 7);
  v55 = *(a1 + 6);
  v56[0] = v30;
  *(v56 + 9) = *(a1 + 121);
  v31 = *(a1 + 5);
  v53 = *(a1 + 4);
  v54 = v31;
  v56[2] = v21;
  *(v57 + 9) = *(a2 + 121);
  v32 = *(a2 + 7);
  v56[5] = *(a2 + 6);
  v57[0] = v32;
  v33 = *(a2 + 5);
  v56[3] = *(a2 + 4);
  v56[4] = v33;
  sub_21D0CF7E0(&v52, &qword_27CE63F28);
  v22 = 0;
  return v22 & 1;
}

unint64_t sub_21D937A78()
{
  result = qword_27CE63F00;
  if (!qword_27CE63F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE63F00);
  }

  return result;
}

void destroy for TTRIListCellStateAdaptor.State(uint64_t a1)
{

  if (*(a1 + 56) != 1)
  {

    sub_21D1078C0(*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112));
    v2 = *(a1 + 120);
    v3 = *(a1 + 128);
    v4 = *(a1 + 136);

    sub_21D0FB9F4(v2, v3, v4);
  }
}

uint64_t initializeWithCopy for TTRIListCellStateAdaptor.State(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;
  v7 = *(a2 + 56);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v7 == 1)
  {
    v8 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v8;
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 121) = *(a2 + 121);
    v9 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v9;
  }

  else
  {
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = v7;
    v10 = *(a2 + 64);
    v11 = *(a2 + 72);
    v12 = *(a2 + 80);
    v13 = *(a2 + 88);
    v14 = *(a2 + 96);
    v15 = *(a2 + 104);
    v16 = *(a2 + 112);
    sub_21DBF8E0C();
    sub_21D0FB960(v10, v11, v12, v13, v14, v15, v16);
    *(a1 + 64) = v10;
    *(a1 + 72) = v11;
    *(a1 + 80) = v12;
    *(a1 + 88) = v13;
    *(a1 + 96) = v14;
    *(a1 + 104) = v15;
    *(a1 + 112) = v16;
    v17 = *(a2 + 120);
    v18 = *(a2 + 128);
    v19 = *(a2 + 136);
    sub_21D0FB9BC(v17, v18, v19);
    *(a1 + 120) = v17;
    *(a1 + 128) = v18;
    *(a1 + 136) = v19;
  }

  return a1;
}

uint64_t assignWithCopy for TTRIListCellStateAdaptor.State(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  sub_21DBF8E0C();

  v4 = *(a2 + 56);
  if (*(a1 + 56) == 1)
  {
    if (v4 == 1)
    {
      v5 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v5;
      v6 = *(a2 + 80);
      v7 = *(a2 + 96);
      v8 = *(a2 + 112);
      *(a1 + 121) = *(a2 + 121);
      *(a1 + 96) = v7;
      *(a1 + 112) = v8;
      *(a1 + 80) = v6;
    }

    else
    {
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      v13 = *(a2 + 64);
      v14 = *(a2 + 72);
      v15 = *(a2 + 80);
      v16 = *(a2 + 88);
      v17 = *(a2 + 96);
      v18 = *(a2 + 104);
      v19 = *(a2 + 112);
      sub_21DBF8E0C();
      sub_21D0FB960(v13, v14, v15, v16, v17, v18, v19);
      *(a1 + 64) = v13;
      *(a1 + 72) = v14;
      *(a1 + 80) = v15;
      *(a1 + 88) = v16;
      *(a1 + 96) = v17;
      *(a1 + 104) = v18;
      *(a1 + 112) = v19;
      v20 = *(a2 + 120);
      v21 = *(a2 + 128);
      v22 = *(a2 + 136);
      sub_21D0FB9BC(v20, v21, v22);
      *(a1 + 120) = v20;
      *(a1 + 128) = v21;
      *(a1 + 136) = v22;
    }
  }

  else if (v4 == 1)
  {
    sub_21D5AF8C8(a1 + 48);
    v9 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v9;
    v11 = *(a2 + 96);
    v10 = *(a2 + 112);
    v12 = *(a2 + 80);
    *(a1 + 121) = *(a2 + 121);
    *(a1 + 96) = v11;
    *(a1 + 112) = v10;
    *(a1 + 80) = v12;
  }

  else
  {
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    sub_21DBF8E0C();

    v23 = *(a2 + 64);
    v24 = *(a2 + 72);
    v25 = *(a2 + 80);
    v26 = *(a2 + 88);
    v27 = *(a2 + 96);
    v28 = *(a2 + 104);
    v29 = *(a2 + 112);
    sub_21D0FB960(v23, v24, v25, v26, v27, v28, v29);
    v30 = *(a1 + 64);
    v31 = *(a1 + 72);
    v32 = *(a1 + 80);
    v33 = *(a1 + 88);
    v34 = *(a1 + 96);
    v35 = *(a1 + 104);
    v36 = *(a1 + 112);
    *(a1 + 64) = v23;
    *(a1 + 72) = v24;
    *(a1 + 80) = v25;
    *(a1 + 88) = v26;
    *(a1 + 96) = v27;
    *(a1 + 104) = v28;
    *(a1 + 112) = v29;
    sub_21D1078C0(v30, v31, v32, v33, v34, v35, v36);
    v37 = *(a2 + 120);
    v38 = *(a2 + 128);
    v39 = *(a2 + 136);
    sub_21D0FB9BC(v37, v38, v39);
    v40 = *(a1 + 120);
    v41 = *(a1 + 128);
    v42 = *(a1 + 136);
    *(a1 + 120) = v37;
    *(a1 + 128) = v38;
    *(a1 + 136) = v39;
    sub_21D0FB9F4(v40, v41, v42);
  }

  return a1;
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t assignWithTake for TTRIListCellStateAdaptor.State(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  if (*(a1 + 56) != 1)
  {
    v7 = *(a2 + 56);
    if (v7 != 1)
    {
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = v7;

      v10 = *(a2 + 112);
      v11 = *(a1 + 64);
      v12 = *(a1 + 72);
      v13 = *(a1 + 80);
      v14 = *(a1 + 88);
      v15 = *(a1 + 96);
      v16 = *(a1 + 104);
      v17 = *(a1 + 112);
      v18 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v18;
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 112) = v10;
      sub_21D1078C0(v11, v12, v13, v14, v15, v16, v17);
      v19 = *(a2 + 136);
      v20 = *(a1 + 120);
      v21 = *(a1 + 128);
      v22 = *(a1 + 136);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 136) = v19;
      sub_21D0FB9F4(v20, v21, v22);
      return a1;
    }

    sub_21D5AF8C8(a1 + 48);
  }

  v8 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v8;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  v9 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v9;
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIListCellStateAdaptor.State(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIListCellStateAdaptor.State(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_21D938210()
{
  if (*(v0 + qword_27CE63F40 + 8))
  {
    v1 = *(v0 + qword_27CE5AF20);
    [v1 setEdgesPreservingSuperviewLayoutMargins_];
    [v1 directionalLayoutMargins];
    v2 = 8.0;
    v3 = v1;
  }

  else
  {
    v4 = *(v0 + qword_27CE63F40);
    v5 = *(v0 + qword_27CE5AF20);
    [v5 setEdgesPreservingSuperviewLayoutMargins_];
    [v5 directionalLayoutMargins];
    v3 = v5;
    v2 = v4;
  }

  return [v3 setDirectionalLayoutMargins_];
}

id TTRIReminderAttributedTextTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_21DBFA12C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

char *TTRIReminderAttributedTextTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v3[qword_27CE63F30] = 0;
  v3[qword_27CE63F38] = 0;
  v8 = &v3[qword_27CE63F40];
  *v8 = 0;
  v8[8] = 1;
  v34 = 0;
  v9 = objc_allocWithZone(type metadata accessor for TTRIReminderTitleTextView());
  v10 = TTRIReminderTitleTextView.init(isForUseInNUIContainerView:lineIndexWhereClippingBegins:hashtagTokenEditingBehavior:usesLegacyTextKit1:)(1, 5, 0, &v34, 0);
  v11 = qword_280D176B8;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = sub_21D900614(1);
  [v12 setFont_];

  [v12 setAdjustsFontForContentSizeCategory_];
  v14 = [objc_opt_self() labelColor];
  [v12 setTextColor_];

  [v12 setEditable_];
  v15 = v12;
  [v15 setBackgroundColor_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21DC09CF0;
  *(v16 + 32) = v15;
  v17 = objc_allocWithZone(MEMORY[0x277CEC628]);
  sub_21D114EC8();
  v18 = sub_21DBFA5DC();

  v19 = [v17 initWithArrangedSubviews_];

  [v19 setLayoutMarginsRelativeArrangement_];
  v20 = v19;
  [v20 setPreservesSuperviewLayoutMargins_];
  [v20 setLayoutMargins_];
  [v20 setCustomAlignmentRectInsets_];
  *&v4[qword_27CE63F48] = v15;
  v21 = v15;
  if (a3)
  {
    v22 = sub_21DBFA12C();
  }

  else
  {
    v22 = 0;
  }

  v33.receiver = v4;
  v33.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v33, sel_initWithStyle_reuseIdentifier_, a1, v22);

  v24 = qword_27CE5AF20;
  v25 = *&v23[qword_27CE5AF20];
  v26 = v23;
  [v25 setHorizontalAlignment_];
  v27 = *&v23[v24];
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_21DC09CF0;
  *(v28 + 32) = v20;
  v29 = v27;
  v30 = sub_21DBFA5DC();

  [v29 setArrangedSubviews_];

  if (v26[qword_27CE63F30])
  {
    v31 = 0;
  }

  else
  {
    v31 = 3;
  }

  [*&v23[v24] setVerticalAlignment_];

  return v26;
}

char *sub_21D93873C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return TTRIReminderAttributedTextTableViewCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

void TTRIReminderAttributedTextTableViewCell.preferredSeparatorInsetType.getter(uint64_t *a1@<X8>)
{
  if (*(v1 + qword_27CE63F38))
  {
    v3 = 0;
LABEL_13:
    *a1 = v3;
    return;
  }

  v4 = [*(v1 + qword_27CE5AF20) arrangedSubviews];
  if (!v4)
  {
LABEL_12:
    v3 = 1;
    goto LABEL_13;
  }

  v5 = v4;
  sub_21D114EC8();
  v6 = sub_21DBFA5EC();

  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  if (!sub_21DBFBD7C())
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x223D44740](0, v6);
    goto LABEL_9;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v6 + 32);
LABEL_9:
    v3 = v7;

    goto LABEL_13;
  }

  __break(1u);
}

id TTRIReminderAttributedTextTableViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void TTRIReminderAttributedTextTableViewCell.init(coder:)()
{
  *(v0 + qword_27CE63F30) = 0;
  *(v0 + qword_27CE63F38) = 0;
  v1 = v0 + qword_27CE63F40;
  *v1 = 0;
  *(v1 + 8) = 1;
  sub_21DBFC31C();
  __break(1u);
}

void sub_21D938958(uint64_t a1)
{
  *(a1 + qword_27CE63F30) = 0;
  *(a1 + qword_27CE63F38) = 0;
  v1 = a1 + qword_27CE63F40;
  *v1 = 0;
  *(v1 + 8) = 1;
  sub_21DBFC31C();
  __break(1u);
}

void TTRIReminderAttributedTextTableViewCell.init(reuseIdentifier:)()
{
  *(v0 + qword_27CE63F30) = 0;
  *(v0 + qword_27CE63F38) = 0;
  v1 = v0 + qword_27CE63F40;
  *v1 = 0;
  *(v1 + 8) = 1;
  sub_21DBFC31C();
  __break(1u);
}

void TTRIReminderAttributedTextTableViewCell.preferredMinHeightForInsetGrouppedStyle.getter(char *a1@<X8>)
{
  if (*(v1 + qword_27CE63F30) == 1)
  {
    v3 = objc_opt_self();
    v4 = [v3 mainScreen];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v25.origin.x = v6;
    v25.origin.y = v8;
    v25.size.width = v10;
    v25.size.height = v12;
    Height = CGRectGetHeight(v25);
    v14 = [v3 mainScreen];
    [v14 bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v26.origin.x = v16;
    v26.origin.y = v18;
    v26.size.width = v20;
    v26.size.height = v22;
    Width = CGRectGetWidth(v26);
    if (Height > Width)
    {
      Width = Height;
    }

    v24 = Width > 667.0;
  }

  else if (*(v1 + qword_27CE63F40 + 8))
  {
    v24 = 0;
  }

  else
  {
    v24 = 3;
  }

  *a1 = v24;
}

id TTRIReminderAttributedTextTableViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TTRIReminderAttributedTextTableViewCell()
{
  result = qword_27CE63F50;
  if (!qword_27CE63F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D938D18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v9[2] = a2;
  v9[3] = v11;
  v5 = *(a2 + qword_27CE5AF20);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21D939630;
  *(v6 + 24) = v9;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_118;
  v7 = _Block_copy(aBlock);

  [v5 performBatchUpdates_];
  _Block_release(v7);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

void sub_21D938E74(char *a1, uint64_t a2)
{
  v4 = *&a1[qword_27CE65590];
  v5 = sub_21DBFA12C();
  [v4 setText_];

  v6 = *&a1[qword_27CE63F70];
  v7 = sub_21DBFA12C();
  [v6 setText_];

  v8 = *(a2 + 80);
  v23 = *(a2 + 64);
  v24 = v8;
  v25 = *(a2 + 96);
  v9 = *(a2 + 48);
  v21 = *(a2 + 32);
  v22 = v9;
  v10 = &a1[qword_27CE655A0];
  swift_beginAccess();
  v11 = *(v10 + 3);
  v28 = *(v10 + 2);
  v29 = v11;
  v30 = v10[64];
  v12 = *(v10 + 1);
  v26 = *v10;
  v27 = v12;
  v31[2] = v28;
  v31[3] = v11;
  v32 = v30;
  v31[0] = v26;
  v31[1] = v12;
  v13 = v21;
  v14 = v22;
  v15 = v23;
  v16 = v24;
  v10[64] = v25;
  *(v10 + 2) = v15;
  *(v10 + 3) = v16;
  *v10 = v13;
  *(v10 + 1) = v14;
  sub_21D1ADB0C(&v21, v19);
  sub_21D1ADB0C(&v26, v19);
  sub_21D0CF7E0(v31, &unk_27CE5EA00);
  v19[2] = v28;
  v19[3] = v29;
  v20 = v30;
  v19[0] = v26;
  v19[1] = v27;
  sub_21DA7EF48(v19);
  sub_21D0CF7E0(&v26, &unk_27CE5EA00);
  v17 = sub_21DBFA12C();
  [a1 setAccessibilityLabel_];

  v18 = sub_21DBFA12C();
  [a1 setAccessibilityValue_];
}

char *sub_21D9390D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v9 = sub_21D900614(1);
  [v8 setFont_];

  [v8 setAdjustsFontForContentSizeCategory_];
  [v8 setLineBreakMode_];
  v10 = [objc_opt_self() secondaryLabelColor];
  [v8 setTextColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21DC09CF0;
  *(v11 + 32) = v8;
  v12 = objc_allocWithZone(MEMORY[0x277CEC638]);
  sub_21D114EC8();
  v13 = v8;
  v14 = sub_21DBFA5DC();

  v15 = [v12 initWithArrangedSubviews_];

  [v15 setAxis_];
  [v15 setDistribution_];
  [v15 setAlignment_];
  [v15 setSpacing_];
  *&v4[qword_27CE63F70] = v13;
  v16 = v13;
  if (a3)
  {
    v17 = sub_21DBFA12C();
  }

  else
  {
    v17 = 0;
  }

  v33.receiver = v4;
  v33.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v33, sel_initWithStyle_reuseIdentifier_, a1, v17);

  type metadata accessor for TTRIDetailSectionTableViewCell.ExtraAccessoryProvider();
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  *(v19 + 24) = v13;
  v20 = &v18[qword_27CE65610];
  swift_beginAccess();
  v21 = *v20;
  v22 = *(v20 + 1);
  v23 = *(v20 + 2);
  v24 = *(v20 + 3);
  v25 = *(v20 + 4);
  *v20 = v19;
  *(v20 + 1) = &off_282EDBE80;
  *(v20 + 3) = 0;
  *(v20 + 4) = 0;
  *(v20 + 2) = 0;
  LOBYTE(v19) = v20[40];
  v20[40] = 2;
  v26 = v18;
  v27 = v13;
  v28 = v26;
  v29 = v15;
  sub_21D361B20(v21, v22, v23, v24, v25, v19);
  sub_21D361BB4(v21, v22, v23, v24, v25, v19);
  v31[0] = v21;
  v31[1] = v22;
  v31[2] = v23;
  v31[3] = v24;
  v31[4] = v25;
  v32 = v19;
  sub_21DA7F6B4(v31);

  sub_21D361BB4(v21, v22, v23, v24, v25, v19);
  return v28;
}

char *sub_21D939458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_21D9390D8(a3, a4, v6);
}

unint64_t sub_21D9395DC()
{
  result = qword_27CE63F88;
  if (!qword_27CE63F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE63F88);
  }

  return result;
}

uint64_t TTRRemindersListReminderFormatter.DueDateSource.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRRemindersListReminderFormatter.dueDateSource.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t TTRRemindersListReminderFormatter.dueDateSource.setter(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t TTRRemindersListReminderFormatter.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t TTRRemindersListReminderFormatter.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t TTRRemindersListReminderFormatter.localizedDescription(for:customDisplayDate:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  sub_21D0D32E4(a1, v35);
  v36 = 0;
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  TTRRemindersListViewModel.Reminder.init(item:reminderAndList:precomputedProperties:overrides:)(v11, v35, v33, MEMORY[0x277D84F90], v14);
  v16 = a2;
  if (a2)
  {
    goto LABEL_7;
  }

  swift_beginAccess();
  v17 = *(v3 + 16);
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  if (v17)
  {
    (*(v19 + 160))(v18, v19);
    v20 = sub_21DBF509C();
    v21 = *(v20 - 8);
    v22 = 0;
    if ((*(v21 + 48))(v8, 1, v20) != 1)
    {
      v22 = sub_21DBF4EDC();
      (*(v21 + 8))(v8, v20);
    }

    v23 = objc_allocWithZone(MEMORY[0x277D44600]);
    sub_21D939B74();
    v24 = sub_21DBFA5DC();
    v16 = [v23 initWithDueDateComponents:v22 alarms:v24];

    if (v16)
    {
      goto LABEL_6;
    }

LABEL_10:
    v27 = 0;
    v28 = 0;
    goto LABEL_8;
  }

  v16 = (*(v19 + 104))(v18, v19);
  if (!v16)
  {
    goto LABEL_10;
  }

LABEL_6:
  v25 = v16;
LABEL_7:
  v32 = v16;
  v26 = a2;
  sub_21D939BC0(&v32, v33);

  v28 = *(&v33[0] + 1);
  v27 = *&v33[0];
LABEL_8:
  v29 = sub_21D939E8C(v14, v27, v28);

  sub_21D93A4EC(v14, type metadata accessor for TTRRemindersListViewModel.Reminder);
  return v29;
}

unint64_t sub_21D939B74()
{
  result = qword_280D17670;
  if (!qword_280D17670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D17670);
  }

  return result;
}

uint64_t sub_21D939BC0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_21DBF563C();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = [v9 date];
  sub_21DBF55FC();

  LODWORD(v10) = [v9 isAllDay];
  v11 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v11 setDoesRelativeDateFormatting_];
  [v11 setDateStyle_];
  [v11 setTimeStyle_];
  v12 = sub_21DBF55BC();
  v13 = [v11 stringFromDate_];

  v14 = sub_21DBFA16C();
  v16 = v15;

  result = (*(v5 + 8))(v8, v4);
  *a2 = v14;
  a2[1] = v16;
  return result;
}

uint64_t sub_21D939D7C(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = result;
    v5 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v5 = result & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      swift_beginAccess();
      v7 = *(a3 + 16);
      sub_21DBF8E0C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a3 + 16) = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = sub_21D210A84(0, *(v7 + 2) + 1, 1, v7);
        *(a3 + 16) = v7;
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      if (v10 >= v9 >> 1)
      {
        v7 = sub_21D210A84((v9 > 1), v10 + 1, 1, v7);
      }

      *(v7 + 2) = v10 + 1;
      v11 = &v7[16 * v10];
      *(v11 + 4) = v4;
      *(v11 + 5) = a2;
      *(a3 + 16) = v7;
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_21D939E8C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v46 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  v44 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v43 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListViewModel.Reminder(0);
  v11 = *(a1 + v10[7]);
  if (v11)
  {
    v12 = [v11 string];
    v13 = sub_21DBFA16C();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  v16 = *(a1 + v10[27]);
  switch(v16)
  {
    case 3:
      v17 = 539042081;
      v18 = 0xE400000000000000;
      break;
    case 2:
      v17 = 2105633;
      v18 = 0xE300000000000000;
      break;
    case 1:
      v17 = 8225;
      v18 = 0xE200000000000000;
      break;
    default:
      goto LABEL_11;
  }

  v48 = v17;
  v49 = v18;
  MEMORY[0x223D42AA0](v13, v15);

  v13 = v48;
  v15 = v49;
LABEL_11:
  v19 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
  v20 = swift_allocObject();
  *(v19 + 16) = v20;
  v45 = xmmword_21DC08D00;
  *(v20 + 16) = xmmword_21DC08D00;
  *(v20 + 32) = v13;
  *(v20 + 40) = v15;
  v21 = a3;
  if (!a3)
  {
    sub_21D93A414(a1 + v10[11], v7);
    if ((*(v44 + 48))(v7, 1, v8) == 1)
    {
      sub_21D93A484(v7);
      v46 = 0;
      v21 = 0;
    }

    else
    {
      v22 = v7;
      v23 = v43;
      sub_21D3DA2C4(v22, v43);
      v24 = *(v23 + *(v8 + 32));
      v25 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      [v25 setDoesRelativeDateFormatting_];
      [v25 setDateStyle_];
      [v25 setTimeStyle_];
      v26 = sub_21DBF55BC();
      v27 = [v25 stringFromDate_];

      v46 = sub_21DBFA16C();
      v21 = v28;

      sub_21D93A4EC(v23, type metadata accessor for TTRRemindersListViewModel.DisplayDate);
    }
  }

  sub_21DBF8E0C();
  sub_21D939D7C(v46, v21, v19);

  v29 = *(a1 + v10[15]);
  if (v29)
  {
    v30 = [v29 string];
    v31 = sub_21DBFA16C();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  sub_21D939D7C(v31, v33, v19);

  v34 = (a1 + v10[13]);
  v35 = v34[3];
  if (v35)
  {
    v37 = v34[4];
    v36 = v34[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
    v38 = swift_allocObject();
    *(v38 + 16) = v45;
    *(v38 + 56) = MEMORY[0x277D837D0];
    *(v38 + 64) = sub_21D17A884();
    *(v38 + 32) = v37;
    *(v38 + 40) = v36;
    sub_21DBF8E0C();
    v39 = sub_21DBFA17C();
    v35 = v40;
  }

  else
  {
    v39 = 0;
  }

  sub_21D939D7C(v39, v35, v19);

  swift_beginAccess();
  v47 = *(v19 + 16);
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D1ADAA8();
  v41 = sub_21DBFA07C();

  return v41;
}

unint64_t sub_21D93A360()
{
  result = qword_27CE63F90;
  if (!qword_27CE63F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE63F90);
  }

  return result;
}

uint64_t sub_21D93A414(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D93A484(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D93A4EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall TTRIReminderTitleCellContent.beginEditing()()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x68);
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v2 + qword_27CE63F48);
    v4 = [v3 window];
    [v4 makeKeyWindow];

    [v3 becomeFirstResponder];
  }
}

Swift::Void __swiftcall TTRIReminderTitleCellContent.selectAllText()()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x68);
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v2 + qword_27CE63F48);
    v4 = [v3 beginningOfDocument];
    v5 = [v3 endOfDocument];
    v6 = [v3 textRangeFromPosition:v4 toPosition:v5];

    [v3 setSelectedTextRange_];
  }
}

id TTRIReminderTitleCellContent.__allocating_init(placeholder:accessibilityIdentifier:isSeparatorHidden:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v35 = a4;
  v36 = a6;
  v33 = a5;
  v34 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62240);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32[-v10];
  v12 = sub_21DBF56BC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = objc_allocWithZone(v6);
  v17 = (v16 + qword_27CE8EBC8);
  *v17 = 0u;
  v17[1] = 0u;
  v17[2] = 0u;
  v38[0] = 0;
  v38[1] = 0xE000000000000000;
  sub_21DBFBEEC();

  strcpy(v38, "ReminderTitle-");
  HIBYTE(v38[1]) = -18;
  sub_21DBF56AC();
  v18 = sub_21DBF565C();
  v20 = v19;
  (*(v13 + 8))(v15, v12);
  MEMORY[0x223D42AA0](v18, v20);

  v21 = (v16 + qword_27CE63F98);
  *v21 = a1;
  v21[1] = a2;
  *(v16 + qword_27CE63FA0) = v33;
  v22 = v38[0];
  v23 = v38[1];
  v24 = (v16 + qword_27CE8EBD0);
  v25 = v35;
  *v24 = v34;
  v24[1] = v25;
  v26 = v36;
  sub_21D0D3954(v36, v11, &qword_27CE62240);
  v27 = MEMORY[0x277D85000];
  *(v16 + *((*MEMORY[0x277D85000] & *v16) + 0x68)) = 0;
  *(v16 + *((*v27 & *v16) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v16 + *((*v27 & *v16) + 0x90)) = 0;
  sub_21D0D3954(v11, v16 + *((*v27 & *v16) + 0x78), &qword_27CE62240);
  *(v16 + *((*v27 & *v16) + 0x80)) = 0;
  v28 = (v16 + *((*v27 & *v16) + 0x88));
  *v28 = v22;
  v28[1] = v23;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62248);
  v37.receiver = v16;
  v37.super_class = v29;
  v30 = objc_msgSendSuper2(&v37, sel_init);
  sub_21D0CF7E0(v26, &qword_27CE62240);
  sub_21D0CF7E0(v11, &qword_27CE62240);
  return v30;
}

uint64_t TTRIReminderTitleCellContent.titleModule.setter(uint64_t a1)
{
  v3 = &v1[qword_27CE8EBC8];
  swift_beginAccess();
  sub_21D93B5EC(a1, v3);
  swift_endAccess();
  if (!*v3)
  {
    return sub_21D0CF7E0(a1, &unk_27CE5F240);
  }

  v4 = *(v3 + 1);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 24);
  swift_unknownObjectRetain();
  v7 = v1;
  v6(v1, &protocol witness table for TTRIReminderTitleCellContent, ObjectType, v4);
  v8 = *((*MEMORY[0x277D85000] & *v7) + 0x68);
  swift_beginAccess();
  v9 = *&v7[v8];
  if (v9)
  {
    v10 = *(v4 + 48);
    v11 = *(v9 + qword_27CE63F48);
    v10();
    swift_unknownObjectRelease();

    return sub_21D0CF7E0(a1, &unk_27CE5F240);
  }

  sub_21D0CF7E0(a1, &unk_27CE5F240);
  return swift_unknownObjectRelease();
}

uint64_t TTRIReminderTitleCellContentState.init(item:attributedTitle:hashtagVisibility:titleFont:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a3;
  v10 = type metadata accessor for TTRIReminderTitleCellContentState(0);
  v11 = v10[7];
  result = sub_21D10596C(a1, a5, type metadata accessor for TTRRemindersListViewModel.Item);
  *(a5 + v10[5]) = a2;
  *(a5 + v10[6]) = v9;
  *(a5 + v11) = a4;
  return result;
}

id TTRIReminderTitleCellContent.currentText.getter()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x68);
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    return [*(v2 + qword_27CE63F48) attributedText];
  }

  else
  {
    return 0;
  }
}

Swift::Void __swiftcall TTRIReminderTitleCellContent.endEditing()()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x68);
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    [*(v2 + qword_27CE63F48) resignFirstResponder];
  }
}

id TTRIReminderTitleCellContentState.attributedTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRIReminderTitleCellContentState(0) + 20));

  return v1;
}

void TTRIReminderTitleCellContentState.attributedTitle.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRIReminderTitleCellContentState(0) + 20);

  *(v1 + v3) = a1;
}

uint64_t TTRIReminderTitleCellContentState.hashtagVisibility.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for TTRIReminderTitleCellContentState(0) + 24));

  return sub_21DBF8E0C();
}

uint64_t TTRIReminderTitleCellContentState.hashtagVisibility.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for TTRIReminderTitleCellContentState(0) + 24);

  *(v1 + v3) = v2;
  return result;
}

void *TTRIReminderTitleCellContentState.titleFont.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRIReminderTitleCellContentState(0) + 28));
  v2 = v1;
  return v1;
}

void TTRIReminderTitleCellContentState.titleFont.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRIReminderTitleCellContentState(0) + 28);

  *(v1 + v3) = a1;
}

uint64_t TTRIReminderTitleCellContent.ttriAccessibilityIdentifierForTextView.getter()
{
  v1 = *(v0 + qword_27CE8EBD0);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRIReminderTitleCellContent.titleModule.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_27CE8EBC8;
  swift_beginAccess();
  return sub_21D0D3954(v1 + v3, a1, &unk_27CE5F240);
}

void (*TTRIReminderTitleCellContent.titleModule.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = qword_27CE8EBC8;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_21D93B160;
}

void sub_21D93B160(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = &v4[v3[4]];
    if (*v5)
    {
      v6 = *(v5 + 1);
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 24);
      swift_unknownObjectRetain();
      v9 = v4;
      v8(v4, &protocol witness table for TTRIReminderTitleCellContent, ObjectType, v6);
      v10 = *((*MEMORY[0x277D85000] & *v9) + 0x68);
      swift_beginAccess();
      v11 = *&v9[v10];
      if (v11)
      {
        v12 = *(v6 + 48);
        v13 = *(v11 + qword_27CE63F48);
        v12();
      }

      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

id TTRIReminderTitleCellContent.init(placeholder:accessibilityIdentifier:isSeparatorHidden:state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v7 = v6;
  v35 = a4;
  v36 = a6;
  v33 = a5;
  v34 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62240);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32[-v11];
  v13 = sub_21DBF56BC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = (v6 + qword_27CE8EBC8);
  *v17 = 0u;
  v17[1] = 0u;
  v17[2] = 0u;
  v38[0] = 0;
  v38[1] = 0xE000000000000000;
  sub_21DBFBEEC();

  strcpy(v38, "ReminderTitle-");
  HIBYTE(v38[1]) = -18;
  sub_21DBF56AC();
  v18 = sub_21DBF565C();
  v20 = v19;
  (*(v14 + 8))(v16, v13);
  MEMORY[0x223D42AA0](v18, v20);

  v21 = (v6 + qword_27CE63F98);
  *v21 = a1;
  v21[1] = a2;
  *(v6 + qword_27CE63FA0) = v33;
  v22 = v38[0];
  v23 = v38[1];
  v24 = (v7 + qword_27CE8EBD0);
  v25 = v35;
  *v24 = v34;
  v24[1] = v25;
  v26 = v36;
  sub_21D0D3954(v36, v12, &qword_27CE62240);
  v27 = MEMORY[0x277D85000];
  *(v7 + *((*MEMORY[0x277D85000] & *v7) + 0x68)) = 0;
  *(v7 + *((*v27 & *v7) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + *((*v27 & *v7) + 0x90)) = 0;
  sub_21D0D3954(v12, v7 + *((*v27 & *v7) + 0x78), &qword_27CE62240);
  *(v7 + *((*v27 & *v7) + 0x80)) = 0;
  v28 = (v7 + *((*v27 & *v7) + 0x88));
  *v28 = v22;
  v28[1] = v23;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62248);
  v37.receiver = v7;
  v37.super_class = v29;
  v30 = objc_msgSendSuper2(&v37, sel_init);
  sub_21D0CF7E0(v26, &qword_27CE62240);
  sub_21D0CF7E0(v12, &qword_27CE62240);
  return v30;
}

uint64_t sub_21D93B5EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F240);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_21D93B67C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *((*MEMORY[0x277D85000] & **a1) + 0x68);
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (v5)
  {
    result = [*(v5 + qword_27CE63F48) attributedText];
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

void TTRIReminderTitleCellContent.currentText.setter(void *a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = *(v4 + qword_27CE63F48);
    if (a1)
    {
      v6 = v5;
      v7 = a1;
    }

    else
    {
      v8 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v9 = v5;
      v7 = [v8 init];
    }

    v10 = a1;
    [v5 setAttributedText_];
  }

  else
  {
    v5 = a1;
  }
}

void (*TTRIReminderTitleCellContent.currentText.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (v6)
  {
    v7 = [*(v6 + qword_27CE63F48) attributedText];
  }

  else
  {
    v7 = 0;
  }

  *(v4 + 24) = v7;
  return sub_21D93B8EC;
}

void sub_21D93B8EC(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v5 = *(*(*a1 + 32) + *(*a1 + 40));
  if (a2)
  {
    if (v5)
    {
      v6 = *(v5 + qword_27CE63F48);
      if (v3)
      {
        v7 = v6;
        v8 = v3;
      }

      else
      {
        v12 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v13 = v6;
        v8 = [v12 init];
      }

      v14 = v3;
      [v6 setAttributedText_];

      v3 = *v4;
    }
  }

  else if (v5)
  {
    v9 = *(v5 + qword_27CE63F48);
    if (v3)
    {
      v10 = v9;
      v11 = v3;
    }

    else
    {
      v15 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v16 = v9;
      v11 = [v15 init];
    }

    v17 = v3;
    [v9 setAttributedText_];

    goto LABEL_13;
  }

  v9 = v3;
LABEL_13:

  free(v2);
}

uint64_t TTRIReminderTitleCellContent.didAssignCell(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + qword_27CE63F30);
  *(a1 + qword_27CE63F30) = 0;
  if (v4 == 1)
  {
    [*(a1 + qword_27CE5AF20) setVerticalAlignment_];
  }

  v5 = *(v2 + qword_27CE63FA0);
  v6 = *(a1 + qword_27CE63F38);
  *(a1 + qword_27CE63F38) = v5;
  if (v5 != v6)
  {
    [*(a1 + qword_27CE5AF20) invalidateIntrinsicContentSize];
  }

  v7 = *(a1 + qword_27CE63F48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D20;
  v9 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 placeholderTextColor];
  v13 = sub_21D0D8CF0(0, &qword_280D1B8F0);
  v14 = MEMORY[0x277D740A8];
  *(inited + 40) = v12;
  v15 = *v14;
  *(inited + 64) = v13;
  *(inited + 72) = v15;
  v16 = qword_280D176B8;
  v17 = v15;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = sub_21D900614(1);
  *(inited + 104) = sub_21D0D8CF0(0, &qword_280D176B0);
  *(inited + 80) = v18;
  sub_21D11274C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2C0);
  swift_arrayDestroy();
  v19 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v20 = sub_21DBFA12C();
  type metadata accessor for Key(0);
  sub_21D112874();
  v21 = sub_21DBF9E5C();

  v22 = [v19 initWithString:v20 attributes:v21];

  [v7 setAttributedPlaceholder_];
  v23 = sub_21DBFA12C();
  [v7 setAccessibilityIdentifier_];

  v24 = sub_21DBFA12C();
  [v7 setAccessibilityLabel_];

  v25 = &v7[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_lineIndexWhereClippingBegins];
  swift_beginAccess();
  v26 = *v25;
  v27 = v25[8];
  *v25 = 5;
  v25[8] = 0;
  if ((v27 & 1) != 0 || v26 != 5)
  {
    [v7 invalidateIntrinsicContentSize];
  }

  v28 = (v2 + qword_27CE8EBC8);
  result = swift_beginAccess();
  if (*v28)
  {
    v30 = v28[1];
    ObjectType = swift_getObjectType();
    v32 = *(v30 + 48);
    swift_unknownObjectRetain();
    v32(v7, ObjectType, v30);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRIReminderTitleCellContent.updateCell(_:)()
{
  v1 = type metadata accessor for TTRIReminderTitleCellContentState(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62240);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E520);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v23[-v12];
  v14 = *((*MEMORY[0x277D85000] & *v0) + 0x78);
  swift_beginAccess();
  sub_21D0D3954(v0 + v14, v7, &qword_27CE62240);
  v15 = 1;
  if ((*(v2 + 48))(v7, 1, v1) != 1)
  {
    sub_21D10596C(v7, v4, type metadata accessor for TTRIReminderTitleCellContentState);
    sub_21D93C17C(v4, v13);
    sub_21D9412F0(v4, type metadata accessor for TTRIReminderTitleCellContentState);
    v15 = 0;
  }

  v16 = type metadata accessor for TTRReminderCellTitleViewModel();
  (*(*(v16 - 8) + 56))(v13, v15, 1, v16);
  v17 = (v0 + qword_27CE8EBC8);
  swift_beginAccess();
  if (*v17)
  {
    v18 = v17[1];
    swift_endAccess();
    ObjectType = swift_getObjectType();
    sub_21D0D3954(v13, v10, &qword_27CE5E520);
    v20 = *(v18 + 8);
    v21 = *(v20 + 16);
    swift_unknownObjectRetain();
    v21(v10, ObjectType, v20);
    swift_unknownObjectRelease();
    return sub_21D0CF7E0(v13, &qword_27CE5E520);
  }

  else
  {
    sub_21D0CF7E0(v13, &qword_27CE5E520);
    return swift_endAccess();
  }
}

uint64_t sub_21D93C17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D10548C(a1, v6, type metadata accessor for TTRRemindersListViewModel.Item);
  v7 = type metadata accessor for TTRIReminderTitleCellContentState(0);
  v8 = *(a1 + v7[5]);
  v9 = *(a1 + v7[7]);
  if (v9)
  {
    v10 = v8;
    v11 = v9;
  }

  else
  {
    v12 = qword_280D176B8;
    v13 = v8;
    if (v12 != -1)
    {
      swift_once();
    }

    v11 = sub_21D900614(1);
    v9 = 0;
  }

  v14 = *(a1 + v7[6]);
  v15 = objc_opt_self();
  sub_21DBF8E0C();
  v16 = v9;
  v17 = [v15 secondaryLabelColor];
  v18 = type metadata accessor for TTRReminderCellTitleViewModel();
  v19 = v18[7];
  v20 = a2 + v18[9];
  result = sub_21D10596C(v6, a2, type metadata accessor for TTRRemindersListViewModel.Item);
  *(a2 + v18[5]) = 1;
  *(a2 + v19) = v8;
  *(a2 + v18[6]) = v11;
  *(a2 + v18[8]) = 0;
  *v20 = 0;
  *(v20 + 8) = 0;
  *(a2 + v18[10]) = v14;
  *(a2 + v18[11]) = v17;
  *(a2 + v18[12]) = 0;
  return result;
}

uint64_t sub_21D93C394()
{

  sub_21D0CF7E0(v0 + qword_27CE8EBC8, &unk_27CE5F240);
}

id TTRIReminderTitleCellContent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21D93C434(uint64_t a1)
{

  sub_21D0CF7E0(a1 + qword_27CE8EBC8, &unk_27CE5F240);
}

void *TTRIReminderTitleCellContent.editableReminderCell(hosting:)()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x68);
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v3 = v2;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void *sub_21D93C56C()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x68);
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v3 = v2;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

BOOL _s15RemindersUICore33TTRIReminderTitleCellContentStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(&v23 - v8);
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v6);
  v10 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v9, v6);
  sub_21D9412F0(v6, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D9412F0(v9, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  sub_21D0D8CF0(0, &qword_280D17680);
  v11 = type metadata accessor for TTRIReminderTitleCellContentState(0);
  if ((sub_21DBFB63C() & 1) == 0)
  {
    return 0;
  }

  v12 = *(v11 + 24);
  v13 = *(a2 + v12);
  if (*(a1 + v12))
  {
    if (!v13)
    {

      return 0;
    }

    sub_21DBF8E0C();
    v14 = sub_21DBF8E0C();
    v15 = sub_21D3220EC(v14, v13);

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {

    if (v13)
    {
      return 0;
    }
  }

  v16 = *(v11 + 28);
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D176B0);
    v19 = v18;
    v20 = v17;
    v21 = sub_21DBFB63C();

    return (v21 & 1) != 0;
  }

  return !v18;
}

void sub_21D93C820(_BYTE *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62240);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v19[-v7];
  v9 = type metadata accessor for TTRIReminderTitleCellContentState(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1 == 3)
  {
    v13 = MEMORY[0x277D85000];
    v14 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
    swift_beginAccess();
    sub_21D0D3954(v1 + v14, v8, &qword_27CE62240);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_21D0CF7E0(v8, &qword_27CE62240);
    }

    else
    {
      sub_21D10596C(v8, v12, type metadata accessor for TTRIReminderTitleCellContentState);
      v15 = *((*v13 & *v1) + 0x68);
      swift_beginAccess();
      v16 = *(v1 + v15);
      if (!v16 || (v17 = [*(v16 + qword_27CE63F48) attributedText]) == 0)
      {
        v17 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
      }

      v18 = *(v9 + 20);

      *&v12[v18] = v17;
      sub_21D10548C(v12, v5, type metadata accessor for TTRIReminderTitleCellContentState);
      (*(v10 + 56))(v5, 0, 1, v9);
      sub_21D71E4D0(v5);
      sub_21D0CF7E0(v5, &qword_27CE62240);
      sub_21D9412F0(v12, type metadata accessor for TTRIReminderTitleCellContentState);
    }
  }
}

void *initializeBufferWithCopyOfBuffer for TTRIReminderTitleCellContentState(void *a1, void *a2, int *a3)
{
  v3 = a2;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v6 = a3;
    v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v28 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v29 = *(v28 - 8);
            if ((*(v29 + 48))(v3, 1, v28))
            {
              v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(a1, v3, *(*(v30 - 8) + 64));
            }

            else
            {
              *a1 = *v3;
              v39 = *(v28 + 20);
              v40 = sub_21DBF6C1C();
              v117 = *(*(v40 - 8) + 16);
              sub_21DBF8E0C();
              v117(a1 + v39, v3 + v39, v40);
              (*(v29 + 56))(a1, 0, 1, v28);
            }

            v41 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v42 = (a1 + v41);
            v43 = (v3 + v41);
            v44 = v43[1];
            if (v44)
            {
              *v42 = *v43;
              v42[1] = v44;
              v45 = v43[2];
              v42[2] = v45;
              sub_21DBF8E0C();
              v46 = v45;
            }

            else
            {
              *v42 = *v43;
              v42[2] = v43[2];
            }

            goto LABEL_130;
          case 7:
            v34 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v35 = *(v34 - 8);
            if ((*(v35 + 48))(v3, 1, v34))
            {
              v36 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, v3, *(*(v36 - 8) + 64));
            }

            else
            {
              v48 = sub_21DBF563C();
              (*(*(v48 - 8) + 16))(a1, v3, v48);
              *(a1 + *(v34 + 20)) = *(v3 + *(v34 + 20));
              (*(v35 + 56))(a1, 0, 1, v34);
            }

            v49 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v49 + 20)) = *(v3 + *(v49 + 20));
            goto LABEL_130;
          case 8:
            *a1 = *v3;
            v9 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v10 = sub_21DBF8D7C();
            (*(*(v10 - 8) + 16))(a1 + v9, v3 + v9, v10);
LABEL_130:
            swift_storeEnumTagMultiPayload();
            goto LABEL_131;
        }

LABEL_35:
        memcpy(a1, v3, *(*(v7 - 8) + 64));
LABEL_131:
        v105 = v6[5];
        v106 = v6[6];
        v107 = *(v3 + v105);
        *(a1 + v105) = v107;
        *(a1 + v106) = *(v3 + v106);
        v108 = v6[7];
        v109 = *(v3 + v108);
        *(a1 + v108) = v109;
        v110 = v107;
        sub_21DBF8E0C();
        v111 = v109;
        return a1;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *a1 = *v3;
        *(a1 + 8) = *(v3 + 8);
        *(a1 + 9) = *(v3 + 9);
        v20 = v3[2];
        a1[2] = v20;
        v21 = v20;
        goto LABEL_130;
      }

      v31 = *v3;
      *a1 = *v3;
      v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v17 = *(v16 - 8);
      v32 = *(v17 + 48);
      v33 = v31;
      if (v32(v3 + v15, 1, v16))
      {
LABEL_28:
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v15, v3 + v15, *(*(v27 - 8) + 64));
        goto LABEL_130;
      }

      v47 = swift_getEnumCaseMultiPayload();
      if (v47 > 4)
      {
        if (v47 <= 7)
        {
          if (v47 == 5 || v47 == 6)
          {
            goto LABEL_115;
          }

          goto LABEL_128;
        }

        if (v47 != 8 && v47 != 9)
        {
          goto LABEL_128;
        }

LABEL_114:
        v102 = *(v3 + v15);
        *(a1 + v15) = v102;
        v103 = v102;
        swift_storeEnumTagMultiPayload();
LABEL_129:
        (*(v17 + 56))(a1 + v15, 0, 1, v16);
        goto LABEL_130;
      }

      if (v47 <= 2)
      {
        if (v47 != 1)
        {
          if (v47 == 2)
          {
            goto LABEL_115;
          }

LABEL_128:
          memcpy(a1 + v15, v3 + v15, *(v17 + 64));
          goto LABEL_129;
        }

        goto LABEL_114;
      }

LABEL_115:
      v104 = sub_21DBF563C();
      (*(*(v104 - 8) + 16))(a1 + v15, v3 + v15, v104);
      swift_storeEnumTagMultiPayload();
      goto LABEL_129;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v24 = *v3;
        *a1 = *v3;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v25 = *(v17 + 48);
        v26 = v24;
        if (v25(v3 + v15, 1, v16))
        {
          goto LABEL_28;
        }

        v38 = swift_getEnumCaseMultiPayload();
        if (v38 > 4)
        {
          if (v38 <= 7)
          {
            if (v38 == 5 || v38 == 6)
            {
              goto LABEL_115;
            }

            goto LABEL_128;
          }

          if (v38 != 8 && v38 != 9)
          {
            goto LABEL_128;
          }

          goto LABEL_114;
        }

        if (v38 > 2)
        {
          goto LABEL_115;
        }

        if (v38 == 1)
        {
          goto LABEL_114;
        }

        if (v38 != 2)
        {
          goto LABEL_128;
        }
      }

      else
      {
        v14 = *v3;
        *a1 = *v3;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v18 = *(v17 + 48);
        v19 = v14;
        if (v18(v3 + v15, 1, v16))
        {
          goto LABEL_28;
        }

        v37 = swift_getEnumCaseMultiPayload();
        if (v37 > 4)
        {
          if (v37 <= 7)
          {
            if (v37 == 5 || v37 == 6)
            {
              goto LABEL_115;
            }

            goto LABEL_128;
          }

          if (v37 != 8 && v37 != 9)
          {
            goto LABEL_128;
          }

          goto LABEL_114;
        }

        if (v37 > 2)
        {
          goto LABEL_115;
        }

        if (v37 == 1)
        {
          goto LABEL_114;
        }

        if (v37 != 2)
        {
          goto LABEL_128;
        }
      }

      goto LABEL_115;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_35;
      }

      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v13 = swift_getEnumCaseMultiPayload();
      v121 = v6;
      if (v13 > 4)
      {
        if (v13 <= 7)
        {
          if (v13 == 5 || v13 == 6)
          {
            goto LABEL_65;
          }

          goto LABEL_91;
        }

        if (v13 != 8 && v13 != 9)
        {
          goto LABEL_91;
        }
      }

      else
      {
        if (v13 > 2)
        {
LABEL_65:
          v50 = sub_21DBF563C();
          (*(*(v50 - 8) + 16))(a1, v3, v50);
          swift_storeEnumTagMultiPayload();
LABEL_92:
          v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v57 = v56[5];
          v58 = a1 + v57;
          v59 = v3 + v57;
          v60 = *(v3 + v57 + 8);
          if (v60)
          {
            v118 = v3;
            *v58 = *v59;
            *(v58 + 1) = v60;
            v61 = *(v59 + 2);
            v62 = *(v59 + 3);
            v63 = *(v59 + 4);
            v64 = *(v59 + 5);
            v66 = *(v59 + 6);
            v65 = *(v59 + 7);
            v113 = v59[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v61, v62, v63, v64, v66, v65, v113);
            *(v58 + 2) = v61;
            *(v58 + 3) = v62;
            *(v58 + 4) = v63;
            *(v58 + 5) = v64;
            *(v58 + 6) = v66;
            *(v58 + 7) = v65;
            v58[64] = v113;
            *(v58 + 65) = *(v59 + 65);
            v67 = v59[120];
            if (v67 == 255)
            {
              *(v58 + 72) = *(v59 + 72);
              *(v58 + 88) = *(v59 + 88);
              *(v58 + 104) = *(v59 + 104);
              v58[120] = v59[120];
            }

            else
            {
              v68 = *(v59 + 9);
              v114 = *(v59 + 10);
              v69 = *(v59 + 11);
              v70 = *(v59 + 12);
              v71 = *(v59 + 13);
              v72 = *(v59 + 14);
              v73 = v67 & 1;
              sub_21D0FB960(v68, v114, v69, v70, v71, v72, v67 & 1);
              *(v58 + 9) = v68;
              *(v58 + 10) = v114;
              *(v58 + 11) = v69;
              *(v58 + 12) = v70;
              *(v58 + 13) = v71;
              *(v58 + 14) = v72;
              v58[120] = v73;
            }

            v6 = v121;
            v58[121] = v59[121];
            v3 = v118;
          }

          else
          {
            v74 = *(v59 + 5);
            *(v58 + 4) = *(v59 + 4);
            *(v58 + 5) = v74;
            *(v58 + 6) = *(v59 + 6);
            *(v58 + 106) = *(v59 + 106);
            v75 = *(v59 + 1);
            *v58 = *v59;
            *(v58 + 1) = v75;
            v76 = *(v59 + 3);
            *(v58 + 2) = *(v59 + 2);
            *(v58 + 3) = v76;
          }

          *(a1 + v56[6]) = *(v3 + v56[6]);
          *(a1 + v56[7]) = *(v3 + v56[7]);
          *(a1 + v56[8]) = *(v3 + v56[8]);
          *(a1 + v56[9]) = *(v3 + v56[9]);
          *(a1 + v56[10]) = *(v3 + v56[10]);
          v77 = v56[11];
          v78 = *(v3 + v77);
          *(a1 + v77) = v78;
          v79 = v78;
          goto LABEL_130;
        }

        if (v13 != 1)
        {
          if (v13 == 2)
          {
            goto LABEL_65;
          }

LABEL_91:
          memcpy(a1, v3, *(*(v12 - 8) + 64));
          goto LABEL_92;
        }
      }

      v51 = *v3;
      *a1 = *v3;
      v52 = v51;
      swift_storeEnumTagMultiPayload();
      goto LABEL_92;
    }

    v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v23 = swift_getEnumCaseMultiPayload();
    v122 = v6;
    if (v23 > 4)
    {
      if (v23 <= 7)
      {
        if (v23 == 5 || v23 == 6)
        {
          goto LABEL_69;
        }

        goto LABEL_99;
      }

      if (v23 != 8 && v23 != 9)
      {
        goto LABEL_99;
      }
    }

    else
    {
      if (v23 > 2)
      {
LABEL_69:
        v53 = sub_21DBF563C();
        (*(*(v53 - 8) + 16))(a1, v3, v53);
        swift_storeEnumTagMultiPayload();
LABEL_100:
        v80 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v81 = v80[5];
        v82 = a1 + v81;
        v83 = v3 + v81;
        v84 = *(v3 + v81 + 8);
        if (v84)
        {
          *v82 = *v83;
          *(v82 + 1) = v84;
          v85 = *(v83 + 2);
          v86 = *(v83 + 3);
          v87 = *(v83 + 4);
          v88 = *(v83 + 5);
          v89 = *(v83 + 6);
          v119 = *(v83 + 7);
          v115 = v83[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v85, v86, v87, v88, v89, v119, v115);
          *(v82 + 2) = v85;
          *(v82 + 3) = v86;
          *(v82 + 4) = v87;
          *(v82 + 5) = v88;
          *(v82 + 6) = v89;
          *(v82 + 7) = v119;
          v82[64] = v115;
          *(v82 + 65) = *(v83 + 65);
          v90 = v83[120];
          if (v90 == 255)
          {
            *(v82 + 72) = *(v83 + 72);
            *(v82 + 88) = *(v83 + 88);
            *(v82 + 104) = *(v83 + 104);
            v82[120] = v83[120];
          }

          else
          {
            v116 = *(v83 + 10);
            v120 = *(v83 + 9);
            v91 = *(v83 + 11);
            v92 = *(v83 + 12);
            v93 = *(v83 + 13);
            v94 = *(v83 + 14);
            v95 = v90 & 1;
            sub_21D0FB960(v120, v116, v91, v92, v93, v94, v90 & 1);
            *(v82 + 9) = v120;
            *(v82 + 10) = v116;
            *(v82 + 11) = v91;
            *(v82 + 12) = v92;
            *(v82 + 13) = v93;
            *(v82 + 14) = v94;
            v82[120] = v95;
          }

          v6 = v122;
          v82[121] = v83[121];
        }

        else
        {
          v96 = *(v83 + 5);
          *(v82 + 4) = *(v83 + 4);
          *(v82 + 5) = v96;
          *(v82 + 6) = *(v83 + 6);
          *(v82 + 106) = *(v83 + 106);
          v97 = *(v83 + 1);
          *v82 = *v83;
          *(v82 + 1) = v97;
          v98 = *(v83 + 3);
          *(v82 + 2) = *(v83 + 2);
          *(v82 + 3) = v98;
        }

        *(a1 + v80[6]) = *(v3 + v80[6]);
        *(a1 + v80[7]) = *(v3 + v80[7]);
        *(a1 + v80[8]) = *(v3 + v80[8]);
        *(a1 + v80[9]) = *(v3 + v80[9]);
        *(a1 + v80[10]) = *(v3 + v80[10]);
        v99 = v80[11];
        v100 = *(v3 + v99);
        *(a1 + v99) = v100;
        v101 = v100;
        goto LABEL_130;
      }

      if (v23 != 1)
      {
        if (v23 == 2)
        {
          goto LABEL_69;
        }

LABEL_99:
        memcpy(a1, v3, *(*(v22 - 8) + 64));
        goto LABEL_100;
      }
    }

    v54 = *v3;
    *a1 = *v3;
    v55 = v54;
    swift_storeEnumTagMultiPayload();
    goto LABEL_100;
  }

  v11 = *a2;
  *a1 = *a2;
  a1 = (v11 + ((v5 + 16) & ~v5));

  return a1;
}

void destroy for TTRIReminderTitleCellContentState(id *a1, uint64_t a2)
{
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      switch(EnumCaseMultiPayload)
      {
        case 6:
          v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          if (!(*(*(v11 - 8) + 48))(a1, 1, v11))
          {

            v12 = *(v11 + 20);
            v13 = sub_21DBF6C1C();
            (*(*(v13 - 8) + 8))(a1 + v12, v13);
          }

          v14 = (a1 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20));
          if (v14[1])
          {
          }

          break;
        case 7:
          v15 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          if (!(*(*(v15 - 8) + 48))(a1, 1, v15))
          {
            v16 = sub_21DBF563C();
            (*(*(v16 - 8) + 8))(a1, v16);
          }

          break;
        case 8:
          v5 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
          v6 = sub_21DBF8D7C();
          (*(*(v6 - 8) + 8))(a1 + v5, v6);
          break;
      }

      goto LABEL_46;
    }

    if (EnumCaseMultiPayload != 4)
    {

      goto LABEL_46;
    }

LABEL_17:

    v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v9 - 8) + 48))(a1 + v8, 1, v9))
    {
      goto LABEL_46;
    }

    v10 = swift_getEnumCaseMultiPayload();
    if (v10 > 4)
    {
      if (v10 <= 7)
      {
        if (v10 != 5 && v10 != 6)
        {
          goto LABEL_46;
        }

LABEL_45:
        v21 = sub_21DBF563C();
        (*(*(v21 - 8) + 8))(a1 + v8, v21);
        goto LABEL_46;
      }

      if (v10 != 8 && v10 != 9)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v10 > 2)
      {
        goto LABEL_45;
      }

      if (v10 != 1)
      {
        if (v10 != 2)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }
    }

    goto LABEL_46;
  }

  if (EnumCaseMultiPayload > 1)
  {
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload > 1)
  {
    goto LABEL_46;
  }

  type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v7 = swift_getEnumCaseMultiPayload();
  if (v7 > 4)
  {
    if (v7 <= 7)
    {
      if (v7 != 5 && v7 != 6)
      {
        goto LABEL_41;
      }

      goto LABEL_37;
    }

    if (v7 != 8 && v7 != 9)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (v7 > 2)
  {
LABEL_37:
    v17 = sub_21DBF563C();
    (*(*(v17 - 8) + 8))(a1, v17);
    goto LABEL_41;
  }

  if (v7 == 1)
  {
LABEL_40:

    goto LABEL_41;
  }

  if (v7 == 2)
  {
    goto LABEL_37;
  }

LABEL_41:
  v18 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v19 = a1 + *(v18 + 20);
  if (*(v19 + 1))
  {

    sub_21D179EF0(*(v19 + 2), *(v19 + 3), *(v19 + 4), *(v19 + 5), *(v19 + 6), *(v19 + 7), v19[64]);
    v20 = v19[120];
    if (v20 != 255)
    {
      sub_21D1078C0(*(v19 + 9), *(v19 + 10), *(v19 + 11), *(v19 + 12), *(v19 + 13), *(v19 + 14), v20 & 1);
    }
  }

LABEL_46:

  v22 = *(a1 + *(a2 + 28));
}

void **initializeWithCopy for TTRIReminderTitleCellContentState(void **a1, void **a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v23 = *(v15 + 48);
        v24 = v22;
        if (v23(a2 + v13, 1, v14))
        {
          goto LABEL_26;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 > 4)
        {
          if (v36 <= 7)
          {
            if (v36 == 5 || v36 == 6)
            {
              goto LABEL_112;
            }

            goto LABEL_125;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_125;
          }

          goto LABEL_111;
        }

        if (v36 > 2)
        {
          goto LABEL_112;
        }

        if (v36 == 1)
        {
          goto LABEL_111;
        }

        if (v36 != 2)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v12 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v16 = *(v15 + 48);
        v17 = v12;
        if (v16(a2 + v13, 1, v14))
        {
          goto LABEL_26;
        }

        v35 = swift_getEnumCaseMultiPayload();
        if (v35 > 4)
        {
          if (v35 <= 7)
          {
            if (v35 == 5 || v35 == 6)
            {
              goto LABEL_112;
            }

            goto LABEL_125;
          }

          if (v35 != 8 && v35 != 9)
          {
            goto LABEL_125;
          }

          goto LABEL_111;
        }

        if (v35 > 2)
        {
          goto LABEL_112;
        }

        if (v35 == 1)
        {
          goto LABEL_111;
        }

        if (v35 != 2)
        {
          goto LABEL_125;
        }
      }

      goto LABEL_112;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_33;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      v113 = a3;
      if (v11 <= 4)
      {
        if (v11 > 2)
        {
LABEL_63:
          v48 = sub_21DBF563C();
          (*(*(v48 - 8) + 16))(a1, a2, v48);
          swift_storeEnumTagMultiPayload();
          goto LABEL_90;
        }

        if (v11 != 1)
        {
          if (v11 == 2)
          {
            goto LABEL_63;
          }

          goto LABEL_89;
        }

LABEL_66:
        v49 = *a2;
        *a1 = *a2;
        v50 = v49;
        swift_storeEnumTagMultiPayload();
        goto LABEL_90;
      }

      if (v11 > 7)
      {
        if (v11 == 8 || v11 == 9)
        {
          goto LABEL_66;
        }
      }

      else if (v11 == 5 || v11 == 6)
      {
        goto LABEL_63;
      }

LABEL_89:
      memcpy(a1, a2, *(*(v10 - 8) + 64));
LABEL_90:
      v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v55 = v54[5];
      v56 = a1 + v55;
      v57 = a2 + v55;
      v58 = *(a2 + v55 + 8);
      if (v58)
      {
        v108 = a1;
        v111 = a2;
        *v56 = *v57;
        *(v56 + 1) = v58;
        v59 = *(v57 + 2);
        v60 = *(v57 + 3);
        v61 = *(v57 + 4);
        v62 = *(v57 + 5);
        v64 = *(v57 + 6);
        v63 = *(v57 + 7);
        v65 = v57[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v59, v60, v61, v62, v64, v63, v65);
        *(v56 + 2) = v59;
        *(v56 + 3) = v60;
        *(v56 + 4) = v61;
        *(v56 + 5) = v62;
        *(v56 + 6) = v64;
        *(v56 + 7) = v63;
        v56[64] = v65;
        *(v56 + 65) = *(v57 + 65);
        v66 = v57[120];
        if (v66 == 255)
        {
          *(v56 + 72) = *(v57 + 72);
          *(v56 + 88) = *(v57 + 88);
          *(v56 + 104) = *(v57 + 104);
          v56[120] = v57[120];
        }

        else
        {
          v67 = *(v57 + 9);
          v68 = *(v57 + 10);
          v69 = *(v57 + 11);
          v70 = *(v57 + 12);
          v71 = *(v57 + 13);
          v72 = *(v57 + 14);
          v73 = v66 & 1;
          sub_21D0FB960(v67, v68, v69, v70, v71, v72, v66 & 1);
          *(v56 + 9) = v67;
          *(v56 + 10) = v68;
          *(v56 + 11) = v69;
          *(v56 + 12) = v70;
          *(v56 + 13) = v71;
          *(v56 + 14) = v72;
          v56[120] = v73;
        }

        a3 = v113;
        v56[121] = v57[121];
        a1 = v108;
        a2 = v111;
        goto LABEL_96;
      }

LABEL_93:
      v74 = *(v57 + 5);
      *(v56 + 4) = *(v57 + 4);
      *(v56 + 5) = v74;
      *(v56 + 6) = *(v57 + 6);
      *(v56 + 106) = *(v57 + 106);
      v75 = *(v57 + 1);
      *v56 = *v57;
      *(v56 + 1) = v75;
      v76 = *(v57 + 3);
      *(v56 + 2) = *(v57 + 2);
      *(v56 + 3) = v76;
LABEL_96:
      *(a1 + v54[6]) = *(a2 + v54[6]);
      *(a1 + v54[7]) = *(a2 + v54[7]);
      *(a1 + v54[8]) = *(a2 + v54[8]);
      *(a1 + v54[9]) = *(a2 + v54[9]);
      *(a1 + v54[10]) = *(a2 + v54[10]);
      v77 = v54[11];
      v78 = *(a2 + v77);
      *(a1 + v77) = v78;
      v79 = v78;
      goto LABEL_127;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    v114 = a3;
    if (v21 <= 4)
    {
      if (v21 > 2)
      {
LABEL_67:
        v51 = sub_21DBF563C();
        (*(*(v51 - 8) + 16))(a1, a2, v51);
        swift_storeEnumTagMultiPayload();
        goto LABEL_98;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_67;
        }

        goto LABEL_97;
      }

LABEL_70:
      v52 = *a2;
      *a1 = *a2;
      v53 = v52;
      swift_storeEnumTagMultiPayload();
      goto LABEL_98;
    }

    if (v21 > 7)
    {
      if (v21 == 8 || v21 == 9)
      {
        goto LABEL_70;
      }
    }

    else if (v21 == 5 || v21 == 6)
    {
      goto LABEL_67;
    }

LABEL_97:
    memcpy(a1, a2, *(*(v20 - 8) + 64));
LABEL_98:
    v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v80 = v54[5];
    v56 = a1 + v80;
    v57 = a2 + v80;
    v81 = *(a2 + v80 + 8);
    if (v81)
    {
      v109 = a1;
      v112 = a2;
      *v56 = *v57;
      *(v56 + 1) = v81;
      v82 = *(v57 + 2);
      v83 = *(v57 + 3);
      v84 = *(v57 + 4);
      v85 = *(v57 + 5);
      v86 = *(v57 + 6);
      v87 = *(v57 + 7);
      v88 = v57[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v82, v83, v84, v85, v86, v87, v88);
      *(v56 + 2) = v82;
      *(v56 + 3) = v83;
      *(v56 + 4) = v84;
      *(v56 + 5) = v85;
      *(v56 + 6) = v86;
      *(v56 + 7) = v87;
      v56[64] = v88;
      *(v56 + 65) = *(v57 + 65);
      v89 = v57[120];
      if (v89 == 255)
      {
        *(v56 + 72) = *(v57 + 72);
        *(v56 + 88) = *(v57 + 88);
        *(v56 + 104) = *(v57 + 104);
        v56[120] = v57[120];
      }

      else
      {
        v90 = *(v57 + 9);
        v91 = *(v57 + 10);
        v92 = *(v57 + 11);
        v93 = *(v57 + 12);
        v94 = *(v57 + 13);
        v95 = *(v57 + 14);
        v96 = v89 & 1;
        sub_21D0FB960(v90, v91, v92, v93, v94, v95, v89 & 1);
        *(v56 + 9) = v90;
        *(v56 + 10) = v91;
        *(v56 + 11) = v92;
        *(v56 + 12) = v93;
        *(v56 + 13) = v94;
        *(v56 + 14) = v95;
        v56[120] = v96;
      }

      a3 = v114;
      v56[121] = v57[121];
      a1 = v109;
      a2 = v112;
      goto LABEL_96;
    }

    goto LABEL_93;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = *(a2 + 9);
      v18 = a2[2];
      a1[2] = v18;
      v19 = v18;
      goto LABEL_127;
    }

    v29 = *a2;
    *a1 = *a2;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    v30 = *(v15 + 48);
    v31 = v29;
    if (v30(a2 + v13, 1, v14))
    {
LABEL_26:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v13, a2 + v13, *(*(v25 - 8) + 64));
      goto LABEL_127;
    }

    v45 = swift_getEnumCaseMultiPayload();
    if (v45 > 4)
    {
      if (v45 <= 7)
      {
        if (v45 == 5 || v45 == 6)
        {
          goto LABEL_112;
        }

        goto LABEL_125;
      }

      if (v45 != 8 && v45 != 9)
      {
        goto LABEL_125;
      }

LABEL_111:
      v97 = *(a2 + v13);
      *(a1 + v13) = v97;
      v98 = v97;
      swift_storeEnumTagMultiPayload();
LABEL_126:
      (*(v15 + 56))(a1 + v13, 0, 1, v14);
      goto LABEL_127;
    }

    if (v45 <= 2)
    {
      if (v45 != 1)
      {
        if (v45 == 2)
        {
          goto LABEL_112;
        }

LABEL_125:
        memcpy(a1 + v13, a2 + v13, *(v15 + 64));
        goto LABEL_126;
      }

      goto LABEL_111;
    }

LABEL_112:
    v99 = sub_21DBF563C();
    (*(*(v99 - 8) + 16))(a1 + v13, a2 + v13, v99);
    swift_storeEnumTagMultiPayload();
    goto LABEL_126;
  }

  switch(EnumCaseMultiPayload)
  {
    case 6:
      v26 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(a2, 1, v26))
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
        memcpy(a1, a2, *(*(v28 - 8) + 64));
      }

      else
      {
        *a1 = *a2;
        v37 = *(v26 + 20);
        v38 = sub_21DBF6C1C();
        v110 = *(*(v38 - 8) + 16);
        sub_21DBF8E0C();
        v110(a1 + v37, a2 + v37, v38);
        (*(v27 + 56))(a1, 0, 1, v26);
      }

      v39 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
      v40 = (a1 + v39);
      v41 = (a2 + v39);
      v42 = v41[1];
      if (v42)
      {
        *v40 = *v41;
        v40[1] = v42;
        v43 = v41[2];
        v40[2] = v43;
        sub_21DBF8E0C();
        v44 = v43;
      }

      else
      {
        *v40 = *v41;
        v40[2] = v41[2];
      }

      goto LABEL_127;
    case 7:
      v32 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v33 = *(v32 - 8);
      if ((*(v33 + 48))(a2, 1, v32))
      {
        v34 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(a1, a2, *(*(v34 - 8) + 64));
      }

      else
      {
        v46 = sub_21DBF563C();
        (*(*(v46 - 8) + 16))(a1, a2, v46);
        *(a1 + *(v32 + 20)) = *(a2 + *(v32 + 20));
        (*(v33 + 56))(a1, 0, 1, v32);
      }

      v47 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(a1 + *(v47 + 20)) = *(a2 + *(v47 + 20));
      goto LABEL_127;
    case 8:
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v9 = sub_21DBF8D7C();
      (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
LABEL_127:
      swift_storeEnumTagMultiPayload();
      goto LABEL_128;
  }

LABEL_33:
  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_128:
  v100 = a3[5];
  v101 = a3[6];
  v102 = *(a2 + v100);
  *(a1 + v100) = v102;
  *(a1 + v101) = *(a2 + v101);
  v103 = a3[7];
  v104 = *(a2 + v103);
  *(a1 + v103) = v104;
  v105 = v102;
  sub_21DBF8E0C();
  v106 = v104;
  return a1;
}

void *assignWithCopy for TTRIReminderTitleCellContentState(void *a1, void *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_21D9412F0(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v26 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v27 = *(v26 - 8);
            if ((*(v27 + 48))(a2, 1, v26))
            {
              v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(a1, a2, *(*(v28 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v37 = *(v26 + 20);
              v38 = sub_21DBF6C1C();
              v124 = *(*(v38 - 8) + 16);
              sub_21DBF8E0C();
              v124(a1 + v37, a2 + v37, v38);
              (*(v27 + 56))(a1, 0, 1, v26);
            }

            v39 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v40 = (a1 + v39);
            v41 = (a2 + v39);
            if (v41[1])
            {
              *v40 = *v41;
              v40[1] = v41[1];
              v42 = v41[2];
              v40[2] = v42;
              sub_21DBF8E0C();
              v43 = v42;
            }

            else
            {
              v44 = *v41;
              v40[2] = v41[2];
              *v40 = v44;
            }

            goto LABEL_129;
          case 7:
            v32 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v33 = *(v32 - 8);
            if ((*(v33 + 48))(a2, 1, v32))
            {
              v34 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v34 - 8) + 64));
            }

            else
            {
              v46 = sub_21DBF563C();
              (*(*(v46 - 8) + 16))(a1, a2, v46);
              *(a1 + *(v32 + 20)) = *(a2 + *(v32 + 20));
              (*(v33 + 56))(a1, 0, 1, v32);
            }

            v47 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v47 + 20)) = *(a2 + *(v47 + 20));
            goto LABEL_129;
          case 8:
            *a1 = *a2;
            v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v9 = sub_21DBF8D7C();
            (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
LABEL_129:
            swift_storeEnumTagMultiPayload();
            goto LABEL_130;
        }

        goto LABEL_34;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        *(a1 + 10) = *(a2 + 10);
        v18 = a2[2];
        a1[2] = v18;
        v19 = v18;
        goto LABEL_129;
      }

      v29 = *a2;
      *a1 = *a2;
      v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v15 = *(v14 - 8);
      v30 = *(v15 + 48);
      v31 = v29;
      if (v30(a2 + v13, 1, v14))
      {
LABEL_27:
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v13, a2 + v13, *(*(v25 - 8) + 64));
        goto LABEL_129;
      }

      v45 = swift_getEnumCaseMultiPayload();
      if (v45 > 4)
      {
        if (v45 <= 7)
        {
          if (v45 == 5 || v45 == 6)
          {
            goto LABEL_114;
          }

          goto LABEL_127;
        }

        if (v45 != 8 && v45 != 9)
        {
          goto LABEL_127;
        }

LABEL_113:
        v108 = *(a2 + v13);
        *(a1 + v13) = v108;
        v109 = v108;
        swift_storeEnumTagMultiPayload();
LABEL_128:
        (*(v15 + 56))(a1 + v13, 0, 1, v14);
        goto LABEL_129;
      }

      if (v45 <= 2)
      {
        if (v45 != 1)
        {
          if (v45 == 2)
          {
            goto LABEL_114;
          }

LABEL_127:
          memcpy(a1 + v13, a2 + v13, *(v15 + 64));
          goto LABEL_128;
        }

        goto LABEL_113;
      }

LABEL_114:
      v110 = sub_21DBF563C();
      (*(*(v110 - 8) + 16))(a1 + v13, a2 + v13, v110);
      swift_storeEnumTagMultiPayload();
      goto LABEL_128;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v23 = *(v15 + 48);
        v24 = v22;
        if (v23(a2 + v13, 1, v14))
        {
          goto LABEL_27;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 > 4)
        {
          if (v36 <= 7)
          {
            if (v36 == 5 || v36 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v36 > 2)
        {
          goto LABEL_114;
        }

        if (v36 == 1)
        {
          goto LABEL_113;
        }

        if (v36 != 2)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v12 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v16 = *(v15 + 48);
        v17 = v12;
        if (v16(a2 + v13, 1, v14))
        {
          goto LABEL_27;
        }

        v35 = swift_getEnumCaseMultiPayload();
        if (v35 > 4)
        {
          if (v35 <= 7)
          {
            if (v35 == 5 || v35 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v35 != 8 && v35 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v35 > 2)
        {
          goto LABEL_114;
        }

        if (v35 == 1)
        {
          goto LABEL_113;
        }

        if (v35 != 2)
        {
          goto LABEL_127;
        }
      }

      goto LABEL_114;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
LABEL_34:
        memcpy(a1, a2, *(*(v6 - 8) + 64));
        goto LABEL_130;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      v129 = a3;
      if (v11 > 4)
      {
        if (v11 <= 7)
        {
          if (v11 == 5 || v11 == 6)
          {
            goto LABEL_64;
          }

          goto LABEL_90;
        }

        if (v11 != 8 && v11 != 9)
        {
          goto LABEL_90;
        }
      }

      else
      {
        if (v11 > 2)
        {
LABEL_64:
          v48 = sub_21DBF563C();
          (*(*(v48 - 8) + 16))(a1, a2, v48);
          swift_storeEnumTagMultiPayload();
LABEL_91:
          v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v55 = v54[5];
          v56 = a1 + v55;
          v57 = a2 + v55;
          if (*(a2 + v55 + 8))
          {
            *v56 = *v57;
            *(v56 + 1) = *(v57 + 1);
            v58 = *(v57 + 2);
            v59 = *(v57 + 3);
            v60 = *(v57 + 4);
            v61 = *(v57 + 5);
            v62 = *(v57 + 6);
            v120 = *(v57 + 7);
            v125 = v57[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v58, v59, v60, v61, v62, v120, v125);
            *(v56 + 2) = v58;
            *(v56 + 3) = v59;
            *(v56 + 4) = v60;
            *(v56 + 5) = v61;
            *(v56 + 6) = v62;
            *(v56 + 7) = v120;
            v56[64] = v125;
            v56[65] = v57[65];
            v56[66] = v57[66];
            v56[67] = v57[67];
            v56[68] = v57[68];
            v63 = v57[120];
            if (v63 == 255)
            {
              v75 = *(v57 + 72);
              v76 = *(v57 + 88);
              v77 = *(v57 + 104);
              v56[120] = v57[120];
              *(v56 + 104) = v77;
              *(v56 + 88) = v76;
              *(v56 + 72) = v75;
            }

            else
            {
              v121 = *(v57 + 10);
              v126 = *(v57 + 9);
              v64 = *(v57 + 11);
              v65 = *(v57 + 12);
              v66 = *(v57 + 13);
              v67 = *(v57 + 14);
              v68 = v63 & 1;
              sub_21D0FB960(v126, v121, v64, v65, v66, v67, v63 & 1);
              *(v56 + 9) = v126;
              *(v56 + 10) = v121;
              *(v56 + 11) = v64;
              *(v56 + 12) = v65;
              *(v56 + 13) = v66;
              *(v56 + 14) = v67;
              v56[120] = v68;
            }

            a3 = v129;
            v56[121] = v57[121];
          }

          else
          {
            v69 = *v57;
            v70 = *(v57 + 1);
            v71 = *(v57 + 3);
            *(v56 + 2) = *(v57 + 2);
            *(v56 + 3) = v71;
            *v56 = v69;
            *(v56 + 1) = v70;
            v72 = *(v57 + 4);
            v73 = *(v57 + 5);
            v74 = *(v57 + 6);
            *(v56 + 106) = *(v57 + 106);
            *(v56 + 5) = v73;
            *(v56 + 6) = v74;
            *(v56 + 4) = v72;
          }

          *(a1 + v54[6]) = *(a2 + v54[6]);
          *(a1 + v54[7]) = *(a2 + v54[7]);
          *(a1 + v54[8]) = *(a2 + v54[8]);
          *(a1 + v54[9]) = *(a2 + v54[9]);
          *(a1 + v54[10]) = *(a2 + v54[10]);
          v78 = v54[11];
          v79 = *(a2 + v78);
          *(a1 + v78) = v79;
          v80 = v79;
          goto LABEL_129;
        }

        if (v11 != 1)
        {
          if (v11 == 2)
          {
            goto LABEL_64;
          }

LABEL_90:
          memcpy(a1, a2, *(*(v10 - 8) + 64));
          goto LABEL_91;
        }
      }

      v49 = *a2;
      *a1 = *a2;
      v50 = v49;
      swift_storeEnumTagMultiPayload();
      goto LABEL_91;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    v130 = a3;
    if (v21 > 4)
    {
      if (v21 <= 7)
      {
        if (v21 == 5 || v21 == 6)
        {
          goto LABEL_68;
        }

        goto LABEL_98;
      }

      if (v21 != 8 && v21 != 9)
      {
        goto LABEL_98;
      }
    }

    else
    {
      if (v21 > 2)
      {
LABEL_68:
        v51 = sub_21DBF563C();
        (*(*(v51 - 8) + 16))(a1, a2, v51);
        swift_storeEnumTagMultiPayload();
LABEL_99:
        v81 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v82 = v81[5];
        v83 = a1 + v82;
        v84 = a2 + v82;
        if (*(a2 + v82 + 8))
        {
          *v83 = *v84;
          *(v83 + 1) = *(v84 + 1);
          v85 = *(v84 + 2);
          v86 = *(v84 + 3);
          v87 = *(v84 + 4);
          v88 = *(v84 + 5);
          v89 = *(v84 + 6);
          v127 = *(v84 + 7);
          v122 = v84[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v85, v86, v87, v88, v89, v127, v122);
          *(v83 + 2) = v85;
          *(v83 + 3) = v86;
          *(v83 + 4) = v87;
          *(v83 + 5) = v88;
          *(v83 + 6) = v89;
          *(v83 + 7) = v127;
          v83[64] = v122;
          v83[65] = v84[65];
          v83[66] = v84[66];
          v83[67] = v84[67];
          v83[68] = v84[68];
          v90 = v84[120];
          if (v90 == 255)
          {
            v102 = *(v84 + 72);
            v103 = *(v84 + 88);
            v104 = *(v84 + 104);
            v83[120] = v84[120];
            *(v83 + 104) = v104;
            *(v83 + 88) = v103;
            *(v83 + 72) = v102;
          }

          else
          {
            v123 = *(v84 + 10);
            v128 = *(v84 + 9);
            v91 = *(v84 + 11);
            v92 = *(v84 + 12);
            v93 = *(v84 + 13);
            v94 = *(v84 + 14);
            v95 = v90 & 1;
            sub_21D0FB960(v128, v123, v91, v92, v93, v94, v90 & 1);
            *(v83 + 9) = v128;
            *(v83 + 10) = v123;
            *(v83 + 11) = v91;
            *(v83 + 12) = v92;
            *(v83 + 13) = v93;
            *(v83 + 14) = v94;
            v83[120] = v95;
          }

          a3 = v130;
          v83[121] = v84[121];
        }

        else
        {
          v96 = *v84;
          v97 = *(v84 + 1);
          v98 = *(v84 + 3);
          *(v83 + 2) = *(v84 + 2);
          *(v83 + 3) = v98;
          *v83 = v96;
          *(v83 + 1) = v97;
          v99 = *(v84 + 4);
          v100 = *(v84 + 5);
          v101 = *(v84 + 6);
          *(v83 + 106) = *(v84 + 106);
          *(v83 + 5) = v100;
          *(v83 + 6) = v101;
          *(v83 + 4) = v99;
        }

        *(a1 + v81[6]) = *(a2 + v81[6]);
        *(a1 + v81[7]) = *(a2 + v81[7]);
        *(a1 + v81[8]) = *(a2 + v81[8]);
        *(a1 + v81[9]) = *(a2 + v81[9]);
        *(a1 + v81[10]) = *(a2 + v81[10]);
        v105 = v81[11];
        v106 = *(a2 + v105);
        *(a1 + v105) = v106;
        v107 = v106;
        goto LABEL_129;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_68;
        }

LABEL_98:
        memcpy(a1, a2, *(*(v20 - 8) + 64));
        goto LABEL_99;
      }
    }

    v52 = *a2;
    *a1 = *a2;
    v53 = v52;
    swift_storeEnumTagMultiPayload();
    goto LABEL_99;
  }

LABEL_130:
  v111 = a3[5];
  v112 = *(a2 + v111);
  v113 = *(a1 + v111);
  *(a1 + v111) = v112;
  v114 = v112;

  *(a1 + a3[6]) = *(a2 + a3[6]);
  sub_21DBF8E0C();

  v115 = a3[7];
  v116 = *(a1 + v115);
  v117 = *(a2 + v115);
  *(a1 + v115) = v117;
  v118 = v117;

  return a1;
}

uint64_t sub_21D9412F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_BYTE *initializeWithTake for TTRIReminderTitleCellContentState(_BYTE *a1, _BYTE *a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v21 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(a2, 1, v21))
        {
          v23 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(a1, a2, *(*(v23 - 8) + 64));
        }

        else
        {
          v26 = sub_21DBF563C();
          (*(*(v26 - 8) + 32))(a1, a2, v26);
          a1[*(v21 + 20)] = a2[*(v21 + 20)];
          (*(v22 + 56))(a1, 0, 1, v21);
        }

        v27 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *&a1[*(v27 + 20)] = *&a2[*(v27 + 20)];
        goto LABEL_87;
      }

      if (EnumCaseMultiPayload != 8)
      {
        goto LABEL_32;
      }

      *a1 = *a2;
      v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v18 = sub_21DBF8D7C();
      (*(*(v18 - 8) + 32))(&a1[v17], &a2[v17], v18);
LABEL_87:
      swift_storeEnumTagMultiPayload();
      goto LABEL_88;
    }

    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(a2, 1, v11))
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
          memcpy(a1, a2, *(*(v13 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v28 = *(v11 + 20);
          v29 = sub_21DBF6C1C();
          (*(*(v29 - 8) + 32))(&a1[v28], &a2[v28], v29);
          (*(v12 + 56))(a1, 0, 1, v11);
        }

        v30 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v31 = &a1[v30];
        v32 = &a2[v30];
        *v31 = *v32;
        *(v31 + 2) = *(v32 + 2);
        goto LABEL_87;
      }

      goto LABEL_32;
    }

    *a1 = *a2;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(&a2[v14], 1, v15))
    {
      v24 = swift_getEnumCaseMultiPayload();
      if (v24 <= 3)
      {
        if (v24 == 2 || v24 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v24 == 4 || v24 == 5 || v24 == 6)
      {
        goto LABEL_57;
      }

      goto LABEL_85;
    }

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      *a1 = *a2;
      v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(&a2[v14], 1, v15))
      {
        goto LABEL_29;
      }

      v33 = swift_getEnumCaseMultiPayload();
      if (v33 <= 3)
      {
        if (v33 == 2 || v33 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v33 == 4 || v33 == 5 || v33 == 6)
      {
LABEL_57:
        v34 = sub_21DBF563C();
        (*(*(v34 - 8) + 32))(&a1[v14], &a2[v14], v34);
        swift_storeEnumTagMultiPayload();
LABEL_86:
        (*(v16 + 56))(&a1[v14], 0, 1, v15);
        goto LABEL_87;
      }

LABEL_85:
      memcpy(&a1[v14], &a2[v14], *(v16 + 64));
      goto LABEL_86;
    }

    *a1 = *a2;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(&a2[v14], 1, v15))
    {
      v25 = swift_getEnumCaseMultiPayload();
      if (v25 <= 3)
      {
        if (v25 == 2 || v25 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v25 == 4 || v25 == 5 || v25 == 6)
      {
        goto LABEL_57;
      }

      goto LABEL_85;
    }

LABEL_29:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(&a1[v14], &a2[v14], *(*(v20 - 8) + 64));
    goto LABEL_87;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v19 = swift_getEnumCaseMultiPayload();
    if (v19 <= 3)
    {
      if (v19 == 2 || v19 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v19 == 4 || v19 == 5 || v19 == 6)
    {
      goto LABEL_9;
    }

    goto LABEL_64;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 <= 3)
    {
      if (v9 == 2 || v9 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v9 == 4 || v9 == 5 || v9 == 6)
    {
LABEL_9:
      v10 = sub_21DBF563C();
      (*(*(v10 - 8) + 32))(a1, a2, v10);
      swift_storeEnumTagMultiPayload();
LABEL_65:
      v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v36 = v35[5];
      v37 = &a1[v36];
      v38 = &a2[v36];
      v39 = v38[3];
      v37[2] = v38[2];
      v37[3] = v39;
      v40 = v38[1];
      *v37 = *v38;
      v37[1] = v40;
      *(v37 + 106) = *(v38 + 106);
      v41 = v38[6];
      v37[5] = v38[5];
      v37[6] = v41;
      v37[4] = v38[4];
      a1[v35[6]] = a2[v35[6]];
      a1[v35[7]] = a2[v35[7]];
      a1[v35[8]] = a2[v35[8]];
      a1[v35[9]] = a2[v35[9]];
      a1[v35[10]] = a2[v35[10]];
      *&a1[v35[11]] = *&a2[v35[11]];
      goto LABEL_87;
    }

LABEL_64:
    memcpy(a1, a2, *(*(v8 - 8) + 64));
    goto LABEL_65;
  }

LABEL_32:
  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_88:
  v42 = a3[6];
  *&a1[a3[5]] = *&a2[a3[5]];
  *&a1[v42] = *&a2[v42];
  *&a1[a3[7]] = *&a2[a3[7]];
  return a1;
}

void *assignWithTake for TTRIReminderTitleCellContentState(void *a1, void *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_21D9412F0(a1, type metadata accessor for TTRRemindersListViewModel.Item);
    v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v19 = swift_getEnumCaseMultiPayload();
          if (v19 <= 3)
          {
            if (v19 == 2 || v19 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v19 == 4 || v19 == 5 || v19 == 6)
          {
            goto LABEL_10;
          }

          goto LABEL_65;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v9 = swift_getEnumCaseMultiPayload();
          if (v9 <= 3)
          {
            if (v9 == 2 || v9 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v9 == 4 || v9 == 5 || v9 == 6)
          {
LABEL_10:
            v10 = sub_21DBF563C();
            (*(*(v10 - 8) + 32))(a1, a2, v10);
            swift_storeEnumTagMultiPayload();
LABEL_66:
            v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v36 = v35[5];
            v37 = (a1 + v36);
            v38 = (a2 + v36);
            v39 = v38[3];
            v37[2] = v38[2];
            v37[3] = v39;
            v40 = v38[1];
            *v37 = *v38;
            v37[1] = v40;
            *(v37 + 106) = *(v38 + 106);
            v41 = v38[6];
            v37[5] = v38[5];
            v37[6] = v41;
            v37[4] = v38[4];
            *(a1 + v35[6]) = *(a2 + v35[6]);
            *(a1 + v35[7]) = *(a2 + v35[7]);
            *(a1 + v35[8]) = *(a2 + v35[8]);
            *(a1 + v35[9]) = *(a2 + v35[9]);
            *(a1 + v35[10]) = *(a2 + v35[10]);
            *(a1 + v35[11]) = *(a2 + v35[11]);
            goto LABEL_88;
          }

LABEL_65:
          memcpy(a1, a2, *(*(v8 - 8) + 64));
          goto LABEL_66;
        }

        goto LABEL_33;
      }

      if (EnumCaseMultiPayload == 2)
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
        {
LABEL_30:
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
          memcpy(a1 + v14, a2 + v14, *(*(v20 - 8) + 64));
          goto LABEL_88;
        }

        v25 = swift_getEnumCaseMultiPayload();
        if (v25 <= 3)
        {
          if (v25 == 2 || v25 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v25 == 4 || v25 == 5 || v25 == 6)
        {
          goto LABEL_58;
        }
      }

      else
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
        {
          goto LABEL_30;
        }

        v33 = swift_getEnumCaseMultiPayload();
        if (v33 <= 3)
        {
          if (v33 == 2 || v33 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v33 == 4 || v33 == 5 || v33 == 6)
        {
LABEL_58:
          v34 = sub_21DBF563C();
          (*(*(v34 - 8) + 32))(a1 + v14, a2 + v14, v34);
          swift_storeEnumTagMultiPayload();
LABEL_87:
          (*(v16 + 56))(a1 + v14, 0, 1, v15);
          goto LABEL_88;
        }
      }

LABEL_86:
      memcpy(a1 + v14, a2 + v14, *(v16 + 64));
      goto LABEL_87;
    }

    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v21 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(a2, 1, v21))
        {
          v23 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(a1, a2, *(*(v23 - 8) + 64));
        }

        else
        {
          v26 = sub_21DBF563C();
          (*(*(v26 - 8) + 32))(a1, a2, v26);
          *(a1 + *(v21 + 20)) = *(a2 + *(v21 + 20));
          (*(v22 + 56))(a1, 0, 1, v21);
        }

        v27 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *(a1 + *(v27 + 20)) = *(a2 + *(v27 + 20));
        goto LABEL_88;
      }

      if (EnumCaseMultiPayload == 8)
      {
        *a1 = *a2;
        v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v18 = sub_21DBF8D7C();
        (*(*(v18 - 8) + 32))(a1 + v17, a2 + v17, v18);
LABEL_88:
        swift_storeEnumTagMultiPayload();
        goto LABEL_89;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
        {
          goto LABEL_30;
        }

        v24 = swift_getEnumCaseMultiPayload();
        if (v24 <= 3)
        {
          if (v24 == 2 || v24 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v24 == 4 || v24 == 5 || v24 == 6)
        {
          goto LABEL_58;
        }

        goto LABEL_86;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(a2, 1, v11))
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
          memcpy(a1, a2, *(*(v13 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v28 = *(v11 + 20);
          v29 = sub_21DBF6C1C();
          (*(*(v29 - 8) + 32))(a1 + v28, a2 + v28, v29);
          (*(v12 + 56))(a1, 0, 1, v11);
        }

        v30 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v31 = a1 + v30;
        v32 = a2 + v30;
        *v31 = *v32;
        *(v31 + 2) = *(v32 + 2);
        goto LABEL_88;
      }
    }

LABEL_33:
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

LABEL_89:
  v42 = a3[5];
  v43 = *(a1 + v42);
  *(a1 + v42) = *(a2 + v42);

  *(a1 + a3[6]) = *(a2 + a3[6]);

  v44 = a3[7];
  v45 = *(a1 + v44);
  *(a1 + v44) = *(a2 + v44);

  return a1;
}

uint64_t sub_21D943588()
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_21D9437F0(uint64_t a1)
{
  v3 = &v1[qword_27CE8EBE0];
  swift_beginAccess();
  sub_21D93B5EC(a1, v3);
  swift_endAccess();
  if (!*v3)
  {
    return sub_21D0CF7E0(a1, &unk_27CE5F240);
  }

  v4 = *(v3 + 1);
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 24);
  swift_unknownObjectRetain();
  v7 = v1;
  v6(v1, &off_282EDC078, ObjectType, v4);
  v8 = *((*MEMORY[0x277D85000] & *v7) + 0x68);
  swift_beginAccess();
  v9 = *&v7[v8];
  if (v9)
  {
    v10 = *(v4 + 48);
    v11 = *(v9 + qword_27CE63FE8);
    v10();
    swift_unknownObjectRelease();

    return sub_21D0CF7E0(a1, &unk_27CE5F240);
  }

  sub_21D0CF7E0(a1, &unk_27CE5F240);
  return swift_unknownObjectRelease();
}

id sub_21D943970()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x68);
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3)
  {
    result = [*(v3 + qword_27CE63FE8) resignFirstResponder];
    v4 = *(v0 + v1);
    if (v4)
    {
      v5 = *(v4 + qword_27CE63FF0);
      if (v5)
      {
        v6 = OBJC_IVAR____TtC15RemindersUICore39TTRIRemindersListDescriptionAndTagsView_hashtagsTextView;
        swift_beginAccess();
        result = *(v5 + v6);
        if (result)
        {
          return [result resignFirstResponder];
        }
      }
    }
  }

  return result;
}