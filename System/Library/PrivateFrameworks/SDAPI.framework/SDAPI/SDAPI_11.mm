void sub_262609FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&a10);
  TParam::~TParam((v13 + v19));
  TParam::~TParam((v13 + v18));
  TStringParam::~TStringParam((v13 + v17));
  TStringParam::~TStringParam((v13 + v16));
  TParam::~TParam((v13 + v15));
  TParam::~TParam((v13 + v20));
  TStringParam::~TStringParam(v13 + 2985);
  TStringParam::~TStringParam(v13 + 2813);
  TBoolParam::~TBoolParam(v13 + 2782);
  TBoolParam::~TBoolParam(v13 + 2751);
  TBoolParam::~TBoolParam(v13 + 2720);
  TBoolParam::~TBoolParam(v13 + 2689);
  TParam::~TParam(v13 + 2645);
  TBoolParam::~TBoolParam(v13 + 2614);
  TBoolParam::~TBoolParam(v13 + 2583);
  TBoolParam::~TBoolParam(v13 + 2552);
  TBoolParam::~TBoolParam(v13 + 2521);
  TBoolParam::~TBoolParam(v13 + 2490);
  TBoolParam::~TBoolParam(v13 + 2459);
  TBoolParam::~TBoolParam(v13 + 2428);
  TBoolParam::~TBoolParam(v13 + 2397);
  TParam::~TParam(v13 + 2353);
  TParam::~TParam(v13 + 2309);
  TParam::~TParam(v13 + 2265);
  TBoolParam::~TBoolParam(v13 + 2234);
  TParam::~TParam(v13 + 2190);
  TParam::~TParam(v13 + 2146);
  TParam::~TParam(v13 + 2102);
  TParam::~TParam(v13 + 2058);
  TParam::~TParam(v13 + 2014);
  TParam::~TParam(v13 + 1970);
  TBoolParam::~TBoolParam(v13 + 1939);
  TBoolParam::~TBoolParam(v13 + 1908);
  TBoolParam::~TBoolParam(v13 + 1877);
  TParam::~TParam(v13 + 1833);
  TParam::~TParam(v13 + 1789);
  TParam::~TParam(v13 + 1745);
  TParam::~TParam(v13 + 1701);
  TBoolParam::~TBoolParam(v13 + 1670);
  TBoolParam::~TBoolParam(v13 + 1639);
  TBoolParam::~TBoolParam(v13 + 1608);
  TBoolParam::~TBoolParam(v13 + 1577);
  TBoolParam::~TBoolParam(v13 + 1546);
  TBoolParam::~TBoolParam(v13 + 1515);
  TStringParam::~TStringParam(v13 + 1343);
  TStringParam::~TStringParam(v13 + 1171);
  TStringParam::~TStringParam(v13 + 999);
  TBoolParam::~TBoolParam(v13 + 968);
  TStringParam::~TStringParam(v13 + 796);
  TBoolParam::~TBoolParam(v13 + 765);
  TBoolParam::~TBoolParam(v13 + 734);
  TBoolParam::~TBoolParam(v13 + 703);
  TBoolParam::~TBoolParam(v13 + 672);
  TBoolParam::~TBoolParam(v13 + 641);
  TStringParam::~TStringParam(v13 + 469);
  TStringParam::~TStringParam(v13 + 297);
  TBoolParam::~TBoolParam(v13 + 266);
  TBoolParam::~TBoolParam(v13 + 235);
  TBoolParam::~TBoolParam(v13 + 204);
  TBoolParam::~TBoolParam(v13 + 173);
  TBoolParam::~TBoolParam(v13 + 142);
  TBoolParam::~TBoolParam(v13 + 111);
  TBoolParam::~TBoolParam(v13 + 80);
  TBoolParam::~TBoolParam(v13 + 49);
  TBoolParam::~TBoolParam(v14);
  TParamManager::~TParamManager(v13);
  _Unwind_Resume(a1);
}

void TTokenizerParamManager::notifyChange(TTokenizerParamManager *this, const TParam *a2)
{
  v2 = (this + 3752);
  if ((this + 3752) == a2)
  {
    v3 = TStringParam::get((this + 3752));
    if (wcslen(v3))
    {
      v4 = TStringParam::get(v2);
      loggableUnicode(v4, __p);
      if (v11 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      tknPrintf("Warning: CharacterMapping contains an odd number of characters: <%s>\n", v5, v6, v7, v8, v9);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_26260A5A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *TTokenizerParamManager::upgradeParam(void *this, const TParam *a2)
{
  v2 = this;
  v3 = (this + 2397);
  if (this + 2397 == a2)
  {
    ActiveConfigHandle = TParam::getActiveConfigHandle((this + 2397));
    ValidConfig = TParam::getValidConfig(v3, ActiveConfigHandle);
    v6 = 2102;
    if (*(v2 + ValidConfig + 19328) != 1)
    {
      goto LABEL_23;
    }

    v7 = v2[17];
    v2[2116] &= ~(1 << (v7 + 33));
LABEL_20:

    return TParam::notifyChange(&v2[v6], v7);
  }

  if (this + 2428 == a2)
  {
    v8 = TParam::getActiveConfigHandle((this + 2428));
    v6 = 2146;
    if (*(v2 + TParam::getValidConfig((v2 + 2428), v8) + 19576) != 1)
    {
      goto LABEL_23;
    }

    v7 = v2[17];
    v2[2160] &= ~(1 << (v7 + 33));
    goto LABEL_20;
  }

  if (this + 2459 == a2)
  {
    v9 = TParam::getActiveConfigHandle((this + 2459));
    v6 = 2190;
    if (*(v2 + TParam::getValidConfig((v2 + 2459), v9) + 19824) != 1)
    {
      goto LABEL_23;
    }

    v7 = v2[17];
    v2[2204] &= ~(1 << (v7 + 33));
    goto LABEL_20;
  }

  if (this + 2521 != a2)
  {
    if (this + 2552 != a2)
    {
      if (this + 2490 != a2)
      {
        return this;
      }

      v16 = TParam::getActiveConfigHandle((this + 2490));
      v6 = 2353;
      if (*(v2 + TParam::getValidConfig((v2 + 2490), v16) + 20072) == 1)
      {
        v7 = v2[17];
        v2[2367] &= ~(1 << (v7 + 33));
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    v15 = TParam::getActiveConfigHandle((this + 2552));
    v6 = 2309;
    if (*(v2 + TParam::getValidConfig((v2 + 2552), v15) + 20568) == 1)
    {
      v7 = v2[17];
      v2[2323] &= ~(1 << (v7 + 33));
      goto LABEL_20;
    }

LABEL_23:
    v12 = TParam::getActiveConfigHandle(&v2[v6]);
    goto LABEL_24;
  }

  v10 = TParam::getActiveConfigHandle((this + 2521));
  v11 = *(v2 + TParam::getValidConfig((v2 + 2521), v10) + 20320);
  v6 = 2265;
  v12 = TParam::getActiveConfigHandle((v2 + 2265));
  if (v11 != 1)
  {
LABEL_24:
    v13 = &v2[v6];
    v14 = -1;
    goto LABEL_25;
  }

  v13 = (v2 + 2265);
  v14 = 45;
LABEL_25:

  return TIntParam::set(v13, v12, v14);
}

uint64_t TTokenizerParamManager::initializeParamConfigs(TTokenizerParamManager *this)
{
  Config = TParamManager::getConfig(this, "A");
  *(this + 3724) = Config;
  if (Config == -1)
  {
    *(this + 3724) = TParamManager::newConfig(this, "A", 1);
  }

  v3 = TParamManager::getConfig(this, "B");
  *(this + 3725) = v3;
  if (v3 == -1)
  {
    v4 = TParamManager::newConfig(this, "B", 1);
    *(this + 3725) = v4;
    *(this + v4 + 18024) = 1;
    *(this + 2248) |= 1 << (v4 + 9);
    TParam::notifyChange(this + 17872, v4);
  }

  v5 = TParamManager::getConfig(this, "A");
  *(this + 3726) = v5;
  if (v5 == -1)
  {
    v6 = TParamManager::newConfig(this, "A", 1);
    *(this + 3726) = v6;
    TIntParam::setOriginal((this + 14312), v6, 0);
    TIntParam::setOriginal((this + 17520), *(this + 3726), -1);
    TIntParam::setOriginal((this + 18120), *(this + 3726), -1);
    TIntParam::setOriginal((this + 18472), *(this + 3726), -1);
    TIntParam::setOriginal((this + 18824), *(this + 3726), -1);
  }

  result = TParamManager::getConfig(this, "F");
  *(this + 3723) = result;
  if (result == -1)
  {
    v8 = TParamManager::newConfig(this, "F", *(this + 3724));
    *(this + 3723) = v8;
    *(this + v8 + 792) = 1;
    *(this + 94) |= 1 << (v8 + 9);

    return TParam::notifyChange(this + 640, v8);
  }

  return result;
}

void TTokenizerParamManager::~TTokenizerParamManager(void **this)
{
  TTokenizerParamManager::~TTokenizerParamManager(this);

  JUMPOUT(0x26672B1B0);
}

{
  *this = &unk_287525438;
  TParam::~TParam(this + 3656);
  TParam::~TParam(this + 3589);
  this[3417] = &unk_287528A10;
  v86 = this + 3586;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 3583;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 3580;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v2 = this + 3577;
  v3 = -1152;
  do
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    v2 -= 3;
    v3 += 24;
  }

  while (v3);
  TParam::~TParam(this + 3417);
  this[3245] = &unk_287528A10;
  v86 = this + 3414;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 3411;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 3408;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v4 = this + 3405;
  v5 = -1152;
  do
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    v4 -= 3;
    v5 += 24;
  }

  while (v5);
  TParam::~TParam(this + 3245);
  TParam::~TParam(this + 3201);
  TParam::~TParam(this + 3157);
  this[2985] = &unk_287528A10;
  v86 = this + 3154;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 3151;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 3148;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v6 = this + 3145;
  v7 = -1152;
  do
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    v6 -= 3;
    v7 += 24;
  }

  while (v7);
  TParam::~TParam(this + 2985);
  this[2813] = &unk_287528A10;
  v86 = this + 2982;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 2979;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 2976;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v8 = this + 2973;
  v9 = -1152;
  do
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    v8 -= 3;
    v9 += 24;
  }

  while (v9);
  TParam::~TParam(this + 2813);
  this[2782] = &unk_2875295A0;
  v10 = this + 2810;
  v11 = -48;
  do
  {
    if (*(v10 + 23) < 0)
    {
      operator delete(*v10);
    }

    v10 -= 3;
    v11 += 24;
  }

  while (v11);
  TParam::~TParam(this + 2782);
  this[2751] = &unk_2875295A0;
  v12 = this + 2779;
  v13 = -48;
  do
  {
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    v12 -= 3;
    v13 += 24;
  }

  while (v13);
  TParam::~TParam(this + 2751);
  this[2720] = &unk_2875295A0;
  v14 = this + 2748;
  v15 = -48;
  do
  {
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    v14 -= 3;
    v15 += 24;
  }

  while (v15);
  TParam::~TParam(this + 2720);
  this[2689] = &unk_2875295A0;
  v16 = this + 2717;
  v17 = -48;
  do
  {
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    v16 -= 3;
    v17 += 24;
  }

  while (v17);
  TParam::~TParam(this + 2689);
  TParam::~TParam(this + 2645);
  this[2614] = &unk_2875295A0;
  v18 = this + 2642;
  v19 = -48;
  do
  {
    if (*(v18 + 23) < 0)
    {
      operator delete(*v18);
    }

    v18 -= 3;
    v19 += 24;
  }

  while (v19);
  TParam::~TParam(this + 2614);
  this[2583] = &unk_2875295A0;
  v20 = this + 2611;
  v21 = -48;
  do
  {
    if (*(v20 + 23) < 0)
    {
      operator delete(*v20);
    }

    v20 -= 3;
    v21 += 24;
  }

  while (v21);
  TParam::~TParam(this + 2583);
  this[2552] = &unk_2875295A0;
  v22 = this + 2580;
  v23 = -48;
  do
  {
    if (*(v22 + 23) < 0)
    {
      operator delete(*v22);
    }

    v22 -= 3;
    v23 += 24;
  }

  while (v23);
  TParam::~TParam(this + 2552);
  this[2521] = &unk_2875295A0;
  v24 = this + 2549;
  v25 = -48;
  do
  {
    if (*(v24 + 23) < 0)
    {
      operator delete(*v24);
    }

    v24 -= 3;
    v25 += 24;
  }

  while (v25);
  TParam::~TParam(this + 2521);
  this[2490] = &unk_2875295A0;
  v26 = this + 2518;
  v27 = -48;
  do
  {
    if (*(v26 + 23) < 0)
    {
      operator delete(*v26);
    }

    v26 -= 3;
    v27 += 24;
  }

  while (v27);
  TParam::~TParam(this + 2490);
  this[2459] = &unk_2875295A0;
  v28 = this + 2487;
  v29 = -48;
  do
  {
    if (*(v28 + 23) < 0)
    {
      operator delete(*v28);
    }

    v28 -= 3;
    v29 += 24;
  }

  while (v29);
  TParam::~TParam(this + 2459);
  this[2428] = &unk_2875295A0;
  v30 = this + 2456;
  v31 = -48;
  do
  {
    if (*(v30 + 23) < 0)
    {
      operator delete(*v30);
    }

    v30 -= 3;
    v31 += 24;
  }

  while (v31);
  TParam::~TParam(this + 2428);
  this[2397] = &unk_2875295A0;
  v32 = this + 2425;
  v33 = -48;
  do
  {
    if (*(v32 + 23) < 0)
    {
      operator delete(*v32);
    }

    v32 -= 3;
    v33 += 24;
  }

  while (v33);
  TParam::~TParam(this + 2397);
  TParam::~TParam(this + 2353);
  TParam::~TParam(this + 2309);
  TParam::~TParam(this + 2265);
  this[2234] = &unk_2875295A0;
  v34 = this + 2262;
  v35 = -48;
  do
  {
    if (*(v34 + 23) < 0)
    {
      operator delete(*v34);
    }

    v34 -= 3;
    v35 += 24;
  }

  while (v35);
  TParam::~TParam(this + 2234);
  TParam::~TParam(this + 2190);
  TParam::~TParam(this + 2146);
  TParam::~TParam(this + 2102);
  TParam::~TParam(this + 2058);
  TParam::~TParam(this + 2014);
  TParam::~TParam(this + 1970);
  this[1939] = &unk_2875295A0;
  v36 = this + 1967;
  v37 = -48;
  do
  {
    if (*(v36 + 23) < 0)
    {
      operator delete(*v36);
    }

    v36 -= 3;
    v37 += 24;
  }

  while (v37);
  TParam::~TParam(this + 1939);
  this[1908] = &unk_2875295A0;
  v38 = this + 1936;
  v39 = -48;
  do
  {
    if (*(v38 + 23) < 0)
    {
      operator delete(*v38);
    }

    v38 -= 3;
    v39 += 24;
  }

  while (v39);
  TParam::~TParam(this + 1908);
  this[1877] = &unk_2875295A0;
  v40 = this + 1905;
  v41 = -48;
  do
  {
    if (*(v40 + 23) < 0)
    {
      operator delete(*v40);
    }

    v40 -= 3;
    v41 += 24;
  }

  while (v41);
  TParam::~TParam(this + 1877);
  TParam::~TParam(this + 1833);
  TParam::~TParam(this + 1789);
  TParam::~TParam(this + 1745);
  TParam::~TParam(this + 1701);
  this[1670] = &unk_2875295A0;
  v42 = this + 1698;
  v43 = -48;
  do
  {
    if (*(v42 + 23) < 0)
    {
      operator delete(*v42);
    }

    v42 -= 3;
    v43 += 24;
  }

  while (v43);
  TParam::~TParam(this + 1670);
  this[1639] = &unk_2875295A0;
  v44 = this + 1667;
  v45 = -48;
  do
  {
    if (*(v44 + 23) < 0)
    {
      operator delete(*v44);
    }

    v44 -= 3;
    v45 += 24;
  }

  while (v45);
  TParam::~TParam(this + 1639);
  this[1608] = &unk_2875295A0;
  v46 = this + 1636;
  v47 = -48;
  do
  {
    if (*(v46 + 23) < 0)
    {
      operator delete(*v46);
    }

    v46 -= 3;
    v47 += 24;
  }

  while (v47);
  TParam::~TParam(this + 1608);
  this[1577] = &unk_2875295A0;
  v48 = this + 1605;
  v49 = -48;
  do
  {
    if (*(v48 + 23) < 0)
    {
      operator delete(*v48);
    }

    v48 -= 3;
    v49 += 24;
  }

  while (v49);
  TParam::~TParam(this + 1577);
  this[1546] = &unk_2875295A0;
  v50 = this + 1574;
  v51 = -48;
  do
  {
    if (*(v50 + 23) < 0)
    {
      operator delete(*v50);
    }

    v50 -= 3;
    v51 += 24;
  }

  while (v51);
  TParam::~TParam(this + 1546);
  this[1515] = &unk_2875295A0;
  v52 = this + 1543;
  v53 = -48;
  do
  {
    if (*(v52 + 23) < 0)
    {
      operator delete(*v52);
    }

    v52 -= 3;
    v53 += 24;
  }

  while (v53);
  TParam::~TParam(this + 1515);
  this[1343] = &unk_287528A10;
  v86 = this + 1512;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 1509;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 1506;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v54 = this + 1503;
  v55 = -1152;
  do
  {
    if (*(v54 + 23) < 0)
    {
      operator delete(*v54);
    }

    v54 -= 3;
    v55 += 24;
  }

  while (v55);
  TParam::~TParam(this + 1343);
  this[1171] = &unk_287528A10;
  v86 = this + 1340;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 1337;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 1334;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v56 = this + 1331;
  v57 = -1152;
  do
  {
    if (*(v56 + 23) < 0)
    {
      operator delete(*v56);
    }

    v56 -= 3;
    v57 += 24;
  }

  while (v57);
  TParam::~TParam(this + 1171);
  this[999] = &unk_287528A10;
  v86 = this + 1168;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 1165;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 1162;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v58 = this + 1159;
  v59 = -1152;
  do
  {
    if (*(v58 + 23) < 0)
    {
      operator delete(*v58);
    }

    v58 -= 3;
    v59 += 24;
  }

  while (v59);
  TParam::~TParam(this + 999);
  this[968] = &unk_2875295A0;
  v60 = this + 996;
  v61 = -48;
  do
  {
    if (*(v60 + 23) < 0)
    {
      operator delete(*v60);
    }

    v60 -= 3;
    v61 += 24;
  }

  while (v61);
  TParam::~TParam(this + 968);
  this[796] = &unk_287528A10;
  v86 = this + 965;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 962;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 959;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v62 = this + 956;
  v63 = -1152;
  do
  {
    if (*(v62 + 23) < 0)
    {
      operator delete(*v62);
    }

    v62 -= 3;
    v63 += 24;
  }

  while (v63);
  TParam::~TParam(this + 796);
  this[765] = &unk_2875295A0;
  v64 = this + 793;
  v65 = -48;
  do
  {
    if (*(v64 + 23) < 0)
    {
      operator delete(*v64);
    }

    v64 -= 3;
    v65 += 24;
  }

  while (v65);
  TParam::~TParam(this + 765);
  this[734] = &unk_2875295A0;
  v66 = this + 762;
  v67 = -48;
  do
  {
    if (*(v66 + 23) < 0)
    {
      operator delete(*v66);
    }

    v66 -= 3;
    v67 += 24;
  }

  while (v67);
  TParam::~TParam(this + 734);
  this[703] = &unk_2875295A0;
  v68 = this + 731;
  v69 = -48;
  do
  {
    if (*(v68 + 23) < 0)
    {
      operator delete(*v68);
    }

    v68 -= 3;
    v69 += 24;
  }

  while (v69);
  TParam::~TParam(this + 703);
  this[672] = &unk_2875295A0;
  v70 = this + 700;
  v71 = -48;
  do
  {
    if (*(v70 + 23) < 0)
    {
      operator delete(*v70);
    }

    v70 -= 3;
    v71 += 24;
  }

  while (v71);
  TParam::~TParam(this + 672);
  this[641] = &unk_2875295A0;
  v72 = this + 669;
  v73 = -48;
  do
  {
    if (*(v72 + 23) < 0)
    {
      operator delete(*v72);
    }

    v72 -= 3;
    v73 += 24;
  }

  while (v73);
  TParam::~TParam(this + 641);
  this[469] = &unk_287528A10;
  v86 = this + 638;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 635;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 632;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v74 = this + 629;
  v75 = -1152;
  do
  {
    if (*(v74 + 23) < 0)
    {
      operator delete(*v74);
    }

    v74 -= 3;
    v75 += 24;
  }

  while (v75);
  TParam::~TParam(this + 469);
  this[297] = &unk_287528A10;
  v86 = this + 466;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 463;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  v86 = this + 460;
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v86);
  for (i = 0; i != -144; i -= 3)
  {
    if (SHIBYTE(this[i + 459]) < 0)
    {
      operator delete(this[i + 457]);
    }
  }

  TParam::~TParam(this + 297);
  v77 = 0;
  this[266] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v77 + 296]) < 0)
    {
      operator delete(this[v77 + 294]);
    }

    v77 -= 3;
  }

  while (v77 != -6);
  TParam::~TParam(this + 266);
  v78 = 0;
  this[235] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v78 + 265]) < 0)
    {
      operator delete(this[v78 + 263]);
    }

    v78 -= 3;
  }

  while (v78 != -6);
  TParam::~TParam(this + 235);
  v79 = 0;
  this[204] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v79 + 234]) < 0)
    {
      operator delete(this[v79 + 232]);
    }

    v79 -= 3;
  }

  while (v79 != -6);
  TParam::~TParam(this + 204);
  v80 = 0;
  this[173] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v80 + 203]) < 0)
    {
      operator delete(this[v80 + 201]);
    }

    v80 -= 3;
  }

  while (v80 != -6);
  TParam::~TParam(this + 173);
  v81 = 0;
  this[142] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v81 + 172]) < 0)
    {
      operator delete(this[v81 + 170]);
    }

    v81 -= 3;
  }

  while (v81 != -6);
  TParam::~TParam(this + 142);
  v82 = 0;
  this[111] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v82 + 141]) < 0)
    {
      operator delete(this[v82 + 139]);
    }

    v82 -= 3;
  }

  while (v82 != -6);
  TParam::~TParam(this + 111);
  v83 = 0;
  this[80] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v83 + 110]) < 0)
    {
      operator delete(this[v83 + 108]);
    }

    v83 -= 3;
  }

  while (v83 != -6);
  TParam::~TParam(this + 80);
  v84 = 0;
  this[49] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v84 + 79]) < 0)
    {
      operator delete(this[v84 + 77]);
    }

    v84 -= 3;
  }

  while (v84 != -6);
  TParam::~TParam(this + 49);
  v85 = 0;
  this[18] = &unk_2875295A0;
  do
  {
    if (SHIBYTE(this[v85 + 48]) < 0)
    {
      operator delete(this[v85 + 46]);
    }

    v85 -= 3;
  }

  while (v85 != -6);
  TParam::~TParam(this + 18);
  TParamManager::~TParamManager(this);
}

uint64_t TFloatParam::TFloatParam(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v9 = TParam::TParam(a1, 3, a2, a3, a4, a5, a6);
  *v9 = &unk_287528F10;
  *(v9 + 152) = a7;
  *(v9 + 112) |= 0x200uLL;
  TParam::notifyChange(v9, 0);
  return a1;
}

void CTModelRelevance::~CTModelRelevance(CTModelRelevance *this)
{
  *this = 0;
  v2 = this + 8;
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 8);
  DgnArray<DgnArray<DgnPrimArray<unsigned int>>>::releaseAll(this + 24);
  DgnArray<DgnArray<DgnPrimArray<unsigned int>>>::releaseAll(this + 24);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v2);
}

uint64_t sizeObject<DgnArray<DgnPrimArray<long long>>>(uint64_t a1, int a2)
{
  v10[0] = 0;
  v10[1] = 0;
  v11[0] = 0;
  v11[1] = 0;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v4 = 12;
  }

  else
  {
    v4 = 16;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v11);
  v5 = 0;
  if (a2 != 3)
  {
    v5 = (gShadowDiagnosticShowIdealizedObjectSizes & 1) != 0 ? 12 : 16;
    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v6 = *(a1 + 8);
      if (v6 >= 1)
      {
        v7 = v6 + 1;
        v8 = 16 * v6 - 16;
        do
        {
          v5 += sizeObject<DgnPrimArray<double>>(*a1 + v8, a2);
          --v7;
          v8 -= 16;
        }

        while (v7 > 1);
      }

      if (!a2)
      {
        v5 += v4 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v10);
  return v5;
}

uint64_t CTModelRelevance::computeModelRelevance(CTModelRelevance *this, PelMgr *a2, unsigned int a3, double a4, int a5, int a6, int a7, int a8, char a9)
{
  *this = 0;
  v14 = *(a2 + 33);
  v223 = *(a2 + 4);
  v15 = (a6 ^ 1 | a7) == 1 && a5 == 0;
  if (!v15 || (a9 & 1) == 0)
  {
    v17 = v14 + 1;
LABEL_11:
    v16 = 1;
    v222 = v17;
    goto LABEL_12;
  }

  v16 = 0;
  v17 = v14 + 1;
  v222 = 2;
  if (v223 == 1 && (a8 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  v18 = *(this + 5);
  if (v14 > v18)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 8, v14 - v18, 0);
  }

  v221 = v17;
  v226 = this;
  v19 = *(this + 4);
  v220 = a3;
  if (v19 <= v14)
  {
    v20 = this;
    if (v19 < v14)
    {
      v23 = v14 - v19;
      v24 = 16 * v19;
      do
      {
        v25 = (*(this + 1) + v24);
        *v25 = 0;
        v25[1] = 0;
        v24 += 16;
        --v23;
      }

      while (v23);
    }
  }

  else
  {
    v20 = this;
    if (v19 > v14)
    {
      v21 = v19;
      v22 = 16 * v19 - 16;
      do
      {
        --v21;
        DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 1) + v22);
        v22 -= 16;
      }

      while (v21 > v14);
    }
  }

  *(v20 + 4) = v14;
  v26 = v20;
  if (v14)
  {
    v27 = 0;
    while (1)
    {
      v28 = *(v20 + 1) + v27;
      v29 = *(v28 + 12);
      if (v222 > v29)
      {
        break;
      }

      *(v28 + 8) = v222;
      if (v222)
      {
        goto LABEL_27;
      }

LABEL_28:
      v27 += 16;
      if (16 * v14 == v27)
      {
        goto LABEL_29;
      }
    }

    DgnPrimArray<unsigned long long>::reallocElts(*(v20 + 1) + v27, v222 - v29, 0);
    *(v28 + 8) = v222;
LABEL_27:
    bzero(*(*(v20 + 1) + v27), 8 * v222);
    goto LABEL_28;
  }

LABEL_29:
  v30 = a8;
  if (v223 != 1)
  {
    v30 = 1;
  }

  if (v30)
  {
    v31 = v14;
  }

  else
  {
    v31 = (v221 * v14) >> 1;
  }

  v26[10] = v31;
  v32 = v26[9];
  if (v31 > v32)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts((v26 + 6), v31 - v32, 0);
  }

  v33 = v26[8];
  if (v33 <= v31)
  {
    v34 = v226;
    if (v33 < v31)
    {
      v37 = v31 - v33;
      v38 = 16 * v33;
      do
      {
        v39 = (*(v226 + 3) + v38);
        *v39 = 0;
        v39[1] = 0;
        v38 += 16;
        --v37;
      }

      while (v37);
    }
  }

  else
  {
    v34 = v226;
    if (v33 > v31)
    {
      v35 = v33;
      v36 = 16 * v33 - 16;
      do
      {
        DgnArray<DgnPrimArray<unsigned char>>::releaseAll(*(v34 + 3) + v36);
        --v35;
        v36 -= 16;
        v34 = v226;
      }

      while (v35 > v31);
    }
  }

  *(v34 + 8) = v31;
  v40 = v222;
  v229 = v16;
  if (*(v34 + 10))
  {
    v41 = 0;
    v42 = v222;
    do
    {
      v227 = v41;
      v43 = *(v34 + 3) + 16 * v41;
      v44 = *(v43 + 12);
      if (v40 > v44)
      {
        DgnArray<DgnPrimArray<double>>::reallocElts(v43, v40 - v44, 0);
      }

      v45 = *(v43 + 8);
      if (v45 <= v40)
      {
        if (v45 < v40)
        {
          v48 = v222 - v45;
          v49 = 16 * v45;
          do
          {
            v50 = (*v43 + v49);
            *v50 = 0;
            v50[1] = 0;
            v49 += 16;
            --v48;
          }

          while (v48);
        }
      }

      else if (v45 > v40)
      {
        v46 = v45;
        v47 = 16 * v45 - 16;
        do
        {
          --v46;
          DgnPrimArray<unsigned int>::~DgnPrimArray(*v43 + v47);
          v47 -= 16;
        }

        while (v46 > v42);
      }

      *(v43 + 8) = v222;
      if (v222)
      {
        v51 = 0;
        v52 = *(*(v226 + 3) + 16 * v227);
        v53 = 8;
        v54 = 8;
        v55 = v52;
        do
        {
          v56 = *(v52 + v54 + 4);
          if (v51 >= v56)
          {
            DgnPrimArray<unsigned long long>::reallocElts(v52 + v54 - 8, (v51 - v56 + 1), 0);
            v55 = *(*(v226 + 3) + 16 * v227);
          }

          *(v52 + v54) = ++v51;
          bzero(*(v55 + v54 - 8), v53);
          v54 += 16;
          v53 += 8;
          v52 = v55;
        }

        while (v222 != v51);
      }

      v34 = v226;
      v41 = v227 + 1;
      v40 = v222;
      v16 = v229;
      v42 = v222;
    }

    while (v227 + 1 < *(v226 + 10));
  }

  v242[0] = 0;
  v242[1] = 0;
  v240 = 0;
  v241 = 0;
  if (!v221)
  {
    v58 = 0;
    LODWORD(v241) = 0;
    v238 = 0;
    v239 = 0;
LABEL_69:
    if (v58 < v221)
    {
      v61 = v221 - v58;
      v62 = 2 * v58;
      do
      {
        v63 = &v238[v62];
        *v63 = 0;
        v63[1] = 0;
        v62 += 2;
        --v61;
      }

      while (v61);
    }

LABEL_72:
    LODWORD(v239) = v221;
    if (!v221)
    {
      goto LABEL_85;
    }

    goto LABEL_75;
  }

  v232 = 0;
  v57 = realloc_array(0, &v232, 8 * v221, 0, 0, 1);
  v239 = 0;
  v240 = v232;
  LODWORD(v241) = v221;
  HIDWORD(v241) = v57 >> 3;
  v238 = 0;
  v232 = 0;
  HIDWORD(v239) = realloc_array(0, &v232, 16 * v221, 0, 0, 1) >> 4;
  v238 = v232;
  v58 = v239;
  if (v239 <= v221)
  {
    goto LABEL_69;
  }

  if (v239 > v221)
  {
    v59 = v239;
    v60 = 16 * v239 - 16;
    do
    {
      --v59;
      DgnPrimArray<unsigned int>::~DgnPrimArray(v238 + v60);
      v60 -= 16;
    }

    while (v59 > v221);
    goto LABEL_72;
  }

  LODWORD(v239) = v221;
LABEL_75:
  v64 = 0;
  v65 = 1;
  v66 = v221;
  do
  {
    v67 = &v238[v64];
    if (v64 * 8)
    {
      v68 = 2;
    }

    else
    {
      v68 = 1;
    }

    if (v16)
    {
      v69 = v65;
    }

    else
    {
      v69 = v68;
    }

    v70 = *(v67 + 3);
    if (v69 > v70)
    {
      DgnPrimArray<unsigned long long>::reallocElts(&v238[v64], v69 - v70, 0);
    }

    *(v67 + 2) = v69;
    v64 += 2;
    ++v65;
    --v66;
  }

  while (v66);
LABEL_85:
  v71 = (v220 * 256.0 + 0.5);
  *v226 = v71;
  v72 = 40.7436654;
  v73 = 100.0 / a4;
  if (v223 == 1)
  {
    v72 = 1.0;
  }

  v74 = ((v71 * v72 + 0.5) & 0x3FFFFFFFFFFFLL) << 10;
  if (v223 == 1)
  {
    v110 = *(a2 + 38);
    v237[0] = 0;
    v237[1] = 0;
    v235 = 0;
    v236 = 0;
    if (a8)
    {
      v111 = 1;
    }

    else
    {
      v111 = v14;
    }

    v112 = v111 * v14;
    if (v111 * v14)
    {
      v235 = MemChunkAlloc(8 * (v111 * v14), 0);
      v236 = v112;
    }

    v113 = 0;
    v224 = 0;
    v225 = 0;
    v114 = 1.0 / (1 << (*(a2 + 40) + *(a2 + 41)));
    v76 = v222;
    v115 = v74;
    while (1)
    {
      if (!PelMgr::getComponentByIndex(a2, v113, v242, v237))
      {
        DgnPrimFixArray<double>::~DgnPrimFixArray(&v235);
        DgnPrimArray<unsigned int>::~DgnPrimArray(v237);
        goto LABEL_246;
      }

      v116 = v240;
      *v240 = 1;
      if (v14)
      {
        v117 = v242[0];
        v118 = v116 + 1;
        v119 = v14;
        do
        {
          v120 = *v117++;
          *v118++ = v120;
          --v119;
        }

        while (v119);
      }

      v121 = v238;
      **v238 = 0x400000;
      if (v221 >= 2)
      {
        v122 = 1;
        do
        {
          v123 = 0;
          v124 = v122++;
          if (v122 <= 1)
          {
            v125 = 1;
          }

          else
          {
            v125 = v122;
          }

          if (v229)
          {
            v126 = 1;
          }

          else
          {
            v126 = v124;
          }

          v127 = v121[2 * v124];
          if (!v229)
          {
            v125 = 2;
          }

          do
          {
            v128 = v123;
            if (v123)
            {
              v129 = 8;
            }

            else
            {
              v129 = 15;
            }

            *v127++ = (v116[v124] << v129) * v116[v123];
            v123 += v126;
            --v125;
          }

          while (v125);
        }

        while (v122 != v221);
        v130 = 256;
        if (!v128)
        {
          v130 = 0x8000;
        }

        v225 = v130;
      }

      if (a8)
      {
        break;
      }

      LODWORD(v232) = v14;
      HIDWORD(v232) = v14;
      v234 = 0;
      v233 = 0;
      if (v14 * v14)
      {
        v233 = MemChunkAlloc(8 * (v14 * v14), 0);
        v234 = v14 * v14;
      }

      if (v14)
      {
        v143 = 0;
        v144 = v235;
        do
        {
          v145 = 0;
          v146 = v237[0];
          v147 = v232;
          v148 = v233;
          do
          {
            if (v110)
            {
              v149 = *(a2 + 23);
              v150 = 0.0;
              v151 = v110;
              v152 = v146;
              do
              {
                v153 = *v152++;
                v154 = v153;
                v155 = *v149;
                v149 += 2;
                v150 = v150 + v154 * *(*(v155 + 16 * v143) + 4 * v145);
                --v151;
              }

              while (v151);
            }

            else
            {
              v150 = 0.0;
            }

            v156 = v114 * v150;
            *&v144[(v14 * v143 + v145)] = v156;
            if (a6)
            {
              *&v148[(v143 + v147 * v145)] = v156;
            }

            ++v145;
          }

          while (v145 != v14);
          ++v143;
        }

        while (v143 != v14);
      }

      if (a6)
      {
        DgnMatrix::invert(&v232, &v230);
        if (v14)
        {
          v157 = 0;
          v158 = v230;
          v159 = v231;
          v160 = v238;
          do
          {
            if (v229)
            {
              v161 = v157;
            }

            else
            {
              v161 = 1;
            }

            v162 = v157 + 1;
            if (v161)
            {
              v163 = 0;
              v164 = v160[2 * v162];
              do
              {
                if (v229)
                {
                  v165 = v163;
                }

                else
                {
                  v165 = v157;
                }

                if (v229)
                {
                  v166 = v163 + 1;
                }

                else
                {
                  v166 = 1;
                }

                v164[v166] += (*(v159 + 8 * (v157 + v158 * v165)) * v225);
                ++v163;
              }

              while (v161 != v163);
            }

            ++v157;
          }

          while (v162 != v14);
        }

        DgnPrimFixArray<double>::~DgnPrimFixArray(&v231);
      }

      DgnPrimFixArray<double>::~DgnPrimFixArray(&v233);
      if (v14)
      {
        goto LABEL_203;
      }

LABEL_224:
      v186 = *(v226 + 10);
      if (v186)
      {
        v187 = 0;
        v188 = 0;
        v189 = 0;
        v190 = v235;
        v191 = v238;
        do
        {
          if (a8)
          {
            v192 = v187;
          }

          else
          {
            v192 = v188 + v189 * v14;
            if (v188 + 1 <= v189)
            {
              ++v188;
            }

            else
            {
              ++v189;
              v188 = 0;
            }
          }

          v193 = *&v190[v192];
          if (v193 < 0.0)
          {
            v194 = -0.5;
          }

          else
          {
            v194 = 0.5;
          }

          v195 = v187 + 1;
          if (v222)
          {
            v196 = 0;
            v197 = v194 + v193 * v115;
            if (v229)
            {
              v198 = 1;
            }

            else
            {
              v198 = v187 + 1;
            }

            v199 = *(*(v226 + 3) + 16 * v187);
            v200 = 1;
            do
            {
              v201 = 0;
              v202 = v191[2 * (v198 * v196)];
              v203 = *(v199 + 16 * v196);
              do
              {
                *(v203 + 8 * v201) += (v202[v201] * v197) >> 18;
                ++v201;
              }

              while (v200 != v201);
              ++v196;
              ++v200;
            }

            while (v196 != v222);
          }

          v187 = v195;
        }

        while (v195 != v186);
      }

      v113 = (++v224 * v73 + 0.5);
    }

    if (!v14)
    {
      goto LABEL_224;
    }

    v131 = 0;
    v132 = v237[0];
    v133 = v235;
    do
    {
      if (v110)
      {
        v134 = *(a2 + 23);
        v135 = 0.0;
        v136 = v110;
        v137 = v132;
        do
        {
          v138 = *v137++;
          v139 = v138;
          v140 = *v134;
          v134 += 2;
          v135 = v135 + v139 * *(*(v140 + 16 * v131) + 4 * v131);
          --v136;
        }

        while (v136);
      }

      else
      {
        v135 = 0.0;
      }

      v141 = v114 * v135;
      *&v133[v131] = v141;
      if (a6)
      {
        v141 = v225 / v141;
        if (v229)
        {
          v142 = v131 + 1;
        }

        else
        {
          v142 = 1;
        }

        ++v131;
        v121[2 * v131][v142] += v141;
      }

      else
      {
        ++v131;
      }
    }

    while (v131 != v14);
LABEL_203:
    v167 = 0;
    v168 = 0;
    v169 = v235;
    v170 = v242[0];
    v171 = v240;
    do
    {
      if (a8)
      {
        LODWORD(v141) = v170[v168];
        v172 = *&v169[v168] * *&v141;
      }

      else
      {
        v172 = 0.0;
        v173 = v14;
        v174 = v170;
        v175 = v167;
        do
        {
          v176 = *v174++;
          v172 = v172 + *&v169[v175++] * v176;
          --v173;
        }

        while (v173);
      }

      if (v172 < 0.0)
      {
        v141 = -0.5;
      }

      else
      {
        v141 = 0.5;
      }

      v177 = v168 + 1;
      if (v222)
      {
        v178 = 0;
        v179 = v141 + v172 * v115;
        if (v229)
        {
          v180 = 1;
        }

        else
        {
          v180 = v168 + 1;
        }

        v181 = *(*(v226 + 1) + 16 * v168);
        v182 = v222;
        do
        {
          v183 = v178;
          if (v178)
          {
            v184 = 8;
          }

          else
          {
            v184 = 15;
          }

          *v181++ += (v171[v183] * (v179 << v184)) >> 18;
          v178 = v183 + v180;
          --v182;
        }

        while (v182);
        v185 = 256;
        if (!v183)
        {
          v185 = 0x8000;
        }

        v225 = v185;
      }

      v167 += v14;
      v168 = v177;
    }

    while (v177 != v14);
    goto LABEL_224;
  }

  v75 = 0;
  v224 = 0;
  v232 = 0;
  v233 = 0;
  v76 = v222;
  while (PelMgr::getComponentByIndex(a2, v75, v242, &v232))
  {
    v77 = v240;
    *v240 = 1;
    if (v14)
    {
      v78 = v242[0];
      v79 = v77 + 1;
      v80 = v14;
      do
      {
        v81 = *v78++;
        *v79++ = v81;
        --v80;
      }

      while (v80);
    }

    v82 = v238;
    **v238 = 0x400000;
    if (v221 >= 2)
    {
      v83 = v232 - 4;
      v84 = 1;
      do
      {
        v85 = 0;
        v86 = v84++;
        if (v229)
        {
          LODWORD(v87) = v84;
        }

        else
        {
          LODWORD(v87) = 2;
        }

        if (v229)
        {
          v88 = 1;
        }

        else
        {
          v88 = v86;
        }

        v89 = v82[2 * v86];
        v90 = v87 - 1;
        if (v87 <= 1)
        {
          v87 = 1;
        }

        else
        {
          v87 = v87;
        }

        v91 = v82[2 * v86];
        do
        {
          if (v85)
          {
            v92 = 8;
          }

          else
          {
            v92 = 15;
          }

          *v91++ = (v77[v86] << v92) * v77[v85];
          v85 += v88;
          --v87;
        }

        while (v87);
        if (a6)
        {
          v89[v90] += (((*&v83[4 * v86] << v92) * *&v83[4 * v86]) * 0.0245436926);
        }
      }

      while (v84 != v221);
    }

    if (v14)
    {
      v93 = 0;
      v94 = v232;
      v95 = v242[0];
      do
      {
        v96 = v93 + 1;
        if (v222)
        {
          v97 = 0;
          v98 = (v94[v93] * v94[v93]);
          v99 = *(v95 + 4 * v93);
          v100 = 16 * v93;
          v101 = *(*(v226 + 1) + 16 * v93);
          if (v229)
          {
            v102 = 1;
          }

          else
          {
            v102 = v96;
          }

          v103 = *(*(v226 + 3) + v100);
          v104 = 1;
          v105 = (v74 + (v98 >> 1)) / v98;
          do
          {
            v106 = 0;
            if (v102 * v97)
            {
              v107 = 8;
            }

            else
            {
              v107 = 15;
            }

            *(v101 + 8 * v97) += (v77[(v102 * v97)] * v105 * (v99 << v107)) >> 18;
            v108 = v82[2 * (v102 * v97)];
            v109 = *(v103 + 16 * v97);
            do
            {
              *(v109 + 8 * v106) += (v108[v106] * v105) >> 18;
              ++v106;
            }

            while (v104 != v106);
            ++v97;
            ++v104;
          }

          while (v97 != v222);
        }

        v93 = v96;
      }

      while (v96 != v14);
    }

    v75 = (++v224 * v73 + 0.5);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v232);
LABEL_246:
  v204 = v224 >> 1;
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      if (v76)
      {
        v206 = *(*(v226 + 1) + 16 * i);
        v207 = v76;
        do
        {
          v208 = (*v206 + v204) / v224;
          if ((*v206 & 0x8000000000000000) != 0)
          {
            v208 = -((v204 - *v206) / v224);
          }

          *v206++ = v208;
          --v207;
        }

        while (v207);
      }
    }
  }

  v209 = *(v226 + 10);
  if (v209)
  {
    for (j = 0; j != v209; ++j)
    {
      if (v76)
      {
        v211 = 0;
        v212 = *(*(v226 + 3) + 16 * j);
        v213 = 1;
        do
        {
          v214 = 0;
          v215 = *(v212 + 16 * v211);
          do
          {
            v216 = *(v215 + 8 * v214);
            v217 = (v204 - v216) / v224;
            v15 = v216 >= 0;
            v218 = (v216 + v204) / v224;
            if (!v15)
            {
              v218 = -v217;
            }

            *(v215 + 8 * v214++) = v218;
          }

          while (v213 != v214);
          ++v211;
          ++v213;
        }

        while (v211 != v76);
      }
    }
  }

  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v238);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v240);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v242);
}

void sub_26260CCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, char a30)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a24);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a26);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&a28);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a30);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v30 - 152);
  _Unwind_Resume(a1);
}

uint64_t CTPelAccum::CTPelAccum(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, char a7, char a8, char a9, int a10, uint64_t a11, double **a12, uint64_t a13)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 20) = a4;
  *(a1 + 21) = a5 | a9;
  *(a1 + 23) = a6;
  *(a1 + 24) = a7;
  *(a1 + 25) = a8;
  *(a1 + 26) = a9;
  *(a1 + 28) = a10;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 40) = a11;
  *(a1 + 48) = a13;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 16) = *(a2 + 132);
  *(a1 + 22) = 0;
  CTPelAccum::init(a1, a12);
  return a1;
}

void sub_26260CE2C(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 144);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v4);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v2);
  _Unwind_Resume(a1);
}

void CTPelAccum::init(uint64_t a1, double **a2)
{
  if (*(*a1 + 16) == 1)
  {
    v3 = *(a1 + 20) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  if (*(a1 + 28))
  {
    v4 = CTPelAccum::determineNumSignificantSingularValues(a1, a2);
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 27) = v4;
  *(a1 + 56) = 0;
  if (*(a1 + 26))
  {
    *(a1 + 160) = 0;
    v5 = (a1 + 160);
    *(a1 + 96) = 0;
    v6 = *(a1 + 16);
    *(a1 + 120) = v6;
    v7 = (a1 + 24);
    if ((*(a1 + 24) & 1) == 0)
    {
      goto LABEL_47;
    }

    v8 = (a1 + 104);
    v9 = *(a1 + 116);
    v10 = v6;
    if (v6 > v9)
    {
      DgnPrimArray<unsigned long long>::reallocElts(a1 + 104, v6 - v9, 0);
      v10 = *(a1 + 16);
    }

    *(a1 + 112) = v6;
    if (!v10)
    {
      goto LABEL_47;
    }

LABEL_46:
    bzero(*v8, 8 * v10);
    goto LABEL_47;
  }

  if (v3)
  {
    v11 = (*(a1 + 16) + *(a1 + 16) * *(a1 + 16)) >> 1;
    *(a1 + 96) = v11;
    v12 = (a1 + 96);
  }

  else
  {
    v12 = (a1 + 96);
    if (v4)
    {
      v11 = *(a1 + 32);
    }

    else
    {
      v11 = *(a1 + 16);
    }

    *(a1 + 96) = v11;
  }

  *(a1 + 160) = v11;
  v5 = (a1 + 160);
  *(a1 + 120) = 0;
  v7 = (a1 + 24);
  if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_47;
  }

  if (*(*a1 + 16) == 1)
  {
    v13 = *(a1 + 20);
  }

  else
  {
    v13 = 1;
  }

  v14 = *(a1 + 16);
  if (*(a1 + 25) & v13)
  {
    v15 = 2;
  }

  else
  {
    v15 = v14 + 1;
  }

  v16 = *(a1 + 76);
  if (v14 > v16)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a1 + 64, v14 - v16, 0);
  }

  v17 = *(a1 + 72);
  if (v17 <= v14)
  {
    if (v17 < v14)
    {
      v20 = v14 - v17;
      v21 = 16 * v17;
      do
      {
        v22 = (*(a1 + 64) + v21);
        *v22 = 0;
        v22[1] = 0;
        v21 += 16;
        --v20;
      }

      while (v20);
    }
  }

  else if (v17 > v14)
  {
    v18 = v17;
    v19 = 16 * v17 - 16;
    do
    {
      --v18;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*(a1 + 64) + v19);
      v19 -= 16;
    }

    while (v18 > v14);
  }

  *(a1 + 72) = v14;
  if (*(a1 + 16))
  {
    v23 = 0;
    v24 = 0;
    while (1)
    {
      v25 = *(a1 + 64) + v23;
      v26 = *(v25 + 12);
      if (v15 > v26)
      {
        break;
      }

      *(v25 + 8) = v15;
      if (v15)
      {
        goto LABEL_41;
      }

LABEL_42:
      ++v24;
      v23 += 16;
      if (v24 >= *(a1 + 16))
      {
        goto LABEL_43;
      }
    }

    DgnPrimArray<unsigned long long>::reallocElts(*(a1 + 64) + v23, v15 - v26, 0);
    *(v25 + 8) = v15;
LABEL_41:
    bzero(*(*(a1 + 64) + v23), 8 * v15);
    goto LABEL_42;
  }

LABEL_43:
  v27 = (v15 + v15 * v15) >> 1;
  v8 = (a1 + 80);
  v28 = *(a1 + 92);
  v29 = *(a1 + 96) * v27;
  v10 = v29;
  if (v29 > v28)
  {
    DgnPrimArray<unsigned long long>::reallocElts(a1 + 80, v29 - v28, 0);
    v10 = *v12 * v27;
  }

  *(a1 + 88) = v29;
  if (v10)
  {
    goto LABEL_46;
  }

LABEL_47:
  if (*v7 == 1 && *(a1 + 21) != 1 || *(a1 + 23) == 1)
  {
    v30 = *(a1 + 16);
    v31 = *(a1 + 140);
    if (v30 > v31)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(a1 + 128, v30 - v31, 0);
    }

    v32 = *(a1 + 136);
    if (v32 <= v30)
    {
      if (v32 < v30)
      {
        v35 = v30 - v32;
        v36 = 16 * v32;
        do
        {
          v37 = (*(a1 + 128) + v36);
          *v37 = 0;
          v37[1] = 0;
          v36 += 16;
          --v35;
        }

        while (v35);
      }
    }

    else if (v32 > v30)
    {
      v33 = v32;
      v34 = 16 * v32 - 16;
      do
      {
        --v33;
        DgnPrimArray<unsigned int>::~DgnPrimArray(*(a1 + 128) + v34);
        v34 -= 16;
      }

      while (v33 > v30);
    }

    v38 = v30 + 1;
    *(a1 + 136) = v30;
    if (*(a1 + 16))
    {
      v39 = 0;
      v40 = 0;
      while (1)
      {
        v41 = *(a1 + 128) + v39;
        v42 = *(v41 + 12);
        if (v38 > v42)
        {
          break;
        }

        *(v41 + 8) = v38;
        if (v30 != -1)
        {
          goto LABEL_65;
        }

LABEL_66:
        ++v40;
        v39 += 16;
        if (v40 >= *(a1 + 16))
        {
          goto LABEL_67;
        }
      }

      DgnPrimArray<unsigned long long>::reallocElts(*(a1 + 128) + v39, v38 - v42, 0);
      *(v41 + 8) = v38;
LABEL_65:
      bzero(*(*(a1 + 128) + v39), 8 * (v30 + 1));
      goto LABEL_66;
    }

LABEL_67:
    v43 = (v38 * (v30 + 2)) >> 1;
    v44 = *(a1 + 156);
    v45 = *(a1 + 160) * v43;
    v46 = v45;
    if (v45 > v44)
    {
      DgnPrimArray<unsigned long long>::reallocElts(a1 + 144, v45 - v44, 0);
      v46 = *v5 * v43;
    }

    *(a1 + 152) = v45;
    if (v46)
    {
      v47 = *(a1 + 144);

      bzero(v47, 8 * v46);
    }
  }
}

void CTPelAccum::~CTPelAccum(CTPelAccum *this)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 144);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 128);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 104);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 80);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 64);
}

uint64_t CTPelAccum::determineNumSignificantSingularValues(uint64_t a1, double **a2)
{
  v2 = 0;
  if (a2)
  {
    if (*(a1 + 40))
    {
      v2 = *(a1 + 48);
      if (v2)
      {
        v3 = *(*a1 + 132);
        v4 = **a2;
        v5 = 0.0 - v4;
        if (v4 < 0.0)
        {
          v4 = 0.0 - v4;
        }

        if (v3 < 2)
        {
          LODWORD(v7) = 1;
        }

        else
        {
          LODWORD(v5) = *(a1 + 28);
          v6 = *&v5 * 0.01 * v4;
          v7 = 1;
          while (1)
          {
            v8 = (*a2)[v7];
            if (v8 < 0.0)
            {
              v8 = 0.0 - v8;
            }

            if (v8 < v6)
            {
              break;
            }

            if (v3 == ++v7)
            {
              LODWORD(v7) = *(*a1 + 132);
              break;
            }
          }
        }

        *(a1 + 32) = v7;
        return 1;
      }
    }
  }

  return v2;
}

void CTPelAccum::reset(CTPelAccum *this)
{
  *(this + 7) = 0;
  if (*(this + 24) != 1)
  {
    goto LABEL_21;
  }

  if (*(this + 26) == 1)
  {
    v2 = (this + 104);
    v3 = *(this + 4);
    v4 = *(this + 29);
    v5 = v3;
    if (v3 > v4)
    {
      DgnPrimArray<unsigned long long>::reallocElts(this + 104, v3 - v4, 0);
      v5 = *(this + 4);
    }

    *(this + 28) = v3;
    if (!v5)
    {
      goto LABEL_21;
    }

LABEL_20:
    bzero(*v2, 8 * v5);
    goto LABEL_21;
  }

  if (*(*this + 16) == 1)
  {
    v6 = *(this + 20);
  }

  else
  {
    v6 = 1;
  }

  v7 = *(this + 25) & v6;
  v8 = *(this + 4);
  if (v7)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8 + 1;
  }

  if (v8)
  {
    v10 = 0;
    v11 = 16 * v8;
    do
    {
      if (v9)
      {
        bzero(*(*(this + 8) + v10), 8 * v9);
      }

      v10 += 16;
    }

    while (v11 != v10);
  }

  v5 = *(this + 24) * ((v9 + v9 * v9) >> 1);
  if (v5)
  {
    v2 = (this + 80);
    goto LABEL_20;
  }

LABEL_21:
  if (*(this + 24) == 1 && *(this + 21) != 1 || *(this + 23) == 1)
  {
    v12 = *(this + 4);
    if (v12)
    {
      v13 = 0;
      v14 = v12 + 1;
      do
      {
        if (v12 != -1)
        {
          bzero(*(*(this + 16) + v13), 8 * (v12 + 1));
        }

        v13 += 16;
      }

      while (16 * v12 != v13);
    }

    else
    {
      v14 = 1;
    }

    v15 = *(this + 40);
    if (v15 * ((v14 * (v12 + 2)) >> 1))
    {
      bzero(*(this + 18), 8 * v15 * ((v14 * (v12 + 2)) >> 1));
    }
  }

  *(this + 22) = 0;
}

uint64_t writeObject<DgnPrimArray<long long>>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject<unsigned long long>(a1, *a2 + v7, a3);
      ++v8;
      v7 += 16;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

void CTPelAccum::addAccum(CTPelAccum *this, const CTPelAccum *a2, char a3)
{
  *(this + 7) += *(a2 + 7);
  if (*(this + 24) != 1)
  {
    goto LABEL_37;
  }

  if (*(this + 26) == 1)
  {
    v4 = *(this + 4);
    if (v4)
    {
      v5 = *(a2 + 13);
      v6 = *(this + 13);
      v7 = *(this + 4);
      do
      {
        v8 = *v5++;
        *v6++ += v8;
        --v7;
      }

      while (v7);
      LODWORD(v9) = v4;
    }

    else
    {
      LODWORD(v9) = 0;
    }
  }

  else
  {
    if (*(*this + 16) == 1)
    {
      v10 = *(this + 20);
    }

    else
    {
      v10 = 1;
    }

    v9 = *(this + 4);
    if (*(this + 25) & v10)
    {
      v11 = 2;
    }

    else
    {
      v11 = (v9 + 1);
    }

    if (v9)
    {
      v12 = 0;
      v13 = *(a2 + 8);
      do
      {
        if (v11)
        {
          v14 = *(v13 + 16 * v12);
          v15 = *(*(this + 8) + 16 * v12);
          v16 = v11;
          do
          {
            v17 = *v14++;
            *v15++ += v17;
            --v16;
          }

          while (v16);
        }

        ++v12;
      }

      while (v12 != v9);
    }

    v53 = (v11 + v11 * v11) >> 1;
    if ((a3 & 1) != 0 || *(a2 + 27) != 1)
    {
      v26 = *(this + 24) * v53;
      if (v26)
      {
        v27 = *(a2 + 10);
        v28 = *(this + 10);
        do
        {
          v29 = *v27++;
          *v28++ += v29;
          --v26;
        }

        while (v26);
      }
    }

    else
    {
      v51 = *(this + 24);
      if (v51)
      {
        v48 = a3;
        v49 = this;
        v57 = 0;
        v18 = 0;
        v55 = v9;
        do
        {
          if (v9 != -1)
          {
            v19 = 0;
            v20 = 0;
            v21 = *(v49 + 10);
            v22 = 2;
            v23 = 1;
            do
            {
              v24 = 0;
              do
              {
                *(v21 + 8 * (v57 + (v19 >> 1) + v24)) += (CTPelAccum::getDataDataAccumUnscaled(a2, v18, v20, v24) + 0.5);
                ++v24;
              }

              while (v23 != v24);
              ++v23;
              v19 += v22;
              v22 += 2;
              LODWORD(v9) = v55;
            }

            while (v20++ != v55);
          }

          ++v18;
          v57 += v53;
        }

        while (v18 != v51);
        this = v49;
        a3 = v48;
      }
    }
  }

  if (*(this + 21) == 1)
  {
LABEL_37:
    if (*(this + 23) != 1)
    {
      return;
    }

    LODWORD(v9) = *(this + 4);
  }

  if (v9)
  {
    v30 = 0;
    v31 = v9 + 1;
    v32 = *(a2 + 16);
    do
    {
      if (v9 != -1)
      {
        v33 = *(v32 + 16 * v30);
        v34 = *(*(this + 16) + 16 * v30);
        v35 = (v9 + 1);
        do
        {
          v36 = *v33++;
          *v34++ += v36;
          --v35;
        }

        while (v35);
      }

      ++v30;
    }

    while (v30 != v9);
  }

  else
  {
    v31 = 1;
  }

  v54 = (v31 * (v9 + 2)) >> 1;
  if ((a3 & 1) != 0 || *(a2 + 27) != 1)
  {
    v44 = *(this + 40) * v54;
    if (v44)
    {
      v45 = *(a2 + 18);
      v46 = *(this + 18);
      do
      {
        v47 = *v45++;
        *v46++ += v47;
        --v44;
      }

      while (v44);
    }
  }

  else
  {
    v50 = this;
    v52 = *(this + 40);
    if (v52)
    {
      v58 = 0;
      v37 = 0;
      v56 = v31;
      do
      {
        if (v31)
        {
          v38 = 0;
          v39 = 0;
          v40 = *(v50 + 18);
          v41 = 2;
          v42 = 1;
          do
          {
            v43 = 0;
            v59 = v39 + 1;
            do
            {
              *(v40 + 8 * (v58 + (v38 >> 1) + v43)) += (CTPelAccum::getMeanMeanAccumUnscaled(a2, v37, v39, v43) + 0.5);
              ++v43;
            }

            while (v42 != v43);
            ++v42;
            v38 += v41;
            v41 += 2;
            v31 = v56;
            ++v39;
          }

          while (v59 != v56);
        }

        ++v37;
        v58 += v54;
      }

      while (v37 != v52);
    }
  }
}

double CTPelAccum::getDataDataAccumUnscaled(CTPelAccum *this, unsigned int a2, int a3, int a4)
{
  if (*(*this + 16) == 1)
  {
    v4 = *(this + 20);
  }

  else
  {
    v4 = 1;
  }

  if (*(this + 25) == 1 && (v4 & 1) != 0)
  {
    v5 = 2;
  }

  else
  {
    v5 = *(this + 4) + 1;
  }

  v6 = a4 + ((a3 + a3 * a3) >> 1);
  v7 = (v5 + v5 * v5) >> 1;
  if (*(this + 27) != 1)
  {
    return *(*(this + 10) + 8 * (v6 + v7 * a2));
  }

  v8 = *(this + 8);
  if (!v8)
  {
    return 0.0;
  }

  v9 = *(this + 6);
  v10 = *v9;
  v11 = *(v9 + 1);
  result = 0.0;
  do
  {
    result = result + *(v11 + 8 * a2) * *(*(this + 10) + 8 * v6);
    v6 += v7;
    a2 += v10;
    --v8;
  }

  while (v8);
  return result;
}

double CTPelAccum::getMeanMeanAccumUnscaled(CTPelAccum *this, unsigned int a2, int a3, int a4)
{
  v4 = a4 + ((a3 + a3 * a3) >> 1);
  v5 = (*(this + 4) + 2 + (*(this + 4) + 2) * *(this + 4)) >> 1;
  if (*(this + 27) != 1)
  {
    return *(*(this + 18) + 8 * (v4 + v5 * a2));
  }

  v6 = *(this + 8);
  if (!v6)
  {
    return 0.0;
  }

  v7 = *(this + 6);
  v8 = *v7;
  v9 = *(v7 + 1);
  result = 0.0;
  do
  {
    result = result + *(v9 + 8 * a2) * *(*(this + 18) + 8 * v4);
    v4 += v5;
    a2 += v8;
    --v6;
  }

  while (v6);
  return result;
}

uint64_t CTPelAccum::scaleAccum(uint64_t this, double a2)
{
  if (a2 != 1.0)
  {
    *(this + 56) = (*(this + 56) * a2 + 0.5);
    if (*(this + 24) != 1)
    {
      goto LABEL_34;
    }

    if (*(this + 26) == 1)
    {
      LODWORD(v2) = *(this + 16);
      if (v2)
      {
        v3 = *(this + 104);
        v4 = *(this + 16);
        do
        {
          if (*v3 < 0)
          {
            v5 = -0.5;
          }

          else
          {
            v5 = 0.5;
          }

          *v3 = (v5 + *v3 * a2);
          ++v3;
          --v4;
        }

        while (v4);
      }
    }

    else
    {
      if (*(*this + 16) == 1)
      {
        v6 = *(this + 20);
      }

      else
      {
        v6 = 1;
      }

      v7 = *(this + 25) & v6;
      v2 = *(this + 16);
      if (v7)
      {
        v8 = 2;
      }

      else
      {
        v8 = (v2 + 1);
      }

      if (v2)
      {
        for (i = 0; i != v2; ++i)
        {
          if (v8)
          {
            v10 = *(*(this + 64) + 16 * i);
            v11 = v8;
            do
            {
              if (*v10 < 0)
              {
                v12 = -0.5;
              }

              else
              {
                v12 = 0.5;
              }

              *v10 = (v12 + *v10 * a2);
              ++v10;
              --v11;
            }

            while (v11);
          }
        }
      }

      v13 = *(this + 96) * ((v8 + v8 * v8) >> 1);
      if (v13)
      {
        v14 = *(this + 80);
        do
        {
          if (*v14 < 0)
          {
            v15 = -0.5;
          }

          else
          {
            v15 = 0.5;
          }

          *v14 = (v15 + *v14 * a2);
          ++v14;
          --v13;
        }

        while (v13);
      }
    }

    if (*(this + 21) == 1)
    {
LABEL_34:
      if (*(this + 23) != 1)
      {
        return this;
      }

      LODWORD(v2) = *(this + 16);
    }

    if (v2)
    {
      v16 = 0;
      v17 = v2 + 1;
      do
      {
        if (v2 != -1)
        {
          v18 = *(*(this + 128) + 16 * v16);
          v19 = (v2 + 1);
          do
          {
            if (*v18 < 0)
            {
              v20 = -0.5;
            }

            else
            {
              v20 = 0.5;
            }

            *v18 = (v20 + *v18 * a2);
            ++v18;
            --v19;
          }

          while (v19);
        }

        ++v16;
      }

      while (v16 != v2);
    }

    else
    {
      v17 = 1;
    }

    v21 = *(this + 160);
    if (v21)
    {
      v22 = 0;
      v23 = 0;
      v24 = (v17 * (v2 + 2)) >> 1;
      do
      {
        if (v17)
        {
          v25 = 0;
          v26 = 0;
          v27 = *(this + 144);
          v28 = 2;
          v29 = 1;
          do
          {
            v30 = v22 + (v25 >> 1);
            ++v26;
            v31 = v29;
            do
            {
              v32 = *(v27 + 8 * v30);
              if (v32 < 0)
              {
                v33 = -0.5;
              }

              else
              {
                v33 = 0.5;
              }

              *(v27 + 8 * v30++) = (v33 + v32 * a2);
              --v31;
            }

            while (v31);
            ++v29;
            v25 += v28;
            v28 += 2;
          }

          while (v26 != v17);
        }

        ++v23;
        v22 += v24;
      }

      while (v23 != v21);
    }
  }

  return this;
}

unint64_t CTPelAccum::sizeObject(uint64_t a1, int a2)
{
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v4 = 8;
  }

  else
  {
    v4 = 16;
  }

  v5 = sizeObject<DgnPrimArray<double>>(a1 + 64, a2);
  v6 = sizeObject<unsigned long long>(a1 + 80, a2);
  v7 = sizeObject<unsigned long long>(a1 + 104, a2);
  v8 = sizeObject<DgnPrimArray<double>>(a1 + 128, a2);
  v9 = sizeObject<unsigned long long>(a1 + 144, a2);
  if (a2 == 3)
  {
    v10 = 0;
  }

  else
  {
    v10 = v4;
  }

  v11 = 12;
  if (a2 == 3)
  {
    v11 = 0;
  }

  return (v11 & 0xFFFFFFFFFFFFFFFDLL | (2 * (a2 != 3))) + v5 + v6 + v7 + v8 + v9 + ((2 * (a2 != 3)) | (8 * (a2 != 3))) + v10;
}

BOOL CTPelAccum::adaptOneFrame(uint64_t *a1, unsigned int a2, int a3, AdaptStats *a4, unsigned int a5, uint64_t a6, double a7, double a8)
{
  if (a7 == 0.0)
  {
    return 0;
  }

  v16 = a1;
  v290 = 0;
  v289 = 0;
  v17 = *(*(*a1 + 288) + 2 * a2);
  v288 = 0u;
  v287 = 0u;
  v286 = 0u;
  v285 = 0u;
  v284 = 0u;
  v283 = 0u;
  v282 = 0u;
  v281 = 0u;
  PelStats::resetStats(v280);
  if (!*(a6 + 8))
  {
    a6 = PelScorer::setFrameStaticsForGenoneAdapt(v16[1], v17, a3, v280, v18, v19, v20, v21);
  }

  v279[0] = 0;
  v279[1] = 0;
  DgnPrimArray<unsigned char>::copyArraySlice(v279, a6, 0, *(a6 + 8));
  ComponentProbs = PelScorer::getComponentProbs(v16[1], a2, &v289, a5);
  if (ComponentProbs == 0.0)
  {
    v8 = 0;
    goto LABEL_237;
  }

  if (*(v16 + 24) == 1)
  {
    v261 = *(v16 + 21) ^ 1;
  }

  else
  {
    v261 = 0;
  }

  v23 = *(*v16 + 16);
  if (v23 == 1)
  {
    v24 = *(v16 + 20);
  }

  else
  {
    v24 = 1;
  }

  v277 = 0;
  v278 = 0;
  v275 = 0;
  v276 = 0;
  v25 = (*(v16 + 4) + 1);
  v273 = 0;
  v26 = realloc_array(0, &v273, v25, 0, 0, 1);
  v277 = v273;
  v278 = __PAIR64__(v26, v25);
  *v273 = 1;
  LODWORD(v28) = *(v16 + 4);
  if (v28)
  {
    v29 = 0;
    do
    {
      v277[v29 + 1] = *(v279[0] + v29);
      v28 = *(v16 + 4);
      ++v29;
    }

    while (v29 < v28);
  }

  if (*(v16 + 24) == 1)
  {
    v30 = *(v16 + 25) & v24;
    v31 = (v28 + 2 + (v28 + 2) * v28) >> 1;
    v32 = 2 * v28 + 2;
    if (v30)
    {
      v33 = v32;
    }

    else
    {
      v33 = v31;
    }

    v34 = v275;
    if (HIDWORD(v276) < v33)
    {
      v273 = 0;
      HIDWORD(v276) = realloc_array(v275, &v273, 8 * v33, 8 * v276, 8 * v276, 1) >> 3;
      v34 = v273;
      v275 = v273;
    }

    LODWORD(v276) = v33;
    *v34 = 0x400000;
    if (v30)
    {
      v34[1] = 0;
    }

    LODWORD(v28) = *(v16 + 4);
    v35 = (v28 + 1);
    if (v35 >= 2)
    {
      v36 = v277;
      v37 = 1;
      do
      {
        v38 = 0;
        v39 = v37++;
        if (v37 <= 1)
        {
          v40 = 1;
        }

        else
        {
          v40 = v37;
        }

        if (v30)
        {
          v41 = v39;
        }

        else
        {
          v41 = 1;
        }

        v42 = 2 * v39;
        if (v30)
        {
          v40 = 2;
        }

        else
        {
          v42 = (v37 * v39) >> 1;
        }

        do
        {
          if (v38)
          {
            v43 = 8;
          }

          else
          {
            v43 = 15;
          }

          v34[v42++] = (v36[v39] << v43) * v36[v38];
          v38 += v41;
          --v40;
        }

        while (v40);
      }

      while (v37 != v35);
    }
  }

  v273 = 0;
  v274 = 0;
  v271 = 0;
  v272 = 0;
  if ((v261 & 1) != 0 || *(v16 + 23) == 1)
  {
    v44 = v28 + 1;
    if (v28 == -1)
    {
      v45 = 0;
      v46 = 0;
    }

    else
    {
      v269 = 0;
      HIDWORD(v274) = realloc_array(0, &v269, 4 * (v28 + 1), 0, 0, 1) >> 2;
      v273 = v269;
      v45 = HIDWORD(v272);
      v46 = (*(v16 + 4) + 2 + (*(v16 + 4) + 2) * *(v16 + 4)) >> 1;
    }

    LODWORD(v274) = v44;
    if (v45 < v46)
    {
      v269 = 0;
      HIDWORD(v272) = realloc_array(v271, &v269, 8 * v46, 8 * v272, 8 * v272, 1) >> 3;
      v271 = v269;
    }

    LODWORD(v272) = v46;
  }

  v47 = (*(*v16 + 456) + 4 * a2);
  v49 = *v47;
  v48 = v47[1];
  v269 = 0;
  v270 = 0;
  v50 = (v48 - v49);
  if (v48 == v49)
  {
    v51 = 0;
    LODWORD(v270) = v48 - v49;
  }

  else
  {
    v268[0] = 0;
    v52 = realloc_array(0, v268, 16 * v50, 0, 0, 1);
    v53 = 0;
    v54 = v52 >> 4;
    v51 = v268[0];
    v269 = v268[0];
    HIDWORD(v270) = v54;
    LODWORD(v270) = v48 - v49;
    v55 = v289;
    v56 = v268[0] + 8;
    v50 = (v48 - v49);
    do
    {
      *v56 = v53;
      v27.n128_f64[0] = *(v55 + 8 * v53) / ComponentProbs;
      *(v56 - 1) = v27.n128_u64[0];
      ++v53;
      v56 += 4;
    }

    while (v48 - v49 != v53);
  }

  v247 = v50;
  mrec_qsort_r<CompAndProb>(v51, v50, 16, v27);
  v245 = v23;
  v246 = a4;
  v268[0] = 0;
  v268[1] = 0;
  v267[0] = 0;
  v267[1] = 0;
  v266[0] = 0;
  v266[1] = 0;
  v263[1] = 0;
  v264 = 0;
  v265 = 0;
  v263[0] = 0;
  v57 = *v16;
  if (v23 == 1)
  {
    DgnArray<DgnArray<DgnPrimArray<int>>>::copyArraySlice(v263, (v57 + 184), 0, *(v57 + 192));
    v57 = *v16;
    v58 = *(*v16 + 152);
    v60 = *(*v16 + 160);
    v59 = *(*v16 + 164);
    v61 = *(v16 + 4);
    if (*(v16 + 20))
    {
      v62 = 1;
    }

    else
    {
      v62 = *(v16 + 4);
    }

    v63 = v61 * v62;
    if (v61 * v62 && !v265)
    {
      v264 = MemChunkAlloc(8 * (v61 * v62), 0);
      v265 = v63;
      v57 = *v16;
    }

    v64 = v60 + v59;
  }

  else
  {
    v58 = 0;
    v64 = 0;
  }

  v65 = v247;
  if (v48 == v49)
  {
    v8 = 0;
    goto LABEL_236;
  }

  v66 = 0;
  v67 = 1.0 / (1 << v64);
  v248 = a7 * 256.0;
  v244 = *(*(v57 + 272) + 4 * v17);
  v68 = 0.0;
  v262 = v16;
  do
  {
    v69 = v269 + 16 * v66;
    v70 = *v69;
    v71 = v248 * *v69 + 0.5;
    v72 = v71;
    if (!v71)
    {
      goto LABEL_234;
    }

    v249 = v66;
    v73 = *(v69 + 2);
    v16[7] += v72;
    if (v246)
    {
      AdaptStats::update(v246, *(*(*v16 + 416) + 4 * a2), v71, 256);
    }

    v74 = a8;
    v75 = v72;
    if (v245 == 1)
    {
      PelMgr::unpackPelMixtureComponent(*v16, a2, v73, v268, v266);
      v77 = v75 + 0.5;
    }

    else
    {
      if (*(v16 + 26))
      {
        v78 = 1.0;
      }

      else
      {
        v78 = 40.7436654;
      }

      PelMgr::unpackPelMixtureComponent(*v16, a2, v73, v268, v267);
      v77 = v75 * v78 + 0.5;
    }

    a8 = v74;
    if (v261 & 1) != 0 || (*(v16 + 23))
    {
      v79 = v273;
      v80 = 1;
      *v273 = 1;
      if (*(v16 + 4))
      {
        v81 = 0;
        v82 = v268[0];
        do
        {
          v79[v81 + 1] = v82[v81];
          v83 = *(v16 + 4);
          ++v81;
        }

        while (v81 < v83);
        v80 = v83 + 1;
        if (v83 == -1)
        {
          v80 = 0;
          LODWORD(v83) = -1;
          goto LABEL_92;
        }
      }

      else
      {
        LODWORD(v83) = 0;
      }

      v84 = 0;
      v85 = 0;
      v86 = v271;
      v87 = 2;
      v88 = 1;
      do
      {
        v89 = 0;
        v90 = v85;
        v91 = v79[v85++];
        do
        {
          if (v89 | v90)
          {
            v92 = 15;
          }

          else
          {
            v92 = 22;
          }

          if (v89)
          {
            v92 = 8;
          }

          v86[(v84 >> 1) + v89] = (v91 << v92) * v79[v89];
          ++v89;
        }

        while (v88 != v89);
        ++v88;
        v84 += v87;
        v87 += 2;
      }

      while (v85 != v80);
    }

    else
    {
      LODWORD(v83) = *(v16 + 4);
      v80 = v83 + 1;
    }

LABEL_92:
    v257 = (v77 & 0x3FFFFFFFFFFFLL) << 10;
    v260 = (v80 * (v83 + 2)) >> 1;
    if (v245 != 1)
    {
      v253 = v80;
      if (!v83)
      {
        goto LABEL_233;
      }

      v105 = 0;
      v106 = 0;
      v107 = 0;
      v256 = v267[0];
      v252 = v268[0];
      v258 = *(v16 + 27);
      v251 = v73 + v244;
      v255 = *(v16 + 24);
      v108 = v277;
      v109 = v275;
      v250 = v279[0];
      v110 = v273;
      v254 = v83;
      v111 = v277 + 1;
      v112 = 2;
      while (1)
      {
        v113 = (*(v256 + 4 * v107) * *(v256 + 4 * v107));
        v114 = (v257 + (v113 >> 1)) / v113;
        if (v258)
        {
          v115 = (v257 + (v113 >> 1)) / v113;
          if (v107 < *(v16 + 8))
          {
            v115 = (v257 * *(*(v16[5] + 8) + 8 * (v251 + *v16[5] * v107)) + 0.5);
          }
        }

        else
        {
          v115 = (v257 + (v113 >> 1)) / v113;
        }

        if (!v255)
        {
          goto LABEL_129;
        }

        v116 = v252[v107];
        v117 = v114 * v116;
        v118 = *(v262 + 26);
        if (*(v262 + 25) == 1)
        {
          if ((*(v262 + 26) & 1) == 0)
          {
            v119 = 0;
            v120 = *(v262[8] + 16 * v107);
            v121 = v262[10];
            v122 = 1;
            v123 = 15;
            v124 = 1;
            do
            {
              v125 = v122;
              *(v120 + 8 * v119) += ((v108[v119 * (v107 + 1)] << v123) * v117) >> 18;
              v126 = &v109[16 * ((v112 * v119) >> 1)];
              v127 = v105 + ((v119 + v119 * v119) >> 1);
              v128 = v124;
              do
              {
                v129 = *v126;
                v126 += 8;
                *(v121 + 8 * v127++) += (v129 * v114) >> 18;
                --v128;
              }

              while (v128);
              v122 = 0;
              ++v124;
              v123 = 8;
              v119 = 1;
            }

            while ((v125 & 1) != 0);
            goto LABEL_129;
          }
        }

        else if ((*(v262 + 26) & 1) == 0)
        {
          if (v258)
          {
            v130 = v107 < *(v262 + 8);
          }

          else
          {
            v130 = 1;
          }

          if (v253)
          {
            v131 = 0;
            v132 = 0;
            v133 = *(v262[8] + 16 * v107);
            v134 = 2;
            v135 = v275;
            v136 = 1;
            do
            {
              if (v132)
              {
                v137 = 8;
              }

              else
              {
                v137 = 15;
              }

              *(v133 + 8 * v132) += ((v108[v132] << v137) * v117) >> 18;
              if (v130)
              {
                v138 = v131 >> 1;
                v139 = v262[10];
                v140 = v136;
                v141 = v106 + (v131 >> 1);
                do
                {
                  *(v139 + 8 * v141++) += (v135[v138++] * v115) >> 18;
                  --v140;
                }

                while (v140);
              }

              ++v132;
              ++v136;
              v131 += v134;
              v134 += 2;
            }

            while (v132 != v253);
          }

          goto LABEL_129;
        }

        *(v262[13] + 8 * v107) += ((v77 << 25) * (*(v250 + v107) - v116)) >> 18;
LABEL_129:
        v16 = v262;
        if ((v261 & 1) != 0 || *(v262 + 23) == 1)
        {
          v142 = !v258 || v107 < *(v262 + 8);
          if (v253)
          {
            v143 = 0;
            v144 = 0;
            v145 = *(v262[16] + 16 * v107);
            v146 = 2;
            v147 = v271;
            v148 = 1;
            do
            {
              if (v144)
              {
                v149 = 8;
              }

              else
              {
                v149 = 15;
              }

              *(v145 + 8 * v144) += ((v111[v107] << v149) * v114 * v110[v144]) >> 18;
              if (v142)
              {
                v150 = v143 >> 1;
                v151 = v262[18];
                v152 = v148;
                do
                {
                  *(v151 + 8 * (v106 + v150)) += (v147[v150] * v115) >> 18;
                  ++v150;
                  --v152;
                }

                while (v152);
              }

              ++v144;
              ++v148;
              v143 += v146;
              v146 += 2;
            }

            while (v144 != v253);
          }
        }

        ++v107;
        v106 += v260;
        v112 += 2;
        v105 += 3;
        if (v107 == v254)
        {
          goto LABEL_233;
        }
      }
    }

    v93 = *(v16 + 20);
    if (v93)
    {
      if (v83)
      {
        v94 = 0;
        v95 = v266[0];
        v96 = v263[0];
        v97 = v264;
        do
        {
          v98 = 0.0;
          if (v58)
          {
            v99 = v58;
            v100 = v96;
            v101 = v95;
            do
            {
              v102 = *v101++;
              v103 = v102;
              v104 = *v100;
              v100 += 2;
              v76 = *(*(v104 + 16 * v94) + 4 * v94);
              v98 = v98 + v103 * v76;
              --v99;
            }

            while (v99);
          }

          *&v97[v94++] = v67 * v98;
        }

        while (v94 != v83);
        goto LABEL_153;
      }
    }

    else if (v83)
    {
      v153 = 0;
      v154 = v264;
      do
      {
        v155 = 0;
        v156 = v266[0];
        v157 = v263[0];
        do
        {
          v158 = 0.0;
          if (v58)
          {
            v159 = v58;
            v160 = v157;
            v161 = v156;
            do
            {
              v162 = *v161++;
              v163 = v162;
              v164 = *v160;
              v160 += 2;
              v76 = *(*(v164 + 16 * v153) + 4 * v155);
              v158 = v158 + v163 * v76;
              --v159;
            }

            while (v159);
          }

          *&v154[(v83 * v153 + v155++)] = v67 * v158;
        }

        while (v155 != v83);
        ++v153;
      }

      while (v153 != v83);
LABEL_153:
      v165 = v83 != 0;
      v259 = *(v16 + 24);
      if (v259 == 1 && v83 != 0)
      {
        v167 = 0;
        v168 = 0;
        v169 = v264;
        v170 = v268[0];
        v171 = *(v16 + 25) & v93;
        v172 = v277;
        do
        {
          if (v93)
          {
            LODWORD(v76) = v170[v168];
            v173 = *&v169[v168] * *&v76;
          }

          else
          {
            v173 = 0.0;
            v174 = v83;
            v175 = v170;
            v176 = v167;
            do
            {
              v177 = *v175++;
              v173 = v173 + *&v169[v176++] * v177;
              --v174;
            }

            while (v174);
          }

          if (v173 < 0.0)
          {
            v76 = -0.5;
          }

          else
          {
            v76 = 0.5;
          }

          v178 = (v76 + v173 * v257);
          if (v171)
          {
            v179 = 0;
            v180 = *(v16[8] + 16 * v168);
            v181 = 1;
            v182 = 15;
            do
            {
              v183 = v181;
              *(v180 + 8 * v179) += ((v178 << v182) * v172[v179 * (v168 + 1)]) >> 18;
              v182 = 8;
              v179 = 1;
              v181 = 0;
            }

            while ((v183 & 1) != 0);
          }

          else if (v80)
          {
            v184 = 0;
            v185 = *(v16[8] + 16 * v168);
            do
            {
              if (v184)
              {
                v186 = 8;
              }

              else
              {
                v186 = 15;
              }

              *(v185 + 8 * v184) += ((v178 << v186) * v172[v184]) >> 18;
              ++v184;
            }

            while (v80 != v184);
          }

          ++v168;
          v167 += v83;
        }

        while (v168 != v83);
      }

      if (v261)
      {
LABEL_182:
        v187 = 0;
        v188 = 0;
        v189 = v264;
        v190 = v273;
        if (v83 <= 1)
        {
          v191 = 1;
        }

        else
        {
          v191 = v83;
        }

        v192 = v277 + 1;
        do
        {
          if (v93)
          {
            LOBYTE(v76) = v192[v188];
            v193 = *&v189[v188] * *&v76;
          }

          else
          {
            v193 = 0.0;
            v194 = v192;
            v195 = v191;
            v196 = v187;
            do
            {
              v197 = *v194++;
              v193 = v193 + *&v189[v196++] * v197;
              --v195;
            }

            while (v195);
          }

          if (v193 < 0.0)
          {
            v76 = -0.5;
          }

          else
          {
            v76 = 0.5;
          }

          if (v80)
          {
            v198 = 0;
            v199 = v76 + v193 * v257;
            v200 = *(v16[16] + 16 * v188);
            do
            {
              if (v198)
              {
                v201 = 8;
              }

              else
              {
                v201 = 15;
              }

              *(v200 + 8 * v198) += ((v199 << v201) * v190[v198]) >> 18;
              ++v198;
            }

            while (v80 != v198);
          }

          ++v188;
          v187 += v83;
        }

        while (v188 != v191);
        goto LABEL_200;
      }

      goto LABEL_180;
    }

    LOBYTE(v259) = *(v16 + 24);
    if (v261)
    {
      goto LABEL_200;
    }

    v165 = 0;
LABEL_180:
    if (*(v16 + 23) == 1 && v165)
    {
      goto LABEL_182;
    }

LABEL_200:
    v202 = *(v16 + 24);
    if (v202)
    {
      v203 = v80;
      v204 = 0;
      v205 = 0;
      v206 = 0;
      v207 = 0;
      v208 = 0;
      v209 = v264;
      v210 = v275;
      v211 = v271;
      if (v80 <= 1)
      {
        v212 = 1;
      }

      else
      {
        v212 = v80;
      }

      v213 = 1;
      do
      {
        if (v93)
        {
          v214 = v206;
        }

        else
        {
          v214 = v207 + v208 * v83;
          if (v207 + 1 <= v208)
          {
            ++v207;
          }

          else
          {
            ++v208;
            v207 = 0;
          }
        }

        v215 = *&v209[v214];
        v216 = v213 & 0x7FFFFFFF;
        if (v215 < 0.0)
        {
          v217 = -0.5;
        }

        else
        {
          v217 = 0.5;
        }

        v218 = (v217 + v215 * v257);
        if (v259)
        {
          if (*(v262 + 25) & v93)
          {
            v219 = 0;
            v220 = v262[10];
            v221 = 1;
            v222 = 1;
            do
            {
              v223 = v221;
              v224 = (v210 + 16 * v216 * v219);
              v225 = v204 + ((v219 + v219 * v219) >> 1);
              v226 = v222;
              do
              {
                v227 = *v224++;
                *(v220 + 8 * v225++) += (v227 * v218) >> 18;
                --v226;
              }

              while (v226);
              v221 = 0;
              ++v222;
              v219 = 1;
            }

            while ((v223 & 1) != 0);
          }

          else if (v203)
          {
            v228 = 0;
            v229 = 0;
            v230 = v262[10];
            v231 = 2;
            v232 = 1;
            do
            {
              v233 = v228 >> 1;
              ++v229;
              v234 = v232;
              v235 = v205 + (v228 >> 1);
              do
              {
                *(v230 + 8 * v235++) += (v210[v233++] * v218) >> 18;
                --v234;
              }

              while (v234);
              ++v232;
              v228 += v231;
              v231 += 2;
            }

            while (v229 != v203);
          }
        }

        if (((v261 & 1) != 0 || *(v262 + 23) == 1) && v203)
        {
          v236 = 0;
          v237 = 0;
          v238 = v262[18];
          v239 = 2;
          v240 = 1;
          do
          {
            v241 = v236 >> 1;
            ++v237;
            v242 = v240;
            do
            {
              *(v238 + 8 * (v205 + v241)) += (v211[v241] * v218) >> 18;
              ++v241;
              --v242;
            }

            while (v242);
            ++v240;
            v236 += v239;
            v239 += 2;
          }

          while (v237 != v212);
        }

        ++v206;
        v205 += v260;
        v213 = v216 + 1;
        v204 += 3;
        v16 = v262;
      }

      while (v206 != v202);
    }

LABEL_233:
    v68 = v68 + v70;
    v65 = v247;
    v66 = v249;
    if (v68 > v74)
    {
      break;
    }

LABEL_234:
    ++v66;
  }

  while (v66 != v65);
  v8 = v68 > 0.0;
LABEL_236:
  DgnArray<DgnArray<DgnPrimArray<unsigned int>>>::releaseAll(v263);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v264);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v266);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v267);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v268);
  DgnIArray<Utterance *>::~DgnIArray(&v269);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v271);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v273);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v275);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v277);
LABEL_237:
  DgnPrimArray<unsigned int>::~DgnPrimArray(v279);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v289);
  return v8;
}

void sub_26260EE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, char a48, uint64_t a49, char a50)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a46);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a50);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v50 - 168);
  _Unwind_Resume(a1);
}

unint64_t mrec_qsort_r<CompAndProb>(unint64_t result, unint64_t a2, int64_t a3, __n128 a4)
{
  v5 = -a3;
  v6 = a3 != 8;
  v7 = ((result | a3) & 7) == 0;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  if (a2 < 7)
  {
LABEL_5:
    if ((a2 * a3) > a3)
    {
      v9 = result + a2 * a3;
      v10 = result + a3;
      v11 = result;
      do
      {
        if (v10 > result)
        {
          v12 = v11;
          v13 = v10;
          do
          {
            v14 = v13;
            v13 += v5;
            v15 = *v14;
            if (*v13 == *v14)
            {
              if (*(v13 + 8) <= *(v14 + 8))
              {
                break;
              }
            }

            else if (*v13 > *v14)
            {
              break;
            }

            if (v8)
            {
              v16 = 0;
              if (v7)
              {
                v17 = v13;
                do
                {
                  v18 = *(v14 + 8 * v16);
                  *(v14 + 8 * v16) = *v17;
                  *v17++ = v18;
                  ++v16;
                }

                while (a3 >> 3 != v16);
              }

              else
              {
                v19 = a3;
                do
                {
                  v20 = *(v14 + v16);
                  *(v14 + v16) = *(v12 + v16);
                  *(v12 + v16++) = v20;
                  --v19;
                }

                while (v19);
              }
            }

            else
            {
              *v14 = *v13;
              *v13 = v15;
            }

            v12 += v5;
          }

          while (v13 > result);
        }

        v10 += a3;
        v11 += a3;
      }

      while (v10 < v9);
    }

    return result;
  }

  v21 = a3 >> 3;
  while (2)
  {
    v22 = (result + (a2 >> 1) * a3);
    if (a2 == 7)
    {
      goto LABEL_26;
    }

    v26 = result + (a2 - 1) * a3;
    if (a2 < 0x29)
    {
      v28 = result;
      goto LABEL_111;
    }

    v27 = (a2 >> 3) * a3;
    v28 = result + v27;
    v29 = result + 2 * v27;
    v30 = *result;
    v31 = *(result + v27);
    if (*result == v31)
    {
      if (*(result + 8) < *(v28 + 8))
      {
        goto LABEL_34;
      }
    }

    else if (*result > v31)
    {
LABEL_34:
      v32 = *v29;
      if (v31 == *v29)
      {
        if (*(v28 + 8) < *(v29 + 8))
        {
          goto LABEL_128;
        }
      }

      else if (v31 > *v29)
      {
        goto LABEL_128;
      }

      if (v30 == v32)
      {
        v28 = result + 2 * v27;
        if (*(result + 8) < *(v29 + 8))
        {
          goto LABEL_128;
        }
      }

      else
      {
        v28 = result + 2 * v27;
        if (v30 > v32)
        {
          goto LABEL_128;
        }
      }

      v28 = result;
      goto LABEL_128;
    }

    v77 = *v29;
    if (v31 == *v29)
    {
      if (*(v28 + 8) > *(v29 + 8))
      {
        goto LABEL_128;
      }
    }

    else if (v31 <= *v29)
    {
      goto LABEL_128;
    }

    if (v30 != v77)
    {
      v28 = result;
      if (v30 > v77)
      {
        goto LABEL_128;
      }

      goto LABEL_127;
    }

    v28 = result;
    if (*(result + 8) >= *(v29 + 8))
    {
LABEL_127:
      v28 = result + 2 * v27;
    }

LABEL_128:
    v78 = &v22[-v27];
    v79 = &v22[v27];
    v80 = *&v22[-v27];
    v81 = *v22;
    if (v80 == *v22)
    {
      if (*(v78 + 2) < *(v22 + 2))
      {
        goto LABEL_130;
      }
    }

    else if (v80 > *v22)
    {
LABEL_130:
      v82 = *v79;
      if (v81 == *v79)
      {
        if (*(v22 + 2) < *(v79 + 2))
        {
          goto LABEL_149;
        }
      }

      else if (v81 > *v79)
      {
        goto LABEL_149;
      }

      if (v80 == v82)
      {
        v22 += v27;
        if (*(v78 + 2) < *(v79 + 2))
        {
          goto LABEL_149;
        }
      }

      else
      {
        v22 += v27;
        if (v80 > v82)
        {
          goto LABEL_149;
        }
      }

      v22 = v78;
      goto LABEL_149;
    }

    v83 = *v79;
    if (v81 == *v79)
    {
      if (*(v22 + 2) > *(v79 + 2))
      {
        goto LABEL_149;
      }
    }

    else if (v81 <= *v79)
    {
      goto LABEL_149;
    }

    if (v80 != v83)
    {
      v22 -= v27;
      if (v80 > v83)
      {
        goto LABEL_149;
      }

      goto LABEL_148;
    }

    v22 -= v27;
    if (*(v78 + 2) >= *(v79 + 2))
    {
LABEL_148:
      v22 = v79;
    }

LABEL_149:
    v84 = -v27;
    v76 = v26 - 2 * v27;
    v85 = v26 + v84;
    v86 = *v76;
    v87 = *(v26 + v84);
    if (*v76 == v87)
    {
      if (*(v76 + 8) < *(v85 + 8))
      {
        goto LABEL_151;
      }

LABEL_155:
      v89 = *v26;
      if (v87 == *v26)
      {
        if (*(v85 + 8) > *(v26 + 8))
        {
          goto LABEL_166;
        }
      }

      else if (v87 <= *v26)
      {
        goto LABEL_166;
      }

      if (v86 == v89)
      {
        if (*(v76 + 8) >= *(v26 + 8))
        {
          goto LABEL_111;
        }
      }

      else if (v86 <= v89)
      {
        goto LABEL_111;
      }

      goto LABEL_167;
    }

    if (*v76 <= v87)
    {
      goto LABEL_155;
    }

LABEL_151:
    v88 = *v26;
    if (v87 == *v26)
    {
      if (*(v85 + 8) < *(v26 + 8))
      {
        goto LABEL_166;
      }

      goto LABEL_159;
    }

    if (v87 > *v26)
    {
LABEL_166:
      v76 = v26 + v84;
      goto LABEL_167;
    }

LABEL_159:
    if (v86 == v88)
    {
      if (*(v76 + 8) >= *(v26 + 8))
      {
        goto LABEL_167;
      }

LABEL_111:
      v76 = result + (a2 - 1) * a3;
      goto LABEL_167;
    }

    if (v86 > v88)
    {
      goto LABEL_111;
    }

LABEL_167:
    a4.n128_u64[0] = *v28;
    v90 = *v22;
    if (*v28 == *v22)
    {
      if (*(v28 + 8) < *(v22 + 2))
      {
        goto LABEL_169;
      }

LABEL_173:
      v92 = *v76;
      if (v90 == *v76)
      {
        if (*(v22 + 2) > *(v76 + 8))
        {
          goto LABEL_26;
        }
      }

      else if (v90 <= *v76)
      {
        goto LABEL_26;
      }

      if (a4.n128_f64[0] == v92)
      {
        v22 = v28;
        if (*(v28 + 8) < *(v76 + 8))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v22 = v28;
        if (a4.n128_f64[0] > v92)
        {
          goto LABEL_26;
        }
      }

      v22 = v76;
      goto LABEL_26;
    }

    if (*v28 <= *v22)
    {
      goto LABEL_173;
    }

LABEL_169:
    v91 = *v76;
    if (v90 == *v76)
    {
      if (*(v22 + 2) < *(v76 + 8))
      {
        goto LABEL_26;
      }
    }

    else if (v90 > *v76)
    {
      goto LABEL_26;
    }

    if (a4.n128_f64[0] == v91)
    {
      v22 = v76;
      if (*(v28 + 8) >= *(v76 + 8))
      {
        goto LABEL_185;
      }
    }

    else
    {
      v22 = v76;
      if (a4.n128_f64[0] <= v91)
      {
LABEL_185:
        v22 = v28;
      }
    }

LABEL_26:
    if (v8)
    {
      if (v7)
      {
        v23 = result;
        v24 = a3 >> 3;
        do
        {
          v25 = *v23;
          *v23++ = *v22;
          *v22 = v25;
          v22 += 8;
          --v24;
        }

        while (v24);
      }

      else
      {
        v34 = a3;
        v35 = result;
        do
        {
          v36 = *v35;
          *v35++ = *v22;
          *v22++ = v36;
          --v34;
        }

        while (v34);
      }
    }

    else
    {
      v33 = *result;
      *result = *v22;
      *v22 = v33;
    }

    v37 = 0;
    v38 = result + a3;
    v39 = (result + (a2 - 1) * a3);
    v40 = v39;
    v41 = (result + a3);
    v42 = (result + a3);
    while (1)
    {
LABEL_41:
      if (v41 > v40)
      {
        goto LABEL_57;
      }

      a4.n128_u64[0] = *v41;
      if (*v41 == *result)
      {
        break;
      }

      if (*v41 <= *result)
      {
        goto LABEL_57;
      }

LABEL_77:
      v41 = (v41 + a3);
    }

    v43 = *(v41 + 2);
    v44 = *(result + 8);
    if (v43 == v44)
    {
      if (v8)
      {
        v45 = 0;
        if (v7)
        {
          do
          {
            v46 = v42[v45];
            v42[v45] = v41[v45];
            v41[v45++] = v46;
          }

          while (v21 != v45);
        }

        else
        {
          do
          {
            v47 = *(v42 + v45);
            *(v42 + v45) = *(v41 + v45);
            *(v41 + v45++) = v47;
          }

          while (a3 != v45);
        }
      }

      else
      {
        v56 = *v42;
        *v42 = a4.n128_u64[0];
        *v41 = v56;
      }

      v42 = (v42 + a3);
      v37 = 1;
      goto LABEL_77;
    }

    if (v43 < v44)
    {
      goto LABEL_77;
    }

LABEL_57:
    while (v41 <= v40)
    {
      a4.n128_u64[0] = *v40;
      if (*v40 == *result)
      {
        v48 = *(v40 + 2);
        v49 = *(result + 8);
        if (v48 == v49)
        {
          if (v8)
          {
            v50 = 0;
            if (v7)
            {
              do
              {
                v51 = v40[v50];
                v40[v50] = v39[v50];
                v39[v50++] = v51;
              }

              while (v21 != v50);
            }

            else
            {
              do
              {
                v52 = *(v40 + v50);
                *(v40 + v50) = *(v39 + v50);
                *(v39 + v50++) = v52;
              }

              while (a3 != v50);
            }
          }

          else
          {
            *v40 = *v39;
            *v39 = a4.n128_u64[0];
          }

          v39 = (v39 + v5);
          v37 = 1;
        }

        else if (v48 < v49)
        {
LABEL_69:
          if (v8)
          {
            v53 = 0;
            if (v7)
            {
              do
              {
                v54 = v41[v53];
                v41[v53] = v40[v53];
                v40[v53++] = v54;
              }

              while (v21 != v53);
            }

            else
            {
              do
              {
                v55 = *(v41 + v53);
                *(v41 + v53) = *(v40 + v53);
                *(v40 + v53++) = v55;
              }

              while (a3 != v53);
            }
          }

          else
          {
            v57 = *v41;
            *v41 = a4.n128_u64[0];
            *v40 = v57;
          }

          v41 = (v41 + a3);
          v40 = (v40 + v5);
          v37 = 1;
          goto LABEL_41;
        }
      }

      else if (*v40 > *result)
      {
        goto LABEL_69;
      }

      v40 = (v40 + v5);
    }

    v58 = result + a2 * a3;
    if (v37)
    {
      v59 = v41 - v42;
      if ((v42 - result) >= v41 - v42)
      {
        v60 = v41 - v42;
      }

      else
      {
        v60 = v42 - result;
      }

      if (v60)
      {
        if (v7)
        {
          v61 = (v41 - v60);
          v62 = v60 >> 3;
          v63 = result;
          do
          {
            v64 = *v63;
            *v63++ = *v61;
            *v61++ = v64;
            --v62;
          }

          while (v62);
        }

        else
        {
          v65 = -v60;
          v66 = result;
          do
          {
            v67 = *v66;
            *v66++ = *(v41 + v65);
            *(v41 + v65) = v67;
            v68 = __CFADD__(v65++, 1);
          }

          while (!v68);
        }
      }

      v69 = v39 - v40;
      v70 = v58 - (v39 + a3);
      if (v39 - v40 < v70)
      {
        v70 = v39 - v40;
      }

      if (v70)
      {
        if (v7)
        {
          v71 = (v58 - v70);
          v72 = v70 >> 3;
          do
          {
            v73 = *v41;
            *v41++ = *v71;
            *v71++ = v73;
            --v72;
          }

          while (v72);
        }

        else
        {
          v74 = -v70;
          do
          {
            v75 = *v41;
            *v41 = *(v58 + v74);
            v41 = (v41 + 1);
            *(v58 + v74) = v75;
            v68 = __CFADD__(v74++, 1);
          }

          while (!v68);
        }
      }

      if (v59 > a3)
      {
        result = mrec_qsort_r<CompAndProb>(a4);
      }

      if (v69 > a3)
      {
        result = v58 - v69;
        a2 = v69 / a3;
        v7 = (((v58 - v69) | a3) & 7) == 0;
        if ((((v58 - v69) | a3) & 7) != 0)
        {
          v8 = 2;
        }

        else
        {
          v8 = v6;
        }

        if (a2 < 7)
        {
          goto LABEL_5;
        }

        continue;
      }
    }

    else if ((a2 * a3) > a3)
    {
      v93 = result;
      do
      {
        if (v38 > result)
        {
          v94 = v93;
          v95 = v38;
          do
          {
            v96 = v95;
            v95 += v5;
            v97 = *v96;
            if (*v95 == *v96)
            {
              if (*(v95 + 8) <= *(v96 + 8))
              {
                break;
              }
            }

            else if (*v95 > *v96)
            {
              break;
            }

            if (v8)
            {
              v98 = 0;
              if (v7)
              {
                v99 = v95;
                do
                {
                  v100 = *(v96 + 8 * v98);
                  *(v96 + 8 * v98) = *v99;
                  *v99++ = v100;
                  ++v98;
                }

                while (v21 != v98);
              }

              else
              {
                v101 = a3;
                do
                {
                  v102 = *(v96 + v98);
                  *(v96 + v98) = *(v94 + v98);
                  *(v94 + v98++) = v102;
                  --v101;
                }

                while (v101);
              }
            }

            else
            {
              *v96 = *v95;
              *v95 = v97;
            }

            v94 += v5;
          }

          while (v95 > result);
        }

        v38 += a3;
        v93 += a3;
      }

      while (v38 < v58);
    }

    return result;
  }
}

uint64_t CTPelAccum::addModelRelevance(uint64_t result, void *a2, unsigned int a3)
{
  v3 = *(*result + 16);
  if (v3 == 1)
  {
    v4 = *(result + 20);
  }

  else
  {
    v4 = 1;
  }

  v5 = *(result + 56);
  if ((vcvtd_n_f64_s64(v5, 8uLL) + 0.5) < a3)
  {
    *(result + 56) = *a2 + v5;
    v6 = *(result + 25);
    v7 = (v6 & v4) == 1 ? *(result + 21) ^ 1 : 0;
    if (*(result + 24) == 1)
    {
      if ((*(result + 26) & 1) == 0)
      {
        if (v3 == 1)
        {
          v8 = *(result + 20);
        }

        else
        {
          v8 = 1;
        }

        v9 = *(result + 16);
        if ((v6 & v8) != 0)
        {
          v10 = 2;
        }

        else
        {
          v10 = (v9 + 1);
        }

        if (v9)
        {
          v11 = 0;
          do
          {
            if (v10)
            {
              v12 = 0;
              v13 = 16 * v11;
              v14 = v11 + 1;
              if (v7)
              {
                v15 = v11 + 1;
              }

              else
              {
                v15 = 1;
              }

              v16 = *(a2[1] + v13);
              v17 = *(*(result + 64) + v13);
              v18 = v10;
              do
              {
                *v17++ += *(v16 + 8 * v12);
                v12 += v15;
                --v18;
              }

              while (v18);
            }

            else
            {
              v14 = v11 + 1;
            }

            v11 = v14;
          }

          while (v14 != v9);
        }

        v19 = *(result + 96);
        if (v19)
        {
          v20 = 0;
          v21 = 0;
          do
          {
            v22 = v21 + 1;
            if (v10)
            {
              v23 = 0;
              v24 = 0;
              if (v7)
              {
                v25 = v21 + 1;
              }

              else
              {
                v25 = 1;
              }

              v26 = *(a2[3] + 16 * v21);
              v27 = *(result + 80);
              v28 = 2;
              v29 = 1;
              do
              {
                v30 = 0;
                v31 = v20 + (v23 >> 1);
                v32 = *(v26 + 16 * (v25 * v24++));
                v33 = v29;
                do
                {
                  *(v27 + 8 * v31++) += *(v32 + 8 * v30);
                  v30 += v25;
                  --v33;
                }

                while (v33);
                ++v29;
                v23 += v28;
                v28 += 2;
              }

              while (v24 != v10);
            }

            v20 += (v10 + v10 * v10) >> 1;
            v21 = v22;
          }

          while (v22 != v19);
        }
      }

      if (*(result + 21) != 1)
      {
        goto LABEL_40;
      }
    }

    if (*(result + 23) == 1)
    {
LABEL_40:
      v34 = *(result + 16);
      if (v34)
      {
        v35 = 0;
        v36 = v34 + 1;
        do
        {
          if (v34 != -1)
          {
            v37 = *(a2[1] + 16 * v35);
            v38 = *(*(result + 128) + 16 * v35);
            v39 = (v34 + 1);
            do
            {
              v40 = *v37++;
              *v38++ += v40;
              --v39;
            }

            while (v39);
          }

          ++v35;
        }

        while (v35 != v34);
      }

      else
      {
        v36 = 1;
      }

      v41 = *(result + 160);
      if (v41)
      {
        v42 = 0;
        v43 = 0;
        v44 = (v36 * (v34 + 2)) >> 1;
        do
        {
          if (v36)
          {
            v45 = 0;
            v46 = 0;
            v47 = *(a2[3] + 16 * v43);
            v48 = *(result + 144);
            v49 = 2;
            v50 = 1;
            do
            {
              v51 = 0;
              v52 = v42 + (v45 >> 1);
              v53 = *(v47 + 16 * v46++);
              do
              {
                *(v48 + 8 * v52++) += *(v53 + 8 * v51++);
              }

              while (v50 != v51);
              ++v50;
              v45 += v49;
              v49 += 2;
            }

            while (v46 != v36);
          }

          ++v43;
          v42 += v44;
        }

        while (v43 != v41);
      }
    }
  }

  return result;
}

double ConstrainedTransAccMgr::ConstrainedTransAccMgr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a3;
  *(a1 + 32) = 0;
  return result;
}

void ConstrainedTransAccMgr::~ConstrainedTransAccMgr(CTModelRelevance **this)
{
  ConstrainedTransAccMgr::releaseAccum(this);
  v2 = this[7];
  if (v2)
  {
    MemChunkFree(v2, 0);
    this[7] = 0;
  }

  this[8] = 0;
  this[1] = 0;
  this[2] = 0;
  *this = 0;
  v3 = this[3];
  if (v3)
  {
    CTFTMgr::resetOnlineCTList(v3);
  }

  this[3] = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 7));
  DgnIOwnArray<CTPelAccum *>::releaseAll((this + 5));
}

GenoneClassTree *ConstrainedTransAccMgr::releaseAccum(CTModelRelevance **this)
{
  DgnDelete<CTModelRelevance>(this[4]);
  this[4] = 0;
  DgnIOwnArray<CTPelAccum *>::releaseAll((this + 5));
  result = this[2];
  if (result)
  {

    return GenoneClassTree::release(result);
  }

  return result;
}

void *CTFTMgr::resetOnlineCTList(CTFTMgr *this)
{
  DgnArray<LinearTransform>::releaseAll(this + 224);
  result = *(this + 30);
  if (result)
  {
    result = MemChunkFree(result, 0);
    *(this + 30) = 0;
  }

  *(this + 31) = 0;
  *(this + 54) = 0;
  *(this + 4) = 0;
  return result;
}

uint64_t ConstrainedTransAccMgr::initAccum(ConstrainedTransAccMgr *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = a2;
  if (a2)
  {
    v49 = *((*(**(this + 1) + 200))(*(this + 1)) + 56);
    result = (*(**(this + 1) + 208))(*(this + 1));
    v10 = result;
    v11 = 0;
    v12 = 0;
    LOBYTE(v13) = 0;
    LOBYTE(v14) = 1;
    v48 = 1;
    v15 = 1;
    v16 = 1;
    v17 = 1;
  }

  else
  {
    PelMgr = AdaptController::getPelMgr(*this, a2, a3, a4, a5, a6, a7, a8);
    v21 = *this;
    v10 = *(*this + 32);
    v49 = PelMgr;
    v46 = *(PelMgr + 16);
    v22 = *(*this + 8);
    v48 = v22[332];
    v15 = v22[96];
    v23 = v22[81];
    v24 = v22[82];
    if ((v23 & 1) == 0 && (v24 & 1) == 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/contrnac.cpp", 2383, "recogctl/contrnac", 2, "%s", v19, v20, &errStr_recogctl_contrnac_E_IDENTITY_TRANSFORM);
      v22 = *(*this + 8);
    }

    v25 = v23 ^ 1;
    v13 = v25 & v24;
    v14 = v22[83];
    v26 = v21[52];
    v27 = v21[53];
    v12 = v21[48];
    v16 = v26 | v27;
    if (v27)
    {
      v28 = 2;
    }

    else
    {
      v28 = v26;
    }

    result = GenoneClassTree::initForType(*(this + 2), v28, this + 56);
    v29 = result;
    if (result == 1)
    {
      result = *(this + 7);
      if (result)
      {
        result = MemChunkFree(result, 0);
        *(this + 7) = 0;
      }

      *(this + 8) = 0;
    }

    v11 = 0;
    if ((v25 | v14 | v13))
    {
      v17 = v29;
    }

    else
    {
      v17 = v29;
      if (v46 != 1)
      {
        if (*this)
        {
          v11 = *(*(*this + 8) + 160);
          if (v11)
          {
            result = GenoneClassTree::decomposeInverseVariancesForTransformationMatrixAdaptation(*(this + 2));
          }
        }

        else
        {
          v11 = 0;
        }

        LOBYTE(v14) = 0;
        LOBYTE(v13) = 0;
      }
    }
  }

  v30 = *(this + 13);
  if (v17 > v30)
  {
    result = DgnPrimArray<unsigned long long>::reallocElts(this + 40, v17 - v30, 0);
  }

  v31 = *(this + 12);
  if (v31 <= v17)
  {
    if (v31 < v17)
    {
      do
      {
        *(*(this + 5) + 8 * v31++) = 0;
      }

      while (v17 != v31);
    }
  }

  else
  {
    result = DgnIOwnArray<CTPelAccum *>::destructAt((this + 40), v17, v31 - v17);
  }

  *(this + 12) = v17;
  if (v17)
  {
    for (i = 0; i != v17; *(*(this + 5) + 8 * i++) = result)
    {
      v33 = MemChunkAlloc(0xA8uLL, 0);
      v34 = *(this + 2);
      if (v34)
      {
        if (i >= *(v34 + 272))
        {
          v35 = 0;
        }

        else
        {
          v35 = (*(v34 + 264) + 16 * i);
        }

        v36 = v34 + 240;
        if (i >= *(v34 + 288))
        {
          v34 = 0;
        }

        else
        {
          v34 = *(v34 + 280) + 24 * i;
        }
      }

      else
      {
        v35 = 0;
        v36 = 0;
      }

      result = CTPelAccum::CTPelAccum(v33, v49, v10, v48, v15, v12, v16 & 1, v14 & 1, v13, v11, v36, v35, v34);
    }
  }

  if ((v47 & 1) == 0)
  {
    v37 = *(*this + 8);
    if (v16)
    {
      v38 = 152;
    }

    else
    {
      v38 = 392;
    }

    v39 = 352;
    if (v16)
    {
      v39 = 72;
    }

    v40 = 384;
    if (v16)
    {
      v40 = 112;
    }

    v41 = *(v37 + v38);
    if (v41)
    {
      v42 = *(v37 + v40);
      v43 = *(v37 + v39);
      if (v43 != 0.0 && v42 != 0)
      {
        v45 = MemChunkAlloc(0x30uLL, 0);
        *(v45 + 1) = 0u;
        *(v45 + 3) = 0u;
        *(this + 4) = v45;

        return CTModelRelevance::computeModelRelevance(v45, v49, v41, v43, v12, v16 & 1, v15, v48, v14 & 1);
      }
    }
  }

  return result;
}

CTModelRelevance *DgnDelete<CTModelRelevance>(CTModelRelevance *result)
{
  if (result)
  {
    CTModelRelevance::~CTModelRelevance(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void *DgnIOwnArray<CTPelAccum *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<CTPelAccum>(*(*a1 + v3));
      *(*a1 + v3) = 0;
      v3 -= 8;
    }

    while (v3 != -8);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

BOOL ConstrainedTransAccMgr::adaptPel(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v10 = a3;
  v12 = a2;
  v14 = *(a4 + 8);
  if (v14)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = *(a1 + 12);
    v19 = 104;
  }

  else
  {
    v20 = *a1;
    v15 = *a1 + 40;
    v16 = *(*a1 + 152);
    if (*(*a1 + 52))
    {
      v19 = 104;
    }

    else if (*(v20 + 53))
    {
      v19 = 104;
    }

    else
    {
      v19 = 376;
    }

    v18 = *(a1 + 12);
    v17 = *(*(AdaptController::getPelMgr(v20, a2, a3, a4, a5, a6, a7, a8) + 288) + 2 * a2);
  }

  if (v18 != 1)
  {
    v21 = *(a1[7] + 4 * v17);
    if (v14)
    {
      goto LABEL_11;
    }

LABEL_13:
    v24 = *(*a1 + 8);
    v23 = *(v24 + v19);
    v22 = *(v24 + 140) == 1 && *(v15 + 13) == 1 && *(a1[3] + 12) == *a1[3];
    goto LABEL_17;
  }

  v21 = 0;
  if (!v14)
  {
    goto LABEL_13;
  }

LABEL_11:
  v22 = 0;
  v23 = 1.0;
LABEL_17:
  v25 = *(a1[5] + 8 * v21);

  return CTPelAccum::adaptOneFrame(v25, v12, v22, v16, v10, a4, a9, v23);
}

uint64_t ConstrainedTransAccMgr::downScaleAccum(uint64_t this, unsigned int a2, unsigned int a3, double a4)
{
  if (a2)
  {
    if (a3)
    {
      if (!(a2 % a3))
      {
        v4 = this;
        v5 = *(this + 48);
        if (v5)
        {
          v7 = 0;
          v8 = 8 * v5;
          do
          {
            this = CTPelAccum::scaleAccum(*(*(v4 + 40) + v7), a4);
            v7 += 8;
          }

          while (v8 != v7);
        }
      }
    }
  }

  return this;
}

unint64_t ConstrainedTransAccMgr::getFrameCountsByTNode(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(*(result + 16) + 200);
  v5 = *(a2 + 12);
  if (v4 > v5)
  {
    result = DgnPrimArray<unsigned int>::reallocElts(a2, v4 - v5, 0);
  }

  *(a2 + 8) = v4;
  if (*(v3 + 48))
  {
    v6 = 0;
    v7 = *(v3 + 40);
    v8 = *a2;
    do
    {
      *(v8 + 4 * v6) = (*(*(v7 + 8 * v6) + 56) * 0.00390625 + 0.5);
      ++v6;
    }

    while (v6 < *(v3 + 48));
  }

  return result;
}

uint64_t *ConstrainedTransAccMgr::computeGlobalSmoothing(AdaptController **this, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(this + 12);
  PelMgr = AdaptController::getPelMgr(*this, a3, a4, a5, a6, a7, a8, a9);
  v15 = *this;
  v16 = *(*this + 4);
  v17 = *(*this + 1);
  v18 = v17[332];
  v19 = v17[83];
  v20 = v17[81];
  v21 = v17[82];
  if ((v20 & 1) == 0 && (v17[82] & 1) == 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/contrnac.cpp", 2719, "recogctl/contrnac", 2, "%s", v12, v13, &errStr_recogctl_contrnac_E_IDENTITY_TRANSFORM);
  }

  v22 = (v20 ^ 1) & v21;
  v23 = MemChunkAlloc(0xA8uLL, 0);
  v24 = v23;
  if (v15[52])
  {
    v25 = 1;
  }

  else
  {
    v25 = v15[53];
  }

  CTPelAccum::CTPelAccum(v23, PelMgr, v16, v18, *(*(*this + 1) + 96), v15[48], v25 & 1, v19, v22, 0, 0, 0, 0);
  if (v11)
  {
    v26 = 0;
    do
    {
      CTPelAccum::addAccum(v24, *(this[5] + v26), 0);
      v26 += 8;
    }

    while (8 * v11 != v26);
  }

  v27 = v24[7] * 0.00390625;
  if (v27 <= 0.0)
  {
    DgnDelete<CTPelAccum>(v24);
    return 0;
  }

  else
  {
    CTPelAccum::scaleAccum(v24, a2 / v27);
  }

  return v24;
}

CTPelAccum *DgnDelete<CTPelAccum>(CTPelAccum *result)
{
  if (result)
  {
    CTPelAccum::~CTPelAccum(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void ConstrainedTransAccMgr::printSize(ConstrainedTransAccMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/contrnac.cpp", 2766, &v79);
  if (v80)
  {
    v15 = v79;
  }

  else
  {
    v15 = &unk_26287F771;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, v12, v13, v14, a3, &unk_26287F771, a3, &unk_26287F771, v15);
  DgnString::~DgnString(&v79);
  if (a2 != -1)
  {
    xlprintf("%d ", v16, v17, v18, v19, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v16, v17, v18, v19, a3, &unk_26287F771);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v20 = 4;
  }

  else
  {
    v20 = 8;
  }

  v21 = (a3 + 1);
  v22 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/contrnac.cpp", 2767, &v79);
  if (v80)
  {
    v27 = v79;
  }

  else
  {
    v27 = &unk_26287F771;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v24, v25, v26, (a3 + 1), &unk_26287F771, (34 - a3), (34 - a3), v27, v20, v20, 0);
  DgnString::~DgnString(&v79);
  *a4 += v20;
  *a5 += v20;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v28 = 4;
  }

  else
  {
    v28 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/contrnac.cpp", 2768, &v79);
  if (v80)
  {
    v33 = v79;
  }

  else
  {
    v33 = &unk_26287F771;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v29, v30, v31, v32, (a3 + 1), &unk_26287F771, (34 - a3), (34 - a3), v33, v28, v28, 0);
  DgnString::~DgnString(&v79);
  *a4 += v28;
  *a5 += v28;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v34 = 4;
  }

  else
  {
    v34 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/contrnac.cpp", 2769, &v79);
  if (v80)
  {
    v39 = v79;
  }

  else
  {
    v39 = &unk_26287F771;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, v36, v37, v38, (a3 + 1), &unk_26287F771, (34 - a3), (34 - a3), v39, v34, v34, 0);
  DgnString::~DgnString(&v79);
  *a4 += v34;
  *a5 += v34;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v40 = 12;
  }

  else
  {
    v40 = 16;
  }

  v41 = *(this + 16);
  v42 = *(this + 17);
  if (v42 >= v41)
  {
    v43 = 0;
    if (v41 > 0)
    {
      v40 += 4 * (v41 - 1) + 4;
    }

    v44 = v40 + 4 * (v42 - v41);
  }

  else
  {
    v43 = 4 * v41;
    v44 = v40;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/contrnac.cpp", 2771, &v79);
  if (v80)
  {
    v49 = v79;
  }

  else
  {
    v49 = &unk_26287F771;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v45, v46, v47, v48, (a3 + 1), &unk_26287F771, (34 - a3), (34 - a3), v49, v44, v40, v43);
  DgnString::~DgnString(&v79);
  *a4 += v44;
  *a5 += v40;
  *a6 += v43;
  v50 = sizeObject<CTPelAccum *>(this + 40, 0);
  v51 = sizeObject<CTPelAccum *>(this + 40, 1);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/contrnac.cpp", 2772, &v79);
  if (v80)
  {
    v56 = v79;
  }

  else
  {
    v56 = &unk_26287F771;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v52, v53, v54, v55, (a3 + 1), &unk_26287F771, (34 - a3), (34 - a3), v56, v50, v51, 0);
  DgnString::~DgnString(&v79);
  *a4 += v50;
  *a5 += v51;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v57 = 4;
  }

  else
  {
    v57 = 8;
  }

  v58 = *(this + 4);
  if (v58)
  {
    v76 = (a3 + 1);
    v77 = a3;
    v59 = sizeObject<DgnPrimArray<double>>(v58 + 8, 0);
    v60 = v57 + v59 + sizeObject<DgnArray<DgnPrimArray<long long>>>(v58 + 24, 0) + 12;
    v61 = *(this + 4);
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v57 = 4;
    }

    else
    {
      v57 = 8;
    }

    if (v61)
    {
      v62 = sizeObject<DgnPrimArray<double>>(v61 + 8, 1);
      v57 += v62 + sizeObject<DgnArray<DgnPrimArray<long long>>>(v61 + 24, 1) + 12;
      v63 = *(this + 4);
      v21 = v76;
      if (v63)
      {
        v79 = 0;
        v80 = 0;
        DgnPrimArray<unsigned int>::~DgnPrimArray(&v79);
        v64 = sizeObject<DgnArray<DgnPrimArray<long long>>>(v63 + 24, 3);
      }

      else
      {
        v64 = 0;
      }

      a3 = v77;
    }

    else
    {
      v64 = 0;
      v21 = v76;
      a3 = v77;
    }
  }

  else
  {
    v64 = 0;
    v60 = v57;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/contrnac.cpp", 2774, &v79);
  if (v80)
  {
    v69 = v79;
  }

  else
  {
    v69 = &unk_26287F771;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v65, v66, v67, v68, v21, &unk_26287F771, v22, v22, v69, v60, v57, v64);
  DgnString::~DgnString(&v79);
  *a4 += v60;
  *a5 += v57;
  *a6 += v64;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/contrnac.cpp", 2776, &v79);
  if (v80)
  {
    v74 = v79;
  }

  else
  {
    v74 = &unk_26287F771;
  }

  v75 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v70, v71, v72, v73, a3, &unk_26287F771, (35 - a3), (35 - a3), v74, *a4, *a5, *a6);
  DgnString::~DgnString(&v79);
}

void sub_26261093C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<CTPelAccum *>(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  v4 = gShadowDiagnosticShowIdealizedObjectSizes;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 12;
  }

  else
  {
    v2 = 16;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v6 = *(a1 + 8);
    if (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = gShadowDiagnosticShowIdealizedObjectSizes;
      do
      {
        if (v8)
        {
          v9 = 4;
        }

        else
        {
          v9 = 8;
        }

        v10 = *(*a1 + 8 * v7);
        if (v10)
        {
          v9 += CTPelAccum::sizeObject(v10, a2);
          v8 = gShadowDiagnosticShowIdealizedObjectSizes;
        }

        v2 += v9;
        v11 = v7-- + 1;
      }

      while (v11 > 1);
    }

    if (!a2)
    {
      v12 = 2;
      if ((v4 & 1) == 0)
      {
        v12 = 3;
      }

      v2 += (*(a1 + 12) - *(a1 + 8)) << v12;
    }
  }

  return v2;
}

BOOL ConstrainedTransAccMgr::computeTransform(ConstrainedTransAccMgr *this, uint64_t a2, double a3, SnapTime *a4, unsigned int *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v190 = a2;
  if (a5)
  {
    *a5 = 0;
  }

  if (a2)
  {
    v11 = *((*(**(this + 1) + 200))(*(this + 1)) + 56);
    v197 = (*(**(this + 1) + 208))(*(this + 1));
    v19 = 0;
    v186 = 0;
    v20 = 0;
    v182 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    PelMgr = v11;
    v194 = *(v11 + 16) == 1;
    v24 = this + 40;
    v25 = *(this + 12);
    v189 = 1;
    v199 = 1;
    v26 = 1;
    v27 = 1;
LABEL_5:
    v196 = 1;
    goto LABEL_19;
  }

  PelMgr = AdaptController::getPelMgr(*this, a2, a4, a5, a6, a7, a8, a9);
  v28 = *this;
  v29 = *(*this + 32);
  v182 = *this + 40;
  v30 = *(*this + 8);
  v199 = *(v30 + 332);
  v26 = *(v30 + 96);
  v31 = *(v30 + 81);
  v27 = *(v30 + 82);
  if ((v31 & 1) == 0 && (v27 & 1) == 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/contrnac.cpp", 2890, "recogctl/contrnac", 2, "%s", v17, v18, &errStr_recogctl_contrnac_E_IDENTITY_TRANSFORM);
    v30 = *(*this + 8);
  }

  v20 = (v31 ^ 1) & v27;
  v189 = *(v30 + 83);
  v197 = v29;
  if (v28[52] == 1)
  {
    v32 = v28[48];
    v194 = *(PelMgr + 16) == 1;
    v24 = this + 40;
    v33 = *(this + 12);
    v34 = v28[53];
    v21 = *(v30 + 84);
    v19 = *(v30 + 156);
    if ((v34 & 1) == 0)
    {
      v186 = v32;
      v22 = 0;
      v25 = *(this + 12);
      v23 = *(v30 + 100);
      goto LABEL_5;
    }
  }

  else
  {
    v32 = v28[48];
    v194 = *(PelMgr + 16) == 1;
    v24 = this + 40;
    v33 = *(this + 12);
    if (v28[53] != 1)
    {
      v186 = v28[48];
      v196 = 0;
      v19 = *(v30 + 360);
      v25 = *(this + 12);
      v23 = *(v30 + 372);
      v22 = 1;
      v21 = v19;
      goto LABEL_19;
    }

    v21 = *(v30 + 84);
    v19 = *(v30 + 156);
  }

  v186 = v32;
  v35 = *(v30 + 148);
  v22 = 0;
  if (v35 == -1)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(v30 + 144) + v35;
  }

  v196 = 1;
  v25 = v33;
LABEL_19:
  v224 = 0;
  v225 = 0;
  v222 = 0;
  v223 = 0;
  v181 = v25;
  if (v25 >= 2)
  {
    v36 = *(*(*this + 8) + 68) / 10000.0;
    v37 = v196;
    if (v36 <= 0.0)
    {
      v37 = 0;
    }

    if (v37 != 1)
    {
      goto LABEL_31;
    }

    v38 = *(*(this + 7) + 4 * **(AdaptController::getPelMgr(*this, v12, v13, v14, v15, v16, v17, v18) + 288));
    v39 = *(this + 5);
    v40 = *(v39 + 8 * v38);
    v41 = *(v40 + 56);
    v42 = v181;
    v43 = 0.0;
    do
    {
      if (v38)
      {
        v43 = v43 + *(*v39 + 56) * 0.00390625;
      }

      --v38;
      v39 += 8;
      --v42;
    }

    while (v42);
    v44 = 0.0;
    if (v43 > 0.0)
    {
      if (v41 * 0.00390625 / v43 <= v36)
      {
        goto LABEL_31;
      }

      v44 = v36 * v43 / (v41 * 0.00390625);
    }

    CTPelAccum::scaleAccum(v40, v44);
LABEL_31:
    v211 = 0;
    v212 = 0;
    ConstrainedTransAccMgr::getFrameCountsByTNode(this, &v211);
    GenoneClassTree::getDynamicClasses(*(this + 2), &v211, v23, v19, v21, &v224, &v222);
    if (*(*(*this + 8) + 80) == 1 && v225 >= 2)
    {
      v206 = 0;
      v207 = 0;
      v45 = v223;
      if (v223 == HIDWORD(v223))
      {
        DgnArray<DgnPrimArray<double>>::reallocElts(&v222, 1, 1);
        v45 = v223;
      }

      v46 = &v222[2 * v45];
      *v46 = 0;
      v46[1] = 0;
      DgnPrimArray<int>::copyArraySlice(v46, &v206, 0, v207);
      LODWORD(v223) = v223 + 1;
      v47 = v225;
      if (v225)
      {
        v48 = 0;
        v49 = v224;
        do
        {
          v50 = &v49[16 * v48];
          if (*(v50 + 2))
          {
            v51 = 0;
            v52 = v207;
            do
            {
              v53 = *(*v50 + 4 * v51);
              if (v52 == HIDWORD(v207))
              {
                DgnPrimArray<unsigned int>::reallocElts(&v206, 1, 1);
                v52 = v207;
                v49 = v224;
              }

              *(v206 + v52) = v53;
              v52 = v207 + 1;
              LODWORD(v207) = v207 + 1;
              ++v51;
              v50 = &v49[16 * v48];
            }

            while (v51 < *(v50 + 2));
            v47 = v225;
          }

          ++v48;
        }

        while (v48 < v47);
      }

      else
      {
        v47 = 0;
      }

      if (v47 == HIDWORD(v225))
      {
        DgnArray<DgnPrimArray<double>>::reallocElts(&v224, 1, 1);
        v47 = v225;
      }

      v65 = &v224[16 * v47];
      *v65 = 0;
      *(v65 + 1) = 0;
      DgnPrimArray<int>::copyArraySlice(v65, &v206, 0, v207);
      LODWORD(v225) = v225 + 1;
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v206);
      v54 = 1;
    }

    else
    {
      v54 = 0;
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v211);
    goto LABEL_74;
  }

  if (v19 <= (*(**v24 + 56) * 0.00390625 + 0.5))
  {
    v211 = 0;
    HIDWORD(v225) = realloc_array(0, &v211, 0x10uLL, 0, 0, 1) >> 4;
    v55 = v211;
    v224 = v211;
    v56 = v225;
    if (v225 <= 1)
    {
      if (!v225)
      {
        *v211 = 0;
        v55[1] = 0;
      }
    }

    else if (v225 >= 2)
    {
      v57 = 16 * v225 - 16;
      do
      {
        --v56;
        DgnPrimArray<unsigned int>::~DgnPrimArray(&v224[v57]);
        v57 -= 16;
      }

      while (v56 > 1);
    }

    LODWORD(v225) = 1;
    v58 = v224;
    v59 = *(v224 + 2);
    if (v59 == *(v224 + 3))
    {
      DgnPrimArray<unsigned int>::reallocElts(v224, 1, 1);
      v59 = v58[2];
    }

    *(*v58 + 4 * v59) = 0;
    ++v58[2];
    if (!HIDWORD(v223))
    {
      v211 = 0;
      HIDWORD(v223) = realloc_array(v222, &v211, 0x10uLL, 16 * v223, 16 * v223, 1) >> 4;
      v222 = v211;
    }

    v60 = v223;
    if (v223 <= 1)
    {
      if (!v223)
      {
        v62 = v222;
        *v222 = 0;
        v62[1] = 0;
      }
    }

    else if (v223 >= 2)
    {
      v61 = 16 * v223 - 16;
      do
      {
        --v60;
        DgnPrimArray<unsigned int>::~DgnPrimArray(v222 + v61);
        v61 -= 16;
      }

      while (v60 > 1);
    }

    LODWORD(v223) = 1;
    v63 = v222;
    v64 = *(v222 + 2);
    if (v64 == *(v222 + 3))
    {
      DgnPrimArray<unsigned int>::reallocElts(v222, 1, 1);
      v64 = *(v63 + 2);
    }

    v54 = 0;
    *(*v63 + 4 * v64) = 0;
    ++*(v63 + 2);
  }

  else
  {
    v54 = 0;
  }

LABEL_74:
  v66 = v225;
  SnapTime::recordTime(a4, 1, 1, 1, 1);
  if (!v66)
  {
    goto LABEL_83;
  }

  v193 = v66;
  if (v190)
  {
    v74 = 1;
LABEL_79:
    v75 = *(*(this + 3) + 136);
    SnapTime::recordTime(a4, 1, 1, 1, 1);
    if (v75 >= v74)
    {
      v76 = v74;
    }

    else
    {
      v76 = v75;
    }

    LODWORD(v66) = v193;
    if (v193 < v76)
    {
      goto LABEL_83;
    }

    if (v196)
    {
      v78 = 1 << *(*(this + 3) + 4);
      if (v190)
      {
        goto LABEL_91;
      }

      goto LABEL_89;
    }

    v78 = 0x4000;
    if (v190)
    {
LABEL_91:
      v188 = 0;
      goto LABEL_95;
    }

LABEL_93:
    v79 = 384;
    goto LABEL_94;
  }

  if (*(v182 + 13) == 1)
  {
    v74 = *(*(*this + 8) + 144);
    goto LABEL_79;
  }

  if (!v196)
  {
    v78 = 0x4000;
    goto LABEL_93;
  }

  v78 = 1 << *(*(this + 3) + 4);
LABEL_89:
  v79 = 112;
LABEL_94:
  v188 = *(*(*this + 8) + v79);
LABEL_95:
  v192 = v78;
  v187 = v22 ^ (v22 | v26 | v20);
  if (((v22 | v26) | v20))
  {
    v80 = v189;
    v81 = v199;
  }

  else
  {
    v80 = v189;
    v81 = v199;
    if (((v189 ^ 1) & 1) == 0)
    {
      v187 = !v194 | v199;
    }
  }

  if ((v190 & 1) == 0)
  {
    v184 = 0;
    v191 = 0;
    v82 = *(*this + 8);
    v83 = 368;
    if (v196)
    {
      v83 = 92;
    }

    v84 = 364;
    if (v196)
    {
      v84 = 88;
    }

    v179 = *(v82 + v84);
    if (v66 == 1)
    {
      goto LABEL_109;
    }

    v85 = *(v82 + v83);
    if (!v85)
    {
      goto LABEL_109;
    }

    v184 = ConstrainedTransAccMgr::computeGlobalSmoothing(this, v85, v67, v68, v69, v70, v71, v72, v73);
    SnapTime::recordTime(a4, 1, 1, 1, 1);
    if (v184)
    {
      v191 = 1;
      goto LABEL_109;
    }

LABEL_83:
    v77 = 0;
    goto LABEL_271;
  }

  v191 = 0;
  v179 = 0;
  v184 = 0;
LABEL_109:
  v86 = MemChunkAlloc(0xA8uLL, 0);
  CTPelAccum::CTPelAccum(v86, PelMgr, v197, v81, v26, v186, v196, v80, v20, 0, 0, 0, 0);
  v178 = v54;
  v87 = *(v86 + 4);
  if (v80)
  {
    v88 = 2;
  }

  else
  {
    v88 = 1;
  }

  if (v20)
  {
    v88 = 3;
  }

  v200 = v88;
  if (v20)
  {
    v89 = 0;
  }

  else
  {
    v89 = v87;
  }

  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(&v220, v89);
  v90 = v221;
  if (v221)
  {
    v91 = 0;
    v92 = 0;
    if (((v20 ^ 1) & v189) != 0)
    {
      v93 = 1;
    }

    else
    {
      v93 = v87;
    }

    do
    {
      v94 = v220 + v91;
      v95 = *(v220 + v91 + 12);
      if (v93 > v95)
      {
        DgnPrimArray<unsigned int>::reallocElts(v220 + v91, v93 - v95, 0);
        v90 = v221;
      }

      *(v94 + 8) = v93;
      ++v92;
      v91 += 16;
    }

    while (v92 < v90);
  }

  v198 = v27 | v189;
  if ((v27 | v189))
  {
    v96 = v87;
  }

  else
  {
    v96 = 0;
  }

  v218 = 0;
  v219 = 0;
  if (v96)
  {
    v211 = 0;
    HIDWORD(v219) = realloc_array(0, &v211, 4 * v96, 0, 0, 1) >> 2;
    v218 = v211;
  }

  LODWORD(v219) = v96;
  v216 = 0;
  v217 = 0;
  v211 = 0;
  HIDWORD(v217) = realloc_array(0, &v211, 72 * v193, 0, 0, 1) / 0x48;
  v216 = v211;
  v97 = v217;
  if (v193 >= v217)
  {
    if (v193 > v217)
    {
      v99 = v193 - v217;
      v100 = 72 * v217;
      do
      {
        LinearTransform::LinearTransform(&v216[v100]);
        v100 += 72;
        --v99;
      }

      while (v99);
    }
  }

  else if (v217 > v193)
  {
    v98 = 72 * v217 - 72;
    do
    {
      --v97;
      LinearTransform::~LinearTransform(&v216[v98]);
      v98 -= 72;
    }

    while (v97 > v193);
  }

  LODWORD(v217) = v193;
  v214 = 0;
  v215 = 0;
  if (v196)
  {
    v211 = 0;
    v101 = realloc_array(0, &v211, 4 * v193, 0, 0, 1);
    v214 = v211;
    LODWORD(v215) = v193;
    HIDWORD(v215) = v101 >> 2;
  }

  v185 = v20;
  v102 = 0;
  v103 = 0;
  v211 = 0;
  v212 = 0;
  v213 = 0;
  v210 = 0;
  v209 = 0;
  do
  {
    CTPelAccum::reset(v86);
    v104 = &v224[16 * v102];
    if (*(v104 + 2))
    {
      v105 = 0;
      do
      {
        CTPelAccum::addAccum(v86, *(*v24 + 8 * *(*v104 + 4 * v105++)), 0);
        v104 = &v224[16 * v102];
      }

      while (v105 < *(v104 + 2));
    }

    if ((v191 & 1) != 0 && (v86[7] * 0.00390625 + 0.5) < v179)
    {
      CTPelAccum::addAccum(v86, v184, 0);
    }

    v106 = *(this + 4);
    if (v106)
    {
      CTPelAccum::addModelRelevance(v86, v106, v188);
    }

    DgnMatrix::makeIdentity(v87, &v206);
    v211 = v206;
    DgnPrimFixArray<double>::copyArraySlice(&v212, &v207, 0, v208);
    DgnPrimFixArray<double>::~DgnPrimFixArray(&v207);
    LODWORD(v207) = 0;
    v206 = 0;
    if (v87)
    {
      v206 = MemChunkAlloc(8 * v87, 0);
      LODWORD(v207) = v87;
      bzero(v206, 8 * v87);
    }

    DgnPrimFixArray<double>::copyArraySlice(&v209, &v206, 0, v87);
    DgnPrimFixArray<double>::~DgnPrimFixArray(&v206);
    if (v196)
    {
      if ((v187 & 1) == 0 && !ConstrainedTransAccMgr::computeInitialTransform(this, v86, v194, &v211))
      {
        DgnMatrix::makeIdentity(v87, &v206);
        v211 = v206;
        DgnPrimFixArray<double>::copyArraySlice(&v212, &v207, 0, v208);
        DgnPrimFixArray<double>::~DgnPrimFixArray(&v207);
        LODWORD(v207) = 0;
        v206 = 0;
        if (v87)
        {
          v206 = MemChunkAlloc(8 * v87, 0);
          LODWORD(v207) = v87;
          bzero(v206, 8 * v87);
        }

        DgnPrimFixArray<double>::copyArraySlice(&v209, &v206, 0, v87);
        DgnPrimFixArray<double>::~DgnPrimFixArray(&v206);
      }

      v107 = ConstrainedTransAccMgr::computeIterativeTransform(this, v86, v190, v194, v189, v185, &v211, &v209, a3);
    }

    else
    {
      v107 = ConstrainedTransAccMgr::computeMeansTransform(this, v86, v194, &v211);
    }

    if (!v107 || !fillIntTransform(&v211, &v209, &v220, &v218, v192, v200, v198 & 1, v87))
    {
      DgnMatrix::makeIdentity(v87, &v206);
      v211 = v206;
      DgnPrimFixArray<double>::copyArraySlice(&v212, &v207, 0, v208);
      DgnPrimFixArray<double>::~DgnPrimFixArray(&v207);
      LODWORD(v207) = 0;
      v206 = 0;
      if (v87)
      {
        v206 = MemChunkAlloc(8 * v87, 0);
        LODWORD(v207) = v87;
        bzero(v206, 8 * v87);
      }

      DgnPrimFixArray<double>::copyArraySlice(&v209, &v206, 0, v87);
      ++v103;
      DgnPrimFixArray<double>::~DgnPrimFixArray(&v206);
      fillIntTransform(&v211, &v209, &v220, &v218, v192, v200, v198 & 1, v87);
    }

    LinearTransform::setSize(&v216[72 * v102], v87, v87);
    LinearTransform::setTransform(&v216[72 * v102], &v220, v200, &v218, v198 & 1, v192, 0, v108);
    if (v196)
    {
      v109 = DgnMatrix::determinant(&v211);
      v110 = DgnLog(v109) * v192;
      if (v110 >= 0.0)
      {
        v111 = 0.5;
      }

      else
      {
        v111 = -0.5;
      }

      v214[v102] = (v110 + v111);
    }

    ++v102;
  }

  while (v102 != v193);
  DgnDelete<CTPelAccum>(v86);
  DgnDelete<CTPelAccum>(v184);
  SnapTime::recordTime(a4, 1, 1, 1, 1);
  v116 = (20 * v193 + 50) / 0x64u;
  v77 = v103 <= v116;
  if (v103 <= v116)
  {
    v206 = 0;
    v207 = 0;
    LODWORD(v117) = v193;
    v205[0] = 0;
    v205[1] = 0;
    if (v178)
    {
      v117 = (v193 - 1);
      if (v225 <= v117)
      {
        if (v225 < v117)
        {
          v120 = v117 - v225;
          v121 = 16 * v225;
          do
          {
            v122 = &v224[v121];
            *v122 = 0;
            *(v122 + 1) = 0;
            v121 += 16;
            --v120;
          }

          while (v120);
        }
      }

      else if (v225 > v117)
      {
        v118 = v225;
        v119 = 16 * v225 - 16;
        do
        {
          --v118;
          DgnPrimArray<unsigned int>::~DgnPrimArray(&v224[v119]);
          v119 -= 16;
        }

        while (v118 > v117);
      }

      LODWORD(v225) = v193 - 1;
      if (v223 <= v117)
      {
        if (v223 < v117)
        {
          v125 = v117 - v223;
          v126 = 2 * v223;
          do
          {
            v127 = &v222[v126];
            *v127 = 0;
            v127[1] = 0;
            v126 += 2;
            --v125;
          }

          while (v125);
        }
      }

      else if (v223 > v117)
      {
        v123 = v223;
        v124 = 16 * v223 - 16;
        do
        {
          --v123;
          DgnPrimArray<unsigned int>::~DgnPrimArray(v222 + v124);
          v124 -= 16;
        }

        while (v123 > v117);
      }

      LODWORD(v223) = v193 - 1;
      DgnArray<LinearTransform>::copyArraySlice(&v206, &v216, v117, 1u);
      DgnPrimArray<int>::copyArraySlice(v205, &v214, v117, 1u);
      v128 = v217;
      if (v217 <= v117)
      {
        if (v217 < v117)
        {
          v130 = ~v217 + v193;
          v131 = 72 * v217;
          do
          {
            LinearTransform::LinearTransform(&v216[v131]);
            v131 += 72;
            --v130;
          }

          while (v130);
        }
      }

      else if (v217 > v117)
      {
        v129 = 72 * v217 - 72;
        do
        {
          --v128;
          LinearTransform::~LinearTransform(&v216[v129]);
          v129 -= 72;
        }

        while (v128 > v117);
      }

      LODWORD(v217) = v193 - 1;
      LODWORD(v215) = v193 - 1;
    }

    if (v190)
    {
      CTFTMgr::setOnlineCTList(*(this + 3), &v216, &v214);
    }

    else if (v196)
    {
      v132 = *(this + 2);
      v133 = 120;
      if (*(v182 + 13))
      {
        v133 = 152;
      }

      v134 = *(*(v132 + v133) + 4 * (*(v132 + v133 + 8) - 1));
      v203 = 0;
      v204 = 0;
      v135 = v134 + 1;
      if (v134 != -1)
      {
        v201 = 0;
        HIDWORD(v204) = realloc_array(0, &v201, 4 * (v134 + 1), 0, 0, 1) >> 2;
        v203 = v201;
        v132 = *(this + 2);
      }

      LODWORD(v204) = v135;
      v201 = 0;
      v202 = 0;
      DgnPrimArray<int>::copyArraySlice(&v201, (v132 + 192), 0, *(v132 + 200));
      if (v204)
      {
        v136 = 0;
        v137 = v203;
        do
        {
          *&v137[4 * v136++] = -1;
        }

        while (v136 < v204);
      }

      v138 = v223;
      if (v223)
      {
        v139 = 0;
        v140 = v222;
        v141 = v201;
        v142 = v203;
        do
        {
          v143 = &v140[2 * v139];
          if (*(v143 + 2))
          {
            v144 = 0;
            v145 = *v143;
            do
            {
              *&v142[4 * v141[*(v145 + 4 * v144++)]] = v139;
            }

            while (v144 < *(v143 + 2));
            v138 = v223;
          }

          ++v139;
        }

        while (v139 < v138);
      }

      if (*(v182 + 12))
      {
        CTFTMgr::setSpeakerCTList(*(this + 3), &v216, &v214, &v203, &v206, v205);
      }

      else if (*(v182 + 13) == 1)
      {
        if (*(*(*this + 8) + 140) == 1)
        {
          v169 = *(this + 3);
          if (*(v169 + 12) == *v169 && v117 == *(v169 + 136) && v178 == *(v169 + 176))
          {
            if (v204)
            {
              v170 = 0;
              while (1)
              {
                v171 = *&v203[v170];
                if (v171 != -1 && (!v117 || v171 != *(*(v169 + 40) + v170)))
                {
                  break;
                }

                v170 += 4;
                if (4 * v204 == v170)
                {
                  goto LABEL_256;
                }
              }
            }

            else
            {
LABEL_256:
              if (v117)
              {
                v172 = 0;
                do
                {
                  multiplyIntTransform(&v216[72 * v172], (*(*(this + 3) + 144) + 72 * v172), v192, v200, v198 & 1, v87, &v214[v172]);
                  ++v172;
                }

                while (v172 != v117);
              }

              for (i = 0; i < v178; i = 1)
              {
                multiplyIntTransform(v206, *(*(this + 3) + 184), v192, v200, v198 & 1, v87, v205[0]);
              }
            }
          }
        }

        CTFTMgr::setChannelCTList(*(this + 3), &v216, &v214, &v203, &v206, v205);
      }

      DgnPrimArray<unsigned int>::~DgnPrimArray(&v201);
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v203);
    }

    else
    {
      v203 = 0;
      v204 = 0;
      v146 = *(this + 2);
      v201 = 0;
      v202 = 0;
      if (v223)
      {
        v147 = 0;
        v148 = 0;
        do
        {
          LODWORD(v202) = 0;
          v149 = v222;
          v150 = &v222[2 * v148];
          if (*(v150 + 2))
          {
            v151 = 0;
            v152 = 0;
            do
            {
              v153 = *(*(this + 2) + 208) + 16 * *(*v150 + 4 * v152);
              v154 = *(v153 + 8);
              if (v154)
              {
                for (j = 0; j < v154; ++j)
                {
                  v156 = *(*v153 + 4 * j);
                  if ((*(*(v146 + 64) + ((v156 >> 3) & 0x1FFFFFFC)) >> v156))
                  {
                    v157 = *(*(v146 + 32) + 2 * v156);
                    if (v157 != 65534)
                    {
                      if (v151 == HIDWORD(v202))
                      {
                        DgnPrimArray<short>::reallocElts(&v201, 1, 1);
                        v151 = v202;
                        v154 = *(v153 + 8);
                      }

                      *(v201 + v151++) = v157;
                      LODWORD(v202) = v151;
                    }
                  }
                }

                v149 = v222;
              }

              ++v152;
              v150 = &v149[2 * v148];
            }

            while (v152 < *(v150 + 2));
            v147 = v204;
          }

          if (v147 == HIDWORD(v204))
          {
            DgnArray<DgnPrimArray<double>>::reallocElts(&v203, 1, 1);
            v147 = v204;
          }

          v158 = &v203[16 * v147];
          *v158 = 0;
          *(v158 + 1) = 0;
          DgnPrimArray<unsigned short>::copyArraySlice(v158, &v201, 0, v202);
          v147 = v204 + 1;
          LODWORD(v204) = v204 + 1;
          ++v148;
        }

        while (v148 < v223);
      }

      v159 = v217;
      if (v217)
      {
        v160 = 0;
        v161 = v203;
        do
        {
          v162 = &v161[16 * v160];
          if (*(v162 + 2))
          {
            v163 = 0;
            do
            {
              v164 = *(*v162 + 2 * v163);
              v165 = *(*(PelMgr + 272) + 4 * v164);
              v166 = *(*(PelMgr + 272) + 4 * v164 + 4);
              v167 = v166 - v165;
              if (v166 != v165)
              {
                v168 = 0;
                do
                {
                  ConstrainedTransAccMgr::copyBackMeans(this, v164, v168, &v216[72 * v160], v112, v113, v114, v115);
                  v168 = (v168 + 1);
                }

                while (v167 != v168);
                v161 = v203;
              }

              ++v163;
              v162 = &v161[16 * v160];
            }

            while (v163 < *(v162 + 2));
            v159 = v217;
          }

          ++v160;
        }

        while (v160 < v159);
      }

      DgnPrimArray<unsigned int>::~DgnPrimArray(&v201);
      DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v203);
    }

    if (v181)
    {
      v174 = *v24;
      v175 = v181;
      do
      {
        v176 = *v174++;
        *(v176 + 22) = 1;
        --v175;
      }

      while (v175);
    }

    SnapTime::recordTime(a4, 1, 1, 1, 1);
    if (a5)
    {
      *a5 = v117;
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(v205);
    DgnArray<LinearTransform>::releaseAll(&v206);
    v77 = 1;
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(&v209);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v212);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v214);
  DgnArray<LinearTransform>::releaseAll(&v216);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v218);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v220);
LABEL_271:
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v222);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v224);
  return v77;
}

void sub_262611FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, char a32, uint64_t a33, char a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, char a39)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a30);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a32);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a34);
  DgnArray<LinearTransform>::releaseAll(&a36);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a39);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v39 - 232);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v39 - 216);
  DgnArray<LinearTransform>::releaseAll(v39 - 200);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v39 - 184);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v39 - 168);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v39 - 152);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v39 - 136);
  _Unwind_Resume(a1);
}

BOOL ConstrainedTransAccMgr::computeInitialTransform(ConstrainedTransAccMgr *this, CTPelAccum *a2, int a3, DgnMatrix *a4)
{
  v8 = *(a2 + 4);
  DgnMatrix::makeIdentity(v8, &v21);
  if (ConstrainedTransAccMgr::computeMeansTransform(this, a2, a3, &v21))
  {
    DgnMatrix::invert(&v21, &v19);
    v9 = v19;
    v10 = v19 != 0;
    if (v19 && v8)
    {
      v11 = 0;
      v12 = v20;
      v13 = *a4;
      v14 = *(a4 + 1);
      do
      {
        v15 = v8;
        v16 = v11;
        v17 = v11;
        do
        {
          *(v14 + 8 * v17) = *(v12 + 8 * v16);
          v17 += v13;
          v16 += v9;
          v15 = (v15 - 1);
        }

        while (v15);
        ++v11;
      }

      while (v11 != v8);
    }

    DgnPrimFixArray<double>::~DgnPrimFixArray(&v20);
  }

  else
  {
    v10 = 0;
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(&v22);
  return v10;
}

void sub_262612268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va);
  _Unwind_Resume(a1);
}

uint64_t ConstrainedTransAccMgr::computeIterativeTransform(uint64_t *a1, uint64_t a2, int a3, int a4, int a5, int a6, int *a7, void *a8, double a9)
{
  v10 = *(a2 + 56) * 0.00390625;
  if (v10 == 0.0)
  {
    v11 = 0;
    return v11 & 1;
  }

  v17 = a2;
  v181 = a4 & (*(a2 + 20) ^ 1);
  v19 = *(a2 + 16);
  if (*a1)
  {
    v20 = *(*(*a1 + 8) + 168) * 0.1;
  }

  else
  {
    v20 = 0.0;
  }

  v232 = 0;
  v233 = 0;
  v177 = v10;
  if (v181)
  {
    v229 = 0;
    v21 = realloc_array(0, &v229, 4 * v19, 0, 0, 1);
    v22 = v229;
    v232 = v229;
    LODWORD(v233) = v19;
    HIDWORD(v233) = v21 >> 2;
    *v229 = 0;
    v10 = v177;
    if (v19 >= 2)
    {
      v23 = 0;
      for (i = 1; i != v19; ++i)
      {
        v23 += i;
        v22[i] = v23;
      }
    }
  }

  v25 = *a1;
  v169 = 1;
  if (!a3 && ((a5 ^ 1 | v181) & 1) != 0)
  {
    v169 = *(*(v25 + 8) + 116);
  }

  v208 = v17;
  if (a5 & 1) != 0 || (a6)
  {
    if (!v25)
    {
      v200 = 0;
      v176 = 0;
      goto LABEL_19;
    }

    v200 = 0;
  }

  else
  {
    v200 = *(*(v25 + 8) + 82);
  }

  v176 = *(*(v25 + 8) + 164) ^ 1;
LABEL_19:
  LODWORD(v229) = v19;
  HIDWORD(v229) = v19;
  v231 = 0;
  v230 = 0;
  if (v19 * v19)
  {
    v230 = MemChunkAlloc(8 * (v19 * v19), 0);
    v231 = v19 * v19;
    v10 = v177;
  }

  if (!v169)
  {
LABEL_162:
    v11 = 1;
    goto LABEL_167;
  }

  v26 = 0;
  v167 = 0;
  v27 = 1.0 / v10 / 1000.0;
  v28 = v20 * (1.0 / v10 * v27 * v20);
  v179 = (v200 + v19) * (v200 + v19);
  v178 = 8 * v179;
  v191 = v200 + v19;
  v172 = a3;
  v29 = 8 * v191;
  v173 = -v10;
  v170 = 1.0 - a9;
  v171 = a9;
  v180 = 8 * v19;
  v30 = vdupq_lane_s64(*&v10, 0);
  v166 = v30;
  v182 = v200;
  v183 = a7;
  v184 = a8;
  v174 = a5;
  v175 = a6;
  v188 = v19;
  while (1)
  {
    v31 = v180;
    if (v19)
    {
      break;
    }

LABEL_161:
    v26 = ++v167 >= v169;
    if (v167 == v169)
    {
      goto LABEL_162;
    }
  }

  v32 = 0;
  v185 = v26;
  while (1)
  {
    v189 = v32;
    if (a6)
    {
      LODWORD(v227) = 0;
      v226 = 0;
      v33 = v31;
      v34 = MemChunkAlloc(v31, 0);
      v226 = v34;
      LODWORD(v227) = v19;
      bzero(v34, v33);
      v34[v32] = 0x3FF0000000000000;
      v35 = a7[1];
      if (v35)
      {
        v36 = *a7;
        v37 = *(a7 + 1);
        v38 = v32;
        do
        {
          v39 = *v34++;
          *(v37 + 8 * v38) = v39;
          v38 += v36;
          --v35;
        }

        while (v35);
      }

      *(*a8 + 8 * v32) = *(v17[13] + 8 * v32) * -0.0000305175781 / (v17[7] * 0.00390625);
      v40 = &v226;
      goto LABEL_160;
    }

    LODWORD(v226) = v191;
    HIDWORD(v226) = v191;
    v228 = 0;
    v227 = 0;
    if (v179)
    {
      v227 = MemChunkAlloc(v178, 0);
      v228 = v179;
    }

    v225 = 0;
    v224 = 0;
    if (!v191)
    {
      break;
    }

    v41 = MemChunkAlloc(v29, 0);
    v224 = v41;
    v225 = v191;
    bzero(v41, v29);
    if ((a5 & 1) == 0)
    {
      goto LABEL_50;
    }

LABEL_34:
    if (v181)
    {
      v42 = v32 + 1;
    }

    else
    {
      v42 = 1;
    }

    v43 = v32;
    if (v181)
    {
      v43 = v232[v32] + v32;
    }

    v44 = *(v17[8] + 16 * v32);
    *v30.i64 = *v44 * 0.0000305175781;
    v209 = v30;
    *v30.i64 = v44[v42] * 0.00390625;
    v205 = v30;
    DataDataAccumUnscaled = CTPelAccum::getDataDataAccumUnscaled(v17, v43, 0, 0);
    __x = CTPelAccum::getDataDataAccumUnscaled(v17, v43, v42, 0);
    v192 = CTPelAccum::getDataDataAccumUnscaled(v17, v43, v42, v42);
    if (v181)
    {
      v45 = 0;
      v46 = v232;
      while (v45 >= v32)
      {
        if (v45 != v32)
        {
          v47 = v46[v45] + v32;
          v48 = v45 + 1;
          v52 = v32 + 1;
          v50 = v17;
          v51 = v47;
          v49 = v45 + 1;
          goto LABEL_46;
        }

        ++v45;
LABEL_47:
        if (v45 == v19)
        {
          goto LABEL_52;
        }
      }

      v47 = v46[v32] + v45;
      v48 = v45 + 1;
      v49 = v32 + 1;
      v50 = v17;
      v51 = v47;
      v52 = v45 + 1;
LABEL_46:
      v53 = CTPelAccum::getDataDataAccumUnscaled(v50, v51, v49, v52) * 0.00390625;
      v54 = CTPelAccum::getDataDataAccumUnscaled(v17, v47, v32 + 1, 0) * 0.0000305175781;
      v55 = CTPelAccum::getDataDataAccumUnscaled(v17, v47, v48, 0) * 0.0000305175781;
      v56 = CTPelAccum::getDataDataAccumUnscaled(v17, v47, 0, 0);
      v57 = *(*(a7 + 1) + 8 * (v45 + v45 * *a7));
      v58 = *(*a8 + 8 * v45);
      v59.i64[1] = v205.i64[1];
      *v59.i64 = *v205.i64 - (v54 * v58 + v57 * v53);
      v205 = v59;
      v60.i64[1] = v209.i64[1];
      *v60.i64 = *v209.i64 - (v56 * 0.000000238418579 * v58 + v57 * v55);
      v209 = v60;
      v45 = v48;
      v19 = v188;
      goto LABEL_47;
    }

LABEL_52:
    v62 = __x * 0.0000305175781;
    v202 = DataDataAccumUnscaled * 0.000000238418579;
    v193 = v192 * 0.00390625;
    v63 = v62 * v62 - v202 * v193;
    v64 = 0.0 - v63;
    if (v63 >= 0.0)
    {
      v64 = v62 * v62 - v202 * v193;
    }

    v11 = v185;
    v29 = 8 * v191;
    if (v64 < 1.0e-10)
    {
      goto LABEL_166;
    }

    v65 = (*v205.i64 * v202 - v62 * *v209.i64) / v63;
    v66 = v177 * v202 / v63 * -4.0;
    v67 = v66 + v65 * v65;
    if (v67 < 0.0)
    {
      goto LABEL_166;
    }

    v68 = DgnSqrt(v66 + v65 * v65);
    v69 = DgnSqrt(v67);
    v70 = (v68 - v65) * 0.5;
    v71 = (-v65 - v69) * 0.5;
    if (v70 <= 0.0 || v71 >= 1.0)
    {
      goto LABEL_166;
    }

    v73 = v70 + v71 <= 2.0 || v71 <= 0.0;
    if (!v73 || v202 == 0.0)
    {
      goto LABEL_166;
    }

    v74.f64[0] = (v68 - v65) * 0.5;
    __xa = (-v65 - v69) * 0.5;
    v74.f64[1] = __xa;
    v186 = vdupq_lane_s64(v209.i64[0], 0);
    v190 = v74;
    v210 = vdivq_f64(vmlaq_n_f64(v186, v74, -v62), vdupq_lane_s64(*&v202, 0));
    v75 = v181;
    if (v71 <= 0.0)
    {
      v75 = 1;
    }

    if ((v75 & 1) == 0)
    {
      v168 = DgnLog((v68 - v65) * 0.5);
      v76 = DgnLog(__xa);
      v77.f64[0] = v168;
      v77.f64[1] = v76;
      __asm { FMOV            V1.2D, #-0.5 }

      v83 = vmlaq_f64(vmlaq_f64(vmlaq_f64(vmulq_n_f64(v190, *v205.i64), v77, v166), v210, v186), _Q1, vmlaq_f64(vmlaq_f64(vmulq_f64(v210, vmulq_n_f64(v210, v202)), v190, vmulq_n_f64(v190, v193)), v190, vmulq_n_f64(v210, v62 + v62)));
      v70 = (v68 - v65) * 0.5;
      if ((vmovn_s64(vmvnq_s8(vcgtq_f64(vdupq_laneq_s64(v83, 1), v83))).u8[0] & 1) == 0)
      {
        v210.f64[0] = v210.f64[1];
        v70 = __xa;
      }
    }

    if (v172)
    {
      v70 = v170 + v171 * v70;
      v84 = v210.f64[0] * v171;
    }

    else
    {
      v84 = v210.f64[0];
    }

    v85 = v224;
    *&v224[v32] = v70;
    v86 = a7[1];
    if (v86)
    {
      v87 = *a7;
      v88 = *(a7 + 1);
      v89 = v32;
      do
      {
        v90 = *v85++;
        *(v88 + 8 * v89) = v90;
        v89 += v87;
        --v86;
      }

      while (v86);
    }

    *(*a8 + 8 * v32) = v84;
LABEL_159:
    DgnPrimFixArray<double>::~DgnPrimFixArray(&v224);
    v40 = &v227;
LABEL_160:
    DgnPrimFixArray<double>::~DgnPrimFixArray(v40);
    ++v32;
    v31 = v180;
    if (v32 == v19)
    {
      goto LABEL_161;
    }
  }

  v41 = 0;
  if (a5)
  {
    goto LABEL_34;
  }

LABEL_50:
  if (v181)
  {
    v61 = v232[v32] + v32;
  }

  else
  {
    v61 = v32;
  }

  v91 = v200;
  if (v191)
  {
    v92 = 0;
    v93 = 0;
    v211 = 0;
    v194 = *(*(v208 + 8) + 16 * v189);
    v94 = v226;
    v95 = v227;
    __xb = v41;
    do
    {
      v96 = v211;
      v97 = v211 + 1;
      v98 = v211 + 1 - v200;
      v211 = v97;
      v99 = 256.0;
      if (v97 == v91)
      {
        v99 = 32768.0;
      }

      *&v41[v96] = v27 * (*(v194 + 8 * v98) / v99);
      if (v97 == v91)
      {
        v100 = 0.0;
      }

      else
      {
        v100 = v28;
      }

      v101 = v200 ^ 1;
      v102 = v200 - 1;
      v206 = v92;
      v203 = v93;
      do
      {
        v103 = CTPelAccum::getDataDataAccumUnscaled(v208, v61, v98, v101);
        _CF = v102-- != 0;
        v104 = _CF;
        v105 = 32768.0;
        if (!(v101 | v98))
        {
          v105 = 4194304.0;
        }

        if (((v211 != v200) & v104) != 0)
        {
          v105 = 256.0;
        }

        v106 = v27 * (v103 / v105);
        if (v93)
        {
          v107 = 0.0;
        }

        else
        {
          v107 = v100;
        }

        *&v108 = v107 + v106;
        v95[v96] = v108;
        v95[v92] = v108;
        ++v93;
        ++v92;
        LODWORD(v96) = v96 + v94;
        ++v101;
      }

      while (v93 != 1);
      v93 = v203 - 1;
      v92 = v206 + v94;
      v91 = v200;
      v41 = __xb;
    }

    while (v211 != v191);
  }

  a7 = v183;
  a8 = v184;
  v17 = v208;
  v19 = v188;
  v11 = v185;
  v29 = 8 * v191;
  if (v181)
  {
    LODWORD(v221) = v191;
    HIDWORD(v221) = v191;
    v223 = 0;
    v222 = 0;
    if (v179)
    {
      v222 = MemChunkAlloc(v178, 0);
      v223 = v179;
    }

    v109 = 0;
    do
    {
      if (v109 != v189)
      {
        LODWORD(v217) = 0;
        v216 = 0;
        if (v191)
        {
          v110 = MemChunkAlloc(v29, 0);
          v111 = v189;
          v216 = v110;
          LODWORD(v217) = v191;
        }

        else
        {
          v110 = 0;
          v111 = v189;
        }

        if (v200)
        {
          *v110 = *(*a8 + 8 * v109);
        }

        v112 = *a7;
        v113 = *(a7 + 1);
        v114 = &v110[v182];
        v115 = v19;
        v116 = v109;
        do
        {
          *v114++ = *(v113 + 8 * v116);
          v116 += v112;
          --v115;
        }

        while (v115);
        if (v109 <= v111)
        {
          v117 = v111;
        }

        else
        {
          v117 = v109;
        }

        v187 = v109;
        if (v109 >= v111)
        {
          LODWORD(v109) = v111;
        }

        v118 = v200;
        if (v191)
        {
          v119 = 0;
          v207 = 0;
          v120 = v232[v117];
          v121 = v221;
          v122 = v222;
          v123 = 1;
          do
          {
            v124 = v207++;
            v204 = v207 - v118;
            v125 = v200 ^ 1;
            v126 = v200 - 1;
            v195 = v123;
            __xc = v119;
            do
            {
              v212 = v207 != v118;
              v127 = CTPelAccum::getDataDataAccumUnscaled(v208, v120 + v109, v204, v125);
              _CF = v126-- != 0;
              v128 = _CF;
              v129 = 32768.0;
              if (!(v125 | v204))
              {
                v129 = 4194304.0;
              }

              v118 = v200;
              if ((v212 & v128) != 0)
              {
                v129 = 256.0;
              }

              *&v130 = v27 * (v127 / v129);
              v122[v124] = v130;
              v122[v119++] = v130;
              v124 += v121;
              ++v125;
              --v123;
            }

            while (v123);
            v123 = v195 + 1;
            v119 = __xc + v121;
          }

          while (v207 != v191);
        }

        DgnVector::operator*(&v216, &v221, &v219);
        v131 = v225;
        v17 = v208;
        v19 = v188;
        v11 = v185;
        v29 = 8 * v191;
        if (v225)
        {
          v132 = v219;
          v133 = v224;
          do
          {
            v134 = *v132++;
            *v133 = *v133 - v134;
            ++v133;
            --v131;
          }

          while (v131);
        }

        DgnPrimFixArray<double>::~DgnPrimFixArray(&v219);
        DgnPrimFixArray<double>::~DgnPrimFixArray(&v216);
        a7 = v183;
        a8 = v184;
        v109 = v187;
      }

      ++v109;
    }

    while (v109 != v19);
    DgnPrimFixArray<double>::~DgnPrimFixArray(&v222);
  }

  DgnMatrix::invert(&v226, &v221);
  if (!v221)
  {
    goto LABEL_165;
  }

  a6 = v175;
  LOBYTE(a5) = v174;
  if (((v189 != 0) & ~v176) == 0)
  {
    DgnMatrix::cofactorMatrix(a7, &v216);
    v229 = v216;
    DgnPrimFixArray<double>::copyArraySlice(&v230, &v217, 0, v218);
    DgnPrimFixArray<double>::~DgnPrimFixArray(&v217);
  }

  LODWORD(v217) = 0;
  v216 = 0;
  if (v191)
  {
    v135 = MemChunkAlloc(v29, 0);
    v32 = v189;
    v216 = v135;
    LODWORD(v217) = v191;
  }

  else
  {
    v135 = 0;
    v32 = v189;
  }

  if (v200)
  {
    *v135 = 0;
  }

  v136 = v229;
  v137 = v230;
  v138 = &v135[v182];
  v139 = v19;
  v140 = v32;
  do
  {
    *v138++ = v137[v140];
    v140 += v136;
    --v139;
  }

  while (v139);
  DgnVector::operator*(&v216, &v221, &v219);
  v141 = v220;
  if (v220)
  {
    v142 = v219;
    v143 = 0.0;
    v144 = v216;
    v145 = v219;
    v146 = v220;
    do
    {
      v147 = *v145++;
      v148 = v147;
      v149 = *v144++;
      v143 = v143 + v148 * v149;
      --v146;
    }

    while (v146);
    v150 = 0.0;
    v151 = v224;
    do
    {
      v152 = *v142++;
      v153 = v152;
      v154 = *v151++;
      v150 = v150 + v153 * v154;
      --v141;
    }

    while (v141);
    v155 = v27 * v143;
  }

  else
  {
    v150 = 0.0;
    v155 = v27 * 0.0;
  }

  if (v155 >= 1.0e-10)
  {
    v156 = v155 * -4.0 * v173 + v150 * v150;
    if (v156 >= 0.0)
    {
      v157 = DgnSqrt(v156);
      DgnVector::operator*(&v216, v213, v27 * ((v157 - v150) / (v155 + v155)));
      DgnVector::operator+(&v224, v213, v214);
      DgnMatrix::operator*(&v221, v214, v215);
      DgnPrimFixArray<double>::~DgnPrimFixArray(v214);
      DgnPrimFixArray<double>::~DgnPrimFixArray(v213);
      v158 = v215[0];
      if (v200)
      {
        *(*a8 + 8 * v32) = *v215[0];
      }

      v159 = *a7;
      v160 = *(a7 + 1);
      v161 = (v158 + 8 * v200);
      v162 = v19;
      v163 = v32;
      do
      {
        v164 = *v161++;
        *(v160 + 8 * v163) = v164;
        v163 += v159;
        --v162;
      }

      while (v162);
      DgnPrimFixArray<double>::~DgnPrimFixArray(v215);
      DgnPrimFixArray<double>::~DgnPrimFixArray(&v219);
      DgnPrimFixArray<double>::~DgnPrimFixArray(&v216);
      DgnPrimFixArray<double>::~DgnPrimFixArray(&v222);
      goto LABEL_159;
    }
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(&v219);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v216);
LABEL_165:
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v222);
LABEL_166:
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v224);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v227);
LABEL_167:
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v230);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v232);
  return v11 & 1;
}

uint64_t ConstrainedTransAccMgr::computeMeansTransform(ConstrainedTransAccMgr *this, CTPelAccum *a2, int a3, DgnMatrix *a4)
{
  v6 = *(*this + 48);
  v7 = a3 & (*(a2 + 20) ^ 1);
  v8 = *(a2 + 4);
  v77 = 0;
  v78 = 0;
  v57 = v7;
  if (v7 == 1)
  {
    v74 = 0;
    v9 = realloc_array(0, &v74, 4 * v8, 0, 0, 1);
    v10 = v74;
    v77 = v74;
    LODWORD(v78) = v8;
    HIDWORD(v78) = v9 >> 2;
    *v74 = 0;
    if (v8 >= 2)
    {
      v11 = 0;
      for (i = 1; i != v8; ++i)
      {
        v11 += i;
        v10[i] = v11;
      }
    }
  }

  v13 = *(a2 + 7) * 0.00390625;
  if (v13 != 0.0)
  {
    v53 = 1;
    if (a3)
    {
      if (v6)
      {
        v53 = *(*(*this + 8) + 388);
        if (!v53)
        {
          v51 = 1;
          goto LABEL_50;
        }
      }
    }

    v54 = 0;
    v14 = 1.0 / (v13 * 1000.0);
    v58 = v8 * v8;
    v55 = 8 * (v8 * v8);
    v56 = 8 * v8;
    v15 = a2;
    v64 = v8;
    while (!v8)
    {
LABEL_46:
      v51 = 1;
      if (++v54 == v53)
      {
        goto LABEL_50;
      }
    }

    v16 = 0;
    while (1)
    {
      LODWORD(v74) = v8;
      HIDWORD(v74) = v8;
      v76 = 0;
      v75 = 0;
      if (v58)
      {
        v75 = MemChunkAlloc(v55, 0);
        v76 = v58;
      }

      v73 = 0;
      v72 = 0;
      v17 = MemChunkAlloc(v56, 0);
      v72 = v17;
      v73 = v8;
      if (v57)
      {
        v18 = v77[v16] + v16;
      }

      else
      {
        v18 = v16;
      }

      v19 = 0;
      v20 = 0;
      v60 = v16;
      v61 = *(*(v15 + 16) + 16 * v16);
      v21 = v74;
      v22 = v75;
      v23 = 1;
      v65 = v17;
      do
      {
        v24 = 0;
        v25 = v20++;
        *&v17[v25] = v14 * (*(v61 + 8 * v20) * 0.00390625);
        v26 = v19;
        do
        {
          *&v27 = v14 * (CTPelAccum::getMeanMeanAccumUnscaled(v15, v18, v20, ++v24) * 0.00390625);
          v22[v25] = v27;
          v22[v26++] = v27;
          LODWORD(v25) = v25 + v21;
        }

        while (v23 != v24);
        ++v23;
        v19 += v21;
        v8 = v64;
        v17 = v65;
      }

      while (v20 != v64);
      v28 = v60;
      if (v57)
      {
        LODWORD(v69) = v64;
        HIDWORD(v69) = v64;
        v71 = 0;
        v70 = 0;
        if (v58)
        {
          v70 = MemChunkAlloc(v55, 0);
          v71 = v58;
        }

        v29 = 0;
        do
        {
          if (v29 != v28)
          {
            DgnMatrix::getRow(a4, v29, v68);
            v30 = 0;
            v31 = 0;
            if (v29 <= v28)
            {
              v32 = v28;
            }

            else
            {
              v32 = v29;
            }

            v62 = v29;
            if (v29 >= v28)
            {
              LODWORD(v29) = v28;
            }

            v33 = v77[v32];
            v34 = v69;
            v35 = v70;
            v36 = 1;
            do
            {
              v37 = 0;
              v38 = v31++;
              v66 = v30;
              v39 = v30;
              do
              {
                *&v40 = v14 * (CTPelAccum::getMeanMeanAccumUnscaled(a2, v33 + v29, v31, ++v37) * 0.00390625);
                v35[v38] = v40;
                v35[v39++] = v40;
                v38 += v34;
              }

              while (v36 != v37);
              ++v36;
              v30 = v66 + v34;
              v8 = v64;
            }

            while (v31 != v64);
            DgnVector::operator*(v68, &v69, v67);
            v41 = v73;
            v29 = v62;
            v15 = a2;
            if (v73)
            {
              v42 = v67[0];
              v43 = v72;
              do
              {
                v44 = *v42++;
                *v43 = *v43 - v44;
                ++v43;
                --v41;
              }

              while (v41);
            }

            DgnPrimFixArray<double>::~DgnPrimFixArray(v67);
            DgnPrimFixArray<double>::~DgnPrimFixArray(v68);
            v28 = v60;
          }

          ++v29;
        }

        while (v29 != v8);
        DgnPrimFixArray<double>::~DgnPrimFixArray(&v70);
      }

      DgnMatrix::invert(&v74, &v69);
      if (!v69)
      {
        break;
      }

      DgnMatrix::operator*(&v69, &v72, v68);
      v45 = *(a4 + 1);
      if (v45)
      {
        v46 = v68[0];
        v47 = *a4;
        v48 = v28;
        v49 = *(a4 + 1);
        do
        {
          v50 = *v46++;
          *(v49 + 8 * v48) = v50;
          v48 += v47;
          --v45;
        }

        while (v45);
      }

      DgnPrimFixArray<double>::~DgnPrimFixArray(v68);
      DgnPrimFixArray<double>::~DgnPrimFixArray(&v70);
      DgnPrimFixArray<double>::~DgnPrimFixArray(&v72);
      DgnPrimFixArray<double>::~DgnPrimFixArray(&v75);
      v16 = v28 + 1;
      if (v16 == v8)
      {
        goto LABEL_46;
      }
    }

    DgnPrimFixArray<double>::~DgnPrimFixArray(&v70);
    DgnPrimFixArray<double>::~DgnPrimFixArray(&v72);
    DgnPrimFixArray<double>::~DgnPrimFixArray(&v75);
  }

  v51 = 0;
LABEL_50:
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v77);
  return v51;
}

BOOL fillIntTransform(uint64_t a1, double **a2, uint64_t *a3, _DWORD **a4, unsigned int a5, int a6, int a7, unsigned int a8)
{
  if (a6 == 3 || !a8)
  {
LABEL_19:
    v12 = 1;
    if (a8 && a7)
    {
      v19 = *a2;
      v20 = a5;
      v21 = *a4;
      v22 = a8 - 1;
      do
      {
        v23 = *v19++;
        v24 = v23 * v20;
        if (v23 * v20 >= 0.0)
        {
          v25 = 0.5;
        }

        else
        {
          v25 = -0.5;
        }

        *v21++ = (v24 + v25);
        v26 = fabs(v24);
        v28 = v22-- != 0;
        v12 = v26 <= 1073741820.0;
      }

      while (v26 <= 1073741820.0 && v28);
    }
  }

  else
  {
    v8 = 0;
    v9 = *(a1 + 8);
    v10 = a5;
    v11 = *a3;
    while (a6 == 2)
    {
      v12 = 0;
      v13 = *(v9 + 8 * (v8 + v8 * *a1)) * v10;
      if (v13 >= 0.0)
      {
        v14 = 0.5;
      }

      else
      {
        v14 = -0.5;
      }

      **(v11 + 16 * v8) = (v13 + v14);
      if (v13 < -32768.0 || v13 > 32767.0)
      {
        return v12;
      }

LABEL_18:
      if (++v8 == a8)
      {
        goto LABEL_19;
      }
    }

    v15 = 0;
    v16 = *(v11 + 16 * v8);
    while (1)
    {
      v12 = 0;
      v17 = *(v9 + 8 * (v8 + *a1 * v15)) * v10;
      v18 = v17 >= 0.0 ? 0.5 : -0.5;
      *(v16 + 4 * v15) = (v17 + v18);
      if (v17 < -32768.0 || v17 > 32767.0)
      {
        break;
      }

      if (a8 == ++v15)
      {
        goto LABEL_18;
      }
    }
  }

  return v12;
}

void DgnArray<LinearTransform>::copyArraySlice(uint64_t a1, void *a2, unsigned int a3, unsigned int a4)
{
  v8 = *(a1 + 8);
  if (v8 >= 1)
  {
    v9 = 72 * v8 - 72;
    do
    {
      LinearTransform::~LinearTransform((*a1 + v9));
      v9 -= 72;
    }

    while (v9 != -72);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 12);
  if (a4 <= v10)
  {
    v11 = 0;
    v12 = 0;
    if (!a4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    DgnArray<LinearTransform>::reallocElts(a1, a4 - v10, 0);
    v11 = *(a1 + 8);
  }

  v13 = a4;
  v12 = v11;
  do
  {
    LinearTransform::LinearTransform((*a1 + 72 * v12), (*a2 + 72 * a3));
    v12 = *(a1 + 8) + 1;
    *(a1 + 8) = v12;
    ++a3;
    --v13;
  }

  while (v13);
  if (v12 > a4)
  {
    if (v12 > a4)
    {
      v14 = v12;
      v15 = 72 * v12 - 72;
      do
      {
        --v14;
        LinearTransform::~LinearTransform((*a1 + v15));
        v15 -= 72;
      }

      while (v14 > a4);
    }

    goto LABEL_17;
  }

LABEL_14:
  v16 = a4 - v12;
  if (a4 > v12)
  {
    v17 = 72 * v12;
    do
    {
      LinearTransform::LinearTransform((*a1 + v17));
      v17 += 72;
      --v16;
    }

    while (v16);
  }

LABEL_17:
  *(a1 + 8) = a4;
}

unint64_t CTFTMgr::setSpeakerCTList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  DgnArray<LinearTransform>::copyArraySlice(a1 + 64, a2, 0, *(a2 + 8));
  DgnPrimArray<int>::copyArraySlice(a1 + 80, a3, 0, *(a3 + 8));
  *(a1 + 56) = *(a1 + 72);
  DgnPrimArray<int>::copyArraySlice(a1 + 24, a4, 0, *(a4 + 8));
  DgnArray<LinearTransform>::copyArraySlice(a1 + 104, a5, 0, *(a5 + 8));
  result = DgnPrimArray<int>::copyArraySlice(a1 + 120, a6, 0, *(a6 + 8));
  *(a1 + 96) = *(a1 + 112);
  v12 = *(a1 + 56);
  if (v12)
  {
    v12 = *(*(a1 + 64) + 4);
  }

  *(a1 + 8) = v12;
  return result;
}

uint64_t multiplyIntTransform(LinearTransform *a1, const LinearTransform *a2, unsigned int a3, int a4, int a5, DgnMatrix *this, int *a7)
{
  DgnMatrix::makeIdentity(this, &v44);
  DgnMatrix::makeIdentity(this, &v42);
  DgnMatrix::makeIdentity(this, &v40);
  v39 = 0;
  v38 = 0;
  if (this)
  {
    v38 = MemChunkAlloc(8 * this, 0);
    v39 = this;
    bzero(v38, 8 * this);
    v36 = MemChunkAlloc(8 * this, 0);
    v37 = this;
    bzero(v36, 8 * this);
    v34 = MemChunkAlloc(8 * this, 0);
    v35 = this;
    bzero(v34, 8 * this);
  }

  else
  {
    v37 = 0;
    v36 = 0;
    v35 = 0;
    v34 = 0;
  }

  LinearTransform::getUnscaledData(a1, &v44, &v38);
  LinearTransform::getUnscaledData(a2, &v42, &v36);
  if (a4 == 3)
  {
    if (a5)
    {
      DgnVector::operator+(&v36, &v38, &v31);
      DgnPrimFixArray<double>::copyArraySlice(&v34, &v31, 0, v32);
      DgnPrimFixArray<double>::~DgnPrimFixArray(&v31);
    }

    v14 = 0;
  }

  else
  {
    DgnMatrix::operator*(&v44, &v42, &v31);
    v40 = v31;
    DgnPrimFixArray<double>::copyArraySlice(v41, &v32, 0, v33);
    DgnPrimFixArray<double>::~DgnPrimFixArray(&v32);
    v14 = this;
    if (a5)
    {
      DgnMatrix::operator*(&v44, &v36, &v29);
      DgnVector::operator+(&v29, &v38, &v31);
      DgnPrimFixArray<double>::copyArraySlice(&v34, &v31, 0, v32);
      DgnPrimFixArray<double>::~DgnPrimFixArray(&v31);
      DgnPrimFixArray<double>::~DgnPrimFixArray(&v29);
      v14 = this;
    }
  }

  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(&v29, v14);
  v15 = v30;
  if (v30)
  {
    v16 = 0;
    v17 = 0;
    if (a4 == 2)
    {
      v18 = 1;
    }

    else
    {
      v18 = this;
    }

    do
    {
      v19 = v29 + v16;
      v20 = *(v29 + v16 + 12);
      if (v18 > v20)
      {
        DgnPrimArray<unsigned int>::reallocElts(v29 + v16, v18 - v20, 0);
        v15 = v30;
      }

      *(v19 + 8) = v18;
      ++v17;
      v16 += 16;
    }

    while (v17 < v15);
  }

  if (a5)
  {
    v21 = this;
  }

  else
  {
    v21 = 0;
  }

  v27 = 0;
  v28 = 0;
  if (v21)
  {
    v31 = 0;
    HIDWORD(v28) = realloc_array(0, &v31, 4 * v21, 0, 0, 1) >> 2;
    v27 = v31;
  }

  LODWORD(v28) = v21;
  if (!fillIntTransform(&v40, &v34, &v29, &v27, a3, a4, a5, this))
  {
    DgnMatrix::makeIdentity(this, &v31);
    v40 = v31;
    DgnPrimFixArray<double>::copyArraySlice(v41, &v32, 0, v33);
    DgnPrimFixArray<double>::~DgnPrimFixArray(&v32);
    LODWORD(v32) = 0;
    v31 = 0;
    if (this)
    {
      v31 = MemChunkAlloc(8 * this, 0);
      LODWORD(v32) = this;
      bzero(v31, 8 * this);
    }

    DgnPrimFixArray<double>::copyArraySlice(&v34, &v31, 0, this);
    DgnPrimFixArray<double>::~DgnPrimFixArray(&v31);
    fillIntTransform(&v40, &v34, &v29, &v27, a3, a4, a5, this);
  }

  LinearTransform::setSize(a1, this, this);
  LinearTransform::setTransform(a1, &v29, a4, &v27, a5, a3, 0, v22);
  v23 = DgnMatrix::determinant(&v40);
  v24 = DgnLog(v23) * a3;
  v25 = 0.5;
  if (v24 < 0.0)
  {
    v25 = -0.5;
  }

  *a7 = (v24 + v25);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v27);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v29);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v34);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v36);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v38);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v41);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v43);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v45);
}

void sub_262613DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a14);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a12);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a17);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a19);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a21);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a24);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a27);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v27 - 104);
  _Unwind_Resume(a1);
}

unint64_t CTFTMgr::setChannelCTList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  DgnArray<LinearTransform>::copyArraySlice(a1 + 144, a2, 0, *(a2 + 8));
  DgnPrimArray<int>::copyArraySlice(a1 + 160, a3, 0, *(a3 + 8));
  *(a1 + 136) = *(a1 + 152);
  DgnPrimArray<int>::copyArraySlice(a1 + 40, a4, 0, *(a4 + 8));
  DgnArray<LinearTransform>::copyArraySlice(a1 + 184, a5, 0, *(a5 + 8));
  result = DgnPrimArray<int>::copyArraySlice(a1 + 200, a6, 0, *(a6 + 8));
  *(a1 + 176) = *(a1 + 192);
  v12 = *(a1 + 136);
  if (v12)
  {
    v12 = *(*(a1 + 144) + 4);
  }

  *(a1 + 12) = v12;
  return result;
}

uint64_t ConstrainedTransAccMgr::copyBackMeans(AdaptController **this, uint64_t a2, uint64_t a3, LinearTransform *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  v10 = a2;
  PelMgr = AdaptController::getPelMgr(*this, a2, a3, a4, a5, a6, a7, a8);
  v12 = PelMgr;
  v27[0] = 0;
  v27[1] = 0;
  v26[0] = 0;
  v26[1] = 0;
  v25[0] = 0;
  v25[1] = 0;
  v13 = *(PelMgr + 16);
  if (v13 == 1)
  {
    PelMgr::unpackGenoneComponent(PelMgr, v10, v9, v27, v25);
  }

  else
  {
    PelMgr::unpackGenoneComponent(PelMgr, v10, v9, v27, v26);
  }

  v24[0] = 0;
  v24[1] = 0;
  LinearTransform::transformMeans(a4, v27, v24, v14, v15, v16, v17, v18);
  if (v13 == 1)
  {
    PelMgr::packGenoneComponent(v12, v10, v9, v24, v25, 1, v19, v20, v21, v22);
  }

  else
  {
    PelMgr::packGenoneComponent(v12, v10, v9, v24, v26);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v24);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v25);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v26);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v27);
}

void sub_2626140C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  _Unwind_Resume(a1);
}

unint64_t CTFTMgr::setOnlineCTList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DgnArray<LinearTransform>::copyArraySlice(a1 + 224, a2, 0, *(a2 + 8));
  result = DgnPrimArray<int>::copyArraySlice(a1 + 240, a3, 0, *(a3 + 8));
  v6 = *(a1 + 232);
  *(a1 + 216) = v6;
  if (v6)
  {
    v6 = *(*(a1 + 224) + 4);
  }

  *(a1 + 16) = v6;
  return result;
}

double DgnVector::operator+@<D0>(uint64_t a1@<X0>, double **a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  result = DgnPrimFixArray<double>::copyArraySlice(a3, a1, 0, *(a1 + 8));
  v6 = *(a3 + 8);
  if (v6)
  {
    v7 = *a2;
    v8 = *a3;
    do
    {
      v9 = *v7++;
      result = v9 + *v8;
      *v8++ = result;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t DgnArray<DgnArray<DgnPrimArray<int>>>::copyArraySlice(uint64_t result, void *a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  v8 = *(result + 8);
  if (v8 >= 1)
  {
    v9 = v8 + 1;
    v10 = 16 * v8 - 16;
    do
    {
      result = DgnArray<DgnPrimArray<unsigned char>>::releaseAll(*v7 + v10);
      --v9;
      v10 -= 16;
    }

    while (v9 > 1);
  }

  *(v7 + 8) = 0;
  v11 = *(v7 + 12);
  if (a4 <= v11)
  {
    v12 = 0;
    v13 = 0;
    if (!a4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(v7, a4 - v11, 0);
    v12 = *(v7 + 8);
  }

  v14 = a4;
  v13 = v12;
  do
  {
    v15 = *a2 + 16 * a3;
    v16 = (*v7 + 16 * v13);
    *v16 = 0;
    v16[1] = 0;
    result = DgnArray<DgnPrimArray<unsigned int>>::copyArraySlice(v16, v15, 0, *(v15 + 8));
    v13 = *(v7 + 8) + 1;
    *(v7 + 8) = v13;
    ++a3;
    --v14;
  }

  while (v14);
  if (v13 > a4)
  {
    if (v13 > a4)
    {
      v17 = v13;
      v18 = 16 * v13 - 16;
      do
      {
        result = DgnArray<DgnPrimArray<unsigned char>>::releaseAll(*v7 + v18);
        --v17;
        v18 -= 16;
      }

      while (v17 > a4);
    }

    goto LABEL_17;
  }

LABEL_14:
  if (v13 < a4)
  {
    v19 = a4 - v13;
    v20 = 16 * v13;
    do
    {
      v21 = (*v7 + v20);
      *v21 = 0;
      v21[1] = 0;
      v20 += 16;
      --v19;
    }

    while (v19);
  }

LABEL_17:
  *(v7 + 8) = a4;
  return result;
}

CTPelAccum *DgnIOwnArray<CTPelAccum *>::destructAt(CTPelAccum *result, int a2, int a3)
{
  if (a3 + a2 > a2)
  {
    v3 = result;
    v4 = a2;
    v5 = a3 + a2 - 1;
    do
    {
      result = DgnDelete<CTPelAccum>(*(*v3 + 8 * v5));
      *(*v3 + 8 * v5) = 0;
    }

    while (v5-- > v4);
  }

  return result;
}

unint64_t DgnArray<LinearTransform>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 72 * v6, 72 * v5, 72 * v5, 1);
  *(a1 + 12) = result / 0x48;
  *a1 = v8;
  return result;
}

void DgnSharedMemMgr::DgnSharedMemMgr(DgnSharedMemMgr *this, const char *a2)
{
  v3 = DgnString::DgnString(this, a2);
  recursive_mutex_init((v3 + 16));
  *(this + 20) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 11) = 0;
}

void DgnSharedMemMgr::startupDSMMgr(DgnSharedMemMgr *this, const char *a2)
{
  v3 = MemChunkAlloc(0x70uLL, 0);
  DgnSharedMemMgr::DgnSharedMemMgr(v3, this);
  DgnSharedMemMgr::smpDSMMgr = v4;
}

void DgnSharedMemMgr::printSize(DgnSharedMemMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmmgr.cpp", 78, &v72);
  if (v73)
  {
    v16 = v72;
  }

  else
  {
    v16 = &unk_26287F772;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26287F772, a3, &unk_26287F772, v16);
  v69 = a5;
  DgnString::~DgnString(&v72);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26287F772);
  v21 = sizeObject(this);
  v22 = sizeObject(this);
  v23 = sizeObject(this);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmmgr.cpp", 80, &v72);
  if (v73)
  {
    v28 = v72;
  }

  else
  {
    v28 = &unk_26287F772;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, v25, v26, v27, (a3 + 1), &unk_26287F772, (34 - a3), (34 - a3), v28, v21, v22, v23);
  DgnString::~DgnString(&v72);
  *a4 += v21;
  *v69 += v22;
  *a6 += v23;
  v29 = sizeObject(this + 16, 0);
  v30 = sizeObject(this + 16, 1);
  v31 = sizeObject(this + 16, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmmgr.cpp", 81, &v72);
  if (v73)
  {
    v36 = v72;
  }

  else
  {
    v36 = &unk_26287F772;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, v33, v34, v35, (a3 + 1), &unk_26287F772, (34 - a3), (34 - a3), v36, v29, v30, v31);
  DgnString::~DgnString(&v72);
  *a4 += v29;
  *v69 += v30;
  *a6 += v31;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmmgr.cpp", 82, &v72);
  if (v73)
  {
    v41 = v72;
  }

  else
  {
    v41 = &unk_26287F772;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v37, v38, v39, v40, (a3 + 1), &unk_26287F772, (a3 + 1), &unk_26287F772, v41);
  DgnString::~DgnString(&v72);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v42, v43, v44, v45, (a3 + 1), &unk_26287F772);
  v46 = *(this + 26);
  if (v46)
  {
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    do
    {
      v51 = *(this + 12);
      if (*(v51 + 8 * v47))
      {
        v72 = 0;
        v70 = 0;
        v71 = 0;
        DgnSharedMemSet::printSize(*(v51 + 8 * v47), v47, (a3 + 2), &v72, &v71, &v70);
        v50 += v72;
        v49 += v71;
        v48 += v70;
        v46 = *(this + 26);
      }

      ++v47;
    }

    while (v47 < v46);
  }

  else
  {
    v50 = 0;
    v49 = 0;
    v48 = 0;
    v46 = 0;
  }

  v52 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v52 = 12;
  }

  v53 = v52 + v50;
  v54 = v52 + v49;
  v55 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v55 = 3;
  }

  v56 = v53 + (*(this + 27) << v55);
  v57 = v54 + (v46 << v55);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmmgr.cpp", 82, &v72);
  if (v73)
  {
    v62 = v72;
  }

  else
  {
    v62 = &unk_26287F772;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v58, v59, v60, v61, (a3 + 1), &unk_26287F772, (34 - a3), (34 - a3), v62, v56, v57, v48);
  DgnString::~DgnString(&v72);
  *a4 += v56;
  *v69 += v57;
  *a6 += v48;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmmgr.cpp", 84, &v72);
  if (v73)
  {
    v67 = v72;
  }

  else
  {
    v67 = &unk_26287F772;
  }

  v68 = *v69;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v63, v64, v65, v66, a3, &unk_26287F772, (35 - a3), (35 - a3), v67, *a4, *v69, *a6);
  DgnString::~DgnString(&v72);
}

uint64_t DgnSharedMemMgr::getMaybeCreateSetObjectEx(DgnSharedMemMgr *this, const DgnString *a2, const DgnString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmmgr.cpp", 115, "mrecutil/dsmmgr", 2, "%s", a7, a8, &unk_26287F772);
  DgnString::DgnString(&v25, this);
  DgnString::operator+=(&v25, a3);
  v11 = *(this + 26);
  v24 = this + 16;
  pthread_mutex_lock((this + 16));
  ++*(this + 20);
  *(this + 11) = pthread_self();
  if (v11)
  {
    v13 = 0;
    while (1)
    {
      SetPrefixName = DgnSharedMemSet::getSetPrefixName(*(*(this + 12) + 8 * v13));
      v15 = *(SetPrefixName + 8) ? *SetPrefixName : &unk_26287F772;
      v16 = (v26 ? v25 : &unk_26287F772);
      if (!strcmp(v15, v16))
      {
        SetCacheDir = DgnSharedMemSet::getSetCacheDir(*(*(this + 12) + 8 * v13));
        v18 = *(SetCacheDir + 8) ? *SetCacheDir : &unk_26287F772;
        v19 = *(a2 + 2) ? *a2 : &unk_26287F772;
        if (!strcmp(v18, v19))
        {
          break;
        }
      }

      if (v11 == ++v13)
      {
        LODWORD(v13) = v11;
        goto LABEL_21;
      }
    }
  }

  else
  {
    LODWORD(v13) = 0;
  }

  if (v13 == v11)
  {
LABEL_21:
    Set = DgnSharedMemSet::createSet(a2, &v25, v12);
    v21 = *(this + 26);
    if (v21 == *(this + 27))
    {
      DgnPrimArray<unsigned long long>::reallocElts(this + 96, 1, 1);
      v21 = *(this + 26);
    }

    *(*(this + 12) + 8 * v21) = Set;
    *(this + 26) = v21 + 1;
  }

  v22 = *(*(this + 12) + 8 * v13);
  Latch<DgnLock,LatchAdapter>::~Latch(&v24);
  DgnString::~DgnString(&v25);
  return v22;
}

void sub_262614AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t *Latch<DgnLock,LatchAdapter>::~Latch(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(v2 + 64) - 1;
    *(v2 + 64) = v3;
    if (!v3)
    {
      *(v2 + 72) = 0;
    }

    pthread_mutex_unlock(v2);
    *a1 = 0;
  }

  return a1;
}

uint64_t loggableToken(uint64_t a1, uint64_t a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  v4 = strlen(a1);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, a1, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " (", 2);
  v6 = MEMORY[0x26672B080](&v8, *(a2 + 16));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ") : ", 4);
  std::stringbuf::str();
  v8 = *MEMORY[0x277D82828];
  *(&v8 + *(v8 - 24)) = *(MEMORY[0x277D82828] + 24);
  v9 = MEMORY[0x277D82878] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v10);
  std::ostream::~ostream();
  return MEMORY[0x26672B160](&v12);
}

void sub_262614CCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va, MEMORY[0x277D82828]);
  MEMORY[0x26672B160](v2 + 112);
  _Unwind_Resume(a1);
}

void TLexerLexicon::TLexerLexicon(TLexerLexicon *this, const TLocaleInfo *a2)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  operator new();
}

void sub_262614D54(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v2, 0x60C40CE5A77A8);
  v4 = *(v1 + 24);
  if (v4)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void TLexerLexicon::~TLexerLexicon(TLexerLexicon *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    TRegExp::~TRegExp(v2);
    MEMORY[0x26672B1B0]();
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  v4 = *this;
  if (*this)
  {
    *(this + 1) = v4;
    operator delete(v4);
  }
}

void TLexerLexicon::addRegExp(const void **a1, __int32 *a2, uint64_t a3)
{
  TRegExp::add(a1[6], a2, (a1[1] - *a1) >> 3);
  v6 = a1[1];
  v5 = a1[2];
  if (v6 >= v5)
  {
    v8 = *a1;
    v9 = v6 - *a1;
    v10 = v9 >> 3;
    v11 = (v9 >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v12 = v5 - v8;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFF8;
    v14 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v14);
    }

    *(8 * v10) = a3;
    v7 = 8 * v10 + 8;
    memcpy(0, v8, v9);
    v15 = *a1;
    *a1 = 0;
    a1[1] = v7;
    a1[2] = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v6 = a3;
    v7 = (v6 + 8);
  }

  a1[1] = v7;
}

void TLexerLexicon::addLiteral(const void **a1, uint64_t a2, uint64_t a3)
{
  v6 = v8;
  v7 = xmmword_26286B6F0;
  v9 = 1;
  TRegExp::stringToRegExp(a2, &v6, 0, 0);
  if (*(&v7 + 1) >= v7)
  {
    if (v9)
    {
      v10 = 0;
      TBuffer<wchar_t>::insert(&v6, *(&v7 + 1), &v10, 1uLL);
      v5 = v6;
      --*(&v7 + 1);
    }

    else
    {
      v5 = v6;
      if (v7)
      {
        v6[v7 - 1] = 0;
      }
    }
  }

  else
  {
    v5 = v6;
    v6[*(&v7 + 1)] = 0;
  }

  TLexerLexicon::addRegExp(a1, v5, a3);
  if (v9 == 1 && v6 != v8)
  {
    if (v6)
    {
      MEMORY[0x26672B1B0]();
    }
  }
}

void sub_262615080(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (LOBYTE(STACK[0x420]) == 1)
  {
    TSegmenter::findSegmentEnd(va, v2);
  }

  _Unwind_Resume(a1);
}

void TLexerLexicon::addString(void *a1, int a2, uint64_t a3, int a4)
{
  v7 = a1[4];
  v8 = a1[5];
  if (v7 >= v8)
  {
    v10 = a1[3];
    v11 = v7 - v10;
    v12 = (v7 - v10) >> 4;
    v13 = v12 + 1;
    if ((v12 + 1) >> 60)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v14 = v8 - v10;
    if (v14 >> 3 > v13)
    {
      v13 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TPTokenState>>((a1 + 3), v13);
    }

    v15 = 16 * v12;
    *v15 = a3;
    *(v15 + 8) = a2;
    *(v15 + 12) = a4;
    v9 = 16 * v12 + 16;
    memcpy(0, v10, v11);
    v16 = a1[3];
    a1[3] = 0;
    a1[4] = v9;
    a1[5] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v7 = a3;
    v9 = v7 + 16;
    *(v7 + 8) = a2;
    *(v7 + 12) = a4;
  }

  a1[4] = v9;
}