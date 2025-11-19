uint64_t std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char,XofGpsQzssEphemeris>>(uint64_t result, unsigned __int8 a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 28);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      break;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

__n128 std::__memberwise_forward_assign[abi:ne200100]<std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>,std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul>(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x29EDCA608];
  *a1 = *a2;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  *(a1 + 32) = *(a2 + 32);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *(a2 + 63) = 0;
  *(a2 + 40) = 0;
  *(a1 + 64) = *(a2 + 64);
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v6 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v6;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  *(a1 + 96) = *(a2 + 96);
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v7 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v7;
  *(a2 + 127) = 0;
  *(a2 + 104) = 0;
  *(a1 + 128) = *(a2 + 128);
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v8 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v8;
  *(a2 + 159) = 0;
  *(a2 + 136) = 0;
  *(a1 + 160) = *(a2 + 160);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  v9 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v9;
  *(a2 + 191) = 0;
  *(a2 + 168) = 0;
  *(a1 + 192) = *(a2 + 192);
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  v10 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 200) = v10;
  *(a2 + 223) = 0;
  *(a2 + 200) = 0;
  *(a1 + 224) = *(a2 + 224);
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  v11 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v11;
  *(a2 + 255) = 0;
  *(a2 + 232) = 0;
  *(a1 + 256) = *(a2 + 256);
  v12 = (a1 + 264);
  if (*(a1 + 287) < 0)
  {
    operator delete(*v12);
  }

  v13 = *(a2 + 264);
  *(a1 + 280) = *(a2 + 280);
  *v12 = v13;
  *(a2 + 287) = 0;
  *(a2 + 264) = 0;
  *(a1 + 288) = *(a2 + 288);
  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  v14 = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 304) = v14;
  *(a2 + 327) = 0;
  *(a2 + 304) = 0;
  *(a1 + 328) = *(a2 + 328);
  v15 = (a1 + 344);
  if (*(a1 + 367) < 0)
  {
    operator delete(*v15);
  }

  v16 = *(a2 + 344);
  *(a1 + 360) = *(a2 + 360);
  *v15 = v16;
  *(a2 + 367) = 0;
  *(a2 + 344) = 0;
  *(a1 + 368) = *(a2 + 368);
  v17 = (a1 + 376);
  if (*(a1 + 399) < 0)
  {
    operator delete(*v17);
  }

  v18 = *(a2 + 376);
  *(a1 + 392) = *(a2 + 392);
  *v17 = v18;
  *(a2 + 399) = 0;
  *(a2 + 376) = 0;
  *(a1 + 400) = *(a2 + 400);
  v19 = (a1 + 408);
  if (*(a1 + 431) < 0)
  {
    operator delete(*v19);
  }

  v20 = *(a2 + 408);
  *(a1 + 424) = *(a2 + 424);
  *v19 = v20;
  *(a2 + 431) = 0;
  *(a2 + 408) = 0;
  *(a1 + 432) = *(a2 + 432);
  v21 = (a1 + 440);
  if (*(a1 + 463) < 0)
  {
    operator delete(*v21);
  }

  v22 = *(a2 + 440);
  *(a1 + 456) = *(a2 + 456);
  *v21 = v22;
  *(a2 + 463) = 0;
  *(a2 + 440) = 0;
  *(a1 + 464) = *(a2 + 464);
  v23 = (a1 + 472);
  if (*(a1 + 495) < 0)
  {
    operator delete(*v23);
  }

  v24 = *(a2 + 472);
  *(a1 + 488) = *(a2 + 488);
  *v23 = v24;
  *(a2 + 495) = 0;
  *(a2 + 472) = 0;
  *(a1 + 496) = *(a2 + 496);
  v25 = (a1 + 504);
  if (*(a1 + 527) < 0)
  {
    operator delete(*v25);
  }

  v26 = *(a2 + 504);
  *(a1 + 520) = *(a2 + 520);
  *v25 = v26;
  *(a2 + 527) = 0;
  *(a2 + 504) = 0;
  *(a1 + 528) = *(a2 + 528);
  v27 = (a1 + 544);
  if (*(a1 + 567) < 0)
  {
    operator delete(*v27);
  }

  v28 = *(a2 + 544);
  *(a1 + 560) = *(a2 + 560);
  *v27 = v28;
  *(a2 + 567) = 0;
  *(a2 + 544) = 0;
  *(a1 + 568) = *(a2 + 568);
  v29 = (a1 + 584);
  if (*(a1 + 607) < 0)
  {
    operator delete(*v29);
  }

  v30 = *(a2 + 584);
  *(a1 + 600) = *(a2 + 600);
  *v29 = v30;
  *(a2 + 607) = 0;
  *(a2 + 584) = 0;
  *(a1 + 608) = *(a2 + 608);
  v31 = (a1 + 624);
  if (*(a1 + 647) < 0)
  {
    operator delete(*v31);
  }

  v32 = *(a2 + 624);
  *(a1 + 640) = *(a2 + 640);
  *v31 = v32;
  *(a2 + 647) = 0;
  *(a2 + 624) = 0;
  *(a1 + 648) = *(a2 + 648);
  v33 = (a1 + 664);
  if (*(a1 + 687) < 0)
  {
    operator delete(*v33);
  }

  v34 = *(a2 + 664);
  *(a1 + 680) = *(a2 + 680);
  *v33 = v34;
  *(a2 + 687) = 0;
  *(a2 + 664) = 0;
  *(a1 + 688) = *(a2 + 688);
  v35 = (a1 + 704);
  if (*(a1 + 727) < 0)
  {
    operator delete(*v35);
  }

  v36 = *(a2 + 704);
  *(a1 + 720) = *(a2 + 720);
  *v35 = v36;
  *(a2 + 727) = 0;
  *(a2 + 704) = 0;
  *(a1 + 728) = *(a2 + 728);
  v37 = (a1 + 744);
  if (*(a1 + 767) < 0)
  {
    operator delete(*v37);
  }

  v38 = *(a2 + 744);
  *(a1 + 760) = *(a2 + 760);
  *v37 = v38;
  *(a2 + 767) = 0;
  *(a2 + 744) = 0;
  *(a1 + 768) = *(a2 + 768);
  v39 = (a1 + 784);
  if (*(a1 + 807) < 0)
  {
    operator delete(*v39);
  }

  v40 = *(a2 + 784);
  *(a1 + 800) = *(a2 + 800);
  *v39 = v40;
  *(a2 + 807) = 0;
  *(a2 + 784) = 0;
  *(a1 + 808) = *(a2 + 808);
  v41 = (a1 + 816);
  if (*(a1 + 839) < 0)
  {
    operator delete(*v41);
  }

  v42 = *(a2 + 816);
  *(a1 + 832) = *(a2 + 832);
  *v41 = v42;
  *(a2 + 839) = 0;
  *(a2 + 816) = 0;
  *(a1 + 840) = *(a2 + 840);
  v43 = (a1 + 848);
  if (*(a1 + 871) < 0)
  {
    operator delete(*v43);
  }

  v44 = *(a2 + 848);
  *(a1 + 864) = *(a2 + 864);
  *v43 = v44;
  *(a2 + 871) = 0;
  *(a2 + 848) = 0;
  *(a1 + 872) = *(a2 + 872);
  v45 = (a1 + 880);
  if (*(a1 + 903) < 0)
  {
    operator delete(*v45);
  }

  v46 = *(a2 + 880);
  *(a1 + 896) = *(a2 + 896);
  *v45 = v46;
  *(a2 + 903) = 0;
  *(a2 + 880) = 0;
  *(a1 + 904) = *(a2 + 904);
  v47 = (a1 + 912);
  if (*(a1 + 935) < 0)
  {
    operator delete(*v47);
  }

  v48 = *(a2 + 912);
  *(a1 + 928) = *(a2 + 928);
  *v47 = v48;
  *(a2 + 935) = 0;
  *(a2 + 912) = 0;
  *(a1 + 936) = *(a2 + 936);
  v49 = (a1 + 944);
  if (*(a1 + 967) < 0)
  {
    operator delete(*v49);
  }

  v50 = *(a2 + 944);
  *(a1 + 960) = *(a2 + 960);
  *v49 = v50;
  *(a2 + 967) = 0;
  *(a2 + 944) = 0;
  *(a1 + 968) = *(a2 + 968);
  v51 = (a1 + 976);
  if (*(a1 + 999) < 0)
  {
    operator delete(*v51);
  }

  v52 = *(a2 + 976);
  *(a1 + 992) = *(a2 + 992);
  *v51 = v52;
  *(a2 + 999) = 0;
  *(a2 + 976) = 0;
  *(a1 + 1000) = *(a2 + 1000);
  v53 = (a1 + 1008);
  if (*(a1 + 1031) < 0)
  {
    operator delete(*v53);
  }

  v54 = *(a2 + 1008);
  *(a1 + 1024) = *(a2 + 1024);
  *v53 = v54;
  *(a2 + 1031) = 0;
  *(a2 + 1008) = 0;
  *(a1 + 1032) = *(a2 + 1032);
  v55 = (a1 + 1040);
  if (*(a1 + 1063) < 0)
  {
    operator delete(*v55);
  }

  result = *(a2 + 1040);
  *(a1 + 1056) = *(a2 + 1056);
  *v55 = result;
  *(a2 + 1063) = 0;
  *(a2 + 1040) = 0;
  v57 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t std::__tree<std::__value_type<unsigned char,XofGalileoEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGalileoEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGalileoEphemeris>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char,XofGalileoEphemeris>>(uint64_t result, unsigned __int8 a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 28);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      break;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

__n128 std::__memberwise_forward_assign[abi:ne200100]<std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<long long>,XofIntegralType<unsigned long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>>,std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<long long>,XofIntegralType<unsigned long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<signed char>,XofIntegralType<unsigned char>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<long long>,XofIntegralType<unsigned long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<long long>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul,30ul,31ul,32ul,33ul,34ul,35ul,36ul,37ul,38ul,39ul,40ul,41ul,42ul,43ul,44ul,45ul,46ul,47ul,48ul>(uint64_t a1, uint64_t a2)
{
  v93 = *MEMORY[0x29EDCA608];
  *a1 = *a2;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  *(a1 + 32) = *(a2 + 32);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *(a2 + 63) = 0;
  *(a2 + 40) = 0;
  *(a1 + 64) = *(a2 + 64);
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v6 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v6;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  *(a1 + 96) = *(a2 + 96);
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 112) = v7;
  *(a2 + 135) = 0;
  *(a2 + 112) = 0;
  *(a1 + 136) = *(a2 + 136);
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  v8 = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 144) = v8;
  *(a2 + 167) = 0;
  *(a2 + 144) = 0;
  *(a1 + 168) = *(a2 + 168);
  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  v9 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 176) = v9;
  *(a2 + 199) = 0;
  *(a2 + 176) = 0;
  *(a1 + 200) = *(a2 + 200);
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  v10 = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 208) = v10;
  *(a2 + 231) = 0;
  *(a2 + 208) = 0;
  *(a1 + 232) = *(a2 + 232);
  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  v11 = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 240) = v11;
  *(a2 + 263) = 0;
  *(a2 + 240) = 0;
  *(a1 + 264) = *(a2 + 264);
  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  v12 = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 272) = v12;
  *(a2 + 295) = 0;
  *(a2 + 272) = 0;
  *(a1 + 296) = *(a2 + 296);
  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  v13 = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 304) = v13;
  *(a2 + 327) = 0;
  *(a2 + 304) = 0;
  *(a1 + 328) = *(a2 + 328);
  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  v14 = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 336) = v14;
  *(a2 + 359) = 0;
  *(a2 + 336) = 0;
  *(a1 + 360) = *(a2 + 360);
  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  v15 = *(a2 + 368);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 368) = v15;
  *(a2 + 391) = 0;
  *(a2 + 368) = 0;
  *(a1 + 392) = *(a2 + 392);
  if (*(a1 + 423) < 0)
  {
    operator delete(*(a1 + 400));
  }

  v16 = *(a2 + 400);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 400) = v16;
  *(a2 + 423) = 0;
  *(a2 + 400) = 0;
  *(a1 + 424) = *(a2 + 424);
  if (*(a1 + 455) < 0)
  {
    operator delete(*(a1 + 432));
  }

  v17 = *(a2 + 432);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 432) = v17;
  *(a2 + 455) = 0;
  *(a2 + 432) = 0;
  *(a1 + 456) = *(a2 + 456);
  if (*(a1 + 487) < 0)
  {
    operator delete(*(a1 + 464));
  }

  v18 = *(a2 + 464);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 464) = v18;
  *(a2 + 487) = 0;
  *(a2 + 464) = 0;
  *(a1 + 488) = *(a2 + 488);
  v19 = (a1 + 496);
  if (*(a1 + 519) < 0)
  {
    operator delete(*v19);
  }

  v20 = *(a2 + 496);
  *(a1 + 512) = *(a2 + 512);
  *v19 = v20;
  *(a2 + 519) = 0;
  *(a2 + 496) = 0;
  *(a1 + 520) = *(a2 + 520);
  v21 = (a1 + 528);
  if (*(a1 + 551) < 0)
  {
    operator delete(*v21);
  }

  v22 = *(a2 + 528);
  *(a1 + 544) = *(a2 + 544);
  *v21 = v22;
  *(a2 + 551) = 0;
  *(a2 + 528) = 0;
  *(a1 + 552) = *(a2 + 552);
  v23 = (a1 + 560);
  if (*(a1 + 583) < 0)
  {
    operator delete(*v23);
  }

  v24 = *(a2 + 560);
  *(a1 + 576) = *(a2 + 576);
  *v23 = v24;
  *(a2 + 583) = 0;
  *(a2 + 560) = 0;
  *(a1 + 584) = *(a2 + 584);
  v25 = (a1 + 600);
  if (*(a1 + 623) < 0)
  {
    operator delete(*v25);
  }

  v26 = *(a2 + 600);
  *(a1 + 616) = *(a2 + 616);
  *v25 = v26;
  *(a2 + 623) = 0;
  *(a2 + 600) = 0;
  *(a1 + 624) = *(a2 + 624);
  v27 = (a1 + 640);
  if (*(a1 + 663) < 0)
  {
    operator delete(*v27);
  }

  v28 = *(a2 + 640);
  *(a1 + 656) = *(a2 + 656);
  *v27 = v28;
  *(a2 + 663) = 0;
  *(a2 + 640) = 0;
  *(a1 + 664) = *(a2 + 664);
  v29 = (a1 + 680);
  if (*(a1 + 703) < 0)
  {
    operator delete(*v29);
  }

  v30 = *(a2 + 680);
  *(a1 + 696) = *(a2 + 696);
  *v29 = v30;
  *(a2 + 703) = 0;
  *(a2 + 680) = 0;
  *(a1 + 704) = *(a2 + 704);
  v31 = (a1 + 720);
  if (*(a1 + 743) < 0)
  {
    operator delete(*v31);
  }

  v32 = *(a2 + 720);
  *(a1 + 736) = *(a2 + 736);
  *v31 = v32;
  *(a2 + 743) = 0;
  *(a2 + 720) = 0;
  v33 = *(a2 + 760);
  *(a1 + 744) = *(a2 + 744);
  *(a1 + 760) = v33;
  v34 = (a1 + 776);
  if (*(a1 + 799) < 0)
  {
    operator delete(*v34);
  }

  v35 = *(a2 + 776);
  *(a1 + 792) = *(a2 + 792);
  *v34 = v35;
  *(a2 + 799) = 0;
  *(a2 + 776) = 0;
  v36 = *(a2 + 816);
  *(a1 + 800) = *(a2 + 800);
  *(a1 + 816) = v36;
  v37 = (a1 + 832);
  if (*(a1 + 855) < 0)
  {
    operator delete(*v37);
  }

  v38 = *(a2 + 832);
  *(a1 + 848) = *(a2 + 848);
  *v37 = v38;
  *(a2 + 855) = 0;
  *(a2 + 832) = 0;
  v39 = *(a2 + 872);
  *(a1 + 856) = *(a2 + 856);
  *(a1 + 872) = v39;
  v40 = (a1 + 888);
  if (*(a1 + 911) < 0)
  {
    operator delete(*v40);
  }

  v41 = *(a2 + 888);
  *(a1 + 904) = *(a2 + 904);
  *v40 = v41;
  *(a2 + 911) = 0;
  *(a2 + 888) = 0;
  v42 = *(a2 + 928);
  *(a1 + 912) = *(a2 + 912);
  *(a1 + 928) = v42;
  v43 = (a1 + 944);
  if (*(a1 + 967) < 0)
  {
    operator delete(*v43);
  }

  v44 = *(a2 + 944);
  *(a1 + 960) = *(a2 + 960);
  *v43 = v44;
  *(a2 + 967) = 0;
  *(a2 + 944) = 0;
  v45 = *(a2 + 984);
  *(a1 + 968) = *(a2 + 968);
  *(a1 + 984) = v45;
  v46 = (a1 + 1000);
  if (*(a1 + 1023) < 0)
  {
    operator delete(*v46);
  }

  v47 = *(a2 + 1000);
  *(a1 + 1016) = *(a2 + 1016);
  *v46 = v47;
  *(a2 + 1023) = 0;
  *(a2 + 1000) = 0;
  *(a1 + 1024) = *(a2 + 1024);
  v48 = (a1 + 1040);
  if (*(a1 + 1063) < 0)
  {
    operator delete(*v48);
  }

  v49 = *(a2 + 1040);
  *(a1 + 1056) = *(a2 + 1056);
  *v48 = v49;
  *(a2 + 1063) = 0;
  *(a2 + 1040) = 0;
  *(a1 + 1064) = *(a2 + 1064);
  v50 = (a1 + 1072);
  if (*(a1 + 1095) < 0)
  {
    operator delete(*v50);
  }

  v51 = *(a2 + 1072);
  *(a1 + 1088) = *(a2 + 1088);
  *v50 = v51;
  *(a2 + 1095) = 0;
  *(a2 + 1072) = 0;
  *(a1 + 1096) = *(a2 + 1096);
  v52 = (a1 + 1104);
  if (*(a1 + 1127) < 0)
  {
    operator delete(*v52);
  }

  v53 = *(a2 + 1104);
  *(a1 + 1120) = *(a2 + 1120);
  *v52 = v53;
  *(a2 + 1127) = 0;
  *(a2 + 1104) = 0;
  *(a1 + 1128) = *(a2 + 1128);
  v54 = (a1 + 1136);
  if (*(a1 + 1159) < 0)
  {
    operator delete(*v54);
  }

  v55 = *(a2 + 1136);
  *(a1 + 1152) = *(a2 + 1152);
  *v54 = v55;
  *(a2 + 1159) = 0;
  *(a2 + 1136) = 0;
  *(a1 + 1160) = *(a2 + 1160);
  v56 = (a1 + 1168);
  if (*(a1 + 1191) < 0)
  {
    operator delete(*v56);
  }

  v57 = *(a2 + 1168);
  *(a1 + 1184) = *(a2 + 1184);
  *v56 = v57;
  *(a2 + 1191) = 0;
  *(a2 + 1168) = 0;
  *(a1 + 1192) = *(a2 + 1192);
  v58 = (a1 + 1208);
  if (*(a1 + 1231) < 0)
  {
    operator delete(*v58);
  }

  v59 = *(a2 + 1208);
  *(a1 + 1224) = *(a2 + 1224);
  *v58 = v59;
  *(a2 + 1231) = 0;
  *(a2 + 1208) = 0;
  *(a1 + 1232) = *(a2 + 1232);
  v60 = (a1 + 1248);
  if (*(a1 + 1271) < 0)
  {
    operator delete(*v60);
  }

  v61 = *(a2 + 1248);
  *(a1 + 1264) = *(a2 + 1264);
  *v60 = v61;
  *(a2 + 1271) = 0;
  *(a2 + 1248) = 0;
  *(a1 + 1272) = *(a2 + 1272);
  v62 = (a1 + 1288);
  if (*(a1 + 1311) < 0)
  {
    operator delete(*v62);
  }

  v63 = *(a2 + 1288);
  *(a1 + 1304) = *(a2 + 1304);
  *v62 = v63;
  *(a2 + 1311) = 0;
  *(a2 + 1288) = 0;
  *(a1 + 1312) = *(a2 + 1312);
  v64 = (a1 + 1328);
  if (*(a1 + 1351) < 0)
  {
    operator delete(*v64);
  }

  v65 = *(a2 + 1328);
  *(a1 + 1344) = *(a2 + 1344);
  *v64 = v65;
  *(a2 + 1351) = 0;
  *(a2 + 1328) = 0;
  *(a1 + 1352) = *(a2 + 1352);
  v66 = (a1 + 1368);
  if (*(a1 + 1391) < 0)
  {
    operator delete(*v66);
  }

  v67 = *(a2 + 1368);
  *(a1 + 1384) = *(a2 + 1384);
  *v66 = v67;
  *(a2 + 1391) = 0;
  *(a2 + 1368) = 0;
  *(a1 + 1392) = *(a2 + 1392);
  v68 = (a1 + 1408);
  if (*(a1 + 1431) < 0)
  {
    operator delete(*v68);
  }

  v69 = *(a2 + 1408);
  *(a1 + 1424) = *(a2 + 1424);
  *v68 = v69;
  *(a2 + 1431) = 0;
  *(a2 + 1408) = 0;
  *(a1 + 1432) = *(a2 + 1432);
  v70 = (a1 + 1440);
  if (*(a1 + 1463) < 0)
  {
    operator delete(*v70);
  }

  v71 = *(a2 + 1440);
  *(a1 + 1456) = *(a2 + 1456);
  *v70 = v71;
  *(a2 + 1463) = 0;
  *(a2 + 1440) = 0;
  *(a1 + 1464) = *(a2 + 1464);
  v72 = (a1 + 1472);
  if (*(a1 + 1495) < 0)
  {
    operator delete(*v72);
  }

  v73 = *(a2 + 1472);
  *(a1 + 1488) = *(a2 + 1488);
  *v72 = v73;
  *(a2 + 1495) = 0;
  *(a2 + 1472) = 0;
  *(a1 + 1496) = *(a2 + 1496);
  v74 = (a1 + 1504);
  if (*(a1 + 1527) < 0)
  {
    operator delete(*v74);
  }

  v75 = *(a2 + 1504);
  *(a1 + 1520) = *(a2 + 1520);
  *v74 = v75;
  *(a2 + 1527) = 0;
  *(a2 + 1504) = 0;
  *(a1 + 1528) = *(a2 + 1528);
  v76 = (a1 + 1536);
  if (*(a1 + 1559) < 0)
  {
    operator delete(*v76);
  }

  v77 = *(a2 + 1536);
  *(a1 + 1552) = *(a2 + 1552);
  *v76 = v77;
  *(a2 + 1559) = 0;
  *(a2 + 1536) = 0;
  *(a1 + 1560) = *(a2 + 1560);
  v78 = (a1 + 1568);
  if (*(a1 + 1591) < 0)
  {
    operator delete(*v78);
  }

  v79 = *(a2 + 1568);
  *(a1 + 1584) = *(a2 + 1584);
  *v78 = v79;
  *(a2 + 1591) = 0;
  *(a2 + 1568) = 0;
  *(a1 + 1592) = *(a2 + 1592);
  v80 = (a1 + 1600);
  if (*(a1 + 1623) < 0)
  {
    operator delete(*v80);
  }

  v81 = *(a2 + 1600);
  *(a1 + 1616) = *(a2 + 1616);
  *v80 = v81;
  *(a2 + 1623) = 0;
  *(a2 + 1600) = 0;
  *(a1 + 1624) = *(a2 + 1624);
  v82 = (a1 + 1632);
  if (*(a1 + 1655) < 0)
  {
    operator delete(*v82);
  }

  v83 = *(a2 + 1632);
  *(a1 + 1648) = *(a2 + 1648);
  *v82 = v83;
  *(a2 + 1655) = 0;
  *(a2 + 1632) = 0;
  *(a1 + 1656) = *(a2 + 1656);
  v84 = (a1 + 1664);
  if (*(a1 + 1687) < 0)
  {
    operator delete(*v84);
  }

  v85 = *(a2 + 1664);
  *(a1 + 1680) = *(a2 + 1680);
  *v84 = v85;
  *(a2 + 1687) = 0;
  *(a2 + 1664) = 0;
  *(a1 + 1688) = *(a2 + 1688);
  v86 = (a1 + 1696);
  if (*(a1 + 1719) < 0)
  {
    operator delete(*v86);
  }

  v87 = *(a2 + 1696);
  *(a1 + 1712) = *(a2 + 1712);
  *v86 = v87;
  *(a2 + 1719) = 0;
  *(a2 + 1696) = 0;
  *(a1 + 1720) = *(a2 + 1720);
  v88 = (a1 + 1728);
  if (*(a1 + 1751) < 0)
  {
    operator delete(*v88);
  }

  v89 = *(a2 + 1728);
  *(a1 + 1744) = *(a2 + 1744);
  *v88 = v89;
  *(a2 + 1751) = 0;
  *(a2 + 1728) = 0;
  *(a1 + 1752) = *(a2 + 1752);
  v90 = (a1 + 1768);
  if (*(a1 + 1791) < 0)
  {
    operator delete(*v90);
  }

  result = *(a2 + 1768);
  *(a1 + 1784) = *(a2 + 1784);
  *v90 = result;
  *(a2 + 1791) = 0;
  *(a2 + 1768) = 0;
  v92 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t std::__tree<std::__value_type<unsigned char,XofBeidouEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofBeidouEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofBeidouEphemeris>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char,XofBeidouEphemeris>>(uint64_t result, unsigned __int8 a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      break;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

__n128 std::__memberwise_forward_assign[abi:ne200100]<std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>,std::tuple<XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>>,XofIntegralType<unsigned char>,XofIntegralType<unsigned short>,XofIntegralType<unsigned short>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned char>,XofIntegralType<unsigned int>,XofIntegralType<unsigned short>,XofIntegralType<signed char>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<signed char>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<unsigned int>,XofIntegralType<unsigned int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<int>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,XofIntegralType<short>,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul,10ul,11ul,12ul,13ul,14ul,15ul,16ul,17ul,18ul,19ul,20ul,21ul,22ul,23ul,24ul,25ul,26ul,27ul,28ul,29ul>(uint64_t a1, uint64_t a2)
{
  v54 = *MEMORY[0x29EDCA608];
  *a1 = *a2;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  *(a1 + 32) = *(a2 + 32);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *(a2 + 63) = 0;
  *(a2 + 40) = 0;
  *(a1 + 64) = *(a2 + 64);
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v6 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v6;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  *(a1 + 96) = *(a2 + 96);
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v7 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v7;
  *(a2 + 127) = 0;
  *(a2 + 104) = 0;
  *(a1 + 128) = *(a2 + 128);
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v8 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v8;
  *(a2 + 159) = 0;
  *(a2 + 136) = 0;
  *(a1 + 160) = *(a2 + 160);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  v9 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v9;
  *(a2 + 191) = 0;
  *(a2 + 168) = 0;
  *(a1 + 192) = *(a2 + 192);
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  v10 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 200) = v10;
  *(a2 + 223) = 0;
  *(a2 + 200) = 0;
  *(a1 + 224) = *(a2 + 224);
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  v11 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v11;
  *(a2 + 255) = 0;
  *(a2 + 232) = 0;
  *(a1 + 256) = *(a2 + 256);
  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  v12 = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 272) = v12;
  *(a2 + 295) = 0;
  *(a2 + 272) = 0;
  *(a1 + 296) = *(a2 + 296);
  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  v13 = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 304) = v13;
  *(a2 + 327) = 0;
  *(a2 + 304) = 0;
  *(a1 + 328) = *(a2 + 328);
  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  v14 = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 336) = v14;
  *(a2 + 359) = 0;
  *(a2 + 336) = 0;
  *(a1 + 360) = *(a2 + 360);
  v15 = (a1 + 376);
  if (*(a1 + 399) < 0)
  {
    operator delete(*v15);
  }

  v16 = *(a2 + 376);
  *(a1 + 392) = *(a2 + 392);
  *v15 = v16;
  *(a2 + 399) = 0;
  *(a2 + 376) = 0;
  *(a1 + 400) = *(a2 + 400);
  v17 = (a1 + 408);
  if (*(a1 + 431) < 0)
  {
    operator delete(*v17);
  }

  v18 = *(a2 + 408);
  *(a1 + 424) = *(a2 + 424);
  *v17 = v18;
  *(a2 + 431) = 0;
  *(a2 + 408) = 0;
  *(a1 + 432) = *(a2 + 432);
  v19 = (a1 + 440);
  if (*(a1 + 463) < 0)
  {
    operator delete(*v19);
  }

  v20 = *(a2 + 440);
  *(a1 + 456) = *(a2 + 456);
  *v19 = v20;
  *(a2 + 463) = 0;
  *(a2 + 440) = 0;
  *(a1 + 464) = *(a2 + 464);
  v21 = (a1 + 472);
  if (*(a1 + 495) < 0)
  {
    operator delete(*v21);
  }

  v22 = *(a2 + 472);
  *(a1 + 488) = *(a2 + 488);
  *v21 = v22;
  *(a2 + 495) = 0;
  *(a2 + 472) = 0;
  *(a1 + 496) = *(a2 + 496);
  v23 = (a1 + 504);
  if (*(a1 + 527) < 0)
  {
    operator delete(*v23);
  }

  v24 = *(a2 + 504);
  *(a1 + 520) = *(a2 + 520);
  *v23 = v24;
  *(a2 + 527) = 0;
  *(a2 + 504) = 0;
  *(a1 + 528) = *(a2 + 528);
  v25 = (a1 + 544);
  if (*(a1 + 567) < 0)
  {
    operator delete(*v25);
  }

  v26 = *(a2 + 544);
  *(a1 + 560) = *(a2 + 560);
  *v25 = v26;
  *(a2 + 567) = 0;
  *(a2 + 544) = 0;
  *(a1 + 568) = *(a2 + 568);
  v27 = (a1 + 584);
  if (*(a1 + 607) < 0)
  {
    operator delete(*v27);
  }

  v28 = *(a2 + 584);
  *(a1 + 600) = *(a2 + 600);
  *v27 = v28;
  *(a2 + 607) = 0;
  *(a2 + 584) = 0;
  *(a1 + 608) = *(a2 + 608);
  v29 = (a1 + 624);
  if (*(a1 + 647) < 0)
  {
    operator delete(*v29);
  }

  v30 = *(a2 + 624);
  *(a1 + 640) = *(a2 + 640);
  *v29 = v30;
  *(a2 + 647) = 0;
  *(a2 + 624) = 0;
  *(a1 + 648) = *(a2 + 648);
  v31 = (a1 + 664);
  if (*(a1 + 687) < 0)
  {
    operator delete(*v31);
  }

  v32 = *(a2 + 664);
  *(a1 + 680) = *(a2 + 680);
  *v31 = v32;
  *(a2 + 687) = 0;
  *(a2 + 664) = 0;
  *(a1 + 688) = *(a2 + 688);
  v33 = (a1 + 704);
  if (*(a1 + 727) < 0)
  {
    operator delete(*v33);
  }

  v34 = *(a2 + 704);
  *(a1 + 720) = *(a2 + 720);
  *v33 = v34;
  *(a2 + 727) = 0;
  *(a2 + 704) = 0;
  *(a1 + 728) = *(a2 + 728);
  v35 = (a1 + 744);
  if (*(a1 + 767) < 0)
  {
    operator delete(*v35);
  }

  v36 = *(a2 + 744);
  *(a1 + 760) = *(a2 + 760);
  *v35 = v36;
  *(a2 + 767) = 0;
  *(a2 + 744) = 0;
  *(a1 + 768) = *(a2 + 768);
  v37 = (a1 + 784);
  if (*(a1 + 807) < 0)
  {
    operator delete(*v37);
  }

  v38 = *(a2 + 784);
  *(a1 + 800) = *(a2 + 800);
  *v37 = v38;
  *(a2 + 807) = 0;
  *(a2 + 784) = 0;
  *(a1 + 808) = *(a2 + 808);
  v39 = (a1 + 824);
  if (*(a1 + 847) < 0)
  {
    operator delete(*v39);
  }

  v40 = *(a2 + 824);
  *(a1 + 840) = *(a2 + 840);
  *v39 = v40;
  *(a2 + 847) = 0;
  *(a2 + 824) = 0;
  *(a1 + 848) = *(a2 + 848);
  v41 = (a1 + 856);
  if (*(a1 + 879) < 0)
  {
    operator delete(*v41);
  }

  v42 = *(a2 + 856);
  *(a1 + 872) = *(a2 + 872);
  *v41 = v42;
  *(a2 + 879) = 0;
  *(a2 + 856) = 0;
  *(a1 + 880) = *(a2 + 880);
  v43 = (a1 + 888);
  if (*(a1 + 911) < 0)
  {
    operator delete(*v43);
  }

  v44 = *(a2 + 888);
  *(a1 + 904) = *(a2 + 904);
  *v43 = v44;
  *(a2 + 911) = 0;
  *(a2 + 888) = 0;
  *(a1 + 912) = *(a2 + 912);
  v45 = (a1 + 920);
  if (*(a1 + 943) < 0)
  {
    operator delete(*v45);
  }

  v46 = *(a2 + 920);
  *(a1 + 936) = *(a2 + 936);
  *v45 = v46;
  *(a2 + 943) = 0;
  *(a2 + 920) = 0;
  *(a1 + 944) = *(a2 + 944);
  v47 = (a1 + 952);
  if (*(a1 + 975) < 0)
  {
    operator delete(*v47);
  }

  v48 = *(a2 + 952);
  *(a1 + 968) = *(a2 + 968);
  *v47 = v48;
  *(a2 + 975) = 0;
  *(a2 + 952) = 0;
  *(a1 + 976) = *(a2 + 976);
  v49 = (a1 + 984);
  if (*(a1 + 1007) < 0)
  {
    operator delete(*v49);
  }

  v50 = *(a2 + 984);
  *(a1 + 1000) = *(a2 + 1000);
  *v49 = v50;
  *(a2 + 1007) = 0;
  *(a2 + 984) = 0;
  *(a1 + 1008) = *(a2 + 1008);
  v51 = (a1 + 1016);
  if (*(a1 + 1039) < 0)
  {
    operator delete(*v51);
  }

  result = *(a2 + 1016);
  *(a1 + 1032) = *(a2 + 1032);
  *v51 = result;
  *(a2 + 1039) = 0;
  *(a2 + 1016) = 0;
  v53 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t std::__tree<std::__value_type<unsigned char,XofNavicEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofNavicEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofNavicEphemeris>>>::__emplace_unique_key_args<unsigned char,std::pair<unsigned char,XofNavicEphemeris>>(uint64_t result, unsigned __int8 a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 28);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      break;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void *std::map<unsigned char,XofGpsQzssEphemeris>::map[abi:ne200100](void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x29EDCA608];
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<unsigned char,XofGpsQzssEphemeris>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__tree_node<std::__value_type<unsigned char,XofGpsQzssEphemeris>,void *> *,long>>>(a1, *a2, (a2 + 8));
  v3 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t std::map<unsigned char,XofGpsQzssEphemeris>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__tree_node<std::__value_type<unsigned char,XofGpsQzssEphemeris>,void *> *,long>>>(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::__emplace_hint_unique_key_args<unsigned char,std::pair<unsigned char const,XofGpsQzssEphemeris> const&>(v5, v5 + 1, v4 + 28);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::__emplace_hint_unique_key_args<unsigned char,std::pair<unsigned char const,XofGpsQzssEphemeris> const&>(void *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v7[1] = *MEMORY[0x29EDCA608];
  v3 = *std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::__find_equal<unsigned char>(a1, a2, v7, &v6, a3);
  if (!v3)
  {
    operator new();
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t *std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::__find_equal<unsigned char>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int8 *a5)
{
  v25 = *MEMORY[0x29EDCA608];
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 28), v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        a4 = v10 + 1;
      }

      else
      {
        *a3 = a2;
        a4 = a2;
      }

      goto LABEL_46;
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
    if (*(v10 + 28) < v15)
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
          v18 = *(v16 + 28);
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
LABEL_30:
    a4 = v5;
    goto LABEL_46;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    goto LABEL_46;
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

  if (a4 != v5 && v6 >= *(a4 + 28))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
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
    goto LABEL_30;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    a4 = a2 + 1;
  }

LABEL_46:
  v23 = *MEMORY[0x29EDCA608];
  return a4;
}

void std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::destroy(a1, a2[1]);
    v4 = *MEMORY[0x29EDCA608];

    operator delete(a2);
  }

  else
  {
    v5 = *MEMORY[0x29EDCA608];
    v6 = *MEMORY[0x29EDCA608];
  }
}

void *std::map<unsigned char,XofGalileoEphemeris>::map[abi:ne200100](void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x29EDCA608];
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<unsigned char,XofGalileoEphemeris>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned char,XofGalileoEphemeris>,std::__tree_node<std::__value_type<unsigned char,XofGalileoEphemeris>,void *> *,long>>>(a1, *a2, (a2 + 8));
  v3 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t std::map<unsigned char,XofGalileoEphemeris>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned char,XofGalileoEphemeris>,std::__tree_node<std::__value_type<unsigned char,XofGalileoEphemeris>,void *> *,long>>>(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<unsigned char,XofGalileoEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGalileoEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGalileoEphemeris>>>::__emplace_hint_unique_key_args<unsigned char,std::pair<unsigned char const,XofGalileoEphemeris> const&>(v5, v5 + 1, v4 + 28);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t std::__tree<std::__value_type<unsigned char,XofGalileoEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGalileoEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGalileoEphemeris>>>::__emplace_hint_unique_key_args<unsigned char,std::pair<unsigned char const,XofGalileoEphemeris> const&>(void *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v7[1] = *MEMORY[0x29EDCA608];
  v3 = *std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::__find_equal<unsigned char>(a1, a2, v7, &v6, a3);
  if (!v3)
  {
    operator new();
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

void *std::map<unsigned char,XofBeidouEphemeris>::map[abi:ne200100](void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x29EDCA608];
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<unsigned char,XofBeidouEphemeris>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned char,XofBeidouEphemeris>,std::__tree_node<std::__value_type<unsigned char,XofBeidouEphemeris>,void *> *,long>>>(a1, *a2, (a2 + 8));
  v3 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t std::map<unsigned char,XofBeidouEphemeris>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned char,XofBeidouEphemeris>,std::__tree_node<std::__value_type<unsigned char,XofBeidouEphemeris>,void *> *,long>>>(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<unsigned char,XofBeidouEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofBeidouEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofBeidouEphemeris>>>::__emplace_hint_unique_key_args<unsigned char,std::pair<unsigned char const,XofBeidouEphemeris> const&>(v5, v5 + 1, v4 + 32);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t std::__tree<std::__value_type<unsigned char,XofBeidouEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofBeidouEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofBeidouEphemeris>>>::__emplace_hint_unique_key_args<unsigned char,std::pair<unsigned char const,XofBeidouEphemeris> const&>(void *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v7[1] = *MEMORY[0x29EDCA608];
  v3 = *std::__tree<std::__value_type<unsigned char,XofBeidouEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofBeidouEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofBeidouEphemeris>>>::__find_equal<unsigned char>(a1, a2, v7, &v6, a3);
  if (!v3)
  {
    operator new();
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t *std::__tree<std::__value_type<unsigned char,XofBeidouEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofBeidouEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofBeidouEphemeris>>>::__find_equal<unsigned char>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int8 *a5)
{
  v25 = *MEMORY[0x29EDCA608];
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 32), v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        a4 = v10 + 1;
      }

      else
      {
        *a3 = a2;
        a4 = a2;
      }

      goto LABEL_46;
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
    if (*(v10 + 32) < v15)
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
          v18 = *(v16 + 32);
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
LABEL_30:
    a4 = v5;
    goto LABEL_46;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    goto LABEL_46;
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

  if (a4 != v5 && v6 >= *(a4 + 32))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
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
    goto LABEL_30;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    a4 = a2 + 1;
  }

LABEL_46:
  v23 = *MEMORY[0x29EDCA608];
  return a4;
}

void *std::map<unsigned char,XofNavicEphemeris>::map[abi:ne200100](void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x29EDCA608];
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<unsigned char,XofNavicEphemeris>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned char,XofNavicEphemeris>,std::__tree_node<std::__value_type<unsigned char,XofNavicEphemeris>,void *> *,long>>>(a1, *a2, (a2 + 8));
  v3 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t std::map<unsigned char,XofNavicEphemeris>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned char,XofNavicEphemeris>,std::__tree_node<std::__value_type<unsigned char,XofNavicEphemeris>,void *> *,long>>>(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<unsigned char,XofNavicEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofNavicEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofNavicEphemeris>>>::__emplace_hint_unique_key_args<unsigned char,std::pair<unsigned char const,XofNavicEphemeris> const&>(v5, v5 + 1, v4 + 28);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t std::__tree<std::__value_type<unsigned char,XofNavicEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofNavicEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofNavicEphemeris>>>::__emplace_hint_unique_key_args<unsigned char,std::pair<unsigned char const,XofNavicEphemeris> const&>(void *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v7[1] = *MEMORY[0x29EDCA608];
  v3 = *std::__tree<std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::__map_value_compare<unsigned char,std::__value_type<unsigned char,XofGpsQzssEphemeris>,std::less<unsigned char>,true>,std::allocator<std::__value_type<unsigned char,XofGpsQzssEphemeris>>>::__find_equal<unsigned char>(a1, a2, v7, &v6, a3);
  if (!v3)
  {
    operator new();
  }

  v4 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t gn_report_assertion_failure(const char *a1)
{
  v9 = *MEMORY[0x29EDCA608];
  GNSS_Event_Log_Ctl(qword_2A1454250);
  v2 = qword_2A1454250;
  v3 = (*qword_2A1454250)++;
  *v3 = 10;
  if (*v2 >= v2[3])
  {
    *v2 = v2[2];
  }

  EvCrt_v(" ***** ASSERT FAILED ***** %s", a1);
  v4 = qword_2A1454250;
  v5 = (*qword_2A1454250)++;
  *v5 = 10;
  if (*v4 >= v4[3])
  {
    *v4 = v4[2];
  }

  v6 = qword_2A1454250;
  v7 = *MEMORY[0x29EDCA608];

  return GNSS_Event_Log_Ctl(v6);
}

char *NK_SV_Meas_Update(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double *a6, int a7, float64x2_t *a8, double a9, uint64_t a10)
{
  v12 = a9;
  *v93 = result;
  v73 = 0;
  v112 = *MEMORY[0x29EDCA608];
  v13 = a5 + 312;
  v84 = a5 + 9528;
  v88 = a5 + 5304;
  v89 = a5 + 440;
  v87 = a5 + 10680;
  v75 = (a6 + 87);
  v78 = (a10 + 16);
  v79 = (a10 + 24);
  v71 = result;
  v72 = result;
  v68 = result;
  v69 = a5 + 312;
  v14 = a5 + 568;
  v15 = 1;
  v92 = a5 + 568;
  do
  {
    v16 = 0;
    v85 = 0;
    v86 = 0;
    v17 = v15;
    do
    {
      if (*(v13 + v16) == 1 && ((v17 & 1) != 0 && (*(v14 + 4 * v16) - 1) > 0x1D || (v73 & 1) != 0 && (*(v14 + 4 * v16) - 1) <= 0x1D))
      {
        v100 = 0;
        memset(v99, 0, sizeof(v99));
        memset(v98, 0, 104);
        memset(v97, 0, sizeof(v97));
        v94 = 0.0;
        bzero(__dst, 0x2D8uLL);
        result = *v93;
        v18 = 0;
        v19 = 1.0;
        v20 = 1;
        while (1)
        {
          if ((v17 & 1) != 0 || v18)
          {
            v21 = *(a5 + 8);
          }

          else
          {
            v21 = 1.0e20;
          }

          NK_Obs_Equ_SV(result, *(v89 + v16), *(a2 + 4 * v16), (a3 + 56 * v16), v99, v12);
          if (a7)
          {
            NK_SV_Meas_Innov_Sat(v99, v16, v93[0], a5, a6, v21);
            v19 = *(v84 + 8 * v16);
          }

          v100 = *(v88 + 8 * v16);
          if (v20)
          {
            memcpy(__dst, a6, sizeof(__dst));
          }

          umeas(a6, 0xCu, v19 * *(v87 + 8 * v16), v99, v98, v97, &v94, v21);
          if ((v17 & 1) != 0 || v18)
          {
            v22 = v92;
            if (v94 >= 0.0)
            {
              v86 += *(a4 + v16);
            }

            else
            {
              ++v85;
              --*(a5 + 3);
              ++*(a5 + 4);
              if (v18)
              {
                *(v92 + 4 * v16) = 24;
                memcpy(a6, __dst, 0x2D8uLL);
                GNSS_SV_Str = Get_GNSS_SV_Str(*(a2 + 4 * v16));
                EvLog_v("NK_SV_Meas_Update:  Speed constraint edit, %d  %s  Obs %d", v16, GNSS_SV_Str, v93[0]);
                goto LABEL_26;
              }

              *(v92 + 4 * v16) = 23;
            }
          }

          else
          {
            v22 = v92;
            *(v92 + 4 * v16) = 0;
            if (v94 < 0.0)
            {
              gn_report_assertion_failure("NK_SV_Meas_Update:  Edit add-back failed !");
LABEL_26:
              v22 = v92;
            }
          }

          if ((*(v22 + 4 * v16) - 1) < 0x1E || *a10 != 1 || v18)
          {
            if (v18)
            {
              v18 = 0;
            }

            goto LABEL_32;
          }

          v25 = *(a2 + 4 * v16);
          v81 = vsubq_f64(*a8, *v75);
          v110 = v81;
          v26 = a8[1].f64[0] - a6[89];
          v111 = v26;
          v27 = 0.0;
          v28 = 2;
          do
          {
            v27 = v27 + v110.f64[v28] * v110.f64[v28];
            v29 = v28-- + 1;
          }

          while (v29 > 1);
          v30 = sqrt(v27);
          v31 = *v79;
          v32 = *v78;
          v33 = *v78 - v30;
          if (v33 <= 0.001)
          {
            if (v30 - *v79 <= 0.001)
            {
              v18 = 0;
              goto LABEL_32;
            }

            v80 = v25;
            v34 = -v33;
            v77 = v30 - *v79;
            v33 = v77;
          }

          else
          {
            v80 = v25;
            v77 = v30 - *v79;
            v34 = v77;
          }

          v109 = 1.0;
          v108 = xmmword_2990516B0;
          v35 = (v31 - v32) / v33;
          ud2var(a6, 0xCu, 10, 3u, &v108);
          v36 = v35 * ((vmuld_lane_f64(v81.f64[1], v81, 1) * *(&v108 + 1) + vmulq_f64(v81, v81).f64[0] * *&v108 + v26 * v26 * v109) / (v30 * v30));
          v37 = v34 * v34 / v36;
          v18 = v37 <= 16.0;
          if (v37 <= 16.0)
          {
            v38 = &v110;
            v39 = 9;
            memset(v107, 0, 96);
            do
            {
              v40 = *v38++;
              v107[v39++] = v40 / v30;
            }

            while (v39 != 12);
            v107[12] = v34;
            bzero(v106, 0x270uLL);
            ud2cov(a6, v106, 0xCu);
            v41 = 0;
            v104 = 0u;
            v105 = 0u;
            memset(v103, 0, sizeof(v103));
            do
            {
              v42 = 0;
              v43 = v103[v41];
              v44 = v41 + 1;
              do
              {
                v45 = v42 + 1;
                v46 = v107[v42];
                if (v42 < v41)
                {
                  v47 = v42 + (((v41 + 1) * v41) >> 1);
                }

                else
                {
                  v45 = v42 + 1;
                  v47 = v41 + (((v42 + 1) * v42) >> 1);
                }

                v43 = v43 + v106[v47] * v46;
                v42 = v45;
              }

              while (v45 != 12);
              v103[v41++] = v43;
            }

            while (v44 != 12);
            v48 = 0;
            v49 = 0.0;
            do
            {
              v50 = vmulq_f64(*&v107[v48], *&v103[v48]);
              v49 = v49 + v50.f64[0] + v50.f64[1];
              v48 += 2;
            }

            while (v48 != 12);
            v51 = v34 * v34 * (*&v105 * *&v105 + *(&v104 + 1) * *(&v104 + 1) + *(&v105 + 1) * *(&v105 + 1));
            v52 = v34 * ((v81.f64[1] * *&v105 + *(&v104 + 1) * v81.f64[0] + *(&v105 + 1) * v26) * -2.0);
            v53 = (a10 + 24);
            if (v77 <= 0.001)
            {
              v53 = (a10 + 16);
            }

            v54 = (v30 * v30 - *v53 * *v53) * (v51 * -4.0) + v52 * v52;
            if (v54 >= 0.0)
            {
              v56 = sqrt(v54);
              v57 = 0.0;
              v58 = v51 + v51;
              v59 = 0.0;
              if (vabdd_f64(v56, v52) > 0.01)
              {
                v59 = v58 / (v56 - v52);
              }

              v60 = -v52;
              if (vabdd_f64(v60, v56) > 0.01)
              {
                v57 = v58 / (v60 - v56);
              }

              if (v59 <= v57)
              {
                v61 = v57;
              }

              else
              {
                v61 = v59;
              }

              v62 = v61 <= v49;
              v82 = v61 > v49;
              v63 = v61 - v49;
              if (!v62)
              {
                v36 = v63;
              }
            }

            else
            {
              v82 = 0;
            }

            memcpy(a6, __dst, 0x2D8uLL);
            v95 = 0.0;
            memset(v102, 0, 104);
            memset(v101, 0, sizeof(v101));
            umeas(a6, 0xCu, v36, v107, v102, v101, &v95, 1.0e20);
            *(a10 + 1) = 1;
            v64 = *(a10 + 16);
            v65 = *(a10 + 24);
            v66 = Get_GNSS_SV_Str(v80);
            EvLog_v("NK_Apply_Speed_Constraint:  Applied,  Limits %f %f  Pre_Speed %f  %s  Obs %d  Opt? %d", v64, v65, v30, v66, v72, v82);
            result = *v93;
            if (v93[0] == 3)
            {
              ++*(a10 + 33);
              v12 = a9;
            }

            else
            {
              v12 = a9;
              if (v93[0] == 2)
              {
                ++*(a10 + 34);
              }

              else if (v93[0] == 1)
              {
                ++*(a10 + 32);
              }
            }

            goto LABEL_33;
          }

          v55 = Get_GNSS_SV_Str(v80);
          EvLog_v("NK_Apply_Speed_Constraint:  Ignored, Limits %f %f  Pre_Speed %f  %s  Obs %d  PM_Innov %f  PM_Sig %f  Ratio %f", v32, v31, v30, v55, v71, v34, sqrt(v36), sqrt(v37));
          v12 = a9;
LABEL_32:
          result = *v93;
LABEL_33:
          v24 = v20 & v18;
          v20 = 0;
          if ((v24 & 1) == 0)
          {
            v13 = v69;
            v14 = v92;
            break;
          }
        }
      }

      ++v16;
    }

    while (v16 != 128);
    if (!v85 || v86 >= 5 && (v85 == 1 || v86 != 5))
    {
      break;
    }

    result = EvLog_v("NK_SV_Meas_Update: Edits unreliable, repeating to add back edits,  Obs %d  Num_Added %d  Num_Rejected %d", v68, v86, v85);
    v14 = v92;
    v15 = 0;
    v73 = 1;
  }

  while ((v17 & 1) != 0);
  v67 = *MEMORY[0x29EDCA608];
  return result;
}

char *NK_Reduce_Num_SV(char *result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v4 = result;
  v5 = 0;
  v64 = *MEMORY[0x29EDCA608];
  v6 = a3 + 36579;
  v7 = a3 + 21675;
  v8 = a3 + 6771;
  v9 = vdupq_n_s16(0x630u);
  v10 = a3 + 308;
  v11.i64[0] = 0x6000600060006;
  v11.i64[1] = 0x6000600060006;
  v12 = vdupq_n_s16(0xCCCDu);
  memset(v63, 0, 512);
  v13.i64[0] = 0x32003200320032;
  v13.i64[1] = 0x32003200320032;
  v14 = vdupq_n_s16(0x3B6u);
  do
  {
    v15 = *&v10[v5 / 4];
    v16 = vcgtq_u16(v15, v9);
    v17 = vmulq_s16(v15, v11);
    *(&v63[v5 / 0x10 + 32] + 8) = vbslq_s8(v16, v14, vmaxq_u16(vshrq_n_u16(vuzp2q_s16(vmull_u16(*v17.i8, *v12.i8), vmull_high_u16(v17, v12)), 3uLL), v13));
    v5 += 16;
  }

  while (v5 != 256);
  v18 = a3[468];
  v19 = result + 3168;
  if (v18)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = a3 + 1770;
    do
    {
      if (*(v24 + v20) == 1 && (*(v63 + v20) - 1) >= 0x1E)
      {
        if (*&v19[2 * v20] >= *(&v63[32] + v20 + 4))
        {
          ++v23;
        }

        else
        {
          ++v21;
          v22 += *(a3 + v20 + 57);
        }
      }

      ++v20;
    }

    while (v20 != 128);
    if (v22 <= 3 && v23)
    {
      for (i = 0; i != 128; ++i)
      {
        if (*(v24 + i) == 1 && *&v19[2 * i] > *(&v63[32] + i + 4))
        {
          *(v63 + i) = 7;
        }
      }
    }

    if (v18 == 1 && !v21 && v23)
    {
      if (*(a2 + 27250) == 1)
      {
        v26 = 0;
        v58 = a2;
        v59 = a4 + 576;
        while (1)
        {
          v27 = &v4[4 * v26];
          result = Is_Legal(*(v27 + 24));
          if (result)
          {
            v28 = &v4[2 * v26];
            if (*(v10 + v26) >= 0x28Bu)
            {
              v29 = *(&v63[32] + v26 + 4);
LABEL_27:
              *(a4 + v26 + 448) = 13;
              *(v59 + 4 * v26) = *a3;
              GNSS_SV_Str = Get_GNSS_SV_Str(*(v27 + 24));
              result = EvLog_v("ChanReset %d : NKRNSV  %s   M_Status %x  SNR %d  Loop_DRL %d > %d ", v26, GNSS_SV_Str, *(v28 + 496), v4[v26 + 1760], *(v28 + 1584), v29);
              goto LABEL_28;
            }

            v29 = *(&v63[32] + v26 + 4);
            if (*(v28 + 1584) > v29)
            {
              goto LABEL_27;
            }
          }

LABEL_28:
          if (++v26 == 128)
          {
            v18 = a3[468];
            a2 = v58;
            goto LABEL_30;
          }
        }
      }
    }

    else
    {
LABEL_30:
      if (v18 != 1)
      {
        goto LABEL_86;
      }
    }

    if (*(a2 + 27250) == 1)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = v4 + 1760;
      do
      {
        if (*(v24 + v31) == 1 && (*(v63 + v31) - 1) >= 0x1E)
        {
          ++v35;
          v37 = v36[v31];
          if (v37 < 0xD)
          {
            ++v34;
          }

          if (v37 > 0xE)
          {
            ++v33;
          }

          if (v37 > 0x11)
          {
            ++v32;
          }
        }

        ++v31;
      }

      while (v31 != 128);
      if (v34 && (v35 < 3 || v35 - v34 >= 5 && (v33 > 1 || v32)))
      {
        for (j = 0; j != 128; ++j)
        {
          if (*(v24 + j) == 1 && v36[j] <= 0xCu)
          {
            *(v63 + j) = 8;
          }
        }
      }
    }

    v40 = 0;
    v41 = 0;
    v42 = (v4 + 2656);
    v43 = (v4 + 2016);
    v44 = a3;
    do
    {
      if (*(v44 + 7080) == 1 && (*(v63 + v40) - 1) >= 0x1E && *(v44 + 57) == 1 && *(v42 - 128) >= 0xC8u && *v42 >= 0xC8u && *(v43 - 256) - *v43 > 2)
      {
        ++v41;
      }

      v44 = (v44 + 1);
      v40 += 4;
      ++v42;
      ++v43;
    }

    while (v40 != 512);
    if (v41 <= 2)
    {
      v45 = 0;
      v46 = 0;
      do
      {
        if (*(v24 + v45) == 1 && (*(v63 + v45) - 1) >= 0x1E)
        {
          if (v4[v45 + 1760] > 0xDu || v46 > 1)
          {
            goto LABEL_86;
          }

          v62[v46++] = v45;
        }

        ++v45;
      }

      while (v45 != 128);
      if (v46 >= 1)
      {
        if (v46 >= 2)
        {
          v48 = 2;
        }

        else
        {
          v48 = v46;
        }

        v49 = v62;
        do
        {
          v50 = *v49++;
          *(v63 + v50) = 10;
          --v48;
        }

        while (v48);
      }
    }
  }

  else
  {
    for (k = 0; k != 128; ++k)
    {
      result = Is_Legal(*&v19[4 * k - 3072]);
      if (result && (*(v63 + k) - 1) >= 0x1E && *&v19[2 * k] > *(&v63[32] + k + 4))
      {
        *(v63 + k) = 6;
      }
    }
  }

LABEL_86:
  v51 = 0;
  v52 = a3 + 1770;
  v53 = a3 + 5496;
  v54 = v7 + 565;
  v55 = a3 + 9222;
  do
  {
    v56 = *(v63 + v51);
    if ((v56 - 1) <= 0x1D)
    {
      if (*(v52 + v51) == 1)
      {
        *(v52 + v51) = 0;
        --*v8;
        ++v8[1];
        a3[v51 + 1834] = v56;
      }

      if (*(v53 + v51) == 1)
      {
        *(v53 + v51) = 0;
        --*v7;
        ++v7[1];
        *v54 = v56;
      }

      if (*(v55 + v51) == 1)
      {
        *(v55 + v51) = 0;
        --*v6;
        ++v6[1];
        v54[3726] = v56;
      }
    }

    ++v51;
    ++v54;
  }

  while (v51 != 128);
  v57 = *MEMORY[0x29EDCA608];
  return result;
}

double BDS_EphReal2Kep(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x29EDCA608];
  *a2 = *a1;
  *(a2 + 8) = 4;
  *(a2 + 12) = *(a1 + 8);
  v2 = *(a1 + 10);
  *(a2 + 13) = v2;
  *(a2 + 14) = *(a1 + 9);
  v3 = !*(a1 + 232) && !*(a1 + 233) && *(a1 + 234) == 0;
  *(a2 + 16) = v3;
  v4 = !*(a1 + 235) && !*(a1 + 236) && *(a1 + 237) == 0;
  *(a2 + 17) = v4;
  *(a2 + 18) = *(a1 + 11);
  v5 = *(a1 + 238);
  if (v5 >= 14)
  {
    LOBYTE(v5) = 14;
  }

  *(a2 + 19) = v5;
  *(a2 + 20) = *(a1 + 192);
  v6 = *(a1 + 16);
  *(a2 + 22) = v6 + 1356;
  v8 = *(a1 + 20);
  v7 = *(a1 + 24);
  v9 = v7 + 14;
  *(a2 + 24) = v7 + 14;
  *(a2 + 28) = v8 + 14;
  v10 = *(a1 + 28);
  *(a2 + 32) = v10 + 14;
  if (v8 + 14 <= 604799)
  {
    if (v9 <= 604799)
    {
      goto LABEL_15;
    }
  }

  else
  {
    *(a2 + 28) = v8 - 604786;
    if (v9 <= 604799)
    {
      goto LABEL_14;
    }
  }

  *(a2 + 24) = v7 - 604786;
LABEL_14:
  *(a2 + 22) = v6 + 1357;
LABEL_15:
  if (v10 + 14 > 604799)
  {
    *(a2 + 32) = v10 - 604786;
  }

  *(a2 + 40) = *(a1 + 168);
  v11 = *(a1 + 200);
  v12 = *(a1 + 208);
  *(a2 + 56) = *(a1 + 184);
  *(a2 + 64) = v11;
  v13 = *(a1 + 224);
  *(a2 + 72) = v11 + *(a1 + 216);
  *(a2 + 80) = v12;
  *(a2 + 88) = v12 + v13;
  *(a2 + 96) = v11;
  v14 = dbl_2990516D0[(v2 - 1) < 2];
  *(a2 + 104) = *(a1 + 48);
  *(a2 + 120) = vextq_s8(*(a1 + 136), *(a1 + 136), 8uLL);
  *(a2 + 136) = vextq_s8(*(a1 + 152), *(a1 + 152), 8uLL);
  *(a2 + 152) = vextq_s8(*(a1 + 120), *(a1 + 120), 8uLL);
  v15 = *(a1 + 64);
  *(a2 + 168) = *(a1 + 112);
  *(a2 + 176) = v15;
  v16 = *(a1 + 40);
  *(a2 + 184) = sqrt(v14 + *(a1 + 32));
  *(a2 + 192) = v16;
  v17 = *(a1 + 88);
  *(a2 + 208) = *(a1 + 96);
  *(a2 + 216) = vextq_s8(*(a1 + 72), *(a1 + 72), 8uLL);
  *(a2 + 232) = *(a1 + 104);
  result = v17 + 0.0010208961;
  *(a2 + 200) = result;
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

double *rnk1_core(double *result, unsigned int a2, double a3, double *a4, int *a5)
{
  v27 = *MEMORY[0x29EDCA608];
  *a5 = 0;
  if (a2 < 2)
  {
LABEL_15:
    *result = *result + a3 * *a4 * *a4;
    goto LABEL_16;
  }

  v5 = result - 1;
  v6 = (a2 + a2 * a2) >> 1;
  v7 = a2;
  v8 = v6 - a2 + 1;
  v9 = 1 - a2;
  v10 = a2 - 1;
  while (1)
  {
    v11 = a4[v7 - 1];
    v12 = v5[v6];
    v13 = v12 + a3 * v11 * v11;
    if (v13 <= 6.0e-38)
    {
      break;
    }

    v14 = a3 * v11 / v13;
    v15 = v12 / v13;
    v5[v6] = v13;
    v16 = -v11;
    v17 = v8;
    v18 = a4;
    v19 = v10;
    v20 = v8;
    v21 = a4;
    v22 = v10;
    if (v12 / v13 >= 0.0625)
    {
      do
      {
        v25 = *v18 + v16 * v5[v17];
        *v18++ = v25;
        v5[v17] = v5[v17] + v14 * v25;
        ++v17;
        --v19;
      }

      while (v19);
    }

    else
    {
      do
      {
        v23 = v5[v20];
        v24 = *v21 + v16 * v23;
        v5[v20] = v14 * *v21 + v23 * v15;
        *v21++ = v24;
        ++v20;
        --v22;
      }

      while (v22);
    }

    a3 = a3 * v15;
    v6 -= v7--;
    v8 += v9++;
    --v10;
    if ((v7 & 0xFFFFFFFE) == 0)
    {
      goto LABEL_15;
    }
  }

  if (v13 >= 0.0)
  {
    *a5 = -1;
    v7 = v7;
    if (v7 <= 1uLL)
    {
      v7 = 1;
    }

    do
    {
      v5[v8++] = 0.0;
      --v7;
    }

    while (v7);
    goto LABEL_15;
  }

  *a5 = v7;
LABEL_16:
  v26 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL NK_PrePro_SV_Meas(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12)
{
  v17 = a11;
  v208[5] = *MEMORY[0x29EDCA608];
  v18 = (a12 + 60216);
  v172 = HIDWORD(a1);
  memset(v205, 0, sizeof(v205));
  if (a11[241])
  {
    goto LABEL_9;
  }

  v19 = 0;
  if (!(a11[20106] | a11[20104] | a11[20120]) || (a11[20105] & 1) == 0)
  {
    goto LABEL_10;
  }

  if (*(a11 + 122) || *(a12 + 24) != 1)
  {
LABEL_9:
    v19 = 0;
  }

  else
  {
    v19 = 0;
    if (*(a12 + 16) < *(a11 + 4) && a1 <= 5)
    {
      v19 = fabs(*(a7 + 112)) < 2.5;
    }
  }

LABEL_10:
  v174 = v19;
  v20 = 0;
  v202 = 0.0;
  v203 = 0.0;
  v21 = (a4 + 96);
  memset(v208, 0, 32);
  v22 = a4 + 1248;
  v195 = a4 + 1760;
  v206 = 0uLL;
  v207 = 0uLL;
  do
  {
    v23 = a4 + 4 * v20;
    v24 = *(v23 + 96);
    if (v24 && *(v23 + 1248) >= 11)
    {
      v25 = BYTE1(v24);
      ++*(&v202 + v25);
      *(v208 + v25) += *(a4 + v20 + 1760);
      *(&v206 + v25) += *(a4 + v20 + 1888);
    }

    ++v20;
  }

  while (v20 != 128);
  for (i = 0; i != 16; ++i)
  {
    v27 = *(&v202 + i);
    if (*(&v202 + i))
    {
      v28 = (*(v208 + i) + ((*(&v206 + i) + 8) >> 4));
      *(v208 + i) += (*(&v206 + i) + 8) >> 4;
      *(a12 + i + 2138) = v28 / v27;
    }
  }

  v29 = 0;
  v30 = a4 + 992;
  do
  {
    if (*(v30 + 4 * v29 - 896))
    {
      v31 = *(v30 + 2 * v29);
      if (v31 >= 0x1000)
      {
        v32 = 1 << ((v31 >> 12) - 1);
        if (v32 >= 0x800)
        {
          v32 = 2048;
        }

        if ((v31 & 0x300) != 0)
        {
          v33 = v32 >> 2;
        }

        else
        {
          v33 = 0;
        }

        *(a12 + 2 * v29 + 1232) = v33 + v32;
      }
    }

    ++v29;
  }

  while (v29 != 128);
  v187 = a11[241];
  v188 = (a12 + 6768);
  v180 = (a12 + 36576);
  v184 = (a12 + 21672);
  if ((*v18 & 1) == 0)
  {
LABEL_36:
    v193 = 0;
    goto LABEL_37;
  }

  if ((*(a12 + 60224) - 3) >= 2)
  {
    if (*(a12 + 60220) == 1)
    {
      v200 = *(a12 + 60240);
      v206 = v200;
      v34 = 0;
      if (*(a12 + 60344) == 1)
      {
        v34 = *(a12 + 60368);
      }

      *&v207 = v34;
      Geo2ECEF(&v206, &WGS84_Datum, v208);
      v35 = __sincos_stret(*&v200);
      v36 = __sincos_stret(*(&v200 + 1));
      v193 = 0;
      v14 = -v35.__sinval;
      v12 = -(v35.__cosval * v36.__cosval);
      v13 = -(v35.__cosval * v36.__sinval);
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v193 = 1;
LABEL_37:
  v37 = 0;
  v185 = 0;
  v201 = a12 + 62764;
  v38 = a12 + 63020;
  v179 = a4 + 2016;
  v190 = 0;
  v183 = a5;
  v198 = a4;
  v39 = 0.0;
  do
  {
    *(v201 + 2 * v37) = -1;
    *(v38 + 2 * v37) = -1;
    v40 = &v21[4 * v37];
    v41 = *v40;
    if (!Is_Legal(*v40))
    {
      goto LABEL_50;
    }

    if (v41 != 7)
    {
      *(v205 + v37) = 1;
      *(v201 + 2 * v37) = GNSS_Id_To_Num_Prn_Idx(v41);
      *(v38 + 2 * v37) = GNSS_Id_To_Num_Pos_Idx(*v40);
      goto LABEL_50;
    }

    v42 = GNSS_Id_To_Num_Prn_Idx(v41);
    v43 = (a5 + 34556);
    *(v201 + 2 * v37) = v42;
    v44 = 179;
    while (1)
    {
      *(v38 + 2 * v37) = v44;
      if (*(v43 - 3) == 1 && *v43 == v40[2])
      {
        break;
      }

      ++v44;
      v43 += 192;
      if (v44 == 197)
      {
        if (!*(v205 + v37) || *(v22 + 4 * v37) > 9)
        {
          goto LABEL_50;
        }

LABEL_49:
        *(v205 + v37) = 0;
        goto LABEL_50;
      }
    }

    *(v205 + v37) = 1;
    if (*(v22 + 4 * v37) < 10)
    {
      goto LABEL_49;
    }

    if (v44 >= 0xC5u)
    {
      gn_report_assertion_failure("NKPP: SVindexST");
    }

LABEL_50:
    v45 = *v40;
    if (Is_Legal(*v40) && *(v22 + 4 * v37) >= 10)
    {
      v46 = *(v38 + 2 * v37);
      if ((v46 & 0x80000000) == 0 && *(v205 + v37) == 1)
      {
        v47 = *v18;
        v48 = v18;
        v49 = a5 + 192 * v46;
        if (v47 == 1)
        {
          v50 = *(v48 + 1) == 1 ? v193 : 1;
          if ((v50 & 1) == 0 && v45 == 1)
          {
            v51 = *(v195 + v37);
            if (v51 >= 0x1A && *(v179 + v37) + 3 <= v51 && *(v49 + 176) >= 1)
            {
              for (j = 0; j != 3; ++j)
              {
                *(&v206 + j * 8) = *(v49 + j * 8) - v208[j];
              }

              v53 = 0.0;
              v54 = 2;
              do
              {
                v53 = v53 + *(&v206 + v54) * *(&v206 + v54);
                v55 = v54-- + 1;
              }

              while (v55 > 1);
              v56 = 0;
              v57 = 1.0 / sqrt(v53);
              do
              {
                *(&v202 + v56) = v57 * *(&v206 + v56);
                v56 += 8;
              }

              while (v56 != 24);
              if (v39 > -(v13 * v203 + v202 * v12 + v204 * v14))
              {
                v39 = -(v13 * v203 + v202 * v12 + v204 * v14);
              }
            }
          }
        }

        v58 = *(v201 + 2 * v37);
        ++*(a12 + 62520);
        ++*(a12 + 62523 + *v40);
        v60 = *(v49 + 176);
        v59 = (v49 + 176);
        if (v60 == 1)
        {
          ++*(a12 + 62522);
          ++*(a12 + 62531 + *v40);
        }

        v61 = *(a8 + v58);
        if (v61 == -99)
        {
          goto LABEL_79;
        }

        v62 = &a11[40 * v37 + 1920];
        if (*v62 != v61)
        {
          *v62 = v61;
          v63 = v61 * 0.0174532925;
          *(v62 + 24) = v63;
          *(v62 + 32) = v61;
          *(v62 + 8) = __sincos_stret(v63);
        }

        v17 = a11;
        if (!*v59)
        {
LABEL_79:
          v18 = (a12 + 60216);
        }

        else
        {
          v18 = (a12 + 60216);
          if (v61 > -6)
          {
            if (v61 <= 4)
            {
              v64 = v185;
            }

            else
            {
              v64 = v185 + 1;
            }

            v185 = v64;
          }

          else
          {
            ++v190;
            v187 = 1;
          }
        }

        if (v17[3] + 4 <= *(v195 + v37))
        {
          ++v18[2305];
        }
      }
    }

    ++v37;
  }

  while (v37 != 128);
  if (*v18)
  {
    v65 = *(v18 + 1) == 1 ? v193 : 1;
    if ((v65 & 1) == 0 && v39 < -0.258819045)
    {
      *(p_NA + 8) = 0;
      *v18 = 0;
      *(v18 + 540) = 26;
      v18[128] = 0;
      *(v18 + 544) = 26;
      EvLog_v("NK_PrePro_SV: Tracked SV Elev too negative, Clearing Not Trusted Ext Ref Pos");
      v66 = *(p_api + 48);
      if (*(v66 + 16) == 1)
      {
        v67 = a10;
        if (*v66 < 3)
        {
          v72 = 0;
          v68 = 0;
        }

        else
        {
          v68 = *(v66 + 40) + 604800 * *(v66 + 32);
          if (v68)
          {
            v69 = 0;
            v70 = v68 + 10800;
            v71 = v70 / 86400;
            v68 = v70 % 86400;
            v72 = v71 - 1461 * (((22967 * (v71 - 5839)) >> 25) + ((22967 * (v71 - 5839)) >> 31)) - 5838;
            goto LABEL_104;
          }

          v72 = 0;
        }

        v69 = 1;
      }

      else
      {
        v72 = 0;
        v68 = 0;
        v69 = 1;
        v67 = a10;
      }

LABEL_104:
      v73 = 0;
      v206 = 0uLL;
      *&v207 = 0;
      v74 = v67 + 17424;
      v75 = (v67 + 11984);
      do
      {
        if ((v69 & 1) != 0 || *(*(v67 + 17168) + v73) != 1)
        {
          v79 = *(v67 + 17328 + 4 * v73);
          if (v79 != 2139062143)
          {
            v80 = v79 + 7;
            v81 = *(v74 + 4 * v80);
            if (v81 != 2139062143 && (*(&v206 + v81 - 1) & 1) == 0)
            {
              *(v74 + 4 * v80) = 2139062143;
              *(v67 + 17480 + 4 * v80) = 0;
            }
          }
        }

        else
        {
          HIDWORD(v76) = *(v75 - 1);
          LODWORD(v76) = *v75;
          v77 = (v76 >> 26) & 0x7FF;
          if ((v77 - v72) > 730)
          {
            v72 += 1461;
          }

          v78 = v68 - 900 * (*(v75 - 15) & 0x7F) + 86400 * (v72 - v77);
          if (v78 < 0)
          {
            v78 = -v78;
          }

          if (v78 <= 0x707)
          {
            *(&v206 + v73) = 1;
          }
        }

        ++v73;
        v75 += 16;
      }

      while (v73 != 24);
      if ((v17[136] & 1) == 0)
      {
        EvCrt_v("NK_PrePro_SV_Meas:  KF_Reset %d (a) :  Ext Ref Pos Suspect,  Not Trusted and SV found < -15 deg elev", 97);
        v17[136] = 1;
        *(v17 + 35) = 92;
        *(a12 + 1864) = 0;
        v17[241] = 1;
        *(a8 + 655) = 1;
      }
    }
  }

  if (!v190 || *(a12 + 1864) != 1)
  {
    goto LABEL_142;
  }

  if (*(a12 + 60216) != 1 || *(a12 + 60220) != 1)
  {
    v84 = a11;
    v82 = a12;
    v85 = v185;
    if (v190 != 1 && v185 < 0xC)
    {
      v86 = 0;
      goto LABEL_129;
    }

LABEL_130:
    v87 = 0;
    v88 = v84 + 14208;
    do
    {
      v89 = v198 + 4 * v87;
      v90 = *(v89 + 96);
      if (Is_Legal(v90))
      {
        v91 = *(a8 + GNSS_Id_To_Num_Prn_Idx(v90));
        v92 = *(v89 + 1248) >= 10 && v91 <= -6;
        if (v92 && v91 != -99)
        {
          v88[v87] = 0;
          if ((v193 & 1) != 0 || *(v195 + v87) <= 0x18u)
          {
            *(a9 + v87 + 448) = 17;
            *(a9 + 576 + 4 * v87) = *a12;
            GNSS_SV_Str = Get_GNSS_SV_Str(*(v89 + 96));
            EvCrt_v("ChanReset %d : NKPrePro1  %s  SV tracked below horizon!  SNR %d  QI %d  Elev %d  Trust_RefPos %d", v87, GNSS_SV_Str, *(v195 + v87), *(v89 + 1248), v91, v193);
          }
        }
      }

      ++v87;
    }

    while (v87 != 128);
    goto LABEL_142;
  }

  v82 = a12;
  v83 = Horiz_Diff_Sqd((a12 + 1704), (a12 + 60240));
  v84 = a11;
  v85 = v185;
  if (v83 <= 2500000000.0)
  {
    goto LABEL_130;
  }

  v86 = 1;
LABEL_129:
  EvCrt_v("NK_PrePro_SV_Meas:  KF_Reset %d (b) :  Ext Ref Pos Suspect,  Ext_Pos %d  Bad_Pos %d  %d < -5deg  %d >= 5deg", 97, v86, v86, v190, v85);
  v84[136] = 1;
  *(v84 + 35) = 97;
  *(v82 + 1864) = 0;
  v84[241] = 1;
  *(a8 + 655) = 1;
LABEL_142:
  v94 = 0;
  v186 = a7 + 265;
  v173 = a7 + 544;
  v95 = v198;
  v194 = a11 + 15624;
  v192 = a11 + 24384;
  v191 = a11 + 24512;
  v96 = (v198 + 2400);
  v97 = a12 + 6824;
  v98 = (v198 + 2912);
  v199 = a12 + 36632;
  v178 = (a12 + 36577);
  v182 = (a12 + 21673);
  v99 = (v198 + 97);
  v100 = 62764;
  v196 = a12 + 21728;
  do
  {
    v101 = v95 + 4 * v94;
    v102 = *(v101 + 96);
    if (Is_Legal(v102))
    {
      v103 = GNSS_Id_To_Num_Prn_Idx(v102);
      v104 = *v99;
      v92 = v104 > 0xF;
      v105 = (1 << v104) & 0xDD77;
      if (v92 || v105 == 0)
      {
        v95 = v198;
        v107 = a12 + 21728;
        if (*(a3 + v103) == 1)
        {
          v108 = v173;
          goto LABEL_150;
        }
      }

      else
      {
        v95 = v198;
        v107 = a12 + 21728;
        if (*(a2 + v103) == 1)
        {
          v108 = v186;
LABEL_150:
          v109 = *(v108 + v103);
          goto LABEL_155;
        }
      }

      v109 = 1;
    }

    else
    {
      v109 = 1;
      v95 = v198;
      v107 = a12 + 21728;
    }

LABEL_155:
    if (*(v101 + 96) == *&v194[4 * v94])
    {
      *(v97 + v94 + 1024) = v192[v94];
      *(v107 + v94 + 1024) = v191[v94];
      v110 = a11[v94 + 24640];
      v111 = (a12 + 37656);
    }

    else
    {
      v110 = 0;
      v192[v94] = 0;
      v191[v94] = 0;
      v111 = a11 + 24640;
    }

    v111[v94] = v110;
    v112 = *(v101 + 1248);
    if (v112 < 11 || (v113 = *(v95 + v94 + 1760), v113 < a11[3]))
    {
      *(v97 + v94) = 0;
LABEL_161:
      *(v107 + v94) = 0;
      goto LABEL_162;
    }

    v114 = (*v96 < *(a11 + 5)) | v109;
    if ((v114 | v187))
    {
      *(v97 + v94) = (v114 & 1) == 0;
      if (v114)
      {
        goto LABEL_161;
      }
    }

    else if ((v113 < 0x24 || *(a12 + 1872)) && (v115 = *(a8 + *(a12 + v100)), v115 != -99))
    {
      v118 = *a11;
      *(v97 + v94) = v115 >= v118;
      if (v115 < v118)
      {
        goto LABEL_161;
      }
    }

    else
    {
      *(v97 + v94) = 1;
    }

    ++*v188;
    if (*(a12 + v94 + 2416) == 1)
    {
      ++*(a12 + 6769);
    }

    v116 = !v174;
    if (v112 < 0xF)
    {
      v116 = 1;
    }

    if (v116)
    {
      if (v112 >= 0xD)
      {
LABEL_188:
        if (v96[128] >= *(a11 + 6))
        {
          *(v107 + v94) = 1;
          ++*v184;
          if (*(a12 + v94 + 2544) == 1)
          {
            ++*v182;
          }
        }
      }

LABEL_162:
      *(v199 + v94) = 0;
      goto LABEL_163;
    }

    if (*(v95 + v94 + 1760) < a11[4])
    {
      goto LABEL_188;
    }

    if (v96[256] < *(a11 + 7))
    {
      goto LABEL_188;
    }

    if (v194[v94 + 1280] != 1)
    {
      goto LABEL_188;
    }

    if (a11[v94 + 25792] != 1)
    {
      goto LABEL_188;
    }

    if (*(v101 + 96) != *&v194[4 * v94])
    {
      goto LABEL_188;
    }

    v117 = v183 + 192 * *(a12 + v100 + 256);
    if (*(v117 + 166) != *&v194[2 * v94 + 1024] || *(v117 + 176) != 1 || *(v199 + v94) != 1)
    {
      goto LABEL_188;
    }

    *(v199 + v94) = 1;
    ++*v180;
    if (*(a12 + v94 + 2544) == 1)
    {
      ++*v178;
    }

LABEL_163:
    ++v94;
    v99 += 4;
    v100 += 2;
    ++v96;
  }

  while (v94 != 128);
  v119 = a12 + 2544;
  if (a1 >= 2)
  {
    if (*(a12 + 6769) <= 3u && *v188 >= 4u)
    {
      *(a12 + 6769) = 0;
      *(a12 + 2416) = 0u;
      *(a12 + 2432) = 0u;
      *(a12 + 2448) = 0u;
      *(a12 + 2464) = 0u;
      *(a12 + 2480) = 0u;
      *(a12 + 2496) = 0u;
      *(a12 + 2512) = 0u;
      *(a12 + 2528) = 0u;
    }

    if (*v178 + *v182 <= 3 && *v180 + *v184 >= 4)
    {
      *v182 = 0;
      *v178 = 0;
      *(a12 + 2544) = 0u;
      *(a12 + 2560) = 0u;
      *(a12 + 2576) = 0u;
      *(a12 + 2592) = 0u;
      *(a12 + 2608) = 0u;
      *(a12 + 2624) = 0u;
      *(a12 + 2640) = 0u;
      *(a12 + 2656) = 0u;
    }
  }

  if (*(a11 + 122) && *v184)
  {
    --*(a11 + 122);
  }

  v120 = a11[2];
  if (a11[2])
  {
    if (*(a12 + 6769) >= v120)
    {
      EvLog("NK_PrePro_SV_Meas:  Disabling pseudoranges without differential corrections");
      v121 = 0;
      v122 = a12 + 2416;
      do
      {
        if ((*(v122 + v121) & 1) == 0)
        {
          *(v97 + v121) = 0;
          if (g_Logging_Cfg >= 5)
          {
            v123 = Get_GNSS_SV_Str(*&v21[4 * v121]);
            EvLog_v("NK_PrePro_SV_Meas:  %d  %s  Remove SV", v121, v123);
            v122 = a12 + 2416;
          }
        }

        ++v121;
      }

      while (v121 != 128);
      v120 = a11[2];
      v107 = a12 + 21728;
      v119 = a12 + 2544;
    }

    if (*v178 + *v182 >= v120)
    {
      for (k = 0; k != 128; ++k)
      {
        if ((*(v119 + k) & 1) == 0)
        {
          *(v107 + k) = 0;
          *(v199 + k) = 0;
        }
      }
    }
  }

  if ((a11[1] & 0x80000000) == 0)
  {
    v125 = a11[1];
    v126 = *v188;
    if (v126 > v125)
    {
      EvLog_v("NK_PrePro_SV_Meas:  Reducing available pseudoranges  %d > %d", *v188, v125);
      v126 = *v188;
      v125 = a11[1];
    }

    if (v126 > v125)
    {
      v127 = 0;
      v128 = 0;
      v129 = 91;
      while (1)
      {
        if (*(v97 + v127) == 1)
        {
          v130 = *(a8 + *(v201 + 2 * v127));
          v131 = v129;
          if (v129 >= v130)
          {
            v129 = *(a8 + *(v201 + 2 * v127));
          }

          if (v131 > v130)
          {
            v128 = v127;
          }
        }

        if (++v127 == 128)
        {
          v132 = Get_GNSS_SV_Str(*&v21[4 * v128]);
          EvDbg_v("NK_PrePro_SV_Meas:  %d  %s  Removing low elev %d deg PR", v128, v132, v129);
          v127 = 0;
          *(v97 + v128) = 0;
          v133 = *v188 - 1;
          *v188 = v133;
          v129 = 91;
          v128 = 0;
          if (a11[1] >= v133)
          {
            break;
          }
        }
      }
    }
  }

  v134 = 0;
  v135 = a12 + 36632;
  do
  {
    v136 = *&v21[4 * v134];
    if (Is_Legal(v136))
    {
      v137 = *(a6 + 5976 + GNSS_Id_To_Num_Prn_Idx(v136));
      if ((v137 & 0x8000000000000000) == 0)
      {
        v138 = a6 + 72 + 48 * v137;
        if (*(v138 + 4) == 1 && *(v135 + v134) == 1 && fabs(*(a12 + 8 * v134 + 208) / (*(a12 + 1552) * 0.190293673) + *(v138 + 22)) > 15.0)
        {
          *(v135 + v134) = 0;
          *(v196 + v134) = 1;
        }
      }
    }

    ++v134;
  }

  while (v134 != 128);
  v139 = 0;
  *v188 = 0;
  *v184 = 0;
  v140 = v198 + 608;
  *v180 = 0;
  *(a12 + 1881) = 0;
  v141 = a11 + 15408;
  v142 = a11 + 15400;
  LOWORD(v206) = 0;
  while (2)
  {
    if (*(v97 + v139) == 1)
    {
      ++*v188;
      if (*(a12 + v139 + 2416) == 1)
      {
        ++*(a12 + 6769);
      }

      if (*(v196 + v139) == 1)
      {
        ++*v184;
        v143 = (a12 + 21673);
        if ((*(a12 + v139 + 2544) & 1) == 0)
        {
          goto LABEL_247;
        }

LABEL_246:
        ++*v143;
      }

      else if (*(v199 + v139) == 1)
      {
        ++*v180;
        v143 = (a12 + 36577);
        if (*(a12 + v139 + 2544) == 1)
        {
          goto LABEL_246;
        }
      }

LABEL_247:
      v144 = *(v198 + v139 + 608);
      v145 = *(v198 + v139 + 1760);
      if (v145 > *(&v206 + v144))
      {
        *(&v206 + v144) = v145;
        if (v145 >= v141[v144] && (*v98 > 0x64u || *(v98 - 128) >= 0x259u) && *(v198 + v139 + 2016) + 6 <= v145)
        {
          v141[v144] = v145;
          *&v142[4 * v144] = *a12;
        }
      }
    }

    else
    {
      *(v196 + v139) = 0;
      *(v199 + v139) = 0;
    }

    ++v139;
    ++v98;
    if (v139 != 128)
    {
      continue;
    }

    break;
  }

  v146 = 0;
  v147 = v206;
  if (v206 <= BYTE1(v206))
  {
    v147 = BYTE1(v206);
  }

  *(a12 + 1881) = v147;
  LOWORD(v202) = 0;
  v148 = 1;
  do
  {
    v149 = v148;
    v150 = v141[v146];
    if (v150 >= 0x13 && *a12 - *&v142[4 * v146] >= 20001)
    {
      LOBYTE(v150) = v150 - 1;
      v141[v146] = v150;
      *&v142[4 * v146] = *a12;
    }

    v148 = 0;
    v151 = v150;
    v152 = v150 - 10;
    if (v151 <= 0x2C)
    {
      v152 = 34;
    }

    *(&v202 + v146) = v152;
    v146 = 1;
  }

  while ((v149 & 1) != 0);
  for (m = 0; m != 128; ++m)
  {
    v154 = *(v198 + 4 * m + 1248) >= 10 && *(v198 + m + 1760) >= *(&v202 + *(v198 + m + 608));
    *(a12 + 2010 + m) = v154;
  }

  for (n = 0; n != 128; ++n)
  {
    v156 = *(v140 + 4 * n - 512);
    if (Is_Legal(v156))
    {
      v157 = *(v140 + n);
      v158 = *(a8 + GNSS_Id_To_Num_Prn_Idx(v156));
      v159 = v141[v157];
      if ((v158 - 48) >= 0xCAu)
      {
        v159 -= (50 - v158) / 3u;
        if (v159 <= 2)
        {
          LOBYTE(v159) = 2;
        }
      }

      *(a12 + 1882 + n) = v159 - 2;
    }
  }

  v160 = 0;
  *(a12 + 63276) = 0;
  do
  {
    if (*(v97 + v160) == 1 && (*(v38 + 2 * v160) & 0x8000000000000000) == 0 && *(v183 + 192 * *(v38 + 2 * v160) + 176) == 1)
    {
      ++*(a12 + 63276 + *v21);
    }

    ++v160;
    v21 += 4;
  }

  while (v160 != 128);
  v161 = 0x4415AF1D78B58C40;
  if ((a11[241] & 1) == 0)
  {
    if (a1 == v172)
    {
      goto LABEL_283;
    }

    if (a1 <= 2)
    {
      if (!a1)
      {
        goto LABEL_284;
      }

      if (a1 == 1)
      {
        if (!v172)
        {
          goto LABEL_283;
        }
      }

      else if (a1 != 2 || !(a1 >> 33))
      {
        goto LABEL_283;
      }
    }

    else if (a1 > 4)
    {
      if (a1 == 5)
      {
        if ((v172 & 0xFFFFFFFE) != 6)
        {
          goto LABEL_283;
        }
      }

      else if (a1 != 6 || v172 != 7)
      {
        goto LABEL_283;
      }
    }

    else
    {
      if (a1 != 3)
      {
        if ((v172 - 5) < 3)
        {
          goto LABEL_284;
        }

LABEL_283:
        v161 = 0x4042000000000000;
        goto LABEL_284;
      }

      if (v172 <= 2)
      {
        goto LABEL_283;
      }
    }
  }

LABEL_284:
  *(a12 + 6776) = v161;
  *(a12 + 21680) = v161;
  *(a12 + 36584) = v161;
  v162 = *(a11 + 3372);
  if (v162 < 1.0)
  {
    v163 = 0x3FF0000000000000;
    goto LABEL_288;
  }

  if (v162 <= 10.0)
  {
    *(a12 + 6816) = v162;
  }

  else
  {
    v163 = 0x4024000000000000;
LABEL_288:
    *(a12 + 6816) = v163;
  }

  v164 = *(a11 + 3375);
  if (v164 < 1.0)
  {
    v165 = 0x3FF0000000000000;
    goto LABEL_299;
  }

  if (v164 <= 10.0)
  {
    *(a12 + 21720) = v164;
  }

  else
  {
    v165 = 0x4024000000000000;
LABEL_299:
    *(a12 + 21720) = v165;
  }

  v166 = *(a11 + 3378);
  if (v166 < 1.0)
  {
    v167 = 0x3FF0000000000000;
    goto LABEL_305;
  }

  if (v166 <= 10.0)
  {
    *(a12 + 36624) = v166;
  }

  else
  {
    v167 = 0x4024000000000000;
LABEL_305:
    *(a12 + 36624) = v167;
  }

  if (*v188)
  {
    v168 = 0;
    goto LABEL_311;
  }

  v169 = *(a11 + 40);
  if ((v169 & 0x80000000) == 0)
  {
    v168 = v169 + 1;
LABEL_311:
    *(a11 + 40) = v168;
  }

  result = *(a12 + 6769) != 0;
  v171 = *MEMORY[0x29EDCA608];
  return result;
}

void gnssDataMgt_Init(void)
{
  v1 = *MEMORY[0x29EDCA608];
  g_CbList = Gnm_ReceiveData;
  qword_2A13EC480 = Hal00_06ReadBufNtf;
  qword_2A13EC490 = GnssDbgMgr_WriteLog;
  off_2A13EC488 = GncP02_10DataIndFromMECB;
  v0 = *MEMORY[0x29EDCA608];
}

uint64_t gnss::GnssAdaptDevice::Ga07_04DeviceInitRespHndlr(gnss::GnssAdaptDevice *this, int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 3)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Init Status,%d\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 77, "Ga07_04DeviceInitRespHndlr", a2);
    gnssOsa_PrintLog(__str, 3, 1, 0);
  }

  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](__str, this + 56);
  gnss::GnssAdaptDevice::Ga07_06SetDefaultState(this, a2);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v8, __str);
  if (a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 8;
  }

  gnss::GnssAdaptDevice::Ga07_07AdaptResponse(this, v5, v8, "Ga07_04DeviceInitRespHndlr");
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v8);
  result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](__str);
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298FAC488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void gnss::GnssAdaptDevice::Ga07_06SetDefaultState(gnss::GnssAdaptDevice *this, char a2)
{
  v2 = this;
  v7 = *MEMORY[0x29EDCA608];
  *(this + 88) = a2;
  *(this + 89) = 0;
  *(this + 92) = 0;
  v5 = this + 144;
  v6 = 0;
  std::__fill_n_BOOL[abi:ne200100]<false,std::__bitset<1ul,8ul>>(&v5, 8uLL);
  std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::destroy(v2 + 96, *(v2 + 13));
  *(v2 + 12) = v2 + 104;
  *(v2 + 13) = 0;
  v3 = *(v2 + 16);
  v2 = (v2 + 128);
  *(v2 - 2) = 0;
  std::__tree<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>>>::destroy(v2 - 8, v3);
  *v2 = 0;
  *(v2 + 1) = 0;
  *(v2 - 1) = v2;
  v4 = *MEMORY[0x29EDCA608];
}

void sub_298FAC55C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t gnss::GnssAdaptDevice::Ga07_07AdaptResponse(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 160);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN4gnss15GnssAdaptDevice20Ga07_07AdaptResponseENS_6ResultENSt3__18functionIFvS1_EEEPKc_block_invoke;
  block[3] = &__block_descriptor_tmp_9;
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v10, a3);
  v11 = a2;
  v10[4] = a4;
  dispatch_async(v6, block);
  result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v10);
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void gnss::GnssAdaptDevice::Ga07_05HandleGnssHwStatusInd(uint64_t a1, char a2, int a3, char *__src)
{
  v25 = *MEMORY[0x29EDCA608];
  if (__src)
  {
    memset(v24, 0, 22);
    v23 = 0u;
    v22 = 0u;
    __str = 0u;
    memcpy_s("Ga07_05HandleGnssHwStatusInd", 107, &__str, 0x46u, __src, 0x46uLL);
    v16 = *(__src + 18);
    v17 = *(__src + 34);
    v18 = *(__src + 50);
    v19 = *(__src + 33);
    v15 = *(__src + 2);
    v7 = *(a1 + 152);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN4gnss15GnssAdaptDevice28Ga07_05HandleGnssHwStatusIndE11e_Gnm_ErrorjP17s_Gnm_ReadyStatus_block_invoke;
    block[3] = &__block_descriptor_tmp_2;
    block[4] = a1;
    v20 = a2;
    *&v14[14] = *(v24 + 14);
    v13 = v23;
    *v14 = v24[0];
    v11 = __str;
    v12 = v22;
    dispatch_async(v7, block);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(&__str, 0x3C6uLL);
    v8 = mach_continuous_time();
    snprintf(&__str, 0x3C5uLL, "%10u %s%c %s: #%04hx p_InitStatus\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "Ga07_05HandleGnssHwStatusInd", 513);
    gnssOsa_PrintLog(&__str, 1, 1, 0);
  }

  v9 = *MEMORY[0x29EDCA608];
}

uint64_t ___ZN4gnss15GnssAdaptDevice28Ga07_05HandleGnssHwStatusIndE11e_Gnm_ErrorjP17s_Gnm_ReadyStatus_block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v3 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v4 = 70;
    if (*(a1 + 40))
    {
      v4 = 84;
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Res,%u,HwStatus,%c,HWInitStatus,%hhu\n", v3, "ADP", 73, "Ga07_05HandleGnssHwStatusInd_block_invoke", *(a1 + 176), v4, *(a1 + 41));
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n");
      goto LABEL_14;
    }

LABEL_15:
    v14 = v2;
    v15 = 0;
    goto LABEL_16;
  }

  v5 = *(a1 + 126);
  v6 = *(a1 + 158);
  v22 = *(a1 + 142);
  v23 = v6;
  v24 = *(a1 + 174);
  *__str = *(a1 + 110);
  v21 = v5;
  gnss::GnssAdaptDevice::Ga00_10GnssSetHwVersionInfo(v2, __str);
  HalExtensions = gnss::GnssAdaptDevice::getHalExtensions(v2);
  v8 = (*(*HalExtensions + 16))(HalExtensions);
  if ((HSW_SetSWBuildGPSWKNum(v8) & 1) == 0)
  {
    goto LABEL_15;
  }

  v9 = gnss::GnssAdaptDevice::getHalExtensions(v2);
  v10 = (*(*v9 + 128))(v9);
  if ((HSW_SetCrossCorrelationCfg(v10, v11, v12, v13) & 1) == 0)
  {
    goto LABEL_15;
  }

  if (*(v2 + 90) == 1)
  {
    if (Gnm_ClearGNSSCache(0x10000))
    {
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v19 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ClearCache on reset,%u\n", v19);
LABEL_14:
        gnssOsa_PrintLog(__str, 1, 1, 0);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    if (gnssOsa_SemWaitTimeOut(*(v2 + 360), 0x1F4u))
    {
      if (!g_LbsOsaTrace_Config)
      {
        goto LABEL_15;
      }

      bzero(__str, 0x3C6uLL);
      mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ClearCache\n");
      goto LABEL_14;
    }
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v18 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Device Init success\n", (*&g_MacClockTicksToMsRelation * v18), "ADP", 73, "Ga07_05HandleGnssHwStatusInd_block_invoke");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v14 = v2;
  v15 = 1;
LABEL_16:
  result = gnss::GnssAdaptDevice::Ga07_04DeviceInitRespHndlr(v14, v15);
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

void ___ZN4gnss15GnssAdaptDevice20Ga07_07AdaptResponseENS_6ResultENSt3__18functionIFvS1_EEEPKc_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  std::function<void ()(gnss::Result)>::operator()(a1 + 32, *(a1 + 72));
  if (*(a1 + 64))
  {
    v2 = g_LbsOsaTrace_Config >= 5;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s: Result,%u\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "Ga07_07AdaptResponse_block_invoke", *(a1 + 64), *(a1 + 72));
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  v4 = *MEMORY[0x29EDCA608];
}

uint64_t gnss::GnssAdaptDevice::Ga07_09AdaptGnmEarlyResponse(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x29EDCA608];
  v7 = gnss::GnssAdaptDevice::Ga07_12MapGnmRespToGnssResult(a1, a2);
  v8 = *(a1 + 160);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN4gnss15GnssAdaptDevice28Ga07_09AdaptGnmEarlyResponseE11e_Gnm_ErrorNSt3__18functionIFvNS_6ResultEEEEPKc_block_invoke;
  block[3] = &__block_descriptor_tmp_12_0;
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v12, a3);
  v13 = v7;
  v12[4] = a4;
  dispatch_async(v8, block);
  result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v12);
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t gnss::GnssAdaptDevice::Ga07_12MapGnmRespToGnssResult(uint64_t a1, unsigned int a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a2 >= 0xF)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx No match,%u\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 87, "Ga07_12MapGnmRespToGnssResult", 257, a2);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    result = 7;
  }

  else
  {
    result = dword_2990516F8[a2];
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void ___ZN4gnss15GnssAdaptDevice28Ga07_09AdaptGnmEarlyResponseE11e_Gnm_ErrorNSt3__18functionIFvNS_6ResultEEEEPKc_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  std::function<void ()(gnss::Result)>::operator()(a1 + 32, *(a1 + 72));
  if (*(a1 + 64))
  {
    v2 = g_LbsOsaTrace_Config >= 5;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    bzero(__str, 0x3C6uLL);
    v3 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s: Result,%u\n", (*&g_MacClockTicksToMsRelation * v3), "ADP", 68, "Ga07_09AdaptGnmEarlyResponse_block_invoke", *(a1 + 64), *(a1 + 72));
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  v4 = *MEMORY[0x29EDCA608];
}

uint64_t gnss::GnssAdaptDevice::Ga07_10AddRespHndlToGnmLUT(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v9[4] = *MEMORY[0x29EDCA608];
  v7[0] = a2;
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v8, a3);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v9, a3 + 32);
  std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::__emplace_unique_key_args<e_Gnm_Api,std::pair<e_Gnm_Api,gnss::s_StatusCB>>(a1 + 96, v7);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v9);
  result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v8);
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298FACFD0(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v1 + 40);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::Ga07_11HandleGnmStatusResponses(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v32 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Type,%u,resp,%u\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 68, "Ga07_11HandleGnmStatusResponses", a3, a2);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  v28 = 0;
  v30 = 0;
  v7 = a1 + 104;
  v8 = *(a1 + 104);
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = a1 + 104;
  v10 = *(a1 + 104);
  do
  {
    v11 = *(v10 + 32);
    v12 = v11 >= a3;
    v13 = v11 < a3;
    if (v12)
    {
      v9 = v10;
    }

    v10 = *(v10 + 8 * v13);
  }

  while (v10);
  if (v9 != v7 && *(v9 + 32) <= a3)
  {
    v17 = a1 + 104;
    do
    {
      v18 = *(v8 + 32);
      v12 = v18 >= a3;
      v19 = v18 < a3;
      if (v12)
      {
        v17 = v8;
      }

      v8 = *(v8 + 8 * v19);
    }

    while (v8);
    if (v17 == v7 || *(v17 + 32) > a3)
    {
      v17 = a1 + 104;
    }

    std::function<void ()(gnss::Result)>::operator=(v27, v17 + 40);
    std::function<void ()(gnss::Result)>::operator=(v29, v17 + 72);
    v20 = *(v9 + 8);
    if (v20)
    {
      do
      {
        v21 = v20;
        v20 = *v20;
      }

      while (v20);
    }

    else
    {
      v22 = v9;
      do
      {
        v21 = v22[2];
        v23 = *v21 == v22;
        v22 = v21;
      }

      while (!v23);
    }

    if (*(a1 + 96) == v9)
    {
      *(a1 + 96) = v21;
    }

    v24 = *(a1 + 104);
    --*(a1 + 112);
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v24, v9);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v9 + 72);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v9 + 40);
    operator delete(v9);
    if (v28)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v26, v27);
      gnss::GnssAdaptDevice::Ga07_09AdaptGnmEarlyResponse(a1, a2, v26, "Ga07_11HandleGnmStatusResponses");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v26);
    }

    if (v30)
    {
      std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v25, v29);
      gnss::GnssAdaptDevice::Ga07_09AdaptGnmEarlyResponse(a1, a2, v25, "Ga07_11HandleGnmStatusResponses");
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v25);
    }

    if (a2 && a3 == 18)
    {
      *(a1 + 92) = 0;
    }
  }

  else
  {
LABEL_11:
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v14 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GnmLUT Handle not found\n", (*&g_MacClockTicksToMsRelation * v14), "ADP", 73, "Ga07_11HandleGnmStatusResponses");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v29);
  result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v27);
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298FAD2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a15);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a27);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

uint64_t gnss::GnssAdaptDevice::Ga07_13AddRespHndlToGnsLUT(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v7[4] = *MEMORY[0x29EDCA608];
  v6 = a2;
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v7, a3);
  std::__tree<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,std::function<void ()(gnss::Result)>>>(a1 + 120, &v6);
  result = std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v7);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void gnss::GnssAdaptDevice::Ga07_14RemoveRespHndlFromGnsLut(gnss::GnssAdaptDevice *this, unsigned int a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = this + 128;
  v3 = *(this + 16);
  if (v3)
  {
    v5 = (this + 120);
    v6 = v2;
    do
    {
      v7 = *(v3 + 8);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v6 = v3;
      }

      v3 = *&v3[8 * v9];
    }

    while (v3);
    if (v6 != v2 && *(v6 + 8) <= a2)
    {
      std::__tree<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>>>::__remove_node_pointer(v5, v6);
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100]((v6 + 5));
      operator delete(v6);
      if (g_LbsOsaTrace_Config < 5)
      {
        goto LABEL_12;
      }

      bzero(__str, 0x3C6uLL);
      v13 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GNS Key deleted from LUT,%d\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 68, "Ga07_14RemoveRespHndlFromGnsLut", a2);
      v11 = 5;
      goto LABEL_11;
    }
  }

  if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v10 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx GnsLUT Handle\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 87, "Ga07_14RemoveRespHndlFromGnsLut", 770);
    v11 = 2;
LABEL_11:
    gnssOsa_PrintLog(__str, v11, 1, 0);
  }

LABEL_12:
  v12 = *MEMORY[0x29EDCA608];
}

void gnss::GnssAdaptDevice::Ga07_15AdaptGnsEarlyResponse(uint64_t a1, unsigned int a2, uint64_t a3, const char *a4)
{
  v10 = *MEMORY[0x29EDCA608];
  v6 = gnss::GnssAdaptDevice::Ga07_16MapGnsRespToGnssResult(a1, a2);
  std::function<void ()(gnss::Result)>::operator()(a3, v6);
  if (a4 && g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s: Result,%u\n", (*&g_MacClockTicksToMsRelation * v7), "ADP", 68, "Ga07_15AdaptGnsEarlyResponse", a4, v6);
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  v8 = *MEMORY[0x29EDCA608];
}

uint64_t gnss::GnssAdaptDevice::Ga07_16MapGnsRespToGnssResult(uint64_t a1, unsigned int a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (a2 >= 0xF)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx No match,%u\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 87, "Ga07_16MapGnsRespToGnssResult", 770, a2);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    result = 7;
  }

  else
  {
    result = dword_299051734[a2];
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void gnss::GnssAdaptDevice::Ga07_17RegisterGnmStatusResponse(gnss::GnssAdaptDevice *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a1;
  v19 = *MEMORY[0x29EDCA608];
  DeviceInstance = gnss::GnssAdaptDevice::Ga00_00GetDeviceInstance(a1);
  if (DeviceInstance)
  {
    v7 = DeviceInstance;
    if (a4 != 16 && a4 != 1)
    {
      goto LABEL_10;
    }

    if (!gnssOsa_SemRelease(*(DeviceInstance + 360)) && g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx CtrlReqSem\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 87, "Ga07_17RegisterGnmStatusResponse", 257);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    v9 = atomic_load((v7 + 91));
    if (v9)
    {
      atomic_store(0, (v7 + 91));
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v10 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Internal resp. ignored\n", (*&g_MacClockTicksToMsRelation * v10), "ADP", 73, "Ga07_17RegisterGnmStatusResponse");
        v11 = 4;
LABEL_13:
        gnssOsa_PrintLog(__str, v11, 1, 0);
      }
    }

    else
    {
LABEL_10:
      v12 = *(v7 + 152);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 0x40000000;
      block[2] = ___ZN4gnss15GnssAdaptDevice32Ga07_17RegisterGnmStatusResponseE11e_Gnm_Errorbj9e_Gnm_Api_block_invoke;
      block[3] = &__block_descriptor_tmp_21;
      block[4] = v7;
      v16 = v5;
      v17 = a4;
      dispatch_async(v12, block);
    }
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v13 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Invalid Device Instance\n", (*&g_MacClockTicksToMsRelation * v13), "ADP", 69, "Ga07_17RegisterGnmStatusResponse", 513);
    v11 = 1;
    goto LABEL_13;
  }

  v14 = *MEMORY[0x29EDCA608];
}

uint64_t ___ZN4gnss15GnssAdaptDevice32Ga07_17RegisterGnmStatusResponseE11e_Gnm_Errorbj9e_Gnm_Api_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);

  return gnss::GnssAdaptDevice::Ga07_11HandleGnmStatusResponses(v2, v3, v4);
}

uint64_t *std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::__emplace_unique_key_args<e_Gnm_Api,std::pair<e_Gnm_Api,gnss::s_StatusCB>>(uint64_t a1, unsigned __int8 *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::__map_value_compare<e_Gnm_Api,std::__value_type<e_Gnm_Api,gnss::s_StatusCB>,std::less<e_Gnm_Api>,true>,std::allocator<std::__value_type<e_Gnm_Api,gnss::s_StatusCB>>>::__construct_node<std::pair<e_Gnm_Api,gnss::s_StatusCB>>();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
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
      break;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return v4;
}

void sub_298FADC78(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v38 = *MEMORY[0x29EDCA608];
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
    goto LABEL_71;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    goto LABEL_71;
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
      if (v19 && (v19[3] & 1) == 0)
      {
LABEL_57:
        v18 = v7;
      }

      else
      {
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
      goto LABEL_70;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_57;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_51;
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
    goto LABEL_66;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_51:
      *(v20 + 24) = 1;
      goto LABEL_71;
    }

    goto LABEL_49;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_66:
    v25 = v7;
    goto LABEL_67;
  }

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
LABEL_67:
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
LABEL_70:
  *(v29 + 16) = v30;
LABEL_71:
  v37 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,std::function<void ()(gnss::Result)>>>(uint64_t a1, unsigned int *a2)
{
  v8 = *MEMORY[0x29EDCA608];
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
      v5 = *(v2 + 32);
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
      break;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return v4;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v2 + 40);
    }

    operator delete(v2);
  }

  v3 = *MEMORY[0x29EDCA608];
  return a1;
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::function<void ()(gnss::Result)>>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v9 = *MEMORY[0x29EDCA608];
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
  v7 = *MEMORY[0x29EDCA608];
  return v3;
}

const void **SV_State_Update_Wrapper(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  GNSS_Validate_p_list(a1, "SV_State_Update_Wrapper: Entry");
  if (*a1 != 7)
  {
    v2 = *(a1 + 192);
    *v2 = 0;
    v2[1] = 0;
    GPS_State_Update(*(a1 + 152), *(a1 + 192), *(a1 + 48), *(a1 + 56), *(a1 + 32), *(a1 + 72), *(a1 + 80), *(a1 + 88));
    GLON_State_Update(*(a1 + 152), *(a1 + 192), *(a1 + 48), *(a1 + 56), *(a1 + 72), *(a1 + 88));
  }

  v3 = *MEMORY[0x29EDCA608];

  return GNSS_Validate_p_list(a1, "SV_State_Update_Wrapper:  Exit");
}

const double *NK_SV_Meas_Check(const double *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v95[3] = *MEMORY[0x29EDCA608];
  v86 = 0.0;
  v6 = (a3 + 22240);
  v67 = a3 + 22240;
  do
  {
    if (*(a3 + 7080 + v3) == 1 && (*(a3 + 7336 + 4 * v3) - 1) < 0x1E)
    {
      ++v4;
    }

    if (*(a3 + 21984 + v3) == 1 && (*v6 - 1) < 0x1E || *(a3 + 36888 + v3) == 1 && (v6[3726] - 1) <= 0x1D)
    {
      ++v5;
    }

    ++v3;
    ++v6;
  }

  while (v3 != 128);
  v90[0] = v4;
  v90[1] = v5;
  if ((*(a2 + 241) & 1) != 0 || *(a2 + 27120) > *(a2 + 16) || *(a3 + 1872) != 1)
  {
    v8 = 1;
  }

  else
  {
    v7 = *(a2 + 148);
    if (v7 >= *(a2 + 152))
    {
      v7 = *(a2 + 152);
    }

    if (v7 >= *(a2 + 156))
    {
      v7 = *(a2 + 156);
    }

    v8 = v7 < 0xB;
  }

  v75 = v8;
  v69 = a3 + 21984;
  v70 = a3 + 7080;
  v9 = (a2 + 1664);
  v10 = 0.0;
  for (i = 4; i > 1; --i)
  {
    v12 = *v9--;
    v10 = v10 + v12 * v12;
  }

  v13 = 0;
  v77 = 0;
  v80 = a3 + 52776;
  v81 = result + 12;
  v14 = a2 + 1600;
  v76 = a3 + 57;
  v74 = a3 + 36576;
  v66 = a3 + 21672;
  v71 = a3 + 6768;
  v68 = result + 252;
  v72 = a2 + 14208;
  v73 = result + 220;
  v65 = sqrt(v10) >> 3;
  while (1)
  {
    do
    {
      if (v13 == 2)
      {
        v15 = 1;
        v16 = v74;
      }

      else
      {
        v89[v13] = 0;
        *(&v87 + v13) = -1;
        v17 = &v94[3 * v13];
        v15 = v13 == 1;
        v18 = 21672;
        if (v13 != 1)
        {
          v18 = 6768;
        }

        v16 = a3 + v18;
        *v17 = 0.0;
        v17[1] = 0.0;
      }

      v19 = 0;
      v20 = v16 + 312;
      v21 = (v13 + 1);
      v82 = v16 + 5304;
      v83 = v16 + 440;
      v22 = v16 + 12856;
      v23 = v16 + 10680;
      v24 = v16 + 13880;
      if (v13)
      {
        v25 = 0;
      }

      else
      {
        v25 = v75;
      }

      v78 = v15;
      v79 = v16 + 568;
      v26 = &v94[3 * v15];
      do
      {
        if (*(v20 + v19) == 1)
        {
          NK_Obs_Equ_SV(v21, *(v83 + v19), *(v81 + v19), (v80 + 56 * v19), v93, *(a3 + 1552));
          v27 = 0;
          v28 = *(v82 + 8 * v19);
          v29 = 0.0;
          do
          {
            v30 = vmulq_f64(*&v93[v27], *(v14 + v27 * 8));
            v29 = v29 + v30.f64[0] + v30.f64[1];
            v27 += 2;
          }

          while (v27 != 12);
          v31 = v28 - v29;
          *(v22 + 8 * v19) = v28 - v29;
          v32 = *(v23 + 8 * v19);
          result = invtst((a2 + 976), v93, 0xCu, v32, v28 - v29, 16.0, &v86);
          v33 = v32 + v32 - fabs(v86);
          v86 = v33;
          v34 = *(v23 + 8 * v19) * 0.1;
          if (v33 >= v34)
          {
            v34 = v33;
          }

          else if (v33 < 0.0)
          {
            v86 = 0.0;
            v33 = 0.0;
          }

          *(v24 + 8 * v19) = v33;
          if (!v25 || (v35 = *(v22 + 8 * v19), v35 <= 30.0) || v35 > 300.0)
          {
            if ((*(v79 + 4 * v19) - 1) >= 0x1E)
            {
              if (*(v76 + v19) == 1)
              {
                ++v89[v78];
              }

              v36 = v31 * v31 / v34;
              v37 = *v26;
              if (v36 > *v26 || *(&v87 + v78) == 255)
              {
                *v26 = v36;
                v26[1] = v37;
                v26[2] = v36;
                *(&v87 + v78) = v19;
              }

              else if (v36 > v26[1])
              {
                v26[1] = v36;
              }

              if (v36 > 16.0)
              {
                v77 += *(a2 + 241) ^ 1;
              }
            }
          }
        }

        ++v19;
      }

      while (v19 != 128);
      v13 = v21;
    }

    while (v21 != 3);
    if (v77)
    {
      break;
    }

    if (*(a2 + 241) != 1)
    {
      goto LABEL_123;
    }

    v40 = v94[0] > 100.0 && v89[0] >= 6u;
    if (!v40 || *(v73 + v87) > 0x1Fu || v65 > 0x270)
    {
LABEL_71:
      if (v94[0] <= 2500.0 || v89[0] < 5u)
      {
        goto LABEL_123;
      }

      v44 = *(a2 + 242);
      if (*(a2 + 242))
      {
        if (v94[0] <= 1000000.0 || v44 != 1)
        {
          *(a2 + 242) = v44 - 1;
          goto LABEL_123;
        }
      }

      v38 = 0;
      v39 = 0;
      *(a2 + 242) = 4;
      goto LABEL_83;
    }

    v41 = 0;
    v42 = 0;
    while (*(v70 + v41) != 1 || (*(v70 + 4 * v41 + 256) - 1) < 0x1E || *(v73 + v41) < 0x21u || ++v42 <= 4)
    {
      if (++v41 == 128)
      {
        goto LABEL_71;
      }
    }

    v39 = 0;
    v38 = 0;
    v52 = 1;
    v47 = v71;
LABEL_94:
    v53 = *(&v87 + v38);
    NK_Obs_Equ_SV((v39 + 1), *(v47 + v53 + 440), *(v81 + v53), (v80 + 56 * v53), v93, *(a3 + 1552));
    v54 = v47 + 8 * v53;
    v93[12] = *(v54 + 5304);
    result = umeas(a2 + 976, 0xCu, -*(v54 + 10680), v93, v92, v91, &v86, 1.0e20);
    ++v90[v38];
    v55 = v47 + 568;
    if (v52)
    {
      *(v55 + 4 * v53) = 27;
      --*(v47 + 3);
      ++*(v47 + 4);
    }

    else
    {
      *(v55 + 4 * v53) = 28;
      --*(v47 + 3);
      ++*(v47 + 4);
      v56 = &v94[3 * v38];
      if (*v56 <= v56[1] * 16.0 || v56[2] <= 16.0)
      {
        v57 = *(&v87 + v38);
        if ((v38 != 1 || fabs(*(v47 + 8 * v57 + 12856)) <= 7.0) && *(v68 + v57) - *(v73 + v57) < -3)
        {
          goto LABEL_102;
        }
      }
    }

    *(v72 + *(&v87 + v38)) = 0;
LABEL_102:
    v13 = 0;
    v77 = 0;
    if (((*(a2 + 241) == 0) & ~v52) == 0)
    {
      goto LABEL_123;
    }
  }

  if (v94[0] > v95[0])
  {
    v38 = 0;
    v39 = 0;
LABEL_83:
    v46 = v95;
    v47 = v71;
    v48 = 1;
    goto LABEL_84;
  }

  if (*(v69 + v88) == 1)
  {
    v48 = 0;
    if ((*(v67 + 4 * v88) - 1) >= 0x1E)
    {
      v47 = v66;
    }

    else
    {
      v47 = v74;
    }

    if ((*(v67 + 4 * v88) - 1) >= 0x1E)
    {
      v39 = 1;
    }

    else
    {
      v39 = 2;
    }

    v46 = v94;
    v38 = 1;
  }

  else
  {
    v48 = 0;
    v39 = 2;
    v46 = v94;
    v38 = 1;
    v47 = v74;
  }

LABEL_84:
  if (*(a2 + 241))
  {
    goto LABEL_123;
  }

  if (v90[v38] <= 2u)
  {
    v49 = v89[v38];
    if (v49 < 6)
    {
      if (v49 != 5)
      {
        goto LABEL_114;
      }

      v51 = v94[3 * v38];
    }

    else
    {
      v50 = &v94[3 * v38];
      v51 = *v50;
      if (*v50 > v50[1] * 1.1)
      {
LABEL_93:
        v52 = 0;
        goto LABEL_94;
      }
    }

    if (v51 <= 225.0 || v51 <= v94[3 * v38 + 1] * 9.0)
    {
      goto LABEL_114;
    }

    goto LABEL_93;
  }

LABEL_114:
  v58 = &v94[3 * v38];
  v59 = *v58;
  if (*v58 <= 144.0 || v59 <= v58[1] + v58[1])
  {
    v60 = 0.0277777778;
    if (!*(a3 + 1872))
    {
      v60 = 0.25;
    }

    v61 = v59 * v60;
    v62 = a3 + 52760;
    if (v61 > *(a3 + 52760 + 8 * v38))
    {
      *(v62 + 8 * v38) = v61;
    }

    if (*v46 > 16.0)
    {
      v63 = v60 * *v46;
      if (v63 > *(v62 + 8 * v48))
      {
        *(v62 + 8 * v48) = v63;
      }
    }
  }

LABEL_123:
  v64 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Compute_Legendre_Normalisations(uint64_t result, int a2, double *a3, unsigned __int16 *a4)
{
  v4 = 0;
  v25 = *MEMORY[0x29EDCA608];
  LODWORD(v5) = result + 1;
  v6 = vdupq_n_s64(result);
  v7 = xmmword_299050240;
  v8 = vdupq_n_s64(2uLL);
  v9 = a3 + 1;
  do
  {
    v10 = vmovn_s64(vcgeq_u64(v6, v7));
    v11 = vorr_s8(vdup_lane_s32(vadd_s32(v4, v4), 0), 0x300000001);
    v12.i64[0] = v11.u32[0];
    v12.i64[1] = v11.u32[1];
    v13 = vsqrtq_f64(vcvtq_f64_u64(v12));
    if (v10.i8[0])
    {
      *(v9 - 1) = v13.f64[0];
    }

    if (v10.i8[4])
    {
      *v9 = v13.f64[1];
    }

    *&v4 += 2;
    v7 = vaddq_s64(v7, v8);
    v9 += 2;
  }

  while (((result + 2) & 0x1FFFE) != *&v4);
  if (a2)
  {
    v14 = result + 2;
    v15 = 1;
    v16 = 2;
    do
    {
      if (v15 <= result)
      {
        v5 = v5;
        v17 = 1;
        v18 = v16;
        v19 = v15;
        do
        {
          v20 = 1.0;
          v21 = v17;
          v22 = v16;
          do
          {
            v20 = v20 * v21++;
            --v22;
          }

          while (v22);
          a3[v5++] = sqrt(((4 * v19++) | 2) / v20);
          ++v18;
          ++v17;
        }

        while (v18 != v14);
      }

      v16 += 2;
      ++v14;
    }

    while (v15++ != a2);
  }

  *a4 = v5;
  v24 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Get_QZSS_Kep_Almanac(uint64_t result, uint64_t a2)
{
  v14 = *MEMORY[0x29EDCA608];
  *a2 = *result;
  *(a2 + 16) = *(result + 10);
  v2 = *(result + 12);
  v3 = vcvtd_n_f64_u32(v2, 0x15uLL);
  *(a2 + 20) = *(result + 18) << 12;
  v4 = *(result + 16);
  v5 = *(result + 20);
  v6 = *(result + 24);
  v7.f64[0] = (v5 >> 8);
  *(a2 + 12) = BYTE2(v2) | 0xC0;
  v8 = v4 * 0.00000599211245;
  *(a2 + 40) = v3;
  *(a2 + 48) = v8;
  *(a2 + 13) = v5 & 0x1F;
  *(a2 + 72) = vcvtd_n_f64_u32(v6 & 0xFFFFFF, 0xBuLL);
  v9 = vshl_n_s32(*(result + 28), 8uLL);
  v10.i64[0] = v9.i32[0];
  v10.i64[1] = v9.i32[1];
  v11 = *(result + 40);
  v12 = (*(result + 36) << 8);
  *(a2 + 80) = vmulq_f64(vcvtq_f64_s64(v10), vdupq_n_s64(0x3E1921FB54442D28uLL));
  v7.f64[1] = v12;
  *(a2 + 56) = vmulq_f64(v7, xmmword_2990517A0);
  *(a2 + 24) = vcvtd_n_f64_s32(((v11 >> 8) & 0xFF00 | (32 * ((v11 >> 2) & 7))), 0x19uLL);
  *(a2 + 32) = (v11 & 0xFFE0) * 1.13686838e-13;
  if ((BYTE2(v2) | 0xC0u) <= 0xC6)
  {
    *(a2 + 40) = v3 + 0.06;
    *(a2 + 48) = v8 + 0.785398163;
  }

  *(a2 + 8) = 5;
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void Hal29_HandleProxyStatusResponse(unsigned __int8 *a1)
{
  v7 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GNSS Proxy Status rcvd\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 68, "Hal29_HandleProxyStatusResponse");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  g_IResponseStatus = a1[8];
  if (!gnssOsa_SemRelease(g_HandleAckSem) && g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v4 = __error();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx HandleAckSem err,%d\n", v3, "HAL", 69, "Hal29_HandleProxyStatusResponse", 1542, *v4);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v5 = *MEMORY[0x29EDCA608];
}

void Hal29_HandleProxyResponse(unsigned __int8 *a1, unsigned int a2)
{
  v21 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v16 = 513;
      v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v2 = "%10u %s%c %s: #%04hx data\n";
      goto LABEL_22;
    }

LABEL_23:
    v11 = *MEMORY[0x29EDCA608];
    return;
  }

  if (a2 <= 7)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v16 = 515;
      v15 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v2 = "%10u %s%c %s: #%04hx len\n";
LABEL_22:
      snprintf(__str, 0x3C5uLL, v2, v15, "HAL", 69, "Hal29_HandleProxyResponse", v16, v17, v18, v19);
      gnssOsa_PrintLog(__str, 1, 1, 0);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  v4 = *&a1[a2 - 3];
  if (a2 == 11)
  {
    v5 = 0;
LABEL_19:
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_23;
    }

    bzero(__str, 0x3C6uLL);
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v17 = v4;
    v18 = v5;
    v16 = 771;
    v2 = "%10u %s%c %s: #%04hx zx chksum %u, computed %u\n";
LABEL_21:
    v15 = v10;
    goto LABEL_22;
  }

  v5 = 0;
  v6 = (a2 - 11);
  v7 = 8;
  do
  {
    v5 += a1[v7++];
    --v6;
  }

  while (v6);
  if (v4 != v5)
  {
    goto LABEL_19;
  }

  if (a1[4] != 67)
  {
    if (!g_LbsOsaTrace_Config)
    {
      goto LABEL_23;
    }

    bzero(__str, 0x3C6uLL);
    v10 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v18 = a1[3];
    v19 = a1[4];
    v16 = 779;
    v17 = a1[2];
    v2 = "%10u %s%c %s: #%04hx MC,%u,MID,%u,MIDX,%u\n";
    goto LABEL_21;
  }

  v8 = a1[3];
  switch(v8)
  {
    case 'C':
      v13 = *MEMORY[0x29EDCA608];

      Hal29_HandleBasebandCoexData(a1);
      break;
    case 'T':
      v12 = *MEMORY[0x29EDCA608];

      Hal29_HandleTrapNotification(a1);
      break;
    case 'S':
      v9 = *MEMORY[0x29EDCA608];

      Hal29_HandleProxyStatusResponse(a1);
      break;
    default:
      if (!g_LbsOsaTrace_Config)
      {
        goto LABEL_23;
      }

      bzero(__str, 0x3C6uLL);
      v14 = mach_continuous_time();
      v16 = 515;
      v17 = a1[3];
      v15 = (*&g_MacClockTicksToMsRelation * v14);
      v2 = "%10u %s%c %s: #%04hx MsgId,%u\n";
      goto LABEL_22;
  }
}

void Hal29_HandleBasebandCoexData(unsigned __int8 *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 4);
  if (v1 == 1)
  {
    if (g_LbsOsaTrace_Config >= 3)
    {
      bzero(__str, 0x3C6uLL);
      v3 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: L5_Antenna_Tuner_Report,seqNum:%u,gbct:%llu,BestDuration_ms:%u,NormalDuration_ms:%u,WorstDuration_ms:%u\n", (*&g_MacClockTicksToMsRelation * v3), "HAL", 77, "Hal29_HandleBasebandCoexData", a1[30], *(a1 + 10), *(a1 + 18), *(a1 + 22), *(a1 + 26));
      v4 = 3;
LABEL_6:
      gnssOsa_PrintLog(__str, v4, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Coex Data Type :%u\n", (*&g_MacClockTicksToMsRelation * v5), "HAL", 87, "Hal29_HandleBasebandCoexData", 514, v1);
    v4 = 2;
    goto LABEL_6;
  }

  v6 = *MEMORY[0x29EDCA608];
}

void Hal29_HandleTrapNotification(unsigned __int8 *a1)
{
  v6 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 3)
  {
    bzero(__str, 0x3C6uLL);
    v2 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v3 = "GNSS_FW";
    if (a1[32] == 80)
    {
      v3 = "Proxy";
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GNSSTrap:GBCT:%llu,StaticId:0x%llx,VariableID:0x%llx,TrapSource:%s,TrapReason:%s\n", v2, "HAL", 77, "Hal29_HandleTrapNotification", *(a1 + 1), *(a1 + 2), *(a1 + 3), v3, a1 + 33);
    gnssOsa_PrintLog(__str, 3, 1, 0);
  }

  if (g_HalCallbacks)
  {
    g_HalCallbacks(8);
  }

  v4 = *MEMORY[0x29EDCA608];
}

uint64_t Hal29_GetGNSSProxyStatus(void)
{
  v10 = *MEMORY[0x29EDCA608];
  *v9 = 0xFF0000437349787ALL;
  v9[8] = 10;
  g_HalState = 4;
  if (Hal22_ZxSendToChip(v9, 9uLL) <= 0)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v1 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Proxy status\n", (*&g_MacClockTicksToMsRelation * v1), "HAL", 69, "Hal29_GetGNSSProxyStatus", 1282);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    result = 4294967293;
  }

  else
  {
    v0 = gnssOsa_SemWaitTimeOut(g_HandleAckSem, 0x1F4u);
    if (v0 == 1)
    {
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v3 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v3), "HAL", 69, "Hal29_GetGNSSProxyStatus", 1543);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      result = 4294967291;
    }

    else
    {
      if (!v0)
      {
        if (g_IResponseStatus == 5)
        {
          if (g_LbsOsaTrace_Config >= 4)
          {
            bzero(__str, 0x3C6uLL);
            mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Status,InActive\n");
            goto LABEL_19;
          }
        }

        else if (g_IResponseStatus == 6)
        {
          if (g_LbsOsaTrace_Config >= 4)
          {
            bzero(__str, 0x3C6uLL);
            mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Status,Active\n");
LABEL_19:
            v5 = 4;
LABEL_22:
            gnssOsa_PrintLog(__str, v5, 1, 0);
          }
        }

        else if (g_LbsOsaTrace_Config >= 2)
        {
          bzero(__str, 0x3C6uLL);
          v6 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Status,Unk,%u\n", (*&g_MacClockTicksToMsRelation * v6), "HAL", 87, "Hal29_GetGNSSProxyStatus", g_IResponseStatus);
          v5 = 2;
          goto LABEL_22;
        }

        result = 0;
        goto LABEL_24;
      }

      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v4 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 69, "Hal29_GetGNSSProxyStatus", 1541);
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      result = 4294967289;
    }
  }

LABEL_24:
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL Hal29_TriggerTrapOverPCIe(unsigned int a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v6 = 0x60006437449787ALL;
  v7 = a1;
  v8 = vaddv_s16(*&vmovl_u8((a1 | 0x600064300000000)));
  v9 = 10;
  Hal35_Set_SPI_InUse(0);
  v1 = Hal22_ZxSendToChip(&v6, 0xFuLL);
  if (v1 <= 0)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx pcie trap command\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 69, "Hal29_TriggerTrapOverPCIe", 1282);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }
  }

  else
  {
    Hal35_Set_SPI_InUse(1);
  }

  result = v1 > 0;
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

void GLON_Alm_Calc_SemiMaj(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 56);
  v2 = *(a1 + 64);
  v4 = sin(*(a1 + 32) + 1.09955743);
  v5 = v4 * v4 * -2.5 + 2.0;
  v6 = 1.0 - v3 * v3;
  v7 = cos(v2);
  v8 = (v3 * v7 + 1.0) * ((v3 * v7 + 1.0) * (v3 * v7 + 1.0)) / v6 + v5 * (v6 * sqrt(v6) / ((v3 * v7 + 1.0) * (v3 * v7 + 1.0)));
  v9 = *(a1 + 40) + 43200.0;
  v10 = 26000.0;
  do
  {
    v11 = v10;
    v10 = (v9 * 0.159154943 * (v9 * 0.159154943) * 398600.44 / (v10 * v10) + v10 * 2.0) * 0.333333333;
  }

  while (vabdd_f64(v10, v11) > 0.000001);
  v12 = v8 * 1.5 * -0.00108262575;
  do
  {
    v13 = v9 / (v12 * (6378.136 / (v6 * v10) * (6378.136 / (v6 * v10))) + 1.0) * 0.159154943;
    v14 = v13 * v13 * 398600.44;
    v15 = 26000.0;
    do
    {
      v16 = v15;
      v15 = (v14 / (v15 * v15) + v15 * 2.0) * 0.333333333;
    }

    while (vabdd_f64(v15, v16) > 0.000001);
    v17 = vabdd_f64(v15, v10) <= 0.001;
    v10 = v15;
  }

  while (!v17);
  v18 = *MEMORY[0x29EDCA608];
}

void NK_Set_PR_Meas_Var(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v7 = 0;
  v27 = *MEMORY[0x29EDCA608];
  v8 = a4 + 6824;
  v9 = a1 + 9312;
  v10 = (a3 + 1920);
  v11 = 10.0;
  v12 = -20.0;
  do
  {
    if (*(v8 + v7) == 1)
    {
      v13 = a1 + 4 * v7;
      PR_Raw_Meas_Unc = NK_Get_PR_Raw_Meas_Unc(*(v13 + 96), *(a1 + v7 + 1760), *(a1 + 2 * v7 + 2400), *(v9 + 2 * v7));
      v15 = PR_Raw_Meas_Unc * PR_Raw_Meas_Unc;
      v16 = (v8 + v6);
      v16[144] = PR_Raw_Meas_Unc * PR_Raw_Meas_Unc;
      v16[145] = PR_Raw_Meas_Unc * PR_Raw_Meas_Unc - PR_Raw_Meas_Unc * PR_Raw_Meas_Unc;
      v16[146] = PR_Raw_Meas_Unc * PR_Raw_Meas_Unc;
      if ((*(a2 + 60) & 0xFFFFFFFE) == 6 && *v10 <= 44)
      {
        v17 = *(a4 + 1848);
        v18 = 0.0;
        if (v17 <= 20.0)
        {
          if (v17 <= v11)
          {
            v18 = 1.0;
            if (v17 > 6.0)
            {
              v19 = (v17 / v12 + 1.0) * (v17 / v12 + 1.0);
              v20 = (v11 - v17) * 0.1275;
              v18 = v20 + v19;
              if (v20 + v19 > 1.0 || v18 < 0.0)
              {
                GNSS_SV_Str = Get_GNSS_SV_Str(*(v13 + 96));
                EvLog_v("NK_Set_PR_Meas_Var:  %d  %s  Out of bound Elev_DeWgt_SF %g  Inv_Parabola_Comp %g  Linear_Comp %g  GSpeed %g  Elev %d", v7, GNSS_SV_Str, v20 + v19, v19, v20, v17, *v10);
                if (v18 > 1.0)
                {
                  v18 = 1.0;
                }

                v11 = 10.0;
                v12 = -20.0;
                if (v18 < 0.0)
                {
                  v18 = 0.0;
                }
              }

              else
              {
                v11 = 10.0;
                v12 = -20.0;
              }
            }
          }

          else
          {
            v18 = (v17 / v12 + 1.0) * (v17 / v12 + 1.0);
          }
        }

        v22 = v18 * 0.0 + 1.0;
        v23 = (v15 * v22);
        v16[144] = v23;
        v16[145] = v23 - v23;
        if (*(a4 + 1872) == 1 && *(a1 + v7 + 1760) <= 0x15u)
        {
          v24 = v22 * v22;
          v16[144] = v24 * v23;
          v16[145] = v24 * (v23 - v23);
        }
      }
    }

    ++v7;
    v10 += 10;
    v6 += 24;
  }

  while (v7 != 128);
  v25 = *MEMORY[0x29EDCA608];
}

double NK_Get_PR_Raw_Meas_Unc(__int16 a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v21 = *MEMORY[0x29EDCA608];
  v6 = a4 * 0.01;
  v7 = a1;
  if (a1 == 6)
  {
    goto LABEL_2;
  }

  v8 = 1.0;
  if (HIBYTE(a1) > 7u)
  {
    if (HIBYTE(a1) > 0xBu)
    {
      if (HIBYTE(a1) - 13 >= 2)
      {
        if (HIBYTE(a1) != 12)
        {
          if (HIBYTE(a1) != 15)
          {
            goto LABEL_37;
          }

          goto LABEL_26;
        }

LABEL_2:
        if (a2 > 0x2C)
        {
          v8 = 0.67;
          goto LABEL_37;
        }

        if (a2 >= 0x19)
        {
          v9 = (45 - a2);
          v10 = 0.67;
          v11 = 0.0565;
LABEL_11:
          v8 = v10 + v9 * v11;
          goto LABEL_37;
        }

        v8 = 1.8;
        goto LABEL_37;
      }
    }

    else if (HIBYTE(a1) - 9 >= 2)
    {
      if (HIBYTE(a1) != 8 && HIBYTE(a1) != 11)
      {
        goto LABEL_37;
      }

      goto LABEL_16;
    }

LABEL_27:
    v8 = 0.5;
    if (a2 <= 0x2C)
    {
      if (a2 < 0x19)
      {
        if (a2 >= 0xF)
        {
          v9 = (25 - a2);
          v10 = 1.6;
          v11 = 0.14;
          goto LABEL_11;
        }

        v12 = (15 - a2);
        v13 = 0.6;
        v14 = 3.0;
      }

      else
      {
        v12 = (45 - a2);
        v13 = 0.055;
        v14 = 0.5;
      }

      v8 = v14 + v12 * v13;
    }

    goto LABEL_37;
  }

  if (HIBYTE(a1) > 2u)
  {
    if (HIBYTE(a1) - 5 < 3)
    {
LABEL_26:
      EvCrt_Illegal_switch_case("NK_Get_PR_Raw_Meas_Unc", 0x2F2u);
      goto LABEL_37;
    }

    if (HIBYTE(a1) != 3)
    {
      if (HIBYTE(a1) != 4)
      {
        goto LABEL_37;
      }

      goto LABEL_2;
    }

    goto LABEL_27;
  }

  if (!HIBYTE(a1))
  {
    goto LABEL_2;
  }

  if (HIBYTE(a1) != 1)
  {
    goto LABEL_26;
  }

LABEL_16:
  if (a2 <= 0x2C)
  {
    if (a2 >= 0x19)
    {
      v9 = (45 - a2);
      v10 = 0.4;
      v11 = 0.04;
      goto LABEL_11;
    }

    v8 = 1.2;
  }

  else
  {
    v8 = 0.4;
  }

LABEL_37:
  v15 = v6 * v8 * (v6 * v8);
  NK_Interp_Var_Table(Loop_Convergence_Time_Table, 7, a2);
  if (v16 > a3)
  {
    v17 = (v16 - a3) / v16 * ((v16 - a3) / v16 * ((v16 - a3) / v16));
    v15 = v15 + v15 * (v17 * v17 * 9.0);
  }

  v18 = v15 + 2.25;
  if (v7 != 2)
  {
    v18 = v15;
  }

  v19 = *MEMORY[0x29EDCA608];
  return sqrt(v18);
}

__int16 *NK_Interp_Var_Table(__int16 *result, int a2, int a3)
{
  if (result[1] >= a3)
  {
    v5 = *result;
  }

  else
  {
    v3 = &result[2 * (a2 - 1)];
    if (v3[1] <= a3)
    {
      v6 = *v3;
    }

    else
    {
      if (a2 < 3)
      {
        v4 = 1;
      }

      else
      {
        v4 = 1;
        do
        {
          if (result[2 * v4 + 1] >= a3)
          {
            break;
          }

          ++v4;
        }

        while (a2 - 1 > v4);
      }

      v7 = &result[2 * v4];
      v8 = v7[1];
      v9 = *v7;
      v10 = &result[2 * (v4 - 1)];
      v11 = v10[1];
      v12 = *v10;
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

void NK_Set_DO_Meas_Var(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 20) <= 4u && *(a3 + 27250) == 1 && *(a2 + 60) >= 6 && *(a4 + 1848) >= 3.0;
  v6 = 0;
  v7 = 0;
  v8 = a4 + 21728;
  v9 = (a3 + 1952);
  do
  {
    if (*(v8 + v7) == 1)
    {
      DO_Raw_Meas_Unc = NK_Get_DO_Raw_Meas_Unc(*(a1 + 4 * v7 + 96), *(a1 + v7 + 1760), *(a1 + 2 * v7 + 2656), *(a1 + 9184 + v7), *(a1 + 4 * v7 + 1248));
      if (v5 && *(v9 - 8) >= 1)
      {
        DO_Raw_Meas_Unc = DO_Raw_Meas_Unc * ((90.0 - *v9) * 0.0333333333 + 1.0);
      }

      v11 = DO_Raw_Meas_Unc * DO_Raw_Meas_Unc;
      v12 = (v8 + v6);
      v12[144] = v11;
      v12[145] = v11 - v11;
      v12[146] = v11;
    }

    ++v7;
    v6 += 24;
    v9 += 5;
  }

  while (v7 != 128);
  v13 = *MEMORY[0x29EDCA608];
}

double NK_Get_DO_Raw_Meas_Unc(__int16 a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5)
{
  v8 = HIBYTE(a1);
  v18 = *MEMORY[0x29EDCA608];
  if (a5 > 16 && a2 > 0x18)
  {
    v10 = &PLL_DO_Raw_Meas_Unc_Table;
  }

  else
  {
    v10 = &FLL_DO_Raw_Meas_Unc_Table;
  }

  NK_Interp_Var_Table(v10, 15, a2);
  v12 = v11 * 0.01;
  if (v8 > 0xFu || ((1 << v8) & 0xDD77) == 0)
  {
    v12 = v12 * 1.33913043;
  }

  if (a4 <= 0x13)
  {
    v12 = 20.0 / a4 * v12;
  }

  v13 = v12 * v12;
  NK_Interp_Var_Table(Loop_Convergence_Time_Table, 7, a2);
  if (v14 > a3)
  {
    v15 = (v14 - a3) / v14 * ((v14 - a3) / v14 * ((v14 - a3) / v14));
    v13 = v13 + v13 * (v15 * v15 * 9.0);
  }

  v16 = *MEMORY[0x29EDCA608];
  return sqrt(v13);
}

void NK_Set_DR_Meas_Var(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v10 = *MEMORY[0x29EDCA608];
  v3 = a2 + 36632;
  v4 = a1 + 1760;
  v5 = a1 + 9824;
  v6 = (a2 + 37800);
  do
  {
    if (*(v3 + v2) == 1)
    {
      DR_Raw_Meas_Unc = NK_Get_DR_Raw_Meas_Unc(*(v4 + v2), *(v5 + 2 * v2));
      v8 = DR_Raw_Meas_Unc * DR_Raw_Meas_Unc;
      *(v6 - 2) = v8;
      *(v6 - 1) = v8 - v8;
      *v6 = v8;
    }

    ++v2;
    v6 += 3;
  }

  while (v2 != 128);
  v9 = *MEMORY[0x29EDCA608];
}

double NK_Get_DR_Raw_Meas_Unc(unsigned int a1, unsigned int a2)
{
  if (a1 <= 0x2C)
  {
    if (a1 < 0x1E)
    {
      if (a1 < 0x1C)
      {
        v3 = (28 - a1);
        v4 = 1.3;
        v5 = 0.24;
      }

      else
      {
        v3 = (30 - a1);
        v4 = 1.2;
        v5 = 0.05;
      }
    }

    else
    {
      v3 = (45 - a1);
      v4 = 0.7;
      v5 = 0.0333333333;
    }

    v2 = v4 + v3 * v5;
  }

  else
  {
    v2 = 0.7;
  }

  v6 = *MEMORY[0x29EDCA608];
  v7 = *MEMORY[0x29EDCA608];
  return a2 * 0.001 * v2;
}

uint64_t NK_Get_Ext_CTXT(int a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v40 = *MEMORY[0x29EDCA608];
  v39 = 0;
  v38 = 0;
  v8 = a3 + 24576;
  v37 = 0;
  v9 = a2 + 59944;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  if (Core_Get_ExtA_UAC(43200000, &v36))
  {
    *(v9 + 2348) = 1;
    v10 = v37;
    v11 = a1 - v36;
    *(v9 + 2360) = a1 - v36;
    if (v10 && v11 >= -1000)
    {
      v12 = HIDWORD(v36);
      *(v9 + 12) = HIDWORD(v36);
      *(v9 + 16) = 1;
      *(v9 + 20) = v10;
      if (v12 > 0xB)
      {
        goto LABEL_27;
      }

      if (((1 << v12) & 0x7C) != 0)
      {
        *(v8 + 2673) = 1;
        *(v9 + 2356) = 1;
        v15 = *(a2 + 1848);
        if (v15 <= 4.0)
        {
          if (v15 <= 8.0)
          {
            goto LABEL_27;
          }
        }

        else if (v15 <= 8.0 && *(v9 + 2112) > 2.0)
        {
          goto LABEL_27;
        }

        *(v8 + 2673) = 256;
        *(v9 + 2356) = 0;
        *(v9 + 2352) = 4;
        goto LABEL_27;
      }

      if (((1 << v12) & 0xF80) != 0)
      {
        *(v8 + 2673) = 256;
        *(v9 + 2356) = 1;
        if (v10 == 3 && v12 == 10)
        {
          if ((*(a3 + 20) - 5) < 4)
          {
            goto LABEL_30;
          }

          a4[13] = 5;
          v13 = a4[14];
          *(a3 + 20) = 5;
          *(a3 + 24) = v13;
LABEL_29:
          NK_Set_Dynamics(*(a3 + 20), a3 + 32);
          goto LABEL_30;
        }

LABEL_27:
        if (*(a3 + 20) < 5u)
        {
          goto LABEL_30;
        }

        a4[13] = 2;
        *(a3 + 20) = 4;
        goto LABEL_29;
      }

      *(v9 + 2356) = 0;
      *(v9 + 2352) = 5;
      v16 = *(a2 + 1848);
      if (v16 <= 4.0)
      {
        if (v16 <= 8.0)
        {
LABEL_24:
          v17 = *(a3 + 27232);
          *(v8 + 2674) = v17 > 4.0;
          *(v8 + 2673) = v17 <= 4.0;
          goto LABEL_27;
        }
      }

      else if (v16 <= 8.0 && *(v9 + 2112) > 2.0)
      {
        goto LABEL_24;
      }

      *(v8 + 2673) = 256;
      goto LABEL_27;
    }

    *(v9 + 2356) = 0;
    if (v10)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    *(v9 + 2352) = v14;
  }

LABEL_30:
  *(v9 + 36) = 0;
  if (Core_Get_ExtA_DMS(43200000, &v38))
  {
    *(v9 + 2332) = 1;
    v18 = v39;
    v19 = a1 - v38;
    *(v9 + 2344) = a1 - v38;
    if (v18 && v19 >= -1000)
    {
      v20 = HIDWORD(v38);
      *(v9 + 8) = v18;
      v21 = 1;
      *v9 = v20;
      *(v9 + 4) = 1;
      if ((v20 - 1) <= 1)
      {
        v22 = *(a2 + 1840);
        v23 = *(v9 + 2128);
        if (v22 > 5.0 || v22 > v23 * 5.0)
        {
          v25 = 65;
          if (v20 == 2)
          {
            v25 = 83;
          }

          EvLog_v("NK_Get_Ext_CTXT:  DMS overwritten to Moving,  %c  Speed %f  Acc.S %f", v25, *(a2 + 1840), v23);
          v21 = 0;
          *v9 = 3;
          *(v9 + 36) = 0;
          *(v9 + 2336) = 7;
        }

        else if (v20 == 1)
        {
          *(v9 + 36) = 1;
          *(v8 + 2628) = 3;
          *(v8 + 2648) = *a2;
        }
      }

      *(v9 + 2340) = v21;
    }

    else
    {
      *(v9 + 2340) = 0;
      if (v18)
      {
        v24 = 2;
      }

      else
      {
        v24 = 1;
      }

      *(v9 + 2336) = v24;
    }
  }

  result = Core_Get_ExtA_FIV_Ind(43200000, &v34);
  if (result)
  {
    *(v9 + 2364) = 1;
    v27 = v35;
    v28 = a1 - v34;
    *(v9 + 2376) = a1 - v34;
    if (v27 && v28 >= -1000)
    {
      v29 = HIDWORD(v34);
      *(v9 + 32) = v27;
      *(v9 + 24) = v29;
      *(v9 + 28) = 1;
      *(v9 + 2372) = 0;
    }

    else
    {
      *(v9 + 2372) = 0;
      if (v27)
      {
        v30 = 2;
      }

      else
      {
        v30 = 1;
      }

      *(v9 + 2368) = v30;
    }
  }

  v31 = *(v9 + 24);
  if (v31 == 3 && *(v9 + 32) == 3)
  {
LABEL_56:
    v32 = 4;
LABEL_66:
    a4[12] = v32;
    goto LABEL_67;
  }

  if (*v9 == 1 && *(v9 + 8) == 3)
  {
    v32 = 1;
    goto LABEL_66;
  }

  if (*(v8 + 2673))
  {
    v32 = 2;
    goto LABEL_66;
  }

  if (*(v8 + 2674) == 1)
  {
    if (v31 != 3 || *(v9 + 32) != 3)
    {
      v32 = 3;
      goto LABEL_66;
    }

    goto LABEL_56;
  }

LABEL_67:
  v33 = *MEMORY[0x29EDCA608];
  return result;
}

void Gnm_Init(void)
{
  v5 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v0 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "GNM", 73, "Gnm_Init");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v1 = gnssOsa_Calloc("Gnm_Init", 65, 1, 0xCuLL);
  if (v1)
  {
    AgpsSendFsmMsg(128, 128, 8388611, v1);
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm_Init");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v3 = *MEMORY[0x29EDCA608];
}

void Gnm_Deinit(void)
{
  v5 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v0 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v0), "GNM", 73, "Gnm_Deinit");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v1 = gnssOsa_Calloc("Gnm_Deinit", 95, 1, 0xCuLL);
  if (v1)
  {
    AgpsSendFsmMsg(128, 128, 8388867, v1);
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm_Deinit");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v3 = *MEMORY[0x29EDCA608];
}

void Gnm_DestMissingHandler(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Msg,%x\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm_DestMissingHandler", *(a1 + 4));
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v3 = *(a1 + 4);
  if (v3 == 8654080 || v3 == 8393475)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      free(v5);
    }

    *(a1 + 16) = 0;
  }

  else if (v3 == 8391939)
  {
    v4 = *(a1 + 64);
    if (v4)
    {
      free(v4);
    }

    *(a1 + 64) = 0;
  }

  else if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: No handling required Msg,%x\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm_DestMissingHandler", *(a1 + 4));
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v6 = *MEMORY[0x29EDCA608];
}

uint64_t Gnm_ClearGNSSCache(int a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm_ClearGNSSCache");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v3 = gnssOsa_Calloc("Gnm_ClearGNSSCache", 177, 1, 0x10uLL);
  if (v3)
  {
    v4 = v3;
    v3[3] = a1;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FieldsToDel,%u\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 73, "Gnm_ClearGNSSCache", v4[3]);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(128, 128, 8389379, v4);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm_ClearGNSSCache");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    result = 0;
  }

  else
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 73, "Gnm_ClearGNSSCache");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    result = 5;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm_RegisterApiStatusCb(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm_RegisterApiStatusCb");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1)
  {
    v3 = gnssOsa_Calloc("Gnm_RegisterApiStatusCb", 225, 1, 0x20uLL);
    if (v3)
    {
      v3[2] = a1;
      AgpsSendFsmMsg(128, 128, 8391427, v3);
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v4 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm_RegisterApiStatusCb");
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      v5 = 0;
    }

    else
    {
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 73, "Gnm_RegisterApiStatusCb");
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      v5 = 5;
    }
  }

  else if (g_LbsOsaTrace_Config < 2)
  {
    v5 = 1;
  }

  else
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 87, "Gnm_RegisterApiStatusCb", 258);
    v5 = 1;
    gnssOsa_PrintLog(__str, 2, 1, 0);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v7 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 73, "Gnm_RegisterApiStatusCb");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return v5;
}

uint64_t Gnm_RegisterPeriodicFix(int a1, _BYTE *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v41 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v10 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm_RegisterPeriodicFix");
    gnssOsa_PrintLog(__str, 4, 1, 0);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v11 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Handle,%u,OutputType,%u,PosParam Timeout,%u,AgeLimit,%u,FixIntvl,%u,StartTime,%u,StopTime,%u,NumFix,%u,HorizAcc,%u,VerAcc,%u\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 73, "Gnm_RegisterPeriodicFix", a1, a4, *a5, a5[1], a5[2], a5[3], a5[4], *(a5 + 10), *(a5 + 11), *(a5 + 12));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  if (!a3)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v35 = 258;
      v34 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v15 = "%10u %s%c %s: #%04hx\n";
      goto LABEL_14;
    }

LABEL_33:
    v16 = 1;
    goto LABEL_34;
  }

  v12 = (a4 >> 1) & 3;
  if (!v12)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v35 = 514;
      v36 = a4;
      v34 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v15 = "%10u %s%c %s: #%04hx OutputMask,%x\n";
      goto LABEL_14;
    }

    goto LABEL_33;
  }

  v13 = a5[2];
  if (v13 && v13 - 604800001 < 0xDBF37C63)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v14 = mach_continuous_time();
      v35 = 514;
      v36 = a5[2];
      v34 = (*&g_MacClockTicksToMsRelation * v14);
      v15 = "%10u %s%c %s: #%04hx FixRate,%u\n";
LABEL_14:
      snprintf(__str, 0x3C5uLL, v15, v34, "GNM", 87, "Gnm_RegisterPeriodicFix", v35, v36, v38);
      goto LABEL_15;
    }

    goto LABEL_33;
  }

  if (*(a5 + 10) == 1)
  {
    if (*a5 - 3600001 < 0xFFC91567)
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v18 = mach_continuous_time();
        v35 = 514;
        v36 = *a5;
        v34 = (*&g_MacClockTicksToMsRelation * v18);
        v15 = "%10u %s%c %s: #%04hx TimeOut,%u\n";
        goto LABEL_14;
      }

      goto LABEL_33;
    }

    if (a5[1] >= 0x5265C01)
    {
      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v19 = mach_continuous_time();
        v35 = 514;
        v36 = a5[1];
        v34 = (*&g_MacClockTicksToMsRelation * v19);
        v15 = "%10u %s%c %s: #%04hx Agelimit,%u\n";
        goto LABEL_14;
      }

      goto LABEL_33;
    }
  }

  v21 = a5[3];
  v20 = a5[4];
  if (v20 < v21)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v22 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v37 = a5[3];
      v39 = a5[4];
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx StartTime,%u,StopTime,%u\n", v22);
LABEL_15:
      v16 = 1;
      gnssOsa_PrintLog(__str, 2, 1, 0);
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v17 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v17), "GNM", 73, "Gnm_RegisterPeriodicFix");
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (v21 >= 0x28DE81)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v23 = mach_continuous_time();
      v35 = 514;
      v36 = a5[3];
      v34 = (*&g_MacClockTicksToMsRelation * v23);
      v15 = "%10u %s%c %s: #%04hx StartTime,%u\n";
      goto LABEL_14;
    }

    goto LABEL_33;
  }

  if (v20 >= 0xACB480)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v24 = mach_continuous_time();
      v35 = 514;
      v36 = a5[4];
      v34 = (*&g_MacClockTicksToMsRelation * v24);
      v15 = "%10u %s%c %s: #%04hx StopTime,%u\n";
      goto LABEL_14;
    }

    goto LABEL_33;
  }

  v27 = gnssOsa_Calloc("Gnm_RegisterPeriodicFix", 359, 1, 0x50uLL);
  if (v27)
  {
    v28 = v27;
    if (Gnm05_55AssignAppInfo(a2, (v27 + 64)))
    {
      *(v28 + 3) = a1;
      *(v28 + 2) = a3;
      v28[56] = 1;
      v29 = *(a5 + 10);
      if (v29 == 1)
      {
        *(v28 + 3) = *a5;
      }

      else
      {
        *(v28 + 3) = 0;
        if (v29)
        {
          *(v28 + 9) = a5[3];
          v31 = a5[4];
LABEL_46:
          *(v28 + 10) = v31;
          *(v28 + 22) = v29;
          v32 = a5[2];
          if (!v32)
          {
            v32 = 1000;
          }

          *(v28 + 8) = v32;
          v28[48] = v12;
          v28[54] = 2;
          *(v28 + 50) = *(a5 + 22);
          *(v28 + 9) = *(a5 + 4);
          AgpsSendFsmMsg(128, 128, 8391939, v28);
          if (g_LbsOsaTrace_Config >= 4)
          {
            bzero(__str, 0x3C6uLL);
            v33 = mach_continuous_time();
            snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v33), "GNM", 73, "Gnm_RegisterPeriodicFix");
            gnssOsa_PrintLog(__str, 4, 1, 0);
          }

          v16 = 0;
          goto LABEL_34;
        }
      }

      v31 = 0;
      *(v28 + 9) = 0;
      goto LABEL_46;
    }

    free(v28);
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v30 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v30), "GNM", 73, "Gnm_RegisterPeriodicFix");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v16 = 5;
LABEL_34:
  v25 = *MEMORY[0x29EDCA608];
  return v16;
}

uint64_t Gnm_RegisterNmeaUpdates(int a1, const void *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm_RegisterNmeaUpdates");
    gnssOsa_PrintLog(__str, 4, 1, 0);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: NMEAMask,%u,CB,%p\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 73, "Gnm_RegisterNmeaUpdates", a1, a2);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  if (a1 || !a2)
  {
    v9 = gnssOsa_Calloc("Gnm_RegisterNmeaUpdates", 466, 1, 0x20uLL);
    if (v9)
    {
      v9[2] = a2;
      *(v9 + 12) = a1;
      AgpsSendFsmMsg(128, 128, 8407552, v9);
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v10 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 73, "Gnm_RegisterNmeaUpdates");
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      v7 = 0;
    }

    else
    {
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v11 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 73, "Gnm_RegisterNmeaUpdates");
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      v7 = 5;
    }
  }

  else if (g_LbsOsaTrace_Config < 2)
  {
    v7 = 1;
  }

  else
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx NMEAMask,%x\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 87, "Gnm_RegisterNmeaUpdates", 514, 0);
    v7 = 1;
    gnssOsa_PrintLog(__str, 2, 1, 0);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 73, "Gnm_RegisterNmeaUpdates");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  v12 = *MEMORY[0x29EDCA608];
  return v7;
}

uint64_t Gnm_StopPosnReq(int a1)
{
  v9 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm_StopPosnReq");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v3 = gnssOsa_Calloc("Gnm_StopPosnReq", 506, 1, 0x10uLL);
  if (v3)
  {
    v3[3] = a1;
    AgpsSendFsmMsg(128, 128, 8391683, v3);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm_StopPosnReq");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    result = 0;
  }

  else
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm_StopPosnReq");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    result = 5;
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Gnm_HwInitialize(char a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v6), "GNM", 73, "Gnm_HwInitialize");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a2)
  {
    v7 = gnssOsa_Calloc("Gnm_HwInitialize", 602, 1, 0x20uLL);
    if (v7)
    {
      v7[12] = a1;
      *(v7 + 2) = a2;
      *(v7 + 3) = a3;
      AgpsSendFsmMsg(128, 128, 8403456, v7);
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 73, "Gnm_HwInitialize");
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      v9 = 0;
    }

    else
    {
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v12 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v12), "GNM", 73, "Gnm_HwInitialize");
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }

      v9 = 5;
    }
  }

  else if (g_LbsOsaTrace_Config < 2)
  {
    v9 = 1;
  }

  else
  {
    bzero(__str, 0x3C6uLL);
    v10 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx InitStatusCB\n", (*&g_MacClockTicksToMsRelation * v10), "GNM", 87, "Gnm_HwInitialize", 258);
    v9 = 1;
    gnssOsa_PrintLog(__str, 2, 1, 0);
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v11 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v11), "GNM", 73, "Gnm_HwInitialize");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  v13 = *MEMORY[0x29EDCA608];
  return v9;
}

void Gnm_HalStartCnf(int a1, _DWORD *a2)
{
  v22 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm_HalStartCnf");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (!a2)
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_24;
    }

    bzero(__str, 0x3C6uLL);
    mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n");
    goto LABEL_18;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: CBType,%u\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 73, "Gnm_HalStartCnf", a1);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v6 = a2;
      v7 = 0;
      goto LABEL_21;
    }

    if (a1 == 2)
    {
      v6 = a2;
      v7 = 1;
LABEL_21:
      Gnm00_01HandleRevInfo(v6, v7);
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  if (a1 != 3)
  {
    if (a1 == 4)
    {
      if (g_LbsOsaTrace_Config < 2)
      {
        goto LABEL_24;
      }

      goto LABEL_17;
    }

LABEL_16:
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_24;
    }

LABEL_17:
    bzero(__str, 0x3C6uLL);
    v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx CBType,%u\n", v8);
LABEL_18:
    gnssOsa_PrintLog(__str, 2, 1, 0);
    if (g_LbsOsaTrace_Config >= 4)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v11 = *a2;
  if (*a2 == 1 || v11 == 3)
  {
    v15 = gnssOsa_Calloc("Gnm00_02HandleInitStatus", 704, 1, 0x10uLL);
    if (v15)
    {
      v16 = v15;
      v17 = a2[1];
      if ((v17 - 3) < 3)
      {
        *(v15 + 12) = v17 - 1;
        v14 = 8402688;
        v13 = v15;
        goto LABEL_33;
      }

      if (g_LbsOsaTrace_Config >= 2)
      {
        bzero(__str, 0x3C6uLL);
        v19 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx FailStep,%u\n", (*&g_MacClockTicksToMsRelation * v19), "GNM", 87, "Gnm00_03MapInitFailReason", 515, v17);
        gnssOsa_PrintLog(__str, 2, 1, 0);
      }

      free(v16);
    }

    if (g_LbsOsaTrace_Config < 4)
    {
      goto LABEL_24;
    }
  }

  else if (v11 == 2)
  {
    v12 = gnssOsa_Calloc("Gnm00_02HandleInitStatus", 686, 1, 0xCuLL);
    if (v12)
    {
      v13 = v12;
      v14 = 8392961;
LABEL_33:
      AgpsSendFsmMsg(128, 128, v14, v13);
      goto LABEL_22;
    }

    if (g_LbsOsaTrace_Config < 4)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (g_LbsOsaTrace_Config < 2)
    {
      goto LABEL_24;
    }

    bzero(__str, 0x3C6uLL);
    v18 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx InitErr,%u\n", (*&g_MacClockTicksToMsRelation * v18), "GNM", 87, "Gnm00_02HandleInitStatus", 515, *a2);
    gnssOsa_PrintLog(__str, 2, 1, 0);
    if (g_LbsOsaTrace_Config < 4)
    {
      goto LABEL_24;
    }
  }

  bzero(__str, 0x3C6uLL);
  v20 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", v20, "GNM", 73, "Gnm00_02HandleInitStatus");
  gnssOsa_PrintLog(__str, 4, 1, 0);
LABEL_22:
  if (g_LbsOsaTrace_Config >= 4)
  {
LABEL_23:
    bzero(__str, 0x3C6uLL);
    v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", v9, "GNM", 73, "Gnm_HalStartCnf");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

LABEL_24:
  v10 = *MEMORY[0x29EDCA608];
}

void Gnm00_01HandleRevInfo(_DWORD *a1, char a2)
{
  v8 = *MEMORY[0x29EDCA608];
  if (*a1 == 4 && (v4 = gnssOsa_Calloc("Gnm00_01HandleRevInfo", 631, 1, 0x54uLL)) != 0)
  {
    v5 = v4;
    v4[80] = a2;
    memcpy_s("Gnm00_01HandleRevInfo", 639, v4 + 12, 0x44u, a1 + 1, 0x44uLL);
    v6 = *MEMORY[0x29EDCA608];

    AgpsSendFsmMsg(128, 128, 8392707, v5);
  }

  else
  {
    v7 = *MEMORY[0x29EDCA608];
  }
}

void Gnm_ReceiveData(size_t a1, unsigned __int8 *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 68, "Gnm_ReceiveData");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  v5 = gnssOsa_Calloc("Gnm_ReceiveData", 820, 1, 0x20uLL);
  if (v5)
  {
    v6 = v5;
    v7 = gnssOsa_Calloc("Gnm_ReceiveData", 828, 1, a1);
    v6[2] = v7;
    if (v7)
    {
      memcpy_s("Gnm_ReceiveData", 836, v7, a1, a2, a1);
      *(v6 + 12) = a1;
      AgpsSendFsmMsg(128, 128, 8393475, v6);
    }

    else
    {
      free(v6);
    }
  }

  if (g_LbsOsaTrace_Config >= 5)
  {
    bzero(__str, 0x3C6uLL);
    v8 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v8), "GNM", 68, "Gnm_ReceiveData");
    gnssOsa_PrintLog(__str, 5, 1, 0);
  }

  v9 = *MEMORY[0x29EDCA608];
}

void Gnm_HardwareStatusNotif (int a1)
{
  v8 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v2), "GNM", 73, "Gnm_HardwareStatusNotif");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v3 = gnssOsa_Calloc("Gnm_HardwareStatusNotif", 862, 1, 0x10uLL);
  if (v3)
  {
    v4 = v3;
    *(v3 + 3) = a1;
    if (a1 == 6)
    {
      GncP16_51MEPowerStateInd(7);
    }

    AgpsSendFsmMsg(128, 128, 8393731, v4);
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v5 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", (*&g_MacClockTicksToMsRelation * v5), "GNM", 73, "Gnm_HardwareStatusNotif");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void Gnm_HalStopCnf(int a1, _DWORD *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Entry\n", (*&g_MacClockTicksToMsRelation * v4), "GNM", 73, "Gnm_HalStopCnf");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  if (a2)
  {
    if ((a1 - 1) >= 3)
    {
      if (a1 == 4)
      {
        v8 = gnssOsa_Calloc("Gnm_HalStopCnf", 933, 1, 0x10uLL);
        if (v8)
        {
          v8[12] = *a2 == 6;
          AgpsSendFsmMsg(128, 128, 8393217, v8);
        }

        if (g_LbsOsaTrace_Config >= 4)
        {
          goto LABEL_18;
        }

        goto LABEL_19;
      }

      if (g_LbsOsaTrace_Config < 2)
      {
        goto LABEL_19;
      }

      bzero(__str, 0x3C6uLL);
      v5 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v6 = 515;
    }

    else
    {
      if (g_LbsOsaTrace_Config < 2)
      {
        goto LABEL_19;
      }

      bzero(__str, 0x3C6uLL);
      v5 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v6 = 1028;
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx CBType,%u\n", v5, "GNM", 87, "Gnm_HalStopCnf", v6, a1);
    gnssOsa_PrintLog(__str, 2, 1, 0);
    if (g_LbsOsaTrace_Config >= 4)
    {
LABEL_18:
      bzero(__str, 0x3C6uLL);
      v9 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Exit\n", v9, "GNM", 73, "Gnm_HalStopCnf");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  else if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNM", 87, "Gnm_HalStopCnf", 513);
    gnssOsa_PrintLog(__str, 2, 1, 0);
    if (g_LbsOsaTrace_Config >= 4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  v10 = *MEMORY[0x29EDCA608];
}

uint64_t Hal22_InitializeConn(void)
{
  v12 = *MEMORY[0x29EDCA608];
  if (gp_Comm && (*(*gp_Comm + 72))(gp_Comm))
  {
    if (!Hal_SetReadCbAsync(Hal02_AsyncReadCb))
    {
LABEL_21:
      result = 0xFFFFFFFFLL;
      goto LABEL_22;
    }

    if (g_LbsOsaTrace_Config < 4)
    {
      v1 = 1;
    }

    else
    {
      bzero(__str, 0x3C6uLL);
      v0 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Read Cb set\n", (*&g_MacClockTicksToMsRelation * v0), "HAL", 73, "Hal22_InitializeConn");
      v1 = 1;
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  else
  {
    v1 = 0;
  }

  if (!Hal_CommsItfInitialize())
  {
    goto LABEL_21;
  }

  if (!gnssOsa_SemInit(&g_HandleAckSem, 0))
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v8 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v9 = __error();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx HandleAckSem err,%d\n", v8, "HAL", 69, "Hal22_InitializeConn", 1539, *v9);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    goto LABEL_21;
  }

  if ((v1 & 1) == 0)
  {
    if (gnssOsa_CreateThread("Hal22_InitializeConn", 79, &g_HalRdrThrd, 0, Hal02_07ChipRead, 0, 0, 0, 99))
    {
      goto LABEL_16;
    }

    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v2 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v3 = __error();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RdrThrd err,%d\n", v2, "HAL", 69, "Hal22_InitializeConn", 1554, *v3);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    if (gnssOsa_DeinitCountingSem(&g_HandleAckSem))
    {
      goto LABEL_16;
    }

    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v4 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
      v5 = __error();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx HandleAckSem err,%d\n", v4, "HAL", 69, "Hal22_InitializeConn", 1540, *v5);
      gnssOsa_PrintLog(__str, 1, 1, 0);
LABEL_16:
      if (g_LbsOsaTrace_Config >= 4)
      {
        bzero(__str, 0x3C6uLL);
        v6 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: RdrThrd ON\n", (*&g_MacClockTicksToMsRelation * v6), "HAL", 73, "Hal22_InitializeConn");
        gnssOsa_PrintLog(__str, 4, 1, 0);
      }
    }
  }

  result = 0;
LABEL_22:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Hal22_DeInitializeConn(void)
{
  v8 = *MEMORY[0x29EDCA608];
  Hal_CommsItfDeInitialize();
  if (pthread_join(g_HalRdrThrd, 0))
  {
    v0 = g_LbsOsaTrace_Config == 0;
  }

  else
  {
    v0 = 1;
  }

  if (!v0)
  {
    bzero(__str, 0x3C6uLL);
    v1 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v2 = __error();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RdrThrd err,%d\n", v1, "HAL", 69, "Hal22_DeInitializeConn", 1555, *v2);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  if (!gnssOsa_DeinitCountingSem(&g_HandleAckSem) && g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v3 = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
    v4 = __error();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx HandleAckSem err,%d\n", v3, "HAL", 69, "Hal22_DeInitializeConn", 1540, *v4);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  result = Hal02_DeInitParser();
  g_HalState = 1;
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Hal22_ZxSendToChip(unsigned __int8 *a1, size_t a2)
{
  v20 = *MEMORY[0x29EDCA608];
  if (a2 > 0x1000)
  {
    if (g_LbsOsaTrace_Config >= 2)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx inpLen\n", (*&g_MacClockTicksToMsRelation * v2), "HAL", 87, "Hal22_ZxSendToChip", 514);
      gnssOsa_PrintLog(__str, 2, 1, 0);
    }

    goto LABEL_30;
  }

  v3 = a2;
  if (((*(*gp_Logger + 72))(gp_Logger) & 1) != 0 && a1[2] != 77)
  {
    GnssDbgMgr_WriteLog(v3, a1);
  }

  if (g_IsSPIEnabled)
  {
    v5 = 4;
  }

  else
  {
    v5 = 64;
  }

  v6 = (v5 + 0x1FFF) & v3;
  if (v6)
  {
    v7 = v5 - v6 + v3;
    v8 = gnssOsa_Calloc("Hal22_ZxSendToChip", 143, 1, v7);
    if (!v8)
    {
LABEL_30:
      v7 = -1;
      goto LABEL_31;
    }

    v9 = v8;
    v18 = v6;
    memcpy_s("Hal22_ZxSendToChip", 147, v8, v7, a1, v3);
    v3 = v7;
    a1 = v9;
  }

  else
  {
    v18 = 0;
    v7 = v3;
  }

  for (i = 0; i < 3; i += (v13 >> 31) + 1)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v11 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
      if (g_IsSPIEnabled)
      {
        v12 = "SPI";
      }

      else
      {
        v12 = "PCIe";
      }

      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s:write,size %u,zx%c%c%c 0x%x 0x%x\n", v11, "HAL", 73, "Hal22_ZxSendToChip", v12, v3, a1[2], a1[3], a1[4], a1[5], a1[6]);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    v13 = Hal_CommsItfWriteData(a1, v3);
    if (v13 == v3)
    {
      if (v18 && a1)
      {
        free(a1);
      }

      goto LABEL_31;
    }
  }

  v14 = v13;
  if (v18 && a1)
  {
    free(a1);
  }

  v7 = v14;
  if (v14 == 0xFFFF)
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v15 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Hw transport fail\n", (*&g_MacClockTicksToMsRelation * v15), "HAL", 69, "Hal22_ZxSendToChip", 1282);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    if (g_HalCallbacks)
    {
      g_HalCallbacks(7);
    }

    goto LABEL_30;
  }

LABEL_31:
  v16 = *MEMORY[0x29EDCA608];
  return v7;
}

BOOL Hal_WakeUpGNSS(void)
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = 1;
  DebugFeaturesBitmask = Ga05_GetDebugFeaturesBitmask();
  v2 = 0;
  while (1)
  {
    if ((DebugFeaturesBitmask & 0x2000) != 0)
    {
      Hal35_Set_SPI_InUse(0);
    }

    else
    {
      Hal35_Set_SPI_InUse(1);
      if (!Hal35_BaseBandSPMI_GNSSWake())
      {
        if (g_LbsOsaTrace_Config >= 2)
        {
          bzero(__str, 0x3C6uLL);
          v3 = mach_continuous_time();
          snprintf(__str, 0x3C5uLL, "%10u %s%c %s: SPMI driver not ready\n", (*&g_MacClockTicksToMsRelation * v3), "HAL", 87, "Hal_WakeUpGNSS");
          gnssOsa_PrintLog(__str, 2, 1, 0);
        }

        usleep(0x4C4B40u);
        goto LABEL_11;
      }

      usleep(0x30D40u);
    }

    if (!Hal15_ReadHwRevision(77))
    {
      break;
    }

LABEL_11:
    v0 = v2++ < 9;
    if (v2 == 10)
    {
      v0 = 0;
      goto LABEL_17;
    }
  }

  Hal35_Set_SPI_InUse(1);
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v4 = *&g_MacClockTicksToMsRelation * mach_continuous_time();
    v5 = "NOC";
    if ((DebugFeaturesBitmask & 0x2000) == 0)
    {
      v5 = "SPMI";
    }

    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: GNSS wake,%s\n", v4, "HAL", 73, "Hal_WakeUpGNSS", v5);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

LABEL_17:
  v6 = *MEMORY[0x29EDCA608];
  return v0;
}

uint64_t Hal22_GetHwRevision(int *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  result = Hal15_ReadHwRevision(80);
  if (result)
  {
    v3 = 4;
LABEL_7:
    *a1 = v3;
    goto LABEL_8;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx CP\n", (*&g_MacClockTicksToMsRelation * v4), "HAL", 73, "Hal22_GetHwRevision", 1285);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  result = Hal15_ReadHwRevision(77);
  if (result)
  {
    v3 = 5;
    goto LABEL_7;
  }

  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx ME\n", (*&g_MacClockTicksToMsRelation * v6), "HAL", 73, "Hal22_GetHwRevision", 1285);
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  result = 0;
LABEL_8:
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void GncP19_04MEResetTimerExpiry(void)
{
  v3 = *MEMORY[0x29EDCA608];
  if (g_LbsOsaTrace_Config >= 2)
  {
    bzero(__str, 0x3C6uLL);
    v0 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx Gnss BBReset NoResp\n", (*&g_MacClockTicksToMsRelation * v0), "GNC", 87, "GncP19_04MEResetTimerExpiry", 1305);
    gnssOsa_PrintLog(__str, 2, 1, 0);
  }

  v1 = *MEMORY[0x29EDCA608];
}

uint64_t GncP19_05HandleHWStatusInd(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_HW_STATUS_IND Status,%hhu\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 73, "GncP19_05HandleHWStatusInd", *(a1 + 12));
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    v5 = *(a1 + 12);
    if (v5 == 2)
    {
      if (g_LbsOsaTrace_Config)
      {
        bzero(__str, 0x3C6uLL);
        v8 = mach_continuous_time();
        snprintf(__str, 0x3C5uLL, "%10u %s%c %s: HW Reset ongoing\n", (*&g_MacClockTicksToMsRelation * v8), "GNC", 69, "GncP19_05HandleHWStatusInd");
        gnssOsa_PrintLog(__str, 1, 1, 0);
      }

      v6 = 3;
    }

    else if (v5 == 1)
    {
      v6 = 5;
    }

    else
    {
      v6 = 4;
    }

    GncP16_28UpdateStateResetStatus(v6, a2, a3);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v7 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx\n", (*&g_MacClockTicksToMsRelation * v7), "GNC", 69, "GncP19_05HandleHWStatusInd", 517);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v9 = *MEMORY[0x29EDCA608];
  return 0;
}

double *NK_Decay_Speed(double *result, int a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x29EDCA608];
  v4 = 1000 * result;
  v5 = *(a4 + 27120);
  if (v5 * a2 > 1000 * result)
  {
    v7 = *(a3 + 328);
    if (result && v5 <= 0x3E7 && v7 > 0.001)
    {
      v8 = 1.0 - (v5 * a2 - 1000 * result) * (v5 * a2 - 1000 * result) / ((v5 * a2 + v4) * (v5 * a2 + v4));
      v9 = *(a4 + 27112);
      if (v9)
      {
        v8 = v8 / (1.0 - (v9 * a2 - v4) * (v9 * a2 - v4) / ((v9 * a2 + v4) * (v9 * a2 + v4)));
      }

      v10 = v8 * v8;
      *(a4 + 27112) = v5;
      v11 = (a3 + 88);
      for (i = 4; i > 1; --i)
      {
        *v11 = v10 * *v11;
        --v11;
      }

      v7 = *(a3 + 328);
      v13 = *(a4 + 304) - v7 * v10;
    }

    else
    {
      *(a3 + 72) = 0;
      *(a3 + 80) = 0;
      *(a3 + 88) = 0;
      v13 = *(a4 + 304);
    }

    if (v7 > *(a4 + 112))
    {
      v14 = 0;
      v15 = v13 * v13 * 0.0555555556;
      v16 = (a3 + 240);
      v17 = 3;
      v18 = 0uLL;
      do
      {
        v23 = 0;
        v22[2] = v18;
        v22[3] = v18;
        v22[0] = v18;
        v22[1] = v18;
        v24 = *(v16 - 1);
        v25 = *v16;
        if (v17 == 1)
        {
          v15 = v15 * *(a4 + 128);
        }

        v19 = 0;
        v21 = 0;
        if (v15 > 0.0)
        {
          result = rnk1_core((a4 + 352), 0xCu, v15, v22, &v21);
          v18 = 0uLL;
          v19 = v21 != 0;
        }

        v14 += v19;
        v16 += 3;
        --v17;
      }

      while (v17);
      if (v14)
      {
        *(a4 + 140) = 11;
        *(a4 + 136) = 1;
      }
    }
  }

  v20 = *MEMORY[0x29EDCA608];
  return result;
}

void GncP03_10SndNewUpdtSM(void)
{
  v5 = *MEMORY[0x29EDCA608];
  v0 = gnssOsa_Calloc("GncP03_10SndNewUpdtSM", 52, 1, 0x10uLL);
  if (v0)
  {
    v1 = v0;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v2 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_UPDT_POS_AVAL_IND =>GNCS\n", (*&g_MacClockTicksToMsRelation * v2), "GNC", 73, "GncP03_10SndNewUpdtSM");
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(132, 130, 8657155, v1);
  }

  v3 = *MEMORY[0x29EDCA608];
}

void GncP03_13SendStopFWActResp(char a1, char a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v4 = gnssOsa_Calloc("GncP03_13SendStopFWActResp", 71, 1, 0x10uLL);
  if (v4)
  {
    v5 = v4;
    v4[12] = a2;
    v4[13] = a1;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: FSM:GNCP_STOP_FW_ACTIVE_RSP =>GNM Activity,%hhu,Status,%u\n", (*&g_MacClockTicksToMsRelation * v6), "GNC", 73, "GncP03_13SendStopFWActResp", v5[12], v5[13]);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }

    AgpsSendFsmMsg(132, 128, 8652804, v5);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void GncP03_SendGNSSSleepRequest(int a1, int a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (g_DeRegGnssCount >= 4u)
  {
    snprintf(v8, 0x3B6uLL, "ASSERT: %s %d Max Attempts De-Register GNSS", "GncP03_SendGNSSSleepRequest", 103);
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: %s\n", (*&g_MacClockTicksToMsRelation * v6), "OSA", 69, "GncP03_SendGNSSSleepRequest", v8);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    gnssOsa_FlushLog();
    __assert_rtn("GncP03_SendGNSSSleepRequest", "gncpe03Tx.cpp", 104, "false && De-Register GNSS Failed");
  }

  if (Hal_GNSS_SessionStop(a1))
  {
    ++g_DeRegGnssCount;
    if (g_LbsOsaTrace_Config >= 4)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: SleepTO,%u,ExpSleepDur,%u,Attempt,%u\n", (*&g_MacClockTicksToMsRelation * v4), "GNC", 73, "GncP03_SendGNSSSleepRequest", a1, a2, g_DeRegGnssCount);
      gnssOsa_PrintLog(__str, 4, 1, 0);
    }
  }

  v5 = *MEMORY[0x29EDCA608];
}

uint64_t Encode_SVid_STE(int a1, unsigned int a2, char *a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = a2 + 100;
  if (a1 == 7)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if (a1 == 7)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  if (a1 == 6)
  {
    v6 = 7;
  }

  else
  {
    v3 = v4;
    v6 = v5;
  }

  v7 = a2 + 128;
  if (a1 == 5)
  {
    v8 = a2;
  }

  else
  {
    v8 = 0;
  }

  if (a1 == 5)
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  if (a1 == 4)
  {
    v10 = 6;
  }

  else
  {
    v7 = v8;
    v10 = v9;
  }

  if (a1 <= 5)
  {
    v3 = v7;
    v6 = v10;
  }

  v11 = a2 + 8;
  v12 = a2 + 64;
  if (a1 == 3)
  {
    v13 = 5;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  if (a1 == 2)
  {
    v14 = 4;
  }

  else
  {
    v11 = v12;
    v14 = v13;
  }

  if (a1 == 1)
  {
    v11 = a2;
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  v16 = a1 <= 3;
  if (a1 <= 3)
  {
    result = v11;
  }

  else
  {
    result = v3;
  }

  if (v16)
  {
    v18 = v15;
  }

  else
  {
    v18 = v6;
  }

  if (a3)
  {
    *a3 = v18;
  }

  v19 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t Decode_SVid_STE(uint64_t a1, int a2, int *a3)
{
  v7 = *MEMORY[0x29EDCA608];
  *a3 = 0;
  if (a2 == 1 && (a1 - 1) <= 0x1Fu)
  {
    v3 = 1;
LABEL_10:
    *a3 = v3;
    v4 = a1;
    goto LABEL_11;
  }

  if (a2 == 2 && (a1 - 120) <= 0x26u)
  {
    v3 = 7;
    goto LABEL_10;
  }

  if (a2 == 3 && (a1 + 63) <= 9u)
  {
    v3 = 5;
    goto LABEL_10;
  }

  if (a2 == 4 && (a1 - 1) <= 0xDu)
  {
    *a3 = 2;
    v4 = (a1 - 8);
  }

  else if (a2 == 5 && (a1 - 65) <= 0x23u)
  {
    *a3 = 3;
    v4 = (a1 - 64);
  }

  else if (a2 == 6 && (a1 + 127) <= 0x3Eu)
  {
    *a3 = 4;
    v4 = (a1 - 128);
  }

  else
  {
    v4 = 0;
    if (a2 == 7 && (a1 - 101) <= 0xDu)
    {
      *a3 = 6;
      v4 = (a1 - 100);
    }
  }

LABEL_11:
  v5 = *MEMORY[0x29EDCA608];
  return v4;
}

void GNSS_HL_Data_Bases_Clear(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v55 = *MEMORY[0x29EDCA608];
  memset(__src, 0, 22);
  *(&__src[3] + 7) = 0u;
  *(&__src[2] + 6) = 0u;
  v2 = *(v1 + 48);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  *(v2 + 65) = *(&__src[3] + 7);
  *(v2 + 50) = *&__src[2];
  *(v2 + 34) = *__src;
  *(v2 + 128) = 0;
  *(v2 + 113) = 0u;
  *(v2 + 97) = 0u;
  *(v2 + 81) = 0u;
  bzero(__src, 0x46B0uLL);
  v3 = 0x1FFFFFFFFFFFFBBELL;
  do
  {
    LODWORD(__src[v3 + 1172]) = 0;
    v4 = &__src[v3 + 1173];
    *v4 = 0uLL;
    v4[1] = 0uLL;
    v3 += 5;
  }

  while (v3 * 8);
  v5 = &__src[1173];
  v6 = 8720;
  do
  {
    *(v5 - 2) = 0;
    *v5 = 0uLL;
    v5[1] = 0uLL;
    v5 = (v5 + 40);
    v6 -= 40;
  }

  while (v6);
  memcpy(*(v1 + 32), __src, 0x46B0uLL);
  bzero(__src, 0x2280uLL);
  *(&__src[7] + 4) = 0x500000002;
  v7 = &__src[9];
  v8 = 5904;
  do
  {
    *v7 = 0;
    *(v7 + 4) = 0;
    v7[1] = 0;
    v7[2] = 0;
    *(v7 + 24) = 0;
    *(v7 + 34) = 0;
    *(v7 + 26) = 0;
    *(v7 + 42) = 0;
    v7 += 6;
    v8 -= 48;
  }

  while (v8);
  bzero(&__src[747], 0xA3DuLL);
  memset(&__src[1075], 0, 73);
  memset(&__src[1085], 0, 146);
  v9 = *(v1 + 40);
  *v9 = *__src;
  *(v9 + 44) = *(&__src[5] + 4);
  *(v9 + 32) = *&__src[4];
  *(v9 + 16) = *&__src[2];
  *(v9 + 60) = *(&__src[7] + 4);
  memcpy((v9 + 68), &__src[8] + 4, 0x2236uLL);
  bzero(*(v1 + 64), 0x440uLL);
  memset(v51, 0, sizeof(v51));
  memset(__src, 0, 280);
  v10 = *(v1 + 72);
  *v10 = 0x200000000;
  *(v10 + 194) = *&v51[128];
  *(v10 + 210) = *&v51[144];
  *(v10 + 226) = *&v51[160];
  *(v10 + 236) = *&v51[170];
  *(v10 + 130) = *&v51[64];
  *(v10 + 146) = *&v51[80];
  *(v10 + 162) = *&v51[96];
  *(v10 + 178) = *&v51[112];
  *(v10 + 66) = *v51;
  *(v10 + 82) = *&v51[16];
  *(v10 + 98) = *&v51[32];
  memset(v54, 0, sizeof(v54));
  memset(v53, 0, sizeof(v53));
  memset(&__src[7798], 0, 136);
  *(v10 + 13) = 0;
  *(v10 + 8) = 0;
  *(v10 + 21) = 257;
  *(v10 + 23) = 1;
  *(v10 + 48) = 0;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 24) = 0;
  *(v10 + 52) = 0x500000002;
  *(v10 + 60) = 0;
  *(v10 + 64) = 0;
  *(v10 + 114) = *&v51[48];
  *(v10 + 252) = 0u;
  v10 += 252;
  *(v10 + 464) = 0u;
  *(v10 + 480) = 0u;
  *(v10 + 432) = 0u;
  *(v10 + 448) = 0u;
  *(v10 + 400) = 0u;
  *(v10 + 416) = 0u;
  *(v10 + 368) = 0u;
  *(v10 + 384) = 0u;
  *(v10 + 336) = 0u;
  *(v10 + 352) = 0u;
  *(v10 + 304) = 0u;
  *(v10 + 320) = 0u;
  *(v10 + 272) = 0u;
  *(v10 + 288) = 0u;
  *(v10 + 240) = 0u;
  *(v10 + 256) = 0u;
  *(v10 + 208) = 0u;
  *(v10 + 224) = 0u;
  *(v10 + 176) = 0u;
  *(v10 + 192) = 0u;
  *(v10 + 144) = 0u;
  *(v10 + 160) = 0u;
  *(v10 + 112) = 0u;
  *(v10 + 128) = 0u;
  *(v10 + 80) = 0u;
  *(v10 + 96) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 494) = 0u;
  memcpy((v10 + 510), __src, 0x118uLL);
  memcpy((v10 + 790), v54, 0x118uLL);
  memcpy((v10 + 1070), v53, 0x118uLL);
  v11 = *&__src[7812];
  *(v10 + 1446) = *&__src[7810];
  *(v10 + 1462) = v11;
  *(v10 + 1478) = __src[7814];
  v12 = *&__src[7804];
  *(v10 + 1382) = *&__src[7802];
  *(v10 + 1398) = v12;
  v13 = *&__src[7808];
  *(v10 + 1414) = *&__src[7806];
  *(v10 + 1430) = v13;
  v14 = *&__src[7800];
  *(v10 + 1350) = *&__src[7798];
  *(v10 + 1366) = v14;
  *(v10 + 1598) = 0;
  *(v10 + 1566) = 0u;
  *(v10 + 1582) = 0u;
  *(v10 + 1534) = 0u;
  *(v10 + 1550) = 0u;
  *(v10 + 1502) = 0u;
  *(v10 + 1518) = 0u;
  *(v10 + 1486) = 0u;
  *(v10 + 1600) = 1;
  *(v10 + 1601) = 0u;
  *(v10 + 1617) = 0u;
  *(v10 + 1633) = 0u;
  *(v10 + 1649) = 0u;
  *(v10 + 1665) = 0u;
  *(v10 + 1681) = 0u;
  *(v10 + 1697) = 0u;
  *(v10 + 1713) = 0u;
  *(v10 + 1729) = 0u;
  *(v10 + 1745) = 0u;
  *(v10 + 1761) = 0u;
  *(v10 + 1777) = 0u;
  *(v10 + 1793) = 0u;
  *(v10 + 1809) = 0u;
  *(v10 + 1825) = 0u;
  *(v10 + 1841) = 0u;
  *(v10 + 1857) = 0u;
  *(v10 + 1873) = 0u;
  *(v10 + 1889) = 0;
  bzero(__src, 0x93C0uLL);
  for (i = 0; i != 4728; i += 24)
  {
    v16 = &__src[i];
    *(v16 + 175) = 0uLL;
    v16[9] = 0uLL;
    v16[10] = 0uLL;
    v16[7] = 0uLL;
    v16[8] = 0uLL;
    v16[5] = 0uLL;
    v16[6] = 0uLL;
    v16[3] = 0uLL;
    v16[4] = 0uLL;
    v16[1] = 0uLL;
    v16[2] = 0uLL;
    *v16 = 0uLL;
  }

  memset(&__src[4728], 0, 24);
  memcpy(*(v1 + 88), __src, 0x93D8uLL);
  bzero(__src, 0x2E30uLL);
  v17 = 0x1FFFFFFFFFFFFC80;
  do
  {
    v18 = &__src[v17];
    v18[901] = 0;
    *(v18 + 7220) = 0;
    *(v18 + 3608) = 0;
    v18[907] = 0;
    *(v18 + 452) = 0uLL;
    *(&__src[v17 + 905] + 6) = 0;
    v17 += 7;
  }

  while (v17 * 8);
  v19 = &__src[905];
  v20 = 4608;
  do
  {
    *(v19 - 2) = 0;
    *(v19 - 3) = 0;
    *(v19 - 2) = 0;
    *(v19 - 4) = 0;
    *(v19 - 11) = 0;
    v19 = (v19 + 36);
    v20 -= 36;
  }

  while (v20);
  LOWORD(__src[1477]) = 0;
  HIDWORD(__src[1477]) = 0;
  memcpy(*(v1 + 16), __src, 0x2E30uLL);
  bzero(__src, 0x3E00uLL);
  v21 = -15872;
  do
  {
    v22 = (__src + v21);
    v22[998] = 0uLL;
    v22[997] = 0uLL;
    v22[996] = 0uLL;
    v22[995] = 0uLL;
    v22[994] = 0uLL;
    v22[993] = 0uLL;
    v22[992] = 0uLL;
    *(&__src[1997] + v21 + 1) = 0uLL;
    v21 += 124;
  }

  while (v21);
  memset(&__src[1984], 0, 28);
  memcpy(*(v1 + 24), __src, 0x3E1CuLL);
  bzero(__src, 0xF3B0uLL);
  for (j = 120; j != 3832; j += 116)
  {
    v24 = __src + j;
    *(v24 + 111) = 0;
    *(v24 + 5) = 0uLL;
    *(v24 + 6) = 0uLL;
    *(v24 + 3) = 0uLL;
    *(v24 + 4) = 0uLL;
    *(v24 + 1) = 0uLL;
    *(v24 + 2) = 0uLL;
    *v24 = 0uLL;
  }

  do
  {
    v25 = __src + j;
    *(v25 + 111) = 0;
    *(v25 + 5) = 0uLL;
    *(v25 + 6) = 0uLL;
    *(v25 + 3) = 0uLL;
    *(v25 + 4) = 0uLL;
    *(v25 + 1) = 0uLL;
    *(v25 + 2) = 0uLL;
    j += 116;
    *v25 = 0uLL;
  }

  while (j != 7544);
  bzero(&__src[943], 0x5A6uLL);
  memset(&__src[1124], 0, 34);
  memset(&__src[1129], 0, 120);
  v26 = -1160;
  do
  {
    v27 = &__src[1289] + v26;
    *(v27 + 111) = 0;
    *(v27 + 5) = 0uLL;
    *(v27 + 6) = 0uLL;
    *(v27 + 3) = 0uLL;
    *(v27 + 4) = 0uLL;
    *(v27 + 1) = 0uLL;
    *(v27 + 2) = 0uLL;
    *v27 = 0uLL;
    v26 += 116;
  }

  while (v26);
  v28 = -1160;
  do
  {
    v29 = (__src + v28);
    v29[723] = 0uLL;
    v29[722] = 0uLL;
    v29[721] = 0uLL;
    v29[720] = 0uLL;
    v29[719] = 0uLL;
    v29[718] = 0uLL;
    v29[717] = 0uLL;
    *(&__src[1447] + v28 + 7) = 0;
    v28 += 116;
  }

  while (v28);
  v30 = 0x1FFFFFFFFFFFFF40;
  memset(&__src[1434], 0, 456);
  do
  {
    v31 = &__src[v30 + 1683];
    *(v31 + 46) = 0uLL;
    v31[1] = 0uLL;
    v31[2] = 0uLL;
    *v31 = 0uLL;
    v30 += 8;
  }

  while (v30 * 8);
  v32 = -2784;
  do
  {
    v33 = &__src[2031] + v32;
    *(v33 + 111) = 0;
    *(v33 + 5) = 0uLL;
    *(v33 + 6) = 0uLL;
    *(v33 + 3) = 0uLL;
    *(v33 + 4) = 0uLL;
    *(v33 + 1) = 0uLL;
    *(v33 + 2) = 0uLL;
    *v33 = 0uLL;
    v32 += 116;
  }

  while (v32);
  v34 = (&__src[2032] + 4);
  v35 = 864;
  do
  {
    *(v34 - 12) = 0;
    *(v34 - 2) = 0;
    v34[1] = 0;
    v34[2] = 0;
    *v34 = 0;
    v34 = (v34 + 36);
    v35 -= 36;
  }

  while (v35);
  __src[2139] = 0;
  LOWORD(__src[2140]) = 0;
  HIDWORD(__src[2140]) = 0;
  LOBYTE(__src[2141]) = 0;
  HIDWORD(__src[2141]) = 0;
  LOBYTE(__src[2142]) = 0;
  memset(&__src[2143], 0, 49);
  bzero(&__src[2150], 0x1ABCuLL);
  for (k = 0; k != 1296; k += 36)
  {
    v37 = &__src[3005] + k + 4;
    *(v37 + 31) = 0;
    *v37 = 0uLL;
    *(v37 + 1) = 0uLL;
  }

  *(&__src[3168] + 2) = 0;
  *(&__src[3167] + 4) = 0;
  memset(&__src[3170], 0, 30);
  memset(&__src[3174], 0, 120);
  v38 = &__src[3189];
  v39 = 9576;
  do
  {
    *v38 = 0;
    v38[1] = 0;
    *(v38 + 8) = 0;
    *(v38 + 20) = 0uLL;
    *(v38 + 36) = 0uLL;
    *(v38 + 52) = 0uLL;
    *(v38 + 68) = 0uLL;
    *(v38 + 82) = 0uLL;
    *(v38 + 100) = 0uLL;
    *(v38 + 116) = 0uLL;
    *(v38 + 132) = 0uLL;
    v38 += 19;
    v39 -= 152;
  }

  while (v39);
  v40 = &__src[4386];
  v41 = 9576;
  do
  {
    *v40 = 0;
    v40[1] = 0;
    *(v40 + 8) = 0;
    *(v40 + 20) = 0uLL;
    *(v40 + 36) = 0uLL;
    *(v40 + 52) = 0uLL;
    *(v40 + 68) = 0uLL;
    *(v40 + 82) = 0uLL;
    *(v40 + 100) = 0uLL;
    *(v40 + 116) = 0uLL;
    *(v40 + 132) = 0uLL;
    v40 += 19;
    v41 -= 152;
  }

  while (v41);
  for (m = 0; m != 2772; m += 44)
  {
    v43 = (&__src[5583] + m);
    *(v43 + 27) = 0uLL;
    *v43 = 0uLL;
    v43[1] = 0uLL;
  }

  *(&__src[5929] + 4) = 0;
  WORD2(__src[5930]) = 0;
  WORD2(__src[5932]) = 0;
  __src[5931] = 0;
  *(&__src[5931] + 7) = 0;
  __src[5933] = 0;
  LOWORD(__src[5934]) = 0;
  LOWORD(__src[5936]) = 0;
  *(&__src[5934] + 4) = 0;
  *(&__src[5935] + 3) = 0;
  __src[5937] = 0;
  LOWORD(__src[5938]) = 0;
  *(&__src[5938] + 4) = 0u;
  *(&__src[5940] + 4) = 0u;
  *(&__src[5942] + 2) = 0;
  bzero(&__src[5943] + 4, 0x8E4uLL);
  for (n = 0; n != 728; n += 52)
  {
    v45 = &__src[6229] + n + 6;
    *(v45 - 1) = 0;
    *(&__src[6229] + n + 6) = 0;
    *(v45 + 1) = 0;
    *(v45 + 6) = 0;
    *(v45 + 5) = 0;
    *(v45 - 14) = 0;
    *(v45 - 7) = 0;
    *(v45 + 22) = 0;
    *(v45 + 14) = 0;
    *(v45 + 27) = 0;
  }

  *(&__src[6320] + 6) = 0;
  __src[6319] = 0;
  *(&__src[6319] + 5) = 0;
  memset(&__src[6322], 0, 38);
  __src[7797] = 0;
  bzero(&__src[6327], 0x2DEDuLL);
  memcpy(*(v1 + 56), __src, 0xF3B0uLL);
  memset(v54, 0, 24);
  memset(v53, 0, 24);
  memset(__src, 0, 30);
  v46 = *(v1 + 80);
  *v46 = 0;
  *(v46 + 8) = 0;
  *(v46 + 13) = 0;
  *(v46 + 24) = 0x500000002;
  *(v46 + 32) = *__src;
  *(v46 + 46) = *(&__src[1] + 6);
  bzero((v46 + 62), 0xEBCuLL);
  *(v46 + 3834) = *v54;
  *(v46 + 3850) = *&v54[16];
  *(v46 + 3858) = *v53;
  *(v46 + 3874) = *&v53[16];
  memset(v54, 0, 35);
  memset(v53, 0, 27);
  LOWORD(__src[0]) = 0;
  BYTE2(__src[0]) = 0;
  bzero(__src + 3, 0x2700uLL);
  v47 = *(v1 + 96);
  v48 = *&v54[16];
  *(v47 + 26) = *v54;
  *v47 = 0;
  *(v47 + 8) = 0;
  *(v47 + 24) = 0;
  *(v47 + 16) = 0;
  *(v47 + 42) = v48;
  *(v47 + 57) = *&v54[31];
  *(v47 + 61) = 0;
  *(v47 + 62) = 0;
  *(v47 + 66) = *v53;
  *(v47 + 77) = *&v53[11];
  memcpy((v47 + 93), __src, 0x2703uLL);
  bzero(*(v1 + 104), 0xD7D8uLL);
  bzero(*(v1 + 232), 0x18E0uLL);
  v49 = *(v1 + 240);
  v50 = *MEMORY[0x29EDCA608];

  bzero(v49, 0x878uLL);
}

uint64_t GNSS_HL_Data_Bases_Init(void *a1)
{
  v8 = *MEMORY[0x29EDCA608];
  *(a1[1] + 16) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  Init_DB_SV_Nav_Mess(a1[7]);
  v2 = a1[1];
  v3 = a1[6];
  *v3 = 0;
  *(v3 + 4) = 0;
  *(v3 + 16) = 0;
  v4 = *(v2 + 16);
  *(v3 + 24) = *v2;
  *(v3 + 28) = v4;
  *(v3 + 8) = *(v2 + 24);
  *(v3 + 32) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 40) = 0;
  *(v3 + 68) = -1;
  *(v3 + 64) = -1;
  *(v3 + 82) = 0;
  *(v3 + 108) = 0;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 70) = 0;
  *(v3 + 77) = 0;
  *(v3 + 128) = *v2;
  Init_DB_SV_AzEl(a1[4]);
  Init_DB_Sys_Status(a1[9]);
  Init_DB_Nav_Soln(a1[6], a1[9], a1[10]);
  Init_DB_Acq_Aid_Table(a1[10], a1[7], a1[5]);
  v5 = a1[13];
  v6 = *MEMORY[0x29EDCA608];

  return Init_DB_Sensor(v5);
}

uint64_t GNSS_HL_Data_Bases_Init_NV(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  *(*(a1 + 8) + 16) = (*&g_MacClockTicksToMsRelation * mach_continuous_time());
  Init_DB_SV_Nav_Mess_NV(*(a1 + 56));
  Init_DB_Time_Sync_NV(*(a1 + 8), *(a1 + 48), *(a1 + 16));
  Init_DB_SV_AzEl(*(a1 + 32));
  Init_DB_Sys_Status_NV(*(a1 + 48), *(a1 + 72));
  Init_DB_Nav_Soln(*(a1 + 48), *(a1 + 72), *(a1 + 80));
  Init_DB_Acq_Aid_Table(*(a1 + 80), *(a1 + 56), *(a1 + 40));
  v2 = *(a1 + 104);
  v3 = *MEMORY[0x29EDCA608];

  return Init_DB_Sensor(v2);
}

char *GNSS_HL_Data_Bases_TimeSynch(void *a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  v4 = a1[1];
  v5 = a1[10];
  if (v3[6])
  {
    gn_report_assertion_failure("GNSS_HL_Data_Bases_TimeSynch: DBts TTick not 0");
  }

  if (!v3[7])
  {
    gn_report_assertion_failure("GNSS_HL_Data_Bases_TimeSynch: DBts OS_Time_ms = 0");
  }

  if (!*v4)
  {
    gn_report_assertion_failure("GNSS_HL_Data_Bases_TimeSynch: DBtt TTick = 0");
  }

  v6 = v4[4];
  if (!v6)
  {
    gn_report_assertion_failure("GNSS_HL_Data_Bases_TimeSynch: DBtt OS_Time_ms = 0");
    v6 = v4[4];
  }

  v7 = v3[7];
  if (v6 < v7)
  {
    EvLog_nd("GNSS_HL_Data_Bases_TimeSynch: WARNING - DBtt behind DBts", 2, a3, v6, v7);
    v7 = v3[7];
  }

  v8 = v3[6];
  v9 = *(v3 + 1);
  v10 = *v3;
  if (v10 < 1)
  {
    v12 = *v4;
    v11 = v4[4];
    v13 = v12;
  }

  else
  {
    v11 = v4[4];
    v12 = *v4;
    v13 = (v7 - v11 + v12);
  }

  v3[6] = v13;
  v3[7] = v11;
  v14 = *(v4 + 3);
  *(v3 + 1) = v14;
  result = EvLog_v("GNSS_HL_Data_Bases_TimeSynch: DBts %d %g %u %u %U  orig %u %u %U  DBns %u %u %U  DBtt %u %u %u %U", v10, *(v3 + 5), v13, v11, v14, v8, v7, v9, *(v5 + 32), *(v5 + 36), *(v5 + 40), v12, v11, v14, v4[3], v17);
  if (!*(v5 + 32))
  {
    *(v5 + 32) = *(v3 + 3);
    *(v5 + 40) = *(v3 + 1);
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

void GM_Set_MSec_TOT_SSS(uint64_t a1, double a2, double a3, double a4)
{
  v5 = *MEMORY[0x29EDCA608];
  Comp_Sig_TOT(*a1, *(a1 + 4), *(a1 + 8), a4, a3);
  v4 = *MEMORY[0x29EDCA608];
}

void GM_Set_MSec_TOW_NSSS(uint64_t a1, uint64_t a2, double *a3, int *a4, double a5)
{
  v24 = *MEMORY[0x29EDCA608];
  if (*(a2 + 4) == 1)
  {
    v9 = *(a1 + 16);
    *v20 = *a1;
    v21 = v9;
    v22 = *(a1 + 32);
    v23 = *(a1 + 48);
    GM_Aid_NSSS_Meas(a2, 0, v20);
    v10 = *a3;
    v11 = vcvtd_n_f64_u32(*(a2 + 16), 1uLL) + Comp_Sig_TOT(*v20, *&v20[2], v20[4], *a3, a5) * 1000.0;
    v12 = -0.5;
    if (v11 <= 0.0)
    {
      v13 = -0.5;
    }

    else
    {
      v13 = 0.5;
    }

    v14 = v11 + v13;
    if (v14 <= 2147483650.0)
    {
      if (v14 >= -2147483650.0)
      {
        v15 = v14 * 0.001;
      }

      else
      {
        v15 = -2147483.65;
      }
    }

    else
    {
      v15 = 2147483.65;
    }

    v16 = (v15 - v10) * 1000.0;
    if (v16 > 0.0)
    {
      v12 = 0.5;
    }

    v17 = v16 + v12;
    if (v17 <= 2147483650.0)
    {
      if (v17 >= -2147483650.0)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0x80000000;
      }
    }

    else
    {
      v18 = 0x7FFFFFFF;
    }

    *a4 = v18;
    *a3 = v15;
  }

  v19 = *MEMORY[0x29EDCA608];
}

const void **SV_Data_Decode_Update_Wrapper(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  GNSS_Validate_p_list(a1, "SV_Data_Decode_Update_Wrapper: Entry");
  SV_Data_Decode(*(a1 + 144), *(a1 + 184), *(a1 + 24), *(a1 + 72), *(a1 + 32), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  v2 = *MEMORY[0x29EDCA608];

  return GNSS_Validate_p_list(a1, "SV_Data_Decode_Update_Wrapper:  Exit");
}

void *gnssTest::Device::Device(void *result)
{
  v2 = *MEMORY[0x29EDCA608];
  *result = &unk_2A1F2A138;
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

void gnssTest::GnssAdaptDeviceTest::~GnssAdaptDeviceTest(gnssTest::GnssAdaptDeviceTest *this)
{
  v10 = *MEMORY[0x29EDCA608];
  *this = &unk_2A1F2A1B8;
  if (g_LbsOsaTrace_Config >= 4)
  {
    bzero(__str, 0x3C6uLL);
    v2 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: Destructor\n", (*&g_MacClockTicksToMsRelation * v2), "ADP", 73, "~GnssAdaptDeviceTest");
    gnssOsa_PrintLog(__str, 4, 1, 0);
  }

  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 10);
  *(this + 10) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 9);
  *(this + 9) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 8);
  *(this + 8) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 7);
  *(this + 7) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](this + 24);
  v8 = *MEMORY[0x29EDCA608];
}

{
  v2 = *MEMORY[0x29EDCA608];
  v1 = *MEMORY[0x29EDCA608];

  gnssTest::GnssAdaptDeviceTest::~GnssAdaptDeviceTest(this);
}

{
  v2 = *MEMORY[0x29EDCA608];
  gnssTest::GnssAdaptDeviceTest::~GnssAdaptDeviceTest(this);
  v1 = *MEMORY[0x29EDCA608];

  JUMPOUT(0x29C296280);
}

void sub_298FB5EFC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void gnssTest::GnssAdaptDeviceTest::periodic(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x29EDCA608];
  if (*(a4 + 24))
  {
    v4 = *MEMORY[0x29EDCA608];

    std::function<void ()(gnss::Result)>::operator()(a4, 7);
  }

  else
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v5 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v5), "ADP", 69, "periodic", 513);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    v6 = *MEMORY[0x29EDCA608];
  }
}

void gnssTest::GnssAdaptDeviceTest::recordIQ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(a5 + 24))
  {
    v5 = *MEMORY[0x29EDCA608];

    std::function<void ()(gnss::Result)>::operator()(a5, 7);
  }

  else
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "recordIQ", 513);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    v7 = *MEMORY[0x29EDCA608];
  }
}

void gnssTest::GnssAdaptDeviceTest::commLoopback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(a5 + 24))
  {
    v5 = *MEMORY[0x29EDCA608];

    std::function<void ()(gnss::Result)>::operator()(a5, 7);
  }

  else
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v6 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "commLoopback", 513);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    v7 = *MEMORY[0x29EDCA608];
  }
}

void gnssTest::GnssAdaptDeviceTest::cw(uint64_t a1, int a2, char a3, int a4, int a5, uint64_t a6, uint64_t a7, double a8)
{
  v22 = *MEMORY[0x29EDCA608];
  if (*(a7 + 24))
  {
    v14 = *(a1 + 8);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest2cwEiN4gnss4BandENS_7SubbandEdiNSt3__18functionIFvNS4_6vectorINS_13RfMeasurementENS4_9allocatorIS7_EEEEEEENS5_IFvNS1_6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_5;
    block[4] = a1;
    std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::__value_func[abi:ne200100](v18, a6);
    v20 = a3;
    v19[8] = a2;
    v19[9] = a4;
    *&v18[4] = a8;
    v19[10] = a5;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v19, a7);
    dispatch_async(v14, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v19);
    std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](v18);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v15 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v15), "ADP", 69, "cw", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v16 = *MEMORY[0x29EDCA608];
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest2cwEiN4gnss4BandENS_7SubbandEdiNSt3__18functionIFvNS4_6vectorINS_13RfMeasurementENS4_9allocatorIS7_EEEEEEENS5_IFvNS1_6ResultEEEE_block_invoke(uint64_t a1)
{
  v11[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (*(a1 + 64))
  {
    std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::__value_func[abi:ne200100](v9, a1 + 40);
    v3 = v2 + 24;
    if (v9 != (v2 + 24))
    {
      v4 = v10;
      v5 = *(v2 + 48);
      if (v10 == v9)
      {
        if (v5 == v3)
        {
          (*(*v10 + 24))();
          (*(*v10 + 32))(v10);
          v10 = 0;
          (*(**(v2 + 48) + 24))(*(v2 + 48), v9);
          (*(**(v2 + 48) + 32))(*(v2 + 48));
          *(v2 + 48) = 0;
          v10 = v9;
          (*(v11[0] + 24))(v11, v2 + 24);
          (*(v11[0] + 32))(v11);
        }

        else
        {
          (*(*v10 + 24))();
          (*(*v10 + 32))(v10);
          v10 = *(v2 + 48);
        }

        *(v2 + 48) = v3;
      }

      else if (v5 == v3)
      {
        (*(*v5 + 24))(*(v2 + 48), v9);
        (*(**(v2 + 48) + 32))(*(v2 + 48));
        *(v2 + 48) = v10;
        v10 = v9;
      }

      else
      {
        v10 = *(v2 + 48);
        *(v2 + 48) = v4;
      }
    }

    std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](v9);
  }

  if (HalFactory_RunCWTest(*(a1 + 112), *(a1 + 124), *(a1 + 72), *(a1 + 116), *(a1 + 120), v2))
  {
    v6 = 1;
  }

  else
  {
    v6 = 8;
  }

  v7 = *MEMORY[0x29EDCA608];

  return std::function<void ()(gnss::Result)>::operator()(a1 + 80, v6);
}

void sub_298FB6794(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c84_ZTSNSt3__18functionIFvNS_6vectorIN8gnssTest13RfMeasurementENS_9allocatorIS3_EEEEEEE80c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::__value_func[abi:ne200100](a1 + 40, a2 + 40);
  result = std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](a1 + 80, a2 + 80);
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __destroy_helper_block_e8_40c84_ZTSNSt3__18functionIFvNS_6vectorIN8gnssTest13RfMeasurementENS_9allocatorIS3_EEEEEEE80c40_ZTSNSt3__18functionIFvN4gnss6ResultEEEE(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 80);
  v2 = *MEMORY[0x29EDCA608];

  return std::__function::__value_func<void ()(std::vector<gnssTest::RfMeasurement>)>::~__value_func[abi:ne200100](a1 + 40);
}

void gnssTest::GnssAdaptDeviceTest::modulated(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*(a7 + 24))
  {
    v7 = *MEMORY[0x29EDCA608];

    std::function<void ()(gnss::Result)>::operator()(a7, 7);
  }

  else
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v8 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v8), "ADP", 69, "modulated", 513);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    v9 = *MEMORY[0x29EDCA608];
  }
}

void gnssTest::GnssAdaptDeviceTest::powerMode(uint64_t a1, int a2, uint64_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v3 = *(a1 + 8);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest9powerModeENS_9PowerModeENSt3__18functionIFvN4gnss6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_5_0;
    v7[8] = a2;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v7, a3);
    dispatch_async(v3, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v7);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "powerMode", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v5 = *MEMORY[0x29EDCA608];
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest9powerModeENS_9PowerModeENSt3__18functionIFvN4gnss6ResultEEEE_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 64);
  if ((v2 - 1) >= 3)
  {
    v3 = v2 == 4;
  }

  else
  {
    std::function<void ()(gnss::Result)>::operator()(a1 + 32, 7);
    v3 = 0;
  }

  if (HalFactory_PowerMode(v3))
  {
    v4 = 1;
  }

  else
  {
    v4 = 8;
  }

  v5 = *MEMORY[0x29EDCA608];

  return std::function<void ()(gnss::Result)>::operator()(a1 + 32, v4);
}

void gnssTest::GnssAdaptDeviceTest::apSignalGpio(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v3 = *MEMORY[0x29EDCA608];

    std::function<void ()(gnss::Result)>::operator()(a3, 7);
  }

  else
  {
    if (g_LbsOsaTrace_Config)
    {
      bzero(__str, 0x3C6uLL);
      v4 = mach_continuous_time();
      snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "apSignalGpio", 513);
      gnssOsa_PrintLog(__str, 1, 1, 0);
    }

    v5 = *MEMORY[0x29EDCA608];
  }
}

void gnssTest::GnssAdaptDeviceTest::timeMarkGpio(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(a3 + 24))
  {
    v3 = *(a1 + 8);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest12timeMarkGpioEiNSt3__18functionIFvN4gnss6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_8_0;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v7, a3);
    dispatch_async(v3, block);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v7);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v4 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v4), "ADP", 69, "timeMarkGpio", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v5 = *MEMORY[0x29EDCA608];
}

uint64_t ___ZN8gnssTest19GnssAdaptDeviceTest12timeMarkGpioEiNSt3__18functionIFvN4gnss6ResultEEEE_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x29EDCA608];
  if (HalFactory_TriggerTSync())
  {
    v2 = 1;
  }

  else
  {
    v2 = 8;
  }

  v3 = *MEMORY[0x29EDCA608];

  return std::function<void ()(gnss::Result)>::operator()(a1 + 32, v2);
}

void gnssTest::GnssAdaptDeviceTest::commPing(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x29EDCA608];
  if (*(a4 + 24))
  {
    v5 = *(a1 + 8);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN8gnssTest19GnssAdaptDeviceTest8commPingEiNSt3__18functionIFvRKNS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEESA_EEENS2_IFvN4gnss6ResultEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_10;
    std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v9, a4);
    std::__function::__value_func<void ()(std::string const&,std::string const&)>::__value_func[abi:ne200100](v10, a3);
    dispatch_async(v5, block);
    std::__function::__value_func<void ()(std::string const&,std::string const&)>::~__value_func[abi:ne200100](v10);
    std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v9);
  }

  else if (g_LbsOsaTrace_Config)
  {
    bzero(__str, 0x3C6uLL);
    v6 = mach_continuous_time();
    snprintf(__str, 0x3C5uLL, "%10u %s%c %s: #%04hx RespCB\n", (*&g_MacClockTicksToMsRelation * v6), "ADP", 69, "commPing", 513);
    gnssOsa_PrintLog(__str, 1, 1, 0);
  }

  v7 = *MEMORY[0x29EDCA608];
}