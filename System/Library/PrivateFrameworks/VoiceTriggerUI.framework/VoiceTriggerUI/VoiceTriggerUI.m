uint64_t sub_2728BEF00()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2728BEF84()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2728BEFC0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2728BF008()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2728BF050()
{

  return MEMORY[0x2821FE8E8](v0, 36, 7);
}

uint64_t sub_2728BF088()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2728BF0C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2728BF100()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2728BF268(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BDB0, &qword_272935558);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2728BF328(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_27292B2D4(v2, v3);
}

uint64_t sub_2728BF3C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BE00, &unk_272935620);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_2728BF47C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BE00, &unk_272935620);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2728BF578(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BF28, &qword_272935AC8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB70, &qword_272934BF0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_2728BF6B4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BF28, &qword_272935AC8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB70, &qword_272934BF0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2728BF80C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27292DAC4();
  *a1 = result;
  return result;
}

uint64_t sub_2728BF838(uint64_t *a1)
{
  v1 = *a1;

  return sub_27292DAD4();
}

uint64_t sub_2728BF884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27292D914();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2728BF944(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_27292D914();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2728BFA08()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2728BFA40()
{
  v1 = (type metadata accessor for GMIntroIPadAnimationView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (v3 + *(*v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_27292D914();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(v5 + v1[7] + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_2728BFBC0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_27292E1E4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2728BFC6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_27292E1E4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2728BFD14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27292DAA4();
  *a1 = result;
  return result;
}

uint64_t sub_2728BFD68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27292DA84();
  *a1 = result;
  return result;
}

uint64_t sub_2728BFD94(uint64_t *a1)
{
  v1 = *a1;

  return sub_27292DA94();
}

void sub_2728C2708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2728C3248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2728C3694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2728C3C70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_2728C3EA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_2728C4120(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_2728C47D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_2728C4B6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2728C5614(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_2728C6B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2728C7830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2728C7B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2728C83D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id a43)
{
  objc_destroyWeak((v43 + 48));
  objc_destroyWeak(&a43);
  objc_destroyWeak((v44 - 184));
  _Block_object_dispose((v44 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_2728C96BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2728CAE3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2728CB558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2728CC004(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2728CC7D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2728CCCB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2728CE23C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2728CE4DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2728CFB2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 96));
  _Unwind_Resume(a1);
}

void sub_2728CFEA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2728D0100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2728D3978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2728D4544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2728D4F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2728D5C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2728D6558(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v4 - 184));
  _Block_object_dispose((v4 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_2728D7400(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_2728D7BF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_2728D8AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2728D9620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2728DA008(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2728DA6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2728DA7D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2728DB25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2728DBFA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2728DC1A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2728E25A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2728E31A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void VTUILogInitIfNeeded()
{
  if (VTUILogInitIfNeeded_once != -1)
  {
    VTUILogInitIfNeeded_cold_1();
  }
}

void __VTUILogInitIfNeeded_block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  NSLog(&cfstr_InitializingVo.isa);
  v0 = os_log_create(VTUILoggingSubsystem, kVTUILoggingContextFramework);
  v1 = VTUILogContextFacility;
  VTUILogContextFacility = v0;

  v2 = VTUILogContextFacility;
  if (os_log_type_enabled(VTUILogContextFacility, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "VTUILogInitIfNeeded_block_invoke";
    _os_log_impl(&dword_2728BC000, v2, OS_LOG_TYPE_DEFAULT, "%s ::: VoiceTriggerUI logging initialized", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void sub_2728EB3FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2728EEE20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2728EF150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2728F47B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_2728F51A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2728F7B7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2728F7F88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2728FA560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2728FCB5C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2728FDB3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2728FDE48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t GenerativeModelsAvailability.unavailabilityReasons.getter()
{
  v0 = sub_27292D704();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_27292D6E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27292D744();
  if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D0DFB0])
  {
    (*(v1 + 96))(v4, v0);
    (*(v6 + 32))(v9, v4, v5);
    v10 = sub_27292D6D4();
    (*(v6 + 8))(v9, v5);
    return v10;
  }

  else
  {
    (*(v1 + 8))(v4, v0);
    return MEMORY[0x277D84FA0];
  }
}

BOOL GenerativeModelsAvailability.available.getter()
{
  v0 = sub_27292D704();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27292D744();
  v5 = (*(v1 + 88))(v4, v0) == *MEMORY[0x277D0E278];
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_272905344()
{
  v0 = sub_27292D704();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_27292D6E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27292D744();
  if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D0DFB0])
  {
    (*(v1 + 96))(v4, v0);
    (*(v6 + 32))(v9, v4, v5);
    v10 = sub_27292D6D4();
    (*(v6 + 8))(v9, v5);
    return v10;
  }

  else
  {
    (*(v1 + 8))(v4, v0);
    return MEMORY[0x277D84FA0];
  }
}

BOOL sub_272905528()
{
  v0 = sub_27292D704();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27292D744();
  v5 = (*(v1 + 88))(v4, v0) == *MEMORY[0x277D0E278];
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_27290561C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14VoiceTriggerUI23GMAvailabilityViewModel_provider;
  swift_beginAccess();
  v5 = sub_27292D784();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_2729056A8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_27292D784();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC14VoiceTriggerUI23GMAvailabilityViewModel_provider;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_2729057C0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14VoiceTriggerUI23GMAvailabilityViewModel_provider;
  swift_beginAccess();
  v4 = sub_27292D784();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

id GMAvailabilityViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GMAvailabilityViewModel.init()()
{
  v1 = sub_27292D764();
  v26 = *(v1 - 8);
  v27 = v1;
  v2 = *(v26 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_27292D6B4();
  v5 = *(v24 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_27292D734();
  v9 = *(v25 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_27292D784();
  v13 = *(v23 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20]();
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC14VoiceTriggerUI23GMAvailabilityViewModel_analyticsProvider;
  *(v0 + v17) = [objc_allocWithZone(type metadata accessor for GMAnalyticsProvider()) init];
  sub_27292D694();
  sub_27292D6A4();
  (*(v5 + 8))(v8, v24);
  (*(v26 + 104))(v4, *MEMORY[0x277D0E2B8], v27);
  sub_27292D714();
  sub_27292D774();
  (*(v9 + 8))(v12, v25);
  v18 = v22;
  (*(v13 + 32))(&v22[OBJC_IVAR____TtC14VoiceTriggerUI23GMAvailabilityViewModel_provider], v16, v23);
  v19 = [objc_opt_self() sharedStyle];
  *&v18[OBJC_IVAR____TtC14VoiceTriggerUI23GMAvailabilityViewModel_vtuiStyle] = v19;
  v20 = type metadata accessor for GMAvailabilityViewModel();
  v28.receiver = v18;
  v28.super_class = v20;
  return objc_msgSendSuper2(&v28, sel_init);
}

uint64_t type metadata accessor for GMAvailabilityViewModel()
{
  result = qword_28089BA38;
  if (!qword_28089BA38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_272905CA4()
{
  if (_s14VoiceTriggerUI23GMAvailabilityViewModelC7isBuddySbvgZ_0())
  {
    return 1;
  }

  else
  {
    return [*(v0 + OBJC_IVAR____TtC14VoiceTriggerUI23GMAvailabilityViewModel_vtuiStyle) isBuddyOrFollowUp];
  }
}

uint64_t sub_272905D30()
{
  v0 = sub_27292E224();
  v1 = MGGetBoolAnswer();

  return v1;
}

uint64_t sub_272905DC8()
{
  v0 = sub_27292E224();
  v1 = MGGetBoolAnswer();

  return v1 ^ 1u;
}

uint64_t sub_272905E14()
{
  v52 = sub_27292D704();
  v1 = *(v52 - 8);
  v2 = *(v1 + 64);
  v3 = (MEMORY[0x28223BE20])();
  v49 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v40 - v5;
  v7 = sub_27292D6E4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v41 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - v12;
  v14 = sub_27292D784();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v47 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v40 - v19;
  v21 = OBJC_IVAR____TtC14VoiceTriggerUI23GMAvailabilityViewModel_provider;
  swift_beginAccess();
  v50 = v15;
  v51 = v14;
  v22 = *(v15 + 16);
  v48 = v0;
  v46 = v22;
  v22(v20, v0 + v21, v14);
  sub_27292D744();
  v23 = v52;
  v45 = *(v1 + 88);
  v24 = v45(v6, v52);
  v44 = *MEMORY[0x277D0DFB0];
  v42 = v8;
  v43 = v7;
  if (v24 == v44)
  {
    (*(v1 + 96))(v6, v23);
    (*(v8 + 32))(v13, v6, v7);
    v25 = sub_27292D6D4();
    (*(v8 + 8))(v13, v7);
  }

  else
  {
    (*(v1 + 8))(v6, v23);
    v25 = MEMORY[0x277D84FA0];
  }

  v26 = v51;
  v27 = *(v50 + 8);
  v27(v20, v51);
  v28 = *(v25 + 16);

  if (!v28)
  {
    return 1;
  }

  v29 = v47;
  v46(v47, v48 + v21, v26);
  v30 = v49;
  sub_27292D744();
  v31 = v52;
  v32 = v45(v30, v52);
  if (v32 == v44)
  {
    (*(v1 + 96))(v30, v31);
    v33 = v41;
    v34 = v42;
    v35 = v30;
    v36 = v43;
    (*(v42 + 32))(v41, v35, v43);
    v37 = sub_27292D6D4();
    (*(v34 + 8))(v33, v36);
  }

  else
  {
    (*(v1 + 8))(v30, v31);
    v37 = MEMORY[0x277D84FA0];
  }

  v27(v29, v26);
  v38 = sub_272907194(v37);

  return v38;
}

uint64_t static GMAvailabilityViewModel.shouldShowGM()()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = sub_27292D754();
  v1 = *MEMORY[0x277D85DE8];
  return v0 & 1;
}

uint64_t sub_27290638C(uint64_t a1, uint64_t a2)
{
  v3 = sub_27292D6C4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_272907CF0(&qword_28089BA88, MEMORY[0x277D0E218]), v9 = sub_27292E204(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_272907CF0(&qword_28089BA90, MEMORY[0x277D0E218]);
      v17 = sub_27292E214();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_2729065B0(unint64_t a1)
{
  if (a1 - 2 < 3 || a1 <= 1)
  {
    return 0xD00000000000001FLL;
  }

  type metadata accessor for VTUIGMEnrollmentType(0);
  result = sub_27292E4A4();
  __break(1u);
  return result;
}

uint64_t sub_272906784(uint64_t a1)
{
  v3 = sub_272907E8C;
  result = _s14VoiceTriggerUI23GMAvailabilityViewModelC7isBuddySbvgZ_0();
  if (result)
  {
    v5 = 0;
  }

  else if (a1 == 1)
  {
    v3 = sub_272907E8C;
    v5 = 2;
  }

  else
  {
    if (a1)
    {
      return result;
    }

    v3 = sub_2729078E8;
    v5 = 1;
  }

  v6 = *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI23GMAvailabilityViewModel_analyticsProvider);
  v8 = *&v6[OBJC_IVAR____TtC14VoiceTriggerUI19GMAnalyticsProvider_sendFunction];
  v7 = *&v6[OBJC_IVAR____TtC14VoiceTriggerUI19GMAnalyticsProvider_sendFunction + 8];
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v6;
  v10 = v6;
  v8(0xD00000000000002CLL, 0x800000027293C500, v3, v9);
}

uint64_t sub_272906984(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (result == 1)
  {
    v8 = *(v4 + OBJC_IVAR____TtC14VoiceTriggerUI23GMAvailabilityViewModel_analyticsProvider);
    v10 = *&v8[OBJC_IVAR____TtC14VoiceTriggerUI19GMAnalyticsProvider_sendFunction];
    v9 = *&v8[OBJC_IVAR____TtC14VoiceTriggerUI19GMAnalyticsProvider_sendFunction + 8];
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = v8;
    v12 = v8;
    v10(0xD00000000000002CLL, 0x800000027293C500, a4, v11);
  }

  return result;
}

uint64_t sub_272906A68(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a3 == 1)
  {
    v9 = *(result + OBJC_IVAR____TtC14VoiceTriggerUI23GMAvailabilityViewModel_analyticsProvider);
    v11 = *&v9[OBJC_IVAR____TtC14VoiceTriggerUI19GMAnalyticsProvider_sendFunction];
    v10 = *&v9[OBJC_IVAR____TtC14VoiceTriggerUI19GMAnalyticsProvider_sendFunction + 8];
    v12 = result;
    v13 = swift_allocObject();
    *(v13 + 16) = a5;
    *(v13 + 24) = v9;
    v14 = v12;
    v15 = v9;
    v11(0xD00000000000002CLL, 0x800000027293C500, a6, v13);
  }

  return result;
}

void sub_272906B38()
{
  sub_27292D7B4();
  v0 = MEMORY[0x2743CF680]();
  sub_27292D794();
}

id GMAvailabilityViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMAvailabilityViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_272906CBC(uint64_t a1, id *a2)
{
  result = sub_27292E234();
  *a2 = 0;
  return result;
}

uint64_t sub_272906D34(uint64_t a1, id *a2)
{
  v3 = sub_27292E244();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_272906DB4@<X0>(uint64_t *a1@<X8>)
{
  sub_27292E254();
  v2 = sub_27292E224();

  *a1 = v2;
  return result;
}

uint64_t sub_272906DF8()
{
  v1 = *v0;
  v2 = sub_27292E254();
  v3 = MEMORY[0x2743D0180](v2);

  return v3;
}

uint64_t sub_272906E34()
{
  v1 = *v0;
  sub_27292E254();
  sub_27292E274();
}

uint64_t sub_272906E88()
{
  v1 = *v0;
  sub_27292E254();
  sub_27292E4D4();
  sub_27292E274();
  v2 = sub_27292E4F4();

  return v2;
}

void *sub_272906EFC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_272906F0C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_27292E254();
  v6 = v5;
  if (v4 == sub_27292E254() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_27292E494();
  }

  return v9 & 1;
}

uint64_t sub_272906F94@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_27292E224();

  *a2 = v5;
  return result;
}

uint64_t sub_272906FDC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_27292E254();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_272907008(uint64_t a1)
{
  v2 = sub_272907CF0(&qword_28089BA70, type metadata accessor for Key);
  v3 = sub_272907CF0(&qword_28089BA78, type metadata accessor for Key);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t _s14VoiceTriggerUI23GMAvailabilityViewModelC7isBuddySbvgZ_0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_27292E254();
    v4 = v3;

    if (v2 == 0xD000000000000015 && 0x800000027293C750 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_27292E494();
    }
  }

  return v1 & 1;
}

uint64_t sub_272907194(uint64_t a1)
{
  v2 = sub_27292D6C4();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20]();
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v3[13];
  v7(v6, *MEMORY[0x277D0E1B8], v2);
  v8 = sub_27290638C(v6, a1);
  v9 = v3[1];
  v9(v6, v2);
  if (v8)
  {
    return 2;
  }

  v7(v6, *MEMORY[0x277D0E130], v2);
  v10 = sub_27290638C(v6, a1);
  v9(v6, v2);
  if (v10)
  {
    return 2;
  }

  v7(v6, *MEMORY[0x277D0E0A8], v2);
  v12 = sub_27290638C(v6, a1);
  v9(v6, v2);
  if (v12)
  {
    v7(v6, *MEMORY[0x277D0E0F8], v2);
    v13 = sub_27290638C(v6, a1);
    v9(v6, v2);
    if ((v13 & 1) == 0)
    {
      v7(v6, *MEMORY[0x277D0E0E8], v2);
      v14 = sub_27290638C(v6, a1);
      v9(v6, v2);
      if ((v14 & 1) == 0)
      {
        return 1;
      }

      goto LABEL_10;
    }

    return 0;
  }

  v7(v6, *MEMORY[0x277D0E0E8], v2);
  v15 = sub_27290638C(v6, a1);
  v9(v6, v2);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  if (_s14VoiceTriggerUI23GMAvailabilityViewModelC7isBuddySbvgZ_0())
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

uint64_t _s14VoiceTriggerUI23GMAvailabilityViewModelC16isDeviceEligibleSbyFZ_0()
{
  v0 = sub_27292D704();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  MEMORY[0x28223BE20](v0);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_27292D764();
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_27292D6B4();
  v7 = *(v25 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v25);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_27292D734();
  v11 = *(v27 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v27);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_27292D784();
  v15 = *(v26 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v26);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BA80, &qword_272934918);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_272934680;
  sub_27292D694();
  v20 = sub_27292D6A4();
  v22 = v21;
  (*(v7 + 8))(v10, v25);
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  (*(v28 + 104))(v6, *MEMORY[0x277D0E2B8], v29);
  sub_27292D724();
  sub_27292D774();
  (*(v11 + 8))(v14, v27);
  v23 = v30;
  sub_27292D744();
  LOBYTE(v19) = sub_27292D6F4();
  (*(v31 + 8))(v23, v32);
  (*(v15 + 8))(v18, v26);
  return v19 & 1;
}

uint64_t sub_2729077E0(uint64_t a1)
{
  result = 0xD000000000000028;
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0xD000000000000022;
    }

    if (a1 == 1)
    {
      v3 = _s14VoiceTriggerUI23GMAvailabilityViewModelC7isBuddySbvgZ_0();
      result = 0xD000000000000028;
      if ((v3 & 1) == 0)
      {
        return 0xD000000000000022;
      }

      return result;
    }

LABEL_14:
    type metadata accessor for VTUIGMEnrollmentType(0);
    result = sub_27292E4A4();
    __break(1u);
    return result;
  }

  if (a1 == 2)
  {
    return 0xD00000000000002BLL;
  }

  if (a1 != 3 && a1 != 4)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_272907924()
{
  result = sub_27292D784();
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

uint64_t sub_272907CF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_272907DE0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_272907E00(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

void sub_272907E40(uint64_t a1, unint64_t *a2)
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

id GMHeaderIconProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GMHeaderIconProvider.init()()
{
  v1 = &v0[OBJC_IVAR____TtC14VoiceTriggerUI20GMHeaderIconProvider_gmIconID];
  *v1 = 0xD00000000000002DLL;
  *(v1 + 1) = 0x800000027293C810;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for GMHeaderIconProvider();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_272907FB0(uint64_t a1, void *a2, double a3)
{
  v7 = *&v3[OBJC_IVAR____TtC14VoiceTriggerUI20GMHeaderIconProvider_gmIconID];
  v8 = *&v3[OBJC_IVAR____TtC14VoiceTriggerUI20GMHeaderIconProvider_gmIconID + 8];
  v9 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v10 = sub_27292E224();
  v11 = [v9 initWithType_];

  v12 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) init];
  [v12 setShape_];
  v13 = [v11 imageForDescriptor_];
  if (!v13)
  {
    v14 = 0;
LABEL_11:
    if (qword_28089BA20 != -1)
    {
      swift_once();
    }

    v27 = sub_27292D7F4();
    __swift_project_value_buffer(v27, qword_28089D688);
    v28 = v3;
    v29 = sub_27292D7D4();
    v30 = sub_27292E344();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = v11;
      v33 = swift_slowAlloc();
      v60 = v33;
      *v31 = 136315138;
      *(v31 + 4) = sub_272908844(v7, v8, &v60);
      _os_log_impl(&dword_2728BC000, v29, v30, "Unable to generate CG image from iconType %s. Bailing.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x2743D0E40](v33, -1, -1);
      MEMORY[0x2743D0E40](v31, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v14 = v13;
  v58 = a2;
  v59 = v11;
  if ([v14 placeholder])
  {
    v15 = v12;
    v16 = [v11 prepareImageForDescriptor_];

    v14 = v16;
    if (!v16)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v17 = [v14 CGImage];
  if (!v17)
  {
LABEL_10:
    v11 = v59;
    goto LABEL_11;
  }

  v57 = v17;
  v18 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];
  v19 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

  v20 = v19;
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  [v20 setContentMode_];
  [v20 setClipsToBounds_];

  v21 = [objc_allocWithZone(MEMORY[0x277D75078]) init];
  [v21 setScale_];
  [v21 setStyle_];
  [v21 setShape_];
  [v21 setColor_];
  [v21 setPlatterSize_];
  v22 = objc_opt_self();
  v23 = [v22 systemFontOfSize:a3 weight:*MEMORY[0x277D74420]];
  v24 = [v23 fontDescriptor];
  v25 = [v24 fontDescriptorWithDesign_];

  if (v25)
  {
    v26 = [v22 fontWithDescriptor:v25 size:a3];
  }

  else
  {
    v26 = v23;
  }

  v55 = v14;
  v34 = v26;
  v35 = [objc_opt_self() sharedStyle];
  v36 = sub_27292E224();
  v37 = [v35 VTUIDeviceSpecificString_];

  v56 = v23;
  if (v37)
  {
    sub_27292E254();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BAA8, &qword_272934960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_272934950;
  v39 = *MEMORY[0x277D75068];
  *(inited + 32) = *MEMORY[0x277D75068];
  v40 = sub_272908E38(0, &qword_28089BAB0, 0x277D75078);
  *(inited + 40) = v21;
  v41 = *MEMORY[0x277D740C0];
  *(inited + 64) = v40;
  *(inited + 72) = v41;
  result = sub_272908E38(0, &qword_28089BAB8, 0x277D75348);
  *(inited + 80) = v58;
  v43 = *MEMORY[0x277D740A8];
  *(inited + 104) = result;
  *(inited + 112) = v43;
  if (v34)
  {
    *(inited + 144) = sub_272908E38(0, &qword_28089BAC0, 0x277D74300);
    *(inited + 120) = v34;
    v44 = v39;
    v54 = v21;
    v45 = v41;
    v46 = v58;
    v47 = v43;
    sub_272908E80(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BAC8, &qword_272934968);
    swift_arrayDestroy();
    v48 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v49 = sub_27292E224();

    type metadata accessor for Key(0);
    sub_272908FA8();
    v50 = sub_27292E1F4();

    v51 = [v48 initWithString:v49 attributes:v50];

    v52 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
    [v52 setAttributedText_];
    v53 = v52;
    [v53 sizeToFit];
    [v53 frame];
    [v53 setFrame_];
    [v53 frame];
    [v53 setFrame_];

    [v20 addSubview_];
    return v20;
  }

  __break(1u);
  return result;
}

id GMHeaderIconProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMHeaderIconProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_272908844(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_272908910(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_272909154(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_272908910(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_272908A1C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_27292E414();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_272908A1C(uint64_t a1, unint64_t a2)
{
  v4 = sub_272908A68(a1, a2);
  sub_272908B98(&unk_2881E3630);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_272908A68(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_272908C84(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_27292E414();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_27292E294();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_272908C84(v10, 0);
        result = sub_27292E3E4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_272908B98(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_272908CF8(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_272908C84(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BAE0, &qword_2729349A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_272908CF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BAE0, &qword_2729349A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_272908E38(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_272908E80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BAD8, &qword_2729349A0);
    v3 = sub_27292E464();
    v4 = a1 + 32;

    while (1)
    {
      sub_27290939C(v4, &v11, &qword_28089BAC8, &qword_272934968);
      v5 = v11;
      result = sub_272917874(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_272909144(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_272908FA8()
{
  result = qword_28089BA70;
  if (!qword_28089BA70)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089BA70);
  }

  return result;
}

unint64_t sub_27290904C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BAD0, &qword_272934998);
    v3 = sub_27292E464();
    for (i = (a1 + 44); ; i += 4)
    {
      v5 = *(i - 12);
      v6 = *(i - 1);
      v7 = *i;
      result = sub_272917908(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = v3[7] + 12 * result;
      *v10 = v6;
      *(v10 + 8) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

_OWORD *sub_272909144(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_272909154(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2729091B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BAE8, &qword_2729349B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BAF0, &qword_2729349B8);
    v8 = sub_27292E464();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_27290939C(v10, v6, &qword_28089BAE8, &qword_2729349B0);
      result = sub_272917974(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_27292D6C4();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_27290939C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_272909404(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BAF8, &unk_2729349C0);
    v3 = sub_27292E464();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2729179F8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

Swift::Void __swiftcall UIView.setGlassBackground()()
{
  v0 = sub_27292D814();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  sub_27292D804();
  v2[3] = sub_27292D824();
  v2[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v2);
  sub_27292D834();
  sub_27292E394();
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

void sub_272909610(void *a1)
{
  v2 = sub_27292D814();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = a1;
  sub_27292D804();
  v5[3] = sub_27292D824();
  v5[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_27292D834();
  sub_27292E394();
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2729096F0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_272909738(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2729097B8()
{
  v0 = type metadata accessor for GMIntroViewModelMobile();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_272916D5C();
}

uint64_t sub_2729097F0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  *a1 = sub_27292E0E4();
  a1[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB00, &qword_272934B10);
  sub_272909B74(v1, a1 + *(v5 + 44));
  v6 = sub_27292DF74();
  v7 = sub_27292DDA4();
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB08, &qword_272934B18) + 36);
  *v8 = v6;
  v8[8] = v7;
  v9 = *(v2 + 8);
  swift_beginAccess();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB10, &unk_272934B20);
  v11 = *(v10 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB18, &qword_2729353E0);
  sub_27292D894();
  swift_endAccess();
  v12 = swift_allocObject();
  v13 = *(v2 + 48);
  v12[3] = *(v2 + 32);
  v12[4] = v13;
  v12[5] = *(v2 + 64);
  v14 = *(v2 + 16);
  v12[1] = *v2;
  v12[2] = v14;
  v15 = (a1 + *(v10 + 56));
  *v15 = sub_27290B170;
  v15[1] = v12;
  swift_beginAccess();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB20, &qword_272934B30);
  v17 = *(v16 + 52);
  sub_27290B178(v2, v36);
  sub_27292D894();
  swift_endAccess();
  v18 = swift_allocObject();
  v19 = *(v2 + 48);
  v18[3] = *(v2 + 32);
  v18[4] = v19;
  v18[5] = *(v2 + 64);
  v20 = *(v2 + 16);
  v18[1] = *v2;
  v18[2] = v20;
  v21 = (a1 + *(v16 + 56));
  *v21 = sub_27290B1B0;
  v21[1] = v18;
  v22 = *(v2 + 24);
  v23 = *(v2 + 32);
  v24 = *(v2 + 40);
  sub_27290B178(v2, v36);
  type metadata accessor for GMIntroViewModelMobile();
  sub_27290B508(&qword_28089BB28, type metadata accessor for GMIntroViewModelMobile);
  sub_27292D934();
  swift_beginAccess();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB30, &qword_272934B38);
  v26 = a1 + *(v25 + 52);
  sub_27292D894();
  swift_endAccess();

  v27 = swift_allocObject();
  v28 = *(v2 + 48);
  v27[3] = *(v2 + 32);
  v27[4] = v28;
  v27[5] = *(v2 + 64);
  v29 = *(v2 + 16);
  v27[1] = *v2;
  v27[2] = v29;
  v30 = (a1 + *(v25 + 56));
  *v30 = sub_27290B1B8;
  v30[1] = v27;
  v31 = swift_allocObject();
  v32 = *(v2 + 48);
  *(v31 + 3) = *(v2 + 32);
  *(v31 + 4) = v32;
  *(v31 + 5) = *(v2 + 64);
  v33 = *(v2 + 16);
  *(v31 + 1) = *v2;
  *(v31 + 2) = v33;
  v34 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB38, &qword_272934B40) + 36));
  *v34 = sub_27290B1C0;
  v34[1] = v31;
  v34[2] = 0;
  v34[3] = 0;
  sub_27290B178(v2, v36);
  return sub_27290B178(v2, v36);
}

uint64_t sub_272909B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB70, &qword_272934BF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = &v41[-v5];
  v6 = type metadata accessor for GMEnrollmentSetupIntroView(0);
  v7 = *(v6 - 8);
  v47 = v6 - 8;
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v50 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v41[-v12];
  MEMORY[0x28223BE20](v11);
  v49 = &v41[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB78, &qword_272934BF8);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v48 = &v41[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v52 = &v41[-v19];
  v44 = sub_27292DB44();
  v57 = 1;
  sub_27290A1D0(a1, &v71);
  v65 = v75;
  v66 = v76;
  v67 = v77;
  v68 = v78;
  v61 = v71;
  v62 = v72;
  v63 = v73;
  v64 = v74;
  v69[0] = v71;
  v69[1] = v72;
  v69[2] = v73;
  v69[3] = v74;
  v69[4] = v75;
  v69[5] = v76;
  v69[6] = v77;
  v70 = v78;
  sub_27290939C(&v61, &v53, &qword_28089BB80, &qword_272934C00);
  sub_27290B880(v69, &qword_28089BB80, &qword_272934C00);
  *(&v56[4] + 7) = v65;
  *(&v56[5] + 7) = v66;
  *(&v56[6] + 7) = v67;
  *(v56 + 7) = v61;
  *(&v56[1] + 7) = v62;
  *(&v56[2] + 7) = v63;
  *(&v56[7] + 7) = v68;
  *(&v56[3] + 7) = v64;
  v42 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB88, &qword_272934C08);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2729349D0;
  *(v20 + 32) = sub_27292DF74();
  *(v20 + 40) = sub_27292DF84();
  MEMORY[0x2743CFF60](v20);
  sub_27292E134();
  v21 = a1;
  v43 = a1;
  v22 = *(a1 + 24);
  v23 = *(v21 + 32);
  v24 = *(v21 + 40);
  type metadata accessor for GMIntroViewModelMobile();
  v45 = &unk_272935874;
  sub_27290B508(&qword_28089BB28, type metadata accessor for GMIntroViewModelMobile);
  sub_27292D934();
  sub_27291707C();

  sub_27292E134();
  sub_27292D934();
  sub_2729171B0();

  sub_27292D9F4();
  *(&v54[4] + 1) = v56[4];
  *(&v54[5] + 1) = v56[5];
  *(&v54[6] + 1) = v56[6];
  v54[7] = *(&v56[6] + 15);
  *(v54 + 1) = v56[0];
  *(&v54[1] + 1) = v56[1];
  *(&v54[2] + 1) = v56[2];
  *(&v54[3] + 1) = v56[3];
  *&v55[8] = v59;
  v53 = v44;
  LOBYTE(v54[0]) = v42;
  *v55 = v58;
  *&v55[24] = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB90, &qword_272934C10);
  sub_27290B424();
  sub_27292DEC4();
  v79 = v54[7];
  v80 = *v55;
  v81 = *&v55[16];
  v82 = *&v55[32];
  v75 = v54[3];
  v76 = v54[4];
  v77 = v54[5];
  v78 = v54[6];
  v71 = v53;
  v72 = v54[0];
  v73 = v54[1];
  v74 = v54[2];
  sub_27290B880(&v71, &qword_28089BB90, &qword_272934C10);
  v25 = *v43;
  swift_unknownObjectRetain();
  sub_27292D934();
  v26 = v46;
  sub_27292DC74();
  *v13 = v25;
  v27 = objc_opt_self();
  v28 = [v27 isNaturalUIEnabled];
  v29 = 50.0;
  if (v28)
  {
    v29 = 52.0;
  }

  v13[1] = v29;
  v13[2] = 14.0;
  *(v13 + 24) = [v27 isNaturalUIEnabled];
  v30 = v47;
  v31 = v13 + *(v47 + 40);
  sub_27292D954();
  v32 = (v13 + *(v30 + 44));
  type metadata accessor for GMIntroViewModel();
  sub_27290B508(&qword_28089BBC0, type metadata accessor for GMIntroViewModel);
  *v32 = sub_27292DA04();
  v32[1] = v33;
  sub_27290B550(v26, v13 + *(v30 + 48));
  v34 = v49;
  sub_27290B5C0(v13, v49);
  v35 = v52;
  v36 = v48;
  sub_27290939C(v52, v48, &qword_28089BB78, &qword_272934BF8);
  v37 = v50;
  sub_27290B624(v34, v50);
  v38 = v51;
  sub_27290939C(v36, v51, &qword_28089BB78, &qword_272934BF8);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BBC8, &qword_272934C28);
  sub_27290B624(v37, v38 + *(v39 + 48));
  sub_27290B688(v34);
  sub_27290B880(v35, &qword_28089BB78, &qword_272934BF8);
  sub_27290B688(v37);
  return sub_27290B880(v36, &qword_28089BB78, &qword_272934BF8);
}

uint64_t sub_27290A1D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_27292E0E4();
  v6 = v5;
  sub_27290A2E4(a1, &v17);
  v7 = v17;
  v8 = v18;
  v10 = v19;
  v9 = v20;
  v11 = v21;
  sub_27292E0E4();
  sub_27292D974();
  v12 = v17;
  v13 = v18;
  v14 = v19;
  v15 = v20;
  v24 = 1;
  v23 = v18;
  v22 = v20;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10;
  *(a2 + 40) = v9;
  *(a2 + 48) = v11;
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  *(a2 + 72) = v12;
  *(a2 + 80) = v13;
  *(a2 + 88) = v14;
  *(a2 + 96) = v15;
  *(a2 + 104) = v21;
  sub_27290B6E4(v7);

  sub_27290B6F4(v7);
}

uint64_t sub_27290A2E4@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  type metadata accessor for GMIntroViewModelMobile();
  sub_27290B508(&qword_28089BB28, type metadata accessor for GMIntroViewModelMobile);
  sub_27292D934();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  if (LOBYTE(v16[0]) && (sub_27292D934(), swift_getKeyPath(), swift_getKeyPath(), sub_27292D8A4(), , , , LOBYTE(v16[0]) != 3))
  {
    v10 = 0;
    v7 = 0;
  }

  else
  {
    v7 = swift_allocObject();
    v8 = *(a1 + 48);
    *(v7 + 3) = *(a1 + 32);
    *(v7 + 4) = v8;
    *(v7 + 5) = *(a1 + 64);
    v9 = *(a1 + 16);
    *(v7 + 1) = *a1;
    *(v7 + 2) = v9;
    sub_27290B178(a1, v16);

    v10 = sub_27290B768;
  }

  v16[0] = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB60, &qword_272934B50);
  sub_27292E024();
  if (v17 == 1)
  {
    sub_27292D934();
    v11 = sub_27292DA04();
    v13 = v12;
    v16[0] = *(a1 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB68, &qword_272934B58);
    sub_27292E024();
    v14 = v17;
  }

  else
  {
    v11 = 0;
    v13 = 0;
    v14 = 0;
  }

  sub_27290B6E4(v10);

  sub_27290B6F4(v10);

  *a2 = v10;
  a2[1] = v7;
  a2[2] = v11;
  a2[3] = v13;
  a2[4] = v14;

  return sub_27290B6F4(v10);
}

uint64_t sub_27290A5B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_27292DFF4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  if (qword_28089BA18 != -1)
  {
    swift_once();
  }

  sub_27291D038(qword_28089D678, unk_28089D680);
  sub_27292DFE4();
  (*(v4 + 104))(v7, *MEMORY[0x277CE0FE0], v3);
  v9 = sub_27292E004();

  (*(v4 + 8))(v7, v3);
  sub_27292D9D4();
  sub_27292E0C4();
  sub_27292D974();
  *&v14[38] = v18;
  *&v14[22] = v17;
  *&v14[6] = v16;
  *&v13[2] = *v14;
  v15 = 1;
  v12 = v9;
  *v13 = 257;
  *&v13[18] = *&v14[16];
  *&v13[34] = *&v14[32];
  *&v13[48] = *(&v18 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BBD0, &qword_272934C30);
  sub_27290B770();
  sub_27292DEC4();
  v19[2] = *&v13[16];
  v19[3] = *&v13[32];
  v20 = *&v13[48];
  v19[0] = v12;
  v19[1] = *v13;
  return sub_27290B880(v19, &qword_28089BBD0, &qword_272934C30);
}

_BYTE *sub_27290A818(_BYTE *result, uint64_t a2)
{
  if (*result == 1)
  {
    v2 = *(a2 + 24);
    v3 = *(a2 + 32);
    v4 = *(a2 + 40);
    type metadata accessor for GMIntroViewModelMobile();
    sub_27290B508(&qword_28089BB28, type metadata accessor for GMIntroViewModelMobile);
    sub_27292D934();
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_27292D8B4();
  }

  return result;
}

_BYTE *sub_27290A8F0(_BYTE *result, uint64_t a2)
{
  if (*result == 1)
  {
    v3 = *(a2 + 24);
    v4 = *(a2 + 32);
    v5 = *(a2 + 40);
    type metadata accessor for GMIntroViewModelMobile();
    sub_27290B508(&qword_28089BB28, type metadata accessor for GMIntroViewModelMobile);
    sub_27292D934();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_27292D8A4();

    if (v8 == 4 || (sub_27292D934(), swift_getKeyPath(), swift_getKeyPath(), sub_27292D8A4(), , , , v7 == 5))
    {
      sub_27292D934();
      if (qword_28089BA10 != -1)
      {
        swift_once();
      }

      [qword_28089BEA0 isBuddyOrFollowUp];
      swift_getKeyPath();
      swift_getKeyPath();
      sub_27292D8B4();
    }

    v6 = *(a2 + 8);
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_27292D8B4();
  }

  return result;
}

_BYTE *sub_27290AB60(_BYTE *result)
{
  if (*result == 1)
  {
    v1 = sub_27292E0F4();
    MEMORY[0x28223BE20](v1);
    sub_27292D9E4();
  }

  return result;
}

uint64_t sub_27290AC08(_OWORD *a1)
{
  v33 = sub_27292E154();
  v36 = *(v33 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_27292E174();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_27292E144();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_27292E194();
  v30 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - v19;
  sub_27290B1C8();
  v31 = sub_27292E374();
  sub_27292E184();
  *v12 = 350;
  (*(v9 + 104))(v12, *MEMORY[0x277D85178], v8);
  MEMORY[0x2743D0080](v18, v12);
  (*(v9 + 8))(v12, v8);
  v21 = *(v14 + 8);
  v21(v18, v13);
  v22 = swift_allocObject();
  v23 = a1[3];
  v22[3] = a1[2];
  v22[4] = v23;
  v22[5] = a1[4];
  v24 = a1[1];
  v22[1] = *a1;
  v22[2] = v24;
  aBlock[4] = sub_27290B214;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_27290B0BC;
  aBlock[3] = &block_descriptor;
  v25 = _Block_copy(aBlock);
  sub_27290B178(a1, v37);

  sub_27292E164();
  v37[0] = MEMORY[0x277D84F90];
  sub_27290B508(&qword_28089BB48, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB50, &qword_272934B48);
  sub_27290B998(&qword_28089BB58, &qword_28089BB50, &qword_272934B48);
  v26 = v32;
  v27 = v33;
  sub_27292E3D4();
  v28 = v31;
  MEMORY[0x2743D0240](v20, v7, v26, v25);
  _Block_release(v25);

  (*(v36 + 8))(v26, v27);
  (*(v34 + 8))(v7, v35);
  return (v21)(v20, v30);
}

uint64_t sub_27290B0BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_27290B124@<X0>(uint64_t *a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v3 = *v1;
  v4 = v1[1];
  return sub_2729097F0(a1);
}

unint64_t sub_27290B1C8()
{
  result = qword_28089BB40;
  if (!qword_28089BB40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28089BB40);
  }

  return result;
}

uint64_t sub_27290B214()
{
  v2 = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB60, &qword_272934B50);
  return sub_27292E034();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

uint64_t sub_27290B2CC()
{
  v2 = *(*(v0 + 16) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB68, &qword_272934B58);
  return sub_27292E034();
}

uint64_t sub_27290B330@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  *a2 = v5;
  return result;
}

uint64_t sub_27290B3B0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_27292D8B4();
}

unint64_t sub_27290B424()
{
  result = qword_28089BB98;
  if (!qword_28089BB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089BB90, &qword_272934C10);
    sub_27290B998(&qword_28089BBA0, &qword_28089BBA8, &qword_272934C18);
    sub_27290B998(&qword_28089BBB0, &qword_28089BBB8, &qword_272934C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089BB98);
  }

  return result;
}

uint64_t sub_27290B508(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27290B550(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB70, &qword_272934BF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27290B5C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GMEnrollmentSetupIntroView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27290B624(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GMEnrollmentSetupIntroView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27290B688(uint64_t a1)
{
  v2 = type metadata accessor for GMEnrollmentSetupIntroView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27290B6E4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_27290B6F4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  sub_27290B168();
  v7 = *(v0 + 72);

  v8 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

unint64_t sub_27290B770()
{
  result = qword_28089BBD8;
  if (!qword_28089BBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089BBD0, &qword_272934C30);
    sub_27290B7FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089BBD8);
  }

  return result;
}

unint64_t sub_27290B7FC()
{
  result = qword_28089BBE0;
  if (!qword_28089BBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089BBE8, &qword_272934C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089BBE0);
  }

  return result;
}

uint64_t sub_27290B880(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_27290B8E0()
{
  result = qword_28089BBF0;
  if (!qword_28089BBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089BB38, &qword_272934B40);
    sub_27290B998(&qword_28089BBF8, &qword_28089BB30, &qword_272934B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089BBF0);
  }

  return result;
}

uint64_t sub_27290B998(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_27290B9E0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BC00, &qword_272934CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v58 - v4;
  v6 = sub_27292E154();
  v64 = *(v6 - 8);
  v65 = v6;
  v7 = *(v64 + 64);
  MEMORY[0x28223BE20](v6);
  v62 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_27292E174();
  v66 = *(v9 - 8);
  v67 = v9;
  v10 = *(v66 + 64);
  MEMORY[0x28223BE20](v9);
  v63 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_27292E144();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_27292E194();
  v60 = *(v17 - 8);
  v61 = v17;
  v18 = *(v60 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v59 = &v58 - v22;
  v23 = *&v0[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController_viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  v24 = OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__previousState;
  v25 = v1[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__previousState];
  if (v25 == 8 || aBlock != v25)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_27292D8A4();

    v1[v24] = aBlock;
    v26 = objc_opt_self();
    [v26 begin];
    [v26 setAnimationDuration_];
    v27 = *&v1[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__deviceModelNode];
    if (v27)
    {
      v28 = v27;
      [v28 setEulerAngles_];
    }

    v29 = *&v1[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__cameraNode];
    sub_272916FA0();
    [v29 setPosition_];
    [v26 commit];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_27292D8A4();

    if (aBlock <= 3u)
    {
      if (aBlock > 1u)
      {
        if (aBlock == 2)
        {
          v38 = *&v1[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__displayCAView];
          if (v38)
          {
            v39 = v38;
            v40 = sub_27292E224();
            [v39 setState:v40 animated:1];
          }

          sub_27290DE5C(0);
          if (v1[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__layout])
          {
            v41 = 0.0;
          }

          else
          {
            v41 = -20.0;
          }

          v42 = sub_27292E314();
          (*(*(v42 - 8) + 56))(v5, 1, 1, v42);
          sub_27292E2F4();
          v1 = v1;
          v43 = sub_27292E2E4();
          v44 = swift_allocObject();
          v45 = MEMORY[0x277D85700];
          *(v44 + 16) = v43;
          *(v44 + 24) = v45;
          *(v44 + 32) = v1;
          *(v44 + 40) = v41;
          sub_27290D54C(0, 0, v5, &unk_272934EE8, v44);

          sub_272908E38(0, &qword_28089BB40, 0x277D85C78);
          v58 = sub_27292E374();
          sub_27292E184();
          *v16 = 900;
          (*(v13 + 104))(v16, *MEMORY[0x277D85178], v12);
          v30 = v59;
          MEMORY[0x2743D0080](v21, v16);
          (*(v13 + 8))(v16, v12);
          v31 = v61;
          v46 = *(v60 + 8);
          v46(v21, v61);
          v33 = v46;
          v47 = swift_allocObject();
          *(v47 + 16) = v1;
          v72 = sub_2729137F8;
          v73 = v47;
          aBlock = MEMORY[0x277D85DD0];
          v69 = 1107296256;
          v35 = &block_descriptor_58;
          goto LABEL_24;
        }
      }

      else if (aBlock)
      {
        sub_27290DE5C(0);
        sub_272908E38(0, &qword_28089BB40, 0x277D85C78);
        v58 = sub_27292E374();
        sub_27292E184();
        *v16 = 900;
        (*(v13 + 104))(v16, *MEMORY[0x277D85178], v12);
        v30 = v59;
        MEMORY[0x2743D0080](v21, v16);
        (*(v13 + 8))(v16, v12);
        v31 = v61;
        v32 = *(v60 + 8);
        v32(v21, v61);
        v33 = v32;
        v34 = swift_allocObject();
        *(v34 + 16) = v1;
        v72 = sub_27291381C;
        v73 = v34;
        aBlock = MEMORY[0x277D85DD0];
        v69 = 1107296256;
        v35 = &block_descriptor_64;
LABEL_24:
        v70 = sub_27290B0BC;
        v71 = v35;
        v50 = _Block_copy(&aBlock);
        v51 = v1;

        v52 = v63;
        sub_27292E164();
        aBlock = MEMORY[0x277D84F90];
        sub_272913678();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB50, &qword_272934B48);
        sub_2729136D0();
        v53 = v62;
        v54 = v65;
        sub_27292E3D4();
        v55 = v58;
        MEMORY[0x2743D0240](v30, v52, v53, v50);
        _Block_release(v50);

        (*(v64 + 8))(v53, v54);
        (*(v66 + 8))(v52, v67);
        v33(v30, v31);
        return;
      }

      if (*&v1[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__wallpaperBlockingLayer])
      {
        sub_27290F450(1);
      }

      sub_272908E38(0, &qword_28089BB40, 0x277D85C78);
      v58 = sub_27292E374();
      sub_27292E184();
      *v16 = 200;
      (*(v13 + 104))(v16, *MEMORY[0x277D85178], v12);
      v30 = v59;
      MEMORY[0x2743D0080](v21, v16);
      (*(v13 + 8))(v16, v12);
      v31 = v61;
      v48 = *(v60 + 8);
      v48(v21, v61);
      v33 = v48;
      v49 = swift_allocObject();
      *(v49 + 16) = v1;
      v72 = sub_272913840;
      v73 = v49;
      aBlock = MEMORY[0x277D85DD0];
      v69 = 1107296256;
      v35 = &block_descriptor_70;
      goto LABEL_24;
    }

    if (aBlock > 5u)
    {
      if (aBlock == 6)
      {
        sub_27291AC24();
        sub_27290DE5C(1);
        sub_27290F9F4();
      }

      else
      {
        sub_27290F450(1);
      }
    }

    else
    {
      if (aBlock == 4)
      {
        sub_272908E38(0, &qword_28089BB40, 0x277D85C78);
        v58 = sub_27292E374();
        sub_27292E184();
        *v16 = 1500;
        (*(v13 + 104))(v16, *MEMORY[0x277D85178], v12);
        v30 = v59;
        MEMORY[0x2743D0080](v21, v16);
        (*(v13 + 8))(v16, v12);
        v31 = v61;
        v36 = *(v60 + 8);
        v36(v21, v61);
        v33 = v36;
        v37 = swift_allocObject();
        *(v37 + 16) = v1;
        v72 = sub_272913648;
        v73 = v37;
        aBlock = MEMORY[0x277D85DD0];
        v69 = 1107296256;
        v35 = &block_descriptor_48;
        goto LABEL_24;
      }

      sub_27290DE5C(1);
      v57 = *&v1[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__wallpaperBlockingLayer];
      if (v57)
      {
        LODWORD(v56) = 1.0;
        [v57 setOpacity_];
      }

      sub_27290F9F4();
    }
  }
}

id sub_27290C53C()
{
  v1 = *(v0 + 8);
  v2 = objc_allocWithZone(type metadata accessor for GMDeviceSceneViewController());

  return sub_27290C6D0(v3);
}

uint64_t sub_27290C5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_272914754();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_27290C644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_272914754();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_27290C6A8()
{
  sub_272914754();
  sub_27292DD44();
  __break(1u);
}

id sub_27290C6D0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__sceneView;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277CDBB20]) init];
  v5 = OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__cameraNode;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x277CDBAA8]) init];
  *&v1[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__deviceModelNode] = 0;
  *&v1[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__deviceDisplayLayer] = 0;
  *&v1[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__wallpaperBlockingLayer] = 0;
  *&v1[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__keyboardLayer] = 0;
  *&v1[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__homeIndicatorLayer] = 0;
  *&v1[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__intelligentLightLayer] = 0;
  *&v1[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__edgeLightMask] = 0;
  *&v1[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__displayCAView] = 0;
  *&v1[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__pressAndHoldEffectView] = 0;
  *&v1[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__doubleTapEffectView] = 0;
  v1[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__previousState] = 8;
  *&v1[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__loadSceneTask] = 0;
  v1[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController_captureSnapshotForResource] = 0;
  *&v1[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController_viewModel] = a1;
  v6 = *(a1 + OBJC_IVAR____TtC14VoiceTriggerUI22GMIntroViewModelMobile_layout);
  v1[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__layout] = v6;
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = 0x800000027293CC00;
      v8 = 0xD00000000000001ALL;
    }

    else
    {
      v7 = 0xEF6863746F4E6874;
      v8 = 0x6957656E6F685069;
    }
  }

  else
  {
    v8 = 0xD000000000000017;
    v7 = 0x800000027293CBE0;
  }

  v9 = &v1[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController_DeviceModelName];
  *v9 = v8;
  v9[1] = v7;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);
}

Swift::Void __swiftcall GMDeviceSceneViewController.viewDidLoad()()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BC00, &qword_272934CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27 - v4;
  v27.receiver = v0;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, sel_viewDidLoad);
  v6 = *&v0[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__sceneView];
  v7 = [v0 view];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [v6 setFrame_];
    v17 = [objc_opt_self() blackColor];
    [v6 setBackgroundColor_];

    [v6 setAutoenablesDefaultLighting_];
    if (v0[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__layout] == 2)
    {
      [v6 setAntialiasingMode_];
    }

    v18 = sub_27292E314();
    (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
    sub_27292E2F4();
    v19 = v0;
    v20 = sub_27292E2E4();
    v21 = swift_allocObject();
    v22 = MEMORY[0x277D85700];
    v21[2] = v20;
    v21[3] = v22;
    v21[4] = v19;
    v23 = sub_27290D54C(0, 0, v5, &unk_272934CC0, v21);
    v24 = *&v19[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__loadSceneTask];
    *&v19[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__loadSceneTask] = v23;

    v25 = [v19 view];
    if (v25)
    {
      v26 = v25;
      [v25 addSubview_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_27290CB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_27292E2F4();
  v4[4] = sub_27292E2E4();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_27290CC1C;

  return sub_27290CEB0();
}

uint64_t sub_27290CC1C(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_27290CD1C, 0, 0);
}

uint64_t sub_27290CD1C()
{
  v1 = *(v0 + 24);
  *(v0 + 56) = sub_27292E2E4();
  v3 = sub_27292E2D4();

  return MEMORY[0x2822009F8](sub_27290CDA8, v3, v2);
}

uint64_t sub_27290CDA8()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  sub_27290D22C(v2);
  v7 = sub_27292E2D4();

  return MEMORY[0x2822009F8](sub_27290CE44, v7, v6);
}

uint64_t sub_27290CE44()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_27290CEB0()
{
  v1[2] = v0;
  v2 = sub_27292D624();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  sub_27292E2F4();
  v1[7] = sub_27292E2E4();
  v6 = sub_27292E2D4();

  return MEMORY[0x2822009F8](sub_27290CFB0, v6, v5);
}

uint64_t sub_27290CFB0()
{
  v1 = v0[2];
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController_DeviceModelName);
  v5 = *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController_DeviceModelName + 8);
  v6 = sub_27292E224();
  v7 = sub_27292E224();
  v8 = [v3 URLForResource:v6 withExtension:v7];

  if (!v8)
  {
    return sub_27292E424();
  }

  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[3];
  v12 = v0[4];
  sub_27292D614();

  (*(v12 + 32))(v9, v10, v11);
  v14 = sub_27292D634();
  v16 = v15;
  v17 = sub_27292D644();
  sub_272913380(v14, v16);
  v18 = [objc_opt_self() sceneWithData:v17 options:0];

  if (!v18)
  {
    return sub_27292E424();
  }

  v19 = v0[7];
  v20 = v0[5];
  (*(v0[4] + 8))(v0[6], v0[3]);

  v21 = v0[1];

  return v21(v18);
}

void sub_27290D22C(void *a1)
{
  v2 = v1;
  sub_27290FB64(a1);
  v3 = OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__deviceModelNode;
  v4 = *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__deviceModelNode);
  *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__deviceModelNode) = v5;

  v6 = [objc_allocWithZone(MEMORY[0x277CDBAF8]) init];
  v7 = *(v1 + v3);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController_viewModel);
    v9 = v7;
    [v9 setEulerAngles_];
  }

  v10 = [v6 rootNode];
  if (!*(v2 + v3))
  {
    goto LABEL_20;
  }

  v11 = v10;
  [v10 addChildNode_];

  v12 = *(v2 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__cameraNode);
  v13 = [objc_allocWithZone(MEMORY[0x277CDBA48]) init];
  [v12 setCamera_];

  v14 = *(v2 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController_viewModel);
  sub_272916FA0();
  [v12 setPosition_];
  v15 = [v6 rootNode];
  [v15 addChildNode_];

  v31[0] = 0x407851EC40B0F5C3;
  v31[1] = 0x4051EB8540C428F6;
  v31[2] = 0x4040000040B9999ALL;
  v16 = *(v2 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__layout);
  if (v16 > 2)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  v28 = v31[*(v2 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__layout)];
  v30 = [objc_allocWithZone(MEMORY[0x277CDBAA8]) init];
  v17 = [objc_allocWithZone(MEMORY[0x277CDBA88]) init];
  [v30 setLight_];

  v18 = [v30 light];
  if (v18)
  {
    v19 = v18;
    [v18 setType_];
  }

  v20 = [v30 light];
  if (v20)
  {
    v23 = v20;
    [v20 setIntensity_];
  }

  if (v16 == 1)
  {
    HIDWORD(v25) = v29.i32[1];
    *&v25 = -v29.f32[0];
    LODWORD(v22) = 1076761723;
    v24 = v30;
  }

  else
  {
    v24 = v30;
    v25 = *&v29;
    if (v16)
    {
      v26 = -1070721925;
    }

    else
    {
      v21 = vdup_n_s32(0x3F8B2164u);
      v25 = COERCE_DOUBLE(vmul_f32(v29, v21));
      v26 = -1069729881;
    }

    LODWORD(v22) = v26;
  }

  v21.i32[0] = HIDWORD(v25);
  [v24 setPosition_];
  v27 = *(v2 + v3);
  if (!v27)
  {
    goto LABEL_21;
  }

  [v27 addChildNode_];
  [*(v2 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__sceneView) setScene_];
}

uint64_t sub_27290D54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BC00, &qword_272934CB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2729131FC(a3, v27 - v11);
  v13 = sub_27292E314();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_27290B880(v12, &qword_28089BC00, &qword_272934CB0);
  }

  else
  {
    sub_27292E304();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_27292E2D4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_27292E264() + 32;
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

      sub_27290B880(a3, &qword_28089BC00, &qword_272934CB0);

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

  sub_27290B880(a3, &qword_28089BC00, &qword_272934CB0);
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

uint64_t static GMDeviceSceneViewController.prepareScene()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27290D924;

  return sub_272912924();
}

uint64_t sub_27290D924(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_27290DA20(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t sub_27290DBE8(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_27292E2F4();
  *(v1 + 24) = sub_27292E2E4();
  v3 = sub_27292E2D4();

  return MEMORY[0x2822009F8](sub_27290DC80, v3, v2);
}

uint64_t sub_27290DC80()
{
  v2 = v0[2];
  v1 = v0[3];

  v0[4] = _Block_copy(v2);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_27290DD34;

  return sub_272912924();
}

uint64_t sub_27290DD34(char a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v7 = *v1;

  v4[2](v4, a1 & 1);
  _Block_release(v4);
  v5 = *(v7 + 8);

  return v5();
}

void sub_27290DE5C(char a1)
{
  v2 = v1;
  v4 = sub_27292E154();
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  MEMORY[0x28223BE20](v4);
  v56 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_27292E174();
  v55 = *(v57 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x28223BE20](v57);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_27292E144();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_27292E194();
  v53 = *(v15 - 8);
  v54 = v15;
  v16 = *(v53 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v52 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BC00, &qword_272934CB0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v52 - v24;
  if ((a1 & 1) != 0 && !*&v1[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__intelligentLightLayer])
  {
    v39 = sub_27292E314();
    (*(*(v39 - 8) + 56))(v25, 1, 1, v39);
    sub_27292E2F4();
    v40 = v1;
    v41 = sub_27292E2E4();
    v42 = swift_allocObject();
    v43 = MEMORY[0x277D85700];
    v42[2] = v41;
    v42[3] = v43;
    v42[4] = v40;
    sub_27290D54C(0, 0, v25, &unk_272934EF8, v42);

    sub_272908E38(0, &qword_28089BB40, 0x277D85C78);
    v52 = sub_27292E374();
    sub_27292E184();
    *v14 = 100;
    (*(v11 + 104))(v14, *MEMORY[0x277D85178], v10);
    MEMORY[0x2743D0080](v19, v14);
    (*(v11 + 8))(v14, v10);
    v44 = v54;
    v45 = *(v53 + 8);
    v45(v19, v54);
    v46 = swift_allocObject();
    *(v46 + 16) = v40;
    v64 = sub_272914744;
    v65 = v46;
    aBlock = MEMORY[0x277D85DD0];
    v61 = 1107296256;
    v62 = sub_27290B0BC;
    v63 = &block_descriptor_136;
    v47 = _Block_copy(&aBlock);
    v48 = v40;

    sub_27292E164();
    aBlock = MEMORY[0x277D84F90];
    sub_272913678();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB50, &qword_272934B48);
    sub_2729136D0();
    v49 = v56;
    v50 = v59;
    sub_27292E3D4();
    v51 = v52;
    MEMORY[0x2743D0240](v21, v9, v49, v47);
    _Block_release(v47);

    (*(v58 + 8))(v49, v50);
    (*(v55 + 8))(v9, v57);
    v45(v21, v44);
  }

  else
  {
    v26 = objc_opt_self();
    [v26 begin];
    v27 = sub_27292E224();
    v28 = [objc_opt_self() animationWithKeyPath_];

    v29 = v28;
    [v29 setRemovedOnCompletion_];
    [v29 setFillMode_];
    [v29 setDuration_];

    v30 = MEMORY[0x277D83B88];
    v63 = MEMORY[0x277D83B88];
    aBlock = (a1 & 1) == 0;
    __swift_project_boxed_opaque_existential_0(&aBlock, MEMORY[0x277D83B88]);
    v31 = sub_27292E484();
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
    [v29 setFromValue_];
    swift_unknownObjectRelease();
    v63 = v30;
    aBlock = a1 & 1;
    __swift_project_boxed_opaque_existential_0(&aBlock, v30);
    v32 = sub_27292E484();
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
    [v29 setToValue_];
    swift_unknownObjectRelease();
    v33 = *&v1[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__intelligentLightLayer];
    if (v33)
    {
      v34 = v33;
      v35 = sub_27292E224();
      [v34 addAnimation:v29 forKey:v35];
    }

    v36 = swift_allocObject();
    *(v36 + 16) = v2;
    *(v36 + 24) = a1 & 1;
    v64 = sub_27291460C;
    v65 = v36;
    aBlock = MEMORY[0x277D85DD0];
    v61 = 1107296256;
    v62 = sub_27290B0BC;
    v63 = &block_descriptor_126;
    v37 = _Block_copy(&aBlock);
    v38 = v2;

    [v26 setCompletionBlock_];
    _Block_release(v37);
    [v26 commit];
  }
}

void sub_27290E608()
{
  v1 = *&v0[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController_viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  if (LOBYTE(aBlock[0]) != 1)
  {
    return;
  }

  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = objc_allocWithZone(MEMORY[0x277CF0D48]);
  v5 = sub_27292E224();
  v6 = [v4 initWithPackageName:v5 inBundle:v3];

  if (!v6)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v7 = *&v0[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__pressAndHoldEffectView];
  *&v0[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__pressAndHoldEffectView] = v6;
  v8 = v6;

  v9 = [v8 layer];
  [v9 setOpaque_];
  v10 = [objc_opt_self() planeWithWidth:1.7 height:1.7];
  v11 = [v10 firstMaterial];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 emission];

    [v13 setContents_];
  }

  v14 = [v10 firstMaterial];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 transparent];

    [v16 setContents_];
  }

  v17 = [v10 firstMaterial];
  if (v17)
  {
    v18 = v17;
    [v17 setTransparency_];
  }

  v19 = [v10 firstMaterial];
  if (v19)
  {
    v20 = v19;
    [v19 setDoubleSided_];
  }

  v21 = [objc_opt_self() nodeWithGeometry_];

  v24 = v0[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__layout];
  if (v24 > 2)
  {
    __break(1u);
    goto LABEL_22;
  }

  *&v23 = flt_2881E36F8[v24 + 8];
  *&v25 = 0x8000000080000000;
  LODWORD(v22) = -1064514355;
  v26 = 4.4;
  v27 = *&v23 * 1.087;
  v0[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__layout];
  if (v0[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__layout])
  {
    v27 = flt_2881E36F8[v24 + 8];
  }

  else
  {
    v26 = 4.7826;
  }

  if (v24 != 1)
  {
    *&v22 = v26;
    *&v23 = v27;
    *&v25 = 0.0;
  }

  [v21 setPosition_];
  LODWORD(v28) = -1077342246;
  [v21 setEulerAngles_];
  [v21 setOpacity_];
  v29 = *&v0[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__deviceModelNode];
  if (v29)
  {
    [v29 addChildNode_];
  }

  v30 = objc_opt_self();
  [v30 begin];
  [v30 setAnimationDuration_];
  [v21 setOpacity_];
  v38[0] = 0x4016147B4069999ALL;
  v38[1] = 0x3FDF5C2940666666;
  v38[2] = 0x400947AE4069999ALL;
  v31 = v38[v24];
  v32 = swift_allocObject();
  v32[2] = v21;
  v32[3] = v0;
  v32[4] = v31;
  v32[5] = v9;
  aBlock[4] = sub_272913868;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_27290B0BC;
  aBlock[3] = &block_descriptor_76;
  v33 = _Block_copy(aBlock);
  v34 = v21;
  v35 = v0;
  v36 = v9;

  [v30 setCompletionBlock_];
  _Block_release(v33);
  [v30 commit];
}

void sub_27290EB34()
{
  v1 = sub_27292E154();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_27292E174();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v81 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_27292E144();
  v76 = *(v10 - 8);
  v77 = v10;
  v11 = *(v76 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_27292E194();
  v79 = *(v14 - 8);
  v80 = v14;
  v15 = *(v79 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v75 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v78 = &v68 - v18;
  v19 = *&v0[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController_viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  if (aBlock != 2)
  {
    return;
  }

  v73 = v7;
  v74 = v5;
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass_];
  v22 = objc_allocWithZone(MEMORY[0x277CF0D48]);
  v23 = sub_27292E224();
  v24 = [v22 initWithPackageName:v23 inBundle:v21];

  if (!v24)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v25 = *&v0[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__doubleTapEffectView];
  *&v0[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__doubleTapEffectView] = v24;
  v26 = v24;

  v27 = [v26 layer];
  [v27 setOpaque_];
  v28 = [objc_opt_self() planeWithWidth:1.7 height:1.7];
  v29 = [v28 firstMaterial];
  v82 = v28;
  if (v29)
  {
    v30 = v29;
    v31 = [v29 emission];

    [v31 setContents_];
    v28 = v82;
  }

  v32 = [v28 firstMaterial];
  if (v32)
  {
    v33 = v32;
    v34 = [v32 transparent];

    [v34 setContents_];
    v28 = v82;
  }

  v35 = [v28 firstMaterial];
  if (v35)
  {
    v36 = v35;
    [v35 setTransparency_];
  }

  v37 = [v28 firstMaterial];
  if (v37)
  {
    v38 = v37;
    [v37 setDoubleSided_];
  }

  v39 = [objc_opt_self() nodeWithGeometry_];

  v42 = v0[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__layout];
  if (v42 > 2)
  {
    __break(1u);
    goto LABEL_22;
  }

  v69 = v27;
  v70 = v6;
  v71 = v2;
  v72 = v1;
  *&v40 = flt_2881E3728[v42 + 8];
  LODWORD(v41) = -0.5;
  *&v43 = 0x8000000080000000;
  v44 = 0.5;
  v45 = *&v40 * 1.087;
  if (v42)
  {
    v45 = flt_2881E3728[v42 + 8];
  }

  else
  {
    v44 = 0.54348;
  }

  if (v42 != 1)
  {
    *&v43 = 0.0;
    *&v40 = v45;
    *&v41 = v44;
  }

  [v39 setPosition_];
  LODWORD(v46) = 1.5;
  LODWORD(v47) = 1.5;
  LODWORD(v48) = 1.0;
  [v39 setScale_];
  [v39 setOpacity_];
  v49 = *&v0[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__deviceModelNode];
  if (v49)
  {
    [v49 addChildNode_];
  }

  v50 = objc_opt_self();
  [v50 begin];
  [v50 setAnimationDuration_];
  [v39 setOpacity_];
  v51 = swift_allocObject();
  *(v51 + 16) = v0;
  v87 = sub_2729145AC;
  v88 = v51;
  aBlock = MEMORY[0x277D85DD0];
  v84 = 1107296256;
  v85 = sub_27290B0BC;
  v86 = &block_descriptor_113;
  v52 = _Block_copy(&aBlock);
  v53 = v0;

  [v50 setCompletionBlock_];
  _Block_release(v52);
  [v50 commit];
  sub_272908E38(0, &qword_28089BB40, 0x277D85C78);
  v68 = sub_27292E374();
  v54 = v75;
  sub_27292E184();
  *v13 = 2000;
  v56 = v76;
  v55 = v77;
  (*(v76 + 104))(v13, *MEMORY[0x277D85178], v77);
  v57 = v78;
  MEMORY[0x2743D0080](v54, v13);
  (*(v56 + 8))(v13, v55);
  v79 = *(v79 + 8);
  v58 = v54;
  v59 = v80;
  (v79)(v58, v80);
  v60 = swift_allocObject();
  *(v60 + 16) = v53;
  *(v60 + 24) = v39;
  v87 = sub_2729145E4;
  v88 = v60;
  aBlock = MEMORY[0x277D85DD0];
  v84 = 1107296256;
  v85 = sub_27290B0BC;
  v86 = &block_descriptor_119;
  v61 = _Block_copy(&aBlock);
  v62 = v53;
  v63 = v39;

  v64 = v81;
  sub_27292E164();
  aBlock = MEMORY[0x277D84F90];
  sub_272913678();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB50, &qword_272934B48);
  sub_2729136D0();
  v65 = v74;
  v66 = v72;
  sub_27292E3D4();
  v67 = v68;
  MEMORY[0x2743D0240](v57, v64, v65, v61);
  _Block_release(v61);

  (*(v71 + 8))(v65, v66);
  (*(v73 + 8))(v64, v70);
  (v79)(v57, v59);
}

id sub_27290F450(char a1)
{
  v2 = v1;
  v4 = sub_27292E154();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v51 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_27292E174();
  v52 = *(v8 - 8);
  v53 = v8;
  v9 = *(v52 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_27292E144();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_27292E194();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v26 = &v44 - v25;
  if (a1)
  {
    v45 = v11;
    v46 = v23;
    v47 = v22;
    v49 = v5;
    v50 = v4;
    v27 = sub_27292E224();
    v28 = [objc_opt_self() animationWithKeyPath_];

    [v28 setDuration_];
    v29 = sub_27292E334();
    [v28 setFromValue_];

    v30 = sub_27292E334();
    [v28 setToValue_];

    v48 = v2;
    v31 = *&v2[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__wallpaperBlockingLayer];
    if (v31)
    {
      v32 = v31;
      v33 = sub_27292E224();
      [v32 addAnimation:v28 forKey:v33];
    }

    sub_272908E38(0, &qword_28089BB40, 0x277D85C78);
    v44 = sub_27292E374();
    sub_27292E184();
    *v16 = 950;
    (*(v13 + 104))(v16, *MEMORY[0x277D85178], v12);
    MEMORY[0x2743D0080](v21, v16);
    (*(v13 + 8))(v16, v12);
    v34 = v47;
    v46 = *(v46 + 8);
    (v46)(v21, v47);
    v35 = swift_allocObject();
    v36 = v48;
    *(v35 + 16) = v48;
    aBlock[4] = sub_27291474C;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_27290B0BC;
    aBlock[3] = &block_descriptor_149;
    v37 = _Block_copy(aBlock);
    v38 = v36;

    v39 = v45;
    sub_27292E164();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_272913678();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB50, &qword_272934B48);
    sub_2729136D0();
    v41 = v50;
    v40 = v51;
    sub_27292E3D4();
    v42 = v44;
    MEMORY[0x2743D0240](v26, v39, v40, v37);
    _Block_release(v37);

    (*(v49 + 8))(v40, v41);
    (*(v52 + 8))(v39, v53);
    return (v46)(v26, v34);
  }

  else
  {
    result = *&v2[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__wallpaperBlockingLayer];
    if (result)
    {
      LODWORD(v24) = 1.0;

      return [result setOpacity_];
    }
  }

  return result;
}

void sub_27290F9F4()
{
  v1 = OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__homeIndicatorLayer;
  v2 = *(v0 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__homeIndicatorLayer);
  if (v2)
  {
    [v2 removeFromSuperlayer];
  }

  v3 = OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__keyboardLayer;
  v4 = *(v0 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__keyboardLayer);
  if (v4)
  {
    [v4 removeFromSuperlayer];
  }

  v5 = *(v0 + v1);
  *(v0 + v1) = 0;

  v6 = *(v0 + v3);
  *(v0 + v3) = 0;

  v7 = OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__pressAndHoldEffectView;
  v8 = *(v0 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__pressAndHoldEffectView);
  if (v8)
  {
    v9 = [v8 layer];
    [v9 removeFromSuperlayer];
  }

  v10 = OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__doubleTapEffectView;
  v11 = *(v0 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__doubleTapEffectView);
  if (v11)
  {
    v12 = [v11 layer];
    [v12 removeFromSuperlayer];
  }

  v13 = *(v0 + v7);
  *(v0 + v7) = 0;

  v14 = *(v0 + v10);
  *(v0 + v10) = 0;

  v15 = *(v0 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__displayCAView);
  if (v15)
  {
    v16 = v15;
    v17 = sub_27292E224();
    [v16 setState:v17 animated:0];
  }
}

void sub_27290FB64(void *a1)
{
  v2 = v1;
  v3 = [a1 rootNode];
  v4 = *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController_viewModel);
  [v3 setEulerAngles_];
  LODWORD(v7) = 1064011039;
  if (*(v4 + OBJC_IVAR____TtC14VoiceTriggerUI22GMIntroViewModelMobile_layout))
  {
    *&v7 = 1.0;
  }

  LODWORD(v5) = LODWORD(v7);
  LODWORD(v6) = LODWORD(v7);
  [v3 setScale_];
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = objc_allocWithZone(MEMORY[0x277CF0D48]);
  v11 = sub_27292E224();
  v12 = [v10 initWithPackageName:v11 inBundle:v9];

  if (!v12)
  {
    goto LABEL_36;
  }

  v13 = v12;
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 setFrame_];
  v14 = sub_27292E224();
  v15 = [v13 publishedObjectWithName_];

  if (v15)
  {
    sub_27292E3B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v62 = 0u;
    v63 = 0u;
  }

  v64 = v62;
  v65 = v63;
  if (*(&v63 + 1))
  {
    sub_272908E38(0, &qword_28089BCB8, 0x277CD9ED0);
    if (swift_dynamicCast())
    {
      type metadata accessor for GMImageUtil();
      swift_initStackObject();
      v16 = sub_27291D038(0xD000000000000013, 0x800000027293CB80);
      v17 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
      v18 = [v16 CGImage];
      [v17 setContents_];

      [v16 size];
      [v17 setFrame_];

      v21 = v17;
      GenericGray = CGColorCreateGenericGray(0.0, 0.0);
      [v21 setBackgroundColor_];

      [v61 addSublayer_];
    }
  }

  else
  {
    sub_27290B880(&v64, &qword_28089BCB0, &qword_272934D70);
  }

  v23 = *(v2 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__layout);
  if (v23 == 1)
  {
    goto LABEL_26;
  }

  v24 = sub_27292E224();
  v25 = [v13 publishedObjectWithName_];

  if (v25)
  {
    sub_27292E3B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v62 = 0u;
    v63 = 0u;
  }

  v64 = v62;
  v65 = v63;
  if (!*(&v63 + 1))
  {
    goto LABEL_25;
  }

  sub_272908E38(0, &qword_28089BCB8, 0x277CD9ED0);
  if (swift_dynamicCast())
  {
    v59 = v61;
    v26 = sub_27292E224();
    v27 = [v13 publishedObjectWithName_];

    if (v27)
    {
      sub_27292E3B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = 0u;
      v63 = 0u;
    }

    v64 = v62;
    v65 = v63;
    if (*(&v63 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_26;
      }

      v28 = v61;
      v60[0] = 0x42A40000C1100000;
      v60[1] = 0;
      v60[2] = 0x4268000000000000;
      if (v23 <= 2)
      {
        v29 = COERCE_FLOAT(v60[v23]);
        [v61 frame];
        [v59 setFrame_];
        [v59 frame];
        [v59 setFrame_];
        [v28 frame];
        [v28 setFrame_];
        [v28 frame];
        [v28 setFrame_];

        goto LABEL_26;
      }

      __break(1u);
LABEL_36:
      __break(1u);
      return;
    }

LABEL_25:
    sub_27290B880(&v64, &qword_28089BCB0, &qword_272934D70);
  }

LABEL_26:
  v32 = *(v2 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__displayCAView);
  *(v2 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__displayCAView) = v12;
  v33 = v13;

  v34 = sub_27292E224();
  v35 = [v3 childNodeWithName:v34 recursively:1];

  v36 = [v33 layer];
  [v36 setGeometryFlipped_];
  if (v35)
  {
    v37 = [v35 geometry];
    if (v37)
    {
      v38 = v37;
      v39 = [v37 firstMaterial];

      if (v39)
      {
        v40 = [v39 diffuse];

        [v40 setContents_];
      }
    }

    v41 = [v35 geometry];
    if (v41)
    {
      v42 = v41;
      v43 = [v41 firstMaterial];

      if (v43)
      {
        v44 = [v43 emission];

        [v44 setContents_];
      }
    }
  }

  v45 = *(v2 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__deviceDisplayLayer);
  *(v2 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__deviceDisplayLayer) = v36;
  v46 = v36;

  v47 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v48 = [objc_opt_self() blackColor];
  v49 = [v48 CGColor];

  [v47 setBackgroundColor_];
  [v47 setOpacity_];
  [v33 bounds];
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;

  [v47 setFrame_];
  [v46 addSublayer_];

  v58 = *(v2 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__wallpaperBlockingLayer);
  *(v2 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__wallpaperBlockingLayer) = v47;
}

uint64_t sub_2729103E0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a1;
  *(v5 + 16) = a5;
  *(v5 + 32) = sub_27292E2F4();
  *(v5 + 40) = sub_27292E2E4();
  v7 = sub_27292E2D4();
  *(v5 + 48) = v7;
  *(v5 + 56) = v6;

  return MEMORY[0x2822009F8](sub_272910480, v7, v6);
}

uint64_t sub_272910480()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__loadSceneTask);
  v0[8] = v2;
  if (v2)
  {
    v3 = *(MEMORY[0x277D857E0] + 4);

    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_272910600;

    return MEMORY[0x282200460]();
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__deviceDisplayLayer);
    v0[10] = v5;
    if (v5)
    {
      v6 = v5;

      return MEMORY[0x2822009F8](sub_27291081C, 0, 0);
    }

    else
    {
      return sub_27292E424();
    }
  }
}

uint64_t sub_272910600()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v7 = *v0;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_272910744, v5, v4);
}

uint64_t sub_272910744()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__deviceDisplayLayer);
  *(v0 + 80) = v1;
  if (!v1)
  {
    return sub_27292E424();
  }

  v2 = v1;

  return MEMORY[0x2822009F8](sub_27291081C, 0, 0);
}

uint64_t sub_27291081C()
{
  v1 = *(v0 + 32);
  *(v0 + 88) = sub_27292E2E4();
  v3 = sub_27292E2D4();

  return MEMORY[0x2822009F8](sub_2729108A8, v3, v2);
}

uint64_t sub_2729108A8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[3];
  v4 = v0[2];

  sub_2729109D0(v4, v2);
  v5 = v0[6];
  v6 = v0[7];

  return MEMORY[0x2822009F8](sub_272910968, v5, v6);
}

uint64_t sub_272910968()
{
  v1 = v0[10];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

void sub_2729109D0(uint64_t a1, void *a2)
{
  type metadata accessor for GMImageUtil();
  swift_initStackObject();
  v4 = sub_27291D038(0x69646E49656D6F48, 0xED0000726F746163);
  v5 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v6 = [v4 CGImage];
  [v5 setContents_];

  [v4 size];
  [v5 setFrame_];

  v9 = OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__homeIndicatorLayer;
  v10 = *(a1 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__homeIndicatorLayer);
  *(a1 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__homeIndicatorLayer) = v5;

  v11 = *(a1 + v9);
  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = v11;
  [a2 bounds];
  [v12 setFrame_];

  v13 = *(a1 + v9);
  if (!v13)
  {
    goto LABEL_5;
  }

  v14 = v13;
  [v14 frame];
  [v14 setFrame_];

  if (*(a1 + v9))
  {
    [a2 addSublayer_];
  }

  else
  {
LABEL_5:
    __break(1u);
  }
}

id sub_272910B78(void *a1, _BYTE *a2, void *a3, __n128 a4)
{
  v7 = objc_opt_self();
  [v7 begin];
  [v7 setAnimationDuration_];
  if (a2[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__layout] == 1)
  {
    v10.i32[1] = a4.n128_i32[1];
    v10.f32[0] = -a4.n128_f32[0];
    *&v9 = 0x8000000080000000;
  }

  else
  {
    v9 = 0.0;
    if (a2[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__layout])
    {
      v10 = a4.n128_u64[0];
    }

    else
    {
      v8 = vdup_n_s32(0x3F8B2164u);
      v10 = vmul_f32(a4.n128_u64[0], v8);
    }
  }

  v8.i32[0] = v10.i32[1];
  [a1 setPosition_];
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  aBlock[4] = sub_272913878;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_27290B0BC;
  aBlock[3] = &block_descriptor_82;
  v12 = _Block_copy(aBlock);
  v13 = a2;
  v14 = a3;

  [v7 setCompletionBlock_];
  _Block_release(v12);
  return [v7 commit];
}

void sub_272910D08(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__pressAndHoldEffectView);
  if (v1)
  {
    v2 = v1;
    v3 = sub_27292E224();
    [v2 setState:v3 animated:1];
  }

  sub_272913880();
}

id sub_272910D84(void *a1, float a2, float a3, float a4, double a5)
{
  v10 = objc_opt_self();
  [v10 begin];
  [v10 setAnimationDuration_];
  *&v11 = a2;
  *&v12 = a3;
  *&v13 = a4;
  [a1 setPosition_];

  return [v10 commit];
}

void sub_272910E2C(uint64_t a1, void *a2)
{
  v2 = *(a1 + *a2);
  if (v2)
  {
    v3 = v2;
    v4 = sub_27292E224();
    [v3 setState:v4 animated:1];
  }
}

id sub_272910EB8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController_viewModel);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  if (v27 != 2)
  {
    return result;
  }

  v5 = *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__homeIndicatorLayer);
  if (v5)
  {
    [v5 setHidden_];
  }

  v6 = OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__displayCAView;
  v7 = *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__displayCAView);
  if (v7)
  {
    v8 = v7;
    v9 = sub_27292E224();
    v10 = [v8 publishedObjectWithName_];

    if (v10)
    {
      sub_27292E3B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }

    v27 = v25;
    v28 = v26;
    if (*(&v26 + 1))
    {
      sub_272908E38(0, &qword_28089BCB8, 0x277CD9ED0);
      if (swift_dynamicCast())
      {
        result = *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__deviceDisplayLayer);
        if (!result)
        {
          __break(1u);
          return result;
        }

        [result bounds];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v19 = [objc_allocWithZone(MEMORY[0x277D61A60]) init];
        [v19 setFrame_];
        [v19 setIsQuicktationPill_];
        LODWORD(v20) = 1045220557;
        [v19 setMinimumPowerLevel_];
        [v19 setColorPalette_];
        [v19 setPaused_];
        [v25 addSublayer_];
      }

      goto LABEL_14;
    }
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  sub_27290B880(&v27, &qword_28089BCB0, &qword_272934D70);
LABEL_14:
  v21 = *(v1 + v6);
  if (v21)
  {
    v22 = v21;
    v23 = sub_27292E224();
    [v22 setState:v23 animated:1];
  }

  v24 = objc_opt_self();
  [v24 begin];
  [v24 setAnimationDuration_];
  [a1 setOpacity_];
  return [v24 commit];
}

uint64_t sub_2729111F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_27292E2F4();
  v4[4] = sub_27292E2E4();
  v6 = sub_27292E2D4();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_272911290, v6, v5);
}

uint64_t sub_272911290()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__loadSceneTask);
  v0[7] = v2;
  if (v2)
  {
    v3 = *(MEMORY[0x277D857E0] + 4);

    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = sub_272911410;

    return MEMORY[0x282200460]();
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__deviceDisplayLayer);
    v0[9] = v5;
    if (v5)
    {
      v6 = v5;

      return MEMORY[0x2822009F8](sub_27291162C, 0, 0);
    }

    else
    {
      return sub_27292E424();
    }
  }
}

uint64_t sub_272911410()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v7 = *v0;

  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_272911554, v5, v4);
}

uint64_t sub_272911554()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__deviceDisplayLayer);
  *(v0 + 72) = v1;
  if (!v1)
  {
    return sub_27292E424();
  }

  v2 = v1;

  return MEMORY[0x2822009F8](sub_27291162C, 0, 0);
}

uint64_t sub_27291162C()
{
  v1 = *(v0 + 24);
  *(v0 + 80) = sub_27292E2E4();
  v3 = sub_27292E2D4();

  return MEMORY[0x2822009F8](sub_2729116B8, v3, v2);
}

uint64_t sub_2729116B8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[2];

  sub_2729117CC(v3, v2);
  v4 = v0[5];
  v5 = v0[6];

  return MEMORY[0x2822009F8](sub_272911764, v4, v5);
}

uint64_t sub_272911764()
{
  v1 = v0[9];
  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

void sub_2729117CC(uint64_t a1, id a2)
{
  v4 = OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__intelligentLightLayer;
  v5 = *(a1 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__intelligentLightLayer);
  if (v5)
  {
    [v5 removeFromSuperlayer];
  }

  v35[0] = 0x43C80000427C0000;
  v35[1] = 0x43C8000042640000;
  v35[2] = 0x43C8000042480000;
  v6 = *(a1 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__layout);
  if (v6 > 2)
  {
    __break(1u);
  }

  else
  {
    v33 = *&v35[v6];
    [a2 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [objc_allocWithZone(MEMORY[0x277D61A60]) init];
    [v15 setFrame_];
    [v15 setIsQuicktationPill_];
    LODWORD(v16) = 1045220557;
    [v15 setMinimumPowerLevel_];
    [v15 setColorPalette_];
    [v15 setPaused_];
    [v15 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v25 = [objc_allocWithZone(MEMORY[0x277D61A48]) init];
    [v25 setOpaque_];
    LODWORD(v26) = 1045220557;
    [v25 setMinimumPowerLevel_];
    [v25 setAllowsHitTesting_];
    [v25 setFrame_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BC98, &qword_272934D60);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_272934680;
    CAColorMatrixMakeMultiplyColor();
    v28 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
    v29 = [objc_opt_self() valueWithCAColorMatrix_];
    [v28 setValue:v29 forKey:*MEMORY[0x277CDA440]];

    *(v27 + 56) = sub_272908E38(0, &qword_28089BCC8, 0x277CD9EA0);
    *(v27 + 32) = v28;
    v30 = sub_27292E2B4();

    [v15 setFilters_];

    [v15 setMask_];
    [v25 setBurstOpacity_];
    [v25 setBurstStartPosition_];
    if (*(&v33 + 1) != 0.0)
    {
      LODWORD(v31) = HIDWORD(v33);
      [v25 setCustomCornerRadius:v33 forWidth:v31];
    }

    [v25 animateOn];

    [a2 addSublayer_];
    v32 = *(a1 + v4);
    *(a1 + v4) = v15;
  }
}

void sub_272911B90(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__wallpaperBlockingLayer;
  v3 = *(a1 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__wallpaperBlockingLayer);
  if (v3)
  {
    [v3 removeFromSuperlayer];
    v3 = *(a1 + v2);
  }

  *(a1 + v2) = 0;
}

uint64_t sub_272911BE4(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController_viewModel);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_27292D8B4();
}

id GMDeviceSceneViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_27292E224();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id GMDeviceSceneViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_272911E90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2729147E0;

  return sub_27290CB6C(a1, v4, v5, v6);
}

uint64_t sub_272911F44(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27291203C;

  return v7(a1);
}

uint64_t sub_27291203C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_272912134(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2729147E0;

  return v7();
}

uint64_t sub_27291221C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_272912304;

  return v8();
}

uint64_t sub_272912304()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2729123F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BC00, &qword_272934CB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_2729131FC(a3, v25 - v11);
  v13 = sub_27292E314();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_27290B880(v12, &qword_28089BC00, &qword_272934CB0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_27292E304();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_27292E2D4();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_27292E264() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_27290B880(a3, &qword_28089BC00, &qword_272934CB0);

    return v23;
  }

LABEL_8:
  sub_27290B880(a3, &qword_28089BC00, &qword_272934CB0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2729126E4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2729147E4;

  return v7(a1);
}

void sub_2729127DC()
{
  v1 = OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__sceneView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CDBB20]) init];
  v2 = OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__cameraNode;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277CDBAA8]) init];
  *(v0 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__deviceModelNode) = 0;
  *(v0 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__deviceDisplayLayer) = 0;
  *(v0 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__wallpaperBlockingLayer) = 0;
  *(v0 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__keyboardLayer) = 0;
  *(v0 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__homeIndicatorLayer) = 0;
  *(v0 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__intelligentLightLayer) = 0;
  *(v0 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__edgeLightMask) = 0;
  *(v0 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__displayCAView) = 0;
  *(v0 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__pressAndHoldEffectView) = 0;
  *(v0 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__doubleTapEffectView) = 0;
  *(v0 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__previousState) = 8;
  *(v0 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__loadSceneTask) = 0;
  *(v0 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController_captureSnapshotForResource) = 0;
  sub_27292E424();
  __break(1u);
}

uint64_t sub_272912924()
{
  sub_27292E2F4();
  v0[18] = sub_27292E2E4();
  v2 = sub_27292E2D4();
  v0[19] = v2;
  v0[20] = v1;

  return MEMORY[0x2822009F8](sub_2729129B8, v2, v1);
}

uint64_t sub_2729129B8()
{
  v1 = type metadata accessor for GMIntroViewModelMobile();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = sub_272916D5C();
  v5 = objc_allocWithZone(type metadata accessor for GMDeviceSceneViewController());
  *(v0 + 168) = sub_27290C6D0(v4);
  v6 = swift_task_alloc();
  *(v0 + 176) = v6;
  *v6 = v0;
  v6[1] = sub_272912A84;

  return sub_27290CEB0();
}

uint64_t sub_272912A84(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v7 = *v1;
  *(*v1 + 184) = a1;

  v4 = *(v2 + 160);
  v5 = *(v2 + 152);

  return MEMORY[0x2822009F8](sub_272912BAC, v5, v4);
}

uint64_t sub_272912BAC()
{
  v1 = *(v0 + 168);
  sub_27290D22C(*(v0 + 184));
  v2 = [objc_opt_self() rendererWithDevice:0 options:0];
  *(v0 + 192) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BC98, &qword_272934D60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_272934680;
  v4 = [*(v1 + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__sceneView) scene];
  if (v4)
  {
    v5 = v4;
    *(v3 + 56) = sub_272908E38(0, &qword_28089BCA0, 0x277CDBAF8);
    *(v3 + 32) = v5;
    v6 = sub_27292E2B4();
    *(v0 + 200) = v6;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 208;
    *(v0 + 24) = sub_272912DB0;
    v7 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BCA8, &qword_272934D68);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_27290DA20;
    *(v0 + 104) = &block_descriptor_0;
    *(v0 + 112) = v7;
    [v2 prepareObjects:v6 withCompletionHandler:v0 + 80];
    v4 = (v0 + 16);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v4);
}

uint64_t sub_272912DB0()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_272912EB8, v2, v1);
}

uint64_t sub_272912EB8()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = *(v0 + 144);

  v5 = *(v0 + 208);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_272912F84()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_272912304;

  return sub_27290DBE8(v2);
}

uint64_t sub_272913030()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2729147E0;

  return sub_272912134(v2, v3, v5);
}

uint64_t objectdestroy_9Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_272913130(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2729147E0;

  return sub_27291221C(a1, v4, v5, v7);
}

uint64_t sub_2729131FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BC00, &qword_272934CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27291326C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2729147E0;

  return sub_2729126E4(a1, v5);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_272913380(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2729133D4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2729147E0;

  return sub_272911F44(a1, v5);
}

uint64_t sub_27291348C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_272912304;

  return sub_272911F44(a1, v5);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_272913550(uint64_t a1, int a2)
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

uint64_t sub_272913598(uint64_t result, int a2, int a3)
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

unint64_t sub_2729135F4()
{
  result = qword_28089BCC0;
  if (!qword_28089BCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089BCC0);
  }

  return result;
}

unint64_t sub_272913678()
{
  result = qword_28089BB48;
  if (!qword_28089BB48)
  {
    sub_27292E154();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089BB48);
  }

  return result;
}

unint64_t sub_2729136D0()
{
  result = qword_28089BB58;
  if (!qword_28089BB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089BB50, &qword_272934B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089BB58);
  }

  return result;
}

uint64_t sub_272913734(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2729147E0;

  return sub_2729103E0(v7, a1, v4, v5, v6);
}

void sub_272913880()
{
  v1 = v0;
  v84 = sub_27292E154();
  v2 = *(v84 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v84);
  v83 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_27292E174();
  v6 = *(v5 - 8);
  v101 = v5;
  v102 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v97 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_27292E144();
  v9 = *(v99 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v99);
  v12 = (&v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100 = sub_27292E194();
  v13 = *(v100 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v100);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v77 - v18;
  v20 = *&v0[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController_viewModel];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  if (aBlock == 1)
  {
    v82 = v1;
    v21 = *&v1[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__deviceModelNode];
    if (v21)
    {
      v22 = v21;
      v23 = sub_27292E224();
      v24 = [v22 childNodeWithName:v23 recursively:1];

      if (v24)
      {
        [v24 position];
        v26 = v25;
        v28 = v27;
        v30 = v29;
        [v24 position];
        *&v32 = v31 + -0.04;
        v95 = v32;
        [v24 position];
        v96 = v33;
        [v24 position];
        v35 = v34;
        v36 = v82[OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__layout];
        v37 = v95;
        DWORD1(v37) = v96;
        v98 = v2;
        if (v36 == 1)
        {
          v35 = -v34;
          *&v37 = -*&v95;
        }

        else if (!v36)
        {
          *&v37 = vmul_f32(*&v37, vdup_n_s32(0x3F8B2164u));
          v93 = v37;
          v35 = v34 * 1.087;
LABEL_9:
          v88 = sub_272908E38(0, &qword_28089BB40, 0x277D85C78);
          v38 = sub_27292E374();
          sub_27292E184();
          *v12 = 300;
          v87 = *MEMORY[0x277D85178];
          v89 = v9[13];
          *&v96 = v9 + 13;
          v39 = v99;
          v89(v12);
          MEMORY[0x2743D0080](v17, v12);
          v40 = v9[1];
          v94 = v9 + 1;
          *&v95 = v40;
          v40(v12, v39);
          v41 = *(v13 + 8);
          v85 = v13 + 8;
          v86 = v41;
          v42 = v17;
          v41(v17, v100);
          v43 = swift_allocObject();
          *(v43 + 16) = v24;
          *(v43 + 24) = v93;
          *(v43 + 32) = v35;
          v107 = sub_27291450C;
          v108 = v43;
          aBlock = MEMORY[0x277D85DD0];
          v104 = 1107296256;
          v105 = sub_27290B0BC;
          v106 = &block_descriptor_88;
          v44 = _Block_copy(&aBlock);
          v80 = v24;

          v45 = v97;
          sub_27292E164();
          aBlock = MEMORY[0x277D84F90];
          v91 = sub_272913678();
          v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB50, &qword_272934B48);
          *&v93 = sub_2729136D0();
          v46 = v83;
          v47 = v84;
          sub_27292E3D4();
          MEMORY[0x2743D0240](v19, v45, v46, v44);
          _Block_release(v44);

          v81 = *(v98 + 8);
          v98 += 8;
          v81(v46, v47);
          v48 = *(v102 + 8);
          v102 += 8;
          v92 = v48;
          v48(v45, v101);
          v49 = v100;
          v50 = v86;
          v86(v19, v100);
          v78 = v19;
          v79 = sub_27292E374();
          sub_27292E184();
          *v12 = 310;
          v51 = v99;
          (v89)(v12, v87, v99);
          MEMORY[0x2743D0080](v42, v12);
          (v95)(v12, v51);
          v50(v42, v49);
          v52 = swift_allocObject();
          v53 = v82;
          *(v52 + 16) = v82;
          v107 = sub_272914538;
          v108 = v52;
          aBlock = MEMORY[0x277D85DD0];
          v104 = 1107296256;
          v105 = sub_27290B0BC;
          v106 = &block_descriptor_94;
          v54 = _Block_copy(&aBlock);
          v82 = v53;

          v55 = v97;
          sub_27292E164();
          aBlock = MEMORY[0x277D84F90];
          sub_27292E3D4();
          v56 = v78;
          v57 = v79;
          MEMORY[0x2743D0240](v78, v55, v46, v54);
          _Block_release(v54);

          v58 = v81;
          v81(v46, v47);
          v92(v55, v101);
          v59 = v100;
          v60 = v86;
          v86(v56, v100);
          v79 = sub_27292E374();
          sub_27292E184();
          *v12 = 1090;
          v61 = v99;
          (v89)(v12, v87, v99);
          MEMORY[0x2743D0080](v42, v12);
          (v95)(v12, v61);
          v60(v42, v59);
          v62 = swift_allocObject();
          v63 = v82;
          *(v62 + 16) = v82;
          v107 = sub_272914804;
          v108 = v62;
          aBlock = MEMORY[0x277D85DD0];
          v104 = 1107296256;
          v105 = sub_27290B0BC;
          v106 = &block_descriptor_100;
          v64 = _Block_copy(&aBlock);
          v65 = v63;

          v66 = v97;
          sub_27292E164();
          aBlock = MEMORY[0x277D84F90];
          sub_27292E3D4();
          v67 = v79;
          MEMORY[0x2743D0240](v56, v66, v46, v64);
          _Block_release(v64);

          v58(v46, v47);
          v92(v66, v101);
          v68 = v100;
          v69 = v86;
          v86(v56, v100);
          v88 = sub_27292E374();
          sub_27292E184();
          *v12 = 2000;
          v70 = v99;
          (v89)(v12, v87, v99);
          MEMORY[0x2743D0080](v42, v12);
          (v95)(v12, v70);
          v69(v42, v68);
          v71 = v69;
          v72 = swift_allocObject();
          v73 = v80;
          *(v72 + 16) = v80;
          *(v72 + 24) = v26;
          *(v72 + 28) = v28;
          *(v72 + 32) = v30;
          v107 = sub_272914568;
          v108 = v72;
          aBlock = MEMORY[0x277D85DD0];
          v104 = 1107296256;
          v105 = sub_27290B0BC;
          v106 = &block_descriptor_106;
          v74 = _Block_copy(&aBlock);
          v75 = v73;

          sub_27292E164();
          aBlock = MEMORY[0x277D84F90];
          sub_27292E3D4();
          v76 = v88;
          MEMORY[0x2743D0240](v56, v66, v46, v74);
          _Block_release(v74);

          v81(v46, v47);
          v92(v66, v101);
          v71(v56, v68);
          return;
        }

        v93 = v37;
        goto LABEL_9;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t block_copy_helper_104(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_2729145E4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_272910EB8(v1);
}

id sub_27291460C()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC14VoiceTriggerUI27GMDeviceSceneViewController__intelligentLightLayer);
  if (result)
  {
    v2 = 0.0;
    if (*(v0 + 24))
    {
      *&v2 = 1.0;
    }

    return [result setOpacity_];
  }

  return result;
}

uint64_t objectdestroyTm_0(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_272914690(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2729147E0;

  return sub_2729111F4(a1, v4, v5, v6);
}

unint64_t sub_272914754()
{
  result = qword_28089BCD0;
  if (!qword_28089BCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089BCD0);
  }

  return result;
}

uint64_t sub_272914824()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BD18, &unk_272934FE0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BAE8, &qword_2729349B0);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_272934F50;
  v3 = v18 + v2;
  v4 = *(v0 + 48);
  v5 = *MEMORY[0x277D0E110];
  v6 = sub_27292D6C4();
  v7 = *(*(v6 - 8) + 104);
  v7(v3, v5, v6);
  *(v3 + v4) = 1;
  v8 = *(v0 + 48);
  v7(v3 + v1, *MEMORY[0x277D0E1B8], v6);
  *(v3 + v1 + v8) = 4;
  v9 = *(v0 + 48);
  v7(v3 + 2 * v1, *MEMORY[0x277D0E1D0], v6);
  *(v3 + 2 * v1 + v9) = 4;
  v10 = *(v0 + 48);
  v7(v3 + 3 * v1, *MEMORY[0x277D0E130], v6);
  *(v3 + 3 * v1 + v10) = 2;
  v11 = *(v0 + 48);
  v7(v3 + 4 * v1, *MEMORY[0x277D0E120], v6);
  *(v3 + 4 * v1 + v11) = 2;
  v12 = *(v0 + 48);
  v7(v3 + 5 * v1, *MEMORY[0x277D0E1A0], v6);
  *(v3 + 5 * v1 + v12) = 2;
  v13 = *(v0 + 48);
  v7(v3 + 6 * v1, *MEMORY[0x277D0E188], v6);
  *(v3 + 6 * v1 + v13) = 8;
  v14 = v3 + 7 * v1;
  v15 = *(v0 + 48);
  v7(v14, *MEMORY[0x277D0E210], v6);
  *(v14 + v15) = 16;
  v16 = sub_2729091B4(v18);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  off_28089BCD8 = v16;
  return result;
}

id sub_272914B0C()
{
  v0 = sub_27292D764();
  v24 = *(v0 - 8);
  v25 = v0;
  v1 = *(v24 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_27292D6B4();
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v22);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_27292D734();
  v8 = *(v23 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v23);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_27292D784();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v21);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_27292D704();
  v30 = &off_2881E4350;
  __swift_allocate_boxed_opaque_existential_1(&v28);
  sub_27292D694();
  sub_27292D6A4();
  (*(v4 + 8))(v7, v22);
  (*(v24 + 104))(v3, *MEMORY[0x277D0E2B8], v25);
  sub_27292D714();
  sub_27292D774();
  (*(v8 + 8))(v11, v23);
  sub_27292D744();
  (*(v12 + 8))(v15, v21);
  v16 = v26;
  sub_272915AF0(&v28, &v26[OBJC_IVAR____TtC14VoiceTriggerUI19GMAnalyticsProvider_gmAvailabilityProvider]);
  v17 = &v16[OBJC_IVAR____TtC14VoiceTriggerUI19GMAnalyticsProvider_sendFunction];
  *v17 = sub_272914E4C;
  v17[1] = 0;
  v18 = type metadata accessor for GMAnalyticsProvider();
  v27.receiver = v16;
  v27.super_class = v18;
  return objc_msgSendSuper2(&v27, sel_init);
}

uint64_t sub_272914E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_27292E224();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_272914F0C;
  v10[3] = &block_descriptor_1;
  v7 = _Block_copy(v10);

  v8 = AnalyticsSendEventLazy();

  _Block_release(v7);

  return v8;
}

id sub_272914F0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_272908E38(0, &qword_28089BCF0, 0x277D82BB8);
    v5 = sub_27292E1F4();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL sub_27291501C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_27291504C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_272915078@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_272915164@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_2729161A4(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_2729151A4(char a1, uint64_t a2)
{
  v90 = a2;
  v91 = sub_27292D6C4();
  v3 = *(v91 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v91);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_27292D704();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v87 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_27292D6E4();
  v11 = *(v79 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v79);
  v78 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BCF8, &qword_272934FC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_272934680;
  *(inited + 32) = 7627617;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v80 = sub_272909404(inited);
  swift_setDeallocating();
  sub_27290B880(inited + 32, &qword_28089BD00, &qword_272934FD0);
  v88 = *(&off_279E54D80 + a1);
  v86 = *(v88 + 16);
  if (!v86)
  {
LABEL_51:

    return v80;
  }

  v15 = 0;
  v85 = (v90 + OBJC_IVAR____TtC14VoiceTriggerUI19GMAnalyticsProvider_gmAvailabilityProvider);
  v84 = (v8 + 16);
  v83 = (v8 + 88);
  v82 = *MEMORY[0x277D0DFB0];
  v77 = (v8 + 8);
  v76 = (v8 + 96);
  v75 = (v11 + 32);
  v74 = (v11 + 8);
  v90 = v3 + 16;
  v16 = (v3 + 8);
  v81 = v7;
  v17 = v87;
  while (v15 < *(v88 + 16))
  {
    v18 = __swift_project_boxed_opaque_existential_0(v85, v85[3]);
    (*v84)(v17, v18, v7);
    v19 = (*v83)(v17, v7);
    if (v19 == v82)
    {
      (*v76)(v17, v7);
      v20 = v78;
      v21 = v17;
      v22 = v79;
      (*v75)(v78, v21, v79);
      v23 = sub_27292D6D4();
      (*v74)(v20, v22);
    }

    else
    {
      (*v77)(v17, v7);
      v23 = MEMORY[0x277D84FA0];
    }

    v89 = v15 + 1;
    v24 = 1 << *(v23 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & *(v23 + 56);
    v27 = (v24 + 63) >> 6;

    v28 = 0;
    for (i = MEMORY[0x277D84F90]; v26; *&i[8 * v37 + 32] = v73)
    {
      while (1)
      {
LABEL_19:
        (*(v3 + 16))(v6, *(v23 + 48) + *(v3 + 72) * (__clz(__rbit64(v26)) | (v28 << 6)), v91);
        if (qword_28089BA00 != -1)
        {
          swift_once();
        }

        v26 &= v26 - 1;
        v31 = off_28089BCD8;
        if (*(off_28089BCD8 + 2))
        {
          v32 = sub_272917974(v6);
          if (v33)
          {
            break;
          }
        }

        (*v16)(v6, v91);
        if (!v26)
        {
          goto LABEL_15;
        }
      }

      v34 = *(v31[7] + 8 * v32);
      (*v16)(v6, v91);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        i = sub_272915B20(0, *(i + 2) + 1, 1, i);
      }

      v37 = *(i + 2);
      v36 = *(i + 3);
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        v72 = v37 + 1;
        v39 = sub_272915B20((v36 > 1), v37 + 1, 1, i);
        v38 = v72;
        i = v39;
      }

      *(i + 2) = v38;
    }

    while (1)
    {
LABEL_15:
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_53;
      }

      if (v30 >= v27)
      {
        break;
      }

      v26 = *(v23 + 56 + 8 * v30);
      ++v28;
      if (v26)
      {
        v28 = v30;
        goto LABEL_19;
      }
    }

    v40 = *(i + 2);
    if (!v40)
    {
      v42 = 0;
      v7 = v81;
      v15 = v89;
      goto LABEL_38;
    }

    v7 = v81;
    v15 = v89;
    if (v40 <= 3)
    {
      v41 = 0;
      v42 = 0;
LABEL_36:
      v48 = v40 - v41;
      v49 = &i[8 * v41 + 32];
      do
      {
        v50 = *v49;
        v49 += 8;
        *&v42 |= v50;
        --v48;
      }

      while (v48);
      goto LABEL_38;
    }

    v41 = v40 & 0x7FFFFFFFFFFFFFFCLL;
    v43 = (i + 48);
    v44 = 0uLL;
    v45 = v40 & 0x7FFFFFFFFFFFFFFCLL;
    v46 = 0uLL;
    do
    {
      v44 = vorrq_s8(v43[-1], v44);
      v46 = vorrq_s8(*v43, v46);
      v43 += 2;
      v45 -= 4;
    }

    while (v45);
    v47 = vorrq_s8(v46, v44);
    v42 = vorr_s8(*v47.i8, *&vextq_s8(v47, v47, 8uLL));
    if (v40 != v41)
    {
      goto LABEL_36;
    }

LABEL_38:

    v51 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    v52 = sub_272908E38(0, &qword_28089BD08, 0x277CCABB0);
    v94 = v92;
    v93 = v51;
    v95 = v52;
    if (v52)
    {
      sub_272908E38(0, &qword_28089BCF0, 0x277D82BB8);
      if (swift_dynamicCast())
      {
        v53 = v92;
        v54 = v80;
        v55 = swift_isUniquelyReferenced_nonNull_native();
        v93 = v54;
        v56 = sub_2729179F8(7631717, 0xE300000000000000);
        v58 = *(v54 + 16);
        v59 = (v57 & 1) == 0;
        v60 = __OFADD__(v58, v59);
        v61 = v58 + v59;
        if (v60)
        {
          goto LABEL_54;
        }

        v62 = v57;
        if (*(v54 + 24) >= v61)
        {
          if ((v55 & 1) == 0)
          {
            v70 = v56;
            sub_272915EC8();
            v56 = v70;
          }
        }

        else
        {
          sub_272915C24(v61, v55);
          v56 = sub_2729179F8(7631717, 0xE300000000000000);
          if ((v62 & 1) != (v63 & 1))
          {
            goto LABEL_56;
          }
        }

        v64 = v93;
        v80 = v93;
        if (v62)
        {
          v65 = v93[7];
          v66 = *(v65 + 8 * v56);
          *(v65 + 8 * v56) = v53;

          v53 = v66;
        }

        else
        {
          v93[(v56 >> 6) + 8] |= 1 << v56;
          v67 = (v64[6] + 16 * v56);
          *v67 = 7631717;
          v67[1] = 0xE300000000000000;
          *(v64[7] + 8 * v56) = v53;
          v68 = v64[2];
          v60 = __OFADD__(v68, 1);
          v69 = v68 + 1;
          if (v60)
          {
            goto LABEL_55;
          }

          v64[2] = v69;
        }
      }
    }

    else
    {
      sub_27290B880(&v93, &qword_28089BCB0, &qword_272934D70);
    }

    v17 = v87;
    if (v15 == v86)
    {
      goto LABEL_51;
    }
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  result = sub_27292E4C4();
  __break(1u);
  return result;
}

id sub_272915A48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMAnalyticsProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_272915AF0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_272915B20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BD10, &qword_272934FD8);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_272915C24(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BAF8, &unk_2729349C0);
  v39 = a2;
  result = sub_27292E454();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_27292E4D4();
      sub_27292E274();
      result = sub_27292E4F4();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

id sub_272915EC8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BAF8, &unk_2729349C0);
  v2 = *v0;
  v3 = sub_27292E444();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

unint64_t sub_272916048()
{
  result = qword_28089BD20;
  if (!qword_28089BD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089BD20);
  }

  return result;
}

unint64_t sub_2729160A0()
{
  result = qword_28089BD28;
  if (!qword_28089BD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089BD28);
  }

  return result;
}

unint64_t sub_2729160F8()
{
  result = qword_28089BD30;
  if (!qword_28089BD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089BD30);
  }

  return result;
}

unint64_t sub_272916150()
{
  result = qword_28089BD38;
  if (!qword_28089BD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089BD38);
  }

  return result;
}

uint64_t sub_2729161A4(uint64_t a1)
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

uint64_t sub_2729161E0(uint64_t a1)
{
  v3 = type metadata accessor for GMEnrollmentSetupIntroViewTablet();
  v4 = *(*(v3 - 1) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = objc_opt_self();
  v11 = [v10 sharedStyle];
  v12 = [v11 isIpad];

  v13 = type metadata accessor for EnrollmentStateChange(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  if (v12)
  {
    v16 = swift_allocObject();
    LOBYTE(v35) = 0;
    sub_27292D884();
    LOBYTE(v35) = 0;
    sub_27292D884();
    *&v9[v3[7]] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BD50, &qword_272935208);
    swift_storeEnumTagMultiPayload();
    *v9 = a1;
    *(v9 + 1) = v16;
    *(v9 + 2) = sub_2729190EC;
    *(v9 + 3) = 0;
    v9[32] = 0;
    v17 = &v9[v3[8]];
    v45 = 0x4074000000000000;
    swift_unknownObjectRetain();

    sub_27292E014();
    v18 = v36;
    *v17 = v35;
    *(v17 + 1) = v18;
    v19 = v3[9];
    v20 = [v10 sharedStyle];
    v21 = [v20 isIpadMini];

    v9[v19] = v21;
    v22 = *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI33GMEnrollmentSetupIntroViewManager__enrollmentStateChange);
    *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI33GMEnrollmentSetupIntroViewManager__enrollmentStateChange) = v16;

    sub_2729168FC(v9, v7);
    v23 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BD58, &qword_272935210));
    v24 = sub_27292DB64();
    sub_272916960(v9);
    return v24;
  }

  else
  {
    v26 = swift_allocObject();
    LOBYTE(v35) = 0;
    sub_27292D884();
    LOBYTE(v35) = 0;
    sub_27292D884();
    type metadata accessor for GMImageUtil();
    v27 = swift_allocObject();
    v45 = 0;
    sub_27292E014();
    v28 = v35;
    v29 = v36;
    LOBYTE(v45) = 0;
    sub_27292E014();
    v30 = v35;
    v31 = v36;
    LOBYTE(v45) = 0;
    v32 = *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI33GMEnrollmentSetupIntroViewManager__enrollmentStateChange);
    *(v1 + OBJC_IVAR____TtC14VoiceTriggerUI33GMEnrollmentSetupIntroViewManager__enrollmentStateChange) = v26;
    swift_unknownObjectRetain();

    v35 = a1;
    v36 = v26;
    v37 = v27;
    v38 = sub_2729097B8;
    v39 = 0;
    v40 = v45;
    v41 = v28;
    v42 = v29;
    v43 = v30;
    v44 = v31;
    v33 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BD48, &qword_2729351D0));
    return sub_27292DB64();
  }
}

uint64_t sub_272916628()
{
  if (*(v0 + OBJC_IVAR____TtC14VoiceTriggerUI33GMEnrollmentSetupIntroViewManager__enrollmentStateChange))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_27292D8B4();
  }

  return result;
}

uint64_t sub_2729166B4(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC14VoiceTriggerUI33GMEnrollmentSetupIntroViewManager__enrollmentStateChange))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_27292D8B4();
  }

  return result;
}

id GMEnrollmentSetupIntroViewManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GMEnrollmentSetupIntroViewManager.init()()
{
  *&v0[OBJC_IVAR____TtC14VoiceTriggerUI33GMEnrollmentSetupIntroViewManager__enrollmentStateChange] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMEnrollmentSetupIntroViewManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GMEnrollmentSetupIntroViewManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMEnrollmentSetupIntroViewManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_272916834(uint64_t a1)
{
  v2 = sub_27292D914();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_27292DA74();
}

uint64_t sub_2729168FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GMEnrollmentSetupIntroViewTablet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_272916960(uint64_t a1)
{
  v2 = type metadata accessor for GMEnrollmentSetupIntroViewTablet();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2729169F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  *a2 = v5;
  return result;
}

uint64_t sub_272916A88(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_27292D8B4();
}

uint64_t sub_272916BE4()
{
  v1 = *v0;
  sub_27292E4D4();
  MEMORY[0x2743D03C0](v1);
  return sub_27292E4F4();
}

uint64_t sub_272916C58()
{
  v1 = *v0;
  sub_27292E4D4();
  MEMORY[0x2743D03C0](v1);
  return sub_27292E4F4();
}

uint64_t *sub_272916C9C@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

void *sub_272916CC0()
{
  result = sub_27290904C(&unk_2881E3658);
  off_28089BD60 = result;
  return result;
}

uint64_t sub_272916CE8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  return v1;
}

uint64_t sub_272916D5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB18, &qword_2729353E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12[-v4];
  v6 = OBJC_IVAR____TtC14VoiceTriggerUI22GMIntroViewModelMobile__show3DScene;
  v12[15] = 0;
  sub_27292D884();
  (*(v2 + 32))(v0 + v6, v5, v1);
  v7 = sub_27292E224();
  LODWORD(v5) = MGGetBoolAnswer();

  if (v5)
  {
    *(v0 + OBJC_IVAR____TtC14VoiceTriggerUI22GMIntroViewModelMobile_layout) = 0;
  }

  else
  {
    v8 = sub_27292E224();
    v9 = MGGetBoolAnswer();

    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    *(v0 + OBJC_IVAR____TtC14VoiceTriggerUI22GMIntroViewModelMobile_layout) = v10;
  }

  return sub_27291A9BC();
}

double sub_272916EDC()
{
  v1 = *(v0 + OBJC_IVAR____TtC14VoiceTriggerUI22GMIntroViewModelMobile_layout);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  return 0.0;
}

unint64_t sub_272916FA0()
{
  if (qword_28089BA08 != -1)
  {
    swift_once();
  }

  v0 = off_28089BD60;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  if (v0[2])
  {
    result = sub_272917908(v7);
    if (v2)
    {
      v3 = (v0[7] + 12 * result);
      v4 = *v3;
      v5 = v3[1];
      v6 = v3[2];
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

double sub_27291707C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  v0 = 0.48;
  if (v4)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_27292D8A4();

    if (v3 != 3)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_27292D8A4();

      if (v2 == 7)
      {
        return 0.48;
      }

      else
      {
        return 0.5;
      }
    }
  }

  return v0;
}

double sub_2729171B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  v0 = 0.75;
  if (v4)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_27292D8A4();

    if (v3 != 3)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_27292D8A4();

      return dbl_2729352F0[v2 == 7];
    }
  }

  return v0;
}

uint64_t sub_2729172E4()
{
  v1 = OBJC_IVAR____TtC14VoiceTriggerUI22GMIntroViewModelMobile__show3DScene;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB18, &qword_2729353E0);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_272917358()
{
  v1 = OBJC_IVAR____TtC14VoiceTriggerUI16GMIntroViewModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BD90, &unk_2729358B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14VoiceTriggerUI16GMIntroViewModel__spinnerVisible;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB18, &qword_2729353E0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC14VoiceTriggerUI22GMIntroViewModelMobile__show3DScene, v4);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GMIntroViewModelMobile()
{
  result = qword_28089BD70;
  if (!qword_28089BD70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2729174D0()
{
  sub_272917568();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_272917568()
{
  if (!qword_28089BD80)
  {
    v0 = sub_27292D8C4();
    if (!v1)
    {
      atomic_store(v0, &qword_28089BD80);
    }
  }
}

uint64_t getEnumTagSinglePayload for GM3DLayoutEnum(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GM3DLayoutEnum(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_27291772C()
{
  result = qword_28089BD88;
  if (!qword_28089BD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089BD88);
  }

  return result;
}

uint64_t sub_272917780@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  *a2 = v5;
  return result;
}

uint64_t sub_272917800(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_27292D8B4();
}

unint64_t sub_272917874(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_27292E254();
  sub_27292E4D4();
  sub_27292E274();
  v4 = sub_27292E4F4();

  return sub_272917A70(a1, v4);
}

unint64_t sub_272917908(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_27292E4D4();
  MEMORY[0x2743D03C0](a1);
  v4 = sub_27292E4F4();

  return sub_272917B74(a1, v4);
}

unint64_t sub_272917974(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_27292D6C4();
  sub_272917E48(&qword_28089BA88);
  v5 = sub_27292E204();

  return sub_272917BE4(a1, v5);
}

unint64_t sub_2729179F8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_27292E4D4();
  sub_27292E274();
  v6 = sub_27292E4F4();

  return sub_272917D90(a1, a2, v6);
}

unint64_t sub_272917A70(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_27292E254();
      v9 = v8;
      if (v7 == sub_27292E254() && v9 == v10)
      {
        break;
      }

      v12 = sub_27292E494();

      if ((v12 & 1) == 0)
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

unint64_t sub_272917B74(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_272917BE4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_27292D6C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_272917E48(&qword_28089BA90);
      v16 = sub_27292E214();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_272917D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_27292E494())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_272917E48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_27292D6C4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_272917E8C(void *a1)
{
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BD98, &unk_272935480));
  v3 = a1;
  return sub_27292DB64();
}

id GMEnrollmentTextViewManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GMEnrollmentTextViewManager.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMEnrollmentTextViewManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GMEnrollmentTextViewManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GMEnrollmentTextViewManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2729180BC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_27292DB34();
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_27292DCD4();
  v7 = *(v29 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v29);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BDA0, &qword_272935548);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v27 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BDA8, &qword_272935550);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - v18;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BDB0, &qword_272935558);
  v20 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v22 = &v27 - v21;
  *v14 = sub_27292E0C4();
  v14[1] = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BDB8, &qword_272935560);
  sub_27291844C(a1, v14 + *(v24 + 44));
  sub_27292DCC4();
  v25 = sub_272918970();
  sub_27292DEE4();
  (*(v7 + 8))(v10, v29);
  sub_27290B880(v14, &qword_28089BDA0, &qword_272935548);
  sub_27292DB24();
  v33 = v11;
  v34 = v25;
  swift_getOpaqueTypeConformance2();
  sub_27292DF04();
  (*(v30 + 8))(v6, v31);
  (*(v16 + 8))(v19, v15);
  sub_27292DA24();
  return sub_2728BF268(v22);
}

uint64_t sub_27291844C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BDC8, &qword_272935568);
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v44 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BDD0, &qword_272935570);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v43 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - v14;
  swift_getKeyPath();
  v16 = OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel___observationRegistrar;
  v47 = a1;
  sub_272918D78(&qword_28089BDD8, type metadata accessor for GMEnrollmentViewModel);
  v17 = a1;
  v46 = v16;
  sub_27292D664();

  v40 = OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__instruction;
  v18 = *&v17[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__instruction];
  swift_getKeyPath();
  v47 = v18;
  sub_272918D78(&qword_28089BDE0, type metadata accessor for GMEnrollmentTextModel);
  v19 = v18;
  sub_27292D664();

  v20 = *&v19[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label];
  v21 = *&v19[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label + 8];

  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    sub_272928CFC(v17, 1, v9);
    swift_getKeyPath();
    v47 = v17;
    sub_27292D664();

    v23 = *&v17[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentViewModel__prelude];
    swift_getKeyPath();
    v47 = v23;
    v24 = v23;
    sub_27292D664();

    v26 = *&v24[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label];
    v25 = *&v24[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label + 8];

    v27 = v41;
    v28 = &v9[*(v41 + 52)];
    *v28 = v26;
    *(v28 + 1) = v25;
    sub_272918C10(v9, v15);
    v29 = 0;
  }

  else
  {

    v29 = 1;
    v27 = v41;
  }

  (*(v42 + 56))(v15, v29, 1, v27);
  sub_272928CFC(v17, 0, v9);
  swift_getKeyPath();
  v47 = v17;
  sub_27292D664();

  v30 = *&v17[v40];
  swift_getKeyPath();
  v47 = v30;
  v31 = v30;
  sub_27292D664();

  v33 = *&v31[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label];
  v32 = *&v31[OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label + 8];

  v34 = &v9[*(v27 + 52)];
  *v34 = v33;
  *(v34 + 1) = v32;
  v35 = v43;
  sub_27290939C(v15, v43, &qword_28089BDD0, &qword_272935570);
  v36 = v44;
  sub_27290939C(v9, v44, &qword_28089BDC8, &qword_272935568);
  v37 = v45;
  sub_27290939C(v35, v45, &qword_28089BDD0, &qword_272935570);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BDE8, &qword_2729355F0);
  sub_27290939C(v36, v37 + *(v38 + 48), &qword_28089BDC8, &qword_272935568);
  sub_27290B880(v9, &qword_28089BDC8, &qword_272935568);
  sub_27290B880(v15, &qword_28089BDD0, &qword_272935570);
  sub_27290B880(v36, &qword_28089BDC8, &qword_272935568);
  return sub_27290B880(v35, &qword_28089BDD0, &qword_272935570);
}

unint64_t sub_272918970()
{
  result = qword_28089BDC0;
  if (!qword_28089BDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089BDA0, &qword_272935548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089BDC0);
  }

  return result;
}

uint64_t sub_2729189D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_272918D78(&qword_28089BDE0, type metadata accessor for GMEnrollmentTextModel);
  sub_27292D664();

  v4 = *(v3 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC14VoiceTriggerUI21GMEnrollmentTextModel__label);
  a2[1] = v4;
}

uint64_t sub_272918A8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_27292B2D4(v2, v3);
}

id sub_272918B20@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_272918D78(&qword_28089BDD8, type metadata accessor for GMEnrollmentViewModel);
  sub_27292D664();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

uint64_t sub_272918C10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BDC8, &qword_272935568);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_272918C80()
{
  result = qword_28089BDF0;
  if (!qword_28089BDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089BDB0, &qword_272935558);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089BDA0, &qword_272935548);
    sub_272918970();
    swift_getOpaqueTypeConformance2();
    sub_272918D78(&qword_28089BDF8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089BDF0);
  }

  return result;
}

uint64_t sub_272918D78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for GMEnrollmentSetupIntroViewTablet()
{
  result = qword_28089BE08;
  if (!qword_28089BE08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_272918E34()
{
  sub_272918F08();
  if (v0 <= 0x3F)
  {
    type metadata accessor for EnrollmentStateChange(319);
    if (v1 <= 0x3F)
    {
      sub_272918F6C();
      if (v2 <= 0x3F)
      {
        sub_272919028();
        if (v3 <= 0x3F)
        {
          sub_272919080();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_272918F08()
{
  result = qword_28089BE18;
  if (!qword_28089BE18)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28089BE18);
  }

  return result;
}

void sub_272918F6C()
{
  if (!qword_28089BE20)
  {
    type metadata accessor for GMIntroViewModel();
    sub_272918FD0();
    v0 = sub_27292D944();
    if (!v1)
    {
      atomic_store(v0, &qword_28089BE20);
    }
  }
}

unint64_t sub_272918FD0()
{
  result = qword_28089BBC0;
  if (!qword_28089BBC0)
  {
    type metadata accessor for GMIntroViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089BBC0);
  }

  return result;
}

void sub_272919028()
{
  if (!qword_28089BE28)
  {
    sub_27292D914();
    v0 = sub_27292D924();
    if (!v1)
    {
      atomic_store(v0, &qword_28089BE28);
    }
  }
}

void sub_272919080()
{
  if (!qword_28089BE30)
  {
    v0 = sub_27292E044();
    if (!v1)
    {
      atomic_store(v0, &qword_28089BE30);
    }
  }
}

uint64_t sub_2729190EC()
{
  v0 = type metadata accessor for GMIntroViewModel();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_27291A9BC();
}

uint64_t sub_272919124@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_27292DAF4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BD50, &qword_272935208);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for GMEnrollmentSetupIntroViewTablet();
  sub_27290939C(v1 + *(v12 + 28), v11, &qword_28089BD50, &qword_272935208);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_27292D914();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_27292E354();
    v16 = sub_27292DD74();
    sub_27292D7C4();

    sub_27292DAE4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_27291932C@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v2 = type metadata accessor for GMEnrollmentSetupIntroViewTablet();
  v70 = *(v2 - 8);
  v3 = *(v70 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v78 = v4;
  v75 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BE38, &qword_2729356B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v65 - v7;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BE40, &qword_2729356B8);
  v9 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v68 = &v65 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BE48, &qword_2729356C0);
  v11 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v71 = &v65 - v12;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BE50, &qword_2729356C8);
  v13 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v73 = &v65 - v14;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BE58, &qword_2729356D0);
  v15 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v74 = &v65 - v16;
  v17 = sub_27292DF54();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_27292D914();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v65 - v28;
  v77 = v1;
  sub_272919124(&v65 - v28);
  (*(v23 + 104))(v27, *MEMORY[0x277CDF3C0], v22);
  sub_27292D904();
  v30 = *(v23 + 8);
  v30(v27, v22);
  v30(v29, v22);
  (*(v18 + 104))(v21, *MEMORY[0x277CE0EE0], v17);
  v31 = sub_27292DFC4();
  v65 = v31;
  *v8 = sub_27292DB44();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BE60, &qword_2729356D8);
  v33 = v77;
  sub_272919BCC(v77, v31, &v8[*(v32 + 44)]);
  sub_27292E0E4();
  sub_27292DA54();
  v34 = v68;
  sub_27291A7B8(v8, v68, &qword_28089BE38, &qword_2729356B0);
  v35 = (v34 + *(v66 + 36));
  v36 = v84;
  v35[4] = v83;
  v35[5] = v36;
  v35[6] = v85;
  v37 = v80;
  *v35 = v79;
  v35[1] = v37;
  v38 = v82;
  v35[2] = v81;
  v35[3] = v38;
  v39 = v33[1];
  swift_beginAccess();
  v40 = v67;
  v41 = *(v67 + 52);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB18, &qword_2729353E0);
  v42 = v71;
  sub_27292D894();
  swift_endAccess();
  v43 = v75;
  sub_27291A888(v33, v75, type metadata accessor for GMEnrollmentSetupIntroViewTablet);
  v44 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v45 = swift_allocObject();
  sub_27291A820(v43, v45 + v44, type metadata accessor for GMEnrollmentSetupIntroViewTablet);
  sub_27291A7B8(v34, v42, &qword_28089BE40, &qword_2729356B8);
  v46 = (v42 + *(v40 + 56));
  *v46 = sub_27291A500;
  v46[1] = v45;
  swift_beginAccess();
  v47 = v69;
  v48 = v73;
  v49 = &v73[*(v69 + 52)];
  sub_27292D894();
  swift_endAccess();
  v50 = v77;
  sub_27291A888(v77, v43, type metadata accessor for GMEnrollmentSetupIntroViewTablet);
  v51 = swift_allocObject();
  sub_27291A820(v43, v51 + v44, type metadata accessor for GMEnrollmentSetupIntroViewTablet);
  sub_27291A7B8(v42, v48, &qword_28089BE48, &qword_2729356C0);
  v52 = (v48 + *(v47 + 56));
  *v52 = sub_27291A518;
  v52[1] = v51;
  v53 = v50;
  sub_27291A888(v50, v43, type metadata accessor for GMEnrollmentSetupIntroViewTablet);
  v54 = swift_allocObject();
  sub_27291A820(v43, v54 + v44, type metadata accessor for GMEnrollmentSetupIntroViewTablet);
  v55 = v74;
  sub_27291A7B8(v48, v74, &qword_28089BE50, &qword_2729356C8);
  v56 = (v55 + *(v72 + 36));
  *v56 = sub_27291A5B4;
  v56[1] = v54;
  v56[2] = 0;
  v56[3] = 0;
  v57 = [objc_opt_self() defaultCenter];
  v58 = *MEMORY[0x277D76878];
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BE68, &qword_2729356E0);
  v60 = v76;
  v61 = v76 + *(v59 + 52);
  sub_27292E384();

  sub_27291A888(v53, v43, type metadata accessor for GMEnrollmentSetupIntroViewTablet);
  v62 = swift_allocObject();
  sub_27291A820(v43, v62 + v44, type metadata accessor for GMEnrollmentSetupIntroViewTablet);
  result = sub_27291A7B8(v55, v60, &qword_28089BE58, &qword_2729356D0);
  v64 = (v60 + *(v59 + 56));
  *v64 = sub_27291A5B4;
  v64[1] = v62;
  return result;
}

uint64_t sub_272919BCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v55 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB70, &qword_272934BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v50 = v48 - v6;
  v7 = type metadata accessor for GMEnrollmentSetupIntroView(0);
  v8 = (v7 - 8);
  v9 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v54 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (v48 - v13);
  MEMORY[0x28223BE20](v12);
  v53 = v48 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BE80, &qword_272935788);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v52 = v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = v48 - v21;
  sub_272919124(v48 - v21);
  v23 = a1[3];
  v49 = a1[2];
  v48[3] = *(a1 + 32);
  type metadata accessor for GMIntroViewModel();
  sub_272918FD0();
  sub_27292D934();
  v24 = &v22[*(type metadata accessor for GMIntroIPadAnimationView() + 20)];
  *v24 = sub_27292DA04();
  v24[1] = v25;
  v26 = (a1 + *(type metadata accessor for GMEnrollmentSetupIntroViewTablet() + 32));
  v27 = *v26;
  v28 = v26[1];
  *&v56 = v27;
  *(&v56 + 1) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BE78, &qword_2729356E8);
  sub_27292E024();
  sub_27292E0E4();
  sub_27292D974();
  v29 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BE88, &qword_272935790) + 36)];
  v30 = v57;
  *v29 = v56;
  *(v29 + 1) = v30;
  *(v29 + 2) = v58;
  v31 = sub_27292DDA4();
  v32 = &v22[*(v17 + 44)];
  *v32 = v51;
  v32[8] = v31;
  v33 = *a1;

  swift_unknownObjectRetain();
  sub_27292D934();
  v34 = v50;
  sub_27292DC74();
  *v14 = v33;
  v35 = objc_opt_self();
  v36 = [v35 isNaturalUIEnabled];
  v37 = 50.0;
  if (v36)
  {
    v37 = 52.0;
  }

  v14[1] = v37;
  v14[2] = 14.0;
  *(v14 + 24) = [v35 isNaturalUIEnabled];
  v38 = v14 + v8[10];
  sub_27292D954();
  v39 = (v14 + v8[11]);
  *v39 = sub_27292DA04();
  v39[1] = v40;
  sub_27291A7B8(v34, v14 + v8[12], &qword_28089BB70, &qword_272934BF0);
  v41 = v14;
  v42 = v53;
  sub_27291A820(v41, v53, type metadata accessor for GMEnrollmentSetupIntroView);
  v43 = v52;
  sub_27290939C(v22, v52, &qword_28089BE80, &qword_272935788);
  v44 = v54;
  sub_27291A888(v42, v54, type metadata accessor for GMEnrollmentSetupIntroView);
  v45 = v55;
  sub_27290939C(v43, v55, &qword_28089BE80, &qword_272935788);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BE90, &qword_272935798);
  sub_27291A888(v44, v45 + *(v46 + 48), type metadata accessor for GMEnrollmentSetupIntroView);
  sub_27290B688(v42);
  sub_27291A8F0(v22);
  sub_27290B688(v44);
  return sub_27291A8F0(v43);
}

_BYTE *sub_27291A02C(_BYTE *result, uint64_t a2)
{
  if (*result == 1)
  {
    v2 = *(a2 + 16);
    v3 = *(a2 + 24);
    v4 = *(a2 + 32);
    type metadata accessor for GMIntroViewModel();
    sub_272918FD0();
    sub_27292D934();
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_27292D8B4();
  }

  return result;
}

_BYTE *sub_27291A0D4(_BYTE *result, uint64_t a2)
{
  if (*result == 1)
  {
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    type metadata accessor for GMIntroViewModel();
    sub_272918FD0();
    sub_27292D934();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_27292D8A4();

    if (v8 == 4 || (sub_27292D934(), swift_getKeyPath(), swift_getKeyPath(), sub_27292D8A4(), , , , v7 == 5))
    {
      sub_27292D934();
      if (qword_28089BA10 != -1)
      {
        swift_once();
      }

      [qword_28089BEA0 isBuddyOrFollowUp];
      swift_getKeyPath();
      swift_getKeyPath();
      sub_27292D8B4();
    }

    v6 = *(a2 + 8);
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_27292D8B4();
  }

  return result;
}

void sub_27291A314()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 windows];

  sub_27291A75C();
  v3 = sub_27292E2C4();

  if (v3 >> 62)
  {
    if (sub_27292E434())
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2743D02E0](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v4 = *(v3 + 32);
  }

  v5 = v4;

  v6 = [v5 windowScene];

  if (v6)
  {
    v7 = type metadata accessor for GMEnrollmentSetupIntroViewTablet();
    v8 = *(v0 + *(v7 + 36));
    UIInterfaceOrientationIsLandscape([v6 interfaceOrientation]);
    v9 = (v0 + *(v7 + 32));
    v10 = *v9;
    v11 = v9[1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BE78, &qword_2729356E8);
    sub_27292E034();
  }
}

uint64_t sub_27291A530(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for GMEnrollmentSetupIntroViewTablet() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

void sub_27291A5B4()
{
  v1 = *(type metadata accessor for GMEnrollmentSetupIntroViewTablet() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_27291A314();
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for GMEnrollmentSetupIntroViewTablet();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);
  swift_unknownObjectRelease();
  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 16);
  v9 = *(v0 + v3 + 24);
  v10 = *(v0 + v3 + 32);
  sub_27290B168();
  v11 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BD50, &qword_272935208);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_27292D914();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
    v13 = *(v5 + v11);
  }

  v14 = *(v5 + *(v1 + 32) + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_27291A75C()
{
  result = qword_28089BE70;
  if (!qword_28089BE70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28089BE70);
  }

  return result;
}

uint64_t sub_27291A7B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_27291A820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_27291A888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_27291A8F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BE80, &qword_272935788);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27291A958()
{
  result = qword_28089BE98;
  if (!qword_28089BE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28089BE68, &qword_2729356E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089BE98);
  }

  return result;
}

uint64_t sub_27291A9BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB18, &qword_2729353E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9[-v4];
  v6 = OBJC_IVAR____TtC14VoiceTriggerUI16GMIntroViewModel__spinnerVisible;
  v9[8] = 0;
  sub_27292D884();
  (*(v2 + 32))(v0 + v6, v5, v1);
  if (qword_28089BA10 != -1)
  {
    swift_once();
  }

  if ([qword_28089BEA0 isBuddyOrFollowUp])
  {
    v7 = 0;
  }

  else
  {
    v7 = 3;
  }

  swift_beginAccess();
  v9[7] = v7;
  sub_27292D884();
  swift_endAccess();
  return v0;
}

uint64_t sub_27291AB3C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  return v1;
}

uint64_t sub_27291ABB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  return v1;
}

unint64_t sub_27291AC24()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  if (v1 == 2 || (result = sub_27291BDE0(v1 + 1), result != 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_27292D8B4();
  }

  return result;
}

id sub_27291AD00()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  if (v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_27292D8A4();

    if (v1 != 7)
    {
      return 0;
    }
  }

  if (qword_28089BA10 != -1)
  {
    swift_once();
  }

  return [qword_28089BEA0 isBuddyOrFollowUp];
}

BOOL sub_27291AE14()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  if (!v5)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  if (v4 == 1)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  if (v3 == 2)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  if (v2 == 3)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  return v1 == 7;
}

void sub_27291AFD4()
{
  if (qword_28089BA10 != -1)
  {
    swift_once();
  }

  v0 = qword_28089BEA0;
  [qword_28089BEA0 shouldSetupForMultipleTriggerPhrases];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  v1 = v7;
  if (v7 > 1u)
  {
    if (v7 == 2)
    {
LABEL_13:
      v4 = sub_27292E224();
      v0 = [v0 VTUIDeviceSpecificString_];

      if (v0)
      {
        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_15;
    }

    if (v7 == 3)
    {
LABEL_15:
      v5 = sub_27292E224();

      v0 = [v0 VTUIDeviceSpecificString_];

      if (!v0)
      {
        __break(1u);
LABEL_17:
        v6 = sub_27292E224();
        v0 = [v0 VTUIDeviceSpecificString_];

        if (!v0)
        {
          __break(1u);
          return;
        }

        goto LABEL_18;
      }

      goto LABEL_18;
    }

    if (v7 != 7)
    {
      return;
    }

    v2 = sub_27292E224();
    v0 = [v0 VTUIDeviceSpecificString_];

    if (v0)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  if (!v1)
  {
    goto LABEL_17;
  }

  if (v1 != 1)
  {
    return;
  }

  v3 = sub_27292E224();
  v0 = [v0 VTUIDeviceSpecificString_];

  if (!v0)
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_18:
  sub_27292E254();
}

void sub_27291B2A0()
{
  if (qword_28089BA10 != -1)
  {
    swift_once();
  }

  v0 = qword_28089BEA0;
  [qword_28089BEA0 shouldSetupForMultipleTriggerPhrases];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  if (v12 <= 1u)
  {
    if (!v12)
    {
      goto LABEL_18;
    }

    if (v12 != 1)
    {
      return;
    }

    v8 = sub_27292E224();

    v0 = [v0 VTUIDeviceSpecificString_];

    if (v0)
    {
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_14;
  }

  switch(v12)
  {
    case 2u:
LABEL_14:
      v9 = sub_27292E224();
      v0 = [v0 VTUIDeviceSpecificString_];

      if (v0)
      {
        goto LABEL_19;
      }

      __break(1u);
LABEL_16:
      v10 = sub_27292E224();

      v0 = [v0 VTUIDeviceSpecificString_];

      if (!v0)
      {
        __break(1u);
LABEL_18:
        v11 = sub_27292E224();
        v0 = [v0 VTUIDeviceSpecificString_];

        if (!v0)
        {
          goto LABEL_22;
        }
      }

LABEL_19:
      sub_27292E254();

      return;
    case 3u:
      goto LABEL_16;
    case 7u:
      v1 = sub_27292E224();

      v2 = [v0 VTUIDeviceSpecificString_];

      if (v2)
      {
        sub_27292E254();

        MEMORY[0x2743D0160](2570, 0xE200000000000000);

        v3 = sub_27292E224();
        v4 = [v0 VTUIDeviceSpecificString_];

        if (v4)
        {
          v5 = sub_27292E254();
          v7 = v6;

          MEMORY[0x2743D0160](v5, v7);

          return;
        }

        goto LABEL_23;
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      break;
  }
}

void sub_27291B67C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  if (v3 == 7)
  {
    if (qword_28089BA10 != -1)
    {
      swift_once();
    }

    [qword_28089BEA0 isBuddyOrFollowUp];
  }

  if (qword_28089BA10 != -1)
  {
    swift_once();
  }

  v0 = qword_28089BEA0;
  v1 = sub_27292E224();

  v2 = [v0 VTUIDeviceSpecificString_];

  if (v2)
  {
    sub_27292E254();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_27291B814@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_27291BDE0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_27291B840@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27292D8A4();

  *a2 = v5;
  return result;
}

uint64_t sub_27291B8C0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_27292D8B4();
}

id sub_27291B934()
{
  result = [objc_opt_self() sharedStyle];
  qword_28089BEA0 = result;
  return result;
}

uint64_t sub_27291B970()
{
  v1 = OBJC_IVAR____TtC14VoiceTriggerUI16GMIntroViewModel__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BD90, &unk_2729358B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14VoiceTriggerUI16GMIntroViewModel__spinnerVisible;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BB18, &qword_2729353E0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GMIntroViewModel()
{
  result = qword_28089BEB8;
  if (!qword_28089BEB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27291BAB8()
{
  sub_27291BBA0(319, &qword_28089BEC8);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_27291BBA0(319, &qword_28089BD80);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_27291BBA0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_27292D8C4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for GMIntroViewState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GMIntroViewState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_27291BD40()
{
  result = qword_28089BED0;
  if (!qword_28089BED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28089BED0);
  }

  return result;
}

uint64_t sub_27291BDA0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GMIntroViewModel();
  result = sub_27292D844();
  *a1 = result;
  return result;
}

unint64_t sub_27291BDE0(unint64_t result)
{
  if (result >= 8)
  {
    return 8;
  }

  return result;
}

void VisualIntelligenceIntroViewController.init(delegate:)()
{
  v1 = OBJC_IVAR____TtC14VoiceTriggerUI37VisualIntelligenceIntroViewController_delegate;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC14VoiceTriggerUI37VisualIntelligenceIntroViewController_gmViewModel;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for GMAvailabilityViewModel()) init];
  swift_unknownObjectWeakAssign();
  v3 = objc_opt_self();
  v4 = [v3 sharedStringsHelper];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  v6 = sub_27292E224();
  v1 = [v5 uiLocalizedStringForKey_];

  if (!v1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v7 = [v3 sharedStringsHelper];
  if (!v7)
  {
LABEL_8:

    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  v9 = sub_27292E224();
  v10 = [v8 uiLocalizedStringForKey_];

  if (v10)
  {
    v11.receiver = v0;
    v11.super_class = type metadata accessor for VisualIntelligenceIntroViewController();
    objc_msgSendSuper2(&v11, sel_initWithTitle_detailText_icon_contentLayout_, v1, v10, 0, 1);

    swift_unknownObjectRelease();
    return;
  }

LABEL_9:

  __break(1u);
}

void sub_27291C084()
{
  v1 = sub_27292D704();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v81 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v78 - v6;
  v84 = sub_27292D6E4();
  v87 = *(v84 - 8);
  v8 = *(v87 + 64);
  v9 = MEMORY[0x28223BE20](v84);
  v78 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v78 - v11;
  v13 = sub_27292D784();
  v14 = *(v13 - 1);
  v15 = v14[8];
  v16 = MEMORY[0x28223BE20](v13);
  v89 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v78 - v18;
  v20 = type metadata accessor for VisualIntelligenceIntroViewController();
  v91.receiver = v0;
  v91.super_class = v20;
  v86 = v20;
  objc_msgSendSuper2(&v91, sel_viewDidLoad);
  v88 = v0;
  v21 = *&v0[OBJC_IVAR____TtC14VoiceTriggerUI37VisualIntelligenceIntroViewController_gmViewModel];
  v22 = OBJC_IVAR____TtC14VoiceTriggerUI23GMAvailabilityViewModel_provider;
  swift_beginAccess();
  v23 = v14[2];
  v85 = v21;
  v90 = v13;
  v80 = v23;
  v23(v19, v21 + v22, v13);
  sub_27292D744();
  v79 = *(v2 + 88);
  v24 = v79(v7, v1);
  v25 = *MEMORY[0x277D0DFB0];
  v82 = v2;
  v83 = v1;
  if (v24 == v25)
  {
    (*(v2 + 96))(v7, v1);
    v26 = v87;
    v27 = v7;
    v28 = v84;
    (*(v87 + 32))(v12, v27, v84);
    v29 = sub_27292D6D4();
    (*(v26 + 8))(v12, v28);
  }

  else
  {
    (*(v2 + 8))(v7, v1);
    v29 = MEMORY[0x277D84FA0];
    v26 = v87;
  }

  v30 = v14[1];
  v31 = v90;
  v30(v19, v90);
  v32 = *(v29 + 16);

  if (v32)
  {
    v80(v89, v85 + v22, v31);
    v33 = v81;
    sub_27292D744();
    v34 = v83;
    if (v79(v33, v83) == v25)
    {
      (*(v82 + 96))(v33, v34);
      v35 = v78;
      v36 = v84;
      (*(v26 + 32))(v78, v33, v84);
      v37 = sub_27292D6D4();
      (*(v26 + 8))(v35, v36);
    }

    else
    {
      (*(v82 + 8))(v33, v34);
      v37 = MEMORY[0x277D84FA0];
    }

    v39 = v88;
    v30(v89, v90);
    v38 = sub_272907194(v37);
  }

  else
  {
    v38 = 1;
    v39 = v88;
  }

  v40 = [objc_opt_self() sharedStyle];
  v41 = [v40 isIpad];

  if ((v41 & 1) == 0 && ((_s14VoiceTriggerUI23GMAvailabilityViewModelC7isBuddySbvgZ_0() & 1) != 0 || [*(v85 + OBJC_IVAR____TtC14VoiceTriggerUI23GMAvailabilityViewModel_vtuiStyle) isBuddyOrFollowUp]))
  {
    if ((v38 | 2) != 3)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if ((v38 | 2) == 3)
  {
    v42 = sub_27292E224();
    v43 = MGGetBoolAnswer();

    if (v43)
    {
LABEL_17:
      [v39 setOverrideUserInterfaceStyle_];
    }
  }

LABEL_18:
  v44 = [v39 contentView];
  v45 = [objc_opt_self() systemGray6Color];
  [v44 setBackgroundColor_];

  v46 = [objc_opt_self() boldButton];
  v47 = [objc_opt_self() sharedStringsHelper];
  if (v47)
  {
    v48 = v47;
    v49 = sub_27292E224();
    v50 = [v48 uiLocalizedStringForKey_];

    if (v50)
    {
      [v46 setTitle:v50 forState:0];

      [v46 addTarget:v39 action:sel_continueTapped forControlEvents:64];
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v52 = [objc_opt_self() bundleForClass_];
      v53 = [v39 traitCollection];
      v54 = v39;
      v55 = sub_27292E224();
      v56 = [objc_opt_self() imageNamed:v55 inBundle:v52 compatibleWithTraitCollection:v53];

      v57 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
      [v57 setContentMode_];
      [v57 setTranslatesAutoresizingMaskIntoConstraints_];
      v58 = [v54 contentView];
      [v58 addSubview_];

      v90 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BEE8, &unk_272935960);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_272935950;
      v60 = [v54 &selRef_addEntriesFromDictionary_];
      v61 = [v60 leadingAnchor];

      v62 = [v57 leadingAnchor];
      v63 = [v61 constraintEqualToAnchor_];

      *(v59 + 32) = v63;
      v64 = [v54 &selRef_addEntriesFromDictionary_];
      v65 = [v64 trailingAnchor];

      v66 = [v57 trailingAnchor];
      v67 = [v65 constraintEqualToAnchor_];

      *(v59 + 40) = v67;
      v68 = [v54 &selRef_addEntriesFromDictionary_];
      v69 = [v68 topAnchor];

      v70 = [v57 topAnchor];
      v71 = [v69 constraintEqualToAnchor_];

      *(v59 + 48) = v71;
      v72 = [v54 &selRef_addEntriesFromDictionary_];
      v73 = [v72 bottomAnchor];

      v74 = [v57 bottomAnchor];
      v75 = [v73 constraintEqualToAnchor_];

      *(v59 + 56) = v75;
      sub_27291CE90();
      v76 = sub_27292E2B4();

      [v90 activateConstraints_];

      v77 = [v54 buttonTray];
      [v77 addButton_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id VisualIntelligenceIntroViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_27292E224();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_27292E224();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_27292E224();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}