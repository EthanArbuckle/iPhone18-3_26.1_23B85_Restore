void scandium::convert_analytics_to_objc(uint64_t a1@<X0>, __int16 a2@<W1>, _DWORD *a3@<X2>, _DWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>, double a7@<D0>)
{
  LODWORD(a7) = *a1;
  *a6 = [MEMORY[0x277CCABB0] numberWithFloat:a7];
  LODWORD(v13) = *(a1 + 4);
  a6[1] = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  LODWORD(v14) = *(a1 + 8);
  a6[2] = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  LODWORD(v15) = *(a1 + 12);
  a6[3] = [MEMORY[0x277CCABB0] numberWithFloat:v15];
  LODWORD(v16) = *(a1 + 16);
  a6[4] = [MEMORY[0x277CCABB0] numberWithFloat:v16];
  LODWORD(v17) = *(a1 + 20);
  a6[5] = [MEMORY[0x277CCABB0] numberWithFloat:v17];
  LODWORD(v18) = *(a1 + 24);
  a6[6] = [MEMORY[0x277CCABB0] numberWithFloat:v18];
  LODWORD(v19) = *(a1 + 28);
  a6[7] = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  a6[8] = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 32)];
  a6[9] = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 36)];
  a6[10] = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
  a6[11] = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 44)];
  a6[12] = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a1 + 48)];
  a6[13] = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a1 + 50)];
  a6[14] = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a1 + 51)];
  a6[15] = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a1 + 52)];
  a6[16] = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56)];
  a6[17] = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 60)];
  a6[18] = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 64)];
  a6[19] = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 64) != -1];
  v21 = *(a1 + 76);
  if (v21 == 1)
  {
    LODWORD(v20) = *(a1 + 72);
    v22 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
  }

  else
  {
    v22 = 0;
  }

  v96 = v22;
  a6[20] = v22;
  if (a3)
  {
    LODWORD(v23) = *a3;
    v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
  }

  else
  {
    v24 = 0;
  }

  v97 = v24;
  a6[21] = v24;
  if (a4)
  {
    LODWORD(v25) = *a4;
    v26 = [MEMORY[0x277CCABB0] numberWithFloat:v25];
  }

  else
  {
    v26 = 0;
  }

  a6[22] = v26;
  a6[23] = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a1 + 68)];
  a6[24] = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a1 + 70)];
  if ((a2 & 0x100) != 0)
  {
    v27 = [MEMORY[0x277CCABB0] numberWithChar:a2];
  }

  else
  {
    v27 = 0;
  }

  a6[25] = v27;
  a6[26] = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 108)];
  a6[27] = [MEMORY[0x277CCABB0] numberWithBool:a5];
  a6[28] = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 80)];
  a6[29] = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 84)];
  LODWORD(v28) = *(a1 + 88);
  a6[30] = [MEMORY[0x277CCABB0] numberWithFloat:v28];
  LODWORD(v29) = *(a1 + 92);
  a6[31] = [MEMORY[0x277CCABB0] numberWithFloat:v29];
  LODWORD(v30) = *(a1 + 96);
  a6[32] = [MEMORY[0x277CCABB0] numberWithFloat:v30];
  LODWORD(v31) = *(a1 + 100);
  a6[33] = [MEMORY[0x277CCABB0] numberWithFloat:v31];
  LODWORD(v32) = *(a1 + 104);
  a6[34] = [MEMORY[0x277CCABB0] numberWithFloat:v32];
  LODWORD(v33) = *(a1 + 112);
  a6[35] = [MEMORY[0x277CCABB0] numberWithFloat:v33];
  LODWORD(v34) = *(a1 + 116);
  a6[36] = [MEMORY[0x277CCABB0] numberWithFloat:v34];
  LODWORD(v35) = *(a1 + 120);
  a6[37] = [MEMORY[0x277CCABB0] numberWithFloat:v35];
  LODWORD(v36) = *(a1 + 124);
  a6[38] = [MEMORY[0x277CCABB0] numberWithFloat:v36];
  LODWORD(v37) = *(a1 + 128);
  a6[39] = [MEMORY[0x277CCABB0] numberWithFloat:v37];
  LODWORD(v38) = *(a1 + 132);
  a6[40] = [MEMORY[0x277CCABB0] numberWithFloat:v38];
  LODWORD(v39) = *(a1 + 136);
  a6[41] = [MEMORY[0x277CCABB0] numberWithFloat:v39];
  LODWORD(v40) = *(a1 + 140);
  a6[42] = [MEMORY[0x277CCABB0] numberWithFloat:v40];
  LODWORD(v41) = *(a1 + 144);
  a6[43] = [MEMORY[0x277CCABB0] numberWithFloat:v41];
  LODWORD(v42) = *(a1 + 148);
  a6[44] = [MEMORY[0x277CCABB0] numberWithFloat:v42];
  LODWORD(v43) = *(a1 + 152);
  a6[45] = [MEMORY[0x277CCABB0] numberWithFloat:v43];
  a6[46] = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a1 + 156)];
  a6[47] = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a1 + 158)];
  a6[48] = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a1 + 160)];
  a6[49] = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a1 + 162)];
  a6[50] = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a1 + 164)];
  a6[51] = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a1 + 166)];
  a6[52] = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a1 + 168)];
  a6[53] = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a1 + 170)];
  a6[54] = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a1 + 172)];
  a6[55] = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a1 + 174)];
  a6[56] = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a1 + 176)];
  a6[57] = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a1 + 178)];
  a6[58] = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*(a1 + 180)];
  a6[59] = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 184)];
  a6[60] = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 188)];
  a6[61] = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 192)];
  a6[62] = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 196)];
  a6[63] = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 200)];
  a6[64] = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 204)];
  a6[65] = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 208)];
  a6[66] = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 212)];
  a6[67] = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 216)];
  a6[68] = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 220)];
  a6[69] = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 224)];
  a6[70] = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 228)];
  a6[71] = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 232)];
  a6[72] = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 236)];
  a6[73] = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 240)];
  a6[74] = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 244)];
  LODWORD(v44) = *(a1 + 248);
  a6[75] = [MEMORY[0x277CCABB0] numberWithFloat:v44];
  LODWORD(v45) = *(a1 + 252);
  a6[76] = [MEMORY[0x277CCABB0] numberWithFloat:v45];
  LODWORD(v46) = *(a1 + 256);
  a6[77] = [MEMORY[0x277CCABB0] numberWithFloat:v46];
  LODWORD(v47) = *(a1 + 260);
  a6[78] = [MEMORY[0x277CCABB0] numberWithFloat:v47];
  LODWORD(v48) = *(a1 + 264);
  a6[79] = [MEMORY[0x277CCABB0] numberWithFloat:v48];
  LODWORD(v49) = *(a1 + 268);
  a6[80] = [MEMORY[0x277CCABB0] numberWithFloat:v49];
  LODWORD(v50) = *(a1 + 272);
  a6[81] = [MEMORY[0x277CCABB0] numberWithFloat:v50];
  LODWORD(v51) = *(a1 + 276);
  a6[82] = [MEMORY[0x277CCABB0] numberWithFloat:v51];
  LODWORD(v52) = *(a1 + 280);
  a6[83] = [MEMORY[0x277CCABB0] numberWithFloat:v52];
  LODWORD(v53) = *(a1 + 284);
  a6[84] = [MEMORY[0x277CCABB0] numberWithFloat:v53];
  LODWORD(v54) = *(a1 + 288);
  a6[85] = [MEMORY[0x277CCABB0] numberWithFloat:v54];
  LODWORD(v55) = *(a1 + 292);
  a6[86] = [MEMORY[0x277CCABB0] numberWithFloat:v55];
  LODWORD(v56) = *(a1 + 296);
  a6[87] = [MEMORY[0x277CCABB0] numberWithFloat:v56];
  LODWORD(v57) = *(a1 + 300);
  a6[88] = [MEMORY[0x277CCABB0] numberWithFloat:v57];
  LODWORD(v58) = *(a1 + 304);
  a6[89] = [MEMORY[0x277CCABB0] numberWithFloat:v58];
  LODWORD(v59) = *(a1 + 308);
  a6[90] = [MEMORY[0x277CCABB0] numberWithFloat:v59];
  LODWORD(v60) = *(a1 + 312);
  a6[91] = [MEMORY[0x277CCABB0] numberWithFloat:v60];
  LODWORD(v61) = *(a1 + 316);
  a6[92] = [MEMORY[0x277CCABB0] numberWithFloat:v61];
  LODWORD(v62) = *(a1 + 320);
  a6[93] = [MEMORY[0x277CCABB0] numberWithFloat:v62];
  LODWORD(v63) = *(a1 + 324);
  a6[94] = [MEMORY[0x277CCABB0] numberWithFloat:v63];
  LODWORD(v64) = *(a1 + 328);
  a6[95] = [MEMORY[0x277CCABB0] numberWithFloat:v64];
  LODWORD(v65) = *(a1 + 332);
  a6[96] = [MEMORY[0x277CCABB0] numberWithFloat:v65];
  LODWORD(v66) = *(a1 + 336);
  a6[97] = [MEMORY[0x277CCABB0] numberWithFloat:v66];
  LODWORD(v67) = *(a1 + 340);
  a6[98] = [MEMORY[0x277CCABB0] numberWithFloat:v67];
  LODWORD(v68) = *(a1 + 344);
  a6[99] = [MEMORY[0x277CCABB0] numberWithFloat:v68];
  LODWORD(v69) = *(a1 + 348);
  a6[100] = [MEMORY[0x277CCABB0] numberWithFloat:v69];
  LODWORD(v70) = *(a1 + 352);
  a6[101] = [MEMORY[0x277CCABB0] numberWithFloat:v70];
  LODWORD(v71) = *(a1 + 356);
  a6[102] = [MEMORY[0x277CCABB0] numberWithFloat:v71];
  LODWORD(v72) = *(a1 + 360);
  a6[103] = [MEMORY[0x277CCABB0] numberWithFloat:v72];
  LODWORD(v73) = *(a1 + 364);
  a6[104] = [MEMORY[0x277CCABB0] numberWithFloat:v73];
  LODWORD(v74) = *(a1 + 368);
  a6[105] = [MEMORY[0x277CCABB0] numberWithFloat:v74];
  LODWORD(v75) = *(a1 + 372);
  a6[106] = [MEMORY[0x277CCABB0] numberWithFloat:v75];
  LODWORD(v76) = *(a1 + 376);
  a6[107] = [MEMORY[0x277CCABB0] numberWithFloat:v76];
  LODWORD(v77) = *(a1 + 380);
  a6[108] = [MEMORY[0x277CCABB0] numberWithFloat:v77];
  LODWORD(v78) = *(a1 + 384);
  a6[109] = [MEMORY[0x277CCABB0] numberWithFloat:v78];
  LODWORD(v79) = *(a1 + 388);
  a6[110] = [MEMORY[0x277CCABB0] numberWithFloat:v79];
  LODWORD(v80) = *(a1 + 392);
  a6[111] = [MEMORY[0x277CCABB0] numberWithFloat:v80];
  LODWORD(v81) = *(a1 + 396);
  a6[112] = [MEMORY[0x277CCABB0] numberWithFloat:v81];
  LODWORD(v82) = *(a1 + 400);
  a6[113] = [MEMORY[0x277CCABB0] numberWithFloat:v82];
  LODWORD(v83) = *(a1 + 404);
  a6[114] = [MEMORY[0x277CCABB0] numberWithFloat:v83];
  LODWORD(v84) = *(a1 + 408);
  a6[115] = [MEMORY[0x277CCABB0] numberWithFloat:v84];
  LODWORD(v85) = *(a1 + 412);
  a6[116] = [MEMORY[0x277CCABB0] numberWithFloat:v85];
  LODWORD(v86) = *(a1 + 416);
  a6[117] = [MEMORY[0x277CCABB0] numberWithFloat:v86];
  LODWORD(v87) = *(a1 + 420);
  a6[118] = [MEMORY[0x277CCABB0] numberWithFloat:v87];
  LODWORD(v88) = *(a1 + 424);
  a6[119] = [MEMORY[0x277CCABB0] numberWithFloat:v88];
  LODWORD(v89) = *(a1 + 428);
  a6[120] = [MEMORY[0x277CCABB0] numberWithFloat:v89];
  LODWORD(v90) = *(a1 + 432);
  a6[121] = [MEMORY[0x277CCABB0] numberWithFloat:v90];
  LODWORD(v91) = *(a1 + 436);
  a6[122] = [MEMORY[0x277CCABB0] numberWithFloat:v91];
  LODWORD(v92) = *(a1 + 440);
  a6[123] = [MEMORY[0x277CCABB0] numberWithFloat:v92];
  LODWORD(v93) = *(a1 + 444);
  a6[124] = [MEMORY[0x277CCABB0] numberWithFloat:v93];
  LODWORD(v94) = *(a1 + 448);
  a6[125] = [MEMORY[0x277CCABB0] numberWithFloat:v94];
  LODWORD(v95) = *(a1 + 452);
  a6[126] = [MEMORY[0x277CCABB0] numberWithFloat:v95];
  if ((a2 & 0x100) != 0)
  {
  }

  if (a4)
  {
  }

  if (a3)
  {
  }

  if (v21)
  {
  }
}

void sub_2647F8734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, void *a10)
{
  if (v12)
  {
  }

  if (v11)
  {
  }

  if (v14)
  {
  }

  _Unwind_Resume(a1);
}

NSNumber *numberOrNsNull(NSNumber *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = [MEMORY[0x277CBEB68] null];
  }

  v4 = v3;

  return v4;
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void std::string::__throw_length_error[abi:ne200100]()
{
  std::__throw_length_error[abi:ne200100]("basic_string");
}

{
  std::__throw_length_error[abi:ne200100]("basic_string");
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279B6B7B8, MEMORY[0x277D825F0]);
}

{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279B6B7B8, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(scandium::AbortReason)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(scandium::AbortReason,scandium::Analytics const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(scandium::Result,scandium::Analytics const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

Scandium::ScandiumMvmt::scandium_mvmt_processor_t ***std::unique_ptr<scandium::Processor>::reset[abi:ne200100](Scandium::ScandiumMvmt::scandium_mvmt_processor_t ****a1, Scandium::ScandiumMvmt::scandium_mvmt_processor_t ***a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    scandium::Processor::~Processor(result);

    JUMPOUT(0x266741650);
  }

  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

id sc_get_log()
{
  if (sc_get_log_onceToken != -1)
  {
    sc_get_log_cold_1();
  }

  v1 = sc_get_log_log;

  return v1;
}

void __sc_get_log_block_invoke()
{
  v0 = os_log_create("com.apple.scandium", "framework");
  v1 = sc_get_log_log;
  sc_get_log_log = v0;
}

_DWORD *iirSOS_new(int a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x18uLL, 0x10C004046BDA19FuLL);
  v5 = (a1 & 1) + a1 / 2;
  *v4 = a1;
  v4[1] = v5;
  *(v4 + 1) = a2;
  *(v4 + 2) = malloc_type_calloc(v5, 8uLL, 0x100004052888210uLL);
  return v4;
}

uint64_t iirSOS_delete(void **a1)
{
  if (!a1)
  {
    return 2;
  }

  free(a1[2]);
  free(a1);
  return 0;
}

uint64_t iirSOS_init(uint64_t a1)
{
  if (!a1)
  {
    return 2;
  }

  v1 = *(a1 + 4);
  if (v1 < 1)
  {
    return 0;
  }

  v2 = 2 * v1;
  v3 = *(a1 + 16);
  if (v2 <= 1)
  {
    v2 = 1;
  }

  bzero(v3, 4 * v2);
  return 0;
}

uint64_t iirSOS_setCoefs(uint64_t a1, uint64_t a2)
{
  result = 2;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *(a1 + 8) = a2;
    }
  }

  return result;
}

uint64_t iirSOS_process(uint64_t a1, float *a2, float *a3, unsigned int a4)
{
  result = 2;
  if (a1 && a2 && a3)
  {
    if ((a4 & 0x80000000) != 0)
    {
      return 4;
    }

    else
    {
      v6 = *(a1 + 4);
      if (v6 >= 1)
      {
        v7 = 0;
        v10 = a1 + 8;
        v8 = *(a1 + 8);
        v9 = *(v10 + 8);
        do
        {
          v11 = *(v9 + 8 * v7);
          v12 = (2 * (v7 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
          v13 = *(v9 + 4 * v12);
          if (a4)
          {
            v14 = (v8 + 20 * v7);
            v15 = *v14;
            v16 = v14[1];
            v17 = v14[2];
            v18 = -v14[3];
            v19 = -v14[4];
            v20 = a4;
            v21 = a3;
            do
            {
              v22 = *a2++;
              v23 = v11 + (v15 * v22);
              *v21++ = v23;
              v11 = v13 + ((v23 * v18) + (v16 * v22));
              v13 = (v23 * v19) + (v17 * v22);
              --v20;
            }

            while (v20);
          }

          *(v9 + 8 * v7) = v11;
          *(v9 + 4 * v12) = v13;
          ++v7;
          a2 = a3;
        }

        while (v7 != v6);
      }

      return 0;
    }
  }

  return result;
}

void Scandium::ScandiumPPG::find_slope(const float *a1, unsigned int a2, unsigned int a3, std::vector<int> *a4)
{
  v8 = (2 * a3) | 1;
  LODWORD(v10[0]) = 0;
  std::vector<float>::vector[abi:ne200100](__C, v8);
  __A = a3;
  __B = -a3;
  vDSP_vgen(&__A, &__B, __C[0], 1, v8);
  v11 = 0.0;
  vDSP_svesq(__C[0], 1, &v11, v8);
  vDSP_vsdiv(__C[0], 1, &v11, __C[0], 1, v8);
  v9 = 2 * a3 + a2;
  std::vector<float>::vector[abi:ne200100](v10, 2 * a3 + v9);
  vDSP_vclr(v10[0], 1, a3);
  vDSP_vclr(&v10[0][v9 - 1], -1, a3);
  vDSP_mmov(a1, &v10[0][a3], a2, 1uLL, a2, a2);
  std::vector<float>::resize(a4, v9);
  vDSP_conv(v10[0], 1, &__C[0][2 * a3], -1, a4->__begin_, 1, v9, v8);
  std::vector<float>::resize(a4, a2);
  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  if (__C[0])
  {
    __C[1] = __C[0];
    operator delete(__C[0]);
  }
}

void sub_2647FC2C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::resize(std::vector<int> *this, std::vector<int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<float>::__append(this, __sz - v2);
  }
}

void *std::vector<float>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_2647FC42C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::vector<float>::__append(std::vector<int> *this, std::vector<int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t findPeaks(float *a1, int a2, vDSP_Length *__I, float a4, unsigned int a5, int a6, const float *__C, float *a8, int *a9, unsigned int *a10)
{
  if (a6)
  {
    v10 = -1.0;
  }

  else
  {
    v10 = 1.0;
  }

  v11 = (a2 - 1);
  if (v11 < 2)
  {
    goto LABEL_78;
  }

  v18 = 0;
  v19 = 0;
  v20 = a1 + 2;
  v21 = -1;
  v22 = 0.0;
  for (i = 1; i != v11; ++i)
  {
    v24 = v10 * *(v20 - 1);
    v25 = v10 * *v20;
    if (v19)
    {
      if (v24 == v25)
      {
        v19 = 1;
        goto LABEL_30;
      }

      if (v24 < v25)
      {
        goto LABEL_28;
      }

      v19 = 0;
      __C[v18] = v22;
      a9[v18] = v21;
    }

    else
    {
      v26 = v10 * *(v20 - 2);
      if (v24 <= a4 || v24 <= v26 || v24 <= v25)
      {
        if (v24 > a4 && v24 > v26 && v24 == v25)
        {
          v19 = 1;
          v21 = i;
          v22 = v10 * *(v20 - 1);
          goto LABEL_30;
        }

LABEL_28:
        v19 = 0;
        goto LABEL_30;
      }

      v19 = 0;
      __C[v18] = v24;
      a9[v18] = i;
    }

    ++v18;
LABEL_30:
    ++v20;
  }

  if (!v18)
  {
LABEL_78:
    *a10 = 0;
    return 0xFFFFFFFFLL;
  }

  v31 = 0;
  v32 = v18;
  v33 = xmmword_2648215F0;
  v34 = vdupq_n_s64(v18 - 1);
  v35 = vdupq_n_s64(2uLL);
  do
  {
    v36 = vmovn_s64(vcgeq_u64(v34, v33));
    if (v36.i8[0])
    {
      __I[v31] = v31;
    }

    if (v36.i8[4])
    {
      __I[v31 + 1] = v31 + 1;
    }

    v31 += 2;
    v33 = vaddq_s64(v33, v35);
  }

  while (((v18 + 1) & 0x1FFFFFFFELL) != v31);
  vDSP_vsorti(__C, __I, 0, v18, -1);
  if (v18 != 1)
  {
    v37 = 0;
    do
    {
      v38 = __I[v37];
      v39 = a9[v38];
      if (v39)
      {
        if (v38 >= 1)
        {
          v40 = (__I[v37] & 0x7FFFFFFF) + 1;
          v41 = &a9[(__I[v37] & 0x7FFFFFFF) - 1];
          do
          {
            if (*v41)
            {
              if (v39 - *v41 >= a5)
              {
                break;
              }

              *v41 = 0;
            }

            --v40;
            --v41;
          }

          while (v40 > 1);
        }

        v42 = v38 + 1;
        if (v42 < v18)
        {
          v43 = &a9[v42];
          do
          {
            if (*v43)
            {
              if (*v43 - v39 >= a5)
              {
                break;
              }

              *v43 = 0;
            }

            ++v43;
            ++v42;
          }

          while (v18 > v42);
        }
      }

      ++v37;
    }

    while (v37 != v18 - 1);
  }

  v44 = 0;
  v45 = a9;
  v46 = __C;
  do
  {
    v48 = *v45++;
    v47 = v48;
    if (v48)
    {
      a9[v44] = v47;
      __C[v44++] = *v46;
    }

    ++v46;
    --v32;
  }

  while (v32);
  result = 0;
  *a10 = v44;
  if (a8 && v44)
  {
    for (j = 0; j != v44; ++j)
    {
      v51 = a9[j];
      v52 = v51;
      if (v51 >= 1)
      {
        v53 = v51 + 1;
        v54 = &a1[v51];
        while ((v10 * *(v54 - 1)) < (v10 * *v54))
        {
          --v53;
          --v54;
          if (v53 <= 1)
          {
            v52 = 0;
            goto LABEL_67;
          }
        }

        v52 = v53 - 1;
      }

LABEL_67:
      v55 = v10 * a1[v52];
      if (v51 <= v11)
      {
        v56 = v11;
      }

      else
      {
        v56 = a9[j];
      }

      v57 = &a1[v51 + 1];
      while (v11 > v51)
      {
        v58 = v10 * *v57;
        v59 = v10 * *(v57++ - 1);
        LODWORD(v51) = v51 + 1;
        if (v58 >= v59)
        {
          v56 = v51 - 1;
          break;
        }
      }

      if (v55 <= (v10 * a1[v56]))
      {
        v55 = v10 * a1[v56];
      }

      a8[j] = -(v55 - (v10 * __C[j]));
    }

    return 0;
  }

  return result;
}

uint64_t Scandium::ScandiumPPG::scandium_signal_conditioning_t::scandium_signal_conditioning_t(uint64_t a1)
{
  *(a1 + 56) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  Scandium::ScandiumPPG::scandium_signal_conditioning_t::reset(a1);
  return a1;
}

{
  return Scandium::ScandiumPPG::scandium_signal_conditioning_t::scandium_signal_conditioning_t(a1);
}

_DWORD *Scandium::ScandiumPPG::scandium_signal_conditioning_t::reset(Scandium::ScandiumPPG::scandium_signal_conditioning_t *this)
{
  v2 = *this;
  if (v2)
  {
    iirSOS_setCoefs(v2, &Scandium::ScandiumPPG::ac_lpf);
  }

  else
  {
    *this = iirSOS_new(2, &Scandium::ScandiumPPG::ac_lpf);
  }

  v3 = *(this + 1);
  if (v3)
  {
    iirSOS_setCoefs(v3, &Scandium::ScandiumPPG::ac_hpf);
  }

  else
  {
    *(this + 1) = iirSOS_new(2, &Scandium::ScandiumPPG::ac_hpf);
  }

  v4 = *(this + 2);
  if (v4)
  {
    iirSOS_setCoefs(v4, &Scandium::ScandiumPPG::dc_lpf_section1);
  }

  else
  {
    *(this + 2) = iirSOS_new(2, &Scandium::ScandiumPPG::dc_lpf_section1);
  }

  v5 = *(this + 3);
  if (v5)
  {

    return iirSOS_setCoefs(v5, &Scandium::ScandiumPPG::dc_lpf_section2);
  }

  else
  {
    result = iirSOS_new(2, &Scandium::ScandiumPPG::dc_lpf_section2);
    *(this + 3) = result;
  }

  return result;
}

void Scandium::ScandiumPPG::scandium_signal_conditioning_t::~scandium_signal_conditioning_t(void ***this)
{
  iirSOS_delete(*this);
  iirSOS_delete(this[1]);
  iirSOS_delete(this[2]);
  iirSOS_delete(this[3]);
  std::__function::__value_func<void ()(std::string const&,std::unordered_map<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>> const&)>::~__value_func[abi:ne200100]((this + 4));
}

uint64_t Scandium::ScandiumPPG::scandium_signal_conditioning_t::process(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v28 = 0;
  v29 = 0;
  v27 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v27, v6, v6 + 4 * v7, v7);
  memset(&v26, 0, sizeof(v26));
  memset(&__p, 0, sizeof(__p));
  if (*(a2 + 8))
  {
    **a3 = stats::mean(v27, ((v28 - v27) >> 2)) / 1000000.0;
    if (Scandium::ScandiumPPG::scandium_signal_conditioning_t::compute_ac(a1, &v27, &v26))
    {
      v8 = 1;
    }

    else
    {
      v8 = Scandium::ScandiumPPG::scandium_signal_conditioning_t::compute_dc(a1, &v27, &__p);
    }

    begin = v26.__begin_;
    if (v26.__end_ - v26.__begin_ != __p.__end_ - __p.__begin_)
    {
      __assert_rtn("process", "scandium_signal_conditioning.cpp", 133, "ac_out.size() == dc_out.size()");
    }

    if (!v8)
    {
      v10 = *(a3 + 8);
      v10->__end_ = v10->__begin_;
      std::vector<float>::reserve(v10, v26.__end_ - begin);
      begin = v26.__begin_;
      if (v26.__end_ != v26.__begin_)
      {
        v11 = 0;
        do
        {
          if (v11 >= __p.__end_ - __p.__begin_)
          {
            std::vector<float>::__throw_out_of_range[abi:ne200100]();
          }

          v12 = (*&begin[v11] * -100.0) / *&__p.__begin_[v11];
          v13 = *(a3 + 8);
          v15 = *(v13 + 8);
          v14 = *(v13 + 16);
          if (v15 >= v14)
          {
            v17 = *v13;
            v18 = v15 - *v13;
            v19 = v18 >> 2;
            v20 = (v18 >> 2) + 1;
            if (v20 >> 62)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            v21 = v14 - v17;
            if (v21 >> 1 > v20)
            {
              v20 = v21 >> 1;
            }

            if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v22 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v22 = v20;
            }

            if (v22)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(*(a3 + 8), v22);
            }

            *(4 * v19) = v12;
            v16 = 4 * v19 + 4;
            memcpy(0, v17, v18);
            v23 = *v13;
            *v13 = 0;
            *(v13 + 8) = v16;
            *(v13 + 16) = 0;
            if (v23)
            {
              operator delete(v23);
            }
          }

          else
          {
            *v15 = v12;
            v16 = (v15 + 1);
          }

          *(v13 + 8) = v16;
          ++v11;
          begin = v26.__begin_;
        }

        while (v11 < v26.__end_ - v26.__begin_);
      }
    }

    if (__p.__begin_)
    {
      __p.__end_ = __p.__begin_;
      operator delete(__p.__begin_);
      begin = v26.__begin_;
    }

    if (begin)
    {
      v26.__end_ = begin;
      operator delete(begin);
    }
  }

  else
  {
    v8 = 4;
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  return v8;
}

void sub_2647FCE00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

BOOL Scandium::ScandiumPPG::scandium_signal_conditioning_t::compute_ac(uint64_t *a1, uint64_t a2, std::vector<int> *this)
{
  memset(&v16, 0, sizeof(v16));
  memset(&__p, 0, sizeof(__p));
  std::vector<float>::resize(this, (*(a2 + 8) - *a2) >> 2);
  std::vector<float>::resize(&v16, (*(a2 + 8) - *a2) >> 2);
  std::vector<float>::resize(&__p, (*(a2 + 8) - *a2) >> 2);
  v6 = *(a2 + 8);
  begin = v16.__begin_;
  if (v6 != *a2)
  {
    memmove(v16.__begin_, *a2, v6 - *a2);
    begin = v16.__begin_;
  }

  end = v16.__end_;
  if (begin != v16.__end_)
  {
    v9 = *begin;
    do
    {
      *begin = *begin - v9;
      ++begin;
    }

    while (begin != end);
  }

  if (iirSOS_init(*a1) || iirSOS_process(*a1, v16.__begin_, __p.__begin_, (*(a2 + 8) - *a2) >> 2))
  {
    goto LABEL_12;
  }

  v10 = __p.__begin_;
  v11 = __p.__end_;
  if (__p.__begin_ != __p.__end_)
  {
    v12 = *__p.__begin_;
    do
    {
      *v10 = *v10 - v12;
      ++v10;
    }

    while (v10 != v11);
  }

  if (iirSOS_init(a1[1]))
  {
LABEL_12:
    v13 = 1;
  }

  else
  {
    v13 = iirSOS_process(a1[1], __p.__begin_, this->__begin_, (*(a2 + 8) - *a2) >> 2) != 0;
  }

  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  if (v16.__begin_)
  {
    v16.__end_ = v16.__begin_;
    operator delete(v16.__begin_);
  }

  return v13;
}

void sub_2647FCFB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Scandium::ScandiumPPG::scandium_signal_conditioning_t::compute_dc(uint64_t a1, uint64_t a2, std::vector<int> *this)
{
  memset(&v18, 0, sizeof(v18));
  memset(&__p, 0, sizeof(__p));
  std::vector<float>::resize(this, (*(a2 + 8) - *a2) >> 2);
  std::vector<float>::resize(&v18, (*(a2 + 8) - *a2) >> 2);
  std::vector<float>::resize(&__p, (*(a2 + 8) - *a2) >> 2);
  v6 = *(a2 + 8);
  begin = v18.__begin_;
  if (v6 != *a2)
  {
    memmove(v18.__begin_, *a2, v6 - *a2);
    begin = v18.__begin_;
  }

  v8 = *begin;
  end = v18.__end_;
  while (begin != end)
  {
    *begin = *begin - v8;
    ++begin;
  }

  if (iirSOS_init(*(a1 + 16)))
  {
    v10 = 0;
  }

  else
  {
    v10 = iirSOS_process(*(a1 + 16), v18.__begin_, __p.__begin_, (*(a2 + 8) - *a2) >> 2) == 0;
  }

  v11 = !v10;
  v12 = __p.__begin_;
  for (i = __p.__end_; v12 != i; ++v12)
  {
    *v12 = *v12 * 0.00000034061;
  }

  if (v10)
  {
    if (iirSOS_init(*(a1 + 24)))
    {
      v11 = 1;
    }

    else
    {
      v11 = iirSOS_process(*(a1 + 24), __p.__begin_, this->__begin_, (*(a2 + 8) - *a2) >> 2) != 0;
    }

    v14 = this->__begin_;
    v15 = this->__end_;
    while (v14 != v15)
    {
      *v14 = v8 + *v14;
      ++v14;
    }
  }

  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  if (v18.__begin_)
  {
    v18.__end_ = v18.__begin_;
    operator delete(v18.__begin_);
  }

  return v11;
}

void sub_2647FD184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      v2 = this->__end_ - this->__begin_;
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this, __n);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2647FD2A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279B6B7C0, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

uint64_t std::__function::__value_func<void ()(std::string const&,std::unordered_map<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>> const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t Scandium::ScandiumPPG::get_blank_path_idx(Scandium::ScandiumPPG *this)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = this;
  v7[4] = xmmword_26481F3F0;
  v7[5] = unk_26481F400;
  v7[6] = xmmword_26481F410;
  v7[7] = unk_26481F420;
  v7[0] = xmmword_26481F3B0;
  v7[1] = unk_26481F3C0;
  v7[2] = xmmword_26481F3D0;
  v7[3] = unk_26481F3E0;
  std::unordered_map<int,int>::unordered_map(v5, v7, 16);
  if (std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(v5, &v6))
  {
    v1 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(v5, &v6);
    if (!v1)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v2 = *(v1 + 5);
  }

  else
  {
    v2 = 0xFFFFFFFFLL;
  }

  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(v5);
  v3 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t Scandium::ScandiumPPG::scandium_calibration_t::process(float a1, float a2, uint64_t a3, int a4, int a5, float *a6)
{
  coeff = Scandium::ScandiumPPG::scandium_calibration_t::get_coeff(Scandium::ScandiumPPG::path_array[4 * a4 + a5], __p);
  Scandium::ScandiumPPG::scandium_calibration_t::compute_calibration_coeffs(a1, a2, coeff, __p, a6);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return 0;
}

uint64_t Scandium::ScandiumPPG::scandium_calibration_t::get_coeff@<X0>(unsigned __int8 a1@<W1>, void *a2@<X8>)
{
  v33[2] = *MEMORY[0x277D85DE8];
  v18 = a1;
  v25[0] = xmmword_26481F430;
  memset(&v25[1], 0, 32);
  v25[3] = *"j;g?";
  v26 = 0;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v14, v25, v27, 0x12uLL);
  v27[0] = 0;
  memset(v28, 0, sizeof(v28));
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v28, v14, v15, (v15 - v14) >> 2);
  v22[0] = xmmword_26481F478;
  memset(&v22[1], 0, 32);
  v22[3] = unk_26481F4A8;
  v23 = 0;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&v11, v22, &v24, 0x12uLL);
  v29 = 1;
  memset(v30, 0, sizeof(v30));
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v30, v11, v12, (v12 - v11) >> 2);
  v19[0] = xmmword_26481F4C0;
  memset(&v19[1], 0, 32);
  v19[3] = unk_26481F4F0;
  v20 = 0;
  v9 = 0;
  v10 = 0;
  __p = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(&__p, v19, &v21, 0x12uLL);
  v31 = 2;
  v33[0] = 0;
  v33[1] = 0;
  v32 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v32, __p, v9, (v9 - __p) >> 2);
  std::unordered_map<Scandium::ScandiumPPG::PathType,std::vector<float>>::unordered_map(v17, v27, 3);
  for (i = 0; i != -12; i -= 4)
  {
    v4 = v33[i - 1];
    if (v4)
    {
      v33[i] = v4;
      operator delete(v4);
    }
  }

  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  v5 = std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>>>::find<Scandium::ScandiumPPG::PathType>(v17, &v18);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a2, v5[3], v5[4], (v5[4] - v5[3]) >> 2);
  result = std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>>>::~__hash_table(v17);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2647FD7A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19)
{
  v21 = (v19 + 80);
  v22 = -96;
  while (1)
  {
    v23 = *(v21 - 1);
    if (v23)
    {
      *v21 = v23;
      operator delete(v23);
    }

    v21 -= 4;
    v22 += 32;
    if (!v22)
    {
      if (__p)
      {
        operator delete(__p);
      }

      if (a13)
      {
        operator delete(a13);
      }

      if (a16)
      {
        operator delete(a16);
      }

      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t Scandium::ScandiumPPG::scandium_calibration_t::compute_calibration_coeffs(float a1, float a2, uint64_t a3, float **a4, float *a5)
{
  v5 = (a2 / 850.0) + -1.0;
  v6 = (a1 / 660.0) + -1.0;
  v7 = *a4;
  *a5 = ((((**a4 + ((*a4)[1] * v6)) + ((*a4)[2] * (v6 * v6))) + ((*a4)[3] * v5)) + ((*a4)[4] * (v5 * v5))) + ((v6 * (*a4)[5]) * v5);
  a5[1] = ((((v7[6] + (v7[7] * v6)) + (v7[8] * (v6 * v6))) + (v7[9] * v5)) + (v7[10] * (v5 * v5))) + ((v6 * v7[11]) * v5);
  a5[2] = ((((v7[12] + (v7[13] * v6)) + (v7[14] * (v6 * v6))) + (v7[15] * v5)) + (v7[16] * (v5 * v5))) + ((v6 * v7[17]) * v5);
  return 0;
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2647FD99C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<int,int>::unordered_map(uint64_t a1, int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int const,int> const&>(a1, a2);
      a2 += 2;
      v5 -= 8;
    }

    while (v5);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__emplace_unique_key_args<int,std::pair<int const,int> const&>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t std::unordered_map<Scandium::ScandiumPPG::PathType,std::vector<float>>::unordered_map(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>>>::__emplace_unique_key_args<Scandium::ScandiumPPG::PathType,std::pair<Scandium::ScandiumPPG::PathType const,std::vector<float>> const&>(a1, a2);
      a2 += 32;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>>>::__emplace_unique_key_args<Scandium::ScandiumPPG::PathType,std::pair<Scandium::ScandiumPPG::PathType const,std::vector<float>> const&>(void *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    v9 = *a2;
    std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>>>::__construct_node_hash<std::pair<Scandium::ScandiumPPG::PathType const,std::vector<float>> const&>();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 16) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_2647FE238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2647FE2F0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>>>::find<Scandium::ScandiumPPG::PathType>(void *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % a1[1];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 16) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t Scandium::find_optical_gen(unsigned __int8 *a1)
{
  std::string::basic_string[abi:ne200100]<0>(v51, "N157");
  v53 = *v51;
  v54 = v52;
  v52 = 0;
  *v51 = 0uLL;
  v55[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v49, "N158");
  v56 = v49;
  v57 = v50;
  v50 = 0;
  v49 = 0uLL;
  v58 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v47, "N187");
  v59 = v47;
  v60 = v48;
  v48 = 0;
  v47 = 0uLL;
  v61 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v45, "N188");
  v62 = v45;
  v63 = v46;
  v46 = 0;
  v45 = 0uLL;
  v64 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v43, "N197");
  v65 = v43;
  v66 = v44;
  v44 = 0;
  v43 = 0uLL;
  v67 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v41, "N198");
  v68 = v41;
  v69 = v42;
  v42 = 0;
  v41 = 0uLL;
  v70 = 0;
  std::string::basic_string[abi:ne200100]<0>(v39, "N199");
  v71 = *v39;
  v72 = v40;
  v39[1] = 0;
  v40 = 0;
  v39[0] = 0;
  v73 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v37, "N207");
  v74 = v37;
  v75 = v38;
  v38 = 0;
  v37 = 0uLL;
  v76 = 1;
  std::string::basic_string[abi:ne200100]<0>(v35, "N208");
  v77 = *v35;
  v78 = v36;
  v35[1] = 0;
  v36 = 0;
  v35[0] = 0;
  v79 = 1;
  std::string::basic_string[abi:ne200100]<0>(v33, "N210");
  v80 = *v33;
  v81 = v34;
  v33[1] = 0;
  v34 = 0;
  v33[0] = 0;
  v82 = 1;
  std::string::basic_string[abi:ne200100]<0>(v31, "N217");
  v83 = *v31;
  v84 = v32;
  v31[1] = 0;
  v32 = 0;
  v31[0] = 0;
  v85 = 2;
  std::string::basic_string[abi:ne200100]<0>(v29, "N218");
  v86 = *v29;
  v87 = v30;
  v29[1] = 0;
  v30 = 0;
  v29[0] = 0;
  v88 = 2;
  std::string::basic_string[abi:ne200100]<0>(v27, "N227");
  v89 = *v27;
  v90 = v28;
  v27[1] = 0;
  v28 = 0;
  v27[0] = 0;
  v91 = 3;
  std::string::basic_string[abi:ne200100]<0>(__p, "N228");
  v92 = *__p;
  v93 = v26;
  __p[1] = 0;
  v26 = 0;
  __p[0] = 0;
  v94 = 3;
  v2 = std::string::basic_string[abi:ne200100]<0>(&v23, "N230");
  v95 = v23;
  v96 = v24;
  v97 = 3;
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[0]);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33[0]);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35[0]);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39[0]);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51[0]);
  }

  v3 = 0;
  v4 = a1[23];
  v20 = (a1 + 23);
  v21 = a1;
  if ((v4 & 0x80u) == 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if ((v4 & 0x80u) == 0)
  {
    v6 = a1[23];
  }

  else
  {
    v6 = *(a1 + 1);
  }

  __s = v5;
  v7 = &v5[v6];
  do
  {
    v8 = v55[v3 - 1];
    v9 = *(&v53 + v3 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v10 = &v53 + v3;
    }

    else
    {
      v10 = *(&v53 + v3);
    }

    if ((v8 & 0x80u) == 0)
    {
      v11 = v55[v3 - 1];
    }

    else
    {
      v11 = *(&v53 + v3 + 8);
    }

    if (v11)
    {
      if (v6 >= v11)
      {
        v12 = *v10;
        v13 = v6;
        v2 = __s;
        do
        {
          v14 = v13 - v11;
          if (v14 == -1)
          {
            break;
          }

          v2 = memchr(v2, v12, v14 + 1);
          if (!v2)
          {
            break;
          }

          v15 = v2;
          v2 = memcmp(v2, v10, v11);
          if (!v2)
          {
            if (v15 == v7 || v15 != __s)
            {
              break;
            }

            goto LABEL_52;
          }

          v2 = v15 + 1;
          v13 = v7 - (v15 + 1);
        }

        while (v13 >= v11);
      }
    }

    else
    {
LABEL_52:
      if ((v8 & 0x80) != 0)
      {
        v8 = v9;
        if (v6 == v9)
        {
          goto LABEL_62;
        }
      }

      else if (v6 == v8)
      {
        goto LABEL_62;
      }

      if (v6 <= v8)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if ((*(MEMORY[0x277D85DE0] + 4 * __s[v8] + 60) & 0x400) == 0)
      {
LABEL_62:
        v17 = v55[v3];
        goto LABEL_63;
      }
    }

    v3 += 32;
  }

  while (v3 != 480);
  log = Scandium::algs_get_log(v2);
  if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
  {
    Scandium::find_optical_gen(v20, v21, log);
  }

  v17 = 3;
LABEL_63:
  v18 = 60;
  do
  {
    if (SHIBYTE(v51[v18 + 1]) < 0)
    {
      operator delete(v51[v18 - 1]);
    }

    v18 -= 4;
  }

  while (v18 * 8);
  return v17;
}

void sub_2647FEA44(_Unwind_Exception *a1)
{
  v2 = &STACK[0x357];
  v3 = -480;
  v4 = &STACK[0x357];
  while (1)
  {
    v5 = *v4;
    v4 -= 4;
    if (v5 < 0)
    {
      operator delete(*(v2 - 23));
    }

    v2 = v4;
    v3 += 32;
    if (!v3)
    {
      _Unwind_Resume(a1);
    }
  }
}

uint64_t Scandium::convert_legacy_start_pkt@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 111) = 0;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v2 = *(a1 + 116);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v5 = &v4;
  return (off_287620280[v2])(&v5, a1);
}

float *Scandium::fill_valid(float *this, float *a2, float a3)
{
  if ((LODWORD(a3) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    *this = a3;
  }

  return this;
}

uint64_t Scandium::flag_to_abort_reason(uint64_t result, void *a2)
{
  if ((result & 0x80) != 0)
  {
    *a2 |= 0x400uLL;
    if ((result & 0x800) == 0)
    {
LABEL_3:
      if ((result & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((result & 0x800) == 0)
  {
    goto LABEL_3;
  }

  *a2 |= 0x200uLL;
  if ((result & 0x20) == 0)
  {
LABEL_4:
    if ((result & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *a2 |= 2uLL;
  if ((result & 0x40) == 0)
  {
LABEL_5:
    if ((result & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *a2 |= 4uLL;
  if ((result & 0x1000) == 0)
  {
LABEL_6:
    if ((result & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *a2 |= 4uLL;
  if ((result & 0x2000) == 0)
  {
LABEL_7:
    if ((result & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  *a2 |= 4uLL;
  if ((result & 0x100) == 0)
  {
LABEL_8:
    if ((result & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  *a2 |= 1uLL;
  if ((result & 0x200) == 0)
  {
LABEL_9:
    if ((result & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  *a2 |= 0x40uLL;
  if ((result & 0x400) == 0)
  {
LABEL_10:
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

LABEL_21:
    *a2 |= 0x100uLL;
    return result;
  }

LABEL_20:
  *a2 |= 0x80uLL;
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_21;
  }

  return result;
}

float Scandium::sort_median(Scandium *this, std::vector<int>::size_type __n)
{
  if (__n <= 0)
  {
    Scandium::sort_median();
  }

  v2 = this;
  if (!this)
  {
    Scandium::sort_median();
  }

  v3 = __n;
  memset(&__src, 0, sizeof(__src));
  v4 = __n;
  std::vector<float>::reserve(&__src, __n);
  v5 = 4 * v4;
  do
  {
    v6 = *v2;
    if ((*v2 & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      end = __src.__end_;
      if (__src.__end_ >= __src.__end_cap_.__value_)
      {
        begin = __src.__begin_;
        v10 = __src.__end_ - __src.__begin_;
        v11 = __src.__end_ - __src.__begin_;
        v12 = v11 + 1;
        if ((v11 + 1) >> 62)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v13 = __src.__end_cap_.__value_ - __src.__begin_;
        if ((__src.__end_cap_.__value_ - __src.__begin_) >> 1 > v12)
        {
          v12 = v13 >> 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v14 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v14);
        }

        *(4 * v11) = v6;
        v8 = (4 * v11 + 4);
        memcpy(0, begin, v10);
        v15 = __src.__begin_;
        __src.__begin_ = 0;
        __src.__end_ = v8;
        __src.__end_cap_.__value_ = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *__src.__end_ = v6;
        v8 = end + 1;
      }

      __src.__end_ = v8;
    }

    ++v2;
    v5 -= 4;
  }

  while (v5);
  v16 = __src.__begin_;
  if (__src.__end_ == __src.__begin_)
  {
    v25 = NAN;
    if (!__src.__begin_)
    {
      return v25;
    }

    goto LABEL_32;
  }

  std::__sort<std::__less<float,float> &,float *>();
  v18 = __src.__begin_;
  v19 = __src.__end_;
  v20 = (__src.__end_ - __src.__begin_) >> 1;
  if (v3)
  {
    v26 = (v20 - 2) & 0xFFFFFFFFFFFFFFFCLL;
    v27 = (__src.__begin_ + v26);
    if (__src.__begin_ + v26 != __src.__end_)
    {
      std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(__src.__begin_, (__src.__begin_ + v26), __src.__end_, v17);
    }

    v25 = *v27;
  }

  else
  {
    v21 = v20 & 0xFFFFFFFFFFFFFFFCLL;
    v22 = (__src.__begin_ + v21 - 4);
    if (v22 != __src.__end_)
    {
      std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(__src.__begin_, (__src.__begin_ + v21 - 4), __src.__end_, v17);
      v18 = __src.__begin_;
      v19 = __src.__end_;
      v21 = ((__src.__end_ - __src.__begin_) >> 1) & 0xFFFFFFFFFFFFFFFCLL;
    }

    v23 = *v22;
    v24 = (v18 + v21);
    if ((v18 + v21) != v19)
    {
      std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(v18, (v18 + v21), v19, v17);
    }

    v25 = (v23 + *v24) * 0.5;
  }

  v16 = __src.__begin_;
  if (__src.__begin_)
  {
LABEL_32:
    __src.__end_ = v16;
    operator delete(v16);
  }

  return v25;
}

void sub_2647FF024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
  __cxa_throw(exception, MEMORY[0x277D82768], std::bad_variant_access::~bad_variant_access);
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<Scandium::convert_legacy_start_pkt(std::variant<Scandium::sc_sess_start_pkt_v3_t,Scandium::sc_sess_start_pkt_v4_t> const&)::$_0,Scandium::convert_legacy_start_pkt(std::variant<Scandium::sc_sess_start_pkt_v3_t,Scandium::sc_sess_start_pkt_v4_t> const&)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,Scandium::sc_sess_start_pkt_v3_t,Scandium::sc_sess_start_pkt_v4_t> const&>@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 7) = *(a1 + 7);
  *(a2 + 110) = *(a1 + 107);
  *(a2 + 114) = *(a1 + 111);
  *(a2 + 15) = *(a1 + 15);
  *(a2 + 19) = *(a1 + 19);
  *(a2 + 27) = *(a1 + 27);
  *(a2 + 43) = *(a1 + 43);
  *(a2 + 59) = *(a1 + 59);
  *(a2 + 75) = *(a1 + 75);
  result = *(a1 + 91);
  *(a2 + 91) = result;
  *(a2 + 107) = -1;
  *(a2 + 108) = -1;
  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<Scandium::convert_legacy_start_pkt(std::variant<Scandium::sc_sess_start_pkt_v3_t,Scandium::sc_sess_start_pkt_v4_t> const&)::$_0,Scandium::convert_legacy_start_pkt(std::variant<Scandium::sc_sess_start_pkt_v3_t,Scandium::sc_sess_start_pkt_v4_t> const&)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,Scandium::sc_sess_start_pkt_v3_t,Scandium::sc_sess_start_pkt_v4_t> const&>@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 111) = *(a1 + 111);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v5;
  return result;
}

void std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(float *a1, float *a2, float *a3, float a4)
{
  while (a3 != a2)
  {
    v4 = a3 - a1;
    if (v4 < 2)
    {
      break;
    }

    if (v4 == 3)
    {
      v37 = a1[1];
      v38 = *(a3 - 1);
      if (v37 < v38)
      {
        v39 = *(a1 + 1);
      }

      else
      {
        v39 = *(a3 - 1);
      }

      if (v37 < v38)
      {
        v37 = *(a3 - 1);
      }

      *(a3 - 1) = v37;
      *(a1 + 1) = v39;
      v40 = *(a3 - 1);
      if (v40 < *a1)
      {
        v41 = *(a3 - 1);
      }

      else
      {
        v41 = *a1;
      }

      if (v40 < *a1)
      {
        v40 = *a1;
      }

      *(a3 - 1) = v40;
      v42 = a1[1];
      if (v41 < v42)
      {
        v41 = a1[1];
      }

      else
      {
        *a1 = v42;
      }

      a1[1] = v41;
      return;
    }

    if (v4 == 2)
    {
      v43 = *(a3 - 1);
      v44 = *a1;
      if (v43 < *a1)
      {
        *a1 = v43;
        *(a3 - 1) = v44;
      }

      return;
    }

    if (v4 <= 7)
    {
      std::__selection_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(a1, a3, a4);
      return;
    }

    v5 = &a1[(a3 - a1) >> 3];
    v6 = a3 - 1;
    v7 = *(a3 - 1);
    v8 = *v5;
    if (*v5 < v7)
    {
      v9 = *v5;
    }

    else
    {
      v9 = *(a3 - 1);
    }

    if (*v5 < v7)
    {
      v10 = *(a3 - 1);
    }

    else
    {
      v10 = *v5;
    }

    *v6 = v10;
    *v5 = v9;
    v11 = *v6;
    v12 = *a1;
    if (*v6 < *a1)
    {
      v13 = *v6;
    }

    else
    {
      v13 = *a1;
    }

    if (*v6 < *a1)
    {
      v14 = *a1;
    }

    else
    {
      v14 = *v6;
    }

    *v6 = v14;
    v15 = *v5;
    v16 = *v5;
    if (v13 >= *v5)
    {
      *a1 = v15;
      v16 = v13;
    }

    v17 = v11 >= v12;
    if (v13 >= v15)
    {
      v17 = 1;
    }

    *v5 = v16;
    if (v8 >= v7)
    {
      v17 = 1;
    }

    a4 = *a1;
    if (*a1 >= v16)
    {
      v18 = a3 - 1;
      while (--v18 != a1)
      {
        if (*v18 < v16)
        {
          *a1 = *v18;
          *v18 = a4;
          if (v17)
          {
            v17 = 2;
          }

          else
          {
            v17 = 1;
          }

          goto LABEL_33;
        }
      }

      v28 = a1 + 1;
      if (a4 >= *v6)
      {
        while (v28 != v6)
        {
          v29 = *v28;
          if (a4 < *v28)
          {
            *v28++ = *v6;
            *v6 = v29;
            goto LABEL_65;
          }

          ++v28;
        }

        return;
      }

LABEL_65:
      if (v28 == v6)
      {
        return;
      }

      while (1)
      {
        v32 = *a1;
        do
        {
          v33 = *v28++;
          a4 = v33;
        }

        while (v32 >= v33);
        v34 = v28 - 1;
        do
        {
          v35 = *--v6;
          v36 = v35;
        }

        while (v32 < v35);
        if (v34 >= v6)
        {
          break;
        }

        *v34 = v36;
        *v6 = a4;
      }

      a1 = v28 - 1;
      if (v34 > a2)
      {
        return;
      }
    }

    else
    {
      v18 = a3 - 1;
LABEL_33:
      v19 = a1 + 1;
      if (a1 + 1 >= v18)
      {
        v23 = a1 + 1;
      }

      else
      {
        v20 = a1 + 1;
        while (1)
        {
          v21 = *v5;
          do
          {
            v22 = *v20++;
            a4 = v22;
          }

          while (v22 < v21);
          v23 = v20 - 1;
          do
          {
            v24 = *--v18;
            v25 = v24;
          }

          while (v24 >= v21);
          if (v23 >= v18)
          {
            break;
          }

          *v23 = v25;
          *v18 = a4;
          ++v17;
          if (v23 == v5)
          {
            v5 = v18;
          }
        }
      }

      if (v23 != v5)
      {
        a4 = *v5;
        v26 = *v23;
        if (*v5 < *v23)
        {
          *v23 = a4;
          *v5 = v26;
          ++v17;
        }
      }

      if (v23 == a2)
      {
        return;
      }

      if (!v17)
      {
        if (v23 <= a2)
        {
          v30 = v23 + 1;
          while (v30 != a3)
          {
            v31 = *(v30 - 1);
            a4 = *v30++;
            if (a4 < v31)
            {
              goto LABEL_49;
            }
          }
        }

        else
        {
          while (v19 != v23)
          {
            v27 = *(v19 - 1);
            a4 = *v19++;
            if (a4 < v27)
            {
              goto LABEL_49;
            }
          }
        }

        return;
      }

LABEL_49:
      if (v23 <= a2)
      {
        a1 = v23 + 1;
      }

      else
      {
        a3 = v23;
      }
    }
  }
}

float std::__selection_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(float *a1, float *a2, float result)
{
  while (a1 != a2 - 1)
  {
    v3 = a1++;
    if (v3 != a2 && a1 != a2)
    {
      result = *v3;
      v4 = a1;
      v5 = v3;
      v6 = a1;
      do
      {
        v7 = *v6++;
        v8 = v7;
        if (v7 < result)
        {
          result = v8;
          v5 = v4;
        }

        v4 = v6;
      }

      while (v6 != a2);
      if (v5 != v3)
      {
        result = *v3;
        *v3 = *v5;
        *v5 = result;
      }
    }
  }

  return result;
}

void sub_2647FF5B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  va_copy(va3, va2);
  v15 = va_arg(va3, void);
  v17 = va_arg(va3, void);
  v18 = va_arg(va3, void);
  v19 = va_arg(va3, void);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<void ()(Scandium::AbortReason)>::~__value_func[abi:ne200100](va2);
  std::__function::__value_func<void ()(Scandium::ScandiumMvmt::MvmtResult)>::~__value_func[abi:ne200100](va3);
  MEMORY[0x266741650](v3, v2);
  _Unwind_Resume(a1);
}

Scandium::ScandiumMvmt::scandium_mvmt_processor_t *std::unique_ptr<Scandium::ScandiumMvmt::scandium_mvmt_processor_t>::reset[abi:ne200100](Scandium::ScandiumMvmt::scandium_mvmt_processor_t **a1, Scandium::ScandiumMvmt::scandium_mvmt_processor_t *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Scandium::ScandiumMvmt::scandium_mvmt_processor_t::~scandium_mvmt_processor_t(result);

    JUMPOUT(0x266741650);
  }

  return result;
}

double Scandium::ScandiumMvmt::scandium_mvmt_processor_t::reset(Scandium::ScandiumMvmt::scandium_mvmt_processor_t *this)
{
  v2 = (this + 37552);
  v4 = this + 37552;
  v5 = 0;
  std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,11ul>>(&v4, 0xBuLL);
  Scandium::scandium_mvmt_detection_t::reset((this + 37128));
  *(this + 37548) = 0;
  *(this + 9386) = 0;
  *v2 = 0;
  result = 0.0;
  *(this + 37572) = 0u;
  *(this + 18794) = 0;
  return result;
}

void Scandium::ScandiumMvmt::scandium_mvmt_processor_t::process(Scandium::ScandiumMvmt::scandium_mvmt_processor_t *this, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = this + 36864;
  v3 = *(this + 9392);
  if (v3 > 0x63F)
  {
    goto LABEL_36;
  }

  v5 = 0;
  v6 = 4 * v3 + 4;
  do
  {
    *(this + v6) = *(a2 + 199 + v5) * 0.000015259;
    v5 += 4;
    v6 += 6400;
  }

  while (v5 != 12);
  *(this + v3 + 7681) = *(a2 + 3);
  ++*(this + 9392);
  Scandium::ScandiumMvmt::scandium_mvmt_processor_t::compute_mvmt_posture_bailout(this);
  if ((*(v2 + 176) - 1601) <= 0xFFFFF9BF)
  {
LABEL_36:
    std::__throw_out_of_range[abi:ne200100]("array::at");
  }

  if (v2[724])
  {
    v8 = 4;
  }

  else
  {
    if ((v2[725] & 1) == 0)
    {
      v9 = *(v2 + 91);
      goto LABEL_11;
    }

    v8 = 2;
  }

  v9 = *(v2 + 91) | v8;
  *(v2 + 91) = v9;
LABEL_11:
  v10 = (v2 + 728);
  v11 = v9 & 0x7FF;
  if ((v9 & 0x7FF) != 0)
  {
    log = Scandium::algs_get_log(v7);
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v24 = 11;
      strcpy(__p, "00000000000");
      v14 = 10;
      do
      {
        if ((*v10 >> v13))
        {
          if (v24 >= 0)
          {
            v15 = __p;
          }

          else
          {
            v15 = __p[0];
          }

          *(v15 + v14) = 49;
        }

        ++v13;
        --v14;
      }

      while (v13 != 11);
      v16 = __p;
      if (v24 < 0)
      {
        v16 = __p[0];
      }

      *buf = 136315138;
      v26 = v16;
      _os_log_impl(&dword_2647F6000, log, OS_LOG_TYPE_DEFAULT, "scandium invalid session reason: %s - force processing", buf, 0xCu);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v17 = *(v2 + 176);
  if (v17 - 1 >= 0x640)
  {
    std::__throw_out_of_range[abi:ne200100]("array::at");
  }

  if (v11 || (*(this + v17 + 7680) & 4) != 0)
  {
    Scandium::ScandiumMvmt::scandium_mvmt_processor_t::reset(this);
    if (v17 >= 0x3C0)
    {
      v18 = 960;
    }

    else
    {
      v18 = v17;
    }

    v19 = v2 + 688;
    v20 = 30724;
    do
    {
      Scandium::flag_to_abort_reason(*(this + v20), v19);
      v20 += 4;
      --v18;
    }

    while (v18);
    v21 = *v10 | *v19;
    *v10 = v21;
    if ((v21 & 0x7FF) != 0)
    {
      Scandium::ScandiumMvmt::scandium_mvmt_processor_t::invoke_abort(this, v10);
    }

    else
    {
      Scandium::ScandiumMvmt::scandium_mvmt_processor_t::result_handler_proxy(this);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t Scandium::ScandiumMvmt::scandium_mvmt_processor_t::scandium_mvmt_processor_t(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30[4] = *MEMORY[0x277D85DE8];
  v30[0] = &unk_287620308;
  v30[1] = a1;
  v30[3] = v30;
  v29[0] = &unk_287620398;
  v29[1] = a1;
  v29[3] = v29;
  Scandium::scandium_mvmt_detection_t::scandium_mvmt_detection_t(a1 + 37128, v30, v29);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v29);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v30);
  std::__function::__value_func<void ()(Scandium::ScandiumMvmt::MvmtResult)>::__value_func[abi:ne200100](a1 + 37296, a3);
  std::__function::__value_func<void ()(Scandium::AbortReason)>::__value_func[abi:ne200100](a1 + 37328, a4);
  std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](a1 + 37360, a5);
  std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](a1 + 37392, a6);
  *(a1 + 37552) = 0;
  *(a1 + 37592) = 0;
  *(a1 + 37664) = 0;
  Scandium::ScandiumMvmt::scandium_mvmt_processor_t::reset(a1);
  memset(v28, 0, sizeof(v28));
  Scandium::convert_legacy_start_pkt(a2, v28);
  *(a1 + 37540) = 3;
  v12 = v28[13];
  *(a1 + 37536) = v28[13];
  *(a1 + 37568) = 0;
  *(a1 + 37560) = 0;
  *(a1 + 37424) = v28[0];
  *(a1 + 37426) = *&v28[1];
  *(a1 + 37432) = *&v28[3];
  *(a1 + 37440) = *&v28[11];
  *(a1 + 37442) = __PAIR16__(v28[14], v12);
  v13 = std::string::basic_string[abi:ne200100]<0>(&v23, "movement");
  v14 = *(a1 + 37442);
  if (v14 == 1)
  {
    v16 = 0x4000000020;
    v15 = 0x40C000003F800000;
    v17 = "-foreground";
    v18 = 64;
  }

  else
  {
    if (v14 != 2)
    {
      goto LABEL_6;
    }

    v15 = 981668463;
    v16 = 0xA0000000A0;
    v17 = "-background";
    v18 = 1600;
    v14 = 3;
  }

  *a1 = v14;
  *(a1 + 37608) = v18;
  *(a1 + 37600) = v16;
  *(a1 + 37612) = 981668463;
  *(a1 + 37616) = v15;
  *(a1 + 37632) = 1060439283;
  *(a1 + 37624) = 0;
  v13 = std::string::append(&v23, v17, 0xBuLL);
LABEL_6:
  log = Scandium::algs_get_log(v13);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v20 = &v23;
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = v23.__r_.__value_.__r.__words[0];
    }

    *buf = 136315394;
    v25 = "11.3.2";
    v26 = 2080;
    v27 = v20;
    _os_log_impl(&dword_2647F6000, log, OS_LOG_TYPE_DEFAULT, "Scandium Algs v%s Mode: %s", buf, 0x16u);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  v21 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2647FFCBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__function::__value_func<void ()(std::string const&,std::unordered_map<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>> const&)>::~__value_func[abi:ne200100](v15 + 37640);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v15 + v16);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v15 + v17);
  std::__function::__value_func<void ()(Scandium::AbortReason)>::~__value_func[abi:ne200100](v15 + v18);
  std::__function::__value_func<void ()(Scandium::ScandiumMvmt::MvmtResult)>::~__value_func[abi:ne200100](v15 + v20);
  Scandium::scandium_mvmt_detection_t::~scandium_mvmt_detection_t((v15 + v19));
  _Unwind_Resume(a1);
}

void sub_2647FFD40()
{
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v0 - 152);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v0 - 120);
  JUMPOUT(0x2647FFD18);
}

void Scandium::ScandiumMvmt::scandium_mvmt_processor_t::~scandium_mvmt_processor_t(Scandium::ScandiumMvmt::scandium_mvmt_processor_t *this)
{
  v6 = *MEMORY[0x277D85DE8];
  log = Scandium::algs_get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 9392);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_2647F6000, log, OS_LOG_TYPE_DEFAULT, "scandium process packet counts: %d", v5, 8u);
  }

  std::__function::__value_func<void ()(std::string const&,std::unordered_map<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>> const&)>::~__value_func[abi:ne200100](this + 37640);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](this + 37392);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](this + 37360);
  std::__function::__value_func<void ()(Scandium::AbortReason)>::~__value_func[abi:ne200100](this + 37328);
  std::__function::__value_func<void ()(Scandium::ScandiumMvmt::MvmtResult)>::~__value_func[abi:ne200100](this + 37296);
  Scandium::scandium_mvmt_detection_t::~scandium_mvmt_detection_t((this + 37128));
  v4 = *MEMORY[0x277D85DE8];
}

void sub_2647FFE48(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void Scandium::ScandiumMvmt::scandium_mvmt_processor_t::result_handler_proxy(Scandium *a1)
{
  log = Scandium::algs_get_log(a1);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2647F6000, log, OS_LOG_TYPE_DEFAULT, "scandium mvmt result handler called", v3, 2u);
  }

  if (*(a1 + 4665))
  {
    std::function<void ()(Scandium::ScandiumMvmt::MvmtResult)>::operator()(a1 + 37296);
  }
}

uint64_t std::function<void ()(Scandium::ScandiumMvmt::MvmtResult)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1, &v3);
}

void Scandium::ScandiumMvmt::scandium_mvmt_processor_t::compute_mvmt_posture_bailout(Scandium::ScandiumMvmt::scandium_mvmt_processor_t *this)
{
  v1 = off_28761FF00(this);
  v2 = v1 + 9216;
  v3 = v1[9392];
  if (!(v3 % v1[9400]) && v1[9402] <= v3)
  {
    if (v3 >= 0x641)
    {
      Scandium::ScandiumMvmt::scandium_mvmt_processor_t::compute_mvmt_posture_bailout();
    }

    v4 = v1;
    v5 = v1[9401];
    v6 = &v1[v3 - v5 + 1];
    v7 = -11520;
    do
    {
      if (v5)
      {
        memcpy(&v12[v7 + 11520], v6, 4 * v5);
      }

      v6 += 6400;
      v7 += 3840;
    }

    while (v7);
    Scandium::scandium_mvmt_detection_t::process((v4 + 9282), v12, 0, v5);
    if (v2[168] == 1)
    {
      *(v2 + 724) |= *(v2 + 297);
      *(v2 + 725) |= *(v2 + 296);
    }

    __p = 0;
    v11[0] = 0;
    v11[1] = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, *(v2 + 51), *(v2 + 52), (*(v2 + 52) - *(v2 + 51)) >> 2);
    v8 = __p;
    if (v11[0] != __p)
    {
      if (*(v2 + 578) == 1)
      {
        log = Scandium::algs_get_log(__p);
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
        {
          Scandium::ScandiumMvmt::scandium_mvmt_processor_t::compute_mvmt_posture_bailout(v11, log);
        }
      }

      v8 = __p;
    }

    if (v8)
    {
      v11[0] = v8;
      operator delete(v8);
    }
  }
}

void sub_2648000AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Scandium::ScandiumMvmt::scandium_mvmt_processor_t::invoke_abort(Scandium *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v5 = 0;
  }

  else if ((v2 & 2) != 0)
  {
    v5 = 1;
  }

  else if ((v2 & 4) != 0)
  {
    v5 = 2;
  }

  else if ((v2 & 0x20) != 0)
  {
    v5 = 5;
  }

  else if ((v2 & 0x200) != 0)
  {
    v5 = 9;
  }

  else
  {
    if ((v2 & 0x80) != 0)
    {
      v3 = 7;
    }

    else
    {
      v3 = 8;
    }

    if ((v2 & 0x400) != 0)
    {
      v4 = 10;
    }

    else
    {
      v4 = v3;
    }

    if ((v2 & 0x40) != 0)
    {
      v5 = 6;
    }

    else
    {
      v5 = v4;
    }
  }

  Scandium::ScandiumMvmt::scandium_mvmt_processor_t::abort_handler_proxy(a1, v5);
}

void Scandium::ScandiumMvmt::scandium_mvmt_processor_t::abort_handler_proxy(Scandium *a1, int a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a1 + 36864;
  log = Scandium::algs_get_log(a1);
  v6 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
  if (a2 <= 4)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        if (!v6)
        {
          goto LABEL_37;
        }

        v16 = *(v4 + 176);
        *buf = 67109120;
        *&buf[4] = v16;
        v8 = "scandium abort handler pkt %d: posture";
      }

      else if (a2 == 3)
      {
        if (!v6)
        {
          goto LABEL_37;
        }

        v13 = *(v4 + 176);
        *buf = 67109120;
        *&buf[4] = v13;
        v8 = "scandium abort handler pkt %d: low HR";
      }

      else
      {
        if (!v6)
        {
          goto LABEL_37;
        }

        v9 = *(v4 + 176);
        *buf = 67109120;
        *&buf[4] = v9;
        v8 = "scandium abort handler pkt %d: high HR";
      }

      goto LABEL_35;
    }

    if (!a2)
    {
      if (!v6)
      {
        goto LABEL_37;
      }

      v12 = *(v4 + 176);
      *buf = 67109120;
      *&buf[4] = v12;
      v8 = "scandium abort handler pkt %d: thermistor_broken";
      goto LABEL_35;
    }

    if (a2 == 1)
    {
      if (!v6)
      {
        goto LABEL_37;
      }

      v11 = *(v4 + 176);
      *buf = 67109120;
      *&buf[4] = v11;
      v8 = "scandium abort handler pkt %d: motion";
      goto LABEL_35;
    }
  }

  else
  {
    if (a2 <= 7)
    {
      if (a2 == 5)
      {
        if (!v6)
        {
          goto LABEL_37;
        }

        v17 = *(v4 + 176);
        *buf = 67109120;
        *&buf[4] = v17;
        v8 = "scandium abort handler pkt %d: poor_signal";
      }

      else if (a2 == 6)
      {
        if (!v6)
        {
          goto LABEL_37;
        }

        v14 = *(v4 + 176);
        *buf = 67109120;
        *&buf[4] = v14;
        v8 = "scandium abort handler pkt %d: samples_dropped";
      }

      else
      {
        if (!v6)
        {
          goto LABEL_37;
        }

        v7 = *(v4 + 176);
        *buf = 67109120;
        *&buf[4] = v7;
        v8 = "scandium abort handler pkt %d: hardware_recovery";
      }

      goto LABEL_35;
    }

    switch(a2)
    {
      case 8:
        if (!v6)
        {
          goto LABEL_37;
        }

        v18 = *(v4 + 176);
        *buf = 67109120;
        *&buf[4] = v18;
        v8 = "scandium abort handler pkt %d: err_failed";
        goto LABEL_35;
      case 9:
        if (!v6)
        {
          goto LABEL_37;
        }

        v15 = *(v4 + 176);
        *buf = 67109120;
        *&buf[4] = v15;
        v8 = "scandium abort handler pkt %d: accel_poor_signal";
        goto LABEL_35;
      case 10:
        if (!v6)
        {
          goto LABEL_37;
        }

        v10 = *(v4 + 176);
        *buf = 67109120;
        *&buf[4] = v10;
        v8 = "scandium abort handler pkt %d: excessive_invalid_samples";
LABEL_35:
        v19 = log;
        v20 = 8;
LABEL_36:
        _os_log_impl(&dword_2647F6000, v19, OS_LOG_TYPE_DEFAULT, v8, buf, v20);
        goto LABEL_37;
    }
  }

  if (v6)
  {
    v24 = *(v4 + 176);
    *buf = 67109376;
    *&buf[4] = v24;
    v29 = 1024;
    v30 = a2;
    v8 = "scandium abort handler pkt %d: %d";
    v19 = log;
    v20 = 14;
    goto LABEL_36;
  }

LABEL_37:
  if (*(v4 + 100))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "abort");
    std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::pair[abi:ne200100]<char const(&)[13],char const(&)[7],0>(buf, "algs_version", "11.3.2");
    std::string::basic_string[abi:ne200100]<0>(v31, "algs_mode");
    v32 = v4[578];
    v33 = 1;
    std::string::basic_string[abi:ne200100]<0>(v34, "abort_reason");
    v35 = a2;
    v36 = 1;
    std::string::basic_string[abi:ne200100]<0>(v37, "packet_idx");
    v38 = *(v4 + 176);
    v39 = 1;
    std::unordered_map<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::unordered_map(v25, buf, 4);
    v21 = *(v4 + 100);
    if (!v21)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v21 + 48))(v21, __p, v25);
    std::__hash_table<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>>>::~__hash_table(v25);
    v22 = 288;
    do
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v25[v22 + 24]);
      if (v25[v22 + 15] < 0)
      {
        operator delete(*&buf[v22 - 72]);
      }

      v22 -= 72;
    }

    while (v22);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(v4 + 61))
  {
    std::function<void ()(Scandium::AbortReason)>::operator()(a1 + 37328, a2);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_2648005A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v48 = &a47;
  v49 = -288;
  do
  {
    v48 = (std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::~pair(v48) - 72);
    v49 += 72;
  }

  while (v49);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::~pair(uint64_t a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 32);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::function<void ()(Scandium::AbortReason)>::operator()(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void Scandium::ScandiumMvmt::scandium_mvmt_processor_t::motion_status_handler_proxy(Scandium::ScandiumMvmt::scandium_mvmt_processor_t *this, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = this + 36864;
  log = Scandium::algs_get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(v4 + 176);
    v8[0] = 67109376;
    v8[1] = v6;
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&dword_2647F6000, log, OS_LOG_TYPE_DEFAULT, "scandium motion handler pkt %d: %d", v8, 0xEu);
  }

  if (*(v4 + 65))
  {
    std::function<void ()(BOOL)>::operator()(this + 37360, a2);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t std::function<void ()(BOOL)>::operator()(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void Scandium::ScandiumMvmt::scandium_mvmt_processor_t::posture_status_handler_proxy(Scandium::ScandiumMvmt::scandium_mvmt_processor_t *this, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = this + 36864;
  log = Scandium::algs_get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(v4 + 176);
    v8[0] = 67109376;
    v8[1] = v6;
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&dword_2647F6000, log, OS_LOG_TYPE_DEFAULT, "scandium posture handler pkt %d: %d", v8, 0xEu);
  }

  if (*(v4 + 69))
  {
    std::function<void ()(BOOL)>::operator()(this + 37392, a2);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::pair[abi:ne200100]<char const(&)[13],char const(&)[7],0>(uint64_t a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 32, a3);
  *(a1 + 64) = 5;
  return a1;
}

void sub_2648008EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 != -1)
  {
    result = (off_287620290[v2])(&v3, result);
  }

  *(v1 + 32) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJbixfdNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_7variantIJNS_6vectorIbNSB_IbEEEENSF_IiNSB_IiEEEENSF_IxNSB_IxEEEENSF_IfNSB_IfEEEENSF_IdNSB_IdEEEENSF_ISD_NSB_ISD_EEEEEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSU_1EJbixfdSD_SS_EEEEEEDcSW_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (off_2876202C8[v2])(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIbNS_9allocatorIbEEEENS8_IiNS9_IiEEEENS8_IxNS9_IxEEEENS8_IfNS9_IfEEEENS8_IdNS9_IdEEEENS8_INS_12basic_stringIcNS_11char_traitsIcEENS9_IcEEEENS9_ISO_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSS_1EJSB_SD_SF_SH_SJ_SQ_EEEEEEDcSU_DpT0_(uint64_t a1, void **a2)
{
  if (*a2)
  {
    operator delete(*a2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIbNS_9allocatorIbEEEENS8_IiNS9_IiEEEENS8_IxNS9_IxEEEENS8_IfNS9_IfEEEENS8_IdNS9_IdEEEENS8_INS_12basic_stringIcNS_11char_traitsIcEENS9_IcEEEENS9_ISO_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSS_1EJSB_SD_SF_SH_SJ_SQ_EEEEEEDcSU_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIbNS_9allocatorIbEEEENS8_IiNS9_IiEEEENS8_IxNS9_IxEEEENS8_IfNS9_IfEEEENS8_IdNS9_IdEEEENS8_INS_12basic_stringIcNS_11char_traitsIcEENS9_IcEEEENS9_ISO_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSS_1EJSB_SD_SF_SH_SJ_SQ_EEEEEEDcSU_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIbNS_9allocatorIbEEEENS8_IiNS9_IiEEEENS8_IxNS9_IxEEEENS8_IfNS9_IfEEEENS8_IdNS9_IdEEEENS8_INS_12basic_stringIcNS_11char_traitsIcEENS9_IcEEEENS9_ISO_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSS_1EJSB_SD_SF_SH_SJ_SQ_EEEEEEDcSU_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIbNS_9allocatorIbEEEENS8_IiNS9_IiEEEENS8_IxNS9_IxEEEENS8_IfNS9_IfEEEENS8_IdNS9_IdEEEENS8_INS_12basic_stringIcNS_11char_traitsIcEENS9_IcEEEENS9_ISO_EEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSS_1EJSB_SD_SF_SH_SJ_SQ_EEEEEEDcSU_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t std::__function::__func<Scandium::ScandiumMvmt::scandium_mvmt_processor_t::scandium_mvmt_processor_t(std::variant<Scandium::sc_sess_start_pkt_v3_t,Scandium::sc_sess_start_pkt_v4_t> const&,std::function<void ()(Scandium::ScandiumMvmt::MvmtResult)>,std::function<void ()(Scandium::AbortReason)>,std::function<void ()(BOOL)>,std::function<void ()(BOOL)>)::$_0,std::allocator<Scandium::ScandiumMvmt::scandium_mvmt_processor_t::scandium_mvmt_processor_t(std::variant<Scandium::sc_sess_start_pkt_v3_t,Scandium::sc_sess_start_pkt_v4_t> const&,std::function<void ()(Scandium::ScandiumMvmt::MvmtResult)>,std::function<void ()(Scandium::AbortReason)>,std::function<void ()(BOOL)>,std::function<void ()(BOOL)>)::$_0>,void ()(BOOL)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_287620308;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<Scandium::ScandiumMvmt::scandium_mvmt_processor_t::scandium_mvmt_processor_t(std::variant<Scandium::sc_sess_start_pkt_v3_t,Scandium::sc_sess_start_pkt_v4_t> const&,std::function<void ()(Scandium::ScandiumMvmt::MvmtResult)>,std::function<void ()(Scandium::AbortReason)>,std::function<void ()(BOOL)>,std::function<void ()(BOOL)>)::$_0,std::allocator<Scandium::ScandiumMvmt::scandium_mvmt_processor_t::scandium_mvmt_processor_t(std::variant<Scandium::sc_sess_start_pkt_v3_t,Scandium::sc_sess_start_pkt_v4_t> const&,std::function<void ()(Scandium::ScandiumMvmt::MvmtResult)>,std::function<void ()(Scandium::AbortReason)>,std::function<void ()(BOOL)>,std::function<void ()(BOOL)>)::$_0>,void ()(BOOL)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<Scandium::ScandiumMvmt::scandium_mvmt_processor_t::scandium_mvmt_processor_t(std::variant<Scandium::sc_sess_start_pkt_v3_t,Scandium::sc_sess_start_pkt_v4_t> const&,std::function<void ()(Scandium::ScandiumMvmt::MvmtResult)>,std::function<void ()(Scandium::AbortReason)>,std::function<void ()(BOOL)>,std::function<void ()(BOOL)>)::$_1,std::allocator<Scandium::ScandiumMvmt::scandium_mvmt_processor_t::scandium_mvmt_processor_t(std::variant<Scandium::sc_sess_start_pkt_v3_t,Scandium::sc_sess_start_pkt_v4_t> const&,std::function<void ()(Scandium::ScandiumMvmt::MvmtResult)>,std::function<void ()(Scandium::AbortReason)>,std::function<void ()(BOOL)>,std::function<void ()(BOOL)>)::$_1>,void ()(BOOL)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_287620398;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<Scandium::ScandiumMvmt::scandium_mvmt_processor_t::scandium_mvmt_processor_t(std::variant<Scandium::sc_sess_start_pkt_v3_t,Scandium::sc_sess_start_pkt_v4_t> const&,std::function<void ()(Scandium::ScandiumMvmt::MvmtResult)>,std::function<void ()(Scandium::AbortReason)>,std::function<void ()(BOOL)>,std::function<void ()(BOOL)>)::$_1,std::allocator<Scandium::ScandiumMvmt::scandium_mvmt_processor_t::scandium_mvmt_processor_t(std::variant<Scandium::sc_sess_start_pkt_v3_t,Scandium::sc_sess_start_pkt_v4_t> const&,std::function<void ()(Scandium::ScandiumMvmt::MvmtResult)>,std::function<void ()(Scandium::AbortReason)>,std::function<void ()(BOOL)>,std::function<void ()(BOOL)>)::$_1>,void ()(BOOL)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(Scandium::ScandiumMvmt::MvmtResult)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(Scandium::AbortReason)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__value_func<void ()(Scandium::ScandiumMvmt::MvmtResult)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(Scandium::AbortReason)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,11ul>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

uint64_t std::unordered_map<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::unordered_map(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 72 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>> const&>(a1, a2);
      a2 += 9;
      v5 -= 72;
    }

    while (v5);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>> const&>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>>>::__construct_node_hash<std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>> const&>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_264801384(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
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

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

std::string *std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](&this[1].__r_.__value_.__l.__size_, (a2 + 2));
  return this;
}

void sub_2648019E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>,(std::__variant_detail::_Trait)1> const&>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>,(std::__variant_detail::_Trait)1> const&>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 32);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_287620408[v5])(&v6, a2);
    *(a1 + 32) = v5;
  }

  return result;
}

float _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJbixfdNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_7variantIJNS_6vectorIbNSB_IbEEEENSF_IiNSB_IiEEEENSF_IxNSB_IxEEEENSF_IfNSB_IfEEEENSF_IdNSB_IdEEEENSF_ISD_NSB_ISD_EEEEEEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorIST_LNS0_6_TraitE1EEEEEvRSU_OT_EUlS13_E_JRKNS0_6__baseILSX_1EJbixfdSD_SS_EEEEEEDcS12_DpT0_(_DWORD **a1, float *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

double _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJbixfdNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_7variantIJNS_6vectorIbNSB_IbEEEENSF_IiNSB_IiEEEENSF_IxNSB_IxEEEENSF_IfNSB_IfEEEENSF_IdNSB_IdEEEENSF_ISD_NSB_ISD_EEEEEEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorIST_LNS0_6_TraitE1EEEEEvRSU_OT_EUlS13_E_JRKNS0_6__baseILSX_1EJbixfdSD_SS_EEEEEEDcS12_DpT0_(void **a1, double *a2)
{
  result = *a2;
  **a1 = *a2;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJbixfdNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_7variantIJNS_6vectorIbNSB_IbEEEENSF_IiNSB_IiEEEENSF_IxNSB_IxEEEENSF_IfNSB_IfEEEENSF_IdNSB_IdEEEENSF_ISD_NSB_ISD_EEEEEEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorIST_LNS0_6_TraitE1EEEEEvRSU_OT_EUlS13_E_JRKNS0_6__baseILSX_1EJbixfdSD_SS_EEEEEEDcS12_DpT0_(std::string **a1, __int128 *a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    v2->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>,(std::__variant_detail::_Trait)1> const&>(a1, a2);
  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>,(std::__variant_detail::_Trait)1> const&>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 24);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_287620440[v5])(&v6, a2);
    *(a1 + 24) = v5;
  }

  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJNS_6vectorIbNS_9allocatorIbEEEENS8_IiNS9_IiEEEENS8_IxNS9_IxEEEENS8_IfNS9_IfEEEENS8_IdNS9_IdEEEENS8_INS_12basic_stringIcNS_11char_traitsIcEENS9_IcEEEENS9_ISO_EEEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISR_LNS0_6_TraitE1EEEEEvRSS_OT_EUlS11_E_JRKNS0_6__baseILSV_1EJSB_SD_SF_SH_SJ_SQ_EEEEEEDcS10_DpT0_(void **a1, uint64_t *a2)
{
  v2 = *a1;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v2, *a2, a2[1], (a2[1] - *a2) >> 2);
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJNS_6vectorIbNS_9allocatorIbEEEENS8_IiNS9_IiEEEENS8_IxNS9_IxEEEENS8_IfNS9_IfEEEENS8_IdNS9_IdEEEENS8_INS_12basic_stringIcNS_11char_traitsIcEENS9_IcEEEENS9_ISO_EEEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISR_LNS0_6_TraitE1EEEEEvRSS_OT_EUlS11_E_JRKNS0_6__baseILSV_1EJSB_SD_SF_SH_SJ_SQ_EEEEEEDcS10_DpT0_(void **a1, uint64_t *a2)
{
  v2 = *a1;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v2, *a2, a2[1], (a2[1] - *a2) >> 3);
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm3EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJNS_6vectorIbNS_9allocatorIbEEEENS8_IiNS9_IiEEEENS8_IxNS9_IxEEEENS8_IfNS9_IfEEEENS8_IdNS9_IdEEEENS8_INS_12basic_stringIcNS_11char_traitsIcEENS9_IcEEEENS9_ISO_EEEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISR_LNS0_6_TraitE1EEEEEvRSS_OT_EUlS11_E_JRKNS0_6__baseILSV_1EJSB_SD_SF_SH_SJ_SQ_EEEEEEDcS10_DpT0_(void **a1, uint64_t *a2)
{
  v2 = *a1;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v2, *a2, a2[1], (a2[1] - *a2) >> 2);
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm4EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJNS_6vectorIbNS_9allocatorIbEEEENS8_IiNS9_IiEEEENS8_IxNS9_IxEEEENS8_IfNS9_IfEEEENS8_IdNS9_IdEEEENS8_INS_12basic_stringIcNS_11char_traitsIcEENS9_IcEEEENS9_ISO_EEEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISR_LNS0_6_TraitE1EEEEEvRSS_OT_EUlS11_E_JRKNS0_6__baseILSV_1EJSB_SD_SF_SH_SJ_SQ_EEEEEEDcS10_DpT0_(void **a1, uint64_t *a2)
{
  v2 = *a1;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(v2, *a2, a2[1], (a2[1] - *a2) >> 3);
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm5EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJNS_6vectorIbNS_9allocatorIbEEEENS8_IiNS9_IiEEEENS8_IxNS9_IxEEEENS8_IfNS9_IfEEEENS8_IdNS9_IdEEEENS8_INS_12basic_stringIcNS_11char_traitsIcEENS9_IcEEEENS9_ISO_EEEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISR_LNS0_6_TraitE1EEEEEvRSS_OT_EUlS11_E_JRKNS0_6__baseILSV_1EJSB_SD_SF_SH_SJ_SQ_EEEEEEDcS10_DpT0_(void **a1, uint64_t *a2)
{
  v2 = *a1;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  return std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, v2);
  }

  return result;
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>>(void *a1, void *a2, unsigned int a3, void *a4, int a5, uint64_t a6)
{
  v8 = a1[1];
  v9 = v8 + a6;
  a1[1] = v8 + a6;
  if (!v8 || ((v9 - 1) ^ (v8 - 1)) >= 0x40)
  {
    if (v9 >= 0x41)
    {
      v10 = (v9 - 1) >> 6;
    }

    else
    {
      v10 = 0;
    }

    *(*a1 + 8 * v10) = 0;
  }

  v14 = v6;
  v15 = v7;
  v11 = *a1 + 8 * (v8 >> 6);
  v12 = v8 & 0x3F;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(a2, a3, a4, a5, &v11, v13);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1@<X1>, unint64_t a2@<X2>, void *a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  LODWORD(v6) = a2;
  v7 = *a5;
  v8 = *(a5 + 8);
  if (a1 != a3 || a2 != a4)
  {
    do
    {
      v9 = 1 << v8;
      if ((*a1 >> a2))
      {
        v10 = *v7 | v9;
      }

      else
      {
        v10 = *v7 & ~v9;
      }

      *v7 = v10;
      v11 = v6 == 63;
      v12 = v6 == 63;
      v6 = (a2 + 1);
      if (v11)
      {
        v6 = 0;
      }

      if (v8 == 63)
      {
        v8 = 0;
        *a5 = ++v7;
      }

      else
      {
        ++v8;
      }

      a1 += v12;
      a2 = v6 | a2 & 0xFFFFFFFF00000000;
    }

    while (a1 != a3 || v6 != a4);
    *(a5 + 8) = v8;
  }

  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v7;
  *(a6 + 24) = v8;
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_264801FA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_264802020(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<long long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2648020D8(_Unwind_Exception *exception_object)
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

void sub_26480215C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
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

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
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

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,0>(uint64_t a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 32);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

float stats::mean(stats *this, const float *a2)
{
  if (a2 <= 0)
  {
    stats::mean();
  }

  if (!this)
  {
    stats::mean();
  }

  v3 = 0.0;
  vDSP_meanv_wrapper(this->cp_time, 1, &v3, a2);
  return v3;
}

float stats::variance(stats *this, std::vector<int>::size_type __sz, int a3)
{
  if (__sz <= 0)
  {
    stats::variance();
  }

  if (!this)
  {
    stats::variance();
  }

  v5 = __sz;
  __C = 0;
  memset(&__B, 0, sizeof(__B));
  v6 = __sz;
  std::vector<float>::resize(&__B, __sz);
  vDSP_meanv_wrapper(this->cp_time, 1, &__C + 1, v6);
  MEMORY[0x266741BF0](this, 1, &__C + 4, 0, __B.__begin_, 1, v6);
  vDSP_dotpr(__B.__begin_, 1, __B.__begin_, 1, &__C, v6);
  v7 = *&__C / (v5 - (a3 ^ 1u));
  *&__C = v7;
  if (__B.__begin_)
  {
    __B.__end_ = __B.__begin_;
    operator delete(__B.__begin_);
  }

  return v7;
}

void sub_264802560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float stats::covariance(stats *this, std::vector<int>::size_type __sz, const float *a3, const float *a4, int a5)
{
  if (__sz <= 0)
  {
    stats::covariance();
  }

  v5 = __sz;
  if (a4 != __sz)
  {
    stats::covariance();
  }

  if (!this)
  {
    stats::covariance();
  }

  if (!a3)
  {
    stats::covariance();
  }

  v14 = 0;
  __C = 0.0;
  memset(&v12, 0, sizeof(v12));
  memset(&__B, 0, sizeof(__B));
  std::vector<float>::resize(&v12, __sz);
  std::vector<float>::resize(&__B, v5);
  vDSP_meanv_wrapper(this->cp_time, 1, &v14 + 1, v5);
  MEMORY[0x266741BF0](this, 1, &v14 + 4, 0, v12.__begin_, 1, v5);
  vDSP_meanv_wrapper(a3, 1, &v14, v5);
  MEMORY[0x266741BF0](a3, 1, &v14, 0, __B.__begin_, 1, v5);
  vDSP_dotpr(v12.__begin_, 1, __B.__begin_, 1, &__C, v5);
  v9 = __C / (v5 - (a5 ^ 1));
  __C = v9;
  if (__B.__begin_)
  {
    __B.__end_ = __B.__begin_;
    operator delete(__B.__begin_);
  }

  if (v12.__begin_)
  {
    v12.__end_ = v12.__begin_;
    operator delete(v12.__begin_);
  }

  return v9;
}

void sub_2648026E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

float stats::std(stats *this, const float *a2, int a3)
{
  if (a2 <= 0)
  {
    stats::std();
  }

  if (!this)
  {
    stats::std();
  }

  return sqrtf(stats::variance(this, a2, a3));
}

float stats::median(stats *this, std::vector<int>::size_type __n)
{
  if (__n <= 0)
  {
    stats::median();
  }

  if (!this)
  {
    stats::median();
  }

  v3 = __n;
  memset(&__p, 0, sizeof(__p));
  v4 = __n;
  std::vector<float>::reserve(&__p, __n);
  std::__copy_impl::operator()[abi:ne200100]<float const*,float const*,std::back_insert_iterator<std::vector<float>>>(&v18, this, &this->cp_time[v4], &__p.__begin_);
  begin = __p.__begin_;
  end = __p.__end_;
  v8 = (__p.__end_ - __p.__begin_) >> 1;
  if (v3)
  {
    v14 = (v8 - 2) & 0xFFFFFFFFFFFFFFFCLL;
    v15 = (__p.__begin_ + v14);
    if (__p.__begin_ + v14 != __p.__end_)
    {
      std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(__p.__begin_, (__p.__begin_ + v14), __p.__end_, v5);
    }

    v13 = *v15;
  }

  else
  {
    v9 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = (__p.__begin_ + v9 - 4);
    if (v10 != __p.__end_)
    {
      std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(__p.__begin_, (__p.__begin_ + v9 - 4), __p.__end_, v5);
      begin = __p.__begin_;
      end = __p.__end_;
      v9 = ((__p.__end_ - __p.__begin_) >> 1) & 0xFFFFFFFFFFFFFFFCLL;
    }

    v11 = *v10;
    v12 = (begin + v9);
    if ((begin + v9) != end)
    {
      std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(begin, (begin + v9), end, v5);
    }

    v13 = *v12 * 0.5 + (v11 * 0.5);
  }

  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  return v13;
}

void sub_264802878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float stats::max(stats *this, const float *a2)
{
  if (a2 <= 0)
  {
    stats::max();
  }

  if (!this)
  {
    stats::max();
  }

  v3 = 0.0;
  vDSP_maxv_wrapper(this->cp_time, 1, &v3, a2);
  return v3;
}

float stats::min(stats *this, const float *a2)
{
  if (a2 <= 0)
  {
    stats::min();
  }

  if (!this)
  {
    stats::min();
  }

  v3 = 0.0;
  vDSP_minv_wrapper(this->cp_time, 1, &v3, a2);
  return v3;
}

void stats::median_vdsp(stats *this, vDSP_Length *a2, unint64_t *a3)
{
  if (a3 <= 0)
  {
    stats::median_vdsp();
  }

  if (!this)
  {
    stats::median_vdsp();
  }

  if (!a2)
  {
    stats::median_vdsp();
  }

  stats::percentile(this, a2, a3, 50.0);
}

void stats::percentile(stats *this, vDSP_Length *__I, vDSP_Length __N, float a4)
{
  if (__N <= 0)
  {
    stats::percentile();
  }

  if (!this)
  {
    stats::percentile();
  }

  if (!__I)
  {
    stats::percentile();
  }

  if (a4 < 0.0 || a4 > 100.0)
  {
    stats::percentile();
  }

  v7 = __N;
  vDSP_vsorti(this->cp_time, __I, 0, __N, 1);
  v8 = v7 / 100.0 * a4 + -0.5;
  if (v8 <= 0.0)
  {
    v10 = *__I;
  }

  else
  {
    if ((v7 - 1) > v8)
    {
      v9 = (v8 - v8) * *&this->cp_time[__I[v8 + 1]] + (1.0 - (v8 - v8)) * *&this->cp_time[__I[v8]];
      return;
    }

    v10 = __I[v7 - 1];
  }

  v11 = this->cp_time[v10];
}

stats *stats::linear_interp(stats *this, const float *a2, float *a3, int a4, int16x4_t a5)
{
  if (a4 >= 1)
  {
    a5.i32[0] = this->cp_time[0];
    v5 = (a4 + 3) & 0xFFFFFFFC;
    v6 = vdupq_n_s64(a4 - 1);
    v7 = xmmword_2648215E0;
    v8 = xmmword_2648215F0;
    v9 = (a2 + 2);
    v10 = vdupq_n_s64(4uLL);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v6, v8));
      if (vuzp1_s16(v11, a5).u8[0])
      {
        *(v9 - 2) = *a5.i32;
      }

      if (vuzp1_s16(v11, a5).i8[2])
      {
        *(v9 - 1) = *a5.i32;
      }

      if (vuzp1_s16(a5, vmovn_s64(vcgeq_u64(v6, *&v7))).i32[1])
      {
        *v9 = *a5.i32;
        v9[1] = *a5.i32;
      }

      v7 = vaddq_s64(v7, v10);
      v8 = vaddq_s64(v8, v10);
      v9 += 4;
      v5 -= 4;
    }

    while (v5);
  }

  if (a3 > 1)
  {
    v12 = 1;
    v13 = &a2[a4];
    do
    {
      if (a4 >= 1)
      {
        v14 = 1;
        v15 = a4;
        v16 = v13;
        do
        {
          *v16++ = *&this->cp_time[v12 - 1] + (((*&this->cp_time[v12] - *&this->cp_time[v12 - 1]) * v14++) / a4);
          --v15;
        }

        while (v15);
      }

      ++v12;
      v13 += a4;
    }

    while (v12 != a3);
  }

  return this;
}

float stats::pearsonr(stats *this, stats *a2, const float *a3)
{
  v5 = this;
  v6 = stats::mean(this, a3);
  v7 = stats::mean(a2, a3);
  v8 = stats::std(v5, a3, 1);
  v9 = stats::std(a2, a3, 1);
  if (a3 < 1)
  {
    v11 = 0.0;
  }

  else
  {
    v10 = a3;
    v11 = 0.0;
    do
    {
      v12 = *v5->cp_time;
      v5 = (v5 + 4);
      v13 = v12 - v6;
      v14 = *a2->cp_time;
      a2 = (a2 + 4);
      v11 = v11 + v13 * (v14 - v7);
      --v10;
    }

    while (v10);
  }

  return v11 / (a3 * v8 * v9);
}

_DWORD *std::__copy_impl::operator()[abi:ne200100]<float const*,float const*,std::back_insert_iterator<std::vector<float>>>(uint64_t a1, _DWORD *a2, _DWORD *a3, const void **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = a4[1];
    do
    {
      v8 = a4[2];
      if (v7 >= v8)
      {
        v9 = *a4;
        v10 = v7 - *a4;
        v11 = v10 >> 2;
        v12 = (v10 >> 2) + 1;
        if (v12 >> 62)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v13 = v8 - v9;
        if (v13 >> 1 > v12)
        {
          v12 = v13 >> 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v14 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a4, v14);
        }

        *(4 * v11) = *v5;
        v7 = (4 * v11 + 4);
        memcpy(0, v9, v10);
        v15 = *a4;
        *a4 = 0;
        a4[1] = v7;
        a4[2] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v7 = *v5;
        v7 += 4;
      }

      a4[1] = v7;
      ++v5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

double Scandium::ScandiumPPG::scandium_beat_detection_t::scandium_beat_detection_reset(Scandium::ScandiumPPG::scandium_beat_detection_t *this)
{
  result = 0.0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 21) = 0;
  return result;
}

double Scandium::ScandiumPPG::scandium_beat_detection_t::scandium_beat_detection_t(Scandium::ScandiumPPG::scandium_beat_detection_t *this)
{
  *(this + 4) = Scandium::ScandiumPPG::bpfCoef;
  *(this + 20) = unk_26481F910;
  *(this + 36) = 0x3F7B986FBFFDC753;
  *(this + 20) = 1007231301;
  *this = 2;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  *(this + 16604) = 0;
  result = 0.0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 84) = 0;
  *(this + 100) = 0;
  *(this + 92) = 0;
  *(this + 27) = 0;
  *(this + 16600) = 0;
  *(this + 8298) = 0u;
  *(this + 8299) = 0u;
  *(this + 8296) = 0u;
  *(this + 8297) = 0u;
  *(this + 8294) = 0u;
  *(this + 8295) = 0u;
  *(this + 8293) = 0u;
  return result;
}

void Scandium::ScandiumPPG::scandium_beat_detection_t::scandium_beat_detection_process(uint64_t a1, stats *a2, stats *a3, stats *this, int16x4_t a5)
{
  v108 = *MEMORY[0x277D85DE8];
  memset(&v89, 0, sizeof(v89));
  Scandium::ScandiumPPG::scandium_beat_detection_t::compute_mav(a1, this, a1 + 132624, a5);
  stats::linear_interp(a2, (a1 + 92304), 0x3C0, 4, v7);
  v8 = (a1 + 132784);
  v9 = *(a1 + 92304);
  v10 = 3840;
  v11 = a1 + 92304;
  do
  {
    v12 = Scandium::ScandiumPPG::iirSos<float,4>::process(a1, *v11 - v9);
    *(v11 + 15360) = LODWORD(v12);
    v11 += 4;
    --v10;
  }

  while (v10);
  Scandium::ScandiumPPG::scandium_beat_detection_t::get_beats_and_flags(a1, a1 + 92304, a1 + 107664, a1 + 132624, 0x4Du, (a1 + 88), (a1 + 130704), (a1 + 132760), (a1 + 132784));
  v13 = *(a1 + 88);
  v14 = *(a1 + 96);
  v15 = v14 - v13;
  if (v14 == v13)
  {
    v20 = 0;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = v15 >> 2;
    v19 = *v8;
    do
    {
      if (((*(v19 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        *(v13 + 4 * v17) = *(v13 + 4 * v16);
        *(*(a1 + 120) + 4 * v17++) = *(*(a1 + 120) + 4 * v16);
      }

      ++v16;
    }

    while (v18 > v16);
    v20 = v17;
  }

  std::vector<float>::resize((a1 + 88), v20);
  std::vector<float>::resize((a1 + 120), v20);
  Scandium::ScandiumPPG::scandium_beat_detection_t::get_hr_from_beat_times(v21, (a1 + 88));
  Scandium::ScandiumPPG::scandium_beat_detection_t::get_beats_and_flags(a1, a1 + 92304, a1 + 107664, a1 + 132624, (45.0 / *(a1 + 112) * 256.0 + 0.5), (a1 + 88), (a1 + 130704), (a1 + 132760), (a1 + 132784));
  stats::linear_interp(a3, (a1 + 92304), 0x3C0, 4, v22);
  memset(&v88, 0, sizeof(v88));
  Scandium::ScandiumPPG::find_slope((a1 + 92304), 0xF00u, 5u, &v88);
  memset(&v87, 0, sizeof(v87));
  Scandium::ScandiumPPG::scandium_beat_detection_t::find_max_slope(v23, &v88, a1 + 130704, (a1 + 132760), &v87);
  v25 = *(a1 + 120);
  *(a1 + 128) = v25;
  v26 = *(a1 + 132792);
  if (v26)
  {
    v27 = 0;
    v28 = 1;
    do
    {
      if (((*(*v8 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
      {
        v29 = *(a1 + 136);
        if (v25 >= v29)
        {
          v30 = *(a1 + 120);
          v31 = v25 - v30;
          v32 = (v25 - v30) >> 2;
          v33 = v32 + 1;
          if ((v32 + 1) >> 62)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v34 = v29 - v30;
          if (v34 >> 1 > v33)
          {
            v33 = v34 >> 1;
          }

          if (v34 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v35 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v35 = v33;
          }

          if (v35)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1 + 120, v35);
          }

          v36 = v32;
          v37 = (4 * v32);
          v38 = v87.__begin_[v27];
          v39 = &v37[-v36];
          *v37 = v38;
          v25 = (v37 + 1);
          memcpy(v39, v30, v31);
          v40 = *(a1 + 120);
          *(a1 + 120) = v39;
          *(a1 + 128) = v25;
          *(a1 + 136) = 0;
          if (v40)
          {
            operator delete(v40);
          }
        }

        else
        {
          *v25 = v87.__begin_[v27];
          v25 += 4;
        }

        *(a1 + 128) = v25;
        v26 = *(a1 + 132792);
      }

      v27 = v28;
      v41 = v26 > v28++;
    }

    while (v41);
    v42 = *(a1 + 120);
  }

  else
  {
    v42 = v25;
  }

  LODWORD(__p[0]) = 0;
  v43 = std::vector<float>::assign((a1 + 88), (v25 - v42) >> 2, __p, v24);
  v44 = *(a1 + 120);
  v45 = *(a1 + 128);
  v46 = v45 - v44;
  if (v45 != v44)
  {
    v47 = 0;
    v48 = v46 >> 2;
    v49 = *(a1 + 88);
    do
    {
      *(v49 + 4 * v47) = (*(v44 + 4 * v47) + 1.0) * 0.0039062;
      ++v47;
    }

    while (v48 > v47);
  }

  Scandium::ScandiumPPG::scandium_beat_detection_t::get_hr_from_beat_times(v43, (a1 + 88));
  v51 = *(a1 + 120);
  v52 = *(a1 + 128) - v51;
  if (v52)
  {
    v53 = v52 >> 2;
    v54 = 1;
    do
    {
      if (*v51 < 2)
      {
        v55 = *v51 + 1;
      }

      else
      {
        v55 = *v51 - 2;
      }

      *v51++ = v55 >> 2;
      v41 = v53 > v54++;
    }

    while (v41);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    v89.__r_.__value_.__l.__size_ = 21;
    v56 = v89.__r_.__value_.__r.__words[0];
  }

  else
  {
    *(&v89.__r_.__value_.__s + 23) = 21;
    v56 = &v89;
  }

  strcpy(v56, "scandium beat times: ");
  if (*(a1 + 128) != *(a1 + 120))
  {
    v57 = 0;
    v58 = 1;
    do
    {
      std::to_string(&v84, *(*(a1 + 88) + 4 * v57));
      v59 = std::string::append(&v84, " ", 1uLL);
      v60 = *&v59->__r_.__value_.__l.__data_;
      v91 = v59->__r_.__value_.__r.__words[2];
      *__p = v60;
      v59->__r_.__value_.__l.__size_ = 0;
      v59->__r_.__value_.__r.__words[2] = 0;
      v59->__r_.__value_.__r.__words[0] = 0;
      if (v91 >= 0)
      {
        v61 = __p;
      }

      else
      {
        v61 = __p[0];
      }

      if (v91 >= 0)
      {
        v62 = HIBYTE(v91);
      }

      else
      {
        v62 = __p[1];
      }

      v50 = std::string::append(&v89, v61, v62);
      if (SHIBYTE(v91) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v84.__r_.__value_.__l.__data_);
      }

      v57 = v58++;
    }

    while (v57 < (*(a1 + 128) - *(a1 + 120)) >> 2);
  }

  log = Scandium::algs_get_log(v50);
  v64 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
  if (v64)
  {
    Scandium::ScandiumPPG::scandium_beat_detection_t::scandium_beat_detection_process(&v89.__r_.__value_.__r.__words[2] + 7, &v89);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    v89.__r_.__value_.__l.__size_ = 21;
    v65 = v89.__r_.__value_.__r.__words[0];
  }

  else
  {
    *(&v89.__r_.__value_.__s + 23) = 21;
    v65 = &v89;
  }

  strcpy(v65, "scandium beat index: ");
  v66 = *(a1 + 120);
  if (*(a1 + 128) != v66)
  {
    v67 = 0;
    v68 = 1;
    do
    {
      std::to_string(&v84, *(v66 + 4 * v67));
      v69 = std::string::append(&v84, " ", 1uLL);
      v70 = *&v69->__r_.__value_.__l.__data_;
      v91 = v69->__r_.__value_.__r.__words[2];
      *__p = v70;
      v69->__r_.__value_.__l.__size_ = 0;
      v69->__r_.__value_.__r.__words[2] = 0;
      v69->__r_.__value_.__r.__words[0] = 0;
      if (v91 >= 0)
      {
        v71 = __p;
      }

      else
      {
        v71 = __p[0];
      }

      if (v91 >= 0)
      {
        v72 = HIBYTE(v91);
      }

      else
      {
        v72 = __p[1];
      }

      v64 = std::string::append(&v89, v71, v72);
      if (SHIBYTE(v91) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v84.__r_.__value_.__l.__data_);
      }

      v67 = v68;
      v66 = *(a1 + 120);
      ++v68;
    }

    while (v67 < (*(a1 + 128) - v66) >> 2);
  }

  v73 = Scandium::algs_get_log(v64);
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
  {
    Scandium::ScandiumPPG::scandium_beat_detection_t::scandium_beat_detection_process(&v89.__r_.__value_.__r.__words[2] + 7, &v89);
  }

  if (*(a1 + 132832))
  {
    std::string::basic_string[abi:ne200100]<0>(v85, "beat_detection");
    v82[0] = 0;
    v82[1] = 0;
    v83 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(v82, a2, &a2[53].dk_xfer[2], 0x3C0uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, "average_dcs_signal");
    v92 = *v82;
    v93 = v83;
    v82[1] = 0;
    v83 = 0;
    v82[0] = 0;
    v94 = 3;
    v95 = 6;
    v80[0] = 0;
    v80[1] = 0;
    v81 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(v80, a3, &a3[53].dk_xfer[2], 0x3C0uLL);
    std::string::basic_string[abi:ne200100]<0>(v96, "average_ppg_ir");
    v97 = *v80;
    v98 = v81;
    v80[1] = 0;
    v81 = 0;
    v80[0] = 0;
    v99 = 3;
    v100 = 6;
    std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::pair[abi:ne200100]<char const(&)[10],std::vector<float>&,0>(&v101, "beat_time", (a1 + 88));
    std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::pair[abi:ne200100]<char const(&)[9],std::vector<int>&,0>(&v102, "beat_idx", (a1 + 120));
    v78[0] = 0;
    v78[1] = 0;
    v79 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v78, a1 + 132624, a1 + 132684, 0xFuLL);
    std::string::basic_string[abi:ne200100]<0>(v103, "mav_1s");
    v104 = *v78;
    v105 = v79;
    v78[1] = 0;
    v79 = 0;
    v78[0] = 0;
    v106 = 3;
    v107 = 6;
    std::unordered_map<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::unordered_map(&v84, __p, 5);
    v74 = *(a1 + 132832);
    if (!v74)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v74 + 48))(v74, v85, &v84);
    std::__hash_table<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>>>::~__hash_table(&v84);
    v75 = 360;
    do
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v88.__end_ + v75);
      if (*(&v87.__end_cap_.__value_ + v75 + 7) < 0)
      {
        operator delete(*(&v87.__begin_ + v75));
      }

      v75 -= 72;
    }

    while (v75);
    if (v78[0])
    {
      v78[1] = v78[0];
      operator delete(v78[0]);
    }

    if (v80[0])
    {
      v80[1] = v80[0];
      operator delete(v80[0]);
    }

    if (v82[0])
    {
      v82[1] = v82[0];
      operator delete(v82[0]);
    }

    if (v86 < 0)
    {
      operator delete(v85[0]);
    }
  }

  if (v87.__begin_)
  {
    v87.__end_ = v87.__begin_;
    operator delete(v87.__begin_);
  }

  if (v88.__begin_)
  {
    v88.__end_ = v88.__begin_;
    operator delete(v88.__begin_);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  v76 = *MEMORY[0x277D85DE8];
}

void sub_264803698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  v55 = -360;
  v56 = v53;
  do
  {
    v56 = std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::~pair(v56) - 72;
    v55 += 72;
  }

  while (v55);
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a36)
  {
    operator delete(a36);
  }

  if (a39)
  {
    operator delete(a39);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  _Unwind_Resume(a1);
}

void Scandium::ScandiumPPG::scandium_beat_detection_t::compute_mav(uint64_t a1, stats *this, uint64_t a3, int16x4_t a4)
{
  v6 = (a1 + 144);
  v7 = (a1 + 46224);
  v8 = 3;
  v9 = (a1 + 46224);
  do
  {
    stats::linear_interp(this, v6, 0x3C0, 4, a4);
    Scandium::ScandiumPPG::median_filt(v6, v9, 0x10uLL, 3840, 0);
    this = (this + 3840);
    v6 += 3840;
    v9 += 3840;
    --v8;
  }

  while (v8);
  for (i = 0; i != 15; ++i)
  {
    *(a3 + 4 * i) = 0;
    v11 = 3;
    v12 = v7;
    do
    {
      v13 = stats::variance(v12, 0x100uLL, 1);
      if (*(a3 + 4 * i) >= v13)
      {
        v13 = *(a3 + 4 * i);
      }

      *(a3 + 4 * i) = v13;
      v12 = (v12 + 15360);
      --v11;
    }

    while (v11);
    v7 = (v7 + 1024);
  }
}

double Scandium::ScandiumPPG::iirSos<float,4>::process(unsigned int *a1, float a2)
{
  v2 = *a1;
  if (v2 < 1)
  {
    return 0.0;
  }

  result = (*(a1 + 20) * (a2 - *(a1 + 21)));
  v4 = (a1 + 14);
  v5 = (a1 + 3);
  do
  {
    v6 = result;
    result = *(v4 - 1) + *(v5 - 2) * result;
    v7 = *v4 + *(v5 - 1) * v6 - result * v5[1];
    v8 = *v5 * v6 - result * v5[2];
    *(v4 - 1) = v7;
    *v4 = v8;
    v4 += 2;
    v5 += 5;
    --v2;
  }

  while (v2);
  *&result = result;
  return result;
}

void Scandium::ScandiumPPG::scandium_beat_detection_t::get_beats_and_flags(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t *a6, int *a7, std::vector<int> *a8, uint64_t *a9)
{
  LODWORD(__n) = 0;
  v15 = a1 + 126864;
  findPeaks((a3 + 512), 3584, (a1 + 123024), -INFINITY, a5, 0, (a1 + 126864), (a1 + 128784), a7, &__n);
  v17 = __n;
  if (__n)
  {
    v18 = __n;
    v19 = a7;
    do
    {
      *v19++ += 128;
      --v18;
    }

    while (v18);
  }

  else
  {
    v17 = 0;
  }

  v20 = a1 + 0x20000;
  __u[0] = 0;
  std::vector<float>::assign(a6, v17, __u, v16);
  __u[0] = 0;
  std::vector<int>::assign((a6 + 4), __n, __u);
  v45 = a6;
  if (__n)
  {
    v22 = 0;
    v23 = *a6;
    v24 = a6[4];
    do
    {
      v25 = a7[v22];
      *v21.i32 = vcvts_n_f32_s32(v25 + 1, 8uLL);
      *(v23 + 4 * v22) = v21.i32[0];
      if (v25 < 2)
      {
        v26 = v25 + 1;
      }

      else
      {
        v26 = v25 - 2;
      }

      *(v24 + 4 * v22++) = v26 >> 2;
      v27 = __n;
    }

    while (v22 < __n);
  }

  else
  {
    v27 = 0;
  }

  v28 = (a1 + 132688);
  __u[0] = 0;
  std::vector<float>::assign((v20 + 1616), v27, __u, v21);
  v29 = (v20 + 1640);
  __u[0] = 0;
  std::vector<float>::assign((v20 + 1640), __n, __u, v30);
  __u[0] = 0;
  std::vector<int>::assign(a8, __n, __u);
  if (__n)
  {
    v32 = 0;
    do
    {
      if (v32)
      {
        v33 = &a7[v32];
        v34 = *(v33 - 1);
        v35 = (a3 + 4 * v34);
        v36 = (*v28 + 4 * v32);
        v37 = *v33 - v34;
      }

      else
      {
        v36 = *v28;
        v37 = *a7;
        v35 = a3;
      }

      vDSP_minv_wrapper(v35, 1, v36, v37);
      *__u = 0;
      v38 = a7[v32];
      v39 = a3 + 4 * v38;
      v40 = (*v29 + 4 * v32);
      if (v32 == __n - 1)
      {
        vDSP_minvi_wrapper((v39 + 4), 1, v40, __u, 3839 - v38);
        v41 = v32 + 1;
      }

      else
      {
        v41 = v32 + 1;
        vDSP_minvi_wrapper((v39 + 4), 1, v40, __u, a7[v32 + 1] + ~v38);
      }

      a8->__begin_[v32] = __u[0] + a7[v32] + 1;
      v42 = a7[v32];
      v43 = (*(v15 + 4 * v32) - *(*v28 + 4 * v32)) * 100.0 / *(a2 + 4 * v42);
      *(*v28 + 4 * v32) = v43;
      v44 = (*(v15 + 4 * v32) - *(*v29 + 4 * v32)) * 100.0 / *(a2 + 4 * v42);
      *(*v29 + 4 * v32) = v44;
      v32 = v41;
    }

    while (v41 < __n);
  }

  Scandium::ScandiumPPG::scandium_beat_detection_t::pulse_sanitizer(v31, v45, v28, v29, a4, a9);
}

void Scandium::ScandiumPPG::scandium_beat_detection_t::get_hr_from_beat_times(Scandium::ScandiumPPG::scandium_beat_detection_t *this, float32x2_t *a2)
{
  v3 = *a2;
  v4 = *&a2[1] - *a2;
  if (v4 <= 8)
  {
    a2[3] = vneg_f32(0x3F0000003FLL);
    a2[1] = v3;
    a2[5] = a2[4];
    return;
  }

  std::vector<float>::vector[abi:ne200100](&__p, (v4 >> 2));
  v5 = *a2;
  v6 = a2[1];
  v7 = __p;
  if (*a2 != v6)
  {
    v9 = *v5;
    v8 = v5 + 1;
    v10 = v9;
    *__p = v9;
    if (v8 != v6)
    {
      v11 = v7 + 1;
      do
      {
        v12 = *v8++;
        *v11++ = v12 - v10;
        v10 = v12;
      }

      while (v8 != v6);
    }
  }

  v13 = v7 + 1;
  v14 = v19;
  if (v7 + 1 != v19)
  {
    while (*v13 <= 2.0 && *v13 >= 0.4)
    {
      if (++v13 == v19)
      {
        goto LABEL_20;
      }
    }

    if (v13 != v19)
    {
      v15 = v13 + 1;
      if (v13 + 1 != v19)
      {
        do
        {
          v16 = *v15;
          if (*v15 <= 2.0 && v16 >= 0.4)
          {
            *v13++ = v16;
          }

          ++v15;
        }

        while (v15 != v14);
      }
    }

    if (v13 != v14)
    {
      v14 = v13;
      v19 = v13;
    }
  }

LABEL_20:
  v17 = v14 - v7;
  if ((v17 >> 2) > 1)
  {
    a2[3].f32[0] = 60.0 / stats::median((v7 + 1), (v17 >> 2) - 1);
    a2[3].f32[1] = 60.0 / stats::mean((__p + 4), (((v19 - __p) >> 2) - 1));
    v7 = __p;
    if (!__p)
    {
      return;
    }
  }

  else
  {
    a2[3] = vneg_f32(0x3F0000003FLL);
    a2[1] = *a2;
    a2[5] = a2[4];
    if (!v7)
    {
      return;
    }
  }

  v19 = v7;
  operator delete(v7);
}

void sub_264803E4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Scandium::ScandiumPPG::scandium_beat_detection_t::find_max_slope(int a1, void *a2, uint64_t a3, void *a4, std::vector<int> *this)
{
  v9 = a4[1] - *a4;
  std::vector<float>::reserve(this, (v9 >> 2));
  if ((v9 >> 2) >= 1)
  {
    v10 = 0;
    v25 = 0;
    v24 = 0;
    v11 = (v9 >> 2) & 0x7FFFFFFF;
    do
    {
      vDSP_maxvi_wrapper((*a2 + 4 * *(a3 + 4 * v10)), 1, &v24, &v25, *(*a4 + 4 * v10) - *(a3 + 4 * v10));
      v12 = *(a3 + 4 * v10) + v25;
      end = this->__end_;
      value = this->__end_cap_.__value_;
      if (end >= value)
      {
        begin = this->__begin_;
        v17 = end - this->__begin_;
        v18 = v17 >> 2;
        v19 = (v17 >> 2) + 1;
        if (v19 >> 62)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v20 = value - begin;
        if (v20 >> 1 > v19)
        {
          v19 = v20 >> 1;
        }

        v21 = v20 >= 0x7FFFFFFFFFFFFFFCLL;
        v22 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v21)
        {
          v22 = v19;
        }

        if (v22)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this, v22);
        }

        *(4 * v18) = v12;
        v15 = (4 * v18 + 4);
        memcpy(0, begin, v17);
        v23 = this->__begin_;
        this->__begin_ = 0;
        this->__end_ = v15;
        this->__end_cap_.__value_ = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *end = v12;
        v15 = end + 1;
      }

      this->__end_ = v15;
      ++v10;
    }

    while (v11 != v10);
  }
}

_DWORD *std::vector<float>::assign(void *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a2 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 62))
    {
      v8 = v6 >> 1;
      if (v6 >> 1 <= a2)
      {
        v8 = a2;
      }

      if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v9 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<float>::__vallocate[abi:ne200100](a1, v9);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v10 = a1[1];
  v11 = (v10 - result) >> 2;
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = (v10 - result) >> 2;
  }

  if (v12)
  {
    v13 = 0;
    a4.i32[0] = *a3;
    v14 = (v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v15 = vdupq_n_s64(v12 - 1);
    v16 = result + 2;
    do
    {
      v17 = vdupq_n_s64(v13);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_2648215F0)));
      if (vuzp1_s16(v18, a4).u8[0])
      {
        *(v16 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v18, a4).i8[2])
      {
        *(v16 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_2648215E0)))).i32[1])
      {
        *v16 = a4.i32[0];
        v16[1] = a4.i32[0];
      }

      v13 += 4;
      v16 += 4;
    }

    while (v14 != v13);
  }

  v19 = a2 >= v11;
  v20 = a2 - v11;
  if (v20 != 0 && v19)
  {
    v21 = 0;
    v22 = v10 + 4 * v20;
    a4.i32[0] = *a3;
    v23 = (4 * a2 - (v10 - result) - 4) >> 2;
    v24 = vdupq_n_s64(v23);
    v25 = (v10 + 8);
    do
    {
      v26 = vdupq_n_s64(v21);
      v27 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_2648215F0)));
      if (vuzp1_s16(v27, a4).u8[0])
      {
        *(v25 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v27, a4).i8[2])
      {
        *(v25 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v26, xmmword_2648215E0)))).i32[1])
      {
        *v25 = a4.i32[0];
        v25[1] = a4.i32[0];
      }

      v21 += 4;
      v25 += 4;
    }

    while (((v23 + 4) & 0x7FFFFFFFFFFFFFFCLL) != v21);
    a1[1] = v22;
  }

  else
  {
    a1[1] = &result[a2];
  }

  return result;
}

void Scandium::ScandiumPPG::median_filt(Scandium::ScandiumPPG *this, const float *a2, std::vector<int>::size_type __n, int a4, int a5)
{
  if (__n <= 0)
  {
    Scandium::ScandiumPPG::median_filt();
  }

  if (!this)
  {
    Scandium::ScandiumPPG::median_filt();
  }

  if (!a2)
  {
    Scandium::ScandiumPPG::median_filt();
  }

  v8 = __n;
  memset(&v28, 0, sizeof(v28));
  std::vector<float>::reserve(&v28, __n);
  if (a4 >= 1)
  {
    v9 = 0;
    v10 = a4;
    v11 = v8 >> 1;
    v24 = a4 - v11;
    v25 = v8 - v11;
    if (v8)
    {
      v12 = -1;
    }

    else
    {
      v12 = 0;
    }

    v13 = (this + 8 * a4 + -4 * v11);
    v23 = (this + 4 * a4);
    v22 = v11 - a4;
    v14 = v11;
    v15 = (this + 4 * v11);
    do
    {
      std::vector<float>::resize(&v28, 0);
      if (v9 >= v11)
      {
        if (v9 > v24)
        {
          if (a5)
          {
            v27 = 0;
            std::vector<float>::resize(&v28, v22 + v9, &v27, v16);
          }

          else
          {
            std::__copy_impl::operator()[abi:ne200100]<float const*,float const*,std::back_insert_iterator<std::vector<float>>>(&v27, v13, v23, &v28.__begin_);
          }

          v17 = v9 - v11;
          v18 = v10;
          goto LABEL_21;
        }

        v17 = v9 - v11;
      }

      else
      {
        if (a5)
        {
          v27 = 0;
          std::vector<float>::resize(&v28, v14, &v27, v16);
        }

        else
        {
          std::__copy_impl::operator()[abi:ne200100]<float const*,float const*,std::back_insert_iterator<std::vector<float>>>(&v27, this, v15, &v28.__begin_);
        }

        v17 = 0;
      }

      v18 = v25 + v9;
LABEL_21:
      std::__copy_impl::operator()[abi:ne200100]<float const*,float const*,std::back_insert_iterator<std::vector<float>>>(&v27, this + v17, this + v18, &v28.__begin_);
      v20 = (v12 + v28.__end_ - v28.__begin_) >> 1;
      v21 = &v28.__begin_[v20];
      if (v21 != v28.__end_)
      {
        std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(v28.__begin_, &v28.__begin_[v20], v28.__end_, v19);
      }

      LODWORD(a2[v9++]) = *v21;
      --v14;
      --v13;
      --v15;
    }

    while (v10 != v9);
  }

  if (v28.__begin_)
  {
    v28.__end_ = v28.__begin_;
    operator delete(v28.__begin_);
  }
}

void sub_264804478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::assign(std::vector<int> *this, std::vector<int>::size_type __n, std::vector<int>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (__n > (value - begin) >> 2)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (!(__n >> 62))
    {
      v7 = value >> 1;
      if (value >> 1 <= __n)
      {
        v7 = __n;
      }

      if (value >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v8 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<float>::__vallocate[abi:ne200100](this, v8);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  end = this->__end_;
  v10 = end - begin;
  if (v10 >= __n)
  {
    v11 = __n;
  }

  else
  {
    v11 = end - begin;
  }

  if (v11)
  {
    v12 = 0;
    v13 = *__u;
    v14 = (v11 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v15 = vdupq_n_s64(v11 - 1);
    v16 = begin + 2;
    do
    {
      v17 = vdupq_n_s64(v12);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_2648215F0)));
      if (vuzp1_s16(v18, *v15.i8).u8[0])
      {
        *(v16 - 2) = v13;
      }

      if (vuzp1_s16(v18, *&v15).i8[2])
      {
        *(v16 - 1) = v13;
      }

      if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_2648215E0)))).i32[1])
      {
        *v16 = v13;
        v16[1] = v13;
      }

      v12 += 4;
      v16 += 4;
    }

    while (v14 != v12);
  }

  v19 = __n >= v10;
  v20 = __n - v10;
  if (v20 != 0 && v19)
  {
    v21 = 0;
    v22 = &end[v20];
    v23 = *__u;
    v24 = (4 * __n - (end - begin) - 4) >> 2;
    v25 = vdupq_n_s64(v24);
    v26 = end + 2;
    do
    {
      v27 = vdupq_n_s64(v21);
      v28 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_2648215F0)));
      if (vuzp1_s16(v28, *v25.i8).u8[0])
      {
        *(v26 - 2) = v23;
      }

      if (vuzp1_s16(v28, *&v25).i8[2])
      {
        *(v26 - 1) = v23;
      }

      if (vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_2648215E0)))).i32[1])
      {
        *v26 = v23;
        v26[1] = v23;
      }

      v21 += 4;
      v26 += 4;
    }

    while (((v24 + 4) & 0x7FFFFFFFFFFFFFFCLL) != v21);
    this->__end_ = v22;
  }

  else
  {
    this->__end_ = &begin[__n];
  }
}

void Scandium::ScandiumPPG::scandium_beat_detection_t::pulse_sanitizer(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t *a6)
{
  v11 = a2[1] - *a2;
  v12 = v11 >> 2;
  v41 = 0;
  std::vector<BOOL>::assign(a6, (v11 >> 2), &v41);
  v13 = *a2;
  if ((v11 >> 2) >= 3)
  {
    v14 = 0;
    v15 = 0;
    v16 = *a3;
    v17 = *a4;
    v18 = *a6;
    v19 = *(*a3 + 4);
    v20 = *(*a4 + 4);
    v21 = *(v13 + 4);
    v22 = *a3 + 8;
    v23 = *a4 + 8;
    do
    {
      if (v19 >= v20)
      {
        v24 = v20;
      }

      else
      {
        v24 = v19;
      }

      if (*(v16 + 4 * v15) <= *(v17 + 4 * v15))
      {
        v25 = *(v17 + 4 * v15);
      }

      else
      {
        v25 = *(v16 + 4 * v15);
      }

      v19 = *(v22 + 4 * v14);
      v20 = *(v23 + 4 * v14);
      v26 = *(v13 + 4 * v15);
      v27 = v21 - v26;
      v21 = *(v13 + 8 + 4 * v14);
      if (v19 <= v20)
      {
        v28 = *(v23 + 4 * v14);
      }

      else
      {
        v28 = *(v22 + 4 * v14);
      }

      v29 = 60.0 / (v21 - v26);
      v32 = v25 * 0.5 <= v24 || v28 * 0.5 <= v24 || v27 >= 0.5 || v29 < 30.0;
      if (v32 && (v24 < v25 ? (v33 = v24 < v28) : (v33 = 0), !v33 || v27 >= 0.3))
      {
        v15 = v14 + 1;
      }

      else
      {
        *(v18 + (((v14 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (v14 + 1);
      }

      ++v14;
    }

    while ((v12 - 1) - 1 != v14);
    v13 = *a2;
  }

  for (i = 0; i != 15; ++i)
  {
    if (*(a5 + 4 * i) > 0.001 && v12 >= 1)
    {
      v36 = 0;
      v38 = *a6;
      do
      {
        v39 = *(v13 + 4 * v36);
        if (v39 >= (i - 1))
        {
          v37 = i + 1.5;
          v40 = v39 > v37;
        }

        else
        {
          v40 = 1;
        }

        if (!v40)
        {
          *(v38 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
        }

        ++v36;
      }

      while (((v11 >> 2) & 0x7FFFFFFF) != v36);
    }
  }
}

void std::vector<BOOL>::assign(void *a1, unint64_t a2, _BYTE *a3)
{
  a1[1] = 0;
  if (a2)
  {
    v6 = a1[2];
    v7 = v6 << 6;
    if (v6 << 6 >= a2)
    {
      a1[1] = a2;
    }

    else
    {
      v15 = 0;
      v16 = 0uLL;
      if ((a2 & 0x8000000000000000) != 0)
      {
        std::vector<float>::__throw_length_error[abi:ne200100]();
      }

      v8 = v6 << 7;
      if (v8 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
      {
        v8 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
      }

      if (v7 <= 0x3FFFFFFFFFFFFFFELL)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      std::vector<BOOL>::reserve(&v15, v9);
      v11 = v15;
      v12 = *(&v16 + 1);
      v15 = *a1;
      v10 = v15;
      v13 = *(a1 + 1);
      *a1 = v11;
      a1[1] = a2;
      a1[2] = v12;
      v16 = v13;
      if (v10)
      {
        operator delete(v10);
      }
    }

    v14 = *a1;
    if (*a3 == 1)
    {
      v15 = *a1;
      LODWORD(v16) = 0;
      std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(&v15, a2);
    }

    else
    {
      v15 = *a1;
      LODWORD(v16) = 0;
      std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,11ul>>(&v15, a2);
    }
  }
}

void sub_264804A48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::resize(void *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v4 = (a1[1] - *a1) >> 2;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    std::vector<float>::__append(a1, a2 - v4, a3, a4);
  }
}

uint64_t std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::pair[abi:ne200100]<char const(&)[10],std::vector<float>&,0>(uint64_t a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  v5[4] = 0;
  v5[5] = 0;
  v5 += 4;
  v5[2] = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v5, *a3, a3[1], (a3[1] - *a3) >> 2);
  *(a1 + 56) = 3;
  *(a1 + 64) = 6;
  return a1;
}

void sub_264804AEC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::pair[abi:ne200100]<char const(&)[9],std::vector<int>&,0>(uint64_t a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  v5[4] = 0;
  v5[5] = 0;
  v5 += 4;
  v5[2] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v5, *a3, a3[1], (a3[1] - *a3) >> 2);
  *(a1 + 56) = 1;
  *(a1 + 64) = 6;
  return a1;
}

void sub_264804B5C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<BOOL>::reserve(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&v2, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_264804C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(&v18, &v16, &v14, &v13);
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void sub_264804F48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__append(uint64_t a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v7) >> 2)
  {
    if (a2)
    {
      v13 = 0;
      a4.i32[0] = *a3;
      v14 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v15 = vdupq_n_s64(v14);
      v16 = v7 + 4 * a2;
      v17 = v14 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
      v18 = (v7 + 8);
      do
      {
        v19 = vdupq_n_s64(v13);
        v20 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_2648215F0)));
        if (vuzp1_s16(v20, a4).u8[0])
        {
          *(v18 - 2) = a4.i32[0];
        }

        if (vuzp1_s16(v20, a4).i8[2])
        {
          *(v18 - 1) = a4.i32[0];
        }

        if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_2648215E0)))).i32[1])
        {
          *v18 = a4.i32[0];
          v18[1] = a4.i32[0];
        }

        v13 += 4;
        v18 += 4;
      }

      while (v17 != v13);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v8 = v7 - *a1;
    v9 = a2 + (v8 >> 2);
    if (v9 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v8 >> 2;
    v11 = v6 - *a1;
    if (v11 >> 1 > v9)
    {
      v9 = v11 >> 1;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v12 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v21 = 0;
    v22 = 4 * v10;
    a4.i32[0] = *a3;
    v23 = 4 * v10 + 4 * a2;
    v24 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v25 = vdupq_n_s64(v24);
    v26 = v24 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v27 = (4 * v10 + 8);
    do
    {
      v28 = vdupq_n_s64(v21);
      v29 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_2648215F0)));
      if (vuzp1_s16(v29, a4).u8[0])
      {
        *(v27 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v29, a4).i8[2])
      {
        *(v27 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v28, xmmword_2648215E0)))).i32[1])
      {
        *v27 = a4.i32[0];
        v27[1] = a4.i32[0];
      }

      v21 += 4;
      v27 += 4;
    }

    while (v26 != v21);
    v30 = *(a1 + 8) - *a1;
    v31 = v22 - v30;
    memcpy((v22 - v30), *a1, v30);
    v32 = *a1;
    *a1 = v31;
    *(a1 + 8) = v23;
    *(a1 + 16) = 0;
    if (v32)
    {

      operator delete(v32);
    }
  }
}

char *OUTLINED_FUNCTION_0_0@<X0>(char *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *(v3 - 8) = a3;
  if (*result < 0)
  {
    v4 = *a2;
  }

  return result;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void vDSP_maxv_wrapper(const float *a1, vDSP_Stride a2, float *a3, uint64_t a4)
{
  v8 = malloc_type_malloc(4 * a4, 0x100004052888210uLL);
  if (v8)
  {
    v9 = v8;
    if (a4 < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v8[v10++] = *a1;
        v12 = v11++;
        ++a1;
      }

      while (v12 < a4);
    }

    vDSP_maxv(v8, a2, a3, v10);

    free(v9);
  }

  else
  {
    *a3 = NAN;
  }
}

void vDSP_minv_wrapper(const float *a1, vDSP_Stride a2, float *a3, uint64_t a4)
{
  v8 = malloc_type_malloc(4 * a4, 0x100004052888210uLL);
  if (v8)
  {
    v9 = v8;
    if (a4 < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v8[v10++] = *a1;
        v12 = v11++;
        ++a1;
      }

      while (v12 < a4);
    }

    vDSP_minv(v8, a2, a3, v10);

    free(v9);
  }

  else
  {
    *a3 = NAN;
  }
}

void vDSP_maxvi_wrapper(const float *a1, vDSP_Stride a2, float *a3, vDSP_Length *a4, uint64_t a5)
{
  v10 = malloc_type_malloc(4 * a5, 0x100004052888210uLL);
  if (v10)
  {
    v11 = v10;
    if (a5 < 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v10[v12++] = *a1;
        v14 = v13++;
        ++a1;
      }

      while (v14 < a5);
    }

    vDSP_maxvi(v10, a2, a3, a4, v12);

    free(v11);
  }

  else
  {
    *a3 = NAN;
  }
}

void vDSP_minvi_wrapper(const float *a1, vDSP_Stride a2, float *a3, vDSP_Length *a4, uint64_t a5)
{
  v10 = malloc_type_malloc(4 * a5, 0x100004052888210uLL);
  if (v10)
  {
    v11 = v10;
    if (a5 < 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v10[v12++] = *a1;
        v14 = v13++;
        ++a1;
      }

      while (v14 < a5);
    }

    vDSP_minvi(v10, a2, a3, a4, v12);

    free(v11);
  }

  else
  {
    *a3 = NAN;
  }
}

void vDSP_meanv_wrapper(const float *a1, vDSP_Stride a2, float *a3, uint64_t a4)
{
  v8 = malloc_type_malloc(4 * a4, 0x100004052888210uLL);
  if (v8)
  {
    v9 = v8;
    if (a4 < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v8[v10++] = *a1;
        v12 = v11++;
        ++a1;
      }

      while (v12 < a4);
    }

    vDSP_meanv(v8, a2, a3, v10);

    free(v9);
  }

  else
  {
    *a3 = NAN;
  }
}

uint64_t Scandium::algs_get_log(Scandium *this)
{
  if (Scandium::algs_get_log(void)::onceToken != -1)
  {
    Scandium::algs_get_log();
  }

  return Scandium::algs_get_log(void)::log;
}

os_log_t ___ZN8Scandium12algs_get_logEv_block_invoke()
{
  result = os_log_create("com.apple.scandium", "algorithm");
  Scandium::algs_get_log(void)::log = result;
  return result;
}

uint64_t Scandium::ScandiumPPG::scandium_quality_metric_t::scandium_quality_metric_t(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 0;
  Scandium::ScandiumPPG::scandium_optical_fom_t::scandium_optical_fom_t(a1 + 8, a3, a4, a5);
  *(a1 + 432) = 0;
  *a1 = 0;
  *(a1 + 440) = a2;
  return a1;
}

void Scandium::ScandiumPPG::scandium_quality_metric_t::process(float32x2_t *a1, uint64_t a2)
{
  v91 = *MEMORY[0x277D85DE8];
  if (a1[54])
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "quality_metric_in");
    std::string::basic_string[abi:ne200100]<0>(v25, "ir_snip_corr");
    LODWORD(v26) = *a2;
    LODWORD(v28[0]) = 3;
    std::string::basic_string[abi:ne200100]<0>(v28 + 8, "red_snip_corr");
    DWORD2(v29) = *(a2 + 4);
    *&v30[24] = 3;
    std::string::basic_string[abi:ne200100]<0>(v31, "bga_corr");
    v32 = *(a2 + 8);
    v33 = 3;
    std::string::basic_string[abi:ne200100]<0>(v34, "spo2");
    v35 = *(a2 + 12);
    v36 = 3;
    std::string::basic_string[abi:ne200100]<0>(v37, "hr");
    v38 = *(a2 + 16);
    v39 = 3;
    std::string::basic_string[abi:ne200100]<0>(v40, "girpir");
    v41 = *(a2 + 28);
    v42 = 3;
    std::string::basic_string[abi:ne200100]<0>(v43, "num_good_beats");
    v44 = *(a2 + 20);
    v45 = 1;
    std::string::basic_string[abi:ne200100]<0>(v46, "num_total_beats");
    v47 = *(a2 + 24);
    v48 = 1;
    v4 = *(a2 + 32);
    std::string::basic_string[abi:ne200100]<0>(v49, "path_type");
    v50 = v4;
    v51 = 1;
    v5 = *(a2 + 36);
    std::string::basic_string[abi:ne200100]<0>(v52, "emitter_idx");
    v53 = v5;
    v54 = 1;
    v6 = *(a2 + 37);
    std::string::basic_string[abi:ne200100]<0>(v55, "detector_idx");
    v56 = v6;
    v57 = 1;
    std::string::basic_string[abi:ne200100]<0>(v58, "ir_pi");
    v59 = *(a2 + 40);
    v60 = 3;
    std::string::basic_string[abi:ne200100]<0>(v61, "red_pi");
    v62 = *(a2 + 44);
    v63 = 3;
    std::string::basic_string[abi:ne200100]<0>(v64, "green_pi");
    v65 = *(a2 + 48);
    v66 = 3;
    std::string::basic_string[abi:ne200100]<0>(v67, "ir_idc");
    v68 = *(a2 + 52);
    v69 = 3;
    std::string::basic_string[abi:ne200100]<0>(v70, "red_idc");
    v71 = *(a2 + 56);
    v72 = 3;
    std::string::basic_string[abi:ne200100]<0>(v73, "green_idc");
    v74 = *(a2 + 60);
    v75 = 3;
    std::string::basic_string[abi:ne200100]<0>(v76, "ir_idc_agg");
    v77 = *(a2 + 64);
    v78 = 3;
    std::string::basic_string[abi:ne200100]<0>(v79, "red_idc_agg");
    v80 = *(a2 + 68);
    v81 = 3;
    std::string::basic_string[abi:ne200100]<0>(v82, "green_idc_agg");
    v83 = *(a2 + 72);
    v84 = 3;
    std::string::basic_string[abi:ne200100]<0>(v85, "iAmb");
    v86 = *(a2 + 76);
    v87 = 3;
    std::string::basic_string[abi:ne200100]<0>(v88, "amb_blankslot_noise");
    v89 = *(a2 + 80);
    v90 = 3;
    std::unordered_map<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::unordered_map(v22, v25, 22);
    v7 = a1[54];
    if (!*&v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(**&v7 + 48))(v7, __p, v22);
    std::__hash_table<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>>>::~__hash_table(v22);
    v8 = 1584;
    do
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v22[v8 + 24]);
      if (v22[v8 + 15] < 0)
      {
        operator delete(*(&v25[-4] + v8 - 8));
      }

      v8 -= 72;
    }

    while (v8);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v9 = *(a2 + 28);
  v10 = *(a2 + 32);
  v11 = *(a2 + 116);
  v12 = *(a2 + 148);
  v29 = *(a2 + 132);
  *v30 = v12;
  *&v30[12] = *(a2 + 160);
  v13 = *(a2 + 52);
  v14 = *(a2 + 84);
  v26 = *(a2 + 68);
  v27 = v14;
  v28[0] = *(a2 + 100);
  v28[1] = v11;
  v25[0] = *(a2 + 36);
  v25[1] = v13;
  v15 = 10.0;
  v16 = v10 == 2;
  v17 = v10 == 2;
  v18 = v16 || v9 >= 10.0;
  v19 = *a1 & 0xFFFFFFFFFFFFFFFCLL | v18;
  if (a1[55].i8[0] == 1)
  {
    v15 = 5.0;
  }

  if (v15 <= v9)
  {
    v17 = 1;
  }

  v16 = !v17;
  v20 = 2;
  if (v16)
  {
    v20 = 0;
  }

  *a1 = (v19 | v20);
  Scandium::ScandiumPPG::scandium_quality_metric_t::compute_hw_metric_validity(a1, v25);
  v21 = *MEMORY[0x277D85DE8];
}

void sub_264805BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  v21 = &STACK[0x628];
  v22 = -1584;
  do
  {
    v21 = (std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::~pair(v21) - 72);
    v22 += 72;
  }

  while (v22);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void Scandium::ScandiumPPG::scandium_quality_metric_t::compute_hw_metric_validity(float32x2_t *a1, _OWORD *a2)
{
  v69 = *MEMORY[0x277D85DE8];
  v3 = a2[7];
  v40 = a2[6];
  *v41 = v3;
  *&v41[12] = *(a2 + 124);
  v4 = a2[3];
  v37 = a2[2];
  v38 = v4;
  v5 = a2[5];
  v39[0] = a2[4];
  v39[1] = v5;
  v6 = a2[1];
  v36[0] = *a2;
  v36[1] = v6;
  Scandium::ScandiumPPG::scandium_optical_fom_t::process(a1 + 1, v36);
  v7 = a1[46].f32[0];
  v8 = a1[46].f32[1];
  v9 = a1[47].f32[0];
  v10 = a1[47].f32[1];
  v11 = a1[48].f32[0];
  v12 = a1[48].f32[1];
  v13 = a1[49].f32[0];
  v14 = a1[49].f32[1];
  v15 = v8 < 1.0 || v7 < 1.0;
  v16 = 4;
  if (v15)
  {
    v16 = 0;
  }

  v17 = *a1 & 0xFFFFFFFFFFFFFF83 | v16;
  v18 = v12 < 1.0 || v11 < 1.0;
  v19 = 8;
  if (v18)
  {
    v19 = 0;
  }

  v20 = v10 < 1.0 || v9 < 1.0;
  v21 = 16;
  if (v20)
  {
    v21 = 0;
  }

  v22 = v17 | v19 | v21;
  v23 = v14 > 0.01 || v13 > 0.01;
  v24 = 32;
  if (v23)
  {
    v24 = 0;
  }

  v31 = a1[50].f32[1];
  v32 = a1[50].i32[0];
  v25 = v31 > 0.04 || a1[50].f32[0] > 0.04;
  v26 = 64;
  if (v25)
  {
    v26 = 0;
  }

  *a1 = (v22 | v24 | v26);
  if (a1[54])
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "optical_fom_out");
    std::string::basic_string[abi:ne200100]<0>(v36, "ir_snr");
    *&v37 = v7;
    LODWORD(v39[0]) = 3;
    std::string::basic_string[abi:ne200100]<0>(v39 + 8, "red_snr");
    *(&v40 + 2) = v8;
    *&v41[24] = 3;
    std::string::basic_string[abi:ne200100]<0>(v42, "ir_snbr");
    v43 = v9;
    v44 = 3;
    std::string::basic_string[abi:ne200100]<0>(v45, "red_snbr");
    v46 = v10;
    v47 = 3;
    std::string::basic_string[abi:ne200100]<0>(v48, "ir_scnr");
    v49 = v11;
    v50 = 3;
    std::string::basic_string[abi:ne200100]<0>(v51, "red_scnr");
    v52 = v12;
    v53 = 3;
    std::string::basic_string[abi:ne200100]<0>(v54, "ir_sxr");
    v55 = v13;
    v56 = 3;
    std::string::basic_string[abi:ne200100]<0>(v57, "red_sxr");
    v58 = v14;
    v59 = 3;
    std::string::basic_string[abi:ne200100]<0>(v60, "ir_sxr_ch");
    v61 = v32;
    v62 = 3;
    std::string::basic_string[abi:ne200100]<0>(v63, "red_sxr_ch");
    v64 = v31;
    v65 = 3;
    v27 = *a1;
    std::string::basic_string[abi:ne200100]<0>(v66, "valid_flags");
    v67 = v27.i32[0];
    v68 = 1;
    std::unordered_map<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::unordered_map(v33, v36, 11);
    v28 = a1[54];
    if (!*&v28)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(**&v28 + 48))(v28, __p, v33);
    std::__hash_table<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>>>::~__hash_table(v33);
    v29 = 792;
    do
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v33[v29 + 24]);
      if (v33[v29 + 15] < 0)
      {
        operator delete(*(&v36[-4] + v29 - 8));
      }

      v29 -= 72;
    }

    while (v29);
    if (v35 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

void sub_264805FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  v23 = &STACK[0x320];
  v24 = -792;
  do
  {
    v23 = (std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::~pair(v23) - 72);
    v24 += 72;
  }

  while (v24);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

Scandium::ScandiumPPG::scandium_spo2_t *Scandium::ScandiumPPG::scandium_spo2_t::scandium_spo2_t(Scandium::ScandiumPPG::scandium_spo2_t *this)
{
  *(this + 3) = 0;
  Scandium::ScandiumPPG::scandium_r_ir_ratio_model_wrapper_t::scandium_r_ir_ratio_model_wrapper_t((this + 32));
  return this;
}

void Scandium::ScandiumPPG::scandium_spo2_t::~scandium_spo2_t(Scandium::ScandiumPPG::scandium_spo2_t *this)
{
  Scandium::ScandiumPPG::scandium_r_ir_ratio_model_wrapper_t::~scandium_r_ir_ratio_model_wrapper_t((this + 32));

  std::__function::__value_func<void ()(std::string const&,std::unordered_map<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>> const&)>::~__value_func[abi:ne200100](this);
}

uint64_t Scandium::ScandiumPPG::scandium_spo2_t::process(uint64_t a1, int *a2, uint64_t a3)
{
  v59 = *MEMORY[0x277D85DE8];
  v33 = 0x7FC000007FC00000;
  v6 = Scandium::ScandiumPPG::scandium_r_ir_ratio_model_wrapper_t::process((a1 + 32), *(a2 + 1), *(a2 + 2), &v33);
  if (v6)
  {
    v7 = 2143289344;
  }

  else
  {
    v8 = *a3;
    **(a3 + 8) = HIDWORD(v33);
    v7 = v33;
    v9 = (*&v33 * 1.04) + -0.02;
    *&v33 = v9;
    v10 = *(a2 + 8) + (*(a2 + 7) * v9);
    if (v10 == 0.0)
    {
      v6 = 2;
      v11 = 0.0;
    }

    else
    {
      v6 = 0;
      v11 = ((1.0 - (*(a2 + 6) * v9)) * 100.0) / v10;
    }

    *v8 = v11;
  }

  if (*(a1 + 24))
  {
    std::string::basic_string[abi:ne200100]<0>(v31, "ratio_dl_model");
    v12 = *a2;
    std::string::basic_string[abi:ne200100]<0>(v34, "path_idx");
    v35 = v12;
    v36 = 1;
    v13 = *(a2 + 2);
    v14 = *v13;
    v15 = v13[1];
    v16 = (v15 - *v13) >> 2;
    v28[1] = 0;
    v29 = 0;
    v28[0] = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(v28, v14, v15, v16);
    std::string::basic_string[abi:ne200100]<0>(v37, "input_red");
    v38 = *v28;
    v39 = v29;
    v28[1] = 0;
    v29 = 0;
    v28[0] = 0;
    v40 = 3;
    v41 = 6;
    v17 = *(a2 + 1);
    v18 = *v17;
    v19 = v17[1];
    v20 = (v19 - *v17) >> 2;
    __p[1] = 0;
    v27 = 0;
    __p[0] = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(__p, v18, v19, v20);
    std::string::basic_string[abi:ne200100]<0>(v42, "input_ir");
    v43 = *__p;
    v44 = v27;
    __p[1] = 0;
    v27 = 0;
    __p[0] = 0;
    v45 = 3;
    v46 = 6;
    std::string::basic_string[abi:ne200100]<0>(v47, "ratio");
    v48 = v33;
    v49 = 3;
    v21 = *a3;
    std::string::basic_string[abi:ne200100]<0>(v50, "spo2_out");
    v51 = *v21;
    v52 = 3;
    std::string::basic_string[abi:ne200100]<0>(v53, "raw_ratio");
    v54 = v7;
    v55 = 3;
    std::string::basic_string[abi:ne200100]<0>(v56, "raw_conf");
    v57 = HIDWORD(v33);
    v58 = 3;
    std::unordered_map<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::unordered_map(v30, v34, 7);
    v22 = *(a1 + 24);
    if (!v22)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v22 + 48))(v22, v31, v30);
    std::__hash_table<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>>>::~__hash_table(v30);
    v23 = 504;
    do
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v30[v23 + 32]);
      if (v30[v23 + 23] < 0)
      {
        operator delete(*&v30[v23]);
      }

      v23 -= 72;
    }

    while (v23);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v28[0])
    {
      v28[1] = v28[0];
      operator delete(v28[0]);
    }

    if (v32 < 0)
    {
      operator delete(v31[0]);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_264806438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  v30 = -504;
  v31 = v28;
  do
  {
    v31 = std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::~pair(v31) - 72;
    v30 += 72;
  }

  while (v30);
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t Scandium::ScandiumPPG::scandium_spo2_t::compute_orthogonal_regression(uint64_t a1, uint64_t a2, uint64_t a3, float *a4)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = 0.0;
  if (*a2 == v6 || (v9 = *(a3 + 8), *a3 == v9) || (v10 = v6 - v5, v10 != v9 - *a3))
  {
    result = 1;
  }

  else
  {
    v12 = stats::variance(v5, v10 >> 2, 1);
    v13 = stats::variance(*a3, (*(a3 + 8) - *a3) >> 2, 1);
    v14 = stats::covariance(*a2, (*(a2 + 8) - *a2) >> 2, *a3, ((*(a3 + 8) - *a3) >> 2), 1);
    result = 0;
    v16 = v12 - v13;
    v17 = ((v14 * 4.0) * v14) + (v16 * v16);
    if (v17 < 0.0)
    {
      v17 = 0.0;
    }

    v7 = (sqrtf(v17) - v16) / (v14 + v14);
  }

  *a4 = v7;
  return result;
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_264806650(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Scandium::ScandiumPPG::scandium_r_ir_ratio_model_t::init(Scandium::ScandiumPPG::scandium_r_ir_ratio_model_t *this)
{
  v2 = objc_opt_new();
  v3 = *(this + 4);
  *(this + 4) = v2;

  v4 = *(this + 4);
  if (v4)
  {
    [v4 setComputeUnits:0];
    v22 = 0;
    v5 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_287621FE8 dataType:65568 error:&v22];
    v6 = v22;
    v7 = *this;
    *this = v5;

    v21 = v6;
    v8 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_287621FE8 dataType:65568 error:&v21];
    v9 = v21;

    v10 = *(this + 1);
    *(this + 1) = v8;

    if (*this && *(this + 1))
    {
      v12 = [ScandiumRIrRatioModel alloc];
      v13 = *(this + 4);
      v20 = v9;
      v14 = [(ScandiumRIrRatioModel *)v12 initWithConfiguration:v13 error:&v20];
      v15 = v20;

      v16 = *(this + 3);
      *(this + 3) = v14;

      if (!v15)
      {
        return 1;
      }

      v18 = Scandium::algs_get_log(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2647F6000, v18, OS_LOG_TYPE_DEFAULT, "scandium r/ir model initialization failed", buf, 2u);
      }

      v9 = v15;
    }

    else
    {
      v18 = Scandium::algs_get_log(v11);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2647F6000, v18, OS_LOG_TYPE_DEFAULT, "scandium r/ir model input initialization failed", buf, 2u);
      }
    }
  }

  else
  {
    v9 = Scandium::algs_get_log(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2647F6000, v9, OS_LOG_TYPE_DEFAULT, "scandium r/ir model config initialization failed", buf, 2u);
    }
  }

  return 0;
}

id **std::unique_ptr<Scandium::ScandiumPPG::scandium_r_ir_ratio_model_t>::~unique_ptr[abi:ne200100](id **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {

    MEMORY[0x266741650](v2, 0x80C402FCC0CB6);
  }

  return a1;
}

BOOL Scandium::ScandiumPPG::scandium_r_ir_ratio_model_t::process(Scandium *a1, uint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  if (*(a3 + 8) - *a3 == 3840 && *(a2 + 8) - *a2 == 3840)
  {
    memmove([*(a1 + 1) dataPointer], *a2, 0xF00uLL);
    v10 = *a3;
    v9 = *(a3 + 8);
    v11 = [*a1 dataPointer];
    if (v9 != v10)
    {
      memmove(v11, v10, v9 - v10);
    }

    v12 = [[ScandiumRIrRatioModelInput alloc] initWithIr:*(a1 + 1) red:*a1];
    v13 = *(a1 + 2);
    *(a1 + 2) = v12;

    v14 = [*(a1 + 3) model];
    v15 = *(a1 + 2);
    v32 = 0;
    v16 = [v14 predictionFromFeatures:v15 error:&v32];
    v17 = v32;

    v19 = v17 == 0;
    if (v17)
    {
      v20 = Scandium::algs_get_log(v18);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 0;
        _os_log_impl(&dword_2647F6000, v20, OS_LOG_TYPE_DEFAULT, "scandium r/ir model prediction failed", &v31, 2u);
      }
    }

    else
    {
      v21 = [ScandiumRIrRatioModelOutput alloc];
      v22 = [v16 featureValueForName:@"Identity"];
      v23 = [v22 multiArrayValue];
      v20 = [(ScandiumRIrRatioModelOutput *)v21 initWithIdentity:v23];

      v24 = [v20 Identity];
      v25 = [v24 objectAtIndexedSubscript:0];
      [v25 floatValue];
      *a4 = v26;

      v27 = [v20 Identity];
      v28 = [v27 objectAtIndexedSubscript:1];
      [v28 floatValue];
      *a5 = v29;
    }
  }

  else
  {
    v17 = Scandium::algs_get_log(a1);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2647F6000, v17, OS_LOG_TYPE_DEFAULT, "scandium r/ir model invalid input size", buf, 2u);
    }

    v19 = 0;
  }

  return v19;
}

double Scandium::ScandiumPPG::scandium_channel_combination_t::scandium_channel_combination_t(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 1065353216;
  *(a1 + 136) = a2;
  *(a1 + 144) = a3;
  *(a1 + 608) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  return result;
}

void Scandium::ScandiumPPG::scandium_channel_combination_t::~scandium_channel_combination_t(Scandium::ScandiumPPG::scandium_channel_combination_t *this)
{
  std::__function::__value_func<void ()(std::string const&,std::unordered_map<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>> const&)>::~__value_func[abi:ne200100](this + 584);
  v2 = *(this + 28);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 25);
  if (v3)
  {
    *(this + 26) = v3;
    operator delete(v3);
  }

  v4 = *(this + 22);
  if (v4)
  {
    *(this + 23) = v4;
    operator delete(v4);
  }

  v5 = *(this + 19);
  if (v5)
  {
    *(this + 20) = v5;
    operator delete(v5);
  }

  std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::~__hash_table(this + 56);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

float32x2_t Scandium::ScandiumPPG::scandium_channel_combination_t::init_module(std::string *this, std::string *__str)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = this[5].__r_.__value_.__r.__words[2];
  if (*v4 == 2)
  {
    if (*(v4 + 10))
    {
      std::string::__assign_external(this, "BACKGROUND-WRIST-ROTATED", 0x18uLL);
      *&this[1].__r_.__value_.__l.__data_ = xmmword_264821600;
      this[1].__r_.__value_.__r.__words[2] = 0x4079999A40480000;
      LOWORD(this[2].__r_.__value_.__l.__data_) = 257;
      v13 = xmmword_26481F928;
      v14 = 0x3F19999A00000000;
      std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>>>::__assign_unique<std::pair<Scandium::ScandiumPPG::PathType const,float> const*>(&this[2].__r_.__value_.__l.__size_, &v13, &v15);
    }

    else
    {
      if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
      {
        this->__r_.__value_.__l.__size_ = 17;
        v6 = this->__r_.__value_.__r.__words[0];
      }

      else
      {
        *(&this->__r_.__value_.__s + 23) = 17;
        v6 = this;
      }

      strcpy(v6, "BACKGROUND-NORMAL");
      *&this[1].__r_.__value_.__l.__data_ = xmmword_264821600;
      this[1].__r_.__value_.__r.__words[2] = 0x4079999A40480000;
      LOWORD(this[2].__r_.__value_.__l.__data_) = 257;
      v13 = xmmword_26481F928;
      v14 = 0x3F19999A00000000;
      std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>>>::__assign_unique<std::pair<Scandium::ScandiumPPG::PathType const,float> const*>(&this[2].__r_.__value_.__l.__size_, &v13, &v15);
    }
  }

  else
  {
    if (*v4 != 1)
    {
      goto LABEL_14;
    }

    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = 10;
      v5 = this->__r_.__value_.__r.__words[0];
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = 10;
      v5 = this;
    }

    strcpy(v5, "FOREGROUND");
    *&this[1].__r_.__value_.__l.__data_ = xmmword_264821610;
    this[1].__r_.__value_.__r.__words[2] = 0x4079999A40480000;
    LOWORD(this[2].__r_.__value_.__l.__data_) = 256;
    v13 = xmmword_26481F928;
    v14 = 0x3F19999A00000000;
    std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>>>::__assign_unique<std::pair<Scandium::ScandiumPPG::PathType const,float> const*>(&this[2].__r_.__value_.__l.__size_, &v13, &v15);
  }

  this[4].__r_.__value_.__r.__words[0] = 0xBF80000041266666;
  LODWORD(this[4].__r_.__value_.__r.__words[1]) = -1058642330;
  *(&this[4].__r_.__value_.__r.__words[1] + 4) = 0;
  *(this[5].__r_.__value_.__r.__words + 4) = 0;
  *(&this[4].__r_.__value_.__r.__words[2] + 4) = 0;
LABEL_14:
  if (__str[5].__r_.__value_.__s.__data_[16] == 1)
  {
    std::string::operator=(this, __str);
    v7 = *&__str[1].__r_.__value_.__l.__data_;
    *(&this[1].__r_.__value_.__r.__words[1] + 2) = *(&__str[1].__r_.__value_.__r.__words[1] + 2);
    *&this[1].__r_.__value_.__l.__data_ = v7;
    if (this != __str)
    {
      LODWORD(this[3].__r_.__value_.__r.__words[2]) = __str[3].__r_.__value_.__r.__words[2];
      std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,void *> *>>(&this[2].__r_.__value_.__l.__size_, __str[3].__r_.__value_.__l.__data_, 0);
    }

    v8 = *&__str[4].__r_.__value_.__l.__data_;
    v9 = *&__str[4].__r_.__value_.__r.__words[2];
    LODWORD(this[5].__r_.__value_.__r.__words[1]) = __str[5].__r_.__value_.__r.__words[1];
    *&this[4].__r_.__value_.__l.__data_ = v8;
    *&this[4].__r_.__value_.__r.__words[2] = v9;
  }

  Scandium::ScandiumPPG::scandium_channel_combination_t::unpack_input_values(this);
  *&this[10].__r_.__value_.__r.__words[1] = 0u;
  v10 = &this[10].__r_.__value_.__s.__data_[8];
  *(v10 + 18) = 0u;
  *(v10 + 19) = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 17) = 0u;
  *(v10 + 14) = 0u;
  *(v10 + 15) = 0u;
  *(v10 + 12) = 0u;
  *(v10 + 13) = 0u;
  *(v10 + 10) = 0u;
  *(v10 + 11) = 0u;
  *(v10 + 8) = 0u;
  *(v10 + 9) = 0u;
  *(v10 + 6) = 0u;
  *(v10 + 7) = 0u;
  *(v10 + 4) = 0u;
  *(v10 + 5) = 0u;
  *(v10 + 2) = 0u;
  *(v10 + 3) = 0u;
  *(v10 + 1) = 0u;
  result = vneg_f32(0x3F0000003FLL);
  *(v10 + 40) = result;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t Scandium::ScandiumPPG::scandium_channel_combination_t::unpack_input_values(Scandium::ScandiumPPG::scandium_channel_combination_t *this)
{
  *(this + 20) = *(this + 19);
  v2 = this + 176;
  v4 = this + 200;
  v3 = *(this + 25);
  *(this + 23) = *(this + 22);
  *(this + 26) = v3;
  *(this + 29) = 0;
  v5 = *(this + 18);
  v15 = this + 152;
  for (i = 20; i != 660; i += 40)
  {
    v14 = *(v5 + i);
    std::back_insert_iterator<std::vector<float>>::operator=[abi:ne200100](&v15, &v14);
  }

  v7 = *(this + 18);
  v15 = v2;
  for (j = 16; j != 656; j += 40)
  {
    v14 = *(v7 + j);
    std::back_insert_iterator<std::vector<float>>::operator=[abi:ne200100](&v15, &v14);
  }

  v9 = *(this + 18);
  v15 = v4;
  for (k = 24; k != 664; k += 40)
  {
    v14 = *(v9 + k);
    std::back_insert_iterator<std::vector<float>>::operator=[abi:ne200100](&v15, &v14);
  }

  v11 = *(this + 18);
  for (m = 36; m != 676; m += 40)
  {
    LOBYTE(v15) = *(v11 + m);
    result = std::vector<BOOL>::push_back(this + 224, &v15);
  }

  return result;
}

float Scandium::ScandiumPPG::scandium_channel_combination_t::log_coreanalytics_metrics(uint64_t a1, uint64_t a2)
{
  std::vector<std::array<float,16ul>>::push_back[abi:ne200100](*a2, (a1 + 248));
  std::vector<std::array<float,16ul>>::push_back[abi:ne200100](*(a2 + 8), (a1 + 312));
  std::vector<std::array<float,16ul>>::push_back[abi:ne200100](*(a2 + 16), (a1 + 376));
  std::vector<std::array<float,16ul>>::push_back[abi:ne200100](*(a2 + 24), (a1 + 440));
  std::vector<std::array<float,16ul>>::push_back[abi:ne200100](*(a2 + 32), (a1 + 504));
  *(a2 + 44) = vrev64_s32(*(a1 + 568));
  result = *(a1 + 576);
  *(a2 + 40) = result;
  return result;
}

void std::vector<std::array<float,16ul>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v10 = (v4 - *a1) >> 6;
    v11 = v10 + 1;
    if ((v10 + 1) >> 58)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v12 = v5 - *a1;
    if (v12 >> 5 > v11)
    {
      v11 = v12 >> 5;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFC0)
    {
      v13 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::array<float,16ul>>>(a1, v13);
    }

    v14 = (v10 << 6);
    v15 = *a2;
    v16 = a2[1];
    v17 = a2[3];
    v14[2] = a2[2];
    v14[3] = v17;
    *v14 = v15;
    v14[1] = v16;
    v9 = (v10 << 6) + 64;
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy(v14 - v18, *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[3];
    v4[2] = a2[2];
    v4[3] = v8;
    *v4 = v6;
    v4[1] = v7;
    v9 = (v4 + 4);
  }

  *(a1 + 8) = v9;
}

uint64_t Scandium::ScandiumPPG::scandium_channel_combination_t::get_return_message@<X0>(unsigned __int8 a1@<W1>, std::string *a2@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = a1;
  LOBYTE(v9) = 0;
  std::string::basic_string[abi:ne200100]<0>(v10, "SUCCESS");
  v10[24] = 1;
  std::string::basic_string[abi:ne200100]<0>(v11, "MOTION");
  v11[24] = 2;
  std::string::basic_string[abi:ne200100]<0>(v12, "POSTURE");
  v12[24] = 5;
  std::string::basic_string[abi:ne200100]<0>(v13, "LOW-Conf");
  v13[24] = 3;
  std::string::basic_string[abi:ne200100]<0>(v14, "STD-DEV");
  v14[24] = 4;
  std::string::basic_string[abi:ne200100]<0>(v15, "HWFoMs");
  v15[24] = 6;
  std::string::basic_string[abi:ne200100]<0>(v16, "NOT_REACHED");
  std::unordered_map<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>::unordered_map(v7, &v9, 7);
  for (i = 0; i != -224; i -= 32)
  {
    if (v16[i + 23] < 0)
    {
      operator delete(*&v16[i]);
    }
  }

  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,std::vector<float>>>>::find<Scandium::ScandiumPPG::PathType>(v7, &v8))
  {
    v9 = &v8;
    v4 = std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,std::__unordered_map_hasher<Scandium::ScandiumPPG::channel_combination_ret_t,std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,std::hash<Scandium::ScandiumPPG::channel_combination_ret_t>,std::equal_to<Scandium::ScandiumPPG::channel_combination_ret_t>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::channel_combination_ret_t,std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,std::equal_to<Scandium::ScandiumPPG::channel_combination_ret_t>,std::hash<Scandium::ScandiumPPG::channel_combination_ret_t>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>>>::__emplace_unique_key_args<Scandium::ScandiumPPG::channel_combination_ret_t,std::piecewise_construct_t const&,std::tuple<Scandium::ScandiumPPG::channel_combination_ret_t const&>,std::tuple<>>(v7, &v8);
    std::string::operator=(a2, v4 + 1);
  }

  result = std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,std::__unordered_map_hasher<Scandium::ScandiumPPG::channel_combination_ret_t,std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,std::hash<Scandium::ScandiumPPG::channel_combination_ret_t>,std::equal_to<Scandium::ScandiumPPG::channel_combination_ret_t>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::channel_combination_ret_t,std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,std::equal_to<Scandium::ScandiumPPG::channel_combination_ret_t>,std::hash<Scandium::ScandiumPPG::channel_combination_ret_t>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>>>::~__hash_table(v7);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_264807404(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,std::__unordered_map_hasher<Scandium::ScandiumPPG::channel_combination_ret_t,std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,std::hash<Scandium::ScandiumPPG::channel_combination_ret_t>,std::equal_to<Scandium::ScandiumPPG::channel_combination_ret_t>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::channel_combination_ret_t,std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>,std::equal_to<Scandium::ScandiumPPG::channel_combination_ret_t>,std::hash<Scandium::ScandiumPPG::channel_combination_ret_t>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::channel_combination_ret_t,std::string>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t Scandium::ScandiumPPG::scandium_channel_combination_t::combine_channels(std::string *a1, int a2, float *a3, float *a4, float *a5, int *a6, std::string *__str)
{
  v58[9] = *MEMORY[0x277D85DE8];
  Scandium::ScandiumPPG::scandium_channel_combination_t::init_module(a1, __str);
  *a3 = NAN;
  *a4 = NAN;
  *a5 = NAN;
  if (a2)
  {
    v13 = Scandium::ScandiumPPG::scandium_channel_combination_t::combine_dl(a1, a3, a4, a5);
    *&a1[24].__r_.__value_.__l.__data_ = *a5;
    if (a1[2].__r_.__value_.__s.__data_[0] == 1 && (*(a1[5].__r_.__value_.__r.__words[2] + 9) & 1) == 0)
    {
      *a3 = NAN;
      *a4 = NAN;
      v13 = 1;
    }

    if (a1[2].__r_.__value_.__s.__data_[1] == 1 && (*(a1[5].__r_.__value_.__r.__words[2] + 8) & 1) == 0)
    {
      *a3 = NAN;
      *a4 = NAN;
      v13 = 2;
    }

    else if (!v13)
    {
      v14 = *a3;
      v15 = *a4;
      if (*a1[5].__r_.__value_.__r.__words[2] == 2 && v14 < 85.0)
      {
        v15 = v15 * (*&a1[1].__r_.__value_.__r.__words[2] + (*(&a1[1].__r_.__value_.__r.__words[1] + 1) * v14));
        *a4 = v15;
      }

      *(&a1[23].__r_.__value_.__r.__words[2] + 1) = v15;
      *&a1[23].__r_.__value_.__r.__words[2] = *a3;
      if (*a4 >= *&a1[1].__r_.__value_.__r.__words[1])
      {
        v13 = 0;
      }

      else
      {
        *a3 = NAN;
        if (*a4 == 0.0)
        {
          v13 = 4;
        }

        else if (*a4 == -1.0)
        {
          v13 = 3;
        }

        else
        {
          v13 = 5;
        }
      }
    }
  }

  else
  {
    v13 = 0;
    *a3 = stats::mean(a1[6].__r_.__value_.__l.__size_, ((a1[6].__r_.__value_.__r.__words[2] - a1[6].__r_.__value_.__l.__size_) >> 2));
  }

  return_message = Scandium::ScandiumPPG::scandium_channel_combination_t::get_return_message(v13, &v31);
  log = Scandium::algs_get_log(return_message);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v19 = a1;
    if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
    {
      v19 = a1->__r_.__value_.__r.__words[0];
    }

    v20 = &v31;
    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = v31.__r_.__value_.__r.__words[0];
    }

    *buf = 136315394;
    v33 = v19;
    v34 = 2080;
    v35 = v20;
    _os_log_impl(&dword_2647F6000, log, OS_LOG_TYPE_DEFAULT, "scandium channel combination mode: %s result: %s", buf, 0x16u);
  }

  if (a1[25].__r_.__value_.__l.__size_)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "channel_combination");
    v21 = a1[5].__r_.__value_.__r.__words[2];
    std::string::basic_string[abi:ne200100]<0>(buf, "algs_mode");
    v36 = *v21;
    v37 = 1;
    std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::pair[abi:ne200100]<char const(&)[10],std::string&,0>(&v38, "comb_mode", a1);
    std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::pair[abi:ne200100]<char const(&)[11],std::vector<float>&,0>(&v39, "input_spo2", &a1[6].__r_.__value_.__l.__size_);
    std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::pair[abi:ne200100]<char const(&)[11],std::vector<float>&,0>(&v40, "input_conf", &a1[7].__r_.__value_.__l.__size_);
    std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::pair[abi:ne200100]<char const(&)[13],std::vector<float>&,0>(&v41, "input_girpir", &a1[8].__r_.__value_.__l.__size_);
    std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::pair[abi:ne200100]<char const(&)[15],std::vector<BOOL>&,0>(&v42, "input_valid_hw", &a1[9].__r_.__value_.__l.__size_);
    v22 = a1[5].__r_.__value_.__r.__words[2];
    std::string::basic_string[abi:ne200100]<0>(v43, "input_motion_flag");
    v43[32] = *(v22 + 9);
    v44 = 0;
    v23 = a1[5].__r_.__value_.__r.__words[2];
    std::string::basic_string[abi:ne200100]<0>(v45, "input_posture_flag");
    v45[32] = *(v23 + 8);
    v46 = 0;
    std::string::basic_string[abi:ne200100]<0>(v47, "combined_spo2");
    v48 = *a3;
    v49 = 3;
    std::string::basic_string[abi:ne200100]<0>(v50, "combined_conf");
    v51 = *a4;
    v52 = 3;
    std::string::basic_string[abi:ne200100]<0>(v53, "num_valid_channels");
    v54 = *a6;
    v55 = 1;
    std::string::basic_string[abi:ne200100]<0>(v56, "enable_metrics");
    v56[32] = a2;
    v57 = 0;
    std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::pair[abi:ne200100]<char const(&)[7],std::string&,0>(v58, "result", &v31);
    std::unordered_map<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::unordered_map(v28, buf, 13);
    size = a1[25].__r_.__value_.__l.__size_;
    if (!size)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*size + 48))(size, __p, v28);
    std::__hash_table<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>>>::~__hash_table(v28);
    v25 = 936;
    do
    {
      std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&__p[v25 / 8 + 1]);
      if (v28[v25 + 39] < 0)
      {
        operator delete(*&v28[v25 + 16]);
      }

      v25 -= 72;
    }

    while (v25);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v26 = *MEMORY[0x277D85DE8];
  return v13;
}

void sub_26480793C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  v28 = &STACK[0x3C0];
  v29 = -936;
  do
  {
    v28 = (std::pair<std::string const,std::variant<BOOL,int,long long,float,double,std::string,std::variant<std::vector<BOOL>,std::vector<int>,std::vector<long long>,std::vector<float>,std::vector<double>,std::vector<std::string>>>>::~pair(v28) - 72);
    v29 += 72;
  }

  while (v29);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t Scandium::ScandiumPPG::scandium_channel_combination_t::combine_dl(Scandium::ScandiumPPG::scandium_channel_combination_t *this, float *a2, float *a3, float *a4)
{
  v78 = 0;
  v79 = 0;
  v80 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v78, *(this + 19), *(this + 20), (*(this + 20) - *(this + 19)) >> 2);
  v75 = 0;
  v76 = 0;
  v77 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v75, *(this + 22), *(this + 23), (*(this + 23) - *(this + 22)) >> 2);
  v72 = 0;
  v73 = 0;
  v74 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v72, *(this + 25), *(this + 26), (*(this + 26) - *(this + 25)) >> 2);
  v8 = 0;
  v9 = *(this + 22);
  v10 = *(this + 19);
  v11 = **(this + 28);
  v12 = *(this + 25);
  v13 = (this + 504);
  do
  {
    v14 = Scandium::ScandiumPPG::path_idx_to_type[v8];
    *(v13 - 64) = *(v9 + 4 * v8);
    *(v13 - 48) = *(v10 + 4 * v8);
    if ((v11 >> v8))
    {
      v15 = 1.0;
    }

    else
    {
      v15 = 0.0;
    }

    *(v13 - 32) = v15;
    *v13 = *(v12 + 4 * v8);
    v16 = *(v9 + 4 * v8);
    if (v14 == 2)
    {
      if (v16 < *(this + 7))
      {
        v17 = 0.0;
      }

      else
      {
        v17 = 1.0;
      }
    }

    else
    {
      v17 = 1.0;
      if (v16 < *(this + 6))
      {
        v17 = 0.0;
      }
    }

    *(v13 - 16) = v17;
    ++v8;
    ++v13;
  }

  while (v8 != 16);
  v64 = a4;
  v18 = a3;
  v19 = 0;
  v20 = 0.0;
  v21 = 0.0;
  do
  {
    v71 = Scandium::ScandiumPPG::path_idx_to_type[v19];
    v22 = v78;
    v23 = *(v78 + v19);
    if (v23 <= 115.0)
    {
      v24 = *(v78 + v19);
    }

    else
    {
      v24 = 115.0;
    }

    if (v23 >= 50.0)
    {
      v25 = v24;
    }

    else
    {
      v25 = 50.0;
    }

    *(v78 + v19) = v25;
    v26 = v75;
    __p = &v71;
    v26[v19] = *(std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>>>::__emplace_unique_key_args<Scandium::ScandiumPPG::PathType,std::piecewise_construct_t const&,std::tuple<Scandium::ScandiumPPG::PathType const&>,std::tuple<>>(this + 7, &v71) + 5) * v26[v19];
    v27 = v72;
    if (v71 == 2)
    {
      *(v72 + v19) = 1101004800;
      v28 = 20.0;
    }

    else
    {
      v28 = *(v72 + v19);
    }

    if (v28 <= 50.0)
    {
      v29 = v28;
    }

    else
    {
      v29 = 50.0;
    }

    v30 = v29 / 25.0;
    if (v28 >= -25.0)
    {
      v31 = v30;
    }

    else
    {
      v31 = -1.0;
    }

    v27[v19] = v31;
    v32 = v26[v19] * (1.0 / (expf(-(*(this + 25) + (*(this + 24) * v31))) + 1.0));
    v26[v19] = v32;
    v20 = v20 + (v22[v19] * v32);
    v21 = v21 + v32;
    ++v19;
  }

  while (v19 != 16);
  v33 = 0;
  v34 = v78;
  v35 = v75;
  v36 = **(this + 28);
  v37 = 0.0;
  v38 = (v20 * 0.0625) / (v21 * 0.0625);
  v39 = 0.0;
  do
  {
    if ((v36 >> v33))
    {
      v40 = 1.0;
    }

    else
    {
      v40 = 0.0;
    }

    v41 = ((v34[v33] - v38) / 15.0);
    v42 = exp(v41 * v41 * *(this + 26)) * v35[v33];
    v43 = v40 * v42;
    v35[v33] = v43;
    v39 = v39 + v43;
    v37 = v37 + (v34[v33++] * v43);
  }

  while (v33 != 16);
  v44 = v39 * 0.0625;
  if ((v39 * 0.0625) == 0.0)
  {
    v45 = 0;
    *a2 = NAN;
    *v18 = 0.0;
    *v64 = NAN;
  }

  else
  {
    *a2 = (v37 * 0.0625) / v44;
    if (v35 == v76)
    {
      v49 = 0.0;
    }

    else
    {
      v46 = 0.0;
      v47 = v35;
      do
      {
        v48 = *v47++;
        v46 = v46 + v48;
      }

      while (v47 != v76);
      v49 = v46;
    }

    __p = 0;
    v69 = 0;
    v70 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v35, v76, v76 - v35);
    v65 = 0;
    v66 = 0;
    v67 = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v65, v78, v79, (v79 - v78) >> 2);
    v50 = __p;
    v51 = v69;
    if (__p != v69)
    {
      v52 = __p;
      do
      {
        *v52 = *v52 / v49;
        ++v52;
      }

      while (v52 != v51);
    }

    v53 = v65;
    v54 = v66;
    if (v65 != v66)
    {
      v55 = v65;
      do
      {
        *v55 = (*v55 - *a2) * (*v55 - *a2);
        ++v55;
      }

      while (v55 != v54);
    }

    v56 = 0.0;
    if (v50 != v51)
    {
      v57 = v53;
      v58 = v50;
      do
      {
        v59 = *v58++;
        v60 = v59;
        v61 = *v57++;
        v56 = v56 + (v60 * v61);
      }

      while (v58 != v51);
    }

    v62 = sqrt(v56);
    *v64 = v62;
    if (*(this + 11) <= v62)
    {
      *a2 = NAN;
      *v18 = -1.0;
      if (v53)
      {
        v66 = v53;
        operator delete(v53);
        v50 = __p;
      }

      if (v50)
      {
        v69 = v50;
        operator delete(v50);
      }

      v45 = 3;
    }

    else
    {
      *v18 = v44;
      if (v53)
      {
        v66 = v53;
        operator delete(v53);
        v50 = __p;
      }

      if (v50)
      {
        v69 = v50;
        operator delete(v50);
      }

      v45 = 0;
    }
  }

  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  return v45;
}

void sub_264807EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

void std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,void *> *>>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = *(a2 + 16);
        *(v8 + 16) = v9;
        *(v8 + 5) = *(a2 + 5);
        v10 = *v8;
        v8[1] = v9;
        inserted = std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>>>::__node_insert_multi_prepare(a1, v9, v8 + 16);
        std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>>>::__node_insert_multi_perform(a1, v8, inserted);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>>>::__emplace_multi<std::pair<Scandium::ScandiumPPG::PathType const,float> const&>();
  }
}

void sub_2648080B8(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = *(v16 + 8);
    if (v14.u32[0] > 1uLL)
    {
      v20 = *(v16 + 8);
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && *(v16 + 16) == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *std::__hash_table<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::__unordered_map_hasher<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::hash<Scandium::ScandiumPPG::PathType>,std::equal_to<Scandium::ScandiumPPG::PathType>,true>,std::__unordered_map_equal<Scandium::ScandiumPPG::PathType,std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>,std::equal_to<Scandium::ScandiumPPG::PathType>,std::hash<Scandium::ScandiumPPG::PathType>,true>,std::allocator<std::__hash_value_type<Scandium::ScandiumPPG::PathType,float>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}