void *__libunwind_Registers_arm64_jumpto(void *result, int a2)
{
  if (!a2)
  {
    v2 = result[2];
    v3 = result[3];
    v4 = result[4];
    v5 = result[5];
    v6 = result[6];
    v7 = result[7];
    v8 = result[8];
    v9 = result[9];
    v10 = result[10];
    v11 = result[11];
    v12 = result[12];
    v13 = result[13];
    v14 = result[14];
    v15 = result[15];
    v16 = result[18];
    v17 = result[19];
    v18 = result[20];
    v19 = result[21];
    v20 = result[22];
    v21 = result[23];
    v22 = result[24];
    v23 = result[25];
    v24 = result[26];
    v25 = result[27];
    v26 = result[28];
    v27 = result[29];
    v28 = result[34];
    v29 = result[35];
    v30 = result[36];
    v31 = result[37];
    v32 = result[38];
    v33 = result[39];
    v34 = result[40];
    v35 = result[41];
    v36 = result[42];
    v37 = result[43];
    v38 = result[44];
    v39 = result[45];
    v40 = result[46];
    v41 = result[47];
    v42 = result[48];
    v43 = result[49];
    v44 = result[50];
    v45 = result[51];
    v46 = result[52];
    v47 = result[53];
    v48 = result[54];
    v49 = result[55];
    v50 = result[56];
    v51 = result[57];
    v52 = result[58];
    v53 = result[59];
    v54 = result[60];
    v55 = result[61];
    v56 = result[62];
    v57 = result[63];
    v58 = result[64];
    v59 = result[65];
    v60 = result[31];
    v61 = result[32];
    v63 = result;
    result = *result;
    v62 = v63[1];
  }

  return result;
}

int unw_getcontext(unw_context_t *a1)
{
  a1->data[0] = a1;
  a1->data[1] = v1;
  a1->data[2] = v2;
  a1->data[3] = v3;
  a1->data[4] = v4;
  a1->data[5] = v5;
  a1->data[6] = v6;
  a1->data[7] = v7;
  a1->data[8] = v8;
  a1->data[9] = v9;
  a1->data[10] = v10;
  a1->data[11] = v11;
  a1->data[12] = v12;
  a1->data[13] = v13;
  a1->data[14] = v14;
  a1->data[15] = v15;
  a1->data[16] = v16;
  a1->data[17] = v17;
  a1->data[18] = v18;
  a1->data[19] = v19;
  a1->data[20] = v20;
  a1->data[21] = v21;
  a1->data[22] = v22;
  a1->data[23] = v23;
  a1->data[24] = v24;
  a1->data[25] = v25;
  a1->data[26] = v26;
  a1->data[27] = v27;
  a1->data[28] = v28;
  a1->data[29] = v29;
  a1->data[30] = v30;
  a1->data[31] = &v64;
  a1->data[32] = v30;
  a1->data[34] = v31;
  a1->data[35] = v32;
  a1->data[36] = v33;
  a1->data[37] = v34;
  a1->data[38] = v35;
  a1->data[39] = v36;
  a1->data[40] = v37;
  a1->data[41] = v38;
  a1->data[42] = v39;
  a1->data[43] = v40;
  a1->data[44] = v41;
  a1->data[45] = v42;
  a1->data[46] = v43;
  a1->data[47] = v44;
  a1->data[48] = v45;
  a1->data[49] = v46;
  a1->data[50] = v47;
  a1->data[51] = v48;
  a1->data[52] = v49;
  a1->data[53] = v50;
  a1->data[54] = v51;
  a1->data[55] = v52;
  a1->data[56] = v53;
  a1->data[57] = v54;
  a1->data[58] = v55;
  a1->data[59] = v56;
  a1->data[60] = v57;
  a1->data[61] = v58;
  a1->data[62] = v59;
  a1->data[63] = v60;
  a1->data[64] = v61;
  a1->data[65] = v62;
  return 0;
}

int unw_init_local(unw_cursor_t *a1, unw_context_t *a2)
{
  a1->data[0] = &unk_283527288;
  a1->data[1] = &libunwind::LocalAddressSpace::sThisAddressSpace;
  memcpy(&a1->data[2], a2, 0x110uLL);
  v4 = *&a2->data[40];
  v6 = *&a2->data[34];
  v5 = *&a2->data[36];
  *&a1->data[40] = *&a2->data[38];
  *&a1->data[42] = v4;
  *&a1->data[36] = v6;
  *&a1->data[38] = v5;
  v7 = *&a2->data[48];
  v9 = *&a2->data[42];
  v8 = *&a2->data[44];
  *&a1->data[48] = *&a2->data[46];
  *&a1->data[50] = v7;
  *&a1->data[44] = v9;
  *&a1->data[46] = v8;
  v10 = *&a2->data[56];
  v12 = *&a2->data[50];
  v11 = *&a2->data[52];
  *&a1->data[56] = *&a2->data[54];
  *&a1->data[58] = v10;
  *&a1->data[52] = v12;
  *&a1->data[54] = v11;
  v13 = *&a2->data[64];
  v15 = *&a2->data[58];
  v14 = *&a2->data[60];
  *&a1->data[64] = *&a2->data[62];
  *&a1->data[66] = v13;
  *&a1->data[60] = v15;
  *&a1->data[62] = v14;
  v16 = a1->data[33];
  a1->data[34] = a1->data[34];
  *&a1->data[68] = 0u;
  *&a1->data[70] = 0u;
  *&a1->data[72] = 0u;
  *&a1->data[74] = 0u;
  *(&a1->data[75] + 2) = 0u;
  libunwind::UnwindCursor<libunwind::LocalAddressSpace,libunwind::Registers_arm64>::setInfoBasedOnIPRegister(a1, 0);
  return 0;
}

uint64_t libunwind::UnwindCursor<libunwind::LocalAddressSpace,libunwind::Registers_arm64>::setInfoBasedOnIPRegister(uint64_t a1, unsigned int a2)
{
  result = (*(*a1 + 24))(a1, 0xFFFFFFFFLL);
  v5 = *(a1 + 264);
  if (!result)
  {
    goto LABEL_147;
  }

  v6 = result - a2 + *(a1 + 617);
  v87 = 0;
  v85 = 0u;
  v86 = 0u;
  if (_dyld_find_unwind_sections())
  {
    if (v75)
    {
      v7 = v75;
    }

    else
    {
      v7 = 0;
    }

    *&v85 = v7;
    if (v76)
    {
      v9 = v76;
    }

    else
    {
      v9 = 0;
    }

    *(&v85 + 1) = v9;
    *&v86 = v77;
    if (v78)
    {
      v10 = v78;
    }

    else
    {
      v10 = 0;
    }

    *(&v86 + 1) = v10;
    v11 = v79;
  }

  else
  {
    pthread_rwlock_rdlock(&libunwind::findDynamicUnwindSectionsLock);
    if (!libunwind::numDynamicUnwindSectionsFinders)
    {
LABEL_9:
      pthread_rwlock_unlock(&libunwind::findDynamicUnwindSectionsLock);
LABEL_138:
      pthread_rwlock_rdlock(&libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_lock);
      for (i = libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_buffer[0]; ; i += 2)
      {
        if (i >= libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_bufferUsed)
        {
          result = pthread_rwlock_unlock(&libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_lock);
          goto LABEL_147;
        }

        if (*(i + 1) <= v6 && *(i + 2) > v6)
        {
          break;
        }
      }

      v72 = *(i + 3);
      result = pthread_rwlock_unlock(&libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_lock);
      if (!v72)
      {
        goto LABEL_147;
      }

      result = libunwind::CFI_Parser<libunwind::LocalAddressSpace>::decodeFDE(v72, &v80, &v75, 0, v73, v74);
      if (result)
      {
        goto LABEL_147;
      }

      result = libunwind::UnwindCursor<libunwind::LocalAddressSpace,libunwind::Registers_arm64>::getInfoFromFdeCie();
      if ((result & 1) == 0)
      {
        goto LABEL_147;
      }

      return result;
    }

    v8 = 0;
    while (!(*(&libunwind::dynamicUnwindSectionsFinders + v8))(v6, &v80))
    {
      if (++v8 == libunwind::numDynamicUnwindSectionsFinders)
      {
        goto LABEL_9;
      }
    }

    pthread_rwlock_unlock(&libunwind::findDynamicUnwindSectionsLock);
    if (v80)
    {
      v7 = v80;
    }

    else
    {
      v7 = 0;
    }

    *&v85 = v7;
    if (v81)
    {
      v9 = v81;
    }

    else
    {
      v9 = 0;
    }

    *(&v85 + 1) = v9;
    *&v86 = v82;
    if (v83)
    {
      v10 = v83;
    }

    else
    {
      v10 = 0;
    }

    *(&v86 + 1) = v10;
    v11 = v84;
  }

  v87 = v11;
  if (!v10 || *v10 != 1)
  {
    goto LABEL_136;
  }

  if (v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = 0;
  }

  v13 = v6 - v12;
  v14 = v10[6];
  v15 = v10 + v10[5];
  if (!v14)
  {
    v18 = 0;
    goto LABEL_43;
  }

  v16 = 0;
  v17 = v14 - 1;
  while (1)
  {
    v18 = (v16 + v14) >> 1;
    if (v13 < *&v15[12 * v18])
    {
      v14 = (v16 + v14) >> 1;
      goto LABEL_36;
    }

    if (v18 == v17)
    {
      break;
    }

    v16 = v18 + 1;
    if (v13 < *&v15[12 * v18 + 12])
    {
      goto LABEL_43;
    }

LABEL_36:
    v18 = v16;
    if (v16 >= v14)
    {
      goto LABEL_43;
    }
  }

  v18 = v17;
LABEL_43:
  v19 = 12 * v18;
  v20 = &v15[v19];
  v21 = 12 * (v18 + 1);
  v22 = *&v15[v21];
  v23 = v10 + *&v15[v19 + 4];
  v24 = v15 + 8;
  v25 = *&v15[v19 + 8];
  v26 = *&v24[v21];
  if (*v23 == 3)
  {
    result = *v20;
    v33 = &v23[*(v23 + 2)];
    v34 = *(v23 + 3);
    v35 = v34 - 1;
    if (*(v23 + 3))
    {
      v36 = 0;
      v37 = v13 - result;
      while (1)
      {
        v38 = (v36 + v34) >> 1;
        if ((*&v33[4 * v38] & 0xFFFFFFu) > v37)
        {
          v34 = (v36 + v34) >> 1;
        }

        else
        {
          if (v38 == v35)
          {
            v38 = v35;
            goto LABEL_68;
          }

          v36 = v38 + 1;
          if ((*&v33[4 * v38 + 4] & 0xFFFFFFu) > v37)
          {
            goto LABEL_68;
          }
        }

        v38 = v36;
        if (v36 >= v34)
        {
          goto LABEL_68;
        }
      }
    }

    v38 = 0;
LABEL_68:
    v39 = *&v33[4 * v38];
    v40 = (v39 & 0xFFFFFF) + result;
    if (v7)
    {
      v41 = v7;
      v40 += v7;
      v42 = v7;
    }

    else
    {
      v41 = 0;
      v42 = 0;
    }

    if (v38 < v35)
    {
      LODWORD(v22) = (*&v33[4 * v38 + 4] & 0xFFFFFF) + result;
      v42 = v41;
    }

    v22 = v42 + v22;
    if (v40 > v6 || v22 < v6)
    {
      goto LABEL_136;
    }

    v44 = v39 >> 24;
    v45 = v10[2];
    if (v45 <= HIBYTE(*&v33[4 * v38]))
    {
      v47 = 4 * (v44 - v45);
      v46 = &v23[*(v23 + 4)];
    }

    else
    {
      v46 = v10[1];
      v47 = &v10[v44];
    }

    v48 = *&v46[v47];
    goto LABEL_93;
  }

  if (*v23 != 2)
  {
    goto LABEL_136;
  }

  result = &v23[*(v23 + 2)];
  v27 = *(v23 + 3);
  if (!*(v23 + 3))
  {
    v22 = 0;
    v29 = 0;
    goto LABEL_85;
  }

  v28 = 0;
  v29 = v27 - 1;
  while (2)
  {
    v30 = (v28 + v27) >> 1;
    if (v13 < *(8 * v30 + result))
    {
      v27 = (v28 + v27) >> 1;
LABEL_48:
      if (v28 >= v27)
      {
        v22 = 0;
        v29 = v28;
        goto LABEL_85;
      }

      continue;
    }

    break;
  }

  if (v30 != v29)
  {
    v28 = v30 + 1;
    v31 = *(8 * (v30 + 1) + result);
    if (v13 < v31)
    {
      if (v7)
      {
        v32 = v7;
      }

      else
      {
        v32 = 0;
      }

      v22 = v32 + v31;
      v29 = v30;
      goto LABEL_85;
    }

    goto LABEL_48;
  }

  if (v7)
  {
    v22 += v7;
  }

LABEL_85:
  v49 = *(result + 8 * v29);
  v48 = *(result + 8 * v29 + 4);
  if (v7)
  {
    v50 = v7;
  }

  else
  {
    v50 = 0;
  }

  v40 = v50 + v49;
  if (v40 > v6 || v22 < v6)
  {
LABEL_136:
    if (!v9)
    {
      goto LABEL_138;
    }

    result = libunwind::UnwindCursor<libunwind::LocalAddressSpace,libunwind::Registers_arm64>::getInfoFromDwarfSection(a1, v6, &v85, 0);
    if ((result & 1) == 0)
    {
      goto LABEL_138;
    }

    return result;
  }

LABEL_93:
  if ((v48 & 0x40000000) != 0)
  {
    if (v7)
    {
      v57 = v7;
    }

    else
    {
      v57 = 0;
    }

    v59 = v26 - v25;
    if ((v26 - v25) < 8)
    {
      goto LABEL_136;
    }

    v60 = 0;
    v61 = v10 + v25;
    v62 = v40 - v57;
    v63 = v59 >> 3;
    while (1)
    {
      result = (v60 + v63) >> 1;
      v64 = *&v61[8 * result];
      if (v64 == v62)
      {
        break;
      }

      if (v64 < v62)
      {
        v60 = result + 1;
      }

      else
      {
        v63 = result;
      }

      if (v60 >= v63)
      {
        goto LABEL_136;
      }
    }

    v65 = *&v61[8 * result + 4];
    v66 = v7 ? v7 : 0;
    v52 = v66 + v65;
    if (!v52)
    {
      goto LABEL_136;
    }
  }

  else
  {
    v52 = 0;
  }

  v53 = (v48 >> 28) & 3;
  if (v53)
  {
    v54 = v53 - 1;
    if (v54 >= v10[4])
    {
      goto LABEL_136;
    }

    v55 = *(&v10[v54] + v10[3]);
    if (v7)
    {
      v56 = v7;
    }

    else
    {
      v56 = 0;
    }

    result = a1 + 568;
    v58 = *(v56 + v55);
  }

  else
  {
    v58 = 0;
  }

  if (v40)
  {
    v67 = v40;
  }

  else
  {
    v67 = 0;
  }

  *(a1 + 544) = v67;
  if (v22)
  {
    v68 = v22;
  }

  else
  {
    v68 = 0;
  }

  *(a1 + 552) = v68;
  if (v52)
  {
    v69 = v52;
  }

  else
  {
    v69 = 0;
  }

  *(a1 + 560) = v69;
  *(a1 + 568) = v58;
  *(a1 + 576) = 0u;
  *(a1 + 592) = v48;
  *(a1 + 600) = 0;
  *(a1 + 596) = 0;
  v70 = (a1 + 608);
  if (v7)
  {
    *v70 = v7;
    if ((*(v7 + 8) & 0xFFFFFF) != 2)
    {
      *(a1 + 584) = 1;
    }
  }

  else
  {
    *v70 = 0;
  }

  if (v9 && (v48 & 0xF000000) == 0x3000000)
  {
    result = libunwind::UnwindCursor<libunwind::LocalAddressSpace,libunwind::Registers_arm64>::getInfoFromDwarfSection(a1, v6, &v85, v48 & 0xFFFFFF);
    if (result)
    {
      return result;
    }

    v48 = *(a1 + 592);
  }

  if (!v48)
  {
LABEL_147:
    *(a1 + 616) = 1;
  }

  return result;
}

uint64_t libunwind::UnwindCursor<libunwind::LocalAddressSpace,libunwind::Registers_arm64>::getInfoFromDwarfSection(uint64_t a1, unint64_t a2, uint64_t *a3, unsigned int a4)
{
  if (!a4)
  {
    goto LABEL_11;
  }

  v7 = a3[1];
  if (v7)
  {
    v8 = a3[1];
  }

  else
  {
    v8 = 0;
  }

  if (a3[2])
  {
    v9 = a3[2];
    if (v7)
    {
LABEL_7:
      v10 = v7;
      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0;
    if (v7)
    {
      goto LABEL_7;
    }
  }

  v10 = 0;
LABEL_10:
  if (libunwind::CFI_Parser<libunwind::LocalAddressSpace>::findFDE(a2, v8, v9, (v10 + a4), v24, v23))
  {
LABEL_32:
    v18 = 1;
    v19 = *a3;
LABEL_39:
    result = libunwind::UnwindCursor<libunwind::LocalAddressSpace,libunwind::Registers_arm64>::getInfoFromFdeCie();
    if (result)
    {
      v21 = v18 ^ 1;
      if (a4)
      {
        v21 = 1;
      }

      if ((v21 & 1) == 0)
      {
        if (*a3)
        {
          v22 = *a3;
        }

        else
        {
          v22 = 0;
        }

        libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::add(v22, v24[3], v24[4], v24[0]);
      }

      return 1;
    }

    return result;
  }

LABEL_11:
  if (*a3)
  {
    v11 = *a3;
  }

  else
  {
    v11 = 0;
  }

  pthread_rwlock_rdlock(&libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_lock);
  for (i = libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_buffer[0]; ; i += 2)
  {
    if (i >= libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_bufferUsed)
    {
      pthread_rwlock_unlock(&libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_lock);
      goto LABEL_25;
    }

    if ((v11 == -1 || *i == v11) && *(i + 1) <= a2 && *(i + 2) > a2)
    {
      break;
    }
  }

  v13 = *(i + 3);
  pthread_rwlock_unlock(&libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_lock);
  if (v13)
  {
    v14 = a3[1] ? a3[1] : 0;
    v20 = a3[2] ? a3[2] : 0;
    if (libunwind::CFI_Parser<libunwind::LocalAddressSpace>::findFDE(a2, v14, v20, v13, v24, v23))
    {
      v18 = 0;
      *a3;
      goto LABEL_39;
    }
  }

LABEL_25:
  if (a3[1])
  {
    v15 = a3[1];
  }

  else
  {
    v15 = 0;
  }

  if (a3[2])
  {
    v16 = a3[2];
  }

  else
  {
    v16 = 0;
  }

  result = libunwind::CFI_Parser<libunwind::LocalAddressSpace>::findFDE(a2, v15, v16, 0, v24, v23);
  if (result)
  {
    goto LABEL_32;
  }

  return result;
}

const char *libunwind::CFI_Parser<libunwind::LocalAddressSpace>::decodeFDE(unsigned int *a1, void *a2, uint64_t a3, int a4, unint64_t a5, unint64_t *a6)
{
  v8 = a1 + 1;
  v7 = *a1;
  if (v7 != -1)
  {
    if (*a1)
    {
      goto LABEL_3;
    }

    return "FDE has zero length";
  }

  v7 = *(a1 + 1);
  v8 = a1 + 3;
  if (!v7)
  {
    return "FDE has zero length";
  }

LABEL_3:
  v9 = *v8;
  if (!v9)
  {
    return "FDE is really a CIE";
  }

  v12 = (v8 - v9);
  if (a4)
  {
    if (*a3 != v12)
    {
      return "CIE start does not match";
    }
  }

  else
  {
    result = libunwind::CFI_Parser<libunwind::LocalAddressSpace>::parseCIE(v12, a3);
    if (result)
    {
      return result;
    }
  }

  v14 = (v8 + v7);
  v29 = (v8 + 1);
  EncodedP = libunwind::LocalAddressSpace::getEncodedP(&v29, v14, *(a3 + 24), 0, a5, a6);
  v18 = libunwind::LocalAddressSpace::getEncodedP(&v29, v14, *(a3 + 24) & 0xF, 0, v16, v17);
  a2[5] = 0;
  if (*(a3 + 49))
  {
    ULEB128 = libunwind::LocalAddressSpace::getULEB128(&v29, v14);
    v22 = v29;
    v23 = (v29 + ULEB128);
    v24 = *(a3 + 25);
    if (v24 == 255 || !libunwind::LocalAddressSpace::getEncodedP(&v29, v14, v24 & 0xF, 0, v20, v21))
    {
      v28 = a2;
    }

    else
    {
      v29 = v22;
      v27 = libunwind::LocalAddressSpace::getEncodedP(&v29, v14, *(a3 + 25), 0, v25, v26);
      v28 = a2;
      a2[5] = v27;
    }
  }

  else
  {
    v28 = a2;
    v23 = v29;
  }

  result = 0;
  *v28 = a1;
  v28[1] = v14 - a1;
  v28[2] = v23;
  v28[3] = EncodedP;
  v28[4] = v18 + EncodedP;
  return result;
}

uint64_t libunwind::UnwindCursor<libunwind::LocalAddressSpace,libunwind::Registers_arm64>::getInfoFromFdeCie()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  bzero(v10, 0x1218uLL);
  result = libunwind::CFI_Parser<libunwind::LocalAddressSpace>::parseFDEInstructions();
  if (result)
  {
    *(v7 + 544) = v6[3];
    *(v7 + 552) = v6[4];
    *(v7 + 560) = v6[5];
    *(v7 + 568) = *(v4 + 32);
    *(v7 + 576) = v11;
    *(v7 + 584) = 0;
    *(v7 + 592) = 50331648;
    *v6;
    *(v7 + 600) = *v6;
    *(v7 + 596) = v6[1];
    v9 = (v7 + 608);
    if (v2)
    {
      *v9 = v2;
      if ((*(v2 + 8) & 0xFFFFFF) != 2)
      {
        *(v7 + 584) = 1;
      }
    }

    else
    {
      *v9 = 0;
    }
  }

  return result;
}

uint64_t libunwind::CFI_Parser<libunwind::LocalAddressSpace>::parseFDEInstructions()
{
  v0 = MEMORY[0x28223BE20]();
  v4 = v3;
  v6 = v5;
  v7 = 0;
  v8 = 0;
  v113[6] = *MEMORY[0x277D85DE8];
  v9 = v5[1] + *v5;
  v113[0] = v5[2];
  v113[1] = v9;
  v10 = v0[1] + *v0;
  v11 = v0[2];
  v13 = v12 - v0[3];
  v113[2] = -1;
  v113[3] = v11;
  v14 = v3 + 24;
  v109 = &v110;
  v113[4] = v10;
  v113[5] = v13;
  v107 = &v111;
  v108 = (v3 + 568);
  while (1)
  {
    v15 = v113[v7];
    v16 = v113[v7 + 1];
    v17 = v113[v7 + 2];
    if (v15 < v16 && v17 != 0)
    {
      break;
    }

LABEL_2:
    v7 += 3;
    if (v7 == 6)
    {
      result = 1;
      goto LABEL_145;
    }
  }

  EncodedP = 0;
  while (2)
  {
    v22 = (v15 + 1);
    v21 = *v15;
    v112 = (v15 + 1);
    switch(v21)
    {
      case 0u:
        goto LABEL_9;
      case 1u:
        EncodedP = libunwind::LocalAddressSpace::getEncodedP(&v112, v16, *(v6 + 24), 0, v1, v2);
        goto LABEL_9;
      case 2u:
        EncodedP += *(v6 + 10) * *(v15 + 1);
        v112 = (v15 + 2);
        goto LABEL_9;
      case 3u:
        EncodedP += *(v6 + 10) * *(v15 + 1);
        v112 = (v15 + 3);
        goto LABEL_9;
      case 4u:
        EncodedP += (*(v6 + 10) * *(v15 + 1));
        v112 = (v15 + 5);
        goto LABEL_9;
      case 5u:
        ULEB128 = libunwind::LocalAddressSpace::getULEB128(&v112, v16);
        v69 = libunwind::LocalAddressSpace::getULEB128(&v112, v16);
        if (ULEB128 >= 0x120)
        {
          v101 = *MEMORY[0x277D85DF8];
          v102 = "libunwind: malformed DW_CFA_offset_extended DWARF unwind, reg too big\n";
          v103 = 70;
          goto LABEL_142;
        }

        v70 = *(v6 + 11);
        v52 = v14 + 16 * ULEB128;
        if ((*(v52 + 4) & 1) == 0)
        {
          *&v109[2 * ULEB128] = *v52;
LABEL_120:
          *(v52 + 4) = 1;
        }

LABEL_121:
        v53 = v69 * v70;
LABEL_122:
        v99 = 2;
        goto LABEL_123;
      case 6u:
        v71 = libunwind::LocalAddressSpace::getULEB128(&v112, v16);
        if (v71 < 0x120)
        {
          v72 = v14 + 16 * v71;
          if (*(v72 + 4) == 1)
          {
            v73 = *&v109[2 * v71];
LABEL_88:
            *v72 = v73;
          }

          goto LABEL_9;
        }

        v101 = *MEMORY[0x277D85DF8];
        v102 = "libunwind: malformed DW_CFA_restore_extended DWARF unwind, reg too big\n";
        goto LABEL_131;
      case 7u:
        v74 = libunwind::LocalAddressSpace::getULEB128(&v112, v16);
        if (v74 >= 0x120)
        {
          v101 = *MEMORY[0x277D85DF8];
          v102 = "libunwind: malformed DW_CFA_undefined DWARF unwind, reg too big\n";
          goto LABEL_141;
        }

        v75 = v14 + 16 * v74;
        if ((*(v75 + 4) & 1) == 0)
        {
          *&v109[2 * v74] = *v75;
          *(v75 + 4) = 1;
        }

        *v75 = 1;
        goto LABEL_9;
      case 8u:
        v81 = libunwind::LocalAddressSpace::getULEB128(&v112, v16);
        if (v81 >= 0x120)
        {
          v101 = *MEMORY[0x277D85DF8];
          v102 = "libunwind: malformed DW_CFA_same_value DWARF unwind, reg too big\n";
          v103 = 65;
          goto LABEL_142;
        }

        v82 = v14 + 16 * v81;
        if ((*(v82 + 4) & 1) == 0)
        {
          *&v109[2 * v81] = *v82;
          *(v82 + 4) = 1;
        }

        *v82 = 0;
        goto LABEL_9;
      case 9u:
        v76 = libunwind::LocalAddressSpace::getULEB128(&v112, v16);
        v77 = libunwind::LocalAddressSpace::getULEB128(&v112, v16);
        if (v76 >= 0x120)
        {
          v101 = *MEMORY[0x277D85DF8];
          v102 = "libunwind: malformed DW_CFA_register DWARF unwind, reg too big\n";
          v103 = 63;
          goto LABEL_142;
        }

        if (v77 < 0x120)
        {
          v78 = v14 + 16 * v76;
          if ((*(v78 + 4) & 1) == 0)
          {
            *&v109[2 * v76] = *v78;
            *(v78 + 4) = 1;
          }

          *v78 = 5;
          *(v78 + 8) = v77;
LABEL_9:
          v15 = v112;
          if (v112 >= v16 || EncodedP >= v17)
          {
            goto LABEL_2;
          }

          continue;
        }

        v101 = *MEMORY[0x277D85DF8];
        v102 = "libunwind: malformed DW_CFA_register DWARF unwind, reg2 too big\n";
LABEL_141:
        v103 = 64;
LABEL_142:
        fwrite(v102, v103, 1uLL, v101);
LABEL_143:
        fflush(*MEMORY[0x277D85DF8]);
LABEL_144:
        result = 0;
LABEL_145:
        v104 = *MEMORY[0x277D85DE8];
        return result;
      case 0xAu:
        MEMORY[0x28223BE20]();
        *(&v106 - 580) = v8;
        memcpy(&v106 - 579, v4, 0x1218uLL);
        v8 = &v106 - 580;
        goto LABEL_9;
      case 0xBu:
        if (!v8)
        {
          goto LABEL_144;
        }

        memcpy(v4, v8 + 1, 0x1218uLL);
        v8 = *v8;
        goto LABEL_9;
      case 0xCu:
        v58 = libunwind::LocalAddressSpace::getULEB128(&v112, v16);
        v59 = libunwind::LocalAddressSpace::getULEB128(&v112, v16);
        if (v58 >= 0x120)
        {
          v101 = *MEMORY[0x277D85DF8];
          v102 = "libunwind: malformed DW_CFA_def_cfa DWARF unwind, reg too big\n";
          v103 = 62;
          goto LABEL_142;
        }

        *v4 = v58;
        v4[1] = v59;
        goto LABEL_9;
      case 0xDu:
        v47 = libunwind::LocalAddressSpace::getULEB128(&v112, v16);
        if (v47 >= 0x120)
        {
          v101 = *MEMORY[0x277D85DF8];
          v102 = "libunwind: malformed DW_CFA_def_cfa_register DWARF unwind, reg too big\n";
LABEL_131:
          v103 = 71;
          goto LABEL_142;
        }

        *v4 = v47;
        goto LABEL_9;
      case 0xEu:
        v4[1] = libunwind::LocalAddressSpace::getULEB128(&v112, v16);
        goto LABEL_9;
      case 0xFu:
        *v4 = 0;
        *(v4 + 1) = v22;
        goto LABEL_111;
      case 0x10u:
        v94 = libunwind::LocalAddressSpace::getULEB128(&v112, v16);
        if (v94 >= 0x120)
        {
          v101 = *MEMORY[0x277D85DF8];
          v102 = "libunwind: malformed DW_CFA_expression DWARF unwind, reg too big\n";
          v103 = 65;
          goto LABEL_142;
        }

        v55 = v14 + 16 * v94;
        if ((*(v55 + 4) & 1) == 0)
        {
          *&v109[2 * v94] = *v55;
          *(v55 + 4) = 1;
        }

        v56 = v112;
        v57 = 6;
LABEL_110:
        *v55 = v57;
        *(v55 + 8) = v56;
LABEL_111:
        v95 = libunwind::LocalAddressSpace::getULEB128(&v112, v16);
        v112 = (v112 + v95);
        goto LABEL_9;
      case 0x11u:
        v83 = libunwind::LocalAddressSpace::getULEB128(&v112, v16);
        if (v83 >= 0x120)
        {
          v101 = *MEMORY[0x277D85DF8];
          v102 = "libunwind: malformed DW_CFA_offset_extended_sf DWARF unwind, reg too big\n";
          v103 = 73;
          goto LABEL_142;
        }

        v84 = 0;
        v85 = v112;
        v86 = -7;
        do
        {
          if (v85 == v16)
          {
            goto LABEL_146;
          }

          v87 = v86;
          v86 += 7;
          v89 = *v85;
          v85 = (v85 + 1);
          v88 = v89;
          v84 |= (v89 & 0x7F) << v86;
        }

        while ((v89 & 0x80) != 0);
        v90 = v87 + 14;
        v91 = v86 < 0x39 && v88 > 0x3F;
        v92 = -1 << v90;
        if (!v91)
        {
          v92 = 0;
        }

        v112 = v85;
        v93 = *(v6 + 11);
        v44 = v14 + 16 * v83;
        if ((*(v44 + 4) & 1) == 0)
        {
          *&v109[2 * v83] = *v44;
          *(v44 + 4) = 1;
        }

        v45 = (v84 | v92) * v93;
        v46 = 2;
LABEL_105:
        *v44 = v46;
        *(v44 + 8) = v45;
        goto LABEL_9;
      case 0x12u:
        v23 = libunwind::LocalAddressSpace::getULEB128(&v112, v16);
        v24 = 0;
        v25 = v112;
        v26 = -7;
        do
        {
          if (v25 == v16)
          {
            goto LABEL_146;
          }

          v27 = v26;
          v26 += 7;
          v29 = *v25;
          v25 = (v25 + 1);
          v28 = v29;
          v24 |= (v29 & 0x7F) << v26;
        }

        while ((v29 & 0x80) != 0);
        v112 = v25;
        if (v23 >= 0x120)
        {
          v101 = *MEMORY[0x277D85DF8];
          v102 = "libunwind: malformed DW_CFA_def_cfa_sf DWARF unwind, reg too big\n";
          v103 = 65;
          goto LABEL_142;
        }

        v30 = v26 < 0x39 && v28 > 0x3F;
        v31 = -1 << (v27 + 14);
        if (!v30)
        {
          LODWORD(v31) = 0;
        }

        v32 = *(v6 + 11) * (v24 | v31);
        *v4 = v23;
        v4[1] = v32;
        goto LABEL_9;
      case 0x13u:
        v60 = 0;
        v61 = -7;
        do
        {
          if (v22 == v16)
          {
            goto LABEL_146;
          }

          v62 = v61;
          v61 += 7;
          v64 = *v22;
          v22 = (v22 + 1);
          v63 = v64;
          v60 |= (v64 & 0x7F) << v61;
        }

        while ((v64 & 0x80) != 0);
        v65 = v62 + 14;
        v66 = v61 < 0x39 && v63 > 0x3F;
        v67 = -1 << v65;
        if (!v66)
        {
          LODWORD(v67) = 0;
        }

        v112 = v22;
        v4[1] = *(v6 + 11) * (v60 | v67);
        goto LABEL_9;
      case 0x14u:
        v96 = libunwind::LocalAddressSpace::getULEB128(&v112, v16);
        if (v96 >= 0x120)
        {
          fprintf(*MEMORY[0x277D85DF8], "libunwind: malformed DW_CFA_val_offset DWARF unwind, reg (%llu) out of range\n\n", v96);
          goto LABEL_143;
        }

        v97 = libunwind::LocalAddressSpace::getULEB128(&v112, v16);
        v98 = *(v6 + 11);
        v52 = v14 + 16 * v96;
        if ((*(v52 + 4) & 1) == 0)
        {
          *&v109[2 * v96] = *v52;
          *(v52 + 4) = 1;
        }

        v53 = v97 * v98;
        v99 = 4;
LABEL_123:
        *v52 = v99;
        *(v52 + 8) = v53;
        goto LABEL_9;
      case 0x15u:
        v33 = libunwind::LocalAddressSpace::getULEB128(&v112, v16);
        if (v33 >= 0x120)
        {
          v101 = *MEMORY[0x277D85DF8];
          v102 = "libunwind: malformed DW_CFA_val_offset_sf DWARF unwind, reg too big\n";
          v103 = 68;
          goto LABEL_142;
        }

        v34 = 0;
        v35 = v112;
        v36 = -7;
        do
        {
          if (v35 == v16)
          {
LABEL_146:
            v105 = MEMORY[0x277D85DF8];
            fprintf(*MEMORY[0x277D85DF8], "libunwind: %s - %s\n", "getSLEB128", "truncated sleb128 expression");
            fflush(*v105);
            abort();
          }

          v37 = v36;
          v36 += 7;
          v39 = *v35;
          v35 = (v35 + 1);
          v38 = v39;
          v34 |= (v39 & 0x7F) << v36;
        }

        while ((v39 & 0x80) != 0);
        v40 = v37 + 14;
        v41 = v36 < 0x39 && v38 > 0x3F;
        v42 = -1 << v40;
        if (!v41)
        {
          v42 = 0;
        }

        v112 = v35;
        v43 = *(v6 + 11);
        v44 = v14 + 16 * v33;
        if ((*(v44 + 4) & 1) == 0)
        {
          *&v109[2 * v33] = *v44;
          *(v44 + 4) = 1;
        }

        v45 = (v34 | v42) * v43;
        v46 = 4;
        goto LABEL_105;
      case 0x16u:
        v54 = libunwind::LocalAddressSpace::getULEB128(&v112, v16);
        if (v54 >= 0x120)
        {
          v101 = *MEMORY[0x277D85DF8];
          v102 = "libunwind: malformed DW_CFA_val_expression DWARF unwind, reg too big\n";
          v103 = 69;
          goto LABEL_142;
        }

        v55 = v14 + 16 * v54;
        if ((*(v55 + 4) & 1) == 0)
        {
          *&v109[2 * v54] = *v55;
          *(v55 + 4) = 1;
        }

        v56 = v112;
        v57 = 7;
        goto LABEL_110;
      case 0x2Du:
        if ((v4[143] & 1) == 0)
        {
          *v107 = *v108;
          *(v4 + 572) = 1;
        }

        *(v4 + 72) ^= 1uLL;
        goto LABEL_9;
      case 0x2Eu:
        v4[4] = libunwind::LocalAddressSpace::getULEB128(&v112, v16);
        goto LABEL_9;
      case 0x2Fu:
        v48 = libunwind::LocalAddressSpace::getULEB128(&v112, v16);
        if (v48 >= 0x120)
        {
          v101 = *MEMORY[0x277D85DF8];
          v102 = "libunwind: malformed DW_CFA_GNU_negative_offset_extended DWARF unwind, reg too big\n";
          v103 = 83;
          goto LABEL_142;
        }

        v49 = v48;
        v50 = libunwind::LocalAddressSpace::getULEB128(&v112, v16);
        v51 = *(v6 + 11);
        v52 = v14 + 16 * v49;
        if ((*(v52 + 4) & 1) == 0)
        {
          *&v109[2 * v49] = *v52;
          *(v52 + 4) = 1;
        }

        v53 = -(v50 * v51);
        goto LABEL_122;
      default:
        v79 = v21 & 0x3F;
        v80 = v21 >> 6;
        if (v80 <= 1)
        {
          if (v80 != 1)
          {
            goto LABEL_144;
          }

          EncodedP += (*(v6 + 10) * v79);
          goto LABEL_9;
        }

        if (v80 == 3)
        {
          v72 = v14 + 16 * v79;
          if (*(v72 + 4) != 1)
          {
            goto LABEL_9;
          }

          v73 = *&v109[2 * v79];
          goto LABEL_88;
        }

        v69 = libunwind::LocalAddressSpace::getULEB128(&v112, v16);
        v70 = *(v6 + 11);
        v52 = v14 + 16 * v79;
        if (*(v52 + 4))
        {
          goto LABEL_121;
        }

        *&v109[2 * v79] = *v52;
        goto LABEL_120;
    }
  }
}

uint64_t libunwind::LocalAddressSpace::getEncodedP(unint64_t **this, unint64_t *a2, unsigned int a3, uint64_t *a4, unint64_t a5, unint64_t *a6)
{
  v6 = *this;
  v7 = a3 & 0xF;
  if (v7 <= 3)
  {
    v8 = __OFSUB__(v7, 1);
    if ((a3 & 0xF) <= 1)
    {
      if ((a3 & 0xF) != 0)
      {
        v9 = a4;
        v10 = a3;
        ULEB128 = libunwind::LocalAddressSpace::getULEB128(this, a2);
        a3 = v10;
        a4 = v9;
        v12 = ULEB128;
        goto LABEL_29;
      }

      goto LABEL_24;
    }

    v8 = __OFSUB__(v7, 2);
    if (v7 == 2)
    {
      v13 = (v6 + 2);
      v12 = *v6;
      goto LABEL_28;
    }

    v8 = __OFSUB__(v7, 3);
    if (v7 == 3)
    {
      v13 = (v6 + 4);
      v12 = *v6;
      goto LABEL_28;
    }

LABEL_49:
    v24 = MEMORY[0x277D85DF8];
    v25 = *MEMORY[0x277D85DF8];
    v26 = "unknown pointer encoding";
    goto LABEL_50;
  }

  if ((a3 & 0xF) > 9)
  {
    v8 = __OFSUB__(v7, 10);
    if (v7 == 10)
    {
      v13 = (v6 + 2);
      v12 = *v6;
      goto LABEL_28;
    }

    v8 = __OFSUB__(v7, 11);
    if (v7 == 11)
    {
      v13 = (v6 + 4);
      v12 = *v6;
      goto LABEL_28;
    }

    v8 = __OFSUB__(v7, 12);
    if (v7 != 12)
    {
      goto LABEL_49;
    }

LABEL_24:
    v13 = (v6 + 8);
    v12 = *v6;
    goto LABEL_28;
  }

  v8 = __OFSUB__(v7, 4);
  if (v7 == 4)
  {
    goto LABEL_24;
  }

  if (v7 != 9)
  {
    goto LABEL_49;
  }

  v14 = 0;
  v15 = -7;
  v13 = *this;
  do
  {
    if (v13 == a2)
    {
      v24 = MEMORY[0x277D85DF8];
      v25 = *MEMORY[0x277D85DF8];
      v26 = "truncated sleb128 expression";
      v27 = "getSLEB128";
      goto LABEL_51;
    }

    v16 = v15;
    v15 += 7;
    v18 = *v13;
    v13 = (v13 + 1);
    v17 = v18;
    v14 |= (v18 & 0x7F) << v15;
  }

  while ((v18 & 0x80) != 0);
  v19 = v16 + 14;
  if (v15 < 0x39)
  {
    v8 = __OFSUB__(v17, 63);
    v20 = v17 > 0x3F;
  }

  else
  {
    v8 = 0;
    v20 = 0;
  }

  v21 = -1 << v19;
  if (!v20)
  {
    v21 = 0;
  }

  v12 = v14 | v21;
LABEL_28:
  *this = v13;
LABEL_29:
  v22 = (a3 >> 4) & 7;
  if (!v8 && v22 != 0)
  {
    if (((a3 >> 4) & 7) < 2)
    {
      v12 += v6;
      goto LABEL_33;
    }

    if (((a3 >> 4) & 7) <= 3)
    {
      v24 = MEMORY[0x277D85DF8];
      v25 = *MEMORY[0x277D85DF8];
      if (v22 == 2)
      {
        v26 = "DW_EH_PE_textrel pointer encoding not supported";
      }

      else
      {
        v26 = "DW_EH_PE_datarel is invalid with a datarelBase of 0";
      }

LABEL_50:
      v27 = "getEncodedP";
LABEL_51:
      fprintf(v25, "libunwind: %s - %s\n", v27, v26);
      fflush(*v24);
      abort();
    }

    if (v22 == 4)
    {
      v24 = MEMORY[0x277D85DF8];
      v25 = *MEMORY[0x277D85DF8];
      v26 = "DW_EH_PE_funcrel pointer encoding not supported";
      goto LABEL_50;
    }

    if (v22 == 5)
    {
      v24 = MEMORY[0x277D85DF8];
      v25 = *MEMORY[0x277D85DF8];
      v26 = "DW_EH_PE_aligned pointer encoding not supported";
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  if (v22)
  {
    goto LABEL_49;
  }

LABEL_33:
  if ((a3 & 0x80) != 0)
  {
    if (a4)
    {
      *a4 = v12;
    }

    return *v12;
  }

  else if (a4)
  {
    *a4 = v6;
  }

  return v12;
}

uint64_t libunwind::LocalAddressSpace::getULEB128(unint64_t **this, unint64_t *a2)
{
  v2 = *this;
  if (*this == a2)
  {
    goto LABEL_25;
  }

  v3 = (v2 + 1);
  v4 = *v2 & 0x7F;
  if ((*v2 & 0x80) != 0)
  {
    if (v3 == a2)
    {
      goto LABEL_25;
    }

    v5 = *(v2 + 1);
    v4 |= (v5 & 0x7F) << 7;
    v3 = (v2 + 2);
    if (v5 < 0)
    {
      if (v3 == a2)
      {
        goto LABEL_25;
      }

      v6 = *(v2 + 2);
      v4 |= (v6 & 0x7F) << 14;
      v3 = (v2 + 3);
      if (v6 < 0)
      {
        if (v3 == a2)
        {
          goto LABEL_25;
        }

        v7 = *(v2 + 3);
        v4 |= (v7 & 0x7F) << 21;
        v3 = (v2 + 4);
        if (v7 < 0)
        {
          if (v3 == a2)
          {
            goto LABEL_25;
          }

          v8 = *(v2 + 4);
          v4 |= (v8 & 0x7F) << 28;
          v3 = (v2 + 5);
          if (v8 < 0)
          {
            if (v3 == a2)
            {
              goto LABEL_25;
            }

            v9 = *(v2 + 5);
            v4 |= (v9 & 0x7F) << 35;
            v3 = (v2 + 6);
            if (v9 < 0)
            {
              if (v3 == a2)
              {
                goto LABEL_25;
              }

              v10 = *(v2 + 6);
              v4 |= (v10 & 0x7F) << 42;
              v3 = (v2 + 7);
              if (v10 < 0)
              {
                if (v3 == a2)
                {
                  goto LABEL_25;
                }

                v11 = *(v2 + 7);
                v4 |= (v11 & 0x7F) << 49;
                v3 = v2 + 1;
                if (v11 < 0)
                {
                  if (v3 == a2)
                  {
                    goto LABEL_25;
                  }

                  v12 = *(v2 + 8);
                  v4 |= (v12 & 0x7F) << 56;
                  v3 = (v2 + 9);
                  if (v12 < 0)
                  {
                    if (v3 != a2)
                    {
                      v13 = *v3;
                      if ((v13 & 0x7E) != 0)
                      {
                        goto LABEL_27;
                      }

                      v3 = (v2 + 10);
                      if ((v13 & 0x80) == 0)
                      {
                        v4 |= v13 << 63;
                        goto LABEL_23;
                      }

                      if (v3 != a2)
                      {
LABEL_27:
                        v15 = MEMORY[0x277D85DF8];
                        v16 = *MEMORY[0x277D85DF8];
                        v17 = "malformed uleb128 expression";
LABEL_26:
                        fprintf(v16, "libunwind: %s - %s\n", "getULEB128", v17);
                        fflush(*v15);
                        abort();
                      }
                    }

LABEL_25:
                    v15 = MEMORY[0x277D85DF8];
                    v16 = *MEMORY[0x277D85DF8];
                    v17 = "truncated uleb128 expression";
                    goto LABEL_26;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_23:
  *this = v3;
  return v4;
}

const char *libunwind::CFI_Parser<libunwind::LocalAddressSpace>::parseCIE(unsigned int *a1, uint64_t a2)
{
  v3 = a1;
  *(a2 + 24) = 65280;
  *(a2 + 32) = 0;
  v4 = (a2 + 32);
  *(a2 + 51) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *a2 = a1;
  v5 = a1 + 1;
  v6 = *a1;
  if (v6 != -1)
  {
    v7 = (v5 + v6);
    if (*a1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v9 = *(a1 + 1);
  v5 = a1 + 3;
  v7 = (a1 + v9 + 12);
  if (!v9)
  {
    return 0;
  }

LABEL_3:
  if (*v5)
  {
    return "CIE ID is not zero";
  }

  v10 = *(v5 + 4);
  if ((v10 & 0xFFFFFFFD) != 1)
  {
    return "CIE version is not 1 or 3";
  }

  v11 = v5 + 5;
  v12 = (v5 + 5);
  do
  {
    v13 = *v12;
    v12 = (v12 + 1);
  }

  while (v13);
  v36 = v12;
  ULEB128 = libunwind::LocalAddressSpace::getULEB128(&v36, v7);
  v15 = 0;
  *(a2 + 40) = ULEB128;
  v16 = v36;
  v17 = -7;
  do
  {
    if (v16 == v7)
    {
      v34 = MEMORY[0x277D85DF8];
      fprintf(*MEMORY[0x277D85DF8], "libunwind: %s - %s\n", "getSLEB128", "truncated sleb128 expression");
      fflush(*v34);
      abort();
    }

    v18 = v17;
    v17 += 7;
    v20 = *v16;
    v16 = (v16 + 1);
    v19 = v20;
    v15 |= (v20 & 0x7F) << v17;
  }

  while ((v20 & 0x80) != 0);
  v21 = v18 + 14;
  v22 = v17 < 0x39 && v19 > 0x3F;
  v23 = -1 << v21;
  if (!v22)
  {
    LODWORD(v23) = 0;
  }

  v36 = v16;
  *(a2 + 44) = v15 | v23;
  if (v10 == 1)
  {
    v24 = *v16;
    v36 = (v16 + 1);
  }

  else
  {
    v24 = libunwind::LocalAddressSpace::getULEB128(&v36, v7);
  }

  *(a2 + 50) = v24;
  v35 = 0;
  if (*v11 == 122)
  {
    libunwind::LocalAddressSpace::getULEB128(&v36, v7);
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v27 = *v11;
          if (v27 <= 0x4F)
          {
            break;
          }

          if (*v11 > 0x52u)
          {
            if (v27 == 83)
            {
              *(a2 + 48) = 1;
              ++v11;
            }

            else
            {
              if (v27 != 122)
              {
                goto LABEL_40;
              }

              *(a2 + 49) = 1;
              ++v11;
            }
          }

          else if (v27 == 80)
          {
            v31 = (v36 + 1);
            v30 = *v36;
            *(a2 + 26) = v30;
            v36 = v31;
            *(a2 + 27) = v31 - v3;
            EncodedP = libunwind::LocalAddressSpace::getEncodedP(&v36, v7, v30, &v35, v25, v26);
            if (EncodedP)
            {
              *v4 = EncodedP;
            }

            else
            {
              *v4 = 0;
            }

            ++v11;
          }

          else
          {
            if (v27 != 82)
            {
              goto LABEL_40;
            }

            v28 = (v36 + 1);
            *(a2 + 24) = *v36;
            v36 = v28;
            ++v11;
          }
        }

        if (*v11 > 0x46u)
        {
          break;
        }

        if (v27 == 66)
        {
          *(a2 + 51) = 1;
          ++v11;
        }

        else
        {
          if (!*v11)
          {
            goto LABEL_46;
          }

LABEL_40:
          ++v11;
        }
      }

      if (v27 == 71)
      {
        *(a2 + 52) = 1;
        goto LABEL_40;
      }

      if (v27 != 76)
      {
        goto LABEL_40;
      }

      v29 = (v36 + 1);
      *(a2 + 25) = *v36;
      v36 = v29;
      ++v11;
    }
  }

LABEL_46:
  result = 0;
  v33 = v36;
  *(a2 + 8) = v7 - *a2;
  *(a2 + 16) = v33;
  return result;
}

uint64_t libunwind::CFI_Parser<libunwind::LocalAddressSpace>::findFDE(unint64_t a1, unint64_t *a2, uint64_t a3, unint64_t *a4, unint64_t **a5, unsigned __int8 *a6)
{
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a2;
  }

  if (a3 == -1)
  {
    v7 = -1;
  }

  else
  {
    v7 = a2 + a3;
  }

  for (; v6 < v7; v34 = v6)
  {
    v12 = v6;
    v14 = v6 + 1;
    v13 = *v6;
    if (v13 == -1)
    {
      v13 = *(v6 + 4);
      v14 = v6 + 3;
    }

    if (!v13)
    {
      break;
    }

    v15 = *v14;
    v6 = (v14 + v13);
    if (v15)
    {
      v16 = (v14 - v15);
      if (v14 - v15 >= a2 && v16 < v7 && !libunwind::CFI_Parser<libunwind::LocalAddressSpace>::parseCIE(v16, a6))
      {
        v34 = (v14 + 1);
        EncodedP = libunwind::LocalAddressSpace::getEncodedP(&v34, v6, a6[24], 0, v18, v19);
        v23 = libunwind::LocalAddressSpace::getEncodedP(&v34, v6, a6[24] & 0xF, 0, v21, v22);
        if (EncodedP < a1)
        {
          v24 = v23 + EncodedP;
          if (v23 + EncodedP >= a1)
          {
            a5[5] = 0;
            if (a6[49])
            {
              ULEB128 = libunwind::LocalAddressSpace::getULEB128(&v34, v6);
              v28 = v34;
              v29 = (v34 + ULEB128);
              v30 = a6[25];
              if (v30 != 255)
              {
                if (libunwind::LocalAddressSpace::getEncodedP(&v34, v6, v30 & 0xF, 0, v26, v27))
                {
                  v34 = v28;
                  a5[5] = libunwind::LocalAddressSpace::getEncodedP(&v34, v6, a6[25], 0, v31, v32);
                }
              }
            }

            else
            {
              v29 = v34;
            }

            *a5 = v12;
            a5[1] = (v6 - v12);
            a5[2] = v29;
            a5[3] = EncodedP;
            result = 1;
            a5[4] = v24;
            return result;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::add(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  pthread_rwlock_wrlock(&libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_lock);
  v8 = libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_bufferUsed;
  if (libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_bufferUsed >= libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_bufferEnd)
  {
    v9 = libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_bufferEnd - libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_buffer[0];
    v13 = (libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_bufferEnd - libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_buffer[0]) >> 3;
    v10 = malloc_type_malloc(4 * (libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_bufferEnd - libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_buffer[0]), 0x1000040E0EAB150uLL);
    v11 = libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_buffer[0];
    memcpy(v10, libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_buffer[0], v9);
    if (v11 != &libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_initialBuffer)
    {
      free(v11);
    }

    libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_buffer[0] = v10;
    v8 = &v10[v9];
    libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_bufferEnd = &v10[32 * v13];
  }

  *v8 = a1;
  *(v8 + 1) = a2;
  *(v8 + 2) = a3;
  *(v8 + 3) = a4;
  libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_bufferUsed = v8 + 2;
  if ((libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_registeredForDyldUnloads & 1) == 0)
  {
    _dyld_register_func_for_remove_image(libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::dyldUnloadHook);
    libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_registeredForDyldUnloads = 1;
  }

  return pthread_rwlock_unlock(&libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_lock);
}

uint64_t libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::dyldUnloadHook(uint64_t a1)
{
  pthread_rwlock_wrlock(&libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_lock);
  v2 = libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_buffer[0];
  v3 = libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_bufferUsed;
  if (libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_buffer[0] >= libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_bufferUsed)
  {
    v4 = libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_buffer[0];
  }

  else
  {
    v4 = libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_buffer[0];
    do
    {
      if (*v2 != a1)
      {
        if (v2 != v4)
        {
          v5 = v2[1];
          *v4 = *v2;
          v4[1] = v5;
        }

        v4 += 2;
      }

      v2 += 2;
    }

    while (v2 < v3);
  }

  libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_bufferUsed = v4;

  return pthread_rwlock_unlock(&libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_lock);
}

const char *libunwind::UnwindCursor<libunwind::LocalAddressSpace,libunwind::Registers_arm64>::getRegisterName(uint64_t a1, int a2)
{
  if ((a2 + 2) > 0x61)
  {
    return "unknown register";
  }

  else
  {
    return (&off_278484100)[a2 + 2];
  }
}

uint64_t libunwind::UnwindCursor<libunwind::LocalAddressSpace,libunwind::Registers_arm64>::getFunctionName(void *a1, char *a2, size_t a3, void *a4)
{
  v8 = (*(*a1 + 24))(a1, 0xFFFFFFFFLL);
  v9 = a1[33];
  v10 = v8;
  if (dladdr(v8, &v14))
  {
    v11 = v14.dli_sname == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (!v11)
  {
    strlcpy(a2, v14.dli_sname, a3);
    *a4 = v10 - v14.dli_saddr;
  }

  return v12;
}

uint64_t libunwind::UnwindCursor<libunwind::LocalAddressSpace,libunwind::Registers_arm64>::getInfo(uint64_t result, uint64_t a2)
{
  if (*(result + 616) == 1)
  {
    *(a2 + 64) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v2 = *(result + 544);
    if (v2)
    {
      v3 = *(result + 544);
    }

    *a2 = v2;
    v4 = *(result + 552);
    if (v4)
    {
      v5 = *(result + 552);
    }

    *(a2 + 8) = v4;
    v6 = *(result + 560);
    if (v6)
    {
      v7 = *(result + 560);
    }

    *(a2 + 16) = v6;
    v8 = *(result + 568);
    if (v8)
    {
      v9 = *(result + 568);
    }

    v10 = *(result + 576);
    *(a2 + 24) = v8;
    *(a2 + 32) = v10;
    v11 = *(result + 584);
    if (v11)
    {
      v12 = *(result + 584);
    }

    *(a2 + 40) = v11;
    *(a2 + 48) = *(result + 592);
    v13 = *(result + 600);
    if (v13)
    {
      v14 = *(result + 600);
    }

    *(a2 + 56) = v13;
    v15 = *(result + 608);
    if (v15)
    {
      v16 = *(result + 608);
    }

    *(a2 + 64) = v15;
  }

  return result;
}

uint64_t libunwind::UnwindCursor<libunwind::LocalAddressSpace,libunwind::Registers_arm64>::step()
{
  v0 = MEMORY[0x28223BE20]();
  if (*(v0 + 616))
  {
    return 0;
  }

  v2 = v0;
  v3 = *(v0 + 592);
  v4 = v3 & 0xF000000;
  if ((v3 & 0xF000000) != 0x3000000)
  {
    v12 = *(v0 + 584);
    if (v12)
    {
      v13 = *(v0 + 584);
      v14 = v12 == 1;
    }

    else
    {
      v14 = 0;
    }

    if (v4 != 0x2000000)
    {
      if (v4 != 0x4000000)
      {
        v71 = MEMORY[0x277D85DF8];
        v72 = *MEMORY[0x277D85DF8];
        v73 = "invalid compact unwind encoding";
        v74 = "stepWithCompactEncoding";
        goto LABEL_148;
      }

      v18 = *(v0 + 248);
      if (v3)
      {
        *(v0 + 168) = *(v18 - 8);
        *(v0 + 176) = *(v18 - 16);
        v19 = (v18 - 24);
        if ((v3 & 2) == 0)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v19 = (v18 - 8);
        if ((v3 & 2) == 0)
        {
LABEL_49:
          if ((v3 & 4) != 0)
          {
            *(v0 + 200) = *v19;
            *(v0 + 208) = *(v19 - 1);
            v19 -= 2;
            if ((v3 & 8) == 0)
            {
LABEL_51:
              if ((v3 & 0x10) == 0)
              {
                goto LABEL_52;
              }

              goto LABEL_67;
            }
          }

          else if ((v3 & 8) == 0)
          {
            goto LABEL_51;
          }

          *(v0 + 216) = *v19;
          *(v0 + 224) = *(v19 - 1);
          v19 -= 2;
          if ((v3 & 0x10) == 0)
          {
LABEL_52:
            if ((v3 & 0x100) == 0)
            {
              goto LABEL_53;
            }

            goto LABEL_68;
          }

LABEL_67:
          *(v0 + 232) = *v19;
          *(v0 + 240) = *(v19 - 1);
          v19 -= 2;
          if ((v3 & 0x100) == 0)
          {
LABEL_53:
            if ((v3 & 0x200) == 0)
            {
              goto LABEL_54;
            }

            goto LABEL_69;
          }

LABEL_68:
          *(v0 + 352) = *v19;
          *(v0 + 360) = *(v19 - 1);
          v19 -= 2;
          if ((v3 & 0x200) == 0)
          {
LABEL_54:
            if ((v3 & 0x400) == 0)
            {
              goto LABEL_55;
            }

            goto LABEL_70;
          }

LABEL_69:
          *(v0 + 368) = *v19;
          *(v0 + 376) = *(v19 - 1);
          v19 -= 2;
          if ((v3 & 0x400) == 0)
          {
LABEL_55:
            if ((v3 & 0x800) == 0)
            {
              goto LABEL_57;
            }

            goto LABEL_56;
          }

LABEL_70:
          *(v0 + 384) = *v19;
          *(v0 + 392) = *(v19 - 1);
          v19 -= 2;
          if ((v3 & 0x800) == 0)
          {
LABEL_57:
            *(v0 + 264) = (v18 & 0xFFFFFFFFFFFFFFLL) + 16;
            *(v0 + 248) = *(v18 & 0xFFFFFFFFFFFFFFLL);
            v21 = *((v18 & 0xFFFFFFFFFFFFFFLL) + 8);
            if (!v14 || __unw_is_pointer_auth_enabled())
            {
              goto LABEL_61;
            }

            v23 = *(v2 + 264);
            if (!__unw_is_pointer_auth_enabled())
            {
LABEL_60:
              v24 = *(v2 + 264);
LABEL_61:
              *(v2 + 272) = v21;
              goto LABEL_62;
            }

            v96[0] = -1;
LABEL_146:
            v96[0] = -1;
LABEL_147:
            v71 = MEMORY[0x277D85DF8];
            v72 = *MEMORY[0x277D85DF8];
            v73 = "Inconsistent invalid authentication state";
            v74 = "normalizeNewLinkRegister";
LABEL_148:
            fprintf(v72, "libunwind: %s - %s\n", v74, v73);
            fflush(*v71);
            abort();
          }

LABEL_56:
          *(v0 + 400) = *v19;
          *(v0 + 408) = *(v19 - 1);
          goto LABEL_57;
        }
      }

      *(v0 + 184) = *v19;
      *(v0 + 192) = *(v19 - 1);
      v19 -= 2;
      goto LABEL_49;
    }

    v20 = (*(v0 + 264) + ((v3 >> 8) & 0xFFF0));
    if (v3)
    {
      *(v0 + 168) = *v20;
      *(v0 + 176) = *(v20 - 1);
      v20 -= 2;
      if ((v3 & 2) == 0)
      {
LABEL_26:
        if ((v3 & 4) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_40;
      }
    }

    else if ((v3 & 2) == 0)
    {
      goto LABEL_26;
    }

    *(v0 + 184) = *v20;
    *(v0 + 192) = *(v20 - 1);
    v20 -= 2;
    if ((v3 & 4) == 0)
    {
LABEL_27:
      if ((v3 & 8) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_41;
    }

LABEL_40:
    *(v0 + 200) = *v20;
    *(v0 + 208) = *(v20 - 1);
    v20 -= 2;
    if ((v3 & 8) == 0)
    {
LABEL_28:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_42;
    }

LABEL_41:
    *(v0 + 216) = *v20;
    *(v0 + 224) = *(v20 - 1);
    v20 -= 2;
    if ((v3 & 0x10) == 0)
    {
LABEL_29:
      if ((v3 & 0x100) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_43;
    }

LABEL_42:
    *(v0 + 232) = *v20;
    *(v0 + 240) = *(v20 - 1);
    v20 -= 2;
    if ((v3 & 0x100) == 0)
    {
LABEL_30:
      if ((v3 & 0x200) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_44;
    }

LABEL_43:
    *(v0 + 352) = *v20;
    *(v0 + 360) = *(v20 - 1);
    v20 -= 2;
    if ((v3 & 0x200) == 0)
    {
LABEL_31:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_45;
    }

LABEL_44:
    *(v0 + 368) = *v20;
    *(v0 + 376) = *(v20 - 1);
    v20 -= 2;
    if ((v3 & 0x400) == 0)
    {
LABEL_32:
      if ((v3 & 0x800) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

LABEL_45:
    *(v0 + 384) = *v20;
    *(v0 + 392) = *(v20 - 1);
    v20 -= 2;
    if ((v3 & 0x800) == 0)
    {
LABEL_34:
      v21 = *(v0 + 256);
      *(v0 + 264) = v20;
      if (!v14 || __unw_is_pointer_auth_enabled())
      {
        goto LABEL_61;
      }

      v22 = *(v2 + 264);
      if (!__unw_is_pointer_auth_enabled())
      {
        goto LABEL_60;
      }

      v96[0] = -1;
      goto LABEL_146;
    }

LABEL_33:
    *(v0 + 400) = *v20;
    *(v0 + 408) = *(v20 - 1);
    v20 -= 2;
    goto LABEL_34;
  }

  v5 = v1;
  (*(*v0 + 24))(v0, 0xFFFFFFFFLL);
  v8 = *(v2 + 264);
  if (!*(v2 + 600))
  {
    v9 = 0;
    v10 = *(v2 + 584);
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  v9 = *(v2 + 600);
  v10 = *(v2 + 584);
  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_5:
  v11 = v10 == 1;
LABEL_10:
  if (libunwind::CFI_Parser<libunwind::LocalAddressSpace>::decodeFDE(v9, v103, v100, 0, v6, v7))
  {
    return 4294960750;
  }

  bzero(v96, 0x1218uLL);
  if ((libunwind::CFI_Parser<libunwind::LocalAddressSpace>::parseFDEInstructions() & 1) == 0)
  {
    return 4294960750;
  }

  v15 = v2 + 16;
  if (SLODWORD(v96[0]) > 29)
  {
    v16 = v5;
    if (SLODWORD(v96[0]) > 31)
    {
      if (LODWORD(v96[0]) == 34)
      {
        v25 = *(v2 + 280);
        goto LABEL_86;
      }

      if (LODWORD(v96[0]) != 32)
      {
LABEL_84:
        if (LODWORD(v96[0]) > 0x1C)
        {
LABEL_144:
          v71 = MEMORY[0x277D85DF8];
          v72 = *MEMORY[0x277D85DF8];
          v73 = "unsupported arm64 register";
          v74 = "getRegister";
          goto LABEL_148;
        }

        v25 = *(v15 + 8 * LODWORD(v96[0]));
        goto LABEL_86;
      }

      goto LABEL_80;
    }

    if (LODWORD(v96[0]) == 30)
    {
      v25 = *(v2 + 256);
      goto LABEL_86;
    }

    goto LABEL_74;
  }

  v16 = v5;
  if ((v96[0] & 0x80000000) != 0)
  {
    if (LODWORD(v96[0]) != -2)
    {
      if (LODWORD(v96[0]) != -1)
      {
        goto LABEL_84;
      }

LABEL_80:
      v26 = *(v2 + 264);
      v25 = *(v2 + 272);
      goto LABEL_86;
    }

LABEL_74:
    v25 = *(v2 + 264);
    goto LABEL_86;
  }

  if (!LODWORD(v96[0]))
  {
    v27 = libunwind::DwarfInstructions<libunwind::LocalAddressSpace,libunwind::Registers_arm64>::evaluateExpression(v96[1], (v2 + 16), 0);
    v16 = v5;
    v28 = v27;
    goto LABEL_87;
  }

  if (LODWORD(v96[0]) != 29)
  {
    goto LABEL_84;
  }

  v25 = *(v2 + 248);
LABEL_86:
  v28 = (v25 + SHIDWORD(v96[0]));
LABEL_87:
  if (v16)
  {
    if (v102 == 1)
    {
      for (_X8 = *(v2 + 264) & 0xFFFFFFFFFFFFFFF0; _X8 < v28; _X8 += 16)
      {
        __asm { STG             X8, [X8] }
      }
    }
  }

  memcpy(__dst, (v2 + 16), sizeof(__dst));
  SavedRegister = 0;
  v35 = 0;
  v36 = *(v2 + 496);
  v92 = *(v2 + 480);
  v93 = v36;
  v37 = *(v2 + 528);
  v94 = *(v2 + 512);
  v95 = v37;
  v38 = *(v2 + 432);
  v88 = *(v2 + 416);
  v89 = v38;
  v39 = *(v2 + 464);
  v90 = *(v2 + 448);
  v91 = v39;
  v40 = *(v2 + 368);
  v84 = *(v2 + 352);
  v85 = v40;
  v41 = *(v2 + 400);
  v86 = *(v2 + 384);
  v87 = v41;
  v42 = *(v2 + 304);
  v80 = *(v2 + 288);
  v81 = v42;
  v43 = *(v2 + 336);
  v82 = *(v2 + 320);
  v83 = v43;
  v44 = *(v2 + 264);
  __dst[32] = *(v2 + 272);
  v45 = &v97;
  __dst[29] = *(v2 + 248);
  __dst[31] = v28;
  do
  {
    v46 = *(v45 - 2);
    if (!v46)
    {
      if (v35 != v101)
      {
        goto LABEL_93;
      }

      if (v101 <= 0x1Eu)
      {
        if (v101 == 29)
        {
          SavedRegister = *(v2 + 248);
          goto LABEL_128;
        }

        if (v101 == 30)
        {
          SavedRegister = *(v2 + 256);
          goto LABEL_128;
        }
      }

      else
      {
        switch(v101)
        {
          case 0x1Fu:
            SavedRegister = *(v2 + 264);
            goto LABEL_128;
          case 0x22u:
            SavedRegister = *(v2 + 280);
            goto LABEL_128;
          case 0x20u:
            v48 = *(v2 + 264);
            SavedRegister = *(v2 + 272);
LABEL_128:
            v78 = SavedRegister;
            goto LABEL_93;
        }
      }

      if (v101 > 0x1Cu)
      {
        goto LABEL_144;
      }

      SavedRegister = *(v15 + 8 * v35);
      goto LABEL_128;
    }

    if ((v35 & 0x60) == 0x40)
    {
      if (v46 == 1)
      {
        v49 = 0;
      }

      else
      {
        if (v46 == 6)
        {
          v47 = libunwind::DwarfInstructions<libunwind::LocalAddressSpace,libunwind::Registers_arm64>::evaluateExpression(*v45, (v2 + 16), v28);
        }

        else
        {
          if (v46 != 2)
          {
            v71 = MEMORY[0x277D85DF8];
            v72 = *MEMORY[0x277D85DF8];
            v73 = "unsupported restore location for float register";
            v74 = "getSavedFloatRegister";
            goto LABEL_148;
          }

          v47 = (v28 + *v45);
        }

        v49 = *v47;
      }

      *(v77 + v35 + 1) = v49;
    }

    else if (v35 == v101)
    {
      SavedRegister = libunwind::DwarfInstructions<libunwind::LocalAddressSpace,libunwind::Registers_arm64>::getSavedRegister((v2 + 16), v28, v46, *v45);
      v78 = SavedRegister;
    }

    else if (v35 == 34)
    {
      __dst[33] = libunwind::DwarfInstructions<libunwind::LocalAddressSpace,libunwind::Registers_arm64>::getSavedRegister((v2 + 16), v28, v46, *v45);
    }

    else
    {
      if (v35 > 0x20)
      {
        return 4294960754;
      }

      v50 = libunwind::DwarfInstructions<libunwind::LocalAddressSpace,libunwind::Registers_arm64>::getSavedRegister((v2 + 16), v28, v46, *v45);
      if (v35 > 30)
      {
        if (v35 == 31)
        {
          __dst[31] = v50;
        }

        else
        {
          __dst[32] = v50;
        }
      }

      else if (v35 == 29)
      {
        __dst[29] = v50;
      }

      else if (v35 == 30)
      {
        __dst[30] = v50;
      }

      else
      {
        __dst[v35] = v50;
      }
    }

LABEL_93:
    ++v35;
    v45 += 2;
  }

  while (v35 != 96);
  *(v2 + 617) = v100[48];
  memcpy(v75, (v2 + 16), sizeof(v75));
  v51 = *(v2 + 496);
  v77[11] = *(v2 + 480);
  v77[12] = v51;
  v52 = *(v2 + 528);
  v77[13] = *(v2 + 512);
  v77[14] = v52;
  v53 = *(v2 + 432);
  v77[7] = *(v2 + 416);
  v77[8] = v53;
  v54 = *(v2 + 464);
  v77[9] = *(v2 + 448);
  v77[10] = v54;
  v55 = *(v2 + 368);
  v77[3] = *(v2 + 352);
  v77[4] = v55;
  v56 = *(v2 + 400);
  v77[5] = *(v2 + 384);
  v77[6] = v56;
  v57 = *(v2 + 304);
  v76 = *(v2 + 288);
  v77[0] = v57;
  v58 = *(v2 + 336);
  v77[1] = *(v2 + 320);
  v77[2] = v58;
  v59 = *(v2 + 264);
  v60 = *(v2 + 248);
  v75[32] = *(v2 + 272);
  v75[29] = v60;
  v61 = v99;
  if (v98)
  {
    v61 = libunwind::DwarfInstructions<libunwind::LocalAddressSpace,libunwind::Registers_arm64>::getSavedRegister(v75, v28, v98, v99);
  }

  if ((v61 & 1) != 0 && SavedRegister)
  {
    return 4294960746;
  }

  if (v11 && !__unw_is_pointer_auth_enabled() && __unw_is_pointer_auth_enabled())
  {
    v78 = -1;
    goto LABEL_147;
  }

  __dst[32] = SavedRegister;
  memcpy((v2 + 16), __dst, 0x110uLL);
  v62 = v93;
  *(v2 + 480) = v92;
  *(v2 + 496) = v62;
  v63 = v95;
  *(v2 + 512) = v94;
  *(v2 + 528) = v63;
  v64 = v89;
  *(v2 + 416) = v88;
  *(v2 + 432) = v64;
  v65 = v91;
  *(v2 + 448) = v90;
  *(v2 + 464) = v65;
  v66 = v85;
  *(v2 + 352) = v84;
  *(v2 + 368) = v66;
  v67 = v87;
  *(v2 + 384) = v86;
  *(v2 + 400) = v67;
  v68 = v81;
  *(v2 + 288) = v80;
  *(v2 + 304) = v68;
  v69 = v83;
  *(v2 + 320) = v82;
  *(v2 + 336) = v69;
  v70 = *(v2 + 264);
  *(v2 + 272) = SavedRegister;
  *(v2 + 248) = __dst[29];
LABEL_62:
  (*(*v2 + 104))(v2, 1);
  result = 1;
  if (*(v2 + 616))
  {
    return 0;
  }

  return result;
}

uint64_t __unw_is_pointer_auth_enabled()
{
  v0 = __unw_is_pointer_auth_enabled::mode;
  if (!__unw_is_pointer_auth_enabled::mode)
  {
    v6 = 0;
    v5 = 4;
    if (sysctlbyname("machdep.ptrauth_enabled", &v6, &v5, 0, 0))
    {
      v1 = 0;
    }

    else
    {
      v1 = v6;
    }

    if (v1)
    {
      v2 = 37099;
    }

    else
    {
      v2 = 24269;
    }

    v0 = v2;
    __unw_is_pointer_auth_enabled::mode = v2;
  }

  if (v0 == 24269)
  {
    return 0;
  }

  if (v0 != 37099)
  {
    v4 = MEMORY[0x277D85DF8];
    fprintf(*MEMORY[0x277D85DF8], "libunwind: %s - %s\n", "__unw_is_pointer_auth_enabled", "Invalid authentication state");
    fflush(*v4);
    abort();
  }

  return 1;
}

uint64_t *libunwind::DwarfInstructions<libunwind::LocalAddressSpace,libunwind::Registers_arm64>::evaluateExpression(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v100[99] = *MEMORY[0x277D85DE8];
  v99 = a1;
  ULEB128 = libunwind::LocalAddressSpace::getULEB128(&v99, (a1 + 20));
  v6 = v99;
  v7 = (v99 + ULEB128);
  v100[0] = a3;
  if (v99 < (v99 + ULEB128))
  {
    v8 = v100;
    v9 = a2 + 30;
    v10 = a2 + 29;
    v11 = a2 + 31;
    while (2)
    {
      v13 = (v6 + 1);
      v14 = *v6;
      v99 = (v6 + 1);
      switch(v14)
      {
        case 3:
        case 14:
        case 15:
          v28 = *(v6 + 1);
          v29 = (v6 + 9);
          goto LABEL_83;
        case 6:
          v42 = **v8;
          goto LABEL_106;
        case 8:
          v28 = *(v6 + 1);
          goto LABEL_79;
        case 9:
          v28 = *(v6 + 1);
LABEL_79:
          v29 = (v6 + 2);
          goto LABEL_83;
        case 10:
          v28 = *(v6 + 1);
          goto LABEL_82;
        case 11:
          v28 = *(v6 + 1);
LABEL_82:
          v29 = (v6 + 3);
          goto LABEL_83;
        case 12:
          v28 = *(v6 + 1);
          v29 = (v6 + 5);
          goto LABEL_83;
        case 13:
          v28 = *(v6 + 1);
          v29 = (v6 + 5);
LABEL_83:
          v99 = v29;
          v8[1] = v28;
          ++v8;
          goto LABEL_5;
        case 16:
          v8[1] = libunwind::LocalAddressSpace::getULEB128(&v99, v7);
          ++v8;
          goto LABEL_5;
        case 17:
          v54 = 0;
          v55 = -7;
          do
          {
            if (v13 == v7)
            {
              goto LABEL_143;
            }

            v56 = v55;
            v55 += 7;
            v58 = *v13;
            v13 = (v13 + 1);
            v57 = v58;
            v54 |= (v58 & 0x7F) << v55;
          }

          while ((v58 & 0x80) != 0);
          v59 = v56 + 14;
          v60 = v55 < 0x39 && v57 > 0x3F;
          v61 = -1 << v59;
          if (!v60)
          {
            v61 = 0;
          }

          v12 = v54 | v61;
          v99 = v13;
          goto LABEL_4;
        case 18:
          v12 = *v8;
          goto LABEL_4;
        case 19:
          --v8;
          goto LABEL_5;
        case 20:
          v12 = *(v8 - 1);
          goto LABEL_4;
        case 21:
          v71 = *(v6 + 1);
          v99 = (v6 + 2);
          v15 = &v8[-v71];
          goto LABEL_11;
        case 22:
          *(v8 - 1) = vextq_s8(*(v8 - 1), *(v8 - 1), 8uLL);
          goto LABEL_5;
        case 23:
          v68 = *v8;
          *(v8 - 1) = *(v8 - 1);
          *(v8 - 2) = v68;
          goto LABEL_5;
        case 24:
          *(v8 - 1) = **v8;
          --v8;
          goto LABEL_5;
        case 25:
          if ((*v8 & 0x8000000000000000) == 0)
          {
            goto LABEL_5;
          }

          v42 = -*v8;
          goto LABEL_106;
        case 26:
          v62 = *v8;
          v63 = *--v8;
          v42 = v63 & v62;
          goto LABEL_106;
        case 27:
          v69 = *v8;
          v70 = *--v8;
          v42 = v70 / v69;
          goto LABEL_106;
        case 28:
          v84 = *v8;
          v85 = *--v8;
          v42 = v85 - v84;
          goto LABEL_106;
        case 29:
          v45 = *v8;
          v46 = *--v8;
          v42 = v46 % v45;
          goto LABEL_106;
        case 30:
          v82 = *v8;
          v83 = *--v8;
          v42 = v83 * v82;
          goto LABEL_106;
        case 31:
          v42 = -*v8;
          goto LABEL_106;
        case 32:
          v42 = ~*v8;
          goto LABEL_106;
        case 33:
          v86 = *v8;
          v87 = *--v8;
          v42 = v87 | v86;
          goto LABEL_106;
        case 34:
          v76 = *v8;
          v77 = *--v8;
          v42 = v76 + v77;
          goto LABEL_106;
        case 35:
          v42 = *v8 + libunwind::LocalAddressSpace::getULEB128(&v99, v7);
          goto LABEL_106;
        case 36:
          v72 = *v8;
          v73 = *--v8;
          v42 = v73 << v72;
          goto LABEL_106;
        case 37:
          v74 = *v8;
          v75 = *--v8;
          v42 = v75 >> v74;
          goto LABEL_106;
        case 38:
          v80 = *v8;
          v81 = *--v8;
          v42 = v81 >> v80;
          goto LABEL_106;
        case 39:
          v66 = *v8;
          v67 = *--v8;
          v42 = v67 ^ v66;
          goto LABEL_106;
        case 40:
          v49 = *(v6 + 1);
          v50 = (v6 + 3);
          v99 = v50;
          if (*v8--)
          {
            v99 = (v50 + v49);
          }

          goto LABEL_5;
        case 41:
          v47 = *v8;
          v48 = *--v8;
          v42 = v48 == v47;
          goto LABEL_106;
        case 42:
          v52 = *v8;
          v53 = *--v8;
          v42 = v53 >= v52;
          goto LABEL_106;
        case 43:
          v64 = *v8;
          v65 = *--v8;
          v42 = v65 > v64;
          goto LABEL_106;
        case 44:
          v43 = *v8;
          v44 = *--v8;
          v42 = v44 <= v43;
          goto LABEL_106;
        case 45:
          v40 = *v8;
          v41 = *--v8;
          v42 = v41 < v40;
          goto LABEL_106;
        case 46:
          v88 = *v8;
          v89 = *--v8;
          v42 = v89 != v88;
          goto LABEL_106;
        case 47:
          v99 = (v6 + *(v6 + 1) + 3);
          goto LABEL_5;
        case 48:
        case 49:
        case 50:
        case 51:
        case 52:
        case 53:
        case 54:
        case 55:
        case 56:
        case 57:
        case 58:
        case 59:
        case 60:
        case 61:
        case 62:
        case 63:
        case 64:
        case 65:
        case 66:
        case 67:
        case 68:
        case 69:
        case 70:
        case 71:
        case 72:
        case 73:
        case 74:
        case 75:
        case 76:
        case 77:
        case 78:
        case 79:
          v12 = (v14 - 48);
          goto LABEL_4;
        case 80:
        case 81:
        case 82:
        case 83:
        case 84:
        case 85:
        case 86:
        case 87:
        case 88:
        case 89:
        case 90:
        case 91:
        case 92:
        case 93:
        case 94:
        case 95:
        case 96:
        case 97:
        case 98:
        case 99:
        case 100:
        case 101:
        case 102:
        case 103:
        case 104:
        case 105:
        case 106:
        case 107:
        case 108:
        case 109:
        case 110:
        case 111:
          v15 = (a2 + 31);
          if (v14 != 111)
          {
            v15 = (a2 + 30);
            if (v14 != 110)
            {
              v15 = &a2[v14 - 80];
              if (v14 == 109)
              {
                v15 = (a2 + 29);
              }
            }
          }

LABEL_11:
          v12 = *v15;
          goto LABEL_4;
        case 112:
        case 113:
        case 114:
        case 115:
        case 116:
        case 117:
        case 118:
        case 119:
        case 120:
        case 121:
        case 122:
        case 123:
        case 124:
        case 125:
        case 126:
        case 127:
        case 128:
        case 129:
        case 130:
        case 131:
        case 132:
        case 133:
        case 134:
        case 135:
        case 136:
        case 137:
        case 138:
        case 139:
        case 140:
        case 141:
        case 142:
        case 143:
          v16 = 0;
          v17 = v14 - 112;
          v18 = -7;
          do
          {
            if (v13 == v7)
            {
              goto LABEL_143;
            }

            v19 = v18;
            v18 += 7;
            v21 = *v13;
            v13 = (v13 + 1);
            v20 = v21;
            v16 |= (v21 & 0x7F) << v18;
          }

          while ((v21 & 0x80) != 0);
          v22 = v19 + 14;
          v23 = v18 < 0x39 && v20 > 0x3F;
          v24 = -1 << v22;
          if (!v23)
          {
            v24 = 0;
          }

          v99 = v13;
          if (v14 <= 141)
          {
            switch(v14)
            {
              case 110:
LABEL_31:
                v25 = *v11;
                goto LABEL_36;
              case 111:
                goto LABEL_30;
              case 141:
                v25 = *v10;
                goto LABEL_36;
            }
          }

          else
          {
            if (v14 <= 143)
            {
              if (v14 == 142)
              {
                v25 = *v9;
                goto LABEL_36;
              }

              goto LABEL_31;
            }

            if (v14 == 146)
            {
              v25 = a2[33];
              goto LABEL_36;
            }

            if (v14 == 144)
            {
LABEL_30:
              v25 = a2[32];
              v26 = *v11;
              goto LABEL_36;
            }
          }

          if (v17 > 0x1C)
          {
            goto LABEL_145;
          }

          v25 = a2[v17];
LABEL_36:
          v27 = v16 | v24;
          goto LABEL_37;
        case 144:
          v90 = libunwind::LocalAddressSpace::getULEB128(&v99, v7);
          if (v90 <= 29)
          {
            switch(v90)
            {
              case -2:
                goto LABEL_129;
              case -1:
                goto LABEL_125;
              case 29:
                v8[1] = *v10;
                ++v8;
                goto LABEL_5;
            }
          }

          else
          {
            if (v90 <= 31)
            {
              if (v90 == 30)
              {
                v8[1] = *v9;
                ++v8;
                goto LABEL_5;
              }

LABEL_129:
              v8[1] = *v11;
              ++v8;
              goto LABEL_5;
            }

            if (v90 == 34)
            {
              v8[1] = a2[33];
              ++v8;
              goto LABEL_5;
            }

            if (v90 == 32)
            {
LABEL_125:
              v91 = *v11;
              v8[1] = a2[32];
              ++v8;
              goto LABEL_5;
            }
          }

          if (v90 <= 0x1C)
          {
            v8[1] = a2[v90 & 0x1F];
            ++v8;
            goto LABEL_5;
          }

          goto LABEL_145;
        case 145:
          v95 = MEMORY[0x277D85DF8];
          v96 = *MEMORY[0x277D85DF8];
          v97 = "DW_OP_fbreg not implemented";
          goto LABEL_149;
        case 146:
          v30 = libunwind::LocalAddressSpace::getULEB128(&v99, v7);
          v31 = 0;
          v32 = v99;
          v33 = -7;
          do
          {
            if (v32 == v7)
            {
LABEL_143:
              v95 = MEMORY[0x277D85DF8];
              v96 = *MEMORY[0x277D85DF8];
              v97 = "truncated sleb128 expression";
              v98 = "getSLEB128";
              goto LABEL_144;
            }

            v34 = v33;
            v33 += 7;
            v36 = *v32;
            v32 = (v32 + 1);
            v35 = v36;
            v31 |= (v36 & 0x7F) << v33;
          }

          while ((v36 & 0x80) != 0);
          v37 = v34 + 14;
          v38 = v33 < 0x39 && v35 > 0x3F;
          v39 = -1 << v37;
          if (!v38)
          {
            v39 = 0;
          }

          v99 = v32;
          if (v30 <= 29)
          {
            if (v30 == -2)
            {
              goto LABEL_132;
            }

            if (v30 != -1)
            {
              if (v30 == 29)
              {
                v25 = *v10;
                v27 = v31 | v39;
                goto LABEL_37;
              }

LABEL_137:
              if (v30 <= 0x1C)
              {
                v25 = a2[v30 & 0x1F];
                v27 = v31 | v39;
                goto LABEL_37;
              }

LABEL_145:
              v95 = MEMORY[0x277D85DF8];
              v96 = *MEMORY[0x277D85DF8];
              v97 = "unsupported arm64 register";
              v98 = "getRegister";
LABEL_144:
              fprintf(v96, "libunwind: %s - %s\n", v98, v97);
              fflush(*v95);
              abort();
            }

LABEL_128:
            v25 = a2[32];
            v92 = *v11;
            v27 = v31 | v39;
            goto LABEL_37;
          }

          if (v30 > 31)
          {
            if (v30 == 34)
            {
              v25 = a2[33];
              v27 = v31 | v39;
              goto LABEL_37;
            }

            if (v30 != 32)
            {
              goto LABEL_137;
            }

            goto LABEL_128;
          }

          if (v30 == 30)
          {
            v25 = *v9;
            v27 = v31 | v39;
          }

          else
          {
LABEL_132:
            v25 = *v11;
            v27 = v31 | v39;
          }

LABEL_37:
          v12 = v25 + v27;
LABEL_4:
          v8[1] = v12;
          ++v8;
LABEL_5:
          v6 = v99;
          if (v99 >= v7)
          {
            a3 = *v8;
            break;
          }

          continue;
        case 147:
          v95 = MEMORY[0x277D85DF8];
          v96 = *MEMORY[0x277D85DF8];
          v97 = "DW_OP_piece not implemented";
          goto LABEL_149;
        case 148:
          v78 = *v8;
          v99 = (v6 + 2);
          v79 = *(v6 + 1);
          if (v79 > 3)
          {
            if (v79 == 4)
            {
              v42 = *v78;
              goto LABEL_106;
            }

            if (v79 == 8)
            {
              v42 = *v78;
              goto LABEL_106;
            }
          }

          else
          {
            if (v79 == 1)
            {
              v42 = *v78;
              goto LABEL_106;
            }

            if (v79 == 2)
            {
              v42 = *v78;
LABEL_106:
              *v8 = v42;
              goto LABEL_5;
            }
          }

          v95 = MEMORY[0x277D85DF8];
          v96 = *MEMORY[0x277D85DF8];
          v97 = "DW_OP_deref_size with bad size";
LABEL_149:
          v98 = "evaluateExpression";
          goto LABEL_144;
        default:
          v95 = MEMORY[0x277D85DF8];
          v96 = *MEMORY[0x277D85DF8];
          v97 = "DWARF opcode not implemented";
          goto LABEL_149;
      }

      break;
    }
  }

  v93 = *MEMORY[0x277D85DE8];
  return a3;
}

uint64_t *libunwind::DwarfInstructions<libunwind::LocalAddressSpace,libunwind::Registers_arm64>::getSavedRegister(uint64_t *a1, uint64_t *a2, int a3, unint64_t *a4)
{
  if (a3 <= 4)
  {
    if (a3 != 1)
    {
      if (a3 == 2 || a3 == 3)
      {
        return *(a2 + a4);
      }

      goto LABEL_30;
    }

    return 0;
  }

  if (a3 == 5)
  {
    if (a4 <= 29)
    {
      switch(a4)
      {
        case 0xFFFFFFFE:
          return a1[31];
        case 0xFFFFFFFF:
          goto LABEL_24;
        case 0x1D:
          return a1[29];
      }
    }

    else
    {
      if (a4 <= 31)
      {
        if (a4 == 30)
        {
          return a1[30];
        }

        return a1[31];
      }

      if (a4 == 34)
      {
        return a1[33];
      }

      if (a4 == 32)
      {
LABEL_24:
        v5 = a1[31];
        return a1[32];
      }
    }

    if (a4 > 0x1C)
    {
      v6 = MEMORY[0x277D85DF8];
      v7 = *MEMORY[0x277D85DF8];
      v8 = "unsupported arm64 register";
      v9 = "getRegister";
LABEL_31:
      fprintf(v7, "libunwind: %s - %s\n", v9, v8);
      fflush(*v6);
      abort();
    }

    return a1[a4 & 0x1F];
  }

  if (a3 == 6)
  {
    return *libunwind::DwarfInstructions<libunwind::LocalAddressSpace,libunwind::Registers_arm64>::evaluateExpression(a4, a1, a2);
  }

  if (a3 != 7)
  {
LABEL_30:
    v6 = MEMORY[0x277D85DF8];
    v7 = *MEMORY[0x277D85DF8];
    v8 = "unsupported restore location for register";
    v9 = "getSavedRegister";
    goto LABEL_31;
  }

  return libunwind::DwarfInstructions<libunwind::LocalAddressSpace,libunwind::Registers_arm64>::evaluateExpression(a4, a1, a2);
}

void *libunwind::UnwindCursor<libunwind::LocalAddressSpace,libunwind::Registers_arm64>::setReg(void *result, int a2, uint64_t a3)
{
  if (a2 <= 29)
  {
    switch(a2)
    {
      case -2:
LABEL_12:
        result[33] = a3;
        return result;
      case -1:
        goto LABEL_11;
      case 29:
        result[31] = a3;
        return result;
    }

    goto LABEL_13;
  }

  if (a2 > 31)
  {
    if (a2 == 34)
    {
      result[35] = a3;
      return result;
    }

    if (a2 == 32)
    {
LABEL_11:
      v3 = result[33];
      result[34] = a3;
      return result;
    }

LABEL_13:
    if (a2 > 0x1C)
    {
      v4 = MEMORY[0x277D85DF8];
      fprintf(*MEMORY[0x277D85DF8], "libunwind: %s - %s\n", "setRegister", "unsupported arm64 register");
      fflush(*v4);
      abort();
    }

    result[a2 + 2] = a3;
    return result;
  }

  if (a2 != 30)
  {
    goto LABEL_12;
  }

  result[32] = a3;
  return result;
}

uint64_t libunwind::UnwindCursor<libunwind::LocalAddressSpace,libunwind::Registers_arm64>::getReg(void *a1, int a2)
{
  if (a2 <= 29)
  {
    switch(a2)
    {
      case -2:
        return a1[33];
      case -1:
        goto LABEL_11;
      case 29:
        return a1[31];
    }

    goto LABEL_13;
  }

  if (a2 > 31)
  {
    if (a2 == 34)
    {
      return a1[35];
    }

    if (a2 == 32)
    {
LABEL_11:
      v3 = a1[33];
      return a1[34];
    }

LABEL_13:
    if (a2 > 0x1C)
    {
      v4 = MEMORY[0x277D85DF8];
      fprintf(*MEMORY[0x277D85DF8], "libunwind: %s - %s\n", "getRegister", "unsupported arm64 register");
      fflush(*v4);
      abort();
    }

    return a1[a2 + 2];
  }

  if (a2 != 30)
  {
    return a1[33];
  }

  return a1[32];
}

uint64_t libunwind::UnwindCursor<libunwind::LocalAddressSpace,libunwind::Registers_arm64>::validReg(uint64_t a1, unsigned int a2)
{
  v2 = a2 == 34 || a2 - 64 < 0xFFFFFFE1;
  if (a2 > 0x5F)
  {
    v2 = 0;
  }

  return a2 > 0xFFFFFFFD || v2;
}

int unw_get_proc_info(unw_cursor_t *a1, unw_proc_info_t *a2)
{
  (*(a1->data[0] + 72))(a1);
  if (a2->end_ip)
  {
    return 0;
  }

  else
  {
    return -6549;
  }
}

uint64_t unw_resume_with_frames_walked(unw_cursor_t *a1)
{
  (*(a1->data[0] + 120))(a1);
  unw_resume(a1);
  return 4294960756;
}

int unw_get_proc_name(unw_cursor_t *a1, char *a2, size_t a3, unw_word_t *a4)
{
  if ((*(a1->data[0] + 96))(a1, a2, a3, a4))
  {
    return 0;
  }

  else
  {
    return -6540;
  }
}

uint64_t unw_iterate_dwarf_unwind_cache(void (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  pthread_rwlock_wrlock(&libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_lock);
  for (i = libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_buffer[0]; i < libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_bufferUsed; i += 2)
  {
    v3 = *(i + 2);
    v4 = *(i + 3);
    v6 = *i;
    v5 = *(i + 1);
    a1(v5, v3, v4, v6);
  }

  return pthread_rwlock_unlock(&libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_lock);
}

const char *__unw_add_dynamic_fde(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t *a6)
{
  result = libunwind::CFI_Parser<libunwind::LocalAddressSpace>::decodeFDE(a1, v8, v7, 0, a5, a6);
  if (!result)
  {
    return libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::add(v8[0], v8[3], v8[4], v8[0]);
  }

  return result;
}

uint64_t __unw_remove_dynamic_fde(uint64_t a1)
{
  pthread_rwlock_wrlock(&libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_lock);
  v2 = libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_buffer[0];
  v3 = libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_bufferUsed;
  if (libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_buffer[0] >= libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_bufferUsed)
  {
    v4 = libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_buffer[0];
  }

  else
  {
    v4 = libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_buffer[0];
    do
    {
      if (*v2 != a1)
      {
        if (v2 != v4)
        {
          v5 = v2[1];
          *v4 = *v2;
          v4[1] = v5;
        }

        v4 += 2;
      }

      v2 += 2;
    }

    while (v2 < v3);
  }

  libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_bufferUsed = v4;

  return pthread_rwlock_unlock(&libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_lock);
}

unsigned int *__unw_add_dynamic_eh_frame_section(unsigned int *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t *a6)
{
  if (*result)
  {
    v6 = result;
    v7 = result;
    do
    {
      if (libunwind::CFI_Parser<libunwind::LocalAddressSpace>::decodeFDE(v7, &v9, v11, 1, a5, a6))
      {
        result = libunwind::CFI_Parser<libunwind::LocalAddressSpace>::parseCIE(v7, v11);
        v8 = &v12;
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::add(v6, v10[2], v10[3], v9);
        v8 = v10;
      }

      v7 = (v7 + *v8);
    }

    while (*v7);
  }

  return result;
}

uint64_t __unw_remove_dynamic_eh_frame_section(uint64_t a1)
{
  pthread_rwlock_wrlock(&libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_lock);
  v2 = libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_buffer[0];
  v3 = libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_bufferUsed;
  if (libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_buffer[0] >= libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_bufferUsed)
  {
    v4 = libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_buffer[0];
  }

  else
  {
    v4 = libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_buffer[0];
    do
    {
      if (*v2 != a1)
      {
        if (v2 != v4)
        {
          v5 = v2[1];
          *v4 = *v2;
          v4[1] = v5;
        }

        v4 += 2;
      }

      v2 += 2;
    }

    while (v2 < v3);
  }

  libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_bufferUsed = v4;

  return pthread_rwlock_unlock(&libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_lock);
}

BOOL libunwind::findDynamicUnwindSections(uint64_t a1, uint64_t a2)
{
  pthread_rwlock_rdlock(&libunwind::findDynamicUnwindSectionsLock);
  if (libunwind::numDynamicUnwindSectionsFinders)
  {
    v4 = 0;
    while (1)
    {
      v5 = (*(&libunwind::dynamicUnwindSectionsFinders + v4))(a1, a2);
      v6 = v5 != 0;
      if (v5)
      {
        break;
      }

      if (++v4 == libunwind::numDynamicUnwindSectionsFinders)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

  pthread_rwlock_unlock(&libunwind::findDynamicUnwindSectionsLock);
  return v6;
}

uint64_t __unw_add_find_dynamic_unwind_sections(uint64_t a1)
{
  pthread_rwlock_wrlock(&libunwind::findDynamicUnwindSectionsLock);
  v2 = libunwind::numDynamicUnwindSectionsFinders;
  if (libunwind::numDynamicUnwindSectionsFinders)
  {
    if (libunwind::numDynamicUnwindSectionsFinders == 8)
    {
      v3 = 4294960755;
    }

    else
    {
      v4 = &libunwind::dynamicUnwindSectionsFinders;
      v5 = libunwind::numDynamicUnwindSectionsFinders;
      while (*v4 != a1)
      {
        v4 = (v4 + 8);
        if (!--v5)
        {
          goto LABEL_7;
        }
      }

      v3 = 4294960749;
    }
  }

  else
  {
LABEL_7:
    v3 = 0;
    ++libunwind::numDynamicUnwindSectionsFinders;
    *(&libunwind::dynamicUnwindSectionsFinders + v2) = a1;
  }

  pthread_rwlock_unlock(&libunwind::findDynamicUnwindSectionsLock);
  return v3;
}

uint64_t __unw_remove_find_dynamic_unwind_sections(uint64_t a1)
{
  pthread_rwlock_wrlock(&libunwind::findDynamicUnwindSectionsLock);
  v2 = libunwind::numDynamicUnwindSectionsFinders;
  if (libunwind::numDynamicUnwindSectionsFinders)
  {
    v3 = 0;
    v4 = libunwind::numDynamicUnwindSectionsFinders - 1;
    v5 = &unk_27CFE57A0;
    v6 = libunwind::numDynamicUnwindSectionsFinders - 1;
    while (*(v5 - 2) != a1)
    {
      ++v3;
      --v6;
      v5 = (v5 + 8);
      if (v6 == -1)
      {
        goto LABEL_5;
      }
    }

    v8 = v4 - v3;
    if (v4 == v3)
    {
      goto LABEL_14;
    }

    if (v8 > 3)
    {
      v9 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      v10 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v11 = *(v5 + 8);
        *(v5 - 1) = *(v5 - 8);
        *v5 = v11;
        v5 += 2;
        v10 -= 4;
      }

      while (v10);
      if (v8 == v9)
      {
        goto LABEL_14;
      }

      v3 += v9;
    }

    v12 = &libunwind::dynamicUnwindSectionsFinders + v3 + 1;
    v13 = ~v3 + v2;
    do
    {
      *(v12 - 1) = *v12;
      ++v12;
      --v13;
    }

    while (v13);
LABEL_14:
    v7 = 0;
    libunwind::numDynamicUnwindSectionsFinders = v4;
    *(&libunwind::dynamicUnwindSectionsFinders + v4) = 0;
    goto LABEL_15;
  }

LABEL_5:
  v7 = 4294960749;
LABEL_15:
  pthread_rwlock_unlock(&libunwind::findDynamicUnwindSectionsLock);
  return v7;
}

_Unwind_Reason_Code _Unwind_RaiseException(_Unwind_Exception *exception_object)
{
  memset(&__src, 0, 512);
  unw_getcontext(&__src);
  exception_object->private_1 = 0;
  exception_object->private_2 = 0;
  v6.data[0] = &unk_283527288;
  v6.data[1] = &libunwind::LocalAddressSpace::sThisAddressSpace;
  memcpy(&v6.data[2], &__src, 0x110uLL);
  *&v6.data[60] = *&__src.data[58];
  *&v6.data[62] = *&__src.data[60];
  *&v6.data[64] = *&__src.data[62];
  *&v6.data[66] = *&__src.data[64];
  *&v6.data[52] = *&__src.data[50];
  *&v6.data[54] = *&__src.data[52];
  *&v6.data[56] = *&__src.data[54];
  *&v6.data[58] = *&__src.data[56];
  *&v6.data[44] = *&__src.data[42];
  *&v6.data[46] = *&__src.data[44];
  *&v6.data[48] = *&__src.data[46];
  *&v6.data[50] = *&__src.data[48];
  *&v6.data[36] = *&__src.data[34];
  *&v6.data[38] = *&__src.data[36];
  *&v6.data[40] = *&__src.data[38];
  *&v6.data[42] = *&__src.data[40];
  memset(&v6.data[68], 0, 74);
  libunwind::UnwindCursor<libunwind::LocalAddressSpace,libunwind::Registers_arm64>::setInfoBasedOnIPRegister(&v6, 0);
  while (1)
  {
    v2 = (*(v6.data[0] + 64))(&v6, 0);
    if (!v2)
    {
      return 5;
    }

    if ((v2 & 0x80000000) == 0)
    {
      v12 = 0;
      v10 = 0u;
      v11 = 0u;
      v8 = 0u;
      v9 = 0u;
      (*(v6.data[0] + 72))(&v6, &v8);
      if (*(&v8 + 1))
      {
        continue;
      }
    }

    return 3;
    if (*(&v9 + 1))
    {
      v3 = (*(&v9 + 1))(1, 1, exception_object->exception_class, exception_object, &v6);
      if (v3 != 8)
      {
        break;
      }
    }
  }

  if (v3 != 6)
  {
    return 3;
  }

  if ((*(v6.data[0] + 16))(&v6, 4294967294))
  {
    v4 = (*(v6.data[0] + 24))(&v6, 4294967294);
  }

  else
  {
    v4 = 0;
  }

  exception_object->private_2 = v4;
  return unwind_phase2(&__src, &v6, exception_object);
}

uint64_t unwind_phase2(void *__src, unw_cursor_t *a2, void *a3)
{
  a2->data[0] = &unk_283527288;
  a2->data[1] = &libunwind::LocalAddressSpace::sThisAddressSpace;
  memcpy(&a2->data[2], __src, 0x110uLL);
  v6 = *(__src + 20);
  v8 = *(__src + 17);
  v7 = *(__src + 18);
  *&a2->data[40] = *(__src + 19);
  *&a2->data[42] = v6;
  *&a2->data[36] = v8;
  *&a2->data[38] = v7;
  v9 = *(__src + 24);
  v11 = *(__src + 21);
  v10 = *(__src + 22);
  *&a2->data[48] = *(__src + 23);
  *&a2->data[50] = v9;
  *&a2->data[44] = v11;
  *&a2->data[46] = v10;
  v12 = *(__src + 28);
  v14 = *(__src + 25);
  v13 = *(__src + 26);
  *&a2->data[56] = *(__src + 27);
  *&a2->data[58] = v12;
  *&a2->data[52] = v14;
  *&a2->data[54] = v13;
  v15 = *(__src + 32);
  v17 = *(__src + 29);
  v16 = *(__src + 30);
  *&a2->data[64] = *(__src + 31);
  *&a2->data[66] = v15;
  *&a2->data[60] = v17;
  *&a2->data[62] = v16;
  v18 = a2->data[33];
  a2->data[34] = a2->data[34];
  *&a2->data[68] = 0u;
  *&a2->data[70] = 0u;
  *&a2->data[72] = 0u;
  *&a2->data[74] = 0u;
  *(&a2->data[75] + 2) = 0u;
  libunwind::UnwindCursor<libunwind::LocalAddressSpace,libunwind::Registers_arm64>::setInfoBasedOnIPRegister(a2, 0);
  for (i = 2; ; ++i)
  {
    v20 = (*(a2->data[0] + 64))(a2, 1);
    if (!v20)
    {
      return 5;
    }

    if (v20 < 0)
    {
      break;
    }

    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v21 = 0;
    if ((*(a2->data[0] + 16))(a2, 4294967294))
    {
      v21 = (*(a2->data[0] + 24))(a2, 4294967294);
    }

    (*(a2->data[0] + 72))(a2, &v26);
    if (!*(&v26 + 1))
    {
      break;
    }

    if (*(&v27 + 1))
    {
      if (v21 == a3[3])
      {
        v22 = 6;
      }

      else
      {
        v22 = 2;
      }

      v23 = (*(&v27 + 1))(1, v22, *a3, a3, a2);
      if (v23 != 8)
      {
        if (v23 == 7)
        {
          unw_resume_with_frames_walked(a2);
        }

        return 2;
      }

      if (v21 == a3[3])
      {
        v24 = MEMORY[0x277D85DF8];
        fprintf(*MEMORY[0x277D85DF8], "libunwind: %s - %s\n", "unwind_phase2", "during phase1 personality function said it would stop here, but now in phase2 it did not stop here");
        fflush(*v24);
        abort();
      }
    }
  }

  return 2;
}

void _Unwind_Resume(_Unwind_Exception *exception_object)
{
  memset(&__src, 0, 512);
  memset(&v4, 0, 512);
  unw_getcontext(&__src);
  private_1 = exception_object->private_1;
  if (private_1)
  {
    unwind_phase2_forced(&__src, &v4, exception_object, private_1, exception_object->private_2);
  }

  else
  {
    unwind_phase2(&__src, &v4, exception_object);
  }

  v3 = MEMORY[0x277D85DF8];
  fprintf(*MEMORY[0x277D85DF8], "libunwind: %s - %s\n", "_Unwind_Resume", "_Unwind_Resume() can't return");
  fflush(*v3);
  abort();
}

uint64_t unwind_phase2_forced(void *__src, unw_cursor_t *a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, void, void *, unw_cursor_t *, uint64_t), uint64_t a5)
{
  a2->data[0] = &unk_283527288;
  a2->data[1] = &libunwind::LocalAddressSpace::sThisAddressSpace;
  memcpy(&a2->data[2], __src, 0x110uLL);
  v10 = *(__src + 20);
  v12 = *(__src + 17);
  v11 = *(__src + 18);
  *&a2->data[40] = *(__src + 19);
  *&a2->data[42] = v10;
  *&a2->data[36] = v12;
  *&a2->data[38] = v11;
  v13 = *(__src + 24);
  v15 = *(__src + 21);
  v14 = *(__src + 22);
  *&a2->data[48] = *(__src + 23);
  *&a2->data[50] = v13;
  *&a2->data[44] = v15;
  *&a2->data[46] = v14;
  v16 = *(__src + 28);
  v18 = *(__src + 25);
  v17 = *(__src + 26);
  *&a2->data[56] = *(__src + 27);
  *&a2->data[58] = v16;
  *&a2->data[52] = v18;
  *&a2->data[54] = v17;
  v19 = *(__src + 32);
  v21 = *(__src + 29);
  v20 = *(__src + 30);
  *&a2->data[64] = *(__src + 31);
  *&a2->data[66] = v19;
  *&a2->data[60] = v21;
  *&a2->data[62] = v20;
  v22 = a2->data[33];
  a2->data[34] = a2->data[34];
  *&a2->data[68] = 0u;
  *&a2->data[70] = 0u;
  *&a2->data[72] = 0u;
  *&a2->data[74] = 0u;
  *(&a2->data[75] + 2) = 0u;
  libunwind::UnwindCursor<libunwind::LocalAddressSpace,libunwind::Registers_arm64>::setInfoBasedOnIPRegister(a2, 0);
  v23 = 2;
  while ((*(a2->data[0] + 64))(a2, 1) >= 1)
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    result = (*(a2->data[0] + 72))(a2, &v25);
    if (!*(&v25 + 1))
    {
      return result;
    }

    result = a4(1, 10, *a3, a3, a2, a5);
    if (result)
    {
      return result;
    }

    if (*(&v26 + 1))
    {
      result = (*(&v26 + 1))(1, 10, *a3, a3, a2);
      if (result != 8)
      {
        if (result != 7)
        {
          return result;
        }

        unw_resume_with_frames_walked(a2);
      }
    }

    ++v23;
  }

  return a4(1, 26, *a3, a3, a2, a5);
}

_Unwind_Reason_Code _Unwind_ForcedUnwind(_Unwind_Exception *exception_object, _Unwind_Stop_Fn stop, void *stop_parameter)
{
  memset(&__src, 0, 512);
  memset(&v7, 0, 512);
  unw_getcontext(&__src);
  exception_object->private_1 = stop;
  exception_object->private_2 = stop_parameter;
  unwind_phase2_forced(&__src, &v7, exception_object, stop, stop_parameter);
  return 2;
}

uintptr_t _Unwind_GetLanguageSpecificData(_Unwind_Context *context)
{
  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  v2 = 0u;
  v3 = 0u;
  (*(*context + 72))(context, &v2);
  if (*(&v2 + 1) && v3)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uintptr_t _Unwind_GetRegionStart(_Unwind_Context *context)
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  (*(*context + 72))(context, v2);
  if (*(&v2[0] + 1) && *&v2[0])
  {
    return *&v2[0];
  }

  else
  {
    return 0;
  }
}

void _Unwind_DeleteException(_Unwind_Exception *exception_object)
{
  exception_cleanup = exception_object->exception_cleanup;
  if (exception_cleanup)
  {
    (exception_cleanup)(1, exception_object);
  }
}

uintptr_t _Unwind_GetIP(_Unwind_Context *context)
{
  if ((*(*context + 16))(context, 0xFFFFFFFFLL))
  {
    v2 = (*(*context + 24))(context, 0xFFFFFFFFLL);
  }

  else
  {
    v2 = 0;
  }

  if ((*(*context + 16))(context, 4294967294))
  {
    (*(*context + 24))(context, 4294967294);
  }

  return v2;
}

_Unwind_Reason_Code _Unwind_Resume_or_Rethrow(_Unwind_Exception *exception_object)
{
  if (exception_object->private_1)
  {
    _Unwind_Resume(exception_object);
  }

  return _Unwind_RaiseException(exception_object);
}

uintptr_t _Unwind_GetDataRelBase(_Unwind_Context *context)
{
  v1 = MEMORY[0x277D85DF8];
  fprintf(*MEMORY[0x277D85DF8], "libunwind: %s - %s\n", "_Unwind_GetDataRelBase", "_Unwind_GetDataRelBase() not implemented");
  fflush(*v1);
  abort();
}

uintptr_t _Unwind_GetTextRelBase(_Unwind_Context *context)
{
  v1 = MEMORY[0x277D85DF8];
  fprintf(*MEMORY[0x277D85DF8], "libunwind: %s - %s\n", "_Unwind_GetTextRelBase", "_Unwind_GetTextRelBase() not implemented");
  fflush(*v1);
  abort();
}

void *__cdecl _Unwind_FindEnclosingFunction(void *pc)
{
  memset(&__src, 0, 512);
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  unw_getcontext(&__src);
  v6.data[0] = &unk_283527288;
  v6.data[1] = &libunwind::LocalAddressSpace::sThisAddressSpace;
  memcpy(&v6.data[2], &__src, 0x110uLL);
  *&v6.data[60] = *&__src.data[58];
  *&v6.data[62] = *&__src.data[60];
  *&v6.data[64] = *&__src.data[62];
  *&v6.data[66] = *&__src.data[64];
  *&v6.data[52] = *&__src.data[50];
  *&v6.data[54] = *&__src.data[52];
  *&v6.data[56] = *&__src.data[54];
  *&v6.data[58] = *&__src.data[56];
  *&v6.data[44] = *&__src.data[42];
  *&v6.data[46] = *&__src.data[44];
  *&v6.data[48] = *&__src.data[46];
  *&v6.data[50] = *&__src.data[48];
  *&v6.data[36] = *&__src.data[34];
  *&v6.data[38] = *&__src.data[36];
  *&v6.data[40] = *&__src.data[38];
  *&v6.data[42] = *&__src.data[40];
  memset(&v6.data[68], 0, 74);
  libunwind::UnwindCursor<libunwind::LocalAddressSpace,libunwind::Registers_arm64>::setInfoBasedOnIPRegister(&v6, 0);
  unw_set_reg(&v6, -1, pc);
  (*(v6.data[0] + 72))(&v6, v3);
  if (*(&v3[0] + 1) && *&v3[0])
  {
    return *&v3[0];
  }

  else
  {
    return 0;
  }
}

_Unwind_Reason_Code _Unwind_Backtrace(_Unwind_Trace_Fn a1, void *a2)
{
  memset(&v5, 0, 512);
  unw_getcontext(&v5);
  v6[0] = &unk_283527288;
  v6[1] = &libunwind::LocalAddressSpace::sThisAddressSpace;
  memcpy(v7, &v5, sizeof(v7));
  v20 = *&v5.data[58];
  v21 = *&v5.data[60];
  v22 = *&v5.data[62];
  v23 = *&v5.data[64];
  v16 = *&v5.data[50];
  v17 = *&v5.data[52];
  v18 = *&v5.data[54];
  v19 = *&v5.data[56];
  v12 = *&v5.data[42];
  v13 = *&v5.data[44];
  v14 = *&v5.data[46];
  v15 = *&v5.data[48];
  v8 = *&v5.data[34];
  v9 = *&v5.data[36];
  v10 = *&v5.data[38];
  v11 = *&v5.data[40];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  memset(v27, 0, sizeof(v27));
  libunwind::UnwindCursor<libunwind::LocalAddressSpace,libunwind::Registers_arm64>::setInfoBasedOnIPRegister(v6, 0);
  while ((*(v6[0] + 64))(v6, 0) >= 1)
  {
    result = (a1)(v6, a2);
    if (result)
    {
      return result;
    }
  }

  return 5;
}

const void *__cdecl _Unwind_Find_FDE(const void *pc, dwarf_eh_bases *a2)
{
  memset(&__src, 0, 512);
  v7 = 0;
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  unw_getcontext(&__src);
  v9.data[0] = &unk_283527288;
  v9.data[1] = &libunwind::LocalAddressSpace::sThisAddressSpace;
  memcpy(&v9.data[2], &__src, 0x110uLL);
  *&v9.data[60] = *&__src.data[58];
  *&v9.data[62] = *&__src.data[60];
  *&v9.data[64] = *&__src.data[62];
  *&v9.data[66] = *&__src.data[64];
  *&v9.data[52] = *&__src.data[50];
  *&v9.data[54] = *&__src.data[52];
  *&v9.data[56] = *&__src.data[54];
  *&v9.data[58] = *&__src.data[56];
  *&v9.data[44] = *&__src.data[42];
  *&v9.data[46] = *&__src.data[44];
  *&v9.data[48] = *&__src.data[46];
  *&v9.data[50] = *&__src.data[48];
  *&v9.data[36] = *&__src.data[34];
  *&v9.data[38] = *&__src.data[36];
  *&v9.data[40] = *&__src.data[38];
  *&v9.data[42] = *&__src.data[40];
  memset(&v9.data[68], 0, 74);
  libunwind::UnwindCursor<libunwind::LocalAddressSpace,libunwind::Registers_arm64>::setInfoBasedOnIPRegister(&v9, 0);
  unw_set_reg(&v9, -1, pc);
  (*(v9.data[0] + 72))(&v9, v5);
  a2->tbase = v7;
  a2->dbase = 0;
  a2->func = *&v5[0];
  if (*(&v6 + 1))
  {
    return *(&v6 + 1);
  }

  else
  {
    return 0;
  }
}

uintptr_t _Unwind_GetCFA(_Unwind_Context *a1)
{
  if (!(*(*a1 + 16))(a1, 4294967294))
  {
    return 0;
  }

  v2 = *(*a1 + 24);

  return v2(a1, 4294967294);
}

uintptr_t _Unwind_GetIPInfo(_Unwind_Context *context, int *ipBefore)
{
  *ipBefore = (*(*context + 88))(context);
  if ((*(*context + 16))(context, 0xFFFFFFFFLL))
  {
    v3 = (*(*context + 24))(context, 0xFFFFFFFFLL);
  }

  else
  {
    v3 = 0;
  }

  if ((*(*context + 16))(context, 4294967294))
  {
    (*(*context + 24))(context, 4294967294);
  }

  return v3;
}

void __register_frame(const void *fde)
{
  if (!libunwind::CFI_Parser<libunwind::LocalAddressSpace>::decodeFDE(fde, v4, v3, 0, v1, v2))
  {
    libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::add(v4[0], v4[3], v4[4], v4[0]);
  }
}

void __deregister_frame(const void *fde)
{
  pthread_rwlock_wrlock(&libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_lock);
  v2 = libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_buffer[0];
  v3 = libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_bufferUsed;
  if (libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_buffer[0] >= libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_bufferUsed)
  {
    v4 = libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_buffer[0];
  }

  else
  {
    v4 = libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_buffer[0];
    do
    {
      if (*v2 != fde)
      {
        if (v2 != v4)
        {
          v5 = v2[1];
          *v4 = *v2;
          v4[1] = v5;
        }

        v4 += 2;
      }

      v2 += 2;
    }

    while (v2 < v3);
  }

  libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_bufferUsed = v4;

  pthread_rwlock_unlock(&libunwind::DwarfFDECache<libunwind::LocalAddressSpace>::_lock);
}