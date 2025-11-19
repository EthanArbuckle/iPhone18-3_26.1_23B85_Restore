uint64_t sub_232D71BA0()
{
  v1 = *(v0 + 360);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_232D71C10()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {
    v4 = v3[4];

    return MEMORY[0x2822009F8](sub_232DCF46C, v4, 0);
  }

  else
  {
    v5 = v3[15];
    v6 = v3[12];
    v7 = v3[11];
    sub_232DB091C(v3[14], v3[13]);

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_232D71E48()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_232D71E88()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t *sub_232D71EF8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_232D71F40()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_232D71FA0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_232D71FE4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_232D7201C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74B8, &unk_232E06620);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_232E00BE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_232D72178(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_232E00BE0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_232D72224(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_232E00BE0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_232D722F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7300, &qword_232E06830);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_232D723B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7300, &qword_232E06830);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_232D72468(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributes(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_232D72514(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.MiscAttributes(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_232D725B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.Book(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_232D72624(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserGuideIndexHelper.UserGuideCDSResponse.Book(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_232D72694(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7300, &qword_232E06830);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_232D72750(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7300, &qword_232E06830);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_232D72800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UserGuideIndexItem(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_232D728BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UserGuideIndexItem(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_232D7297C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_232E00BE0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_232D72A28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_232E00BE0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_232D72ACC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_232D72B04()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_232D72B3C()
{
  v1 = sub_232E00CE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_232D72BF8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_232D72C6C()
{
  v1 = (type metadata accessor for UserGuideIndexItem(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 88) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 4);

  v7 = *(v0 + 5);

  v8 = *(v0 + 6);

  v9 = *(v0 + 8);

  v10 = *(v0 + 10);

  v11 = *&v0[v3 + 8];

  v12 = *&v0[v3 + 24];

  v13 = *&v0[v3 + 40];

  v14 = *&v0[v3 + 56];

  v15 = *&v0[v3 + 72];

  v16 = *&v0[v3 + 88];

  v17 = v1[12];
  v18 = sub_232E00BE0();
  (*(*(v18 - 8) + 8))(&v0[v3 + v17], v18);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_232D72E04@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  [*a1 lastModifiedDate];
  result = sub_232E01AB0();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_232D72E70()
{
  MEMORY[0x238396BC0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_232D72EA8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___TPSAssetsDownloadOperation_assetIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_232D72F04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___TPSAssetsDownloadOperation_downloadedURL;
  swift_beginAccess();
  return sub_232DAB3CC(v3 + v4, a2, &qword_27DDD7300, &qword_232E06830);
}

uint64_t sub_232D72F74()
{
  MEMORY[0x238396BC0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_232D72FAC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_232D72FEC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_232D7302C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_232D73080()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_232D730B8()
{
  MEMORY[0x238396BC0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_232D730F0()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_232D73138(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_232D73148()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_232D73198()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_232D73224()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_232D7325C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_232D7331C@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  [*a1 lastModifiedDate];
  result = sub_232E01AB0();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_232D73374()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_232D733C8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_232D7340C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_232D73444()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_232D73488()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

_OWORD *sub_232D734CC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_232D73F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232D75F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232D76974(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_232D76F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232D777A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  objc_destroyWeak((v50 + 80));
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose((v51 - 232), 8);
  _Block_object_dispose((v51 - 176), 8);
  objc_destroyWeak((v51 - 184));
  _Unwind_Resume(a1);
}

void sub_232D781BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  objc_destroyWeak(&a28);
  objc_destroyWeak((v29 - 160));
  _Block_object_dispose((v29 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_232D79C78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  _Block_object_dispose(&STACK[0x320], 8);
  _Block_object_dispose(&STACK[0x3D8], 8);
  objc_destroyWeak(&STACK[0x4B0]);
  _Block_object_dispose(&STACK[0x4B8], 8);
  _Block_object_dispose(&STACK[0x4E8], 8);
  _Block_object_dispose(&STACK[0x518], 8);
  _Block_object_dispose(&STACK[0x548], 8);
  _Block_object_dispose(&STACK[0x578], 8);
  _Block_object_dispose(&STACK[0x5A8], 8);
  _Block_object_dispose(&STACK[0x5D8], 8);
  _Block_object_dispose(&STACK[0x658], 8);
  _Block_object_dispose(&STACK[0x688], 8);
  _Block_object_dispose(&STACK[0x730], 8);
  _Block_object_dispose(&STACK[0x760], 8);
  _Block_object_dispose(&STACK[0x790], 8);
  _Block_object_dispose(&STACK[0x7C0], 8);
  _Block_object_dispose(&STACK[0x7F0], 8);
  _Block_object_dispose(&STACK[0x820], 8);
  _Block_object_dispose((v2 - 160), 8);
  objc_destroyWeak((v2 - 176));
  objc_destroyWeak((v2 - 168));
  _Unwind_Resume(a1);
}

void sub_232D7CB0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_232D7DA68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak(&a26);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_232D7E838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&a71, 8);
  _Unwind_Resume(a1);
}

void sub_232D7F158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232D7F3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232D80174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_232D808A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  objc_destroyWeak((v46 + 56));
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose((v47 - 232), 8);
  _Block_object_dispose((v47 - 184), 8);
  _Block_object_dispose((v47 - 136), 8);
  objc_destroyWeak((v47 - 88));
  _Unwind_Resume(a1);
}

void sub_232D81850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_232D82A24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232D85C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232D86268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_232D86964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232D86B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232D86D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232D870CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232D88514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232D888A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232D8B54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232D8B8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232D8BD60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x12u);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232D93D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose((v59 - 240), 8);
  _Block_object_dispose((v59 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232D9550C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232D969F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_232D979A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232D98550(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 96), 8);
  _Block_object_dispose((v1 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232D991DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232D997A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232D99BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232D9A4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232D9A890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232D9B994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232D9BBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_232D9BEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232D9C1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232D9C890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_232D9E7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232D9F8E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_232DA0DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232DA0F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232DA1994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_232DA1B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232DA2078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232DA2204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232DA4968(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void *sub_232DA6FC0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void sub_232DA6FE4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t Task<>.init(qualityOfService:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7278, &qword_232E07570) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v14 - v9;
  sub_232DA71B8(a1);
  v11 = sub_232E016B0();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a4;
  v12[5] = a2;
  v12[6] = a3;
  return sub_232DA74C4(0, 0, v10, &unk_232E05E28, v12, a4);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_232DA71B8(uint64_t a1)
{
  if (a1 <= 16)
  {
    if (a1 == 9)
    {
      return sub_232E01660();
    }

    return sub_232E01690();
  }

  if (a1 != 17)
  {
    if (a1 == 33 || a1 == 25)
    {
      return sub_232E01670();
    }

    return sub_232E01690();
  }

  return sub_232E01680();
}

uint64_t sub_232DA71FC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_232DA72F4;

  return v9(a1);
}

uint64_t sub_232DA72F4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_232DA73E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_232DA72F4;

  return sub_232DA71FC(a1, v4, v5, v7);
}

uint64_t sub_232DA74C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7278, &qword_232E07570) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v28[-1] - v12;
  v29[0] = a4;
  v29[1] = a5;
  sub_232DA7734(a3, &v28[-1] - v12);
  v14 = sub_232E016B0();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_232DA77A4(v13);
  }

  else
  {
    sub_232E016A0();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_232E01630();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_232E01520();
      v23 = *(v22 + 16);
      sub_232DA780C(v22 + 32, v29, a6, v28);

      v24 = v28[0];
      sub_232DA77A4(a3);

      return v24;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_232DA77A4(a3);
  v25 = swift_allocObject();
  v25[2] = a6;
  v25[3] = a4;
  v25[4] = a5;
  if (v21 | v19)
  {
    v28[1] = 0;
    v28[2] = 0;
    v28[3] = v19;
    v28[4] = v21;
  }

  return swift_task_create();
}

uint64_t sub_232DA7734(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7278, &qword_232E07570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232DA77A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7278, &qword_232E07570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232DA780C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (result)
  {
    v7 = *a2;
    v6 = a2[1];
    v8 = swift_allocObject();
    v8[2] = a3;
    v8[3] = v7;
    v8[4] = v6;

    result = swift_task_create();
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_232DA78F8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_232DA79F0;

  return v7(a1);
}

uint64_t sub_232DA79F0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_232DA7AE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_232DA7C78;

  return sub_232DA78F8(a1, v5);
}

uint64_t sub_232DA7BB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_232DA72F4;

  return sub_232DA78F8(a1, v5);
}

void sub_232DA7C7C()
{
  v0 = [objc_opt_self() deviceGuideIdentifier];
  v1 = sub_232E014D0();
  v3 = v2;

  qword_2814E8300 = v1;
  unk_2814E8308 = v3;
}

id static UserGuideManager.cloudDeviceDataSource(withDevices:)(uint64_t a1)
{
  v2 = type metadata accessor for UserGuideManager.CloudDeviceDataSource();
  v3 = objc_allocWithZone(v2);
  if (a1)
  {
    *&v3[OBJC_IVAR____TtCC10TipsDaemon16UserGuideManagerP33_6C8AE7B9624AFE54883FB7DC9DB35E3D21CloudDeviceDataSource_devices] = a1;
    v5.receiver = v3;
    v5.super_class = v2;

    return objc_msgSendSuper2(&v5, sel_init);
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }
}

id sub_232DA7F80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserGuideManager.CloudDeviceDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id UserGuideManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UserGuideManager.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id UserGuideManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s10TipsDaemon16UserGuideManagerC04maincD00A4Core0cD0CyFZ_0()
{
  if (qword_2814E82F0 != -1)
  {
    swift_once();
  }

  v0 = objc_opt_self();

  v1 = [v0 productVersion];
  sub_232E014D0();

  v2 = [v0 deviceName];
  sub_232E014D0();

  v3 = [v0 deviceSymbol];
  sub_232E014D0();

  v4 = objc_allocWithZone(sub_232E013F0());
  return sub_232E01390();
}

uint64_t sub_232DA8288(void *a1)
{
  v2 = [a1 model];
  sub_232E014D0();

  v3 = [a1 maxOSVersion];
  if (v3)
  {
    v4 = v3;
    sub_232E014D0();
  }

  v5 = [a1 displayName];
  if (v5)
  {
    v6 = v5;
    sub_232E014D0();
  }

  v7 = [a1 symbolIdentifier];
  if (v7)
  {
    v8 = v7;
    sub_232E014D0();
  }

  v9 = objc_allocWithZone(sub_232E013F0());
  return sub_232E01390();
}

id _s10TipsDaemon16UserGuideManagerC04userD014withIdentifier5title10dataSource0A4Core0cD0CSgSS_SSSgSo018TPSCloudDeviceDataK0_pSgtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_2814E82F0 != -1)
  {
    swift_once();
  }

  v9 = qword_2814E8300 == a1 && unk_2814E8308 == a2;
  if (v9 || (sub_232E01AD0() & 1) != 0)
  {
    return _s10TipsDaemon16UserGuideManagerC04maincD00A4Core0cD0CyFZ_0();
  }

  if (sub_232E014D0() == a1 && v11 == a2)
  {

    goto LABEL_24;
  }

  v13 = sub_232E01AD0();

  if (v13)
  {
LABEL_24:
    v18 = [objc_opt_self() macDeviceInfoUsingDataSource_];
    goto LABEL_25;
  }

  if (sub_232E014D0() == a1 && v14 == a2)
  {

    goto LABEL_30;
  }

  v16 = sub_232E01AD0();

  if (v16)
  {
LABEL_30:
    v18 = [objc_opt_self() iPadDeviceInfoUsingDataSource_];
    goto LABEL_25;
  }

  if (sub_232E014D0() == a1 && v17 == a2)
  {

LABEL_32:
    v18 = [objc_opt_self() iPhoneDeviceInfoUsingDataSource_];
    goto LABEL_25;
  }

  v22 = sub_232E01AD0();

  if (v22)
  {
    goto LABEL_32;
  }

  if (sub_232E014D0() == a1 && v23 == a2)
  {

LABEL_37:
    v18 = [objc_opt_self() tvDeviceInfoUsingDataSource_];
    goto LABEL_25;
  }

  v24 = sub_232E01AD0();

  if (v24)
  {
    goto LABEL_37;
  }

  if (sub_232E014D0() == a1 && v25 == a2)
  {

LABEL_42:
    v18 = [objc_opt_self() visionProDeviceInfoUsingDataSource_];
    goto LABEL_25;
  }

  v26 = sub_232E01AD0();

  if (v26)
  {
    goto LABEL_42;
  }

  if (sub_232E014D0() != a1 || v27 != a2)
  {
    v28 = sub_232E01AD0();

    if (v28)
    {
      goto LABEL_47;
    }

    if (sub_232E014D0() == a1 && v29 == a2)
    {
    }

    else
    {
      v30 = sub_232E01AD0();

      if ((v30 & 1) == 0)
      {
        if (sub_232E014D0() == a1 && v31 == a2)
        {
        }

        else
        {
          v32 = sub_232E01AD0();

          if ((v32 & 1) == 0)
          {
            return 0;
          }
        }

        v18 = [objc_opt_self() homePodDeviceInfo];
LABEL_25:
        result = v18;
        if (!result)
        {
          return result;
        }

        goto LABEL_26;
      }
    }

    v18 = [objc_opt_self() airPodsDeviceInfo];
    goto LABEL_25;
  }

LABEL_47:
  if (![objc_opt_self() isPhoneUI] || (result = objc_msgSend(objc_opt_self(), sel_watchDeviceInfo)) == 0)
  {
    v18 = [objc_opt_self() watchDeviceInfoUsingDataSource_];
    goto LABEL_25;
  }

LABEL_26:
  v19 = result;
  if (a4)
  {
    v20 = sub_232E014C0();
    [v19 setDisplayName_];
  }

  v21 = sub_232DA8288(v19);

  return v21;
}

uint64_t _s10TipsDaemon16UserGuideManagerC03allcD3MapSDySS0A4Core0cD0CGyFZ_0()
{
  v53 = sub_232DB3238(MEMORY[0x277D84F90]);
  if (qword_2814E82F0 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v0 = qword_2814E8300;
    v1 = qword_2814E8308[0];
    v2 = _s10TipsDaemon16UserGuideManagerC04userD014withIdentifier5title10dataSource0A4Core0cD0CSgSS_SSSgSo018TPSCloudDeviceDataK0_pSgtFZ_0(qword_2814E8300, qword_2814E8308[0], 0, 0, 0);
    if (v2)
    {
      v3 = v2;
      v4 = sub_232E013A0();
      sub_232DB1794(v3, v4, v5);
    }

    if (![objc_opt_self() supportsCloudDeviceUserGuide])
    {
      return v53;
    }

    v51 = sub_232E014D0();
    v52[0] = v6;
    v52[1] = sub_232E014D0();
    v52[2] = v7;
    v52[3] = sub_232E014D0();
    v52[4] = v8;
    v52[5] = sub_232E014D0();
    v52[6] = v9;
    v52[7] = sub_232E014D0();
    v52[8] = v10;
    v52[9] = sub_232E014D0();
    v52[10] = v11;
    v52[11] = sub_232E014D0();
    v52[12] = v12;
    v52[13] = sub_232E014D0();
    v52[14] = v13;
    v14 = [objc_opt_self() idsDevices];
    sub_232DA8CC4();
    v15 = sub_232E015D0();

    v16 = type metadata accessor for UserGuideManager.CloudDeviceDataSource();
    v17 = objc_allocWithZone(v16);
    *&v17[OBJC_IVAR____TtCC10TipsDaemon16UserGuideManagerP33_6C8AE7B9624AFE54883FB7DC9DB35E3D21CloudDeviceDataSource_devices] = v15;
    v49.receiver = v17;
    v49.super_class = v16;
    v18 = objc_msgSendSuper2(&v49, sel_init);
    v19 = 0;
    while (1)
    {
      v24 = *&v50[v19 * 8 + 32];
      v23 = v52[v19];
      if (v24 == v0 && v23 == v1)
      {
        goto LABEL_8;
      }

      v26 = *&v50[v19 * 8 + 32];
      v27 = v52[v19];
      if (sub_232E01AD0())
      {
        goto LABEL_8;
      }

      v28 = v18;
      v29 = _s10TipsDaemon16UserGuideManagerC04userD014withIdentifier5title10dataSource0A4Core0cD0CSgSS_SSSgSo018TPSCloudDeviceDataK0_pSgtFZ_0(v24, v23, 0, 0, v18);

      if (!v29)
      {
        goto LABEL_8;
      }

      v30 = sub_232E013A0();
      v32 = v31;
      v33 = v29;
      v34 = v53;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = sub_232DD5634(v30, v32);
      v38 = v34[2];
      v39 = (v37 & 1) == 0;
      v40 = __OFADD__(v38, v39);
      v41 = v38 + v39;
      if (v40)
      {
        break;
      }

      v42 = v37;
      if (v34[3] < v41)
      {
        sub_232DC1504(v41, isUniquelyReferenced_nonNull_native);
        v36 = sub_232DD5634(v30, v32);
        if ((v42 & 1) != (v43 & 1))
        {
          result = sub_232E01B40();
          __break(1u);
          return result;
        }

LABEL_20:
        if ((v42 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_6;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_20;
      }

      v47 = v36;
      sub_232DC27E0();
      v36 = v47;
      if ((v42 & 1) == 0)
      {
LABEL_21:
        v34[(v36 >> 6) + 8] |= 1 << v36;
        v44 = (v34[6] + 16 * v36);
        *v44 = v30;
        v44[1] = v32;
        *(v34[7] + 8 * v36) = v33;

        v45 = v34[2];
        v40 = __OFADD__(v45, 1);
        v46 = v45 + 1;
        if (v40)
        {
          goto LABEL_28;
        }

        v34[2] = v46;
        goto LABEL_7;
      }

LABEL_6:
      v20 = v36;

      v21 = v34[7];
      v22 = *(v21 + 8 * v20);
      *(v21 + 8 * v20) = v33;

LABEL_7:
      v53 = v34;
LABEL_8:
      v19 += 2;
      if (v19 == 16)
      {

        swift_arrayDestroy();
        return v53;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }
}

unint64_t sub_232DA8CC4()
{
  result = qword_2814E7BA8;
  if (!qword_2814E7BA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814E7BA8);
  }

  return result;
}

uint64_t sub_232DA8D30()
{
  v1 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v2 = v0[4];
  v0[5] = v1;

  v3 = v2 >> 62;
  if (v2 >> 62)
  {
    if (sub_232E019C0())
    {
      result = sub_232E019C0();
      if (!result)
      {
        __break(1u);
        return result;
      }

      if (sub_232E019C0())
      {
LABEL_3:
        if ((v2 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x238395D50](0, v2);
        }

        else
        {
          if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_32;
          }

          v4 = *(v2 + 32);
        }

        v0[6] = v4;
        if (v3)
        {
          if (!sub_232E019C0())
          {
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          if (sub_232E019C0() < 1)
          {
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

          v5 = sub_232E019C0();
        }

        else
        {
          v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v5)
          {
            goto LABEL_33;
          }
        }

        v6 = v5 - 1;
        if (!__OFSUB__(v5, 1))
        {
          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          v0[3] = v2;
          if (v3)
          {
            isUniquelyReferenced_nonNull_bridgeObject = 0;
          }

          if (isUniquelyReferenced_nonNull_bridgeObject == 1 && v6 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_20;
          }

          if (!v3)
          {
            v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:
            v2 = sub_232E01930();
            v0[3] = v2;
LABEL_20:
            v0[7] = v2;
            sub_232DA93B4(0, 1, 0);
            v9 = swift_task_alloc();
            v0[8] = v9;
            *v9 = v0;
            v9[1] = sub_232DA8F98;

            return TPSTip.csSearchableItemWithThumbnail.getter();
          }

LABEL_35:
          sub_232E019C0();
          goto LABEL_19;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      __break(1u);
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v11 = v0[1];
  v12 = v0[5];

  return v11(v12);
}

uint64_t sub_232DA8F98(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_232DA90B4, 0, 0);
}

uint64_t sub_232DA90B4()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = v1;
    MEMORY[0x2383959E0]();
    if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v15 = *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_232E015F0();
    }

    sub_232E01610();

    v3 = v0[7];
    v0[5] = v0[2];
    v4 = v3 >> 62;
    if (v3 >> 62)
    {
      if (sub_232E019C0())
      {
        result = sub_232E019C0();
        if (!result)
        {
          __break(1u);
          return result;
        }

        if (!sub_232E019C0())
        {
          __break(1u);
          goto LABEL_34;
        }

LABEL_6:
        if ((v3 & 0xC000000000000001) == 0)
        {
          if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_36;
          }

          v5 = *(v3 + 32);
LABEL_9:
          v0[6] = v5;
          if (v4)
          {
            if (!sub_232E019C0())
            {
LABEL_37:
              __break(1u);
              goto LABEL_38;
            }

            if (sub_232E019C0() < 1)
            {
LABEL_38:
              __break(1u);
              goto LABEL_39;
            }

            v6 = sub_232E019C0();
          }

          else
          {
            v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v6)
            {
              goto LABEL_37;
            }
          }

          v11 = v6 - 1;
          if (!__OFSUB__(v6, 1))
          {
            isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
            v0[3] = v3;
            if (v4)
            {
              isUniquelyReferenced_nonNull_bridgeObject = 0;
            }

            if (isUniquelyReferenced_nonNull_bridgeObject == 1 && v11 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_27;
            }

            if (!v4)
            {
              v13 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_26:
              v3 = sub_232E01930();
              v0[3] = v3;
LABEL_27:
              v0[7] = v3;
              sub_232DA93B4(0, 1, 0);
              v14 = swift_task_alloc();
              v0[8] = v14;
              *v14 = v0;
              v14[1] = sub_232DA8F98;

              return TPSTip.csSearchableItemWithThumbnail.getter();
            }

LABEL_39:
            sub_232E019C0();
            goto LABEL_26;
          }

LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

LABEL_34:
        v5 = MEMORY[0x238395D50](0, v3);
        goto LABEL_9;
      }
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = v0[7];
  }

  v8 = v0[1];
  v9 = v0[5];

  return v8(v9);
}

uint64_t sub_232DA93B4(uint64_t a1, uint64_t a2, uint64_t a3)
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
  sub_232DA94B4();
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
  result = sub_232E019C0();
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
    result = sub_232E019C0();
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

unint64_t sub_232DA94B4()
{
  result = qword_2814E7BC8;
  if (!qword_2814E7BC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814E7BC8);
  }

  return result;
}

id TPSTip.csSearchableItem.getter()
{
  v1 = sub_232E00CE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_232E008A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v0 type] & 2) == 0 || (objc_msgSend(v0, sel_isIntro) & 1) != 0 || (objc_msgSend(v0, sel_isOutro) & 1) != 0 || (objc_msgSend(v0, sel_isLinkedArticle))
  {
    return 0;
  }

  v40 = v7;
  v41 = v2;
  v12 = [v0 identifier];
  sub_232E014D0();

  v39 = sub_232DAA2C8();
  v13 = TPSTip.csAttributeSet.getter();
  if (!v13)
  {
    v13 = [objc_allocWithZone(MEMORY[0x277CC34B8]) init];
  }

  v14 = v13;
  v15 = objc_allocWithZone(MEMORY[0x277CC34B0]);
  v16 = sub_232E014C0();

  v17 = sub_232E014C0();

  v18 = [v15 initWithUniqueIdentifier:v16 domainIdentifier:v17 attributeSet:v14];

  v19 = [v18 uniqueIdentifier];
  v38 = sub_232E014D0();
  v21 = v20;

  v39 = v18;
  v22 = [v18 attributeSet];
  v23 = [v0 language];
  v24 = sub_232E014D0();
  v26 = v25;

  v27 = [v0 bodyContent];
  if (v27 && (v28 = v27, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD72F0, &unk_232E06800), v29 = sub_232E015D0(), v28, v30 = sub_232DAA390(v29), , v30))
  {
    v31 = sub_232DAA5E4(v30);

    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  *&v45 = v38;
  *(&v45 + 1) = v21;
  *&v46 = v22;
  *(&v46 + 1) = v24;
  *&v47 = v26;
  *(&v47 + 1) = v32;
  v33 = v39;
  v34 = [v39 attributeSet];
  sub_232DC5598(v10);
  sub_232E017B0();

  (*(v40 + 8))(v10, v6);
  v35 = [v33 attributeSet];
  v42 = v45;
  v43 = v46;
  v44 = v47;
  sub_232DAB238();
  sub_232E017A0();

  sub_232E00C80();
  v36 = sub_232E00CA0();
  (*(v41 + 8))(v5, v1);
  [v33 setExpirationDate_];

  return v33;
}

uint64_t TPSTip.csSearchableItemWithThumbnail.getter()
{
  v1[167] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD72F8, &qword_232E05EA8);
  v1[173] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[179] = swift_task_alloc();
  v1[185] = swift_task_alloc();
  v1[186] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7300, &qword_232E06830);
  v1[187] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[188] = swift_task_alloc();
  v1[189] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DA9A70, 0, 0);
}

uint64_t sub_232DA9A70()
{
  v1 = *(v0 + 1512);
  v2 = *(v0 + 1504);
  v3 = *(v0 + 1496);
  v4 = *(v0 + 1384);
  v5 = *(v0 + 1336);
  *(v0 + 1520) = TPSTip.csSearchableItem.getter();
  v6 = swift_task_alloc();
  *(v0 + 1528) = v6;
  *(v6 + 16) = v5;
  swift_asyncLet_begin();
  v7 = swift_task_alloc();
  *(v0 + 1536) = v7;
  *(v7 + 16) = v5;
  swift_asyncLet_begin();
  *(v0 + 1544) = *(v4 + 48);
  v8 = *(v0 + 1512);

  return MEMORY[0x282200928](v0 + 16, v8, sub_232DA9B80, v0 + 1296);
}

uint64_t sub_232DA9B80()
{
  sub_232DAB3CC(v0[189], v0[186], &qword_27DDD7300, &qword_232E06830);
  v1 = v0[188];

  return MEMORY[0x282200928](v0 + 82, v1, sub_232DA9C00, v0 + 168);
}

uint64_t sub_232DA9C1C()
{
  v1 = *(v0 + 1520);
  sub_232DAB3CC(*(v0 + 1504), *(v0 + 1488) + *(v0 + 1544), &qword_27DDD7300, &qword_232E06830);
  if (v1)
  {
    v2 = *(v0 + 1520);
    v3 = *(v0 + 1488);
    v4 = *(v0 + 1480);
    v5 = [v2 attributeSet];
    sub_232DAB3CC(v3, v4, &qword_27DDD72F8, &qword_232E05EA8);
    v6 = sub_232E00BE0();
    v7 = *(v6 - 8);
    v18 = *(v7 + 48);
    v8 = 0;
    if (v18(v4, 1, v6) != 1)
    {
      v9 = *(v0 + 1480);
      v8 = sub_232E00B70();
      (*(v7 + 8))(v9, v6);
    }

    v10 = *(v0 + 1488);
    v11 = *(v0 + 1432);
    v12 = *(v0 + 1384);
    sub_232DAB434(*(v0 + 1480) + *(v12 + 48), &qword_27DDD7300, &qword_232E06830);
    [v5 setThumbnailURL_];

    v13 = [v2 attributeSet];
    sub_232DAB3CC(v10, v11, &qword_27DDD72F8, &qword_232E05EA8);
    v14 = *(v12 + 48);
    if (v18(v11 + v14, 1, v6) == 1)
    {
      v15 = 0;
    }

    else
    {
      v15 = sub_232E00B70();
      (*(v7 + 8))(v11 + v14, v6);
    }

    sub_232DAB434(*(v0 + 1432), &qword_27DDD7300, &qword_232E06830);
    [v13 setDarkThumbnailURL_];
  }

  sub_232DAB434(*(v0 + 1488), &qword_27DDD72F8, &qword_232E05EA8);
  v16 = *(v0 + 1504);

  return MEMORY[0x282200920](v0 + 656, v16, sub_232DA9EC0, v0 + 1392);
}

uint64_t sub_232DA9EDC()
{
  v1 = *(v0 + 1536);

  v2 = *(v0 + 1512);

  return MEMORY[0x282200920](v0 + 16, v2, sub_232DA9F48, v0 + 1440);
}

uint64_t sub_232DA9F64()
{
  v1 = v0[191];
  v2 = v0[189];
  v3 = v0[188];
  v4 = v0[186];
  v5 = v0[185];
  v6 = v0[179];

  v7 = v0[1];
  v8 = v0[190];

  return v7(v8);
}

uint64_t TPSTip.indexable.getter()
{
  if ([v0 type] & 2) == 0 || (objc_msgSend(v0, sel_isIntro) & 1) != 0 || (objc_msgSend(v0, sel_isOutro))
  {
    return 0;
  }

  else
  {
    return [v0 isLinkedArticle] ^ 1;
  }
}

void *TPSTip.csAttributeSet.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7308, &qword_232E05ED0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15 - v3;
  v5 = sub_232E01180();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v0 type] & 2) == 0 || (objc_msgSend(v0, sel_isIntro) & 1) != 0 || (objc_msgSend(v0, sel_isOutro) & 1) != 0 || (objc_msgSend(v0, sel_isLinkedArticle))
  {
    return 0;
  }

  sub_232DA94B4();
  sub_232E017E0();
  (*(v6 + 56))(v4, 1, 1, v5);
  sub_232E01160();
  v11 = objc_allocWithZone(MEMORY[0x277CC34B8]);
  v12 = sub_232E01170();
  v13 = [v11 initWithContentType_];

  (*(v6 + 8))(v9, v5);
  v14 = sub_232DAB494(v13);

  return v14;
}

CSSearchableItemAttributeSet __swiftcall TPSTip.addAttributes(to:)(CSSearchableItemAttributeSet to)
{
  v1 = sub_232DAB494(to.super.isa);

  return v1;
}

uint64_t sub_232DAA2C8()
{
  v1 = 1936746868;
  v2 = [v0 collectionIdentifiers];
  if (v2)
  {
    v3 = v2;
    v4 = sub_232E015D0();

    if (v4[2])
    {
      v5 = v4[4];
      v6 = v4[5];

      MEMORY[0x238395970](v5, v6);

      return 0x2E73706974;
    }

    else
    {
    }
  }

  return v1;
}

uint64_t sub_232DAA390(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  sub_232DF8F50(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = (a1 + 32); ; ++i)
    {
      v9 = *i;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD72F0, &unk_232E06800);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7320, &qword_232E05EF8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v6 = *(v10 + 16);
      v5 = *(v10 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_232DF8F50((v5 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      *(v10 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_232DAA4D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_232DF8F90(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_232DAB730(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_232DF8F90((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_232DAA5E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_232DF8F30(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v10;
    do
    {
      v8 = *v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7320, &qword_232E05EF8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7328, &qword_232E07070);
      swift_dynamicCast();
      v6 = *(v10 + 16);
      v5 = *(v10 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_232DF8F30((v5 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      *(v10 + 8 * v6 + 32) = v9;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_232DAA714(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_232DF8F70(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v8 = *v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7310, &qword_232E06810);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_232DF8F70((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_232D734CC(&v9, (v2 + 32 * v6 + 32));
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_232DAA824(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_232DAB790;

  return sub_232DAA8C0(a1);
}

uint64_t sub_232DAA8C0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_232E00BE0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DAA98C, 0, 0);
}

uint64_t sub_232DAA98C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7318, &qword_232E05EE8);
  sub_232DE9A58();
  sub_232E00B80();
  (*(v4 + 8))(v2, v3);
  v6 = type metadata accessor for ThumbnailFetcher();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v0[8] = sub_232DB37E0(v5, v1);
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_232DAAACC;
  v10 = v0[2];

  return sub_232DB3A14(v10, 0);
}

uint64_t sub_232DAAACC()
{
  v2 = *(*v1 + 72);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_232DAAC54;
  }

  else
  {
    v3 = sub_232DAABE4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_232DAABE4()
{
  v1 = v0[8];

  v3 = v0[6];
  v2 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_232DAAC54()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];

  (*(v3 + 56))(v4, 1, 1, v2);
  v6 = v0[6];
  v5 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_232DAACF4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_232DA79F0;

  return sub_232DAAD90(a1);
}

uint64_t sub_232DAAD90(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_232E00BE0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DAAE5C, 0, 0);
}

uint64_t sub_232DAAE5C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7318, &qword_232E05EE8);
  sub_232DE9A58();
  sub_232E00B80();
  (*(v4 + 8))(v2, v3);
  v6 = type metadata accessor for ThumbnailFetcher();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v0[8] = sub_232DB37E0(v5, v1);
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_232DAAF9C;
  v10 = v0[2];

  return sub_232DB3A14(v10, 1);
}

uint64_t sub_232DAAF9C()
{
  v2 = *(*v1 + 72);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_232DAB78C;
  }

  else
  {
    v3 = sub_232DAB794;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_232DAB0B4()
{
  v1 = [v0 fullContent];
  if (!v1 || (v2 = v1, v3 = [v1 bodyText], v2, !v3))
  {
    v4 = [v0 fullContent];
    if (v4 && (v5 = v4, v6 = [v4 bodyContent], v5, v6))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD72F0, &unk_232E06800);
      sub_232E015D0();

      v7 = objc_opt_self();
      v8 = sub_232E015C0();

      v3 = [v7 altTextRepresentationForContent_];

      if (!v3)
      {
        return 0;
      }
    }

    else
    {
      v9 = [v0 notification];
      if (!v9)
      {
        return 0;
      }

      v10 = v9;
      v3 = [v9 text];
    }
  }

  v11 = sub_232E014D0();

  return v11;
}

unint64_t sub_232DAB238()
{
  result = qword_2814E7CD0;
  if (!qword_2814E7CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E7CD0);
  }

  return result;
}

uint64_t sub_232DAB28C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_232DA7C78;

  return sub_232DAA824(a1);
}

uint64_t sub_232DAB32C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_232DA72F4;

  return sub_232DAACF4(a1);
}

uint64_t sub_232DAB3CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_232DAB434(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_232DAB494(void *a1)
{
  v2 = v1;
  v4 = [v1 fullContent];
  if (!v4 || (v5 = v4, v6 = [v4 title], v5, !v6))
  {
    v6 = 0;
  }

  [a1 setDisplayName_];

  v7 = [v2 identifier];
  if (!v7)
  {
    sub_232E014D0();
    v7 = sub_232E014C0();
  }

  [a1 setUniqueIdentifier_];

  sub_232DAA2C8();
  v8 = sub_232E014C0();

  [a1 setDomainIdentifier_];

  v9 = [v2 collectionIdentifiers];
  if (v9)
  {
    v10 = v9;
    v11 = sub_232E015D0();

    if (v11[2])
    {
      v12 = v11[4];
      v13 = v11[5];
    }
  }

  sub_232E017C0();
  v14 = [v2 keywords];
  [a1 setKeywords_];

  sub_232DAB0B4();
  if (v15)
  {
    v16 = sub_232E014C0();
  }

  else
  {
    v16 = 0;
  }

  [a1 setContentDescription_];

  v17 = [v2 fullContentAssets];
  v18 = [v17 alt];

  [a1 setTextContent_];
  v19 = [v2 correlationID];
  if (v19)
  {
    v20 = v19;
    sub_232E014D0();
  }

  sub_232E017D0();
  return a1;
}

uint64_t sub_232DAB730(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t TPSTargetingConditionJoinType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_232DAB7AC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

unint64_t TPSTargetingConditionStatusType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_232DAB7E4()
{
  result = qword_27DDD7330;
  if (!qword_27DDD7330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7330);
  }

  return result;
}

unint64_t sub_232DAB83C()
{
  result = qword_27DDD7338;
  if (!qword_27DDD7338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7338);
  }

  return result;
}

unint64_t sub_232DAB894()
{
  result = qword_27DDD7340;
  if (!qword_27DDD7340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7340);
  }

  return result;
}

uint64_t sub_232DAB8E8()
{
  v1 = *v0;
  sub_232E01BB0();
  MEMORY[0x238395FF0](v1);
  return sub_232E01BE0();
}

uint64_t sub_232DAB930()
{
  v1 = *v0;
  sub_232E01BB0();
  MEMORY[0x238395FF0](v1);
  return sub_232E01BE0();
}

uint64_t sub_232DAB9B8(uint64_t a1, unint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t, uint64_t))
{
  v8 = sub_232E012A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v13 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    if (a1 == a1 >> 32)
    {
LABEL_9:
      sub_232E01270();
      sub_232E01360();
      (*(v9 + 8))(v12, v8);
      v17 = a3(MEMORY[0x277D84F90]);
      v19 = 2;
      a4(2, v17);

      return v19;
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_9;
  }

  v14 = sub_232E00990();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_232E00980();
  sub_232DB0E98();
  sub_232E00970();

  return v20[12];
}

uint64_t sub_232DABC9C(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_232DB0B68(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_232DB0CA4(v3, v4);
    }

    else
    {
      v6 = sub_232DB0C20(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_232DABD58(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7350, &qword_232E061D8);
  if (swift_dynamicCast())
  {
    sub_232DB0E3C(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_232E00A80();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_232DB0B00(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_232E01940();
  }

  sub_232DAEAF4(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_232DB0D20(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = sub_232DAEBBC(sub_232DB0DC0);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_232E00C30();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_232DB0630(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_232E01550();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_232E01580();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_232E01940();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_232DB0630(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_232E01560();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_232E00C40();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_232E00C40();
    sub_232DB0E28(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_232DB0E28(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_232DB0970(*&__src[0], *(&__src[0] + 1));

  sub_232DB091C(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t sub_232DAC27C()
{
  v1 = *v0;
  sub_232E01BB0();
  MEMORY[0x238395FF0](v1);
  return sub_232E01BE0();
}

uint64_t sub_232DAC2F0()
{
  v1 = *v0;
  sub_232E01BB0();
  MEMORY[0x238395FF0](v1);
  return sub_232E01BE0();
}

uint64_t sub_232DAC334(uint64_t a1, unint64_t a2, __int16 a3, uint64_t a4)
{
  v8 = sub_232E012A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_232DAB9B8(a1, a2, sub_232DB300C, sub_232DAC6CC);
  v15 = v14;
  v17 = v16;
  if (v13 == a3)
  {
    if (a3 != 2)
    {
      sub_232E01270();
      sub_232E01360();
      goto LABEL_8;
    }

    v18 = sub_232DAC6CC(2, a4);
    v20 = v19;
    sub_232DB0970(v15, v17);
    v21 = sub_232DB07B4(v18, v20, v15, v17);
    sub_232DB091C(v15, v17);
    sub_232DB091C(v18, v20);
    if (v21)
    {
      sub_232DB091C(v15, v17);
      return 1;
    }

    sub_232E01270();
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_232E018F0();
    MEMORY[0x238395970](0xD00000000000003BLL, 0x8000000232E0C8C0);
    sub_232DB0970(v15, v17);
    v26 = sub_232E00C10();
    MEMORY[0x238395970](v26);

    sub_232DB091C(v15, v17);
    MEMORY[0x238395970](0x6E6572727563202CLL, 0xEB00000000203A74);
    v27 = sub_232DAC6CC(2, a4);
    v29 = v28;
    v30 = sub_232E00C10();
    MEMORY[0x238395970](v30);

    sub_232DB091C(v27, v29);
  }

  else
  {
    v23 = v13;
    sub_232E01270();
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_232E018F0();
    MEMORY[0x238395970](0xD000000000000031, 0x8000000232E0C850);
    v32 = v23;
    v24 = sub_232E01AB0();
    MEMORY[0x238395970](v24);

    MEMORY[0x238395970](0x6E6572727563202CLL, 0xEB00000000203A74);
    v32 = a3;
    v25 = sub_232E01AB0();
    MEMORY[0x238395970](v25);
  }

  MEMORY[0x238395970](41, 0xE100000000000000);
  sub_232E01360();

LABEL_8:
  sub_232DB091C(v15, v17);
  (*(v9 + 8))(v12, v8);
  return 0;
}

uint64_t sub_232DAC6CC(__int16 a1, uint64_t a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = sub_232E01410();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v33 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_232E01440();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232E01430();
  LOWORD(v35) = a1;
  v13 = sub_232DABC9C(&v35, &v35 + 2);
  v15 = v14;
  sub_232DB0970(v13, v14);
  v30 = v12;
  sub_232DD3C3C(v13, v15);
  v31 = v15;
  v32 = v13;
  sub_232DB091C(v13, v15);
  v16 = *(a2 + 16);
  if (v16)
  {
    v26 = v9;
    v27 = v8;
    v28 = v5;
    v29 = v4;
    v17 = sub_232DADF88(v16, 0, &qword_27DDD7370, &qword_232E061F8);
    v18 = sub_232DAFCFC(&v35, v17 + 4, v16, a2);

    sub_232D734F4();
    if (v18 != v16)
    {
      __break(1u);
    }

    v5 = v28;
    v4 = v29;
    v9 = v26;
    v8 = v27;
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v35 = v17;
  sub_232DAF080(&v35);
  v19 = v30;
  sub_232DACF04(v35);

  v20 = v33;
  sub_232E01420();
  v36 = v4;
  v37 = sub_232DB0AB8(&qword_2814E7C78, MEMORY[0x277CC5290]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v35);
  (*(v5 + 16))(boxed_opaque_existential_1, v20, v4);
  __swift_project_boxed_opaque_existential_1(&v35, v36);
  sub_232E00A80();
  sub_232DB091C(v32, v31);
  (*(v5 + 8))(v20, v4);
  v22 = v34;
  __swift_destroy_boxed_opaque_existential_1(&v35);
  (*(v9 + 8))(v19, v8);
  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t sub_232DACA5C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v6 = sub_232DD5634(*a1, a1[1]);
    if (v7)
    {
      v8 = (*(a3 + 56) + 16 * v6);
      v9 = *v8;
      v10 = v8[1];
      v3 = 1;
      if (v9 != a1[4] || v10 != a1[5])
      {
        if (sub_232E01AD0())
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_232DACAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a1;
  v7[1] = a2;
  v6[2] = v7;
  return sub_232DF7F9C(sub_232DB0E78, v6, a5) & 1;
}

uint64_t sub_232DACB48()
{
  if (*v0)
  {
    result = 0x4764657865646E69;
  }

  else
  {
    result = 0x6E6F6973726576;
  }

  *v0;
  return result;
}

uint64_t sub_232DACB90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_232E01AD0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4764657865646E69 && a2 == 0xED00007365646975)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_232E01AD0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_232DACC80(uint64_t a1)
{
  v2 = sub_232DB1228();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232DACCBC(uint64_t a1)
{
  v2 = sub_232DB1228();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232DACCF8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7420, &qword_232E063D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_232DB1228();
  sub_232E01C10();
  v15 = 0;
  sub_232E01A90();
  if (!v3)
  {
    v13[1] = a3;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7428, &qword_232E063D8);
    sub_232DB14CC(&qword_2814E7C60);
    sub_232E01A80();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_232DACEB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_232DB12C4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_232DACF04(uint64_t result)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 56);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      v5 = *(v2 - 3);
      v6 = *(v2 - 2);
      swift_bridgeObjectRetain_n();

      v7 = sub_232DABD58(v5, v6);
      v8 = v7;
      v10 = v9;
      v11 = v9 >> 62;
      if ((v9 >> 62) > 1)
      {
        if (v11 == 2)
        {
          v24 = v1;
          v12 = v3;
          v13 = v4;
          v14 = *(v7 + 16);
          v15 = *(v7 + 24);
          if (sub_232E00A30() && __OFSUB__(v14, sub_232E00A60()))
          {
            goto LABEL_35;
          }

          if (__OFSUB__(v15, v14))
          {
            goto LABEL_32;
          }

LABEL_16:
          sub_232E00A50();
          sub_232E01440();
          sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540]);
          sub_232E01400();
          sub_232DB091C(v8, v10);
          v4 = v13;
          v3 = v12;
          v1 = v24;
          goto LABEL_18;
        }
      }

      else if (v11)
      {
        v24 = v1;
        v12 = v3;
        v13 = v4;
        if (v7 >> 32 < v7)
        {
          __break(1u);
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
LABEL_38:
          __break(1u);
        }

        if (sub_232E00A30() && __OFSUB__(v8, sub_232E00A60()))
        {
          goto LABEL_37;
        }

        goto LABEL_16;
      }

      sub_232E01440();
      sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540]);
      sub_232E01400();
      sub_232DB091C(v8, v10);
LABEL_18:

      v16 = sub_232DABD58(v4, v3);
      v17 = v16;
      v19 = v18;
      v20 = v18 >> 62;
      if ((v18 >> 62) > 1)
      {
        if (v20 != 2)
        {
          goto LABEL_3;
        }

        v21 = *(v16 + 16);
        v22 = *(v16 + 24);
        if (sub_232E00A30() && __OFSUB__(v21, sub_232E00A60()))
        {
          goto LABEL_36;
        }

        if (__OFSUB__(v22, v21))
        {
          goto LABEL_34;
        }

        goto LABEL_28;
      }

      if (v20)
      {
        if (v16 >> 32 < v16)
        {
          goto LABEL_33;
        }

        if (sub_232E00A30() && __OFSUB__(v17, sub_232E00A60()))
        {
          goto LABEL_38;
        }

LABEL_28:
        sub_232E00A50();
      }

LABEL_3:
      sub_232E01440();
      sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540]);
      sub_232E01400();
      sub_232DB091C(v17, v19);

      v2 += 4;
      --v1;
    }

    while (v1);
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_232DAD4A0()
{
  v1 = *(v0 + 1);
  v2 = *v0;
  sub_232E01BB0();
  sub_232E01BD0();
  sub_232DB04C4(v4, v1);
  return sub_232E01BE0();
}

uint64_t sub_232DAD500(__int128 *a1)
{
  v3 = *(v1 + 1);
  v4 = *v1;
  sub_232E01BD0();

  return sub_232DB04C4(a1, v3);
}

uint64_t sub_232DAD550()
{
  v1 = *(v0 + 1);
  v2 = *v0;
  sub_232E01BB0();
  sub_232E01BD0();
  sub_232DB04C4(v4, v1);
  return sub_232E01BE0();
}

uint64_t sub_232DAD5AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *a2;
  v4 = sub_232DAC6CC(*a1, *(a1 + 8));
  v6 = v5;
  v7 = sub_232DAC6CC(v3, v2);
  v9 = v8;
  v10 = sub_232DB07B4(v4, v6, v7, v8);
  sub_232DB091C(v7, v9);
  sub_232DB091C(v4, v6);
  return v10 & 1;
}

unint64_t sub_232DAD644()
{
  result = qword_27DDD7348;
  if (!qword_27DDD7348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7348);
  }

  return result;
}

uint64_t sub_232DAD698@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
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
    v10 = sub_232E00A30();
    if (v10)
    {
      v11 = sub_232E00A60();
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
      result = sub_232E00A50();
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
      v19 = *MEMORY[0x277D85DE8];
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
  v10 = sub_232E00A30();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_232E00A60();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_232E00A50();
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

uint64_t sub_232DAD8C8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
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
    v10 = sub_232DB06FC(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_232DB091C(a3, a4);
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
  sub_232DAD698(v14, a3, a4, &v13);
  v10 = v4;
  sub_232DB091C(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

char *sub_232DADA58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7368, &qword_232E061F0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_232DADB5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7388, &qword_232E06210);
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

void *sub_232DADC68(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73C0, &unk_232E06250);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73C8, &qword_232E07080);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_232DADD9C(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7390, &qword_232E06218);
  v10 = *(sub_232E00EA0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_232E00EA0() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_232DADF88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 1;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 5);
  return result;
}

void *sub_232DAE004(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7388, &qword_232E06210);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_232DAE088(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7398, &qword_232E06220);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_232DAE118(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7378, &qword_232E06200);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7380, &qword_232E06208);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_232DAE24C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7370, &qword_232E061F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7360, &qword_232E061E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_232DAE3C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73E0, &qword_232E06270);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_232DAE4D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7388, &qword_232E06210);
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

void *sub_232DAE678(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_232DAE7D0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_232DAE918(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_232DAEAF4@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_232DB0B68(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_232E00A70();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_232E00A20();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_232E00C20();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_232DAEBBC(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_232DB091C(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_232DB091C(v6, v5);
    *v3 = xmmword_232E06160;
    sub_232DB091C(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_232E00A30() && __OFSUB__(v6, sub_232E00A60()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_232E00A70();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_232E00A10();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_232DAEFCC(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_232DB091C(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_232E06160;
    sub_232DB091C(0, 0xC000000000000000);
    sub_232E00BF0();
    result = sub_232DAEFCC(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_232DAEF60(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_232DAEFCC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_232E00A30();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_232E00A60();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_232E00A50();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_232DAF080(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_232DB02A0(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_232DAF0EC(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_232DAF0EC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_232E01AA0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7360, &qword_232E061E8);
        v5 = sub_232E01600();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_232DAF2C4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_232DAF1F4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_232DAF1F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 32 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = sub_232E01AD0(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *(v12 + 32);
      v10 = *(v12 + 40);
      v14 = *(v12 + 48);
      v15 = *(v12 + 56);
      v16 = *(v12 + 16);
      *(v12 + 32) = *v12;
      *(v12 + 48) = v16;
      *v12 = result;
      *(v12 + 8) = v10;
      *(v12 + 16) = v14;
      *(v12 + 24) = v15;
      v12 -= 32;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_232DAF2C4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v99 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_105:
    v8 = *v99;
    if (!*v99)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_232DAFB5C(v7);
      v7 = result;
    }

    v90 = v7 + 16;
    v91 = *(v7 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = &v7[16 * v91];
        v93 = *v92;
        v94 = &v90[2 * v91];
        v95 = v94[1];
        sub_232DAF8A8((*a3 + 32 * *v92), (*a3 + 32 * *v94), (*a3 + 32 * v95), v8);
        if (v4)
        {
        }

        if (v95 < v93)
        {
          goto LABEL_129;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_130;
        }

        *v92 = v93;
        *(v92 + 1) = v95;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_131;
        }

        v91 = *v90 - 1;
        result = memmove(v94, v94 + 2, 16 * v96);
        *v90 = v91;
        if (v91 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = (*a3 + 32 * v6);
      result = *v9;
      v10 = (*a3 + 32 * v8);
      if (*v9 == *v10 && v9[1] == v10[1])
      {
        v12 = 0;
      }

      else
      {
        result = sub_232E01AD0();
        v12 = result;
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v13 = v10 + 5;
        v14 = v10 + 5;
        do
        {
          result = v13[3];
          v16 = v14[4];
          v14 += 4;
          v15 = v16;
          if (result == *(v13 - 1) && v15 == *v13)
          {
            if (v12)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_232E01AD0();
            if ((v12 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v6;
          v13 = v14;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v12)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v18 = 32 * v6 - 16;
          v19 = (32 * v8) | 0x18;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v22 = (v28 + v19);
              v23 = (v28 + v18);
              v24 = *(v22 - 3);
              v25 = *(v22 - 1);
              v26 = *v22;
              v27 = *v23;
              *(v22 - 3) = *(v23 - 1);
              *(v22 - 1) = v27;
              *(v23 - 1) = v24;
              *v23 = v25;
              *(v23 + 1) = v26;
            }

            ++v21;
            v18 -= 32;
            v19 += 32;
          }

          while (v21 < v20);
        }
      }
    }

    v29 = a3[1];
    if (v6 < v29)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v29)
        {
          v30 = a3[1];
        }

        else
        {
          v30 = (v8 + a4);
        }

        if (v30 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v30)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_232DADA58(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v45 = *(v7 + 2);
    v44 = *(v7 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_232DADA58((v44 > 1), v45 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v46;
    v47 = &v7[16 * v45];
    *(v47 + 4) = v8;
    *(v47 + 5) = v6;
    v48 = *v99;
    if (!*v99)
    {
      goto LABEL_142;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v7 + 4);
          v51 = *(v7 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_74:
          if (v53)
          {
            goto LABEL_120;
          }

          v66 = &v7[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_123;
          }

          v72 = &v7[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_127;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v76 = &v7[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_88:
        if (v71)
        {
          goto LABEL_122;
        }

        v79 = &v7[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_125;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v87 = *&v7[16 * v8 + 32];
        v88 = *&v7[16 * v49 + 40];
        sub_232DAF8A8((*a3 + 32 * v87), (*a3 + 32 * *&v7[16 * v49 + 32]), (*a3 + 32 * v88), v48);
        if (v4)
        {
        }

        if (v88 < v87)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_232DAFB5C(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_117;
        }

        v89 = &v7[16 * v8];
        *(v89 + 4) = v87;
        *(v89 + 5) = v88;
        result = sub_232DAFAD0(v49);
        v46 = *(v7 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v7[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_118;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_119;
      }

      v61 = &v7[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_121;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_124;
      }

      if (v65 >= v57)
      {
        v83 = &v7[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_128;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v31 = *a3;
  v32 = *a3 + 32 * v6 - 32;
  v97 = v8;
  v33 = (v8 - v6);
LABEL_43:
  v34 = (v31 + 32 * v6);
  v35 = *v34;
  v36 = v34[1];
  v37 = v33;
  v38 = v32;
  while (1)
  {
    v39 = v35 == *v38 && v36 == *(v38 + 8);
    if (v39 || (result = sub_232E01AD0(), (result & 1) == 0))
    {
LABEL_42:
      ++v6;
      v32 += 32;
      --v33;
      if (v6 != v30)
      {
        goto LABEL_43;
      }

      v6 = v30;
      v8 = v97;
      goto LABEL_54;
    }

    if (!v31)
    {
      break;
    }

    v35 = *(v38 + 32);
    v36 = *(v38 + 40);
    v40 = *(v38 + 48);
    v41 = *(v38 + 56);
    v42 = *(v38 + 16);
    *(v38 + 32) = *v38;
    *(v38 + 48) = v42;
    *v38 = v35;
    *(v38 + 8) = v36;
    *(v38 + 16) = v40;
    *(v38 + 24) = v41;
    v38 -= 32;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_232DAF8A8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v17 && (sub_232E01AD0() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v17 = v7 == v4;
      v4 += 32;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v17 = v7 == v6;
    v6 += 32;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v16;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_28:
    v18 = v6 - 32;
    v5 -= 32;
    v19 = v14;
    do
    {
      v20 = *(v19 - 4);
      v21 = *(v19 - 3);
      v19 -= 32;
      v22 = v20 == *(v6 - 4) && v21 == *(v6 - 3);
      if (!v22 && (sub_232E01AD0() & 1) != 0)
      {
        if (v5 + 32 != v6)
        {
          v24 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v24;
        }

        if (v14 <= v4 || (v6 -= 32, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 32 != v14)
      {
        v23 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v23;
      }

      v5 -= 32;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

uint64_t sub_232DAFAD0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_232DAFB5C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_232DAFB70(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v20 = v19[1];
      v21 = *(*(a4 + 56) + v18);
      *v11 = *v19;
      *(v11 + 8) = v20;
      v24 = v21;
      *(v11 + 16) = v21;
      if (v14 == v10)
      {

        sub_232DB0970(v24, *(&v24 + 1));
        goto LABEL_24;
      }

      v11 += 32;

      sub_232DB0970(v24, *(&v24 + 1));
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = (63 - v7) >> 6;
    }

    v12 = v23 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_232DAFCFC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v27 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v12 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v23;
      v11[3] = v24;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v26 = v12 + 1;
    }

    else
    {
      v26 = v13;
    }

    v12 = v26 - 1;
    v10 = result;
LABEL_23:
    v7 = v27;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_232DAFE80(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_232DAFFD8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_232DB0130(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = (63 - v7) >> 6;
    }

    v12 = v22 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_232DB0348(__int128 *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v19 = 0;
  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = (v11 << 10) | (16 * __clz(__rbit64(v7)));
      v13 = (*(a2 + 48) + v12);
      v15 = *v13;
      v14 = v13[1];
      v16 = (*(a2 + 56) + v12);
      v17 = *v16;
      v18 = v16[1];

      sub_232DB0970(v17, v18);
      if (!v14)
      {
        break;
      }

      v7 &= v7 - 1;
      v22 = a1[2];
      v23 = a1[3];
      v24 = *(a1 + 8);
      v20 = *a1;
      v21 = a1[1];
      sub_232E01530();

      sub_232E00C70();
      sub_232DB091C(v17, v18);
      result = sub_232E01BE0();
      v19 ^= result;
      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x238395FF0](v19);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_232DB04C4(__int128 *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  for (i = 0; v6; v9 ^= result)
  {
    v11 = i;
LABEL_9:
    v12 = *(a2 + 48);
    v13 = (v11 << 10) | (16 * __clz(__rbit64(v6)));
    v14 = *(v12 + v13);
    v15 = *(v12 + v13 + 8);
    v6 &= v6 - 1;
    v16 = (*(a2 + 56) + v13);
    v17 = *v16;
    v18 = v16[1];
    v22 = a1[2];
    v23 = a1[3];
    v24 = *(a1 + 8);
    v20 = *a1;
    v21 = a1[1];

    sub_232E01530();

    sub_232E01530();

    result = sub_232E01BE0();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x238395FF0](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_232DB0630(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_232E01590();
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
    v5 = MEMORY[0x2383959A0](15, a1 >> 16);
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

uint64_t sub_232DB06AC@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_232E01900();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
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

uint64_t sub_232DB06FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_232E00A30();
  v11 = result;
  if (result)
  {
    result = sub_232E00A60();
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

  sub_232E00A50();
  sub_232DAD698(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_232DB07B4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_232DB0970(a3, a4);
          return sub_232DAD8C8(v13, a2, a3, a4) & 1;
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

uint64_t sub_232DB091C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_232DB0970(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_232DB0AB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_232DB0B00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7358, &qword_232E061E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232DB0B68(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_232DB0C20(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_232E00A70();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_232E00A20();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_232DB0CA4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_232E00A70();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_232E00A20();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_232E00C20();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_232DB0D20(uint64_t result)
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
      v2 = sub_232E00A70();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_232E00A40();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_232E00C20();
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

void *sub_232DB0DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_232DAEF60(sub_232DB0E54, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_232DB0E28(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_232DB091C(a1, a2);
  }

  return a1;
}

uint64_t sub_232DB0E3C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_232DB0E98()
{
  result = qword_2814E8210;
  if (!qword_2814E8210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E8210);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserGuideClientState.IndexState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UserGuideClientState.IndexState(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_232DB1064(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_232DB10AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_232DB10F8(uint64_t a1)
{
  *(a1 + 8) = sub_232DB1128();
  result = sub_232DB117C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_232DB1128()
{
  result = qword_2814E8158;
  if (!qword_2814E8158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E8158);
  }

  return result;
}

unint64_t sub_232DB117C()
{
  result = qword_2814E8160;
  if (!qword_2814E8160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E8160);
  }

  return result;
}

unint64_t sub_232DB11D4()
{
  result = qword_27DDD7418;
  if (!qword_27DDD7418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7418);
  }

  return result;
}

unint64_t sub_232DB1228()
{
  result = qword_2814E8178;
  if (!qword_2814E8178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E8178);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_232DB12C4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7430, &qword_232E063E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  sub_232DB300C(MEMORY[0x277D84F90]);

  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_232DB1228();
  sub_232E01C00();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_232E01A40();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7428, &qword_232E063D8);
    v10[15] = 1;
    sub_232DB14CC(&qword_2814E7C58);
    sub_232E01A30();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_232DB14CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDD7428, &qword_232E063D8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserGuideClientState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UserGuideClientState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_232DB168C()
{
  result = qword_27DDD7438;
  if (!qword_27DDD7438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7438);
  }

  return result;
}

unint64_t sub_232DB16E4()
{
  result = qword_2814E8168;
  if (!qword_2814E8168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E8168);
  }

  return result;
}

unint64_t sub_232DB173C()
{
  result = qword_2814E8170;
  if (!qword_2814E8170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E8170);
  }

  return result;
}

uint64_t sub_232DB17D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(unint64_t, uint64_t), void (*a6)(void))
{
  v7 = v6;
  if (a1)
  {
    v12 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v6;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v6 = v24;
  }

  else
  {
    v17 = *v6;
    v18 = sub_232DD5634(a2, a3);
    LOBYTE(v17) = v19;

    if (v17)
    {
      v20 = *v7;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v7;
      v25 = *v7;
      if (!v21)
      {
        a6();
        v22 = v25;
      }

      v23 = *(*(v22 + 48) + 16 * v18 + 8);

      result = a5(v18, v22);
      *v7 = v22;
    }
  }

  return result;
}

void sub_232DB1A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_232E011D0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_232DB1CBC();
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = (a2 + 40);
    do
    {
      v15 = *v14;
      v23[0] = *(v14 - 1);
      v23[1] = v15;

      sub_232DB2004(v23, a3, a4, a1);

      v14 += 2;
      --v13;
    }

    while (v13);
  }

  v16 = *(a1 + OBJC_IVAR___TPSFullTipUsageEventManager_queue);
  *v12 = v16;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v17 = v16;
  LOBYTE(v16) = sub_232E011E0();
  (*(v9 + 8))(v12, v8);
  if (v16)
  {
    v18 = objc_opt_self();
    v19 = OBJC_IVAR___TPSFullTipUsageEventManager_tipIDToContextualInfoMap;
    swift_beginAccess();
    v20 = *(a1 + v19);
    sub_232DB3688(0, &qword_2814E7BF8, off_2789AEDC8);

    v21 = sub_232E01450();

    v22 = sub_232E014C0();
    [v18 archivedDataWithRootObject:v21 forKey:v22];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_232DB1CBC()
{
  v1 = sub_232E011D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR___TPSFullTipUsageEventManager_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_232E011E0();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if ((*(v0 + OBJC_IVAR___TPSFullTipUsageEventManager_initialized) & 1) == 0)
    {
      *(v0 + OBJC_IVAR___TPSFullTipUsageEventManager_initialized) = 1;
      sub_232DBB7F0();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_232E06510;
      *(inited + 32) = sub_232DB3688(0, &qword_2814E7C28, 0x277CBEAC0);
      *(inited + 40) = sub_232DB3688(0, &qword_2814E7BB0, 0x277CCACA8);
      *(inited + 48) = sub_232DB3688(0, &qword_2814E7BF8, off_2789AEDC8);
      sub_232DAA714(inited);
      swift_setDeallocating();
      v10 = objc_allocWithZone(MEMORY[0x277CBEB98]);
      v11 = sub_232E015C0();

      v12 = [v10 initWithArray_];

      v20[1] = 0;
      sub_232E016F0();

      v13 = objc_opt_self();
      v14 = sub_232E016E0();

      v15 = sub_232E014C0();
      v16 = [v13 unarchivedObjectOfClasses:v14 forKey:v15];

      sub_232E01850();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7450, &qword_232E06528);
      if (swift_dynamicCast())
      {
        v17 = v20[0];
      }

      else
      {
        v17 = sub_232DB324C(MEMORY[0x277D84F90], &qword_27DDD74A0, &qword_232E065A8);
      }

      v18 = OBJC_IVAR___TPSFullTipUsageEventManager_tipIDToContextualInfoMap;
      swift_beginAccess();
      v19 = *(v0 + v18);
      *(v0 + v18) = v17;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_232DB2004(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v5 = a1[1];
  if (a2)
  {
    if (*(a2 + 16))
    {
      v9 = sub_232DD5634(*a1, v5);
      if (v10)
      {
        if (a3)
        {
          if (*(a3 + 16))
          {
            v11 = (*(a2 + 56) + 16 * v9);
            v12 = *v11;
            v13 = v11[1];

            v14 = sub_232DD5634(v12, v13);
            v16 = v15;

            if (v16)
            {
              v30 = *(*(a3 + 56) + 8 * v14);
              swift_unknownObjectRetain();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74A8, &unk_232E065B0);
              if (swift_dynamicCast())
              {
                sub_232DC8988(v28);

                v17 = objc_allocWithZone(TPSContextualInfo);
                v18 = sub_232E01450();

                v19 = [v17 initWithDictionary_];

                if (v19)
                {
                  v20 = [v19 usageEvents];
                  if (v20)
                  {
                    v21 = v20;
                    sub_232DB3688(0, &qword_2814E7BE0, 0x277D71710);
                    v22 = sub_232E015D0();

                    v23 = v22 >> 62 ? sub_232E019C0() : *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);

                    if (v23)
                    {
                      v24 = OBJC_IVAR___TPSFullTipUsageEventManager_tipIDToContextualInfoMap;
                      swift_beginAccess();

                      v25 = v19;
                      v26 = *(a4 + v24);
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v29 = *(a4 + v24);
                      *(a4 + v24) = 0x8000000000000000;
                      sub_232DF4358(v25, v6, v5, isUniquelyReferenced_nonNull_native);

                      *(a4 + v24) = v29;
                      swift_endAccess();

                      return;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  swift_beginAccess();

  sub_232DB17D4(0, v6, v5, sub_232DF4358, sub_232DC5490, sub_232DC296C);
  swift_endAccess();
}

uint64_t sub_232DB22F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void __swiftcall TPSFullTipUsageEventManager.contextualInfo(for:)(TPSContextualInfo_optional *__return_ptr retstr, Swift::String a2)
{
  v3 = *(v2 + OBJC_IVAR___TPSFullTipUsageEventManager_queue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7448, &qword_232E06520);
  sub_232E01770();
}

uint64_t sub_232DB24B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_232DB1CBC();
  v8 = OBJC_IVAR___TPSFullTipUsageEventManager_tipIDToContextualInfoMap;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (*(v9 + 16) && (v10 = sub_232DD5634(a2, a3), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    v13 = v12;
  }

  else
  {
    v12 = 0;
  }

  *a4 = v12;
  return swift_endAccess();
}

uint64_t TPSFullTipUsageEventManager.contextualInfoMap()()
{
  v1 = *(v0 + OBJC_IVAR___TPSFullTipUsageEventManager_queue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7450, &qword_232E06528);
  sub_232E01770();
  return v3;
}

uint64_t sub_232DB26B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_232DB1CBC();
  v4 = OBJC_IVAR___TPSFullTipUsageEventManager_tipIDToContextualInfoMap;
  swift_beginAccess();
  *a2 = *(a1 + v4);
}

Swift::Void __swiftcall TPSFullTipUsageEventManager.removeUsageEventCache()()
{
  v1 = *&v0[OBJC_IVAR___TPSFullTipUsageEventManager_queue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_232DB2B48;
  *(v3 + 24) = v2;
  v7[4] = sub_232DB3708;
  v7[5] = v3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_232DB231C;
  v7[3] = &block_descriptor_13;
  v4 = _Block_copy(v7);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_232DB2964(uint64_t a1)
{
  v2 = sub_232E011D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = OBJC_IVAR___TPSFullTipUsageEventManager_tipIDToContextualInfoMap;
  swift_beginAccess();
  v8 = *(a1 + v7);
  *(a1 + v7) = MEMORY[0x277D84F98];

  v9 = *(a1 + OBJC_IVAR___TPSFullTipUsageEventManager_queue);
  *v6 = v9;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v10 = v9;
  LOBYTE(v9) = sub_232E011E0();
  (*(v3 + 8))(v6, v2);
  if (v9)
  {
    v11 = objc_opt_self();
    v12 = *(a1 + v7);
    sub_232DB3688(0, &qword_2814E7BF8, off_2789AEDC8);

    v13 = sub_232E01450();

    v14 = sub_232E014C0();
    [v11 archivedDataWithRootObject:v13 forKey:v14];
  }

  else
  {
    __break(1u);
  }
}

id TPSFullTipUsageEventManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TPSFullTipUsageEventManager.init()()
{
  ObjectType = swift_getObjectType();
  v1 = sub_232E01750();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v3 = sub_232E011C0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_232E01760();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR___TPSFullTipUsageEventManager_tipIDToContextualInfoMap;
  v11 = MEMORY[0x277D84F90];
  *&v0[v10] = sub_232DB324C(MEMORY[0x277D84F90], &qword_27DDD74A0, &qword_232E065A8);
  v14 = OBJC_IVAR___TPSFullTipUsageEventManager_queue;
  sub_232DB3688(0, &qword_2814E7C00, 0x277D85C78);
  (*(v6 + 104))(v9, *MEMORY[0x277D85268], v5);
  sub_232E011A0();
  v17 = v11;
  sub_232DB3348();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7460, &unk_232E06530);
  sub_232DB33A0();
  sub_232E01860();
  *&v0[v14] = sub_232E01790();
  v0[OBJC_IVAR___TPSFullTipUsageEventManager_initialized] = 0;
  v16.receiver = v0;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_init);
}

id TPSFullTipUsageEventManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_232DB300C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7480, &qword_232E06588);
    v3 = sub_232E01A00();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_232DD5634(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_232DB3120(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7488, &unk_232E06590);
    v3 = sub_232E01A00();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_232DB0970(v7, v8);
      result = sub_232DD5634(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_232DB324C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_232E01A00();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_232DD5634(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_232DB3348()
{
  result = qword_2814E7C08;
  if (!qword_2814E7C08)
  {
    sub_232E01750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E7C08);
  }

  return result;
}

unint64_t sub_232DB33A0()
{
  result = qword_2814E7C30;
  if (!qword_2814E7C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDD7460, &unk_232E06530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E7C30);
  }

  return result;
}

unint64_t sub_232DB3428(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7490, &unk_232E07090);
    v3 = sub_232E01A00();
    v4 = a1 + 32;

    while (1)
    {
      sub_232DAB3CC(v4, &v13, &qword_27DDD7498, &qword_232E065A0);
      v5 = v13;
      v6 = v14;
      result = sub_232DD5634(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_232D734CC(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_232DB3558(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7470, &qword_232E06578);
    v3 = sub_232E01A00();
    v4 = a1 + 32;

    while (1)
    {
      sub_232DAB3CC(v4, &v13, &qword_27DDD7478, &qword_232E06580);
      v5 = v13;
      v6 = v14;
      result = sub_232DD5634(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_232D734CC(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_232DB3688(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_232DB3724()
{
  sub_232E01BB0();
  MEMORY[0x238395FF0](0);
  return sub_232E01BE0();
}

uint64_t sub_232DB3790()
{
  sub_232E01BB0();
  MEMORY[0x238395FF0](0);
  return sub_232E01BE0();
}

uint64_t sub_232DB37E0(void *a1, uint64_t a2)
{
  v25 = a2;
  v23 = sub_232E00B30();
  v4 = *(v23 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_232E00BE0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v2;
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  v13 = a1;
  v14 = [v13 identifier];
  v15 = sub_232E014D0();
  v17 = v16;

  v26 = v15;
  v27 = v17;
  v18 = v23;
  (*(v4 + 104))(v7, *MEMORY[0x277CC91C0], v23);
  sub_232DB528C();
  v19 = v25;
  sub_232E00BD0();

  (*(v9 + 8))(v19, v8);
  (*(v4 + 8))(v7, v18);

  v20 = v24;
  (*(v9 + 32))(v24 + OBJC_IVAR____TtC10TipsDaemon16ThumbnailFetcher_storageLocation, v12, v8);
  return v20;
}

uint64_t sub_232DB3A14(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_232E012A0();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7300, &qword_232E06830);
  v3[11] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v9 = sub_232E00BE0();
  v3[13] = v9;
  v10 = *(v9 - 8);
  v3[14] = v10;
  v11 = *(v10 + 64) + 15;
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DB3B70, 0, 0);
}

uint64_t sub_232DB3B70()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[7];
  sub_232DB4D9C(v0[6], v3);
  v5 = (*(v2 + 48))(v3, 1, v1);
  v6 = v0[13];
  v7 = v0[14];
  if (v5 == 1)
  {
    v8 = v0[9];
    v9 = v0[10];
    v10 = v0[7];
    v11 = v0[6];
    v45 = v0[8];
    v46 = v0[5];
    sub_232DAB434(v0[12], &qword_27DDD7300, &qword_232E06830);
    sub_232E01270();
    sub_232E018F0();
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    MEMORY[0x238395970](0xD00000000000002CLL, 0x8000000232E0CA80);
    v12 = [*(v10 + 16) identifier];
    v13 = sub_232E014D0();
    v15 = v14;

    MEMORY[0x238395970](v13, v15);

    MEMORY[0x238395970](10272, 0xE200000000000000);
    v0[4] = v11;
    type metadata accessor for TPSAssetsConfigurationUserInterfaceStyle(0);
    sub_232E019A0();
    MEMORY[0x238395970](41, 0xE100000000000000);
    v16 = v0[2];
    v17 = v0[3];
    sub_232E01380();

    (*(v8 + 8))(v9, v45);
    (*(v7 + 56))(v46, 1, 1, v6);
LABEL_5:
    v33 = v0[15];
    v34 = v0[12];
    v35 = v0[10];

    v36 = v0[1];

    return v36();
  }

  (*(v7 + 32))(v0[15], v0[12], v0[13]);
  v18 = [objc_opt_self() defaultManager];
  sub_232E00BC0();
  v19 = sub_232E014C0();

  v20 = [v18 fileExistsAtPath_];

  v21 = v0[15];
  if (v20)
  {
    v22 = v0[13];
    v23 = v0[14];
    v25 = v0[9];
    v24 = v0[10];
    v26 = v0[7];
    v47 = v0[8];
    v27 = v0[5];
    sub_232E01270();
    sub_232E018F0();

    v28 = [*(v26 + 16) identifier];
    v29 = sub_232E014D0();
    v31 = v30;

    MEMORY[0x238395970](v29, v31);

    MEMORY[0x238395970](544497952, 0xE400000000000000);
    v32 = sub_232E00B50();
    MEMORY[0x238395970](v32);

    sub_232E01370();

    (*(v25 + 8))(v24, v47);
    (*(v23 + 16))(v27, v21, v22);
    (*(v23 + 56))(v27, 0, 1, v22);
    (*(v23 + 8))(v21, v22);
    goto LABEL_5;
  }

  v39 = v0[6];
  v38 = v0[7];
  v40 = swift_task_alloc();
  v0[16] = v40;
  v40[2] = v38;
  v40[3] = v39;
  v40[4] = v21;
  v41 = *(MEMORY[0x277D85A40] + 4);
  v42 = swift_task_alloc();
  v0[17] = v42;
  *v42 = v0;
  v42[1] = sub_232DB404C;
  v43 = v0[11];
  v44 = v0[5];

  return MEMORY[0x2822008A0](v44, 0, 0, 0xD000000000000017, 0x8000000232E0CAB0, sub_232DB52E0, v40, v43);
}

uint64_t sub_232DB404C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_232DB41FC;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_232DB4168;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_232DB4168()
{
  (*(v0[14] + 8))(v0[15], v0[13]);
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

uint64_t sub_232DB41FC()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  v6 = v0[10];

  (*(v4 + 8))(v2, v3);

  v7 = v0[1];
  v8 = v0[18];

  return v7();
}

void sub_232DB42AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a1;
  v40 = a4;
  v41 = sub_232E00BE0();
  v6 = *(v41 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v41);
  v38 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74B8, &unk_232E06620);
  v37 = *(v8 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - v10;
  v12 = [*(a2 + 16) fullContentAssets];
  v13 = [*(a2 + 16) language];
  if (!v13)
  {
    sub_232E014D0();
    v13 = sub_232E014C0();
  }

  v14 = [*(a2 + 16) assetFileInfoManager];
  v15 = [objc_allocWithZone(MEMORY[0x277D716B0]) initWithAssets:v12 language:v13 userInterfaceStyle:a3 assetFileInfoManager:v14];

  v43 = [v15 cacheIdentifierForType_];
  v16 = objc_opt_self();
  v36 = v15;
  v42 = [v16 assetPathFromAssetConfiguration:v15 type:2];
  sub_232DB52EC();
  v35 = [swift_getObjCClassFromMetadata() sharedInstance];
  if (v35)
  {
    v17 = *MEMORY[0x277CCA790];
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = v37;
    (*(v37 + 16))(v11, v39, v8);
    v20 = *(v6 + 16);
    v39 = a2;
    v21 = v8;
    v22 = v38;
    v23 = v41;
    v20(v38, v40, v41);
    v24 = (*(v19 + 80) + 24) & ~*(v19 + 80);
    v25 = (v9 + *(v6 + 80) + v24) & ~*(v6 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v18;
    (*(v19 + 32))(v26 + v24, v11, v21);
    (*(v6 + 32))(v26 + v25, v22, v23);
    aBlock[4] = sub_232DB5338;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_232DDD99C;
    aBlock[3] = &block_descriptor_0;
    v27 = _Block_copy(aBlock);

    v28 = v35;
    v30 = v42;
    v29 = v43;
    LODWORD(v31) = v17;
    v32 = [v35 formattedDataForPath:v42 identifier:v43 attributionIdentifier:0 priority:v27 completionHandler:v31];

    _Block_release(v27);
    v33 = *(v39 + 24);
    *(v39 + 24) = v32;
  }

  else
  {

    __break(1u);
  }
}

uint64_t sub_232DB4710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v56 = a11;
  v13 = sub_232E012A0();
  v54 = *(v13 - 8);
  v55 = v13;
  v14 = *(v54 + 64);
  v15 = (MEMORY[0x28223BE20])();
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v52 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7300, &qword_232E06830);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v52 - v25;
  v27 = sub_232E00BE0();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v52 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v33 = Strong;
    sub_232DB54D8(a3, &v57);
    if (v59)
    {
      v34 = swift_dynamicCast();
      v53 = *(v28 + 56);
      v53(v26, v34 ^ 1u, 1, v27);
      if ((*(v28 + 48))(v26, 1, v27) != 1)
      {
        (*(v28 + 32))(v31, v26, v27);
        sub_232DB5938();
        sub_232E01270();
        v57 = 0;
        v58 = 0xE000000000000000;
        sub_232E018F0();

        v57 = 0xD000000000000012;
        v58 = 0x8000000232E0CB60;
        v47 = sub_232E00B50();
        MEMORY[0x238395970](v47);

        MEMORY[0x238395970](0x20726F6620, 0xE500000000000000);
        v48 = [*(v33 + 16) identifier];
        v49 = sub_232E014D0();
        v52 = a12;
        v51 = v50;

        MEMORY[0x238395970](v49, v51);

        sub_232E01370();

        (*(v54 + 8))(v19, v55);
        (*(v28 + 16))(v24, v52, v27);
        v53(v24, 0, 1, v27);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74B8, &unk_232E06620);
        sub_232E01650();

        return (*(v28 + 8))(v31, v27);
      }
    }

    else
    {

      sub_232DAB434(&v57, &qword_27DDD74C0, &qword_232E07DF0);
      (*(v28 + 56))(v26, 1, 1, v27);
    }

    sub_232DAB434(v26, &qword_27DDD7300, &qword_232E06830);
  }

  v35 = 0x6E776F6E6B6E75;
  sub_232E01270();
  v57 = 0;
  v58 = 0xE000000000000000;
  sub_232E018F0();

  v60 = 0xD00000000000001DLL;
  v61 = 0x8000000232E0CB40;
  swift_beginAccess();
  v36 = swift_weakLoadStrong();
  if (v36)
  {
    v37 = *(v36 + 16);

    v38 = [v37 identifier];

    v39 = sub_232E014D0();
    v41 = v40;
  }

  else
  {
    v41 = 0xE700000000000000;
    v39 = 0x6E776F6E6B6E75;
  }

  MEMORY[0x238395970](v39, v41);

  MEMORY[0x238395970](2108704, 0xE300000000000000);
  if (a9)
  {
    swift_getErrorValue();
    v35 = sub_232E01B50();
    v43 = v42;
  }

  else
  {
    v43 = 0xE700000000000000;
  }

  MEMORY[0x238395970](v35, v43);

  sub_232E01380();

  (*(v54 + 8))(v17, v55);
  if (a9)
  {
    v44 = a9;
  }

  else
  {
    sub_232DB5484();
    v44 = swift_allocError();
  }

  v60 = v44;
  v45 = a9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74B8, &unk_232E06620);
  return sub_232E01640();
}

uint64_t sub_232DB4D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_232E00B30();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_232E00BE0();
  v27 = *(v9 - 8);
  v10 = *(v27 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [*(v2 + 16) fullContentAssets];
  v14 = [*(v2 + 16) language];
  if (!v14)
  {
    sub_232E014D0();
    v14 = sub_232E014C0();
  }

  v15 = [*(v2 + 16) assetFileInfoManager];
  v16 = [objc_allocWithZone(MEMORY[0x277D716B0]) initWithAssets:v13 language:v14 userInterfaceStyle:a1 assetFileInfoManager:v15];

  v17 = [v16 cacheIdentifierForType_];
  if (v17)
  {
    v18 = v17;
    v19 = sub_232E014D0();
    v21 = v20;

    (*(v27 + 16))(v12, v2 + OBJC_IVAR____TtC10TipsDaemon16ThumbnailFetcher_storageLocation, v9);
    v28 = v19;
    v29 = v21;
    (*(v5 + 104))(v8, *MEMORY[0x277CC91D0], v4);
    sub_232DB528C();
    v22 = v26;
    sub_232E00BD0();

    (*(v5 + 8))(v8, v4);
    (*(v27 + 8))(v12, v9);

    return (*(v27 + 56))(v22, 0, 1, v9);
  }

  else
  {

    v24 = v26;
    v25 = *(v27 + 56);

    return v25(v24, 1, 1, v9);
  }
}

uint64_t sub_232DB50E4()
{
  v1 = OBJC_IVAR____TtC10TipsDaemon16ThumbnailFetcher_storageLocation;
  v2 = sub_232E00BE0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for ThumbnailFetcher()
{
  result = qword_2814E8430;
  if (!qword_2814E8430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_232DB51E4()
{
  result = sub_232E00BE0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_232DB528C()
{
  result = qword_2814E7C68;
  if (!qword_2814E7C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E7C68);
  }

  return result;
}

unint64_t sub_232DB52EC()
{
  result = qword_2814E7BE8;
  if (!qword_2814E7BE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814E7BE8);
  }

  return result;
}

uint64_t sub_232DB5338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74B8, &unk_232E06620) - 8);
  v17 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v18 = *(v16 + 64);
  v19 = *(sub_232E00BE0() - 8);
  return sub_232DB4710(a1, a2, a3, a4, a5, a6, a7, a8, a9, *(v9 + 16), v9 + v17, v9 + ((v17 + v18 + *(v19 + 80)) & ~*(v19 + 80)));
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_232DB5484()
{
  result = qword_2814E8448;
  if (!qword_2814E8448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E8448);
  }

  return result;
}

uint64_t sub_232DB54D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74C0, &qword_232E07DF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232DB5548(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v31[2] = *MEMORY[0x277D85DE8];
  v3 = sub_232E00B30();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_232E00BE0();
  v8 = *(v29 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x28223BE20](v29);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (v13)
  {
    v27 = objc_opt_self();
    v26 = *MEMORY[0x277CC91D0];
    v25 = *(v4 + 104);
    v28 = v4 + 104;
    v14 = (v4 + 8);
    v15 = (v8 + 8);
    v16 = (a1 + 40);
    do
    {
      v18 = *v16;
      v31[0] = *(v16 - 1);
      v31[1] = v18;
      v25(v7, v26, v3);
      sub_232DB528C();

      sub_232E00BD0();
      (*v14)(v7, v3);

      v19 = [v27 defaultManager];
      v20 = sub_232E00B70();
      v31[0] = 0;
      v21 = [v19 removeItemAtURL:v20 error:v31];

      if (v21)
      {
        v17 = v31[0];
      }

      else
      {
        v22 = v31[0];
        v23 = sub_232E00AE0();

        swift_willThrow();
      }

      result = (*v15)(v12, v29);
      v16 += 2;
      --v13;
    }

    while (v13);
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_232DB5818()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_232E00B70();
  v9[0] = 0;
  v2 = [v0 removeItemAtURL:v1 error:v9];

  v3 = v9[0];
  if (v2)
  {
    v4 = *MEMORY[0x277D85DE8];

    v5 = v3;
  }

  else
  {
    v6 = v9[0];
    v7 = sub_232E00AE0();

    swift_willThrow();
    v8 = *MEMORY[0x277D85DE8];
  }
}

void sub_232DB5938()
{
  v24[1] = *MEMORY[0x277D85DE8];
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7300, &qword_232E06830) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v3 = &v22 - v2;
  v23 = sub_232E00BE0();
  v4 = *(v23 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultManager];
  sub_232E00BC0();
  v9 = sub_232E014C0();

  v10 = [v8 fileExistsAtPath_];

  if (v10)
  {
    sub_232E01740();
    if (!v0)
    {
      sub_232DAB434(v3, &qword_27DDD7300, &qword_232E06830);
    }
  }

  else
  {
    sub_232E00BA0();
    v11 = sub_232E00B70();
    v24[0] = 0;
    v12 = [v8 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:v24];

    v13 = v24[0];
    if (!v12)
    {
      goto LABEL_8;
    }

    v14 = v24[0];
    v15 = sub_232E00B70();
    v16 = sub_232E00B70();
    v24[0] = 0;
    v17 = [v8 copyItemAtURL:v15 toURL:v16 error:v24];

    v13 = v24[0];
    if (!v17)
    {
LABEL_8:
      v20 = v13;
      sub_232E00AE0();

      swift_willThrow();
      (*(v4 + 8))(v7, v23);
      goto LABEL_9;
    }

    v18 = *(v4 + 8);
    v19 = v24[0];
    v18(v7, v23);
  }

LABEL_9:
  v21 = *MEMORY[0x277D85DE8];
}

uint64_t getEnumTagSinglePayload for ThumbnailFetcher.AssetLoadError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ThumbnailFetcher.AssetLoadError(_WORD *result, int a2, int a3)
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

unint64_t sub_232DB5D0C()
{
  result = qword_27DDD74C8;
  if (!qword_27DDD74C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD74C8);
  }

  return result;
}

id AppleFitnessPlusSubscriptionValidation.__allocating_init(targetContext:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_232E01450();

  v3 = [v1 initWithTargetContext_];

  return v3;
}

id AppleFitnessPlusSubscriptionValidation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleFitnessPlusSubscriptionValidation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_232DB5EF4(uint64_t a1, uint64_t a2, int a3)
{
  v31 = a3;
  v28 = a2;
  v29 = a1;
  v30 = sub_232E00F60();
  v3 = *(v30 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v30);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v26 = sub_232E00FA0();
  v10 = *(v26 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v26);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_232E00F80();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_232E00FC0();
  v19 = *(v27 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v27);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x277D0E2B8], v26);

  sub_232E00F70();
  sub_232E00FB0();
  (*(v15 + 8))(v18, v14);
  sub_232E00F90();
  v23 = v30;
  (*(v3 + 104))(v7, *MEMORY[0x277D0E278], v30);
  LODWORD(v13) = sub_232E00F50();
  v24 = *(v3 + 8);
  v24(v7, v23);
  v24(v9, v23);
  (*(v19 + 8))(v22, v27);
  return ((v13 ^ v31) & 1) == 0;
}

id GenerativeModelsAvailabilityValidation.__allocating_init(targetContext:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_232E01450();

  v3 = [v1 initWithTargetContext_];

  return v3;
}

id GenerativeModelsAvailabilityValidation.init(targetContext:)()
{
  v1 = sub_232E01450();

  v4.receiver = v0;
  v4.super_class = type metadata accessor for GenerativeModelsAvailabilityValidation();
  v2 = objc_msgSendSuper2(&v4, sel_initWithTargetContext_, v1);

  return v2;
}

id GenerativeModelsAvailabilityValidation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GenerativeModelsAvailabilityValidation.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativeModelsAvailabilityValidation();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GenerativeModelsAvailabilityValidation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativeModelsAvailabilityValidation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_232DB6568(void *a1, uint64_t a2)
{
  v4 = sub_232E012A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_232E00E30();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232E00E10();
  v14 = sub_232E00E20();
  v16 = v15;
  (*(v10 + 8))(v13, v9);
  v17 = sub_232DB5EF4(v14, v16, [a1 BOOLValue]);

  sub_232E01290();
  v18 = 0xE000000000000000;
  v32[0] = 0;
  v32[1] = 0xE000000000000000;
  sub_232E018F0();
  v19 = [a1 name];
  if (v19)
  {
    v20 = v19;
    v21 = sub_232E014D0();
    v18 = v22;
  }

  else
  {
    v21 = 0;
  }

  MEMORY[0x238395970](v21, v18);

  MEMORY[0x238395970](0xD000000000000012, 0x8000000232E0CC20);
  v23 = [a1 targetContext];
  if (v23)
  {
    v24 = v23;
    sub_232E01470();
  }

  else
  {
    sub_232DB3428(MEMORY[0x277D84F90]);
  }

  v25 = sub_232E01480();
  v27 = v26;

  MEMORY[0x238395970](v25, v27);

  MEMORY[0x238395970](0x3A64696C6156202ELL, 0xE900000000000020);
  v28 = v17;
  if (v28)
  {
    v29 = 1702195828;
  }

  else
  {
    v29 = 0x65736C6166;
  }

  if (v28)
  {
    v30 = 0xE400000000000000;
  }

  else
  {
    v30 = 0xE500000000000000;
  }

  MEMORY[0x238395970](v29, v30);

  sub_232E01350();

  (*(v5 + 8))(v8, v4);
  return (*(a2 + 16))(a2, v28, 0);
}