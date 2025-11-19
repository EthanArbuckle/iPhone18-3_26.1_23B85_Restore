uint64_t sub_1C19A7220(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C1A6D62C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C19A72C4()
{
  MEMORY[0x1C6906340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A7304()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C19A7344()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C19A7384()
{
  MEMORY[0x1C6906340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A73BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

id sub_1C19A7404@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 ready];
  *a2 = result;
  return result;
}

uint64_t sub_1C19A744C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1C19A7484@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 frame];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_1C19A74D4()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C19A751C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C19A7554()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A758C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C19A75DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C19A7630()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A7668()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C19A76B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A76F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C19A7734()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C19A776C()
{
  MEMORY[0x1C6906340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A77A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C1A6D5DC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C19A7854(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C1A6D5DC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C19A78F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C1A6D5DC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C19A79A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C1A6D5DC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C19A7A48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1A6D5DC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C19A7AB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1A6D5DC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C19A7B24()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A7B5C()
{

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1C19A7B9C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C19A7BDC()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C19A7C24()
{
  MEMORY[0x1C6906340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A7C5C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C19A7C9C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1C19A7CD4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C19A7D14()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A7D4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C19A7D94()
{
  v1 = sub_1C1A6D5DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1C19A7E78()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A7EB0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C19A7EF0()
{
  MEMORY[0x1C6906340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A80F8()
{

  sub_1C199935C(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1C19A8138()
{
  sub_1C199935C(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1C19A8170()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C19A81A8()
{
  MEMORY[0x1C6906340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A81E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C19A8220()
{
  MEMORY[0x1C6906340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A8258()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A8290()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A82C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C19A8310()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C19A8360()
{
  MEMORY[0x1C6906340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A8398()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C19A83D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCMetricsVideoView_isFullScreen;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id sub_1C19A8434@<X0>(void *a1@<X8>)
{
  result = sub_1C1A36C90();
  *a1 = result;
  return result;
}

void sub_1C19A8460(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___APPCMetricsVideoView____lazy_storage___privacyMarkerButton);
  *(*a2 + OBJC_IVAR___APPCMetricsVideoView____lazy_storage___privacyMarkerButton) = *a1;
  v3 = v2;
}

uint64_t sub_1C19A84B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1C19A8510()
{
  sub_1C1A29014();
  sub_1C1A6D38C();
  __break(1u);
}

void sub_1C19A85C4()
{
  sub_1C1A39E6C();
  sub_1C1A6D39C();
  __break(1u);
}

uint64_t sub_1C19A8654()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C19A86C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C19A86F8()
{
  MEMORY[0x1C6906340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A87A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C1A6D62C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1C19A884C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1C1A6D62C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

__n128 sub_1C19A88F0@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPrivacyMarker_minimumTappableSize;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

void sub_1C19A8948(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR___APPrivacyMarker_minimumTappableSize);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  sub_1C19970C4();
}

uint64_t sub_1C19A89A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1C19A9E58(&qword_1EBF04D70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[11] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1C1A6D48C();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[12];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1C19A8ADC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1C19A9E58(&qword_1EBF04D70);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[11] + 8) = (a2 - 1);
  }

  else
  {
    v13 = sub_1C1A6D48C();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[12];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1C19A8C14()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C19A8C54()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A8C8C()
{
  v1 = (type metadata accessor for CarouselElement() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[8];
  v6 = sub_1C1A6D48C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  v7 = v1[12];
  v8 = sub_1C1A6DDAC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v0 + v3 + v7, v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C19A8E24()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C19A8E88()
{
  MEMORY[0x1C6906340](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A8EC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A8EF8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C19A8F38()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C19A8F70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_1C19A8FC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_1C19A9010@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
}

uint64_t sub_1C19A9060@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 88);
  *a2 = *(v3 + 80);
  a2[1] = v4;
}

uint64_t sub_1C19A90B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 96);
  return result;
}

uint64_t sub_1C19A90F8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 96) = v2;
  return result;
}

uint64_t sub_1C19A913C()
{
  v1 = (type metadata accessor for CarouselElement() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v16 = *(*v1 + 64);
  v4 = sub_1C1A6D6EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v17 = *(v5 + 64);
  swift_unknownObjectRelease();

  v7 = v1[8];
  v8 = sub_1C1A6D48C();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  v9 = v1[12];
  v10 = sub_1C1A6DDAC();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v0 + v3 + v9, v10);
  }

  v12 = v2 | v6;
  v13 = (v16 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + v6 + 8) & ~v6;

  (*(v5 + 8))(v0 + v14, v4);

  return MEMORY[0x1EEE6BDD0](v0, v14 + v17, v12 | 7);
}

uint64_t sub_1C19A9404()
{
  MEMORY[0x1C6906340](v0 + 16);

  return swift_deallocClassInstance();
}

void AppStoreConfig.description.getter()
{
  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = *v0;
LABEL_2:
  if (v1 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = v1;
  }

  v5 = v4 + 1;
  v6 = (&unk_1F413ED00 + 24 * v1 + 32);
  while (v1 != 4)
  {
    if (v5 == ++v1)
    {
      __break(1u);
      return;
    }

    v7 = v6 + 3;
    v8 = *v6;
    v6 += 3;
    if ((v8 & ~v3) == 0)
    {
      v10 = *(v7 - 2);
      v9 = *(v7 - 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C19A9E38(0, v2[2] + 1, 1);
      }

      v12 = v2[2];
      v11 = v2[3];
      if (v12 >= v11 >> 1)
      {
        sub_1C19A9E38((v11 > 1), v12 + 1, 1);
      }

      v2[2] = v12 + 1;
      v13 = &v2[3 * v12];
      v13[4] = v8;
      v13[5] = v10;
      v13[6] = v9;
      goto LABEL_2;
    }
  }

  sub_1C19A9E58(&qword_1EBF035E0);
  swift_arrayDestroy();
  v14 = v2[2];
  if (v14)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1C19A9E18(0, v14, 0);
    v15 = v2 + 6;
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v19 = *(v21 + 16);
      v18 = *(v21 + 24);

      if (v19 >= v18 >> 1)
      {
        sub_1C19A9E18((v18 > 1), v19 + 1, 1);
      }

      *(v21 + 16) = v19 + 1;
      v20 = v21 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      v15 += 3;
      --v14;
    }

    while (v14);
  }

  sub_1C19A9E58(&qword_1EBF035E8);
  sub_1C19A9EA0();
  sub_1C1A6F37C();
}

uint64_t sub_1C19A96CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void *sub_1C19A974C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1C19A9778@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1C19A9818(uint64_t a1, id *a2)
{
  result = sub_1C1A6F3AC();
  *a2 = 0;
  return result;
}

uint64_t sub_1C19A9890(uint64_t a1, id *a2)
{
  v3 = sub_1C1A6F3BC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1C19A9910@<X0>(uint64_t *a1@<X8>)
{
  sub_1C1A6F3CC();
  v2 = sub_1C1A6F39C();

  *a1 = v2;
  return result;
}

uint64_t sub_1C19A9954()
{
  v0 = sub_1C1A6F3CC();
  v2 = v1;
  if (v0 == sub_1C1A6F3CC() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1C1A6FCEC();
  }

  return v5 & 1;
}

uint64_t sub_1C19A99DC(uint64_t a1)
{
  v2 = sub_1C19AB0CC(&qword_1EBF03850, type metadata accessor for ASCAppState);
  v3 = sub_1C19AB0CC(&qword_1EBF03858, type metadata accessor for ASCAppState);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C19A9A98(uint64_t a1)
{
  v2 = sub_1C19AB0CC(&qword_1EBF03868, type metadata accessor for OpenExternalURLOptionsKey);
  v3 = sub_1C19AB0CC(&qword_1EBF03870, type metadata accessor for OpenExternalURLOptionsKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C19A9B54(uint64_t a1)
{
  v2 = sub_1C19AB0CC(&qword_1EDE626E0, type metadata accessor for Key);
  v3 = sub_1C19AB0CC(&qword_1EBF03860, type metadata accessor for Key);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C19A9C10@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C1A6F39C();

  *a1 = v2;
  return result;
}

uint64_t sub_1C19A9C58(uint64_t a1)
{
  v2 = sub_1C19AB0CC(&qword_1EBF03878, type metadata accessor for OpenURLOptionsKey);
  v3 = sub_1C19AB0CC(&qword_1EBF03880, type metadata accessor for OpenURLOptionsKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1C19A9D14()
{
  v0 = sub_1C1A6F3CC();
  v1 = MEMORY[0x1C6904F80](v0);

  return v1;
}

uint64_t sub_1C19A9D50()
{
  sub_1C1A6F3CC();
  sub_1C1A6F45C();
}

uint64_t sub_1C19A9DA4()
{
  sub_1C1A6F3CC();
  sub_1C1A6FDAC();
  sub_1C1A6F45C();
  v0 = sub_1C1A6FDDC();

  return v0;
}

char *sub_1C19A9E18(char *a1, int64_t a2, char a3)
{
  result = sub_1C19AA430(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C19A9E38(void *a1, int64_t a2, char a3)
{
  result = sub_1C19AA53C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C19A9E58(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1C19A9EA0()
{
  result = qword_1EDE62720;
  if (!qword_1EDE62720)
  {
    sub_1C19A9F04(&qword_1EBF035E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE62720);
  }

  return result;
}

uint64_t sub_1C19A9F04(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1C19A9F50()
{
  result = qword_1EBF035F0;
  if (!qword_1EBF035F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF035F0);
  }

  return result;
}

unint64_t sub_1C19A9FA8()
{
  result = qword_1EBF035F8;
  if (!qword_1EBF035F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF035F8);
  }

  return result;
}

unint64_t sub_1C19AA000()
{
  result = qword_1EDE63510;
  if (!qword_1EDE63510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE63510);
  }

  return result;
}

unint64_t sub_1C19AA058()
{
  result = qword_1EDE63508;
  if (!qword_1EDE63508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE63508);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppStoreConfig(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AppStoreConfig(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

__n128 sub_1C19AA178(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_1C19AA1AC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C19AA1B8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C19AA1D8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

size_t sub_1C19AA204(size_t a1, int64_t a2, char a3)
{
  result = sub_1C19AACC8(a1, a2, a3, *v3, &qword_1EBF03760, &unk_1C1A73110, MEMORY[0x1E69C5E30]);
  *v3 = result;
  return result;
}

void *sub_1C19AA248(void *a1, int64_t a2, char a3)
{
  result = sub_1C19AA684(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C19AA268(char *a1, int64_t a2, char a3)
{
  result = sub_1C19AA7B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C19AA288(void *a1, int64_t a2, char a3)
{
  result = sub_1C19AAEA4(a1, a2, a3, *v3, &qword_1EBF03788, &unk_1C1A73140, &qword_1EBF03790);
  *v3 = result;
  return result;
}

char *sub_1C19AA2C8(char *a1, int64_t a2, char a3)
{
  result = sub_1C19AA9C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C19AA2E8(char *a1, int64_t a2, char a3)
{
  result = sub_1C19AAAC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C19AA308(char *a1, int64_t a2, char a3)
{
  result = sub_1C19AABD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1C19AA328(size_t a1, int64_t a2, char a3)
{
  result = sub_1C19AACC8(a1, a2, a3, *v3, &qword_1EBF037C0, &unk_1C1A73178, MEMORY[0x1E6968178]);
  *v3 = result;
  return result;
}

size_t sub_1C19AA36C(size_t a1, int64_t a2, char a3)
{
  result = sub_1C19AACC8(a1, a2, a3, *v3, &qword_1EBF037B8, &unk_1C1A73170, type metadata accessor for ImpressionInfo);
  *v3 = result;
  return result;
}

void *sub_1C19AA3B0(void *a1, int64_t a2, char a3)
{
  result = sub_1C19AAEA4(a1, a2, a3, *v3, &qword_1EBF037A8, &unk_1C1A73160, &qword_1EBF037B0);
  *v3 = result;
  return result;
}

void *sub_1C19AA3F0(void *a1, int64_t a2, char a3)
{
  result = sub_1C19AAEA4(a1, a2, a3, *v3, &qword_1EBF03798, &unk_1C1A73150, &qword_1EBF037A0);
  *v3 = result;
  return result;
}

char *sub_1C19AA430(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C19A9E58(&qword_1EBF037C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_1C19AA53C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1C19A9E58(&qword_1EBF037D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C19A9E58(&qword_1EBF035E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C19AA684(void *result, int64_t a2, char a3, void *a4)
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
    sub_1C19A9E58(&qword_1EBF03750);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C19A9E58(&qword_1EBF03758);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C19AA7B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C19A9E58(&qword_1EBF03778);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_1C19AA8BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C19A9E58(&qword_1EBF043D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_1C19AA9C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C19A9E58(&qword_1EBF03780);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1C19AAAC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C19A9E58(&qword_1EBF03768);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C19AABD4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C19A9E58(&qword_1EBF03770);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

size_t sub_1C19AACC8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  sub_1C19A9E58(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

void *sub_1C19AAEA4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    sub_1C19A9E58(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C19A9E58(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

uint64_t sub_1C19AB0CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C19AB3E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1C19AB47C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1C19AB534(unint64_t a1, uint64_t a2)
{
  v75 = sub_1C19A9E58(&qword_1EBF03890);
  MEMORY[0x1EEE9AC00](v75);
  v76 = (v69 - v5);
  v6 = sub_1C1A6D94C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1C19A9E58(&qword_1EBF03888);
  v80 = *(v10 - 8);
  v81 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v78 = (v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v73 = (v69 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v79 = v69 - v15;
  v16 = sub_1C1A6D62C();
  v77 = *(v16 - 8);
  *&v17 = MEMORY[0x1EEE9AC00](v16).n128_u64[0];
  v19 = v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v2[2] lock];
  v20 = sub_1C19ABED4(a1);
  v21 = v20;
  v22 = v20 >> 62;
  if (v20 >> 62)
  {
    if (sub_1C1A6F9EC())
    {
      goto LABEL_3;
    }

LABEL_30:

    sub_1C19AC050(a1);
    v68 = v2[2];

    return [v68 unlock];
  }

  if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_30;
  }

LABEL_3:
  v70 = v9;
  v71 = v7;
  v72 = v6;
  v74 = v2;
  v23 = sub_1C1A6F67C();
  v24 = sub_1C199E4CC();
  v69[0] = &qword_1C1A73880;
  v69[1] = "n>16@0:8";
  v69[2] = v24;
  v25 = sub_1C1A6F8EC();
  if (os_log_type_enabled(v25, v23))
  {
    v26 = a2;

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v82 = v28;
    *v27 = 134218242;
    if (v22)
    {
      v29 = sub_1C1A6F9EC();
    }

    else
    {
      v29 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v27 + 4) = v29;

    *(v27 + 12) = 2082;
    v30 = sub_1C1A6DA3C();
    sub_1C1A6DD2C();

    v31 = sub_1C1A6D5EC();
    v33 = v32;
    (*(v77 + 8))(v19, v16);
    v34 = sub_1C19A1884(v31, v33, &v82);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_1C198D000, v25, v23, "[PCUI] Got %ld ads for fetching context: %{public}s.", v27, 0x16u);
    sub_1C199935C(v28);
    MEMORY[0x1C6906260](v28, -1, -1);
    v35 = v27;
    a2 = v26;
    MEMORY[0x1C6906260](v35, -1, -1);
  }

  v36 = v74;
  v37 = v79;
  sub_1C1A6D98C();
  v39 = v80;
  v38 = v81;
  v40 = (*(v80 + 88))(v37, v81);
  v41 = v78;
  if (v40 == *MEMORY[0x1E69C5EC0])
  {
    (*(v39 + 16))(v78, v37, v38);
    (*(v39 + 96))(v41, v38);
    v42 = sub_1C1A6D88C();
    v43 = *(v42 - 8);
    if ((*(v43 + 88))(v41, v42) == *MEMORY[0x1E69C5E10])
    {
      v77 = a2;
      (*(v43 + 96))(v41, v42);
LABEL_14:
      v49 = *v41;
      (*(v39 + 8))(v37, v38);
      v50 = sub_1C19ACBC0(v21, v49);
      v52 = v51;

      if (v52)
      {
        if (v52 == 1)
        {
          v54 = v70;
          v53 = v71;
          *v70 = v50;
          v55 = v72;
          (*(v53 + 104))(v54, *MEMORY[0x1E69C5E88], v72);

          sub_1C1A6D95C();

          (*(v53 + 8))(v54, v55);
        }

        else
        {
          sub_1C1A6F66C();
          v61 = sub_1C1A6F8EC();
          sub_1C1A6F18C();

          v63 = v70;
          v62 = v71;
          v64 = v72;
          (*(v71 + 104))(v70, *MEMORY[0x1E69C5E70], v72);
          sub_1C1A6D95C();
          (*(v62 + 8))(v63, v64);
        }
      }

      else
      {

        sub_1C19AC2D4(v60, v77);
        swift_bridgeObjectRelease_n();
      }

      v65 = v36 + *(*v36 + 15);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v66 = *(v65 + 1);
        ObjectType = swift_getObjectType();
        (*(v66 + 16))(ObjectType, v66);
        swift_unknownObjectRelease();
      }

      return [v36[2] unlock];
    }

    (*(v43 + 8))(v41, v42);
  }

  else if (v40 == *MEMORY[0x1E69C5ED8])
  {
    v77 = a2;
    v44 = v73;
    (*(v39 + 16))(v73, v37, v38);
    (*(v39 + 96))(v44, v38);
    v45 = *v44;
    v41 = (v44 + *(sub_1C19A9E58(&qword_1EBF038A0) + 48));
    v46 = sub_1C1A6D88C();
    v47 = v37;
    v48 = *(v46 - 8);
    if ((*(v48 + 88))(v41, v46) == *MEMORY[0x1E69C5E10])
    {

      (*(v48 + 96))(v41, v46);
      v37 = v47;
      goto LABEL_14;
    }

    sub_1C19ADCEC(v45);

    sub_1C19AC2D4(v21, v77);

    (*(v48 + 8))(v41, v46);
    (*(v39 + 8))(v47, v38);
    return [v36[2] unlock];
  }

  result = sub_1C19AC2D4(v21, a2);
  if ((v21 & 0xC000000000000001) != 0)
  {
    v57 = MEMORY[0x1C69055B0](0, v21);
    goto LABEL_21;
  }

  if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v57 = *(v21 + 32);
LABEL_21:
    v58 = v57;

    v59 = v76;
    *v76 = v58;
    swift_storeEnumTagMultiPayload();
    sub_1C1A6DA4C();
    sub_1C1991140(v59, &qword_1EBF03890);
    (*(v39 + 8))(v37, v38);
    return [v36[2] unlock];
  }

  __break(1u);
  return result;
}

uint64_t sub_1C19ABED4(unint64_t a1)
{
  v11 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C1A6F9EC())
  {
    v4 = 0;
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1C69055B0](v4, a1);
      }

      else
      {
        if (v4 >= *(v5 + 16))
        {
          goto LABEL_15;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = v6;
      if (sub_1C19AE2BC(&v10, v1))
      {
        sub_1C1A6FB2C();
        sub_1C1A6FB5C();
        sub_1C1A6FB6C();
        sub_1C1A6FB3C();
        v5 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
      }

      ++v4;
      if (v8 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C19AC050(unint64_t a1)
{
  v2 = sub_1C1A6D94C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C19A9E58(&qword_1EBF03890);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = (&v17 - v8);
  if (a1 >> 62)
  {
    result = sub_1C1A6F9EC();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1C69055B0](0, a1, v7);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v11 = *(a1 + 32);
  }

  v12 = v11;
  v13 = sub_1C1A6EAFC();
  if (v13 == 1057)
  {
    v14 = MEMORY[0x1E69C5EB8];
  }

  else if (v13 == 1031)
  {
    v14 = MEMORY[0x1E69C5EA0];
  }

  else
  {
    *v9 = sub_1C1A6EABC();
    v14 = MEMORY[0x1E69C5EB0];
  }

  v15 = *v14;
  v16 = sub_1C1A6D9BC();
  (*(*(v16 - 8) + 104))(v9, v15, v16);
  swift_storeEnumTagMultiPayload();
  sub_1C1A6DA4C();
  sub_1C1991140(v9, &qword_1EBF03890);
  (*(v3 + 104))(v5, *MEMORY[0x1E69C5E70], v2);
  sub_1C1A6D95C();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1C19AC2D4(unint64_t a1, uint64_t a2)
{
  v77 = a2;
  v4 = *v2;
  v5 = sub_1C1A6D94C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1C1A6D8DC();
  v80 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v10 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1C1A6D93C();
  v79 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v75 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v85 = v56 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v86 = v56 - v15;
  v16 = sub_1C19A9E58(&qword_1EBF038A8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v74 = v56 - v17;
  v81 = sub_1C1A6D5DC();
  v18 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v73 = v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v72 = v56 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v78 = v56 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v62 = v56 - v25;
  sub_1C1A6D5CC();
  if (a1 >> 62)
  {
    result = sub_1C1A6F9EC();
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v58 = v2;
  v60 = v5;
  v59 = v6;
  v57 = v8;
  v56[1] = v4;
  v56[0] = v18;
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v27 = 0;
    v67 = (v18 + 48);
    v68 = a1 & 0xC000000000000001;
    v61 = (v18 + 32);
    v82 = (v18 + 16);
    v84 = (v79 + 16);
    v66 = v79 + 32;
    v65 = (v79 + 8);
    v64 = (v18 + 8);
    v28 = MEMORY[0x1E69E7CC0];
    v63 = v80 + 32;
    v29 = MEMORY[0x1E69E7CC0];
    v70 = v10;
    v71 = a1;
    v30 = v81;
    v31 = v78;
    v69 = result;
    do
    {
      v83 = v29;
      if (v68)
      {
        v32 = MEMORY[0x1C69055B0](v27, a1);
      }

      else
      {
        v32 = *(a1 + 8 * v27 + 32);
      }

      v33 = v32;
      v34 = v74;
      v35 = v28;
      sub_1C1A6EB1C();
      v36 = *v67;
      if ((*v67)(v34, 1, v30) == 1)
      {
        (*v82)(v31, v62, v30);
        v37 = v30;
        v38 = v31;
        if (v36(v34, 1, v30) != 1)
        {
          sub_1C1991140(v34, &qword_1EBF038A8);
        }
      }

      else
      {
        (*v61)(v31, v34, v30);
        v37 = v30;
        v38 = v31;
      }

      sub_1C1A6DA3C();
      sub_1C1A6EA5C();
      (*v82)(v72, v38, v37);
      sub_1C1A6EACC();
      v39 = v86;
      sub_1C1A6D91C();
      v40 = *v84;
      (*v84)(v85, v39, v87);
      v28 = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1C19CACC8(0, v35[2] + 1, 1, v35);
      }

      v41 = v70;
      a1 = v71;
      v29 = v83;
      v43 = v28[2];
      v42 = v28[3];
      v31 = v78;
      if (v43 >= v42 >> 1)
      {
        v28 = sub_1C19CACC8(v42 > 1, v43 + 1, 1, v28);
      }

      v28[2] = v43 + 1;
      v44 = v87;
      (*(v79 + 32))(v28 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v43, v85, v87);
      v40(v75, v86, v44);
      v45 = v33;
      sub_1C1A6D8AC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1C19CACA0(0, v29[2] + 1, 1, v29);
      }

      v30 = v81;
      v47 = v29[2];
      v46 = v29[3];
      if (v47 >= v46 >> 1)
      {
        v29 = sub_1C19CACA0(v46 > 1, v47 + 1, 1, v29);
      }

      ++v27;

      (*v65)(v86, v87);
      (*v64)(v31, v30);
      v29[2] = v47 + 1;
      (*(v80 + 32))(v29 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v47, v41, v76);
    }

    while (v69 != v27);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
    v29 = MEMORY[0x1E69E7CC0];
  }

  v48 = v28;
  v49 = v58;
  sub_1C1A6DC3C();
  v50 = v49 + *(*v49 + 120);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v51 = *(v50 + 8);
    ObjectType = swift_getObjectType();
    (*(v51 + 24))(v29, ObjectType, v51);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v53 = v60;
  v54 = v59;
  v55 = v57;
  *v57 = v48;
  (*(v54 + 104))(v55, *MEMORY[0x1E69C5E68], v53);
  sub_1C1A6D95C();
  (*(v54 + 8))(v55, v53);
  return (*(v56[0] + 8))(v62, v81);
}

unint64_t sub_1C19ACBC0(unint64_t a1, unint64_t a2)
{
  v56 = sub_1C19A9E58(&qword_1EBF03890);
  MEMORY[0x1EEE9AC00](v56);
  v55 = (&v50 - v6);
  v53 = sub_1C1A6D62C();
  v7 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x1E69E7CC0];
  v67 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_62:
    v9 = sub_1C1A6F9EC();
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_63:
    v3 = MEMORY[0x1E69E7CC0];
    v48 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_54;
    }

LABEL_64:
    if (!sub_1C1A6F9EC())
    {
      goto LABEL_65;
    }

LABEL_55:

    return v48;
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_63;
  }

LABEL_3:
  if (v9 < 1)
  {
    __break(1u);
    goto LABEL_69;
  }

  v10 = v2 + *(*v2 + 120);
  v63 = "n>16@0:8";
  v64 = a1 & 0xC000000000000001;
  v62 = &qword_1C1A73880;
  v51 = (v7 + 8);

  v11 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *&v12 = 136446210;
  v57 = v12;
  *&v12 = 136446466;
  v50 = v12;
  v60 = v10;
  v61 = MEMORY[0x1E69E7CC0];
  v58 = v9;
  v59 = a1;
  do
  {
    if (v64)
    {
      v20 = MEMORY[0x1C69055B0](v11, a1);
    }

    else
    {
      v20 = *(a1 + 8 * v11 + 32);
    }

    v21 = v20;
    if (a2 >> 62)
    {
      if (!sub_1C1A6F9EC())
      {
LABEL_28:
        v30 = v21;
        MEMORY[0x1C6904FB0]();
        if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C1A6F53C();
        }

        sub_1C1A6F55C();

        v61 = v67;
        goto LABEL_6;
      }
    }

    else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v23 = *(v10 + 8), v7 = Strong, ObjectType = swift_getObjectType(), v65 = v7, v2 = (*(*(v23 + 8) + 16))(v21, ObjectType), swift_unknownObjectRelease(), v2))
    {
      v25 = sub_1C1A6F66C();
      sub_1C199E4CC();
      v26 = sub_1C1A6F8EC();
      if (os_log_type_enabled(v26, v25))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v65 = v14;
        *v13 = v57;
        v15 = sub_1C1A6EA5C();
        v17 = sub_1C19A1884(v15, v16, &v65);

        *(v13 + 4) = v17;
        v9 = v58;
        _os_log_impl(&dword_1C198D000, v26, v25, "[PCUI] Failed to validate received content: %{public}s", v13, 0xCu);
        sub_1C199935C(v14);
        v18 = v14;
        a1 = v59;
        MEMORY[0x1C6906260](v18, -1, -1);
        v19 = v13;
        v10 = v60;
        MEMORY[0x1C6906260](v19, -1, -1);
      }

      else
      {
      }

      goto LABEL_6;
    }

    if (a2 >> 62)
    {
      v27 = sub_1C1A6F9EC();
    }

    else
    {
      v27 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v27)
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v7 = a2 >> 62;
    if (a2 >> 62)
    {
      if (!sub_1C1A6F9EC())
      {
        goto LABEL_57;
      }
    }

    else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_57;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x1C69055B0](0, a2);
      v28 = a2 & 0xFFFFFFFFFFFFFF8;
      if (v7)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      v3 = *(a2 + 32);

      v28 = a2 & 0xFFFFFFFFFFFFFF8;
      if (v7)
      {
LABEL_34:
        if ((a2 & 0x8000000000000000) != 0)
        {
          v2 = a2;
        }

        else
        {
          v2 = v28;
        }

        if (!sub_1C1A6F9EC())
        {
          goto LABEL_60;
        }

        if (sub_1C1A6F9EC() < 1)
        {
          goto LABEL_61;
        }

        v29 = sub_1C1A6F9EC();
        goto LABEL_40;
      }
    }

    v29 = *(v28 + 16);
    if (!v29)
    {
      goto LABEL_60;
    }

LABEL_40:
    v2 = v29 - 1;
    if (__OFSUB__(v29, 1))
    {
      goto LABEL_59;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v68 = a2;
    if (v7)
    {
      isUniquelyReferenced_nonNull_bridgeObject = 0;
    }

    if (isUniquelyReferenced_nonNull_bridgeObject != 1 || v2 > *((a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      if (v7)
      {
        sub_1C1A6F9EC();
      }

      a2 = sub_1C1A6FB0C();
      v68 = a2;
    }

    sub_1C19E7764(0, 1, 0);
    v32 = sub_1C1A6F67C();
    sub_1C199E4CC();
    v33 = sub_1C1A6F8EC();
    if (os_log_type_enabled(v33, v32))
    {
      v34 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v65 = v54;
      *v34 = v50;
      v35 = sub_1C1A6EA5C();
      v37 = sub_1C19A1884(v35, v36, &v65);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2082;
      v38 = v52;
      sub_1C1A6D9FC();
      v39 = sub_1C1A6D5EC();
      v41 = v40;
      (*v51)(v38, v53);
      v42 = sub_1C19A1884(v39, v41, &v65);
      a1 = v59;

      *(v34 + 14) = v42;
      _os_log_impl(&dword_1C198D000, v33, v32, "[PCUI] Received content from network with id: %{public}s to resolve request %{public}s", v34, 0x16u);
      v43 = v54;
      swift_arrayDestroy();
      MEMORY[0x1C6906260](v43, -1, -1);
      v44 = v34;
      v9 = v58;
      MEMORY[0x1C6906260](v44, -1, -1);
    }

    v10 = v60;
    v45 = v55;
    *v55 = v21;
    swift_storeEnumTagMultiPayload();
    v46 = v21;
    sub_1C1A6DA4C();
    sub_1C1991140(v45, &qword_1EBF03890);

    MEMORY[0x1C6904FB0](v47);
    if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C1A6F53C();
    }

    sub_1C1A6F55C();

    v3 = v66;
LABEL_6:
    ++v11;
  }

  while (v9 != v11);

  v48 = v61;
  if (v61 >> 62)
  {
    goto LABEL_64;
  }

LABEL_54:
  if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_55;
  }

LABEL_65:

  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v3;
    }

LABEL_70:

    return 0;
  }

LABEL_69:
  if (!sub_1C1A6F9EC())
  {
    goto LABEL_70;
  }

  return v3;
}

id sub_1C19AD3D8(void *a1, uint64_t a2)
{
  v86 = a2;
  v3 = sub_1C19A9E58(&qword_1EBF03888);
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v74 = &v71 - v4;
  v83 = sub_1C19A9E58(&qword_1EBF03890);
  MEMORY[0x1EEE9AC00](v83);
  v84 = (&v71 - v5);
  v6 = sub_1C19A9E58(&qword_1EBF03898);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v80 = &v71 - v7;
  v8 = sub_1C1A6DEEC();
  v81 = *(v8 - 8);
  v82 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v71 - v11;
  v88 = sub_1C1A6D94C();
  v90 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C1A6D62C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C1A6F66C();
  v19 = sub_1C199E4CC();
  v77 = &qword_1C1A73880;
  v78 = "n>16@0:8";
  v79 = v19;
  v20 = sub_1C1A6F8EC();
  v21 = os_log_type_enabled(v20, v18);
  v73 = v12;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    LODWORD(v85) = v18;
    v24 = v23;
    v25 = swift_slowAlloc();
    v91[0] = v25;
    *v22 = 136446467;
    v26 = sub_1C1A6DA3C();
    sub_1C1A6DD2C();

    v27 = sub_1C1A6D5EC();
    v29 = v28;
    (*(v15 + 8))(v17, v14);
    v30 = sub_1C19A1884(v27, v29, v91);

    *(v22 + 4) = v30;
    *(v22 + 12) = 2113;
    v31 = a1;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 14) = v32;
    *v24 = v32;
    _os_log_impl(&dword_1C198D000, v20, v85, "[PCUI] Got error for fetching context: %{public}s, error: %{private}@", v22, 0x16u);
    sub_1C1991140(v24, &unk_1EBF04B10);
    MEMORY[0x1C6906260](v24, -1, -1);
    sub_1C199935C(v25);
    MEMORY[0x1C6906260](v25, -1, -1);
    MEMORY[0x1C6906260](v22, -1, -1);
  }

  v33 = v89;
  [*(v89 + 16) lock];
  v34 = *(v33 + 24);
  v35 = *MEMORY[0x1E69C5E70];
  v36 = v90;
  v37 = *(v90 + 104);
  v39 = v87;
  v38 = v88;
  v37(v87, v35, v88);
  v85 = v34;
  LOBYTE(v33) = sub_1C1A6D97C();
  v40 = *(v36 + 8);
  v90 = v36 + 8;
  v40(v39, v38);
  if (v33)
  {
    v91[0] = a1;
    v41 = a1;
    sub_1C19A9E58(&qword_1EBF04990);
    v42 = v80;
    v43 = v82;
    v44 = swift_dynamicCast();
    v45 = v81;
    v46 = *(v81 + 56);
    if (v44)
    {
      v46(v42, 0, 1, v43);
      v47 = v73;
      (*(v45 + 32))(v73, v42, v43);
      v48 = v72;
      (*(v45 + 104))(v72, *MEMORY[0x1E69C5F38], v43);
      v49 = sub_1C1A6DEDC();
      v50 = *(v45 + 8);
      v50(v48, v43);
      if (v49)
      {
        v51 = v47;
        v52 = v84;
        *v84 = 8;
        v53 = *MEMORY[0x1E69C5EB0];
        v54 = sub_1C1A6D9BC();
        (*(*(v54 - 8) + 104))(v52, v53, v54);
        swift_storeEnumTagMultiPayload();
        sub_1C1A6DA4C();
        sub_1C1991140(v52, &qword_1EBF03890);
        v50(v51, v43);
LABEL_13:
        v69 = v87;
        v68 = v88;
        v37(v87, v35, v88);
        sub_1C1A6D95C();
        v40(v69, v68);
        return [*(v89 + 16) unlock];
      }

      v50(v47, v43);
    }

    else
    {
      v46(v42, 1, 1, v43);
      sub_1C1991140(v42, &qword_1EBF03898);
    }

    v65 = v84;
    *v84 = 9;
    v66 = *MEMORY[0x1E69C5EB0];
    v67 = sub_1C1A6D9BC();
    (*(*(v67 - 8) + 104))(v65, v66, v67);
    swift_storeEnumTagMultiPayload();
    sub_1C1A6DA4C();
    sub_1C1991140(v65, &qword_1EBF03890);
    goto LABEL_13;
  }

  v55 = sub_1C1A6F66C();
  v56 = sub_1C1A6F8EC();
  if (os_log_type_enabled(v56, v55))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v91[0] = v58;
    *v57 = 136380675;
    v59 = v74;
    sub_1C1A6D98C();
    v60 = v76;
    v61 = sub_1C1A6D9CC();
    v63 = v62;
    (*(v75 + 8))(v59, v60);
    v64 = sub_1C19A1884(v61, v63, v91);

    *(v57 + 4) = v64;
    _os_log_impl(&dword_1C198D000, v56, v55, "[PCUI] Unable to process fetch failed event for current state (%{private}s", v57, 0xCu);
    sub_1C199935C(v58);
    MEMORY[0x1C6906260](v58, -1, -1);
    MEMORY[0x1C6906260](v57, -1, -1);
  }

  return [*(v89 + 16) unlock];
}

uint64_t sub_1C19ADCEC(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = sub_1C1A6D94C();
  v50 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v48 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = sub_1C1A6D93C();
  v7 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v3 + 80);
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v13 = *(v10 + 16);
  v49 = v1;
  v51 = &v43 - v14;
  v13(v12);
  v15 = *(a1 + 16);
  if (v15)
  {
    v43 = v10;
    v44 = v9;
    v45 = v4;
    v46 = v5;
    v56 = MEMORY[0x1E69E7CC0];
    sub_1C19A9E18(0, v15, 0);
    v16 = v56;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v19 = *(v17 + 64);
    v47 = a1;
    v20 = a1 + ((v19 + 32) & ~v19);
    v52 = *(v17 + 56);
    v53 = v18;
    v21 = (v17 - 8);
    do
    {
      v22 = v54;
      v23 = v55;
      v24 = v17;
      v53(v54, v20, v55);
      v25 = sub_1C1A6D8EC();
      v27 = v26;
      (*v21)(v22, v23);
      v56 = v16;
      v29 = *(v16 + 16);
      v28 = *(v16 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1C19A9E18((v28 > 1), v29 + 1, 1);
        v16 = v56;
      }

      *(v16 + 16) = v29 + 1;
      v30 = v16 + 16 * v29;
      *(v30 + 32) = v25;
      *(v30 + 40) = v27;
      v20 += v52;
      --v15;
      v17 = v24;
    }

    while (v15);
    v5 = v46;
    a1 = v47;
    v9 = v44;
    v10 = v43;
  }

  v31 = v51;
  v32 = sub_1C1A6DC4C();

  result = (*(v10 + 8))(v31, v9);
  if (v32 >> 62)
  {
    result = sub_1C1A6F9EC();
    v34 = result;
    if (!result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v34)
    {
      goto LABEL_16;
    }
  }

  if (v34 < 1)
  {
    __break(1u);
    return result;
  }

  v35 = 0;
  do
  {
    if ((v32 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x1C69055B0](v35, v32);
    }

    else
    {
      v36 = *(v32 + 8 * v35 + 32);
    }

    v37 = v36;
    ++v35;
    [sub_1C1A6EAAC() notConsumedWithCode:8004 placeholder:0];

    swift_unknownObjectRelease();
  }

  while (v34 != v35);
LABEL_16:

  v38 = v49 + *(*v49 + 120);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v39 = *(v38 + 1);
    ObjectType = swift_getObjectType();
    (*(v39 + 32))(a1, ObjectType, v39);
    swift_unknownObjectRelease();
  }

  v41 = v48;
  *v48 = a1;
  v42 = v50;
  (*(v50 + 104))(v41, *MEMORY[0x1E69C5E58], v5);

  sub_1C1A6D95C();
  return (*(v42 + 8))(v41, v5);
}

id *sub_1C19AE1A8()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 14));
  sub_1C19A9384(v0 + *(*v0 + 15));
  return v0;
}

uint64_t sub_1C19AE24C()
{
  sub_1C19AE1A8();

  return swift_deallocClassInstance();
}

uint64_t sub_1C19AE2BC(void **a1, uint64_t a2)
{
  v4 = sub_1C19A9E58(&qword_1EBF038A8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - v5;
  v7 = *a1;
  v8 = sub_1C1A6EAFC();
  if (v8 > 1024)
  {
    if (v8 == 1025)
    {
      v26 = a2 + *(*a2 + 120);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v27 = *(v26 + 8);
        ObjectType = swift_getObjectType();
        sub_1C1A6D5AC();
        v29 = sub_1C1A6D5DC();
        (*(*(v29 - 8) + 56))(v6, 0, 1, v29);
        (*(v27 + 40))(v6, ObjectType, v27);
        swift_unknownObjectRelease();
        sub_1C1991140(v6, &qword_1EBF038A8);
      }

      sub_1C1A6F66C();
      sub_1C199E4CC();
      v14 = sub_1C1A6F8EC();
    }

    else
    {
      if (v8 != 1031)
      {
        goto LABEL_9;
      }

      sub_1C1A6F64C();
      sub_1C199E4CC();
      v14 = sub_1C1A6F8EC();
    }

    sub_1C1A6F18C();

    return 0;
  }

  if (v8 != 200)
  {
    if (v8 == 1010)
    {
      v9 = sub_1C1A6F66C();
      sub_1C199E4CC();
      v10 = sub_1C1A6F8EC();
      if (!os_log_type_enabled(v10, v9))
      {
LABEL_14:

        return 0;
      }

      v11 = v7;
      v12 = swift_slowAlloc();
      *v12 = 134349056;
      sub_1C1A6EAFC();
      *(v12 + 4) = sub_1C1A6DF6C();

      v13 = "[PCUI] Got network error for active fetch. (%{public}ld)";
LABEL_13:
      _os_log_impl(&dword_1C198D000, v10, v9, v13, v12, 0xCu);
      MEMORY[0x1C6906260](v12, -1, -1);
      goto LABEL_14;
    }

LABEL_9:
    v15 = a2 + *(*a2 + 120);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v15 + 8);
      v17 = swift_getObjectType();
      sub_1C1A6D5AC();
      v18 = sub_1C1A6D5DC();
      (*(*(v18 - 8) + 56))(v6, 0, 1, v18);
      (*(v16 + 40))(v6, v17, v16);
      swift_unknownObjectRelease();
      sub_1C1991140(v6, &qword_1EBF038A8);
    }

    v9 = sub_1C1A6F66C();
    sub_1C199E4CC();
    v10 = sub_1C1A6F8EC();
    if (!os_log_type_enabled(v10, v9))
    {
      goto LABEL_14;
    }

    v19 = v7;
    v12 = swift_slowAlloc();
    *v12 = 134349056;
    sub_1C1A6EAFC();
    *(v12 + 4) = sub_1C1A6DF6C();

    v13 = "[PCUI] Got error for active fetch. (%{public}ld)";
    goto LABEL_13;
  }

  sub_1C1A6F64C();
  sub_1C199E4CC();
  v20 = sub_1C1A6F8EC();
  sub_1C1A6F18C();

  v21 = a2 + *(*a2 + 120);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v22 = *(v21 + 8);
    v23 = swift_getObjectType();
    v24 = sub_1C1A6D5DC();
    (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
    (*(v22 + 40))(v6, v23, v22);
    swift_unknownObjectRelease();
    sub_1C1991140(v6, &qword_1EBF038A8);
  }

  return 1;
}

char *sub_1C19AE89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  *&v5[*(*v5 + 120) + 8] = 0;
  v11 = swift_unknownObjectWeakInit();
  *(v5 + 2) = a1;
  *(v5 + 3) = a2;
  *(v11 + 8) = a5;
  swift_unknownObjectWeakAssign();
  (*(*(*(v10 + 80) - 8) + 32))(&v5[*(*v5 + 112)], a3);
  return v5;
}

char *sub_1C19AE978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for SLPCCMContentProcessor();
  swift_allocObject();
  return sub_1C19AE89C(a1, a2, a3, a4, a5);
}

uint64_t sub_1C19AEA44()
{
  v1 = sub_1C1A6D5DC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C19A9E58(&qword_1EBF038A8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1C1A6FDAC();
  sub_1C19AF408(&qword_1EBF038B8, MEMORY[0x1E6969530]);
  sub_1C1A6F35C();
  v8 = type metadata accessor for VisibilityTiming();
  sub_1C19AF080(v0 + *(v8 + 20), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1C1A6FDCC();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1C1A6FDCC();
    sub_1C1A6F35C();
    (*(v2 + 8))(v4, v1);
  }

  return sub_1C1A6FDDC();
}

uint64_t sub_1C19AEC44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1A6D5DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C19A9E58(&qword_1EBF038A8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1C19AF408(&qword_1EBF038B8, MEMORY[0x1E6969530]);
  sub_1C1A6F35C();
  sub_1C19AF080(v2 + *(a2 + 20), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return sub_1C1A6FDCC();
  }

  (*(v5 + 32))(v7, v10, v4);
  sub_1C1A6FDCC();
  sub_1C1A6F35C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1C19AEE30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1A6D5DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C19A9E58(&qword_1EBF038A8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1C1A6FDAC();
  sub_1C19AF408(&qword_1EBF038B8, MEMORY[0x1E6969530]);
  sub_1C1A6F35C();
  sub_1C19AF080(v2 + *(a2 + 20), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1C1A6FDCC();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1C1A6FDCC();
    sub_1C1A6F35C();
    (*(v5 + 8))(v7, v4);
  }

  return sub_1C1A6FDDC();
}

uint64_t sub_1C19AF080(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C19A9E58(&qword_1EBF038A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_1C19AF0F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1A6D5DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C19A9E58(&qword_1EBF038A8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_1C19A9E58(&qword_1EBF038C0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  if ((sub_1C1A6D58C() & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for VisibilityTiming() + 20);
  v15 = *(v11 + 48);
  sub_1C19AF080(a1 + v14, v13);
  sub_1C19AF080(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1C1991140(v13, &qword_1EBF038A8);
      return 1;
    }

    goto LABEL_7;
  }

  sub_1C19AF080(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_1C1991140(v13, &qword_1EBF038C0);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_1C19AF408(&qword_1EBF038C8, MEMORY[0x1E6969530]);
  v18 = sub_1C1A6F38C();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_1C1991140(v13, &qword_1EBF038A8);
  return (v18 & 1) != 0;
}

uint64_t sub_1C19AF408(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C19AF450(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1C1A6F98C();
    v5 = v4;
    v6 = sub_1C1A6FA2C();
    v8 = v7;
    v9 = MEMORY[0x1C6905470](v3, v5, v6, v7);
    sub_1C19B07E4(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1C19B07E4(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_1C1A6F95C();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1C19CA078(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_1C19B07E4(v3, v5, v2 != 0);
  return v12;
}

void sub_1C19AF56C()
{
  v0 = sub_1C1A6F39C();
  v1 = objc_opt_self();
  v2 = [v1 fontWithName:v0 size:13.0];

  if (!v2)
  {
    v2 = [v1 systemFontOfSize_];
  }

  qword_1EBF07660 = v2;
}

double sub_1C19AF60C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4 == 1)
  {
    v7 = &unk_1C1A73AB8;
    v8 = &unk_1C1A73AA0;
  }

  else
  {
    v5 = 0.0;
    v6 = 0.0;
    if (a4 != 2)
    {
      goto LABEL_6;
    }

    v7 = &unk_1C1A73AE8;
    v8 = &unk_1C1A73AD0;
  }

  v5 = v8[a3];
  v6 = v7[a3];
LABEL_6:
  v9 = *(v4 + 144);
  v9();
  if (qword_1EBF03590 != -1)
  {
    v30 = v10;
    swift_once();
    v10 = v30;
  }

  v11 = v5 - (v10 + v10);
  v12 = qword_1EBF07660;
  sub_1C19A9E58(&qword_1EBF03910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1A73A30;
  v14 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  *(inited + 64) = sub_1C198FB8C(0, &qword_1EDE626C0);
  *(inited + 40) = v12;
  v15 = v12;
  v16 = v14;
  sub_1C19B6B90(inited);
  swift_setDeallocating();
  sub_1C1991140(inited + 32, &qword_1EBF03918);
  v17 = sub_1C1A6F39C();
  type metadata accessor for Key(0);
  sub_1C19B0724();
  v18 = sub_1C1A6F2FC();

  [v17 boundingRectWithSize:1 options:v18 attributes:0 context:{v11, 1.79769313e308}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v31.origin.x = v20;
  v31.origin.y = v22;
  v31.size.width = v24;
  v31.size.height = v26;
  v27 = ceil(CGRectGetHeight(v31));
  v28 = (v9)();
  return v28 + v27 + v6 + v28;
}

id sub_1C19AF868()
{
  v1 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___assetImageView;
  v2 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___assetImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___assetImageView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
    v5 = objc_opt_self();
    v6 = v4;
    v7 = [v5 systemGray6Color];
    [v6 setBackgroundColor_];

    [v6 setClipsToBounds_];
    [v6 setContentMode_];
    [v6 setAccessibilityIgnoresInvertColors_];
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];

    v8 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1C19AF98C()
{
  v1 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionLabel;
  v2 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionLabel);
  }

  else
  {
    v4 = sub_1C19B0614();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1C19AF9EC()
{
  v1 = OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___blurImageView;
  v2 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___blurImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___blurImageView);
  }

  else
  {
    type metadata accessor for MediumCarouselCollectionViewCell();
    if (swift_dynamicCastClass())
    {
      v4 = 0.5625;
    }

    else
    {
      v4 = 1.0;
    }

    v5 = objc_allocWithZone(type metadata accessor for BlurImageView());
    v6 = v0;
    v7 = sub_1C1A1D660(19, 2, v4);
    [v7 setTranslatesAutoresizingMaskIntoConstraints_];
    v8 = *(v0 + v1);
    *(v6 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1C19AFABC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

id sub_1C19AFB40(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell_touchPoint];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v4[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___assetImageView] = 0;
  *&v4[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionView] = 0;
  *&v4[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionLabel] = 0;
  *&v4[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___blurImageView] = 0;
  *&v4[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___filterView] = 0;
  *&v4[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v19.receiver = v4;
  v19.super_class = type metadata accessor for CarouselCollectionViewCell();
  v10 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = [v10 layer];
  [v11 setOpaque_];

  v12 = [v10 layer];
  [v12 setAllowsGroupOpacity_];

  v13 = [v10 contentView];
  v14 = [v13 layer];

  [v14 setCornerRadius_];
  v15 = [v10 contentView];
  v16 = [v15 layer];

  [v16 setCornerCurve_];
  v17 = [v10 contentView];
  [v17 setClipsToBounds_];

  [v10 setIsAccessibilityElement_];
  [v10 setAccessibilityTraits_];

  return v10;
}

id sub_1C19AFDE4()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for CarouselCollectionViewCell();
  objc_msgSendSuper2(&v12, sel_prepareForReuse);
  [v0 setAccessibilityLabel_];
  v2 = sub_1C19AF868();
  [v2 setImage_];

  v3 = sub_1C19AF9EC();
  v4 = OBJC_IVAR____TtC17PromotedContentUI13BlurImageView_image;
  v5 = *&v3[OBJC_IVAR____TtC17PromotedContentUI13BlurImageView_image];
  *&v3[OBJC_IVAR____TtC17PromotedContentUI13BlurImageView_image] = 0;

  v6 = sub_1C1A1D500();
  v7 = *&v3[v4];
  [v6 setImage_];

  v8 = sub_1C19AF98C();
  [v8 setText_];

  v9 = &v1[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell_touchPoint];
  *v9 = 0;
  *(v9 + 1) = 0;
  *&v1[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakAssign();
  v10 = sub_1C19AFAB0();
  [v10 setBackgroundColor_];

  return [*&v1[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___filterView] setHidden_];
}

void sub_1C19AFF84(uint64_t a1, uint64_t a2)
{
  sub_1C198FB8C(0, &qword_1EDE60C78);
  sub_1C19B077C();
  v5 = sub_1C1A6F5EC();
  v18.receiver = v2;
  v18.super_class = type metadata accessor for CarouselCollectionViewCell();
  objc_msgSendSuper2(&v18, sel_touchesBegan_withEvent_, v5, a2);

  v6 = sub_1C19AF450(a1);
  if (v6)
  {
    v7 = v6;
    [v6 locationInView_];
    v9 = v8;
    v11 = v10;
    v12 = [v2 superview];
    [v2 convertPoint:v12 toView:{v9, v11}];
    v14 = v13;
    v16 = v15;

    v17 = &v2[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell_touchPoint];
    *v17 = v14;
    *(v17 + 1) = v16;
  }
}

void sub_1C19B013C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1C19A9E58(&qword_1EBF03908);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_1C1A6DD8C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell_delegate + 8] = a3;
  swift_unknownObjectWeakAssign();
  v14 = sub_1C1A6F39C();
  [v4 setAccessibilityLabel_];

  v15 = sub_1C19AF98C();
  v16 = type metadata accessor for CarouselElement();
  if (*(a1 + *(v16 + 32) + 8))
  {
    v17 = sub_1C1A6F39C();
  }

  else
  {
    v17 = 0;
  }

  [v15 setText_];

  sub_1C19B05A4(a1 + *(v16 + 40), v9);
  v18 = sub_1C1A6DDAC();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v9, 1, v18) == 1)
  {
    sub_1C1991140(v9, &qword_1EBF03908);
LABEL_9:
    v28 = sub_1C19AFAB0();
    [v28 setHidden_];
    goto LABEL_10;
  }

  v20 = sub_1C1A6DD9C();
  (*(v19 + 8))(v9, v18);
  if (!*(v20 + 16))
  {

    goto LABEL_9;
  }

  (*(v11 + 16))(v13, v20 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v10);

  sub_1C1A6DD4C();
  v22 = (v21 / 255.0);
  sub_1C1A6DD7C();
  v24 = (v23 / 255.0);
  sub_1C1A6DD5C();
  v26 = (v25 / 255.0);
  sub_1C1A6DD6C();
  v28 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:v22 green:v24 blue:v26 alpha:(v27 / 255.0)];
  (*(v11 + 8))(v13, v10);
  v29 = sub_1C19AFAB0();
  [v29 setBackgroundColor_];

  [*&v4[OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___filterView] setHidden_];
LABEL_10:
}

id sub_1C19B04C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarouselCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C19B05A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C19A9E58(&qword_1EBF03908);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1C19B0614()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v1 = [objc_opt_self() whiteColor];
  [v0 setTextColor_];

  if (qword_1EBF03590 != -1)
  {
    swift_once();
  }

  [v0 setFont_];
  [v0 setTextAlignment_];
  [v0 setNumberOfLines_];
  [v0 setAdjustsFontForContentSizeCategory_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

unint64_t sub_1C19B0724()
{
  result = qword_1EDE626E0;
  if (!qword_1EDE626E0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE626E0);
  }

  return result;
}

unint64_t sub_1C19B077C()
{
  result = qword_1EDE60C70;
  if (!qword_1EDE60C70)
  {
    sub_1C198FB8C(255, &qword_1EDE60C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE60C70);
  }

  return result;
}

uint64_t sub_1C19B07E4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_1C19B07F0()
{
  v1 = (v0 + OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell_touchPoint);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___assetImageView) = 0;
  *(v0 + OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionView) = 0;
  *(v0 + OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___captionLabel) = 0;
  *(v0 + OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___blurImageView) = 0;
  *(v0 + OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell____lazy_storage___filterView) = 0;
  *(v0 + OBJC_IVAR____TtC17PromotedContentUI26CarouselCollectionViewCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1C1A6FB8C();
  __break(1u);
}

id sub_1C19B08E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarouselBackgroundCollectionController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C19B0BAC(void *a1)
{
  if (qword_1EDE612D8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C1A6F39C();
  v3 = sub_1C1A6D6BC();
  v4 = [a1 dequeueReusableCellWithReuseIdentifier:v2 forIndexPath:v3];

  type metadata accessor for ImageCollectionViewCell();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    [*(v5 + OBJC_IVAR____TtC17PromotedContentUI23ImageCollectionViewCell_imageView) setContentMode_];
    return v6;
  }

  else
  {

    v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

    return [v8 init];
  }
}

id MetricsView.addDiagnostic(forEvent:dump:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C1A6E6EC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = [objc_opt_self() isAppleInternalInstall];
  if (result)
  {
    [*(v3 + OBJC_IVAR___APPCMetricsView_promotedContent) metricsHelper];
    sub_1C1A6E3AC();
    if (swift_dynamicCastClass())
    {
      v11 = sub_1C1A6E39C();
      if (v11)
      {
        v12 = v11;
        sub_1C1A6E6DC();
        if (a3)
        {
          v13 = sub_1C1A6E6CC();
          v15 = v14;
          v17 = 0;
          v18 = 0xE000000000000000;
          sub_1C1A6FACC();

          v17 = 0x747369480A0D0A0DLL;
          v18 = 0xEE000A0D3A79726FLL;
          MEMORY[0x1C6904F50](v13, v15);

          MEMORY[0x1C6904F50](168626701, 0xE400000000000000);
          MEMORY[0x1C6904F50](a2, a3);
          v16 = v18;
          *v9 = v17;
          v9[1] = v16;
          (*(v7 + 104))(v9, *MEMORY[0x1E69C60E0], v6);
          sub_1C1A6E6DC();

          swift_unknownObjectRelease();
          return (*(v7 + 8))(v9, v6);
        }
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

double sub_1C19B0F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v7 = v6;
  v49 = a1;
  v50 = a2;
  v10 = sub_1C19A9E58(&qword_1EBF03A58);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  v16 = sub_1C1A6F88C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  if (a6 == 1)
  {
    v21 = &unk_1C1A73BA0;
    v22 = &unk_1C1A73B88;
  }

  else
  {
    v19 = 0.0;
    v20 = 0.0;
    if (a6 != 2)
    {
      goto LABEL_6;
    }

    v21 = &unk_1C1A73BD0;
    v22 = &unk_1C1A73BB8;
  }

  v19 = v22[a5];
  v20 = v21[a5];
LABEL_6:
  v23 = (*(v7 + 144))(v18);
  sub_1C198FB8C(0, &qword_1EDE60C68);
  static UIButton.Configuration.mediumBorderless()();
  v24 = sub_1C1A6F89C();
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_1C1A6F8AC();
  if ((*(v17 + 48))(v15, 1, v16))
  {
    sub_1C19B1A00(v15, v12);
    sub_1C1A6F8BC();
    sub_1C1991140(v15, &qword_1EBF03A58);
  }

  else
  {

    sub_1C1A6F87C();
    sub_1C1A6F8BC();
  }

  v25 = [v24 sizeThatFits_];
  v27 = v26;
  (*(v7 + 344))(v25);
  if (qword_1EBF03590 != -1)
  {
    v48 = v28;
    swift_once();
    v28 = v48;
  }

  v29 = v19 - (v23 + v23 + v27 + v28);
  if (v29 < 0.0)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = v29;
  }

  v31 = qword_1EBF07660;
  sub_1C19A9E58(&qword_1EBF03910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1A73A30;
  v33 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  *(inited + 64) = sub_1C198FB8C(0, &qword_1EDE626C0);
  *(inited + 40) = v31;
  v34 = v31;
  v35 = v33;
  sub_1C19B6B90(inited);
  swift_setDeallocating();
  sub_1C1991140(inited + 32, &qword_1EBF03918);
  v36 = sub_1C1A6F39C();
  type metadata accessor for Key(0);
  sub_1C19B0724();
  v37 = sub_1C1A6F2FC();

  [v36 boundingRectWithSize:1 options:v37 attributes:0 context:{v30, 1.79769313e308}];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v51.origin.x = v39;
  v51.origin.y = v41;
  v51.size.width = v43;
  v51.size.height = v45;
  Height = CGRectGetHeight(v51);

  return v23 + v20 + v23 + fmax(ceil(Height), 28.0);
}

id sub_1C19B139C()
{
  v1 = v0;
  v2 = sub_1C1A6F88C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = OBJC_IVAR____TtC17PromotedContentUI29CTACarouselCollectionViewCell____lazy_storage___button;
  v4 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI29CTACarouselCollectionViewCell____lazy_storage___button);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI29CTACarouselCollectionViewCell____lazy_storage___button);
  }

  else
  {
    sub_1C198FB8C(0, &qword_1EDE60C68);
    static UIButton.Configuration.mediumBorderless()();
    v6 = sub_1C1A6F89C();
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    [v6 addTarget:v1 action:sel_didTapCTAButtonWithSender_ forControlEvents:64];
    v7 = *(v1 + v3);
    *(v1 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

void sub_1C19B14AC()
{
  v1 = sub_1C19A9E58(&qword_1EBF03A60);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_1C19A9E58(&qword_1EBF03A58);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CTACarouselCollectionViewCell();
  v14.receiver = v0;
  v14.super_class = v10;
  objc_msgSendSuper2(&v14, sel_prepareForReuse);
  v11 = sub_1C19B139C();
  sub_1C1A6F8AC();
  v12 = sub_1C1A6F88C();
  if ((*(*(v12 - 8) + 48))(v9, 1, v12))
  {
    sub_1C19B1A00(v9, v6);
    sub_1C1A6F8BC();

    sub_1C1991140(v9, &qword_1EBF03A58);
  }

  else
  {
    v13 = sub_1C1A6D2FC();
    (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
    sub_1C1A6F81C();
    sub_1C1A6F8BC();
  }
}

void sub_1C19B1788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C19A9E58(&qword_1EBF03A58);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  sub_1C19B013C(a1, a2, a3);
  v12 = sub_1C19B139C();
  sub_1C1A6F8AC();
  v13 = sub_1C1A6F88C();
  if ((*(*(v13 - 8) + 48))(v11, 1, v13))
  {
    sub_1C19B1A00(v11, v8);
    sub_1C1A6F8BC();

    sub_1C1991140(v11, &qword_1EBF03A58);
  }

  else
  {
    type metadata accessor for CarouselElement();

    sub_1C1A6F87C();
    sub_1C1A6F8BC();
  }
}

id sub_1C19B1998()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CTACarouselCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C19B1A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C19A9E58(&qword_1EBF03A58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1C19B1A70()
{
  v0 = sub_1C1A6F3CC();
  v2 = v1;
  if (v0 == sub_1C1A6F3CC() && v2 == v3)
  {

    return 10.0;
  }

  v5 = sub_1C1A6FCEC();

  result = 10.0;
  if ((v5 & 1) == 0)
  {
    v7 = sub_1C1A6F3CC();
    v9 = v8;
    if (v7 == sub_1C1A6F3CC() && v9 == v10)
    {
      goto LABEL_13;
    }

    v12 = sub_1C1A6FCEC();

    result = 12.0;
    if ((v12 & 1) == 0)
    {
      v13 = sub_1C1A6F3CC();
      v15 = v14;
      if (v13 == sub_1C1A6F3CC() && v15 == v16)
      {
LABEL_13:

        return 12.0;
      }

      v17 = sub_1C1A6FCEC();

      result = 12.0;
      if ((v17 & 1) == 0)
      {
        v18 = sub_1C1A6F3CC();
        v20 = v19;
        if (v18 == sub_1C1A6F3CC() && v20 == v21)
        {

          return 13.0;
        }

        v22 = sub_1C1A6FCEC();

        result = 13.0;
        if ((v22 & 1) == 0)
        {
          v23 = sub_1C1A6F3CC();
          v25 = v24;
          if (v23 == sub_1C1A6F3CC() && v25 == v26)
          {

            return 14.0;
          }

          v27 = sub_1C1A6FCEC();

          result = 14.0;
          if ((v27 & 1) == 0)
          {
            v28 = sub_1C1A6F3CC();
            v30 = v29;
            if (v28 == sub_1C1A6F3CC() && v30 == v31)
            {

              return 16.0;
            }

            v32 = sub_1C1A6FCEC();

            result = 16.0;
            if ((v32 & 1) == 0)
            {
              v33 = sub_1C1A6F3CC();
              v35 = v34;
              if (v33 == sub_1C1A6F3CC() && v35 == v36)
              {

                return 17.0;
              }

              v37 = sub_1C1A6FCEC();

              result = 17.0;
              if ((v37 & 1) == 0)
              {
                v38 = sub_1C1A6F3CC();
                v40 = v39;
                if (v38 == sub_1C1A6F3CC() && v40 == v41)
                {

                  return 20.0;
                }

                v42 = sub_1C1A6FCEC();

                result = 20.0;
                if ((v42 & 1) == 0)
                {
                  v43 = sub_1C1A6F3CC();
                  v45 = v44;
                  if (v43 == sub_1C1A6F3CC() && v45 == v46)
                  {
                    goto LABEL_39;
                  }

                  v47 = sub_1C1A6FCEC();

                  if (v47)
                  {
                    return 23.0;
                  }

                  v48 = sub_1C1A6F3CC();
                  v50 = v49;
                  if (v48 != sub_1C1A6F3CC() || v50 != v51)
                  {
                    v52 = sub_1C1A6FCEC();

                    if (v52)
                    {
                      return 23.0;
                    }

                    v53 = sub_1C1A6F3CC();
                    v55 = v54;
                    if (v53 == sub_1C1A6F3CC() && v55 == v56)
                    {
                      goto LABEL_39;
                    }

                    v57 = sub_1C1A6FCEC();

                    if (v57)
                    {
                      return 23.0;
                    }

                    v58 = sub_1C1A6F3CC();
                    v60 = v59;
                    if (v58 != sub_1C1A6F3CC() || v60 != v61)
                    {
                      v62 = sub_1C1A6FCEC();

                      result = 13.0;
                      if (v62)
                      {
                        return 23.0;
                      }

                      return result;
                    }
                  }

LABEL_39:

                  return 23.0;
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

void sub_1C19B2044()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v2 = v1;
  v3 = [v1 safeAreaLayoutGuide];

  [v3 layoutFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = &v0[OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_maximumExpandedSize];
  if (v0[OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_maximumExpandedSize + 16])
  {
    return;
  }

  v13 = v12[1];
  if (*v12 == 0.0 || (v24.origin.x = v5, v24.origin.y = v7, v24.size.width = v9, v24.size.height = v11, v14 = *v12, CGRectGetWidth(v24) < v14))
  {
    v25.origin.x = v5;
    v25.origin.y = v7;
    v25.size.width = v9;
    v25.size.height = v11;
    CGRectGetWidth(v25);
  }

  if (v13 == 0.0 || (v26.origin.x = v5, v26.origin.y = v7, v26.size.width = v9, v26.size.height = v11, CGRectGetHeight(v26) < v13))
  {
    v27.origin.x = v5;
    v27.origin.y = v7;
    v27.size.width = v9;
    v27.size.height = v11;
    CGRectGetHeight(v27);
  }

  v28.origin.x = v5;
  v28.origin.y = v7;
  v28.size.width = v9;
  v28.size.height = v11;
  CGRectGetWidth(v28);
  v15 = [v0 view];
  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = v15;
  [v15 safeAreaInsets];

  v29.origin.x = v5;
  v29.origin.y = v7;
  v29.size.width = v9;
  v29.size.height = v11;
  CGRectGetHeight(v29);
  v17 = [v0 view];
  if (!v17)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v18 = v17;
  [v17 safeAreaInsets];

  sub_1C1A6F67C();
  sub_1C199E4CC();
  v19 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C1A73A30;
  v21 = sub_1C1A6F76C();
  v23 = v22;
  *(v20 + 56) = MEMORY[0x1E69E6158];
  *(v20 + 64) = sub_1C199E518();
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  sub_1C1A6F18C();
}

double sub_1C19B2338()
{
  v1 = (v0 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController____lazy_storage___closeButtonPadding);
  if ((*(v0 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController____lazy_storage___closeButtonPadding + 8) & 1) == 0)
  {
    return *v1;
  }

  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  result = 16.0;
  if (v3 == 1)
  {
    result = 11.0;
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

void sub_1C19B23C8()
{
  v0 = sub_1C19A9E58(&qword_1EBF038A8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8[-v1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1C1A6F64C();
    sub_1C199E4CC();
    v5 = sub_1C1A6F8EC();
    sub_1C1A6F18C();

    sub_1C1A6D5CC();
    v6 = sub_1C1A6D5DC();
    (*(*(v6 - 8) + 56))(v2, 0, 1, v6);
    v7 = OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_backgroundedTime;
    swift_beginAccess();
    sub_1C19B40BC(v2, v4 + v7);
    swift_endAccess();
  }
}

void sub_1C19B2564()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1C19B25B8();
  }
}

void sub_1C19B25B8()
{
  v1 = v0;
  v2 = sub_1C19A9E58(&qword_1EBF038A8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_1C1A6D5DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  sub_1C1A6F64C();
  sub_1C199E4CC();
  v12 = sub_1C1A6F8EC();
  sub_1C1A6F18C();

  sub_1C1A6D5CC();
  v13 = OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_backgroundedTime;
  swift_beginAccess();
  sub_1C19AF080(v1 + v13, v4);
  v14 = *(v6 + 48);
  if (v14(v4, 1, v5) == 1)
  {
    sub_1C1A6D5CC();
    if (v14(v4, 1, v5) != 1)
    {
      sub_1C1991140(v4, &qword_1EBF038A8);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
  }

  sub_1C1A6D50C();
  v16 = v15;
  v17 = v15;
  v18 = *(v6 + 8);
  v18(v8, v5);
  v18(v11, v5);
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return;
  }

  if (v16 >= 301)
  {
    sub_1C19B35B0();
  }
}

id sub_1C19B28E8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_webView];
  sub_1C1A65B5C();

  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t type metadata accessor for ExpandViewController()
{
  result = qword_1EBF03AC8;
  if (!qword_1EBF03AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C19B2B18()
{
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = v1;
  v3 = [objc_opt_self() systemBackgroundColor];
  [v2 setBackgroundColor_];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  v6 = OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_closeButton;
  [v4 addSubview_];

  sub_1C19B2C38();
  v7 = [v0 view];
  if (v7)
  {
    v8 = v7;
    [v7 bringSubviewToFront_];

    return;
  }

LABEL_7:
  __break(1u);
}

id sub_1C19B2C38()
{
  v1 = v0;
  v2 = sub_1C1A6D48C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1A6D1DC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, &v1[OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_expandedDestinationURL], v2, v8);
  sub_1C1A6D1BC();
  v11 = OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_webView;
  v12 = *&v1[OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_webView];
  v13 = sub_1C1A6D19C();

  result = [v1 view];
  if (result)
  {
    v15 = result;
    [result addSubview_];

    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C19B2E7C(char a1)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_webView) + OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_webProcessProxy);
  if (v2)
  {
    swift_unknownObjectRetain();
    sub_1C1A6F67C();
    sub_1C199E4CC();
    v4 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1C1A73A30;
    v6 = sub_1C199E518();
    v7 = a1 & 1;
    v8 = 0x6C62697369766E69;
    if (v7)
    {
      v8 = 0x656C6269736976;
    }

    v9 = 0xE900000000000065;
    *(v5 + 56) = MEMORY[0x1E69E6158];
    *(v5 + 64) = v6;
    if (v7)
    {
      v9 = 0xE700000000000000;
    }

    *(v5 + 32) = v8;
    *(v5 + 40) = v9;
    sub_1C1A6F18C();

    [v2 creativeVisibilityDidChange_];

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C1A6F66C();
    sub_1C199E4CC();
    v10 = sub_1C1A6F8EC();
    sub_1C1A6F18C();
  }
}

void sub_1C19B30B4(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewWillDisappear_, a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_notificationObserver];
  if (v3)
  {
    v4 = objc_opt_self();
    swift_unknownObjectRetain();
    v5 = [v4 defaultCenter];
    [v5 removeObserver_];
    swift_unknownObjectRelease();
  }

  v6 = *&v1[OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_notificationOpenObserver];
  if (v6)
  {
    v7 = objc_opt_self();
    swift_unknownObjectRetain();
    v8 = [v7 defaultCenter];
    [v8 removeObserver_];
    swift_unknownObjectRelease();
  }
}

void sub_1C19B3224(void *a1, uint64_t a2, uint64_t a3, const char **a4, char a5)
{
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  v8 = *a4;
  v9 = v10.receiver;
  objc_msgSendSuper2(&v10, v8, a3);
  sub_1C19B2E7C(a5);
}

void sub_1C19B3294()
{
  v1 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_webView);
  sub_1C19B2044();
  [v1 setFrame_];

  v2 = OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_closeButton;
  v3 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_closeButton);
  sub_1C19B2044();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [*(v0 + v2) imageForState_];
  if (v12)
  {
    v13 = v12;
    [v12 size];
    v15 = v14;
    v17 = v16;
  }

  else
  {
    v17 = 0.0;
    v15 = 0.0;
  }

  v18 = sub_1C19B2338();
  v19 = v15 + v18 + v18;
  v20 = v17 + *(v0 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController____lazy_storage___closeButtonPadding) + *(v0 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController____lazy_storage___closeButtonPadding);
  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  v21 = CGRectGetMaxX(v23) - v19;
  v24.origin.x = v5;
  v24.origin.y = v7;
  v24.size.width = v9;
  v24.size.height = v11;
  [v3 setFrame_];

  sub_1C19B33F0();
}

void sub_1C19B33F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_webView);
  v2 = *&v1[OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_webProcessProxy];
  if (v2)
  {
    swift_unknownObjectRetain();
    [v1 frame];
    x = v10.origin.x;
    y = v10.origin.y;
    width = v10.size.width;
    height = v10.size.height;
    v7 = CGRectGetWidth(v10);
    v11.origin.x = x;
    v11.origin.y = y;
    v11.size.width = width;
    v11.size.height = height;
    [v2 setExpandedWidth:v7 andHeight:CGRectGetHeight(v11)];

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C1A6F66C();
    sub_1C199E4CC();
    v8 = sub_1C1A6F8EC();
    sub_1C1A6F18C();
  }
}

void sub_1C19B35B0()
{
  v1 = v0;
  v2 = sub_1C19A9E58(&qword_1EBF03AD8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  v5 = &v0[OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_actionDelegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = *MEMORY[0x1E69C5F20];
    v9 = sub_1C1A6DDCC();
    v10 = *(v9 - 8);
    (*(v10 + 104))(v4, v8, v9);
    (*(v10 + 56))(v4, 0, 1, v9);
    (*(v6 + 8))(v4, ObjectType, v6);
    swift_unknownObjectRelease();
    sub_1C1991140(v4, &qword_1EBF03AD8);
  }

  else
  {
    sub_1C1A6F66C();
    sub_1C199E4CC();
    v11 = sub_1C1A6F8EC();
    sub_1C1A6F18C();

    v12 = [v1 presentingViewController];
    if (v12)
    {
      v15 = v12;
      [v12 dismissViewControllerAnimated:!UIAccessibilityIsReduceMotionEnabled() completion:0];
      v13 = v15;
    }
  }
}

void sub_1C19B3968()
{
  sub_1C1A6D48C();
  if (v0 <= 0x3F)
  {
    sub_1C199B708();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C19B3A78()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_webView) + OBJC_IVAR____TtC17PromotedContentUI22PromotedContentWebView_webProcessProxy);
  if (v1)
  {
    [swift_unknownObjectRetain() creativeStateDidChange_];
    [v1 creativeVisibilityDidChange_];
    sub_1C19B33F0();

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C1A6F66C();
    sub_1C199E4CC();
    v2 = sub_1C1A6F8EC();
    sub_1C1A6F18C();
  }
}

void sub_1C19B3D30()
{
  v1 = sub_1C19A9E58(&qword_1EBF03AD8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12 - v2;
  sub_1C1A6F67C();
  sub_1C199E4CC();
  v4 = sub_1C1A6F8EC();
  sub_1C1A6F18C();

  v5 = v0 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_actionDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v8 = *MEMORY[0x1E69C5F20];
    v9 = sub_1C1A6DDCC();
    v10 = *(v9 - 8);
    (*(v10 + 104))(v3, v8, v9);
    (*(v10 + 56))(v3, 0, 1, v9);
    (*(v6 + 8))(v3, ObjectType, v6);
    swift_unknownObjectRelease();
    sub_1C1991140(v3, &qword_1EBF03AD8);
  }

  else
  {
    sub_1C1A6F66C();
    v13 = sub_1C1A6F8EC();
    sub_1C1A6F18C();
    v11 = v13;
  }
}

uint64_t sub_1C19B40BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C19A9E58(&qword_1EBF038A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1C19B412C()
{
  v1 = v0 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_maximumExpandedSize;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_navigationCoordinator) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_actionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_notificationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_notificationOpenObserver) = 0;
  v2 = OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_backgroundedTime;
  v3 = sub_1C1A6D5DC();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = v0 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController____lazy_storage___closeButtonPadding;
  *v4 = 0;
  *(v4 + 8) = 1;
  sub_1C1A6FB8C();
  __break(1u);
}

void sub_1C19B4254()
{
  v1 = v0 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_actionDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v4 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_tapGestureRecognizer);
    v5 = *(v0 + OBJC_IVAR____TtC17PromotedContentUI20ExpandViewController_webView);
    v7 = v4;
    [v5 frame];
    (*(v2 + 16))(v7, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C1A6F65C();
    sub_1C199E4CC();
    v6 = sub_1C1A6F8EC();
    sub_1C1A6F18C();

    sub_1C19B35B0();
  }
}

void sub_1C19B43C4()
{
  sub_1C1A6F66C();
  sub_1C199E4CC();
  v0 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C1A73A30;
  *(v1 + 56) = MEMORY[0x1E69E6158];
  *(v1 + 64) = sub_1C199E518();
  *(v1 + 32) = 0xD00000000000003CLL;
  *(v1 + 40) = 0x80000001C1A7AAB0;
  sub_1C1A6F18C();

  v2 = sub_1C1A6F39C();
  APSimulateCrash();
}

uint64_t sub_1C19B450C()
{
  result = sub_1C19B452C();
  qword_1EDE66568 = result;
  return result;
}

uint64_t sub_1C19B452C()
{
  v0 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1C1A49908(0xD000000000000020, 0x80000001C1A7AEA0, 128, isUniquelyReferenced_nonNull_native);
  v2 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C1A49908(0x79614C7473726966, 0xEB0000000074756FLL, 1, v2);
  v3 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C1A49908(0xD00000000000002ELL, 0x80000001C1A7AED0, 16, v3);
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C1A49908(0xD000000000000014, 0x80000001C1A7AF00, 256, v4);
  v5 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C1A49908(0x6961507473726966, 0xEA0000000000746ELL, 64, v5);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C1A49908(0xD00000000000002DLL, 0x80000001C1A7AF20, 32, v6);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C1A49908(0xD00000000000001DLL, 0x80000001C1A7AF50, 4, v7);
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C1A49908(0xD00000000000001BLL, 0x80000001C1A7AF70, 2, v8);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C1A49908(0xD000000000000030, 0x80000001C1A7AF90, 8, v9);
  return v0;
}

uint64_t sub_1C19B4750(uint64_t a1)
{
  if (qword_1EDE62A20 != -1)
  {
LABEL_21:
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EDE66568;
  v3 = qword_1EDE66568 + 64;
  v4 = 1 << *(qword_1EDE66568 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(qword_1EDE66568 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = *(*(v2 + 48) + ((v8 << 9) | (8 * v11)));
    if ((v12 & ~a1) == 0)
    {
      swift_beginAccess();
      v13 = qword_1EDE66568;
      if (*(qword_1EDE66568 + 16) && (v14 = sub_1C19B61F4(v12), (v15 & 1) != 0))
      {
        v16 = (*(v13 + 56) + 16 * v14);
        v17 = v16[1];
        v27 = *v16;
        swift_endAccess();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1C19CADF4(0, *(v9 + 2) + 1, 1, v9);
        }

        v19 = *(v9 + 2);
        v18 = *(v9 + 3);
        v20 = v19 + 1;
        if (v19 >= v18 >> 1)
        {
          v22 = sub_1C19CADF4((v18 > 1), v19 + 1, 1, v9);
          v20 = v19 + 1;
          v9 = v22;
        }

        *(v9 + 2) = v20;
        v21 = &v9[16 * v19];
        *(v21 + 4) = v27;
        *(v21 + 5) = v17;
      }

      else
      {
        swift_endAccess();
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  v28 = sub_1C1A6FCCC();
  MEMORY[0x1C6904F50](540949792, 0xE400000000000000);
  v23 = MEMORY[0x1C6904FE0](v9, MEMORY[0x1E69E6158]);
  v25 = v24;

  MEMORY[0x1C6904F50](v23, v25);

  return v28;
}

uint64_t sub_1C19B49C4()
{
  v1 = *v0;
  sub_1C1A6FDAC();
  MEMORY[0x1C6905870](v1);
  return sub_1C1A6FDDC();
}

uint64_t sub_1C19B4A38()
{
  v1 = *v0;
  sub_1C1A6FDAC();
  MEMORY[0x1C6905870](v1);
  return sub_1C1A6FDDC();
}

uint64_t sub_1C19B4A84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1C19AB3E4(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1C19B4AC4(void *a1, uint64_t a2)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      sub_1C1A022A4(a1, a2);

      return swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_1C1A6F66C();
  sub_1C199E4CC();
  v5 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  result = swift_allocObject();
  *(result + 16) = xmmword_1C1A73A30;
  if (a1)
  {
    v6 = result;
    v7 = [a1 description];
    v8 = sub_1C1A6F3CC();
    v10 = v9;

    v6[7] = MEMORY[0x1E69E6158];
    v6[8] = sub_1C199E518();
    v6[4] = v8;
    v6[5] = v10;
    sub_1C1A6F18C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C19B4D14(void *a1, uint64_t a2, void *a3, void *a4, void *a5, SEL *a6)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if ([Strong respondsToSelector_])
    {
      v13 = a3;
      v14 = a4;
      v15 = a5;
      v16 = a1;
      v17 = sub_1C1A6D3AC();
      [v12 *a6];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void *sub_1C19B4E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    if ([result respondsToSelector_])
    {
      [v9 *a5];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

_OWORD *sub_1C19B4EDC(void *a1, uint64_t a2)
{
  sub_1C1A6F66C();
  sub_1C199E4CC();
  v4 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  result = swift_allocObject();
  result[1] = xmmword_1C1A73CD0;
  if (!a1)
  {
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = [a1 description];
  v8 = sub_1C1A6F3CC();
  v10 = v9;

  v11 = MEMORY[0x1E69E6158];
  v6[7] = MEMORY[0x1E69E6158];
  v12 = sub_1C199E518();
  v6[8] = v12;
  v6[4] = v8;
  v6[5] = v10;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v13 = 0x80000001C1A7AE40;
      v14 = 0xD000000000000013;
      goto LABEL_12;
    }

    if (a2 == 3)
    {
      v13 = 0x80000001C1A7AE20;
      v14 = 0xD000000000000018;
      goto LABEL_12;
    }

LABEL_9:
    v6[12] = v11;
    v6[13] = v12;
    v6[9] = 0x6E776F6E6B6E55;
    v13 = 0xE700000000000000;
    goto LABEL_13;
  }

  if (!a2)
  {
    v13 = 0xEC00000074696D69;
    v14 = 0x6C2079726F6D654DLL;
    goto LABEL_12;
  }

  if (a2 != 1)
  {
    goto LABEL_9;
  }

  v13 = 0xE900000000000074;
  v14 = 0x696D696C20555043;
LABEL_12:
  v6[12] = v11;
  v6[13] = v12;
  v6[9] = v14;
LABEL_13:
  v6[10] = v13;
  sub_1C1A6F18C();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    if ([result respondsToSelector_])
    {
      [v15 webViewWebContentProcessDidTerminate_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1C19B51F0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C19B525C(int a1, Class a2)
{
  v3 = objc_allocWithZone(a2);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v5.receiver = v3;
  v5.super_class = a2;
  return objc_msgSendSuper2(&v5, sel_init);
}

unint64_t sub_1C19B52E8()
{
  result = qword_1EDE62A18;
  if (!qword_1EDE62A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE62A18);
  }

  return result;
}

unint64_t sub_1C19B5340()
{
  result = qword_1EBF03BB0;
  if (!qword_1EBF03BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF03BB0);
  }

  return result;
}

unint64_t sub_1C19B5398()
{
  result = qword_1EBF03BB8;
  if (!qword_1EBF03BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF03BB8);
  }

  return result;
}

unint64_t sub_1C19B53F0()
{
  result = qword_1EBF03BC0;
  if (!qword_1EBF03BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF03BC0);
  }

  return result;
}

uint64_t sub_1C19B5448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1C19A9E58(&qword_1EBF03C58);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for VisibilityTiming();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_1C1991140(a1, &qword_1EBF03C58);
    sub_1C1A401E4(a2, a3, v9);

    return sub_1C1991140(v9, &qword_1EBF03C58);
  }

  else
  {
    sub_1C19B7920(a1, v13, type metadata accessor for VisibilityTiming);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1C1A495B4(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_1C19B561C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1C19916E4(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1C1A497B8(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1C1991140(a1, &qword_1EBF03BD0);
    sub_1C1A40238(a2, a3, v9);

    return sub_1C1991140(v9, &qword_1EBF03BD0);
  }

  return result;
}

unint64_t sub_1C19B56EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_1C1A49A68(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    result = sub_1C1992F04(a2);
    if (v8)
    {
      v9 = result;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_1C1A4A510();
        v11 = v13;
      }

      result = sub_1C19B6638(v9, v11);
      *v3 = v11;
    }
  }

  return result;
}

uint64_t sub_1C19B5804(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v5;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v5 = v19;
  }

  else
  {
    v14 = sub_1C1991010(a2, a3);
    v16 = v15;

    if (v16)
    {
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v6;
      v20 = *v6;
      if (!v17)
      {
        a5();
        v18 = v20;
      }

      result = sub_1C19B69CC(v14, v18);
      *v6 = v18;
    }
  }

  return result;
}

uint64_t sub_1C19B590C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1C19A9E58(&qword_1EBF03C30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for PreloadedContentDiagnosticPayload();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_1C1991140(a1, &qword_1EBF03C30);
    sub_1C19A0AF0(a2, a3, v9);

    return sub_1C1991140(v9, &qword_1EBF03C30);
  }

  else
  {
    sub_1C19B7920(a1, v13, type metadata accessor for PreloadedContentDiagnosticPayload);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1C1A49A90(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_1C19B5B38(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v5;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v5 = v19;
  }

  else
  {
    v14 = sub_1C1991010(a2, a3);
    v16 = v15;

    if (v16)
    {
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v6;
      v20 = *v6;
      if (!v17)
      {
        a5();
        v18 = v20;
      }

      result = sub_1C19B69CC(v14, v18);
      *v6 = v18;
    }
  }

  return result;
}

uint64_t sub_1C19B5C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1C1A49C94(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1C1991010(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1C1A4AD30();
        v14 = v16;
      }

      result = sub_1C19B69CC(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t OnScreenAdEvent.init(adInstanceId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[2] = sub_1C19B6BD8(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OnScreenAdEvent();
  result = sub_1C1A6D61C();
  *a3 = a1;
  a3[1] = a2;
  return result;
}

double OnScreenAdEvent.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(v3 + 16);
  if (*(v5 + 16) && (v6 = sub_1C1991010(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(v5 + 56) + 32 * v6;

    sub_1C19A1A5C(v8, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1C19B5E20(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  sub_1C1990FA8(a1, v7, &qword_1EBF03BD0);
  sub_1C1990FA8(v7, v6, &qword_1EBF03BD0);

  sub_1C19B561C(v6, v3, v4);
  return sub_1C1991140(v7, &qword_1EBF03BD0);
}

uint64_t OnScreenAdEvent.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C1990FA8(a1, v7, &qword_1EBF03BD0);
  sub_1C19B561C(v7, a2, a3);
  return sub_1C1991140(a1, &qword_1EBF03BD0);
}

void (*OnScreenAdEvent.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x78uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[13] = a3;
  v7[14] = v3;
  v7[12] = a2;
  v9 = *(v3 + 16);
  if (*(v9 + 16) && (v10 = sub_1C1991010(a2, a3), (v11 & 1) != 0))
  {
    sub_1C19A1A5C(*(v9 + 56) + 32 * v10, v8);
  }

  else
  {
    *v8 = 0u;
    v8[1] = 0u;
  }

  return sub_1C19B5FFC;
}

void sub_1C19B5FFC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v4 = *(*a1 + 96);
  if (a2)
  {
    sub_1C1990FA8(*a1, v2 + 32, &qword_1EBF03BD0);
    sub_1C1990FA8(v2 + 32, v2 + 64, &qword_1EBF03BD0);

    sub_1C19B561C(v2 + 64, v4, v3);
    sub_1C1991140(v2 + 32, &qword_1EBF03BD0);
  }

  else
  {
    sub_1C1990FA8(*a1, v2 + 32, &qword_1EBF03BD0);

    sub_1C19B561C(v2 + 32, v4, v3);
  }

  sub_1C1991140(v2, &qword_1EBF03BD0);

  free(v2);
}

uint64_t static OnScreenAdEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for OnScreenAdEvent() + 24);

  return MEMORY[0x1EEDC4E90](a1 + v4, a2 + v4);
}

unint64_t sub_1C19B6164(uint64_t a1)
{
  sub_1C1A6F3CC();
  sub_1C1A6FDAC();
  sub_1C1A6F45C();
  v2 = sub_1C1A6FDDC();

  return sub_1C19B636C(a1, v2);
}

unint64_t sub_1C19B61F4(uint64_t a1)
{
  sub_1C1A6FDAC();
  MEMORY[0x1C6905870](a1);
  v2 = sub_1C1A6FDDC();

  return sub_1C19A34CC(a1, v2);
}

unint64_t sub_1C19B6260(uint64_t a1)
{
  v2 = sub_1C1A6FA4C();

  return sub_1C19B62A4(a1, v2);
}

unint64_t sub_1C19B62A4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1C19B7870(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1C6905510](v9, a1);
      sub_1C19B78CC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1C19B636C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1C1A6F3CC();
      v8 = v7;
      if (v6 == sub_1C1A6F3CC() && v8 == v9)
      {
        break;
      }

      v11 = sub_1C1A6FCEC();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1C19B6488(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C1A6F96C() + 1) & ~v5;
    do
    {
      sub_1C1A6FDAC();

      sub_1C1A6F45C();
      v10 = sub_1C1A6FDDC();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1C19B6638(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C1A6F96C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1C1A6FD9C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1C19B67D8(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_1C1A6F96C() + 1) & ~v6;
    while (1)
    {
      sub_1C1A6FDAC();

      sub_1C1A6F45C();
      v11 = sub_1C1A6FDDC();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1C19B69CC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C1A6F96C() + 1) & ~v5;
    do
    {
      sub_1C1A6FDAC();

      sub_1C1A6F45C();
      v9 = sub_1C1A6FDDC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1C19B6BD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C19A9E58(&qword_1EBF03D08);
    v3 = sub_1C1A6FBEC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C1990FA8(v4, &v13, &qword_1EBF03D10);
      v5 = v13;
      v6 = v14;
      result = sub_1C1991010(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1C19916E4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t type metadata accessor for OnScreenAdEvent()
{
  result = qword_1EDE61EA8;
  if (!qword_1EDE61EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C19B6D7C()
{
  sub_1C19B6E10();
  if (v0 <= 0x3F)
  {
    sub_1C1A6D62C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C19B6E10()
{
  if (!qword_1EDE60CC0)
  {
    v0 = sub_1C1A6F33C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE60CC0);
    }
  }
}

unint64_t sub_1C19B6E88(uint64_t a1)
{
  v2 = sub_1C19A9E58(&qword_1EBF03BD8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1C19A9E58(&qword_1EBF03BE0);
    v7 = sub_1C1A6FBEC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1C1990FA8(v9, v5, &qword_1EBF03BD8);
      v11 = *v5;
      result = sub_1C1992F04(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for VisibilityTiming();
      result = sub_1C19B7920(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for VisibilityTiming);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C19B7074(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C19A9E58(&qword_1EBF03CE8);
    v3 = sub_1C1A6FBEC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1C1991010(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C19B71C4(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1C19A9E58(a2);
    v4 = sub_1C1A6FBEC();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1C1991010(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C19B72D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C19A9E58(&qword_1EBF03C60);
    v3 = sub_1C1A6FBEC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C1990FA8(v4, v13, &qword_1EBF03C68);
      result = sub_1C19B6260(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1C19916E4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C19B7410(uint64_t a1)
{
  v2 = sub_1C19A9E58(&qword_1EBF03C48);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1C19A9E58(&qword_1EBF03C50);
    v7 = sub_1C1A6FBEC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1C1990FA8(v9, v5, &qword_1EBF03C48);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1C1991010(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for FrequencyCapInfo(0);
      result = sub_1C19B7920(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for FrequencyCapInfo);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C19B760C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C19A9E58(&qword_1EBF03C90);
    v3 = sub_1C1A6FBEC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1C1991010(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C19B7758(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_1C19A9E58(a2);
    v7 = sub_1C1A6FBEC();
    v8 = a1 + 32;

    while (1)
    {
      sub_1C1990FA8(v8, &v15, a4);
      v9 = v15;
      result = sub_1C19B6164(v15);
      if (v11)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      result = sub_1C19916E4(&v16, (v7[7] + 32 * result));
      v12 = v7[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v7[2] = v14;
      v8 += 40;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C19B7920(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C19B798C()
{
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, sel_viewDidLoad);
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = *MEMORY[0x1E69DDAC8];
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = sub_1C19B97F8;
  v18 = v4;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1C1A40D40;
  v16 = &unk_1F413FB08;
  v5 = _Block_copy(&v13);

  v6 = [v2 addObserverForName:v3 object:0 queue:0 usingBlock:v5];
  _Block_release(v5);

  *&v0[OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_notificationObserver] = v6;
  swift_unknownObjectRelease();
  v7 = [v1 defaultCenter];
  v8 = *MEMORY[0x1E69DDBC0];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = sub_1C19B9800;
  v18 = v9;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1C1A40D40;
  v16 = &unk_1F413FB30;
  v10 = _Block_copy(&v13);

  v11 = [v7 addObserverForName:v8 object:0 queue:0 usingBlock:v10];
  _Block_release(v10);

  *&v0[OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_notificationOpenObserver] = v11;
  return swift_unknownObjectRelease();
}

void sub_1C19B7BF0()
{
  v0 = sub_1C19A9E58(&qword_1EBF038A8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8[-v1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1C1A6F64C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v5 = sub_1C1A6F8EC();
    sub_1C1A6F18C();

    sub_1C1A6D5CC();
    v6 = sub_1C1A6D5DC();
    (*(*(v6 - 8) + 56))(v2, 0, 1, v6);
    v7 = OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_backgroundedTime;
    swift_beginAccess();
    sub_1C19B40BC(v2, v4 + v7);
    swift_endAccess();
  }
}

void sub_1C19B7D9C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1C19B7DF0();
  }
}

void sub_1C19B7DF0()
{
  v1 = v0;
  v2 = sub_1C19A9E58(&qword_1EBF038A8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_1C1A6D5DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  sub_1C1A6F64C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v12 = sub_1C1A6F8EC();
  sub_1C1A6F18C();

  sub_1C1A6D5CC();
  v13 = OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_backgroundedTime;
  swift_beginAccess();
  sub_1C19AF080(v1 + v13, v4);
  v14 = *(v6 + 48);
  if (v14(v4, 1, v5) == 1)
  {
    sub_1C1A6D5CC();
    if (v14(v4, 1, v5) != 1)
    {
      sub_1C1991140(v4, &qword_1EBF038A8);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
  }

  sub_1C1A6D50C();
  v16 = v15;
  v17 = v15;
  v18 = *(v6 + 8);
  v18(v8, v5);
  v18(v11, v5);
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return;
  }

  if (v16 >= 301)
  {
    sub_1C19B8954();
  }
}

void sub_1C19B8144(char a1)
{
  v14.receiver = v1;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_viewDidAppear_, a1 & 1);
  v3 = [objc_opt_self() authorizationStatusForEntityType_];
  if (v3 <= 2)
  {
    if ((v3 - 1) < 2)
    {
      sub_1C198FB8C(0, &qword_1EDE63F38);
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_1C1A6F6BC();

      return;
    }

    if (!v3)
    {
      goto LABEL_8;
    }

LABEL_9:
    sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v6 = sub_1C1A6F8DC();
    sub_1C1A6F18C();
    goto LABEL_10;
  }

  if (v3 == 4)
  {
LABEL_8:
    v8 = *&v1[OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_eventStore];
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    v13[4] = sub_1C19B97AC;
    v13[5] = v10;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_1C19B8CF4;
    v13[3] = &unk_1F413FA90;
    v11 = _Block_copy(v13);
    v12 = v8;

    [v12 requestFullAccessToEventsWithCompletion_];
    _Block_release(v11);

    return;
  }

  if (v3 != 3)
  {
    goto LABEL_9;
  }

  v4 = *&v1[OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_calendarEvent];
  v5 = *&v1[OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_eventStore];
  v6 = v1;
  v7 = v5;

  sub_1C1A27690(v7, v4, v6, v7);

LABEL_10:
}

void sub_1C19B83E8()
{
  v1 = v0;
  type metadata accessor for PromotedContentUIModule();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  v5 = [v3 mainBundle];
  sub_1C198FB8C(0, &qword_1EDE62678);
  LOBYTE(ObjCClassFromMetadata) = sub_1C1A6F7BC();

  if (ObjCClassFromMetadata)
  {
    sub_1C1A6FB8C();
    __break(1u);
  }

  else
  {
    sub_1C1A6D31C();
    sub_1C1A6D31C();
    sub_1C1A6D31C();
    v6 = sub_1C1A6F39C();

    v7 = sub_1C1A6F39C();

    v8 = [objc_opt_self() alertControllerWithTitle:v6 message:v7 preferredStyle:{1, 0xE200000000000000}];

    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v10 = sub_1C1A6F39C();

    aBlock[4] = sub_1C19B97F0;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C19B8FA0;
    aBlock[3] = &unk_1F413FAE0;
    v11 = _Block_copy(aBlock);

    v12 = [objc_opt_self() actionWithTitle:v10 style:0 handler:v11];
    _Block_release(v11);

    [v8 addAction_];
    [v1 presentViewController:v8 animated:!UIAccessibilityIsReduceMotionEnabled() completion:0];
  }
}

void sub_1C19B87CC(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewWillDisappear_, a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_notificationObserver];
  if (v3)
  {
    v4 = objc_opt_self();
    swift_unknownObjectRetain();
    v5 = [v4 defaultCenter];
    [v5 removeObserver_];
    swift_unknownObjectRelease();
  }

  v6 = *&v1[OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_notificationOpenObserver];
  if (v6)
  {
    v7 = objc_opt_self();
    swift_unknownObjectRetain();
    v8 = [v7 defaultCenter];
    [v8 removeObserver_];
    swift_unknownObjectRelease();
  }
}

void sub_1C19B8954()
{
  v1 = v0;
  v2 = sub_1C19A9E58(&qword_1EBF03AD8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  v5 = &v0[OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_actionDelegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    v8 = OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_actionResult;
    swift_beginAccess();
    v9 = sub_1C1A6DDCC();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v4, &v0[v8], v9);
    (*(v10 + 56))(v4, 0, 1, v9);
    (*(v6 + 8))(v4, ObjectType, v6);
    swift_unknownObjectRelease();
    sub_1C1991140(v4, &qword_1EBF03AD8);
  }

  else
  {
    sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v11 = sub_1C1A6F8EC();
    sub_1C1A6F18C();

    v12 = [v1 presentingViewController];
    if (v12)
    {
      v14 = v12;
      [v12 dismissViewControllerAnimated:!UIAccessibilityIsReduceMotionEnabled() completion:0];
      v13 = v14;
    }
  }
}

void sub_1C19B8BD4(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (a1)
    {
      v8 = *&Strong[OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_calendarEvent];
      v9 = Strong;
      v7 = a4;

      sub_1C1A27690(v7, v8, v9, v7);
    }

    else
    {
      sub_1C198FB8C(0, &qword_1EDE63F38);
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_1C1A6F6BC();
    }
  }
}

void sub_1C19B8CF4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1C19B8D6C(void *a1, uint64_t a2, void *a3)
{
  sub_1C198FB8C(0, &qword_1EDE63F38);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = a1;
  v6[4] = v5;
  v7 = a3;
  v8 = a1;

  sub_1C1A6F6BC();
}

void sub_1C19B8E50(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E6966B88]) init];
  [v4 setEventStore_];
  [v4 setEvent_];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  [v4 setEditViewDelegate_];

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    [v6 presentViewController:v4 animated:!UIAccessibilityIsReduceMotionEnabled() completion:0];
  }
}

void sub_1C19B8F4C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1C19B8954();
  }
}

void sub_1C19B8FA0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t type metadata accessor for CalendarEventViewController()
{
  result = qword_1EBF03D50;
  if (!qword_1EBF03D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C19B9168()
{
  sub_1C1A6DDCC();
  if (v0 <= 0x3F)
  {
    sub_1C199B708();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C19B9260(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void sub_1C19B9328()
{
  v1 = OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_actionResult;
  v2 = *MEMORY[0x1E69C5F28];
  v3 = sub_1C1A6DDCC();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  v4 = OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_eventStore;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E6966A18]) init];
  *(v0 + OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_notificationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_notificationOpenObserver) = 0;
  v5 = OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_backgroundedTime;
  v6 = sub_1C1A6D5DC();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_actionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1C1A6FB8C();
  __break(1u);
}

void sub_1C19B9478(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C1A6DDCC();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || a1 == 2)
  {
    sub_1C1A6F67C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v12 = sub_1C1A6F8EC();
LABEL_7:
    sub_1C1A6F18C();

    goto LABEL_8;
  }

  if (a1 != 1)
  {
    sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v12 = sub_1C1A6F8EC();
    goto LABEL_7;
  }

  v10 = v6;
  (*(v5 + 104))(v9, *MEMORY[0x1E69C5F20], v6, v7);
  v11 = OBJC_IVAR____TtC17PromotedContentUI27CalendarEventViewController_actionResult;
  swift_beginAccess();
  (*(v5 + 40))(&v2[v11], v9, v10);
  swift_endAccess();
LABEL_8:
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1C19B977C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C198FEA4;
  aBlock[3] = &unk_1F413FA40;
  v15 = _Block_copy(aBlock);

  [v2 dismissViewControllerAnimated:!IsReduceMotionEnabled completion:v15];
  _Block_release(v15);
}

uint64_t sub_1C19B9834()
{
  sub_1C1A6FDAC();
  MEMORY[0x1C6905870](0);
  return sub_1C1A6FDDC();
}

uint64_t sub_1C19B98A0()
{
  sub_1C1A6FDAC();
  MEMORY[0x1C6905870](0);
  return sub_1C1A6FDDC();
}

uint64_t sub_1C19B98FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C6569466174656DLL && a2 == 0xEA00000000007364)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C1A6FCEC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C19B99A4(uint64_t a1)
{
  v2 = sub_1C19B9E54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C19B99E0(uint64_t a1)
{
  v2 = sub_1C19B9E54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C19B9A1C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C19B9A78(void *a1)
{
  v2 = v1;
  v4 = sub_1C19A9E58(&qword_1EBF03DE0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  sub_1C1994048(a1, a1[3]);
  sub_1C19B9E54();
  sub_1C1A6FE0C();
  v9[1] = *(v2 + 16);
  sub_1C19A9E58(&qword_1EBF03DD0);
  sub_1C19B9EA8(&qword_1EBF03DE8);
  sub_1C1A6FCAC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1C19B9BFC(void *a1)
{
  v4 = sub_1C19A9E58(&qword_1EBF03DC0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  sub_1C1994048(a1, a1[3]);
  sub_1C19B9E54();
  sub_1C1A6FDFC();
  if (v2)
  {
    type metadata accessor for AppRequestMetaFieldsSource();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1C19A9E58(&qword_1EBF03DD0);
    sub_1C19B9EA8(&qword_1EBF03DD8);
    sub_1C1A6FC5C();
    (*(v5 + 8))(v7, v4);
    *(v1 + 16) = v9[1];
  }

  sub_1C199935C(a1);
  return v1;
}

uint64_t sub_1C19B9DD8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for AppRequestMetaFieldsSource();
  v5 = swift_allocObject();
  result = sub_1C19B9BFC(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_1C19B9E54()
{
  result = qword_1EBF03DC8;
  if (!qword_1EBF03DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF03DC8);
  }

  return result;
}

uint64_t sub_1C19B9EA8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C19A9F04(&qword_1EBF03DD0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppRequestMetaFieldsSource.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AppRequestMetaFieldsSource.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_1C19BA000()
{
  result = qword_1EBF03DF0;
  if (!qword_1EBF03DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF03DF0);
  }

  return result;
}

unint64_t sub_1C19BA058()
{
  result = qword_1EBF03DF8;
  if (!qword_1EBF03DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF03DF8);
  }

  return result;
}

unint64_t sub_1C19BA0B0()
{
  result = qword_1EBF03E00;
  if (!qword_1EBF03E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF03E00);
  }

  return result;
}

uint64_t sub_1C19BA104()
{
  v1 = v0;
  v2 = sub_1C19A9E58(&qword_1EBF03E50);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider____lazy_storage___diagnostics;
  if (*(v1 + OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider____lazy_storage___diagnostics))
  {
    v6 = *(v1 + OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider____lazy_storage___diagnostics);
  }

  else
  {
    v7 = sub_1C1A6EDFC();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    sub_1C1A6ED0C();
    swift_allocObject();
    v6 = sub_1C1A6ECEC();
    *(v1 + v5) = v6;
  }

  return v6;
}

uint64_t sub_1C19BA218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v96 = a3;
  v12 = sub_1C19A9E58(&qword_1EBF03E18);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v82 - v13;
  v15 = sub_1C19A9E58(&qword_1EBF038A8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v82 - v16;
  v18 = sub_1C1A6D5DC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v94 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v95 = &v82 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v82 - v24;
  *(v6 + 72) = a6;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  v27 = v26;

  *(v6 + 40) = v96;
  *(v6 + 48) = a4;

  *(v6 + 56) = a5;
  v28 = v25;

  *(v6 + 80) = 0;

  *(v6 + 88) = 0;

  sub_1C1A6D5CC();
  v29 = *(v19 + 16);
  v29(v17, v25, v27);
  v93 = *(v19 + 56);
  v93(v17, 0, 1, v27);
  v30 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_initializedAt;
  swift_beginAccess();
  v96 = v17;
  sub_1C19B40BC(v17, v6 + v30);
  swift_endAccess();
  if (*(v6 + OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_firstInitializeCall) != 1)
  {
    goto LABEL_17;
  }

  v92 = v14;
  *(v6 + OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_firstInitializeCall) = 0;
  v31 = sub_1C1A1BC24();
  v32 = 0.0;
  if (v31)
  {
    v91 = *(v31 + 32);
    if (!v91)
    {

      goto LABEL_16;
    }

    v33 = OBJC_IVAR____TtC17PromotedContentUI27AppStoreDataProviderSession_lastFetch;
    v34 = v31;
    v86 = v31;
    swift_beginAccess();
    v82 = v33;
    v35 = v95;
    v29(v95, (v34 + v33), v27);
    swift_unknownObjectRetain();
    v83 = v29;
    v36 = v6;
    v88 = v25;
    sub_1C1A6D50C();
    v32 = v37;
    v87 = v19;
    v39 = *(v19 + 8);
    v38 = v19 + 8;
    v89 = v27;
    v84 = v39;
    v39(v35, v27);
    ObjectType = swift_getObjectType();

    v40 = sub_1C19E5E3C();
    v42 = v41;

    v43 = *(v6 + 24);
    v44 = v36[4];
    v90 = v36;
    v45 = v36[5];
    v46 = v36[6];

    LODWORD(v43) = sub_1C1A0F5DC(v40, v42, v43, v44, v45, v46);

    if (v43)
    {
      v96 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_sessionPersistence;
      sub_1C1A6F64C();
      sub_1C198FB8C(0, &qword_1EDE63F30);
      v47 = sub_1C1A6F8EC();
      sub_1C19A9E58(&unk_1EBF03FD0);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1C1A73A30;
      v49 = [v91 identifier];
      v50 = sub_1C1A6F3CC();
      v52 = v51;

      *(v48 + 56) = MEMORY[0x1E69E6158];
      *(v48 + 64) = sub_1C199E518();
      *(v48 + 32) = v50;
      *(v48 + 40) = v52;
      sub_1C1A6F18C();

      sub_1C1A6F64C();
      v53 = sub_1C1A6F8EC();
      sub_1C1A6F18C();

      sub_1C198FB8C(0, &qword_1EDE63970);
      sub_1C19CF178(0);

      swift_unknownObjectRelease();
      v28 = v88;
      v27 = v89;
      v19 = v87;
      goto LABEL_16;
    }

    v54 = v82;
    ObjectType = v38;
    v55 = v86;
    v56 = *(v86 + 32);
    if (v56)
    {
      [v56 setVended_];
    }

    v57 = v90;
    v90[10] = v55;

    v58 = v57[10];
    v27 = v89;
    v19 = v87;
    if (v58)
    {
      v59 = *(v58 + 16);
      v60 = swift_allocObject();
      v60[2] = v57;
      v60[3] = v55;
      v60[4] = v59;
      v61 = v59;

      v62 = v61;

      sub_1C1A6E95C();
      v57 = v90;
    }

    v63 = v95;
    v64 = v83;
    v83(v95, v55 + v54, v27);
    v65 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_lastFetch;
    swift_beginAccess();
    (*(v19 + 40))(v57 + v65, v63, v27);
    swift_endAccess();
    v66 = v96;
    v64(v96, v55 + v54, v27);
    v93(v66, 0, 1, v27);
    sub_1C19BAC5C(v66);
    sub_1C1991140(v66, &qword_1EBF038A8);
    sub_1C1A6D5CC();
    v67 = v94;
    v64(v94, v55 + v54, v27);
    sub_1C1A6D50C();
    v69 = v68;
    v70 = v67;
    v71 = v84;
    v84(v70, v27);
    v71(v63, v27);
    sub_1C198FB8C(0, &qword_1EDE63970);
    v72 = COERCE_DOUBLE(sub_1C19CECF8());
    if (v73)
    {
      if (v69 <= 900.0)
      {
LABEL_13:
        LODWORD(v96) = sub_1C1A6F64C();
        sub_1C198FB8C(0, &qword_1EDE63F30);
        v74 = sub_1C1A6F8EC();
        sub_1C19A9E58(&unk_1EBF03FD0);
        v75 = swift_allocObject();
        *(v75 + 16) = xmmword_1C1A73A30;
        v76 = [v91 identifier];
        v77 = sub_1C1A6F3CC();
        v79 = v78;

        *(v75 + 56) = MEMORY[0x1E69E6158];
        *(v75 + 64) = sub_1C199E518();
        *(v75 + 32) = v77;
        *(v75 + 40) = v79;
        sub_1C1A6F18C();

        swift_unknownObjectRelease();

        [objc_opt_self() sendEventTimed:10 roundtrip:0 message:v32];
        return (v71)(v88, v27);
      }
    }

    else if (v69 <= v72)
    {
      goto LABEL_13;
    }

    swift_unknownObjectRelease();
    v28 = v88;
  }

LABEL_16:
  [objc_opt_self() sendEventTimed:10 roundtrip:0 message:v32];
  v14 = v92;
LABEL_17:
  v81 = sub_1C1A6D62C();
  (*(*(v81 - 8) + 56))(v14, 1, 1, v81);
  sub_1C19BB0B0(1, 0, 0, v14);
  sub_1C1991140(v14, &qword_1EBF03E18);
  return (*(v19 + 8))(v28, v27);
}

uint64_t sub_1C19BAC5C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C19A9E58(&qword_1EBF038A8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - v5;
  v7 = sub_1C1A6D5DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = &v32 - v13;
  [*(v2 + 16) invalidate];
  sub_1C1990FA8(a1, v6, &qword_1EBF038A8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1C1991140(v6, &qword_1EBF038A8);
    v15 = 0.0;
  }

  else
  {
    (*(v8 + 32))(v14, v6, v7);
    sub_1C1A6D5CC();
    sub_1C1A6D50C();
    v15 = v16;
    v17 = *(v8 + 8);
    v17(v10, v7);
    v17(v14, v7);
  }

  sub_1C198FB8C(0, &qword_1EDE63970);
  *&result = COERCE_DOUBLE(sub_1C19CECF8());
  if (v19)
  {
    v20 = 900.0;
  }

  else
  {
    v20 = *&result;
  }

  v21 = v20 - v15;
  if (v21 >= 0.0)
  {
    sub_1C1A6F64C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v22 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1C1A73A30;
    v24 = [objc_opt_self() apLocalSharedFormatter];
    sub_1C1A6D55C();
    v25 = sub_1C1A6D52C();
    (*(v8 + 8))(v10, v7);
    v26 = [v24 stringFromDate_];

    v27 = sub_1C1A6F3CC();
    v29 = v28;

    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1C199E518();
    *(v23 + 32) = v27;
    *(v23 + 40) = v29;
    sub_1C1A6F18C();

    sub_1C198FB8C(0, &qword_1EDE63F38);
    v30 = swift_allocObject();
    swift_weakInit();
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    *(v31 + 24) = v21;

    sub_1C1A6F6BC();

    *&result = COERCE_DOUBLE();
  }

  return result;
}

uint64_t sub_1C19BB0B0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a4;
  v63 = a2;
  v64 = a3;
  v6 = sub_1C19A9E58(&qword_1EBF03E18);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v49 - v7;
  v9 = sub_1C1A6E4BC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C1A6D5DC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v49 - v18;
  sub_1C1A6D5CC();
  if (!*(v4 + 88))
  {
    v20 = a1;
    v54 = v12;
    v55 = v9;
    v22 = v63;
    v21 = v64;
    v56 = v8;
    v57 = v10;
    v58 = v16;
    v59 = v14;
    v60 = v13;
    v61 = v19;
    if (*(v4 + 32) && *(v4 + 48) && *(v4 + 56))
    {
      if ((v20 & 1) != 0 || (*(v4 + 72) & 1) == 0)
      {
        v29 = objc_allocWithZone(sub_1C1A6E8BC());

        v52 = v4;
        v53 = sub_1C1A6E84C();
        v51 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_searchAdsFacade;
        v30 = *MEMORY[0x1E69C60B0];
        v31 = v57;
        v50 = *(v57 + 104);
        v33 = v54;
        v32 = v55;
        v50(v54, v30, v55);

        sub_1C19E64C4(v33, v22, v21);

        v34 = *(v31 + 8);
        v34(v33, v32);
        sub_1C1A6E87C();

        v50(v33, v30, v32);

        sub_1C19E68C0();

        v34(v33, v32);
        sub_1C1A6E85C();

        sub_1C1A6E83C();

        sub_1C1A6E86C();
        sub_1C1A6E9EC();
        sub_1C1A6E82C();
        sub_1C1990FA8(v62, v56, &qword_1EBF03E18);
        v35 = sub_1C1A6E9DC();
        type metadata accessor for AppStoreDataProviderSession();
        v36 = swift_allocObject();
        v36[3] = 0;
        v36[4] = 0;
        v37 = v35;
        sub_1C1A6D4FC();
        v36[2] = v37;
        v38 = swift_allocObject();
        v39 = v52;
        v38[2] = v52;
        v38[3] = v36;
        v38[4] = v37;
        v40 = v37;

        sub_1C1A6E95C();

        *(v39 + 88) = v36;

        sub_1C1A6F67C();
        sub_1C198FB8C(0, &qword_1EDE63F30);
        v41 = sub_1C1A6F8EC();
        sub_1C1A6F18C();

        v42 = [objc_opt_self() sharedInstance];
        LODWORD(v30) = [v42 locationEnabled];

        if (v30)
        {
          v43 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_greenTeaLogger;
          [*(v39 + OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_greenTeaLogger) willAccessLocation];
          v44 = *(v39 + v43);
          if (v44)
          {
            [v44 willTransmitLocationFor_];
          }
        }

        sub_1C19A9E58(&qword_1EBF03E20);
        v45 = sub_1C1A6E34C();
        v46 = *(v45 - 8);
        v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_1C1A73A30;
        *(v48 + v47) = 1;
        (*(v46 + 104))(v48 + v47, *MEMORY[0x1E69C6018], v45);
        sub_1C1A6E96C();

        goto LABEL_10;
      }

      sub_1C1A6F67C();
      sub_1C198FB8C(0, &qword_1EDE63F30);
      v23 = sub_1C1A6F8EC();
    }

    else
    {
      sub_1C1A6F66C();
      sub_1C198FB8C(0, &qword_1EDE63F30);
      v23 = sub_1C1A6F8EC();
    }

    sub_1C1A6F18C();

LABEL_10:
    v14 = v59;
    v13 = v60;
    v19 = v61;
    v16 = v58;
  }

  v24 = objc_opt_self();
  v25 = sub_1C1A6D52C();
  sub_1C1A6D5CC();
  v26 = sub_1C1A6D52C();
  v27 = *(v14 + 8);
  v27(v16, v13);
  [v24 sendEventTimed:9 startDate:v25 endDate:v26 message:0];

  return (v27)(v19, v13);
}

uint64_t sub_1C19BB8AC(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v127 = a2;
  v128 = a1;
  v4 = sub_1C19A9E58(&qword_1EBF03E18);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v131 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v108 - v7;
  v9 = sub_1C19A9E58(&qword_1EBF03E48);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v116 = &v108 - v10;
  v117 = sub_1C1A6E4BC();
  v115 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v114 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C1A6D62C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C19BA104();
  sub_1C1A6ECDC();

  sub_1C1A6D61C();
  v16 = sub_1C1A6D5EC();
  v18 = v17;
  v126 = v13;
  v129 = *(v13 + 8);
  v130 = v13 + 8;
  v129(v15, v12);
  sub_1C1A6F67C();
  v19 = sub_1C198FB8C(0, &qword_1EDE63F30);
  v120 = "n>16@0:8";
  v121 = &OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_theLock;
  v122 = v19;
  v20 = sub_1C1A6F8EC();
  v123 = sub_1C19A9E58(&unk_1EBF03FD0);
  v21 = swift_allocObject();
  v124 = xmmword_1C1A73A30;
  *(v21 + 16) = xmmword_1C1A73A30;
  *(v21 + 56) = MEMORY[0x1E69E6158];
  v125 = sub_1C199E518();
  *(v21 + 64) = v125;
  v119 = v16;
  *(v21 + 32) = v16;
  *(v21 + 40) = v18;

  sub_1C1A6F18C();

  v22 = v3[10];
  if (v22 && (v23 = *(v22 + 32)) != 0)
  {
    v113 = v8;
    v24 = *(v22 + 16);
    v118 = v23;
    swift_unknownObjectRetain();
    v25 = v24;
    sub_1C1A6DD2C();
    v26 = sub_1C1A6D5EC();
    v28 = v27;

    v131 = v12;
    v129(v15, v12);
    v29 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_searchAdsFacade;

    v30 = sub_1C19E5F0C();
    v32 = v31;

    type metadata accessor for AppStoreRequestTask();
    v33 = swift_allocObject();
    *(v33 + 64) = 0;
    v109 = (v33 + 64);
    *(v33 + 96) = 0;
    *(v33 + 72) = 0;
    swift_unknownObjectWeakInit();
    *(v33 + 104) = 0;
    *(v33 + 112) = 0;
    *(v33 + 120) = 0;
    sub_1C1A6D5CC();
    *(v33 + 16) = v119;
    *(v33 + 24) = v18;
    v110 = v26;
    *(v33 + 48) = v26;
    *(v33 + 56) = v28;
    v119 = v28;
    *(v33 + 32) = v30;
    *(v33 + 40) = v32;
    *(v33 + 80) = 7005;
    swift_getObjectType();
    v112 = v29;

    v34 = sub_1C19E5E3C();
    v36 = v35;

    v37 = v3[3];
    v38 = v3[4];
    v111 = v3;
    v39 = v3[5];
    v40 = v3[6];

    LODWORD(v37) = sub_1C1A0F5DC(v34, v36, v37, v38, v39, v40);

    if (v37)
    {
      v41 = v119;
      v42 = v111;
      sub_1C19BC700(1);
      sub_1C1A6F67C();
      v43 = sub_1C1A6F8EC();
      v44 = swift_allocObject();
      *(v44 + 16) = v124;
      v46 = *(v33 + 16);
      v45 = *(v33 + 24);
      v47 = v125;
      *(v44 + 56) = MEMORY[0x1E69E6158];
      *(v44 + 64) = v47;
      *(v44 + 32) = v46;
      *(v44 + 40) = v45;

      sub_1C1A6F18C();

      if (v42[11])
      {
        *(v42 + OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_missedOpportunity) = 1;
      }

      else
      {
        sub_1C19BE4A0();
      }

      v80 = v126;

      v81 = sub_1C19E5F0C();
      v83 = v82;

      sub_1C1A6EB6C();
      sub_1C1A6D61C();
      v84 = objc_allocWithZone(sub_1C1A6E9EC());
      v85 = sub_1C1A6E98C();
      v86 = sub_1C1A6EA7C();

      sub_1C1A06F5C(v86, v81, v83, v110, v41, 1);
      v128();

      v74 = v113;
      (*(v80 + 56))(v113, 1, 1, v131);
      sub_1C19BB0B0(0, 0, 0, v74);
      swift_unknownObjectRelease();
    }

    else
    {

      v75 = v111;
      sub_1C19BC700(2);

      v119 = sub_1C19E5F0C();
      v112 = v76;

      if (*v109)
      {

        sub_1C1A6D9FC();

        v77 = sub_1C1A6D5EC();
        v79 = v78;
        v129(v15, v131);
      }

      else
      {
        v77 = *(v33 + 48);
        v79 = *(v33 + 56);
      }

      v87 = v115;
      v88 = v114;
      v89 = v117;
      (*(v115 + 104))(v114, *MEMORY[0x1E69C60B0], v117);
      v132[0] = 4;
      v90 = v116;
      (*(v87 + 16))(v116, v88, v89);
      (*(v87 + 56))(v90, 0, 1, v89);
      type metadata accessor for AppStoreAd();
      v91 = swift_allocObject();
      v92 = swift_unknownObjectRetain();
      v93 = sub_1C1A6A104(v92, v119, v112, v77, v79, v132, v90, v91);
      (*(v87 + 8))(v88, v89);
      v94 = v75[10];
      if (v94 && (*(v94 + 32) = 0, swift_unknownObjectRelease(), (v95 = v75[10]) != 0))
      {
        v96 = *(v95 + 24);
        *(v95 + 24) = 0;

        v97 = v75[10];
      }

      else
      {
        v97 = 0;
      }

      sub_1C1A1BF34(v97);

      sub_1C1A6F67C();
      v98 = sub_1C1A6F8EC();
      v99 = swift_allocObject();
      *(v99 + 16) = v124;
      v101 = *(v33 + 16);
      v100 = *(v33 + 24);
      v102 = v125;
      *(v99 + 56) = MEMORY[0x1E69E6158];
      *(v99 + 64) = v102;
      *(v99 + 32) = v101;
      *(v99 + 40) = v100;

      sub_1C1A6F18C();

      v103 = objc_opt_self();
      v104 = sub_1C1A6F39C();
      [v103 sendEvent_];

      sub_1C1A6ECCC();

      *(v75 + OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_missedOpportunity) = 0;
      (v128)(v93, v33);
      sub_1C19BCB34();
      swift_beginAccess();
      v105 = *(v93 + 32);
      v106 = *(v93 + 40);
      v74 = v113;
      (*(v126 + 56))(v113, 1, 1, v131);

      sub_1C19BB0B0(0, v105, v106, v74);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v118 = v18;
    sub_1C19BC700(0);
    v48 = v126;
    v49 = *(v126 + 56);
    v50 = v131;
    v49(v131, 1, 1, v12);
    v51 = v3[11];
    if (v51)
    {
      v52 = *(v51 + 16);

      v53 = v52;
      sub_1C1A6DD2C();

      v54 = sub_1C1A6D5EC();
      v56 = v55;
    }

    else
    {
      sub_1C1A6D61C();
      sub_1C1991140(v50, &qword_1EBF03E18);
      (*(v48 + 16))(v50, v15, v12);
      v49(v50, 0, 1, v12);
      v54 = sub_1C1A6D5EC();
      v56 = v57;
    }

    v129(v15, v12);

    v58 = sub_1C19E5F0C();
    v60 = v59;

    type metadata accessor for AppStoreRequestTask();
    v33 = swift_allocObject();
    *(v33 + 96) = 0;
    *(v33 + 64) = 0;
    *(v33 + 72) = 0;
    swift_unknownObjectWeakInit();
    *(v33 + 104) = 0;
    *(v33 + 112) = 0;
    *(v33 + 120) = 0;

    sub_1C1A6D5CC();
    v61 = v118;
    *(v33 + 16) = v119;
    *(v33 + 24) = v61;
    *(v33 + 48) = v54;
    *(v33 + 56) = v56;
    v62 = v56;
    *(v33 + 32) = v58;
    *(v33 + 40) = v60;
    *(v33 + 80) = 7005;
    sub_1C1A6F67C();
    v63 = sub_1C1A6F8EC();
    v64 = swift_allocObject();
    *(v64 + 16) = v124;
    v66 = *(v33 + 16);
    v65 = *(v33 + 24);
    v67 = v125;
    *(v64 + 56) = MEMORY[0x1E69E6158];
    *(v64 + 64) = v67;
    *(v64 + 32) = v66;
    *(v64 + 40) = v65;

    sub_1C1A6F18C();

    if (v3[11])
    {
      *(v3 + OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_missedOpportunity) = 1;
    }

    else
    {
      sub_1C19BE4A0();
    }

    v68 = sub_1C19E5F0C();
    v70 = v69;

    sub_1C1A6EB6C();
    sub_1C1A6D61C();
    v71 = objc_allocWithZone(sub_1C1A6E9EC());
    v72 = sub_1C1A6E98C();
    v73 = sub_1C1A6EA7C();

    sub_1C1A06F5C(v73, v68, v70, v54, v62, 1);
    v128();

    v74 = v131;
    sub_1C19BB0B0(0, 0, 0, v131);
  }

  sub_1C1991140(v74, &qword_1EBF03E18);
  return v33;
}

uint64_t sub_1C19BC700(uint64_t a1)
{
  v36 = a1;
  v2 = sub_1C19A9E58(&qword_1EBF038A8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - v5;
  v7 = sub_1C1A6D5DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  sub_1C1A6D5CC();
  v17 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_initializedAt;
  swift_beginAccess();
  v37 = v1;
  sub_1C1990FA8(v1 + v17, v6, &qword_1EBF038A8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1C1991140(v6, &qword_1EBF038A8);
    v18 = qword_1C1A744D0[v36];
    v19 = objc_opt_self();
    v20 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_previousGetAdAt;
    v21 = v37;
    swift_beginAccess();
    (*(v8 + 16))(v10, v21 + v20, v7);
    v22 = sub_1C1A6D52C();
    v23 = *(v8 + 8);
    v23(v10, v7);
    v24 = sub_1C1A6D52C();
    [v19 sendEventTimed:v18 startDate:v22 endDate:v24 message:0];
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    v25 = v36;
    v26 = qword_1C1A744B8[v36];
    v27 = objc_opt_self();
    v28 = sub_1C1A6D52C();
    v29 = sub_1C1A6D52C();
    [v27 sendEventTimed:v26 startDate:v28 endDate:v29 message:0];

    [v27 sendEventTimed:qword_1C1A744D0[v25] roundtrip:0 message:0.0];
    v23 = *(v8 + 8);
    v23(v13, v7);
    v30 = v35;
    (*(v8 + 56))(v35, 1, 1, v7);
    v31 = v37;
    swift_beginAccess();
    sub_1C19B40BC(v30, v31 + v17);
    swift_endAccess();
  }

  v32 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_previousGetAdAt;
  v33 = v37;
  swift_beginAccess();
  (*(v8 + 24))(v33 + v32, v16, v7);
  swift_endAccess();
  return (v23)(v16, v7);
}

void sub_1C19BCB34()
{
  v1 = sub_1C19A9E58(&qword_1EBF03E18);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v23 - v2;
  v4 = sub_1C1A6D62C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1A6F67C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v8 = sub_1C1A6F8EC();
  sub_1C1A6F18C();

  v9 = *(v0 + 80);
  if (v9)
  {

    sub_1C1A6F64C();
    v10 = sub_1C1A6F8EC();
    sub_1C19A9E58(&unk_1EBF03FD0);
    v11 = swift_allocObject();
    v23 = xmmword_1C1A73A30;
    *(v11 + 16) = xmmword_1C1A73A30;
    v12 = *(v9 + 16);
    sub_1C1A6DD2C();

    v13 = sub_1C1A6D5EC();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = sub_1C199E518();
    *(v11 + 32) = v13;
    *(v11 + 40) = v15;
    sub_1C1A6F18C();

    v16 = *(v9 + 16);
    sub_1C19A9E58(&qword_1EBF03E20);
    v17 = sub_1C1A6E34C();
    v18 = *(v17 - 8);
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v23;
    *(v20 + v19) = 1;
    (*(v18 + 104))(v20 + v19, *MEMORY[0x1E69C6018], v17);
    v21 = v16;
    sub_1C1A6E96C();
  }

  else if (*(v0 + 88))
  {
    sub_1C1A6F64C();
    *&v23 = sub_1C1A6F8EC();
    sub_1C1A6F18C();
    v22 = v23;
  }

  else
  {
    (*(v5 + 56))(v3, 1, 1, v4);
    sub_1C19BB0B0(0, 0, 0, v3);
    sub_1C1991140(v3, &qword_1EBF03E18);
  }
}

void sub_1C19BCF98(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v155 = a2;
  v154 = sub_1C1A6D5DC();
  v147 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v153 = &v130 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v152 = &v130 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v151 = &v130 - v9;
  v10 = sub_1C1A6D62C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v139 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_1C19A9E58(&qword_1EBF03E30);
  MEMORY[0x1EEE9AC00](v144);
  v134 = &v130 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v136 = &v130 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v150 = &v130 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v130 - v19;
  v21 = sub_1C19A9E58(&qword_1EBF03E18);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v131 = &v130 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v130 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v133 = &v130 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v132 = &v130 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v130 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v138 = &v130 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v148 = (&v130 - v36);
  MEMORY[0x1EEE9AC00](v37);
  v157 = &v130 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v149 = &v130 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v130 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v130 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v130 - v48;
  v143 = a1;
  sub_1C1A6DD2C();
  v50 = 1;
  v145 = *(v11 + 56);
  v146 = v11 + 56;
  v145(v49, 0, 1, v10);
  v156 = v3;
  v51 = *(v3 + 80);
  v137 = v25;
  v135 = v32;
  if (v51)
  {
    v52 = *(v51 + 16);
    sub_1C1A6DD2C();

    v50 = 0;
  }

  v145(v46, v50, 1, v10);
  v53 = *(v144 + 48);
  sub_1C1990FA8(v49, v20, &qword_1EBF03E18);
  sub_1C1990FA8(v46, &v20[v53], &qword_1EBF03E18);
  v54 = *(v11 + 48);
  v55 = v54(v20, 1, v10);
  v141 = v54;
  v140 = v11;
  v142 = v11 + 48;
  if (v55 == 1)
  {
    sub_1C1991140(v46, &qword_1EBF03E18);
    sub_1C1991140(v49, &qword_1EBF03E18);
    v56 = v54;
    if (v54(&v20[v53], 1, v10) == 1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    sub_1C1990FA8(v20, v43, &qword_1EBF03E18);
    if (v54(&v20[v53], 1, v10) != 1)
    {
      v63 = v139;
      (*(v11 + 32))(v139, &v20[v53], v10);
      sub_1C198FD84(&qword_1EDE623B0, MEMORY[0x1E69695A8]);
      LODWORD(v130) = sub_1C1A6F38C();
      v64 = *(v11 + 8);
      v64(v63, v10);
      sub_1C1991140(v46, &qword_1EBF03E18);
      sub_1C1991140(v49, &qword_1EBF03E18);
      v64(v43, v10);
      sub_1C1991140(v20, &qword_1EBF03E18);
      v56 = v141;
      v57 = v155;
      if (v130)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    }

    sub_1C1991140(v46, &qword_1EBF03E18);
    sub_1C1991140(v49, &qword_1EBF03E18);
    (*(v11 + 8))(v43, v10);
    v56 = v141;
  }

  sub_1C1991140(v20, &qword_1EBF03E30);
  v57 = v155;
LABEL_9:
  v58 = v149;
  sub_1C1A6DD2C();
  v59 = 1;
  v145(v58, 0, 1, v10);
  v60 = *(v156 + 88);
  if (v60)
  {
    v61 = *(v60 + 16);
    v62 = v157;
    sub_1C1A6DD2C();

    v59 = 0;
    v20 = v150;
  }

  else
  {
    v20 = v150;
    v62 = v157;
  }

  v145(v62, v59, 1, v10);
  v65 = *(v144 + 48);
  sub_1C1990FA8(v58, v20, &qword_1EBF03E18);
  sub_1C1990FA8(v62, &v20[v65], &qword_1EBF03E18);
  if (v56(v20, 1, v10) == 1)
  {
    sub_1C1991140(v62, &qword_1EBF03E18);
    sub_1C1991140(v58, &qword_1EBF03E18);
    if (v56(&v20[v65], 1, v10) == 1)
    {
LABEL_16:
      sub_1C1991140(v20, &qword_1EBF03E18);
      v57 = v155;
      goto LABEL_17;
    }

    goto LABEL_30;
  }

  v73 = v148;
  sub_1C1990FA8(v20, v148, &qword_1EBF03E18);
  if (v56(&v20[v65], 1, v10) == 1)
  {
    sub_1C1991140(v157, &qword_1EBF03E18);
    sub_1C1991140(v58, &qword_1EBF03E18);
    (*(v140 + 8))(v73, v10);
LABEL_30:
    sub_1C1991140(v20, &qword_1EBF03E30);
LABEL_50:
    sub_1C1A6F66C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v90 = sub_1C1A6F8EC();
    sub_1C1A6F18C();
    goto LABEL_51;
  }

  v94 = v140;
  v95 = &v20[v65];
  v96 = v139;
  (*(v140 + 32))(v139, v95, v10);
  sub_1C198FD84(&qword_1EDE623B0, MEMORY[0x1E69695A8]);
  LODWORD(v150) = sub_1C1A6F38C();
  v97 = v58;
  v98 = *(v94 + 8);
  v98(v96, v10);
  sub_1C1991140(v157, &qword_1EBF03E18);
  sub_1C1991140(v97, &qword_1EBF03E18);
  v98(v148, v10);
  sub_1C1991140(v20, &qword_1EBF03E18);
  if ((v150 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_17:
  if (v57 >> 62)
  {
    goto LABEL_78;
  }

  for (i = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C1A6F9EC())
  {
    v130 = v10;
    v67 = v57 & 0xC000000000000001;
    if (!i)
    {
      break;
    }

    v68 = 0;
    v69 = v57 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v67)
      {
        v70 = MEMORY[0x1C69055B0](v68, v57);
      }

      else
      {
        if (v68 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_76;
        }

        v70 = *(v57 + 8 * v68 + 32);
      }

      v71 = v70;
      v72 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        break;
      }

      sub_1C1A6EB4C();

      ++v68;
      if (v72 == i)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    ;
  }

  v69 = v57 & 0xFFFFFFFFFFFFFF8;
LABEL_32:
  v149 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_lastFetch;
  swift_beginAccess();
  v74 = 0;
  v75 = (v147 + 2);
  ++v147;
  v148 = v75;
  v150 = i;
  v10 = v152;
  while (i != v74)
  {
    v57 = v156;
    if (v67)
    {
      v76 = MEMORY[0x1C69055B0](v74, v155);
      if (__OFADD__(v74, 1))
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v74 >= *(v69 + 16))
      {
        goto LABEL_77;
      }

      v76 = *(v155 + 8 * v74 + 32);
      if (__OFADD__(v74, 1))
      {
LABEL_41:
        __break(1u);
LABEL_42:
        sub_1C1A6F66C();
        sub_1C198FB8C(0, &qword_1EDE63F30);
        v86 = sub_1C1A6F8EC();
        sub_1C1A6F18C();

        break;
      }
    }

    v77 = v151;
    v157 = v76;
    sub_1C1A6EACC();
    v78 = v67;
    v79 = v153;
    v80 = v154;
    (*v148)(v153, &v149[v57], v154);
    sub_1C198FB8C(0, &qword_1EDE63970);
    sub_1C19CECF8();
    sub_1C1A6D51C();
    v81 = *v147;
    v82 = v79;
    v67 = v78;
    (*v147)(v82, v80);
    sub_1C1A6D50C();
    v84 = v83;

    v81(v10, v80);
    v85 = v77;
    i = v150;
    v81(v85, v80);
    ++v74;
    if (v84 < 0.0)
    {
      goto LABEL_42;
    }
  }

  v87 = v156;
  if (!i)
  {
    goto LABEL_50;
  }

  if (v67)
  {
    v90 = MEMORY[0x1C69055B0](0, v155);
    v88 = v136;
    v89 = v138;
LABEL_47:
    v91 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_missedOpportunity;
    v92 = v130;
    v93 = v135;
    if (*(v87 + OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_missedOpportunity) == 1)
    {
      if (sub_1C1A6EABC() != -1)
      {
        sub_1C1A6EABC();
      }

      sub_1C19BE4A0();
      *(v87 + v91) = 0;
    }

    sub_1C1A6DD2C();
    v99 = 1;
    v145(v89, 0, 1, v92);
    v100 = *(v87 + 80);
    if (v100)
    {
      v101 = *(v100 + 16);
      sub_1C1A6DD2C();

      v99 = 0;
    }

    v145(v93, v99, 1, v92);
    v102 = *(v144 + 48);
    sub_1C1990FA8(v89, v88, &qword_1EBF03E18);
    sub_1C1990FA8(v93, v88 + v102, &qword_1EBF03E18);
    v103 = v93;
    v104 = v89;
    v105 = v141;
    if (v141(v88, 1, v92) == 1)
    {
      sub_1C1991140(v103, &qword_1EBF03E18);
      sub_1C1991140(v104, &qword_1EBF03E18);
      if (v105(v88 + v102, 1, v92) == 1)
      {
        sub_1C1991140(v88, &qword_1EBF03E18);
        v106 = v156;
LABEL_72:
        v90 = v90;
        sub_1C19BF774(v90, v106);

        goto LABEL_51;
      }
    }

    else
    {
      v107 = v132;
      sub_1C1990FA8(v88, v132, &qword_1EBF03E18);
      if (v105(v88 + v102, 1, v92) != 1)
      {
        v117 = v140;
        v118 = v88 + v102;
        v119 = v139;
        (*(v140 + 32))(v139, v118, v92);
        sub_1C198FD84(&qword_1EDE623B0, MEMORY[0x1E69695A8]);
        v120 = v107;
        v121 = sub_1C1A6F38C();
        v122 = v88;
        v123 = *(v117 + 8);
        v123(v119, v92);
        sub_1C1991140(v103, &qword_1EBF03E18);
        sub_1C1991140(v138, &qword_1EBF03E18);
        v123(v120, v92);
        v110 = v137;
        sub_1C1991140(v122, &qword_1EBF03E18);
        v106 = v156;
        v108 = v134;
        v109 = v133;
        if (v121)
        {
          goto LABEL_72;
        }

        goto LABEL_63;
      }

      sub_1C1991140(v103, &qword_1EBF03E18);
      sub_1C1991140(v138, &qword_1EBF03E18);
      (*(v140 + 8))(v107, v92);
    }

    sub_1C1991140(v88, &qword_1EBF03E30);
    v106 = v156;
    v108 = v134;
    v109 = v133;
    v110 = v137;
LABEL_63:
    sub_1C1A6DD2C();
    v111 = 1;
    v145(v109, 0, 1, v92);
    v112 = *(v106 + 88);
    if (v112)
    {
      v113 = *(v112 + 16);
      sub_1C1A6DD2C();

      v111 = 0;
    }

    v145(v110, v111, 1, v92);
    v114 = *(v144 + 48);
    sub_1C1990FA8(v109, v108, &qword_1EBF03E18);
    sub_1C1990FA8(v110, v108 + v114, &qword_1EBF03E18);
    v115 = v141;
    if (v141(v108, 1, v92) == 1)
    {
      sub_1C1991140(v110, &qword_1EBF03E18);
      sub_1C1991140(v109, &qword_1EBF03E18);
      if (v115(v108 + v114, 1, v92) == 1)
      {
        sub_1C1991140(v108, &qword_1EBF03E18);
        goto LABEL_74;
      }
    }

    else
    {
      v116 = v131;
      sub_1C1990FA8(v108, v131, &qword_1EBF03E18);
      if (v115(v108 + v114, 1, v92) != 1)
      {
        v124 = v140;
        v125 = v108 + v114;
        v126 = v139;
        (*(v140 + 32))(v139, v125, v92);
        sub_1C198FD84(&qword_1EDE623B0, MEMORY[0x1E69695A8]);
        v127 = v116;
        v128 = sub_1C1A6F38C();
        v129 = *(v124 + 8);
        v129(v126, v92);
        sub_1C1991140(v137, &qword_1EBF03E18);
        sub_1C1991140(v109, &qword_1EBF03E18);
        v129(v127, v92);
        sub_1C1991140(v108, &qword_1EBF03E18);
        if ((v128 & 1) == 0)
        {
          goto LABEL_51;
        }

LABEL_74:
        v90 = v90;
        sub_1C19BFB14(v90, v156);

        goto LABEL_51;
      }

      sub_1C1991140(v137, &qword_1EBF03E18);
      sub_1C1991140(v109, &qword_1EBF03E18);
      (*(v140 + 8))(v116, v92);
    }

    sub_1C1991140(v108, &qword_1EBF03E30);
LABEL_51:

    return;
  }

  v88 = v136;
  v89 = v138;
  if (*(v69 + 16))
  {
    v90 = *(v155 + 32);
    goto LABEL_47;
  }

  __break(1u);
}

uint64_t sub_1C19BE4A0()
{
  v0 = objc_opt_self();
  v1 = sub_1C1A6F39C();
  sub_1C19A9E58(&qword_1EBF03E38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1A73CD0;
  *(inited + 32) = 0x6F436E6F73616572;
  *(inited + 40) = 0xEA00000000006564;
  *(inited + 48) = sub_1C1A6F63C();
  *(inited + 56) = 0xD000000000000014;
  *(inited + 64) = 0x80000001C1A7B810;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  sub_1C19B6E74(inited);
  swift_setDeallocating();
  sub_1C19A9E58(&qword_1EBF03E40);
  swift_arrayDestroy();
  sub_1C198FB8C(0, &qword_1EDE62670);
  v3 = sub_1C1A6F2FC();

  [v0 sendEvent:v1 customPayload:v3];

  sub_1C19BA104();
  sub_1C1A6ECCC();
}

uint64_t sub_1C19BE668()
{
  v1 = v0;
  v2 = sub_1C1A6D62C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1C1A6F67C();
  sub_1C198FB8C(0, &qword_1EDE63F30);
  v26 = sub_1C1A6F8EC();
  sub_1C19A9E58(&unk_1EBF03FD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C1A73CD0;
  v7 = *(v0 + 80);
  if (v7)
  {
    v8 = *(v7 + 16);
    sub_1C1A6DD2C();

    v9 = sub_1C1A6D5EC();
    v11 = v10;
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v12 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v13 = sub_1C199E518();
  v14 = v13;
  *(v6 + 64) = v13;
  if (v11)
  {
    v15 = v9;
  }

  else
  {
    v15 = 7104878;
  }

  v16 = 0xE300000000000000;
  if (v11)
  {
    v16 = v11;
  }

  *(v6 + 32) = v15;
  *(v6 + 40) = v16;
  v17 = *(v1 + 88);
  if (!v17)
  {
    v22 = (v6 + 72);
    *(v6 + 96) = v12;
    *(v6 + 104) = v13;
    goto LABEL_13;
  }

  v18 = *(v17 + 16);
  sub_1C1A6DD2C();

  v19 = sub_1C1A6D5EC();
  v21 = v20;
  (*(v3 + 8))(v5, v2);
  v22 = (v6 + 72);
  *(v6 + 96) = v12;
  *(v6 + 104) = v14;
  if (!v21)
  {
LABEL_13:
    *v22 = 7104878;
    v21 = 0xE300000000000000;
    goto LABEL_14;
  }

  *v22 = v19;
LABEL_14:
  *(v6 + 80) = v21;
  v23 = v26;
  sub_1C1A6F18C();

  *(v1 + 80) = *(v1 + 88);

  *(v1 + 88) = 0;

  v24 = *(v1 + 80);

  sub_1C1A1BF34(v24);
}

uint64_t sub_1C19BE94C()
{

  v1 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_lastFetch;
  v2 = sub_1C1A6D5DC();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  sub_1C1991140(v0 + OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_initializedAt, &qword_1EBF038A8);
  v3(v0 + OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_previousGetAdAt, v2);

  return v0;
}

uint64_t sub_1C19BEA74()
{
  sub_1C19BE94C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppStoreDataProvider()
{
  result = qword_1EDE618E8;
  if (!qword_1EDE618E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C19BEB20()
{
  sub_1C1A6D5DC();
  if (v0 <= 0x3F)
  {
    sub_1C199B708();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

id sub_1C19BEC44(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  [*(a3 + 64) lock];
  if (a1 >> 62)
  {
    result = sub_1C1A6F9EC();
    if (!result)
    {
      goto LABEL_7;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_7;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1C69055B0](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v11 = *(a1 + 32);
  }

  v12 = *(a4 + 24);
  *(a4 + 24) = v11;
  v13 = v11;

  sub_1C19BCF98(a5, a2);
LABEL_7:
  v14 = *(a3 + 64);

  return [v14 unlock];
}

void sub_1C19BED30(double a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v9[4] = sub_1C19BF700;
    v9[5] = v5;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1C19B8FA0;
    v9[3] = &unk_1F413FCA8;
    v6 = _Block_copy(v9);

    v7 = [v4 scheduledTimerWithTimeInterval:0 repeats:v6 block:a1];
    _Block_release(v6);
    v8 = *(v3 + 16);
    *(v3 + 16) = v7;
  }
}

uint64_t sub_1C19BEE9C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C1A6F1FC();
  v18 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C1A6F22C();
  v6 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C1A6F20C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C198FB8C(0, &qword_1EDE63F38);
  (*(v10 + 104))(v12, *MEMORY[0x1E69E7F98], v9);
  v13 = sub_1C1A6F72C();
  (*(v10 + 8))(v12, v9);
  aBlock[4] = sub_1C19BF708;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C198FEA4;
  aBlock[3] = &unk_1F413FCD0;
  v14 = _Block_copy(aBlock);

  sub_1C1A6F21C();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1C198FD84(&qword_1EDE63F68, MEMORY[0x1E69E7F60]);
  sub_1C19A9E58(&qword_1EBF03E28);
  sub_1C19BF710();
  sub_1C1A6F94C();
  MEMORY[0x1C69051C0](0, v8, v5, v14);
  _Block_release(v14);

  (*(v18 + 8))(v5, v3);
  (*(v6 + 8))(v8, v17);
}

uint64_t sub_1C19BF208()
{
  v0 = sub_1C19A9E58(&qword_1EBF03E18);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_1C1A6F64C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v5 = sub_1C1A6F8EC();
    sub_1C1A6F18C();

    [*(v4 + 64) lock];
    v6 = sub_1C1A6D62C();
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
    sub_1C19BB0B0(1, 0, 0, v2);
    sub_1C1991140(v2, &qword_1EBF03E18);
    [*(v4 + 64) unlock];
  }

  return result;
}

uint64_t sub_1C19BF3D0()
{
  v1 = sub_1C19A9E58(&qword_1EBF038A8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v26 = &v25 - v2;
  v3 = sub_1C19A9E58(&qword_1EBF03E18);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v25 = &v25 - v4;
  v5 = sub_1C1A6D5DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  sub_1C1A6D5CC();
  v12 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_lastFetch;
  swift_beginAccess();
  v13 = *(v6 + 16);
  v27 = v0;
  v13(v8, v0 + v12, v5);
  sub_1C1A6D50C();
  v15 = v14;
  v16 = *(v6 + 8);
  v16(v8, v5);
  v16(v11, v5);
  sub_1C198FB8C(0, &qword_1EDE63970);
  v17 = COERCE_DOUBLE(sub_1C19CECF8());
  if ((v18 & 1) == 0)
  {
    if (v15 <= v17)
    {
      goto LABEL_3;
    }

LABEL_5:
    v22 = sub_1C1A6D62C();
    v23 = v25;
    (*(*(v22 - 8) + 56))(v25, 1, 1, v22);
    sub_1C19BB0B0(0, 0, 0, v23);
    v20 = &qword_1EBF03E18;
    v21 = v23;
    return sub_1C1991140(v21, v20);
  }

  if (v15 > 900.0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v19 = v26;
  v13(v26, v27 + v12, v5);
  (*(v6 + 56))(v19, 0, 1, v5);
  sub_1C19BAC5C(v19);
  v20 = &qword_1EBF038A8;
  v21 = v19;
  return sub_1C1991140(v21, v20);
}

unint64_t sub_1C19BF710()
{
  result = qword_1EDE63F50;
  if (!qword_1EDE63F50)
  {
    sub_1C19A9F04(&qword_1EBF03E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE63F50);
  }

  return result;
}

uint64_t sub_1C19BF774(void *a1, uint64_t a2)
{
  [a1 serverUnfilledReason];
  v4 = sub_1C1A6DF6C();
  if (v4 == sub_1C1A6DF6C())
  {
    sub_1C1A6F65C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v5 = sub_1C1A6F8EC();
    sub_1C1A6F18C();

    v6 = *(a2 + 80);
    if (v6)
    {
      *(v6 + 32) = a1;

      v7 = a1;

      swift_unknownObjectRelease();
      v8 = *(a2 + 80);
    }

    else
    {
      v8 = 0;
    }

    sub_1C1A1BF34(v8);
  }

  else
  {
    [a1 serverUnfilledReason];
    v9 = sub_1C1A6DF6C();
    if (v9 == sub_1C1A6DF6C())
    {
      sub_1C1A6F65C();
      sub_1C198FB8C(0, &qword_1EDE63F30);
      v10 = sub_1C1A6F8EC();
      sub_1C1A6F18C();
    }

    else
    {
      sub_1C1A6F66C();
      sub_1C198FB8C(0, &qword_1EDE63F30);
      v11 = sub_1C1A6F8EC();
      sub_1C19A9E58(&unk_1EBF03FD0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1C1A73A30;
      [a1 serverUnfilledReason];
      v13 = sub_1C1A6DF6C();
      v14 = MEMORY[0x1E69E65A8];
      *(v12 + 56) = MEMORY[0x1E69E6530];
      *(v12 + 64) = v14;
      *(v12 + 32) = v13;
      sub_1C1A6F18C();
    }

    *(a2 + 80) = 0;

    sub_1C1A6F64C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v15 = sub_1C1A6F8EC();
    sub_1C1A6F18C();

    sub_1C198FB8C(0, &qword_1EDE63970);
    sub_1C19CF178(0);
  }
}

uint64_t sub_1C19BFB14(void *a1, uint64_t a2)
{
  v4 = sub_1C19A9E58(&qword_1EBF038A8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_1C1A6D5DC();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 serverUnfilledReason];
  v12 = sub_1C1A6DF6C();
  if (v12 == sub_1C1A6DF6C())
  {
    sub_1C1A6F65C();
    sub_1C198FB8C(0, &qword_1EDE63F30);
    v13 = sub_1C1A6F8EC();
    sub_1C1A6F18C();

    [*(a2 + 16) invalidate];
    sub_1C1A6D5CC();
    v14 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_lastFetch;
    swift_beginAccess();
    v15 = *(v8 + 40);
    v15(a2 + v14, v11, v7);
    swift_endAccess();
    (*(v8 + 56))(v6, 1, 1, v7);
    sub_1C19BAC5C(v6);
    sub_1C1991140(v6, &qword_1EBF038A8);
    v16 = *(a2 + 88);
    if (v16)
    {
      *(v16 + 32) = a1;

      v17 = a1;

      swift_unknownObjectRelease();
      v18 = *(a2 + 88);
      if (v18)
      {
        (*(v8 + 16))(v11, a2 + v14, v7);
        v19 = OBJC_IVAR____TtC17PromotedContentUI27AppStoreDataProviderSession_lastFetch;
        swift_beginAccess();

        v15(v18 + v19, v11, v7);
        swift_endAccess();
      }
    }

    return sub_1C19BE668();
  }

  else
  {
    [a1 serverUnfilledReason];
    v21 = sub_1C1A6DF6C();
    if (v21 == sub_1C1A6DF6C())
    {
      sub_1C1A6F65C();
      sub_1C198FB8C(0, &qword_1EDE63F30);
      v22 = sub_1C1A6F8EC();
      sub_1C1A6F18C();
    }

    else
    {
      sub_1C1A6F66C();
      sub_1C198FB8C(0, &qword_1EDE63F30);
      v23 = sub_1C1A6F8EC();
      sub_1C19A9E58(&unk_1EBF03FD0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1C1A73A30;
      [a1 serverUnfilledReason];
      v25 = sub_1C1A6DF6C();
      v26 = MEMORY[0x1E69E65A8];
      *(v24 + 56) = MEMORY[0x1E69E6530];
      *(v24 + 64) = v26;
      *(v24 + 32) = v25;
      sub_1C1A6F18C();
    }

    [a1 serverUnfilledReason];
    v27 = sub_1C1A6DF6C();
    if (v27 != sub_1C1A6DF6C())
    {
      sub_1C1A6D5CC();
      v28 = OBJC_IVAR____TtC17PromotedContentUI20AppStoreDataProvider_lastFetch;
      swift_beginAccess();
      (*(v8 + 40))(a2 + v28, v11, v7);
      swift_endAccess();
    }

    *(a2 + 88) = 0;
  }
}

uint64_t sub_1C19C0030()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

double sub_1C19C00EC()
{
  v1 = sub_1C19C224C(0.0, 0.0, 1.79769313e308, 1.79769313e308);
  v2 = sub_1C1A6F39C();
  [v1 setText_];

  v3 = v1;
  [v3 sizeToFit];
  [v3 frame];
  v5 = v4;

  [*(v0 + OBJC_IVAR____TtC17PromotedContentUI24GroupedSponsorshipAdView_imageViewWidthConstraint) constant];
  v7 = v5 + 4.0 + v6;
  [*(v0 + OBJC_IVAR____TtC17PromotedContentUI24GroupedSponsorshipAdView_textLabel) bounds];
  CGRectGetHeight(v9);
  [*(v0 + OBJC_IVAR____TtC17PromotedContentUI24GroupedSponsorshipAdView_imageViewHeightConstraint) constant];
  return v7;
}

id sub_1C19C0200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a4;
  v47 = a3;
  v43 = a1;
  ObjectType = swift_getObjectType();
  v6 = sub_1C1A6D48C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = (MEMORY[0x1EEE9AC00])(v6);
  v45 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v41 = &v40 - v10;
  v12 = sub_1C19A9E58(&unk_1EBF050D0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v40 - v13;
  v42 = &v40 - v13;
  v15 = OBJC_IVAR____TtC17PromotedContentUI24GroupedSponsorshipAdView_textLabel;
  v16 = sub_1C19C224C(0.0, 0.0, 0.0, 0.0);
  [v16 setHidden_];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v4[v15] = v16;
  v17 = OBJC_IVAR____TtC17PromotedContentUI24GroupedSponsorshipAdView_imageView;
  v18 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v18 setContentMode_];
  [v18 setOpaque_];
  [v18 setAccessibilityIgnoresInvertColors_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v17] = v18;
  v19 = &v4[OBJC_IVAR____TtC17PromotedContentUI24GroupedSponsorshipAdView_text];
  *v19 = v43;
  *(v19 + 1) = a2;
  v20 = [v18 widthAnchor];

  v21 = [v20 constraintEqualToConstant_];
  *&v4[OBJC_IVAR____TtC17PromotedContentUI24GroupedSponsorshipAdView_imageViewWidthConstraint] = v21;
  v22 = [*&v4[v17] heightAnchor];
  v23 = [v22 constraintEqualToConstant_];

  *&v4[OBJC_IVAR____TtC17PromotedContentUI24GroupedSponsorshipAdView_imageViewHeightConstraint] = v23;
  v48.receiver = v4;
  v48.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v48, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1C19C067C();
  v25 = sub_1C1A6F5AC();
  (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
  v26 = *(v7 + 16);
  v27 = v11;
  v28 = v6;
  v26(v27, v47, v6);
  v30 = v45;
  v29 = v46;
  v26(v45, v46, v28);
  sub_1C1A6F58C();
  v31 = sub_1C1A6F57C();
  v32 = *(v7 + 80);
  v33 = (v32 + 40) & ~v32;
  v34 = (v8 + v32 + v33) & ~v32;
  v35 = swift_allocObject();
  v36 = MEMORY[0x1E69E85E0];
  *(v35 + 2) = v31;
  *(v35 + 3) = v36;
  *(v35 + 4) = v24;
  v37 = *(v7 + 32);
  v37(&v35[v33], v41, v28);
  v37(&v35[v34], v30, v28);
  sub_1C1A40E34(0, 0, v42, &unk_1C1A74540, v35);

  v38 = *(v7 + 8);
  v38(v29, v28);
  v38(v47, v28);
  return v24;
}