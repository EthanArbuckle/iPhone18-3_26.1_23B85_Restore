@interface RSScanCoaching
- (RSScanCoaching)init;
- (id).cxx_construct;
@end

@implementation RSScanCoaching

- (id).cxx_construct
{
  *(self + 2) = 0u;
  v3 = self + 32;
  *(self + 2) = 0x43FA000040400000;
  *(self + 6) = 1057467924;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 9) = 0u;
  *(self + 10) = 0u;
  *(self + 13) = 0u;
  *(self + 14) = 0u;
  *(self + 15) = 0u;
  *(self + 16) = 0u;
  *(self + 34) = 0;
  v4 = malloc_type_malloc(0x80uLL, 0x100004000313F17uLL);
  v5 = v4;
  if (v4)
  {
    v4[4] = xmmword_2623A8738;
    v4[5] = unk_2623A8748;
    v4[6] = xmmword_2623A8758;
    v4[7] = unk_2623A8768;
    *v4 = xmmword_2623A86F8;
    v4[1] = unk_2623A8708;
    v4[2] = xmmword_2623A8718;
    v4[3] = unk_2623A8728;
  }

  v6 = malloc_type_malloc(0x40uLL, 0x100004000313F17uLL);
  v7 = v6;
  if (v6)
  {
    *v6 = xmmword_2623A8778;
    v6[1] = unk_2623A8788;
    v6[2] = xmmword_2623A8798;
    v6[3] = unk_2623A87A8;
  }

  v8 = malloc_type_malloc(0x40uLL, 0x100004000313F17uLL);
  v9 = v8;
  if (v8)
  {
    *v8 = xmmword_2623A87B8;
    v8[1] = unk_2623A87C8;
    v8[2] = xmmword_2623A87D8;
    v8[3] = unk_2623A87E8;
  }

  v10 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  v11 = v10;
  if (v10)
  {
    *v10 = 0xBFFDEADA80000000;
  }

  v12 = *(self + 54);
  v13 = *(self + 55);
  v14 = *(self + 28);
  if (v13 * v12 == 16)
  {
    if (v14 && v5)
    {
      memcpy(v14, v5, 8 * v12 * v13);
    }

    *(v3 + 23) = 0x200000008;
  }

  else
  {
    if (v14)
    {
      free(v14);
      *(self + 28) = 0;
    }

    *(v3 + 23) = 0x200000008;
    v15 = malloc_type_malloc(0x80uLL, 0x100004000313F17uLL);
    *(self + 28) = v15;
    if (v15 && v5)
    {
      memcpy(v15, v5, 8 * *(self + 54) * *(self + 55));
    }
  }

  v16 = *(self + 58);
  v17 = *(self + 59);
  v18 = *(self + 30);
  if (v17 * v16 == 8)
  {
    if (v18 && v7)
    {
      memcpy(v18, v7, 8 * v16 * v17);
    }

    *(self + 29) = 0x100000008;
  }

  else
  {
    if (v18)
    {
      free(v18);
      *(self + 30) = 0;
    }

    *(self + 29) = 0x100000008;
    v19 = malloc_type_malloc(0x40uLL, 0x100004000313F17uLL);
    *(self + 30) = v19;
    if (v19 && v7)
    {
      memcpy(v19, v7, 8 * *(self + 58) * *(self + 59));
    }
  }

  v20 = *(self + 62);
  v21 = *(self + 63);
  v22 = *(self + 32);
  if (v21 * v20 == 8)
  {
    if (v22 && v9)
    {
      memcpy(v22, v9, 8 * v20 * v21);
    }

    *(self + 31) = 0x800000001;
  }

  else
  {
    if (v22)
    {
      free(v22);
      *(self + 32) = 0;
    }

    *(self + 31) = 0x800000001;
    v23 = malloc_type_malloc(0x40uLL, 0x100004000313F17uLL);
    *(self + 32) = v23;
    if (v23 && v9)
    {
      memcpy(v23, v9, 8 * *(self + 62) * *(self + 63));
    }
  }

  v24 = *(self + 66);
  v25 = *(self + 67);
  v26 = *(self + 34);
  if (v25 * v24 == 1)
  {
    if (v26 && v11)
    {
      memcpy(v26, v11, 8 * v24 * v25);
    }

    *(self + 33) = 0x100000001;
    goto LABEL_49;
  }

  if (v26)
  {
    free(v26);
    *(self + 34) = 0;
  }

  *(self + 33) = 0x100000001;
  v27 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  *(self + 34) = v27;
  if (!v27)
  {
LABEL_49:
    if (!v11)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  if (!v11)
  {
    goto LABEL_51;
  }

  memcpy(v27, v11, 8 * *(self + 66) * *(self + 67));
LABEL_50:
  free(v11);
LABEL_51:
  if (v9)
  {
    free(v9);
  }

  if (v7)
  {
    free(v7);
  }

  if (v5)
  {
    free(v5);
  }

  *(self + 36) = 0x3F00000043AF0000;
  *(self + 25) = 0u;
  *(self + 26) = 0u;
  *(self + 27) = 0u;
  *(self + 28) = 0u;
  *(self + 296) = 0u;
  *(self + 312) = 0u;
  *(self + 328) = 0u;
  *(self + 344) = 0u;
  *(self + 360) = 0u;
  *(self + 376) = 0u;
  v28 = malloc_type_malloc(0x80uLL, 0x100004000313F17uLL);
  v29 = v28;
  if (v28)
  {
    v28[4] = xmmword_2623A8838;
    v28[5] = unk_2623A8848;
    v28[6] = xmmword_2623A8858;
    v28[7] = unk_2623A8868;
    *v28 = xmmword_2623A87F8;
    v28[1] = unk_2623A8808;
    v28[2] = xmmword_2623A8818;
    v28[3] = unk_2623A8828;
  }

  v30 = malloc_type_malloc(0x40uLL, 0x100004000313F17uLL);
  v31 = v30;
  if (v30)
  {
    *v30 = xmmword_2623A8878;
    v30[1] = unk_2623A8888;
    v30[2] = xmmword_2623A8898;
    v30[3] = unk_2623A88A8;
  }

  v32 = malloc_type_malloc(0x40uLL, 0x100004000313F17uLL);
  v33 = v32;
  if (v32)
  {
    *v32 = xmmword_2623A88B8;
    v32[1] = unk_2623A88C8;
    v32[2] = xmmword_2623A88D8;
    v32[3] = unk_2623A88E8;
  }

  v34 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  v35 = v34;
  if (v34)
  {
    *v34 = 0x3FF565E800000000;
  }

  v36 = *(self + 100);
  v37 = *(self + 101);
  v38 = *(self + 51);
  if (v37 * v36 == 16)
  {
    if (v38 && v29)
    {
      memcpy(v38, v29, 8 * v36 * v37);
    }

    *(self + 50) = 0x200000008;
  }

  else
  {
    if (v38)
    {
      free(v38);
      *(self + 51) = 0;
    }

    *(self + 50) = 0x200000008;
    v39 = malloc_type_malloc(0x80uLL, 0x100004000313F17uLL);
    *(self + 51) = v39;
    if (v39 && v29)
    {
      memcpy(v39, v29, 8 * *(self + 100) * *(self + 101));
    }
  }

  v40 = *(self + 104);
  v41 = *(self + 105);
  v42 = *(self + 53);
  if (v41 * v40 == 8)
  {
    if (v42 && v31)
    {
      memcpy(v42, v31, 8 * v40 * v41);
    }

    *(self + 52) = 0x100000008;
  }

  else
  {
    if (v42)
    {
      free(v42);
      *(self + 53) = 0;
    }

    *(self + 52) = 0x100000008;
    v43 = malloc_type_malloc(0x40uLL, 0x100004000313F17uLL);
    *(self + 53) = v43;
    if (v43 && v31)
    {
      memcpy(v43, v31, 8 * *(self + 104) * *(self + 105));
    }
  }

  v44 = *(self + 108);
  v45 = *(self + 109);
  v46 = *(self + 55);
  if (v45 * v44 == 8)
  {
    if (v46 && v33)
    {
      memcpy(v46, v33, 8 * v44 * v45);
    }

    *(self + 54) = 0x800000001;
  }

  else
  {
    if (v46)
    {
      free(v46);
      *(self + 55) = 0;
    }

    *(self + 54) = 0x800000001;
    v47 = malloc_type_malloc(0x40uLL, 0x100004000313F17uLL);
    *(self + 55) = v47;
    if (v47 && v33)
    {
      memcpy(v47, v33, 8 * *(self + 108) * *(self + 109));
    }
  }

  v48 = *(self + 112);
  v49 = *(self + 113);
  v50 = *(self + 57);
  if (v49 * v48 == 1)
  {
    if (v50 && v35)
    {
      memcpy(v50, v35, 8 * v48 * v49);
    }

    *(self + 56) = 0x100000001;
    goto LABEL_105;
  }

  if (v50)
  {
    free(v50);
    *(self + 57) = 0;
  }

  *(self + 56) = 0x100000001;
  v51 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  *(self + 57) = v51;
  if (!v51)
  {
LABEL_105:
    if (!v35)
    {
      goto LABEL_107;
    }

    goto LABEL_106;
  }

  if (!v35)
  {
    goto LABEL_107;
  }

  memcpy(v51, v35, 8 * *(self + 112) * *(self + 113));
LABEL_106:
  free(v35);
LABEL_107:
  if (v33)
  {
    free(v33);
  }

  if (v31)
  {
    free(v31);
  }

  if (v29)
  {
    free(v29);
  }

  *(self + 116) = 1057803469;
  v52 = (self + 576);
  *(self + 36) = 0u;
  *(self + 37) = 0u;
  *(self + 38) = 0u;
  *(self + 39) = 0u;
  *(self + 142) = 0;
  *(self + 472) = 0u;
  *(self + 488) = 0u;
  *(self + 504) = 0u;
  *(self + 520) = 0u;
  *(self + 536) = 0u;
  *(self + 552) = 0u;
  v53 = malloc_type_malloc(0x20uLL, 0x100004000313F17uLL);
  v54 = v53;
  if (v53)
  {
    *v53 = xmmword_2623A88F8;
    v53[1] = unk_2623A8908;
  }

  v55 = malloc_type_malloc(0x20uLL, 0x100004000313F17uLL);
  v56 = v55;
  if (v55)
  {
    *v55 = xmmword_2623A8918;
    v55[1] = unk_2623A8928;
  }

  v57 = malloc_type_malloc(0x20uLL, 0x100004000313F17uLL);
  v58 = v57;
  if (v57)
  {
    *v57 = xmmword_2623A8938;
    v57[1] = unk_2623A8948;
  }

  v59 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  v60 = v59;
  if (v59)
  {
    *v59 = 0x3FD19FA6A0000000;
  }

  v61 = *(self + 144);
  v62 = *(self + 145);
  v63 = *(self + 73);
  if (v62 * v61 == 4)
  {
    if (v63 && v54)
    {
      memcpy(v63, v54, 8 * v61 * v62);
    }

    *v52 = 0x100000004;
  }

  else
  {
    if (v63)
    {
      free(v63);
      *(self + 73) = 0;
    }

    *v52 = 0x100000004;
    v64 = malloc_type_malloc(0x20uLL, 0x100004000313F17uLL);
    *(self + 73) = v64;
    if (v64 && v54)
    {
      memcpy(v64, v54, 8 * *(self + 144) * *(self + 145));
    }
  }

  v65 = *(self + 148);
  v66 = *(self + 149);
  v67 = *(self + 75);
  if (v66 * v65 == 4)
  {
    if (v67 && v56)
    {
      memcpy(v67, v56, 8 * v65 * v66);
    }

    *(self + 74) = 0x100000004;
  }

  else
  {
    if (v67)
    {
      free(v67);
      *(self + 75) = 0;
    }

    *(self + 74) = 0x100000004;
    v68 = malloc_type_malloc(0x20uLL, 0x100004000313F17uLL);
    *(self + 75) = v68;
    if (v68 && v56)
    {
      memcpy(v68, v56, 8 * *(self + 148) * *(self + 149));
    }
  }

  v69 = *(self + 152);
  v70 = *(self + 153);
  v71 = *(self + 77);
  if (v70 * v69 == 4)
  {
    if (v71 && v58)
    {
      memcpy(v71, v58, 8 * v69 * v70);
    }

    *(self + 76) = 0x400000001;
  }

  else
  {
    if (v71)
    {
      free(v71);
      *(self + 77) = 0;
    }

    *(self + 76) = 0x400000001;
    v72 = malloc_type_malloc(0x20uLL, 0x100004000313F17uLL);
    *(self + 77) = v72;
    if (v72 && v58)
    {
      memcpy(v72, v58, 8 * *(self + 152) * *(self + 153));
    }
  }

  v73 = *(self + 156);
  v74 = *(self + 157);
  v75 = *(self + 79);
  if (v74 * v73 == 1)
  {
    if (v75 && v60)
    {
      memcpy(v75, v60, 8 * v73 * v74);
    }

    *(self + 78) = 0x100000001;
    goto LABEL_161;
  }

  if (v75)
  {
    free(v75);
    *(self + 79) = 0;
  }

  *(self + 78) = 0x100000001;
  v76 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  *(self + 79) = v76;
  if (!v76)
  {
LABEL_161:
    if (!v60)
    {
      goto LABEL_163;
    }

    goto LABEL_162;
  }

  if (!v60)
  {
    goto LABEL_163;
  }

  memcpy(v76, v60, 8 * *(self + 156) * *(self + 157));
LABEL_162:
  free(v60);
LABEL_163:
  if (v58)
  {
    free(v58);
  }

  if (v56)
  {
    free(v56);
  }

  v77 = v3 + 760;
  if (v54)
  {
    free(v54);
  }

  *(self + 40) = xmmword_2623A7CC0;
  *(self + 41) = xmmword_2623A7CD0;
  *(self + 84) = 0x3D4CCCCD3E19999ALL;
  *(self + 680) = 0u;
  *(self + 696) = 0u;
  *(self + 712) = 0u;
  *(self + 728) = 0u;
  *(self + 744) = 0u;
  *(self + 760) = 0u;
  *(self + 776) = 0u;
  *(self + 103) = 0x40051592C15DCE9DLL;
  *v77 = xmmword_2623A7CE0;
  v77[1] = xmmword_2623A7CF0;
  *(self + 104) = 0;
  *(self + 106) = 0;
  *(self + 105) = 0;
  *(self + 117) = 850045863;
  *(self + 124) = 0;
  *(self + 60) = 0u;
  *(self + 61) = 0u;
  *(self + 59) = 0u;
  return self;
}

- (RSScanCoaching)init
{
  v3.receiver = self;
  v3.super_class = RSScanCoaching;
  result = [(RSScanCoaching *)&v3 init];
  if (result)
  {
    *(result + 110) = 0x404000003F000000;
    *(result + 928) = 1;
    *(result + 115) = 5;
  }

  return result;
}

@end