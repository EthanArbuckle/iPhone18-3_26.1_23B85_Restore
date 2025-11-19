int *PCHash128::operator+=(int *result, int *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = result[2];
  v5 = result[3];
  if (!(v3 | *result | v4 | v5))
  {
    *result = xmmword_26034C050;
    v2 = 1732584193;
    v3 = -271733879;
    v4 = -1732584194;
    v5 = 271733878;
  }

  v7 = *a2;
  v6 = a2[1];
  HIDWORD(v8) = v2 + *a2 - 680876936 + (v5 & ~v3 | v4 & v3);
  LODWORD(v8) = HIDWORD(v8);
  v9 = (v8 >> 25) + v3;
  HIDWORD(v8) = v5 + v6 - 389564586 + (v9 & v3 | v4 & ~v9);
  LODWORD(v8) = HIDWORD(v8);
  v10 = a2[2];
  v11 = a2[3];
  v12 = (v8 >> 20) + v9;
  HIDWORD(v8) = v4 + v10 + 606105819 + (v12 & v9 | v3 & ~v12);
  LODWORD(v8) = HIDWORD(v8);
  v13 = (v8 >> 15) + v12;
  HIDWORD(v8) = v3 + v11 - 1044525330 + (v13 & v12 | v9 & ~v13);
  LODWORD(v8) = HIDWORD(v8);
  v14 = (v8 >> 10) + v13;
  HIDWORD(v8) = v9 + 1971064751 + (v14 & v13 | v12 & ~v14);
  LODWORD(v8) = HIDWORD(v8);
  v15 = (v8 >> 25) + v14;
  HIDWORD(v8) = v12 + 1200080426 + (v15 & v14 | v13 & ~v15);
  LODWORD(v8) = HIDWORD(v8);
  v16 = (v8 >> 20) + v15;
  HIDWORD(v8) = v13 - 1473231341 + (v16 & v15 | v14 & ~v16);
  LODWORD(v8) = HIDWORD(v8);
  v17 = (v8 >> 15) + v16;
  HIDWORD(v8) = v14 - 45705983 + (v17 & v16 | v15 & ~v17);
  LODWORD(v8) = HIDWORD(v8);
  v18 = (v8 >> 10) + v17;
  HIDWORD(v8) = v15 + 1770035416 + (v18 & v17 | v16 & ~v18);
  LODWORD(v8) = HIDWORD(v8);
  v19 = (v8 >> 25) + v18;
  HIDWORD(v8) = v16 - 1958414417 + (v19 & v18 | v17 & ~v19);
  LODWORD(v8) = HIDWORD(v8);
  v20 = (v8 >> 20) + v19;
  HIDWORD(v8) = v17 - 42063 + (v20 & v19 | v18 & ~v20);
  LODWORD(v8) = HIDWORD(v8);
  v21 = (v8 >> 15) + v20;
  HIDWORD(v8) = v18 - 1990404162 + (v21 & v20 | v19 & ~v21);
  LODWORD(v8) = HIDWORD(v8);
  v22 = (v8 >> 10) + v21;
  HIDWORD(v8) = v19 + 1804603682 + (v22 & v21 | v20 & ~v22);
  LODWORD(v8) = HIDWORD(v8);
  v23 = (v8 >> 25) + v22;
  HIDWORD(v8) = v20 - 40341101 + (v23 & v22 | v21 & ~v23);
  LODWORD(v8) = HIDWORD(v8);
  v24 = (v8 >> 20) + v23;
  HIDWORD(v8) = v21 - 1502002290 + (v24 & v23 | v22 & ~v24);
  LODWORD(v8) = HIDWORD(v8);
  v25 = (v8 >> 15) + v24;
  HIDWORD(v8) = v22 + 1236535329 + (v25 & v24 | v23 & ~v25);
  LODWORD(v8) = HIDWORD(v8);
  v26 = (v8 >> 10) + v25;
  HIDWORD(v8) = v6 + v23 - 165796510 + (v26 & v24 | v25 & ~v24);
  LODWORD(v8) = HIDWORD(v8);
  v27 = (v8 >> 27) + v26;
  HIDWORD(v8) = v24 - 1069501632 + (v27 & v25 | v26 & ~v25);
  LODWORD(v8) = HIDWORD(v8);
  v28 = (v8 >> 23) + v27;
  HIDWORD(v8) = v25 + 643717713 + (v28 & v26 | v27 & ~v26);
  LODWORD(v8) = HIDWORD(v8);
  v29 = (v8 >> 18) + v28;
  HIDWORD(v8) = v7 + v26 - 373897302 + (v29 & v27 | v28 & ~v27);
  LODWORD(v8) = HIDWORD(v8);
  v30 = (v8 >> 12) + v29;
  HIDWORD(v8) = v27 - 701558691 + (v30 & v28 | v29 & ~v28);
  LODWORD(v8) = HIDWORD(v8);
  v31 = (v8 >> 27) + v30;
  HIDWORD(v8) = v28 + 38016083 + (v31 & v29 | v30 & ~v29);
  LODWORD(v8) = HIDWORD(v8);
  v32 = (v8 >> 23) + v31;
  HIDWORD(v8) = v29 - 660478335 + (v32 & v30 | v31 & ~v30);
  LODWORD(v8) = HIDWORD(v8);
  v33 = (v8 >> 18) + v32;
  HIDWORD(v8) = v30 + 1741945800 + (v33 & v31 | v32 & ~v31);
  LODWORD(v8) = HIDWORD(v8);
  v34 = (v8 >> 12) + v33;
  HIDWORD(v8) = v31 + 568446438 + (v34 & v32 | v33 & ~v32);
  LODWORD(v8) = HIDWORD(v8);
  v35 = (v8 >> 27) + v34;
  HIDWORD(v8) = v32 - 1019803690 + (v35 & v33 | v34 & ~v33);
  LODWORD(v8) = HIDWORD(v8);
  v36 = (v8 >> 23) + v35;
  HIDWORD(v8) = v11 + v33 - 187363961 + (v36 & v34 | v35 & ~v34);
  LODWORD(v8) = HIDWORD(v8);
  v37 = (v8 >> 18) + v36;
  HIDWORD(v8) = v34 + 1163531501 + (v37 & v35 | v36 & ~v35);
  LODWORD(v8) = HIDWORD(v8);
  v38 = (v8 >> 12) + v37;
  HIDWORD(v8) = v35 - 1444681467 + (v38 & v36 | v37 & ~v36);
  LODWORD(v8) = HIDWORD(v8);
  v39 = (v8 >> 27) + v38;
  HIDWORD(v8) = v10 + v36 - 51403784 + (v39 & v37 | v38 & ~v37);
  LODWORD(v8) = HIDWORD(v8);
  v40 = (v8 >> 23) + v39;
  HIDWORD(v8) = v37 + 1735328473 + (v40 & v38 | v39 & ~v38);
  LODWORD(v8) = HIDWORD(v8);
  v41 = (v8 >> 18) + v40;
  HIDWORD(v8) = v38 - 1926607734 + (v41 & v39 | v40 & ~v39);
  LODWORD(v8) = HIDWORD(v8);
  v42 = (v8 >> 12) + v41;
  HIDWORD(v8) = v39 - 378558 + (v42 ^ v41 ^ v40);
  LODWORD(v8) = HIDWORD(v8);
  v43 = (v8 >> 28) + v42;
  HIDWORD(v8) = v40 - 2022574463 + (v42 ^ v41 ^ v43);
  LODWORD(v8) = HIDWORD(v8);
  v44 = (v8 >> 21) + v43;
  HIDWORD(v8) = v41 + 1839030562 + (v43 ^ v42 ^ v44);
  LODWORD(v8) = HIDWORD(v8);
  v45 = (v8 >> 16) + v44;
  HIDWORD(v8) = v42 - 35309556 + (v44 ^ v43 ^ v45);
  LODWORD(v8) = HIDWORD(v8);
  v46 = (v8 >> 9) + v45;
  HIDWORD(v8) = v6 + v43 - 1530992060 + (v45 ^ v44 ^ v46);
  LODWORD(v8) = HIDWORD(v8);
  v47 = (v8 >> 28) + v46;
  HIDWORD(v8) = v44 - 874590295 + (v46 ^ v45 ^ v47);
  LODWORD(v8) = HIDWORD(v8);
  v48 = (v8 >> 21) + v47;
  HIDWORD(v8) = v45 - 155497632 + (v47 ^ v46 ^ v48);
  LODWORD(v8) = HIDWORD(v8);
  v49 = (v8 >> 16) + v48;
  HIDWORD(v8) = v46 - 1094730640 + (v48 ^ v47 ^ v49);
  LODWORD(v8) = HIDWORD(v8);
  v50 = (v8 >> 9) + v49;
  HIDWORD(v8) = v47 + 681279174 + (v49 ^ v48 ^ v50);
  LODWORD(v8) = HIDWORD(v8);
  v51 = (v8 >> 28) + v50;
  HIDWORD(v8) = v7 + v48 - 358537222 + (v50 ^ v49 ^ v51);
  LODWORD(v8) = HIDWORD(v8);
  v52 = (v8 >> 21) + v51;
  HIDWORD(v8) = v11 + v49 - 722521979 + (v51 ^ v50 ^ v52);
  LODWORD(v8) = HIDWORD(v8);
  v53 = (v8 >> 16) + v52;
  HIDWORD(v8) = v50 + 76029189 + (v52 ^ v51 ^ v53);
  LODWORD(v8) = HIDWORD(v8);
  v54 = (v8 >> 9) + v53;
  HIDWORD(v8) = v51 - 640364487 + (v53 ^ v52 ^ v54);
  LODWORD(v8) = HIDWORD(v8);
  v55 = (v8 >> 28) + v54;
  HIDWORD(v8) = v52 - 421815835 + (v54 ^ v53 ^ v55);
  LODWORD(v8) = HIDWORD(v8);
  v56 = (v8 >> 21) + v55;
  HIDWORD(v8) = v53 + 530742520 + (v55 ^ v54 ^ v56);
  LODWORD(v8) = HIDWORD(v8);
  v57 = (v8 >> 16) + v56;
  HIDWORD(v8) = v10 + v54 - 995338651 + (v56 ^ v55 ^ v57);
  LODWORD(v8) = HIDWORD(v8);
  v58 = (v8 >> 9) + v57;
  HIDWORD(v8) = v7 + v55 - 198630844 + ((v58 | ~v56) ^ v57);
  LODWORD(v8) = HIDWORD(v8);
  v59 = (v8 >> 26) + v58;
  HIDWORD(v8) = v56 + 1126891415 + ((v59 | ~v57) ^ v58);
  LODWORD(v8) = HIDWORD(v8);
  v60 = (v8 >> 22) + v59;
  HIDWORD(v8) = v57 - 1416354905 + ((v60 | ~v58) ^ v59);
  LODWORD(v8) = HIDWORD(v8);
  v61 = (v8 >> 17) + v60;
  HIDWORD(v8) = v58 - 57434055 + ((v61 | ~v59) ^ v60);
  LODWORD(v8) = HIDWORD(v8);
  v62 = (v8 >> 11) + v61;
  HIDWORD(v8) = v59 + 1700485571 + ((v62 | ~v60) ^ v61);
  LODWORD(v8) = HIDWORD(v8);
  v63 = (v8 >> 26) + v62;
  HIDWORD(v8) = v11 + v60 - 1894986606 + ((v63 | ~v61) ^ v62);
  LODWORD(v8) = HIDWORD(v8);
  v64 = (v8 >> 22) + v63;
  HIDWORD(v8) = v61 - 1051523 + ((v64 | ~v62) ^ v63);
  LODWORD(v8) = HIDWORD(v8);
  v65 = (v8 >> 17) + v64;
  HIDWORD(v8) = v6 + v62 - 2054922799 + ((v65 | ~v63) ^ v64);
  LODWORD(v8) = HIDWORD(v8);
  v66 = (v8 >> 11) + v65;
  HIDWORD(v8) = v63 + 1873313359 + ((v66 | ~v64) ^ v65);
  LODWORD(v8) = HIDWORD(v8);
  v67 = (v8 >> 26) + v66;
  HIDWORD(v8) = v64 - 30611744 + ((v67 | ~v65) ^ v66);
  LODWORD(v8) = HIDWORD(v8);
  v68 = (v8 >> 22) + v67;
  HIDWORD(v8) = v65 - 1560198380 + ((v68 | ~v66) ^ v67);
  LODWORD(v8) = HIDWORD(v8);
  v69 = (v8 >> 17) + v68;
  HIDWORD(v8) = v66 + 1309151649 + ((v69 | ~v67) ^ v68);
  LODWORD(v8) = HIDWORD(v8);
  v70 = (v8 >> 11) + v69;
  HIDWORD(v8) = v67 + 2001960578 + ((v70 | ~v68) ^ v69);
  LODWORD(v8) = HIDWORD(v8);
  v71 = (v8 >> 26) + v70;
  HIDWORD(v8) = v68 - 1120210379 + ((v71 | ~v69) ^ v70);
  LODWORD(v8) = HIDWORD(v8);
  v72 = (v8 >> 22) + v71;
  HIDWORD(v8) = v10 + v69 + 718787259 + ((v72 | ~v70) ^ v71);
  LODWORD(v8) = HIDWORD(v8);
  v73 = (v8 >> 17) + v72;
  HIDWORD(v8) = v70 - 343485551 + ((v73 | ~v71) ^ v72);
  LODWORD(v8) = HIDWORD(v8);
  *result = v71 + v2;
  result[1] = v73 + v3 + (v8 >> 11);
  result[2] = v73 + v4;
  result[3] = v72 + v5;
  return result;
}

uint64_t compare(const PCHash128 *a1, const PCHash128 *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  v3 = *(a1 + 1);
  v4 = *(a2 + 1);
  if (v3 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v3 > v4)
  {
    return 1;
  }

  v5 = *(a1 + 2);
  v6 = *(a2 + 2);
  if (v5 < v6)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 > v6)
  {
    return 1;
  }

  v7 = *(a1 + 3);
  v8 = *(a2 + 3);
  v9 = v7 >= v8;
  v10 = v7 > v8;
  if (v9)
  {
    return v10;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *operator<<(void *a1)
{
  v2 = *(a1 + *(*a1 - 24) + 8);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "(", 1);
  v4 = *v3;
  *(v3 + *(*v3 - 24) + 8) |= 0x4000u;
  *(v3 + *(v4 - 24) + 8) = *(v3 + *(v4 - 24) + 8) & 0xFFFFFFB5 | 8;
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "0x", 2);
  v24 = 48;
  v6 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, &v24);
  *(v6 + *(*v6 - 24) + 24) = 8;
  v7 = MEMORY[0x2666E9B60]();
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ", ", 2);
  *(v8 + *(*v8 - 24) + 8) = *(v8 + *(*v8 - 24) + 8) & 0xFFFFFFB5 | 8;
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "0x", 2);
  v23 = 48;
  v10 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, &v23);
  *(v10 + *(*v10 - 24) + 24) = 8;
  v11 = MEMORY[0x2666E9B60]();
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", ", 2);
  *(v12 + *(*v12 - 24) + 8) = *(v12 + *(*v12 - 24) + 8) & 0xFFFFFFB5 | 8;
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "0x", 2);
  v22 = 48;
  v14 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, &v22);
  *(v14 + *(*v14 - 24) + 24) = 8;
  v15 = MEMORY[0x2666E9B60]();
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", ", 2);
  *(v16 + *(*v16 - 24) + 8) = *(v16 + *(*v16 - 24) + 8) & 0xFFFFFFB5 | 8;
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "0x", 2);
  v21 = 48;
  v18 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v17, &v21);
  *(v18 + *(*v18 - 24) + 24) = 8;
  v19 = MEMORY[0x2666E9B60]();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ")", 1);
  *(a1 + *(*a1 - 24) + 8) = v2;
  return a1;
}

CGColorSpaceRef __sRGBColorSpace_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF430]);
  sRGBColorSpace_result = result;
  return result;
}

CGColorSpaceRef __GenericGrayGamma22ColorSpace_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF448]);
  GenericGrayGamma22ColorSpace_result = result;
  return result;
}

CGColorSpaceRef __CalibratedGray_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF440]);
  CalibratedGray_result = result;
  return result;
}

CGColorSpaceRef __DeviceRGB_block_invoke()
{
  result = CGColorSpaceCreateDeviceRGB();
  DeviceRGB_result = result;
  return result;
}

CGColorSpaceRef __CalibratedRGB_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF458]);
  CalibratedRGB_result = result;
  return result;
}

uint64_t bignum_s256_init_from_s64(uint64_t result, uint64_t *a2)
{
  v2 = 0x101010101010101 * (result >> 63);
  a2[2] = v2;
  a2[3] = v2;
  *a2 = result;
  a2[1] = v2;
  return result;
}

uint64_t bignum_s256_sub(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *result >= *a2;
  *a3 = *result - *a2;
  v4 = *(result + 16);
  v5 = *(result + 24);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  *(a3 + 16) = v4 - (v6 + !v3);
  *(a3 + 24) = v5 - (v7 + !__CFSUB__(v4, v6, v3));
  return result;
}

unint64_t *bignum_s128_full_multiply(unint64_t *result, unint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = result[1];
  v6 = *result * *a2 + 0;
  *a3 = *result * *a2;
  v8 = result[1] * v3 + *(&v6 + 1);
  v7 = (result[1] * v3 + *(&v6 + 1)) >> 64;
  a3[2] = v7;
  v9 = a3 + 2;
  *(v9 - 1) = v8;
  v10 = a2[1];
  v11 = v8 + 0 + *result * v10;
  *(v9 - 1) = v8 + *result * v10;
  *v9 = v7 + *(&v11 + 1) + result[1] * v10;
  if ((v5 & 0x8000000000000000) == 0)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      return result;
    }

LABEL_5:
    *v9 -= *result;
    return result;
  }

  *v9 -= *a2;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_5;
  }

  return result;
}

void bignum_s256_divide(int8x16_t *a1, int8x16_t *a2, int8x16_t *a3, int8x16_t *a4, double a5, double a6, double a7, double a8, __n128 a9)
{
  v271 = *MEMORY[0x277D85DE8];
  v11 = a1[1];
  v263 = *a1;
  v264 = v11;
  v12 = a2[1];
  v261 = *a2;
  v262 = v12;
  v259 = 0u;
  v260 = 0u;
  v13 = a1[1].i64[1];
  v14 = a2[1].i64[1] & 0x8000000000000000;
  if (v13 < 0)
  {
    v15 = v263.i64[0];
    v16 = vmvnq_s8(v263);
    v263 = v16;
    v264 = vmvnq_s8(v264);
    if (v15)
    {
      v263.i64[0] = v16.i64[0] + 1;
    }

    else
    {
      v67 = __CFADD__(__CFADD__(v263.i64[0], 1), v263.i64[1]);
      *&v263 += 1uLL;
      *&v264 += v67;
    }
  }

  v17 = v13 & 0x8000000000000000;
  if (v14)
  {
    v18 = v261.i64[0];
    v19 = vmvnq_s8(v261);
    v261 = v19;
    v262 = vmvnq_s8(v262);
    if (v18)
    {
      v261.i64[0] = v19.i64[0] + 1;
    }

    else
    {
      v67 = __CFADD__(__CFADD__(v261.i64[0], 1), v261.i64[1]);
      *&v261 += 1uLL;
      *&v262 += v67;
    }
  }

  v20 = 0;
  v21 = 3;
  while (1)
  {
    v22 = v263.u64[v21];
    if (v22)
    {
      break;
    }

    --v21;
    v20 -= 64;
    if (v21 == -1)
    {
      v23 = 256;
      goto LABEL_14;
    }
  }

  v23 = __clz(v22) - v20;
LABEL_14:
  v24 = 0;
  v25 = 3;
  LODWORD(v26) = 256;
  while (1)
  {
    v27 = v261.u64[v25];
    if (v27)
    {
      break;
    }

    --v25;
    v24 -= 64;
    if (v25 == -1)
    {
      if (!a3)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  v26 = __clz(v27) - v24;
  if (a3)
  {
LABEL_18:
    *a3 = 0u;
    a3[1] = 0u;
  }

LABEL_19:
  if (v23 > v26)
  {
    v259 = v263;
    v260 = v264;
    goto LABEL_189;
  }

  v28 = v26 & 0x3F;
  if ((v26 & 0x3F) != 0)
  {
    v29 = vdupq_lane_s64(v263.i64[0], 0);
    v29.i64[0] = 0;
    v30 = vdup_n_s32(v28);
    v31.i64[0] = v30.u32[0];
    v31.i64[1] = v30.u32[1];
    a9 = v31;
    v32 = vshlq_u64(v264, v31);
    v33 = vshlq_u64(v263, v31);
    v34 = vdup_n_s32(64 - v28);
    v31.i64[0] = v34.u32[0];
    v31.i64[1] = v34.u32[1];
    v35 = vnegq_s64(v31);
    v265 = vorrq_s8(vshlq_u64(v29, v35), v33);
    v266 = vorrq_s8(vshlq_u64(vextq_s8(v263, v264, 8uLL), v35), v32);
    v267 = v264.i64[1] >> -v28;
    v36 = vdupq_lane_s64(v261.i64[0], 0);
    v36.i64[0] = 0;
    v37 = vorrq_s8(vshlq_u64(vextq_s8(v261, v262, 8uLL), v35), vshlq_u64(v262, a9));
    v38 = vorrq_s8(vshlq_u64(v36, v35), vshlq_u64(v261, a9));
LABEL_27:
    v269 = v38;
    v270 = v37;
    goto LABEL_28;
  }

  v265 = v263;
  v266 = v264;
  v267 = 0;
  if ((&v269 & 0x10) == 0)
  {
    v38 = v261;
    v37 = v262;
    goto LABEL_27;
  }

  v269 = v261;
  v270 = v262;
LABEL_28:
  v268 = 0;
  v39 = 4;
  while (!v265.i64[v39])
  {
    if (--v39 == -1)
    {
      v40 = 0;
      goto LABEL_33;
    }
  }

  v40 = v39 + 1;
LABEL_33:
  for (i = 9; i != 5; --i)
  {
    if (v265.i64[i])
    {
      if (i != 6)
      {
        v258 = &v265.u64[1];
        v42 = i - 5;
        goto LABEL_44;
      }

      v259 = 0u;
      v260 = 0u;
      if (a3)
      {
        if (v261.i64[0])
        {
          v43 = __clz(v261.u64[0]);
          v44 = v261.i64[0] << v43;
          if (v261.i64[0] << v43 == 0x8000000000000000)
          {
            v45 = v261.i64[0] - 1;
            if (v261.i64[0] == 1)
            {
              v46 = 0;
              v47 = v264;
              *a3 = v263;
              a3[1] = v47;
LABEL_188:
              v259.i64[0] = v46;
              goto LABEL_189;
            }

            v224 = v263.i64[0];
            v225 = v264;
            v226 = ((2 * v264.i64[0]) << v43) | (v263.i64[1] >> (v43 ^ 0x3Fu));
            a3->i64[0] = ((2 * v263.i64[1]) << v43) | (v263.i64[0] >> (v43 ^ 0x3Fu));
            a3->i64[1] = v226;
            a3[1].i64[0] = ((2 * v225.i64[1]) << v43) | (v225.i64[0] >> (v43 ^ 0x3Fu));
            a3[1].i64[1] = v225.i64[1] >> (v43 ^ 0x3Fu);
            goto LABEL_170;
          }

          if (v43)
          {
            v206 = v264.u64[1];
            v207 = vdupq_lane_s64(v263.i64[0], 0);
            v207.i64[0] = 0;
            v208 = vdup_n_s32(v43);
            v209.i64[0] = v208.u32[0];
            v209.i64[1] = v208.u32[1];
            v210 = vshlq_u64(v264, v209);
            v211 = vshlq_u64(v263, v209);
            v212 = vdup_n_s32(64 - v43);
            v209.i64[0] = v212.u32[0];
            v209.i64[1] = v212.u32[1];
            v213 = vnegq_s64(v209);
            v214 = vorrq_s8(vshlq_u64(v207, v213), v211);
            v215 = vorrq_s8(vshlq_u64(vextq_s8(v263, v264, 8uLL), v213), v210);
            *a3 = v214;
            a3[1] = v215;
            v216 = v206 >> -v43;
          }

          else
          {
            v216 = 0;
            v227 = v264;
            *a3 = v263;
            a3[1] = v227;
          }

          v228 = -v44;
          v229 = 6;
          v230 = -v44;
          v231 = -v44;
          do
          {
            v230 += (v230 * v231) >> 64;
            v231 = (v231 * v231) >> 64;
            --v229;
          }

          while (v229);
          v232 = 1;
          do
          {
            v233 = v232;
            v230 = ((v230 * v228) >> 64) - v44 + (((v228 - v230 + ((v230 * v228) >> 64)) * v230) >> 64);
            v232 = 0;
          }

          while ((v233 & 1) != 0);
          if (v230 * v228 < v44)
          {
            v234 = v230;
          }

          else
          {
            v234 = v230 + 1;
          }

          v235 = 4;
          do
          {
            --v235;
            v236 = v216 + ((v216 * v234) >> 64);
            v237 = (__PAIR128__(v216, a3->i64[v235]) - v236 * v44) >> 64;
            v216 = a3->i64[v235] - v236 * v44;
            if (v237)
            {
              v238 = 1;
            }

            else
            {
              v238 = v216 >= v44;
            }

            if (v238)
            {
              do
              {
                ++v236;
                v237 = (__PAIR128__(v237, v216) - v44) >> 64;
                v216 -= v44;
              }

              while (__PAIR128__(v237, v216) >= v44);
            }

            a3->i64[v235] = v236;
          }

          while (v235);
          goto LABEL_187;
        }
      }

      else if (v261.i64[0])
      {
        v43 = __clz(v261.u64[0]);
        v205 = v261.i64[0] << v43;
        if (v261.i64[0] << v43 == 0x8000000000000000)
        {
          v45 = v261.i64[0] - 1;
          if (v261.i64[0] == 1)
          {
            v46 = 0;
            v265 = v263;
            v266 = v264;
            goto LABEL_188;
          }

          v224 = v263.i64[0];
          v265.i64[0] = ((2 * v263.i64[1]) << v43) | (v263.i64[0] >> (v43 ^ 0x3Fu));
          v265.i64[1] = ((2 * v264.i64[0]) << v43) | (v263.i64[1] >> (v43 ^ 0x3Fu));
          v266.i64[0] = ((2 * v264.i64[1]) << v43) | (v264.i64[0] >> (v43 ^ 0x3Fu));
          v266.i64[1] = v264.i64[1] >> (v43 ^ 0x3Fu);
LABEL_170:
          v46 = v224 & v45;
          goto LABEL_188;
        }

        if (v43)
        {
          v217 = vdupq_lane_s64(v263.i64[0], 0);
          v217.i64[0] = 0;
          v218 = vdup_n_s32(v43);
          v219.i64[0] = v218.u32[0];
          v219.i64[1] = v218.u32[1];
          v220 = vshlq_u64(v264, v219);
          v221 = vshlq_u64(v263, v219);
          v222 = vdup_n_s32(64 - v43);
          v219.i64[0] = v222.u32[0];
          v219.i64[1] = v222.u32[1];
          v223 = vnegq_s64(v219);
          v265 = vorrq_s8(vshlq_u64(v217, v223), v221);
          v266 = vorrq_s8(vshlq_u64(vextq_s8(v263, v264, 8uLL), v223), v220);
          v216 = v264.i64[1] >> -v43;
        }

        else
        {
          v216 = 0;
          v265 = v263;
          v266 = v264;
        }

        v239 = -v205;
        v240 = 6;
        v241 = -v205;
        v242 = -v205;
        do
        {
          v241 += (v241 * v242) >> 64;
          v242 = (v242 * v242) >> 64;
          --v240;
        }

        while (v240);
        v243 = 1;
        do
        {
          v244 = v243;
          v241 = ((v241 * v239) >> 64) - v205 + (((v239 - v241 + ((v241 * v239) >> 64)) * v241) >> 64);
          v243 = 0;
        }

        while ((v244 & 1) != 0);
        if (v241 * v239 < v205)
        {
          v245 = v241;
        }

        else
        {
          v245 = v241 + 1;
        }

        v246 = 4;
        do
        {
          --v246;
          v247 = v216 + ((v216 * v245) >> 64);
          v248 = (__PAIR128__(v216, v265.i64[v246]) - v247 * v205) >> 64;
          v216 = v265.i64[v246] - v247 * v205;
          if (v248)
          {
            v249 = 1;
          }

          else
          {
            v249 = v216 >= v205;
          }

          if (v249)
          {
            do
            {
              ++v247;
              v248 = (__PAIR128__(v248, v216) - v205) >> 64;
              v216 -= v205;
            }

            while (__PAIR128__(v248, v216) >= v205);
          }

          v265.i64[v246] = v247;
        }

        while (v246);
LABEL_187:
        v46 = v216 >> v43;
        goto LABEL_188;
      }

      __break(1u);
      return;
    }
  }

  v258 = &v265.u64[1];
  v42 = 0;
LABEL_44:
  v48 = &v269.i8[8 * v42];
  v49 = *(v48 - 1);
  v50 = -v49;
  v51 = 6;
  v52 = -v49;
  v53 = -v49;
  do
  {
    v52 += (v52 * v53) >> 64;
    v53 = (v53 * v53) >> 64;
    --v51;
  }

  while (v51);
  v54 = 1;
  do
  {
    v55 = v54;
    v52 = ((v52 * v50) >> 64) - v49 + (((v50 - v52 + ((v52 * v50) >> 64)) * v52) >> 64);
    v54 = 0;
  }

  while ((v55 & 1) != 0);
  v56 = v40 + 1;
  if (v40 + 1 > v42)
  {
    if (v52 * v50 < v49)
    {
      v57 = v52;
    }

    else
    {
      v57 = v52 + 1;
    }

    v58 = &a3->i8[8 * ~v42];
    do
    {
      v59 = &v265.i8[8 * v56];
      v61 = *(v59 - 2);
      v60 = *(v59 - 1);
      if (v49 < 0x8000000000000001)
      {
        v64 = v61 & 0x7FFFFFFFFFFFFFFFLL;
        v63 = v60 >> 63;
        v62 = *(v59 - 1) >> 63;
      }

      else
      {
        v63 = (((v60 * v57) >> 64) + v60) >> 64;
        v62 = ((v60 * v57) >> 64) + v60;
        v64 = v61 - v62 * v49;
        if (v63)
        {
          v65 = (__PAIR128__(v60, v61) - v62 * v49 - __PAIR128__(v49, 0)) >> 64;
        }

        else
        {
          v66 = v61 - v62 * v49;
          v65 = (__PAIR128__(v60, v61) - v62 * v49) >> 64;
          v64 = v66;
        }

        if (v65)
        {
          v67 = 1;
        }

        else
        {
          v67 = v64 >= v49;
        }

        if (v67)
        {
          do
          {
            v63 = (__PAIR128__(v63, v62++) + 1) >> 64;
            v65 = (__PAIR128__(v65, v64) - v49) >> 64;
            v64 -= v49;
          }

          while (__PAIR128__(v65, v64) >= v49);
        }
      }

      v68 = 0;
      if (v63 && (v62 & 0x8000000000000000) == 0)
      {
        v69 = v62 + 1;
        do
        {
          v68 = (__PAIR128__(v68, v64) + v49) >> 64;
          v64 += v49;
          --v69;
        }

        while (v69);
        v62 = -1;
      }

      if (!v68)
      {
        v70 = *(v48 - 2);
        v71 = v70 * v62;
        v72 = (v70 * v62) >> 64;
        v73 = *(v59 - 3);
        v74 = v73 >= v70 * v62;
        if (v64 != v72)
        {
          v74 = v64 >= v72;
        }

        if (!v74)
        {
          --v62;
          v75 = (v64 + v49) >> 64;
          v64 += v49;
          if (v75)
          {
            goto LABEL_80;
          }

          v71 = v70 * v62;
          v72 = (v70 * v62) >> 64;
        }

        v76 = v73 < v71;
        v77 = v64 == v72;
        LODWORD(v64) = v64 < v72;
        if (v77)
        {
          v64 = v76;
        }

        else
        {
          v64 = v64;
        }

        v62 -= v64;
      }

LABEL_80:
      if (v62)
      {
        v78 = &v59[-8 * v42 - 8];
        if (v42)
        {
          v81 = (*v78 - (0 + v269.u64[0] * v62)) >> 64;
          *v78 -= v269.i64[0] * v62;
          v79 = -v81;
          v80 = 1;
          if ((v42 & 2) != 0)
          {
            goto LABEL_85;
          }
        }

        else
        {
          v79 = 0;
          v80 = 0;
          if ((v42 & 2) == 0)
          {
            goto LABEL_86;
          }

LABEL_85:
          v82 = &v78[8 * v80];
          v83 = &v269 + v80;
          v85 = (v79 + *v83 * v62) >> 64;
          v84 = v79 + *v83 * v62;
          v86 = v82[1];
          v87 = *v82 - __PAIR128__(v85, v84);
          *v82 -= v84;
          v88 = (-*(&v87 + 1) + v83[1] * v62) >> 64;
          v67 = v86 >= v83[1] * v62 - *(&v87 + 1);
          v82[1] = v86 - (v83[1] * v62 - *(&v87 + 1));
          v79 = v88 + !v67;
          v80 |= 2uLL;
        }

LABEL_86:
        if ((v42 & 4) != 0)
        {
          v89 = &v78[8 * v80];
          v90 = &v269 + v80;
          v92 = (v79 + *v90 * v62) >> 64;
          v91 = v79 + *v90 * v62;
          v93 = v89[1];
          v94 = *v89 - __PAIR128__(v92, v91);
          *v89 -= v91;
          v95 = v93 - (-*(&v94 + 1) + v90[1] * v62);
          v89[1] = v93 - (v90[1] * v62 - *(&v94 + 1));
          v96 = v89[3];
          v97 = v89[2] - (-*(&v95 + 1) + v90[2] * v62);
          v89[2] -= v90[2] * v62 - *(&v95 + 1);
          v98 = (-*(&v97 + 1) + v90[3] * v62) >> 64;
          v67 = v96 >= v90[3] * v62 - *(&v97 + 1);
          v89[3] = v96 - (v90[3] * v62 - *(&v97 + 1));
          v79 = v98 + !v67;
          v80 |= 4uLL;
        }

        if (v80 < v42)
        {
          v99 = &v78[8 * v80];
          v100 = &v269 + v80;
          v102 = (v79 + *v100 * v62) >> 64;
          v101 = v79 + *v100 * v62;
          v103 = v99[1];
          v104 = *v99 - __PAIR128__(v102, v101);
          *v99 -= v101;
          v105 = v103 - (-*(&v104 + 1) + v100[1] * v62);
          v99[1] = v103 - (v100[1] * v62 - *(&v104 + 1));
          v106 = v99[3];
          v107 = v99[2] - (-*(&v105 + 1) + v100[2] * v62);
          v99[2] -= v100[2] * v62 - *(&v105 + 1);
          v108 = v106 - (-*(&v107 + 1) + v100[3] * v62);
          v99[3] = v106 - (v100[3] * v62 - *(&v107 + 1));
          v109 = v99[5];
          v110 = v99[4] - (-*(&v108 + 1) + v100[4] * v62);
          v99[4] -= v100[4] * v62 - *(&v108 + 1);
          v111 = v109 - (-*(&v110 + 1) + v100[5] * v62);
          v99[5] = v109 - (v100[5] * v62 - *(&v110 + 1));
          v112 = v99[7];
          v113 = v99[6] - (-*(&v111 + 1) + v100[6] * v62);
          v99[6] -= v100[6] * v62 - *(&v111 + 1);
          v114 = (-*(&v113 + 1) + v100[7] * v62) >> 64;
          v67 = v112 >= v100[7] * v62 - *(&v113 + 1);
          v99[7] = v112 - (v100[7] * v62 - *(&v113 + 1));
          v79 = v114 + !v67;
        }

        if (v79 > *(v59 - 1))
        {
          --v62;
          v115 = *&v59[-8 * v42];
          v116 = v269.i64[1];
          v67 = __CFADD__(__CFADD__(v269.i64[0], *v78), v115);
          v117 = __CFADD__(v269.i64[0], *v78) + v115;
          v67 |= __CFADD__(v269.i64[1], v117);
          *v78 += v269.i64[0];
          *&v59[-8 * v42] = v116 + v117;
          v118 = *&v59[-8 * v42 + 8];
          v120 = v67;
          v67 = __CFADD__(v67, v118);
          v119 = v120 + v118;
          v121 = v270.i64[1] + (v67 | __CFADD__(v270.i64[0], v119)) + *(v78 + 3);
          *(v78 + 2) = v270.i64[0] + v119;
          *(v78 + 3) = v121;
        }
      }

      if (a3)
      {
        *&v58[8 * v56] = v62;
      }

      --v56;
    }

    while (v56 > v42);
  }

  v122 = v42;
  while (v122 * 8)
  {
    v123 = v264.u64[v122 + 1];
    v124 = *(&v268 + v122 * 8);
    if (v123 < v124)
    {
      break;
    }

    --v122;
    if (v124 < v123)
    {
      if (v42)
      {
        v125 = 1;
        v67 = v265.i64[0] >= v269.i64[0];
        v265.i64[0] -= v269.i64[0];
        v126 = !v67;
        if ((v42 & 2) != 0)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v125 = 0;
        v126 = 0;
        v258 = &v265;
        if ((v42 & 2) == 0)
        {
          goto LABEL_105;
        }

LABEL_104:
        v127 = &v269.i64[v125];
        v128 = v258;
        v129 = v258->i64[1];
        v130 = v127[1];
        v67 = __CFSUB__(v129, v130, __PAIR128__(v258->i64[0], !v126) >= __PAIR128__(*v127, 1));
        v131 = v129 - (v130 + (__PAIR128__(v258->i64[0], !v126) < __PAIR128__(*v127, 1)));
        v258->i64[0] -= *v127 + v126;
        v128->i64[1] = v131;
        v126 = !v67;
        v125 |= 2uLL;
      }

LABEL_105:
      if ((v42 & 4) != 0)
      {
        v132 = &v265.i64[v125];
        v133 = &v269.i64[v125];
        v134 = v132[1];
        v135 = v133[1];
        v136 = __PAIR128__(*v132, !v126) >= __PAIR128__(*v133, 1);
        v67 = __CFSUB__(v134, v135, __PAIR128__(*v132, !v126) >= __PAIR128__(*v133, 1));
        *v132 -= *v133 + v126;
        v132[1] = v134 - (v135 + !v136);
        v137 = v132[2];
        v138 = v132[3];
        v139 = v133[2];
        v140 = v133[3];
        v141 = v67;
        v67 = __CFSUB__(v137, v139, v67);
        v132[2] = v137 - (v139 + !v141);
        v132[3] = v138 - (v140 + !v67);
        v126 = !__CFSUB__(v138, v140, v67);
        v125 |= 4uLL;
      }

      if (v125 < v42)
      {
        v142 = &v265.i64[v125];
        v143 = &v269.i64[v125];
        v144 = v142[1];
        v145 = v143[1];
        v67 = __CFSUB__(v144, v145, __PAIR128__(*v142, !v126) >= __PAIR128__(*v143, 1));
        v146 = v144 - (v145 + (__PAIR128__(*v142, !v126) < __PAIR128__(*v143, 1)));
        *v142 -= *v143 + v126;
        v142[1] = v146;
        v147 = v142[2];
        v148 = v142[3];
        v149 = v143[2];
        v150 = v143[3];
        v152 = v67;
        v67 = __CFSUB__(v147, v149, v67);
        v151 = v147 - (v149 + !v152);
        v153 = v67;
        v67 = __CFSUB__(v148, v150, v67);
        v142[2] = v151;
        v142[3] = v148 - (v150 + !v153);
        v154 = v142[4];
        v155 = v142[5];
        v156 = v143[4];
        v157 = v143[5];
        v159 = v67;
        v67 = __CFSUB__(v154, v156, v67);
        v158 = v154 - (v156 + !v159);
        v160 = v67;
        v67 = __CFSUB__(v155, v157, v67);
        v142[4] = v158;
        v142[5] = v155 - (v157 + !v160);
        v161 = v142[6];
        v162 = v142[7];
        v163 = v143[6];
        v164 = v143[7];
        v142[6] = v161 - (v163 + !v67);
        v142[7] = v162 - (v164 + !__CFSUB__(v161, v163, v67));
      }

      if (a3)
      {
        v67 = *a3 >= 1uLL;
        *a3 -= 1uLL;
        v165 = a3[1].i64[1] - (*&a3[1] < !v67);
        a3[1].i64[0] -= !v67;
        a3[1].i64[1] = v165;
      }

      break;
    }
  }

  if (v42 <= 3)
  {
    v166 = 4 - v42;
    v167 = &v259.i8[8 * v42];
    if ((v167 & 0x18) != 0)
    {
      v168 = 0;
      do
      {
        v169 = v168 + 1;
        *&v167[8 * v168] = 0;
        v168 = v169;
      }

      while (v169 < v166);
    }

    else
    {
      v169 = 0;
    }

    if (v169 + 4 <= v166)
    {
      v170 = &v167[8 * v169];
      *v170 = 0u;
      *(v170 + 1) = 0u;
      v169 += 4;
    }

    v171 = v166 > v169;
    v172 = v166 - v169;
    if (v171)
    {
      bzero(&v259 + 8 * v42 + 8 * v169, 8 * v172);
    }
  }

  if ((v26 & 0x3F) == 0)
  {
    j = 0;
    if ((&v259 & 0x10) != 0 && v42)
    {
      for (j = 0; j < v42; ++j)
      {
        v259.i64[j] = v265.i64[j];
      }
    }

    v176 = j + 4;
    if (j + 4 <= v42)
    {
      v177 = &v265.i8[8 * j];
      v178 = *(v177 + 1);
      v179 = &v259.i8[8 * j];
      *v179 = *v177;
      *(v179 + 1) = v178;
      j = v176;
    }

    if (v42 > j)
    {
      memcpy(&v259 + 8 * j, &v265 + 8 * j, 8 * (v42 - j));
    }

    goto LABEL_189;
  }

  if (v42)
  {
    v174 = v42 - 1;
    v173 = v265.u64[v42 - 1];
    v259.i64[v42 - 1] = v173 >> v26;
    if ((v42 & 2) == 0)
    {
      goto LABEL_136;
    }

    goto LABEL_135;
  }

  v173 = 0;
  v174 = v42;
  if ((v42 & 2) != 0)
  {
LABEL_135:
    v174 -= 2;
    v180 = &v259.i64[v174];
    v181 = &v265 + v174;
    v183 = *v181;
    v182 = v181[1];
    *v180 = (v182 << -v28) | (v183 >> v26);
    v180[1] = (v182 >> v26) | (v173 << -v28);
    v173 = v183;
  }

LABEL_136:
  if ((v42 & 4) != 0)
  {
    v174 -= 4;
    v184 = &v259.i64[v174];
    v185 = &v265 + v174;
    v186 = *v185;
    v187 = v185[1];
    v189 = v185[2];
    v188 = v185[3];
    *v184 = (v187 << -v28) | (v186 >> v26);
    v184[1] = (v189 << -v28) | (v187 >> v26);
    v184[2] = (v188 << -v28) | (v189 >> v26);
    v184[3] = (v188 >> v26) | (v173 << -v28);
    v173 = v186;
    if (!v174)
    {
      goto LABEL_189;
    }
  }

  else if (!v174)
  {
    goto LABEL_189;
  }

  v190 = v26 & 0x3F;
  v191 = vdupq_n_s64(64 - v28);
  v192 = &v259.i64[v174 - 4];
  v193 = &v263.i64[v174 + 1];
  v194 = vnegq_s64(vdupq_n_s64(v26 & 0x3F));
  do
  {
    v196 = *v193;
    v195 = v193[1];
    v197 = v193[2];
    v199 = *(v193 - 2);
    v198 = *(v193 - 1);
    v200 = v173 << (64 - v28);
    v173 = *(v193 - 5);
    a9.n128_u64[0] = v173;
    v201 = vshlq_u64(vextq_s8(v199, v198, 8uLL), v194);
    v202 = vorrq_s8(vshlq_u64(v199, v191), vshlq_u64(vzip1q_s64(a9, v199), v194));
    a9 = vorrq_s8(vshlq_u64(v198, v191), v201);
    v203 = *(v193 - 1) >> v190;
    v204 = *v193 << (64 - v28);
    *(v192 - 2) = v202;
    *(v192 - 1) = a9;
    *v192 = v204 | v203;
    v192[1] = (v195 << (64 - v28)) | (v196 >> v190);
    v192[2] = (v197 << (64 - v28)) | (v195 >> v190);
    v192[3] = (v197 >> v190) | v200;
    v192 -= 8;
    v193 -= 8;
    v174 -= 8;
  }

  while (v174);
LABEL_189:
  if (v17 != v14)
  {
    v251 = a3->i64[0];
    v252 = vmvnq_s8(a3[1]);
    v253 = vmvnq_s8(*a3);
    *a3 = v253;
    a3[1] = v252;
    if (v251)
    {
      a3->i64[0] = v253.i64[0] + 1;
      if (v17)
      {
        goto LABEL_196;
      }
    }

    else
    {
      v67 = __CFADD__(__CFADD__(a3->i64[0], 1), a3->i64[1]);
      *a3 += 1uLL;
      v256 = a3[1].i64[0];
      v257 = a3[1].i64[1];
      a3[1].i64[0] = v67 + v256;
      a3[1].i64[1] = __CFADD__(v67, v256) + v257;
      if (v17)
      {
        goto LABEL_196;
      }
    }

LABEL_191:
    if (!a4)
    {
      return;
    }

    goto LABEL_192;
  }

  if (!v17)
  {
    goto LABEL_191;
  }

LABEL_196:
  v254 = v259.i64[0];
  v255 = vmvnq_s8(v259);
  v259 = v255;
  v260 = vmvnq_s8(v260);
  if (v254)
  {
    v259.i64[0] = v255.i64[0] + 1;
    if (!a4)
    {
      return;
    }

LABEL_192:
    v250 = v260;
    *a4 = v259;
    a4[1] = v250;
    return;
  }

  v67 = __CFADD__(__CFADD__(v259.i64[0], 1), v259.i64[1]);
  *&v259 += 1uLL;
  *&v260 += v67;
  if (a4)
  {
    goto LABEL_192;
  }
}

PC_Sp_counted_base *PC_Sp_counted_base::destroy(PC_Sp_counted_base *this)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

PC_Sp_counted_base *PC_Sp_counted_base::release(PC_Sp_counted_base *this)
{
  if (atomic_fetch_add(this + 2, 0xFFFFFFFF) == 1)
  {
    v2 = this;
    v3 = (this + 16);
    (*(*this + 16))(this);
    PCMutex::lock(v3);
    PCMutex::unlock(v3);

    return PC_Sp_counted_base::weak_release(v2);
  }

  return this;
}

PC_Sp_counted_base *PC_Sp_counted_base::weak_release(PC_Sp_counted_base *this)
{
  if (atomic_fetch_add(this + 3, 0xFFFFFFFF) == 1)
  {
    v2 = this;
    PCMutex::lock((this + 16));
    PCMutex::unlock((v2 + 16));
    v3 = *(*v2 + 24);

    return v3(v2);
  }

  return this;
}

void PCSharedCount::PCSharedCount(PCSharedCount *this, PCShared_base *a2)
{
  if (a2)
  {
    PCWeakCount::alloc(a2 + 1, a2);
    v4 = *(a2 + 1);
    this->var0 = v4;
    if (v4)
    {
      if (!atomic_fetch_add((v4 + 8), 1u))
      {
        atomic_fetch_add((v4 + 12), 1u);
      }
    }
  }

  else
  {
    this->var0 = 0;
  }
}

void PCSharedCount::PCSharedCount(PCSharedCount *this, const PCSharedCount *a2)
{
  var0 = a2->var0;
  this->var0 = a2->var0;
  if (var0)
  {
    if (!atomic_fetch_add(var0 + 2, 1u))
    {
      atomic_fetch_add(var0 + 3, 1u);
    }
  }
}

void PCSharedCount::~PCSharedCount(PCSharedCount *this)
{
  var0 = this->var0;
  if (var0)
  {
    PC_Sp_counted_base::release(var0);
  }
}

uint64_t *PCSharedCount::operator=(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = *result;
  *result = v2;
  return result;
}

BOOL PCSharedCount::unique(PCSharedCount *this)
{
  if (!this->var0)
  {
    return 0;
  }

  v1 = atomic_load(this->var0 + 2);
  return v1 == 1;
}

void PC_Sp_counted_base_impl::~PC_Sp_counted_base_impl(PC_Sp_counted_base_impl *this)
{
  *this = &unk_287208C88;
  PCMutex::~PCMutex((this + 16));
}

{
  *this = &unk_287208C88;
  PCMutex::~PCMutex((this + 16));

  JUMPOUT(0x2666E9F00);
}

void *PCWeakCount::alloc(void *this, PCShared_base *a2)
{
  if (!*this)
  {
    operator new();
  }

  return this;
}

uint64_t PCSingleton::getSingletons(PCSingleton *this)
{
  {
    operator new();
  }

  return PCSingleton::getSingletons(void)::singletons;
}

uint64_t PCSingleton::getLock(PCSingleton *this)
{
  {
    operator new();
  }

  return PCSingleton::getLock(void)::lock;
}

void sub_25FBB6920(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v1, 0x1081C4076DFA842);
  _Unwind_Resume(a1);
}

void PCSingleton::PCSingleton(PCSingleton *this, int a2)
{
  *this = &unk_287208D10;
  Lock = PCSingleton::getLock(this);
  v5 = PCMutex::lock(Lock);
  Singletons = PCSingleton::getSingletons(v5);
  v7 = Singletons;
  v9 = *(Singletons + 8);
  v8 = *(Singletons + 16);
  if (v9 >= v8)
  {
    v11 = (v9 - *Singletons) >> 4;
    v12 = v11 + 1;
    if ((v11 + 1) >> 60)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v13 = v8 - *Singletons;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PCSingleton::Info>>(Singletons, v14);
    }

    v15 = 16 * v11;
    *v15 = this;
    *(v15 + 8) = a2;
    v10 = 16 * v11 + 16;
    v16 = *(Singletons + 8) - *Singletons;
    v17 = v15 - v16;
    memcpy((v15 - v16), *Singletons, v16);
    v18 = *v7;
    *v7 = v17;
    *(v7 + 8) = v10;
    *(v7 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v9 = this;
    *(v9 + 8) = a2;
    v10 = v9 + 16;
  }

  *(v7 + 8) = v10;
  PCMutex::unlock(Lock);
}

void PCSingleton::~PCSingleton(PCSingleton *this)
{
  *this = &unk_287208D10;
  Lock = PCSingleton::getLock(this);
  v3 = PCMutex::lock(Lock);
  Singletons = PCSingleton::getSingletons(v3);
  v6 = *Singletons;
  v5 = *(Singletons + 8);
  if (*Singletons != v5)
  {
    v7 = v5 - v6 - 16;
    while (*v6 != this)
    {
      v6 += 2;
      v7 -= 16;
      if (v6 == v5)
      {
        goto LABEL_9;
      }
    }

    if (v6 + 2 != v5)
    {
      memmove(v6, v6 + 2, v7);
    }

    *(Singletons + 8) = v6 + v7;
  }

LABEL_9:
  PCMutex::unlock(Lock);
}

{
  PCSingleton::~PCSingleton(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t PCSingleton::deleteSingletons(PCSingleton *this)
{
  v1 = 0;
  do
  {
    __p = 0;
    v30 = 0;
    v31 = 0;
    Lock = PCSingleton::getLock(this);
    v27 = Lock;
    v3 = PCMutex::lock(Lock);
    v28 = 1;
    Singletons = PCSingleton::getSingletons(v3);
    if (&__p != Singletons)
    {
      Singletons = std::vector<PCSingleton::Info>::__assign_with_size[abi:ne200100]<PCSingleton::Info*,PCSingleton::Info*>(&__p, *Singletons, Singletons[1], (Singletons[1] - *Singletons) >> 4);
    }

    v5 = PCSingleton::getSingletons(Singletons);
    v5[1] = *v5;
    PCMutex::unlock(Lock);
    v7 = 126 - 2 * __clz((v30 - __p) >> 4);
    if (v30 == __p)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    v10 = std::__introsort<std::_ClassicAlgPolicy,PCSingleton::Compare &,PCSingleton::Info *,false>(__p, v30, &v27, v8, 1, v6);
LABEL_8:
    v11 = v30;
    while (__p != v11)
    {
      v12 = v11[-1].n128_u64[0];
      --v11;
      v9 = v12;
      v30 = v11;
      if (v12)
      {
        v9 = (*(*v9 + 8))(v9, v10);
        goto LABEL_8;
      }
    }

    v13 = PCSingleton::getLock(v9);
    v27 = v13;
    v14 = PCMutex::lock(v13);
    v28 = 1;
    v15 = PCSingleton::getSingletons(v14);
    v16 = *v15;
    v17 = v15[1];
    PCMutex::unlock(v13);
    this = __p;
    if (__p)
    {
      v30 = __p;
      operator delete(__p);
    }

    if (v16 == v17)
    {
      break;
    }
  }

  while (v1++ < 5);
  if (v16 != v17)
  {
    v19 = MEMORY[0x277D82678];
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "ProCore: PCSingleton could not successfully release all singletons in ", 70);
    v21 = MEMORY[0x2666E9B50](v20, 5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "tries.\n", 7);
    this = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "This is caused by singletons being created during the application teardown process.\n", 84);
  }

  v22 = PCSingleton::getSingletons(this);
  v23 = *v22;
  if (*v22)
  {
    *(v22 + 8) = v23;
    operator delete(v23);
  }

  v24 = MEMORY[0x2666E9F00](v22, 0x20C40960023A9);
  v25 = PCSingleton::getLock(v24);
  return (*(*v25 + 8))(v25);
}

void sub_25FBB6DA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PCSingleton::Info>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<PCSingleton::Info>::__assign_with_size[abi:ne200100]<PCSingleton::Info*,PCSingleton::Info*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<PCSingleton::Info>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<PCSingleton::Info>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PCSingleton::Info>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

__n128 std::__introsort<std::_ClassicAlgPolicy,PCSingleton::Compare &,PCSingleton::Info *,false>(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v10 = a2 - 1;
  v39 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        if (a2[-1].n128_u32[2] > v12->n128_u32[2])
        {
          v62 = *v12;
          *v12 = a2[-1];
          result = v62;
          a2[-1] = v62;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {
      v37 = v12[1].n128_u32[2];
      v38 = v12[2].n128_u32[2];
      if (v37 <= v12->n128_u32[2])
      {
        if (v38 > v37)
        {
          result = v12[1];
          v12[1] = v12[2];
          v12[2] = result;
          if (v12[1].n128_u32[2] > v12->n128_u32[2])
          {
            v64 = *v12;
            *v12 = v12[1];
            result = v64;
            v12[1] = v64;
          }
        }
      }

      else
      {
        if (v38 > v37)
        {
          v63 = *v12;
          *v12 = v12[2];
          result = v63;
          goto LABEL_103;
        }

        v66 = *v12;
        *v12 = v12[1];
        result = v66;
        v12[1] = v66;
        if (v38 > v12[1].n128_u32[2])
        {
          result = v12[1];
          v12[1] = v12[2];
LABEL_103:
          v12[2] = result;
        }
      }

      if (a2[-1].n128_u32[2] <= v12[2].n128_u32[2])
      {
        return result;
      }

      result = v12[2];
      v12[2] = *v10;
      *v10 = result;
      if (v12[2].n128_u32[2] <= v12[1].n128_u32[2])
      {
        return result;
      }

      result = v12[1];
      v12[1] = v12[2];
      v12[2] = result;
LABEL_107:
      if (v12[1].n128_u32[2] > v12->n128_u32[2])
      {
        v67 = *v12;
        *v12 = v12[1];
        result = v67;
        v12[1] = v67;
      }

      return result;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,PCSingleton::Compare &,PCSingleton::Info *,0>(v12, v12 + 1, v12 + 2, v12 + 3, a2 - 1, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,PCSingleton::Compare &,PCSingleton::Info *>(v12, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,PCSingleton::Compare &,PCSingleton::Info *>(v12, a2);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,PCSingleton::Compare &,PCSingleton::Info *,PCSingleton::Info *>(v12, a2, a2, a3);
      }

      return result;
    }

    v16 = &v12[v15 >> 1];
    v17 = a2[-1].n128_u32[2];
    if (v15 >= 0x81)
    {
      v18 = v16->n128_u32[2];
      if (v18 <= v12->n128_u32[2])
      {
        if (v17 > v18)
        {
          v42 = *v16;
          *v16 = *v10;
          *v10 = v42;
          if (v16->n128_u32[2] > v12->n128_u32[2])
          {
            v43 = *v12;
            *v12 = *v16;
            *v16 = v43;
          }
        }
      }

      else
      {
        if (v17 > v18)
        {
          v40 = *v12;
          *v12 = *v10;
          goto LABEL_28;
        }

        v46 = *v12;
        *v12 = *v16;
        *v16 = v46;
        if (a2[-1].n128_u32[2] > v16->n128_u32[2])
        {
          v40 = *v16;
          *v16 = *v10;
LABEL_28:
          *v10 = v40;
        }
      }

      v20 = v16 - 1;
      v21 = v16[-1].n128_u32[2];
      v22 = a2[-2].n128_u32[2];
      if (v21 <= v12[1].n128_u32[2])
      {
        if (v22 > v21)
        {
          v47 = *v20;
          *v20 = *v39;
          *v39 = v47;
          if (v16[-1].n128_u32[2] > v12[1].n128_u32[2])
          {
            v48 = v12[1];
            v12[1] = *v20;
            *v20 = v48;
          }
        }
      }

      else
      {
        if (v22 > v21)
        {
          v23 = v12[1];
          v24 = a2 - 2;
          v12[1] = *v39;
          goto LABEL_42;
        }

        v50 = v12[1];
        v12[1] = *v20;
        *v20 = v50;
        if (a2[-2].n128_u32[2] > v16[-1].n128_u32[2])
        {
          v51 = *v20;
          v24 = a2 - 2;
          *v20 = *v39;
          v23 = v51;
LABEL_42:
          *v24 = v23;
        }
      }

      v25 = v16[1].n128_u32[2];
      v26 = a2[-3].n128_u32[2];
      if (v25 <= v12[2].n128_u32[2])
      {
        if (v26 > v25)
        {
          v52 = v16[1];
          v16[1] = *v11;
          *v11 = v52;
          if (v16[1].n128_u32[2] > v12[2].n128_u32[2])
          {
            v53 = v12[2];
            v12[2] = v16[1];
            v16[1] = v53;
          }
        }
      }

      else
      {
        if (v26 > v25)
        {
          v27 = v12[2];
          v12[2] = *v11;
          goto LABEL_51;
        }

        v54 = v12[2];
        v12[2] = v16[1];
        v16[1] = v54;
        if (a2[-3].n128_u32[2] > v16[1].n128_u32[2])
        {
          v55 = v16[1];
          v16[1] = *v11;
          v27 = v55;
LABEL_51:
          *v11 = v27;
        }
      }

      v28 = v16->n128_u32[2];
      v29 = v16[1].n128_u32[2];
      if (v28 <= v16[-1].n128_u32[2])
      {
        if (v29 > v28)
        {
          v57 = *v16;
          *v16 = v16[1];
          v16[1] = v57;
          if (v16->n128_u32[2] > v16[-1].n128_u32[2])
          {
            v58 = *v20;
            *v20 = *v16;
            *v16 = v58;
          }
        }
      }

      else
      {
        if (v29 > v28)
        {
          v56 = *v20;
          *v20 = v16[1];
          goto LABEL_60;
        }

        v59 = *v20;
        *v20 = *v16;
        *v16 = v59;
        if (v16[1].n128_u32[2] > v16->n128_u32[2])
        {
          v56 = *v16;
          *v16 = v16[1];
LABEL_60:
          v16[1] = v56;
        }
      }

      v60 = *v12;
      *v12 = *v16;
      *v16 = v60;
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    v19 = v12->n128_u32[2];
    if (v19 > v16->n128_u32[2])
    {
      if (v17 > v19)
      {
        v41 = *v16;
        *v16 = *v10;
        goto LABEL_37;
      }

      v49 = *v16;
      *v16 = *v12;
      *v12 = v49;
      if (a2[-1].n128_u32[2] > v12->n128_u32[2])
      {
        v41 = *v12;
        *v12 = *v10;
LABEL_37:
        *v10 = v41;
      }

LABEL_38:
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v17 <= v19)
    {
      goto LABEL_38;
    }

    v44 = *v12;
    *v12 = *v10;
    *v10 = v44;
    if (v12->n128_u32[2] <= v16->n128_u32[2])
    {
      goto LABEL_38;
    }

    v45 = *v16;
    *v16 = *v12;
    *v12 = v45;
    if (a5)
    {
      goto LABEL_63;
    }

LABEL_62:
    if (v12[-1].n128_u32[2] <= v12->n128_u32[2])
    {
      v12 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,PCSingleton::Info *,PCSingleton::Compare &>(v12, a2);
      goto LABEL_68;
    }

LABEL_63:
    v30 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,PCSingleton::Info *,PCSingleton::Compare &>(v12, a2);
    if ((v32 & 1) == 0)
    {
      goto LABEL_66;
    }

    v33 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,PCSingleton::Compare &,PCSingleton::Info *>(v12, v30, v31);
    v12 = v30 + 1;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,PCSingleton::Compare &,PCSingleton::Info *>(v30 + 1, a2, v34))
    {
      a4 = -v14;
      a2 = v30;
      if (v33)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v33)
    {
LABEL_66:
      std::__introsort<std::_ClassicAlgPolicy,PCSingleton::Compare &,PCSingleton::Info *,false>(a1, v30, a3, -v14, a5 & 1);
      v12 = v30 + 1;
LABEL_68:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v35 = v12[1].n128_u32[2];
  v36 = a2[-1].n128_u32[2];
  if (v35 <= v12->n128_u32[2])
  {
    if (v36 <= v35)
    {
      return result;
    }

    result = v12[1];
    v12[1] = *v10;
    *v10 = result;
    goto LABEL_107;
  }

  if (v36 <= v35)
  {
    v65 = *v12;
    *v12 = v12[1];
    result = v65;
    v12[1] = v65;
    if (a2[-1].n128_u32[2] <= v12[1].n128_u32[2])
    {
      return result;
    }

    result = v12[1];
    v12[1] = *v10;
  }

  else
  {
    v61 = *v12;
    *v12 = *v10;
    result = v61;
  }

  *v10 = result;
  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,PCSingleton::Compare &,PCSingleton::Info *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_u32[2];
  v7 = a3->n128_u32[2];
  if (v6 <= a1->n128_u32[2])
  {
    if (v7 > v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u32[2] > a1->n128_u32[2])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 > v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (a3->n128_u32[2] > a2->n128_u32[2])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_u32[2] > a3->n128_u32[2])
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (a3->n128_u32[2] > a2->n128_u32[2])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u32[2] > a1->n128_u32[2])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (a5->n128_u32[2] > a4->n128_u32[2])
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (a4->n128_u32[2] > a3->n128_u32[2])
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (a3->n128_u32[2] > a2->n128_u32[2])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a2->n128_u32[2] > a1->n128_u32[2])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

_DWORD *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,PCSingleton::Compare &,PCSingleton::Info *>(_DWORD *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 4;
    if (result + 4 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[6];
        if (v6 > v4[2])
        {
          v7 = *v5;
          v8 = v4[7];
          v9 = v3;
          while (1)
          {
            *(result + v9 + 16) = *(result + v9);
            if (!v9)
            {
              break;
            }

            v10 = *(result + v9 - 8);
            v9 -= 16;
            if (v6 <= v10)
            {
              v11 = result + v9 + 16;
              goto LABEL_10;
            }
          }

          v11 = result;
LABEL_10:
          *v11 = v7;
          *(v11 + 8) = v6;
          *(v11 + 12) = v8;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

_DWORD *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,PCSingleton::Compare &,PCSingleton::Info *>(_DWORD *result, _DWORD *a2)
{
  if (result != a2)
  {
    v2 = result + 4;
    while (v2 != a2)
    {
      v3 = v2;
      v4 = result[6];
      if (v4 > result[2])
      {
        v5 = *v3;
        v6 = result[7];
        v7 = v3;
        do
        {
          *v7 = *(v7 - 1);
          v8 = *(v7 - 6);
          v7 -= 2;
        }

        while (v4 > v8);
        *v7 = v5;
        *(v7 + 2) = v4;
        *(v7 + 3) = v6;
      }

      v2 = v3 + 2;
      result = v3;
    }
  }

  return result;
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,PCSingleton::Info *,PCSingleton::Compare &>(void *a1, _OWORD *a2)
{
  v2 = a1[1];
  if (v2 <= *(a2 - 2))
  {
    v6 = a1 + 2;
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v7 = *(v6 + 2);
      v6 += 2;
    }

    while (v2 <= v7);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = (v3 + 2);
      v5 = *(v3 + 6);
      v3 += 2;
    }

    while (v2 <= v5);
  }

  if (v4 >= a2)
  {
    v8 = a2;
  }

  else
  {
    do
    {
      v8 = a2 - 1;
      v9 = *(a2-- - 2);
    }

    while (v2 > v9);
  }

  v10 = *a1;
  while (v4 < v8)
  {
    v14 = *v4;
    *v4 = *v8;
    *v8 = v14;
    do
    {
      v11 = *(v4 + 24);
      v4 += 16;
    }

    while (v2 <= v11);
    do
    {
      v12 = *(v8-- - 2);
    }

    while (v2 > v12);
  }

  if ((v4 - 16) != a1)
  {
    *a1 = *(v4 - 16);
  }

  *(v4 - 16) = v10;
  *(v4 - 8) = v2;
  return v4;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,PCSingleton::Info *,PCSingleton::Compare &>(uint64_t *a1, uint64_t *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  do
  {
    v5 = a1[v2 + 3];
    v2 += 2;
  }

  while (v5 > v4);
  v6 = &a1[v2];
  if (v2 == 2)
  {
    while (v6 < a2)
    {
      v7 = a2 - 2;
      v9 = *(a2 - 2);
      a2 -= 2;
      if (v9 > v4)
      {
        goto LABEL_9;
      }
    }

    v7 = a2;
  }

  else
  {
    do
    {
      v7 = a2 - 2;
      v8 = *(a2 - 2);
      a2 -= 2;
    }

    while (v8 <= v4);
  }

LABEL_9:
  v10 = v6;
  if (v6 < v7)
  {
    v11 = v7;
    do
    {
      v12 = *v10;
      *v10 = *v11;
      *v11 = v12;
      do
      {
        v13 = *(v10 + 24);
        v10 += 16;
      }

      while (v13 > v4);
      do
      {
        v14 = *(v11 - 2);
        v11 -= 2;
      }

      while (v14 <= v4);
    }

    while (v10 < v11);
  }

  if ((v10 - 16) != a1)
  {
    *a1 = *(v10 - 16);
  }

  *(v10 - 16) = v3;
  *(v10 - 8) = v4;
  return v10 - 16;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,PCSingleton::Compare &,PCSingleton::Info *>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = a2 - 1;
      v6 = a1[1].n128_u32[2];
      v7 = a2[-1].n128_u32[2];
      if (v6 > a1->n128_u32[2])
      {
        if (v7 <= v6)
        {
          v23 = *a1;
          *a1 = a1[1];
          a1[1] = v23;
          if (a2[-1].n128_u32[2] <= a1[1].n128_u32[2])
          {
            return 1;
          }

          v8 = a1[1];
          a1[1] = *v5;
        }

        else
        {
          v8 = *a1;
          *a1 = *v5;
        }

        *v5 = v8;
        return 1;
      }

      if (v7 <= v6)
      {
        return 1;
      }

      v18 = a1[1];
      a1[1] = *v5;
      *v5 = v18;
LABEL_50:
      if (a1[1].n128_u32[2] > a1->n128_u32[2])
      {
        v37 = *a1;
        *a1 = a1[1];
        a1[1] = v37;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,PCSingleton::Compare &,PCSingleton::Info *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v14 = a1[1].n128_u32[2];
    v15 = a1->n128_u32[2];
    v16 = a1[2].n128_u32[2];
    if (v14 <= v15)
    {
      if (v16 > v14)
      {
        v21 = a1[1];
        a1[1] = a1[2];
        a1[2] = v21;
        if (a1[1].n128_u32[2] > v15)
        {
          v22 = *a1;
          *a1 = a1[1];
          a1[1] = v22;
        }
      }

      goto LABEL_47;
    }

    if (v16 <= v14)
    {
      v34 = *a1;
      *a1 = a1[1];
      a1[1] = v34;
      if (v16 <= a1[1].n128_u32[2])
      {
        goto LABEL_47;
      }

      v17 = a1[1];
      a1[1] = a1[2];
    }

    else
    {
      v17 = *a1;
      *a1 = a1[2];
    }

    a1[2] = v17;
LABEL_47:
    if (a2[-1].n128_u32[2] <= a1[2].n128_u32[2])
    {
      return 1;
    }

    v35 = a1[2];
    a1[2] = a2[-1];
    a2[-1] = v35;
    if (a1[2].n128_u32[2] <= a1[1].n128_u32[2])
    {
      return 1;
    }

    v36 = a1[1];
    a1[1] = a1[2];
    a1[2] = v36;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (a2[-1].n128_u32[2] > a1->n128_u32[2])
    {
      v4 = *a1;
      *a1 = a2[-1];
      a2[-1] = v4;
    }

    return 1;
  }

LABEL_13:
  v9 = a1 + 2;
  v10 = a1[1].n128_u32[2];
  v11 = a1->n128_u32[2];
  v12 = a1[2].n128_u32[2];
  if (v10 <= v11)
  {
    if (v12 > v10)
    {
      v19 = a1[1];
      a1[1] = *v9;
      *v9 = v19;
      if (a1[1].n128_u32[2] > v11)
      {
        v20 = *a1;
        *a1 = a1[1];
        a1[1] = v20;
      }
    }
  }

  else
  {
    if (v12 <= v10)
    {
      v24 = *a1;
      *a1 = a1[1];
      a1[1] = v24;
      if (v12 <= a1[1].n128_u32[2])
      {
        goto LABEL_33;
      }

      v13 = a1[1];
      a1[1] = *v9;
    }

    else
    {
      v13 = *a1;
      *a1 = *v9;
    }

    *v9 = v13;
  }

LABEL_33:
  v25 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v26 = 0;
  v27 = 0;
  while (1)
  {
    v28 = v25->n128_u32[2];
    if (v28 > v9->n128_u32[2])
    {
      v29 = v25->n128_u64[0];
      v30 = v25->n128_u32[3];
      v31 = v26;
      while (1)
      {
        *(a1 + v31 + 48) = *(a1 + v31 + 32);
        if (v31 == -32)
        {
          break;
        }

        v32 = *(&a1[1].n128_u32[2] + v31);
        v31 -= 16;
        if (v28 <= v32)
        {
          v33 = &a1[3] + v31;
          goto LABEL_41;
        }
      }

      v33 = a1;
LABEL_41:
      *v33 = v29;
      *(v33 + 8) = v28;
      *(v33 + 12) = v30;
      if (++v27 == 8)
      {
        return &v25[1] == a2;
      }
    }

    v9 = v25;
    v26 += 16;
    if (++v25 == a2)
    {
      return 1;
    }
  }
}

_OWORD *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,PCSingleton::Compare &,PCSingleton::Info *,PCSingleton::Info *>(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 16 * v9);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,PCSingleton::Compare &,PCSingleton::Info *>(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (*(v12 + 2) > *(a1 + 8))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,PCSingleton::Compare &,PCSingleton::Info *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v24 = *a1;
        v15 = a1;
        do
        {
          v16 = &v15[v14];
          v17 = v16 + 1;
          v18 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v18;
          }

          else
          {
            v19 = *(v16 + 6);
            v20 = *(v16 + 10);
            v21 = v16 + 2;
            if (v19 <= v20)
            {
              v14 = v18;
            }

            else
            {
              v17 = v21;
            }
          }

          *v15 = *v17;
          v15 = v17;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v17 == --v6)
        {
          *v17 = v24;
        }

        else
        {
          *v17 = *v6;
          *v6 = v24;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,PCSingleton::Compare &,PCSingleton::Info *>(a1, (v17 + 1), a4, (v17 - a1 + 16) >> 4);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,PCSingleton::Compare &,PCSingleton::Info *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = *(v8 + 2);
        v11 = *(v8 + 6);
        v8 += 2 * (v10 > v11);
        if (v10 > v11)
        {
          v7 = v9;
        }
      }

      v12 = *(a4 + 2);
      if (*(v8 + 2) <= v12)
      {
        v13 = *a4;
        v14 = *(a4 + 3);
        do
        {
          v15 = a4;
          a4 = v8;
          *v15 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v16 = (2 * v7) | 1;
          v8 = (result + 16 * v16);
          v17 = 2 * v7 + 2;
          if (v17 < a3)
          {
            v18 = *(v8 + 2);
            v19 = *(v8 + 6);
            v8 += 2 * (v18 > v19);
            if (v18 > v19)
            {
              v16 = v17;
            }
          }

          v7 = v16;
        }

        while (*(v8 + 2) <= v12);
        *a4 = v13;
        *(a4 + 2) = v12;
        *(a4 + 3) = v14;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,PCSingleton::Compare &,PCSingleton::Info *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = result + 16 * (v4 >> 1);
    v7 = *(a2 - 8);
    if (*(v6 + 8) > v7)
    {
      v10 = *(a2 - 16);
      v8 = a2 - 16;
      v9 = v10;
      v11 = *(v8 + 12);
      do
      {
        v12 = v8;
        v8 = v6;
        *v12 = *v6;
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = result + 16 * v5;
      }

      while (*(v6 + 8) > v7);
      *v8 = v9;
      *(v8 + 8) = v7;
      *(v8 + 12) = v11;
    }
  }

  return result;
}

void PCGetDescriptionForProfile(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v4[0] = &unk_287208D40;
  v4[1] = a1;
  v6 = 0;
  __p = 0uLL;
  (*(*a2 + 24))(a2, v4);
  if (SHIBYTE(v6) < 0)
  {
    std::string::__init_copy_ctor_external(a3, __p, *(&__p + 1));
    v4[0] = &unk_287208D40;
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = __p;
    a3->__r_.__value_.__r.__words[2] = v6;
  }
}

void sub_25FBB8264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::DescriptionVisitor::~DescriptionVisitor(void **this)
{
  *this = &unk_287208D40;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_287208D40;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x2666E9F00);
}

void anonymous namespace::DescriptionVisitor::visit(_anonymous_namespace_::DescriptionVisitor *this, const PCICCTransferFunctionLinear *a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  getDefaultChromaticitiesName(*(this + 1), &v11);
  std::string::basic_string[abi:ne200100]<0>(__p, " Linear");
  if ((v10 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v4 = v10;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = std::string::append(&v11, v3, v4);
  v6 = v5->__r_.__value_.__r.__words[0];
  v12[0] = v5->__r_.__value_.__l.__size_;
  *(v12 + 7) = *(&v5->__r_.__value_.__r.__words[1] + 7);
  v7 = HIBYTE(v5->__r_.__value_.__r.__words[2]);
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  v8 = v12[0];
  *(this + 2) = v6;
  *(this + 3) = v8;
  *(this + 31) = *(v12 + 7);
  *(this + 39) = v7;
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_25FBB8440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::DescriptionVisitor::visit(_anonymous_namespace_::DescriptionVisitor *this, const PCICCTransferFunctionGamma *a2)
{
  Gamma = PCICCTransferFunctionGamma::getGamma(a2);
  v4 = PCClassifyPrimaries(*(this + 1));
  v5 = PCClassifyTransfer(Gamma);
  v6 = v5;
  if (v5 == 1)
  {
    if (v4 <= 5)
    {
      if (v4 == 1)
      {
        v7 = "HDTV";
        goto LABEL_24;
      }

      if (v4 == 5)
      {
        v7 = "Composite PAL";
        goto LABEL_24;
      }
    }

    else
    {
      switch(v4)
      {
        case 6:
          v7 = "Composite NTSC";
          goto LABEL_24;
        case 9:
          v7 = "Ultra HDTV";
          goto LABEL_24;
        case 0xC:
          v7 = "P3D65";
LABEL_24:
          std::string::basic_string[abi:ne200100]<0>(&v18, v7);
          goto LABEL_25;
      }
    }
  }

  if (v4 == 2 || v5 == 2)
  {
    getDefaultDescription(*(this + 1), Gamma);
LABEL_25:
    if (*(this + 39) < 0)
    {
      operator delete(*(this + 2));
    }

    *(this + 1) = v18;
    *(this + 4) = v19[0];
    return;
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v18);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "QuickTime 'nclc' Video(", 23);
  v10 = MEMORY[0x2666E9B50](v9, v4);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ",", 1);
  v12 = MEMORY[0x2666E9B50](v11, v6);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ",", 1);
  v14 = PCPrimariesToMatrix(v4);
  v15 = MEMORY[0x2666E9B50](v13, v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ")", 1);
  std::stringbuf::str();
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  *(this + 1) = v16;
  *(this + 4) = v17;
  *&v18 = *MEMORY[0x277D82828];
  *(&v19[-2].__locale_ + *(v18 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v18 + 1) = MEMORY[0x277D82878] + 16;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  *(&v18 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v19);
  std::ostream::~ostream();
  MEMORY[0x2666E9E10](&v21);
}

void sub_25FBB8730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

double anonymous namespace::DescriptionVisitor::visit(_anonymous_namespace_::DescriptionVisitor *this, const PCICCTransferFunctionLUT *a2)
{
  v3 = *(this + 1);
  v4 = PCEstimateGammaFromTransferFunction(a2);
  getDefaultDescription(v3, v4);
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  result = *&v6;
  *(this + 1) = v6;
  *(this + 4) = v7;
  return result;
}

double anonymous namespace::DescriptionVisitor::visit(_anonymous_namespace_::DescriptionVisitor *this, const PCICCTransferFunctionParametric0 *a2)
{
  v3 = *(this + 1);
  v4 = PCEstimateGammaFromTransferFunction(a2);
  getDefaultDescription(v3, v4);
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  result = *&v6;
  *(this + 1) = v6;
  *(this + 4) = v7;
  return result;
}

double anonymous namespace::DescriptionVisitor::visit(_anonymous_namespace_::DescriptionVisitor *this, const PCICCTransferFunctionParametric1 *a2)
{
  v3 = *(this + 1);
  v4 = PCEstimateGammaFromTransferFunction(a2);
  getDefaultDescription(v3, v4);
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  result = *&v6;
  *(this + 1) = v6;
  *(this + 4) = v7;
  return result;
}

double anonymous namespace::DescriptionVisitor::visit(_anonymous_namespace_::DescriptionVisitor *this, const PCICCTransferFunctionParametric2 *a2)
{
  v3 = *(this + 1);
  v4 = PCEstimateGammaFromTransferFunction(a2);
  getDefaultDescription(v3, v4);
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  result = *&v6;
  *(this + 1) = v6;
  *(this + 4) = v7;
  return result;
}

double anonymous namespace::DescriptionVisitor::visit(_anonymous_namespace_::DescriptionVisitor *this, const PCICCTransferFunctionParametric3 *a2)
{
  Gamma = PCICCTransferFunctionGamma::getGamma(a2);
  v5 = PCICCTransferFunctionParametric3::getA(a2);
  v6 = PCICCTransferFunctionParametric3::getB(a2);
  v7 = PCICCTransferFunctionParametric3::getC(a2);
  v8 = PCICCTransferFunctionParametric3::getD(a2);
  if (PCIs709TransferFunction(Gamma, v5, v6, v7, v8))
  {
    v9 = *(this + 1);
    if (vabds_f32(*v9, 0.64) < 0.001 && vabds_f32(v9[1], 0.33) < 0.001 && vabds_f32(v9[2], 0.3) < 0.001 && vabds_f32(v9[3], 0.6) < 0.001 && vabds_f32(v9[4], 0.15) < 0.001 && vabds_f32(v9[5], 0.06) < 0.001 && vabds_f32(v9[6], 0.3127) < 0.001 && vabds_f32(v9[7], 0.329) < 0.001 || vabds_f32(*v9, 0.708) < 0.001 && vabds_f32(v9[1], 0.292) < 0.001 && vabds_f32(v9[2], 0.17) < 0.001 && vabds_f32(v9[3], 0.797) < 0.001 && vabds_f32(v9[4], 0.131) < 0.001 && vabds_f32(v9[5], 0.046) < 0.001 && vabds_f32(v9[6], 0.3127) < 0.001 && vabds_f32(v9[7], 0.329) < 0.001)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v10 = PCIssRGBTransferFunction(Gamma, v5, v6, v7, v8);
    v9 = *(this + 1);
    if (v10 && (vabds_f32(*v9, 0.64) < 0.001 && vabds_f32(v9[1], 0.33) < 0.001 && vabds_f32(v9[2], 0.3) < 0.001 && vabds_f32(v9[3], 0.6) < 0.001 && vabds_f32(v9[4], 0.15) < 0.001 && vabds_f32(v9[5], 0.06) < 0.001 && vabds_f32(v9[6], 0.3127) < 0.001 && vabds_f32(v9[7], 0.329) < 0.001 || vabds_f32(*v9, 0.68) < 0.001 && vabds_f32(v9[1], 0.32) < 0.001 && vabds_f32(v9[2], 0.265) < 0.001 && vabds_f32(v9[3], 0.69) < 0.001 && vabds_f32(v9[4], 0.15) < 0.001 && vabds_f32(v9[5], 0.06) < 0.001 && vabds_f32(v9[6], 0.3127) < 0.001 && vabds_f32(v9[7], 0.329) < 0.001))
    {
LABEL_38:

      JUMPOUT(0x2666E99D0);
    }
  }

  v11 = PCEstimateGammaFromTransferFunction(a2);
  getDefaultDescription(v9, v11);
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  result = *&v13;
  *(this + 1) = v13;
  *(this + 4) = v14;
  return result;
}

double anonymous namespace::DescriptionVisitor::visit(_anonymous_namespace_::DescriptionVisitor *this, const PCICCTransferFunctionParametric4 *a2)
{
  v3 = *(this + 1);
  v4 = PCEstimateGammaFromTransferFunction(a2);
  getDefaultDescription(v3, v4);
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  result = *&v6;
  *(this + 1) = v6;
  *(this + 4) = v7;
  return result;
}

_BYTE *getDefaultChromaticitiesName@<X0>(float *a1@<X0>, uint64_t a2@<X8>)
{
  result = PCClassifyPrimaries(a1);
  if (result > 5)
  {
    if (result > 10)
    {
      if (result == 11)
      {
        v5 = "P3DCI";
        goto LABEL_38;
      }

      if (result == 12)
      {
        v5 = "P3D65";
        goto LABEL_38;
      }
    }

    else
    {
      if (result == 6)
      {
        v5 = "SMPTE C";
        goto LABEL_38;
      }

      if (result == 9)
      {
        v5 = "Rec. 2020";
        goto LABEL_38;
      }
    }

LABEL_37:
    v5 = "RGB";
    goto LABEL_38;
  }

  if (result > 1)
  {
    if (result == 2)
    {
      if (vabds_f32(*a1, 0.63) < 0.001 && vabds_f32(a1[1], 0.34) < 0.001 && vabds_f32(a1[2], 0.295) < 0.001 && vabds_f32(a1[3], 0.605) < 0.001 && vabds_f32(a1[4], 0.155) < 0.001 && vabds_f32(a1[5], 0.077) < 0.001 && vabds_f32(a1[6], 0.3127) < 0.001 && vabds_f32(a1[7], 0.329) < 0.001)
      {
        v5 = "Generic RGB";
        goto LABEL_38;
      }

      if (vabds_f32(*a1, 0.713) < 0.001 && vabds_f32(a1[1], 0.293) < 0.001 && vabds_f32(a1[2], 0.165) < 0.001 && vabds_f32(a1[3], 0.83) < 0.001 && vabds_f32(a1[4], 0.128) < 0.001 && vabds_f32(a1[5], 0.044) < 0.001 && vabds_f32(a1[6], 0.32168) < 0.001 && vabds_f32(a1[7], 0.33767) < 0.001)
      {
        v5 = "ACEScg";
        goto LABEL_38;
      }
    }

    else if (result == 5)
    {
      v5 = "EBU 3213";
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (!result)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    return result;
  }

  if (result != 1)
  {
    goto LABEL_37;
  }

  v5 = "Rec. 709";
LABEL_38:

  return std::string::basic_string[abi:ne200100]<0>(a2, v5);
}

uint64_t getDefaultDescription(float *a1, float a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  getDefaultChromaticitiesName(a1, __p);
  if ((v9 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v5 = v9;
  }

  else
  {
    v5 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, v4, v5);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (a2 != 0.0 && (a2 != 1.0 || vabds_f32(*a1, 0.713) >= 0.001 || vabds_f32(a1[1], 0.293) >= 0.001 || vabds_f32(a1[2], 0.165) >= 0.001 || vabds_f32(a1[3], 0.83) >= 0.001 || vabds_f32(a1[4], 0.128) >= 0.001 || vabds_f32(a1[5], 0.044) >= 0.001 || vabds_f32(a1[6], 0.32168) >= 0.001 || vabds_f32(a1[7], 0.33767) >= 0.001) && (fabsf(a2 + -2.6) >= 0.001 || vabds_f32(*a1, 0.68) >= 0.001 || vabds_f32(a1[1], 0.32) >= 0.001 || vabds_f32(a1[2], 0.265) >= 0.001 || vabds_f32(a1[3], 0.69) >= 0.001 || vabds_f32(a1[4], 0.15) >= 0.001 || vabds_f32(a1[5], 0.06) >= 0.001 || vabds_f32(a1[6], 0.314) >= 0.001 || vabds_f32(a1[7], 0.351) >= 0.001) && (fabsf(a2 + -1.961) >= 0.001 || vabds_f32(*a1, 0.68) >= 0.001 || vabds_f32(a1[1], 0.32) >= 0.001 || vabds_f32(a1[2], 0.265) >= 0.001 || vabds_f32(a1[3], 0.69) >= 0.001 || vabds_f32(a1[4], 0.15) >= 0.001 || vabds_f32(a1[5], 0.06) >= 0.001 || vabds_f32(a1[6], 0.3127) >= 0.001 || vabds_f32(a1[7], 0.329) >= 0.001))
  {
    if (a2 == 1.0)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " Linear", 7);
    }

    else
    {
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, " Gamma ", 7);
      *(v6 + *(*v6 - 24) + 16) = 5;
      std::ostream::operator<<();
    }
  }

  std::stringbuf::str();
  v10 = *MEMORY[0x277D82828];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
  v11 = MEMORY[0x277D82878] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x2666E9E10](&v14);
}

void PCAsciiStream::PCAsciiStream(PCAsciiStream *this)
{
  *(this + 31) = 0;
  *(this + 8) = 0;
  *(this + 35) = 0;
  *this = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
}

void PCAsciiStream::~PCAsciiStream(void **this)
{
  if ((*this & 1) == 0 && *(this + 35))
  {
    PCAsciiStream::close(this);
  }

  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void PCAsciiStream::close(PCAsciiStream *this)
{
  if ((*this & 1) == 0 && *(this + 35))
  {
    if (*(this + 35) == 2)
    {
      *(this + 33) = 0;
    }

    *(this + 34) = 0;
    PCAsciiStream::encodeNewSize(this);
    std::string::push_back((this + 8), encodeVals[*(this + 32) >> 2]);
    std::string::push_back((this + 8), encodeVals[(*(this + 33) >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (*(this + 32) & 3))]);
    std::string::push_back((this + 8), encodeVals[(*(this + 34) >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (*(this + 33) & 0xF))]);
    std::string::push_back((this + 8), encodeVals[*(this + 34) & 0x3F]);
    *(this + 35) = 0;
  }
}

BOOL PCAsciiStream::open(PCAsciiStream *this, const char *a2)
{
  MEMORY[0x2666E99D0](this + 8);
  *(this + 35) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  *this = 1;
  v4 = *(this + 31);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v4 = *(this + 2);
  }

  if (v4 < 0xC)
  {
    MEMORY[0x2666E99D0](this + 64, "Not enough data");
    return 0;
  }

  else
  {
    v5 = 0;
    v15 = 0;
    v6 = &v15 + 2;
    v7 = a2 + 1;
    while (1)
    {
      *(this + 6) = v5 + 1;
      v8 = a2[v5];
      *(this + 6) = v5 + 2;
      v9 = v7[v5];
      *(this + 6) = v5 + 3;
      v10 = v7[v5 + 1];
      *(this + 6) = v5 + 4;
      v11 = v7[v5 + 2];
      LODWORD(v9) = decodeVals[v9];
      LODWORD(v8) = (4 * decodeVals[v8]) | (v9 >> 4) & 3;
      *(this + 32) = v8;
      LODWORD(v10) = decodeVals[v10];
      LODWORD(v9) = (16 * v9) | (v10 >> 2) & 0xF;
      *(this + 33) = v9;
      v12 = decodeVals[v11] & 0x3F | (v10 << 6);
      *(this + 34) = v12;
      *(v6 - 2) = v8;
      *(v6 - 1) = v9;
      if (v5 == 8)
      {
        break;
      }

      *v6 = v12;
      v6 += 3;
      v5 += 4;
    }

    *(this + 7) = bswap64(v15);
    v13 = v12 == 42;
    if (v12 != 42)
    {
      MEMORY[0x2666E99D0](this + 64, "Magic Number does not match");
    }
  }

  return v13;
}

unint64_t PCAsciiStream::read(PCAsciiStream *this, _BYTE *a2, unint64_t a3)
{
  v3 = *(this + 5);
  v4 = v3 + a3;
  v5 = *(this + 7);
  v6 = v5 - v3;
  if (v4 < v5)
  {
    v6 = a3;
  }

  if (v6)
  {
    v7 = 0;
    v8 = (this + 8);
    LOBYTE(v9) = *(this + 35);
    while (v9 != 1)
    {
      if (v9 != 2)
      {
        goto LABEL_12;
      }

      a2[v7] = *(this + 33);
      v10 = v7 + 1;
      ++*(this + 5);
      LOBYTE(v9) = *(this + 35) - 1;
      *(this + 35) = v9;
      if (v7 + 1 < v6)
      {
        v9 = 2;
LABEL_10:
        a2[v10] = *(this + 34);
        v7 += v9;
        ++*(this + 5);
        LOBYTE(v9) = *(this + 35) - 1;
        *(this + 35) = v9;
        goto LABEL_12;
      }

      ++v7;
LABEL_12:
      if (v7 < v6 && !v9)
      {
        v11 = *(this + 6);
        *(this + 6) = v11 + 1;
        v12 = this + 8;
        if (*(this + 31) < 0)
        {
          v12 = *v8;
        }

        v9 = v12[v11];
        *(this + 6) = v11 + 2;
        v13 = this + 8;
        if (*(this + 31) < 0)
        {
          v13 = *v8;
        }

        v14 = v13[v11 + 1];
        v15 = v11 + 3;
        *(this + 6) = v11 + 3;
        v16 = this + 8;
        if (*(this + 31) < 0)
        {
          v16 = *v8;
        }

        v17 = v16[v11 + 2];
        *(this + 6) = v11 + 4;
        v18 = this + 8;
        if (*(this + 31) < 0)
        {
          v18 = *v8;
        }

        v19 = v18[v15];
        v20 = decodeVals[v14];
        v21 = (4 * decodeVals[v9]) | (v20 >> 4) & 3;
        *(this + 32) = v21;
        v22 = decodeVals[v17];
        *(this + 33) = (16 * v20) | (v22 >> 2) & 0xF;
        *(this + 34) = decodeVals[v19] & 0x3F | (v22 << 6);
        a2[v7++] = v21;
        ++*(this + 5);
        LOBYTE(v9) = 2;
        *(this + 35) = 2;
      }

      if (v7 >= v6)
      {
        return v6;
      }
    }

    v9 = v9;
    v10 = v7;
    goto LABEL_10;
  }

  return v6;
}

unint64_t PCAsciiStream::write(PCAsciiStream *this, _BYTE *a2, unint64_t a3)
{
  if (a3)
  {
    v6 = 0;
    while (1)
    {
      v7 = *(this + 35);
      if (!*(this + 35))
      {
        break;
      }

      if (v7 == 2)
      {
        *(this + 35) = 1;
        *(this + 33) = a2[v6];
        v8 = v6 + 1;
        v9 = *(this + 7);
        *(this + 7) = v9 + 1;
        if (v6 + 1 < a3)
        {
          *(this + 35) = 0;
          *(this + 34) = a2[v8];
          v8 = v6 + 2;
          v10 = v9 + 2;
LABEL_11:
          *(this + 7) = v10;
LABEL_13:
          PCAsciiStream::encodeNewSize(this);
          std::string::push_back((this + 8), encodeVals[*(this + 32) >> 2]);
          std::string::push_back((this + 8), encodeVals[(*(this + 33) >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (*(this + 32) & 3))]);
          std::string::push_back((this + 8), encodeVals[(*(this + 34) >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (*(this + 33) & 0xF))]);
          std::string::push_back((this + 8), encodeVals[*(this + 34) & 0x3F]);
        }
      }

      else
      {
        v13 = v7 - 1;
        *(this + 35) = v13;
        *(this + 34) = a2[v6];
        v8 = v6 + 1;
        ++*(this + 7);
        if (!v13)
        {
          goto LABEL_13;
        }
      }

LABEL_14:
      v6 = v8;
      if (v8 >= a3)
      {
        return a3;
      }
    }

    *(this + 35) = 2;
    *(this + 32) = a2[v6];
    v8 = v6 + 1;
    v11 = *(this + 7);
    v12 = v11 + 1;
    *(this + 7) = v11 + 1;
    if (v6 + 1 < a3)
    {
      *(this + 35) = 1;
      *(this + 33) = a2[v8];
      v8 = v6 + 2;
      v12 = v11 + 2;
      *(this + 7) = v11 + 2;
    }

    if (v8 >= a3)
    {
      goto LABEL_14;
    }

    *(this + 35) = 0;
    *(this + 34) = a2[v8++];
    v10 = v12 + 1;
    goto LABEL_11;
  }

  return a3;
}

void PCAsciiStream::encodeNewSize(PCAsciiStream *this)
{
  v2 = *(this + 31);
  if (v2 < 0)
  {
    v3 = *(this + 2);
  }

  else
  {
    v3 = *(this + 31);
  }

  v4 = bswap64(*(this + 7));
  v5 = this + 8;
  if (!v3)
  {
    v6 = 12;
    do
    {
      std::string::push_back((this + 8), 0);
      --v6;
    }

    while (v6);
    LOBYTE(v2) = *(this + 31);
  }

  v7 = this + 8;
  if ((v2 & 0x80) != 0)
  {
    v7 = *v5;
  }

  *v7 = encodeVals[v4 >> 2];
  v8 = this + 8;
  if (*(this + 31) < 0)
  {
    v8 = *v5;
  }

  v8[1] = encodeVals[(v4 >> 12) & 0xFFFFFFFFFFFFFFCFLL | (16 * (v4 & 3))];
  v9 = this + 8;
  if (*(this + 31) < 0)
  {
    v9 = *v5;
  }

  v9[2] = encodeVals[(v4 >> 6) & 0x3C | (v4 >> 22) & 3];
  v10 = this + 8;
  if (*(this + 31) < 0)
  {
    v10 = *v5;
  }

  v10[3] = encodeVals[(v4 >> 16) & 0x3F];
  v11 = this + 8;
  if (*(this + 31) < 0)
  {
    v11 = *v5;
  }

  v11[4] = encodeVals[v4 >> 26];
  v12 = this + 8;
  if (*(this + 31) < 0)
  {
    v12 = *v5;
  }

  v12[5] = encodeVals[(v4 >> 20) & 0x30 | (v4 >> 36) & 0xF];
  v13 = this + 8;
  if (*(this + 31) < 0)
  {
    v13 = *v5;
  }

  v13[6] = encodeVals[(v4 >> 30) & 0x3C | (v4 >> 46) & 3];
  v14 = this + 8;
  if (*(this + 31) < 0)
  {
    v14 = *v5;
  }

  v14[7] = encodeVals[(v4 >> 40) & 0x3F];
  v15 = this + 8;
  if (*(this + 31) < 0)
  {
    v15 = *v5;
  }

  v15[8] = encodeVals[(v4 >> 50) & 0x3F];
  v16 = this + 8;
  if (*(this + 31) < 0)
  {
    v16 = *v5;
  }

  v16[9] = encodeVals[(v4 >> 44) & 0x30 | (v4 >> 60)];
  v17 = this + 8;
  if (*(this + 31) < 0)
  {
    v17 = *v5;
  }

  v17[10] = encodeVals[(v4 >> 54) & 0x3C];
  if (*(this + 31) < 0)
  {
    v5 = *v5;
  }

  v5[11] = 101;
}

PCString *PCAsciiStream::getString@<X0>(PCAsciiStream *this@<X0>, PCString *a2@<X8>)
{
  v2 = this + 8;
  if (*(this + 31) < 0)
  {
    v2 = *v2;
  }

  return PCString::PCString(a2, v2);
}

void PCSharedMutex::PCSharedMutex(PCSharedMutex *this)
{
  *this = 850045863;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  std::vector<PCSharedMutex::ReaderInfo>::reserve(this + 10, 3uLL);
}

void sub_25FBB9C10(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 88) = v4;
    operator delete(v4);
  }

  std::mutex::~mutex(v1);
  _Unwind_Resume(a1);
}

void *std::vector<PCSharedMutex::ReaderInfo>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PCSingleton::Info>>(result, a2);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void PCSharedMutex::lock(std::mutex *this)
{
  v2 = pthread_self();
  std::mutex::lock(this);
  v3 = atomic_load(&this[1]);
  if (v3 == v2)
  {
    ++*this[1].__m_.__opaque;

    std::mutex::unlock(this);
  }

  else
  {
    std::mutex::unlock(this);
    v4 = 0;
    atomic_compare_exchange_strong(&this[1].__m_.__sig, &v4, v2);
    if (v4)
    {
      do
      {
        __ns.__rep_ = 100000;
        std::this_thread::sleep_for (&__ns);
        v5 = 0;
        atomic_compare_exchange_strong(&this[1].__m_.__sig, &v5, v2);
      }

      while (v5);
    }

    do
    {
      std::mutex::lock(this);
      v7 = *&this[1].__m_.__opaque[8];
      v6 = *&this[1].__m_.__opaque[16];
      std::mutex::unlock(this);
    }

    while (v6 != v7);
  }
}

void PCSharedMutex::lock_shared(std::mutex *this)
{
  v2 = pthread_self();
  std::mutex::lock(this);
  v3 = atomic_load(&this[1]);
  if (v3 == v2)
  {
    ++*this[1].__m_.__opaque;
  }

  else
  {
    v4 = *&this[1].__m_.__opaque[8];
    v5 = &this[1].__m_.__opaque[8];
    while (v4 != *&this[1].__m_.__opaque[16])
    {
      if (v2 == *v4)
      {
        ++*(v4 + 8);
        goto LABEL_22;
      }

      v4 += 16;
    }

    do
    {
      std::mutex::unlock(this);
      std::mutex::lock(this);
    }

    while (atomic_load(&this[1]));
    v8 = *&this[1].__m_.__opaque[16];
    v7 = *&this[1].__m_.__opaque[24];
    if (v8 >= v7)
    {
      v10 = (v8 - *v5) >> 4;
      v11 = v10 + 1;
      if ((v10 + 1) >> 60)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      v12 = v7 - *v5;
      if (v12 >> 3 > v11)
      {
        v11 = v12 >> 3;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF0)
      {
        v13 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<PCSingleton::Info>>(&this[1].__m_.__opaque[8], v13);
      }

      v14 = 16 * v10;
      *v14 = v2;
      *(v14 + 8) = 1;
      v9 = 16 * v10 + 16;
      v15 = *&this[1].__m_.__opaque[8];
      v16 = *&this[1].__m_.__opaque[16] - v15;
      v17 = (16 * v10 - v16);
      memcpy(v17, v15, v16);
      v18 = *&this[1].__m_.__opaque[8];
      *&this[1].__m_.__opaque[8] = v17;
      *&this[1].__m_.__opaque[16] = v9;
      *&this[1].__m_.__opaque[24] = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v8 = v2;
      *(v8 + 8) = 1;
      v9 = v8 + 16;
    }

    *&this[1].__m_.__opaque[16] = v9;
  }

LABEL_22:

  std::mutex::unlock(this);
}

void PCSharedMutex::unlock(std::mutex *this)
{
  std::mutex::lock(this);
  v2 = *this[1].__m_.__opaque;
  if (v2)
  {
    *this[1].__m_.__opaque = v2 - 1;
  }

  else
  {
    atomic_store(0, &this[1]);
  }

  std::mutex::unlock(this);
}

void PCSharedMutex::unlock_shared(std::mutex *this)
{
  v2 = pthread_self();
  std::mutex::lock(this);
  v3 = atomic_load(&this[1]);
  if (v3 == v2)
  {
    --*this[1].__m_.__opaque;
  }

  else
  {
    v5 = *&this[1].__m_.__opaque[8];
    v4 = *&this[1].__m_.__opaque[16];
    if (v5 != v4)
    {
      v6 = 0;
      while (v2 != *&v5[v6])
      {
        v6 += 16;
        if (&v5[v6] == v4)
        {
          goto LABEL_13;
        }
      }

      v7 = &v5[v6];
      if (*&v5[v6 + 8] == 1)
      {
        v8 = (v4 - v5 - v6);
        v9 = v8 - 16;
        if (v7 + 16 != v4)
        {
          memmove(v7, v7 + 16, (v8 - 20));
        }

        *&this[1].__m_.__opaque[16] = &v9[v7];
      }

      else
      {
        *(v7 + 2) = *&v5[v6 + 8] - 1;
      }
    }
  }

LABEL_13:

  std::mutex::unlock(this);
}

void PCHashWriteStream::PCHashWriteStream(PCHashWriteStream *this)
{
  PCSerializerWriteStream::PCSerializerWriteStream(this);
  *v2 = &unk_287208DB8;
  PCWorkingColorVector::PCWorkingColorVector((v2 + 4));
  *(this + 6) = 0x100000001000;
  *(this + 7) = this + 64;
}

void sub_25FBBA0D8(_Unwind_Exception *exception_object)
{
  *v1 = &unk_287208ED0;
  v3 = v1[1];
  if (v3)
  {
    v1[2] = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void PCHashWriteStream::~PCHashWriteStream(PCHashWriteStream *this)
{
  *this = &unk_287208ED0;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_287208ED0;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2666E9F00);
}

int8x8_t *PCHashWriteStream::close(int8x8_t *this)
{
  v1 = this;
  v3 = this[6].i32[0];
  v2 = this[6].i32[1];
  if (v3 != v2)
  {
    this = PCHash128::addData(this + 4, &this[8], (v3 - v2));
    v2 = v1[6].i32[0];
  }

  v1[6].i32[1] = v2;
  v1[7] = &v1[8];
  return this;
}

uint64_t PCHashWriteStream::reset(uint64_t this)
{
  *(this + 52) = *(this + 48);
  *(this + 56) = this + 64;
  *(this + 32) = 0;
  *(this + 40) = 0;
  return this;
}

int8x8_t *PCHashWriteStream::writeValue(int8x8_t *this, int a2)
{
  v2 = this;
  __src = a2;
  v3 = this[6].u32[1];
  if (v3 <= 3)
  {
    v4 = this + 8;
    this = this[7];
    p_src = &__src;
    v6 = 4;
    do
    {
      if (v6 >= v3)
      {
        v7 = v3;
      }

      else
      {
        v7 = v6;
      }

      memcpy(this, p_src, v7);
      v8 = v2[6].u32[0];
      if (v7 == v2[6].i32[1])
      {
        PCHash128::addData(v2 + 4, &v2[8], v8);
        v3 = v2[6].u32[0];
        this = v2 + 8;
      }

      else
      {
        v3 = v8 - v7;
        this = (v4 + v7);
      }

      v2[6].i32[1] = v3;
      v2[7] = this;
      p_src = (p_src + v7);
      v6 -= v7;
    }

    while (v6);
  }

  else
  {
    **&this[7] = a2;
    this[6].i32[1] -= 4;
    *&this[7] += 4;
  }

  return this;
}

{
  v2 = this;
  __src = a2;
  v3 = this[6].u32[1];
  if (v3 <= 3)
  {
    v4 = this + 8;
    this = this[7];
    p_src = &__src;
    v6 = 4;
    do
    {
      if (v6 >= v3)
      {
        v7 = v3;
      }

      else
      {
        v7 = v6;
      }

      memcpy(this, p_src, v7);
      v8 = v2[6].u32[0];
      if (v7 == v2[6].i32[1])
      {
        PCHash128::addData(v2 + 4, &v2[8], v8);
        v3 = v2[6].u32[0];
        this = v2 + 8;
      }

      else
      {
        v3 = v8 - v7;
        this = (v4 + v7);
      }

      v2[6].i32[1] = v3;
      v2[7] = this;
      p_src = (p_src + v7);
      v6 -= v7;
    }

    while (v6);
  }

  else
  {
    **&this[7] = a2;
    this[6].i32[1] -= 4;
    *&this[7] += 4;
  }

  return this;
}

int8x8_t *PCHashWriteStream::writeValue(int8x8_t *this, uint64_t a2)
{
  v2 = this;
  __src = a2;
  v3 = this[6].u32[1];
  if (v3 <= 7)
  {
    v4 = this + 8;
    this = this[7];
    p_src = &__src;
    v6 = 8;
    do
    {
      if (v6 >= v3)
      {
        v7 = v3;
      }

      else
      {
        v7 = v6;
      }

      memcpy(this, p_src, v7);
      v8 = v2[6].u32[0];
      if (v7 == v2[6].i32[1])
      {
        PCHash128::addData(v2 + 4, &v2[8], v8);
        v3 = v2[6].u32[0];
        this = v2 + 8;
      }

      else
      {
        v3 = v8 - v7;
        this = (v4 + v7);
      }

      v2[6].i32[1] = v3;
      v2[7] = this;
      p_src = (p_src + v7);
      v6 -= v7;
    }

    while (v6);
  }

  else
  {
    **&this[7] = a2;
    this[6].i32[1] -= 8;
    *&this[7] += 8;
  }

  return this;
}

{
  v2 = this;
  __src = a2;
  v3 = this[6].u32[1];
  if (v3 <= 7)
  {
    v4 = this + 8;
    this = this[7];
    p_src = &__src;
    v6 = 8;
    do
    {
      if (v6 >= v3)
      {
        v7 = v3;
      }

      else
      {
        v7 = v6;
      }

      memcpy(this, p_src, v7);
      v8 = v2[6].u32[0];
      if (v7 == v2[6].i32[1])
      {
        PCHash128::addData(v2 + 4, &v2[8], v8);
        v3 = v2[6].u32[0];
        this = v2 + 8;
      }

      else
      {
        v3 = v8 - v7;
        this = (v4 + v7);
      }

      v2[6].i32[1] = v3;
      v2[7] = this;
      p_src = (p_src + v7);
      v6 -= v7;
    }

    while (v6);
  }

  else
  {
    **&this[7] = a2;
    this[6].i32[1] -= 8;
    *&this[7] += 8;
  }

  return this;
}

int8x8_t *PCHashWriteStream::writeValue(int8x8_t *this, float a2)
{
  v2 = this;
  __src = a2;
  v3 = this[6].u32[1];
  if (v3 <= 3)
  {
    v4 = this + 8;
    this = this[7];
    p_src = &__src;
    v6 = 4;
    do
    {
      if (v6 >= v3)
      {
        v7 = v3;
      }

      else
      {
        v7 = v6;
      }

      memcpy(this, p_src, v7);
      v8 = v2[6].u32[0];
      if (v7 == v2[6].i32[1])
      {
        PCHash128::addData(v2 + 4, &v2[8], v8);
        v3 = v2[6].u32[0];
        this = v2 + 8;
      }

      else
      {
        v3 = v8 - v7;
        this = (v4 + v7);
      }

      v2[6].i32[1] = v3;
      v2[7] = this;
      p_src = (p_src + v7);
      v6 -= v7;
    }

    while (v6);
  }

  else
  {
    *this[7].i32[0] = a2;
    this[6].i32[1] -= 4;
    *&this[7] += 4;
  }

  return this;
}

int8x8_t *PCHashWriteStream::writeValue(int8x8_t *this, double a2)
{
  v2 = this;
  __src = a2;
  v3 = this[6].u32[1];
  if (v3 <= 7)
  {
    v4 = this + 8;
    this = this[7];
    p_src = &__src;
    v6 = 8;
    do
    {
      if (v6 >= v3)
      {
        v7 = v3;
      }

      else
      {
        v7 = v6;
      }

      memcpy(this, p_src, v7);
      v8 = v2[6].u32[0];
      if (v7 == v2[6].i32[1])
      {
        PCHash128::addData(v2 + 4, &v2[8], v8);
        v3 = v2[6].u32[0];
        this = v2 + 8;
      }

      else
      {
        v3 = v8 - v7;
        this = (v4 + v7);
      }

      v2[6].i32[1] = v3;
      v2[7] = this;
      p_src = (p_src + v7);
      v6 -= v7;
    }

    while (v6);
  }

  else
  {
    *this[7] = a2;
    this[6].i32[1] -= 8;
    *&this[7] += 8;
  }

  return this;
}

int8x8_t *PCHashWriteStream::writeValue(int8x8_t *result, __int128 *a2)
{
  v2 = result;
  v9 = *a2;
  v3 = result[6].u32[1];
  if (v3 <= 0xF)
  {
    v4 = result + 8;
    result = result[7];
    v5 = &v9;
    v6 = 16;
    do
    {
      if (v6 >= v3)
      {
        v7 = v3;
      }

      else
      {
        v7 = v6;
      }

      memcpy(result, v5, v7);
      v8 = v2[6].u32[0];
      if (v7 == v2[6].i32[1])
      {
        PCHash128::addData(v2 + 4, &v2[8], v8);
        v3 = v2[6].u32[0];
        result = v2 + 8;
      }

      else
      {
        v3 = v8 - v7;
        result = (v4 + v7);
      }

      v2[6].i32[1] = v3;
      v2[7] = result;
      v5 = (v5 + v7);
      v6 -= v7;
    }

    while (v6);
  }

  else
  {
    **&result[7] = v9;
    result[6].i32[1] -= 16;
    *&result[7] += 16;
  }

  return result;
}

int8x8_t *PCHashWriteStream::writeValue(int8x8_t *this, const CMTime *__src)
{
  v2 = __src;
  v3 = this;
  v4 = this[6].u32[1];
  if (v4 <= 0x17)
  {
    v7 = this + 8;
    this = this[7];
    v8 = 24;
    do
    {
      if (v8 >= v4)
      {
        v9 = v4;
      }

      else
      {
        v9 = v8;
      }

      memcpy(this, v2, v9);
      v10 = v3[6].u32[0];
      if (v9 == v3[6].i32[1])
      {
        PCHash128::addData(v3 + 4, &v3[8], v10);
        v4 = v3[6].u32[0];
        this = v3 + 8;
      }

      else
      {
        v4 = v10 - v9;
        this = (v7 + v9);
      }

      v3[6].i32[1] = v4;
      v3[7] = this;
      v2 = (v2 + v9);
      v8 -= v9;
    }

    while (v8);
  }

  else
  {
    v5 = this[7];
    v6 = *&__src->value;
    *(*&v5 + 16) = __src->epoch;
    **&v5 = v6;
    this[6].i32[1] -= 24;
    *&this[7] += 24;
  }

  return this;
}

void PCHashWriteStream::writeValue(int8x8_t *this, PCString *a2)
{
  UniStr = PCString::createUniStr(a2);
  v4 = UniStr;
  if (!UniStr)
  {
    goto LABEL_20;
  }

  if (*UniStr)
  {
    v5 = 2;
    do
    {
      v6 = *(UniStr + v5);
      v5 += 2;
    }

    while (v6);
    v7 = this[6].u32[1];
    if (v7 < v5)
    {
      if (v5 < 1)
      {
        goto LABEL_20;
      }

      goto LABEL_9;
    }

LABEL_19:
    memcpy(*&this[7], UniStr, v5);
    this[6].i32[1] -= v5;
    *&this[7] += v5;
    goto LABEL_20;
  }

  v7 = this[6].u32[1];
  LODWORD(v5) = 2;
  if (v7 >= 2)
  {
    goto LABEL_19;
  }

LABEL_9:
  v8 = this[7];
  v9 = v4;
  do
  {
    if (v5 >= v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }

    memcpy(v8, v9, v10);
    v11 = this[6].u32[0];
    if (v10 == this[6].i32[1])
    {
      PCHash128::addData(this + 4, &this[8], v11);
      v7 = this[6].u32[0];
      v8 = this + 8;
    }

    else
    {
      v7 = v11 - v10;
      v8 = (this + v10 + 64);
    }

    this[6].i32[1] = v7;
    this[7] = v8;
    v9 = (v9 + v10);
    v12 = __OFSUB__(v5, v10);
    LODWORD(v5) = v5 - v10;
  }

  while (!((v5 < 0) ^ v12 | (v5 == 0)));
LABEL_20:

  free(v4);
}

int8x8_t *PCHashWriteStream::writeValue(int8x8_t *this, const void *a2)
{
  v2 = this;
  __src = a2;
  v3 = this[6].u32[1];
  if (v3 <= 7)
  {
    v4 = this + 8;
    this = this[7];
    p_src = &__src;
    v6 = 8;
    do
    {
      if (v6 >= v3)
      {
        v7 = v3;
      }

      else
      {
        v7 = v6;
      }

      memcpy(this, p_src, v7);
      v8 = v2[6].u32[0];
      if (v7 == v2[6].i32[1])
      {
        PCHash128::addData(v2 + 4, &v2[8], v8);
        v3 = v2[6].u32[0];
        this = v2 + 8;
      }

      else
      {
        v3 = v8 - v7;
        this = (v4 + v7);
      }

      v2[6].i32[1] = v3;
      v2[7] = this;
      p_src = (p_src + v7);
      v6 -= v7;
    }

    while (v6);
  }

  else
  {
    **&this[7] = a2;
    this[6].i32[1] -= 8;
    *&this[7] += 8;
  }

  return this;
}

int8x8_t *PCHashWriteStream::writeValue(int8x8_t *this, const PCHash128 *a2)
{
  v2 = this;
  v9 = *a2;
  v3 = this[6].u32[1];
  if (v3 <= 0xF)
  {
    v4 = this + 8;
    this = this[7];
    v5 = &v9;
    v6 = 16;
    do
    {
      if (v6 >= v3)
      {
        v7 = v3;
      }

      else
      {
        v7 = v6;
      }

      memcpy(this, v5, v7);
      v8 = v2[6].u32[0];
      if (v7 == v2[6].i32[1])
      {
        PCHash128::addData(v2 + 4, &v2[8], v8);
        v3 = v2[6].u32[0];
        this = v2 + 8;
      }

      else
      {
        v3 = v8 - v7;
        this = (v4 + v7);
      }

      v2[6].i32[1] = v3;
      v2[7] = this;
      v5 = (v5 + v7);
      v6 -= v7;
    }

    while (v6);
  }

  else
  {
    **&this[7] = v9;
    this[6].i32[1] -= 16;
    *&this[7] += 16;
  }

  return this;
}

int8x8_t *PCHashWriteStream::writeValue(int8x8_t *this, const char *__s)
{
  v2 = __s;
  v4 = strlen(__s);
  v5 = this[6].u32[1];
  if (v5 >= v4)
  {
    result = memcpy(*&this[7], v2, v4);
    this[6].i32[1] -= v4;
    *&this[7] += v4;
  }

  else
  {
    result = this[7];
    do
    {
      if (v4 >= v5)
      {
        v7 = v5;
      }

      else
      {
        v7 = v4;
      }

      memcpy(result, v2, v7);
      v8 = this[6].u32[0];
      if (v7 == this[6].i32[1])
      {
        PCHash128::addData(this + 4, &this[8], v8);
        v5 = this[6].u32[0];
        result = this + 8;
      }

      else
      {
        v5 = v8 - v7;
        result = (this + v7 + 64);
      }

      this[6].i32[1] = v5;
      this[7] = result;
      v2 += v7;
      v4 -= v7;
    }

    while (v4);
  }

  return result;
}

int8x8_t *PCHashWriteStream::writeValue(int8x8_t *this, char a2)
{
  v2 = this;
  __src = a2;
  v3 = this[6].i32[1];
  if (v3)
  {
    **&this[7] = a2;
    --this[6].i32[1];
    ++*&this[7];
  }

  else
  {
    v4 = this + 8;
    this = this[7];
    p_src = &__src;
    do
    {
      v6 = v3;
      v7 = v3 != 0;
      memcpy(this, p_src, v7);
      v8 = v2[6].u32[0];
      if (v2[6].i32[1] == v7)
      {
        PCHash128::addData(v2 + 4, &v2[8], v8);
        v3 = v2[6].i32[0];
        this = v2 + 8;
      }

      else
      {
        v3 = v8 - v7;
        this = (v4 + v7);
      }

      v2[6].i32[1] = v3;
      v2[7] = this;
      p_src += v7;
    }

    while (!v6);
  }

  return this;
}

int8x8_t *PCHashWriteStream::writeValue(int8x8_t *this, __int16 a2)
{
  v2 = this;
  __src = a2;
  v3 = this[6].u32[1];
  if (v3 <= 1)
  {
    v4 = this + 8;
    this = this[7];
    p_src = &__src;
    v6 = 2;
    do
    {
      if (v6 >= v3)
      {
        v7 = v3;
      }

      else
      {
        v7 = v6;
      }

      memcpy(this, p_src, v7);
      v8 = v2[6].u32[0];
      if (v7 == v2[6].i32[1])
      {
        PCHash128::addData(v2 + 4, &v2[8], v8);
        v3 = v2[6].u32[0];
        this = v2 + 8;
      }

      else
      {
        v3 = v8 - v7;
        this = (v4 + v7);
      }

      v2[6].i32[1] = v3;
      v2[7] = this;
      p_src = (p_src + v7);
      v6 -= v7;
    }

    while (v6);
  }

  else
  {
    **&this[7] = a2;
    this[6].i32[1] -= 2;
    *&this[7] += 2;
  }

  return this;
}

int8x8_t *PCHashWriteStream::writeData(int8x8_t *this, char *__src, size_t __n)
{
  v3 = __n;
  v4 = __src;
  v6 = this[6].u32[1];
  if (v6 >= __n)
  {
    result = memcpy(*&this[7], __src, __n);
    this[6].i32[1] -= v3;
    *&this[7] += v3;
  }

  else
  {
    v7 = this + 8;
    result = this[7];
    do
    {
      if (v3 >= v6)
      {
        v9 = v6;
      }

      else
      {
        v9 = v3;
      }

      memcpy(result, v4, v9);
      v10 = this[6].u32[0];
      if (v9 == this[6].i32[1])
      {
        PCHash128::addData(this + 4, &this[8], v10);
        v6 = this[6].u32[0];
        result = this + 8;
      }

      else
      {
        v6 = v10 - v9;
        result = (v7 + v9);
      }

      this[6].i32[1] = v6;
      this[7] = result;
      v4 += v9;
      v3 -= v9;
    }

    while (v3);
  }

  return result;
}

int8x8_t *PCHashWriteStream::writeAttribute(int8x8_t *this, unsigned int a2, int a3)
{
  v3 = this;
  __src = a3;
  v4 = this[6].u32[1];
  if (v4 <= 3)
  {
    v5 = this + 8;
    this = this[7];
    p_src = &__src;
    v7 = 4;
    do
    {
      if (v7 >= v4)
      {
        v8 = v4;
      }

      else
      {
        v8 = v7;
      }

      memcpy(this, p_src, v8);
      v9 = v3[6].u32[0];
      if (v8 == v3[6].i32[1])
      {
        PCHash128::addData(v3 + 4, &v3[8], v9);
        v4 = v3[6].u32[0];
        this = v3 + 8;
      }

      else
      {
        v4 = v9 - v8;
        this = (v5 + v8);
      }

      v3[6].i32[1] = v4;
      v3[7] = this;
      p_src = (p_src + v8);
      v7 -= v8;
    }

    while (v7);
  }

  else
  {
    **&this[7] = a3;
    this[6].i32[1] -= 4;
    *&this[7] += 4;
  }

  return this;
}

{
  v3 = this;
  __src = a3;
  v4 = this[6].u32[1];
  if (v4 <= 3)
  {
    v5 = this + 8;
    this = this[7];
    p_src = &__src;
    v7 = 4;
    do
    {
      if (v7 >= v4)
      {
        v8 = v4;
      }

      else
      {
        v8 = v7;
      }

      memcpy(this, p_src, v8);
      v9 = v3[6].u32[0];
      if (v8 == v3[6].i32[1])
      {
        PCHash128::addData(v3 + 4, &v3[8], v9);
        v4 = v3[6].u32[0];
        this = v3 + 8;
      }

      else
      {
        v4 = v9 - v8;
        this = (v5 + v8);
      }

      v3[6].i32[1] = v4;
      v3[7] = this;
      p_src = (p_src + v8);
      v7 -= v8;
    }

    while (v7);
  }

  else
  {
    **&this[7] = a3;
    this[6].i32[1] -= 4;
    *&this[7] += 4;
  }

  return this;
}

int8x8_t *PCHashWriteStream::writeAttribute(int8x8_t *this, unsigned int a2, uint64_t a3)
{
  v3 = this;
  __src = a3;
  v4 = this[6].u32[1];
  if (v4 <= 7)
  {
    v5 = this + 8;
    this = this[7];
    p_src = &__src;
    v7 = 8;
    do
    {
      if (v7 >= v4)
      {
        v8 = v4;
      }

      else
      {
        v8 = v7;
      }

      memcpy(this, p_src, v8);
      v9 = v3[6].u32[0];
      if (v8 == v3[6].i32[1])
      {
        PCHash128::addData(v3 + 4, &v3[8], v9);
        v4 = v3[6].u32[0];
        this = v3 + 8;
      }

      else
      {
        v4 = v9 - v8;
        this = (v5 + v8);
      }

      v3[6].i32[1] = v4;
      v3[7] = this;
      p_src = (p_src + v8);
      v7 -= v8;
    }

    while (v7);
  }

  else
  {
    **&this[7] = a3;
    this[6].i32[1] -= 8;
    *&this[7] += 8;
  }

  return this;
}

{
  v3 = this;
  __src = a3;
  v4 = this[6].u32[1];
  if (v4 <= 7)
  {
    v5 = this + 8;
    this = this[7];
    p_src = &__src;
    v7 = 8;
    do
    {
      if (v7 >= v4)
      {
        v8 = v4;
      }

      else
      {
        v8 = v7;
      }

      memcpy(this, p_src, v8);
      v9 = v3[6].u32[0];
      if (v8 == v3[6].i32[1])
      {
        PCHash128::addData(v3 + 4, &v3[8], v9);
        v4 = v3[6].u32[0];
        this = v3 + 8;
      }

      else
      {
        v4 = v9 - v8;
        this = (v5 + v8);
      }

      v3[6].i32[1] = v4;
      v3[7] = this;
      p_src = (p_src + v8);
      v7 -= v8;
    }

    while (v7);
  }

  else
  {
    **&this[7] = a3;
    this[6].i32[1] -= 8;
    *&this[7] += 8;
  }

  return this;
}

int8x8_t *PCHashWriteStream::writeAttribute(int8x8_t *this, float a2)
{
  v2 = this;
  __src = a2;
  v3 = this[6].u32[1];
  if (v3 <= 3)
  {
    v4 = this + 8;
    this = this[7];
    p_src = &__src;
    v6 = 4;
    do
    {
      if (v6 >= v3)
      {
        v7 = v3;
      }

      else
      {
        v7 = v6;
      }

      memcpy(this, p_src, v7);
      v8 = v2[6].u32[0];
      if (v7 == v2[6].i32[1])
      {
        PCHash128::addData(v2 + 4, &v2[8], v8);
        v3 = v2[6].u32[0];
        this = v2 + 8;
      }

      else
      {
        v3 = v8 - v7;
        this = (v4 + v7);
      }

      v2[6].i32[1] = v3;
      v2[7] = this;
      p_src = (p_src + v7);
      v6 -= v7;
    }

    while (v6);
  }

  else
  {
    *this[7].i32[0] = a2;
    this[6].i32[1] -= 4;
    *&this[7] += 4;
  }

  return this;
}

int8x8_t *PCHashWriteStream::writeAttribute(int8x8_t *this, double a2)
{
  v2 = this;
  __src = a2;
  v3 = this[6].u32[1];
  if (v3 <= 7)
  {
    v4 = this + 8;
    this = this[7];
    p_src = &__src;
    v6 = 8;
    do
    {
      if (v6 >= v3)
      {
        v7 = v3;
      }

      else
      {
        v7 = v6;
      }

      memcpy(this, p_src, v7);
      v8 = v2[6].u32[0];
      if (v7 == v2[6].i32[1])
      {
        PCHash128::addData(v2 + 4, &v2[8], v8);
        v3 = v2[6].u32[0];
        this = v2 + 8;
      }

      else
      {
        v3 = v8 - v7;
        this = (v4 + v7);
      }

      v2[6].i32[1] = v3;
      v2[7] = this;
      p_src = (p_src + v7);
      v6 -= v7;
    }

    while (v6);
  }

  else
  {
    *this[7] = a2;
    this[6].i32[1] -= 8;
    *&this[7] += 8;
  }

  return this;
}

int8x8_t *PCHashWriteStream::writeAttribute(int8x8_t *result, uint64_t a2, __int128 *a3)
{
  v3 = result;
  v10 = *a3;
  v4 = result[6].u32[1];
  if (v4 <= 0xF)
  {
    v5 = result + 8;
    result = result[7];
    v6 = &v10;
    v7 = 16;
    do
    {
      if (v7 >= v4)
      {
        v8 = v4;
      }

      else
      {
        v8 = v7;
      }

      memcpy(result, v6, v8);
      v9 = v3[6].u32[0];
      if (v8 == v3[6].i32[1])
      {
        PCHash128::addData(v3 + 4, &v3[8], v9);
        v4 = v3[6].u32[0];
        result = v3 + 8;
      }

      else
      {
        v4 = v9 - v8;
        result = (v5 + v8);
      }

      v3[6].i32[1] = v4;
      v3[7] = result;
      v6 = (v6 + v8);
      v7 -= v8;
    }

    while (v7);
  }

  else
  {
    **&result[7] = v10;
    result[6].i32[1] -= 16;
    *&result[7] += 16;
  }

  return result;
}

int8x8_t *PCHashWriteStream::writeAttribute(int8x8_t *this, unsigned int a2, const CMTime *__src)
{
  v3 = __src;
  v4 = this;
  v5 = this[6].u32[1];
  if (v5 <= 0x17)
  {
    v8 = this + 8;
    this = this[7];
    v9 = 24;
    do
    {
      if (v9 >= v5)
      {
        v10 = v5;
      }

      else
      {
        v10 = v9;
      }

      memcpy(this, v3, v10);
      v11 = v4[6].u32[0];
      if (v10 == v4[6].i32[1])
      {
        PCHash128::addData(v4 + 4, &v4[8], v11);
        v5 = v4[6].u32[0];
        this = v4 + 8;
      }

      else
      {
        v5 = v11 - v10;
        this = (v8 + v10);
      }

      v4[6].i32[1] = v5;
      v4[7] = this;
      v3 = (v3 + v10);
      v9 -= v10;
    }

    while (v9);
  }

  else
  {
    v6 = this[7];
    v7 = *&__src->value;
    *(*&v6 + 16) = __src->epoch;
    **&v6 = v7;
    this[6].i32[1] -= 24;
    *&this[7] += 24;
  }

  return this;
}

int8x8_t *PCHashWriteStream::getHash(int8x8_t *this)
{
  v3 = this[6].i32[0];
  v2 = this[6].i32[1];
  if (v3 != v2)
  {
    PCHash128::addData(this + 4, &this[8], (v3 - v2));
    v2 = this[6].i32[0];
  }

  this[6].i32[1] = v2;
  this[7] = &this[8];
  return this + 4;
}

__n128 PCHashWriteStream::setHash(__n128 *this, __n128 *a2)
{
  this[3].n128_u32[1] = this[3].n128_u32[0];
  this[3].n128_u64[1] = this[4].n128_u64;
  result = *a2;
  this[2] = *a2;
  return result;
}

void PCSerializerReadStream::~PCSerializerReadStream(PCSerializerReadStream *this)
{
  *this = &unk_287208FD0;
  for (i = (this + 8); ; std::deque<unsigned long>::__maybe_remove_back_spare[abi:ne200100](i, 1))
  {
    v3 = *(this + 6);
    if (!v3)
    {
      break;
    }

    (*(*this + 48))(this, *(*(*(this + 2) + (((v3 + *(this + 5) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v3 + *(this + 5) - 1) & 0x1FF)));
    --*(this + 6);
  }

  std::deque<PCSerializerReadStream::HandlerInfo>::~deque[abi:ne200100](this + 7);
  std::deque<unsigned long>::~deque[abi:ne200100](i);
}

uint64_t PCSerializerReadStream::pushHandler(PCSerializerReadStream *this, PCSerializer *a2)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  v11 = a2;
  v4 = *(this + 6);
  if (v4)
  {
    v12 = *(*(*(this + 2) + (((v4 + *(this + 5) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v4 + *(this + 5) - 1) & 0x1FF));
  }

  v5 = std::deque<PCSerializerReadStream::HandlerInfo>::push_back(this + 7, &__p);
  v6 = (*(*a2 + 40))(a2, this, v5);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v6;
}

void sub_25FBBB788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *PCSerializerReadStream::popHandler(void *this)
{
  v1 = this[12];
  if (v1)
  {
    v2 = this;
    v3 = *(*(this[8] + 8 * ((v1 + this[11] - 1) / 0x66uLL)) + 40 * ((v1 + this[11] - 1) % 0x66uLL) + 24);
    (*(*v3 + 48))(v3, v2);

    return std::deque<PCSerializerReadStream::HandlerInfo>::pop_back((v2 + 56));
  }

  return this;
}

void *PCSerializerReadStream::popAllHandlers(void *this)
{
  v1 = this[12];
  if (v1)
  {
    v2 = this;
    do
    {
      v3 = *(*(v2[8] + 8 * ((v1 + v2[11] - 1) / 0x66uLL)) + 40 * ((v1 + v2[11] - 1) % 0x66uLL) + 24);
      (*(*v3 + 48))(v3, v2);
      this = std::deque<PCSerializerReadStream::HandlerInfo>::pop_back(v2 + 7);
      v1 = v2[12];
    }

    while (v1);
  }

  return this;
}

uint64_t PCSerializerReadStream::ignoreElement(PCSerializerReadStream *this)
{
  {
    v3 = this;
    PCSerializerReadStream::ignoreElement();
    this = v3;
  }

  return PCSerializerReadStream::pushHandler(this, &PCSerializerReadStream::ignoreElement(void)::ignoreHandler);
}

void *PCSerializerReadStream::popElement(void *this)
{
  v1 = this[6];
  if (v1)
  {
    v2 = this;
    (*(*this + 48))(this, *(*(this[2] + (((v1 + this[5] - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v1 + this[5] - 1) & 0x1FF)));
    --v2[6];

    return std::deque<unsigned long>::__maybe_remove_back_spare[abi:ne200100](v2 + 1, 1);
  }

  return this;
}

void PCSerializerReadStream::pushScope(void *a1, uint64_t a2)
{
  v2 = a1[12];
  if (v2)
  {
    v4 = *(a1[8] + 8 * ((v2 + a1[11] - 1) / 0x66uLL)) + 40 * ((v2 + a1[11] - 1) % 0x66uLL);
    v6 = *(v4 + 8);
    v5 = *(v4 + 16);
    if (v6 >= v5)
    {
      v8 = (v6 - *v4) >> 3;
      if ((v8 + 1) >> 61)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      v9 = v5 - *v4;
      v10 = v9 >> 2;
      if (v9 >> 2 <= (v8 + 1))
      {
        v10 = v8 + 1;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF8)
      {
        v11 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      if (v11)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(v4, v11);
      }

      v12 = (8 * v8);
      *v12 = a2;
      v7 = 8 * v8 + 8;
      v13 = *(v4 + 8) - *v4;
      v14 = v12 - v13;
      memcpy(v12 - v13, *v4, v13);
      v15 = *v4;
      *v4 = v14;
      *(v4 + 8) = v7;
      *(v4 + 16) = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v6 = a2;
      v7 = (v6 + 1);
    }

    *(v4 + 8) = v7;
  }
}

uint64_t PCSerializerReadStream::currentElement(PCSerializerReadStream *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    return *(*(*(this + 2) + (((v1 + *(this + 5) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v1 + *(this + 5) - 1) & 0x1FF));
  }

  else
  {
    return 0;
  }
}

uint64_t PCSerializerReadStream::currentHandlerElement(PCSerializerReadStream *this)
{
  v1 = *(this + 12);
  if (v1)
  {
    return *(*(*(this + 8) + 8 * ((v1 + *(this + 11) - 1) / 0x66uLL)) + 40 * ((v1 + *(this + 11) - 1) % 0x66uLL) + 32);
  }

  else
  {
    return 0;
  }
}

BOOL PCSerializerReadStream::isLessThanVersion(PCSerializerReadStream *this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 26);
  if (v3 < a2)
  {
    return 1;
  }

  if (v3 == a2)
  {
    return *(this + 27) < a3;
  }

  return 0;
}

void PCSerializerReadStream::setTimeScale(PCSerializerReadStream *this, const CMTime *a2)
{
  v3 = *&a2->value;
  *(this + 16) = a2->epoch;
  *(this + 7) = v3;
  v4 = *a2;
  *(this + 17) = CMTimeGetSeconds(&v4);
  *(this + 144) = 1;
}

uint64_t PCSerializerReadStream::getElementInfo(void *a1, char *__s2, void *a3, void *a4, void *a5)
{
  v5 = a1[12];
  if (!v5)
  {
    return 0;
  }

  v9 = (*(a1[8] + 8 * ((v5 + a1[11] - 1) / 0x66uLL)) + 40 * ((v5 + a1[11] - 1) % 0x66uLL));
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  v10 = *v9;
  if (v9[1] == *v9)
  {
    return 0;
  }

  v12 = 0;
  while (1)
  {
    v13 = *(v10 + 8 * v12);
    *a4 = v13;
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        break;
      }
    }

LABEL_11:
    ++v12;
    v10 = *v9;
    if (v12 >= (v9[1] - *v9) >> 3)
    {
      return 0;
    }
  }

  while (*(v13 + 3) || strcmp(v14, __s2) && (*v14 != 42 || *(v14 + 1)))
  {
    v15 = v13[2];
    v13 += 2;
    v14 = v15;
    if (!v15)
    {
      goto LABEL_11;
    }
  }

  *a3 = v13;
  *a4 = *(*v9 + 8 * v12);
  *a5 = v9[3];
  return 1;
}

uint64_t PCSerializerReadStream::destroyElement(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

uint64_t PCSerializerReadStream::processElement(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 24);
  if (result)
  {
    *(a2 + 12) = 1;
    return (*(*result + 56))(result, a1);
  }

  return result;
}

uint64_t std::deque<PCSerializerReadStream::HandlerInfo>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x66];
    v7 = *v6;
    v8 = *v6 + 40 * (v5 % 0x66);
    v9 = v2[(a1[5] + v5) / 0x66] + 40 * ((a1[5] + v5) % 0x66);
    if (v8 != v9)
    {
      do
      {
        v10 = *v8;
        if (*v8)
        {
          *(v8 + 8) = v10;
          operator delete(v10);
          v7 = *v6;
        }

        v8 += 40;
        if (v8 - v7 == 4080)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 51;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v13 = 102;
  }

  a1[4] = v13;
LABEL_18:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return std::__split_buffer<unsigned long *>::~__split_buffer(a1);
}

uint64_t std::vector<PCScope *>::__init_with_size[abi:ne200100]<PCScope **,PCScope **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<HGRef<PVRenderJob>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25FBBC258(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::deque<PCSerializerReadStream::HandlerInfo>::push_back(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 102 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<PCSerializerReadStream::HandlerInfo>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x66)) + 40 * (v7 % 0x66);
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  std::vector<PCScope *>::__init_with_size[abi:ne200100]<PCScope **,PCScope **>(v8, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  result = *(a2 + 24);
  *(v8 + 24) = result;
  ++a1[5];
  return result;
}

void *std::deque<PCSerializerReadStream::HandlerInfo>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x66;
  v3 = v1 - 102;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<PVLoadedEffectItem *>::emplace_back<PVLoadedEffectItem *>(a1, &v10);
}

void sub_25FBBC4D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<PCSerializerReadStream::HandlerInfo>::pop_back(void *a1)
{
  v2 = a1[5] - 1;
  v3 = *(a1[1] + 8 * ((v2 + a1[4]) / 0x66uLL)) + 40 * ((v2 + a1[4]) % 0x66uLL);
  v4 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v4;
    operator delete(v4);
    v2 = a1[5] - 1;
  }

  a1[5] = v2;

  return std::deque<PCSerializerReadStream::HandlerInfo>::__maybe_remove_back_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<PCSerializerReadStream::HandlerInfo>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 102 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x66)
  {
    a2 = 1;
  }

  if (v5 < 0xCC)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void *std::deque<PCStreamElement *>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    result = std::deque<PCStreamElement *>::__add_back_capacity(result);
    v5 = v3[1];
    v7 = v3[5];
    v8 = v3[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  v3[5] = v7 + 1;
  return result;
}

void *std::deque<PCStreamElement *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<objc_class * {__strong}>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<PCStreamElement **>::emplace_back<PCStreamElement **&>(a1, &v10);
}

void sub_25FBBC834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<PCStreamElement **>::emplace_back<PCStreamElement **&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_class * {__strong}>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<PCStreamElement **>::emplace_front<PCStreamElement **>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_class * {__strong}>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<PCStreamElement **>::emplace_back<PCStreamElement **>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_class * {__strong}>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<PCStreamElement **>::emplace_front<PCStreamElement **&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_class * {__strong}>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void PCSerializerReadStream::ignoreElement()
{
  {
    __cxa_atexit(PCIgnoreElement::~PCIgnoreElement, &PCSerializerReadStream::ignoreElement(void)::ignoreHandler, &dword_25F8F0000);
  }
}

void PCSerializerWriteStream::PCSerializerWriteStream(PCSerializerWriteStream *this)
{
  *this = &unk_287208ED0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
}

void PCSerializerWriteStream::pushScope(void *a1, uint64_t a2)
{
  v5 = a1[2];
  v4 = a1[3];
  if (v5 >= v4)
  {
    v7 = a1[1];
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>((a1 + 1), v11);
    }

    v12 = (8 * v8);
    *v12 = a2;
    v6 = 8 * v8 + 8;
    v13 = a1[1];
    v14 = a1[2] - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = a1[1];
    a1[1] = v15;
    a1[2] = v6;
    a1[3] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 1);
  }

  a1[2] = v6;
}

uint64_t PCStreamElement::atoUUID(PCStreamElement *this, const char **a2)
{
  v2 = 0;
  v14 = *MEMORY[0x277D85DE8];
  v3 = *this;
  v4 = MEMORY[0x277D85DE0];
LABEL_2:
  v5 = 0;
  v6 = 0;
  v7 = v3 + 8;
  while (1)
  {
    v8 = *(v3 + v5);
    if ((v8 & 0x80000000) != 0 || (*(v4 + 4 * v8 + 60) & 0x10000) == 0)
    {
      return 0;
    }

    v9 = 16 * v6;
    ++v5;
    if (v8 - 65 <= 5)
    {
      v10 = v9 + v8 - 55;
    }

    else
    {
      v10 = v9;
    }

    if (v8 - 97 <= 5)
    {
      v11 = v9 + v8 - 87;
    }

    else
    {
      v11 = v10;
    }

    v6 = v8 + v9 - 48;
    if (v8 - 48 > 9)
    {
      v6 = v11;
    }

    if (v5 == 8)
    {
      *(&v13 + v2++) = v6;
      v3 += 8;
      if (v2 == 4)
      {
        *this = v7;
        operator new();
      }

      goto LABEL_2;
    }
  }
}

uint64_t PCStreamElement::aToFigTime(uint64_t this, const char **a2, CMTime *a3)
{
  if (this)
  {
    v3 = this;
    v4 = *this;
    if (!*this)
    {
      return 0;
    }

    __endptr = 0;
    *__error() = 0;
    v6 = strtoll(v4, &__endptr, 10);
    if (*__error() == 34)
    {
      return 0;
    }

    v7 = strtol(__endptr, &__endptr, 10);
    if (*__error() == 34)
    {
      return 0;
    }

    v8 = strtoull(__endptr, &__endptr, 16);
    if (*__error() == 34)
    {
      return 0;
    }

    v9 = strtoull(__endptr, &__endptr, 10);
    if (*__error() == 34)
    {
      return 0;
    }

    else
    {
      *a2 = v6;
      *(a2 + 2) = v7;
      *(a2 + 3) = v8;
      a2[2] = v9;
      *v3 = __endptr;
      return 1;
    }
  }

  return this;
}

uint64_t PCXMLStreamElement::PCXMLStreamElement(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = 0;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *a1 = &unk_287209098;
  PCSharedCount::PCSharedCount((a1 + 48));
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return a1;
}

void PCXMLStreamElement::~PCXMLStreamElement(PCXMLStreamElement *this)
{
  *this = &unk_287209098;
  v2 = *(this + 8);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 24);
  if (v3)
  {
    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(*(this + 24), *(v3 + 8));
    MEMORY[0x2666E9F00](v3, 0x1020C4062D53EE8);
  }

  *(this + 24) = 0;
  PCString::~PCString(this + 6);
}

{
  PCXMLStreamElement::~PCXMLStreamElement(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t PCXMLStreamElement::getAsString(const PCString *this, PCString *a2)
{
  if (PCString::empty(&this[6]))
  {
    var0 = this[8].var0;
    if (var0)
    {
      v5 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], var0, 0x8000100u);
      if (CFStringFind(v5, @"&", 0).location == -1)
      {
        MutableCopy = CFRetain(v5);
      }

      else
      {
        MutableCopy = CFStringCreateMutableCopy(0, 0, v5);
        v8.length = CFStringGetLength(MutableCopy);
        v8.location = 0;
        CFStringFindAndReplace(MutableCopy, @"&amp;", @"&", v8, 0);
        v9.length = CFStringGetLength(MutableCopy);
        v9.location = 0;
        CFStringFindAndReplace(MutableCopy, @"&lt;", @"<", v9, 0);
        v10.length = CFStringGetLength(MutableCopy);
        v10.location = 0;
        CFStringFindAndReplace(MutableCopy, @"&gt;", @">", v10, 0);
        v11.length = CFStringGetLength(MutableCopy);
        v11.location = 0;
        CFStringFindAndReplace(MutableCopy, @"&quot;", @"", v11, 0);
      }

      CFRelease(v5);
      PCString::set(&this[6], MutableCopy);
      CFRelease(MutableCopy);
    }
  }

  PCString::set(a2, this + 6);
  return 1;
}

uint64_t PCXMLStreamElement::getAsInt32(PCXMLStreamElement *this, int *a2)
{
  v2 = *(this + 7);
  if (!v2)
  {
    return 0;
  }

  if (!*v2)
  {
    return 0;
  }

  __endptr = 0;
  *__error() = 0;
  *a2 = strtol(*(this + 7), &__endptr, 10);
  if (*__error() == 34)
  {
    return 0;
  }

  v6 = __endptr - 1;
  v7 = MEMORY[0x277D85DE0];
  do
  {
    v8 = v6[1];
    if ((v8 & 0x80000000) != 0)
    {
      v9 = __maskrune(v8, 0x4000uLL);
    }

    else
    {
      v9 = *(v7 + 4 * v8 + 60) & 0x4000;
    }

    ++v6;
  }

  while (v9);
  *(this + 7) = v6;
  return 1;
}

uint64_t PCXMLStreamElement::getAsUInt32(PCXMLStreamElement *this, unsigned int *a2)
{
  v2 = *(this + 7);
  if (!v2)
  {
    return 0;
  }

  if (!*v2)
  {
    return 0;
  }

  __endptr = 0;
  *__error() = 0;
  *a2 = strtoul(*(this + 7), &__endptr, 10);
  if (*__error() == 34)
  {
    return 0;
  }

  v6 = __endptr - 1;
  v7 = MEMORY[0x277D85DE0];
  do
  {
    v8 = v6[1];
    if ((v8 & 0x80000000) != 0)
    {
      v9 = __maskrune(v8, 0x4000uLL);
    }

    else
    {
      v9 = *(v7 + 4 * v8 + 60) & 0x4000;
    }

    ++v6;
  }

  while (v9);
  *(this + 7) = v6;
  return 1;
}

uint64_t PCXMLStreamElement::getAsInt64(PCXMLStreamElement *this, uint64_t *a2)
{
  v2 = *(this + 7);
  if (!v2)
  {
    return 0;
  }

  if (!*v2)
  {
    return 0;
  }

  __endptr = 0;
  *__error() = 0;
  *a2 = strtoll(*(this + 7), &__endptr, 10);
  if (*__error() == 34)
  {
    return 0;
  }

  v6 = __endptr - 1;
  v7 = MEMORY[0x277D85DE0];
  do
  {
    v8 = v6[1];
    if ((v8 & 0x80000000) != 0)
    {
      v9 = __maskrune(v8, 0x4000uLL);
    }

    else
    {
      v9 = *(v7 + 4 * v8 + 60) & 0x4000;
    }

    ++v6;
  }

  while (v9);
  *(this + 7) = v6;
  return 1;
}

uint64_t PCXMLStreamElement::getAsUInt64(PCXMLStreamElement *this, unint64_t *a2)
{
  v2 = *(this + 7);
  if (!v2)
  {
    return 0;
  }

  if (!*v2)
  {
    return 0;
  }

  __endptr = 0;
  *__error() = 0;
  *a2 = strtoull(*(this + 7), &__endptr, 10);
  if (*__error() == 34)
  {
    return 0;
  }

  v6 = __endptr - 1;
  v7 = MEMORY[0x277D85DE0];
  do
  {
    v8 = v6[1];
    if ((v8 & 0x80000000) != 0)
    {
      v9 = __maskrune(v8, 0x4000uLL);
    }

    else
    {
      v9 = *(v7 + 4 * v8 + 60) & 0x4000;
    }

    ++v6;
  }

  while (v9);
  *(this + 7) = v6;
  return 1;
}

uint64_t PCXMLStreamElement::getAsFloat(PCXMLStreamElement *this, float *a2)
{
  v2 = *(this + 7);
  if (!v2)
  {
    return 0;
  }

  v10 = 0;
  if (!*v2)
  {
    return 0;
  }

  *__error() = 0;
  *a2 = strtof(*(this + 7), &v10);
  if (*__error() == 34)
  {
    return 0;
  }

  v6 = v10;
  v7 = MEMORY[0x277D85DE0];
  while (1)
  {
    v8 = *v6;
    if (!((v8 & 0x80000000) != 0 ? __maskrune(v8, 0x4000uLL) : *(v7 + 4 * v8 + 60) & 0x4000))
    {
      break;
    }

    v6 = ++v10;
  }

  *(this + 7) = v10;
  return 1;
}

uint64_t PCXMLStreamElement::getAsDouble(PCXMLStreamElement *this, double *a2)
{
  v2 = *(this + 7);
  if (!v2)
  {
    return 0;
  }

  v10 = 0;
  if (!*v2)
  {
    return 0;
  }

  *__error() = 0;
  *a2 = strtod(*(this + 7), &v10);
  if (*__error() == 34)
  {
    return 0;
  }

  v6 = v10;
  v7 = MEMORY[0x277D85DE0];
  while (1)
  {
    v8 = *v6;
    if (!((v8 & 0x80000000) != 0 ? __maskrune(v8, 0x4000uLL) : *(v7 + 4 * v8 + 60) & 0x4000))
    {
      break;
    }

    v6 = ++v10;
  }

  *(this + 7) = v10;
  return 1;
}

uint64_t PCXMLStreamElement::getAsBool(PCXMLStreamElement *this, BOOL *a2)
{
  v2 = *(this + 7);
  if (!v2)
  {
    return 0;
  }

  if (!*v2)
  {
    return 0;
  }

  __endptr = 0;
  *__error() = 0;
  *a2 = strtoul(*(this + 7), &__endptr, 10) != 0;
  if (*__error() == 34)
  {
    return 0;
  }

  v6 = __endptr - 1;
  v7 = MEMORY[0x277D85DE0];
  do
  {
    v8 = v6[1];
    if ((v8 & 0x80000000) != 0)
    {
      v9 = __maskrune(v8, 0x4000uLL);
    }

    else
    {
      v9 = *(v7 + 4 * v8 + 60) & 0x4000;
    }

    ++v6;
  }

  while (v9);
  *(this + 7) = v6;
  return 1;
}

uint64_t PCXMLStreamElement::getAsUUID(PCXMLStreamElement *this, const char **a2)
{
  v4 = *(this + 7);
  v2 = (this + 56);
  v3 = v4;
  if (v4 && *v3)
  {
    return PCStreamElement::atoUUID(v2, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t PCXMLStreamElement::getAsFigTime(PCXMLStreamElement *this, CMTime *a2, CMTime *a3)
{
  v5 = *(this + 7);
  v3 = this + 56;
  v4 = v5;
  if (v5 && *v4)
  {
    return PCStreamElement::aToFigTime(v3, a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t *PCXMLStreamElement::addAttribute(uint64_t *this, unsigned int a2, const char *a3)
{
  v7 = a2;
  v4 = *(this + 46);
  if (v4 > 6)
  {
    v6 = this[24];
    if (!v6)
    {
      operator new();
    }

    v8 = &v7;
    this = std::__tree<std::__value_type<unsigned int,char const*>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,char const*>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,char const*>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v6, &v7);
    this[5] = a3;
  }

  else
  {
    v5 = &this[2 * v4];
    *(v5 + 18) = a2;
    v5[10] = a3;
    *(this + 46) = v4 + 1;
  }

  return this;
}

uint64_t PCXMLStreamElement::addAttribute(uint64_t this, const char *__s2, const char *a3)
{
  v3 = *(this + 16);
  if (v3)
  {
    v4 = this;
    this = *v3;
    if (*v3)
    {
      v7 = v3 + 2;
      do
      {
        if (*(v7 - 2) == *(v4 + 8))
        {
          v8 = *(v7 - 1);
          if (v8)
          {
            if (!strcmp(this, __s2))
            {
              PCXMLStreamElement::addAttribute(v4, v8, a3);
            }
          }
        }

        v9 = *v7;
        v7 += 2;
        this = v9;
      }

      while (v9);
    }
  }

  return this;
}

uint64_t PCXMLStreamElement::getAttributeAsCString(PCXMLStreamElement *this, unsigned int a2)
{
  v2 = *(this + 46);
  if (v2)
  {
    v3 = this + 80;
    while (*(v3 - 2) != a2)
    {
      v3 += 16;
      if (!--v2)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v4 = *(this + 24);
    if (!v4)
    {
      return 0;
    }

    v7 = *(v4 + 8);
    v5 = v4 + 8;
    v6 = v7;
    if (!v7)
    {
      return 0;
    }

    v8 = v5;
    do
    {
      v9 = *(v6 + 32);
      v10 = v9 >= a2;
      v11 = v9 < a2;
      if (v10)
      {
        v8 = v6;
      }

      v6 = *(v6 + 8 * v11);
    }

    while (v6);
    if (v8 == v5 || *(v8 + 32) > a2)
    {
      return 0;
    }

    v3 = (v8 + 40);
  }

  return *v3;
}

uint64_t PCXMLStreamElement::getAttributeAsString(PCXMLStreamElement *this, unsigned int a2, PCString *a3)
{
  v4 = *(this + 46);
  if (v4)
  {
    v5 = (this + 80);
    while (*(v5 - 2) != a2)
    {
      v5 += 2;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }

    PCString::PCString(&v15, *v5);
    PCString::set(a3, &v15);
  }

  else
  {
LABEL_5:
    v6 = *(this + 24);
    if (!v6)
    {
      return 0;
    }

    v9 = *(v6 + 8);
    v7 = v6 + 8;
    v8 = v9;
    if (!v9)
    {
      return 0;
    }

    v10 = v7;
    do
    {
      v11 = *(v8 + 32);
      v12 = v11 >= a2;
      v13 = v11 < a2;
      if (v12)
      {
        v10 = v8;
      }

      v8 = *(v8 + 8 * v13);
    }

    while (v8);
    if (v10 == v7 || *(v10 + 32) > a2)
    {
      return 0;
    }

    PCString::PCString(&v15, *(v10 + 40));
    PCString::set(a3, &v15);
  }

  PCString::~PCString(&v15);
  return 1;
}

const char *PCXMLStreamElement::getAttributeAsInt32(PCXMLStreamElement *this, unsigned int a2, int *a3)
{
  result = PCXMLStreamElement::getAttributeAsCString(this, a2);
  if (result)
  {
    v5 = result;
    *__error() = 0;
    *a3 = strtol(v5, 0, 10);
    return (*__error() != 34);
  }

  return result;
}

const char *PCXMLStreamElement::getAttributeAsUInt32(PCXMLStreamElement *this, unsigned int a2, unsigned int *a3)
{
  result = PCXMLStreamElement::getAttributeAsCString(this, a2);
  if (result)
  {
    v5 = result;
    *__error() = 0;
    *a3 = strtoul(v5, 0, 10);
    return (*__error() != 34);
  }

  return result;
}

const char *PCXMLStreamElement::getAttributeAsInt64(PCXMLStreamElement *this, unsigned int a2, uint64_t *a3)
{
  result = PCXMLStreamElement::getAttributeAsCString(this, a2);
  if (result)
  {
    v5 = result;
    *__error() = 0;
    *a3 = strtoll(v5, 0, 10);
    return (*__error() != 34);
  }

  return result;
}

const char *PCXMLStreamElement::getAttributeAsUInt64(PCXMLStreamElement *this, unsigned int a2, unint64_t *a3)
{
  result = PCXMLStreamElement::getAttributeAsCString(this, a2);
  if (result)
  {
    v5 = result;
    *__error() = 0;
    *a3 = strtoull(v5, 0, 10);
    return (*__error() != 34);
  }

  return result;
}

const char *PCXMLStreamElement::getAttributeAsFloat(PCXMLStreamElement *this, unsigned int a2, float *a3)
{
  result = PCXMLStreamElement::getAttributeAsCString(this, a2);
  if (result)
  {
    v5 = result;
    *__error() = 0;
    *a3 = strtof(v5, 0);
    return (*__error() != 34);
  }

  return result;
}

const char *PCXMLStreamElement::getAttributeAsDouble(PCXMLStreamElement *this, unsigned int a2, double *a3)
{
  result = PCXMLStreamElement::getAttributeAsCString(this, a2);
  if (result)
  {
    v5 = result;
    *__error() = 0;
    *a3 = strtod(v5, 0);
    return (*__error() != 34);
  }

  return result;
}

const char *PCXMLStreamElement::getAttributeAsBool(PCXMLStreamElement *this, unsigned int a2, BOOL *a3)
{
  result = PCXMLStreamElement::getAttributeAsCString(this, a2);
  if (result)
  {
    v5 = result;
    *__error() = 0;
    *a3 = strtoul(v5, 0, 10) != 0;
    return (*__error() != 34);
  }

  return result;
}

uint64_t PCXMLStreamElement::getAttributeAsUUID(PCXMLStreamElement *this, unsigned int a2)
{
  result = PCXMLStreamElement::getAttributeAsCString(this, a2);
  if (result)
  {
    v4 = result;
    return PCStreamElement::atoUUID(&v4, v3);
  }

  return result;
}

uint64_t PCXMLStreamElement::getAttributeAsFigTime(PCXMLStreamElement *this, unsigned int a2, CMTime *a3)
{
  result = PCXMLStreamElement::getAttributeAsCString(this, a2);
  if (result)
  {
    v6 = result;
    return PCStreamElement::aToFigTime(&v6, a3, v5);
  }

  return result;
}

char *PCXMLStreamElement::appendContentWithNewline(PCXMLStreamElement *this, char *a2, int a3)
{
  result = *(this + 8);
  if (result)
  {
    v7 = strlen(result);
    v8 = strlen(a2);
    v9 = 1;
    if (a3)
    {
      v9 = 2;
    }

    v10 = malloc_type_realloc(*(this + 7), v7 + v9 + v8, 0x100004077774924uLL);
    v11 = v10;
    if (a3)
    {
      *&v10[strlen(v10)] = 10;
    }

    result = strcat(v11, a2);
    *(this + 7) = v11;
    *(this + 8) = v11;
  }

  else
  {
    *(this + 7) = a2;
    *(this + 8) = a2;
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned int,char const*>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,char const*>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,char const*>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
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
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

double PC_CMTimeSaferAdd@<D0>(CMTime *a1@<X0>, CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  lhs = *a1;
  rhs = *a2;
  CMTimeAdd(a3, &lhs, &rhs);
  if ((*(a3 + 12) & 0x1F) == 3 && ((a2->flags | a1->flags) & 2) == 0)
  {
    v7 = SimpCMTime(a1);
    v8 = SimpCMTime(a2);
    if ((v7 & 1) != 0 || v8)
    {
      rhs = *a1;
      v9 = *a2;
      CMTimeAdd(&lhs, &rhs, &v9);
      result = *&lhs.value;
      *a3 = lhs;
    }
  }

  return result;
}

double PC_CMTimeSaferSubtract@<D0>(CMTime *a1@<X0>, CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  lhs = *a1;
  rhs = *a2;
  CMTimeSubtract(a3, &lhs, &rhs);
  if ((*(a3 + 12) & 0x1F) == 3 && ((a2->flags | a1->flags) & 2) == 0)
  {
    v7 = SimpCMTime(a1);
    v8 = SimpCMTime(a2);
    if ((v7 & 1) != 0 || v8)
    {
      rhs = *a1;
      v9 = *a2;
      CMTimeSubtract(&lhs, &rhs, &v9);
      result = *&lhs.value;
      *a3 = lhs;
    }
  }

  return result;
}

double PC_CMTimeMultiply64Divide64@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  if (a3)
  {
    v8 = *a1;
    v9 = *(a1 + 8);
    v10 = *(a1 + 12);
    if ((v10 & 0x1D) != 1)
    {
      v15 = *(a1 + 16);
      *time = v8;
      *&time[8] = v9;
      *&time[12] = v10;
      *&time[16] = v15;
      CMTimeMultiplyByFloat64(a4, time, a2 / a3);
      goto LABEL_39;
    }

    if (v9)
    {
      v11 = v9;
      bignum_s256_init_from_s64(v8, time);
      bignum_s256_init_from_s64(a2, v26);
      if (*time == *time)
      {
        v12 = *&time[16];
        if ((*time & 0x8000000000000000) != 0)
        {
          if (*&time[8] != -1 || *&time[16] != -1)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v12 = *&time[8] | *&time[16];
          if (*&time[8] != 0)
          {
            goto LABEL_21;
          }
        }

        if (*&time[24] != v12 || *v26 != *v26)
        {
          goto LABEL_21;
        }

        v16 = *&v26[16];
        if ((*v26 & 0x8000000000000000) != 0)
        {
          if (*&v26[8] != -1 || *&v26[16] != -1)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v16 = *&v26[8] | *&v26[16];
          if (*&v26[8] != 0)
          {
            goto LABEL_21;
          }
        }

        if (*&v26[24] == v16)
        {
          bignum_s256_init_from_s64(*v26 * *time, v25);
          goto LABEL_22;
        }
      }

LABEL_21:
      bignum_s256_init_from_s64(0, v25);
      v23 = *time;
      v22[0] = *v26;
      bignum_s128_full_multiply(&v23, v22, v25);
LABEL_22:
      bignum_s256_init_from_s64(v11, v23.i64);
      *time = v23;
      *&time[16] = v24;
      bignum_s256_init_from_s64(a3, v23.i64);
      *v26 = v23;
      *&v26[16] = v24;
      if (*time == *time)
      {
        v17 = *&time[16];
        if ((*time & 0x8000000000000000) != 0)
        {
          if (*&time[8] != -1 || *&time[16] != -1)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v17 = *&time[8] | *&time[16];
          if (*&time[8] != 0)
          {
            goto LABEL_37;
          }
        }

        if (*&time[24] != v17 || *v26 != *v26)
        {
          goto LABEL_37;
        }

        v18 = *&v26[16];
        if ((*v26 & 0x8000000000000000) != 0)
        {
          if (*&v26[8] != -1 || *&v26[16] != -1)
          {
            goto LABEL_37;
          }
        }

        else
        {
          v18 = *&v26[8] | *&v26[16];
          if (*&v26[8] != 0)
          {
            goto LABEL_37;
          }
        }

        if (*&v26[24] == v18)
        {
          bignum_s256_init_from_s64(*v26 * *time, v23.i64);
LABEL_38:
          *a4 = 0;
          *(a4 + 8) = 0;
          *(a4 + 16) = 0;
          v22[0] = v25[0];
          v22[1] = v25[1];
          v21[0] = v23;
          v21[1] = v24;
          IntermediateLargeInteger::makeCMTime(v22, v21, (~v10 & 3) == 0, 0, a4);
          goto LABEL_39;
        }
      }

LABEL_37:
      bignum_s256_init_from_s64(0, v23.i64);
      v22[0] = *time;
      v21[0] = *v26;
      bignum_s128_full_multiply(v22, v21, &v23);
      goto LABEL_38;
    }
  }

  v13 = MEMORY[0x277CC0898];
  v14 = *MEMORY[0x277CC0898];
  *a4 = *MEMORY[0x277CC0898];
  *(a4 + 16) = *(v13 + 16);
LABEL_39:
  if ((*(a4 + 12) & 0x1F) != 3)
  {
    v19 = *(a1 + 8);
    if (*(a4 + 8) > v19)
    {
      memset(time, 0, 24);
      *v26 = *a4;
      *&v26[16] = *(a4 + 16);
      CMTimeConvertScale(time, v26, v19, kCMTimeRoundingMethod_RoundTowardZero);
      if ((time[12] & 0x1F) != 3)
      {
        *&v14 = *time;
        *a4 = *time;
        *(a4 + 16) = *&time[16];
      }
    }
  }

  return *&v14;
}

uint64_t PC_CMTimeGetSampleNumber(CMTime *a1, CMTime *a2)
{
  timescale = a1->timescale;
  if (!timescale || (a1->flags & 0x1D) != 1 || (v5 = a2->timescale) == 0 || !a2->value)
  {
    if ((~a2->flags & 0x11) != 0 && a2->value)
    {
      v13 = *a1;
      v9 = PC_CMTimeToFractionString(&v13);
      v13 = *a2;
      v10 = PC_CMTimeToFractionString(&v13);
      NSLog(&cfstr_ErrorPcCmtimeg.isa, v9, v10);
    }

    return 0;
  }

  if (a1->value >> 63 == timescale >> 31)
  {
    v6 = kCMTimeRoundingMethod_RoundTowardZero;
  }

  else
  {
    v6 = kCMTimeRoundingMethod_RoundAwayFromZero;
  }

  memset(&v13, 0, sizeof(v13));
  time = *a1;
  CMTimeConvertScale(&v13, &time, v5, v6);
  if ((v13.flags & 0x1F) != 3)
  {
    return v13.value / a2->value;
  }

  memset(&time, 0, sizeof(time));
  v11 = *a2;
  CMTimeConvertScale(&time, &v11, a1->timescale, v6);
  if ((time.flags & 0x1F) == 3)
  {
    v11 = *a1;
    Seconds = CMTimeGetSeconds(&v11);
    v11 = *a2;
    return (Seconds / CMTimeGetSeconds(&v11));
  }

  if (!time.value)
  {
    return 0;
  }

  return a1->value / time.value;
}

__CFString *PC_CMTimeToFractionString(CMTime *a1)
{
  flags = a1->flags;
  if ((flags & 0x1D) == 1)
  {
    epoch = a1->epoch;
    v4 = MEMORY[0x277CCACA8];
    if ((flags & 2) != 0 || epoch)
    {
      if (epoch)
      {
        time = *a1;
        Seconds = CMTimeGetSeconds(&time);
        v7 = "+round";
        v8 = a1->flags;
        if ((v8 & 2) == 0)
        {
          v7 = "";
        }

        if ((a1->flags & 0x1D) == 1)
        {
          v9 = v7;
        }

        else
        {
          v9 = "";
        }

        v10 = "+indef";
        if ((~v8 & 0x11) != 0)
        {
          v10 = "";
        }

        return [v4 stringWithFormat:@"%lf(%lld/%d+epoch=%lld%s%s)", *&Seconds, a1->value, a1->timescale, a1->epoch, v9, v10];
      }

      else
      {
        time = *a1;
        v11 = CMTimeGetSeconds(&time);
        v12 = "+round";
        v13 = a1->flags;
        if ((v13 & 2) == 0)
        {
          v12 = "";
        }

        if ((a1->flags & 0x1D) == 1)
        {
          v14 = v12;
        }

        else
        {
          v14 = "";
        }

        v15 = "+indef";
        if ((~v13 & 0x11) != 0)
        {
          v15 = "";
        }

        return [v4 stringWithFormat:@"%lf(%lld/%d%s%s)", *&v11, a1->value, a1->timescale, v14, v15, v18];
      }
    }

    else
    {
      time = *a1;
      return [MEMORY[0x277CCACA8] stringWithFormat:@"%lf(%lld/%d)", CMTimeGetSeconds(&time), a1->value, a1->timescale, v16, v17, v18];
    }
  }

  else
  {
    time = *a1;
    return PC_CMTimeToString(&time);
  }
}

double PC_CMTimeFromSampleNumberAndDuration@<D0>(uint64_t multiplier@<X0>, CMTime *a2@<X1>, CMTime *a3@<X8>)
{
  v4 = *a2;
  if (multiplier != multiplier)
  {
    return PC_CMTimeMultiply64Divide64(&v4, multiplier, 1, a3);
  }

  CMTimeMultiply(a3, &v4, multiplier);
  return result;
}

__n128 PC_CMTimeFloorToSampleDuration@<Q0>(CMTime *a1@<X0>, CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  if ((a2->flags & 0x1D) == 1 && (time1 = *a2, v6 = MEMORY[0x277CC08F0], v12 = **&MEMORY[0x277CC08F0], CMTimeCompare(&time1, &v12)))
  {
    time1 = *a1;
    v12 = *v6;
    if (CMTimeCompare(&time1, &v12) >= 0)
    {
      v7 = kCMTimeRoundingMethod_RoundTowardZero;
    }

    else
    {
      v7 = kCMTimeRoundingMethod_RoundAwayFromZero;
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    time1 = *a1;
    CMTimeConvertScale(a3, &time1, a2->timescale, v7);
    value = a2->value;
    if (a2->value >= 2)
    {
      v10 = *a3 / value * value;
      v11 = (*a3 - value + 1) / value * value;
      if (*a3 >= 0)
      {
        v11 = v10;
      }

      *a3 = v11;
    }

    *(a3 + 12) &= ~2u;
  }

  else
  {
    result = *&a1->value;
    *a3 = *&a1->value;
    *(a3 + 16) = a1->epoch;
  }

  return result;
}

__n128 PC_CMTimeCeilingToSampleDuration@<Q0>(CMTime *a1@<X0>, CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  if ((a2->flags & 0x1D) == 1 && (time1 = *a2, v6 = MEMORY[0x277CC08F0], v12 = **&MEMORY[0x277CC08F0], CMTimeCompare(&time1, &v12)))
  {
    time1 = *a1;
    v12 = *v6;
    if (CMTimeCompare(&time1, &v12) < 0)
    {
      v7 = kCMTimeRoundingMethod_RoundTowardZero;
    }

    else
    {
      v7 = kCMTimeRoundingMethod_RoundAwayFromZero;
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    time1 = *a1;
    CMTimeConvertScale(a3, &time1, a2->timescale, v7);
    value = a2->value;
    if (a2->value >= 2)
    {
      v10 = (value + *a3 - 1) / value * value;
      v11 = -*a3 % value + *a3;
      if (*a3 >= 0)
      {
        v11 = v10;
      }

      *a3 = v11;
    }

    *(a3 + 12) &= ~2u;
  }

  else
  {
    result = *&a1->value;
    *a3 = *&a1->value;
    *(a3 + 16) = a1->epoch;
  }

  return result;
}

CMTime *PC_CMTimeRangeMakeWithStartEnd@<X0>(CMTime *a1@<X0>, CMTime *a2@<X1>, CMTime *a3@<X8>)
{
  if ((~a1->flags & 9) == 0 && (a2->flags & 0x1D) == 1)
  {
    lhs = *a2;
    v7 = *kPC_CMTimeOneYear;
    CMTimeSubtract(&v9, &lhs, &v7);
    *a1 = v9;
  }

  memset(&v9, 0, sizeof(v9));
  lhs = *a2;
  v7 = *a1;
  PC_CMTimeSaferSubtract(&lhs, &v7, &v9);
  lhs = *a1;
  v7 = v9;
  return CMTimeRangeSaferMake(&lhs, &v7, a3);
}

__n128 PC_CMTimeHalve@<Q0>(CMTime *a1@<X0>, uint64_t a2@<X8>)
{
  if ((a1->flags & 0x1D) == 1)
  {
    value = a1->value;
    if (a1->value)
    {
      timescale = a1->timescale;
      if (timescale > 0x3FFFFFFF)
      {
        v7 = a1->timescale;
        v8 = a1->value;
        do
        {
          v9 = v8;
          v8 = v7;
          v7 = v9 % v7;
        }

        while (v7);
        if (v8 < 0)
        {
          v8 = -v8;
        }

        if (v8 < 2)
        {
          NSLog(&cfstr_PcCmtimehalveW.isa, a1->value, timescale);
          time = *a1;
          CMTimeMultiplyByFloat64(&v12, &time, 0.5);
          *a1 = v12;
          a1->flags |= 2u;
          goto LABEL_14;
        }

        a1->value = value / v8;
        v6 = 2 * (timescale / v8);
      }

      else
      {
        v6 = 2 * timescale;
      }

      a1->timescale = v6;
    }

    else
    {
      a1->value = value >> 1;
    }
  }

LABEL_14:
  result = *&a1->value;
  *a2 = *&a1->value;
  *(a2 + 16) = a1->epoch;
  return result;
}

double PC_CMTimeRangeEnd@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((~*(a1 + 12) & 9) != 0 || (~*(a1 + 36) & 5) != 0)
  {
    v9 = v2;
    v10 = v3;
    v8 = *a1;
    v7 = *(a1 + 24);
    *&v5 = PC_CMTimeSaferAdd(&v8, &v7, a2);
  }

  else
  {
    v4 = MEMORY[0x277CC08B0];
    v5 = *MEMORY[0x277CC08B0];
    *a2 = *MEMORY[0x277CC08B0];
    *(a2 + 16) = *(v4 + 16);
  }

  return *&v5;
}

uint64_t GetCMTimeHash(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return ((*a1 << 10) / v1);
  }

  else
  {
    return 0;
  }
}

uint64_t PC_CMTimeRangeToString(CMTimeRange *a1)
{
  v27 = 0uLL;
  v28 = 0;
  v2 = *&a1->start.epoch;
  *time1 = *&a1->start.value;
  *&time1[16] = v2;
  v26 = *&a1->duration.timescale;
  PC_CMTimeRangeEnd(time1, &v27);
  flags = a1->start.flags;
  if ((flags & 0x1D) != 1)
  {
    goto LABEL_15;
  }

  if ((BYTE12(v27) & 0x1D) != 1)
  {
    goto LABEL_15;
  }

  if ((a1->duration.flags & 1) == 0)
  {
    goto LABEL_15;
  }

  *time1 = *&a1->duration.value;
  *&time1[16] = a1->duration.epoch;
  v4 = MEMORY[0x277CC08F0];
  time2 = **&MEMORY[0x277CC08F0];
  v5 = CMTimeCompare(time1, &time2);
  flags = a1->start.flags;
  if (v5 < 0)
  {
    goto LABEL_15;
  }

  if ((~flags & 5) == 0)
  {
    *time1 = *&a1->duration.value;
    *&time1[16] = a1->duration.epoch;
    time2 = *v4;
    v6 = CMTimeCompare(time1, &time2);
    flags = a1->start.flags;
    if (v6)
    {
      goto LABEL_15;
    }
  }

  if ((~flags & 9) == 0)
  {
    *time1 = *&a1->duration.value;
    *&time1[16] = a1->duration.epoch;
    time2 = *v4;
    if (CMTimeCompare(time1, &time2))
    {
      flags = a1->start.flags;
      if ((~a1->duration.flags & 5) != 0)
      {
LABEL_15:
        v7 = (BYTE12(v27) & 0x1F) != 3 || (flags & 0x1F) == 3;
        if (v7 || (a1->duration.flags & 0x1F) == 3)
        {
          v8 = MEMORY[0x277CCACA8];
          if (flags & 1) != 0 && (a1->duration.flags)
          {
            *time1 = *&a1->duration.value;
            *&time1[16] = a1->duration.epoch;
            v16 = MEMORY[0x277CC08F0];
            time2 = **&MEMORY[0x277CC08F0];
            v9 = @"INVALID:";
            if ((CMTimeCompare(time1, &time2) & 0x80000000) == 0)
            {
              v17 = a1->start.flags;
              if ((~v17 & 5) == 0)
              {
                *time1 = *&a1->duration.value;
                *&time1[16] = a1->duration.epoch;
                time2 = *v16;
                if (CMTimeCompare(time1, &time2))
                {
                  goto LABEL_23;
                }

                v17 = a1->start.flags;
              }

              if ((~v17 & 9) != 0 || (*time1 = *&a1->duration.value, *&time1[16] = a1->duration.epoch, time2 = *v16, !CMTimeCompare(time1, &time2)) || (~a1->duration.flags & 5) == 0)
              {
                if (a1->start.epoch == a1->duration.epoch)
                {
                  v9 = &stru_2872E16E0;
                }
              }
            }
          }

          else
          {
            v9 = @"INVALID:";
          }

LABEL_23:
          *time1 = *&a1->start.value;
          *&time1[16] = a1->start.epoch;
          v10 = PC_CMTimeToString(time1);
          *time1 = v27;
          *&time1[16] = v28;
          return [v8 stringWithFormat:@"[%@%@ - %@]", v9, v10, PC_CMTimeToString(time1), v23];
        }

        v12 = MEMORY[0x277CCACA8];
        if (flags & a1->duration.flags)
        {
          *time1 = *&a1->duration.value;
          *&time1[16] = a1->duration.epoch;
          v13 = MEMORY[0x277CC08F0];
          time2 = **&MEMORY[0x277CC08F0];
          v14 = @"INVALID:";
          if ((CMTimeCompare(time1, &time2) & 0x80000000) == 0)
          {
            v15 = a1->start.flags;
            if ((~v15 & 5) != 0)
            {
              goto LABEL_29;
            }

            *time1 = *&a1->duration.value;
            *&time1[16] = a1->duration.epoch;
            time2 = *v13;
            if (!CMTimeCompare(time1, &time2))
            {
              v15 = a1->start.flags;
LABEL_29:
              if ((~v15 & 9) != 0 || (*time1 = *&a1->duration.value, *&time1[16] = a1->duration.epoch, time2 = *v13, !CMTimeCompare(time1, &time2)) || (~a1->duration.flags & 5) == 0)
              {
                if (a1->start.epoch == a1->duration.epoch)
                {
                  v14 = &stru_2872E16E0;
                }
              }
            }
          }
        }

        else
        {
          v14 = @"INVALID:";
        }

        *time1 = *&a1->start.value;
        *&time1[16] = a1->start.epoch;
        v18 = PC_CMTimeToString(time1);
        *time1 = v27;
        *&time1[16] = v28;
        v19 = PC_CMTimeToString(time1);
        *time1 = *&a1->duration.value;
        *&time1[16] = a1->duration.epoch;
        return [v12 stringWithFormat:@"[%@%@ - %@ (end rounded; start&dur weren't) dur=%@]", v14, v18, v19, PC_CMTimeToString(time1)];
      }
    }

    else
    {
      flags = a1->start.flags;
    }
  }

  if (a1->duration.epoch | a1->start.epoch || (flags & 0x1F) == 3 || (BYTE12(v27) & 0x1F) == 3)
  {
    goto LABEL_15;
  }

  v20 = MEMORY[0x277CCACA8];
  *time1 = *&a1->start.value;
  *&time1[16] = a1->start.epoch;
  Seconds = CMTimeGetSeconds(time1);
  *time1 = v27;
  *&time1[16] = v28;
  return [v20 stringWithFormat:@"[%lf - %lf]", *&Seconds, CMTimeGetSeconds(time1), v22, v23];
}

__CFString *PC_CMTimeToString(CMTime *a1)
{
  flags = a1->flags;
  if ((flags & 0x1D) == 1 || (~flags & 5) == 0 || (flags & 9) == 9)
  {
    v28 = v1;
    v29 = v2;
    if (a1->epoch)
    {
      v7 = MEMORY[0x277CCACA8];
      time = *a1;
      Seconds = CMTimeGetSeconds(&time);
      v9 = a1->flags;
      v10 = "+round";
      if ((v9 & 2) == 0)
      {
        v10 = "";
      }

      if ((a1->flags & 0x1D) == 1)
      {
        v11 = v10;
      }

      else
      {
        v11 = "";
      }

      if ((~v9 & 0x11) != 0)
      {
        v12 = "";
      }

      else
      {
        v12 = "+indef";
      }

      return [v7 stringWithFormat:@"%lf+epoch=%lld%s%s", *&Seconds, a1->epoch, v11, v12];
    }

    else
    {
      v14 = flags & 0x1F;
      v15 = flags & 0x11;
      v16 = MEMORY[0x277CCACA8];
      if (v14 == 3 || v15 == 17)
      {
        time = *a1;
        v18 = CMTimeGetSeconds(&time);
        v19 = a1->flags;
        v20 = "+round";
        if ((v19 & 2) == 0)
        {
          v20 = "";
        }

        if ((a1->flags & 0x1D) == 1)
        {
          v21 = v20;
        }

        else
        {
          v21 = "";
        }

        if ((~v19 & 0x11) != 0)
        {
          v22 = "";
        }

        else
        {
          v22 = "+indef";
        }

        return [v16 stringWithFormat:@"%lf%s%s", *&v18, v21, v22, v26];
      }

      else
      {
        time = *a1;
        return [MEMORY[0x277CCACA8] stringWithFormat:@"%lf", CMTimeGetSeconds(&time), v24, v25, v26];
      }
    }
  }

  else
  {
    v23 = @"indef";
    if ((flags & 0x10) == 0)
    {
      v23 = @"nan";
    }

    if (flags)
    {
      return v23;
    }

    else
    {
      return @"inval";
    }
  }
}

void PCXMLReadStream::PCXMLReadStream(PCXMLReadStream *this, const PCURL *a2)
{
  PCSerializerReadStream::PCSerializerReadStream(this);
  *v4 = &unk_287209190;
  PCURL::PCURL((v4 + 19), a2);
  *(this + 24) = 0;
  *(this + 160) = 0;
  *(this + 46) = 0;
  *(this + 25) = 0;
  *(this + 52) = 0;
  if (*a2)
  {
    v5 = CFURLCopyPath(*a2);
    PCURL::PCURL(&v8, v5);
    v6 = PCString::createCStr(&v8);
    CFRelease(v5);
    *(this + 24) = xmlReaderForFile(v6, 0, 0x80000);
    free(v6);
    PCString::~PCString(&v8);
  }

  v7 = malloc_type_malloc(0xC80uLL, 0x10F10407CD822B3uLL);
  *(this + 22) = v7;
  PCXMLReadStream::fixLocale(v7);
}

void sub_25FBC0474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCURL::~PCURL(v11);
  PCSerializerReadStream::~PCSerializerReadStream(v10);
  _Unwind_Resume(a1);
}

void PCSerializerReadStream::PCSerializerReadStream(PCSerializerReadStream *this)
{
  *this = &unk_287208FD0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  CMTimeMake((this + 112), 1, 1);
  *(this + 17) = 0x3FF0000000000000;
  *(this + 144) = 0;
}

void sub_25FBC0538(_Unwind_Exception *a1)
{
  std::deque<PCSerializerReadStream::HandlerInfo>::~deque[abi:ne200100]((v1 + 56));
  std::deque<unsigned long>::~deque[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

char *PCXMLReadStream::fixLocale(PCXMLReadStream *this)
{
  result = setlocale(4, 0);
  v2 = *result;
  if (v2 == 67)
  {
    if (!result[1])
    {
      return result;
    }
  }

  else if (67 == v2)
  {
    return result;
  }

  return setlocale(4, "C");
}

void PCXMLReadStream::PCXMLReadStream(PCXMLReadStream *this, const __CFData *a2)
{
  PCSerializerReadStream::PCSerializerReadStream(this);
  *v4 = &unk_287209190;
  PCURL::PCURL((v4 + 19), 0);
  *(this + 160) = 0;
  *(this + 46) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 52) = 0;
  BytePtr = CFDataGetBytePtr(a2);
  Length = CFDataGetLength(a2);
  v7 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  memcpy(v7, BytePtr, Length);
  *(v7 + Length) = 0;
  *(this + 24) = xmlReaderForMemory(v7, Length, 0, 0, 0x80000);
  *(this + 25) = v7;
  v8 = malloc_type_malloc(0xC80uLL, 0x10F10407CD822B3uLL);
  *(this + 22) = v8;
  PCXMLReadStream::fixLocale(v8);
}

void sub_25FBC06B8(_Unwind_Exception *a1)
{
  PCURL::~PCURL(v2);
  PCSerializerReadStream::~PCSerializerReadStream(v1);
  _Unwind_Resume(a1);
}

void PCXMLReadStream::~PCXMLReadStream(PCXMLReadStream *this)
{
  *this = &unk_287209190;
  for (i = (this + 8); ; std::deque<unsigned long>::__maybe_remove_back_spare[abi:ne200100](i, 1))
  {
    v3 = *(this + 6);
    if (!v3)
    {
      break;
    }

    (*(*this + 48))(this, *(*(*(this + 2) + (((v3 + *(this + 5) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v3 + *(this + 5) - 1) & 0x1FF)));
    --*(this + 6);
  }

  v4 = *(this + 25);
  if (v4)
  {
    free(v4);
  }

  xmlFreeTextReader(*(this + 24));
  free(*(this + 22));
  PCURL::~PCURL((this + 152));

  PCSerializerReadStream::~PCSerializerReadStream(this);
}

{
  PCXMLReadStream::~PCXMLReadStream(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t PCXMLReadStream::parse(PCXMLReadStream *this)
{
  v2 = *(this + 24);
  if (!v2)
  {
    PCSerializerReadStream::popAllHandlers(this);
    return 0;
  }

  v3 = xmlTextReaderRead(v2);
  if (v3 < 1)
  {
LABEL_5:
    v5 = v3;
    PCSerializerReadStream::popAllHandlers(this);
    if (v5 < 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    while (1)
    {
      PCXMLReadStream::processNode(this);
      v4 = *(this + 52);
      if (v4)
      {
        break;
      }

      v3 = xmlTextReaderRead(*(this + 24));
      if (v3 <= 0)
      {
        goto LABEL_5;
      }
    }

    if (v4 == 1)
    {
      PCSerializerReadStream::popAllHandlers(this);
LABEL_10:
      PCURL::getFilename(this + 19, &v8);
      v6 = PCString::createCStr(&v8);
      PCString::~PCString(&v8);
      fprintf(*MEMORY[0x277D85DF8], "%s : parsing error\n", v6);
      free(v6);
      return 0;
    }

    PCSerializerReadStream::popAllHandlers(this);
  }

  return 1;
}

void PCXMLReadStream::processNode(xmlTextReaderPtr *this)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = xmlTextReaderConstName(this[24]);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = "--";
  }

  IsEmptyElement = xmlTextReaderIsEmptyElement(this[24]);
  v5 = xmlTextReaderNodeType(this[24]);
  v6 = v5;
  if (v5 > 12)
  {
    if ((v5 - 13) >= 2)
    {
      if (v5 != 15)
      {
        return;
      }

      v13 = PCSerializerReadStream::currentElement(this);
      if (v13)
      {
        v14 = v13;
        if ((*(*v13 + 184))(v13))
        {
          if ((*(v14 + 40) & 1) == 0 && (*(v14 + 12) & 1) == 0)
          {
            PCSerializerReadStream::processElement(this, v14);
          }

          if (v14 == PCSerializerReadStream::currentHandlerElement(this))
          {
            PCSerializerReadStream::popHandler(this);
          }

          PCSerializerReadStream::popElement(this);
        }
      }

      goto LABEL_35;
    }

LABEL_21:
    v10 = PCSerializerReadStream::currentElement(this);
    if (!v10)
    {
      return;
    }

    v11 = v10;
    if (!(*(*v10 + 184))(v10) || v6 == 14 && !(*(*v11[3] + 64))(v11[3]))
    {
      return;
    }

    String = xmlTextReaderReadString(this[24]);
    ((*v11)[22])(v11, String, (this[20] & 1) == 0);
LABEL_35:
    *(this + 160) = 0;
    return;
  }

  switch(v5)
  {
    case 1:
      v15 = PCSerializerReadStream::currentElement(this);
      if (v15)
      {
        v16 = v15;
        if ((*(*v15 + 184))(v15))
        {
          if ((*(v16 + 12) & 1) == 0)
          {
            PCSerializerReadStream::processElement(this, v16);
          }
        }
      }

      v23 = 0;
      v24.var0 = 0;
      v22 = 0;
      if (PCSerializerReadStream::getElementInfo(this, v3, &v23, &v24, &v22))
      {
        Element = PCXMLReadStream::createElement(this, *(v23 + 8), v24.var0, v22);
        PCSerializerReadStream::pushElement(this, Element);
        if (xmlTextReaderHasAttributes(this[24]) && xmlTextReaderMoveToNextAttribute(this[24]))
        {
          do
          {
            v18 = xmlTextReaderConstName(this[24]);
            v19 = xmlTextReaderConstValue(this[24]);
            PCXMLStreamElement::addAttribute(Element, v18, v19);
          }

          while (xmlTextReaderMoveToNextAttribute(this[24]));
        }

        if (IsEmptyElement)
        {
          if ((*(Element + 40) & 1) == 0 && (*(Element + 12) & 1) == 0)
          {
            PCSerializerReadStream::processElement(this, Element);
          }

          if (Element == PCSerializerReadStream::currentHandlerElement(this))
          {
            PCSerializerReadStream::popHandler(this);
          }

          PCSerializerReadStream::popElement(this);
        }
      }

      else
      {
        xmlTextReaderNext(this[24]);
      }

      return;
    case 3:
      goto LABEL_21;
    case 5:
      v7 = PCSerializerReadStream::currentElement(this);
      if (v7)
      {
        v8 = v7;
        if ((*(*v7 + 184))(v7))
        {
          v9 = CFStringCreateWithCStringNoCopy(*MEMORY[0x277CBECE8], v3, 0x8000100u, *MEMORY[0x277CBECE8]);
          PCSharedCount::PCSharedCount(&v24);
          if (CFStringCompare(v9, @"amp", 0))
          {
            if (CFStringCompare(v9, @"lt", 0))
            {
              if (CFStringCompare(v9, @"gt", 0))
              {
                if (CFStringCompare(v9, @"quot", 0))
                {
                  if (CFStringCompare(v9, @"apos", 0))
                  {
                    if (CFStringCompare(v9, @"space", 0))
                    {
                      v27.location = 0;
                      v27.length = 2;
                      if (CFStringCompareWithOptions(v9, @"#x", v27, 0))
                      {
                        v28.location = 0;
                        v28.length = 1;
                        if (CFStringCompareWithOptions(v9, @"#", v28, 0))
                        {
                          goto LABEL_59;
                        }

                        CFStringGetCString(v9, buffer, 512, 0);
                        LODWORD(v23) = 0;
                        if (sscanf(buffer, "#%d", &v23) != 1)
                        {
                          goto LABEL_59;
                        }
                      }

                      else
                      {
                        CFStringGetCString(v9, buffer, 512, 0);
                        LODWORD(v23) = 0;
                        if (sscanf(buffer, "#x%x", &v23) != 1)
                        {
                          goto LABEL_59;
                        }
                      }

                      buffer[0] = v23;
                      buffer[1] = 0;
                      PCString::set(&v24, buffer);
LABEL_59:
                      CStr = PCString::createCStr(&v24);
                      (*(*v8 + 176))(v8, CStr, 0);
                      *(this + 160) = 1;
                      CFRelease(v9);
                      PCString::~PCString(&v24);
                      return;
                    }

                    v20 = " ";
                  }

                  else
                  {
                    v20 = "'";
                  }
                }

                else
                {
                  v20 = "";
                }
              }

              else
              {
                v20 = ">";
              }
            }

            else
            {
              v20 = "<";
            }
          }

          else
          {
            v20 = "&";
          }

          PCString::set(&v24, v20);
          goto LABEL_59;
        }
      }

      break;
  }
}

uint64_t PCXMLReadStream::createElement(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 184);
  if (v5 > 0xF)
  {
    operator new();
  }

  v6 = *(a1 + 176) + 200 * v5;
  PCXMLStreamElement::PCXMLStreamElement(v6, a2, a3, a4);
  ++*(a1 + 184);
  return v6;
}

uint64_t PCXMLReadStream::destroyElement(uint64_t this, PCStreamElement *a2)
{
  v2 = this;
  v3 = *(this + 176);
  if (v3 <= a2 && v3 + 3200 >= a2)
  {
    this = (**a2)(a2);
  }

  else if (a2)
  {
    this = (*(*a2 + 8))(a2);
  }

  --*(v2 + 184);
  return this;
}

__n128 IntermediateLargeInteger::gcd@<Q0>(int8x16_t *a1@<X0>, int8x16_t *a2@<X1>, int8x16_t *a3@<X8>)
{
  bignum_s256_init_from_s64(0, v33.i64);
  v6 = a1->i64[1];
  if (a1->i64[0] < 0)
  {
    if (v6 == -1)
    {
      v7 = a1[1].i64[0];
      if (v7 == -1)
      {
        goto LABEL_47;
      }
    }

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  if (v6)
  {
    goto LABEL_7;
  }

  v7 = a1[1].i64[0];
  if (v7)
  {
    goto LABEL_7;
  }

LABEL_47:
  v8 = a1[1].i64[1] == v7;
LABEL_8:
  v9 = a2->i64[0];
  v10 = a2->i64[1];
  if (a2->i64[0] < 0)
  {
    if (v10 == -1)
    {
      v11 = a2[1].i64[0];
      if (v11 == -1)
      {
        goto LABEL_48;
      }
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  if (v10)
  {
    goto LABEL_14;
  }

  v11 = a2[1].i64[0];
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_48:
  v12 = a2[1].i64[1] == v11;
  while (1)
  {
LABEL_15:
    v13 = v12;
    if (!v12)
    {
      goto LABEL_18;
    }

    if (v8)
    {
      break;
    }

    if (!v9)
    {
      goto LABEL_46;
    }

LABEL_18:
    v14 = a2[1];
    v33 = *a2;
    v34 = v14;
    v15 = a1->i64[1];
    if (a1->i64[0] < 0)
    {
      if (v15 != -1 || (v16 = a1[1].i64[0], v16 != -1))
      {
LABEL_33:
        bignum_s256_init_from_s64(0, v35[0].i64);
        bignum_s256_init_from_s64(0, v32[0].i64);
        bignum_s256_divide(a1, a2, v35, v32, v19, v20, v21, v22, v23);
        goto LABEL_34;
      }
    }

    else
    {
      if (v15)
      {
        goto LABEL_33;
      }

      v16 = a1[1].i64[0];
      if (v16)
      {
        goto LABEL_33;
      }
    }

    if (a1[1].i64[1] != v16)
    {
      goto LABEL_33;
    }

    v17 = a2[1].i64[0];
    if (v9 < 0)
    {
      if (v10 != -1 || v17 != -1)
      {
        goto LABEL_33;
      }

      v18 = -1;
    }

    else
    {
      v18 = v10 | v17;
      if (v18)
      {
        goto LABEL_33;
      }
    }

    if (a2[1].i64[1] != v18)
    {
      goto LABEL_33;
    }

    bignum_s256_init_from_s64(a1->i64[0] % v9, v32[0].i64);
LABEL_34:
    v24 = v32[1];
    *a2 = v32[0];
    a2[1] = v24;
    v25 = v34;
    *a1 = v33;
    a1[1] = v25;
    v9 = a2->i64[0];
    v10 = a2->i64[1];
    v12 = 0;
    v8 = v13;
    if (a2->i64[0] < 0)
    {
      if (v10 == -1)
      {
        v12 = 0;
        v8 = v13;
        if (a2[1].i64[0] == -1)
        {
          v26 = -1;
LABEL_41:
          v12 = a2[1].i64[1] == v26;
          v8 = v13;
        }
      }
    }

    else if (!v10)
    {
      v12 = 0;
      v8 = v13;
      if (!a2[1].i64[0])
      {
        v26 = 0;
        goto LABEL_41;
      }
    }
  }

  if (v9)
  {
    v27 = a1->i64[0];
    do
    {
      v28 = v27;
      v27 = v9;
      v9 = v28 % v9;
    }

    while (v9);
    bignum_s256_init_from_s64(v27, v35[0].i64);
    v29 = v35[1];
    *a1 = v35[0];
    a1[1] = v29;
  }

LABEL_46:
  result = *a1;
  v31 = a1[1];
  *a3 = *a1;
  a3[1] = v31;
  return result;
}

void IntermediateLargeInteger::makeCMTime(int8x16_t *a1@<X0>, int8x16_t *a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if ((a4 & 1) == 0)
  {
    v9 = a1->i64[0];
    v10 = a1->i64[1];
    if (a1->i64[0] < 0)
    {
      if (v10 != -1)
      {
        goto LABEL_12;
      }

      v11 = a1[1].i64[0];
      if (v11 != -1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v10)
      {
        goto LABEL_12;
      }

      v11 = a1[1].i64[0];
      if (v11)
      {
        goto LABEL_12;
      }
    }

    if (a1[1].i64[1] == v11)
    {
      v12 = a2->i64[0];
      if (!HIDWORD(a2->i64[0]) && !a2->i64[1] && !a2[1].i64[1] && !(v12 >> 31) && !a2[1].i64[0])
      {
        *a5 = 0;
        *(a5 + 8) = 0;
        *(a5 + 16) = 0;
        CMTimeMake(a5, v9, v12);
        if (a3)
        {
          *(a5 + 12) |= 2u;
        }

        return;
      }
    }
  }

LABEL_12:
  if (IntermediateLargeInteger::operator==(a2, 0))
  {
    v13 = MEMORY[0x277CC0898];
    *a5 = *MEMORY[0x277CC0898];
    *(a5 + 16) = *(v13 + 16);
    return;
  }

  bignum_s256_init_from_s64(0, v73);
  v14 = a1[1].u64[1];
  v15 = v14 >> 63;
  if ((v14 & 0x8000000000000000) != 0)
  {
    bignum_s256_init_from_s64(0, v72);
    bignum_s256_sub(v73, a1, v72);
    v16 = *&v72[16];
    *a1 = *v72;
    a1[1] = v16;
  }

  if (a2[1].i64[1] < 0)
  {
    bignum_s256_init_from_s64(0, v72);
    bignum_s256_sub(v73, a2, v72);
    v17 = *&v72[16];
    *a2 = *v72;
    a2[1] = v17;
    LODWORD(v15) = v15 ^ 1;
  }

  v18 = a1[1];
  *lhs = *a1;
  *&lhs[16] = v18;
  v19 = a2[1];
  v69 = *a2;
  v70 = v19;
  IntermediateLargeInteger::gcd(lhs, &v69, v72);
  if ((*v72 & 0x8000000000000000) == 0 && *&v72[8] == 0 && *v72 == 1 && !*&v72[24])
  {
    goto LABEL_52;
  }

  v20 = a1->i64[1];
  if (a1->i64[0] < 0)
  {
    if (v20 != -1)
    {
      goto LABEL_36;
    }

    v21 = a1[1].i64[0];
    if (v21 != -1)
    {
      goto LABEL_36;
    }
  }

  else
  {
    if (v20)
    {
      goto LABEL_36;
    }

    v21 = a1[1].i64[0];
    if (v21)
    {
      goto LABEL_36;
    }
  }

  if (a1[1].i64[1] == v21)
  {
    if ((*v72 & 0x8000000000000000) != 0)
    {
      if (*&v72[8] != __PAIR128__(-1, -1))
      {
        goto LABEL_36;
      }

      v22 = -1;
    }

    else
    {
      v22 = *&v72[8] | *&v72[16];
      if (*&v72[8] != 0)
      {
        goto LABEL_36;
      }
    }

    if (*&v72[24] == v22)
    {
      bignum_s256_init_from_s64(a1->i64[0] / *v72, lhs);
      goto LABEL_37;
    }
  }

LABEL_36:
  bignum_s256_init_from_s64(0, lhs);
  bignum_s256_divide(a1, v72, lhs, 0, v23, v24, v25, v26, v27);
LABEL_37:
  v28 = *&lhs[16];
  *a1 = *lhs;
  a1[1] = v28;
  v29 = a2->i64[1];
  if (a2->i64[0] < 0)
  {
    if (v29 != -1)
    {
      goto LABEL_50;
    }

    v30 = a2[1].i64[0];
    if (v30 != -1)
    {
      goto LABEL_50;
    }
  }

  else
  {
    if (v29)
    {
      goto LABEL_50;
    }

    v30 = a2[1].i64[0];
    if (v30)
    {
      goto LABEL_50;
    }
  }

  if (a2[1].i64[1] != v30)
  {
    goto LABEL_50;
  }

  v31 = *&v72[16];
  if ((*v72 & 0x8000000000000000) != 0)
  {
    if (*&v72[8] == __PAIR128__(-1, -1))
    {
      goto LABEL_48;
    }

LABEL_50:
    bignum_s256_init_from_s64(0, lhs);
    bignum_s256_divide(a2, v72, lhs, 0, v32, v33, v34, v35, v36);
    goto LABEL_51;
  }

  v31 = *&v72[8] | *&v72[16];
  if (*&v72[8] != 0)
  {
    goto LABEL_50;
  }

LABEL_48:
  if (*&v72[24] != v31)
  {
    goto LABEL_50;
  }

  bignum_s256_init_from_s64(a2->i64[0] / *v72, lhs);
LABEL_51:
  v37 = *&lhs[16];
  *a2 = *lhs;
  a2[1] = v37;
LABEL_52:
  v38 = MEMORY[0x277CC08F0];
  *a5 = *MEMORY[0x277CC08F0];
  *(a5 + 16) = *(v38 + 16);
  if (a3)
  {
    *(a5 + 12) |= 2u;
  }

  while (1)
  {
    v39 = a1->i64[1];
    if (a1->i64[0] < 0)
    {
      if (v39 != -1)
      {
        goto LABEL_61;
      }

      v40 = a1[1].i64[0];
      if (v40 != -1)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (v39)
      {
        goto LABEL_61;
      }

      v40 = a1[1].i64[0];
      if (v40)
      {
        goto LABEL_61;
      }
    }

    if (a1[1].i64[1] == v40)
    {
      break;
    }

LABEL_61:
    if (!HIDWORD(a2->i64[0]) && !a2->i64[1] && !a2[1].i64[1] && a2->i64[0] <= 1uLL && !a2[1].i64[0])
    {
      break;
    }

    *(a5 + 12) |= 2u;
    bignum_s256_init_from_s64(0, lhs);
    v41 = 0;
    v42 = a1->i64[0];
    do
    {
      v43 = a1->u64[v41 + 1];
      *(&v44 + 1) = v43;
      *&v44 = v42;
      *&lhs[v41 * 8] = v44 >> 1;
      ++v41;
      v42 = v43;
    }

    while (v41 != 3);
    *&lhs[24] = v43 >> 1;
    v45 = *&lhs[16];
    *a1 = *lhs;
    a1[1] = v45;
    bignum_s256_init_from_s64(0, lhs);
    v46 = 0;
    v47 = a2->i64[0];
    do
    {
      v48 = a2->u64[v46 + 1];
      *(&v49 + 1) = v48;
      *&v49 = v47;
      *&lhs[v46 * 8] = v49 >> 1;
      ++v46;
      v47 = v48;
    }

    while (v46 != 3);
    *&lhs[24] = v48 >> 1;
    v50 = *&lhs[16];
    *a2 = *lhs;
    a2[1] = v50;
  }

  v51 = 0;
  while (2)
  {
    v52 = a2->i64[0];
    if (HIDWORD(a2->i64[0]) || a2->i64[1] || a2[1].i64[1])
    {
      if (v52 < 2)
      {
        goto LABEL_89;
      }
    }

    else if (v52 < 2 || !(a2[1].i64[0] | (v52 >> 31)))
    {
      goto LABEL_89;
    }

    *(a5 + 12) |= 2u;
    if (!IntermediateLargeInteger::operator==(a1, 1))
    {
      bignum_s256_init_from_s64(0, lhs);
      v53 = 0;
      v54 = a1->i64[0];
      do
      {
        v55 = a1->u64[v53 + 1];
        *(&v56 + 1) = v55;
        *&v56 = v54;
        *&lhs[v53 * 8] = v56 >> 1;
        ++v53;
        v54 = v55;
      }

      while (v53 != 3);
      *&lhs[24] = v55 >> 1;
      goto LABEL_82;
    }

    if ((v51 & 1) == 0)
    {
      v51 = 1;
      bignum_s256_init_from_s64(1, lhs);
LABEL_82:
      v57 = *&lhs[16];
      *a1 = *lhs;
      a1[1] = v57;
      bignum_s256_init_from_s64(0, lhs);
      v58 = 0;
      v59 = a2->i64[0];
      do
      {
        v60 = a2->u64[v58 + 1];
        *(&v61 + 1) = v60;
        *&v61 = v59;
        *&lhs[v58 * 8] = v61 >> 1;
        ++v58;
        v59 = v60;
      }

      while (v58 != 3);
      *&lhs[24] = v60 >> 1;
      v62 = *&lhs[16];
      *a2 = *lhs;
      a2[1] = v62;
      continue;
    }

    break;
  }

  bignum_s256_init_from_s64(0, lhs);
  v63 = *&lhs[16];
  *a1 = *lhs;
  a1[1] = v63;
  bignum_s256_init_from_s64(1, lhs);
  v64 = *&lhs[16];
  *a2 = *lhs;
  a2[1] = v64;
LABEL_89:
  v65 = a1->i64[0];
  v66 = a1->i64[1];
  if (a1->i64[0] < 0)
  {
    if (v66 != -1)
    {
      goto LABEL_96;
    }

    v67 = a1[1].i64[0];
    if (v67 != -1)
    {
      goto LABEL_96;
    }

LABEL_95:
    if (a1[1].i64[1] != v67)
    {
      goto LABEL_96;
    }

LABEL_100:
    *a5 = v65;
    *(a5 + 8) = a2->i64[0];
    if (v15)
    {
      goto LABEL_101;
    }

    return;
  }

  if (!v66)
  {
    v67 = a1[1].i64[0];
    if (!v67)
    {
      goto LABEL_95;
    }
  }

LABEL_96:
  if (!IntermediateLargeInteger::operator==(a2, 1))
  {
    v65 = a1->i64[0];
    goto LABEL_100;
  }

  v68 = MEMORY[0x277CC08B0];
  *a5 = *MEMORY[0x277CC08B0];
  *(a5 + 16) = *(v68 + 16);
  if (!v15)
  {
    return;
  }

LABEL_101:
  *lhs = *v38;
  *&lhs[16] = *(v38 + 16);
  v69 = *a5;
  v70.i64[0] = *(a5 + 16);
  CMTimeSubtract(a5, lhs, &v69);
}

BOOL IntermediateLargeInteger::operator==(void *a1, uint64_t a2)
{
  v2 = a1[1];
  if ((*a1 & 0x8000000000000000) == 0)
  {
    if (!v2)
    {
      v3 = a1[2];
      if (!v3)
      {
        return *a1 == a2 && a1[3] == v3;
      }
    }

    return 0;
  }

  if (v2 != -1)
  {
    return 0;
  }

  v3 = a1[2];
  if (v3 != -1)
  {
    return 0;
  }

  return *a1 == a2 && a1[3] == v3;
}

void PCXMLWriteStream::PCXMLWriteStream(PCXMLWriteStream *this, PCStream *a2, int a3, int a4)
{
  v14 = *MEMORY[0x277D85DE8];
  PCSerializerWriteStream::PCSerializerWriteStream(this);
  *v8 = &unk_2872091F0;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 80) = a2;
  PCURL::PCURL((v8 + 1120), 0);
  v9 = setlocale(4, 0);
  v10 = *v9;
  if (v10 == 67)
  {
    if (!v9[1])
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (67 != v10)
  {
LABEL_5:
    setlocale(4, "C");
  }

LABEL_6:
  PCStream::operator<<(*(this + 10), "<?xml version=1.0 encoding=UTF-8?>\n");
  PCStream::operator<<(*(this + 10), "<!DOCTYPE ozxmlscene>\n");
  snprintf(__str, 0x20uLL, "%d.%d", a3, a4);
  v11 = PCStream::operator<<(*(this + 10), "<ozml version=");
  v12 = PCStream::operator<<(v11, __str);
  PCStream::operator<<(v12, ">\n\n");
  *(this + 22) = 0;
}

void sub_25FBC1A18(_Unwind_Exception *a1)
{
  std::deque<PCHash128>::~deque[abi:ne200100](v2);
  *v1 = &unk_287208ED0;
  v4 = v1[1];
  if (v4)
  {
    v1[2] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t PCXMLWriteStream::getURL(PCXMLWriteStream *this)
{
  v2 = *(this + 10);
  {
    return v3 + 8;
  }

  else
  {
    return this + 1120;
  }
}

void PCXMLWriteStream::startElement(PCXMLWriteStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v10 = this + 92;
  v11 = *(this + 2);
  if (*(this + 1) == v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v11 - 8);
  }

  v13 = *(this + 9);
  v14 = this + 92;
  if (v13)
  {
    v15 = *(*(this + 5) + (((v13 + *(this + 8) - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v13 + *(this + 64) - 1);
    v14 = this + 92;
    if ((*(v15 + 13) & 1) == 0)
    {
      *(this + 46) = 2622;
      v14 = this + 94;
      *(v15 + 12) = 256;
      *(v15 + 14) = 1;
    }
  }

  if (!v12)
  {
    PCPrint("scope not defined!\n", a2, a3, a4, a5, a6, a7, a8, v28);
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = 0u;
    *(exception + 1) = 0u;
    *(exception + 2) = 0u;
    *(exception + 3) = 0u;
    PCException_ScopeUndefined::PCException_ScopeUndefined(exception);
    v26 = PCException_ScopeUndefined::~PCException_ScopeUndefined;
LABEL_13:
    __cxa_throw(exception, v25, v26);
  }

  if (!*v12)
  {
LABEL_12:
    PCStream::operator<<(*(this + 10), v10);
    PCPrint("Token not defined in scope %s!\n", v17, v18, v19, v20, v21, v22, v23, **(*(this + 2) - 8));
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = 0u;
    *(exception + 1) = 0u;
    *(exception + 2) = 0u;
    *(exception + 3) = 0u;
    PCException_NoElementDefined::PCException_NoElementDefined(exception);
    v26 = PCException_NoElementDefined::~PCException_NoElementDefined;
    goto LABEL_13;
  }

  while (*(v12 + 8) != a2 || *(v12 + 12))
  {
    v16 = *(v12 + 16);
    v12 += 16;
    if (!v16)
    {
      goto LABEL_12;
    }
  }

  if (*(this + 22))
  {
    v27 = 0;
    do
    {
      *v14++ = 9;
      ++v27;
    }

    while (v27 < *(this + 22));
  }

  *v14 = 60;
  strcat(this + 92, *v12);
  PCStream::operator<<(*(this + 10), v10);
  v29.n128_u64[0] = *v12;
  v29.n128_u32[2] = v8;
  v29.n128_u16[6] = 1;
  v29.n128_u8[14] = 0;
  std::deque<PCXMLWriteStream::PCXMLElementInfo>::push_back(this + 4, &v29);
  ++*(this + 22);
}

uint64_t PCXMLWriteStream::endElement(PCXMLWriteStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 9);
  if (!v8)
  {
    PCPrint("endElement() called without startElement()!\n", a2, a3, a4, a5, a6, a7, a8, v18);
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = 0u;
    *(exception + 1) = 0u;
    *(exception + 2) = 0u;
    *(exception + 3) = 0u;
    PCException_NoElementDefined::PCException_NoElementDefined(exception);
  }

  v10 = *(this + 22) - 1;
  *(this + 22) = v10;
  v11 = *(*(this + 5) + (((v8 + *(this + 8) - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v8 + *(this + 64) - 1);
  if (*(v11 + 12))
  {
    v12 = "/>\n";
  }

  else
  {
    v12 = this + 92;
    v13 = *(v11 + 14) != 1 || v10 == 0;
    v14 = this + 92;
    if (!v13)
    {
      v15 = 0;
      v14 = this + 92;
      do
      {
        *v14++ = 9;
        ++v15;
      }

      while (v15 < *(this + 22));
    }

    *v14 = 12092;
    strcpy(v14 + 2, *v11);
    strcpy(&v12[strlen(this + 92)], ">\n");
  }

  PCStream::operator<<(*(this + 10), v12);
  --*(this + 9);

  return std::deque<PVLoadedEffectItem>::__maybe_remove_back_spare[abi:ne200100](this + 4, 1);
}

char *PCXMLWriteStream::terminateStartTag(PCXMLWriteStream *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 9);
  if (!v8)
  {
    PCPrint("endElement() called without startElement()!\n", a2, a3, a4, a5, a6, a7, a8, v13);
    exception = __cxa_allocate_exception(0x40uLL);
    *exception = 0u;
    *(exception + 1) = 0u;
    *(exception + 2) = 0u;
    *(exception + 3) = 0u;
    PCException_NoElementDefined::PCException_NoElementDefined(exception);
  }

  v9 = *(*(this + 5) + (((v8 + *(this + 8) - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v8 + *(this + 64) - 1);
  if (*(v9 + 13))
  {
    return this + 92;
  }

  v10 = this + 93;
  *(this + 46) = 62;
  *(v9 + 12) = 256;
  return v10;
}