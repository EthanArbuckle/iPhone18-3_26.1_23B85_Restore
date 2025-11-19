void sub_26B533688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void fst::TropicalWeightTpl<float>::Zero()
{
  {
    fst::TropicalWeightTpl<float>::Zero(void)::zero = 2139095040;
  }
}

void fst::TropicalWeightTpl<float>::NoWeight()
{
  {
    fst::TropicalWeightTpl<float>::NoWeight(void)::no_weight = 2143289344;
  }
}

void fst::TropicalWeightTpl<float>::One()
{
  {
    fst::TropicalWeightTpl<float>::One(void)::one = 0;
  }
}

uint64_t fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetState(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    --*v1;
  }

  return result;
}

void CMDPNormalizer::normalize(CFLocaleRef *a1@<X0>, const char *a2@<X1>, std::string *a3@<X8>)
{
  v3 = a2;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  v6 = CFStringCreateWithCStringNoCopy(0, a2, 0x8000100u, *MEMORY[0x277CBED00]);
  MutableCopy = CFStringCreateMutableCopy(0, 0, v6);
  CFStringLowercase(MutableCopy, *a1);
  v8 = MEMORY[0x26D678290](*a1);
  v9 = CFStringCreateMutableCopy(0, 0, v8);
  v16.length = CFStringGetLength(v9);
  v16.location = 0;
  CFStringFindAndReplace(v9, @"_", @"-", v16, 0);
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x277CBECE8], v9, @"-");
  ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
  v12 = ValueAtIndex;
  if (ValueAtIndex)
  {
    CFRetain(ValueAtIndex);
  }

  if (CFStringCompare(v12, @"ar", 1uLL) == kCFCompareEqualTo)
  {
    CFStringTransform(MutableCopy, 0, *MEMORY[0x277CBF100], 0);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (ArrayBySeparatingStrings)
  {
    CFRelease(ArrayBySeparatingStrings);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (MutableCopy)
  {

    cmdp_string::CreateCppStringFromCFString(MutableCopy, 1, a3);
  }

  else if (v3[23] < 0)
  {
    v13 = *v3;
    v14 = *(v3 + 1);

    std::string::__init_copy_ctor_external(a3, v13, v14);
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *v3;
    a3->__r_.__value_.__r.__words[2] = *(v3 + 2);
  }
}

void cmdp_string::CreateCppStringFromCFString(const __CFString *this@<X0>, const __CFString *a2@<X1>, _BYTE *a3@<X8>)
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (this)
  {
    v4 = a2;
    Length = CFStringGetLength(this);
    CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v7 = MEMORY[0x28223BE20]();
    v9 = v12 - v8;
    CFStringGetCString(this, v12 - v8, v7 + 1, 0x8000100u);
    std::string::basic_string[abi:ne200100]<0>(a3, v9);
    if (v4)
    {
      CFRelease(this);
    }

    v10 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v11 = *MEMORY[0x277D85DE8];

    std::string::basic_string[abi:ne200100]<0>(a3, 0);
  }
}

void sub_26B533D30(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *CMDPNormalizer::homonymize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x28223BE20](a1, a2, a3, a4);
  v5 = v4;
  v7 = v6;
  v12 = *MEMORY[0x277D85DE8];
  {
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "");
  v8 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(CMDPNormalizer::homonymize(std::string const&)const::homonym_map, v5);
  result = CMDPNormalizer::homonymize(std::string const&)const::homonym_map;
  if (CMDPNormalizer::homonymize(std::string const&)const::homonym_map + 8 != v8)
  {
    v10 = std::map<std::string,std::string>::at(CMDPNormalizer::homonymize(std::string const&)const::homonym_map, v5);
    result = std::string::operator=(v7, v10);
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26B53858C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  v87 = -8208;
  v88 = v82;
  do
  {
    v88 = std::pair<std::string const,std::string>::~pair(v88) - 48;
    v87 += 48;
  }

  while (v87);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a57 < 0)
  {
    operator delete(*(v84 + 24));
  }

  if (a51 < 0)
  {
    operator delete(*v84);
  }

  if (a69 < 0)
  {
    operator delete(*(v84 + 72));
  }

  if (a63 < 0)
  {
    operator delete(*(v84 + 48));
  }

  if (a73 < 0)
  {
    operator delete(*(v84 + 120));
  }

  if (a72 < 0)
  {
    operator delete(*(v84 + 96));
  }

  if (a75 < 0)
  {
    operator delete(*(v84 + 168));
  }

  if (a74 < 0)
  {
    operator delete(*(v84 + 144));
  }

  if (a77 < 0)
  {
    operator delete(*(v84 + 216));
  }

  if (a76 < 0)
  {
    operator delete(*(v84 + 192));
  }

  if (a79 < 0)
  {
    operator delete(*(v84 + 264));
  }

  if (a78 < 0)
  {
    operator delete(*(v84 + 240));
  }

  if (a81 < 0)
  {
    operator delete(*(v84 + 312));
  }

  if (a80 < 0)
  {
    operator delete(*(v84 + 288));
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(*(v84 + 360));
  }

  if (a82 < 0)
  {
    operator delete(*(v84 + 336));
  }

  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(*(v84 + 408));
  }

  if (SLOBYTE(STACK[0x22F]) < 0)
  {
    operator delete(*(v84 + 384));
  }

  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(*(v84 + 456));
  }

  if (SLOBYTE(STACK[0x25F]) < 0)
  {
    operator delete(*(v84 + 432));
  }

  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(*(v84 + 504));
  }

  if (SLOBYTE(STACK[0x28F]) < 0)
  {
    operator delete(*(v84 + 480));
  }

  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(*(v84 + 552));
  }

  if (SLOBYTE(STACK[0x2BF]) < 0)
  {
    operator delete(*(v84 + 528));
  }

  if (SLOBYTE(STACK[0x307]) < 0)
  {
    operator delete(*(v84 + 600));
  }

  if (SLOBYTE(STACK[0x2EF]) < 0)
  {
    operator delete(*(v84 + 576));
  }

  if (SLOBYTE(STACK[0x337]) < 0)
  {
    operator delete(*(v84 + 648));
  }

  if (SLOBYTE(STACK[0x31F]) < 0)
  {
    operator delete(*(v84 + 624));
  }

  if (SLOBYTE(STACK[0x367]) < 0)
  {
    operator delete(*(v84 + 696));
  }

  if (SLOBYTE(STACK[0x34F]) < 0)
  {
    operator delete(*(v84 + 672));
  }

  if (SLOBYTE(STACK[0x397]) < 0)
  {
    operator delete(*(v84 + 744));
  }

  if (SLOBYTE(STACK[0x37F]) < 0)
  {
    operator delete(*(v84 + 720));
  }

  if (SLOBYTE(STACK[0x3C7]) < 0)
  {
    operator delete(*(v84 + 792));
  }

  if (SLOBYTE(STACK[0x3AF]) < 0)
  {
    operator delete(*(v84 + 768));
  }

  if (SLOBYTE(STACK[0x3F7]) < 0)
  {
    operator delete(*(v84 + 840));
  }

  if (SLOBYTE(STACK[0x3DF]) < 0)
  {
    operator delete(*(v84 + 816));
  }

  if (SLOBYTE(STACK[0x427]) < 0)
  {
    operator delete(*(v84 + 888));
  }

  if (SLOBYTE(STACK[0x40F]) < 0)
  {
    operator delete(*(v84 + 864));
  }

  if (SLOBYTE(STACK[0x457]) < 0)
  {
    operator delete(*(v84 + 936));
  }

  if (SLOBYTE(STACK[0x43F]) < 0)
  {
    operator delete(*(v84 + 912));
  }

  if (SLOBYTE(STACK[0x487]) < 0)
  {
    operator delete(*(v84 + 984));
  }

  if (SLOBYTE(STACK[0x46F]) < 0)
  {
    operator delete(*(v84 + 960));
  }

  if (SLOBYTE(STACK[0x4B7]) < 0)
  {
    operator delete(*(v84 + 1032));
  }

  if (SLOBYTE(STACK[0x49F]) < 0)
  {
    operator delete(*(v84 + 1008));
  }

  if (SLOBYTE(STACK[0x4E7]) < 0)
  {
    operator delete(*(v84 + 1080));
  }

  if (SLOBYTE(STACK[0x4CF]) < 0)
  {
    operator delete(*(v84 + 1056));
  }

  if (SLOBYTE(STACK[0x517]) < 0)
  {
    operator delete(*(v84 + 1128));
  }

  if (SLOBYTE(STACK[0x4FF]) < 0)
  {
    operator delete(*(v84 + 1104));
  }

  if (SLOBYTE(STACK[0x547]) < 0)
  {
    operator delete(*(v84 + 1176));
  }

  if (SLOBYTE(STACK[0x52F]) < 0)
  {
    operator delete(*(v84 + 1152));
  }

  if (SLOBYTE(STACK[0x577]) < 0)
  {
    operator delete(*(v84 + 1224));
  }

  if (SLOBYTE(STACK[0x55F]) < 0)
  {
    operator delete(*(v84 + 1200));
  }

  if (SLOBYTE(STACK[0x5A7]) < 0)
  {
    operator delete(*(v84 + 1272));
  }

  if (SLOBYTE(STACK[0x58F]) < 0)
  {
    operator delete(*(v84 + 1248));
  }

  if (SLOBYTE(STACK[0x5D7]) < 0)
  {
    operator delete(*(v84 + 1320));
  }

  if (SLOBYTE(STACK[0x5BF]) < 0)
  {
    operator delete(*(v84 + 1296));
  }

  if (SLOBYTE(STACK[0x607]) < 0)
  {
    operator delete(*(v84 + 1368));
  }

  if (SLOBYTE(STACK[0x5EF]) < 0)
  {
    operator delete(*(v84 + 1344));
  }

  if (SLOBYTE(STACK[0x637]) < 0)
  {
    operator delete(*(v84 + 1416));
  }

  if (SLOBYTE(STACK[0x61F]) < 0)
  {
    operator delete(*(v84 + 1392));
  }

  if (SLOBYTE(STACK[0x667]) < 0)
  {
    operator delete(*(v84 + 1464));
  }

  if (SLOBYTE(STACK[0x64F]) < 0)
  {
    operator delete(*(v84 + 1440));
  }

  if (SLOBYTE(STACK[0x697]) < 0)
  {
    operator delete(*(v84 + 1512));
  }

  if (SLOBYTE(STACK[0x67F]) < 0)
  {
    operator delete(*(v84 + 1488));
  }

  if (SLOBYTE(STACK[0x6C7]) < 0)
  {
    operator delete(*(v84 + 1560));
  }

  if (SLOBYTE(STACK[0x6AF]) < 0)
  {
    operator delete(*(v84 + 1536));
  }

  if (SLOBYTE(STACK[0x6F7]) < 0)
  {
    operator delete(*(v84 + 1608));
  }

  if (SLOBYTE(STACK[0x6DF]) < 0)
  {
    operator delete(*(v84 + 1584));
  }

  if (SLOBYTE(STACK[0x727]) < 0)
  {
    operator delete(*(v84 + 1656));
  }

  if (SLOBYTE(STACK[0x70F]) < 0)
  {
    operator delete(*(v84 + 1632));
  }

  if (SLOBYTE(STACK[0x757]) < 0)
  {
    operator delete(*(v84 + 1704));
  }

  if (SLOBYTE(STACK[0x73F]) < 0)
  {
    operator delete(*(v84 + 1680));
  }

  if (SLOBYTE(STACK[0x787]) < 0)
  {
    operator delete(*(v84 + 1752));
  }

  if (SLOBYTE(STACK[0x76F]) < 0)
  {
    operator delete(*(v84 + 1728));
  }

  if (SLOBYTE(STACK[0x7B7]) < 0)
  {
    operator delete(*(v84 + 1800));
  }

  if (SLOBYTE(STACK[0x79F]) < 0)
  {
    operator delete(*(v84 + 1776));
  }

  if (SLOBYTE(STACK[0x7E7]) < 0)
  {
    operator delete(*(v84 + 1848));
  }

  if (SLOBYTE(STACK[0x7CF]) < 0)
  {
    operator delete(*(v84 + 1824));
  }

  if (SLOBYTE(STACK[0x817]) < 0)
  {
    operator delete(*(v84 + 1896));
  }

  if (SLOBYTE(STACK[0x7FF]) < 0)
  {
    operator delete(*(v84 + 1872));
  }

  if (SLOBYTE(STACK[0x847]) < 0)
  {
    operator delete(*(v84 + 1944));
  }

  if (SLOBYTE(STACK[0x82F]) < 0)
  {
    operator delete(*(v84 + 1920));
  }

  if (SLOBYTE(STACK[0x877]) < 0)
  {
    operator delete(*(v84 + 1992));
  }

  if (SLOBYTE(STACK[0x85F]) < 0)
  {
    operator delete(*(v84 + 1968));
  }

  if (SLOBYTE(STACK[0x8A7]) < 0)
  {
    operator delete(*(v84 + 2040));
  }

  if (SLOBYTE(STACK[0x88F]) < 0)
  {
    operator delete(*(v84 + 2016));
  }

  if (SLOBYTE(STACK[0x8D7]) < 0)
  {
    operator delete(*(v84 + 2088));
  }

  if (SLOBYTE(STACK[0x8BF]) < 0)
  {
    operator delete(*(v84 + 2064));
  }

  if (SLOBYTE(STACK[0x907]) < 0)
  {
    operator delete(*(v84 + 2136));
  }

  if (SLOBYTE(STACK[0x8EF]) < 0)
  {
    operator delete(*(v84 + 2112));
  }

  if (SLOBYTE(STACK[0x937]) < 0)
  {
    operator delete(*(v84 + 2184));
  }

  if (SLOBYTE(STACK[0x91F]) < 0)
  {
    operator delete(*(v84 + 2160));
  }

  if (SLOBYTE(STACK[0x967]) < 0)
  {
    operator delete(*(v84 + 2232));
  }

  if (SLOBYTE(STACK[0x94F]) < 0)
  {
    operator delete(*(v84 + 2208));
  }

  if (SLOBYTE(STACK[0x997]) < 0)
  {
    operator delete(*(v84 + 2280));
  }

  if (SLOBYTE(STACK[0x97F]) < 0)
  {
    operator delete(*(v84 + 2256));
  }

  if (SLOBYTE(STACK[0x9C7]) < 0)
  {
    operator delete(*(v84 + 2328));
  }

  if (SLOBYTE(STACK[0x9AF]) < 0)
  {
    operator delete(*(v84 + 2304));
  }

  if (SLOBYTE(STACK[0x9F7]) < 0)
  {
    operator delete(*(v84 + 2376));
  }

  if (SLOBYTE(STACK[0x9DF]) < 0)
  {
    operator delete(*(v84 + 2352));
  }

  if (SLOBYTE(STACK[0xA27]) < 0)
  {
    operator delete(*(v84 + 2424));
  }

  if (SLOBYTE(STACK[0xA0F]) < 0)
  {
    operator delete(*(v84 + 2400));
  }

  if (SLOBYTE(STACK[0xA57]) < 0)
  {
    operator delete(*(v84 + 2472));
  }

  if (SLOBYTE(STACK[0xA3F]) < 0)
  {
    operator delete(*(v84 + 2448));
  }

  if (SLOBYTE(STACK[0xA87]) < 0)
  {
    operator delete(*(v84 + 2520));
  }

  if (SLOBYTE(STACK[0xA6F]) < 0)
  {
    operator delete(*(v84 + 2496));
  }

  if (SLOBYTE(STACK[0xAB7]) < 0)
  {
    operator delete(*(v84 + 2568));
  }

  if (SLOBYTE(STACK[0xA9F]) < 0)
  {
    operator delete(*(v84 + 2544));
  }

  if (SLOBYTE(STACK[0xAE7]) < 0)
  {
    operator delete(*(v84 + 2616));
  }

  if (SLOBYTE(STACK[0xACF]) < 0)
  {
    operator delete(*(v84 + 2592));
  }

  if (SLOBYTE(STACK[0xB17]) < 0)
  {
    operator delete(*(v84 + 2664));
  }

  if (SLOBYTE(STACK[0xAFF]) < 0)
  {
    operator delete(*(v84 + 2640));
  }

  if (SLOBYTE(STACK[0xB47]) < 0)
  {
    operator delete(*(v84 + 2712));
  }

  if (SLOBYTE(STACK[0xB2F]) < 0)
  {
    operator delete(*(v84 + 2688));
  }

  if (SLOBYTE(STACK[0xB77]) < 0)
  {
    operator delete(*(v84 + 2760));
  }

  if (SLOBYTE(STACK[0xB5F]) < 0)
  {
    operator delete(*(v84 + 2736));
  }

  if (SLOBYTE(STACK[0xBA7]) < 0)
  {
    operator delete(*(v84 + 2808));
  }

  if (SLOBYTE(STACK[0xB8F]) < 0)
  {
    operator delete(*(v84 + 2784));
  }

  if (SLOBYTE(STACK[0xBD7]) < 0)
  {
    operator delete(*(v84 + 2856));
  }

  if (SLOBYTE(STACK[0xBBF]) < 0)
  {
    operator delete(*(v84 + 2832));
  }

  if (SLOBYTE(STACK[0xC07]) < 0)
  {
    operator delete(*(v84 + 2904));
  }

  if (SLOBYTE(STACK[0xBEF]) < 0)
  {
    operator delete(*(v84 + 2880));
  }

  if (SLOBYTE(STACK[0xC37]) < 0)
  {
    operator delete(*(v84 + 2952));
  }

  if (SLOBYTE(STACK[0xC1F]) < 0)
  {
    operator delete(*(v84 + 2928));
  }

  if (SLOBYTE(STACK[0xC67]) < 0)
  {
    operator delete(*(v84 + 3000));
  }

  if (SLOBYTE(STACK[0xC4F]) < 0)
  {
    operator delete(*(v84 + 2976));
  }

  if (SLOBYTE(STACK[0xC97]) < 0)
  {
    operator delete(*(v84 + 3048));
  }

  if (SLOBYTE(STACK[0xC7F]) < 0)
  {
    operator delete(*(v84 + 3024));
  }

  if (SLOBYTE(STACK[0xCC7]) < 0)
  {
    operator delete(*(v84 + 3096));
  }

  if (SLOBYTE(STACK[0xCAF]) < 0)
  {
    operator delete(*(v84 + 3072));
  }

  if (SLOBYTE(STACK[0xCF7]) < 0)
  {
    operator delete(*(v84 + 3144));
  }

  if (SLOBYTE(STACK[0xCDF]) < 0)
  {
    operator delete(*(v84 + 3120));
  }

  if (SLOBYTE(STACK[0xD27]) < 0)
  {
    operator delete(*(v84 + 3192));
  }

  if (SLOBYTE(STACK[0xD0F]) < 0)
  {
    operator delete(*(v84 + 3168));
  }

  if (SLOBYTE(STACK[0xD57]) < 0)
  {
    operator delete(*(v84 + 3240));
  }

  if (SLOBYTE(STACK[0xD3F]) < 0)
  {
    operator delete(*(v84 + 3216));
  }

  if (SLOBYTE(STACK[0xD87]) < 0)
  {
    operator delete(*(v84 + 3288));
  }

  if (SLOBYTE(STACK[0xD6F]) < 0)
  {
    operator delete(*(v84 + 3264));
  }

  if (SLOBYTE(STACK[0xDB7]) < 0)
  {
    operator delete(*(v84 + 3336));
  }

  if (SLOBYTE(STACK[0xD9F]) < 0)
  {
    operator delete(*(v84 + 3312));
  }

  if (SLOBYTE(STACK[0xDE7]) < 0)
  {
    operator delete(*(v84 + 3384));
  }

  if (SLOBYTE(STACK[0xDCF]) < 0)
  {
    operator delete(*(v84 + 3360));
  }

  if (SLOBYTE(STACK[0xE17]) < 0)
  {
    operator delete(*(v84 + 3432));
  }

  if (SLOBYTE(STACK[0xDFF]) < 0)
  {
    operator delete(*(v84 + 3408));
  }

  if (SLOBYTE(STACK[0xE47]) < 0)
  {
    operator delete(*(v84 + 3480));
  }

  if (SLOBYTE(STACK[0xE2F]) < 0)
  {
    operator delete(*(v84 + 3456));
  }

  if (SLOBYTE(STACK[0xE77]) < 0)
  {
    operator delete(*(v84 + 3528));
  }

  if (SLOBYTE(STACK[0xE5F]) < 0)
  {
    operator delete(*(v84 + 3504));
  }

  if (SLOBYTE(STACK[0xEA7]) < 0)
  {
    operator delete(*(v84 + 3576));
  }

  if (SLOBYTE(STACK[0xE8F]) < 0)
  {
    operator delete(*(v84 + 3552));
  }

  if (SLOBYTE(STACK[0xED7]) < 0)
  {
    operator delete(*(v84 + 3624));
  }

  if (SLOBYTE(STACK[0xEBF]) < 0)
  {
    operator delete(*(v84 + 3600));
  }

  if (SLOBYTE(STACK[0xF07]) < 0)
  {
    operator delete(*(v84 + 3672));
  }

  if (SLOBYTE(STACK[0xEEF]) < 0)
  {
    operator delete(*(v84 + 3648));
  }

  if (SLOBYTE(STACK[0xF37]) < 0)
  {
    operator delete(*(v84 + 3720));
  }

  if (SLOBYTE(STACK[0xF1F]) < 0)
  {
    operator delete(*(v84 + 3696));
  }

  if (SLOBYTE(STACK[0xF67]) < 0)
  {
    operator delete(*(v84 + 3768));
  }

  if (SLOBYTE(STACK[0xF4F]) < 0)
  {
    operator delete(*(v84 + 3744));
  }

  if (*(v84 + 3839) < 0)
  {
    operator delete(*(v84 + 3816));
  }

  if (SLOBYTE(STACK[0xF7F]) < 0)
  {
    operator delete(*(v84 + 3792));
  }

  if (*(v84 + 3887) < 0)
  {
    operator delete(*(v84 + 3864));
  }

  if (*(v84 + 3863) < 0)
  {
    operator delete(*(v84 + 3840));
  }

  if (*(v84 + 3935) < 0)
  {
    operator delete(*(v84 + 3912));
  }

  if (*(v84 + 3911) < 0)
  {
    operator delete(*(v84 + 3888));
  }

  if (*(v84 + 3983) < 0)
  {
    operator delete(*(v84 + 3960));
  }

  if (*(v84 + 3959) < 0)
  {
    operator delete(*(v84 + 3936));
  }

  if (*(v84 + 4031) < 0)
  {
    operator delete(*(v84 + 4008));
  }

  if (*(v84 + 4007) < 0)
  {
    operator delete(*(v84 + 3984));
  }

  if (*(v84 + 4079) < 0)
  {
    operator delete(*(v84 + 4056));
  }

  if (*(v84 + 4055) < 0)
  {
    operator delete(*(v84 + 4032));
  }

  if (*(v83 + 47) < 0)
  {
    operator delete(*(v83 + 24));
  }

  if (*(v83 + 23) < 0)
  {
    operator delete(*v83);
  }

  if (*(v83 + 95) < 0)
  {
    operator delete(*(v83 + 72));
  }

  if (*(v83 + 71) < 0)
  {
    operator delete(*(v83 + 48));
  }

  if (*(v83 + 143) < 0)
  {
    operator delete(*(v83 + 120));
  }

  if (*(v83 + 119) < 0)
  {
    operator delete(*(v83 + 96));
  }

  if (*(v83 + 191) < 0)
  {
    operator delete(*(v83 + 168));
  }

  if (*(v83 + 167) < 0)
  {
    operator delete(*(v83 + 144));
  }

  if (*(v83 + 239) < 0)
  {
    operator delete(*(v83 + 216));
  }

  if (*(v83 + 215) < 0)
  {
    operator delete(*(v83 + 192));
  }

  if (*(v83 + 287) < 0)
  {
    operator delete(*(v83 + 264));
  }

  if (*(v83 + 263) < 0)
  {
    operator delete(*(v83 + 240));
  }

  if (*(v83 + 335) < 0)
  {
    operator delete(*(v83 + 312));
  }

  if (*(v83 + 311) < 0)
  {
    operator delete(*(v83 + 288));
  }

  if (*(v83 + 383) < 0)
  {
    operator delete(*(v83 + 360));
  }

  if (*(v83 + 359) < 0)
  {
    operator delete(*(v83 + 336));
  }

  if (*(v83 + 431) < 0)
  {
    operator delete(*(v83 + 408));
  }

  if (*(v83 + 407) < 0)
  {
    operator delete(*(v83 + 384));
  }

  if (*(v83 + 479) < 0)
  {
    operator delete(*(v83 + 456));
  }

  if (*(v83 + 455) < 0)
  {
    operator delete(*(v83 + 432));
  }

  if (*(v83 + 527) < 0)
  {
    operator delete(*(v83 + 504));
  }

  if (*(v83 + 503) < 0)
  {
    operator delete(*(v83 + 480));
  }

  if (*(v83 + 575) < 0)
  {
    operator delete(*(v83 + 552));
  }

  if (*(v83 + 551) < 0)
  {
    operator delete(*(v83 + 528));
  }

  if (*(v83 + 623) < 0)
  {
    operator delete(*(v83 + 600));
  }

  if (*(v83 + 599) < 0)
  {
    operator delete(*(v83 + 576));
  }

  if (*(v83 + 671) < 0)
  {
    operator delete(*(v83 + 648));
  }

  if (*(v83 + 647) < 0)
  {
    operator delete(*(v83 + 624));
  }

  if (*(v83 + 719) < 0)
  {
    operator delete(*(v83 + 696));
  }

  if (*(v83 + 695) < 0)
  {
    operator delete(*(v83 + 672));
  }

  if (*(v83 + 767) < 0)
  {
    operator delete(*(v83 + 744));
  }

  if (*(v83 + 743) < 0)
  {
    operator delete(*(v83 + 720));
  }

  if (*(v83 + 815) < 0)
  {
    operator delete(*(v83 + 792));
  }

  if (*(v83 + 791) < 0)
  {
    operator delete(*(v83 + 768));
  }

  if (*(v83 + 863) < 0)
  {
    operator delete(*(v83 + 840));
  }

  if (*(v83 + 839) < 0)
  {
    operator delete(*(v83 + 816));
  }

  if (*(v83 + 911) < 0)
  {
    operator delete(*(v83 + 888));
  }

  if (*(v83 + 887) < 0)
  {
    operator delete(*(v83 + 864));
  }

  if (*(v83 + 959) < 0)
  {
    operator delete(*(v83 + 936));
  }

  if (*(v83 + 935) < 0)
  {
    operator delete(*(v83 + 912));
  }

  if (*(v83 + 1007) < 0)
  {
    operator delete(*(v83 + 984));
  }

  if (*(v83 + 983) < 0)
  {
    operator delete(*(v83 + 960));
  }

  if (*(v83 + 1055) < 0)
  {
    operator delete(*(v83 + 1032));
  }

  if (*(v83 + 1031) < 0)
  {
    operator delete(*(v83 + 1008));
  }

  if (*(v83 + 1103) < 0)
  {
    operator delete(*(v83 + 1080));
  }

  if (*(v83 + 1079) < 0)
  {
    operator delete(*(v83 + 1056));
  }

  if (*(v83 + 1151) < 0)
  {
    operator delete(*(v83 + 1128));
  }

  if (*(v83 + 1127) < 0)
  {
    operator delete(*(v83 + 1104));
  }

  if (*(v83 + 1199) < 0)
  {
    operator delete(*(v83 + 1176));
  }

  if (*(v83 + 1175) < 0)
  {
    operator delete(*(v83 + 1152));
  }

  if (*(v83 + 1247) < 0)
  {
    operator delete(*(v83 + 1224));
  }

  if (*(v83 + 1223) < 0)
  {
    operator delete(*(v83 + 1200));
  }

  if (*(v83 + 1295) < 0)
  {
    operator delete(*(v83 + 1272));
  }

  if (*(v83 + 1271) < 0)
  {
    operator delete(*(v83 + 1248));
  }

  if (*(v83 + 1343) < 0)
  {
    operator delete(*(v83 + 1320));
  }

  if (*(v83 + 1319) < 0)
  {
    operator delete(*(v83 + 1296));
  }

  if (*(v83 + 1391) < 0)
  {
    operator delete(*(v83 + 1368));
  }

  if (*(v83 + 1367) < 0)
  {
    operator delete(*(v83 + 1344));
  }

  if (*(v83 + 1439) < 0)
  {
    operator delete(*(v83 + 1416));
  }

  if (*(v83 + 1415) < 0)
  {
    operator delete(*(v83 + 1392));
  }

  if (*(v83 + 1487) < 0)
  {
    operator delete(*(v83 + 1464));
  }

  if (*(v83 + 1463) < 0)
  {
    operator delete(*(v83 + 1440));
  }

  if (*(v83 + 1535) < 0)
  {
    operator delete(*(v83 + 1512));
  }

  if (*(v83 + 1511) < 0)
  {
    operator delete(*(v83 + 1488));
  }

  if (*(v83 + 1583) < 0)
  {
    operator delete(*(v83 + 1560));
  }

  if (*(v83 + 1559) < 0)
  {
    operator delete(*(v83 + 1536));
  }

  if (*(v83 + 1631) < 0)
  {
    operator delete(*(v83 + 1608));
  }

  if (*(v83 + 1607) < 0)
  {
    operator delete(*(v83 + 1584));
  }

  if (*(v83 + 1679) < 0)
  {
    operator delete(*(v83 + 1656));
  }

  if (*(v83 + 1655) < 0)
  {
    operator delete(*(v83 + 1632));
  }

  if (*(v83 + 1727) < 0)
  {
    operator delete(*(v83 + 1704));
  }

  if (*(v83 + 1703) < 0)
  {
    operator delete(*(v83 + 1680));
  }

  if (*(v83 + 1775) < 0)
  {
    operator delete(*(v83 + 1752));
  }

  if (*(v83 + 1751) < 0)
  {
    operator delete(*(v83 + 1728));
  }

  if (*(v83 + 1823) < 0)
  {
    operator delete(*(v83 + 1800));
  }

  if (*(v83 + 1799) < 0)
  {
    operator delete(*(v83 + 1776));
  }

  if (*(v83 + 1871) < 0)
  {
    operator delete(*(v83 + 1848));
  }

  if (*(v83 + 1847) < 0)
  {
    operator delete(*(v83 + 1824));
  }

  if (*(v83 + 1919) < 0)
  {
    operator delete(*(v83 + 1896));
  }

  if (*(v83 + 1895) < 0)
  {
    operator delete(*(v83 + 1872));
  }

  if (*(v83 + 1967) < 0)
  {
    operator delete(*(v83 + 1944));
  }

  if (*(v83 + 1943) < 0)
  {
    operator delete(*(v83 + 1920));
  }

  if (*(v83 + 2015) < 0)
  {
    operator delete(*(v83 + 1992));
  }

  if (*(v83 + 1991) < 0)
  {
    operator delete(*(v83 + 1968));
  }

  if (*(v83 + 2063) < 0)
  {
    operator delete(*(v83 + 2040));
  }

  if (*(v83 + 2039) < 0)
  {
    operator delete(*(v83 + 2016));
  }

  if (*(v83 + 2111) < 0)
  {
    operator delete(*(v83 + 2088));
  }

  if (*(v83 + 2087) < 0)
  {
    operator delete(*(v83 + 2064));
  }

  if (*(v83 + 2159) < 0)
  {
    operator delete(*(v83 + 2136));
  }

  if (*(v83 + 2135) < 0)
  {
    operator delete(*(v83 + 2112));
  }

  if (*(v83 + 2207) < 0)
  {
    operator delete(*(v83 + 2184));
  }

  if (*(v83 + 2183) < 0)
  {
    operator delete(*(v83 + 2160));
  }

  if (*(v83 + 2255) < 0)
  {
    operator delete(*(v83 + 2232));
  }

  if (*(v83 + 2231) < 0)
  {
    operator delete(*(v83 + 2208));
  }

  if (*(v83 + 2303) < 0)
  {
    operator delete(*(v83 + 2280));
  }

  if (*(v83 + 2279) < 0)
  {
    operator delete(*(v83 + 2256));
  }

  if (*(v83 + 2351) < 0)
  {
    operator delete(*(v83 + 2328));
  }

  if (*(v83 + 2327) < 0)
  {
    operator delete(*(v83 + 2304));
  }

  if (*(v83 + 2399) < 0)
  {
    operator delete(*(v83 + 2376));
  }

  if (*(v83 + 2375) < 0)
  {
    operator delete(*(v83 + 2352));
  }

  if (*(v83 + 2447) < 0)
  {
    operator delete(*(v83 + 2424));
  }

  if (*(v83 + 2423) < 0)
  {
    operator delete(*(v83 + 2400));
  }

  if (*(v83 + 2495) < 0)
  {
    operator delete(*(v83 + 2472));
  }

  if (*(v83 + 2471) < 0)
  {
    operator delete(*(v83 + 2448));
  }

  if (*(v83 + 2543) < 0)
  {
    operator delete(*(v83 + 2520));
  }

  if (*(v83 + 2519) < 0)
  {
    operator delete(*(v83 + 2496));
  }

  if (*(v83 + 2591) < 0)
  {
    operator delete(*(v83 + 2568));
  }

  if (*(v83 + 2567) < 0)
  {
    operator delete(*(v83 + 2544));
  }

  if (*(v83 + 2639) < 0)
  {
    operator delete(*(v83 + 2616));
  }

  if (*(v83 + 2615) < 0)
  {
    operator delete(*(v83 + 2592));
  }

  if (*(v83 + 2687) < 0)
  {
    operator delete(*(v83 + 2664));
  }

  if (*(v83 + 2663) < 0)
  {
    operator delete(*(v83 + 2640));
  }

  if (*(v83 + 2735) < 0)
  {
    operator delete(*(v83 + 2712));
  }

  if (*(v83 + 2711) < 0)
  {
    operator delete(*(v83 + 2688));
  }

  if (*(v83 + 2783) < 0)
  {
    operator delete(*(v83 + 2760));
  }

  if (*(v83 + 2759) < 0)
  {
    operator delete(*(v83 + 2736));
  }

  if (*(v83 + 2831) < 0)
  {
    operator delete(*(v83 + 2808));
  }

  if (*(v83 + 2807) < 0)
  {
    operator delete(*(v83 + 2784));
  }

  if (*(v83 + 2879) < 0)
  {
    operator delete(*(v83 + 2856));
  }

  if (*(v83 + 2855) < 0)
  {
    operator delete(*(v83 + 2832));
  }

  if (*(v83 + 2927) < 0)
  {
    operator delete(*(v83 + 2904));
  }

  if (*(v83 + 2903) < 0)
  {
    operator delete(*(v83 + 2880));
  }

  if (*(v83 + 2975) < 0)
  {
    operator delete(*(v83 + 2952));
  }

  if (*(v83 + 2951) < 0)
  {
    operator delete(*(v83 + 2928));
  }

  if (*(v83 + 3023) < 0)
  {
    operator delete(*(v83 + 3000));
  }

  if (*(v83 + 2999) < 0)
  {
    operator delete(*(v83 + 2976));
  }

  if (*(v83 + 3071) < 0)
  {
    operator delete(*(v83 + 3048));
  }

  if (*(v83 + 3047) < 0)
  {
    operator delete(*(v83 + 3024));
  }

  if (*(v83 + 3119) < 0)
  {
    operator delete(*(v83 + 3096));
  }

  if (*(v83 + 3095) < 0)
  {
    operator delete(*(v83 + 3072));
  }

  if (*(v83 + 3167) < 0)
  {
    operator delete(*(v83 + 3144));
  }

  if (*(v83 + 3143) < 0)
  {
    operator delete(*(v83 + 3120));
  }

  if (*(v83 + 3215) < 0)
  {
    operator delete(*(v83 + 3192));
  }

  if (*(v83 + 3191) < 0)
  {
    operator delete(*(v83 + 3168));
  }

  if (*(v83 + 3263) < 0)
  {
    operator delete(*(v83 + 3240));
  }

  if (*(v83 + 3239) < 0)
  {
    operator delete(*(v83 + 3216));
  }

  if (*(v83 + 3311) < 0)
  {
    operator delete(*(v83 + 3288));
  }

  if (*(v83 + 3287) < 0)
  {
    operator delete(*(v83 + 3264));
  }

  if (*(v83 + 3359) < 0)
  {
    operator delete(*(v83 + 3336));
  }

  if (*(v83 + 3335) < 0)
  {
    operator delete(*(v83 + 3312));
  }

  if (*(v83 + 3407) < 0)
  {
    operator delete(*(v83 + 3384));
  }

  if (*(v83 + 3383) < 0)
  {
    operator delete(*(v83 + 3360));
  }

  if (*(v83 + 3455) < 0)
  {
    operator delete(*(v83 + 3432));
  }

  if (*(v83 + 3431) < 0)
  {
    operator delete(*(v83 + 3408));
  }

  if (*(v83 + 3503) < 0)
  {
    operator delete(*(v83 + 3480));
  }

  if (*(v83 + 3479) < 0)
  {
    operator delete(*(v83 + 3456));
  }

  if (*(v83 + 3551) < 0)
  {
    operator delete(*(v83 + 3528));
  }

  if (*(v83 + 3527) < 0)
  {
    operator delete(*(v83 + 3504));
  }

  if (*(v83 + 3599) < 0)
  {
    operator delete(*(v83 + 3576));
  }

  if (*(v83 + 3575) < 0)
  {
    operator delete(*(v83 + 3552));
  }

  if (*(v83 + 3647) < 0)
  {
    operator delete(*(v83 + 3624));
  }

  if (*(v83 + 3623) < 0)
  {
    operator delete(*(v83 + 3600));
  }

  if (*(v83 + 3695) < 0)
  {
    operator delete(*(v83 + 3672));
  }

  if (*(v83 + 3671) < 0)
  {
    operator delete(*(v83 + 3648));
  }

  if (*(v83 + 3743) < 0)
  {
    operator delete(*(v83 + 3720));
  }

  if (*(v83 + 3719) < 0)
  {
    operator delete(*(v83 + 3696));
  }

  if (*(v83 + 3791) < 0)
  {
    operator delete(*(v83 + 3768));
  }

  if (*(v83 + 3767) < 0)
  {
    operator delete(*(v83 + 3744));
  }

  if (*(v83 + 3839) < 0)
  {
    operator delete(*(v83 + 3816));
  }

  if (*(v83 + 3815) < 0)
  {
    operator delete(*(v83 + 3792));
  }

  if (*(v83 + 3887) < 0)
  {
    operator delete(*(v83 + 3864));
  }

  if (*(v83 + 3863) < 0)
  {
    operator delete(*(v83 + 3840));
  }

  if (*(v83 + 3935) < 0)
  {
    operator delete(*(v83 + 3912));
  }

  if (*(v83 + 3911) < 0)
  {
    operator delete(*(v83 + 3888));
  }

  if (*(v83 + 3983) < 0)
  {
    operator delete(*(v83 + 3960));
  }

  if (*(v83 + 3959) < 0)
  {
    operator delete(*(v83 + 3936));
  }

  MEMORY[0x26D6787B0](v85, 0x1020C4062D53EE8);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string const,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::map<std::string,std::string>::at(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  return v2 + 56;
}

__CFArray *CMDPNormalizer::tokenizedString(CMDPNormalizer *this, const __CFString *a2)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (a2)
  {
    Length = CFStringGetLength(a2);
    v18.location = 0;
    v18.length = Length;
    v6 = CFStringTokenizerCreate(0, a2, v18, 4uLL, *this);
    if (CFStringTokenizerAdvanceToNextToken(v6))
    {
      v7 = Length - 1;
      do
      {
        CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v6);
        v9 = CurrentTokenRange.length;
        if (RDGetLegitimateCharacters(void)::s_init_char_set != -1)
        {
          CMDPNormalizer::tokenizedString();
        }

        if (CFStringFindCharacterFromSet(a2, RDGetLegitimateCharacters(void)::s_legit_chars, CurrentTokenRange, 0, &v17))
        {
          v10 = CurrentTokenRange.length + CurrentTokenRange.location;
LABEL_8:
          if (v10 < v7)
          {
            if (RDGetLegitimateCharacters(void)::s_init_char_set != -1)
            {
              CMDPNormalizer::tokenizedString();
            }

            v11 = RDGetLegitimateCharacters(void)::s_legit_chars;
            CharacterAtIndex = CFStringGetCharacterAtIndex(a2, v10 + 1);
            if (CFCharacterSetIsCharacterMember(v11, CharacterAtIndex))
            {
              v13 = CFStringGetCharacterAtIndex(a2, v10);
              if ((v13 - 8208) < 2 || v13 == 173 || v13 == 45)
              {
                while (CFStringTokenizerAdvanceToNextToken(v6))
                {
                  v14 = CFStringTokenizerGetCurrentTokenRange(v6);
                  if (v14.location > v10)
                  {
                    v9 = v14.length - CurrentTokenRange.location + v14.location;
                    v10 = v14.length + v14.location;
                    goto LABEL_8;
                  }
                }
              }
            }
          }

          v19.location = CurrentTokenRange.location;
          v19.length = v9;
          v15 = CFStringCreateWithSubstring(0, a2, v19);
          CFArrayAppendValue(Mutable, v15);
          CFRelease(v15);
        }
      }

      while (CFStringTokenizerAdvanceToNextToken(v6));
    }

    CFRelease(v6);
  }

  return Mutable;
}

uint64_t std::pair<std::string const,std::string>::pair[abi:ne200100]<std::string,char const(&)[2],0>(uint64_t a1, __int128 *a2, char *__s)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 24), __s);
  return a1;
}

void sub_26B53B100(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string const,std::string>::pair[abi:ne200100]<std::string,char const(&)[3],0>(uint64_t a1, __int128 *a2, char *__s)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 24), __s);
  return a1;
}

void sub_26B53B160(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL25RDGetLegitimateCharactersv_block_invoke()
{
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
  MutableCopy = CFCharacterSetCreateMutableCopy(0, Predefined);
  v2 = CFCharacterSetGetPredefined(kCFCharacterSetPunctuation);
  CFCharacterSetUnion(MutableCopy, v2);
  CFCharacterSetInvert(MutableCopy);
  RDGetLegitimateCharacters(void)::s_legit_chars = MutableCopy;
}

void *std::map<std::string,std::string>::map[abi:ne200100](void *a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(a1, v4, a2);
      a2 += 6;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(void *a1, uint64_t a2, const void **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__construct_node<std::pair<std::string const,std::string> const&>();
  }

  return v3;
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:ne200100](a1, a5, (a2 + 32)))
  {
    if (!std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:ne200100](a1, (a2 + 32), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = (a2 + 8);
    v13 = *(a2 + 8);
    if (v13)
    {
      v14 = *(a2 + 8);
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:ne200100](a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 8;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = *(v16 + 16);
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:ne200100](a1, (v12 + 32), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, a3, a5);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

BOOL std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:ne200100](a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

std::string *std::pair<std::string const,std::string>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  return this;
}

void sub_26B53B6D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>((a2 + 4));

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:ne200100](a1, (v3 + 32), a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>::operator()[abi:ne200100](a1, a2, (v6 + 32)))
  {
    return v2;
  }

  return v6;
}

void CMDPToken::CMDPToken(std::string *this, __int128 *a2, std::string::value_type a3, std::string::value_type a4, double a5, double a6, double a7, double a8)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v15 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v15;
  }

  *&this[1].__r_.__value_.__l.__data_ = a5;
  *&this[1].__r_.__value_.__l.__size_ = a6;
  *&this[1].__r_.__value_.__r.__words[2] = a7;
  *&this[2].__r_.__value_.__l.__data_ = a8;
  this[2].__r_.__value_.__s.__data_[8] = a3;
  this[2].__r_.__value_.__s.__data_[9] = a4;
}

void cmdp_sausage_util::mergeTokens(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, *a1, *(a1 + 8));
  }

  else
  {
    v19 = *a1;
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v6 = std::string::append(&v19, p_p, size);
  v7 = v6->__r_.__value_.__r.__words[0];
  v8 = v6->__r_.__value_.__l.__size_;
  v18[0] = v6->__r_.__value_.__r.__words[2];
  *(v18 + 3) = *(&v6->__r_.__value_.__r.__words[2] + 3);
  v9 = SHIBYTE(v6->__r_.__value_.__r.__words[2]);
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  v10 = *(a1 + 24);
  v11 = *(a2 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a2 + 48);
  v15 = *(a2 + 56);
  v16 = *(a1 + 57);
  operator new();
}

void sub_26B53BACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x26D6787B0](v22, 0x1012C408B718000);
  operator delete(v21);
  _Unwind_Resume(a1);
}

void cmdp_sausage_util::sanitizeTokenSausage(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = *a1;
  v22 = a1[1];
  if (*a1 == v22)
  {
    return;
  }

  alloc = *MEMORY[0x277CBECE8];
  do
  {
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v3 = *v2;
    v23 = v2;
    v24 = v2[1];
    if (*v2 == v24)
    {
      goto LABEL_33;
    }

    do
    {
      v32 = 0;
      v33 = 0;
      v31 = 0;
      v4 = *v3;
      if (v3[1] == *v3)
      {
        goto LABEL_30;
      }

      v5 = 0;
      do
      {
        v6 = *(v4 + 8 * v5);
        if (*(v6 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v30, *v6, *(v6 + 1));
        }

        else
        {
          v7 = *v6;
          v30.__r_.__value_.__r.__words[2] = *(v6 + 2);
          *&v30.__r_.__value_.__l.__data_ = v7;
        }

        if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v8 = &v30;
        }

        else
        {
          v8 = v30.__r_.__value_.__r.__words[0];
        }

        v9 = CFStringCreateWithCString(0, v8, 0x8000100u);
        if (CFStringCompare(@" ", v9, 0))
        {
          ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(alloc, v9, @" ");
          if (!v9)
          {
            goto LABEL_17;
          }

LABEL_16:
          CFRelease(v9);
          goto LABEL_17;
        }

        ArrayBySeparatingStrings = 0;
        if (v9)
        {
          goto LABEL_16;
        }

LABEL_17:
        if (!ArrayBySeparatingStrings || CFArrayGetCount(ArrayBySeparatingStrings) < 2)
        {
          v16 = *(v4 + 8 * v5);
          if (*(v16 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v37, *v16, *(v16 + 1));
          }

          else
          {
            v17 = *v16;
            v37.__r_.__value_.__r.__words[2] = *(v16 + 2);
            *&v37.__r_.__value_.__l.__data_ = v17;
          }

          v18 = *(v4 + 8 * v5);
          v26 = *(v18 + 24);
          v28 = *(v18 + 40);
          v19 = *(v18 + 56);
          v20 = *(v18 + 57);
          operator new();
        }

        v11 = *(v4 + 8 * v5);
        v12 = *(v11 + 40);
        v27 = *(v11 + 24);
        v13 = *(v11 + 57);
        v14 = *(v11 + 56);
        if (CFArrayGetCount(ArrayBySeparatingStrings) > 0)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
          cmdp_string::CreateCppStringFromCFString(ValueAtIndex, 0, __p);
          operator new();
        }

        CFRelease(ArrayBySeparatingStrings);
        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v30.__r_.__value_.__l.__data_);
        }

        ++v5;
        v4 = *v3;
      }

      while (v5 < (v3[1] - *v3) >> 3);
      if (v31 != v32)
      {
        std::vector<std::vector<std::unique_ptr<CMDPToken>>>::push_back[abi:ne200100](&v34, &v31);
      }

LABEL_30:
      v37.__r_.__value_.__r.__words[0] = &v31;
      std::vector<std::unique_ptr<CMDPToken>>::__destroy_vector::operator()[abi:ne200100](&v37);
      v3 += 3;
    }

    while (v3 != v24);
    if (v34 != v35)
    {
      std::vector<std::vector<std::vector<std::unique_ptr<CMDPToken>>>>::push_back[abi:ne200100](a2, &v34);
    }

LABEL_33:
    v37.__r_.__value_.__r.__words[0] = &v34;
    std::vector<std::vector<std::unique_ptr<CMDPToken>>>::__destroy_vector::operator()[abi:ne200100](&v37);
    v2 = v23 + 3;
  }

  while (v23 + 3 != v22);
}

void sub_26B53BF84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33)
{
  a33 = v33 - 136;
  std::vector<std::vector<std::unique_ptr<CMDPToken>>>::__destroy_vector::operator()[abi:ne200100](&a33);
  *(v33 - 136) = a10;
  std::vector<std::vector<std::vector<std::unique_ptr<CMDPToken>>>>::__destroy_vector::operator()[abi:ne200100]((v33 - 136));
  _Unwind_Resume(a1);
}

void cmdp_sausage_util::addArcToFst(uint64_t a1, int a2, int a3, int a4, const char *a5, int a6, uint64_t a7, CFLocaleRef *a8)
{
  CMDPNormalizer::normalize(a8, a5, &__p);
  std::to_string(&v20, a4);
  CMDPFst::addArc(a1, a2, a3, &v20, &__p, a6);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a7, &__p.__r_.__value_.__l.__data_);
  CMDPNormalizer::homonymize(a8, &__p, v15, v16);
  size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  v18 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v20.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::to_string(&v19, a4);
    CMDPFst::addArc(a1, a2, a3, &v19, &v20, a6);
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(a7, &v20.__r_.__value_.__l.__data_);
    v18 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  }

  if (v18 < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_26B53C20C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cmdp_sausage_util::needsMerging(uint64_t a1, uint64_t a2, char a3)
{
  v6 = MEMORY[0x277D85DE0];
  if (a3)
  {
    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v25, *a1, *(a1 + 8));
    }

    else
    {
      v25 = *a1;
    }

    size = SHIBYTE(v25.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v25.__r_.__value_.__l.__size_;
      if (v25.__r_.__value_.__l.__size_)
      {
        v8 = v25.__r_.__value_.__r.__words[0];
        goto LABEL_13;
      }

LABEL_22:
      v12 = 1;
    }

    else
    {
      if (!*(&v25.__r_.__value_.__s + 23))
      {
        return 0;
      }

      v8 = &v25;
      do
      {
LABEL_13:
        v9 = v8->__r_.__value_.__s.__data_[0];
        if (v9 < 0 || (*(v6 + 4 * v9 + 60) & 0x400) == 0)
        {
          goto LABEL_22;
        }

        v8 = (v8 + 1);
        --size;
      }

      while (size);
      if (*(a2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v24, *a2, *(a2 + 8));
      }

      else
      {
        v24 = *a2;
      }

      if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v11 = v24.__r_.__value_.__l.__size_;
        if (v24.__r_.__value_.__l.__size_)
        {
          v10 = v24.__r_.__value_.__r.__words[0];
          goto LABEL_53;
        }

        v12 = 1;
LABEL_69:
        operator delete(v24.__r_.__value_.__l.__data_);
        goto LABEL_23;
      }

      if (!*(&v24.__r_.__value_.__s + 23))
      {
        goto LABEL_22;
      }

      v10 = &v24;
      v11 = SHIBYTE(v24.__r_.__value_.__r.__words[2]);
LABEL_53:
      while (1)
      {
        v20 = v10->__r_.__value_.__s.__data_[0];
        if (v20 < 0 || (*(v6 + 4 * v20 + 60) & 0x400) == 0)
        {
          break;
        }

        v10 = (v10 + 1);
        if (!--v11)
        {
          v12 = 0;
          goto LABEL_58;
        }
      }

      v12 = 1;
LABEL_58:
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_69;
      }
    }

LABEL_23:
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
      if (v12)
      {
        return 0;
      }
    }

    else if (v12)
    {
      return 0;
    }
  }

  else if (*(a1 + 56) == 1 && (*(a2 + 57) & 1) != 0)
  {
    return 0;
  }

  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, *a1, *(a1 + 8));
  }

  else
  {
    v23 = *a1;
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  if (a3)
  {
    goto LABEL_34;
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v23.__r_.__value_.__l.__size_ != 1)
    {
      goto LABEL_44;
    }

    v14 = v23.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) != 1)
    {
      goto LABEL_44;
    }

    v14 = &v23;
  }

  v15 = v14->__r_.__value_.__s.__data_[0];
  if ((v15 & 0x80000000) != 0)
  {
    v16 = __maskrune(v15, 0x2000uLL);
  }

  else
  {
    v16 = *(v6 + 4 * v15 + 60) & 0x2000;
  }

  if (v16)
  {
    goto LABEL_62;
  }

LABEL_44:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    if (__p.__r_.__value_.__l.__size_ != 1)
    {
      goto LABEL_34;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) != 1)
    {
      goto LABEL_34;
    }

    p_p = &__p;
  }

  v18 = p_p->__r_.__value_.__s.__data_[0];
  if ((v18 & 0x80000000) != 0)
  {
    v19 = __maskrune(v18, 0x2000uLL);
  }

  else
  {
    v19 = *(v6 + 4 * v18 + 60) & 0x2000;
  }

  if (v19)
  {
LABEL_62:
    v13 = 0;
    goto LABEL_63;
  }

LABEL_34:
  v13 = 1;
LABEL_63:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  return v13;
}

void sub_26B53C504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 57) < 0)
  {
    operator delete(*(v21 - 80));
  }

  _Unwind_Resume(exception_object);
}

void cmdp_sausage_util::fstFromSausage(uint64_t *a1@<X0>, void *a2@<X8>)
{
  cmdp_sausage_util::sanitizeTokenSausage(a1, v4);
  if (v4[0] != v4[1])
  {
    memset(v3, 0, sizeof(v3));
    operator new();
  }

  *a2 = 0;
  v3[0] = v4;
  std::vector<std::vector<std::vector<std::unique_ptr<CMDPToken>>>>::__destroy_vector::operator()[abi:ne200100](v3);
}

void sub_26B53CCD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33)
{
  std::unique_ptr<CMDPFst>::~unique_ptr[abi:ne200100]((v33 - 144));
  __p = (v33 - 136);
  std::vector<cmdp_sausage_util::SausageArc>::__destroy_vector::operator()[abi:ne200100](&__p);
  *(v33 - 136) = v33 - 112;
  std::vector<std::vector<std::vector<std::unique_ptr<CMDPToken>>>>::__destroy_vector::operator()[abi:ne200100]((v33 - 136));
  _Unwind_Resume(a1);
}

uint64_t std::function<unsigned int ()(CMDPToken const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::string>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::string>::__construct_node<std::string const&>();
  }

  return result;
}

void *std::__tree<std::string>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

void sub_26B53D068(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::vector<cmdp_sausage_util::SausageArc>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<cmdp_sausage_util::SausageArc>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<cmdp_sausage_util::SausageArc>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 1;
    do
    {
      v6 = *v5;
      *v5 = 0;
      if (v6)
      {
        std::default_delete<CMDPToken>::operator()[abi:ne200100](v5, v6);
      }

      v7 = v5 - 2;
      v5 -= 3;
    }

    while (v7 != a2);
  }

  *(a1 + 8) = a2;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

void std::vector<cmdp_sausage_util::SausageArc>::__emplace_back_slow_path<int &,int &,CMDPToken *,BOOL,int>(void *a1, int *a2, int *a3, uint64_t *a4, char *a5, int *a6)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) + 1;
  if (v6 <= 0xAAAAAAAAAAAAAAALL)
  {
    if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v6)
    {
      v6 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<cmdp_sausage_util::SausageArc>>(a1, v8);
    }

    cmdp_sausage_util::SausageArc::SausageArc(8 * ((a1[1] - *a1) >> 3), *a2, *a3, *a4, *a5, *a6);
  }

  std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
}

void sub_26B53D2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<cmdp_sausage_util::SausageArc>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void cmdp_sausage_util::SausageArc::SausageArc(uint64_t a1, int a2, int a3, uint64_t a4, char a5, int a6)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a5;
  *(a1 + 12) = a6;
  operator new();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<cmdp_sausage_util::SausageArc>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<cmdp_sausage_util::SausageArc>,cmdp_sausage_util::SausageArc*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v14 = a4;
  v13 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    do
    {
      *a4 = *v5;
      v6 = v5[2];
      v5[2] = 0;
      *(a4 + 16) = v6;
      v5 += 3;
      a4 += 24;
    }

    while (v5 != a3);
    v14 = a4;
    v12 = 1;
    if (a2 != a3)
    {
      v7 = a2 + 2;
      do
      {
        v8 = *v7;
        *v7 = 0;
        if (v8)
        {
          std::default_delete<CMDPToken>::operator()[abi:ne200100](v7, v8);
        }

        v9 = v7 + 1;
        v7 += 3;
      }

      while (v9 != a3);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<cmdp_sausage_util::SausageArc>,cmdp_sausage_util::SausageArc*>>::~__exception_guard_exceptions[abi:ne200100](v11);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<cmdp_sausage_util::SausageArc>,cmdp_sausage_util::SausageArc*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<cmdp_sausage_util::SausageArc>,cmdp_sausage_util::SausageArc*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<cmdp_sausage_util::SausageArc>,cmdp_sausage_util::SausageArc*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    v3 = v1 - 1;
    do
    {
      v4 = *v3;
      *v3 = 0;
      if (v4)
      {
        std::default_delete<CMDPToken>::operator()[abi:ne200100](v3, v4);
      }

      v5 = v3 - 2;
      v3 -= 3;
    }

    while (v5 != v2);
  }
}

uint64_t std::__split_buffer<cmdp_sausage_util::SausageArc>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<cmdp_sausage_util::SausageArc>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<cmdp_sausage_util::SausageArc>::__destruct_at_end[abi:ne200100](uint64_t a1, void *a2)
{
  result = *(a1 + 16);
  while (result != a2)
  {
    v7 = *(result - 1);
    v5 = result - 1;
    v6 = v7;
    *(a1 + 16) = v5 - 2;
    *v5 = 0;
    if (v7)
    {
      std::default_delete<CMDPToken>::operator()[abi:ne200100](v5, v6);
      result = *(a1 + 16);
    }

    else
    {
      result = v5 - 2;
    }
  }

  return result;
}

void std::vector<cmdp_sausage_util::SausageArc>::__emplace_back_slow_path<int &,int &,CMDPToken *,BOOL,int &>(void *a1, int *a2, int *a3, uint64_t *a4, char *a5, int *a6)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) + 1;
  if (v6 <= 0xAAAAAAAAAAAAAAALL)
  {
    if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v6)
    {
      v6 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<cmdp_sausage_util::SausageArc>>(a1, v8);
    }

    cmdp_sausage_util::SausageArc::SausageArc(8 * ((a1[1] - *a1) >> 3), *a2, *a3, *a4, *a5, *a6);
  }

  std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
}

void sub_26B53D728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<cmdp_sausage_util::SausageArc>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_26B53DF04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __p = &a18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  (*(*v30 + 8))(v30);
  _Unwind_Resume(a1);
}

void std::shared_ptr<fst::internal::SymbolTableImpl>::shared_ptr[abi:ne200100]<fst::internal::SymbolTableImpl,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_26B53E0A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<fst::internal::SymbolTableImpl>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

fst::internal::SymbolTableImpl **std::unique_ptr<fst::internal::SymbolTableImpl>::~unique_ptr[abi:ne200100](fst::internal::SymbolTableImpl **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    fst::internal::SymbolTableImpl::~SymbolTableImpl(v2);
    MEMORY[0x26D6787B0]();
  }

  return a1;
}

void std::__shared_ptr_pointer<fst::internal::SymbolTableImpl *,std::shared_ptr<fst::internal::SymbolTableImpl>::__shared_ptr_default_delete<fst::internal::SymbolTableImpl,fst::internal::SymbolTableImpl>,std::allocator<fst::internal::SymbolTableImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x26D6787B0);
}

fst::internal::SymbolTableImpl *std::__shared_ptr_pointer<fst::internal::SymbolTableImpl *,std::shared_ptr<fst::internal::SymbolTableImpl>::__shared_ptr_default_delete<fst::internal::SymbolTableImpl,fst::internal::SymbolTableImpl>,std::allocator<fst::internal::SymbolTableImpl>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    fst::internal::SymbolTableImpl::~SymbolTableImpl(result);

    JUMPOUT(0x26D6787B0);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<fst::internal::SymbolTableImpl *,std::shared_ptr<fst::internal::SymbolTableImpl>::__shared_ptr_default_delete<fst::internal::SymbolTableImpl,fst::internal::SymbolTableImpl>,std::allocator<fst::internal::SymbolTableImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

fst::internal::DenseSymbolMap *fst::internal::DenseSymbolMap::DenseSymbolMap(fst::internal::DenseSymbolMap *this)
{
  *this = -1;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::vector<long long>::vector[abi:ne200100](this + 5, 0x10uLL);
  v3 = *(this + 5);
  v2 = *(this + 6);
  *(this + 8) = ((v2 - v3) >> 3) - 1;
  v4 = v2 - v3;
  if (v2 != v3)
  {
    v5 = 0;
    v6 = *this;
    v7 = (v4 - 8) >> 3;
    v8 = vdupq_n_s64(v7);
    v9 = (v3 + 8);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(vdupq_n_s64(v5), xmmword_26B548380)));
      if (v10.i8[0])
      {
        *(v9 - 1) = v6;
      }

      if (v10.i8[4])
      {
        *v9 = v6;
      }

      v5 += 2;
      v9 += 2;
    }

    while (((v7 + 2) & 0x3FFFFFFFFFFFFFFELL) != v5);
  }

  return this;
}

void sub_26B53E28C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

fst::internal::DenseSymbolMap *fst::internal::DenseSymbolMap::DenseSymbolMap(fst::internal::DenseSymbolMap *this, const fst::internal::DenseSymbolMap *a2)
{
  *this = -1;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 8, *(a2 + 1), *(a2 + 2), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 2) - *(a2 + 1)) >> 3));
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(this + 40, *(a2 + 5), *(a2 + 6), (*(a2 + 6) - *(a2 + 5)) >> 3);
  *(this + 8) = *(a2 + 8);
  return this;
}

void sub_26B53E33C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unint64_t fst::internal::DenseSymbolMap::InsertOrFind(fst::internal::DenseSymbolMap *this, uint64_t a2)
{
  v23 = this + 8;
  v4 = *(this + 6) - *(this + 5);
  if (((v4 >> 3) * 0.75) <= (0xAAAAAAAAAAAAAAABLL * ((*(this + 2) - *(this + 1)) >> 3)))
  {
    fst::internal::DenseSymbolMap::Rehash(this, v4 >> 2);
  }

  v5 = std::__string_hash<char>::operator()[abi:ne200100](this + 32, a2);
  v6 = *(this + 8);
  v7 = *(this + 5);
  v8 = v5 & v6;
  v9 = *(v7 + 8 * (v5 & v6));
  v10 = *this;
  v11 = *(this + 1);
  if (v9 == *this)
  {
LABEL_18:
    v20 = *(this + 2);
    v19 = *(this + 3);
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v11) >> 3);
    *(v7 + 8 * v8) = v9;
    if (v20 >= v19)
    {
      v21 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(v23, a2);
    }

    else
    {
      std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(v23, a2);
      v21 = v20 + 1;
    }

    *(this + 2) = v21;
  }

  else
  {
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = *(a2 + 23);
    }

    else
    {
      v13 = *(a2 + 8);
    }

    if (v12 >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    while (1)
    {
      v15 = v11 + 24 * v9;
      v16 = *(v15 + 23);
      v17 = v16;
      if ((v16 & 0x80u) != 0)
      {
        v16 = *(v15 + 8);
      }

      if (v16 == v13)
      {
        v18 = v17 >= 0 ? (v11 + 24 * v9) : *v15;
        if (!memcmp(v18, v14, v13))
        {
          break;
        }
      }

      v8 = (v8 + 1) & v6;
      v9 = *(v7 + 8 * v8);
      if (v9 == v10)
      {
        goto LABEL_18;
      }
    }
  }

  return v9;
}

void fst::internal::DenseSymbolMap::Rehash(fst::internal::DenseSymbolMap *this, unint64_t a2)
{
  std::vector<long long>::resize(this + 5, a2);
  v4 = *(this + 5);
  v3 = *(this + 6);
  *(this + 8) = ((v3 - v4) >> 3) - 1;
  v5 = v3 - v4;
  if (v3 != v4)
  {
    v6 = 0;
    v7 = *this;
    v8 = (v5 - 8) >> 3;
    v9 = vdupq_n_s64(v8);
    v10 = (v4 + 8);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(vdupq_n_s64(v6), xmmword_26B548380)));
      if (v11.i8[0])
      {
        *(v10 - 1) = v7;
      }

      if (v11.i8[4])
      {
        *v10 = v7;
      }

      v6 += 2;
      v10 += 2;
    }

    while (((v8 + 2) & 0x3FFFFFFFFFFFFFFELL) != v6);
  }

  v12 = *(this + 1);
  if (*(this + 2) != v12)
  {
    v13 = 0;
    do
    {
      v14 = (v12 + 24 * v13);
      if (*(v14 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *v14, *(v14 + 1));
      }

      else
      {
        v15 = *v14;
        __p.__r_.__value_.__r.__words[2] = *(v14 + 2);
        *&__p.__r_.__value_.__l.__data_ = v15;
      }

      v16 = std::__string_hash<char>::operator()[abi:ne200100](this + 32, &__p);
      v17 = *(this + 8);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v18 = v17 & v16;
      v19 = *(this + 5);
      if (*(v19 + 8 * (v17 & v16)) != *this)
      {
        do
        {
          v18 = *(this + 8) & (v18 + 1);
        }

        while (*(v19 + 8 * v18) != *this);
      }

      *(v19 + 8 * v18) = v13++;
      v12 = *(this + 1);
    }

    while (v13 < 0xAAAAAAAAAAAAAAABLL * ((*(this + 2) - v12) >> 3));
  }
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

uint64_t fst::internal::DenseSymbolMap::Find(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = std::__string_hash<char>::operator()[abi:ne200100]((a1 + 4), a2);
  v5 = a1[8];
  v6 = a1[5];
  v7 = *a1;
  v8 = v4 & v5;
  v9 = *(v6 + 8 * (v4 & v5));
  if (v9 == *a1)
  {
    return v7;
  }

  v10 = a1[1];
  v11 = v2[23];
  if (v11 >= 0)
  {
    v12 = v2[23];
  }

  else
  {
    v12 = *(v2 + 1);
  }

  if (v11 < 0)
  {
    v2 = *v2;
  }

  while (1)
  {
    v13 = v10 + 24 * v9;
    v14 = *(v13 + 23);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(v13 + 8);
    }

    if (v14 == v12)
    {
      v16 = v15 >= 0 ? (v10 + 24 * v9) : *v13;
      if (!memcmp(v16, v2, v12))
      {
        break;
      }
    }

    v8 = (v8 + 1) & v5;
    v9 = *(v6 + 8 * v8);
    if (v9 == v7)
    {
      return v7;
    }
  }

  return v9;
}

void std::vector<long long>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<long long>::__append(a1, a2 - v2);
  }
}

void fst::internal::DenseSymbolMap::RemoveSymbol(fst::internal::DenseSymbolMap *this, uint64_t a2)
{
  std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(&v7, (*(this + 1) + 24 * a2 + 24), *(this + 2), *(this + 1) + 24 * a2);
  v4 = v3;
  v5 = *(this + 2);
  if (v5 != v3)
  {
    do
    {
      v6 = *(v5 - 1);
      v5 -= 3;
      if (v6 < 0)
      {
        operator delete(*v5);
      }
    }

    while (v5 != v4);
  }

  *(this + 2) = v4;
  fst::internal::DenseSymbolMap::Rehash(this, (*(this + 6) - *(this + 5)) >> 3);
}

uint64_t fst::internal::SymbolTableImpl::AddSymbol(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  if (a3 == -1)
  {
    return -1;
  }

  v6 = fst::internal::DenseSymbolMap::InsertOrFind((a1 + 40), a2);
  if (v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 56) - *(a1 + 48)) >> 3) - 1 == a3 && *(a1 + 32) == a3)
    {
      *(a1 + 32) = a3 + 1;
      v8 = a3;
    }

    else
    {
      v11 = *(a1 + 120);
      v10 = *(a1 + 128);
      if (v11 >= v10)
      {
        v22 = *(a1 + 112);
        v23 = v11 - v22;
        v24 = (v11 - v22) >> 3;
        v25 = v24 + 1;
        if ((v24 + 1) >> 61)
        {
          std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
        }

        v26 = v10 - v22;
        if (v26 >> 2 > v25)
        {
          v25 = v26 >> 2;
        }

        v27 = v26 >= 0x7FFFFFFFFFFFFFF8;
        v28 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v27)
        {
          v28 = v25;
        }

        if (v28)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1 + 112, v28);
        }

        v29 = (v11 - v22) >> 3;
        v30 = (8 * v24);
        v31 = (8 * v24 - 8 * v29);
        *v30 = a3;
        v12 = v30 + 1;
        memcpy(v31, v22, v23);
        v32 = *(a1 + 112);
        *(a1 + 112) = v31;
        *(a1 + 120) = v12;
        *(a1 + 128) = 0;
        if (v32)
        {
          operator delete(v32);
        }
      }

      else
      {
        *v11 = a3;
        v12 = v11 + 1;
      }

      *(a1 + 120) = v12;
      v33 = -1 - 0x5555555555555555 * ((*(a1 + 56) - *(a1 + 48)) >> 3);
      __p[0] = &v37;
      std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a1 + 136, &v37)[5] = v33;
      v8 = v37;
    }

    if (v8 >= *(a1 + 24))
    {
      *(a1 + 24) = v8 + 1;
    }

    *(a1 + 160) = 0;
  }

  else
  {
    NthKey = fst::internal::SymbolTableImpl::GetNthKey(a1, v6);
    if (NthKey == a3)
    {
      return a3;
    }

    else
    {
      v8 = NthKey;
      if (FLAGS_v >= 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "INFO");
        LogMessage::LogMessage(&v38, __p);
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "SymbolTable::AddSymbol: symbol = ", 33);
        v14 = *(a2 + 23);
        v15 = v14 >= 0 ? a2 : *a2;
        v16 = v14 >= 0 ? *(a2 + 23) : *(a2 + 8);
        v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " already in symbol_map_ with key = ", 35);
        v19 = MEMORY[0x26D6786A0](v18, v8);
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " but supplied new key = ", 24);
        v21 = MEMORY[0x26D6786A0](v20, a3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " (ignoring new key)", 19);
        LogMessage::~LogMessage(&v38);
        if (v36 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return v8;
}

void sub_26B53EABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::internal::SymbolTableImpl::MaybeRecomputeCheckSum(fst::internal::SymbolTableImpl *this)
{
  std::mutex::lock((this + 216));
  v2 = *(this + 160);
  std::mutex::unlock((this + 216));
  if ((v2 & 1) == 0)
  {
    std::mutex::lock((this + 216));
    if ((*(this + 160) & 1) == 0)
    {
      fst::CheckSummer::CheckSummer(&v68);
      v4 = *(this + 6);
      v3 = *(this + 7);
      if (v3 != v4)
      {
        v5 = 0;
        do
        {
          v6 = (v4 + 24 * v5);
          v7 = v6[23];
          if (v7 < 0)
          {
            v6 = *v6;
            v7 = *(v4 + 24 * v5 + 8);
          }

          if (v7 >= 1)
          {
            v8 = v7 & 0x7FFFFFFF;
            do
            {
              v10 = *v6++;
              v9 = v10;
              v11 = v68++;
              v12 = -v11 < 0;
              v13 = -v11 & 0x1F;
              v14 = v11 & 0x1F;
              if (!v12)
              {
                v14 = -v13;
              }

              if ((v69.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v15 = &v69;
              }

              else
              {
                v15 = v69.__r_.__value_.__r.__words[0];
              }

              v15->__r_.__value_.__s.__data_[v14] ^= v9;
              --v8;
            }

            while (v8);
            v4 = *(this + 6);
            v3 = *(this + 7);
          }

          ++v68;
          ++v5;
        }

        while (v5 < 0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3));
      }

      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v62, v69.__r_.__value_.__l.__data_, v69.__r_.__value_.__l.__size_);
      }

      else
      {
        v62 = v69;
      }

      if (*(this + 191) < 0)
      {
        operator delete(*(this + 21));
      }

      *(this + 7) = v62;
      fst::CheckSummer::CheckSummer(&v66);
      if (*(this + 4) >= 1)
      {
        v16 = 0;
        v17 = *MEMORY[0x277D82828];
        v18 = *(MEMORY[0x277D82828] + 24);
        do
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](&v62);
          v19 = *(this + 6) + 24 * v16;
          v20 = *(v19 + 23);
          if (v20 >= 0)
          {
            v21 = *(this + 6) + 24 * v16;
          }

          else
          {
            v21 = *v19;
          }

          if (v20 >= 0)
          {
            v22 = *(v19 + 23);
          }

          else
          {
            v22 = *(v19 + 8);
          }

          v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v62, v21, v22);
          LOBYTE(v60[0]) = 9;
          v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v60, 1);
          MEMORY[0x26D6786A0](v24, v16);
          std::stringbuf::str();
          if (v61 >= 0)
          {
            v25 = v60;
          }

          else
          {
            v25 = v60[0];
          }

          std::stringbuf::str();
          v26 = v59;
          v27 = v59;
          if ((v59 & 0x80u) != 0)
          {
            v26 = v58;
          }

          if (v26 >= 1)
          {
            v28 = v26 & 0x7FFFFFFF;
            do
            {
              v30 = *v25;
              v25 = (v25 + 1);
              v29 = v30;
              v31 = v66++;
              v12 = -v31 < 0;
              v32 = -v31 & 0x1F;
              v33 = v31 & 0x1F;
              if (!v12)
              {
                v33 = -v32;
              }

              if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v34 = &v67;
              }

              else
              {
                v34 = v67.__r_.__value_.__r.__words[0];
              }

              v34->__r_.__value_.__s.__data_[v33] ^= v29;
              --v28;
            }

            while (v28);
            v27 = v59;
          }

          if ((v27 & 0x80) != 0)
          {
            operator delete(__p);
          }

          if (v61 < 0)
          {
            operator delete(v60[0]);
          }

          v62.__r_.__value_.__r.__words[0] = v17;
          *(v62.__r_.__value_.__r.__words + *(v17 - 24)) = v18;
          v62.__r_.__value_.__l.__size_ = MEMORY[0x277D82878] + 16;
          if (v64 < 0)
          {
            operator delete(v63);
          }

          v62.__r_.__value_.__l.__size_ = MEMORY[0x277D82868] + 16;
          std::locale::~locale(&v62.__r_.__value_.__r.__words[2]);
          std::ostream::~ostream();
          MEMORY[0x26D678750](v65);
          ++v16;
        }

        while (v16 < *(this + 4));
      }

      v35 = *(this + 17);
      if (v35 != (this + 144))
      {
        v36 = *MEMORY[0x277D82828];
        v37 = *(MEMORY[0x277D82828] + 24);
        do
        {
          if (*(v35 + 4) >= *(this + 4))
          {
            std::ostringstream::basic_ostringstream[abi:ne200100](&v62);
            v38 = *(this + 6) + 24 * *(v35 + 5);
            v39 = *(v38 + 23);
            if (v39 >= 0)
            {
              v40 = *(this + 6) + 24 * *(v35 + 5);
            }

            else
            {
              v40 = *v38;
            }

            if (v39 >= 0)
            {
              v41 = *(v38 + 23);
            }

            else
            {
              v41 = *(v38 + 8);
            }

            v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v62, v40, v41);
            LOBYTE(v60[0]) = 9;
            v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, v60, 1);
            MEMORY[0x26D6786A0](v43, *(v35 + 4));
            std::stringbuf::str();
            if (v61 >= 0)
            {
              v44 = v60;
            }

            else
            {
              v44 = v60[0];
            }

            std::stringbuf::str();
            v45 = v59;
            v46 = v59;
            if ((v59 & 0x80u) != 0)
            {
              v45 = v58;
            }

            if (v45 >= 1)
            {
              v47 = v45 & 0x7FFFFFFF;
              do
              {
                v49 = *v44;
                v44 = (v44 + 1);
                v48 = v49;
                v50 = v66++;
                v12 = -v50 < 0;
                v51 = -v50 & 0x1F;
                v52 = v50 & 0x1F;
                if (!v12)
                {
                  v52 = -v51;
                }

                if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v53 = &v67;
                }

                else
                {
                  v53 = v67.__r_.__value_.__r.__words[0];
                }

                v53->__r_.__value_.__s.__data_[v52] ^= v48;
                --v47;
              }

              while (v47);
              v46 = v59;
            }

            if ((v46 & 0x80) != 0)
            {
              operator delete(__p);
            }

            if (v61 < 0)
            {
              operator delete(v60[0]);
            }

            v62.__r_.__value_.__r.__words[0] = v36;
            *(v62.__r_.__value_.__r.__words + *(v36 - 24)) = v37;
            v62.__r_.__value_.__l.__size_ = MEMORY[0x277D82878] + 16;
            if (v64 < 0)
            {
              operator delete(v63);
            }

            v62.__r_.__value_.__l.__size_ = MEMORY[0x277D82868] + 16;
            std::locale::~locale(&v62.__r_.__value_.__r.__words[2]);
            std::ostream::~ostream();
            MEMORY[0x26D678750](v65);
          }

          v54 = *(v35 + 1);
          if (v54)
          {
            do
            {
              v55 = v54;
              v54 = *v54;
            }

            while (v54);
          }

          else
          {
            do
            {
              v55 = *(v35 + 2);
              v56 = *v55 == v35;
              v35 = v55;
            }

            while (!v56);
          }

          v35 = v55;
        }

        while (v55 != (this + 144));
      }

      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v62, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_);
      }

      else
      {
        v62 = v67;
      }

      if (*(this + 215) < 0)
      {
        operator delete(*(this + 24));
      }

      *(this + 8) = v62;
      *(this + 160) = 1;
      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v69.__r_.__value_.__l.__data_);
      }
    }

    std::mutex::unlock((this + 216));
  }
}

void sub_26B53F178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (*(v19 - 121) < 0)
  {
    operator delete(*(v19 - 144));
  }

  if (*(v19 - 89) < 0)
  {
    operator delete(*(v19 - 112));
  }

  std::mutex::unlock((v18 + 216));
  _Unwind_Resume(a1);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_26B53F344(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x26D678750](v1);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x26D678750](a1 + 112);
  return a1;
}

unint64_t fst::internal::SymbolTableImpl::GetNthKey(fst::internal::SymbolTableImpl *this, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return -1;
  }

  v3 = *(this + 6);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - v3) >> 3) <= a2)
  {
    return -1;
  }

  if (*(this + 4) <= a2)
  {
    v4 = fst::internal::DenseSymbolMap::Find(this + 5, v3 + 24 * a2);
    a2 = v4;
    if (v4 != -1)
    {
      v5 = *(this + 4);
      v6 = __OFSUB__(v4, v5);
      v7 = v4 - v5;
      if (v7 < 0 == v6)
      {
        return *(*(this + 14) + 8 * v7);
      }
    }
  }

  return a2;
}

void fst::internal::SymbolTableImpl::RemoveSymbol(fst::internal::SymbolTableImpl *this, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v4 = a2;
    if (*(this + 4) > a2)
    {
      goto LABEL_11;
    }
  }

  v5 = (this + 144);
  v6 = *(this + 18);
  if (v6)
  {
    v7 = (this + 136);
    v8 = (this + 144);
    do
    {
      if (v6[4] >= a2)
      {
        v8 = v6;
      }

      v6 = v6[v6[4] < a2];
    }

    while (v6);
    if (v8 != v5 && v8[4] <= a2)
    {
      v4 = v8[5];
      std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__remove_node_pointer(v7, v8);
      operator delete(v8);
      if ((v4 & 0x8000000000000000) == 0)
      {
LABEL_11:
        if (v4 < 0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - *(this + 6)) >> 3))
        {
          fst::internal::DenseSymbolMap::RemoveSymbol((this + 40), v4);
          v9 = *(this + 17);
          if (v9 != (this + 144))
          {
            do
            {
              v10 = *(v9 + 5);
              if (v10 > v4)
              {
                *(v9 + 5) = v10 - 1;
              }

              v11 = *(v9 + 1);
              if (v11)
              {
                do
                {
                  v12 = v11;
                  v11 = *v11;
                }

                while (v11);
              }

              else
              {
                do
                {
                  v12 = *(v9 + 2);
                  v13 = *v12 == v9;
                  v9 = v12;
                }

                while (!v13);
              }

              v9 = v12;
            }

            while (v12 != (this + 144));
          }

          v14 = *(this + 4);
          if (a2 < 0 || v14 <= a2)
          {
            v23 = *(this + 14);
            v22 = *(this + 15);
            v24 = (v22 - v23) >> 3;
            if (v4 - v14 < v24 - 1)
            {
              v25 = ~v4 + v14 + v24;
              v26 = (v23 - 8 * v14 + 8 * v4 + 8);
              do
              {
                *(v26 - 1) = *v26;
                ++v26;
                --v25;
              }

              while (v25);
            }

            *(this + 15) = v22 - 8;
          }

          else
          {
            v27[0] = a2 + 1;
            if (a2 + 1 < v14)
            {
              v15 = a2;
              do
              {
                v27[2] = v27;
                std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(this + 136, v27)[5] = v15;
                v15 = v27[0]++;
              }

              while (v27[0] < *(this + 4));
            }

            std::vector<long long>::resize(this + 14, 0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - *(this + 6)) >> 3) - a2);
            v16 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - *(this + 6)) >> 3);
            v17 = *(this + 4);
            if (v16 >= v17)
            {
              v18 = v16 + 1;
              v19 = *(this + 14) + 0x5555555555555558 * ((*(this + 7) - *(this + 6)) >> 3);
              do
              {
                *(v19 + 8 * ~a2) = *(v19 - 8 * v17);
                v17 = *(this + 4);
                --v18;
                v19 -= 8;
              }

              while (v18 > v17);
            }

            if (v17 - 1 > a2)
            {
              v20 = *(this + 14);
              v21 = a2;
              do
              {
                *v20++ = ++v21;
              }

              while (v21 < *(this + 4) - 1);
            }

            *(this + 4) = a2;
          }

          if (*(this + 3) - 1 == a2)
          {
            *(this + 3) = a2;
          }
        }
      }
    }
  }
}

BOOL fst::internal::SymbolTableImpl::Write(uint64_t *a1, void *a2)
{
  LODWORD(__p[0]) = 2125658996;
  std::ostream::write();
  LODWORD(v4) = *(a1 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  LODWORD(__p[0]) = v4;
  std::ostream::write();
  if (*(a1 + 23) < 0)
  {
    v5 = *a1;
  }

  std::ostream::write();
  __p[0] = a1[3];
  std::ostream::write();
  v6 = a1[7] - a1[6];
  v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
  __p[0] = v7;
  std::ostream::write();
  if (v6 >= 1)
  {
    v8 = 0;
    v9 = 0;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    do
    {
      v10 = a1[4];
      v11 = v9;
      if (v9 >= v10)
      {
        v11 = *(a1[14] - 8 * v10 + 8 * v9);
      }

      v12 = (a1[6] + v8);
      LODWORD(v13) = *(v12 + 23);
      if ((v13 & 0x80u) != 0)
      {
        v13 = v12[1];
      }

      LODWORD(__p[0]) = v13;
      std::ostream::write();
      if (*(v12 + 23) < 0)
      {
        v14 = *v12;
      }

      std::ostream::write();
      __p[0] = v11;
      std::ostream::write();
      ++v9;
      v8 += 24;
    }

    while (v7 != v9);
  }

  std::ostream::flush();
  v15 = *(a2 + *(*a2 - 24) + 32) & 5;
  if (v15)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    LogMessage::LogMessage(&v19, __p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "SymbolTable::Write: Write failed", 32);
    LogMessage::~LogMessage(&v19);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v15 == 0;
}

void sub_26B53F9DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::SymbolTable::AddTable(fst::SymbolTable *this, const fst::SymbolTable *a2)
{
  fst::SymbolTable::MutateCheck(this);
  v4 = (*(*a2 + 120))(a2);
  v5 = (*(*a2 + 64))(a2, 0);
  if (v4)
  {
    v6 = v5;
    v7 = 1;
    v8 = v4;
    do
    {
      v9 = *(this + 1);
      (*(*a2 + 72))(__p, a2, v6);
      fst::internal::SymbolTableImpl::AddSymbol(v9, __p, *(v9 + 24));
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      if (v7 < v4)
      {
        v6 = (*(*a2 + 64))(a2, v7);
      }

      ++v7;
      --v8;
    }

    while (v8);
  }
}

void sub_26B53FB50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::SymbolTable::MutateCheck(uint64_t this)
{
  v1 = *(this + 16);
  if (!v1 || *(v1 + 8))
  {
    operator new();
  }

  return this;
}

BOOL fst::SymbolTable::WriteText(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 31);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a3 + 16);
  }

  v19 = v3;
  if (v3)
  {
    v6 = (*(*a1 + 120))(a1);
    v7 = (*(*a1 + 64))(a1, 0);
    if (v6)
    {
      v8 = v7;
      v9 = 0;
      v20 = *(MEMORY[0x277D82828] + 24);
      v21 = *MEMORY[0x277D82828];
      v10 = 1;
      v11 = v6;
      do
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](&v26);
        if (!((v8 >= 0) | v9 & 1 | *a3 & 1))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "WARNING");
          LogMessage::LogMessage(&v22, __p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Negative symbol table entry when not allowed", 44);
          LogMessage::~LogMessage(&v22);
          if (v25 < 0)
          {
            operator delete(__p[0]);
          }

          v9 = 1;
        }

        (*(*a1 + 72))(__p, a1, v8);
        if ((v25 & 0x80u) == 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        if ((v25 & 0x80u) == 0)
        {
          v13 = v25;
        }

        else
        {
          v13 = __p[1];
        }

        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v26, v12, v13);
        v15 = (a3 + 8);
        if (*(a3 + 31) < 0)
        {
          v15 = *(a3 + 8);
        }

        LOBYTE(v22) = *v15;
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, &v22, 1);
        v17 = MEMORY[0x26D6786A0](v16, v8);
        LOBYTE(v22) = 10;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, &v22, 1);
        if (v25 < 0)
        {
          operator delete(__p[0]);
        }

        std::stringbuf::str();
        std::stringbuf::str();
        std::ostream::write();
        if (v23 < 0)
        {
          operator delete(v22);
        }

        if (v25 < 0)
        {
          operator delete(__p[0]);
        }

        v26 = v21;
        *(&v26 + *(v21 - 3)) = v20;
        v27 = MEMORY[0x277D82878] + 16;
        if (v29 < 0)
        {
          operator delete(v28[7].__locale_);
        }

        v27 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v28);
        std::ostream::~ostream();
        MEMORY[0x26D678750](&v30);
        if (v10 < v6)
        {
          v8 = (*(*a1 + 64))(a1, v10);
        }

        ++v10;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v26, "ERROR");
    LogMessage::LogMessage(__p, &v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Missing required field separator", 32);
    LogMessage::~LogMessage(__p);
    if (SHIBYTE(v28[0].__locale_) < 0)
    {
      operator delete(v26);
    }
  }

  return v19 != 0;
}

void sub_26B540020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  LogMessage::~LogMessage(&a23);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL fst::CompatSymbols(fst *this, const fst::SymbolTable *a2, const fst::SymbolTable *a3)
{
  if (FLAGS_fst_compat_symbols != 1)
  {
    return 1;
  }

  result = 1;
  if (this && a2)
  {
    v6 = a3;
    v7 = (*(*this + 88))(this);
    v8 = (*(*a2 + 88))(a2);
    v9 = *(v7 + 23);
    if (v9 >= 0)
    {
      v10 = *(v7 + 23);
    }

    else
    {
      v10 = *(v7 + 8);
    }

    v11 = *(v8 + 23);
    v12 = v11;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(v8 + 8);
    }

    if (v10 == v11)
    {
      if (v9 >= 0)
      {
        v13 = v7;
      }

      else
      {
        v13 = *v7;
      }

      if (v12 >= 0)
      {
        v14 = v8;
      }

      else
      {
        v14 = *v8;
      }

      result = memcmp(v13, v14, v10) == 0;
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = 0;
    }

    if (v6)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "WARNING");
      LogMessage::LogMessage(&v23, __p);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "CompatSymbols: Symbol table checksums do not match. ", 52);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Table sizes are ", 16);
      v17 = (*(*this + 120))(this);
      v18 = MEMORY[0x26D678690](v16, v17);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " and ", 5);
      v20 = (*(*a2 + 120))(a2);
      MEMORY[0x26D678690](v19, v20);
      LogMessage::~LogMessage(&v23);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      return 0;
    }
  }

  return result;
}

void sub_26B5402B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::SymbolTable::~SymbolTable(fst::SymbolTable *this)
{
  *this = &unk_287C09B28;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_287C09B28;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x26D6787B0);
}

uint64_t fst::SymbolTable::AddSymbol(uint64_t a1, uint64_t a2, uint64_t a3)
{
  fst::SymbolTable::MutateCheck(a1);
  v6 = *(a1 + 8);

  return fst::internal::SymbolTableImpl::AddSymbol(v6, a2, a3);
}

uint64_t fst::SymbolTable::AddSymbol(uint64_t a1, uint64_t a2)
{
  fst::SymbolTable::MutateCheck(a1);
  v4 = *(a1 + 8);
  v5 = *(v4 + 24);

  return fst::internal::SymbolTableImpl::AddSymbol(v4, a2, v5);
}

uint64_t fst::SymbolTable::CheckSum(fst::SymbolTable *this)
{
  v1 = *(this + 1);
  fst::internal::SymbolTableImpl::MaybeRecomputeCheckSum(v1);
  return v1 + 168;
}

uint64_t fst::SymbolTable::Find(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  result = fst::internal::DenseSymbolMap::Find(v2 + 5, a2);
  if (result != -1)
  {
    v4 = v2[4];
    v5 = __OFSUB__(result, v4);
    v6 = result - v4;
    if (v6 < 0 == v5)
    {
      return *(v2[14] + 8 * v6);
    }
  }

  return result;
}

uint64_t fst::SymbolTable::LabeledCheckSum(fst::SymbolTable *this)
{
  v1 = *(this + 1);
  fst::internal::SymbolTableImpl::MaybeRecomputeCheckSum(v1);
  return v1 + 192;
}

BOOL fst::SymbolTable::Member(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = fst::internal::DenseSymbolMap::Find(v2 + 5, a2);
  if (v3 == -1)
  {
    return 0;
  }

  v4 = v2[4];
  v5 = __OFSUB__(v3, v4);
  v6 = v3 - v4;
  return v6 < 0 != v5 || *(v2[14] + 8 * v6) != -1;
}

void fst::SymbolTable::RemoveSymbol(fst::SymbolTable *this, uint64_t a2)
{
  fst::SymbolTable::MutateCheck(this);
  v4 = *(this + 1);

  fst::internal::SymbolTableImpl::RemoveSymbol(v4, a2);
}

std::string *fst::SymbolTable::SetName(uint64_t a1, const std::string *a2)
{
  fst::SymbolTable::MutateCheck(a1);
  v4 = *(a1 + 8);

  return std::string::operator=(v4, a2);
}

uint64_t fst::SymbolTable::Write(uint64_t a1, uint64_t a2)
{
  v16[19] = *MEMORY[0x277D85DE8];
  std::ofstream::basic_ofstream(&v14, a2);
  if (*&v15[*(v14 - 24) + 24])
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    LogMessage::LogMessage(&v13, __p);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "SymbolTable::Write: Can't open file ", 36);
    v5 = *(a2 + 23);
    if (v5 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    if (v5 >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
    LogMessage::~LogMessage(&v13);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = 0;
  }

  else
  {
    v8 = (*(*a1 + 144))(a1, &v14);
  }

  v14 = *MEMORY[0x277D82810];
  *&v15[*(v14 - 24) - 8] = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x26D6785E0](v15);
  std::ostream::~ostream();
  MEMORY[0x26D678750](v16);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t fst::SymbolTable::WriteText(uint64_t a1, uint64_t a2)
{
  v18[19] = *MEMORY[0x277D85DE8];
  std::ofstream::basic_ofstream(&v16, a2);
  if (*&v17[*(v16 - 24) + 24])
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    LogMessage::LogMessage(&v15, &__p);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "SymbolTable::WriteText: Can't open file ", 40);
    v5 = *(a2 + 23);
    if (v5 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    if (v5 >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
    LogMessage::~LogMessage(&v15);
    if (v13 < 0)
    {
      operator delete(__p);
    }

    v8 = 0;
  }

  else
  {
    LOBYTE(__p) = 0;
    std::string::basic_string[abi:ne200100]<0>(&v12, FLAGS_fst_field_separator);
    v8 = (*(*a1 + 160))(a1, &v16, &__p);
    if (v14 < 0)
    {
      operator delete(v12);
    }
  }

  v16 = *MEMORY[0x277D82810];
  *&v17[*(v16 - 24) - 8] = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x26D6785E0](v17);
  std::ostream::~ostream();
  MEMORY[0x26D678750](v18);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_26B540A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  std::ofstream::~ofstream(&a24);
  _Unwind_Resume(a1);
}

void fst::internal::DenseSymbolMap::~DenseSymbolMap(fst::internal::DenseSymbolMap *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = (this + 8);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
}

fst::CheckSummer *fst::CheckSummer::CheckSummer(fst::CheckSummer *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::string::resize((this + 8), 0x20uLL, 0);
  return this;
}

void sub_26B540B88(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

std::string *fst::internal::SymbolTableImpl::SymbolTableImpl(std::string *this, const fst::internal::SymbolTableImpl *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  *&this[1].__r_.__value_.__l.__data_ = *(a2 + 24);
  fst::internal::DenseSymbolMap::DenseSymbolMap(&this[1].__r_.__value_.__r.__words[2], (a2 + 40));
  this[4].__r_.__value_.__r.__words[2] = 0;
  this[5].__r_.__value_.__r.__words[0] = 0;
  this[5].__r_.__value_.__l.__size_ = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&this[4].__r_.__value_.__r.__words[2], *(a2 + 14), *(a2 + 15), (*(a2 + 15) - *(a2 + 14)) >> 3);
  std::map<long long,long long>::map[abi:ne200100](&this[5].__r_.__value_.__r.__words[2], a2 + 136);
  this[6].__r_.__value_.__s.__data_[16] = 0;
  *&this[7].__r_.__value_.__l.__data_ = 0u;
  *&this[7].__r_.__value_.__r.__words[2] = 0u;
  *&this[8].__r_.__value_.__r.__words[1] = 0u;
  this[9].__r_.__value_.__r.__words[0] = 850045863;
  *&this[9].__r_.__value_.__r.__words[1] = 0u;
  *&this[10].__r_.__value_.__l.__data_ = 0u;
  *&this[10].__r_.__value_.__r.__words[2] = 0u;
  this[11].__r_.__value_.__l.__size_ = 0;
  return this;
}

void sub_26B540CB0(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 120) = v4;
    operator delete(v4);
  }

  fst::internal::DenseSymbolMap::~DenseSymbolMap((v1 + 40));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void *std::map<long long,long long>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<long long,long long>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<long long,long long>,std::__tree_node<std::__value_type<long long,long long>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<long long,long long>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<long long,long long>,std::__tree_node<std::__value_type<long long,long long>,void *> *,long>>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__emplace_hint_unique_key_args<long long,std::pair<long long const,long long> const&>(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__emplace_hint_unique_key_args<long long,std::pair<long long const,long long> const&>(void *a1, void *a2, uint64_t *a3)
{
  v3 = *std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__find_equal<long long>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__find_equal<long long>(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void fst::internal::SymbolTableImpl::Find(fst::internal::SymbolTableImpl *this@<X0>, int64_t a2@<X1>, std::string *a3@<X8>)
{
  if (a2 < 0 || *(this + 4) <= a2)
  {
    v3 = *(this + 18);
    if (!v3)
    {
      goto LABEL_14;
    }

    v4 = (this + 144);
    do
    {
      if (v3[4] >= a2)
      {
        v4 = v3;
      }

      v3 = v3[v3[4] < a2];
    }

    while (v3);
    if (v4 == (this + 144))
    {
      goto LABEL_14;
    }

    if (v4[4] > a2)
    {
      goto LABEL_14;
    }

    a2 = v4[5];
    if (a2 < 0)
    {
      goto LABEL_14;
    }
  }

  v5 = *(this + 6);
  if (a2 >= 0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - v5) >> 3))
  {
LABEL_14:
    std::string::basic_string[abi:ne200100]<0>(a3, "");
  }

  else
  {
    v6 = (v5 + 24 * a2);
    if (*(v6 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a3, *v6, *(v6 + 1));
    }

    else
    {
      v7 = *v6;
      a3->__r_.__value_.__r.__words[2] = *(v6 + 2);
      *&a3->__r_.__value_.__l.__data_ = v7;
    }
  }
}

BOOL fst::internal::SymbolTableImpl::Member(fst::internal::SymbolTableImpl *this, int64_t a2)
{
  fst::internal::SymbolTableImpl::Find(this, a2, &v4);
  if ((SHIBYTE(v4.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return SHIBYTE(v4.__r_.__value_.__r.__words[2]) != 0;
  }

  v2 = v4.__r_.__value_.__l.__size_ != 0;
  operator delete(v4.__r_.__value_.__l.__data_);
  return v2;
}

uint64_t std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::ReplaceStackPrefix<int,int>::PrefixTuple,std::allocator<fst::ReplaceStackPrefix<int,int>::PrefixTuple>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26B54117C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<long long>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<fst::ReplaceStackPrefix<int,int>::PrefixTuple,std::allocator<fst::ReplaceStackPrefix<int,int>::PrefixTuple>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_26B5411F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_26B541278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

void std::vector<long long>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<std::pair<std::string,std::unique_ptr<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      a4 += 24;
      *(v5 + 23) = 0;
      *v5 = 0;
      v5 = (v5 + 24);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x26D678700](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_26B541AC8(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

uint64_t CMDPOSLog(void)
{
  if (CMDPOSLog(void)::onceToken != -1)
  {
    CMDPOSLog();
  }

  return CMDPOSLog(void)::signpostLog;
}

os_log_t ___Z9CMDPOSLogv_block_invoke()
{
  result = os_log_create("com.apple.SpeechRecognitionCore", "CMDPLogs");
  CMDPOSLog(void)::signpostLog = result;
  return result;
}

uint64_t fst::FstHeader::Write(uint64_t a1)
{
  std::ostream::write();
  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 16);
  }

  std::ostream::write();
  if (*(a1 + 31) < 0)
  {
    v3 = *(a1 + 8);
  }

  std::ostream::write();
  if (*(a1 + 55) < 0)
  {
    v4 = *(a1 + 40);
  }

  std::ostream::write();
  v5 = *(a1 + 55);
  v7 = *(a1 + 32);
  v6 = a1 + 32;
  std::ostream::write();
  v9 = *(v6 + 24);
  std::ostream::write();
  v10 = *(v6 + 28);
  std::ostream::write();
  v11 = *(v6 + 32);
  std::ostream::write();
  v12 = *(v6 + 40);
  std::ostream::write();
  v13 = *(v6 + 48);
  std::ostream::write();
  v14 = *(v6 + 56);
  std::ostream::write();
  return 1;
}

unint64_t fst::ComposeProperties(unint64_t this, uint64_t a2)
{
  v2 = (a2 | this) & 4;
  v3 = a2 & this;
  v4 = a2 & this & 0x2802000000 | v2 | 0x10000000000;
  if ((a2 & this & 0x2000000) != 0)
  {
    v4 |= a2 & this & 0x40000;
  }

  v5 = v3 & 0x280A800000 | v2 | 0x10000010000;
  if ((v3 & 0x2000000) != 0)
  {
    v5 |= v3 & 0x140000;
  }

  if ((v3 & 0x10000) != 0)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

unint64_t fst::DeterminizeProperties(unint64_t this, int a2, int a3)
{
  if ((this & 0x10000) != 0)
  {
    goto LABEL_6;
  }

  v3 = a2 ^ 1;
  v4 = 0x10000000000;
  if ((this & 0x2000000) != 0)
  {
    v3 = 0;
  }

  if ((v3 & 1) == 0 && a3)
  {
LABEL_6:
    v4 = 0x10000040000;
  }

  v5 = (this >> 25) & 1;
  v6 = this & 0x800000;
  if ((v5 & a3) == 0)
  {
    v6 = 0;
  }

  v7 = this & ((this << 23) >> 63) & 0x405000000 | this & 0x142800010004 | this & ((this << 15) >> 31) & 0xA000000 | v6 | v4;
  if ((v5 & a2) != 0)
  {
    return v7 | 0x2000000;
  }

  else
  {
    return v7;
  }
}

uint64_t fst::ReplaceProperties(uint64_t **a1, uint64_t a2, int a3, int a4, int a5, char a6, int a7, int a8, char a9, char a10, unsigned __int8 a11)
{
  v11 = *a1;
  v12 = a1[1];
  if (*a1 == v12)
  {
    return 0x956A5A950000;
  }

  v13 = 0;
  v14 = *a1;
  do
  {
    v15 = *v14++;
    v13 |= v15 & 4;
  }

  while (v14 != v12);
  v16 = 0x50000000000;
  if (!a8)
  {
    v16 = 0;
  }

  v17 = *a1;
  do
  {
    v18 = *v17++;
    v16 &= v18;
  }

  while (v17 != v12);
  if (v16 == 0x50000000000)
  {
    v19 = 0;
    LOBYTE(v20) = 1;
    v21 = *a1;
    do
    {
      v23 = *v21++;
      v22 = v23;
      v24 = v23 & 0x20000;
      if (!a7)
      {
        v24 = 0;
      }

      v19 |= v22 & 0x608505680000 | v24;
      v20 = ((v22 & 0x100000000000) != 0) & v20;
    }

    while (v21 != v12);
    v25 = v20 == 0;
    v26 = 0x50000000000;
    if (!v25)
    {
      v26 = 0x150000000000;
    }

    v13 |= v11[a2] & 0x1000000000 | v19 | v26;
  }

  v27 = a3 ^ 1;
  v28 = v12 - v11;
  v29 = (a3 | a4) ^ 1;
  v30 = (a3 ^ 1) & a4;
  LOBYTE(v31) = a7 ^ 1;
  if (v28 <= 1)
  {
    v32 = 1;
  }

  else
  {
    v32 = v28;
  }

  LOBYTE(v33) = 1;
  v34 = v11;
  v35 = a2;
  LOBYTE(v36) = 1;
  do
  {
    v37 = *v34++;
    v31 = BYTE2(v37) & 1 & v31;
    v38 = (v37 >> 18) & 1;
    v39 = (v37 >> 25) & 1;
    v29 &= v39;
    v36 = ((v37 & 0x800000000) != 0) & v36;
    v33 = ((v37 & 0x200000000) != 0) & v33;
    if (v35)
    {
      v40 = v39;
    }

    else
    {
      v40 = 1;
    }

    v30 &= v40 & v38;
    --v35;
    --v32;
  }

  while (v32);
  if (v31)
  {
    v13 |= 0x10000uLL;
  }

  if (v30)
  {
    v13 |= 0x40000uLL;
  }

  if (v29)
  {
    v13 |= 0x2000000uLL;
  }

  if (v36)
  {
    v13 |= 0x800000000uLL;
  }

  if (v33)
  {
    v13 |= 0x200000000uLL;
  }

  v41 = v11[a2] & 0x2000000000 | v13;
  if ((((v27 | a11) & a9) & a4) != 0)
  {
    v41 |= 0x10000000uLL;
  }

  if (((a6 & a10) & (a5 ^ 1 | a11)) != 0)
  {
    return v41 | 0x40000000;
  }

  else
  {
    return v41;
  }
}

unint64_t fst::ReverseProperties(unint64_t this, int a2)
{
  v2 = 0xC00E05430007;
  if (a2)
  {
    v2 = 0xC00F05430007;
  }

  return v2 & this;
}

unint64_t fst::RmEpsilonProperties(unint64_t this, int a2)
{
  v2 = 176160768;
  if ((this & 0x10000) == 0)
  {
    v2 = 0x800000;
  }

  v3 = v2 | this & 0x2800010004;
  if (!a2)
  {
    v3 |= this & 0x4000000000 | 3;
  }

  if ((((this & 0x10000000000) == 0) & a2) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = this & 0x20000;
  }

  return v3 | v4;
}

unint64_t fst::ShortestPathProperties(unint64_t this, int a2)
{
  v2 = 0x852800000000;
  if (a2)
  {
    v2 = 0x812800000000;
  }

  return v2 | this;
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x28210FEB8](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78D0]();
}

{
  return MEMORY[0x2821F78E0]();
}

{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7930]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}