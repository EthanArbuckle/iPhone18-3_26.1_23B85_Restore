uint64_t hwtrace_get_range_cycle_count(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = sub_298B078C0(*(a1 + 80), *(a1 + 88), ((a2 & 7) << 16) | (a2 >> 3));
  (*(**(v4 + 432) + 24))(&v14);
  v5 = v14;
  v6 = v14[3];
  if (a3 >= v6)
  {
    if (v14[4] + v6 > a3)
    {
      v9 = *(v14[5] + 12 * (a3 - v6) + 8);
      v14 = 0;
LABEL_9:
      (*(*v5 + 8))(v5);
      return v9 & 0x3FFFFF;
    }

    v7 = v14[8];
    v8 = a3;
  }

  else
  {
    v7 = v14[8];
    if (v7 <= a3)
    {
      v8 = a3 - v7 + 1;
    }

    else
    {
      v8 = 0;
    }
  }

  v10 = v14 + 5;
  v14[6] = v14[5];
  (*(**(v10 - 4) + 32))(*(v10 - 4), v8, v7, v10, *(v10 - 3));
  v11 = *v10;
  v12 = 0xAAAAAAAAAAAAAAABLL * ((v10[1] - *v10) >> 2);
  *(v10 - 2) = v8;
  *(v10 - 1) = v12;
  v5 = v14;
  v9 = *(v11 + 12 * (a3 - v8) + 8);
  v14 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  return v9 & 0x3FFFFF;
}

uint64_t hwtrace_get_range_approx_time(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = sub_298B078C0(*(a1 + 80), *(a1 + 88), ((a2 & 7) << 16) | (a2 >> 3));
  (*(**(v4 + 432) + 24))(&v24);
  v5 = v24;
  v6 = *(*(v24 + 328) + 16);
  if (v6)
  {
    v7 = 0;
    v8 = *(v24 + 88);
    while (1)
    {
      v13 = (v6 >> 1) + v7;
      if (v8 > v13)
      {
        v9 = *(v5 + 128);
        if (v9 <= v13)
        {
          v8 = v13 - v9 + 1;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        if (*(v5 + 96) + v8 > v13)
        {
          v11 = *(v5 + 104);
          goto LABEL_7;
        }

        v14 = *(v5 + 128);
        v8 = (v6 >> 1) + v7;
      }

      *(v5 + 112) = *(v5 + 104);
      v10 = *(v5 + 80);
      (*(**(v5 + 72) + 40))(*(v5 + 72), v8);
      v11 = *(v5 + 104);
      v12 = 0xAAAAAAAAAAAAAAABLL * ((*(v5 + 112) - v11) >> 3);
      *(v5 + 88) = v8;
      *(v5 + 96) = v12;
LABEL_7:
      if (*(v11 + 24 * (v13 - v8) + 8) > a3)
      {
        v6 >>= 1;
      }

      else
      {
        v7 = v13 + 1;
        v6 += ~(v6 >> 1);
      }

      if (!v6)
      {
        goto LABEL_16;
      }
    }
  }

  v7 = 0;
  v8 = *(v24 + 88);
LABEL_16:
  if (v7)
  {
    v15 = v7 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v8 <= v15)
  {
    if (*(v5 + 96) + v8 > v15)
    {
      v17 = *(v5 + 104);
      goto LABEL_27;
    }

    v16 = *(v5 + 128);
    v8 = v15;
  }

  else
  {
    v16 = *(v5 + 128);
    if (v16 <= v15)
    {
      v8 = v15 - v16 + 1;
    }

    else
    {
      v8 = 0;
    }
  }

  v19 = *(v5 + 104);
  v18 = (v5 + 104);
  v18[1] = v19;
  (*(**(v18 - 4) + 40))(*(v18 - 4), v8, v16, v18, *(v18 - 3));
  v17 = *v18;
  v20 = 0xAAAAAAAAAAAAAAABLL * ((v18[1] - *v18) >> 3);
  *(v18 - 2) = v8;
  *(v18 - 1) = v20;
LABEL_27:
  v21 = *(v17 + 24 * (v15 - v8) + 16);
  v22 = v24;
  v24 = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  return v21;
}

uint64_t hwtrace_find_range_at_approx_time(uint64_t a1, unsigned int a2, unint64_t a3, int a4)
{
  v5 = a4 != 0;
  v6 = sub_298B078C0(*(a1 + 80), *(a1 + 88), ((a2 & 7) << 16) | (a2 >> 3));
  (*(**(v6 + 432) + 24))(&v12);
  v7 = sub_298BFC9BC(v12, a3, v5);
  v9 = v8;
  v10 = v12;
  v12 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  if (v9)
  {
    return v7;
  }

  else
  {
    return -1;
  }
}

uint64_t hwtrace_get_start_of_range_index(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = (a2 & 7) << 16;
  v5 = (a2 >> 3);
  result = sub_298B04364(*(a1 + 80), *(a1 + 88), ((a2 & 7) << 16) | v5, a3);
  if (result)
  {
    v7 = *(a1 + 80);
    if (0x8F5C28F5C28F5C29 * ((*(a1 + 88) - v7) >> 3) <= v5)
    {
      v8 = sub_298B9A258();
      v9 = sub_298B00584(v8, "Cluster index ");
      v10 = sub_298B06C38(v9, v5);
      sub_298B00584(v10, " out of bounds");
      abort();
    }

    return *(*(v7 + 200 * v5 + 24 * (v4 >> 16) + 8) + 8 * result - 8);
  }

  return result;
}

uint64_t hwtrace_get_end_of_range_index(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = (a2 & 7) << 16;
  v5 = (a2 >> 3);
  v6 = sub_298B04364(*(a1 + 80), *(a1 + 88), ((a2 & 7) << 16) | v5, a3);
  v7 = *(a1 + 80);
  if (0x8F5C28F5C28F5C29 * ((*(a1 + 88) - v7) >> 3) <= v5)
  {
    v9 = sub_298B9A258();
    v10 = sub_298B00584(v9, "Cluster index ");
    v11 = sub_298B06C38(v10, v5);
    sub_298B00584(v11, " out of bounds");
    abort();
  }

  return *(*(v7 + 200 * v5 + 24 * (v4 >> 16) + 8) + 8 * v6);
}

uint64_t sub_298B04C78(uint64_t a1, int a2, unint64_t a3, unint64_t a4, int a5)
{
  v10 = sub_298B078C0(*(a1 + 80), *(a1 + 88), a2);
  (*(**(v10 + 432) + 24))(&v42);
  v11 = v42;
  v12 = sub_298B04364(*(a1 + 80), *(a1 + 88), a2, a3);
  v13 = v12;
  v14 = *(v11 + 24);
  if (v14 > v12)
  {
    v15 = *(v11 + 64);
    if (v15 <= v12)
    {
      v14 = v12 - v15 + 1;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_8;
  }

  v16 = *(v11 + 32);
  if (v16 + v14 <= v12)
  {
    v15 = *(v11 + 64);
    v14 = v12;
LABEL_8:
    *(v11 + 48) = *(v11 + 40);
    (*(**(v11 + 8) + 32))(*(v11 + 8), v14, v15, v11 + 40, *(v11 + 16));
    v17 = *(v11 + 40);
    v16 = 0xAAAAAAAAAAAAAAABLL * ((*(v11 + 48) - v17) >> 2);
    *(v11 + 24) = v14;
    *(v11 + 32) = v16;
    goto LABEL_9;
  }

  v17 = *(v11 + 40);
LABEL_9:
  v18 = *(v17 + 12 * (v13 - v14));
  v19 = (v18 << 17) >> 15;
  v20 = a4 - v19;
  v21 = v19 + 4 * (v18 >> 47);
  if (a4 >= v19 && v21 > a4)
  {
    if (v13)
    {
      v36 = *(a1 + 80);
      if (0x8F5C28F5C28F5C29 * ((*(a1 + 88) - v36) >> 3) <= a2)
      {
        goto LABEL_49;
      }

      v33 = *(*(v36 + 200 * a2 + 24 * HIWORD(a2) + 8) + 8 * v13 - 8) + (v20 >> 2);
      if (v33 != a3)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v33 = (v20 >> 2);
      if (v33 != a3)
      {
        goto LABEL_35;
      }
    }
  }

  if (a5)
  {
    v23 = v13 - 1;
  }

  else
  {
    v23 = v13 + 1;
  }

  if (a5)
  {
    v24 = -1;
    v25 = -1;
    if (v23 == -1)
    {
LABEL_34:
      v33 = -1;
      goto LABEL_35;
    }
  }

  else
  {
    v26 = *(a1 + 80);
    if (0x8F5C28F5C28F5C29 * ((*(a1 + 88) - v26) >> 3) <= a2)
    {
      goto LABEL_49;
    }

    v25 = (*(v26 + 200 * a2 + 24 * HIWORD(a2) + 16) - *(v26 + 200 * a2 + 24 * HIWORD(a2) + 8)) >> 3;
    v24 = 1;
    if (v23 == v25)
    {
      goto LABEL_34;
    }
  }

  v27 = 12 * v23;
  while (1)
  {
    if (v14 <= v23)
    {
      if (v16 + v14 > v23)
      {
        goto LABEL_29;
      }

      v28 = *(v11 + 64);
      v14 = v23;
    }

    else
    {
      v28 = *(v11 + 64);
      v14 = v28 <= v23 ? v23 - v28 + 1 : 0;
    }

    *(v11 + 48) = v17;
    (*(**(v11 + 8) + 32))(*(v11 + 8), v14, v28, v11 + 40, *(v11 + 16));
    v17 = *(v11 + 40);
    v16 = 0xAAAAAAAAAAAAAAABLL * ((*(v11 + 48) - v17) >> 2);
    *(v11 + 24) = v14;
    *(v11 + 32) = v16;
LABEL_29:
    v29 = *(v17 - 12 * v14 + v27);
    v30 = (v29 << 17) >> 15;
    v31 = v30 + 4 * (v29 >> 47);
    if (a4 >= v30 && v31 > a4)
    {
      break;
    }

    v23 += v24;
    v27 += 12 * v24;
    if (v25 == v23)
    {
      goto LABEL_34;
    }
  }

  if (v23)
  {
    v37 = *(a1 + 80);
    if (0x8F5C28F5C28F5C29 * ((*(a1 + 88) - v37) >> 3) > a2)
    {
      v38 = *(*(v37 + 200 * a2 + 24 * HIWORD(a2) + 8) + 8 * v23 - 8);
      goto LABEL_48;
    }

LABEL_49:
    v39 = sub_298B9A258();
    v40 = sub_298B00584(v39, "Cluster index ");
    v41 = sub_298B06C38(v40, a2);
    sub_298B00584(v41, " out of bounds");
    abort();
  }

  v38 = 0;
LABEL_48:
  v33 = v38 + ((a4 - v30) >> 2);
LABEL_35:
  v34 = v42;
  v42 = 0;
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  return v33;
}

char *hwtrace_symbolicate_pc(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 104);
  if (!v3)
  {
    v4 = *(a1 + 72);
    v5 = *(v4 + 8);
    v6 = *(v4 + 88);
    operator new();
  }

  result = sub_298BF7B4C(v3, a2, a1 + 112);
  if (!result)
  {
    return off_2A13C2B60;
  }

  return result;
}

uint64_t hwtrace_find_image_name_backing_pc(uint64_t a1, unint64_t a2)
{
  v3 = *(*(a1 + 72) + 8);
  v17[0] = (v3 + 8);
  v17[3] = 0;
  v5 = sub_298BDA86C(v3, 0, a2, v17);
  if (v5)
  {
    v6 = sub_298B9CEA8();
    v7 = v6;
    v8 = v6[4];
    if (v6[3] - v8 > 0x21uLL)
    {
      qmemcpy(v8, "error: failed to find section for ", 34);
      v6[4] += 34;
      if (HIDWORD(a2))
      {
LABEL_4:
        sub_298B8FEA0(v6, a2, 0, 0, 0);
        v9 = *(v7 + 32);
        if (*(v7 + 24) - v9 > 1uLL)
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v6 = sub_298B9BCEC(v6, "error: failed to find section for ", 0x22uLL);
      if (HIDWORD(a2))
      {
        goto LABEL_4;
      }
    }

    sub_298B8FC48(v6, a2, 0, 0, 0);
    v9 = *(v7 + 32);
    if (*(v7 + 24) - v9 > 1uLL)
    {
LABEL_5:
      *v9 = 8236;
      *(v7 + 32) += 2;
      if (v5 > 4)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_298B9BCEC(v7, ", ", 2uLL);
    if (v5 > 4)
    {
LABEL_6:
      v10 = "InSection";
      v11 = 9;
      v12 = *(v7 + 32);
      if (*(v7 + 24) - v12 >= 9uLL)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }

LABEL_15:
    v16 = v5 - 1;
    v11 = qword_298CF7990[v16];
    v10 = off_29EEB4A10[v16];
    v12 = *(v7 + 32);
    if (v11 <= *(v7 + 24) - v12)
    {
LABEL_7:
      memcpy(v12, v10, v11);
      v13 = *(v7 + 24);
      v14 = (*(v7 + 32) + v11);
      *(v7 + 32) = v14;
      if (v13 != v14)
      {
LABEL_8:
        result = 0;
        *v14 = 10;
        ++*(v7 + 32);
        return result;
      }

LABEL_17:
      sub_298B9BCEC(v7, "\n", 1uLL);
      return 0;
    }

LABEL_16:
    sub_298B9BCEC(v7, v10, v11);
    v14 = *(v7 + 32);
    if (*(v7 + 24) != v14)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

  result = v4 + 8;
  if (*(v4 + 31) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t hwtrace_find_image_loadaddr_backing_pc(uint64_t a1, unint64_t a2)
{
  v3 = *(*(a1 + 72) + 8);
  v17[0] = (v3 + 8);
  v17[3] = 0;
  v5 = sub_298BDA86C(v3, 0, a2, v17);
  if (!v5)
  {
    return *(v4 + 72);
  }

  v6 = sub_298B9CEA8();
  v7 = v6;
  v8 = v6[4];
  if (v6[3] - v8 > 0x20uLL)
  {
    qmemcpy(v8, "error: section lookup failed for ", 33);
    v6[4] += 33;
    if (HIDWORD(a2))
    {
LABEL_4:
      sub_298B8FEA0(v6, a2, 0, 0, 0);
      v9 = *(v7 + 32);
      if (*(v7 + 24) - v9 > 1uLL)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v6 = sub_298B9BCEC(v6, "error: section lookup failed for ", 0x21uLL);
    if (HIDWORD(a2))
    {
      goto LABEL_4;
    }
  }

  sub_298B8FC48(v6, a2, 0, 0, 0);
  v9 = *(v7 + 32);
  if (*(v7 + 24) - v9 > 1uLL)
  {
LABEL_5:
    *v9 = 8236;
    *(v7 + 32) += 2;
    if (v5 > 4)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  sub_298B9BCEC(v7, ", ", 2uLL);
  if (v5 > 4)
  {
LABEL_6:
    v10 = "InSection";
    v11 = 9;
    v12 = *(v7 + 32);
    if (*(v7 + 24) - v12 >= 9uLL)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  v16 = v5 - 1;
  v11 = qword_298CF7990[v16];
  v10 = off_29EEB4A10[v16];
  v12 = *(v7 + 32);
  if (v11 <= *(v7 + 24) - v12)
  {
LABEL_7:
    memcpy(v12, v10, v11);
    v13 = *(v7 + 24);
    v14 = (*(v7 + 32) + v11);
    *(v7 + 32) = v14;
    if (v13 != v14)
    {
LABEL_8:
      *v14 = 10;
      ++*(v7 + 32);
      return -1;
    }

    goto LABEL_15;
  }

LABEL_14:
  sub_298B9BCEC(v7, v10, v11);
  v14 = *(v7 + 32);
  if (*(v7 + 24) != v14)
  {
    goto LABEL_8;
  }

LABEL_15:
  sub_298B9BCEC(v7, "\n", 1uLL);
  return -1;
}

void *hwtrace_get_disassembly(uint64_t a1, unint64_t a2)
{
  v29 = *MEMORY[0x29EDCA608];
  v4 = *(*(a1 + 72) + 8);
  v20[0] = (v4 + 8);
  v21 = 0;
  v24[0] = 0;
  v24[1] = 0;
  v25 = v27;
  v26 = 0xA00000000;
  v27[20] = 0;
  v28 = 0;
  if (sub_298BDA9EC(v4, 0, a2, v20) || !(*(**(v4 + 816) + 24))(*(v4 + 816), v24, *(v21 + 48) + a2 - v20[1], 4, a2))
  {
    v5 = 0;
    v8 = v25;
    if (v25 == v27)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v5 = (a1 + 152);
  MEMORY[0x29C294300](a1 + 152, "");
  v12 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 1;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v11 = &unk_2A1F1E040;
  v19 = a1 + 152;
  sub_298ADDDB0(&v11);
  (*(**(v4 + 816) + 32))(__p);
  if ((v23 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v23 & 0x80u) == 0)
  {
    v7 = v23;
  }

  else
  {
    v7 = __p[1];
  }

  sub_298B9BCEC(&v11, v6, v7);
  if ((v23 & 0x80000000) == 0)
  {
    sub_298B9AE14(&v11);
    if ((*(a1 + 175) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_17:
    v5 = *v5;
    v8 = v25;
    if (v25 == v27)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  operator delete(__p[0]);
  sub_298B9AE14(&v11);
  if (*(a1 + 175) < 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v8 = v25;
  if (v25 != v27)
  {
LABEL_12:
    free(v8);
  }

LABEL_13:
  v9 = *MEMORY[0x29EDCA608];
  return v5;
}

void hwtrace_compute_backtrace_at_index(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = ((a2 & 7) << 16) | (a2 >> 3);
  v67 = 0;
  v68[0] = ((a2 & 7) << 16) | (a2 << 32) | (a2 >> 3);
  v48 = a1 + 22;
  a1[23] = a1[22];
  v65 = 0;
  v66 = 0;
  v47 = sub_298B0417C(a1, v5, a3);
  v6 = sub_298B04364(a1[10], a1[11], v5, a3);
  v64 = v6;
  v7 = sub_298B078C0(a1[10], a1[11], v5);
  (*(**(v7 + 432) + 24))(v53);
  v8 = v53[0];
  v9 = *(*(v53[0] + 328) + 16);
  if (v9)
  {
    v10 = 0;
    v11 = *(v53[0] + 88);
    while (1)
    {
      v16 = (v9 >> 1) + v10;
      if (v11 > v16)
      {
        v12 = *(v8 + 128);
        if (v12 <= v16)
        {
          v11 = v16 - v12 + 1;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        if (*(v8 + 96) + v11 > v16)
        {
          v14 = *(v8 + 104);
          goto LABEL_7;
        }

        v17 = *(v8 + 128);
        v11 = (v9 >> 1) + v10;
      }

      *(v8 + 112) = *(v8 + 104);
      v13 = *(v8 + 80);
      (*(**(v8 + 72) + 40))(*(v8 + 72), v11);
      v14 = *(v8 + 104);
      v15 = 0xAAAAAAAAAAAAAAABLL * ((*(v8 + 112) - v14) >> 3);
      *(v8 + 88) = v11;
      *(v8 + 96) = v15;
LABEL_7:
      if (*(v14 + 24 * (v16 - v11) + 8) > v6)
      {
        v9 >>= 1;
      }

      else
      {
        v10 = v16 + 1;
        v9 += ~(v9 >> 1);
      }

      if (!v9)
      {
        goto LABEL_16;
      }
    }
  }

  v10 = 0;
  v11 = *(v53[0] + 88);
LABEL_16:
  if (v10)
  {
    v18 = v10 - 1;
  }

  else
  {
    v18 = 0;
  }

  if (v11 <= v18)
  {
    v20 = v48;
    if (*(v8 + 96) + v11 > v18)
    {
      v21 = *(v8 + 104);
      goto LABEL_28;
    }

    v19 = *(v8 + 128);
    v11 = v18;
  }

  else
  {
    v19 = *(v8 + 128);
    if (v19 <= v18)
    {
      v11 = v18 - v19 + 1;
    }

    else
    {
      v11 = 0;
    }

    v20 = v48;
  }

  v23 = *(v8 + 104);
  v22 = (v8 + 104);
  v22[1] = v23;
  (*(**(v22 - 4) + 40))(*(v22 - 4), v11, v19, v22, *(v22 - 3));
  v21 = *v22;
  v24 = 0xAAAAAAAAAAAAAAABLL * ((v22[1] - *v22) >> 3);
  *(v22 - 2) = v11;
  *(v22 - 1) = v24;
LABEL_28:
  v25 = *(v21 + 24 * (v18 - v11) + 16);
  v26 = v53[0];
  v53[0] = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v63 = v25;
  v27 = a1[9];
  v28 = *(v27 + 40);
  v29 = *(v27 + 48);
  if (v28 == v29)
  {
    v30 = 0;
    v31 = 0;
  }

  else
  {
    do
    {
      v32 = *(v28 + 56);
      v53[0] = v28;
      v53[1] = v68;
      v54 = &v64;
      v55 = a1;
      v56 = &v63;
      v57 = &v65;
      sub_298B06C6C(v32 + 112, sub_298B07AA8, v53);
      v28 += 64;
    }

    while (v28 != v29);
    v31 = v65;
    v30 = v66;
  }

  v58 = 0;
  v59 = 0;
  v60 = 0;
  v62 = 0;
  v55 = 0;
  v56 = 0;
  v54 = 0;
  LODWORD(v57) = 0;
  LODWORD(v49) = 16842753;
  BYTE4(v49) = 0;
  BYTE8(v49) = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v33 = a1[13];
  if (!v33)
  {
    v34 = a1[9];
    v35 = *(v34 + 8);
    v36 = *(v34 + 88);
    operator new();
  }

  v68[1] = v53;
  sub_298BB613C(v31, 0xAAAAAAAAAAAAAAABLL * (v30 - v31), &v49, v33, v47, 1u);
  v37 = v54;
  if (v54)
  {
    if (!v61)
    {
      goto LABEL_45;
    }

    v38 = (v61 - 1);
    v39 = v38 + 1;
    v40 = **(v54 + 28) + 8 * v38;
    while ((**v40 & 3) != 1)
    {
      --v39;
      v40 -= 8;
      if (v39 < 1)
      {
        v41 = 0;
        goto LABEL_43;
      }
    }

    v41 = (*(*v40 + 16) << 17) >> 15;
LABEL_43:
    *&v49 = v41;
    WORD4(v49) = 256;
    while (1)
    {
      sub_298B07988(v20, &v49);
LABEL_45:
      v42 = *(v37 + 28);
      if (!v42)
      {
        break;
      }

      v43 = *(v42 + 8);
      if (!v43)
      {
        break;
      }

      v37 = *(*v42 + 8 * v43 - 8);
      v44 = *v37 & 3;
      if (v44 == 1)
      {
        v45 = (v37[2] << 17) >> 15;
      }

      else
      {
        v45 = 0;
      }

      *&v49 = v45;
      BYTE8(v49) = v44 == 3;
      BYTE9(v49) = v44 == 2;
    }
  }

  MEMORY[0x29C2945E0](v58, 8);
  MEMORY[0x29C2945E0](v55, 8);
  v46 = v54;
  v54 = 0;
  if (v46)
  {
    sub_298B07DB0((v46 + 28));
    MEMORY[0x29C2945F0](v46, 0x1020C40CE35E8ABLL);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }
}

uint64_t hwtrace_compute_callstacks(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  if (a6)
  {
    v7 = a6 & 3;
  }

  else
  {
    v7 = 1;
  }

  v8 = (a5 >> 1) & 1;
  v9 = a5 & 1;
  v10 = (a2 & 7) << 16;
  v11 = (a2 >> 3);
  v12 = a1[25];
  for (i = a1[26]; i != v12; i -= 88)
  {
    MEMORY[0x29C2945E0](*(i - 40), 8);
    MEMORY[0x29C2945E0](*(i - 64), 8);
    v14 = *(i - 72);
    *(i - 72) = 0;
    if (v14)
    {
      sub_298B07DB0((v14 + 28));
      MEMORY[0x29C2945F0](v14, 0x1020C40CE35E8ABLL);
    }
  }

  a1[26] = v12;
  v26[0] = sub_298B078C0(a1[10], a1[11], v10 | v11) + 336;
  v26[1] = a3;
  v26[2] = a4;
  LOBYTE(v22) = v7;
  BYTE1(v22) = v9;
  BYTE2(v22) = v8;
  *(&v22 + 3) = 0;
  BYTE8(v22) = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v15 = a1[13];
  if (!v15)
  {
    v16 = a1[9];
    v17 = *(v16 + 8);
    v18 = *(v16 + 88);
    operator new();
  }

  v26[3] = a1;
  return sub_298BB613C(v26, 1, &v22, v15, 0, 0);
}

void hwtrace_compute_callstacks_for_time(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  if (a5)
  {
    v9 = a5 & 3;
  }

  else
  {
    v9 = 1;
  }

  v10 = a4 & 1;
  v11 = a1[25];
  for (i = a1[26]; i != v11; i -= 88)
  {
    MEMORY[0x29C2945E0](*(i - 40), 8);
    MEMORY[0x29C2945E0](*(i - 64), 8);
    v13 = *(i - 72);
    *(i - 72) = 0;
    if (v13)
    {
      sub_298B07DB0((v13 + 28));
      MEMORY[0x29C2945F0](v13, 0x1020C40CE35E8ABLL);
    }
  }

  v14 = 0;
  v15 = 0;
  v16 = (a4 >> 1) & 1;
  a1[26] = v11;
  __p = 0;
  v31 = 0;
  v32 = 0;
  v17 = a1[9];
  *&v26 = &__p;
  v18 = sub_298B08244;
  v19 = *(v17 + 40);
  v20 = *(v17 + 48);
  if (v19 != v20)
  {
    do
    {
      v21 = v18;
      sub_298B06C6C(*(v19 + 56) + 112, v18, &v26);
      v18 = v21;
      v19 += 64;
    }

    while (v19 != v20);
    v15 = __p;
    v14 = v31;
  }

  LOBYTE(v26) = v9;
  BYTE1(v26) = v10;
  BYTE2(v26) = v16;
  *(&v26 + 3) = 0;
  *(&v26 + 1) = a2;
  v27 = 1;
  v28 = a3;
  v29 = 1;
  v22 = a1[13];
  if (!v22)
  {
    v23 = a1[9];
    v24 = *(v23 + 8);
    v25 = *(v23 + 88);
    operator new();
  }

  v33 = a1;
  sub_298BB613C(v15, 0xAAAAAAAAAAAAAAABLL * ((v14 - v15) >> 3), &v26, v22, 0, 0);
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }
}

unsigned __int16 *hwtrace_get_stacknode_metric(unsigned __int16 **a1, int a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(*a1 + 3) | (*(*a1 + 5) << 16);
  if ((v4 & 0x800000) == 0)
  {
    v5 = (v4 & 0x3FFFFF);
    if ((v4 & 0x400000) != 0)
    {
      goto LABEL_16;
    }

LABEL_7:
    v11 = (*v2 | (*(v2 + 2) << 16)) >> 2;
    if (a2 == 1)
    {
      return v5;
    }

    else
    {
      return v11;
    }
  }

  v6 = *v3;
  v7 = *(v3 + 4);
  if (v7)
  {
    LODWORD(v8) = (v7 - 1) & ((v2 >> 4) ^ (v2 >> 9));
    v9 = (v6 + 16 * v8);
    v10 = *v9;
    if (*v9 == v2)
    {
      v5 = v9[1];
      if ((v4 & 0x400000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }

    v13 = 1;
    while (v10 != -4096)
    {
      v14 = v8 + v13++;
      v8 = v14 & (v7 - 1);
      v10 = *(v6 + 16 * v8);
      if (v10 == v2)
      {
        v5 = *(v6 + 16 * v8 + 8);
        if ((v4 & 0x400000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_16;
      }
    }
  }

  v5 = *(v6 + 16 * v7 + 8);
  if ((v4 & 0x400000) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  v15 = *(v3 + 3);
  v16 = *(v3 + 10);
  if (v16)
  {
    LODWORD(v17) = (v16 - 1) & ((v2 >> 4) ^ (v2 >> 9));
    v18 = (v15 + 16 * v17);
    v19 = *v18;
    if (*v18 == v2)
    {
      if (a2 == 1)
      {
        return v5;
      }

      else
      {
        return v18[1];
      }
    }

    v20 = 1;
    while (v19 != -4096)
    {
      v21 = v17 + v20++;
      v17 = v21 & (v16 - 1);
      v19 = *(v15 + 16 * v17);
      if (v19 == v2)
      {
        if (a2 == 1)
        {
          return v5;
        }

        else
        {
          return *(v15 + 16 * v17 + 8);
        }
      }
    }
  }

  if (a2 == 1)
  {
    return v5;
  }

  else
  {
    return *(v15 + 16 * v16 + 8);
  }
}

uint64_t hwtrace_get_stacknode_pc(uint64_t a1)
{
  if ((**a1 & 3) == 1)
  {
    return (*(*a1 + 16) << 17) >> 15;
  }

  else
  {
    return 0;
  }
}

uint64_t hwtrace_get_stacknode_child_count(uint64_t a1)
{
  v1 = *(*a1 + 28);
  if (v1)
  {
    return *(v1 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t hwtrace_free_stacknode(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x29C2945F0);
  }

  return result;
}

uint64_t hwtrace_free_computed_callstacks(uint64_t result)
{
  v1 = result;
  v2 = *(result + 200);
  for (i = *(result + 208); i != v2; i -= 88)
  {
    MEMORY[0x29C2945E0](*(i - 40), 8);
    result = MEMORY[0x29C2945E0](*(i - 64), 8);
    v4 = *(i - 72);
    *(i - 72) = 0;
    if (v4)
    {
      sub_298B07DB0((v4 + 28));
      result = MEMORY[0x29C2945F0](v4, 0x1020C40CE35E8ABLL);
    }
  }

  *(v1 + 208) = v2;
  return result;
}

uint64_t *sub_298B06434(uint64_t **a1, _BYTE *a2, size_t a3)
{
  v8 = *a1;
  *a1 = 0;
  sub_298B851B0(&v8, &__p);
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
    size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  sub_298B064F0(p_p, size, a2, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    result = v8;
    if (!v8)
    {
      return result;
    }
  }

  else
  {
    result = v8;
    if (!v8)
    {
      return result;
    }
  }

  return (*(*result + 8))(result);
}

_BYTE *sub_298B064F0(_BYTE *a1, size_t a2, _BYTE *a3, size_t a4)
{
  v8 = sub_298B9CEA8();
  v9 = v8;
  v10 = v8[4];
  if (v8[3] - v10 > 0xCuLL)
  {
    qmemcpy(v10, "fatal error: ", 13);
    v14 = v8[3];
    v11 = (v8[4] + 13);
    *(v9 + 32) = v11;
    if (a4 <= v14 - v11)
    {
LABEL_3:
      if (a4)
      {
        memcpy(v11, a3, a4);
        v11 = (*(v9 + 32) + a4);
        *(v9 + 32) = v11;
      }

      v12 = a4 != 0;
      if (*(v9 + 24) - v11 < v12)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else
  {
    sub_298B9BCEC(v8, "fatal error: ", 0xDuLL);
    v11 = *(v9 + 32);
    if (a4 <= *(v9 + 24) - v11)
    {
      goto LABEL_3;
    }
  }

  sub_298B9BCEC(v9, a3, a4);
  v11 = *(v9 + 32);
  v12 = a4 != 0;
  if (*(v9 + 24) - v11 < v12)
  {
LABEL_6:
    if (a4)
    {
      v13 = ":";
    }

    else
    {
      v13 = "";
    }

    sub_298B9BCEC(v9, v13, v12);
    goto LABEL_14;
  }

LABEL_12:
  if (a4)
  {
    v15 = v12;
    memcpy(v11, ":", v12);
    *(v9 + 32) += v15;
  }

LABEL_14:
  v16 = " ";
  if (a2)
  {
    v17 = memchr(a1, 10, a2);
    if (v17 - a1 != -1 && v17 != 0)
    {
      v16 = "\n";
    }
  }

  v19 = *(v9 + 32);
  if (*(v9 + 24) == v19)
  {
    sub_298B9BCEC(v9, v16, 1uLL);
    result = *(v9 + 32);
    if (a2 > *(v9 + 24) - result)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *v19 = *v16;
    v20 = *(v9 + 24);
    result = (*(v9 + 32) + 1);
    *(v9 + 32) = result;
    if (a2 > v20 - result)
    {
LABEL_22:
      sub_298B9BCEC(v9, a1, a2);
      result = *(v9 + 32);
      goto LABEL_26;
    }
  }

  if (a2)
  {
    memcpy(result, a1, a2);
    result = (*(v9 + 32) + a2);
    *(v9 + 32) = result;
  }

LABEL_26:
  if (*(v9 + 24) == result)
  {

    return sub_298B9BCEC(v9, "\n", 1uLL);
  }

  else
  {
    *result = 10;
    ++*(v9 + 32);
  }

  return result;
}

uint64_t *sub_298B06740(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_298B067E0(v2);
    MEMORY[0x29C2945F0](v4, 0x10E0C408B335C42);
    return v3;
  }

  return v1;
}

uint64_t sub_298B06794(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_298B067E0(result);

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

uint64_t sub_298B067E0(uint64_t a1)
{
  v2 = *(a1 + 104);
  v3 = *(a1 + 88);
  if (v2)
  {
    v4 = 16 * v2;
    v5 = (v3 + 8);
    do
    {
      if ((*(v5 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v6 = *v5;
        *v5 = 0;
        if (v6)
        {
          sub_298AE95D0((v6 + 8));
          sub_298AE9670((v6 + 8));
          MEMORY[0x29C2945E0](v6[5], 8);
          v7 = v6[2];
          if (v7)
          {
            v6[3] = v7;
            operator delete(v7);
          }

          MEMORY[0x29C2945F0](v6, 0x10B1C40E98BF481);
        }
      }

      v5 += 2;
      v4 -= 16;
    }

    while (v4);
    v3 = *(a1 + 88);
  }

  MEMORY[0x29C2945E0](v3, 8);
  std::mutex::~mutex((a1 + 24));
  return a1;
}

void sub_298B068B4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a1 + 88);
  v3 = *(*a1 + 96);
  if (v4 < v3)
  {
    *v4 = a2;
    *(v4 + 8) = 0u;
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0u;
    *(v4 + 72) = 0u;
    *(v4 + 88) = 0u;
    *(v4 + 104) = 0u;
    *(v4 + 120) = 0u;
    *(v4 + 136) = 0u;
    *(v4 + 152) = 0u;
    *(v4 + 168) = 0u;
    v5 = v4 + 200;
    *(v4 + 184) = 0u;
LABEL_3:
    v2[11] = v5;
    return;
  }

  v6 = v2[10];
  v7 = 0x8F5C28F5C28F5C29 * ((v4 - v6) >> 3) + 1;
  if (v7 > 0x147AE147AE147AELL)
  {
    sub_298ADDDA0();
  }

  v8 = 0x8F5C28F5C28F5C29 * ((v3 - v6) >> 3);
  if (2 * v8 > v7)
  {
    v7 = 2 * v8;
  }

  if (v8 >= 0xA3D70A3D70A3D7)
  {
    v9 = 0x147AE147AE147AELL;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (v9 <= 0x147AE147AE147AELL)
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v10 = 8 * ((v4 - v6) >> 3);
  *v10 = a2;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  *(v10 + 104) = 0u;
  *(v10 + 120) = 0u;
  *(v10 + 136) = 0u;
  *(v10 + 152) = 0u;
  *(v10 + 168) = 0u;
  *(v10 + 184) = 0u;
  v5 = v10 + 200;
  v11 = v10 - (v4 - v6);
  if (v6 != v4)
  {
    v12 = v6;
    v13 = v10 - (v4 - v6);
    do
    {
      *v13 = *v12;
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 8) = *(v12 + 1);
      *(v13 + 24) = v12[3];
      v12[1] = 0;
      v12[2] = 0;
      v12[3] = 0;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 32) = *(v12 + 2);
      *(v13 + 48) = v12[6];
      v12[4] = 0;
      v12[5] = 0;
      v12[6] = 0;
      *(v13 + 64) = 0;
      *(v13 + 72) = 0;
      *(v13 + 56) = *(v12 + 7);
      *(v13 + 72) = v12[9];
      v12[7] = 0;
      v12[8] = 0;
      v12[9] = 0;
      *(v13 + 88) = 0;
      *(v13 + 96) = 0;
      *(v13 + 80) = *(v12 + 5);
      *(v13 + 96) = v12[12];
      v12[10] = 0;
      v12[11] = 0;
      v12[12] = 0;
      *(v13 + 112) = 0;
      *(v13 + 120) = 0;
      *(v13 + 104) = *(v12 + 13);
      *(v13 + 120) = v12[15];
      v12[13] = 0;
      v12[14] = 0;
      v12[15] = 0;
      *(v13 + 136) = 0;
      *(v13 + 144) = 0;
      *(v13 + 128) = *(v12 + 8);
      *(v13 + 144) = v12[18];
      v12[16] = 0;
      v12[17] = 0;
      v12[18] = 0;
      *(v13 + 160) = 0;
      *(v13 + 168) = 0;
      *(v13 + 152) = *(v12 + 19);
      *(v13 + 168) = v12[21];
      v12[19] = 0;
      v12[20] = 0;
      v12[21] = 0;
      *(v13 + 184) = 0;
      *(v13 + 192) = 0;
      *(v13 + 176) = *(v12 + 11);
      *(v13 + 192) = v12[24];
      v12[22] = 0;
      v12[23] = 0;
      v12[24] = 0;
      v12 += 25;
      v13 += 200;
    }

    while (v12 != v4);
    while (1)
    {
      v14 = v6[22];
      if (v14)
      {
        v6[23] = v14;
        operator delete(v14);
        v15 = v6[19];
        if (!v15)
        {
LABEL_20:
          v16 = v6[16];
          if (!v16)
          {
            goto LABEL_21;
          }

          goto LABEL_29;
        }
      }

      else
      {
        v15 = v6[19];
        if (!v15)
        {
          goto LABEL_20;
        }
      }

      v6[20] = v15;
      operator delete(v15);
      v16 = v6[16];
      if (!v16)
      {
LABEL_21:
        v17 = v6[13];
        if (!v17)
        {
          goto LABEL_22;
        }

        goto LABEL_30;
      }

LABEL_29:
      v6[17] = v16;
      operator delete(v16);
      v17 = v6[13];
      if (!v17)
      {
LABEL_22:
        v18 = v6[10];
        if (!v18)
        {
          goto LABEL_23;
        }

        goto LABEL_31;
      }

LABEL_30:
      v6[14] = v17;
      operator delete(v17);
      v18 = v6[10];
      if (!v18)
      {
LABEL_23:
        v19 = v6[7];
        if (!v19)
        {
          goto LABEL_24;
        }

        goto LABEL_32;
      }

LABEL_31:
      v6[11] = v18;
      operator delete(v18);
      v19 = v6[7];
      if (!v19)
      {
LABEL_24:
        v20 = v6[4];
        if (v20)
        {
          goto LABEL_33;
        }

        goto LABEL_25;
      }

LABEL_32:
      v6[8] = v19;
      operator delete(v19);
      v20 = v6[4];
      if (v20)
      {
LABEL_33:
        v6[5] = v20;
        operator delete(v20);
        v21 = v6[1];
        if (!v21)
        {
          goto LABEL_17;
        }

LABEL_26:
        v6[2] = v21;
        operator delete(v21);
        goto LABEL_17;
      }

LABEL_25:
      v21 = v6[1];
      if (v21)
      {
        goto LABEL_26;
      }

LABEL_17:
      v6 += 25;
      if (v6 == v4)
      {
        v6 = v2[10];
        break;
      }
    }
  }

  v2[10] = v11;
  v2[11] = v5;
  v2[12] = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  v2[11] = v5;
}

uint64_t sub_298B06C6C(uint64_t result, void (*a2)(void, void), uint64_t a3)
{
  if ((*(result + 32) & 1) == 0)
  {
    v32 = a2;
    v33 = result;
    v34 = a3;
    sub_298AE75D4(result);
    result = v33;
    a3 = v34;
    a2 = v32;
  }

  v3 = *(result + 40);
  if (v3)
  {
    v11 = result;
    v12 = a2;
    v13 = a3;
    a2(a3, v3);
    result = v11;
    a3 = v13;
    a2 = v12;
  }

  if ((*(result + 33) & 1) == 0)
  {
    v35 = a2;
    v36 = result;
    v37 = a3;
    sub_298AE75D4(result);
    result = v36;
    a3 = v37;
    a2 = v35;
  }

  v4 = *(result + 48);
  if (v4)
  {
    v14 = result;
    v15 = a2;
    v16 = a3;
    a2(a3, v4);
    result = v14;
    a3 = v16;
    a2 = v15;
  }

  if ((*(result + 34) & 1) == 0)
  {
    v38 = a2;
    v39 = result;
    v40 = a3;
    sub_298AE75D4(result);
    result = v39;
    a3 = v40;
    a2 = v38;
  }

  v5 = *(result + 56);
  if (v5)
  {
    v17 = result;
    v18 = a2;
    v19 = a3;
    a2(a3, v5);
    result = v17;
    a3 = v19;
    a2 = v18;
  }

  if ((*(result + 35) & 1) == 0)
  {
    v41 = a2;
    v42 = result;
    v43 = a3;
    sub_298AE75D4(result);
    result = v42;
    a3 = v43;
    a2 = v41;
  }

  v6 = *(result + 64);
  if (v6)
  {
    v20 = result;
    v21 = a2;
    v22 = a3;
    a2(a3, v6);
    result = v20;
    a3 = v22;
    a2 = v21;
  }

  if ((*(result + 36) & 1) == 0)
  {
    v44 = a2;
    v45 = result;
    v46 = a3;
    sub_298AE75D4(result);
    result = v45;
    a3 = v46;
    a2 = v44;
  }

  v7 = *(result + 72);
  if (v7)
  {
    v23 = result;
    v24 = a2;
    v25 = a3;
    a2(a3, v7);
    result = v23;
    a3 = v25;
    a2 = v24;
  }

  if ((*(result + 37) & 1) == 0)
  {
    v47 = a2;
    v48 = result;
    v49 = a3;
    sub_298AE75D4(result);
    result = v48;
    a3 = v49;
    a2 = v47;
  }

  v8 = *(result + 80);
  if (v8)
  {
    v26 = result;
    v27 = a2;
    v28 = a3;
    a2(a3, v8);
    result = v26;
    a3 = v28;
    a2 = v27;
  }

  if ((*(result + 38) & 1) == 0)
  {
    v50 = a2;
    v51 = result;
    v52 = a3;
    sub_298AE75D4(result);
    result = v51;
    a3 = v52;
    a2 = v50;
  }

  v9 = *(result + 88);
  if (v9)
  {
    v29 = result;
    v30 = a2;
    v31 = a3;
    a2(a3, v9);
    result = v29;
    a3 = v31;
    a2 = v30;
  }

  if ((*(result + 39) & 1) == 0)
  {
    v53 = a2;
    v54 = result;
    v55 = a3;
    sub_298AE75D4(result);
    result = v54;
    a3 = v55;
    a2 = v53;
  }

  v10 = *(result + 96);
  if (v10)
  {
    return (a2)(a3, v10);
  }

  return result;
}

void sub_298B06FA0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v17 = 0;
  v3 = v2 + 24 * *(a2 + 4);
  v5 = *(v3 + 8);
  v4 = v3 + 8;
  *(v4 + 8) = v5;
  (*(**(a2 + 432) + 24))(&v16);
  v6 = v16;
  v7 = *(*(v16 + 328) + 8);
  if (!v7)
  {
    v16 = 0;
    goto LABEL_15;
  }

  v8 = 0;
  for (i = 0; i != v7; ++i)
  {
    v11 = *(v6 + 24);
    if (v11 > i)
    {
      v10 = *(v6 + 64);
      if (v10 <= i)
      {
        v11 = i - v10 + 1;
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_6;
    }

    if (*(v6 + 32) + v11 <= i)
    {
      v15 = *(v6 + 64);
      v11 = i;
LABEL_6:
      *(v6 + 48) = *(v6 + 40);
      v12 = *(v6 + 16);
      (*(**(v6 + 8) + 32))(*(v6 + 8), v11);
      v13 = *(v6 + 40);
      v14 = 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 48) - v13) >> 2);
      *(v6 + 24) = v11;
      *(v6 + 32) = v14;
      goto LABEL_7;
    }

    v13 = *(v6 + 40);
LABEL_7:
    v17 += *(v13 - 12 * v11 + v8) >> 47;
    sub_298AFB228(v4, &v17);
    v8 += 12;
  }

  v6 = v16;
  v16 = 0;
  if (v6)
  {
LABEL_15:
    (*(*v6 + 8))(v6);
  }
}

uint64_t sub_298B07144(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 360) - *(a2 + 416) - (*(a2 + 368) + *(a2 + 376) + *(a2 + 392) + *(a2 + 408));
  if ((v2 & ~(v2 >> 63)) / *(*(a2 + 432) + 8) <= 0.01)
  {
    return result;
  }

  v4 = result;
  v5 = sub_298B9CDFC();
  v6 = v5;
  v7 = v5[4];
  if ((v5[3] - v7) > 8)
  {
    *(v7 + 8) = 32;
    *v7 = *"Observed ";
    v5[4] += 9;
    if (v2 > 0xFFFFFFFFLL)
    {
LABEL_4:
      sub_298B8FEA0(v5, v2 & ~(v2 >> 63), 0, 0, 0);
      v8 = v6[4];
      if (v6[3] - v8 > 0x1BuLL)
      {
        goto LABEL_5;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v5 = sub_298B9BCEC(v5, "Observed ", 9uLL);
    if (v2 > 0xFFFFFFFFLL)
    {
      goto LABEL_4;
    }
  }

  sub_298B8FC48(v5, v2 & ~(v2 >> 63), 0, 0, 0);
  v8 = v6[4];
  if (v6[3] - v8 > 0x1BuLL)
  {
LABEL_5:
    qmemcpy(v8, " excess decoding desyncs on ", 28);
    v6[4] += 28;
    v9 = *(*(*v4 + 5) + 32) - 1;
    if (v9 > 3)
    {
      goto LABEL_6;
    }

LABEL_11:
    v11 = qword_298CF79B0[v9];
    v10 = off_29EEB4A30[v9];
    v12 = v6[4];
    if (v11 <= v6[3] - v12)
    {
      goto LABEL_7;
    }

LABEL_12:
    sub_298B9BCEC(v6, v10, v11);
    goto LABEL_13;
  }

LABEL_10:
  sub_298B9BCEC(v6, " excess decoding desyncs on ", 0x1CuLL);
  v9 = *(*(*v4 + 5) + 32) - 1;
  if (v9 <= 3)
  {
    goto LABEL_11;
  }

LABEL_6:
  v10 = "E";
  v11 = 1;
  v12 = v6[4];
  if (v6[3] == v12)
  {
    goto LABEL_12;
  }

LABEL_7:
  memcpy(v12, v10, v11);
  v6[4] += v11;
LABEL_13:
  sub_298B8FC48(v6, *(*(*v4 + 5) + 4), 0, 0, 0);
  v13 = v6[4];
  if ((v6[3] - v13) > 5)
  {
    *(v13 + 4) = 8293;
    *v13 = 1919894304;
    v6[4] += 6;
  }

  else
  {
    sub_298B9BCEC(v6, " Core ", 6uLL);
  }

  result = sub_298B8FC48(v6, *(a2 + 4), 0, 0, 0);
  v14 = v6[4];
  if (v6[3] - v14 > 1uLL)
  {
    *v14 = 2606;
    v6[4] += 2;
  }

  else
  {
    result = sub_298B9BCEC(v6, ".\n", 2uLL);
  }

  *v4[1] = 1;
  return result;
}

uint64_t sub_298B07410(uint64_t a1, uint64_t a2)
{
  v40 = *(a2 + 4);
  v4 = *(a2 + 360);
  v5 = *(a2 + 368);
  v6 = *(a2 + 376);
  v7 = *(a2 + 392);
  v8 = *(a2 + 408);
  v9 = *(a2 + 416);
  v10 = sub_298B9CDFC();
  v11 = v10;
  v12 = *(*(*a1 + 40) + 32) - 1;
  if (v12 > 3)
  {
    v14 = "E";
    v13 = 1;
    v15 = v5 + v6;
    v16 = v7 + v8;
    v17 = v10[4];
    if (v11[3] != v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = qword_298CF79B0[v12];
    v14 = off_29EEB4A30[v12];
    v15 = v5 + v6;
    v16 = v7 + v8;
    v17 = v10[4];
    if (v13 <= v11[3] - v17)
    {
LABEL_3:
      memcpy(v17, v14, v13);
      v11[4] += v13;
      goto LABEL_6;
    }
  }

  sub_298B9BCEC(v11, v14, v13);
LABEL_6:
  v18 = v4 - v9;
  sub_298B8FC48(v11, *(*(*a1 + 40) + 4), 0, 0, 0);
  v19 = v11[4];
  if ((v11[3] - v19) > 5)
  {
    *(v19 + 4) = 21840;
    *v19 = 1126187040;
    v11[4] += 6;
  }

  else
  {
    sub_298B9BCEC(v11, " @ CPU", 6uLL);
  }

  v20 = v18 - (v15 + v16);
  sub_298B8FC48(v11, v40, 0, 0, 0);
  v21 = v11[4];
  if (v11[3] - v21 > 1uLL)
  {
    *v21 = 8250;
    v38 = v11[3];
    v22 = (v11[4] + 2);
    v11[4] = v22;
    v23 = v20 & ~(v20 >> 63);
    if ((v38 - v22) > 0xF)
    {
LABEL_11:
      *v22 = *"[ExcessDesyncs: ";
      v11[4] += 16;
      v24 = v11;
      if (v20 > 0xFFFFFFFFLL)
      {
        goto LABEL_12;
      }

      goto LABEL_25;
    }
  }

  else
  {
    sub_298B9BCEC(v11, ": ", 2uLL);
    v22 = v11[4];
    v23 = v20 & ~(v20 >> 63);
    if (v11[3] - v22 > 0xFuLL)
    {
      goto LABEL_11;
    }
  }

  v24 = sub_298B9BCEC(v11, "[ExcessDesyncs: ", 0x10uLL);
  if (v20 > 0xFFFFFFFFLL)
  {
LABEL_12:
    sub_298B8FEA0(v24, v23, 0, 0, 0);
    v25 = v11[4];
    if (v11[3] - v25 > 1uLL)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  sub_298B8FC48(v24, v23, 0, 0, 0);
  v25 = v11[4];
  if (v11[3] - v25 > 1uLL)
  {
LABEL_13:
    *v25 = 8285;
    v26 = v11[3];
    v27 = (v11[4] + 2);
    v11[4] = v27;
    if ((v26 - v27) > 6)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_26:
  sub_298B9BCEC(v11, "] ", 2uLL);
  v27 = v11[4];
  if (v11[3] - v27 > 6uLL)
  {
LABEL_14:
    *(v27 + 3) = 540701552;
    *v27 = 1885423451;
    v11[4] += 7;
    v28 = *(a2 + 360);
    v29 = v11;
    if (HIDWORD(v28))
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

LABEL_27:
  v29 = sub_298B9BCEC(v11, "[Gaps: ", 7uLL);
  v28 = *(a2 + 360);
  if (HIDWORD(v28))
  {
LABEL_15:
    sub_298B8FEA0(v29, v28, 0, 0, 0);
    v30 = v11[4];
    if (v11[3] - v30 > 1uLL)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_298B8FC48(v29, v28, 0, 0, 0);
  v30 = v11[4];
  if (v11[3] - v30 > 1uLL)
  {
LABEL_16:
    *v30 = 8285;
    v31 = v11[3];
    v32 = (v11[4] + 2);
    v11[4] = v32;
    if ((v31 - v32) > 0x17)
    {
      goto LABEL_17;
    }

    goto LABEL_30;
  }

LABEL_29:
  sub_298B9BCEC(v11, "] ", 2uLL);
  v32 = v11[4];
  if (v11[3] - v32 > 0x17uLL)
  {
LABEL_17:
    qmemcpy(v32, "[NumMissingInstruction: ", 24);
    v11[4] += 24;
    v33 = *(a2 + 368);
    v34 = v11;
    if (HIDWORD(v33))
    {
      goto LABEL_18;
    }

    goto LABEL_31;
  }

LABEL_30:
  v34 = sub_298B9BCEC(v11, "[NumMissingInstruction: ", 0x18uLL);
  v33 = *(a2 + 368);
  if (HIDWORD(v33))
  {
LABEL_18:
    result = sub_298B8FEA0(v34, v33, 0, 0, 0);
    v36 = v11[4];
    if (v11[3] == v36)
    {
      goto LABEL_19;
    }

LABEL_32:
    *v36 = 93;
    v39 = v11[3];
    v37 = (v11[4] + 1);
    v11[4] = v37;
    if (v39 == v37)
    {
      goto LABEL_20;
    }

LABEL_33:
    *v37 = 10;
    ++v11[4];
    return result;
  }

LABEL_31:
  result = sub_298B8FC48(v34, v33, 0, 0, 0);
  v36 = v11[4];
  if (v11[3] != v36)
  {
    goto LABEL_32;
  }

LABEL_19:
  result = sub_298B9BCEC(v11, "]", 1uLL);
  v37 = v11[4];
  if (v11[3] != v37)
  {
    goto LABEL_33;
  }

LABEL_20:

  return sub_298B9BCEC(v11, "\n", 1uLL);
}

uint64_t sub_298B078C0(uint64_t a1, uint64_t a2, int a3)
{
  if (0x8F5C28F5C28F5C29 * ((a2 - a1) >> 3) <= a3)
  {
    v6 = a3;
    v7 = sub_298B9A258();
    v8 = sub_298B00584(v7, "Cluster index ");
    v9 = sub_298B06C38(v8, v6);
    sub_298B00584(v9, " out of bounds");
    abort();
  }

  v3 = HIWORD(a3);
  v4 = *(*(a1 + 200 * a3) + 56);
  if (*(v4 + HIWORD(a3) + 144))
  {
    return *(v4 + 8 * HIWORD(a3) + 152);
  }

  sub_298AE75D4(v4 + 112);
  return *(v4 + 8 * v3 + 152);
}

void sub_298B07988(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    sub_298ADDDA0();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_298B07AA8(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  v5 = *(a2 + 4);
  if (*(*(a1 + 8) + 4) == v5 + 8 * v4)
  {
    v6 = **(a1 + 16);
LABEL_7:
    v12 = v6 + 1;
    v13 = a2 + 336;
    v14 = *(a1 + 40);
    v15 = *(v14 + 8);
    v16 = *(v14 + 16);
    if (v15 >= v16)
    {
      v18 = *v14;
      v19 = 0xAAAAAAAAAAAAAAABLL * (&v15[-*v14] >> 3);
      v20 = v19 + 1;
      if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_298ADDDA0();
      }

      v21 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v18) >> 3);
      if (2 * v21 > v20)
      {
        v20 = 2 * v21;
      }

      if (v21 >= 0x555555555555555)
      {
        v22 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        if (v22 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_298ADDDA0();
      }

      v23 = (8 * (&v15[-*v14] >> 3));
      *v23 = v13;
      v23[1] = 0;
      v23[2] = v12;
      v17 = 24 * v19 + 24;
      v24 = v23 - (v15 - v18);
      memcpy(v24, v18, v15 - v18);
      *v14 = v24;
      *(v14 + 8) = v17;
      *(v14 + 16) = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v15 = v13;
      *(v15 + 1) = 0;
      v17 = (v15 + 24);
      *(v15 + 2) = v12;
    }

    *(v14 + 8) = v17;
    return;
  }

  v7 = **(a1 + 32);
  v8 = sub_298B078C0(*(*(a1 + 24) + 80), *(*(a1 + 24) + 88), v4 | (v5 << 16));
  (*(**(v8 + 432) + 24))(&v25);
  v6 = sub_298BFC9BC(v25, v7, 1);
  v10 = v9;
  v11 = v25;
  v25 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  if ((v10 & 1) != 0 && v6 != -1)
  {
    goto LABEL_7;
  }
}

void sub_298B07CA0(uint64_t *a1, uint64_t a2, __n128 a3)
{
  a3.n128_u64[0] = 0;
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  v6 = *(a2 + 40);
  *(a2 + 40) = 0;
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  *(a2 + 48) = a3;
  v9 = *(a2 + 64);
  *(a2 + 64) = 0;
  v12 = *(a2 + 72);
  v10 = *a1;
  *v10 = *a2;
  v11 = *(v10 + 16);
  *(v10 + 16) = v3;
  if (v11)
  {
    sub_298B07DB0((v11 + 28));
    MEMORY[0x29C2945F0](v11, 0x1020C40CE35E8ABLL);
  }

  MEMORY[0x29C2945E0](*(v10 + 24), 8);
  *(v10 + 24) = v4;
  *(v10 + 32) = v5;
  *(v10 + 40) = v6;
  MEMORY[0x29C2945E0](*(v10 + 48), 8);
  *(v10 + 48) = v7;
  *(v10 + 56) = v8;
  *(v10 + 64) = v9;
  *(v10 + 72) = v12;
  MEMORY[0x29C2945E0](0, 8);

  JUMPOUT(0x29C2945E0);
}

char ***sub_298B07DB0(char ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *v2;
    v4 = *(v2 + 2);
    if (v4)
    {
      v5 = 8 * v4;
      v6 = v3 - 8;
      do
      {
        v7 = *&v6[v5];
        *&v6[v5] = 0;
        if (v7)
        {
          sub_298B07DB0(v7 + 28);
          MEMORY[0x29C2945F0](v7, 0x1020C40CE35E8ABLL);
        }

        v5 -= 8;
      }

      while (v5);
      v3 = *v2;
    }

    if (v3 != (v2 + 2))
    {
      free(v3);
    }

    MEMORY[0x29C2945F0](v2, 0x1080C40ABB4582ELL);
  }

  return a1;
}

uint64_t sub_298B07E70(uint64_t *a1, __int128 *a2)
{
  v20 = *a2;
  v2 = *(a2 + 2);
  v3 = *(a2 + 3);
  v21 = v2;
  v22 = v3;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v4 = *(a2 + 8);
  v5 = *(a2 + 9);
  v23 = v4;
  v24 = v5;
  *(a2 + 4) = 0;
  v6 = *(a2 + 10);
  v25 = v6;
  *(a2 + 10) = 0;
  v7 = *(a2 + 6);
  v26 = v7;
  *(a2 + 6) = 0;
  v8 = *(a2 + 14);
  v9 = *(a2 + 15);
  v27 = v8;
  v28 = v9;
  *(a2 + 7) = 0;
  v10 = *(a2 + 16);
  v29 = v10;
  *(a2 + 16) = 0;
  v11 = *(a2 + 72);
  v30 = v11;
  v12 = *a1;
  v13 = *(*a1 + 208);
  if (v13 >= *(*a1 + 216))
  {
    v18 = sub_298B07FBC((v12 + 200), &v20, v11);
    v16 = v26;
    v14 = v21;
    v15 = v22;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = *a2;
    *(v13 + 16) = v2;
    *(v13 + 24) = v3;
    *v13 = v17;
    *(v13 + 32) = v4;
    *(v13 + 36) = v5;
    *(v13 + 40) = v6;
    *(v13 + 48) = v7;
    *(v13 + 56) = v8;
    *(v13 + 60) = v9;
    *(v13 + 64) = v10;
    v18 = v13 + 88;
    *(v13 + 72) = v30;
  }

  *(v12 + 208) = v18;
  MEMORY[0x29C2945E0](v16, 8);
  result = MEMORY[0x29C2945E0](v15, 8);
  if (v14)
  {
    sub_298B07DB0((v14 + 28));

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

uint64_t sub_298B07FBC(uint64_t *a1, uint64_t a2, __n128 a3)
{
  v3 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if ((v3 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_298ADDDA0();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x2E8BA2E8BA2E8BALL)
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  a3.n128_u64[0] = 0;
  v7 = *(a2 + 16);
  v8 = 8 * ((a1[1] - *a1) >> 3);
  *v8 = *a2;
  *(v8 + 16) = v7;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(v8 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(v8 + 48) = *(a2 + 48);
  v9 = *(a2 + 56);
  *(a2 + 48) = a3;
  *(v8 + 56) = v9;
  *(v8 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(v8 + 72) = *(a2 + 72);
  v10 = *a1;
  v11 = a1[1];
  v12 = 88 * v3 + *a1 - v11;
  if (*a1 != v11)
  {
    v13 = *a1;
    v14 = 88 * v3 + *a1 - v11;
    do
    {
      *v14 = *v13;
      v15 = v13[2];
      v13[2] = 0;
      *(v14 + 16) = v15;
      *(v14 + 32) = 0;
      *(v14 + 40) = 0;
      *(v14 + 24) = v13[3];
      v13[3] = 0;
      *(v14 + 32) = *(v13 + 8);
      *(v13 + 8) = 0;
      LODWORD(v15) = *(v14 + 36);
      *(v14 + 36) = *(v13 + 9);
      *(v13 + 9) = v15;
      LODWORD(v15) = *(v14 + 40);
      *(v14 + 40) = *(v13 + 10);
      *(v13 + 10) = v15;
      *(v14 + 64) = 0;
      *(v14 + 56) = 0;
      *(v14 + 48) = v13[6];
      v13[6] = 0;
      *(v14 + 56) = *(v13 + 14);
      *(v13 + 14) = 0;
      LODWORD(v15) = *(v14 + 60);
      *(v14 + 60) = *(v13 + 15);
      *(v13 + 15) = v15;
      LODWORD(v15) = *(v14 + 64);
      *(v14 + 64) = *(v13 + 16);
      *(v13 + 16) = v15;
      *(v14 + 72) = *(v13 + 9);
      v13 += 11;
      v14 += 88;
    }

    while (v13 != v11);
    do
    {
      MEMORY[0x29C2945E0](v10[6], 8);
      MEMORY[0x29C2945E0](v10[3], 8);
      v16 = v10[2];
      v10[2] = 0;
      if (v16)
      {
        sub_298B07DB0((v16 + 28));
        MEMORY[0x29C2945F0](v16, 0x1020C40CE35E8ABLL);
      }

      v10 += 11;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = 88 * v3 + 88;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return 88 * v3 + 88;
}

void sub_298B08244(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + 336;
  v4 = *(*(a2 + 432) + 8);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (v5 < v6)
  {
    *v5 = v3;
    *(v5 + 1) = 0;
    v7 = (v5 + 24);
    *(v5 + 2) = v4;
LABEL_3:
    *(v2 + 8) = v7;
    return;
  }

  v8 = *v2;
  v9 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*v2] >> 3);
  v10 = v9 + 1;
  if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_298ADDDA0();
  }

  v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v8) >> 3);
  if (2 * v11 > v10)
  {
    v10 = 2 * v11;
  }

  if (v11 >= 0x555555555555555)
  {
    v12 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (v12 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v13 = (8 * (&v5[-*v2] >> 3));
  *v13 = v3;
  v13[1] = 0;
  v13[2] = v4;
  v7 = 24 * v9 + 24;
  v14 = (24 * v9 - (v5 - v8));
  memcpy(v14, v8, v5 - v8);
  *v2 = v14;
  *(v2 + 8) = v7;
  *(v2 + 16) = 0;
  if (!v8)
  {
    goto LABEL_3;
  }

  operator delete(v8);
  *(v2 + 8) = v7;
}

uint64_t sub_298B08384(uint64_t *a1, __int128 *a2)
{
  v20 = *a2;
  v2 = *(a2 + 2);
  v3 = *(a2 + 3);
  v21 = v2;
  v22 = v3;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v4 = *(a2 + 8);
  v5 = *(a2 + 9);
  v23 = v4;
  v24 = v5;
  *(a2 + 4) = 0;
  v6 = *(a2 + 10);
  v25 = v6;
  *(a2 + 10) = 0;
  v7 = *(a2 + 6);
  v26 = v7;
  *(a2 + 6) = 0;
  v8 = *(a2 + 14);
  v9 = *(a2 + 15);
  v27 = v8;
  v28 = v9;
  *(a2 + 7) = 0;
  v10 = *(a2 + 16);
  v29 = v10;
  *(a2 + 16) = 0;
  v11 = *(a2 + 72);
  v30 = v11;
  v12 = *a1;
  v13 = *(*a1 + 208);
  if (v13 >= *(*a1 + 216))
  {
    v18 = sub_298B07FBC((v12 + 200), &v20, v11);
    v16 = v26;
    v14 = v21;
    v15 = v22;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = *a2;
    *(v13 + 16) = v2;
    *(v13 + 24) = v3;
    *v13 = v17;
    *(v13 + 32) = v4;
    *(v13 + 36) = v5;
    *(v13 + 40) = v6;
    *(v13 + 48) = v7;
    *(v13 + 56) = v8;
    *(v13 + 60) = v9;
    *(v13 + 64) = v10;
    v18 = v13 + 88;
    *(v13 + 72) = v30;
  }

  *(v12 + 208) = v18;
  MEMORY[0x29C2945E0](v16, 8);
  result = MEMORY[0x29C2945E0](v15, 8);
  if (v14)
  {
    sub_298B07DB0((v14 + 28));

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

uint64_t sub_298B084D0(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 6);
  v3 = v2 + 1;
  if (v2 + 1 > 0x155555555555555)
  {
    sub_298ADDDA0();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 6) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 6);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 6) >= 0xAAAAAAAAAAAAAALL)
  {
    v5 = 0x155555555555555;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x155555555555555)
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v6 = (a1[1] - *a1) >> 6 << 6;
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v7 = *(a2 + 80);
  *(v6 + 64) = *(a2 + 64);
  *(v6 + 80) = v7;
  *(v6 + 95) = *(a2 + 95);
  v8 = *(a2 + 48);
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = v8;
  *(192 * v2 + 0x68) = 0;
  *(v6 + 128) = 0;
  if (*(a2 + 128) == 1)
  {
    *(192 * v2 + 0x68) = *(a2 + 104);
    *(192 * v2 + 0x78) = *(a2 + 120);
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    *(a2 + 104) = 0;
    *(192 * v2 + 0x80) = 1;
  }

  *(192 * v2 + 0x88) = *(a2 + 136);
  *(192 * v2 + 0x98) = *(a2 + 152);
  v9 = *(a2 + 160);
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  v10 = *(a2 + 176);
  v11 = *(a2 + 184);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(192 * v2 + 0xB0) = v10;
  *(192 * v2 + 0xB8) = v11;
  v12 = v6 + 192;
  v13 = *a1;
  v14 = a1[1];
  v15 = v6 + *a1 - v14;
  *(v6 + 160) = v9;
  sub_298B08664(a1, v13, v14, v15);
  v16 = *a1;
  *a1 = v15;
  a1[1] = v12;
  a1[2] = 0;
  if (v16)
  {
    operator delete(v16);
  }

  return v12;
}

void sub_298B08664(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = (a2 + 13);
    v7 = a4 + 104;
    do
    {
      v10 = v6 - 13;
      *(v7 - 104) = *(v6 - 13);
      v11 = *(v6 - 6);
      *(v7 - 80) = *(v6 - 10);
      *(v7 - 96) = v11;
      v10[2] = 0;
      v10[3] = 0;
      v10[1] = 0;
      *(v7 - 72) = *(v6 - 72);
      v12 = *(v6 - 56);
      v13 = *(v6 - 40);
      v14 = *(v6 - 24);
      *(v7 - 9) = *(v6 - 9);
      *(v7 - 24) = v14;
      *(v7 - 40) = v13;
      *(v7 - 56) = v12;
      *v7 = 0;
      *(v7 + 24) = 0;
      if (*(v6 + 24) == 1)
      {
        v15 = *v6;
        *(v7 + 16) = *(v6 + 2);
        *v7 = v15;
        *(v6 + 1) = 0;
        *(v6 + 2) = 0;
        *v6 = 0;
        *(v7 + 24) = 1;
      }

      v8 = *(v6 + 6);
      *(v7 + 32) = v6[2];
      *(v7 + 48) = v8;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      *(v7 + 56) = *(v6 + 56);
      v9 = *(v6 + 10);
      *(v7 + 72) = *(v6 + 9);
      *(v6 + 7) = 0;
      *(v6 + 8) = 0;
      *(v6 + 9) = 0;
      *(v6 + 10) = 0;
      *(v7 + 80) = v9;
      v6 += 12;
      v7 += 192;
    }

    while (v10 + 24 != a3);
    while (1)
    {
      v17 = v5[23];
      v5[23] = 0;
      if (v17)
      {
        (*(*v17 + 16))(v17);
        v16 = v5[20];
        if (v16)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v16 = v5[20];
        if (v16)
        {
LABEL_7:
          v5[21] = v16;
          operator delete(v16);
          if (*(v5 + 128) == 1)
          {
            goto LABEL_13;
          }

          goto LABEL_15;
        }
      }

      if (*(v5 + 128) == 1)
      {
LABEL_13:
        if (*(v5 + 127) < 0)
        {
          operator delete(v5[13]);
        }
      }

LABEL_15:
      if (*(v5 + 31) < 0)
      {
        operator delete(v5[1]);
        v5 += 24;
        if (v5 == a3)
        {
          return;
        }
      }

      else
      {
        v5 += 24;
        if (v5 == a3)
        {
          return;
        }
      }
    }
  }
}

uint64_t sub_298B0880C(uint64_t a1, __n128 *a2, void *a3, unsigned int *a4, unint64_t a5, uint64_t a6)
{
  v167[20] = *MEMORY[0x29EDCA608];
  *a3 = 0;
  if (a5 >= 4)
  {
    v8 = 0;
    *a3 = 4;
    v9 = *a4;
    while (1)
    {
      v10 = 0;
      v161 = v8;
      v11 = *(&off_29EEB4A50 + v8);
      v12 = *(a1 + 16);
      v13 = 3;
      v14 = v11;
      v15 = *v11;
      if (v15 == 2)
      {
LABEL_6:
        v16 = 0;
        v17 = 0;
        v18 = (v14 + 1);
        while (1)
        {
          v19 = *v18;
          v20 = *v18 & 0x7F;
          if (v17 >= 0x3F)
          {
            v89 = v20 > 1;
            if (v17 != 63)
            {
              v89 = v20 != 0;
            }

            if (v89)
            {
              break;
            }
          }

          v16 += v20 << v17;
          v17 += 7;
          ++v18;
          if ((v19 & 0x80) == 0)
          {
            goto LABEL_9;
          }
        }

        v16 = 0;
LABEL_9:
        v21 = &v14[v18 - (v14 + 1) + 1];
        v14 = v21 + 3;
        if (v16 != v10)
        {
          v22 = *v21;
          v23 = v21[2];
LABEL_11:
          v14 += v22 | (v23 << 16);
          goto LABEL_5;
        }

        goto LABEL_5;
      }

      while (v15 < 5)
      {
        switch(v15)
        {
          case 1:
            v24 = 0;
            v25 = 0;
            v26 = (v14 + 1);
            while (1)
            {
              v27 = *v26;
              v28 = *v26 & 0x7F;
              if (v25 >= 0x3F)
              {
                v90 = v28 > 1;
                if (v25 != 63)
                {
                  v90 = v28 != 0;
                }

                if (v90)
                {
                  break;
                }
              }

              v24 += v28 << v25;
              v25 += 7;
              ++v26;
              if ((v27 & 0x80) == 0)
              {
                goto LABEL_17;
              }
            }

            LOBYTE(v24) = 0;
LABEL_17:
            v29 = &v14[v26 - (v14 + 1) + 1];
            v30 = *v29;
            v14 = v29 + 1;
            v31 = ~(-1 << v30) << v24;
            if (v30 == 32)
            {
              v32 = -1;
            }

            else
            {
              v32 = v31;
            }

            v10 = (v32 & v9) >> v24;
            v15 = *v14;
            if (v15 == 2)
            {
              goto LABEL_6;
            }

            break;
          case 4:
            v60 = 0;
            v61 = 0;
            v62 = 0;
            v63 = v14 + 1;
            while (1)
            {
              v64 = v63[v60];
              v65 = v64 & 0x7F;
              if (v62 >= 0x3F)
              {
                v106 = v65 > 1;
                if (v62 != 63)
                {
                  v106 = v65 != 0;
                }

                if (v106)
                {
                  break;
                }
              }

              v61 += v65 << v62;
              v62 += 7;
              ++v60;
              if ((v64 & 0x80) == 0)
              {
                v66 = &v63[v60];
                v67 = *v66;
                v68 = v66[1];
                v69 = v66 + 3;
                v70 = v66[2];
                v71 = *(v12 + 216);
                switch(v61)
                {
                  case 1:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_311;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((*(v12 + 232) & 0x4000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 2:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_311;
                    }

                    v126 = *(v12 + 232);
                    goto LABEL_375;
                  case 3:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_311;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((*(v12 + 232) & 0x10000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 4:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_311;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((*(v12 + 232) & 0x80000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 5:
                    v91 = v12;
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_302;
                    }

                    v127 = *(v12 + 232);
                    if ((v127 & 0x8000000) == 0)
                    {
                      goto LABEL_151;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((v127 & 0x40000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 6:
                    v91 = v12;
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_302;
                    }

                    if ((*(v12 + 235) & 4) != 0)
                    {
                      goto LABEL_236;
                    }

                    goto LABEL_151;
                  case 7:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_311;
                    }

                    v123 = *(v12 + 232);
                    if ((v123 & 0x4000000) != 0)
                    {
                      goto LABEL_311;
                    }

                    goto LABEL_249;
                  case 8:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_311;
                    }

                    v128 = *(v12 + 232);
                    goto LABEL_379;
                  case 9:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_311;
                    }

                    v129 = *(v12 + 232);
                    goto LABEL_411;
                  case 10:
                    v91 = v12;
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_302;
                    }

                    v130 = *(v12 + 232);
                    if ((v130 & 0x4000000) != 0)
                    {
                      goto LABEL_293;
                    }

                    goto LABEL_151;
                  case 11:
                    v91 = v12;
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_302;
                    }

                    v130 = *(v12 + 232);
                    if ((v130 & 0x8000000) == 0)
                    {
                      goto LABEL_151;
                    }

LABEL_293:
                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    v12 = v91;
                    if ((v130 & 0x400000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 12:
                    v91 = v12;
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_302;
                    }

                    if ((*(v12 + 235) & 4) != 0)
                    {
                      goto LABEL_364;
                    }

                    goto LABEL_151;
                  case 13:
                    v91 = v12;
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_302;
                    }

                    v122 = *(v12 + 232);
                    if ((v122 & 0x4000000) != 0)
                    {
                      goto LABEL_258;
                    }

                    goto LABEL_151;
                  case 14:
                    v91 = v12;
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_302;
                    }

                    v131 = *(v12 + 232);
                    if ((v131 & 0x4000000) == 0)
                    {
                      goto LABEL_151;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((v131 & 0x80000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 15:
                    v91 = v12;
                    if ((v71 & 0x40) != 0)
                    {
LABEL_302:
                      v12 = v91;
                      v14 = v69;
                      goto LABEL_5;
                    }

                    if ((*(v12 + 235) & 4) == 0)
                    {
LABEL_151:
                      v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                      v12 = v91;
                      goto LABEL_5;
                    }

LABEL_368:
                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    v12 = v91;
                    if ((v71 & 0x10000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 16:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_311;
                    }

                    v71 = *(v12 + 232);
                    if ((v71 & 0x40000000000) != 0)
                    {
                      goto LABEL_311;
                    }

                    goto LABEL_160;
                  case 17:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_311;
                    }

                    v123 = *(v12 + 232);
                    if ((v123 & 0x8000000) != 0)
                    {
                      goto LABEL_311;
                    }

                    goto LABEL_249;
                  case 18:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v71 = *(v12 + 232);
                    if ((v71 & 0x80000000000) == 0)
                    {
                      goto LABEL_160;
                    }

LABEL_311:
                    v14 = v69;
                    goto LABEL_5;
                  case 19:
                    v91 = v12;
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((*(v12 + 237) & 4) == 0)
                    {
                      goto LABEL_151;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((v71 & 0x800000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 20:
                    v91 = v12;
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((*(v12 + 234) & 0x4000200) != 0)
                    {
                      goto LABEL_314;
                    }

                    goto LABEL_151;
                  case 21:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((*(v12 + 232) & 0x40000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 22:
                    if ((v71 & 0x40) == 0)
                    {
                      v123 = *(v12 + 232);
                      if ((v123 & 0x2000000) == 0)
                      {
                        goto LABEL_249;
                      }
                    }

                    goto LABEL_143;
                  case 23:
                    v91 = v12;
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((*(v12 + 234) & 0x4000200) != 0)
                    {
                      goto LABEL_321;
                    }

                    goto LABEL_151;
                  case 24:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v71 = *(v12 + 232);
                    goto LABEL_325;
                  case 25:
                    v91 = v12;
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((*(v12 + 237) & 4) == 0)
                    {
                      goto LABEL_151;
                    }

LABEL_321:
                    v12 = v91;
                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((*(v91 + 224) & 0x100000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 26:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v124 = *(v12 + 232);
                    goto LABEL_419;
                  case 27:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((*(v12 + 232) & 0x200000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 28:
                    v91 = v12;
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((*(v12 + 234) & 0x8000400) == 0)
                    {
                      goto LABEL_151;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((*(v12 + 224) & 0x1000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 29:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((*(v12 + 232) & 0x800000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 30:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v71 = *(v12 + 232);
LABEL_339:
                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((v71 & 0x400000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 31:
                    v91 = v12;
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((*(v12 + 234) & 0x8000400) == 0)
                    {
                      goto LABEL_151;
                    }

LABEL_236:
                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    v12 = v91;
                    if ((v71 & 0x2000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 32:
                    v91 = v12;
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((v71 & 0x4000) == 0)
                    {
                      goto LABEL_151;
                    }

                    v125 = *(v12 + 232);
                    if ((v125 & 0x40000000000) != 0)
                    {
LABEL_404:
                      v12 = v91;
                      v14 = v69;
                      goto LABEL_5;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((v125 & 0x2000000) == 0)
                    {
                      goto LABEL_5;
                    }

                    goto LABEL_70;
                  case 33:
                    v91 = v12;
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    v132 = *(v12 + 232);
                    if ((v132 & 0x8000000000) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((v132 & 0x80000000000) == 0)
                    {
                      goto LABEL_151;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    v12 = v91;
                    if ((v71 & 0x80000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 34:
                    v91 = v12;
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    v133 = *(v12 + 232);
                    if ((v133 & 0x10000000000) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((v133 & 0x80000000000) != 0)
                    {
                      goto LABEL_187;
                    }

                    goto LABEL_151;
                  case 35:
                    v91 = v12;
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    v134 = *(v12 + 232);
                    if ((v134 & 0x20000000000) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((v134 & 0x80000000000) == 0)
                    {
                      goto LABEL_151;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    v12 = v91;
                    if ((v71 & 0x200000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 36:
                    v91 = v12;
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((v71 & 0x4000) == 0)
                    {
                      goto LABEL_151;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((*(v12 + 232) & 0x40000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 37:
                    v91 = v12;
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((*(v12 + 237) & 4) == 0)
                    {
                      goto LABEL_151;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((*(v12 + 224) & 0x40000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 38:
                    v91 = v12;
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((*(v12 + 237) & 4) == 0)
                    {
                      goto LABEL_151;
                    }

LABEL_314:
                    v12 = v91;
                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((*(v91 + 224) & 0x80000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 39:
                    v91 = v12;
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((*(v12 + 234) & 0x8000400) == 0)
                    {
                      goto LABEL_151;
                    }

LABEL_364:
                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    v12 = v91;
                    if ((v71 & 0x40000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 40:
                    v91 = v12;
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((*(v12 + 234) & 0x8000400) != 0)
                    {
                      goto LABEL_368;
                    }

                    goto LABEL_151;
                  case 41:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v123 = *(v12 + 232);
LABEL_249:
                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((v123 & 0x1000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 42:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((*(v12 + 224) & 0x200000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 43:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((*(v12 + 224) & 0x80000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 44:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v126 = *(v12 + 224);
LABEL_375:
                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((v126 & 0x20000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 45:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v128 = *(v12 + 224);
LABEL_379:
                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((v128 & 0x200000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 46:
                    if ((v71 & 0x40) == 0)
                    {
                      goto LABEL_454;
                    }

                    goto LABEL_143;
                  case 47:
                    v91 = v12;
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    v122 = *(v12 + 224);
                    if ((v122 & 0x40000000000000) == 0)
                    {
                      goto LABEL_151;
                    }

LABEL_258:
                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    v12 = v91;
                    if ((v122 & 0x200000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 48:
                    if ((v71 & 0x40) != 0 || (*(v12 + 228) & 2) != 0)
                    {
                      goto LABEL_143;
                    }

                    v71 = *(v12 + 232);
LABEL_160:
                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((v71 & 0x2000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 49:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((v71 & 0x200000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 50:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_70;
                    }

                    v91 = v12;
                    v92 = *(v12 + 224);
                    if ((v92 & 0x200000000) != 0)
                    {
                      goto LABEL_87;
                    }

                    goto LABEL_151;
                  case 51:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((v71 & 0x2000000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 52:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_70;
                    }

                    v91 = v12;
                    if ((*(v12 + 228) & 2) == 0)
                    {
                      goto LABEL_151;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((v71 & 0x400000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 53:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_70;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((v71 & 0x40000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 54:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_70;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((v71 & 0x100000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 55:
                    if ((v71 & 0x40) == 0)
                    {
                      goto LABEL_437;
                    }

                    goto LABEL_143;
                  case 56:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_70;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((*(v12 + 232) & 0x800000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 57:
                    if ((v71 & 0x40) == 0)
                    {
                      goto LABEL_415;
                    }

                    goto LABEL_143;
                  case 58:
                    v91 = v12;
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    v71 = *(v12 + 224);
                    if ((v71 & 0x200000000) == 0)
                    {
                      goto LABEL_151;
                    }

LABEL_187:
                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    v12 = v91;
                    if ((v71 & 0x100000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 59:
                    v91 = v12;
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((v71 & 0x2000000000) == 0)
                    {
                      goto LABEL_151;
                    }

                    v92 = *(v12 + 224);
                    if ((v92 & 0x200000000) == 0)
                    {
                      goto LABEL_151;
                    }

                    goto LABEL_87;
                  case 60:
                    v91 = v12;
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((*(v12 + 228) & 2) != 0)
                    {
                      goto LABEL_197;
                    }

                    goto LABEL_151;
                  case 61:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v71 = *(v12 + 224);
                    goto LABEL_394;
                  case 62:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v71 = *(v12 + 232);
LABEL_394:
                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((v71 & 0x1000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 63:
                    if ((v71 & 0x40) == 0)
                    {
                      goto LABEL_325;
                    }

                    goto LABEL_143;
                  case 64:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((*(v12 + 224) & 0x100000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 65:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((v71 & 0x10000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 66:
                    v91 = v12;
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((v71 & 0x2000000000) == 0)
                    {
                      goto LABEL_151;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((*(v12 + 224) & 0x200000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 67:
                    if ((v71 & 0x40) == 0)
                    {
                      goto LABEL_160;
                    }

                    goto LABEL_143;
                  case 68:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v71 = *(v12 + 224);
LABEL_325:
                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((v71 & 0x100000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 69:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((*(v12 + 224) & 0x1000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 70:
                    if ((v71 & 0x40) == 0)
                    {
                      goto LABEL_339;
                    }

                    goto LABEL_143;
                  case 71:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v71 = *(v12 + 232);
LABEL_454:
                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((v71 & 0x800000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 72:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((*(v12 + 240) & 0x40) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 73:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((*(v12 + 232) & 0x1000000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 74:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v71 = *(v12 + 240);
LABEL_445:
                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((v71 & 0x80) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 75:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v120 = *(v12 + 232);
                    goto LABEL_441;
                  case 76:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v71 = *(v12 + 224);
LABEL_437:
                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if (v71)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 77:
                    if ((v71 & 0x40) == 0)
                    {
                      goto LABEL_445;
                    }

                    goto LABEL_143;
                  case 78:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((*(v12 + 224) & 0x800) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 79:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((v71 & 0x8000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 80:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((*(v12 + 224) & 0x20000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 81:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((v71 & 0x8000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 82:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v124 = *(v12 + 224);
LABEL_419:
                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((v124 & 0x80000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 83:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v71 = *(v12 + 224);
LABEL_415:
                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((v71 & 0x80000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 84:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v129 = *(v12 + 224);
LABEL_411:
                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((v129 & 0x8000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 85:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v121 = *(v12 + 232);
                    goto LABEL_407;
                  case 86:
                    v91 = v12;
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((*(v12 + 239) & 1) == 0)
                    {
                      goto LABEL_151;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((v71 & 0x8000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 87:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v71 = *(v12 + 224);
LABEL_398:
                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((v71 & 0x800000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 88:
                    if ((v71 & 0x40) == 0)
                    {
                      goto LABEL_394;
                    }

                    goto LABEL_143;
                  case 89:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((*(v12 + 224) & 0x20000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 90:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_70;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((*(v12 + 224) & 0x40000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 91:
                    if ((v71 & 0x40) == 0)
                    {
                      goto LABEL_398;
                    }

                    goto LABEL_143;
                  case 92:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v120 = *(v12 + 224);
LABEL_441:
                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((v120 & 0x100000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 93:
                    v91 = v12;
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    v119 = *(v12 + 224);
                    if ((v119 & 0x8000000) == 0)
                    {
                      goto LABEL_151;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((v119 & 0x20000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 94:
                    v91 = v12;
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((*(v12 + 226) & 4) == 0)
                    {
                      goto LABEL_151;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((v71 & 0x800000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 95:
                    v91 = v12;
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    if ((*(v12 + 228) & 2) == 0 && (*(v12 + 235) & 2) == 0)
                    {
                      goto LABEL_151;
                    }

LABEL_197:
                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    v12 = v91;
                    if ((v71 & 0x4000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 96:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_143;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((*(v12 + 224) & 4) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 97:
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_70;
                    }

                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((*(v12 + 232) & 0x400000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 98:
                    v91 = v12;
                    if ((v71 & 0x40) != 0)
                    {
                      goto LABEL_404;
                    }

                    v92 = *(v12 + 224);
                    if ((v92 & 0x200000000) == 0 && (*(v12 + 235) & 2) == 0)
                    {
                      goto LABEL_151;
                    }

LABEL_87:
                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    v12 = v91;
                    if ((v92 & 4) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  case 99:
                    if ((v71 & 0x40) != 0)
                    {
LABEL_143:
                      v14 = v69;
                      goto LABEL_5;
                    }

                    v121 = *(v12 + 224);
LABEL_407:
                    v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
                    if ((v121 & 0x100000000000000) != 0)
                    {
                      goto LABEL_70;
                    }

                    goto LABEL_5;
                  default:
                    if ((v71 & 0x40) == 0)
                    {
                      goto LABEL_120;
                    }

                    goto LABEL_70;
                }
              }
            }

            v107 = &v63[v60];
            v69 = v107 + 3;
            if ((*(v12 + 216) & 0x40) != 0)
            {
              v14 = v107 + 3;
            }

            else
            {
              v67 = *v107;
              v68 = v107[1];
              v70 = v107[2];
LABEL_120:
              v14 = &v69[v67 | (v68 << 8) | (v70 << 16)];
              if ((*(v12 + 232) & 0x2000000) != 0)
              {
LABEL_70:
                v14 = v69;
              }
            }

            goto LABEL_5;
          case 3:
            v72 = 0;
            v73 = 0;
            v74 = (v14 + 1);
            while (1)
            {
              v75 = *v74;
              v76 = *v74 & 0x7F;
              if (v73 >= 0x3F)
              {
                v108 = v76 > 1;
                if (v73 != 63)
                {
                  v108 = v76 != 0;
                }

                if (v108)
                {
                  break;
                }
              }

              v72 += v76 << v73;
              v73 += 7;
              ++v74;
              if ((v75 & 0x80) == 0)
              {
                goto LABEL_61;
              }
            }

            LOBYTE(v72) = 0;
LABEL_61:
            v77 = 0;
            v78 = 0;
            v79 = &v14[v74 - (v14 + 1) + 1];
            v81 = *v79;
            v80 = v79 + 1;
            v82 = ~(-1 << v81) << v72;
            if (v81 == 32)
            {
              v83 = -1;
            }

            else
            {
              v83 = v82;
            }

            v84 = (v83 & v9) >> v72;
            v85 = v80;
            while (1)
            {
              v86 = *v85;
              v87 = *v85 & 0x7F;
              if (v78 >= 0x3F)
              {
                v109 = v87 > 1;
                if (v78 != 63)
                {
                  v109 = v87 != 0;
                }

                if (v109)
                {
                  break;
                }
              }

              v77 += v87 << v78;
              v78 += 7;
              ++v85;
              if ((v86 & 0x80) == 0)
              {
                goto LABEL_67;
              }
            }

            v77 = 0;
LABEL_67:
            v88 = &v80[v85 - v80];
            v14 = v88 + 3;
            if (v77 != v84)
            {
              v22 = *v88;
              v23 = v88[2];
              goto LABEL_11;
            }

LABEL_5:
            v15 = *v14;
            if (v15 == 2)
            {
              goto LABEL_6;
            }

            break;
          default:
            goto LABEL_460;
        }
      }

      if (v15 > 5)
      {
        if (v15 == 7)
        {
          v93 = 0;
          v94 = 0;
          v95 = (v14 + 1);
          while (1)
          {
            v96 = *v95;
            v97 = *v95 & 0x7F;
            if (v94 >= 0x3F)
            {
              v110 = v97 > 1;
              if (v94 != 63)
              {
                v110 = v97 != 0;
              }

              if (v110)
              {
                break;
              }
            }

            v93 += v97 << v94;
            v94 += 7;
            ++v95;
            if ((v96 & 0x80) == 0)
            {
              goto LABEL_93;
            }
          }

          v93 = 0;
LABEL_93:
          v98 = 0;
          v99 = 0;
          v100 = &v14[v95 - (v14 + 1) + 1];
          v101 = v100;
          while (1)
          {
            v102 = *v101;
            v103 = *v101 & 0x7F;
            if (v99 >= 0x3F)
            {
              v111 = v103 > 1;
              if (v99 != 63)
              {
                v111 = v103 != 0;
              }

              if (v111)
              {
                break;
              }
            }

            v98 += v103 << v99;
            v99 += 7;
            ++v101;
            if ((v102 & 0x80) == 0)
            {
              goto LABEL_96;
            }
          }

          LODWORD(v98) = 0;
LABEL_96:
          v14 = (v100 + (v101 - v100));
          if (v93 & v9 | v98 & ~v9)
          {
            v13 = 1;
          }

          else
          {
            v13 = v13;
          }

          goto LABEL_5;
        }

        v135 = v11;
        v160 = v12;
        if (v15 == 6)
        {
          v139 = v10;
          v140 = 0;
          v141 = 0;
          v142 = (v14 + 1);
          while (1)
          {
            v143 = *v142;
            v144 = *v142 & 0x7F;
            if (v141 >= 0x3F)
            {
              v155 = v144 > 1;
              if (v141 != 63)
              {
                v155 = v144 != 0;
              }

              if (v155)
              {
                break;
              }
            }

            v140 += v144 << v141;
            v141 += 7;
            ++v142;
            if ((v143 & 0x80) == 0)
            {
              goto LABEL_465;
            }
          }

          LODWORD(v140) = 0;
LABEL_465:
          v145 = 0;
          v146 = 0;
          v147 = &v14[v142 - (v14 + 1) + 1];
          v148 = v147;
          while (1)
          {
            v149 = *v148;
            v150 = *v148 & 0x7F;
            if (v146 >= 0x3F)
            {
              v156 = v150 > 1;
              if (v146 != 63)
              {
                v156 = v150 != 0;
              }

              if (v156)
              {
                break;
              }
            }

            v145 += v150 << v146;
            v146 += 7;
            ++v148;
            if ((v149 & 0x80) == 0)
            {
              goto LABEL_468;
            }
          }

          LODWORD(v145) = 0;
LABEL_468:
          v151 = (v147 + (v148 - v147));
          v159 = *v151;
          v14 = v151 + 3;
          v157 = v151[2];
          v158 = v151[1];
          v165 = 0u;
          v166[0] = v167;
          v166[1] = 0xA00000000;
          LODWORD(v165) = v140;
          v164 = 0;
          v152 = sub_298B0A438(v13, v145, v9, &v165, a6, a1, &v164);
          v153 = v164;
          if (v164 == 1)
          {
            v154 = v152;
            *a2 = v165;
            sub_298B1DCE0(&a2[1], v166);
            v163 = v154;
          }

          else
          {
            v14 += v159 | (v158 << 8) | (v157 << 16);
            v154 = 3;
          }

          if (v166[0] != v167)
          {
            free(v166[0]);
          }

          v13 = v154;
          v12 = v160;
          v10 = v139;
          v11 = v135;
          if ((v153 & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        else
        {
          if (v15 != 8)
          {
LABEL_460:
            v136 = v14 - v11;
            v137 = sub_298B9CEA8();
            v138 = sub_298B9B068(v137, v136);
            sub_298B00584(v138, ": Unexpected decode table opcode!\n");
          }

          v163 = 0;
        }
      }

      else
      {
        v33 = 0;
        v34 = 0;
        v35 = (v14 + 1);
        while (1)
        {
          v36 = *v35;
          v37 = *v35 & 0x7F;
          if (v34 >= 0x3F)
          {
            v105 = v37 > 1;
            if (v34 != 63)
            {
              v105 = v37 != 0;
            }

            if (v105)
            {
              break;
            }
          }

          v33 += v37 << v34;
          v34 += 7;
          ++v35;
          if ((v36 & 0x80) == 0)
          {
            goto LABEL_26;
          }
        }

        LODWORD(v33) = 0;
LABEL_26:
        v38 = 0;
        v39 = 0;
        v40 = &v14[v35 - (v14 + 1) + 1];
        while (1)
        {
          v41 = *v40;
          v42 = *v40 & 0x7F;
          if (v39 >= 0x3F)
          {
            v104 = v42 > 1;
            if (v39 != 63)
            {
              v104 = v42 != 0;
            }

            if (v104)
            {
              break;
            }
          }

          v38 += v42 << v39;
          v39 += 7;
          ++v40;
          if ((v41 & 0x80) == 0)
          {
            goto LABEL_29;
          }
        }

        LODWORD(v38) = 0;
LABEL_29:
        a2[1].n128_u32[2] = 0;
        a2->n128_u32[0] = v33;
        v163 = sub_298B0A438(v13, v38, v9, a2, a6, a1, &v165);
      }

      v43 = v9;
      v44 = a1;
      v45 = a2->n128_u32[0];
      v46 = (**(a1 + 40) - 32 * v45);
      if (v46[1])
      {
        break;
      }

LABEL_44:
      a1 = v44;
      v9 = v43;
      v57 = v163;
      if (v45 == 4388 || v45 == 6733)
      {
        sub_298B0A034(a2, *(a2[1].n128_u64[0] + 32), *(a2[1].n128_u64[0] + 40));
      }

      if (v163)
      {
        goto LABEL_48;
      }

      v8 = v161 + 8;
      if (v161 == 8)
      {
        goto LABEL_108;
      }
    }

    v47 = 0;
    v48 = -16;
    v49 = v46;
    v50 = 1;
    while (1)
    {
      v51 = &v49[16 * *v46 + 3 * v46[6]];
      v52 = *(v51 + 35);
      if (v52 != 2)
      {
        if (v52 == 13)
        {
          v112 = v50 - 1;
          v113 = a2[1].n128_u64[0];
          v114 = a2[1].n128_u32[2];
          v115 = a2[1].n128_u32[3];
          if (v50 - 1 == v114)
          {
            if (v114 >= v115)
            {
              sub_298B90A44(&a2[1], &a2[2], v50, 16);
              v112 = a2[1].n128_u32[2];
              v113 = a2[1].n128_u64[0];
            }

            *(v113 + 16 * v112) = xmmword_298CF79D0;
            ++a2[1].n128_u32[2];
          }

          else
          {
            if (v114 >= v115)
            {
              sub_298B90A44(&a2[1], &a2[2], v114 + 1, 16);
              v113 = a2[1].n128_u64[0];
              v114 = a2[1].n128_u32[2];
            }

            v116 = (v113 + v47);
            *(v113 + 16 * v114) = *(v113 + 16 * v114 - 16);
            v117 = a2[1].n128_u64[0];
            v118 = a2[1].n128_u32[2];
            if (v113 + v47 != v117 + 16 * v118 - 16)
            {
              memmove((v113 - v48), v116, v48 + v117 + 16 * a2[1].n128_u32[2] - v113);
              v118 = a2[1].n128_u32[2];
            }

            a2[1].n128_u32[2] = v118 + 1;
            *v116 = xmmword_298CF79D0;
          }
        }

        goto LABEL_34;
      }

      v54 = v51[16];
      if (v54 == 285)
      {
        v55 = a2[1].n128_u64[0];
        v56 = xmmword_298CF79E0;
        goto LABEL_43;
      }

      if (v54 == 288)
      {
        break;
      }

      if (v54 == 287)
      {
        v55 = a2[1].n128_u64[0];
        v56 = xmmword_298CF7A00;
LABEL_43:
        v165 = v56;
        sub_298B0A294(&a2[1], v55 + v47, &v165);
      }

LABEL_34:
      v47 += 16;
      v48 -= 16;
      v49 += 3;
      if (v50++ >= v46[1])
      {
        LODWORD(v45) = a2->n128_u32[0];
        goto LABEL_44;
      }
    }

    v55 = a2[1].n128_u64[0];
    v56 = xmmword_298CF79F0;
    goto LABEL_43;
  }

LABEL_108:
  v57 = 0;
LABEL_48:
  v58 = *MEMORY[0x29EDCA608];
  return v57;
}

uint64_t sub_298B0A034(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 24);
  if (v3 >= *(result + 28))
  {
    v5 = result;
    v6 = a2;
    v7 = a3;
    sub_298B90A44(result + 16, (result + 32), v3 + 1, 16);
    a2 = v6;
    a3 = v7;
    result = v5;
    LODWORD(v3) = *(v5 + 24);
  }

  v4 = (*(result + 16) + 16 * v3);
  *v4 = a2;
  v4[1] = a3;
  ++*(result + 24);
  return result;
}

void *sub_298B0A0B8()
{
  *(sub_298CEE78C() + 16) = sub_298B0A144;
  *(sub_298CEE7F8() + 16) = sub_298B0A144;
  *(sub_298CEE78C() + 31) = sub_298B0A1CC;
  *(sub_298CEE7F8() + 31) = sub_298B0A1CC;
  *(sub_298CEE864() + 16) = sub_298B0A144;
  *(sub_298CEE864() + 31) = sub_298B0A1CC;
  *(sub_298CEE8D0() + 16) = sub_298B0A144;
  *(sub_298CEE8D0() + 31) = sub_298B0A1CC;
  *(sub_298CEE948() + 16) = sub_298B0A144;
  result = sub_298CEE948();
  result[31] = sub_298B0A1CC;
  return result;
}

void sub_298B0A258(void *a1)
{
  sub_298B0A3C0(a1);

  JUMPOUT(0x29C2945F0);
}

__n128 sub_298B0A294(uint64_t a1, uint64_t a2, __n128 *a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 12);
  if (*a1 + 16 * v4 == a2)
  {
    result = *a3;
    if (v4 >= v5)
    {
      v13 = a1;
      v17 = *a3;
      sub_298B90A44(a1, (a1 + 16), v4 + 1, 16);
      result = v17;
      a1 = v13;
      v4 = *(v13 + 8);
      v3 = *v13;
    }

    *(v3 + 16 * v4) = result;
    ++*(a1 + 8);
  }

  else
  {
    v7 = a2 - v3;
    if (v4 >= v5)
    {
      v14 = a3;
      v15 = a1;
      v16 = a2 - v3;
      sub_298B90A44(a1, (a1 + 16), v4 + 1, 16);
      v7 = v16;
      a3 = v14;
      a1 = v15;
      v3 = *v15;
      v4 = *(v15 + 8);
    }

    v8 = (v3 + v7);
    *(v3 + 16 * v4) = *(v3 + 16 * v4 - 16);
    v9 = *(a1 + 8);
    v10 = *a1 + 16 * v9;
    if ((v10 - 16) != v8)
    {
      v11 = a1;
      v12 = a3;
      memmove(&v8[1], v8, v10 - 16 - v8);
      a3 = v12;
      a1 = v11;
      LODWORD(v9) = *(v11 + 8);
    }

    *(a1 + 8) = v9 + 1;
    result = *a3;
    *v8 = *a3;
  }

  return result;
}

void *sub_298B0A3C0(void *a1)
{
  *a1 = &unk_2A1F1BBF0;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    v4 = a1;
    MEMORY[0x29C2945F0](v2, 0x10F0C40CB53E019);
    a1 = v4;
  }

  return sub_298CEF3B8(a1);
}

uint64_t sub_298B0A438(uint64_t result, int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  *a7 = 1;
  switch(a2)
  {
    case 1:
      v631 = a3;
      v632 = word_298D19FAA[(a3 & 3) + 32];
      goto LABEL_513;
    case 2:
      v158 = a3;
      v159 = word_298D19FAA[(a3 & 1) + 16];
      v160 = a4;
      v161 = result;
      sub_298B0A034(a4, 1, v159);
      v162 = v161 & 3;
      if (!v162)
      {
        return 0;
      }

      v163 = v160;
      sub_298B0A034(v160, 1, v159);
      sub_298B0A034(v160, 1, word_298DFB41A[(v158 >> 10) & 7]);
      sub_298B0A034(v160, 1, word_298DFB41A[v158 >> 13]);
      v164 = v158;
      v165 = word_298DFC5CA[(v158 >> 5) & 0x1F];
      v166 = v160[6];
      if (v166 >= v160[7])
      {
        sub_298B90A44((v160 + 4), v160 + 8, v166 + 1, 16);
        v164 = v158;
        v163 = v160;
        LODWORD(v166) = v160[6];
      }

      v167 = (*(v163 + 2) + 16 * v166);
      *v167 = 1;
      v167[1] = v165;
      v168 = v163[7];
      v169 = v163[6] + 1;
      v163[6] = v169;
      v170 = word_298DFC5CA[HIWORD(v164) & 0x1F];
      result = v162;
      if (v169 >= v168)
      {
        sub_298B90A44((v163 + 4), v163 + 8, v169 + 1, 16);
        result = v162;
        v163 = v160;
        LODWORD(v169) = v160[6];
      }

      v171 = (*(v163 + 2) + 16 * v169);
      *v171 = 1;
      v171[1] = v170;
      ++v163[6];
      return result;
    case 3:
      v631 = a3;
      v632 = word_298D19FAA[(a3 & 7) + 48];
LABEL_513:
      v633 = a4;
      v634 = result;
      sub_298B0A034(a4, 1, v632);
      v635 = v634 & 3;
      if (!v635)
      {
        return 0;
      }

      sub_298B0A034(v633, 1, v632);
      sub_298B0A034(v633, 1, word_298DFB41A[(v631 >> 10) & 7]);
      sub_298B0A034(v633, 1, word_298DFB41A[v631 >> 13]);
      sub_298B1A0DC(v633, (v631 >> 5) & 0x1F);
      v636 = HIWORD(v631) & 0x1F;
      goto LABEL_515;
    case 4:
      v819 = a3;
      v1180 = a3 & 0x1E;
      v1181 = word_298DFCDBC;
      goto LABEL_811;
    case 5:
      v819 = a3;
      v1180 = a3 & 0x1C;
      v1181 = word_298DFE670;
      goto LABEL_811;
    case 6:
      v1182 = a3;
      v1183 = a3 & 0x1E;
      v1184 = word_298DFCDBC;
      goto LABEL_815;
    case 7:
      v1182 = a3;
      v1183 = a3 & 0x1C;
      v1184 = word_298DFE670;
      goto LABEL_815;
    case 8:
      v819 = a3;
      v1180 = a3 & 7 | (8 * ((a3 >> 4) & 1));
      v1181 = &unk_298DFD006;
      goto LABEL_811;
    case 9:
      v819 = a3;
      v1180 = a3 & 3 | (4 * ((a3 >> 4) & 1));
      v1181 = word_298DFF1FA;
LABEL_811:
      v822 = a4;
      v1185 = result;
      sub_298B0A034(a4, 1, v1181[v1180]);
      v46 = v1185 & 3;
      if (!v46)
      {
        return 0;
      }

      v1186 = (v819 >> 10) & 7 | 8;
      v1187 = word_298DFB3E8;
      goto LABEL_1085;
    case 10:
      v1182 = a3;
      v1183 = a3 & 7 | (8 * ((a3 >> 4) & 1));
      v1184 = &unk_298DFD006;
      goto LABEL_815;
    case 11:
      v1182 = a3;
      v1183 = a3 & 3 | (4 * ((a3 >> 4) & 1));
      v1184 = word_298DFF1FA;
LABEL_815:
      v44 = a4;
      v1188 = result;
      sub_298B0A034(a4, 1, v1184[v1183]);
      v46 = v1188 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFB3E8[(v1182 >> 10) & 7 | 8]);
      sub_298B1A150(v44, (v1182 >> 5) & 0x1F);
      v47 = HIWORD(v1182) & 0xF;
      v48 = v47 | 0xFFFFFFFFFFFFFFF0;
      v49 = (v1182 & 0x80000) == 0;
      goto LABEL_40;
    case 12:
      v1189 = a3;
      v1190 = a4;
      v1191 = result;
      sub_298B0A034(a4, 1, word_298DFBA40[(a3 >> 13) & 3]);
      v1192 = v1191 & 3;
      if (!v1192)
      {
        return 0;
      }

      sub_298B0A034(v1190, 2, v1189 & 0xF);
      goto LABEL_1283;
    case 13:
      v1193 = a3;
      v914 = a4;
      v1194 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1194 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v914, v1193 & 0x1F);
      sub_298B0A034(v914, 1, word_298DFB41A[(v1193 >> 10) & 7]);
      sub_298B0A034(v914, 1, word_298DFBA40[(v1193 >> 13) & 3]);
      v50 = (v1193 >> 5) & 0xF;
      goto LABEL_700;
    case 14:
      v1195 = a3;
      v44 = a4;
      v1196 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1196 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFBA40[(v1195 >> 13) & 3]);
      v50 = (v1195 >> 5) & 0xF;
      goto LABEL_43;
    case 15:
      v1197 = a3;
      v1198 = (a3 >> 13) & 3;
      v1199 = word_298DFBA40;
      goto LABEL_827;
    case 16:
      v1200 = a3;
      v822 = a4;
      v1201 = result;
      sub_298B0A034(a4, 1, word_298DFBA40[(a3 >> 13) & 3]);
      v46 = v1201 & 3;
      if (!v46)
      {
        return 0;
      }

      v1202 = v1200 & 3;
      goto LABEL_831;
    case 17:
      v1197 = a3;
      v1198 = (a3 >> 13) & 3;
      v1199 = word_298DFBA64;
LABEL_827:
      v822 = a4;
      v1203 = result;
      sub_298B0A034(a4, 1, v1199[v1198]);
      v46 = v1203 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v822, 2, v1197 & 7);
      goto LABEL_1009;
    case 18:
      v1200 = a3;
      v822 = a4;
      v1204 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1204 & 3;
      if (!v46)
      {
        return 0;
      }

      v1202 = v1200 & 7;
LABEL_831:
      sub_298B0A034(v822, 2, v1202);
      goto LABEL_832;
    case 19:
      v1205 = a3;
      v44 = a4;
      v1206 = result;
      sub_298B0A034(a4, 1, word_298DFCDBC[a3 & 0x1E]);
      v46 = v1206 & 3;
      if (!v46)
      {
        return 0;
      }

      v1207 = (v1205 >> 13) & 3;
      v1208 = word_298DFBA40;
      goto LABEL_841;
    case 20:
      v1209 = a3;
      v44 = a4;
      v1210 = result;
      sub_298B0A034(a4, 1, word_298DFE670[a3 & 0x1C]);
      v46 = v1210 & 3;
      if (!v46)
      {
        return 0;
      }

      goto LABEL_861;
    case 21:
      v1205 = a3;
      v1211 = a3 & 0x1E;
      v1212 = word_298DFCDBC;
      goto LABEL_839;
    case 22:
      v1205 = a3;
      v1211 = a3 & 0x1C;
      v1212 = word_298DFE670;
LABEL_839:
      v44 = a4;
      v1213 = result;
      sub_298B0A034(a4, 1, v1212[v1211]);
      v46 = v1213 & 3;
      if (!v46)
      {
        return 0;
      }

      v1207 = (v1205 >> 13) & 3;
      v1208 = word_298DFBA64;
LABEL_841:
      sub_298B0A034(v44, 1, v1208[v1207]);
      v50 = v1205 >> 5;
      goto LABEL_43;
    case 23:
      v1214 = result;
      sub_298B0A034(a4, 2, a3);
      return v1214 & 3;
    case 24:
      v1215 = a3;
      v1216 = a4;
      v1217 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v365 = v1217 & 3;
      if (!v365)
      {
        return 0;
      }

      v368 = v1215 & 7;
      goto LABEL_2051;
    case 25:
      v1218 = a3;
      v1216 = a4;
      v1219 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v365 = v1219 & 3;
      if (!v365)
      {
        return 0;
      }

      v368 = v1218 & 3;
      goto LABEL_2051;
    case 26:
      v1220 = a3;
      v1216 = a4;
      v1221 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v365 = v1221 & 3;
      if (!v365)
      {
        return 0;
      }

      v368 = v1220 & 1;
      goto LABEL_2051;
    case 27:
      v1222 = a3;
      v1223 = word_298D19FAA[((a3 >> 3) & 1) + 16];
      v633 = a4;
      v1224 = result;
      sub_298B0A034(a4, 1, v1223);
      v635 = v1224 & 3;
      if (!v635)
      {
        return 0;
      }

      sub_298B0A034(v633, 1, v1223);
      sub_298B0A034(v633, 1, word_298DFBA40[(v1222 >> 13) & 3]);
      v1225 = v1222 & 7;
      goto LABEL_915;
    case 28:
      v1226 = a3;
      v914 = a4;
      v1227 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1227 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v914, v1226 & 0x1F);
      sub_298B0A034(v914, 1, word_298DFB41A[(v1226 >> 10) & 7]);
      sub_298B0A034(v914, 1, word_298D19FAA[((v1226 >> 8) & 1) + 16]);
      sub_298B0A034(v914, 1, word_298DFBA40[(v1226 >> 13) & 3]);
      v50 = v1226 >> 5;
      goto LABEL_700;
    case 29:
      v1228 = a3;
      v895 = a4;
      v1229 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v365 = v1229 & 3;
      if (!v365)
      {
        return 0;
      }

      v1230 = v1228;
      v1231 = word_298D19FAA[((v1228 >> 8) & 1) + 16];
      sub_298B0A034(v895, 1, v1231);
      sub_298B0A034(v895, 1, v1231);
      sub_298B0A034(v895, 1, word_298DFBA40[(v1230 >> 13) & 3]);
      v368 = v1230 >> 5;
      goto LABEL_685;
    case 30:
      v1232 = a3;
      v1233 = word_298D19FAA[((a3 >> 2) & 1) + 16];
      v1234 = a4;
      v1235 = result;
      sub_298B0A034(a4, 1, v1233);
      v365 = v1235 & 3;
      if (!v365)
      {
        return 0;
      }

      sub_298B0A034(v1234, 1, v1233);
      sub_298B0A034(v1234, 1, word_298DFBA40[(v1232 >> 13) & 3]);
      v1236 = v1232 & 3;
      goto LABEL_881;
    case 31:
      v1237 = a3;
      v1238 = word_298D19FAA[((a3 >> 1) & 1) + 16];
      v1234 = a4;
      v1239 = result;
      sub_298B0A034(a4, 1, v1238);
      v365 = v1239 & 3;
      if (!v365)
      {
        return 0;
      }

      sub_298B0A034(v1234, 1, v1238);
      sub_298B0A034(v1234, 1, word_298DFBA40[(v1237 >> 13) & 3]);
      v1240 = v1237 & 1;
      v1241 = v1234;
      v1242 = 2;
      goto LABEL_934;
    case 32:
      v1209 = a3;
      v44 = a4;
      v1243 = result;
      sub_298B0A034(a4, 1, word_298DFCDBC[a3 & 0x1E]);
      v46 = v1243 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298D19FAA[((v1209 >> 7) & 1) + 16]);
LABEL_861:
      sub_298B0A034(v44, 1, word_298DFBA40[(v1209 >> 13) & 3]);
      v50 = (v1209 >> 5) & 3;
      goto LABEL_43;
    case 33:
      v1244 = a3;
      v895 = a4;
      v1245 = result;
      sub_298B0A034(a4, 1, word_298DFCDBC[a3 & 0x1E]);
      v365 = v1245 & 3;
      if (!v365)
      {
        return 0;
      }

      v1246 = v1244;
      v1247 = word_298D19FAA[((v1244 >> 7) & 1) + 16];
      goto LABEL_878;
    case 34:
      v1248 = a3;
      v44 = a4;
      v1249 = result;
      sub_298B0A034(a4, 1, word_298DFE670[a3 & 0x1C]);
      v46 = v1249 & 3;
      if (!v46)
      {
        return 0;
      }

      v1250 = word_298D19FAA[((v1248 >> 6) & 1) + 16];
      goto LABEL_886;
    case 35:
      v1251 = a3;
      v895 = a4;
      v1252 = result;
      sub_298B0A034(a4, 1, word_298DFE670[a3 & 0x1C]);
      v365 = v1252 & 3;
      if (!v365)
      {
        return 0;
      }

      v1253 = v1251;
      v1254 = word_298D19FAA[((v1251 >> 6) & 1) + 16];
      goto LABEL_924;
    case 36:
      return result;
    case 37:
      v1255 = a3;
      v1216 = a4;
      v1256 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v365 = v1256 & 3;
      if (!v365)
      {
        return 0;
      }

      v368 = (v1255 >> 12) & 7;
      goto LABEL_2051;
    case 38:
      v1257 = result;
      v1258 = a3;
      v1259 = a4;
      sub_298B0A034(a4, 2, (a3 >> 12) & 7);
      sub_298B0A034(v1259, 1, word_298DFBCEE[v1258 & 0x1F]);
      return v1257 & 3;
    case 39:
      v1260 = result;
      v1261 = a3;
      v1262 = a4;
      sub_298B0A034(a4, 2, (a3 >> 12) & 3);
      sub_298B1A0DC(v1262, v1261 & 0x1F);
      return v1260 & 3;
    case 40:
      v1222 = a3;
      v1263 = word_298D19FAA[((a3 >> 2) & 3) + 32];
      v633 = a4;
      v1264 = result;
      sub_298B0A034(a4, 1, v1263);
      v635 = v1264 & 3;
      if (!v635)
      {
        return 0;
      }

      sub_298B0A034(v633, 1, v1263);
      sub_298B0A034(v633, 1, word_298DFBA40[(v1222 >> 13) & 3]);
      v1225 = v1222 & 3;
      goto LABEL_915;
    case 41:
      v1265 = a3;
      v914 = a4;
      v1266 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1266 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v914, v1265 & 0x1F);
      sub_298B0A034(v914, 1, word_298DFB41A[(v1265 >> 10) & 7]);
      sub_298B0A034(v914, 1, word_298D19FAA[((v1265 >> 7) & 3) + 32]);
      sub_298B0A034(v914, 1, word_298DFBA40[(v1265 >> 13) & 3]);
      v50 = (v1265 >> 5) & 3;
      goto LABEL_700;
    case 42:
      v1267 = a3;
      v895 = a4;
      v1268 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v365 = v1268 & 3;
      if (!v365)
      {
        return 0;
      }

      v1246 = v1267;
      v1247 = word_298D19FAA[((v1267 >> 7) & 3) + 32];
LABEL_878:
      sub_298B0A034(v895, 1, v1247);
      sub_298B0A034(v895, 1, v1247);
      sub_298B0A034(v895, 1, word_298DFBA40[(v1246 >> 13) & 3]);
      v368 = (v1246 >> 5) & 3;
      goto LABEL_685;
    case 43:
      v1232 = a3;
      v1269 = word_298D19FAA[((a3 >> 1) & 3) + 32];
      v1234 = a4;
      v1270 = result;
      sub_298B0A034(a4, 1, v1269);
      v365 = v1270 & 3;
      if (!v365)
      {
        return 0;
      }

      sub_298B0A034(v1234, 1, v1269);
      sub_298B0A034(v1234, 1, word_298DFBA40[(v1232 >> 13) & 3]);
      v1236 = v1232 & 1;
LABEL_881:
      v1271 = v1234;
      v1272 = 2;
      goto LABEL_882;
    case 44:
      v1237 = a3;
      v1275 = word_298D19FAA[(a3 & 3) + 32];
      goto LABEL_932;
    case 45:
      v1248 = a3;
      v44 = a4;
      v1276 = result;
      sub_298B0A034(a4, 1, word_298DFCDBC[a3 & 0x1E]);
      v46 = v1276 & 3;
      if (!v46)
      {
        return 0;
      }

      v1250 = word_298D19FAA[(v1248 >> 6) + 32];
LABEL_886:
      sub_298B0A034(v44, 1, v1250);
      sub_298B0A034(v44, 1, word_298DFBA40[(v1248 >> 13) & 3]);
      v50 = (v1248 >> 5) & 1;
      goto LABEL_43;
    case 46:
      v1277 = a3;
      v895 = a4;
      v1278 = result;
      sub_298B0A034(a4, 1, word_298DFCDBC[a3 & 0x1E]);
      v365 = v1278 & 3;
      if (!v365)
      {
        return 0;
      }

      v1253 = v1277;
      v1254 = word_298D19FAA[(v1277 >> 6) + 32];
      goto LABEL_924;
    case 47:
      v1279 = a3;
      v822 = a4;
      v1280 = result;
      sub_298B0A034(a4, 1, word_298DFE670[a3 & 0x1C]);
      v46 = v1280 & 3;
      if (!v46)
      {
        return 0;
      }

      v1281 = word_298D19FAA[((v1279 >> 5) & 3) + 32];
      goto LABEL_940;
    case 48:
      v1282 = a3;
      v1234 = a4;
      v1283 = result;
      sub_298B0A034(a4, 1, word_298DFE670[a3 & 0x1C]);
      v365 = v1283 & 3;
      if (!v365)
      {
        return 0;
      }

      v1284 = v1282;
      v1285 = word_298D19FAA[((v1282 >> 5) & 3) + 32];
      goto LABEL_944;
    case 49:
      v1197 = a3;
      v822 = a4;
      v1286 = result;
      sub_298B0A034(a4, 1, word_298DFE670[a3 & 0x1C]);
      goto LABEL_1008;
    case 50:
      v1287 = a3;
      v1288 = a3 & 0x1C;
      v1289 = word_298DFE670;
      goto LABEL_902;
    case 51:
      v1290 = a3;
      v1291 = a3 & 0x1E;
      v1292 = word_298DFCDBC;
      goto LABEL_905;
    case 52:
      v1293 = a3;
      v1294 = a3 & 0x1C;
      v1295 = word_298DFE670;
      goto LABEL_908;
    case 53:
      v1296 = a3;
      v1297 = a3 & 0x1E;
      v1298 = word_298DFCDBC;
      goto LABEL_911;
    case 54:
      v1222 = a3;
      v1299 = word_298D19FAA[(a3 & 3) + 32];
      goto LABEL_951;
    case 55:
      v1300 = a3;
      v363 = a4;
      v1301 = result;
      sub_298B0A034(a4, 1, word_298DFF1FA[a3 & 3 | (4 * ((a3 >> 4) & 1))]);
      v365 = v1301 & 3;
      if (!v365)
      {
        return 0;
      }

      v366 = (v1300 >> 5) & 0x1E;
      v367 = word_298DFCDBC;
      goto LABEL_279;
    case 56:
      v1287 = a3;
      v1288 = a3 & 3 | (4 * ((a3 >> 4) & 1));
      v1289 = word_298DFF1FA;
LABEL_902:
      v914 = a4;
      v1302 = result;
      sub_298B0A034(a4, 1, v1289[v1288]);
      v46 = v1302 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v914, (v1287 >> 5) & 0x1F);
      v50 = HIWORD(v1287) & 1;
      goto LABEL_700;
    case 57:
      v1290 = a3;
      v1291 = a3 & 7 | (8 * ((a3 >> 4) & 1));
      v1292 = &unk_298DFD006;
LABEL_905:
      v914 = a4;
      v1303 = result;
      sub_298B0A034(a4, 1, v1292[v1291]);
      v46 = v1303 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v914, (v1290 >> 5) & 0x1F);
      v50 = (v1290 >> 15) & 3;
      goto LABEL_700;
    case 58:
      v1293 = a3;
      v1294 = a3 & 3 | (4 * ((a3 >> 4) & 1));
      v1295 = word_298DFF1FA;
LABEL_908:
      v914 = a4;
      v1304 = result;
      sub_298B0A034(a4, 1, v1295[v1294]);
      v46 = v1304 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v914, (v1293 >> 5) & 0x1F);
      v50 = HIWORD(v1293) & 3;
      goto LABEL_700;
    case 59:
      v1296 = a3;
      v1297 = a3 & 7 | (8 * ((a3 >> 4) & 1));
      v1298 = &unk_298DFD006;
LABEL_911:
      v914 = a4;
      v1305 = result;
      sub_298B0A034(a4, 1, v1298[v1297]);
      v46 = v1305 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v914, (v1296 >> 5) & 0x1F);
      v50 = (v1296 >> 15) & 7;
      goto LABEL_700;
    case 60:
      v1222 = a3;
      v1306 = word_298D19FAA[((a3 >> 1) & 7) + 48];
      v633 = a4;
      v1307 = result;
      sub_298B0A034(a4, 1, v1306);
      v635 = v1307 & 3;
      if (!v635)
      {
        return 0;
      }

      sub_298B0A034(v633, 1, v1306);
      sub_298B0A034(v633, 1, word_298DFBA40[(v1222 >> 13) & 3]);
      v1225 = v1222 & 1;
LABEL_915:
      v1308 = v633;
      v1309 = 2;
      goto LABEL_916;
    case 61:
      v1222 = a3;
      v1311 = word_298D19FAA[(a3 & 0xF) + 64];
      v633 = a4;
      v1312 = result;
      sub_298B0A034(a4, 1, v1311);
      v635 = v1312 & 3;
      if (!v635)
      {
        return 0;
      }

      sub_298B0A034(v633, 1, v1311);
      v1225 = word_298DFBA40[(v1222 >> 13) & 3];
      v1308 = v633;
      v1309 = 1;
LABEL_916:
      sub_298B0A034(v1308, v1309, v1225);
      v1310 = word_298DFB41A[(v1222 >> 10) & 7];
      goto LABEL_917;
    case 62:
      v1313 = a3;
      v914 = a4;
      v1314 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1314 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v914, v1313 & 0x1F);
      sub_298B0A034(v914, 1, word_298DFB41A[(v1313 >> 10) & 7]);
      sub_298B0A034(v914, 1, word_298D19FAA[((v1313 >> 6) & 7) + 48]);
      sub_298B0A034(v914, 1, word_298DFBA40[(v1313 >> 13) & 3]);
      v50 = (v1313 >> 5) & 1;
      goto LABEL_700;
    case 63:
      v1315 = a3;
      v895 = a4;
      v1316 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v365 = v1316 & 3;
      if (!v365)
      {
        return 0;
      }

      v1253 = v1315;
      v1254 = word_298D19FAA[((v1315 >> 6) & 7) + 48];
LABEL_924:
      sub_298B0A034(v895, 1, v1254);
      sub_298B0A034(v895, 1, v1254);
      sub_298B0A034(v895, 1, word_298DFBA40[(v1253 >> 13) & 3]);
      v368 = (v1253 >> 5) & 1;
      goto LABEL_685;
    case 64:
      v1317 = a3;
      v1318 = a4;
      v1319 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1319 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v1318, v1317 & 0x1F);
      sub_298B0A034(v1318, 1, word_298DFB41A[(v1317 >> 10) & 7]);
      sub_298B0A034(v1318, 1, word_298D19FAA[((v1317 >> 5) & 0xF) + 64]);
      v1320 = (v1317 >> 13) & 3;
      v1321 = word_298DFBA40;
      goto LABEL_1209;
    case 65:
      v1322 = a3;
      v1234 = a4;
      v1323 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v365 = v1323 & 3;
      if (!v365)
      {
        return 0;
      }

      v1284 = v1322;
      v1285 = word_298D19FAA[((v1322 >> 5) & 0xF) + 64];
      goto LABEL_944;
    case 66:
      v1232 = a3;
      v1324 = word_298D19FAA[(a3 & 7) + 48];
      v1234 = a4;
      v1325 = result;
      sub_298B0A034(a4, 1, v1324);
      v365 = v1325 & 3;
      if (!v365)
      {
        return 0;
      }

      sub_298B0A034(v1234, 1, v1324);
      v1236 = word_298DFBA40[(v1232 >> 13) & 3];
      v1271 = v1234;
      v1272 = 1;
LABEL_882:
      sub_298B0A034(v1271, v1272, v1236);
      v1273 = (v1232 >> 5) & 0x1E;
      v1274 = word_298DFCDBC;
      goto LABEL_945;
    case 67:
      v1237 = a3;
      v1275 = word_298D19FAA[(a3 & 7) + 48];
LABEL_932:
      v1234 = a4;
      v1326 = result;
      sub_298B0A034(a4, 1, v1275);
      v365 = v1326 & 3;
      if (!v365)
      {
        return 0;
      }

      sub_298B0A034(v1234, 1, v1275);
      v1240 = word_298DFBA40[(v1237 >> 13) & 3];
      v1241 = v1234;
      v1242 = 1;
LABEL_934:
      sub_298B0A034(v1241, v1242, v1240);
      v1273 = (v1237 >> 5) & 0x1C;
      v1274 = word_298DFE670;
      goto LABEL_945;
    case 68:
      v1279 = a3;
      v1327 = a3 & 0x1E;
      v1328 = word_298DFCDBC;
      goto LABEL_938;
    case 69:
      v1329 = a3;
      v1330 = a3 & 0x1E;
      v1331 = word_298DFCDBC;
      goto LABEL_942;
    case 70:
      v1279 = a3;
      v1327 = a3 & 0x1C;
      v1328 = word_298DFE670;
LABEL_938:
      v822 = a4;
      v1332 = result;
      sub_298B0A034(a4, 1, v1328[v1327]);
      v46 = v1332 & 3;
      if (!v46)
      {
        return 0;
      }

      v1281 = word_298D19FAA[(v1279 >> 5) + 48];
LABEL_940:
      sub_298B0A034(v822, 1, v1281);
      v826 = (v1279 >> 13) & 3;
      v827 = word_298DFBA40;
      goto LABEL_632;
    case 71:
      v1329 = a3;
      v1330 = a3 & 0x1C;
      v1331 = word_298DFE670;
LABEL_942:
      v1234 = a4;
      v1333 = result;
      sub_298B0A034(a4, 1, v1331[v1330]);
      v365 = v1333 & 3;
      if (!v365)
      {
        return 0;
      }

      v1284 = v1329;
      v1285 = word_298D19FAA[(v1329 >> 5) + 48];
LABEL_944:
      sub_298B0A034(v1234, 1, v1285);
      sub_298B0A034(v1234, 1, v1285);
      v1273 = (v1284 >> 13) & 3;
      v1274 = word_298DFBA40;
LABEL_945:
      v368 = v1274[v1273];
      v369 = v1234;
      goto LABEL_281;
    case 72:
      v1334 = a3;
      v44 = a4;
      v1335 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1335 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1334 >> 5) & 0x1F);
      v50 = (v1334 >> 14) & 7;
      goto LABEL_43;
    case 73:
      v1336 = a3;
      v44 = a4;
      v1337 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1337 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1336 >> 5) & 0x1F);
      v50 = (v1336 >> 14) & 0xF;
      goto LABEL_43;
    case 74:
      v1222 = a3;
      v1299 = word_298D19FAA[(a3 & 7) + 48];
LABEL_951:
      v633 = a4;
      v1338 = result;
      sub_298B0A034(a4, 1, v1299);
      v635 = v1338 & 3;
      if (!v635)
      {
        return 0;
      }

      sub_298B0A034(v633, 1, v1299);
      sub_298B0A034(v633, 1, word_298DFB41A[(v1222 >> 10) & 7]);
      v1310 = word_298DFB41A[v1222 >> 13];
LABEL_917:
      sub_298B0A034(v633, 1, v1310);
      v636 = (v1222 >> 5) & 0x1F;
      goto LABEL_515;
    case 75:
      v1339 = a3;
      v44 = a4;
      v1340 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1340 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, v1339 & 3);
      sub_298B1A0DC(v44, (v1339 >> 5) & 0x1F);
      sub_298B1A0DC(v44, HIWORD(v1339) & 0xF);
      v50 = (v1339 >> 12) & 8 | (v1339 >> 10) & 7;
      goto LABEL_43;
    case 76:
      v1341 = a3;
      v44 = a4;
      v1342 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1342 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, v1341 & 1);
      v1343 = (v1341 >> 5) & 0x1E;
      v1344 = word_298DFCDBC;
      goto LABEL_959;
    case 77:
      v1341 = a3;
      v44 = a4;
      v1345 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1345 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, v1341 & 1);
      v1343 = (v1341 >> 5) & 0x1C;
      v1344 = word_298DFE670;
LABEL_959:
      sub_298B0A034(v44, 1, v1344[v1343]);
      sub_298B1A0DC(v44, HIWORD(v1341) & 0xF);
      v1346 = (v1341 >> 8) & 0xC;
      goto LABEL_1037;
    case 78:
      v1347 = a3;
      v44 = a4;
      v1348 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1348 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, v1347 & 7);
      v1349 = (v1347 >> 5) & 0x1E;
      v1350 = word_298DFCDBC;
      goto LABEL_964;
    case 79:
      v1347 = a3;
      v44 = a4;
      v1351 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1351 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, v1347 & 7);
      v1349 = (v1347 >> 5) & 0x1C;
      v1350 = word_298DFE670;
LABEL_964:
      sub_298B0A034(v44, 1, v1350[v1349]);
      sub_298B1A0DC(v44, HIWORD(v1347) & 0xF);
      v1352 = (v1347 >> 9) & 6;
      goto LABEL_965;
    case 80:
      v1353 = a3;
      v1190 = a4;
      v1354 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v1192 = v1354 & 3;
      if (!v1192)
      {
        return 0;
      }

      v1355 = v1353 & 1;
      goto LABEL_981;
    case 81:
      v1353 = a3;
      v1190 = a4;
      v1356 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v1192 = v1356 & 3;
      if (!v1192)
      {
        return 0;
      }

      v1357 = v1353 & 1;
      goto LABEL_984;
    case 82:
      v1353 = a3;
      v1190 = a4;
      v1358 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v1192 = v1358 & 3;
      if (!v1192)
      {
        return 0;
      }

      v1359 = v1353 & 3;
      goto LABEL_978;
    case 83:
      v1353 = a3;
      v1190 = a4;
      v1360 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v1192 = v1360 & 3;
      if (!v1192)
      {
        return 0;
      }

      v1355 = v1353 & 3;
      goto LABEL_981;
    case 84:
      v1353 = a3;
      v1190 = a4;
      v1361 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v1192 = v1361 & 3;
      if (!v1192)
      {
        return 0;
      }

      v1357 = v1353 & 3;
      goto LABEL_984;
    case 85:
      v1353 = a3;
      v1190 = a4;
      v1362 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v1192 = v1362 & 3;
      if (!v1192)
      {
        return 0;
      }

      v1359 = v1353 & 7;
LABEL_978:
      sub_298B0A034(v1190, 2, v1359);
      sub_298B1A0DC(v1190, (v1353 >> 5) & 0x1F);
      goto LABEL_986;
    case 86:
      v1353 = a3;
      v1190 = a4;
      v1363 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v1192 = v1363 & 3;
      if (!v1192)
      {
        return 0;
      }

      v1355 = v1353 & 7;
LABEL_981:
      sub_298B0A034(v1190, 2, v1355);
      v1364 = (v1353 >> 5) & 0x1F;
      v1365 = word_298DFCDBC;
      goto LABEL_985;
    case 87:
      v1353 = a3;
      v1190 = a4;
      v1366 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v1192 = v1366 & 3;
      if (!v1192)
      {
        return 0;
      }

      v1357 = v1353 & 7;
LABEL_984:
      sub_298B0A034(v1190, 2, v1357);
      v1364 = (v1353 >> 5) & 0x1F;
      v1365 = word_298DFE670;
LABEL_985:
      sub_298B0A034(v1190, 1, v1365[v1364]);
LABEL_986:
      v1367 = HIWORD(v1353) & 0xF;
      goto LABEL_1285;
    case 88:
      v1368 = a3;
      v475 = word_298DFCDBC;
      v363 = a4;
      v1369 = result;
      sub_298B0A034(a4, 1, word_298DFCDBC[a3 & 0x1E]);
      v365 = v1369 & 3;
      if (!v365)
      {
        return 0;
      }

      sub_298B0A034(v363, 1, word_298DFB3E8[(v1368 >> 10) & 7 | 8]);
      sub_298B0A034(v363, 1, word_298DFCDBC[(v1368 >> 5) & 0x1E]);
      v477 = HIWORD(v1368) & 0x1E;
      goto LABEL_374;
    case 89:
      v1370 = a3;
      v475 = word_298DFE670;
      v363 = a4;
      v1371 = result;
      sub_298B0A034(a4, 1, word_298DFE670[a3 & 0x1C]);
      v365 = v1371 & 3;
      if (!v365)
      {
        return 0;
      }

      sub_298B0A034(v363, 1, word_298DFB3E8[(v1370 >> 10) & 7 | 8]);
      sub_298B0A034(v363, 1, word_298DFE670[(v1370 >> 5) & 0x1C]);
      v477 = HIWORD(v1370) & 0x1C;
      goto LABEL_374;
    case 90:
      v1372 = a3;
      v1373 = a3 & 0x1E;
      v1374 = word_298DFCDBC;
      goto LABEL_993;
    case 91:
      v1372 = a3;
      v1373 = a3 & 0x1C;
      v1374 = word_298DFE670;
LABEL_993:
      v1375 = v1374[v1373];
      v1376 = a4;
      v1377 = result;
      sub_298B0A034(a4, 1, v1375);
      v1378 = v1377 & 3;
      if (!v1378)
      {
        return 0;
      }

      sub_298B0A034(v1376, 1, v1375);
      v1379 = HIWORD(v1372) & 0xF;
      goto LABEL_1004;
    case 92:
      v1380 = a3;
      v1381 = word_298DFCDBC;
      v1382 = word_298DFCDBC[a3 & 0x1E];
      v881 = a4;
      v1383 = result;
      sub_298B0A034(a4, 1, v1382);
      v883 = v1383 & 3;
      if (!v883)
      {
        return 0;
      }

      sub_298B0A034(v881, 1, v1382);
      v1384 = HIWORD(v1380) & 0x1E;
      goto LABEL_999;
    case 93:
      v1385 = a3;
      v1381 = word_298DFE670;
      v1386 = word_298DFE670[a3 & 0x1C];
      v881 = a4;
      v1387 = result;
      sub_298B0A034(a4, 1, v1386);
      v883 = v1387 & 3;
      if (!v883)
      {
        return 0;
      }

      sub_298B0A034(v881, 1, v1386);
      v1384 = HIWORD(v1385) & 0x1C;
LABEL_999:
      v884 = v1381[v1384];
      goto LABEL_677;
    case 94:
      v1388 = a3;
      v1389 = a3 & 0x1E;
      v1390 = word_298DFCDBC;
      goto LABEL_1002;
    case 95:
      v1388 = a3;
      v1389 = a3 & 0x1C;
      v1390 = word_298DFE670;
LABEL_1002:
      v1391 = v1390[v1389];
      v1376 = a4;
      v1392 = result;
      sub_298B0A034(a4, 1, v1391);
      v1378 = v1392 & 3;
      if (!v1378)
      {
        return 0;
      }

      sub_298B0A034(v1376, 1, v1391);
      sub_298B1A0DC(v1376, (v1388 >> 5) & 0x1F);
      v1379 = HIWORD(v1388) & 0x1F;
LABEL_1004:
      sub_298B1A0DC(v1376, v1379);
      return v1378;
    case 96:
      v1393 = a3;
      v1394 = a4;
      v1395 = result;
      sub_298B0A034(a4, 1, word_298DFCDBC[a3 & 0x1E]);
      v1192 = v1395 & 3;
      if (!v1192)
      {
        return 0;
      }

      goto LABEL_1166;
    case 97:
      v1197 = a3;
      v822 = a4;
      v1286 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
LABEL_1008:
      v46 = v1286 & 3;
      if (!v46)
      {
        return 0;
      }

LABEL_1009:
      v826 = (v1197 >> 5) & 0x1E;
      v827 = word_298DFCDBC;
      goto LABEL_632;
    case 98:
      v1396 = a3;
      v1397 = word_298DFCDBC;
      v274 = a4;
      v1398 = result;
      sub_298B0A034(a4, 1, word_298DFCDBC[a3 & 0x1E]);
      v276 = v1398 & 3;
      if (!v276)
      {
        return 0;
      }

      v1399 = (v1396 >> 5) & 0x1E;
      goto LABEL_1016;
    case 99:
      v1400 = a3;
      v1401 = a4;
      v1402 = result;
      sub_298B0A034(a4, 1, word_298DFCDBC[a3 & 0x1E]);
      v635 = v1402 & 3;
      if (!v635)
      {
        return 0;
      }

      goto LABEL_1182;
    case 100:
      v1403 = a3;
      v1397 = word_298DFE670;
      v274 = a4;
      v1404 = result;
      sub_298B0A034(a4, 1, word_298DFE670[a3 & 0x1C]);
      v276 = v1404 & 3;
      if (!v276)
      {
        return 0;
      }

      v1399 = (v1403 >> 5) & 0x1C;
LABEL_1016:
      v278 = v1397[v1399];
      goto LABEL_221;
    case 101:
      v1200 = a3;
      v822 = a4;
      v1405 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1405 & 3;
      if (!v46)
      {
        return 0;
      }

LABEL_832:
      v826 = (v1200 >> 5) & 0x1C;
      v827 = word_298DFE670;
      goto LABEL_632;
    case 102:
      v1406 = a3;
      v44 = a4;
      v1407 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1407 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, v1406 & 7);
      v1408 = (v1406 >> 5) & 0x1E;
      v1409 = word_298DFCDBC;
      goto LABEL_1023;
    case 103:
      v1406 = a3;
      v44 = a4;
      v1410 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1410 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, v1406 & 7);
      v1408 = (v1406 >> 5) & 0x1C;
      v1409 = word_298DFE670;
LABEL_1023:
      sub_298B0A034(v44, 1, v1409[v1408]);
      sub_298B1A0DC(v44, HIWORD(v1406) & 0xF);
      v50 = (v1406 >> 10) & 3;
      goto LABEL_43;
    case 104:
      v1411 = a3;
      v174 = a4;
      v1412 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v176 = v1412 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B0A034(v174, 1, word_298DFE670[(v1411 >> 5) & 0x1C]);
      v177 = HIWORD(v1411) & 0x1F;
      goto LABEL_139;
    case 105:
      v1413 = a3;
      v44 = a4;
      v1414 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1414 & 3;
      if (!v46)
      {
        return 0;
      }

      v1415 = v1413 >> 13;
      v1416 = v1413 & 3;
      goto LABEL_1045;
    case 106:
      v1417 = a3;
      v44 = a4;
      v1418 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1418 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, v1417 & 7);
      sub_298B1A0DC(v44, (v1417 >> 5) & 0x1F);
      sub_298B1A0DC(v44, HIWORD(v1417) & 0xF);
      v50 = (v1417 >> 9) & 6 | (v1417 >> 3) & 1 | (v1417 >> 12) & 8;
      goto LABEL_43;
    case 107:
      v1341 = a3;
      v44 = a4;
      v1419 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1419 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, v1341 & 1);
      v1420 = (v1341 >> 5) & 0x1E;
      v1421 = word_298DFCDBC;
      goto LABEL_1036;
    case 108:
      v1422 = a3;
      v44 = a4;
      v1423 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1423 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, v1422 & 7);
      v1424 = (v1422 >> 5) & 0x1E;
      v1425 = word_298DFCDBC;
      goto LABEL_1040;
    case 109:
      v1341 = a3;
      v44 = a4;
      v1426 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1426 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, v1341 & 1);
      v1420 = (v1341 >> 5) & 0x1C;
      v1421 = word_298DFE670;
LABEL_1036:
      sub_298B0A034(v44, 1, v1421[v1420]);
      sub_298B1A0DC(v44, HIWORD(v1341) & 0xF);
      v1346 = (v1341 >> 8) & 4;
LABEL_1037:
      v50 = v1346 & 0xFFFFFFFC | (v1341 >> 1) & 3;
      goto LABEL_43;
    case 110:
      v1422 = a3;
      v44 = a4;
      v1427 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1427 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, v1422 & 7);
      v1424 = (v1422 >> 5) & 0x1C;
      v1425 = word_298DFE670;
LABEL_1040:
      sub_298B0A034(v44, 1, v1425[v1424]);
      sub_298B1A0DC(v44, HIWORD(v1422) & 0xF);
      v50 = (v1422 >> 10) & 1;
      goto LABEL_43;
    case 111:
      v1347 = a3;
      v44 = a4;
      v1428 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1428 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, v1347 & 7);
      sub_298B0A034(v44, 1, word_298DFCDBC[(v1347 >> 5) & 0x1E]);
      sub_298B1A0DC(v44, HIWORD(v1347) & 0xF);
      v1352 = (v1347 >> 9) & 2;
LABEL_965:
      v50 = v1352 & 0xFFFFFFFE | (v1347 >> 3) & 1;
      goto LABEL_43;
    case 112:
      v1413 = a3;
      v44 = a4;
      v1429 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1429 & 3;
      if (!v46)
      {
        return 0;
      }

      v1415 = v1413 >> 13;
      v1416 = v1413 & 7;
LABEL_1045:
      sub_298B0A034(v44, 2, v1416);
      sub_298B1A0DC(v44, (v1413 >> 5) & 0x1F);
      sub_298B1A0DC(v44, HIWORD(v1413) & 0xF);
      v50 = v1415 & 4 | (v1413 >> 10) & 3;
      goto LABEL_43;
    case 113:
      v1430 = a3;
      v44 = a4;
      v1431 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1431 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, v1430 & 3);
      v1432 = (v1430 >> 5) & 0x1E;
      v1433 = word_298DFCDBC;
      goto LABEL_1050;
    case 114:
      v1430 = a3;
      v44 = a4;
      v1434 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1434 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, v1430 & 3);
      v1432 = (v1430 >> 5) & 0x1C;
      v1433 = word_298DFE670;
LABEL_1050:
      sub_298B0A034(v44, 1, v1433[v1432]);
      sub_298B1A0DC(v44, HIWORD(v1430) & 0xF);
      v50 = (v1430 >> 9) & 6 | (v1430 >> 2) & 1;
      goto LABEL_43;
    case 115:
      v1435 = a3;
      v44 = a4;
      v1436 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1436 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, v1435 & 3);
      v1437 = (v1435 >> 5) & 0x1C;
      v1438 = word_298DFE670;
      goto LABEL_1055;
    case 116:
      v1435 = a3;
      v44 = a4;
      v1439 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1439 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, v1435 & 3);
      v1437 = (v1435 >> 5) & 0x1E;
      v1438 = word_298DFCDBC;
LABEL_1055:
      sub_298B0A034(v44, 1, v1438[v1437]);
      sub_298B1A0DC(v44, HIWORD(v1435) & 0xF);
      v50 = (v1435 >> 8) & 0xC | (v1435 >> 2) & 3;
      goto LABEL_43;
    case 117:
      v1440 = a3;
      v822 = a4;
      v1441 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1441 & 3;
      if (!v46)
      {
        return 0;
      }

      v1442 = v1440 & 1;
      goto LABEL_1066;
    case 118:
      v1443 = a3;
      v822 = a4;
      v1444 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1444 & 3;
      if (!v46)
      {
        return 0;
      }

      v1445 = v1443 & 1;
      goto LABEL_1069;
    case 119:
      v1440 = a3;
      v822 = a4;
      v1446 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1446 & 3;
      if (!v46)
      {
        return 0;
      }

      v1442 = v1440 & 3;
      goto LABEL_1066;
    case 120:
      v1443 = a3;
      v822 = a4;
      v1447 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1447 & 3;
      if (!v46)
      {
        return 0;
      }

      v1445 = v1443 & 3;
      goto LABEL_1069;
    case 121:
      v1440 = a3;
      v822 = a4;
      v1448 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1448 & 3;
      if (!v46)
      {
        return 0;
      }

      v1442 = v1440 & 7;
LABEL_1066:
      sub_298B0A034(v822, 2, v1442);
      v1449 = word_298DFCDBC;
      sub_298B0A034(v822, 1, word_298DFCDBC[(v1440 >> 5) & 0x1E]);
      v1450 = HIWORD(v1440) & 0x1E;
      goto LABEL_1351;
    case 122:
      v1443 = a3;
      v822 = a4;
      v1451 = result;
      sub_298B0A034(a4, 1, word_298DFBA64[(a3 >> 13) & 3]);
      v46 = v1451 & 3;
      if (!v46)
      {
        return 0;
      }

      v1445 = v1443 & 7;
LABEL_1069:
      sub_298B0A034(v822, 2, v1445);
      v1449 = word_298DFE670;
      sub_298B0A034(v822, 1, word_298DFE670[(v1443 >> 5) & 0x1C]);
      v1450 = HIWORD(v1443) & 0x1C;
      goto LABEL_1351;
    case 123:
      v1452 = a3;
      v1453 = a4;
      v1454 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v176 = v1454 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B0A034(v1453, 1, word_298DFCDBC[(v1452 >> 5) & 0x1E]);
      goto LABEL_1988;
    case 124:
      v1455 = a3;
      v1456 = a4;
      v1457 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v176 = v1457 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B0A034(v1456, 1, word_298DFE670[(v1455 >> 5) & 0x1C]);
      goto LABEL_1254;
    case 125:
      v819 = a3;
      v822 = a4;
      v1458 = result;
      sub_298B0A034(a4, 1, word_298DFBA40[(a3 >> 13) & 3]);
      v46 = v1458 & 3;
      if (!v46)
      {
        return 0;
      }

      v1459 = v819 & 0xF;
      goto LABEL_1082;
    case 126:
      v819 = a3;
      v822 = a4;
      v1460 = result;
      sub_298B0A034(a4, 1, word_298D19FAA[((a3 >> 3) & 1) + 16]);
      v46 = v1460 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v822, 1, word_298DFBA40[(v819 >> 13) & 3]);
      v1459 = v819 & 7;
      goto LABEL_1082;
    case 127:
      v819 = a3;
      v822 = a4;
      v1461 = result;
      sub_298B0A034(a4, 1, word_298D19FAA[((a3 >> 2) & 3) + 32]);
      v46 = v1461 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v822, 1, word_298DFBA40[(v819 >> 13) & 3]);
      v1459 = v819 & 3;
      goto LABEL_1082;
    case 128:
      v819 = a3;
      v822 = a4;
      v1462 = result;
      sub_298B0A034(a4, 1, word_298D19FAA[((a3 >> 1) & 7) + 48]);
      v46 = v1462 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v822, 1, word_298DFBA40[(v819 >> 13) & 3]);
      v1459 = v819 & 1;
LABEL_1082:
      v1463 = v822;
      v1464 = 2;
      goto LABEL_1083;
    case 129:
      v1465 = a3;
      v1466 = a4;
      v1467 = result;
      sub_298B0A034(a4, 1, word_298DFBA40[(a3 >> 13) & 3]);
      v1468 = v1467 & 3;
      if (!v1468)
      {
        return 0;
      }

      sub_298B0A034(v1466, 2, v1465 & 0xF);
      sub_298B1A150(v1466, (v1465 >> 5) & 0x1F);
      return v1468;
    case 130:
      v1469 = result;
      sub_298B1A150(a4, (a3 >> 5) & 0x1F);
      return v1469 & 3;
    case 131:
      v819 = a3;
      v822 = a4;
      v1470 = result;
      sub_298B0A034(a4, 1, word_298D19FAA[(a3 & 0xF) + 64]);
      v46 = v1470 & 3;
      if (!v46)
      {
        return 0;
      }

      v1459 = word_298DFBA40[(v819 >> 13) & 3];
      v1463 = v822;
      v1464 = 1;
LABEL_1083:
      sub_298B0A034(v1463, v1464, v1459);
      goto LABEL_1084;
    case 132:
      v1189 = a3;
      v1190 = a4;
      v1471 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1192 = v1471 & 3;
      if (!v1192)
      {
        return 0;
      }

      sub_298B0A034(v1190, 1, word_298DFB41A[(v1189 >> 10) & 7]);
      sub_298B1A0DC(v1190, v1189 & 0x1F);
      goto LABEL_1284;
    case 133:
      v1189 = a3;
      v1190 = a4;
      v1472 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      goto LABEL_1282;
    case 134:
      v1189 = a3;
      v1190 = a4;
      v1472 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      goto LABEL_1282;
    case 135:
      v1473 = a3;
      v1394 = a4;
      v1474 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1192 = v1474 & 3;
      if (!v1192)
      {
        return 0;
      }

      sub_298B1A0DC(v1394, v1473 & 0x1F);
      sub_298B0A034(v1394, 1, word_298DFB41A[(v1473 >> 10) & 7]);
      v1367 = (v1473 >> 5) & 0x1F;
      goto LABEL_1198;
    case 136:
      v1475 = a3;
      v1190 = a4;
      v1476 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1192 = v1476 & 3;
      if (!v1192)
      {
        return 0;
      }

      sub_298B0A034(v1190, 1, word_298DFB41A[(v1475 >> 10) & 7]);
      sub_298B1A0DC(v1190, v1475 & 0x1F);
      goto LABEL_1437;
    case 137:
      v1477 = a3;
      v1478 = a4;
      v1479 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v176 = v1479 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B0A034(v1478, 1, word_298DFB41A[(v1477 >> 10) & 7]);
      sub_298B1A0DC(v1478, v1477 & 0x1F);
      v177 = v1477 >> 5;
      goto LABEL_1984;
    case 138:
      v1480 = a3;
      v1453 = a4;
      v1481 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v176 = v1481 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B0A034(v1453, 1, word_298DFB41A[(v1480 >> 10) & 7]);
      sub_298B1A0DC(v1453, v1480 & 0x1F);
      v177 = (v1480 >> 5) & 0xF;
      goto LABEL_1989;
    case 139:
      v1482 = a3;
      v174 = a4;
      v1483 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v176 = v1483 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B0A034(v174, 1, word_298DFB41A[(v1482 >> 10) & 7]);
      sub_298B1A0DC(v174, v1482 & 0x1F);
      v177 = (v1482 >> 5) & 0x1F;
      goto LABEL_139;
    case 140:
      v1484 = a3;
      v887 = a4;
      v1485 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v889 = v1485 & 3;
      if (!v889)
      {
        return 0;
      }

      sub_298B0A034(v887, 1, word_298DFB41A[(v1484 >> 10) & 7]);
      sub_298B1A0DC(v887, v1484 & 0x1F);
      v890 = v1484 >> 5;
      goto LABEL_681;
    case 141:
      v1486 = a3;
      v917 = a4;
      v1487 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v889 = v1487 & 3;
      if (!v889)
      {
        return 0;
      }

      sub_298B0A034(v917, 1, word_298DFB41A[(v1486 >> 10) & 7]);
      sub_298B1A0DC(v917, v1486 & 0x1F);
      v890 = (v1486 >> 5) & 0xF;
      goto LABEL_703;
    case 142:
      v1488 = a3;
      v1489 = a4;
      v1490 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v889 = v1490 & 3;
      if (!v889)
      {
        return 0;
      }

      sub_298B0A034(v1489, 1, word_298DFB41A[(v1488 >> 10) & 7]);
      sub_298B1A0DC(v1489, v1488 & 0x1F);
      v890 = (v1488 >> 5) & 0x1F;
      goto LABEL_1738;
    case 143:
      v1189 = a3;
      v1190 = a4;
      v1491 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1192 = v1491 & 3;
      if (!v1192)
      {
        return 0;
      }

      sub_298B0A034(v1190, 1, word_298DFB41A[(v1189 >> 10) & 7]);
      sub_298B1A0DC(v1190, v1189 & 0x1F);
      sub_298B1A0DC(v1190, HIWORD(v1189) & 0x1F);
      goto LABEL_1284;
    case 144:
      v1492 = a3;
      v1456 = a4;
      v1493 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v176 = v1493 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B0A034(v1456, 1, word_298DFB41A[(v1492 >> 10) & 7]);
      sub_298B1A0DC(v1456, v1492 & 0x1F);
      v177 = (v1492 >> 17) & 0x20 | (v1492 >> 5) & 0x1F;
      goto LABEL_1255;
    case 145:
      v1494 = a3;
      v1495 = a4;
      v1496 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v889 = v1496 & 3;
      if (!v889)
      {
        return 0;
      }

      sub_298B0A034(v1495, 1, word_298DFB41A[(v1494 >> 10) & 7]);
      sub_298B1A0DC(v1495, v1494 & 0x1F);
      v890 = (v1494 >> 17) & 0x20 | (v1494 >> 5) & 0x1F;
      goto LABEL_2038;
    case 146:
      return sub_298B1A238(a4, a3) & result;
    case 147:
      v1497 = a3;
      v1498 = a4;
      v1499 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1500 = v1499 & 3;
      if (!v1500)
      {
        return 0;
      }

      sub_298B0A034(v1498, 1, word_298DFB41A[HIWORD(v1497) & 0xF]);
      goto LABEL_1387;
    case 148:
      v1501 = a3;
      v1502 = a4;
      v1503 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1504 = v1503 & 3;
      if (!v1504)
      {
        return 0;
      }

      sub_298B0A034(v1502, 1, word_298DFB41A[HIWORD(v1501) & 0xF]);
      goto LABEL_1390;
    case 149:
      v1505 = a3;
      v1506 = a4;
      v1507 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1500 = v1507 & 3;
      if (!v1500)
      {
        return 0;
      }

      v1508 = v1505;
      sub_298B1A0DC(v1506, v1505 & 0x1F);
      sub_298B0A034(v1506, 1, word_298DFB41A[HIWORD(v1505) & 0xF]);
      goto LABEL_1369;
    case 150:
      v1509 = a3;
      v1510 = a4;
      v1511 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1504 = v1511 & 3;
      if (!v1504)
      {
        return 0;
      }

      v1512 = v1509;
      sub_298B1A0DC(v1510, v1509 & 0x1F);
      sub_298B0A034(v1510, 1, word_298DFB41A[HIWORD(v1509) & 0xF]);
      goto LABEL_1372;
    case 151:
      v1513 = a3;
      v914 = a4;
      v1514 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1514 & 3;
      if (!v46)
      {
        return 0;
      }

      v1515 = v1513;
      sub_298B1A0DC(v914, v1513 & 0x1F);
      sub_298B0A034(v914, 1, word_298DFB41A[HIWORD(v1513) & 0xF]);
      goto LABEL_1385;
    case 152:
      v1516 = a3;
      v1517 = a4;
      v1518 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1504 = v1518 & 3;
      if (!v1504)
      {
        return 0;
      }

      sub_298B0A034(v1517, 1, word_298DFB41A[HIWORD(v1516) & 0xF]);
      goto LABEL_1392;
    case 153:
      v1519 = a3;
      v1520 = a4;
      v1521 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1504 = v1521 & 3;
      if (!v1504)
      {
        return 0;
      }

      sub_298B0A034(v1520, 1, word_298DFB41A[HIWORD(v1519) & 0xF]);
      goto LABEL_1394;
    case 154:
      v1522 = a3;
      v1523 = a4;
      v1524 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1504 = v1524 & 3;
      if (!v1504)
      {
        return 0;
      }

      v1525 = v1522;
      sub_298B1A0DC(v1523, v1522 & 0x1F);
      sub_298B0A034(v1523, 1, word_298DFB41A[HIWORD(v1522) & 0xF]);
      goto LABEL_1375;
    case 155:
      v1526 = a3;
      v1527 = a4;
      v1528 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1504 = v1528 & 3;
      if (!v1504)
      {
        return 0;
      }

      v1529 = v1526;
      sub_298B1A0DC(v1527, v1526 & 0x1F);
      sub_298B0A034(v1527, 1, word_298DFB41A[HIWORD(v1526) & 0xF]);
      goto LABEL_1378;
    case 156:
      v1475 = a3;
      v1190 = a4;
      v1530 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1192 = v1530 & 3;
      if (!v1192)
      {
        return 0;
      }

      goto LABEL_1437;
    case 157:
      v1531 = a3;
      v914 = a4;
      v1532 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1532 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v914, v1531 & 0x1F);
      sub_298B1A0DC(v914, (v1531 >> 5) & 0x1F);
      v50 = (v1531 >> 13) & 0xF8 | (v1531 >> 10) & 7;
      goto LABEL_700;
    case 158:
      v1533 = a3;
      v44 = a4;
      v1534 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1534 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFCDBC[(v1533 >> 5) & 0x1F]);
      v50 = (v1533 >> 13) & 0xF8 | (v1533 >> 10) & 7;
      goto LABEL_43;
    case 159:
      v1535 = a3;
      v44 = a4;
      v1536 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1536 & 3;
      if (!v46)
      {
        return 0;
      }

      v1537 = (v1535 >> 5) & 0x1F;
      goto LABEL_1426;
    case 160:
      v1538 = a3;
      v44 = a4;
      v1539 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1539 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1538 >> 5) & 0x1F);
      v50 = (v1538 >> 21) & 6 | (v1538 >> 20) & 1;
      goto LABEL_43;
    case 161:
      v1540 = a3;
      v44 = a4;
      v1541 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1541 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1540 >> 5) & 0x1F);
      v50 = (v1540 >> 20) & 0xC | (v1540 >> 19) & 3;
      goto LABEL_43;
    case 162:
      v1542 = a3;
      v44 = a4;
      v1543 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1543 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1542 >> 5) & 0x1F);
      v50 = (v1542 >> 19) & 0x18 | (v1542 >> 18) & 7;
      goto LABEL_43;
    case 163:
      v1544 = a3;
      v44 = a4;
      v1545 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1545 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1544 >> 5) & 0x1F);
      v50 = (v1544 >> 18) & 0x30 | (v1544 >> 17) & 0xF;
      goto LABEL_43;
    case 164:
      v1546 = a3;
      v44 = a4;
      v1547 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1547 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1546 >> 5) & 0x1F);
      v50 = (v1546 >> 20) & 1;
      goto LABEL_43;
    case 165:
      v1548 = a3;
      v44 = a4;
      v1549 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1549 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1548 >> 5) & 0x1F);
      goto LABEL_2018;
    case 166:
      v1550 = a3;
      v44 = a4;
      v1551 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1551 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1550 >> 5) & 0x1F);
      v50 = (v1550 >> 18) & 7;
      goto LABEL_43;
    case 167:
      v1552 = a3;
      v44 = a4;
      v1553 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1553 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1552 >> 5) & 0x1F);
      v50 = (v1552 >> 17) & 0xF;
      goto LABEL_43;
    case 168:
      v1554 = a3;
      v914 = a4;
      v1555 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1555 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v914, v1554 & 0x1F);
      sub_298B1A0DC(v914, (v1554 >> 5) & 0x1F);
      v50 = HIWORD(v1554) & 0xF;
      goto LABEL_700;
    case 169:
      v1475 = a3;
      v1190 = a4;
      v1556 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1192 = v1556 & 3;
      if (!v1192)
      {
        return 0;
      }

      sub_298B0A034(v1190, 1, word_298DFCDBC[(v1475 >> 5) & 0x1F]);
      goto LABEL_1438;
    case 170:
      v1393 = a3;
      v1394 = a4;
      v1557 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1192 = v1557 & 3;
      if (!v1192)
      {
        return 0;
      }

      sub_298B1A0DC(v1394, v1393 & 0x1F);
LABEL_1166:
      sub_298B1A0DC(v1394, (v1393 >> 5) & 0x1F);
      v1367 = HIWORD(v1393) & 0x1F;
      goto LABEL_1198;
    case 171:
      v1558 = a3;
      v1559 = a4;
      v1560 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v176 = v1560 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A0DC(v1559, v1558 & 0x1F);
      sub_298B1A0DC(v1559, (v1558 >> 5) & 0x1F);
      v177 = HIWORD(v1558) & 7;
      v178 = v1559;
      goto LABEL_1985;
    case 172:
      v1561 = a3;
      v1562 = a4;
      v1563 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v176 = v1563 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A0DC(v1562, v1561 & 0x1F);
      sub_298B1A0DC(v1562, (v1561 >> 5) & 0x1F);
      v177 = HIWORD(v1561) & 0xF;
      goto LABEL_2004;
    case 173:
      v1564 = a3;
      v1565 = a4;
      v1566 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v176 = v1566 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A0DC(v1565, v1564 & 0x1F);
      sub_298B1A0DC(v1565, (v1564 >> 5) & 0x1F);
      v177 = HIWORD(v1564) & 0x1F;
      v178 = v1565;
      goto LABEL_140;
    case 174:
      v1567 = a3;
      v1568 = a4;
      v1569 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v176 = v1569 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A0DC(v1568, v1567 & 0x1F);
      sub_298B1A0DC(v1568, (v1567 >> 5) & 0x1F);
      v177 = (v1567 >> 17) & 0x20 | HIWORD(v1567) & 0x1F;
      goto LABEL_2035;
    case 175:
      v1570 = a3;
      v1394 = a4;
      v1571 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1192 = v1571 & 3;
      if (!v1192)
      {
        return 0;
      }

      v1572 = v1570;
      sub_298B1A0DC(v1394, v1570 & 0x1F);
      v1573 = HIWORD(v1570) & 0x1F;
      goto LABEL_1197;
    case 176:
      v1574 = a3;
      v822 = a4;
      v1575 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1575 & 3;
      if (!v46)
      {
        return 0;
      }

      v826 = (v1574 >> 5) & 0x1F;
      v827 = word_298DFB922;
      goto LABEL_632;
    case 177:
      v1576 = a3;
      v1577 = a4;
      v1578 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1579 = v1578 & 3;
      if (!v1579)
      {
        return 0;
      }

      sub_298B1A0DC(v1577, v1576 & 0x1F);
      v1580 = (v1576 >> 5) & 0x1F;
      goto LABEL_1331;
    case 178:
      v1400 = a3;
      v1401 = a4;
      v1581 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v635 = v1581 & 3;
      if (!v635)
      {
        return 0;
      }

LABEL_1182:
      v636 = (v1400 >> 5) & 0x1F;
      v637 = v1401;
      goto LABEL_516;
    case 179:
      v1582 = a3;
      v914 = a4;
      v1583 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v46 = v1583 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v914, (v1582 >> 5) & 0x1F);
      v50 = (v1582 >> 17) & 1;
      goto LABEL_700;
    case 180:
      v1584 = a3;
      v914 = a4;
      v1585 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v46 = v1585 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v914, (v1584 >> 5) & 0x1F);
      v50 = (v1584 >> 17) & 3;
      goto LABEL_700;
    case 181:
      v1586 = a3;
      v1318 = a4;
      v1587 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1587 & 3;
      if (!v46)
      {
        return 0;
      }

      v1588 = v1586;
      sub_298B1A0DC(v1318, v1586 & 0x1F);
      goto LABEL_1208;
    case 182:
      v1589 = a3;
      v1318 = a4;
      v1590 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1590 & 3;
      if (!v46)
      {
        return 0;
      }

      v1588 = v1589;
      sub_298B1A0DC(v1318, v1589 & 0x1F);
      v1591 = (v1589 >> 17) & 1;
      goto LABEL_1207;
    case 183:
      v1592 = a3;
      v1318 = a4;
      v1593 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1593 & 3;
      if (!v46)
      {
        return 0;
      }

      v1588 = v1592;
      sub_298B1A0DC(v1318, v1592 & 0x1F);
      v1591 = (v1592 >> 17) & 3;
      goto LABEL_1207;
    case 184:
      v1189 = a3;
      v1190 = a4;
      v1594 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1192 = v1594 & 3;
      if (!v1192)
      {
        return 0;
      }

      goto LABEL_1284;
    case 185:
      v1595 = a3;
      v1394 = a4;
      v1596 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1192 = v1596 & 3;
      if (!v1192)
      {
        return 0;
      }

      v1572 = v1595;
      v1573 = v1595 & 0x1F;
LABEL_1197:
      sub_298B1A0DC(v1394, v1573);
      v1367 = (v1572 >> 5) & 0x1F;
LABEL_1198:
      v1597 = v1394;
      goto LABEL_1286;
    case 186:
      v352 = a3;
      v354 = a4;
      v1598 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v357 = v1598 & 3;
      if (!v357)
      {
        return 0;
      }

      goto LABEL_275;
    case 187:
      v1599 = a3;
      v1318 = a4;
      v1600 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1600 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v1318, v1599 & 0x1F);
      v1320 = (v1599 >> 5) & 0x1F;
      v1321 = word_298DFBCEE;
      goto LABEL_1209;
    case 188:
      v1601 = a3;
      v914 = a4;
      v1602 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v46 = v1602 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v914, (v1601 >> 5) & 0x1F);
      v50 = (v1601 >> 20) & 4 | (v1601 >> 17) & 3;
      goto LABEL_700;
    case 189:
      v1603 = a3;
      v1318 = a4;
      v1604 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1604 & 3;
      if (!v46)
      {
        return 0;
      }

      v1588 = v1603;
      sub_298B1A0DC(v1318, v1603 & 0x1F);
      v1591 = (v1603 >> 20) & 4 | (v1603 >> 17) & 3;
LABEL_1207:
      sub_298B0A034(v1318, 2, v1591);
LABEL_1208:
      v1320 = (v1588 >> 5) & 0xF;
      v1321 = word_298DFB41A;
      goto LABEL_1209;
    case 190:
      v1605 = a3;
      v44 = a4;
      v1606 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1606 & 3;
      if (!v46)
      {
        return 0;
      }

      if (((v1605 >> 5) & 0x10) != 0)
      {
        v1607 = (v1605 >> 5) & 0x1F | 0xFFFFFFFFFFFFFFE0;
      }

      else
      {
        v1607 = (v1605 >> 5) & 0x1F;
      }

      sub_298B0A034(v44, 2, v1607);
      v47 = HIWORD(v1605) & 0x1F;
      v48 = v47 | 0xFFFFFFFFFFFFFFE0;
      v49 = (v1605 & 0x100000) == 0;
      goto LABEL_40;
    case 191:
      v1608 = a3;
      v44 = a4;
      v1609 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1609 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A55C(v44, (v1608 >> 5) & 0x1F);
      goto LABEL_1230;
    case 192:
      v1610 = a3;
      v1611 = a4;
      v1612 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1579 = v1612 & 3;
      if (!v1579)
      {
        return 0;
      }

      if (((v1610 >> 5) & 0x10) != 0)
      {
        v1613 = (v1610 >> 5) & 0x1F | 0xFFFFFFFFFFFFFFE0;
      }

      else
      {
        v1613 = (v1610 >> 5) & 0x1F;
      }

      sub_298B0A034(v1611, 2, v1613);
      goto LABEL_1728;
    case 193:
      v1610 = a3;
      v1611 = a4;
      v1614 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1579 = v1614 & 3;
      if (!v1579)
      {
        return 0;
      }

      goto LABEL_1727;
    case 194:
      v1615 = a3;
      v44 = a4;
      v1616 = result;
      sub_298B1A150(a4, a3 & 0x1F);
      v46 = v1616 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A150(v44, HIWORD(v1615) & 0x1F);
LABEL_1227:
      v47 = (v1615 >> 5) & 0x3F;
      v48 = v47 | 0xFFFFFFFFFFFFFFC0;
      v49 = ((v1615 >> 5) & 0x20) == 0;
      goto LABEL_40;
    case 195:
      v1615 = a3;
      v44 = a4;
      v1617 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v46 = v1617 & 3;
      if (v46)
      {
        goto LABEL_1227;
      }

      return 0;
    case 196:
      v1608 = a3;
      v44 = a4;
      v1618 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1618 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFBCEE[(v1608 >> 5) & 0x1F]);
LABEL_1230:
      v47 = HIWORD(v1608) & 0x1F;
      v48 = v47 | 0xFFFFFFFFFFFFFFE0;
      v49 = (v1608 & 0x100000) == 0;
      goto LABEL_40;
    case 197:
      v819 = a3;
      v822 = a4;
      v1619 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1619 & 3;
      if (!v46)
      {
        return 0;
      }

      if (((v819 >> 5) & 0x10) != 0)
      {
        v1620 = (v819 >> 5) & 0x1F | 0xFFFFFFFFFFFFFFE0;
      }

      else
      {
        v1620 = (v819 >> 5) & 0x1F;
      }

      sub_298B0A034(v822, 2, v1620);
      goto LABEL_631;
    case 198:
      v1621 = a3;
      v822 = a4;
      v1622 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      goto LABEL_1348;
    case 199:
      v1623 = a3;
      v475 = word_298DFB41A;
      v363 = a4;
      v1624 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v365 = v1624 & 3;
      if (!v365)
      {
        return 0;
      }

      goto LABEL_1311;
    case 200:
      v1625 = a3;
      v1626 = a3 & 0xF;
      goto LABEL_1325;
    case 201:
      v1627 = a3;
      v1478 = a4;
      v1628 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v176 = v1628 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A0DC(v1478, (v1627 >> 5) & 0x1F);
      goto LABEL_1983;
    case 202:
      v1452 = a3;
      v1453 = a4;
      v1629 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v176 = v1629 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A0DC(v1453, (v1452 >> 5) & 0x1F);
      goto LABEL_1988;
    case 203:
      v1630 = a3;
      v174 = a4;
      v1631 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v176 = v1631 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A0DC(v174, (v1630 >> 5) & 0x1F);
      v177 = HIWORD(v1630) & 0x1F;
      goto LABEL_139;
    case 204:
      v1632 = a3;
      v887 = a4;
      v1633 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v889 = v1633 & 3;
      if (!v889)
      {
        return 0;
      }

      sub_298B1A0DC(v887, (v1632 >> 5) & 0x1F);
      v890 = HIWORD(v1632) & 7;
      goto LABEL_681;
    case 205:
      v1634 = a3;
      v917 = a4;
      v1635 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v889 = v1635 & 3;
      if (!v889)
      {
        return 0;
      }

      sub_298B1A0DC(v917, (v1634 >> 5) & 0x1F);
      goto LABEL_1999;
    case 206:
      v1636 = a3;
      v1489 = a4;
      v1637 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v889 = v1637 & 3;
      if (!v889)
      {
        return 0;
      }

      sub_298B1A0DC(v1489, (v1636 >> 5) & 0x1F);
      goto LABEL_1737;
    case 207:
      v1455 = a3;
      v1456 = a4;
      v1638 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v176 = v1638 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A0DC(v1456, (v1455 >> 5) & 0x1F);
LABEL_1254:
      v177 = (v1455 >> 17) & 0x20 | HIWORD(v1455) & 0x1F;
      goto LABEL_1255;
    case 208:
      v1639 = a3;
      v1495 = a4;
      v1640 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v889 = v1640 & 3;
      if (!v889)
      {
        return 0;
      }

      sub_298B1A0DC(v1495, (v1639 >> 5) & 0x1F);
      v890 = (v1639 >> 17) & 0x20 | HIWORD(v1639) & 0x1F;
      goto LABEL_2038;
    case 209:
      v1641 = a3;
      v1318 = a4;
      v1642 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1642 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v1318, v1641 & 0x1F);
      sub_298B0A034(v1318, 1, word_298DFB41A[(v1641 >> 10) & 7]);
      v1320 = (v1641 >> 5) & 0x1F;
      v1321 = "\r";
      goto LABEL_1209;
    case 210:
      v1643 = a3;
      v1318 = a4;
      v1644 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1644 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v1318, v1643 & 0x1F);
      sub_298B0A034(v1318, 1, word_298DFB41A[(v1643 >> 10) & 7]);
      v1320 = (v1643 >> 5) & 0x1F;
      v1321 = word_298DFB36E;
      goto LABEL_1209;
    case 211:
      v1189 = a3;
      v1190 = a4;
      v1472 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      goto LABEL_1282;
    case 212:
      v1189 = a3;
      v1645 = a3 & 0x1F;
      v1646 = "\r";
      goto LABEL_1281;
    case 213:
      v1189 = a3;
      v1645 = a3 & 0x1F;
      v1646 = word_298DFB36E;
      goto LABEL_1281;
    case 214:
      v1647 = a3;
      v1318 = a4;
      v1648 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1648 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v1318, v1647 & 0x1F);
      sub_298B0A034(v1318, 1, word_298DFB41A[(v1647 >> 10) & 7]);
      v1320 = (v1647 >> 5) & 0x1F;
      v1321 = word_298DFB922;
      goto LABEL_1209;
    case 215:
      v1649 = a3;
      v1650 = a3 & 0x1F;
      v1651 = "\r";
      goto LABEL_1292;
    case 216:
      v1649 = a3;
      v1650 = a3 & 0x1F;
      v1651 = word_298DFB36E;
      goto LABEL_1292;
    case 217:
      v1652 = a3;
      v822 = a4;
      v1653 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1653 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v822, 1, word_298DFB41A[(v1652 >> 10) & 7]);
      v826 = (v1652 >> 5) & 0x1F;
      v827 = word_298DFCDBC;
      goto LABEL_632;
    case 218:
      v1189 = a3;
      v1190 = a4;
      v1654 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v1192 = v1654 & 3;
      if (!v1192)
      {
        return 0;
      }

      sub_298B0A034(v1190, 1, word_298DFB41A[(v1189 >> 10) & 7]);
      sub_298B1A55C(v1190, v1189 & 0x1F);
      goto LABEL_1284;
    case 219:
      v1655 = a3;
      v1318 = a4;
      v1656 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1656 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v1318, v1655 & 0x1F);
      sub_298B0A034(v1318, 1, word_298DFB41A[(v1655 >> 10) & 7]);
      v1320 = (v1655 >> 5) & 0x1F;
      v1321 = word_298DFB86A;
      goto LABEL_1209;
    case 220:
      v1657 = a3;
      v1318 = a4;
      v1658 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1658 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v1318, v1657 & 0x1F);
      sub_298B0A034(v1318, 1, word_298DFB41A[(v1657 >> 10) & 7]);
      v1320 = (v1657 >> 5) & 0x1F;
      v1321 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
LABEL_1209:
      v50 = v1321[v1320];
      v51 = v1318;
      goto LABEL_604;
    case 221:
      v1189 = a3;
      v1645 = a3 & 0x1F;
      v1646 = word_298DFBCEE;
      goto LABEL_1281;
    case 222:
      v1189 = a3;
      v1645 = a3 & 0x1F;
      v1646 = word_298DFB86A;
      goto LABEL_1281;
    case 223:
      v1189 = a3;
      v1645 = a3 & 0x1F;
      v1646 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
LABEL_1281:
      v1190 = a4;
      v1472 = result;
      sub_298B0A034(a4, 1, v1646[v1645]);
LABEL_1282:
      v1192 = v1472 & 3;
      if (!v1192)
      {
        return 0;
      }

LABEL_1283:
      sub_298B0A034(v1190, 1, word_298DFB41A[(v1189 >> 10) & 7]);
LABEL_1284:
      v1367 = (v1189 >> 5) & 0x1F;
      goto LABEL_1285;
    case 224:
      v1659 = a3;
      v1660 = a4;
      v1661 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v357 = v1661 & 3;
      if (!v357)
      {
        return 0;
      }

      sub_298B1A0DC(v1660, v1659 & 0x1F);
      sub_298B0A034(v1660, 1, word_298DFB41A[(v1659 >> 10) & 7]);
      v358 = (v1659 >> 5) & 0x1F;
      v359 = v1660;
      goto LABEL_351;
    case 225:
      v1649 = a3;
      v1650 = a3 & 0x1F;
      v1651 = word_298DFB86A;
      goto LABEL_1292;
    case 226:
      v1649 = a3;
      v1650 = a3 & 0x1F;
      v1651 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_1292;
    case 227:
      v1649 = a3;
      v1650 = a3 & 0x1F;
      v1651 = word_298DFBCEE;
LABEL_1292:
      v1662 = v1651[v1650];
      v633 = a4;
      v1663 = result;
      sub_298B0A034(a4, 1, v1662);
      v635 = v1663 & 3;
      if (!v635)
      {
        return 0;
      }

      sub_298B0A034(v633, 1, word_298DFB41A[(v1649 >> 10) & 7]);
      sub_298B0A034(v633, 1, v1662);
      v636 = (v1649 >> 5) & 0x1F;
LABEL_515:
      v637 = v633;
LABEL_516:
      sub_298B1A0DC(v637, v636);
      return v635;
    case 228:
      v1664 = a3;
      v44 = a4;
      v1665 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v46 = v1665 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, (v1664 >> 5) & 0x1F);
      v50 = (HIWORD(v1664) & 0xF) + 1;
      goto LABEL_43;
    case 229:
      v1666 = a3;
      v1667 = word_298DFBCEE[a3 & 0x1F];
      v895 = a4;
      v1668 = result;
      sub_298B0A034(a4, 1, v1667);
      v365 = v1668 & 3;
      if (!v365)
      {
        return 0;
      }

      sub_298B0A034(v895, 1, v1667);
      sub_298B0A034(v895, 2, (v1666 >> 5) & 0x1F);
      v368 = (HIWORD(v1666) & 0xF) + 1;
      goto LABEL_685;
    case 230:
      v1669 = a3;
      v914 = a4;
      v1670 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v46 = v1670 & 3;
      if (!v46)
      {
        return 0;
      }

      v1671 = v1669;
      sub_298B1A55C(v914, v1669 & 0x1F);
      goto LABEL_1302;
    case 231:
      v1672 = a3;
      v914 = a4;
      v1673 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1673 & 3;
      if (!v46)
      {
        return 0;
      }

      v1671 = v1672;
      sub_298B1A0DC(v914, v1672 & 0x1F);
LABEL_1302:
      sub_298B0A034(v914, 2, (v1671 >> 5) & 0x1F);
      v50 = (HIWORD(v1671) & 0xF) + 1;
      goto LABEL_700;
    case 232:
      v1475 = a3;
      v1190 = a4;
      v1674 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1192 = v1674 & 3;
      if (!v1192)
      {
        return 0;
      }

      v1675 = (v1475 >> 10) & 0xF;
      goto LABEL_1436;
    case 233:
      v1676 = a3;
      v1190 = a4;
      v1677 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v1192 = v1677 & 3;
      if (!v1192)
      {
        return 0;
      }

      sub_298B0A034(v1190, 1, word_298DFB41A[(v1676 >> 10) & 7]);
      sub_298B1A0DC(v1190, (v1676 >> 5) & 0x1F);
      v1367 = HIWORD(v1676) & 0x1F;
      goto LABEL_1285;
    case 234:
      v1678 = a3;
      v44 = a4;
      v1679 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v46 = v1679 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFB41A[(v1678 >> 10) & 7]);
      sub_298B1A0DC(v44, (v1678 >> 5) & 0x1F);
      v47 = HIWORD(v1678) & 0x1F;
      v48 = v47 | 0xFFFFFFFFFFFFFFE0;
      v49 = (v1678 & 0x100000) == 0;
      goto LABEL_40;
    case 235:
      v1623 = a3;
      v475 = word_298DFB41A;
      v363 = a4;
      v1680 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v365 = v1680 & 3;
      if (!v365)
      {
        return 0;
      }

      sub_298B0A034(v363, 1, word_298DFB41A[(v1623 >> 10) & 0xF]);
LABEL_1311:
      sub_298B0A034(v363, 1, word_298DFB41A[(v1623 >> 5) & 0xF]);
      v477 = HIWORD(v1623) & 0xF;
      goto LABEL_374;
    case 236:
      v1681 = a3;
      v475 = word_298DFB41A;
      v363 = a4;
      v1682 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v365 = v1682 & 3;
      if (!v365)
      {
        return 0;
      }

      sub_298B0A034(v363, 1, word_298DFB41A[(v1681 >> 10) & 0xF]);
      v477 = (v1681 >> 5) & 0xF;
      goto LABEL_374;
    case 237:
      v1683 = a3;
      v1684 = word_298DFB41A[a3 & 0xF];
      v1685 = a4;
      v1686 = result;
      sub_298B0A034(a4, 1, v1684);
      v365 = v1686 & 3;
      if (!v365)
      {
        return 0;
      }

      sub_298B0A034(v1685, 1, word_298DFB41A[(v1683 >> 10) & 0xF]);
LABEL_1319:
      sub_298B0A034(v1685, 1, word_298DFB41A[(v1683 >> 5) & 0xF]);
      v369 = v1685;
      goto LABEL_1320;
    case 238:
      v1687 = a3;
      v1688 = word_298DFB41A[a3 & 0xF];
      v1689 = a4;
      v1690 = result;
      sub_298B0A034(a4, 1, v1688);
      v276 = v1690 & 3;
      if (!v276)
      {
        return 0;
      }

      sub_298B0A034(v1689, 1, v1688);
      sub_298B0A034(v1689, 1, word_298DFB41A[(v1687 >> 10) & 0xF]);
      v278 = word_298DFB41A[(v1687 >> 5) & 0xF];
      v279 = v1689;
      goto LABEL_222;
    case 239:
      v1683 = a3;
      v1684 = word_298DFB41A[a3 & 0xF];
      v1685 = a4;
      v1691 = result;
      sub_298B0A034(a4, 1, v1684);
      v365 = v1691 & 3;
      if (v365)
      {
        goto LABEL_1319;
      }

      return 0;
    case 240:
      v1692 = a3;
      v1216 = a4;
      v1693 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v365 = v1693 & 3;
      if (!v365)
      {
        return 0;
      }

      v368 = (v1692 >> 5) & 0x1F;
      goto LABEL_2051;
    case 241:
      v76 = a3 & 0xF;
      goto LABEL_1364;
    case 242:
      v1625 = a3;
      v1626 = (a3 >> 10) & 0xF;
LABEL_1325:
      v273 = word_298DFB41A;
      v274 = a4;
      v1694 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[v1626]);
      v276 = v1694 & 3;
      if (!v276)
      {
        return 0;
      }

      v277 = (v1625 >> 5) & 0xF;
      goto LABEL_220;
    case 243:
      v1695 = a3;
      v44 = a4;
      v1696 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v46 = v1696 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFB41A[(v1695 >> 10) & 7]);
      sub_298B1A0DC(v44, (v1695 >> 5) & 0x1F);
      v50 = (v1695 >> 14) & 0x7F;
      goto LABEL_43;
    case 244:
      v1697 = a3;
      v1577 = a4;
      v1698 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v1579 = v1698 & 3;
      if (!v1579)
      {
        return 0;
      }

      sub_298B1A55C(v1577, (v1697 >> 5) & 0x1F);
      v1580 = HIWORD(v1697) & 0x1F;
LABEL_1331:
      v1699 = v1577;
      goto LABEL_1730;
    case 245:
      v1621 = a3;
      v1700 = a3 & 0xF;
      v1701 = word_298DFB41A;
      goto LABEL_1347;
    case 246:
      v1702 = a3;
      v1703 = a4;
      v1704 = result;
      sub_298B1A55C(a4, (a3 >> 5) & 0x1F);
      v1705 = v1704 & 3;
      if (!v1705)
      {
        return 0;
      }

      sub_298B1A55C(v1703, HIWORD(v1702) & 0x1F);
      return v1705;
    case 247:
      v271 = a3;
      v272 = (a3 >> 5) & 0x1F;
      v273 = word_298DFBCEE;
      goto LABEL_218;
    case 248:
      v1706 = a3;
      v44 = a4;
      v1707 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v46 = v1707 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFB41A[(v1706 >> 10) & 0xF]);
      sub_298B0A034(v44, 1, word_298DFB41A[(v1706 >> 5) & 0xF]);
      sub_298B0A034(v44, 1, word_298DFBA40[HIWORD(v1706) & 3]);
      v50 = (v1706 >> 23) & 1;
      goto LABEL_43;
    case 249:
      v1708 = a3;
      v44 = a4;
      v1709 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v46 = v1709 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFB41A[(v1708 >> 10) & 0xF]);
      sub_298B0A034(v44, 1, word_298DFB41A[(v1708 >> 5) & 0xF]);
      sub_298B0A034(v44, 1, word_298DFBA40[HIWORD(v1708) & 3]);
      v50 = (v1708 >> 22) & 3;
      goto LABEL_43;
    case 250:
      v1710 = a3;
      v44 = a4;
      v1711 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v46 = v1711 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFB41A[(v1710 >> 10) & 0xF]);
      sub_298B0A034(v44, 1, word_298DFB41A[(v1710 >> 5) & 0xF]);
      sub_298B0A034(v44, 1, word_298DFBA40[HIWORD(v1710) & 3]);
      v50 = (v1710 >> 21) & 6 | (v1710 >> 20) & 1;
      goto LABEL_43;
    case 251:
      v1712 = a3;
      v44 = a4;
      v1713 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v46 = v1713 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFB41A[(v1712 >> 10) & 0xF]);
      sub_298B0A034(v44, 1, word_298DFB41A[(v1712 >> 5) & 0xF]);
      sub_298B0A034(v44, 1, word_298DFBA40[HIWORD(v1712) & 3]);
      v50 = (v1712 >> 20) & 0xC | (v1712 >> 19) & 3;
      goto LABEL_43;
    case 252:
      v1714 = a3;
      v44 = a4;
      v1715 = result;
      sub_298B0A034(a4, 1, word_298DFB3E8[a3 & 7 | 8]);
      v46 = v1715 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFBCEE[(v1714 >> 5) & 0x1F]);
      sub_298B0A034(v44, 1, word_298DFBCEE[HIWORD(v1714) & 0x1F]);
      v50 = (v1714 >> 13) & 1;
      goto LABEL_43;
    case 253:
      v1621 = a3;
      v1700 = a3 & 0xE;
      v1701 = word_298DFB4CE;
LABEL_1347:
      v822 = a4;
      v1622 = result;
      sub_298B0A034(a4, 1, v1701[v1700]);
LABEL_1348:
      v46 = v1622 & 3;
      if (!v46)
      {
        return 0;
      }

      v1716 = (v1621 >> 5) & 0x1F;
      v1449 = word_298DFBCEE;
      goto LABEL_1350;
    case 254:
      v1717 = a3;
      v44 = a4;
      v1718 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v46 = v1718 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFB3E8[(v1717 >> 5) | 8]);
      v50 = (v1717 >> 8) & 3;
      goto LABEL_43;
    case 255:
      v1719 = a3;
      v44 = a4;
      v1720 = result;
      sub_298B0A034(a4, 1, word_298DFB4CE[a3 & 0xF]);
      v46 = v1720 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFB3E8[(v1719 >> 5) | 8]);
      v50 = (v1719 >> 8) & 1;
      goto LABEL_43;
    case 256:
      v76 = a3 & 7 | 8;
      v77 = word_298DFB3E8;
      goto LABEL_71;
    case 257:
      v1721 = a3;
      v822 = a4;
      v1722 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v46 = v1722 & 3;
      if (!v46)
      {
        return 0;
      }

      v1449 = word_298DFB41A;
      sub_298B0A034(v822, 1, word_298DFB41A[(v1721 >> 10) & 0xF]);
      v1450 = (v1721 >> 5) & 0xF;
      goto LABEL_1351;
    case 258:
      v1723 = a3;
      v44 = a4;
      v1724 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v46 = v1724 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFB3E8[(v1723 >> 5) & 0xF]);
      v50 = (v1723 >> 10) & 1;
      goto LABEL_43;
    case 259:
      v1725 = a3;
      v1684 = word_298DFBCEE[a3 & 0x1F];
      v1726 = a4;
      v1727 = result;
      sub_298B0A034(a4, 1, v1684);
      v365 = v1727 & 3;
      if (!v365)
      {
        return 0;
      }

      sub_298B0A034(v1726, 1, word_298DFB41A[(v1725 >> 5) & 0xF]);
      v369 = v1726;
      goto LABEL_1320;
    case 260:
      v76 = (a3 >> 5) & 0xF;
LABEL_1364:
      v77 = word_298DFB41A;
      goto LABEL_71;
    case 261:
      v1728 = a3;
      v1611 = a4;
      v1729 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v1579 = v1729 & 3;
      if (!v1579)
      {
        return 0;
      }

      sub_298B0A034(v1611, 1, word_298DFB41A[(v1728 >> 5) & 0xF]);
      v1580 = v1728 & 0x1F;
      goto LABEL_1729;
    case 262:
      v1730 = a3;
      v1506 = a4;
      v1731 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1500 = v1731 & 3;
      if (!v1500)
      {
        return 0;
      }

      v1508 = v1730;
      sub_298B1A0DC(v1506, v1730 & 0x1F);
LABEL_1369:
      v1732 = (v1508 >> 5) & 0x1FF;
      v1733 = v1506;
      return sub_298B1A3B4(v1733, v1732) & v1500;
    case 263:
      v1734 = a3;
      v1510 = a4;
      v1735 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1504 = v1735 & 3;
      if (!v1504)
      {
        return 0;
      }

      v1512 = v1734;
      sub_298B1A0DC(v1510, v1734 & 0x1F);
LABEL_1372:
      v1736 = (v1512 >> 5) & 0x1FF;
      v1737 = v1510;
      goto LABEL_1395;
    case 264:
      v1738 = a3;
      v1523 = a4;
      v1739 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1504 = v1739 & 3;
      if (!v1504)
      {
        return 0;
      }

      v1525 = v1738;
      sub_298B1A0DC(v1523, v1738 & 0x1F);
LABEL_1375:
      v1736 = (v1525 >> 5) & 0x1FF;
      v1737 = v1523;
      goto LABEL_1395;
    case 265:
      v1740 = a3;
      v1527 = a4;
      v1741 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1504 = v1741 & 3;
      if (!v1504)
      {
        return 0;
      }

      v1529 = v1740;
      sub_298B1A0DC(v1527, v1740 & 0x1F);
LABEL_1378:
      v1736 = (v1529 >> 5) & 0x1FF;
      v1737 = v1527;
      goto LABEL_1395;
    case 266:
      v1742 = a3;
      v914 = a4;
      v1743 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1743 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v914, v1742 & 0x1F);
      if (((v1742 >> 5) & 0x80) != 0)
      {
        v50 = (v1742 >> 5) | 0xFFFFFFFFFFFFFF00;
      }

      else
      {
        v50 = (v1742 >> 5);
      }

      goto LABEL_700;
    case 267:
      v1744 = a3;
      v914 = a4;
      v1745 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1745 & 3;
      if (!v46)
      {
        return 0;
      }

      v1515 = v1744;
      sub_298B1A0DC(v914, v1744 & 0x1F);
LABEL_1385:
      v50 = (v1515 >> 5);
      goto LABEL_700;
    case 268:
      v1497 = a3;
      v1498 = a4;
      v1746 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1500 = v1746 & 3;
      if (!v1500)
      {
        return 0;
      }

LABEL_1387:
      v1732 = (v1497 >> 5) & 0x1FF;
      v1733 = v1498;
      return sub_298B1A3B4(v1733, v1732) & v1500;
    case 269:
      v1501 = a3;
      v1502 = a4;
      v1747 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1504 = v1747 & 3;
      if (!v1504)
      {
        return 0;
      }

LABEL_1390:
      v1736 = (v1501 >> 5) & 0x1FF;
      v1737 = v1502;
      goto LABEL_1395;
    case 270:
      v1516 = a3;
      v1517 = a4;
      v1748 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1504 = v1748 & 3;
      if (!v1504)
      {
        return 0;
      }

LABEL_1392:
      v1736 = (v1516 >> 5) & 0x1FF;
      v1737 = v1517;
      goto LABEL_1395;
    case 271:
      v1519 = a3;
      v1520 = a4;
      v1749 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1504 = v1749 & 3;
      if (!v1504)
      {
        return 0;
      }

LABEL_1394:
      v1736 = (v1519 >> 5) & 0x1FF;
      v1737 = v1520;
LABEL_1395:
      sub_298B1A488(v1737, v1736);
      return v1504;
    case 272:
      v1750 = a3;
      v44 = a4;
      v1751 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1751 & 3;
      if (!v46)
      {
        return 0;
      }

      v50 = (v1750 >> 5);
      goto LABEL_43;
    case 273:
      v1752 = a3;
      v914 = a4;
      v1753 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1753 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v914, v1752 & 0x1F);
      sub_298B1A0DC(v914, (v1752 >> 5) & 0x1F);
      sub_298B1A0DC(v914, HIWORD(v1752) & 7);
      v50 = (v1752 >> 20) & 4 | (v1752 >> 19) & 3;
      goto LABEL_700;
    case 274:
      v1754 = a3;
      v914 = a4;
      v1755 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1755 & 3;
      if (!v46)
      {
        return 0;
      }

      v1756 = v1754;
      sub_298B1A0DC(v914, v1754 & 0x1F);
      sub_298B1A0DC(v914, (v1754 >> 5) & 0x1F);
      sub_298B1A0DC(v914, HIWORD(v1754) & 0x1F);
      goto LABEL_1416;
    case 275:
      v1757 = a3;
      v914 = a4;
      v1758 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1758 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v914, v1757 & 0x1F);
      sub_298B1A0DC(v914, (v1757 >> 5) & 0x1F);
      sub_298B1A0DC(v914, HIWORD(v1757) & 7);
      v50 = (v1757 >> 19) & 3;
      goto LABEL_700;
    case 276:
      v1759 = a3;
      v914 = a4;
      v1760 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1760 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v914, v1759 & 0x1F);
      sub_298B1A0DC(v914, (v1759 >> 5) & 0x1F);
      sub_298B1A0DC(v914, HIWORD(v1759) & 0xF);
      v50 = (v1759 >> 20) & 1;
      goto LABEL_700;
    case 277:
      v1761 = a3;
      v914 = a4;
      v1762 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1762 & 3;
      if (!v46)
      {
        return 0;
      }

      v1763 = v1761;
      sub_298B1A0DC(v914, v1761 & 0x1F);
      sub_298B1A0DC(v914, (v1761 >> 5) & 0x1F);
      sub_298B1A0DC(v914, HIWORD(v1761) & 7);
      v1764 = (v1761 >> 18) & 6;
      goto LABEL_1410;
    case 278:
      v1765 = a3;
      v914 = a4;
      v1766 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1766 & 3;
      if (!v46)
      {
        return 0;
      }

      v1763 = v1765;
      sub_298B1A0DC(v914, v1765 & 0x1F);
      sub_298B1A0DC(v914, (v1765 >> 5) & 0x1F);
      sub_298B1A0DC(v914, HIWORD(v1765) & 0xF);
      v1764 = (v1765 >> 19) & 2;
LABEL_1410:
      v50 = v1764 & 0xFFFFFFFE | (v1763 >> 11) & 1;
      goto LABEL_700;
    case 279:
      v1767 = a3;
      v914 = a4;
      v1768 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1768 & 3;
      if (!v46)
      {
        return 0;
      }

      v1756 = v1767;
      sub_298B1A0DC(v914, v1767 & 0x1F);
      sub_298B1A0DC(v914, (v1767 >> 5) & 0x1F);
      sub_298B1A0DC(v914, HIWORD(v1767) & 7);
      v1769 = (v1767 >> 19) & 3;
      goto LABEL_1415;
    case 280:
      v1770 = a3;
      v914 = a4;
      v1771 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1771 & 3;
      if (!v46)
      {
        return 0;
      }

      v1756 = v1770;
      sub_298B1A0DC(v914, v1770 & 0x1F);
      sub_298B1A0DC(v914, (v1770 >> 5) & 0x1F);
      sub_298B1A0DC(v914, HIWORD(v1770) & 0xF);
      v1769 = (v1770 >> 20) & 1;
LABEL_1415:
      sub_298B0A034(v914, 2, v1769);
LABEL_1416:
      v50 = (v1756 >> 10) & 3;
      goto LABEL_700;
    case 281:
      v1535 = a3;
      v44 = a4;
      v1772 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1772 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1535 >> 5) & 0x1F);
      goto LABEL_1425;
    case 282:
      v1773 = a3;
      v44 = a4;
      v1774 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1774 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1773 >> 5) & 0x1F);
      sub_298B1A0DC(v44, HIWORD(v1773) & 0x1F);
      v50 = (v1773 >> 21) & 6 | (v1773 >> 12) & 1;
      goto LABEL_43;
    case 283:
      v1775 = a3;
      v44 = a4;
      v1776 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1776 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1775 >> 5) & 0x1F);
      sub_298B1A0DC(v44, HIWORD(v1775) & 0x1F);
      v50 = (v1775 >> 23) & 1;
      goto LABEL_43;
    case 284:
      v1535 = a3;
      v44 = a4;
      v1777 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1777 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFCDBC[(v1535 >> 5) & 0x1F]);
LABEL_1425:
      v1537 = HIWORD(v1535) & 0x1F;
LABEL_1426:
      sub_298B1A0DC(v44, v1537);
      v50 = (v1535 >> 22) & 3;
      goto LABEL_43;
    case 285:
      v1778 = a3;
      v44 = a4;
      v1779 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1779 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1778 >> 5) & 0x1F);
      sub_298B1A0DC(v44, HIWORD(v1778) & 7);
      v1780 = (v1778 >> 18) & 6;
      goto LABEL_1431;
    case 286:
      v1778 = a3;
      v44 = a4;
      v1781 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1781 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1778 >> 5) & 0x1F);
      sub_298B1A0DC(v44, HIWORD(v1778) & 0xF);
      v1780 = (v1778 >> 19) & 2;
LABEL_1431:
      v50 = v1780 & 0xFFFFFFFE | (v1778 >> 11) & 1;
      goto LABEL_43;
    case 287:
      v1782 = a3;
      v914 = a4;
      v1783 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1783 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v914, v1782 & 0x1F);
      sub_298B1A0DC(v914, (v1782 >> 5) & 0x1F);
      v50 = (v1782 >> 10) & 1;
      goto LABEL_700;
    case 288:
      v1475 = a3;
      v1190 = a4;
      v1784 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1192 = v1784 & 3;
      if (!v1192)
      {
        return 0;
      }

      v1675 = (v1475 >> 10) & 7;
LABEL_1436:
      sub_298B0A034(v1190, 1, word_298DFB41A[v1675]);
LABEL_1437:
      sub_298B1A0DC(v1190, (v1475 >> 5) & 0x1F);
      goto LABEL_1438;
    case 289:
      v1785 = a3;
      v44 = a4;
      v1786 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1786 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1785 >> 5) & 0x1F);
      sub_298B1A0DC(v44, HIWORD(v1785) & 7);
      v50 = (v1785 >> 20) & 4 | (v1785 >> 19) & 3;
      goto LABEL_43;
    case 290:
      v1548 = a3;
      v44 = a4;
      v1787 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1787 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1548 >> 5) & 0x1F);
      sub_298B1A0DC(v44, HIWORD(v1548) & 7);
      goto LABEL_2018;
    case 291:
      v1788 = a3;
      v44 = a4;
      v1789 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1789 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v44, (v1788 >> 5) & 0x1F);
      sub_298B1A0DC(v44, HIWORD(v1788) & 0xF);
      v50 = (v1788 >> 20) & 1;
      goto LABEL_43;
    case 292:
      v1790 = a3;
      v1791 = a4;
      v1792 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1793 = v1792 & 3;
      if (!v1793)
      {
        return 0;
      }

      sub_298B1A0DC(v1791, v1790 & 0x1F);
      return v1793;
    case 293:
      v1794 = a3;
      v1795 = a4;
      v1796 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v889 = v1796 & 3;
      if (!v889)
      {
        return 0;
      }

      sub_298B1A0DC(v1795, v1794 & 0x1F);
      sub_298B1A0DC(v1795, (v1794 >> 5) & 0x1F);
      v890 = HIWORD(v1794) & 7;
      v891 = v1795;
      goto LABEL_682;
    case 294:
      v1797 = a3;
      v1798 = a4;
      v1799 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v889 = v1799 & 3;
      if (!v889)
      {
        return 0;
      }

      sub_298B1A0DC(v1798, v1797 & 0x1F);
      sub_298B1A0DC(v1798, (v1797 >> 5) & 0x1F);
      v890 = HIWORD(v1797) & 0xF;
      v891 = v1798;
      v892 = 16;
      goto LABEL_706;
    case 295:
      v1800 = a3;
      v1801 = a4;
      v1802 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v889 = v1802 & 3;
      if (!v889)
      {
        return 0;
      }

      sub_298B1A0DC(v1801, v1800 & 0x1F);
      sub_298B1A0DC(v1801, (v1800 >> 5) & 0x1F);
      v890 = HIWORD(v1800) & 0x1F;
      v891 = v1801;
      goto LABEL_1739;
    case 296:
      v1803 = a3;
      v1804 = a4;
      v1805 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v889 = v1805 & 3;
      if (!v889)
      {
        return 0;
      }

      sub_298B1A0DC(v1804, v1803 & 0x1F);
      sub_298B1A0DC(v1804, (v1803 >> 5) & 0x1F);
      v890 = (v1803 >> 17) & 0x20 | HIWORD(v1803) & 0x1F;
      v891 = v1804;
      v892 = 64;
      goto LABEL_706;
    case 297:
      v1806 = a3;
      v44 = a4;
      v1807 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1807 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFB41A[(v1806 >> 10) & 7]);
      sub_298B1A0DC(v44, v1806 & 0x1F);
      sub_298B1A0DC(v44, (v1806 >> 5) & 0x1F);
      sub_298B1A0DC(v44, HIWORD(v1806) & 0x1F);
      v50 = (v1806 >> 13) & 3;
      goto LABEL_43;
    case 298:
      v1808 = a3;
      v914 = a4;
      v1809 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1809 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v914, v1808 & 0x1F);
      sub_298B1A0DC(v914, (v1808 >> 5) & 0x1F);
      sub_298B1A0DC(v914, HIWORD(v1808) & 7);
      v50 = (v1808 >> 17) & 0xC | (v1808 >> 10) & 3;
      goto LABEL_700;
    case 299:
      v1810 = a3;
      v44 = a4;
      v1811 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1811 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFB41A[(v1810 >> 10) & 7]);
      sub_298B1A0DC(v44, v1810 & 0x1F);
      sub_298B1A0DC(v44, (v1810 >> 5) & 0x1F);
      v50 = HIWORD(v1810) & 1;
      goto LABEL_43;
    case 300:
      v1812 = a3;
      v1190 = a4;
      v1813 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v1192 = v1813 & 3;
      if (!v1192)
      {
        return 0;
      }

      sub_298B0A034(v1190, 1, word_298DFB41A[(v1812 >> 10) & 7]);
      v1367 = (v1812 >> 5) & 0x1F;
      goto LABEL_1285;
    case 301:
      v1814 = a3;
      v914 = a4;
      v1815 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1815 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v914, v1814 & 0x1F);
      sub_298B1A0DC(v914, (v1814 >> 5) & 0x1F);
      v50 = HIWORD(v1814) & 7;
      goto LABEL_700;
    case 302:
      v1816 = a3;
      v44 = a4;
      v1817 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1817 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFB41A[(v1816 >> 10) & 7]);
      sub_298B1A0DC(v44, v1816 & 0x1F);
      v50 = (v1816 >> 5) & 1;
      goto LABEL_43;
    case 303:
      v1475 = a3;
      v1190 = a4;
      v1818 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v1192 = v1818 & 3;
      if (!v1192)
      {
        return 0;
      }

      sub_298B0A034(v1190, 1, word_298DFB41A[(v1475 >> 10) & 7]);
      sub_298B1A150(v1190, (v1475 >> 5) & 0x1F);
LABEL_1438:
      v1367 = HIWORD(v1475) & 0x1F;
LABEL_1285:
      v1597 = v1190;
      goto LABEL_1286;
    case 304:
      v1819 = result;
      v1820 = a3;
      v1821 = a4;
      sub_298B0A034(a4, 2, a3 & 0xF);
      sub_298B0A034(v1821, 1, word_298DFB41A[(v1820 >> 10) & 7]);
      v1192 = v1819 & 3;
      if (!v1192)
      {
        return 0;
      }

      sub_298B1A150(v1821, (v1820 >> 5) & 0x1F);
      v1367 = HIWORD(v1820) & 0x1F;
      v1597 = v1821;
LABEL_1286:
      sub_298B1A0DC(v1597, v1367);
      return v1192;
    case 305:
      v1822 = a3;
      v914 = a4;
      v1823 = result;
      sub_298B0A034(a4, 1, word_298DFB41A[a3 & 0xF]);
      v46 = v1823 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A150(v914, (v1822 >> 5) & 0x1F);
      if (((v1822 >> 13) & 0x100) != 0)
      {
        v50 = (v1822 >> 13) & 0x1F8 | (v1822 >> 10) & 7 | 0xFFFFFFFFFFFFFE00;
      }

      else
      {
        v50 = (v1822 >> 13) & 0x1F8 | (v1822 >> 10) & 7;
      }

      goto LABEL_700;
    case 306:
      v1824 = result;
      v1825 = a3;
      v1826 = a4;
      sub_298B0A034(a4, 2, a3 & 0xF);
      v1827 = v1825;
      v1828 = word_298DFB41A[(v1825 >> 10) & 7];
      v1829 = v1826;
      sub_298B0A034(v1826, 1, v1828);
      v46 = v1824 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A150(v1826, (v1827 >> 5) & 0x1F);
      if ((v1827 & 0x200000) != 0)
      {
        v50 = HIWORD(v1827) & 0x3F | 0xFFFFFFFFFFFFFFC0;
      }

      else
      {
        v50 = HIWORD(v1827) & 0x3F;
      }

      goto LABEL_1492;
    case 307:
      v1830 = a3;
      v44 = a4;
      v1831 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1831 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A150(v44, (v1830 >> 5) & 0x1F);
      v47 = (v1830 >> 13) & 0x1F8 | (v1830 >> 10) & 7;
      v48 = v47 | 0xFFFFFFFFFFFFFE00;
      v49 = ((v1830 >> 13) & 0x100) == 0;
      goto LABEL_40;
    case 308:
      v819 = a3;
      v822 = a4;
      v1832 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1832 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v822, 1, word_298DFB41A[(v819 >> 10) & 7]);
      sub_298B1A0DC(v822, (v819 >> 5) & 0x1F);
      goto LABEL_631;
    case 309:
      v1833 = a3;
      v44 = a4;
      v1834 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1834 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFB41A[(v1833 >> 10) & 7]);
      sub_298B1A0DC(v44, (v1833 >> 5) & 0x1F);
      v50 = HIWORD(v1833) & 0x1F;
      goto LABEL_43;
    case 310:
      v1835 = a3;
      v44 = a4;
      v1836 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1836 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFB41A[(v1835 >> 10) & 7]);
      sub_298B1A150(v44, (v1835 >> 5) & 0x1F);
      v50 = HIWORD(v1835) & 0x3F;
      goto LABEL_43;
    case 311:
      v1837 = result;
      v1838 = a3;
      v1839 = a4;
      sub_298B0A034(a4, 2, a3 & 0xF);
      sub_298B0A034(v1839, 1, word_298DFB41A[(v1838 >> 10) & 7]);
      if ((v1837 & 3) == 0)
      {
        return 0;
      }

      sub_298B1A150(v1839, (v1838 >> 5) & 0x1F);
      v1840 = HIWORD(v1838) & 0x1F;
      if (v1840 == 31)
      {
        v1841 = 0;
      }

      else
      {
        sub_298B0A034(v1839, 1, word_298DFBDB2[v1840]);
        v1841 = 3;
      }

      return v1841 & v1837 & 3u;
    case 312:
      v1842 = result;
      v1843 = a3;
      v1844 = a4;
      sub_298B0A034(a4, 2, a3 & 0xF);
      v1845 = v1843;
      v1846 = word_298DFB41A[(v1843 >> 10) & 7];
      v1829 = v1844;
      sub_298B0A034(v1844, 1, v1846);
      v46 = v1842 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A0DC(v1844, (v1845 >> 5) & 0x1F);
      v50 = HIWORD(v1845) & 0x1F;
LABEL_1492:
      v51 = v1829;
      goto LABEL_44;
    case 313:
      v1847 = a3;
      v1848 = a4;
      v1849 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      goto LABEL_1503;
    case 314:
      v1850 = a3;
      v44 = a4;
      v1851 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      goto LABEL_1510;
    case 315:
      v819 = a3;
      v822 = a4;
      v1852 = result;
      sub_298B1A0DC(a4, a3 & 0x1F);
      v46 = v1852 & 3;
      if (!v46)
      {
        return 0;
      }

LABEL_1084:
      v1186 = (v819 >> 10) & 7;
      v1187 = word_298DFB41A;
LABEL_1085:
      sub_298B0A034(v822, 1, v1187[v1186]);
      sub_298B1A150(v822, (v819 >> 5) & 0x1F);
      goto LABEL_631;
    case 316:
      v1847 = a3;
      v1853 = a3 & 0x1F;
      v1854 = word_298DFCDBC;
      goto LABEL_1502;
    case 317:
      v1850 = a3;
      v1855 = a3 & 0x1F;
      v1856 = word_298DFCDBC;
      goto LABEL_1509;
    case 318:
      v1847 = a3;
      v1853 = a3 & 0x1F;
      v1854 = &unk_298DFD6C0;
      goto LABEL_1502;
    case 319:
      v1850 = a3;
      v1855 = a3 & 0x1F;
      v1856 = &unk_298DFD6C0;
      goto LABEL_1509;
    case 320:
      v1847 = a3;
      v1853 = a3 & 0x1F;
      v1854 = word_298DFE670;
LABEL_1502:
      v1848 = a4;
      v1849 = result;
      sub_298B0A034(a4, 1, v1854[v1853]);
LABEL_1503:
      v1857 = v1849 & 3;
      if (!v1857)
      {
        return 0;
      }

      sub_298B0A034(v1848, 1, word_298DFB41A[(v1847 >> 10) & 7]);
      sub_298B1A150(v1848, (v1847 >> 5) & 0x1F);
      v1858 = HIWORD(v1847) & 0x1F;
      if (v1858 == 31)
      {
        v1859 = 0;
      }

      else
      {
        sub_298B0A034(v1848, 1, word_298DFBDB2[v1858]);
        v1859 = 3;
      }

      return v1859 & v1857;
    case 321:
      v1850 = a3;
      v1855 = a3 & 0x1F;
      v1856 = word_298DFE670;
LABEL_1509:
      v44 = a4;
      v1851 = result;
      sub_298B0A034(a4, 1, v1856[v1855]);
LABEL_1510:
      v46 = v1851 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFB41A[(v1850 >> 10) & 7]);
      sub_298B1A150(v44, (v1850 >> 5) & 0x1F);
      v47 = HIWORD(v1850) & 0xF;
      v48 = v47 | 0xFFFFFFFFFFFFFFF0;
      v49 = (v1850 & 0x80000) == 0;
      goto LABEL_40;
    case 322:
      return sub_298B1A5D0(a4, a3) & result;
    case 323:
      v352 = a3;
      v1860 = HIWORD(a3) & 0x1F;
      v354 = a4;
      v1861 = sub_298B1DC44(a4, 0x20u, v1860) & result;
      if (!v1861)
      {
        return 0;
      }

      v1862 = sub_298B1DC44(v354, 0x20u, v1860) & v1861;
      if (!v1862)
      {
        return 0;
      }

      v357 = sub_298B1DC44(v354, 0x20u, v352 & 0x1F) & v1862;
      if (!v357)
      {
        return 0;
      }

      goto LABEL_275;
    case 324:
      v855 = a3;
      v1863 = HIWORD(a3) & 0x1F;
      v580 = a4;
      v1864 = result;
      sub_298B1A55C(a4, v1863);
      v406 = v1864 & 3;
      if (!v406)
      {
        return 0;
      }

      sub_298B1A55C(v580, v1863);
      sub_298B1A55C(v580, v855 & 0x1F);
      goto LABEL_656;
    case 325:
      return sub_298B1A8C8(a4, a3) & result;
    case 326:
      return sub_298B1ABCC(a4, a3) & result;
    case 327:
      return sub_298B1ADBC(a4, a3) & result;
    case 328:
      v352 = a3;
      v353 = HIWORD(a3) & 0x1F;
      v354 = a4;
      v355 = sub_298B1DC44(a4, 0x3Bu, v353) & result;
      if (v355)
      {
        v356 = sub_298B1DC44(v354, 0x3Bu, v353) & v355;
        if (v356)
        {
          v357 = sub_298B1DC44(v354, 0x3Bu, v352 & 0x1F) & v356;
          if (v357)
          {
            goto LABEL_275;
          }
        }
      }

      return 0;
    case 329:
      v578 = a3;
      v579 = word_298DFBCEE[HIWORD(a3) & 0x1F];
      v580 = a4;
      v581 = result;
      sub_298B0A034(a4, 1, v579);
      v406 = v581 & 3;
      if (!v406)
      {
        return 0;
      }

      sub_298B0A034(v580, 1, v579);
      sub_298B0A034(v580, 1, word_298DFBCEE[v578 & 0x1F]);
      v410 = (v578 >> 5) & 0x1F;
      goto LABEL_472;
    case 330:
      v22 = word_298DFC9B6[a3 & 0x1F];
      v23 = *(a4 + 24);
      if (v23 >= *(a4 + 28))
      {
        v663 = result;
        v664 = a3;
        v665 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v23 + 1, 16);
        LOBYTE(result) = v663;
        a3 = v664;
        a4 = v665;
        LODWORD(v23) = *(v665 + 24);
      }

      v24 = (*(a4 + 16) + 16 * v23);
      *v24 = 1;
      v24[1] = v22;
      v25 = (*(a4 + 24) + 1);
      *(a4 + 24) = v25;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      v19 = word_298DFBD50[(a3 >> 5) & 0x1F];
      v26 = *(a4 + 28);
      goto LABEL_16;
    case 331:
      v303 = a3;
      v304 = a3 & 0x1F;
      v305 = &unk_298DFC74A;
      goto LABEL_242;
    case 332:
      v1870 = a3;
      v1871 = a3 & 0x1F;
      v1872 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_1971;
    case 333:
      v303 = a3;
      v304 = a3 & 0x1F;
      v305 = &unk_298DFC052;
LABEL_242:
      v306 = a4;
      v307 = result;
      sub_298B0A034(a4, 1, v305[v304]);
      result = v307 & 3;
      if ((v307 & 3) != 0)
      {
        v308 = word_298DFBD50[(v303 >> 5) & 0x1F];
        v309 = v306;
        v310 = v306[6];
        if (v310 >= v306[7])
        {
          sub_298B90A44((v306 + 4), v306 + 8, v310 + 1, 16);
          result = v307 & 3;
          v309 = v306;
          LODWORD(v310) = v306[6];
        }

        v311 = (*(v309 + 2) + 16 * v310);
        *v311 = 1;
        v311[1] = v308;
        ++v309[6];
      }

      return result;
    case 334:
      v1870 = a3;
      v1871 = a3 & 0x1F;
      v1872 = word_298DFE5F0;
      goto LABEL_1971;
    case 335:
      v1870 = a3;
      v1871 = a3 & 0x1F;
      v1872 = word_298DFD63C;
      goto LABEL_1971;
    case 336:
      v352 = a3;
      v354 = a4;
      v1873 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v357 = v1873 & 3;
      if (!v357)
      {
        return 0;
      }

      goto LABEL_275;
    case 337:
      v1870 = a3;
      v1871 = a3 & 0x1F;
      v1872 = word_298DFCD40;
      goto LABEL_1971;
    case 338:
      v1874 = a3;
      v1875 = (a3 >> 5) & 0x1F;
      v1876 = a4;
      v1877 = result;
      sub_298B1A150(a4, v1875);
      v365 = v1877 & 3;
      if (!v365)
      {
        return 0;
      }

      v1878 = v1874 & 0x1F;
      v1879 = word_298DFC9B6;
      goto LABEL_1544;
    case 339:
      v1874 = a3;
      v1875 = (a3 >> 5) & 0x1F;
      v1876 = a4;
      v1880 = result;
      sub_298B1A150(a4, v1875);
      v365 = v1880 & 3;
      if (!v365)
      {
        return 0;
      }

      v1878 = v1874 & 0x1F;
      v1879 = &unk_298DFC74A;
      goto LABEL_1544;
    case 340:
      v818 = result;
      v819 = a3;
      v820 = word_298DFBD50[(a3 >> 5) & 0x1F];
      v821 = *(a4 + 24);
      v822 = a4;
      if (v821 >= *(a4 + 28))
      {
        sub_298B90A44(a4 + 16, (a4 + 32), v821 + 1, 16);
        LODWORD(v821) = *(v822 + 24);
      }

      v823 = (*(v822 + 16) + 16 * v821);
      *v823 = 1;
      v823[1] = v820;
      ++*(v822 + 24);
      v46 = v818 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v822, 1, a0123456789Abcd_0[v819 & 0x1F]);
      v824 = *(v822 + 24);
      if (v824 >= *(v822 + 28))
      {
        sub_298B90A44(v822 + 16, (v822 + 32), v824 + 1, 16);
        LODWORD(v824) = *(v822 + 24);
      }

      v825 = (*(v822 + 16) + 16 * v824);
      *v825 = 1;
      v825[1] = v820;
      ++*(v822 + 24);
LABEL_631:
      v826 = HIWORD(v819) & 0x1F;
      v827 = word_298DFBCEE;
      goto LABEL_632;
    case 341:
      v1874 = a3;
      v1875 = (a3 >> 5) & 0x1F;
      v1876 = a4;
      v1881 = result;
      sub_298B1A150(a4, v1875);
      v365 = v1881 & 3;
      if (!v365)
      {
        return 0;
      }

      v1878 = v1874 & 0x1F;
      v1879 = &unk_298DFC052;
      goto LABEL_1544;
    case 342:
      v1874 = a3;
      v1875 = (a3 >> 5) & 0x1F;
      v1876 = a4;
      v1882 = result;
      sub_298B1A150(a4, v1875);
      v365 = v1882 & 3;
      if (!v365)
      {
        return 0;
      }

      v1878 = v1874 & 0x1F;
      v1879 = word_298DFE5F0;
      goto LABEL_1544;
    case 343:
      v782 = result;
      v783 = a3;
      v784 = word_298DFBD50[(a3 >> 5) & 0x1F];
      v785 = *(a4 + 24);
      v786 = a4;
      if (v785 >= *(a4 + 28))
      {
        sub_298B90A44(a4 + 16, (a4 + 32), v785 + 1, 16);
        LODWORD(v785) = *(v786 + 24);
      }

      v787 = (*(v786 + 16) + 16 * v785);
      *v787 = 1;
      v787[1] = v784;
      ++*(v786 + 24);
      v46 = v782 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v786, 1, word_298DFD63C[v783 & 0x1F]);
      v788 = *(v786 + 24);
      if (v788 >= *(v786 + 28))
      {
        sub_298B90A44(v786 + 16, (v786 + 32), v788 + 1, 16);
        LODWORD(v788) = *(v786 + 24);
      }

      v51 = v786;
      v789 = (*(v786 + 16) + 16 * v788);
      *v789 = 1;
      v789[1] = v784;
      ++*(v786 + 24);
      v50 = word_298DFBCEE[HIWORD(v783) & 0x1F];
      goto LABEL_604;
    case 344:
      v1883 = a3;
      v1884 = (a3 >> 5) & 0x1F;
      v1885 = a4;
      v1886 = result;
      sub_298B1A150(a4, v1884);
      v365 = v1886 & 3;
      if (!v365)
      {
        return 0;
      }

      v1887 = v1883;
      sub_298B1A1C4(v1885, v1883 & 0x1F);
      goto LABEL_1667;
    case 345:
      v1874 = a3;
      v1875 = (a3 >> 5) & 0x1F;
      v1876 = a4;
      v1888 = result;
      sub_298B1A150(a4, v1875);
      v365 = v1888 & 3;
      if (!v365)
      {
        return 0;
      }

      v1878 = v1874 & 0x1F;
      v1879 = word_298DFCD40;
LABEL_1544:
      v1889 = v1879[v1878];
      v1890 = v1876;
      v1891 = 1;
      goto LABEL_1637;
    case 346:
      v352 = a3;
      v354 = a4;
      v1892 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      goto LABEL_1551;
    case 347:
      v831 = a3;
      v832 = a3 & 0x1F;
      v833 = word_298DFD63C;
      goto LABEL_636;
    case 348:
      v978 = result;
      v831 = a3;
      v979 = word_298DFC574[a3 & 0x1F];
      v980 = *(a4 + 24);
      v834 = a4;
      if (v980 >= *(a4 + 28))
      {
        sub_298B90A44(a4 + 16, (a4 + 32), v980 + 1, 16);
        LODWORD(v980) = *(v834 + 24);
      }

      v981 = (*(v834 + 16) + 16 * v980);
      *v981 = 1;
      v981[1] = v979;
      v838 = (*(v834 + 24) + 1);
      *(v834 + 24) = v838;
      v836 = v978 & 3;
      if (!v836)
      {
        return 0;
      }

      v837 = (v831 >> 28) & 4 | (v831 >> 11) & 3;
      goto LABEL_639;
    case 349:
      v352 = a3;
      v1893 = a3 & 0x1F;
      v1894 = word_298DFD63C;
      goto LABEL_1555;
    case 350:
      v352 = a3;
      v354 = a4;
      v1895 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      goto LABEL_1561;
    case 351:
      v352 = a3;
      v354 = a4;
      v1896 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      goto LABEL_1566;
    case 352:
      v352 = a3;
      v1897 = a3 & 0x1F;
      v1898 = word_298DFD63C;
      goto LABEL_1560;
    case 353:
      v831 = a3;
      v834 = a4;
      v1039 = result;
      sub_298B0A034(a4, 1, word_298DFD63C[a3 & 0x1F]);
      v836 = v1039 & 3;
      if (!v836)
      {
        return 0;
      }

      v837 = (v831 >> 30) & 1;
      goto LABEL_638;
    case 354:
      v831 = a3;
      v832 = a3 & 0x1F;
      v833 = word_298DFCD40;
LABEL_636:
      v834 = a4;
      v835 = result;
      sub_298B0A034(a4, 1, v833[v832]);
      v836 = v835 & 3;
      if (!v836)
      {
        return 0;
      }

      v837 = (v831 >> 27) & 8 | (v831 >> 10) & 7;
LABEL_638:
      v838 = *(v834 + 24);
LABEL_639:
      if (v838 >= *(v834 + 28))
      {
        sub_298B90A44(v834 + 16, (v834 + 32), v838 + 1, 16);
        LODWORD(v838) = *(v834 + 24);
      }

      v839 = (*(v834 + 16) + 16 * v838);
      *v839 = 2;
      v839[1] = v837;
      v840 = *(v834 + 28);
      v841 = (*(v834 + 24) + 1);
      *(v834 + 24) = v841;
      v842 = word_298DFBD50[(v831 >> 5) & 0x1F];
      if (v841 >= v840)
      {
        sub_298B90A44(v834 + 16, (v834 + 32), v841 + 1, 16);
        LODWORD(v841) = *(v834 + 24);
      }

      v843 = (*(v834 + 16) + 16 * v841);
      v844 = 1;
      goto LABEL_644;
    case 355:
      v352 = a3;
      v354 = a4;
      v1892 = result;
      sub_298B0A034(a4, 1, word_298DFE5F0[a3 & 0x1F]);
LABEL_1551:
      v357 = v1892 & 3;
      if (!v357)
      {
        return 0;
      }

      v1899 = (v352 >> 27) & 8 | (v352 >> 10) & 7;
      goto LABEL_1563;
    case 356:
      v352 = a3;
      v1893 = a3 & 0x1F;
      v1894 = word_298DFCD40;
      goto LABEL_1555;
    case 357:
      v352 = a3;
      v1893 = a3 & 0x1F;
      v1894 = word_298DFE5F0;
LABEL_1555:
      v354 = a4;
      v1900 = result;
      sub_298B0A034(a4, 1, v1894[v1893]);
      v357 = v1900 & 3;
      if (!v357)
      {
        return 0;
      }

      v1899 = (v352 >> 28) & 4 | (v352 >> 11) & 3;
      goto LABEL_1563;
    case 358:
      v352 = a3;
      v1897 = a3 & 0x1F;
      v1898 = word_298DFCD40;
      goto LABEL_1560;
    case 359:
      v352 = a3;
      v1901 = a3 & 0x1F;
      v1902 = word_298DFCD40;
      goto LABEL_1565;
    case 360:
      v352 = a3;
      v1897 = a3 & 0x1F;
      v1898 = word_298DFE5F0;
LABEL_1560:
      v354 = a4;
      v1895 = result;
      sub_298B0A034(a4, 1, v1898[v1897]);
LABEL_1561:
      v357 = v1895 & 3;
      if (!v357)
      {
        return 0;
      }

      v1899 = (v352 >> 29) & 2 | (v352 >> 12) & 1;
      goto LABEL_1563;
    case 361:
      v352 = a3;
      v1901 = a3 & 0x1F;
      v1902 = word_298DFE5F0;
LABEL_1565:
      v354 = a4;
      v1896 = result;
      sub_298B0A034(a4, 1, v1902[v1901]);
LABEL_1566:
      v357 = v1896 & 3;
      if (!v357)
      {
        return 0;
      }

      v1899 = (v352 >> 30) & 1;
LABEL_1563:
      sub_298B0A034(v354, 2, v1899);
LABEL_275:
      v358 = (v352 >> 5) & 0x1F;
      v359 = v354;
      goto LABEL_351;
    case 362:
      v1903 = a3;
      v1904 = a4;
      v1905 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v357 = v1905 & 3;
      if (!v357)
      {
        return 0;
      }

      v1906 = v1903;
      sub_298B1A1C4(v1904, v1903 & 0x1F);
      v1907 = (v1903 >> 27) & 8 | (v1903 >> 10) & 7;
      goto LABEL_1578;
    case 363:
      v855 = a3;
      v1908 = a3 & 0x1F;
      v1909 = word_298DFD63C;
      goto LABEL_1586;
    case 364:
      v1910 = a3;
      v1904 = a4;
      v1911 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v357 = v1911 & 3;
      if (!v357)
      {
        return 0;
      }

      v1906 = v1910;
      sub_298B1A1C4(v1904, v1910 & 0x1F);
      v1907 = (v1910 >> 28) & 4 | (v1910 >> 11) & 3;
      goto LABEL_1578;
    case 365:
      v855 = a3;
      v1912 = a3 & 0x1F;
      v1913 = word_298DFD63C;
      goto LABEL_1590;
    case 366:
      v1914 = a3;
      v1904 = a4;
      v1915 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v357 = v1915 & 3;
      if (!v357)
      {
        return 0;
      }

      v1906 = v1914;
      sub_298B1A1C4(v1904, v1914 & 0x1F);
      v1907 = (v1914 >> 29) & 2 | (v1914 >> 12) & 1;
      goto LABEL_1578;
    case 367:
      v1916 = a3;
      v1904 = a4;
      v1917 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v357 = v1917 & 3;
      if (!v357)
      {
        return 0;
      }

      v1906 = v1916;
      sub_298B1A1C4(v1904, v1916 & 0x1F);
      v1907 = (v1916 >> 30) & 1;
LABEL_1578:
      sub_298B0A034(v1904, 2, v1907);
      v358 = (v1906 >> 5) & 0x1F;
      v359 = v1904;
      goto LABEL_351;
    case 368:
      v735 = a3;
      v736 = word_298DFD63C[a3 & 0x1F];
      v737 = a4;
      v738 = result;
      sub_298B0A034(a4, 1, v736);
      v739 = v738 & 3;
      if (!v739)
      {
        return 0;
      }

      sub_298B0A034(v737, 1, v736);
      v740 = (v735 >> 29) & 2 | (v735 >> 12) & 1;
      goto LABEL_569;
    case 369:
      v855 = a3;
      v856 = word_298DFD63C[a3 & 0x1F];
      v580 = a4;
      v857 = result;
      sub_298B0A034(a4, 1, v856);
      v406 = v857 & 3;
      if (v406)
      {
        goto LABEL_654;
      }

      return 0;
    case 370:
      v735 = a3;
      v758 = word_298DFCD40[a3 & 0x1F];
      v737 = a4;
      v759 = result;
      sub_298B0A034(a4, 1, v758);
      v739 = v759 & 3;
      if (!v739)
      {
        return 0;
      }

      sub_298B0A034(v737, 1, v758);
      v740 = (v735 >> 27) & 8 | (v735 >> 10) & 7;
LABEL_569:
      v741 = *(v737 + 24);
      if (v741 >= *(v737 + 28))
      {
        sub_298B90A44(v737 + 16, (v737 + 32), v741 + 1, 16);
        LODWORD(v741) = *(v737 + 24);
      }

      v742 = (*(v737 + 16) + 16 * v741);
      *v742 = 2;
      v742[1] = v740;
      v743 = *(v737 + 28);
      v744 = (*(v737 + 24) + 1);
      *(v737 + 24) = v744;
      v745 = word_298DFBD50[(v735 >> 5) & 0x1F];
      if (v744 >= v743)
      {
        sub_298B90A44(v737 + 16, (v737 + 32), v744 + 1, 16);
        LODWORD(v744) = *(v737 + 24);
      }

      v746 = (*(v737 + 16) + 16 * v744);
      *v746 = 1;
      v746[1] = v745;
      ++*(v737 + 24);
      return v739;
    case 371:
      v855 = a3;
      v1908 = a3 & 0x1F;
      v1909 = word_298DFE5F0;
LABEL_1586:
      v1925 = v1909[v1908];
      v580 = a4;
      v1926 = result;
      sub_298B0A034(a4, 1, v1925);
      v406 = v1926 & 3;
      if (!v406)
      {
        return 0;
      }

      sub_298B0A034(v580, 1, v1925);
      v858 = (v855 >> 27) & 8 | (v855 >> 10) & 7;
      goto LABEL_655;
    case 372:
      v855 = a3;
      v1912 = a3 & 0x1F;
      v1913 = word_298DFCD40;
      goto LABEL_1590;
    case 373:
      v855 = a3;
      v1912 = a3 & 0x1F;
      v1913 = word_298DFE5F0;
LABEL_1590:
      v1927 = v1913[v1912];
      v580 = a4;
      v1928 = result;
      sub_298B0A034(a4, 1, v1927);
      v406 = v1928 & 3;
      if (!v406)
      {
        return 0;
      }

      sub_298B0A034(v580, 1, v1927);
      v858 = (v855 >> 28) & 4 | (v855 >> 11) & 3;
      goto LABEL_655;
    case 374:
      v855 = a3;
      v1929 = a3 & 0x1F;
      v1930 = word_298DFCD40;
      goto LABEL_1595;
    case 375:
      v855 = a3;
      v1931 = a3 & 0x1F;
      v1932 = word_298DFCD40;
      goto LABEL_1598;
    case 376:
      v855 = a3;
      v1929 = a3 & 0x1F;
      v1930 = word_298DFE5F0;
LABEL_1595:
      v1933 = v1930[v1929];
      v580 = a4;
      v1934 = result;
      sub_298B0A034(a4, 1, v1933);
      v406 = v1934 & 3;
      if (!v406)
      {
        return 0;
      }

      sub_298B0A034(v580, 1, v1933);
      v858 = (v855 >> 29) & 2 | (v855 >> 12) & 1;
      goto LABEL_655;
    case 377:
      v855 = a3;
      v1931 = a3 & 0x1F;
      v1932 = word_298DFE5F0;
LABEL_1598:
      v856 = v1932[v1931];
      v580 = a4;
      v1935 = result;
      sub_298B0A034(a4, 1, v856);
      v406 = v1935 & 3;
      if (!v406)
      {
        return 0;
      }

LABEL_654:
      sub_298B0A034(v580, 1, v856);
      v858 = (v855 >> 30) & 1;
LABEL_655:
      sub_298B0A034(v580, 2, v858);
LABEL_656:
      v410 = (v855 >> 5) & 0x1F;
LABEL_472:
      v409 = v580;
      goto LABEL_319;
    case 378:
      v1936 = a3;
      v1884 = (a3 >> 5) & 0x1F;
      v1885 = a4;
      v1937 = result;
      sub_298B1A150(a4, v1884);
      v365 = v1937 & 3;
      if (!v365)
      {
        return 0;
      }

      v1887 = v1936;
      goto LABEL_1640;
    case 379:
      v1874 = a3;
      v1875 = (a3 >> 5) & 0x1F;
      v1876 = a4;
      v1938 = result;
      sub_298B1A150(a4, v1875);
      v365 = v1938 & 3;
      if (!v365)
      {
        return 0;
      }

      v1939 = v1874 & 0x1F;
      v1940 = word_298DFCD40;
      goto LABEL_1608;
    case 380:
      v1874 = a3;
      v1875 = (a3 >> 5) & 0x1F;
      v1876 = a4;
      v1941 = result;
      sub_298B1A150(a4, v1875);
      v365 = v1941 & 3;
      if (!v365)
      {
        return 0;
      }

      v1939 = v1874 & 0x1F;
      v1940 = word_298DFD63C;
      goto LABEL_1608;
    case 381:
      v1874 = a3;
      v1875 = (a3 >> 5) & 0x1F;
      v1876 = a4;
      v1942 = result;
      sub_298B1A150(a4, v1875);
      v365 = v1942 & 3;
      if (!v365)
      {
        return 0;
      }

      v1939 = v1874 & 0x1F;
      v1940 = word_298DFE5F0;
LABEL_1608:
      sub_298B0A034(v1876, 1, v1940[v1939]);
      v1889 = (v1874 >> 27) & 8 | (v1874 >> 10) & 7;
      goto LABEL_1636;
    case 382:
      v1943 = a3;
      v1884 = (a3 >> 5) & 0x1F;
      v1885 = a4;
      v1944 = result;
      sub_298B1A150(a4, v1884);
      v365 = v1944 & 3;
      if (!v365)
      {
        return 0;
      }

      v1887 = v1943;
      goto LABEL_1650;
    case 383:
      v1874 = a3;
      v1875 = (a3 >> 5) & 0x1F;
      v1876 = a4;
      v1945 = result;
      sub_298B1A150(a4, v1875);
      v365 = v1945 & 3;
      if (!v365)
      {
        return 0;
      }

      v1946 = v1874 & 0x1F;
      v1947 = word_298DFCD40;
      goto LABEL_1617;
    case 384:
      v1874 = a3;
      v1875 = (a3 >> 5) & 0x1F;
      v1876 = a4;
      v1948 = result;
      sub_298B1A150(a4, v1875);
      v365 = v1948 & 3;
      if (!v365)
      {
        return 0;
      }

      v1946 = v1874 & 0x1F;
      v1947 = word_298DFD63C;
      goto LABEL_1617;
    case 385:
      v1874 = a3;
      v1875 = (a3 >> 5) & 0x1F;
      v1876 = a4;
      v1949 = result;
      sub_298B1A150(a4, v1875);
      v365 = v1949 & 3;
      if (!v365)
      {
        return 0;
      }

      v1946 = v1874 & 0x1F;
      v1947 = word_298DFE5F0;
LABEL_1617:
      sub_298B0A034(v1876, 1, v1947[v1946]);
      v1889 = (v1874 >> 28) & 4 | (v1874 >> 11) & 3;
      goto LABEL_1636;
    case 386:
      v1950 = a3;
      v1884 = (a3 >> 5) & 0x1F;
      v1885 = a4;
      v1951 = result;
      sub_298B1A150(a4, v1884);
      v365 = v1951 & 3;
      if (!v365)
      {
        return 0;
      }

      v1887 = v1950;
      goto LABEL_1660;
    case 387:
      v1874 = a3;
      v1875 = (a3 >> 5) & 0x1F;
      v1876 = a4;
      v1952 = result;
      sub_298B1A150(a4, v1875);
      v365 = v1952 & 3;
      if (!v365)
      {
        return 0;
      }

      v1953 = v1874 & 0x1F;
      v1954 = word_298DFCD40;
      goto LABEL_1630;
    case 388:
      v1955 = a3;
      v1884 = (a3 >> 5) & 0x1F;
      v1885 = a4;
      v1956 = result;
      sub_298B1A150(a4, v1884);
      v365 = v1956 & 3;
      if (!v365)
      {
        return 0;
      }

      v1887 = v1955;
      goto LABEL_1665;
    case 389:
      v1874 = a3;
      v1875 = (a3 >> 5) & 0x1F;
      v1876 = a4;
      v1957 = result;
      sub_298B1A150(a4, v1875);
      v365 = v1957 & 3;
      if (!v365)
      {
        return 0;
      }

      v1958 = v1874 & 0x1F;
      v1959 = word_298DFCD40;
      goto LABEL_1635;
    case 390:
      v1874 = a3;
      v1875 = (a3 >> 5) & 0x1F;
      v1876 = a4;
      v1960 = result;
      sub_298B1A150(a4, v1875);
      v365 = v1960 & 3;
      if (!v365)
      {
        return 0;
      }

      v1953 = v1874 & 0x1F;
      v1954 = word_298DFD63C;
      goto LABEL_1630;
    case 391:
      v1874 = a3;
      v1875 = (a3 >> 5) & 0x1F;
      v1876 = a4;
      v1961 = result;
      sub_298B1A150(a4, v1875);
      v365 = v1961 & 3;
      if (!v365)
      {
        return 0;
      }

      v1953 = v1874 & 0x1F;
      v1954 = word_298DFE5F0;
LABEL_1630:
      sub_298B0A034(v1876, 1, v1954[v1953]);
      v1889 = (v1874 >> 29) & 2 | (v1874 >> 12) & 1;
      goto LABEL_1636;
    case 392:
      v1874 = a3;
      v1875 = (a3 >> 5) & 0x1F;
      v1876 = a4;
      v1962 = result;
      sub_298B1A150(a4, v1875);
      v365 = v1962 & 3;
      if (!v365)
      {
        return 0;
      }

      v1958 = v1874 & 0x1F;
      v1959 = word_298DFD63C;
      goto LABEL_1635;
    case 393:
      v1874 = a3;
      v1875 = (a3 >> 5) & 0x1F;
      v1876 = a4;
      v1963 = result;
      sub_298B1A150(a4, v1875);
      v365 = v1963 & 3;
      if (!v365)
      {
        return 0;
      }

      v1958 = v1874 & 0x1F;
      v1959 = word_298DFE5F0;
LABEL_1635:
      sub_298B0A034(v1876, 1, v1959[v1958]);
      v1889 = (v1874 >> 30) & 1;
LABEL_1636:
      v1890 = v1876;
      v1891 = 2;
LABEL_1637:
      sub_298B0A034(v1890, v1891, v1889);
      sub_298B1A150(v1876, v1875);
      v368 = word_298DFBCEE[HIWORD(v1874) & 0x1F];
      v369 = v1876;
      goto LABEL_281;
    case 394:
      v1936 = a3;
      v1884 = (a3 >> 5) & 0x1F;
      v1885 = a4;
      v1964 = result;
      sub_298B1A150(a4, v1884);
      v365 = v1964 & 3;
      if (!v365)
      {
        return 0;
      }

      v1887 = v1936;
      sub_298B1A1C4(v1885, v1936 & 0x1F);
LABEL_1640:
      sub_298B1A1C4(v1885, v1936 & 0x1F);
      v1965 = (v1887 >> 27) & 8 | (v1887 >> 10) & 7;
      goto LABEL_1666;
    case 395:
      v1966 = a3;
      v1967 = (a3 >> 5) & 0x1F;
      v1968 = a4;
      v1969 = result;
      sub_298B1A150(a4, v1967);
      v276 = v1969 & 3;
      if (!v276)
      {
        return 0;
      }

      v1970 = v1966;
      v1971 = v1966 & 0x1F;
      v1972 = word_298DFCD40;
      goto LABEL_1647;
    case 396:
      v1973 = a3;
      v1967 = (a3 >> 5) & 0x1F;
      v1968 = a4;
      v1974 = result;
      sub_298B1A150(a4, v1967);
      v276 = v1974 & 3;
      if (!v276)
      {
        return 0;
      }

      v1970 = v1973;
      v1971 = v1973 & 0x1F;
      v1972 = word_298DFD63C;
      goto LABEL_1647;
    case 397:
      v1975 = a3;
      v1967 = (a3 >> 5) & 0x1F;
      v1968 = a4;
      v1976 = result;
      sub_298B1A150(a4, v1967);
      v276 = v1976 & 3;
      if (!v276)
      {
        return 0;
      }

      v1970 = v1975;
      v1971 = v1975 & 0x1F;
      v1972 = word_298DFE5F0;
LABEL_1647:
      v1977 = v1972[v1971];
      sub_298B0A034(v1968, 1, v1977);
      sub_298B0A034(v1968, 1, v1977);
      v1978 = (v1970 >> 27) & 8 | (v1970 >> 10) & 7;
      goto LABEL_1681;
    case 398:
      v1943 = a3;
      v1884 = (a3 >> 5) & 0x1F;
      v1885 = a4;
      v1979 = result;
      sub_298B1A150(a4, v1884);
      v365 = v1979 & 3;
      if (!v365)
      {
        return 0;
      }

      v1887 = v1943;
      sub_298B1A1C4(v1885, v1943 & 0x1F);
LABEL_1650:
      sub_298B1A1C4(v1885, v1943 & 0x1F);
      v1965 = (v1887 >> 28) & 4 | (v1887 >> 11) & 3;
      goto LABEL_1666;
    case 399:
      v1980 = a3;
      v1967 = (a3 >> 5) & 0x1F;
      v1968 = a4;
      v1981 = result;
      sub_298B1A150(a4, v1967);
      v276 = v1981 & 3;
      if (!v276)
      {
        return 0;
      }

      v1970 = v1980;
      v1982 = v1980 & 0x1F;
      v1983 = word_298DFCD40;
      goto LABEL_1657;
    case 400:
      v1984 = a3;
      v1967 = (a3 >> 5) & 0x1F;
      v1968 = a4;
      v1985 = result;
      sub_298B1A150(a4, v1967);
      v276 = v1985 & 3;
      if (!v276)
      {
        return 0;
      }

      v1970 = v1984;
      v1982 = v1984 & 0x1F;
      v1983 = word_298DFD63C;
      goto LABEL_1657;
    case 401:
      v1986 = a3;
      v1967 = (a3 >> 5) & 0x1F;
      v1968 = a4;
      v1987 = result;
      sub_298B1A150(a4, v1967);
      v276 = v1987 & 3;
      if (!v276)
      {
        return 0;
      }

      v1970 = v1986;
      v1982 = v1986 & 0x1F;
      v1983 = word_298DFE5F0;
LABEL_1657:
      v1988 = v1983[v1982];
      sub_298B0A034(v1968, 1, v1988);
      sub_298B0A034(v1968, 1, v1988);
      v1978 = (v1970 >> 28) & 4 | (v1970 >> 11) & 3;
      goto LABEL_1681;
    case 402:
      v1950 = a3;
      v1884 = (a3 >> 5) & 0x1F;
      v1885 = a4;
      v1989 = result;
      sub_298B1A150(a4, v1884);
      v365 = v1989 & 3;
      if (!v365)
      {
        return 0;
      }

      v1887 = v1950;
      sub_298B1A1C4(v1885, v1950 & 0x1F);
LABEL_1660:
      sub_298B1A1C4(v1885, v1950 & 0x1F);
      v1965 = (v1887 >> 29) & 2 | (v1887 >> 12) & 1;
      goto LABEL_1666;
    case 403:
      v1990 = a3;
      v1967 = (a3 >> 5) & 0x1F;
      v1968 = a4;
      v1991 = result;
      sub_298B1A150(a4, v1967);
      v276 = v1991 & 3;
      if (!v276)
      {
        return 0;
      }

      v1970 = v1990;
      v1992 = v1990 & 0x1F;
      v1993 = word_298DFCD40;
      goto LABEL_1675;
    case 404:
      v1955 = a3;
      v1884 = (a3 >> 5) & 0x1F;
      v1885 = a4;
      v1994 = result;
      sub_298B1A150(a4, v1884);
      v365 = v1994 & 3;
      if (!v365)
      {
        return 0;
      }

      v1887 = v1955;
      sub_298B1A1C4(v1885, v1955 & 0x1F);
LABEL_1665:
      sub_298B1A1C4(v1885, v1955 & 0x1F);
      v1965 = (v1887 >> 30) & 1;
LABEL_1666:
      sub_298B0A034(v1885, 2, v1965);
LABEL_1667:
      sub_298B1A150(v1885, v1884);
      v368 = word_298DFBCEE[HIWORD(v1887) & 0x1F];
      goto LABEL_1668;
    case 405:
      v1995 = a3;
      v1967 = (a3 >> 5) & 0x1F;
      v1968 = a4;
      v1996 = result;
      sub_298B1A150(a4, v1967);
      v276 = v1996 & 3;
      if (!v276)
      {
        return 0;
      }

      v1970 = v1995;
      v1997 = v1995 & 0x1F;
      v1998 = word_298DFCD40;
      goto LABEL_1680;
    case 406:
      v1999 = a3;
      v1967 = (a3 >> 5) & 0x1F;
      v1968 = a4;
      v2000 = result;
      sub_298B1A150(a4, v1967);
      v276 = v2000 & 3;
      if (!v276)
      {
        return 0;
      }

      v1970 = v1999;
      v1992 = v1999 & 0x1F;
      v1993 = word_298DFD63C;
      goto LABEL_1675;
    case 407:
      v2001 = a3;
      v1967 = (a3 >> 5) & 0x1F;
      v1968 = a4;
      v2002 = result;
      sub_298B1A150(a4, v1967);
      v276 = v2002 & 3;
      if (!v276)
      {
        return 0;
      }

      v1970 = v2001;
      v1992 = v2001 & 0x1F;
      v1993 = word_298DFE5F0;
LABEL_1675:
      v2003 = v1993[v1992];
      sub_298B0A034(v1968, 1, v2003);
      sub_298B0A034(v1968, 1, v2003);
      v1978 = (v1970 >> 29) & 2 | (v1970 >> 12) & 1;
      goto LABEL_1681;
    case 408:
      v2004 = a3;
      v1967 = (a3 >> 5) & 0x1F;
      v1968 = a4;
      v2005 = result;
      sub_298B1A150(a4, v1967);
      v276 = v2005 & 3;
      if (!v276)
      {
        return 0;
      }

      v1970 = v2004;
      v1997 = v2004 & 0x1F;
      v1998 = word_298DFD63C;
      goto LABEL_1680;
    case 409:
      v2006 = a3;
      v1967 = (a3 >> 5) & 0x1F;
      v1968 = a4;
      v2007 = result;
      sub_298B1A150(a4, v1967);
      v276 = v2007 & 3;
      if (!v276)
      {
        return 0;
      }

      v1970 = v2006;
      v1997 = v2006 & 0x1F;
      v1998 = word_298DFE5F0;
LABEL_1680:
      v2008 = v1998[v1997];
      sub_298B0A034(v1968, 1, v2008);
      sub_298B0A034(v1968, 1, v2008);
      v1978 = (v1970 >> 30) & 1;
LABEL_1681:
      sub_298B0A034(v1968, 2, v1978);
      sub_298B1A150(v1968, v1967);
      v278 = word_298DFBCEE[HIWORD(v1970) & 0x1F];
      v279 = v1968;
      goto LABEL_222;
    case 410:
      v2009 = a3;
      v2010 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      v1885 = a4;
      v2011 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v365 = v2011 & 3;
      if (!v365)
      {
        return 0;
      }

      sub_298B1A1C4(v1885, (v2009 >> 5) & 0x1F);
      v2012 = HIWORD(v2009) & 0x1F;
      goto LABEL_1931;
    case 411:
      v1621 = a3;
      v822 = a4;
      v2013 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2013 & 3;
      if (!v46)
      {
        return 0;
      }

      v1716 = (v1621 >> 5) & 0x1F;
      v1449 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
LABEL_1350:
      sub_298B0A034(v822, 1, v1449[v1716]);
      v1450 = HIWORD(v1621) & 0x1F;
LABEL_1351:
      v50 = v1449[v1450];
      goto LABEL_633;
    case 412:
      v2014 = a3;
      v2015 = a3 & 0x1F;
      v2016 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_1694;
    case 413:
      v2017 = a3;
      v2018 = a3 & 0x1F;
      v2019 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_1697;
    case 414:
      v911 = a3;
      v2020 = a3 & 0x1F;
      v2021 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_1700;
    case 415:
      v925 = a3;
      v363 = a4;
      v926 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v365 = v926 & 3;
      if (!v365)
      {
        return 0;
      }

      v927 = a0123456789Abcd_0[(v925 >> 5) & 0x1F];
      goto LABEL_711;
    case 416:
      v656 = a3;
      v657 = a0123456789Abcd_0[a3 & 0x1F];
      v658 = *(a4 + 24);
      if (v658 >= *(a4 + 28))
      {
        v2390 = result;
        v2391 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v658 + 1, 16);
        LOBYTE(result) = v2390;
        a4 = v2391;
        LODWORD(v658) = *(v2391 + 24);
      }

      v659 = (*(a4 + 16) + 16 * v658);
      *v659 = 1;
      v659[1] = v657;
      ++*(a4 + 24);
      v365 = result & 3;
      if ((result & 3) == 0)
      {
        return 0;
      }

      v368 = a0123456789Abcd_0[(v656 >> 5) & 0x1F];
      v369 = a4;
      goto LABEL_281;
    case 417:
      v906 = a3;
      v2027 = a3 & 0x1F;
      v2028 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_1830;
    case 418:
      v984 = a3;
      v985 = a0123456789Abcd_0[a3 & 0x1F];
      v986 = a4;
      v987 = result;
      sub_298B0A034(a4, 1, v985);
      v883 = v987 & 3;
      if (!v883)
      {
        return 0;
      }

      sub_298B0A034(v986, 1, v985);
      v988 = word_298DFC574[(v984 >> 5) & 0x1F];
      v989 = *(v986 + 24);
      if (v989 >= *(v986 + 28))
      {
        sub_298B90A44(v986 + 16, (v986 + 32), v989 + 1, 16);
        LODWORD(v989) = *(v986 + 24);
      }

      v990 = (*(v986 + 16) + 16 * v989);
      *v990 = 1;
      v990[1] = v988;
      ++*(v986 + 24);
      v884 = a0123456789Abcd_0[HIWORD(v984) & 0x1F];
      v885 = v986;
      goto LABEL_678;
    case 419:
      v68 = word_298DFC574[a3 & 0x1F];
      v69 = *(a4 + 24);
      if (v69 >= *(a4 + 28))
      {
        v998 = result;
        v999 = a3;
        v1000 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v69 + 1, 16);
        LOBYTE(result) = v998;
        a3 = v999;
        a4 = v1000;
        LODWORD(v69) = *(v1000 + 24);
      }

      v70 = (*(a4 + 16) + 16 * v69);
      *v70 = 1;
      v70[1] = v68;
      v71 = (*(a4 + 24) + 1);
      *(a4 + 24) = v71;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      v72 = word_298DFC574[(a3 >> 5) & 0x1F];
      if (v71 >= *(a4 + 28))
      {
        v1001 = result;
        v1002 = a3;
        v1003 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v71 + 1, 16);
        result = v1001;
        a3 = v1002;
        a4 = v1003;
        LODWORD(v71) = *(v1003 + 24);
      }

      v73 = (*(a4 + 16) + 16 * v71);
      *v73 = 1;
      v73[1] = v72;
      v26 = *(a4 + 28);
      v25 = (*(a4 + 24) + 1);
      *(a4 + 24) = v25;
      v19 = a0123456789Abcd_0[HIWORD(a3) & 0x1F];
LABEL_16:
      if (v25 >= v26)
      {
        v661 = result;
        v662 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v25 + 1, 16);
        result = v661;
        a4 = v662;
        LODWORD(v25) = *(v662 + 24);
      }

      v20 = (*(a4 + 16) + 16 * v25);
      v21 = 1;
      goto LABEL_36;
    case 420:
      v91 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      v92 = a0123456789Abcd_0[a3 & 0x1F];
      v93 = *(a4 + 24);
      if (v93 >= *(a4 + 28))
      {
        v1036 = result;
        v1037 = a3;
        v1038 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v93 + 1, 16);
        LOBYTE(result) = v1036;
        a3 = v1037;
        a4 = v1038;
        LODWORD(v93) = *(v1038 + 24);
      }

      v94 = (*(a4 + 16) + 16 * v93);
      *v94 = 1;
      v94[1] = v92;
      ++*(a4 + 24);
      v95 = result & 3;
      if ((result & 3) != 0)
      {
        goto LABEL_86;
      }

      return 0;
    case 421:
      v425 = a3;
      v426 = a3 & 0x1F;
      v427 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_331;
    case 422:
      v2080 = a3;
      v2042 = a4;
      v2081 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v2035 = v2081 & 3;
      if (!v2035)
      {
        return 0;
      }

      v2076 = (v2080 >> 5) & 0x1F;
      goto LABEL_1768;
    case 423:
      v845 = result;
      v846 = a3;
      v847 = word_298DFB8C4[a3 & 0x1F];
      v848 = *(a4 + 24);
      v834 = a4;
      if (v848 >= *(a4 + 28))
      {
        sub_298B90A44(a4 + 16, (a4 + 32), v848 + 1, 16);
        LODWORD(v848) = *(v834 + 24);
      }

      v849 = (*(v834 + 16) + 16 * v848);
      *v849 = 1;
      v849[1] = v847;
      v850 = (*(v834 + 24) + 1);
      *(v834 + 24) = v850;
      v836 = v845 & 3;
      if (!v836)
      {
        return 0;
      }

      v851 = word_298DFC574[(v846 >> 5) & 0x1F];
      if (v850 >= *(v834 + 28))
      {
        sub_298B90A44(v834 + 16, (v834 + 32), v850 + 1, 16);
        LODWORD(v850) = *(v834 + 24);
      }

      v852 = (*(v834 + 16) + 16 * v850);
      *v852 = 1;
      v852[1] = v851;
      v853 = *(v834 + 28);
      v854 = (*(v834 + 24) + 1);
      *(v834 + 24) = v854;
      v842 = (v846 >> 18) & 7;
      if (v854 >= v853)
      {
        sub_298B90A44(v834 + 16, (v834 + 32), v854 + 1, 16);
        LODWORD(v854) = *(v834 + 24);
      }

      v843 = (*(v834 + 16) + 16 * v854);
      v844 = 2;
LABEL_644:
      *v843 = v844;
      v843[1] = v842;
      ++*(v834 + 24);
      return v836;
    case 424:
      v910 = result;
      v911 = a3;
      v912 = word_298DFB8C4[a3 & 0x1F];
      v913 = *(a4 + 24);
      v914 = a4;
      if (v913 >= *(a4 + 28))
      {
        sub_298B90A44(a4 + 16, (a4 + 32), v913 + 1, 16);
        LODWORD(v913) = *(v914 + 24);
      }

      v915 = (*(v914 + 16) + 16 * v913);
      *v915 = 1;
      v915[1] = v912;
      ++*(v914 + 24);
      v46 = v910 & 3;
      if (v46)
      {
        goto LABEL_699;
      }

      return 0;
    case 425:
      v431 = a3;
      v432 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      v433 = a0123456789Abcd_0[a3 & 0x1F];
      v434 = a4;
      v435 = result;
      sub_298B0A034(a4, 1, v433);
      v276 = v435 & 3;
      if (!v276)
      {
        return 0;
      }

      sub_298B0A034(v434, 1, v433);
      v436 = (v431 >> 5) & 0x1F;
      v437 = word_298DFCD40;
      goto LABEL_337;
    case 426:
      v879 = a3;
      v880 = a0123456789Abcd_0[a3 & 0x1F];
      v881 = a4;
      v882 = result;
      sub_298B0A034(a4, 1, v880);
      v883 = v882 & 3;
      if (!v883)
      {
        return 0;
      }

      sub_298B0A034(v881, 1, v880);
      v884 = a0123456789Abcd_0[(v879 >> 5) & 0x1F];
LABEL_677:
      v885 = v881;
LABEL_678:
      sub_298B0A034(v885, 1, v884);
      return v883;
    case 427:
      v2058 = a3;
      v2059 = a3 & 0x1F;
      v2060 = word_298DFB36E;
      goto LABEL_2012;
    case 428:
      v1548 = a3;
      v44 = a4;
      v2321 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v46 = v2321 & 3;
      if (v46)
      {
        goto LABEL_2017;
      }

      return 0;
    case 429:
      v925 = a3;
      v363 = a4;
      v2322 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v365 = v2322 & 3;
      if (!v365)
      {
        return 0;
      }

      v2052 = (v925 >> 5) & 0x1F;
      v2053 = word_298DFD63C;
      goto LABEL_2021;
    case 430:
      v2325 = a3;
      v2033 = a4;
      v2326 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v2035 = v2326 & 3;
      if (!v2035)
      {
        return 0;
      }

      sub_298B1A1C4(v2033, (v2325 >> 5) & 0x1F);
      v2076 = HIWORD(v2325) & 0x1F;
      goto LABEL_1773;
    case 431:
      v431 = a3;
      v432 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      v438 = a0123456789Abcd_0[a3 & 0x1F];
      v434 = a4;
      v439 = result;
      sub_298B0A034(a4, 1, v438);
      v276 = v439 & 3;
      if (!v276)
      {
        return 0;
      }

      sub_298B0A034(v434, 1, v438);
      v436 = (v431 >> 5) & 0x1F;
      v437 = word_298DFD63C;
      goto LABEL_337;
    case 432:
      v2046 = a3;
      v2047 = a4;
      v2048 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2048 & 3;
      if (!v46)
      {
        return 0;
      }

      v2049 = v2046;
      v2050 = v2046 & 0x1F;
      v822 = v2047;
      sub_298B1A1C4(v2047, v2050);
      sub_298B0A034(v2047, 1, a0123456789Abcd_0[(v2049 >> 5) & 0x1F]);
      v50 = a0123456789Abcd_0[HIWORD(v2049) & 0x1F];
      goto LABEL_633;
    case 433:
      v925 = a3;
      v363 = a4;
      v2051 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v365 = v2051 & 3;
      if (!v365)
      {
        return 0;
      }

      v2052 = (v925 >> 5) & 0x1F;
      v2053 = word_298DFE5F0;
LABEL_2021:
      v927 = v2053[v2052];
LABEL_711:
      sub_298B0A034(v363, 1, v927);
      v368 = a0123456789Abcd_0[HIWORD(v925) & 0x1F];
      goto LABEL_280;
    case 434:
      v431 = a3;
      v432 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      v2054 = a0123456789Abcd_0[a3 & 0x1F];
      v434 = a4;
      v2055 = result;
      sub_298B0A034(a4, 1, v2054);
      v276 = v2055 & 3;
      if (!v276)
      {
        return 0;
      }

      sub_298B0A034(v434, 1, v2054);
      v436 = (v431 >> 5) & 0x1F;
      v437 = word_298DFE5F0;
LABEL_337:
      v440 = v437[v436];
      goto LABEL_338;
    case 435:
      v2056 = a3;
      v822 = a4;
      v2057 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2057 & 3;
      if (!v46)
      {
        return 0;
      }

      v826 = (v2056 >> 5) & 0x1F;
      v827 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
LABEL_632:
      v50 = v827[v826];
LABEL_633:
      v51 = v822;
LABEL_604:
      v52 = 1;
      goto LABEL_45;
    case 436:
      v431 = a3;
      v928 = a3 & 0x1F;
      v432 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_713;
    case 437:
      v2058 = a3;
      v2059 = a3 & 0x1F;
      v2060 = "\r";
      goto LABEL_2012;
    case 438:
      v2061 = a3;
      v2033 = a4;
      v2062 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v2035 = v2062 & 3;
      if (!v2035)
      {
        return 0;
      }

      v2036 = v2061;
      sub_298B1A1C4(v2033, v2061 & 0x1F);
      sub_298B1A1C4(v2033, (v2061 >> 5) & 0x1F);
      goto LABEL_1772;
    case 439:
      v608 = a3;
      v227 = a4;
      v609 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v205 = v609 & 3;
      if (!v205)
      {
        return 0;
      }

      v610 = v608;
      v611 = a0123456789Abcd_0[(v608 >> 5) & 0x1F];
      v206 = v227;
      sub_298B0A034(v227, 1, v611);
      sub_298B0A034(v227, 1, a0123456789Abcd_0[HIWORD(v610) & 0x1F]);
      v207 = (v610 >> 11) & 7;
      goto LABEL_175;
    case 440:
      v325 = word_298DFC574;
      v625 = word_298DFC574[a3 & 0x1F];
      v626 = *(a4 + 24);
      if (v626 >= *(a4 + 28))
      {
        v2382 = result;
        v2383 = a3;
        v2384 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v626 + 1, 16);
        LOBYTE(result) = v2382;
        a3 = v2383;
        a4 = v2384;
        LODWORD(v626) = *(v2384 + 24);
      }

      v627 = (*(a4 + 16) + 16 * v626);
      *v627 = 1;
      v627[1] = v625;
      v628 = (*(a4 + 24) + 1);
      *(a4 + 24) = v628;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      v629 = word_298DFC574[(a3 >> 5) & 0x1F];
      if (v628 >= *(a4 + 28))
      {
        v2385 = result;
        v2386 = a3;
        v2387 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v628 + 1, 16);
        result = v2385;
        a3 = v2386;
        a4 = v2387;
        LODWORD(v628) = *(v2387 + 24);
      }

      v630 = (*(a4 + 16) + 16 * v628);
      *v630 = 1;
      v630[1] = v629;
      v87 = *(a4 + 28);
      v88 = (*(a4 + 24) + 1);
      *(a4 + 24) = v88;
      v336 = HIWORD(a3) & 0x1F;
      goto LABEL_263;
    case 441:
      v255 = word_298DFC574[a3 & 0x1F];
      v256 = *(a4 + 24);
      if (v256 >= *(a4 + 28))
      {
        v1109 = result;
        v1110 = a3;
        v1111 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v256 + 1, 16);
        LOBYTE(result) = v1109;
        a3 = v1110;
        a4 = v1111;
        LODWORD(v256) = *(v1111 + 24);
      }

      v257 = (*(a4 + 16) + 16 * v256);
      *v257 = 1;
      v257[1] = v255;
      v258 = (*(a4 + 24) + 1);
      *(a4 + 24) = v258;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      v259 = word_298DFC574[(a3 >> 5) & 0x1F];
      if (v258 >= *(a4 + 28))
      {
        v1112 = result;
        v1113 = a3;
        v1114 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v258 + 1, 16);
        result = v1112;
        a3 = v1113;
        a4 = v1114;
        LODWORD(v258) = *(v1114 + 24);
      }

      v260 = (*(a4 + 16) + 16 * v258);
      *v260 = 1;
      v260[1] = v259;
      v37 = *(a4 + 28);
      v38 = (*(a4 + 24) + 1);
      *(a4 + 24) = v38;
      v19 = (a3 >> 20) & 1;
      goto LABEL_33;
    case 442:
      v1548 = a3;
      v44 = a4;
      v2255 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2255 & 3;
      if (!v46)
      {
        return 0;
      }

LABEL_2017:
      sub_298B1A1C4(v44, (v1548 >> 5) & 0x1F);
LABEL_2018:
      v50 = (v1548 >> 19) & 3;
      goto LABEL_43;
    case 443:
      v2256 = a3;
      v44 = a4;
      v2257 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2257 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v44, (v2256 >> 5) & 0x1F);
      v50 = (v2256 >> 18) & 7;
      goto LABEL_43;
    case 444:
      v64 = word_298DFC574[a3 & 0x1F];
      v65 = *(a4 + 24);
      if (v65 >= *(a4 + 28))
      {
        v995 = result;
        v996 = a3;
        v997 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v65 + 1, 16);
        LOBYTE(result) = v995;
        a3 = v996;
        a4 = v997;
        LODWORD(v65) = *(v997 + 24);
      }

      v66 = (*(a4 + 16) + 16 * v65);
      *v66 = 1;
      v66[1] = v64;
      ++*(a4 + 24);
      v46 = result & 3;
      if ((result & 3) == 0)
      {
        return 0;
      }

      v44 = a4;
      v67 = a3;
      sub_298B1A1C4(a4, (a3 >> 5) & 0x1F);
      v50 = (v67 >> 17) & 0xF;
      goto LABEL_43;
    case 445:
      v371 = word_298DFC574[a3 & 0x1F];
      v372 = *(a4 + 24);
      if (v372 >= *(a4 + 28))
      {
        v1130 = result;
        v1131 = a3;
        v1132 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v372 + 1, 16);
        LOBYTE(result) = v1130;
        a3 = v1131;
        a4 = v1132;
        LODWORD(v372) = *(v1132 + 24);
      }

      v373 = (*(a4 + 16) + 16 * v372);
      *v373 = 1;
      v373[1] = v371;
      ++*(a4 + 24);
      v374 = result & 3;
      if ((result & 3) == 0)
      {
        return 0;
      }

      sub_298B1A1C4(a4, (a3 >> 5) & 0x1F);
      return v374;
    case 446:
      v595 = word_298DFC574[a3 & 0x1F];
      v596 = *(a4 + 24);
      if (v596 >= *(a4 + 28))
      {
        v2379 = result;
        v2380 = a3;
        v2381 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v596 + 1, 16);
        LOBYTE(result) = v2379;
        a3 = v2380;
        a4 = v2381;
        LODWORD(v596) = *(v2381 + 24);
      }

      v597 = (*(a4 + 16) + 16 * v596);
      *v597 = 1;
      v597[1] = v595;
      ++*(a4 + 24);
      v265 = result & 3;
      if ((result & 3) == 0)
      {
        return 0;
      }

      v268 = word_298DFBCEE[(a3 >> 5) & 0x1F];
      v269 = a4;
      v270 = 1;
      goto LABEL_216;
    case 447:
      v1920 = a3;
      v1611 = a4;
      v1921 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v1579 = v1921 & 3;
      if (!v1579)
      {
        return 0;
      }

      v1580 = (v1920 >> 5) & 0x1F;
      goto LABEL_1729;
    case 448:
      v1922 = a3;
      v1923 = a4;
      v1924 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v1924 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v1923, v1922 & 0x1F);
      sub_298B0A034(v1923, 2, (v1922 >> 20) & 1);
      v50 = word_298DFBCEE[(v1922 >> 5) & 0x1F];
      v51 = v1923;
      v52 = 1;
      goto LABEL_45;
    case 449:
      v249 = word_298DFC574[a3 & 0x1F];
      v250 = *(a4 + 24);
      if (v250 >= *(a4 + 28))
      {
        v1103 = result;
        v1104 = a3;
        v1105 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v250 + 1, 16);
        LOBYTE(result) = v1103;
        a3 = v1104;
        a4 = v1105;
        LODWORD(v250) = *(v1105 + 24);
      }

      v251 = (*(a4 + 16) + 16 * v250);
      *v251 = 1;
      v251[1] = v249;
      v252 = (*(a4 + 24) + 1);
      *(a4 + 24) = v252;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      if (v252 >= *(a4 + 28))
      {
        v1106 = result;
        v1107 = a3;
        v1108 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v252 + 1, 16);
        result = v1106;
        a3 = v1107;
        a4 = v1108;
        LODWORD(v252) = *(v1108 + 24);
      }

      v253 = (*(a4 + 16) + 16 * v252);
      *v253 = 1;
      v253[1] = v249;
      v246 = *(a4 + 28);
      v247 = (*(a4 + 24) + 1);
      *(a4 + 24) = v247;
      v248 = (a3 >> 19) & 3;
      goto LABEL_197;
    case 450:
      v241 = word_298DFC574[a3 & 0x1F];
      v242 = *(a4 + 24);
      if (v242 >= *(a4 + 28))
      {
        v1100 = result;
        v1101 = a3;
        v1102 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v242 + 1, 16);
        LOBYTE(result) = v1100;
        a3 = v1101;
        a4 = v1102;
        LODWORD(v242) = *(v1102 + 24);
      }

      v243 = (*(a4 + 16) + 16 * v242);
      *v243 = 1;
      v243[1] = v241;
      v244 = (*(a4 + 24) + 1);
      *(a4 + 24) = v244;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      if (v244 >= *(a4 + 28))
      {
        v2353 = result;
        v2354 = a3;
        v2355 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v244 + 1, 16);
        result = v2353;
        a3 = v2354;
        a4 = v2355;
        LODWORD(v244) = *(v2355 + 24);
      }

      v245 = (*(a4 + 16) + 16 * v244);
      *v245 = 1;
      v245[1] = v241;
      v246 = *(a4 + 28);
      v247 = (*(a4 + 24) + 1);
      *(a4 + 24) = v247;
      v248 = (a3 >> 18) & 7;
      goto LABEL_197;
    case 451:
      v546 = word_298DFC574[a3 & 0x1F];
      v547 = *(a4 + 24);
      if (v547 >= *(a4 + 28))
      {
        v2342 = result;
        v2343 = a3;
        v2344 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v547 + 1, 16);
        LOBYTE(result) = v2342;
        a3 = v2343;
        a4 = v2344;
        LODWORD(v547) = *(v2344 + 24);
      }

      v548 = (*(a4 + 16) + 16 * v547);
      *v548 = 1;
      v548[1] = v546;
      v549 = (*(a4 + 24) + 1);
      *(a4 + 24) = v549;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      if (v549 >= *(a4 + 28))
      {
        v2345 = result;
        v2346 = a3;
        v2347 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v549 + 1, 16);
        result = v2345;
        a3 = v2346;
        a4 = v2347;
        LODWORD(v549) = *(v2347 + 24);
      }

      v550 = (*(a4 + 16) + 16 * v549);
      *v550 = 1;
      v550[1] = v546;
      v246 = *(a4 + 28);
      v247 = (*(a4 + 24) + 1);
      *(a4 + 24) = v247;
      v248 = (a3 >> 17) & 0xF;
LABEL_197:
      if (v247 >= v246)
      {
        v1097 = result;
        v1098 = a3;
        v1099 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v247 + 1, 16);
        result = v1097;
        a3 = v1098;
        a4 = v1099;
        LODWORD(v247) = *(v1099 + 24);
      }

      v254 = (*(a4 + 16) + 16 * v247);
      *v254 = 2;
      v254[1] = v248;
      v87 = *(a4 + 28);
      v88 = (*(a4 + 24) + 1);
      *(a4 + 24) = v88;
      v89 = (a3 >> 5) & 0x1F;
      v90 = word_298DFB8C4;
      goto LABEL_79;
    case 452:
      v91 = word_298DFC574;
      v470 = word_298DFC574[a3 & 0x1F];
      v471 = *(a4 + 24);
      if (v471 >= *(a4 + 28))
      {
        v1162 = result;
        v1163 = a3;
        v1164 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v471 + 1, 16);
        LOBYTE(result) = v1162;
        a3 = v1163;
        a4 = v1164;
        LODWORD(v471) = *(v1164 + 24);
      }

      v472 = (*(a4 + 16) + 16 * v471);
      *v472 = 1;
      v472[1] = v470;
      ++*(a4 + 24);
      v95 = result & 3;
      if ((result & 3) == 0)
      {
        return 0;
      }

LABEL_86:
      v96 = (a3 >> 5) & 0x1F;
      v97 = word_298DFCD40;
      goto LABEL_87;
    case 453:
      v693 = a3;
      v694 = word_298DFC574[a3 & 0x1F];
      v695 = *(a4 + 24);
      if (v695 >= *(a4 + 28))
      {
        v2401 = result;
        v2402 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v695 + 1, 16);
        LOBYTE(result) = v2401;
        a4 = v2402;
        LODWORD(v695) = *(v2402 + 24);
      }

      v696 = (*(a4 + 16) + 16 * v695);
      *v696 = 1;
      v696[1] = v694;
      v697 = (*(a4 + 24) + 1);
      *(a4 + 24) = v697;
      v698 = result & 3;
      if ((result & 3) == 0)
      {
        return 0;
      }

      if (v697 >= *(a4 + 28))
      {
        v2403 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v697 + 1, 16);
        a4 = v2403;
        LODWORD(v697) = *(v2403 + 24);
      }

      v699 = (*(a4 + 16) + 16 * v697);
      *v699 = 1;
      v699[1] = v694;
      v700 = *(a4 + 28);
      v701 = (*(a4 + 24) + 1);
      *(a4 + 24) = v701;
      v702 = word_298DFC574[(v693 >> 5) & 0x1F];
      if (v701 >= v700)
      {
        v2404 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v701 + 1, 16);
        a4 = v2404;
        LODWORD(v701) = *(v2404 + 24);
      }

      v703 = (*(a4 + 16) + 16 * v701);
      *v703 = 1;
      v703[1] = v702;
      ++*(a4 + 24);
      return v698;
    case 454:
      v425 = a3;
      v426 = a3 & 0x1F;
      v427 = word_298DFBCEE;
      goto LABEL_331;
    case 455:
      v2014 = a3;
      v2015 = a3 & 0x1F;
      v2016 = word_298DFBCEE;
LABEL_1694:
      v914 = a4;
      v2029 = result;
      sub_298B0A034(a4, 1, v2016[v2015]);
      v46 = v2029 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v914, (v2014 >> 5) & 0x1F);
      v50 = (v2014 >> 19) & 3;
      goto LABEL_700;
    case 456:
      v2017 = a3;
      v2018 = a3 & 0x1F;
      v2019 = word_298DFBCEE;
LABEL_1697:
      v914 = a4;
      v2030 = result;
      sub_298B0A034(a4, 1, v2019[v2018]);
      v46 = v2030 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v914, (v2017 >> 5) & 0x1F);
      v50 = (v2017 >> 18) & 7;
      goto LABEL_700;
    case 457:
      v911 = a3;
      v2020 = a3 & 0x1F;
      v2021 = word_298DFBCEE;
LABEL_1700:
      v914 = a4;
      v2031 = result;
      sub_298B0A034(a4, 1, v2021[v2020]);
      v46 = v2031 & 3;
      if (!v46)
      {
        return 0;
      }

LABEL_699:
      sub_298B1A1C4(v914, (v911 >> 5) & 0x1F);
      v50 = (v911 >> 17) & 0xF;
      goto LABEL_700;
    case 458:
      v2032 = a3;
      v2033 = a4;
      v2034 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v2035 = v2034 & 3;
      if (!v2035)
      {
        return 0;
      }

      v2036 = v2032;
      sub_298B1A1C4(v2033, v2032 & 0x1F);
      v2037 = (v2032 >> 5) & 0x1F;
      v2038 = word_298DFCD40;
      goto LABEL_1771;
    case 459:
      v425 = a3;
      v426 = a3 & 0x1F;
      v427 = word_298DFB36E;
      goto LABEL_331;
    case 460:
      v2039 = a3;
      v914 = a4;
      v2040 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v46 = v2040 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v914, (v2039 >> 5) & 0x1F);
      v50 = (v2039 >> 20) & 1;
      goto LABEL_700;
    case 461:
      v2041 = a3;
      v2042 = a4;
      v2043 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v2035 = v2043 & 3;
      if (!v2035)
      {
        return 0;
      }

      v2044 = (v2041 >> 5) & 0x1F;
      v2045 = word_298DFD63C;
      goto LABEL_1767;
    case 462:
      v91 = word_298DFC574;
      v569 = word_298DFC574[a3 & 0x1F];
      v570 = *(a4 + 24);
      if (v570 >= *(a4 + 28))
      {
        v2362 = result;
        v2363 = a3;
        v2364 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v570 + 1, 16);
        LOBYTE(result) = v2362;
        a3 = v2363;
        a4 = v2364;
        LODWORD(v570) = *(v2364 + 24);
      }

      v571 = (*(a4 + 16) + 16 * v570);
      *v571 = 1;
      v571[1] = v569;
      v572 = (*(a4 + 24) + 1);
      *(a4 + 24) = v572;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      v95 = result;
      if (v572 >= *(a4 + 28))
      {
        v2365 = a3;
        v2366 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v572 + 1, 16);
        a3 = v2365;
        a4 = v2366;
        LODWORD(v572) = *(v2366 + 24);
      }

      v573 = (*(a4 + 16) + 16 * v572);
      *v573 = 1;
      v573[1] = v569;
      ++*(a4 + 24);
      v96 = (a3 >> 5) & 0x1F;
      v97 = word_298DFD63C;
LABEL_87:
      v98 = a3;
      v99 = a4;
      sub_298B0A034(a4, 1, v97[v96]);
      v100 = v99;
      v101 = v91[HIWORD(v98) & 0x1F];
      v102 = v99[6];
      if (v102 >= v99[7])
      {
        sub_298B90A44((v99 + 4), v99 + 8, v102 + 1, 16);
        v100 = v99;
        LODWORD(v102) = v99[6];
      }

      v103 = (*(v100 + 2) + 16 * v102);
      *v103 = 1;
      v103[1] = v101;
      ++v100[6];
      return v95;
    case 463:
      v2041 = a3;
      v2042 = a4;
      v2098 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v2035 = v2098 & 3;
      if (!v2035)
      {
        return 0;
      }

      v2044 = (v2041 >> 5) & 0x1F;
      v2045 = word_298DFE5F0;
LABEL_1767:
      sub_298B0A034(v2042, 1, v2045[v2044]);
      v2076 = HIWORD(v2041) & 0x1F;
      goto LABEL_1768;
    case 464:
      v2100 = a3;
      v2033 = a4;
      v2101 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v2035 = v2101 & 3;
      if (!v2035)
      {
        return 0;
      }

      v2036 = v2100;
      sub_298B1A1C4(v2033, v2100 & 0x1F);
      v2037 = (v2100 >> 5) & 0x1F;
      v2038 = word_298DFE5F0;
LABEL_1771:
      sub_298B0A034(v2033, 1, v2038[v2037]);
LABEL_1772:
      v2076 = HIWORD(v2036) & 0x1F;
LABEL_1773:
      v2099 = v2033;
      goto LABEL_1774;
    case 465:
      v425 = a3;
      v426 = a3 & 0x1F;
      v427 = "\r";
      goto LABEL_331;
    case 466:
      v2102 = a3;
      v44 = a4;
      v2103 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2103 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v44, (v2102 >> 5) & 0x1F);
      sub_298B1A1C4(v44, HIWORD(v2102) & 0x1F);
      v50 = (v2102 >> 11) & 0xF;
      goto LABEL_43;
    case 467:
      v425 = a3;
      v426 = a3 & 0x1F;
      v427 = word_298DFB86A;
LABEL_331:
      v428 = a4;
      v429 = result;
      sub_298B0A034(a4, 1, v427[v426]);
      v430 = v429 & 3;
      if (!v430)
      {
        return 0;
      }

      sub_298B1A1C4(v428, (v425 >> 5) & 0x1F);
      return v430;
    case 468:
      v582 = word_298DFC574[a3 & 0x1F];
      v583 = *(a4 + 24);
      if (v583 >= *(a4 + 28))
      {
        v2367 = result;
        v2368 = a3;
        v2369 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v583 + 1, 16);
        LOBYTE(result) = v2367;
        a3 = v2368;
        a4 = v2369;
        LODWORD(v583) = *(v2369 + 24);
      }

      v584 = (*(a4 + 16) + 16 * v583);
      *v584 = 1;
      v584[1] = v582;
      v585 = (*(a4 + 24) + 1);
      *(a4 + 24) = v585;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      if (v585 >= *(a4 + 28))
      {
        v2370 = result;
        v2371 = a3;
        v2372 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v585 + 1, 16);
        result = v2370;
        a3 = v2371;
        a4 = v2372;
        LODWORD(v585) = *(v2372 + 24);
      }

      v586 = (*(a4 + 16) + 16 * v585);
      *v586 = 1;
      v586[1] = v582;
      v587 = *(a4 + 28);
      v588 = (*(a4 + 24) + 1);
      *(a4 + 24) = v588;
      v589 = (a3 >> 20) & 1;
      if (v588 >= v587)
      {
        v2373 = result;
        v2374 = a3;
        v2375 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v588 + 1, 16);
        result = v2373;
        a3 = v2374;
        a4 = v2375;
        LODWORD(v588) = *(v2375 + 24);
      }

      v590 = (*(a4 + 16) + 16 * v588);
      *v590 = 2;
      v590[1] = v589;
      v591 = *(a4 + 28);
      v592 = (*(a4 + 24) + 1);
      *(a4 + 24) = v592;
      v593 = word_298DFC574[(a3 >> 5) & 0x1F];
      if (v592 >= v591)
      {
        v2376 = result;
        v2377 = a3;
        v2378 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v592 + 1, 16);
        result = v2376;
        a3 = v2377;
        a4 = v2378;
        LODWORD(v592) = *(v2378 + 24);
      }

      v594 = (*(a4 + 16) + 16 * v592);
      *v594 = 1;
      v594[1] = v593;
      v37 = *(a4 + 28);
      v38 = (*(a4 + 24) + 1);
      *(a4 + 24) = v38;
      v19 = (a3 >> 14) & 1;
      goto LABEL_33;
    case 469:
      v411 = word_298DFC574[a3 & 0x1F];
      v412 = *(a4 + 24);
      if (v412 >= *(a4 + 28))
      {
        v1144 = result;
        v1145 = a3;
        v1146 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v412 + 1, 16);
        LOBYTE(result) = v1144;
        a3 = v1145;
        a4 = v1146;
        LODWORD(v412) = *(v1146 + 24);
      }

      v413 = (*(a4 + 16) + 16 * v412);
      *v413 = 1;
      v413[1] = v411;
      v414 = (*(a4 + 24) + 1);
      *(a4 + 24) = v414;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      v265 = result;
      v415 = a3;
      v416 = a4;
      if (v414 >= *(a4 + 28))
      {
        sub_298B90A44(a4 + 16, (a4 + 32), v414 + 1, 16);
        LODWORD(v414) = *(v416 + 24);
      }

      v417 = (*(v416 + 16) + 16 * v414);
      *v417 = 1;
      v417[1] = v411;
      v418 = *(v416 + 28);
      v419 = (*(v416 + 24) + 1);
      *(v416 + 24) = v419;
      if (v419 >= v418)
      {
        sub_298B90A44(v416 + 16, (v416 + 32), v419 + 1, 16);
        LODWORD(v419) = *(v416 + 24);
      }

      v420 = (*(v416 + 16) + 16 * v419);
      *v420 = 2;
      v420[1] = (v415 >> 19) & 3;
      v421 = *(v416 + 28);
      v422 = (*(v416 + 24) + 1);
      *(v416 + 24) = v422;
      v423 = word_298DFC574[(v415 >> 5) & 0x1F];
      if (v422 >= v421)
      {
        sub_298B90A44(v416 + 16, (v416 + 32), v422 + 1, 16);
        LODWORD(v422) = *(v416 + 24);
      }

      v269 = v416;
      v424 = (*(v416 + 16) + 16 * v422);
      *v424 = 1;
      v424[1] = v423;
      ++*(v416 + 24);
      v268 = (v415 >> 13) & 3;
      goto LABEL_215;
    case 470:
      v290 = word_298DFC574[a3 & 0x1F];
      v291 = *(a4 + 24);
      if (v291 >= *(a4 + 28))
      {
        v1118 = result;
        v1119 = a3;
        v1120 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v291 + 1, 16);
        LOBYTE(result) = v1118;
        a3 = v1119;
        a4 = v1120;
        LODWORD(v291) = *(v1120 + 24);
      }

      v292 = (*(a4 + 16) + 16 * v291);
      *v292 = 1;
      v292[1] = v290;
      v293 = (*(a4 + 24) + 1);
      *(a4 + 24) = v293;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      v46 = result;
      if (v293 >= *(a4 + 28))
      {
        v1147 = a3;
        v1148 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v293 + 1, 16);
        a3 = v1147;
        a4 = v1148;
        LODWORD(v293) = *(v1148 + 24);
      }

      v294 = (*(a4 + 16) + 16 * v293);
      *v294 = 1;
      v294[1] = v290;
      v295 = *(a4 + 28);
      v296 = (*(a4 + 24) + 1);
      *(a4 + 24) = v296;
      v297 = (a3 >> 18) & 7;
      if (v296 >= v295)
      {
        v1149 = a3;
        v1150 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v296 + 1, 16);
        a3 = v1149;
        a4 = v1150;
        LODWORD(v296) = *(v1150 + 24);
      }

      v298 = (*(a4 + 16) + 16 * v296);
      *v298 = 2;
      v298[1] = v297;
      v299 = *(a4 + 28);
      v300 = (*(a4 + 24) + 1);
      *(a4 + 24) = v300;
      v301 = word_298DFC574[(a3 >> 5) & 0x1F];
      if (v300 >= v299)
      {
        v1151 = a3;
        v1152 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v300 + 1, 16);
        a3 = v1151;
        a4 = v1152;
        LODWORD(v300) = *(v1152 + 24);
      }

      v302 = (*(a4 + 16) + 16 * v300);
      *v302 = 1;
      v302[1] = v301;
      ++*(a4 + 24);
      v50 = (a3 >> 12) & 7;
      goto LABEL_240;
    case 471:
      v496 = word_298DFC574[a3 & 0x1F];
      v497 = *(a4 + 24);
      if (v497 >= *(a4 + 28))
      {
        v1169 = result;
        v1170 = a3;
        v1171 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v497 + 1, 16);
        LOBYTE(result) = v1169;
        a3 = v1170;
        a4 = v1171;
        LODWORD(v497) = *(v1171 + 24);
      }

      v498 = (*(a4 + 16) + 16 * v497);
      *v498 = 1;
      v498[1] = v496;
      v499 = (*(a4 + 24) + 1);
      *(a4 + 24) = v499;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      v46 = result;
      if (v499 >= *(a4 + 28))
      {
        v2356 = a3;
        v2357 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v499 + 1, 16);
        a3 = v2356;
        a4 = v2357;
        LODWORD(v499) = *(v2357 + 24);
      }

      v500 = (*(a4 + 16) + 16 * v499);
      *v500 = 1;
      v500[1] = v496;
      v501 = *(a4 + 28);
      v502 = (*(a4 + 24) + 1);
      *(a4 + 24) = v502;
      v503 = (a3 >> 17) & 0xF;
      if (v502 >= v501)
      {
        v2358 = a3;
        v2359 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v502 + 1, 16);
        a3 = v2358;
        a4 = v2359;
        LODWORD(v502) = *(v2359 + 24);
      }

      v504 = (*(a4 + 16) + 16 * v502);
      *v504 = 2;
      v504[1] = v503;
      v505 = *(a4 + 28);
      v506 = (*(a4 + 24) + 1);
      *(a4 + 24) = v506;
      v507 = word_298DFC574[(a3 >> 5) & 0x1F];
      if (v506 >= v505)
      {
        v2360 = a3;
        v2361 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v506 + 1, 16);
        a3 = v2360;
        a4 = v2361;
        LODWORD(v506) = *(v2361 + 24);
      }

      v508 = (*(a4 + 16) + 16 * v506);
      *v508 = 1;
      v508[1] = v507;
      ++*(a4 + 24);
      v50 = (a3 >> 11) & 0xF;
LABEL_240:
      v51 = a4;
      goto LABEL_44;
    case 472:
      v2074 = a3;
      v2042 = a4;
      v2075 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v2035 = v2075 & 3;
      if (!v2035)
      {
        return 0;
      }

      sub_298B1A1C4(v2042, (v2074 >> 5) & 0x1F);
      sub_298B1A1C4(v2042, HIWORD(v2074) & 0x1F);
      v2076 = (v2074 >> 10) & 0x1F;
LABEL_1768:
      v2099 = v2042;
LABEL_1774:
      sub_298B1A1C4(v2099, v2076);
      return v2035;
    case 473:
      v2058 = a3;
      v2059 = a3 & 0x1F;
      v2060 = word_298DFB86A;
      goto LABEL_2012;
    case 474:
      v2077 = a3;
      v2078 = a0123456789Abcd_0[a3 & 0x1F];
      v895 = a4;
      v2079 = result;
      sub_298B0A034(a4, 1, v2078);
      v365 = v2079 & 3;
      if (!v365)
      {
        return 0;
      }

      sub_298B0A034(v895, 1, v2078);
      sub_298B0A034(v895, 1, a0123456789Abcd_0[(v2077 >> 5) & 0x1F]);
      sub_298B0A034(v895, 1, a0123456789Abcd_0[HIWORD(v2077) & 0x1F]);
      v368 = (v2077 >> 11) & 3;
      goto LABEL_685;
    case 475:
      v458 = a3;
      v227 = a4;
      v459 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v205 = v459 & 3;
      if (!v205)
      {
        return 0;
      }

      v460 = v458;
      v461 = a0123456789Abcd_0[(v458 >> 5) & 0x1F];
      v206 = v227;
      sub_298B0A034(v227, 1, v461);
      sub_298B0A034(v227, 1, a0123456789Abcd_0[HIWORD(v460) & 0x1F]);
      v207 = (v460 >> 12) & 1;
      goto LABEL_175;
    case 476:
      v2258 = a3;
      v44 = a4;
      v2259 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2259 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v44, (v2258 >> 5) & 0x1F);
      sub_298B1A1C4(v44, HIWORD(v2258) & 0x1F);
      v50 = (v2258 >> 14) & 1;
      goto LABEL_43;
    case 477:
      v2260 = a3;
      v44 = a4;
      v2261 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2261 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFCD40[(v2260 >> 5) & 0x1F]);
      goto LABEL_1955;
    case 478:
      v2262 = a3;
      v914 = a4;
      v2263 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2263 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v914, v2262 & 0x1F);
      sub_298B1A1C4(v914, (v2262 >> 5) & 0x1F);
      sub_298B1A1C4(v914, HIWORD(v2262) & 0x1F);
      v50 = (v2262 >> 11) & 3;
      goto LABEL_700;
    case 479:
      v2264 = a3;
      v44 = a4;
      v2265 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2265 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v44, (v2264 >> 5) & 0x1F);
      sub_298B1A1C4(v44, HIWORD(v2264) & 0x1F);
      v50 = (v2264 >> 12) & 1;
      goto LABEL_43;
    case 480:
      v2266 = a3;
      v914 = a4;
      v2267 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2267 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v914, v2266 & 0x1F);
      sub_298B1A1C4(v914, (v2266 >> 5) & 0x1F);
      sub_298B1A1C4(v914, HIWORD(v2266) & 0x1F);
      v50 = (v2266 >> 12) & 3;
      goto LABEL_700;
    case 481:
      v2260 = a3;
      v44 = a4;
      v2268 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2268 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v44, (v2260 >> 5) & 0x1F);
LABEL_1955:
      sub_298B1A1C4(v44, HIWORD(v2260) & 0x1F);
      v50 = (v2260 >> 13) & 3;
      goto LABEL_43;
    case 482:
      v2269 = a3;
      v44 = a4;
      v2270 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2270 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v44, (v2269 >> 5) & 0x1F);
      sub_298B1A1C4(v44, HIWORD(v2269) & 0x1F);
      v50 = v2269 >> 10;
      goto LABEL_43;
    case 483:
      v2271 = a3;
      v44 = a4;
      v2272 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2272 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v44, (v2271 >> 5) & 0x1F);
      sub_298B1A1C4(v44, HIWORD(v2271) & 0x1F);
      v50 = (v2271 >> 12) & 7;
      goto LABEL_43;
    case 484:
      v2176 = a3;
      v2177 = a3 & 0x1F;
      v2178 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_1961;
    case 485:
      v769 = a3;
      v770 = a0123456789Abcd_0[a3 & 0x1F];
      v771 = a4;
      v772 = result;
      sub_298B0A034(a4, 1, v770);
      v773 = v772 & 3;
      if (!v773)
      {
        return 0;
      }

      sub_298B0A034(v771, 1, v770);
      sub_298B0A034(v771, 1, a0123456789Abcd_0[(v769 >> 5) & 0x1F]);
      sub_298B1A1C4(v771, HIWORD(v769) & 0xF);
      v774 = *(v771 + 24);
      if (v774 >= *(v771 + 28))
      {
        sub_298B90A44(v771 + 16, (v771 + 32), v774 + 1, 16);
        LODWORD(v774) = *(v771 + 24);
      }

      v775 = (*(v771 + 16) + 16 * v774);
      *v775 = 2;
      v775[1] = (v769 >> 9) & 4 | (v769 >> 20) & 3;
      ++*(v771 + 24);
      return v773;
    case 486:
      v922 = a3;
      v923 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      v44 = a4;
      v2275 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v46 = v2275 & 3;
      if (!v46)
      {
        return 0;
      }

      goto LABEL_708;
    case 487:
      v2276 = result;
      sub_298B1B3B8(a4, a3);
      return v2276 & 3;
    case 488:
      v2277 = a3;
      v1478 = a4;
      v2278 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v176 = v2278 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B0A034(v1478, 1, a0123456789Abcd_0[(v2277 >> 5) & 0x1F]);
      v177 = HIWORD(v2277) & 7;
      goto LABEL_1984;
    case 489:
      v2213 = a3;
      v2214 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      v1453 = a4;
      v2279 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v176 = v2279 & 3;
      if (v176)
      {
        goto LABEL_1969;
      }

      return 0;
    case 490:
      v172 = a3;
      v173 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      v174 = a4;
      v175 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v176 = v175 & 3;
      if (v176)
      {
        goto LABEL_138;
      }

      return 0;
    case 491:
      v2022 = result;
      sub_298B1B52C(a4, a3);
      return v2022 & 3;
    case 492:
      v2023 = a3;
      v2024 = a0123456789Abcd_0[a3 & 0x1F];
      v2025 = a4;
      v2026 = result;
      sub_298B0A034(a4, 1, v2024);
      v722 = v2026 & 3;
      if (!v722)
      {
        return 0;
      }

      sub_298B0A034(v2025, 1, v2024);
      sub_298B0A034(v2025, 1, a0123456789Abcd_0[(v2023 >> 5) & 0x1F]);
      v723 = HIWORD(v2023) & 7;
      v724 = v2025;
      v725 = 8;
      goto LABEL_566;
    case 493:
      v886 = a3;
      v887 = a4;
      v888 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v889 = v888 & 3;
      if (!v889)
      {
        return 0;
      }

      sub_298B0A034(v887, 1, a0123456789Abcd_0[(v886 >> 5) & 0x1F]);
      v890 = HIWORD(v886) & 7;
LABEL_681:
      v891 = v887;
      goto LABEL_682;
    case 494:
      v718 = a3;
      v719 = a0123456789Abcd_0[a3 & 0x1F];
      v720 = a4;
      v721 = result;
      sub_298B0A034(a4, 1, v719);
      v722 = v721 & 3;
      if (!v722)
      {
        return 0;
      }

      sub_298B0A034(v720, 1, v719);
      sub_298B0A034(v720, 1, a0123456789Abcd_0[(v718 >> 5) & 0x1F]);
      v723 = HIWORD(v718) & 0xF;
      v724 = v720;
      v725 = 16;
      goto LABEL_566;
    case 495:
      v916 = a3;
      v917 = a4;
      v918 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v889 = v918 & 3;
      if (!v889)
      {
        return 0;
      }

      sub_298B0A034(v917, 1, a0123456789Abcd_0[(v916 >> 5) & 0x1F]);
      v890 = HIWORD(v916) & 0xF;
      goto LABEL_703;
    case 496:
      v2063 = a3;
      v2064 = a0123456789Abcd_0[a3 & 0x1F];
      v2065 = a4;
      v2066 = result;
      sub_298B0A034(a4, 1, v2064);
      v722 = v2066 & 3;
      if (!v722)
      {
        return 0;
      }

      sub_298B0A034(v2065, 1, v2064);
      sub_298B0A034(v2065, 1, a0123456789Abcd_0[(v2063 >> 5) & 0x1F]);
      v723 = HIWORD(v2063) & 0x1F;
      v724 = v2065;
      v725 = 32;
LABEL_566:
      sub_298B1DB34(v724, v723, v725);
      return v722;
    case 497:
      v2067 = a3;
      v1489 = a4;
      v2068 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v889 = v2068 & 3;
      if (!v889)
      {
        return 0;
      }

      sub_298B0A034(v1489, 1, a0123456789Abcd_0[(v2067 >> 5) & 0x1F]);
      v890 = HIWORD(v2067) & 0x1F;
      goto LABEL_1738;
    case 498:
      v1054 = a3;
      v1055 = a4;
      v1056 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v176 = v1056 & 3;
      if (!v176)
      {
        return 0;
      }

      v1057 = word_298DFC574[(v1054 >> 5) & 0x1F];
      v1058 = *(v1055 + 24);
      if (v1058 >= *(v1055 + 28))
      {
        sub_298B90A44(v1055 + 16, (v1055 + 32), v1058 + 1, 16);
        LODWORD(v1058) = *(v1055 + 24);
      }

      v178 = v1055;
      v1059 = (*(v1055 + 16) + 16 * v1058);
      *v1059 = 1;
      v1059[1] = v1057;
      ++*(v1055 + 24);
      v177 = HIWORD(v1054) & 7 | 8;
      v179 = 16;
      goto LABEL_141;
    case 499:
      v1060 = result;
      v1061 = a3;
      v1062 = word_298DFC574[a3 & 0x1F];
      v1063 = *(a4 + 24);
      v1064 = a4;
      if (v1063 >= *(a4 + 28))
      {
        sub_298B90A44(a4 + 16, (a4 + 32), v1063 + 1, 16);
        LODWORD(v1063) = *(v1064 + 24);
      }

      v1065 = (*(v1064 + 16) + 16 * v1063);
      *v1065 = 1;
      v1065[1] = v1062;
      ++*(v1064 + 24);
      v445 = v1060 & 3;
      if (!v445)
      {
        return 0;
      }

      sub_298B0A034(v1064, 1, a0123456789Abcd_0[(v1061 >> 5) & 0x1F]);
      v446 = HIWORD(v1061) & 7;
      v447 = v1064;
      goto LABEL_341;
    case 500:
      v804 = a3;
      v805 = a4;
      v806 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v176 = v806 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A1C4(v805, (v804 >> 5) & 0x1F);
      v177 = HIWORD(v804) & 0xF | 0x10;
      goto LABEL_617;
    case 501:
      v1634 = a3;
      v917 = a4;
      v2072 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v889 = v2072 & 3;
      if (!v889)
      {
        return 0;
      }

      sub_298B0A034(v917, 1, a0123456789Abcd_0[(v1634 >> 5) & 0x1F]);
      goto LABEL_1999;
    case 502:
      v776 = a3;
      v777 = a4;
      v778 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v176 = v778 & 3;
      if (!v176)
      {
        return 0;
      }

      v779 = word_298DFC574[(v776 >> 5) & 0x1F];
      v780 = *(v777 + 24);
      if (v780 >= *(v777 + 28))
      {
        sub_298B90A44(v777 + 16, (v777 + 32), v780 + 1, 16);
        LODWORD(v780) = *(v777 + 24);
      }

      v178 = v777;
      v781 = (*(v777 + 16) + 16 * v780);
      *v781 = 1;
      v781[1] = v779;
      ++*(v777 + 24);
      v177 = HIWORD(v776) & 0x1F | 0x20;
      v179 = 64;
      goto LABEL_141;
    case 503:
      v1636 = a3;
      v1489 = a4;
      v2073 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v889 = v2073 & 3;
      if (!v889)
      {
        return 0;
      }

      sub_298B0A034(v1489, 1, a0123456789Abcd_0[(v1636 >> 5) & 0x1F]);
LABEL_1737:
      v890 = HIWORD(v1636) & 0x1F;
LABEL_1738:
      v891 = v1489;
      goto LABEL_1739;
    case 504:
      v859 = result;
      v860 = a3;
      v861 = word_298DFC574[a3 & 0x1F];
      v862 = *(a4 + 24);
      v808 = a4;
      if (v862 >= *(a4 + 28))
      {
        sub_298B90A44(a4 + 16, (a4 + 32), v862 + 1, 16);
        LODWORD(v862) = *(v808 + 24);
      }

      v863 = (*(v808 + 16) + 16 * v862);
      *v863 = 1;
      v863[1] = v861;
      v864 = (*(v808 + 24) + 1);
      *(v808 + 24) = v864;
      v810 = v859 & 3;
      if (!v810)
      {
        return 0;
      }

      if (v864 >= *(v808 + 28))
      {
        sub_298B90A44(v808 + 16, (v808 + 32), v864 + 1, 16);
        LODWORD(v864) = *(v808 + 24);
      }

      v865 = (*(v808 + 16) + 16 * v864);
      *v865 = 1;
      v865[1] = v861;
      v866 = *(v808 + 28);
      v867 = (*(v808 + 24) + 1);
      *(v808 + 24) = v867;
      v868 = word_298DFC574[(v860 >> 5) & 0x1F];
      if (v867 >= v866)
      {
        sub_298B90A44(v808 + 16, (v808 + 32), v867 + 1, 16);
        LODWORD(v867) = *(v808 + 24);
      }

      v869 = (*(v808 + 16) + 16 * v867);
      *v869 = 1;
      v869[1] = v868;
      v870 = *(v808 + 28);
      v871 = (*(v808 + 24) + 1);
      *(v808 + 24) = v871;
      v872 = word_298DFC574[HIWORD(v860) & 7];
      if (v871 >= v870)
      {
        sub_298B90A44(v808 + 16, (v808 + 32), v871 + 1, 16);
        LODWORD(v871) = *(v808 + 24);
      }

      v873 = (*(v808 + 16) + 16 * v871);
      *v873 = 1;
      v873[1] = v872;
      v874 = *(v808 + 28);
      v815 = (*(v808 + 24) + 1);
      *(v808 + 24) = v815;
      v816 = (v860 >> 8) & 8 | (v860 >> 19) & 7;
      goto LABEL_667;
    case 505:
      v441 = a3;
      v442 = a0123456789Abcd_0[a3 & 0x1F];
      v443 = a4;
      v444 = result;
      sub_298B0A034(a4, 1, v442);
      v445 = v444 & 3;
      if (!v445)
      {
        return 0;
      }

      sub_298B0A034(v443, 1, v442);
      sub_298B0A034(v443, 1, a0123456789Abcd_0[(v441 >> 5) & 0x1F]);
      v446 = HIWORD(v441) & 7;
      v447 = v443;
LABEL_341:
      v448 = 8;
      goto LABEL_342;
    case 506:
      v2282 = a3;
      v2283 = a0123456789Abcd_0[a3 & 0x1F];
      v2284 = a4;
      v2285 = result;
      sub_298B0A034(a4, 1, v2283);
      v445 = v2285 & 3;
      if (!v445)
      {
        return 0;
      }

      sub_298B0A034(v2284, 1, v2283);
      sub_298B0A034(v2284, 1, a0123456789Abcd_0[(v2282 >> 5) & 0x1F]);
      v446 = HIWORD(v2282) & 0xF;
      v447 = v2284;
      v448 = 16;
      goto LABEL_342;
    case 507:
      v2286 = a3;
      v2287 = a0123456789Abcd_0[a3 & 0x1F];
      v2288 = a4;
      v2289 = result;
      sub_298B0A034(a4, 1, v2287);
      v445 = v2289 & 3;
      if (!v445)
      {
        return 0;
      }

      sub_298B0A034(v2288, 1, v2287);
      sub_298B0A034(v2288, 1, a0123456789Abcd_0[(v2286 >> 5) & 0x1F]);
      v446 = HIWORD(v2286) & 0x1F;
      v447 = v2288;
      v448 = 32;
      goto LABEL_342;
    case 508:
      v2290 = a3;
      v914 = a4;
      v2291 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2291 & 3;
      if (!v46)
      {
        return 0;
      }

      v2292 = v2290;
      sub_298B1A1C4(v914, v2290 & 0x1F);
      sub_298B1A1C4(v914, (v2290 >> 5) & 0x1F);
      goto LABEL_2043;
    case 509:
      v1004 = result;
      v1005 = a3;
      v1006 = word_298DFC574[a3 & 0x1F];
      v1007 = *(a4 + 24);
      v898 = a4;
      if (v1007 >= *(a4 + 28))
      {
        sub_298B90A44(a4 + 16, (a4 + 32), v1007 + 1, 16);
        LODWORD(v1007) = *(v898 + 24);
      }

      v1008 = (*(v898 + 16) + 16 * v1007);
      *v1008 = 1;
      v1008[1] = v1006;
      v1009 = (*(v898 + 24) + 1);
      *(v898 + 24) = v1009;
      v900 = v1004 & 3;
      if (!v900)
      {
        return 0;
      }

      if (v1009 >= *(v898 + 28))
      {
        sub_298B90A44(v898 + 16, (v898 + 32), v1009 + 1, 16);
        LODWORD(v1009) = *(v898 + 24);
      }

      v1010 = (*(v898 + 16) + 16 * v1009);
      *v1010 = 1;
      v1010[1] = v1006;
      v1011 = *(v898 + 28);
      v1012 = (*(v898 + 24) + 1);
      *(v898 + 24) = v1012;
      v1013 = word_298DFC574[(v1005 >> 5) & 0x1F];
      if (v1012 >= v1011)
      {
        sub_298B90A44(v898 + 16, (v898 + 32), v1012 + 1, 16);
        LODWORD(v1012) = *(v898 + 24);
      }

      v1014 = (*(v898 + 16) + 16 * v1012);
      *v1014 = 1;
      v1014[1] = v1013;
      ++*(v898 + 24);
      sub_298B1A1C4(v898, HIWORD(v1005) & 0xF);
      v1015 = (v1005 >> 9) & 4 | (v1005 >> 20) & 3;
      v1016 = *(v898 + 24);
      if (v1016 >= *(v898 + 28))
      {
        sub_298B90A44(v898 + 16, (v898 + 32), v1016 + 1, 16);
        LODWORD(v1016) = *(v898 + 24);
      }

      v1017 = (*(v898 + 16) + 16 * v1016);
      *v1017 = 2;
      v1017[1] = v1015;
      goto LABEL_693;
    case 510:
      v2293 = a3;
      v44 = a4;
      v2294 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2294 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v44, (v2293 >> 5) & 0x1F);
      goto LABEL_2028;
    case 511:
      v1627 = a3;
      v1478 = a4;
      v2295 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v176 = v2295 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A1C4(v1478, (v1627 >> 5) & 0x1F);
      goto LABEL_1983;
    case 512:
      v1452 = a3;
      v1453 = a4;
      v2296 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v176 = v2296 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A1C4(v1453, (v1452 >> 5) & 0x1F);
      goto LABEL_1988;
    case 513:
      v2297 = a3;
      v174 = a4;
      v2298 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v176 = v2298 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A1C4(v174, (v2297 >> 5) & 0x1F);
      v177 = HIWORD(v2297) & 0x1F;
      goto LABEL_139;
    case 514:
      v2299 = a3;
      v2300 = a4;
      v2301 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v176 = v2301 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A1C4(v2300, v2299 & 0x1F);
      sub_298B1A1C4(v2300, (v2299 >> 5) & 0x1F);
      v177 = HIWORD(v2299) & 7;
      v178 = v2300;
      goto LABEL_1985;
    case 515:
      v931 = result;
      v932 = a3;
      v933 = word_298DFC574[a3 & 0x1F];
      v934 = *(a4 + 24);
      v935 = a4;
      if (v934 >= *(a4 + 28))
      {
        sub_298B90A44(a4 + 16, (a4 + 32), v934 + 1, 16);
        LODWORD(v934) = *(v935 + 24);
      }

      v936 = (*(v935 + 16) + 16 * v934);
      *v936 = 1;
      v936[1] = v933;
      v937 = (*(v935 + 24) + 1);
      *(v935 + 24) = v937;
      v938 = v931 & 3;
      if (!v938)
      {
        return 0;
      }

      v939 = word_298DFC574[(v932 >> 5) & 0x1F];
      if (v937 >= *(v935 + 28))
      {
        sub_298B90A44(v935 + 16, (v935 + 32), v937 + 1, 16);
        LODWORD(v937) = *(v935 + 24);
      }

      v940 = v935;
      v941 = (*(v935 + 16) + 16 * v937);
      *v941 = 1;
      v941[1] = v939;
      ++*(v935 + 24);
      v942 = HIWORD(v932) & 7;
      v943 = 8;
      goto LABEL_721;
    case 516:
      v2302 = a3;
      v1562 = a4;
      v2303 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v176 = v2303 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A1C4(v1562, v2302 & 0x1F);
      sub_298B1A1C4(v1562, (v2302 >> 5) & 0x1F);
      v177 = HIWORD(v2302) & 0xF;
      goto LABEL_2004;
    case 517:
      v1634 = a3;
      v917 = a4;
      v2304 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v889 = v2304 & 3;
      if (!v889)
      {
        return 0;
      }

      sub_298B1A1C4(v917, (v1634 >> 5) & 0x1F);
LABEL_1999:
      v890 = HIWORD(v1634) & 0xF;
LABEL_703:
      v891 = v917;
      v892 = 16;
      goto LABEL_706;
    case 518:
      v2305 = a3;
      v805 = a4;
      v2306 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v176 = v2306 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A1C4(v805, v2305 & 0x1F);
      sub_298B1A1C4(v805, (v2305 >> 5) & 0x1F);
      v177 = HIWORD(v2305) & 0x1F;
LABEL_617:
      v178 = v805;
      goto LABEL_140;
    case 519:
      v1018 = result;
      v1019 = a3;
      v1020 = word_298DFC574[a3 & 0x1F];
      v1021 = *(a4 + 24);
      v1022 = a4;
      if (v1021 >= *(a4 + 28))
      {
        sub_298B90A44(a4 + 16, (a4 + 32), v1021 + 1, 16);
        LODWORD(v1021) = *(v1022 + 24);
      }

      v1023 = (*(v1022 + 16) + 16 * v1021);
      *v1023 = 1;
      v1023[1] = v1020;
      v1024 = (*(v1022 + 24) + 1);
      *(v1022 + 24) = v1024;
      v938 = v1018 & 3;
      if (!v938)
      {
        return 0;
      }

      v1025 = word_298DFC574[(v1019 >> 5) & 0x1F];
      if (v1024 >= *(v1022 + 28))
      {
        sub_298B90A44(v1022 + 16, (v1022 + 32), v1024 + 1, 16);
        LODWORD(v1024) = *(v1022 + 24);
      }

      v940 = v1022;
      v1026 = (*(v1022 + 16) + 16 * v1024);
      *v1026 = 1;
      v1026[1] = v1025;
      ++*(v1022 + 24);
      v942 = HIWORD(v1019) & 0x1F;
      v943 = 32;
LABEL_721:
      sub_298B1DBB8(v940, v942, v943);
      return v938;
    case 520:
      v2307 = a3;
      v1562 = a4;
      v2308 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v176 = v2308 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A1C4(v1562, v2307 & 0x1F);
      sub_298B1A1C4(v1562, (v2307 >> 5) & 0x1F);
      v177 = HIWORD(v2307) & 7 | 8;
LABEL_2004:
      v178 = v1562;
      goto LABEL_1990;
    case 521:
      v707 = a3;
      v708 = word_298DFC574[a3 & 0x1F];
      v709 = *(a4 + 24);
      if (v709 >= *(a4 + 28))
      {
        v2405 = result;
        v2406 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v709 + 1, 16);
        LOBYTE(result) = v2405;
        a4 = v2406;
        LODWORD(v709) = *(v2406 + 24);
      }

      v710 = (*(a4 + 16) + 16 * v709);
      *v710 = 1;
      v710[1] = v708;
      v711 = (*(a4 + 24) + 1);
      *(a4 + 24) = v711;
      v176 = result & 3;
      if ((result & 3) == 0)
      {
        return 0;
      }

      if (v711 >= *(a4 + 28))
      {
        v2407 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v711 + 1, 16);
        a4 = v2407;
        LODWORD(v711) = *(v2407 + 24);
      }

      v712 = (*(a4 + 16) + 16 * v711);
      *v712 = 1;
      v712[1] = v708;
      v713 = *(a4 + 28);
      v714 = (*(a4 + 24) + 1);
      *(a4 + 24) = v714;
      v715 = v707;
      v716 = word_298DFC574[(v707 >> 5) & 0x1F];
      if (v714 >= v713)
      {
        v2408 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v714 + 1, 16);
        v715 = v707;
        a4 = v2408;
        LODWORD(v714) = *(v2408 + 24);
      }

      v717 = (*(a4 + 16) + 16 * v714);
      *v717 = 1;
      v717[1] = v716;
      ++*(a4 + 24);
      v177 = HIWORD(v715) & 0xF | 0x10;
      v178 = a4;
      goto LABEL_140;
    case 522:
      v2309 = a3;
      v1568 = a4;
      v2310 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v176 = v2310 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A1C4(v1568, v2309 & 0x1F);
      sub_298B1A1C4(v1568, (v2309 >> 5) & 0x1F);
      v177 = HIWORD(v2309) & 0x1F | 0x20;
      goto LABEL_2035;
    case 523:
      v2311 = a3;
      v2312 = a4;
      v2313 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v889 = v2313 & 3;
      if (!v889)
      {
        return 0;
      }

      sub_298B1A1C4(v2312, v2311 & 0x1F);
      sub_298B1A1C4(v2312, (v2311 >> 5) & 0x1F);
      v890 = HIWORD(v2311) & 7;
      v891 = v2312;
LABEL_682:
      v892 = 8;
      goto LABEL_706;
    case 524:
      v2314 = a3;
      v2315 = a4;
      v2316 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v889 = v2316 & 3;
      if (!v889)
      {
        return 0;
      }

      sub_298B1A1C4(v2315, v2314 & 0x1F);
      sub_298B1A1C4(v2315, (v2314 >> 5) & 0x1F);
      v890 = HIWORD(v2314) & 0xF;
      v891 = v2315;
      v892 = 16;
      goto LABEL_706;
    case 525:
      v2318 = a3;
      v2319 = a4;
      v2320 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v889 = v2320 & 3;
      if (!v889)
      {
        return 0;
      }

      sub_298B1A1C4(v2319, v2318 & 0x1F);
      sub_298B1A1C4(v2319, (v2318 >> 5) & 0x1F);
      v890 = HIWORD(v2318) & 0x1F;
      v891 = v2319;
LABEL_1739:
      v892 = 32;
      goto LABEL_706;
    case 526:
      v2323 = a3;
      v914 = a4;
      v2324 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2324 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v914, v2323 & 0x1F);
      sub_298B0A034(v914, 1, a0123456789Abcd_0[(v2323 >> 5) & 0x1F]);
      sub_298B1A1C4(v914, HIWORD(v2323) & 0xF);
      v50 = (v2323 >> 9) & 4 | (v2323 >> 20) & 3;
      goto LABEL_700;
    case 527:
      v2293 = a3;
      v44 = a4;
      v2327 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2327 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, a0123456789Abcd_0[(v2293 >> 5) & 0x1F]);
LABEL_2028:
      sub_298B1A1C4(v44, HIWORD(v2293) & 0xF);
      v50 = (v2293 >> 9) & 4 | (v2293 >> 20) & 3;
      goto LABEL_43;
    case 528:
      v2328 = a3;
      v2329 = a0123456789Abcd_0[a3 & 0x1F];
      v895 = a4;
      v2330 = result;
      sub_298B0A034(a4, 1, v2329);
      v365 = v2330 & 3;
      if (!v365)
      {
        return 0;
      }

      sub_298B0A034(v895, 1, v2329);
      sub_298B0A034(v895, 1, a0123456789Abcd_0[(v2328 >> 5) & 0x1F]);
      sub_298B1A1C4(v895, HIWORD(v2328) & 0x1F);
      sub_298B0A034(v895, 2, (v2328 >> 21) & 1);
      v368 = (v2328 >> 13) & 3;
      goto LABEL_685;
    case 529:
      v2331 = a3;
      v1456 = a4;
      v2332 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v176 = v2332 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A1C4(v1456, (v2331 >> 5) & 0x1F);
      v177 = HIWORD(v2331) & 0x3F;
      goto LABEL_1255;
    case 530:
      v2333 = a3;
      v1568 = a4;
      v2334 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v176 = v2334 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B1A1C4(v1568, v2333 & 0x1F);
      sub_298B1A1C4(v1568, (v2333 >> 5) & 0x1F);
      v177 = HIWORD(v2333) & 0x3F;
LABEL_2035:
      v178 = v1568;
      goto LABEL_1256;
    case 531:
      v2335 = a3;
      v1495 = a4;
      v2336 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v889 = v2336 & 3;
      if (!v889)
      {
        return 0;
      }

      sub_298B1A1C4(v1495, (v2335 >> 5) & 0x1F);
      v890 = HIWORD(v2335) & 0x3F;
LABEL_2038:
      v891 = v1495;
      v892 = 64;
      goto LABEL_706;
    case 532:
      v2337 = a3;
      v914 = a4;
      v2338 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2338 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v914, v2337 & 0x1F);
      sub_298B1A1C4(v914, (v2337 >> 5) & 0x1F);
      sub_298B1A1C4(v914, HIWORD(v2337) & 0x1F);
      sub_298B0A034(v914, 2, (v2337 >> 10) & 2 | (v2337 >> 21) & 1);
      v50 = (v2337 >> 13) & 3;
      goto LABEL_700;
    case 533:
      v649 = a3;
      v650 = a3 & 0x1F;
      v651 = word_298DFC574[a3 & 0x1F];
      v652 = *(a4 + 24);
      if (v652 >= *(a4 + 28))
      {
        v2388 = result;
        v2389 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v652 + 1, 16);
        LOBYTE(result) = v2388;
        a4 = v2389;
        LODWORD(v652) = *(v2389 + 24);
      }

      v653 = (*(a4 + 16) + 16 * v652);
      *v653 = 1;
      v653[1] = v651;
      ++*(a4 + 24);
      v445 = result & 3;
      if ((result & 3) == 0)
      {
        return 0;
      }

      v654 = v650;
      v655 = a4;
      sub_298B1A1C4(a4, v654);
      sub_298B1A1C4(v655, (v649 >> 5) & 0x1F);
      v446 = HIWORD(v649) & 0x3F;
      v447 = v655;
      v448 = 64;
LABEL_342:
      sub_298B1DBB8(v447, v446, v448);
      return v445;
    case 534:
      v2339 = a3;
      v914 = a4;
      v2340 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2340 & 3;
      if (!v46)
      {
        return 0;
      }

      v2292 = v2339;
      sub_298B1A1C4(v914, v2339 & 0x1F);
      sub_298B0A034(v914, 1, a0123456789Abcd_0[(v2339 >> 5) & 0x1F]);
LABEL_2043:
      sub_298B1A1C4(v914, HIWORD(v2292) & 0x1F);
      v50 = (v2292 >> 10) & 2 | (v2292 >> 21) & 1;
      goto LABEL_700;
    case 535:
      v766 = a3;
      v767 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      v44 = a4;
      v768 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v46 = v768 & 3;
      if (v46)
      {
        goto LABEL_588;
      }

      return 0;
    case 536:
      v691 = a3;
      v44 = a4;
      v2341 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v2341 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, a0123456789Abcd_0[(v691 >> 5) & 0x1F]);
      goto LABEL_543;
    case 537:
      v687 = a3;
      v688 = word_298DFC574[a3 & 0x1F];
      v689 = *(a4 + 24);
      if (v689 >= *(a4 + 28))
      {
        v2399 = result;
        v2400 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v689 + 1, 16);
        LOBYTE(result) = v2399;
        a4 = v2400;
        LODWORD(v689) = *(v2400 + 24);
      }

      v690 = (*(a4 + 16) + 16 * v689);
      *v690 = 1;
      v690[1] = v688;
      ++*(a4 + 24);
      v46 = result & 3;
      if ((result & 3) == 0)
      {
        return 0;
      }

      v691 = v687;
      v692 = (v687 >> 5) & 0x1F;
      v44 = a4;
      sub_298B1A1C4(a4, v692);
      goto LABEL_543;
    case 538:
      v958 = result;
      v959 = a3;
      v960 = word_298DFC574[a3 & 0x1F];
      v961 = *(a4 + 24);
      v808 = a4;
      if (v961 >= *(a4 + 28))
      {
        sub_298B90A44(a4 + 16, (a4 + 32), v961 + 1, 16);
        LODWORD(v961) = *(v808 + 24);
      }

      v962 = (*(v808 + 16) + 16 * v961);
      *v962 = 1;
      v962[1] = v960;
      v963 = (*(v808 + 24) + 1);
      *(v808 + 24) = v963;
      v810 = v958 & 3;
      if (!v810)
      {
        return 0;
      }

      if (v963 >= *(v808 + 28))
      {
        sub_298B90A44(v808 + 16, (v808 + 32), v963 + 1, 16);
        LODWORD(v963) = *(v808 + 24);
      }

      v964 = (*(v808 + 16) + 16 * v963);
      *v964 = 1;
      v964[1] = v960;
      v965 = *(v808 + 28);
      v966 = (*(v808 + 24) + 1);
      *(v808 + 24) = v966;
      v967 = word_298DFC574[(v959 >> 5) & 0x1F];
      if (v966 >= v965)
      {
        sub_298B90A44(v808 + 16, (v808 + 32), v966 + 1, 16);
        LODWORD(v966) = *(v808 + 24);
      }

      v968 = (*(v808 + 16) + 16 * v966);
      *v968 = 1;
      v968[1] = v967;
      v969 = *(v808 + 28);
      v970 = (*(v808 + 24) + 1);
      *(v808 + 24) = v970;
      v971 = word_298DFC574[HIWORD(v959) & 0x1F];
      if (v970 >= v969)
      {
        sub_298B90A44(v808 + 16, (v808 + 32), v970 + 1, 16);
        LODWORD(v970) = *(v808 + 24);
      }

      v972 = (*(v808 + 16) + 16 * v970);
      *v972 = 1;
      v972[1] = v971;
      v973 = *(v808 + 28);
      v974 = (*(v808 + 24) + 1);
      *(v808 + 24) = v974;
      if (v974 >= v973)
      {
        sub_298B90A44(v808 + 16, (v808 + 32), v974 + 1, 16);
        LODWORD(v974) = *(v808 + 24);
      }

      v975 = (*(v808 + 16) + 16 * v974);
      *v975 = 2;
      v975[1] = (v959 >> 11) & 1;
      v874 = *(v808 + 28);
      v815 = (*(v808 + 24) + 1);
      *(v808 + 24) = v815;
      v816 = (v959 >> 13) & 3;
      goto LABEL_667;
    case 539:
      v1865 = a3;
      v914 = a4;
      v1866 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v1866 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v914, v1865 & 0x1F);
      sub_298B1A1C4(v914, (v1865 >> 5) & 0x1F);
      sub_298B1A1C4(v914, HIWORD(v1865) & 0x1F);
      v50 = (v1865 >> 11) & 1;
LABEL_700:
      v51 = v914;
      goto LABEL_44;
    case 540:
      v1867 = a3;
      v44 = a4;
      v1868 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v46 = v1868 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v44, (v1867 >> 5) & 0x1F);
      sub_298B1A1C4(v44, HIWORD(v1867) & 0x1F);
      v50 = (v1867 >> 11) & 1;
      goto LABEL_43;
    case 541:
      v1869 = result;
      sub_298B1B6B8(a4, a3, a5, a6);
      return v1869 & 3;
    case 542:
      v261 = word_298DFB8C4[a3 & 0x1F];
      v262 = *(a4 + 24);
      if (v262 >= *(a4 + 28))
      {
        v1115 = result;
        v1116 = a3;
        v1117 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v262 + 1, 16);
        LOBYTE(result) = v1115;
        a3 = v1116;
        a4 = v1117;
        LODWORD(v262) = *(v1117 + 24);
      }

      v263 = (*(a4 + 16) + 16 * v262);
      *v263 = 1;
      v263[1] = v261;
      v264 = (*(a4 + 24) + 1);
      *(a4 + 24) = v264;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      v265 = result;
      v266 = word_298DFB8C4[(a3 >> 5) & 0x1F];
      if (v264 >= *(a4 + 28))
      {
        v1133 = a3;
        v1134 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v264 + 1, 16);
        a3 = v1133;
        a4 = v1134;
        LODWORD(v264) = *(v1134 + 24);
      }

      v267 = (*(a4 + 16) + 16 * v264);
      *v267 = 1;
      v267[1] = v266;
      ++*(a4 + 24);
      if (((a3 >> 10) & 0x80) != 0)
      {
        v268 = (a3 >> 10) | 0xFFFFFFFFFFFFFF00;
      }

      else
      {
        v268 = (a3 >> 10);
      }

      v269 = a4;
LABEL_215:
      v270 = 2;
LABEL_216:
      sub_298B0A034(v269, v270, v268);
      return v265;
    case 543:
      v536 = word_298DFB8C4[a3 & 0x1F];
      v537 = *(a4 + 24);
      if (v537 >= *(a4 + 28))
      {
        v1174 = result;
        v1175 = a3;
        v1176 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v537 + 1, 16);
        LOBYTE(result) = v1174;
        a3 = v1175;
        a4 = v1176;
        LODWORD(v537) = *(v1176 + 24);
      }

      v538 = (*(a4 + 16) + 16 * v537);
      *v538 = 1;
      v538[1] = v536;
      v539 = (*(a4 + 24) + 1);
      *(a4 + 24) = v539;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      v540 = word_298DFB8C4[(a3 >> 5) & 0x1F];
      if (v539 >= *(a4 + 28))
      {
        v1177 = result;
        v1178 = a3;
        v1179 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v539 + 1, 16);
        result = v1177;
        a3 = v1178;
        a4 = v1179;
        LODWORD(v539) = *(v1179 + 24);
      }

      v541 = (*(a4 + 16) + 16 * v539);
      *v541 = 1;
      v541[1] = v540;
      v37 = *(a4 + 28);
      v38 = (*(a4 + 24) + 1);
      *(a4 + 24) = v38;
      v19 = (a3 >> 10);
      goto LABEL_33;
    case 544:
      return sub_298B1B808(a4, a3, a5, a6) & result;
    case 545:
      v43 = a3;
      v44 = a4;
      v45 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v46 = v45 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFBCEE[(v43 >> 5) & 0x1F]);
      v47 = (v43 >> 10);
      v48 = v47 | 0xFFFFFFFFFFFFFF00;
      v49 = ((v43 >> 10) & 0x80) == 0;
      goto LABEL_40;
    case 546:
      v1918 = a3;
      v44 = a4;
      v1919 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v46 = v1919 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFBCEE[(v1918 >> 5) & 0x1F]);
      v50 = (v1918 >> 10);
      goto LABEL_43;
    case 547:
      v27 = word_298DFBD50[a3 & 0x1F];
      v28 = *(a4 + 24);
      if (v28 >= *(a4 + 28))
      {
        v726 = result;
        v727 = a3;
        v728 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v28 + 1, 16);
        LOBYTE(result) = v726;
        a3 = v727;
        a4 = v728;
        LODWORD(v28) = *(v728 + 24);
      }

      v29 = (*(a4 + 16) + 16 * v28);
      *v29 = 1;
      v29[1] = v27;
      v30 = (*(a4 + 24) + 1);
      *(a4 + 24) = v30;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      v31 = word_298DFBD50[(a3 >> 5) & 0x1F];
      if (v30 >= *(a4 + 28))
      {
        v729 = result;
        v730 = a3;
        v731 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v30 + 1, 16);
        result = v729;
        a3 = v730;
        a4 = v731;
        LODWORD(v30) = *(v731 + 24);
      }

      v32 = (*(a4 + 16) + 16 * v30);
      *v32 = 1;
      v32[1] = v31;
      v33 = *(a4 + 28);
      v34 = (*(a4 + 24) + 1);
      *(a4 + 24) = v34;
      v35 = HIWORD(a3) & 0x3F;
      if (v34 >= v33)
      {
        v732 = result;
        v733 = a3;
        v734 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v34 + 1, 16);
        result = v732;
        a3 = v733;
        a4 = v734;
        LODWORD(v34) = *(v734 + 24);
      }

      v36 = (*(a4 + 16) + 16 * v34);
      *v36 = 2;
      v36[1] = v35;
      v37 = *(a4 + 28);
      v38 = (*(a4 + 24) + 1);
      *(a4 + 24) = v38;
      v19 = (a3 >> 10) & 0xF;
      goto LABEL_33;
    case 548:
      return sub_298B1BA24(a4, a3) & result;
    case 549:
      return sub_298B1BBEC(a4, a3) & result;
    case 550:
      v2096 = a3;
      v44 = a4;
      v2097 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v46 = v2097 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A55C(v44, (v2096 >> 5) & 0x1F);
      sub_298B0A034(v44, 2, HIWORD(v2096) & 0x1F);
      v50 = (v2096 >> 10) & 0x1F;
      goto LABEL_43;
    case 551:
      v53 = word_298DFB8C4[a3 & 0x1F];
      v54 = *(a4 + 24);
      if (v54 >= *(a4 + 28))
      {
        v944 = result;
        v945 = a3;
        v946 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v54 + 1, 16);
        LOBYTE(result) = v944;
        a3 = v945;
        a4 = v946;
        LODWORD(v54) = *(v946 + 24);
      }

      v55 = (*(a4 + 16) + 16 * v54);
      *v55 = 1;
      v55[1] = v53;
      v56 = (*(a4 + 24) + 1);
      *(a4 + 24) = v56;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      v57 = word_298DFB8C4[(a3 >> 5) & 0x1F];
      if (v56 >= *(a4 + 28))
      {
        v947 = result;
        v948 = a3;
        v949 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v56 + 1, 16);
        result = v947;
        a3 = v948;
        a4 = v949;
        LODWORD(v56) = *(v949 + 24);
      }

      v58 = (*(a4 + 16) + 16 * v56);
      *v58 = 1;
      v58[1] = v57;
      v59 = *(a4 + 28);
      v60 = (*(a4 + 24) + 1);
      *(a4 + 24) = v60;
      v61 = word_298DFB8C4[HIWORD(a3) & 0x1F];
      if (v60 >= v59)
      {
        v950 = result;
        v951 = a3;
        v952 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v60 + 1, 16);
        result = v950;
        a3 = v951;
        a4 = v952;
        LODWORD(v60) = *(v952 + 24);
      }

      v62 = (*(a4 + 16) + 16 * v60);
      v63 = 1;
      goto LABEL_56;
    case 552:
      v39 = word_298DFB8C4[a3 & 0x1F];
      v40 = *(a4 + 24);
      if (v40 >= *(a4 + 28))
      {
        v828 = result;
        v829 = a3;
        v830 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v40 + 1, 16);
        LOBYTE(result) = v828;
        a3 = v829;
        a4 = v830;
        LODWORD(v40) = *(v830 + 24);
      }

      v41 = (*(a4 + 16) + 16 * v40);
      *v41 = 1;
      v41[1] = v39;
      v42 = (*(a4 + 24) + 1);
      *(a4 + 24) = v42;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      if (v42 >= *(a4 + 28))
      {
        v1045 = result;
        v1046 = a3;
        v1047 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v42 + 1, 16);
        result = v1045;
        a3 = v1046;
        a4 = v1047;
        LODWORD(v42) = *(v1047 + 24);
      }

      v180 = (*(a4 + 16) + 16 * v42);
      *v180 = 1;
      v180[1] = v39;
      v181 = *(a4 + 28);
      v182 = (*(a4 + 24) + 1);
      *(a4 + 24) = v182;
      v183 = word_298DFB8C4[(a3 >> 5) & 0x1F];
      if (v182 >= v181)
      {
        v1048 = result;
        v1049 = a3;
        v1050 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v182 + 1, 16);
        result = v1048;
        a3 = v1049;
        a4 = v1050;
        LODWORD(v182) = *(v1050 + 24);
      }

      v184 = (*(a4 + 16) + 16 * v182);
      *v184 = 1;
      v184[1] = v183;
      v185 = *(a4 + 28);
      v186 = (*(a4 + 24) + 1);
      *(a4 + 24) = v186;
      v61 = HIWORD(a3) & 0x1F;
      if (v186 >= v185)
      {
        v1051 = result;
        v1052 = a3;
        v1053 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v186 + 1, 16);
        result = v1051;
        a3 = v1052;
        a4 = v1053;
        LODWORD(v186) = *(v1053 + 24);
      }

      v62 = (*(a4 + 16) + 16 * v186);
      v63 = 2;
LABEL_56:
      *v62 = v63;
      v62[1] = v61;
      v37 = *(a4 + 28);
      v38 = (*(a4 + 24) + 1);
      *(a4 + 24) = v38;
      v19 = (a3 >> 10) & 0x1F;
      goto LABEL_33;
    case 553:
      v897 = a3;
      v898 = a4;
      v899 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v900 = v899 & 3;
      if (!v900)
      {
        return 0;
      }

      sub_298B0A034(v898, 1, word_298DFBCEE[(v897 >> 5) & 0x1F]);
      v901 = *(v898 + 24);
      if (v901 >= *(v898 + 28))
      {
        sub_298B90A44(v898 + 16, (v898 + 32), v901 + 1, 16);
        LODWORD(v901) = *(v898 + 24);
      }

      v902 = (*(v898 + 16) + 16 * v901);
      *v902 = 2;
      v902[1] = HIWORD(v897) & 0x3F;
      v903 = *(v898 + 28);
      v904 = (*(v898 + 24) + 1);
      *(v898 + 24) = v904;
      if (v904 >= v903)
      {
        sub_298B90A44(v898 + 16, (v898 + 32), v904 + 1, 16);
        LODWORD(v904) = *(v898 + 24);
      }

      v905 = (*(v898 + 16) + 16 * v904);
      *v905 = 2;
      v905[1] = v897 >> 10;
LABEL_693:
      ++*(v898 + 24);
      return v900;
    case 554:
      v226 = a3;
      v227 = a4;
      v228 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v205 = v228 & 3;
      if (!v205)
      {
        return 0;
      }

      v229 = v226;
      v230 = word_298DFBCEE[(v226 >> 5) & 0x1F];
      v206 = v227;
      sub_298B0A034(v227, 1, v230);
      sub_298B0A034(v227, 1, word_298DFBCEE[HIWORD(v229) & 0x1F]);
      v207 = v229 >> 10;
LABEL_175:
      v231 = *(v227 + 24);
      if (v231 >= *(v227 + 28))
      {
        sub_298B90A44(v206 + 16, (v206 + 32), v231 + 1, 16);
        v206 = v227;
        LODWORD(v231) = *(v227 + 24);
      }

      v209 = (*(v206 + 16) + 16 * v231);
      v210 = 2;
      goto LABEL_178;
    case 555:
      v124 = a3;
      v125 = word_298DFBCEE[a3 & 0x1F];
      v126 = a4;
      v127 = result;
      sub_298B0A034(a4, 1, v125);
      v128 = v127 & 3;
      if (!v128)
      {
        return 0;
      }

      v129 = v126;
      sub_298B0A034(v126, 1, v125);
      sub_298B0A034(v126, 1, word_298DFBCEE[(v124 >> 5) & 0x1F]);
      v130 = v124;
      v131 = v126[6];
      if (v131 >= v126[7])
      {
        sub_298B90A44((v126 + 4), v126 + 8, v131 + 1, 16);
        v130 = v124;
        v129 = v126;
        LODWORD(v131) = v126[6];
      }

      v132 = (*(v129 + 2) + 16 * v131);
      *v132 = 2;
      v132[1] = HIWORD(v124) & 0x3F;
      v133 = v129[7];
      v134 = v129[6] + 1;
      v129[6] = v134;
      v135 = v130 >> 10;
      if (v134 >= v133)
      {
        sub_298B90A44((v129 + 4), v129 + 8, v134 + 1, 16);
        v129 = v126;
        LODWORD(v134) = v126[6];
      }

      v136 = (*(v129 + 2) + 16 * v134);
      *v136 = 2;
      v136[1] = v135;
      ++v129[6];
      return v128;
    case 556:
      v612 = -(a3 >> 5);
      v613 = *(a6 + 24);
      if (v613)
      {
        v614 = result;
        v615 = a4;
        LOBYTE(result) = (*(*v613 + 16))(v613, a4, *(a6 + 32), -4 * (a3 >> 5), a5, 0, 0, 0, 4);
        a4 = v615;
        v616 = result;
        LOBYTE(result) = v614;
        if (v616)
        {
          return result & 3;
        }
      }

      v617 = *(a4 + 24);
      if (v617 >= *(a4 + 28))
      {
        goto LABEL_498;
      }

      goto LABEL_505;
    case 557:
      if ((a3 >> 25))
      {
        v612 = a3 & 0x3FFFFFF | 0xFFFFFFFFFC000000;
      }

      else
      {
        v612 = a3 & 0x3FFFFFF;
      }

      v620 = *(a6 + 24);
      if (v620)
      {
        v621 = result;
        v622 = a4;
        LOBYTE(result) = (*(*v620 + 16))(v620, a4, *(a6 + 32), 4 * v612, a5, 1, 0, 0, 4);
        a4 = v622;
        v623 = result;
        LOBYTE(result) = v621;
        if (v623)
        {
          return result & 3;
        }
      }

      v617 = *(a4 + 24);
      if (v617 < *(a4 + 28))
      {
        goto LABEL_505;
      }

LABEL_498:
      v618 = result;
      v619 = a4;
      sub_298B90A44(a4 + 16, (a4 + 32), v617 + 1, 16);
      LOBYTE(result) = v618;
      a4 = v619;
      LODWORD(v617) = *(v619 + 24);
LABEL_505:
      v624 = (*(a4 + 16) + 16 * v617);
      *v624 = 2;
      v624[1] = v612;
      goto LABEL_308;
    case 558:
      v560 = word_298DFB8C4[a3 & 0x1F];
      v561 = *(a4 + 24);
      if (v561 >= *(a4 + 28))
      {
        v2348 = result;
        v2349 = a3;
        v2350 = a4;
        v2351 = a6;
        v2352 = a5;
        sub_298B90A44(a4 + 16, (a4 + 32), v561 + 1, 16);
        a5 = v2352;
        a6 = v2351;
        LOBYTE(result) = v2348;
        a3 = v2349;
        a4 = v2350;
        LODWORD(v561) = *(v2350 + 24);
      }

      v562 = (*(a4 + 16) + 16 * v561);
      *v562 = 1;
      v562[1] = v560;
      ++*(a4 + 24);
      v563 = result & 3;
      if ((result & 3) == 0)
      {
        return 0;
      }

      sub_298B1BDA0(a4, (a3 >> 5) & 0x7FFFF, a5, a6);
      return v563;
    case 559:
      v211 = a6;
      v212 = result;
      v213 = (a3 >> 26) & 0x20 | (a3 >> 19) & 0x1F;
      if (((a3 >> 5) & 0x2000) != 0)
      {
        v214 = (a3 >> 5) & 0x3FFF | 0xFFFFFFFFFFFFC000;
      }

      else
      {
        v214 = (a3 >> 5) & 0x3FFF;
      }

      v215 = a4;
      if ((a3 & 0x80000000) != 0)
      {
        sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      }

      else
      {
        sub_298B1A55C(a4, a3 & 0x1F);
      }

      v216 = v215;
      v217 = v215[6];
      v218 = v211;
      if (v217 >= v215[7])
      {
        sub_298B90A44((v215 + 4), v215 + 8, v217 + 1, 16);
        v218 = v211;
        v216 = v215;
        LODWORD(v217) = v215[6];
      }

      v219 = (*(v216 + 2) + 16 * v217);
      *v219 = 2;
      v219[1] = v213;
      v220 = v216[6] + 1;
      v216[6] = v220;
      v221 = *(v218 + 24);
      if (v221)
      {
        v222 = *(v218 + 32);
        v223 = v216;
        v224 = (*(*v221 + 16))(v221);
        LOBYTE(result) = v212;
        if (v224)
        {
          return result & 3;
        }

        v216 = v223;
        v220 = v223[6];
      }

      else
      {
        LOBYTE(result) = v212;
      }

      if (v220 >= v216[7])
      {
        v1066 = v216;
        sub_298B90A44((v216 + 4), v216 + 8, v220 + 1, 16);
        LOBYTE(result) = v212;
        v216 = v1066;
        v220 = v1066[6];
      }

      v225 = (*(v216 + 2) + 16 * v220);
      *v225 = 2;
      v225[1] = v214;
      ++v216[6];
      return result & 3;
    case 560:
      v385 = result;
      v386 = a3 & 0xF;
      v387 = *(a4 + 24);
      if (v387 >= *(a4 + 28))
      {
        v1138 = a3;
        v1139 = a4;
        v1140 = a6;
        sub_298B90A44(a4 + 16, (a4 + 32), v387 + 1, 16);
        a6 = v1140;
        a3 = v1138;
        a4 = v1139;
        LODWORD(v387) = *(v1139 + 24);
      }

      v388 = (*(a4 + 16) + 16 * v387);
      *v388 = 2;
      v388[1] = v386;
      v389 = *(a4 + 24) + 1;
      *(a4 + 24) = v389;
      if (((a3 >> 5) & 0x40000) != 0)
      {
        v390 = (a3 >> 5) & 0x7FFFF | 0xFFFFFFFFFFF80000;
      }

      else
      {
        v390 = (a3 >> 5) & 0x7FFFF;
      }

      v391 = *(a6 + 24);
      if (v391)
      {
        v392 = *a4 != 4380;
        v393 = a4;
        v394 = (*(*v391 + 16))(v391, a4, *(a6 + 32), 4 * v390);
        LOBYTE(result) = v385;
        if (v394)
        {
          return result & 3;
        }

        a4 = v393;
        v389 = *(v393 + 24);
      }

      else
      {
        LOBYTE(result) = v385;
      }

      if (*(a4 + 28) > v389)
      {
        goto LABEL_307;
      }

      goto LABEL_365;
    case 561:
      v2104 = a5;
      v2409 = a6;
      v2105 = a3;
      v2106 = a3 & 0x1F;
      v2107 = word_298DFBCEE;
      goto LABEL_1790;
    case 562:
      v19 = (a3 >> 5);
      goto LABEL_32;
    case 563:
      v76 = a3 & 0x1F;
      goto LABEL_70;
    case 564:
      v19 = (a3 >> 5) & 0x7F;
      goto LABEL_32;
    case 565:
      v19 = (a3 >> 8) & 0xC | 3;
      goto LABEL_32;
    case 566:
      v19 = (a3 >> 8) & 0xF;
LABEL_32:
      v38 = *(a4 + 24);
      v37 = *(a4 + 28);
LABEL_33:
      if (v38 >= v37)
      {
        v602 = result;
        v603 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v38 + 1, 16);
        result = v602;
        a4 = v603;
        LODWORD(v38) = *(v603 + 24);
      }

      v20 = (*(a4 + 16) + 16 * v38);
      v21 = 2;
      goto LABEL_36;
    case 567:
      v2251 = result;
      v1216 = a4;
      v2252 = a3;
      v2253 = (a3 >> 9) & 7;
      if ((v2253 - 4) >= 0xFFFFFFFD)
      {
        sub_298B0A034(a4, 2, v2253);
        v2254 = 3;
      }

      else
      {
        v2254 = 0;
      }

      v365 = v2254 & v2251;
      if (!v365)
      {
        return 0;
      }

      v368 = (v2252 >> 8) & 1;
      goto LABEL_2051;
    case 568:
      v604 = HIWORD(a3) & 7;
      v605 = a3 >> 5;
      if (v604 || v605 >= 3)
      {
        v606 = a7;
        v666 = a6;
        v667 = result;
        v668 = (a3 >> 8) & 0xF;
        v669 = v605 | (8 * v604);
        v670 = *(a4 + 24);
        if (v670 >= *(a4 + 28))
        {
          v2395 = v669;
          v2396 = a4;
          sub_298B90A44(a4 + 16, (a4 + 32), v670 + 1, 16);
          v669 = v2395;
          a4 = v2396;
          LODWORD(v670) = *(v2396 + 24);
        }

        v671 = (*(a4 + 16) + 16 * v670);
        *v671 = 2;
        v671[1] = v669;
        v672 = *(a4 + 28);
        v673 = (*(a4 + 24) + 1);
        *(a4 + 24) = v673;
        if (v673 >= v672)
        {
          v2397 = v669;
          v2398 = a4;
          sub_298B90A44(a4 + 16, (a4 + 32), v673 + 1, 16);
          LODWORD(v669) = v2397;
          a4 = v2398;
          LODWORD(v673) = *(v2398 + 24);
        }

        v674 = (*(a4 + 16) + 16 * v673);
        *v674 = 2;
        v674[1] = v668;
        ++*(a4 + 24);
        v675 = sub_298CEEB34(v669);
        if (!v675)
        {
          goto LABEL_535;
        }

        v676 = *(v666 + 16);
        v677 = *(v676 + 216);
        if ((*(v676 + 216) & 0x40) != 0)
        {
          goto LABEL_634;
        }

        v678 = *(v676 + 232);
        v679 = *(v676 + 248);
        v680 = *(v676 + 264);
        v681 = *(v676 + 280);
        v682 = *(v675 + 2);
        __s1 = *(v675 + 1);
        v2412 = v682;
        v683 = *(v675 + 4);
        v2413 = *(v675 + 3);
        v2414 = v683;
        v684 = *(v675 + 6);
        v2415 = *(v675 + 5);
        v2416 = v684;
        v685 = *(v676 + 296);
        __s1 = vandq_s8(__s1, v677);
        v2412 = vandq_s8(v2412, v678);
        v2413 = vandq_s8(v2413, v679);
        v2414 = vandq_s8(v2414, v680);
        v2415 = vandq_s8(v2415, v681);
        v2416 = vandq_s8(v684, v685);
        if (!memcmp(&__s1, v675 + 2, 0x60uLL))
        {
LABEL_634:
          v607 = 3;
        }

        else
        {
LABEL_535:
          v607 = 0;
        }

        LODWORD(result) = v667;
      }

      else
      {
        v606 = a7;
        v607 = 0;
      }

      v686 = v607 & result;
      if (v686)
      {
        return v686;
      }

      goto LABEL_1859;
    case 569:
      v79 = result;
      v790 = a3;
      v791 = HIWORD(a3) & 7;
      v792 = *(a4 + 24);
      v793 = a4;
      if (v792 >= *(a4 + 28))
      {
        sub_298B90A44(a4 + 16, (a4 + 32), v792 + 1, 16);
        LODWORD(v792) = *(v793 + 24);
      }

      v794 = (*(v793 + 16) + 16 * v792);
      *v794 = 2;
      v794[1] = v791;
      v795 = *(v793 + 28);
      v796 = (*(v793 + 24) + 1);
      *(v793 + 24) = v796;
      if (v796 >= v795)
      {
        sub_298B90A44(v793 + 16, (v793 + 32), v796 + 1, 16);
        LODWORD(v796) = *(v793 + 24);
      }

      v797 = (*(v793 + 16) + 16 * v796);
      *v797 = 2;
      v797[1] = v790 >> 12;
      v798 = *(v793 + 28);
      v799 = (*(v793 + 24) + 1);
      *(v793 + 24) = v799;
      if (v799 >= v798)
      {
        sub_298B90A44(v793 + 16, (v793 + 32), v799 + 1, 16);
        LODWORD(v799) = *(v793 + 24);
      }

      v800 = (*(v793 + 16) + 16 * v799);
      *v800 = 2;
      v800[1] = (v790 >> 8) & 0xF;
      v801 = *(v793 + 28);
      v802 = (*(v793 + 24) + 1);
      *(v793 + 24) = v802;
      if (v802 >= v801)
      {
        sub_298B90A44(v793 + 16, (v793 + 32), v802 + 1, 16);
        LODWORD(v802) = *(v793 + 24);
      }

      v80 = v793;
      v803 = (*(v793 + 16) + 16 * v802);
      *v803 = 2;
      v803[1] = v790 >> 5;
      ++*(v793 + 24);
      v78 = word_298DFBCEE[v790 & 0x1F];
      goto LABEL_72;
    case 570:
      v1067 = a3;
      v808 = a4;
      v1068 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v810 = v1068 & 3;
      if (!v810)
      {
        return 0;
      }

      v1069 = *(v808 + 24);
      if (v1069 >= *(v808 + 28))
      {
        sub_298B90A44(v808 + 16, (v808 + 32), v1069 + 1, 16);
        LODWORD(v1069) = *(v808 + 24);
      }

      v1070 = (*(v808 + 16) + 16 * v1069);
      *v1070 = 2;
      v1070[1] = HIWORD(v1067) & 7;
      v1071 = *(v808 + 28);
      v1072 = (*(v808 + 24) + 1);
      *(v808 + 24) = v1072;
      if (v1072 >= v1071)
      {
        sub_298B90A44(v808 + 16, (v808 + 32), v1072 + 1, 16);
        LODWORD(v1072) = *(v808 + 24);
      }

      v1073 = (*(v808 + 16) + 16 * v1072);
      *v1073 = 2;
      v1073[1] = v1067 >> 12;
      v1074 = *(v808 + 28);
      v1075 = (*(v808 + 24) + 1);
      *(v808 + 24) = v1075;
      if (v1075 >= v1074)
      {
        sub_298B90A44(v808 + 16, (v808 + 32), v1075 + 1, 16);
        LODWORD(v1075) = *(v808 + 24);
      }

      v1076 = (*(v808 + 16) + 16 * v1075);
      *v1076 = 2;
      v1076[1] = (v1067 >> 8) & 0xF;
      v874 = *(v808 + 28);
      v815 = (*(v808 + 24) + 1);
      *(v808 + 24) = v815;
      v816 = v1067 >> 5;
LABEL_667:
      if (v815 >= v874)
      {
        goto LABEL_668;
      }

      goto LABEL_624;
    case 571:
      v1077 = result;
      if ((~a3 & 0x1F) != 0)
      {
        return 0;
      }

      v1078 = a4;
      v1079 = a3;
      v1080 = a3 >> 12;
      v1081 = HIWORD(a3) & 7;
      v1082 = *(a4 + 24);
      if (v1082 >= *(a4 + 28))
      {
        sub_298B90A44(a4 + 16, (a4 + 32), v1082 + 1, 16);
        LODWORD(v1082) = *(v1078 + 24);
      }

      v1083 = (v1079 >> 8) & 0xF;
      v1084 = (*(v1078 + 16) + 16 * v1082);
      *v1084 = 2;
      v1084[1] = v1081;
      v1085 = *(v1078 + 28);
      v1086 = (*(v1078 + 24) + 1);
      *(v1078 + 24) = v1086;
      if (v1086 >= v1085)
      {
        sub_298B90A44(v1078 + 16, (v1078 + 32), v1086 + 1, 16);
        LODWORD(v1086) = *(v1078 + 24);
      }

      v1087 = v1079 >> 5;
      v1088 = (*(v1078 + 16) + 16 * v1086);
      *v1088 = 2;
      v1088[1] = v1080;
      v1089 = *(v1078 + 28);
      v1090 = (*(v1078 + 24) + 1);
      *(v1078 + 24) = v1090;
      if (v1090 >= v1089)
      {
        sub_298B90A44(v1078 + 16, (v1078 + 32), v1090 + 1, 16);
        LODWORD(v1090) = *(v1078 + 24);
      }

      v1091 = (*(v1078 + 16) + 16 * v1090);
      *v1091 = 2;
      v1091[1] = v1083;
      v1092 = *(v1078 + 28);
      v1093 = (*(v1078 + 24) + 1);
      *(v1078 + 24) = v1093;
      if (v1093 >= v1092)
      {
        sub_298B90A44(v1078 + 16, (v1078 + 32), v1093 + 1, 16);
        LODWORD(v1093) = *(v1078 + 24);
      }

      v1094 = (*(v1078 + 16) + 16 * v1093);
      *v1094 = 2;
      v1094[1] = v1087;
      v1095 = *(v1078 + 28);
      v1096 = (*(v1078 + 24) + 1);
      *(v1078 + 24) = v1096;
      if (v1096 >= v1095)
      {
        sub_298B90A44(v1078 + 16, (v1078 + 32), v1096 + 1, 16);
        LODWORD(v1096) = *(v1078 + 24);
      }

      *(*(v1078 + 16) + 16 * v1096) = xmmword_298CF7A10;
      ++*(v1078 + 24);
      return v1077 & 3;
    case 572:
      v2082 = result;
      v2083 = a3;
      v2084 = a4;
      sub_298B0A034(a4, 2, HIWORD(a3) & 7);
      sub_298B0A034(v2084, 2, v2083 >> 12);
      sub_298B0A034(v2084, 2, (v2083 >> 8) & 0xF);
      sub_298B0A034(v2084, 2, v2083 >> 5);
      return sub_298B1DC44(v2084, 0x3Bu, v2083 & 0x1F) & v2082;
    case 573:
      v2085 = a3;
      v2086 = a4;
      v2087 = result;
      sub_298B0A034(a4, 2, (a3 >> 5));
      if ((v2087 & 3) == 0)
      {
        return 0;
      }

      return sub_298B1DC44(v2086, 0x3Bu, v2085 & 0x1F) & v2087;
    case 574:
      v2088 = a3;
      v44 = a4;
      v46 = sub_298B1DC44(a4, 0x3Bu, a3 & 0x1F) & result;
      if (!v46)
      {
        return 0;
      }

      v50 = (v2088 >> 5);
      goto LABEL_43;
    case 575:
      v76 = (a3 >> 5) & 0x1F;
LABEL_70:
      v77 = word_298DFBCEE;
      goto LABEL_71;
    case 576:
      v2089 = result;
      if ((a3 & 0x1F) == 0x1F)
      {
        v2090 = 0;
      }

      else
      {
        sub_298B0A034(a4, 1, word_298DFBDB2[a3 & 0x1F]);
        v2090 = 3;
      }

      return v2090 & v2089;
    case 577:
      v2091 = a3;
      v2092 = a4;
      v2093 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[(a3 >> 5) & 0x1F]);
      v2094 = v2093 & 3;
      if (!v2094)
      {
        return 0;
      }

      sub_298B1A150(v2092, v2091 & 0x1F);
      return v2094;
    case 578:
      return sub_298B1BE80(a4, a3) & result;
    case 579:
      return sub_298B1CA0C(a4, a3) & result;
    case 580:
      v74 = a3 & 0x1F;
      if (v74 == 31)
      {
        v75 = 0;
      }

      else
      {
        v104 = result;
        v105 = a3;
        v106 = a4;
        sub_298B0A034(a4, 1, word_298DFBDB2[a3 & 0x1F]);
        LODWORD(result) = v104;
        a3 = v105;
        a4 = v106;
        v75 = 3;
      }

      v107 = v75 & result;
      if ((v75 & result) == 0)
      {
        return 0;
      }

      v108 = HIWORD(a3) & 0x1F;
      v109 = a3;
      if (v108 == 31)
      {
        v110 = 0;
      }

      else
      {
        v111 = a4;
        sub_298B0A034(a4, 1, word_298DFBDB2[v108]);
        a4 = v111;
        v110 = 3;
      }

      v112 = v110 & v107;
      if (!v112)
      {
        return 0;
      }

      if (v74 == 31)
      {
        v113 = 0;
      }

      else
      {
        v114 = word_298DFBDB2[v74];
        v115 = a4;
        sub_298B0A034(a4, 1, v114);
        a4 = v115;
        v113 = 3;
      }

      v116 = v113 & v112;
      if ((v113 & v112) == 0)
      {
        return 0;
      }

      if (v108 == 31)
      {
        v117 = a4;
        v118 = 0;
      }

      else
      {
        v119 = word_298DFBDB2[v108];
        v117 = a4;
        sub_298B0A034(a4, 1, v119);
        v118 = 3;
      }

      result = v118 & v116;
      if ((v118 & v116) != 0)
      {
        v120 = word_298DFBD50[(v109 >> 5) & 0x1F];
        v121 = v117;
        v122 = v117[6];
        if (v122 >= v117[7])
        {
          v1027 = result;
          sub_298B90A44((v117 + 4), v117 + 8, v122 + 1, 16);
          result = v1027;
          v121 = v117;
          LODWORD(v122) = v117[6];
        }

        v123 = (*(v121 + 2) + 16 * v122);
        *v123 = 1;
        v123[1] = v120;
        ++v121[6];
      }

      return result;
    case 581:
      return sub_298B1CC5C(a4, a3) & result;
    case 582:
      v1610 = a3;
      v1611 = a4;
      v2069 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v1579 = v2069 & 3;
      if (!v1579)
      {
        return 0;
      }

LABEL_1727:
      sub_298B1A55C(v1611, (v1610 >> 5) & 0x1F);
LABEL_1728:
      v1580 = HIWORD(v1610) & 0x1F;
LABEL_1729:
      v1699 = v1611;
LABEL_1730:
      sub_298B1A55C(v1699, v1580);
      return v1579;
    case 583:
      v2070 = a3;
      v44 = a4;
      v2071 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v46 = v2071 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A55C(v44, (v2070 >> 5) & 0x1F);
      sub_298B1A55C(v44, HIWORD(v2070) & 0x1F);
      v50 = v2070 >> 12;
      goto LABEL_43;
    case 584:
      v325 = word_298DFB8C4;
      v326 = word_298DFB8C4[a3 & 0x1F];
      v327 = *(a4 + 24);
      if (v327 >= *(a4 + 28))
      {
        v1121 = result;
        v1122 = a3;
        v1123 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v327 + 1, 16);
        LOBYTE(result) = v1121;
        a3 = v1122;
        a4 = v1123;
        LODWORD(v327) = *(v1123 + 24);
      }

      v328 = (*(a4 + 16) + 16 * v327);
      *v328 = 1;
      v328[1] = v326;
      v329 = (*(a4 + 24) + 1);
      *(a4 + 24) = v329;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      v330 = word_298DFB8C4[(a3 >> 5) & 0x1F];
      if (v329 >= *(a4 + 28))
      {
        v1124 = result;
        v1125 = a3;
        v1126 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v329 + 1, 16);
        result = v1124;
        a3 = v1125;
        a4 = v1126;
        LODWORD(v329) = *(v1126 + 24);
      }

      v331 = (*(a4 + 16) + 16 * v329);
      *v331 = 1;
      v331[1] = v330;
      v332 = *(a4 + 28);
      v333 = (*(a4 + 24) + 1);
      *(a4 + 24) = v333;
      v334 = word_298DFB8C4[HIWORD(a3) & 0x1F];
      if (v333 >= v332)
      {
        v1127 = result;
        v1128 = a3;
        v1129 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v333 + 1, 16);
        result = v1127;
        a3 = v1128;
        a4 = v1129;
        LODWORD(v333) = *(v1129 + 24);
      }

      v335 = (*(a4 + 16) + 16 * v333);
      *v335 = 1;
      v335[1] = v334;
      v87 = *(a4 + 28);
      v88 = (*(a4 + 24) + 1);
      *(a4 + 24) = v88;
      v336 = (a3 >> 10) & 0x1F;
LABEL_263:
      v19 = v325[v336];
      goto LABEL_80;
    case 585:
      v81 = word_298DFB8C4[a3 & 0x1F];
      v82 = *(a4 + 24);
      if (v82 >= *(a4 + 28))
      {
        v1030 = result;
        v1031 = a3;
        v1032 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v82 + 1, 16);
        LOBYTE(result) = v1030;
        a3 = v1031;
        a4 = v1032;
        LODWORD(v82) = *(v1032 + 24);
      }

      v83 = (*(a4 + 16) + 16 * v82);
      *v83 = 1;
      v83[1] = v81;
      v84 = (*(a4 + 24) + 1);
      *(a4 + 24) = v84;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      v85 = word_298DFB8C4[HIWORD(a3) & 0x1F];
      if (v84 >= *(a4 + 28))
      {
        v1033 = result;
        v1034 = a3;
        v1035 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v84 + 1, 16);
        result = v1033;
        a3 = v1034;
        a4 = v1035;
        LODWORD(v84) = *(v1035 + 24);
      }

      v86 = (*(a4 + 16) + 16 * v84);
      *v86 = 1;
      v86[1] = v85;
      v87 = *(a4 + 28);
      v88 = (*(a4 + 24) + 1);
      *(a4 + 24) = v88;
      v89 = (a3 >> 5) & 0x1F;
      v90 = word_298DFBD50;
LABEL_79:
      v19 = v90[v89];
LABEL_80:
      if (v88 >= v87)
      {
        v1028 = result;
        v1029 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v88 + 1, 16);
        result = v1028;
        a4 = v1029;
        LODWORD(v88) = *(v1029 + 24);
      }

      v20 = (*(a4 + 16) + 16 * v88);
      v21 = 1;
      goto LABEL_36;
    case 586:
      v202 = a3;
      v203 = a4;
      v204 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v205 = v204 & 3;
      if (!v205)
      {
        return 0;
      }

      v206 = v203;
      sub_298B0A034(v203, 1, word_298DFBCEE[HIWORD(v202) & 0x1F]);
      v207 = word_298DFBD50[(v202 >> 5) & 0x1F];
      v208 = v203[6];
      if (v208 >= v203[7])
      {
        sub_298B90A44((v203 + 4), v203 + 8, v208 + 1, 16);
        v206 = v203;
        LODWORD(v208) = v203[6];
      }

      v209 = (*(v206 + 16) + 16 * v208);
      v210 = 1;
LABEL_178:
      *v209 = v210;
      v209[1] = v207;
      ++*(v206 + 24);
      return v205;
    case 587:
      v375 = word_298DFB8C4[a3 & 0x1F];
      v376 = *(a4 + 24);
      if (v376 >= *(a4 + 28))
      {
        v1135 = result;
        v1136 = a3;
        v1137 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v376 + 1, 16);
        LOBYTE(result) = v1135;
        a3 = v1136;
        a4 = v1137;
        LODWORD(v376) = *(v1137 + 24);
      }

      v377 = (*(a4 + 16) + 16 * v376);
      *v377 = 1;
      v377[1] = v375;
      v378 = (*(a4 + 24) + 1);
      *(a4 + 24) = v378;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      v379 = word_298DFBD50[(a3 >> 5) & 0x1F];
      v190 = result;
      if (v378 >= *(a4 + 28))
      {
        v1158 = a3;
        v1159 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v378 + 1, 16);
        a3 = v1158;
        a4 = v1159;
        LODWORD(v378) = *(v1159 + 24);
      }

      v380 = (*(a4 + 16) + 16 * v378);
      *v380 = 1;
      v380[1] = v379;
      v381 = *(a4 + 28);
      v382 = (*(a4 + 24) + 1);
      *(a4 + 24) = v382;
      v383 = word_298DFB8C4[HIWORD(a3) & 0x1F];
      if (v382 >= v381)
      {
        v1160 = a3;
        v1161 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v382 + 1, 16);
        a3 = v1160;
        a4 = v1161;
        LODWORD(v382) = *(v1161 + 24);
      }

      v384 = (*(a4 + 16) + 16 * v382);
      *v384 = 1;
      v384[1] = v383;
      ++*(a4 + 24);
      v200 = (a3 >> 14) & 2 | (a3 >> 12) & 1;
      v201 = a4;
      goto LABEL_154;
    case 588:
      v321 = a3;
      v322 = a4;
      v323 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v324 = v323 & 3;
      if (!v324)
      {
        return 0;
      }

      v542 = v321;
      v543 = word_298DFBD50[(v321 >> 5) & 0x1F];
      v515 = v322;
      v544 = v322[6];
      if (v544 >= v322[7])
      {
        sub_298B90A44((v322 + 4), v322 + 8, v544 + 1, 16);
        v542 = v321;
        v515 = v322;
        LODWORD(v544) = v322[6];
      }

      v545 = (*(v515 + 16) + 16 * v544);
      *v545 = 1;
      v545[1] = v543;
      ++*(v515 + 24);
      v518 = word_298DFBCEE[HIWORD(v542) & 0x1F];
      goto LABEL_409;
    case 589:
      v456 = a3;
      v457 = a4;
      v2095 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v357 = v2095 & 3;
      if (!v357)
      {
        return 0;
      }

      goto LABEL_349;
    case 590:
      v187 = a3;
      v188 = a4;
      v189 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v190 = v189 & 3;
      if (!v190)
      {
        return 0;
      }

      v191 = v187;
      v192 = word_298DFBD50[(v187 >> 5) & 0x1F];
      v193 = v188;
      v194 = v188[6];
      if (v194 >= v188[7])
      {
        sub_298B90A44((v188 + 4), v188 + 8, v194 + 1, 16);
        v191 = v187;
        v193 = v188;
        LODWORD(v194) = v188[6];
      }

      v195 = (*(v193 + 2) + 16 * v194);
      *v195 = 1;
      v195[1] = v192;
      ++v193[6];
      v196 = HIWORD(v191) & 0x1F;
      v197 = v193;
      v198 = v193;
      v199 = v191;
      goto LABEL_153;
    case 591:
      v321 = a3;
      v322 = a4;
      v512 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v324 = v512 & 3;
      if (!v324)
      {
        return 0;
      }

      v513 = v321;
      v514 = word_298DFBD50[(v321 >> 5) & 0x1F];
      v515 = v322;
      v516 = v322[6];
      if (v516 >= v322[7])
      {
        sub_298B90A44((v322 + 4), v322 + 8, v516 + 1, 16);
        v513 = v321;
        v515 = v322;
        LODWORD(v516) = v322[6];
      }

      v517 = (*(v515 + 16) + 16 * v516);
      *v517 = 1;
      v517[1] = v514;
      ++*(v515 + 24);
      v518 = word_298DFBCEE[HIWORD(v513) & 0x1F];
LABEL_409:
      sub_298B0A034(v515, 1, v518);
      v519 = v321;
      v238 = v322;
      v520 = (v321 >> 15) & 1;
      v521 = v322[6];
      if (v521 >= v322[7])
      {
        sub_298B90A44((v322 + 4), v322 + 8, v521 + 1, 16);
        v519 = v321;
        v238 = v322;
        LODWORD(v521) = v322[6];
      }

      v522 = (v519 >> 12) & 1;
      v523 = (*(v238 + 2) + 16 * v521);
      *v523 = 2;
      v523[1] = v520;
      v524 = v238[7];
      v525 = v238[6] + 1;
      v238[6] = v525;
      result = v324;
      if (v525 >= v524)
      {
        sub_298B90A44((v238 + 4), v238 + 8, v525 + 1, 16);
        result = v324;
        v238 = v322;
        LODWORD(v525) = v322[6];
      }

      v526 = (*(v238 + 2) + 16 * v525);
      *v526 = 2;
      v526[1] = v522;
      goto LABEL_184;
    case 592:
      return sub_298B1CF24(a4, a3, a5, a6) & result;
    case 593:
      v2250 = result;
      sub_298B1A55C(a4, (a3 >> 5) & 0x1F);
      return v2250 & 3;
    case 594:
      v137 = a3;
      v44 = a4;
      v138 = result;
      sub_298B1A55C(a4, (a3 >> 5) & 0x1F);
      v46 = v138 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A55C(v44, HIWORD(v137) & 0x1F);
      goto LABEL_115;
    case 595:
      v7 = word_298DFB8C4[(a3 >> 5) & 0x1F];
      v8 = *(a4 + 24);
      if (v8 >= *(a4 + 28))
      {
        v638 = result;
        v639 = a3;
        v640 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v8 + 1, 16);
        LOBYTE(result) = v638;
        a3 = v639;
        a4 = v640;
        LODWORD(v8) = *(v640 + 24);
      }

      v9 = (*(a4 + 16) + 16 * v8);
      *v9 = 1;
      v9[1] = v7;
      v10 = (*(a4 + 24) + 1);
      *(a4 + 24) = v10;
      result &= 3u;
      if (!result)
      {
        return result;
      }

      v11 = HIWORD(a3) & 0x1F;
      if (v10 >= *(a4 + 28))
      {
        v641 = result;
        v642 = a3;
        v643 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v10 + 1, 16);
        result = v641;
        LOWORD(a3) = v642;
        a4 = v643;
        LODWORD(v10) = *(v643 + 24);
      }

      v12 = (*(a4 + 16) + 16 * v10);
      *v12 = 2;
      v12[1] = v11;
      v13 = *(a4 + 28);
      v14 = (*(a4 + 24) + 1);
      *(a4 + 24) = v14;
      v15 = a3 & 0xF;
      if (v14 >= v13)
      {
        v644 = result;
        v645 = a3;
        v646 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v14 + 1, 16);
        result = v644;
        LOWORD(a3) = v645;
        a4 = v646;
        LODWORD(v14) = *(v646 + 24);
      }

      v16 = (*(a4 + 16) + 16 * v14);
      *v16 = 2;
      v16[1] = v15;
      v17 = *(a4 + 28);
      v18 = (*(a4 + 24) + 1);
      *(a4 + 24) = v18;
      v19 = a3 >> 12;
      if (v18 >= v17)
      {
        v647 = result;
        v648 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v18 + 1, 16);
        result = v647;
        a4 = v648;
        LODWORD(v18) = *(v648 + 24);
      }

      v20 = (*(a4 + 16) + 16 * v18);
      v21 = 2;
LABEL_36:
      *v20 = v21;
      v20[1] = v19;
      ++*(a4 + 24);
      return result;
    case 596:
      v551 = a3;
      v552 = a4;
      v553 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v554 = v553 & 3;
      if (!v554)
      {
        return 0;
      }

      sub_298B1A55C(v552, (v551 >> 5) & 0x1F);
      return v554;
    case 597:
      v402 = (a3 >> 5) & 0x1F;
      v403 = word_298DFBD50[v402];
      v404 = *(a4 + 24);
      if (v404 >= *(a4 + 28))
      {
        v1141 = result;
        v1142 = a3;
        v1143 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v404 + 1, 16);
        LOBYTE(result) = v1141;
        a3 = v1142;
        a4 = v1143;
        LODWORD(v404) = *(v1143 + 24);
      }

      v405 = (*(a4 + 16) + 16 * v404);
      *v405 = 1;
      v405[1] = v403;
      ++*(a4 + 24);
      v406 = result & 3;
      if ((result & 3) == 0)
      {
        return 0;
      }

      v407 = a4;
      v408 = a3;
      sub_298B1A55C(a4, a3 & 0x1F);
      sub_298B1A55C(v407, HIWORD(v408) & 0x1F);
      goto LABEL_318;
    case 598:
      v488 = word_298DFBD50[(a3 >> 5) & 0x1F];
      v489 = *(a4 + 24);
      if (v489 >= *(a4 + 28))
      {
        v1166 = result;
        v1167 = a3;
        v1168 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v489 + 1, 16);
        LOBYTE(result) = v1166;
        LOBYTE(a3) = v1167;
        a4 = v1168;
        LODWORD(v489) = *(v1168 + 24);
      }

      v490 = (*(a4 + 16) + 16 * v489);
      *v490 = 1;
      v490[1] = v488;
      ++*(a4 + 24);
      v491 = result & 3;
      if ((result & 3) == 0)
      {
        return 0;
      }

      v492 = a4;
      sub_298B1A55C(a4, a3 & 0x1F);
      v493 = v492;
      v494 = v492[6];
      if (v494 >= v492[7])
      {
        sub_298B90A44((v492 + 4), v492 + 8, v494 + 1, 16);
        v493 = v492;
        LODWORD(v494) = v492[6];
      }

      v495 = (*(v493 + 2) + 16 * v494);
      *v495 = 1;
      v495[1] = v488;
      ++v493[6];
      return v491;
    case 599:
      v704 = a3;
      v705 = a3 & 0x1F;
      v475 = word_298DFBCEE;
      goto LABEL_553;
    case 600:
      v2108 = a3;
      v44 = a4;
      v2109 = result;
      sub_298B1A150(a4, a3 & 0x1F);
      v46 = v2109 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A150(v44, (v2108 >> 5) & 0x1F);
      sub_298B0A034(v44, 1, word_298DFBCEE[HIWORD(v2108) & 0x1F]);
      v50 = (v2108 >> 10) & 7;
      goto LABEL_43;
    case 601:
      v317 = a3;
      v318 = a3 & 0x1F;
      v319 = word_298DFBCEE;
      goto LABEL_251;
    case 602:
      v2110 = a3;
      v2111 = a4;
      v2112 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v357 = v2112 & 3;
      if (!v357)
      {
        return 0;
      }

      sub_298B1A150(v2111, (v2110 >> 5) & 0x1F);
      v358 = HIWORD(v2110) & 0x1F;
      v359 = v2111;
      goto LABEL_351;
    case 603:
      v151 = word_298DFBD50[a3 & 0x1F];
      v152 = *(a4 + 24);
      if (v152 >= *(a4 + 28))
      {
        v1040 = result;
        v1041 = a3;
        v1042 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v152 + 1, 16);
        LOBYTE(result) = v1040;
        a3 = v1041;
        a4 = v1042;
        LODWORD(v152) = *(v1042 + 24);
      }

      v153 = (*(a4 + 16) + 16 * v152);
      *v153 = 1;
      v153[1] = v151;
      v154 = (*(a4 + 24) + 1);
      *(a4 + 24) = v154;
      result &= 3u;
      if (result)
      {
        v155 = result;
        v156 = word_298DFBD50[(a3 >> 5) & 0x1F];
        if (v154 >= *(a4 + 28))
        {
          v1043 = a3;
          v1044 = a4;
          sub_298B90A44(a4 + 16, (a4 + 32), v154 + 1, 16);
          a3 = v1043;
          a4 = v1044;
          LODWORD(v154) = *(v1044 + 24);
        }

        v157 = (*(a4 + 16) + 16 * v154);
        *v157 = 1;
        v157[1] = v156;
        ++*(a4 + 24);
        sub_298B0A034(a4, 1, word_298DFBCEE[HIWORD(a3) & 0x1F]);
        return v155;
      }

      return result;
    case 604:
      v2242 = a3;
      v2010 = word_298DFBCEE;
      v1885 = a4;
      v2243 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v365 = v2243 & 3;
      if (!v365)
      {
        return 0;
      }

      sub_298B1A150(v1885, (v2242 >> 5) & 0x1F);
      v2012 = HIWORD(v2242) & 0x1F;
      goto LABEL_1931;
    case 605:
      v2244 = a3;
      v457 = a4;
      v2245 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v357 = v2245 & 3;
      if (!v357)
      {
        return 0;
      }

      sub_298B0A034(v457, 1, word_298DFBCEE[(v2244 >> 5) & 0x1F]);
      v358 = HIWORD(v2244) & 0x1F;
      goto LABEL_350;
    case 606:
      v2248 = a3;
      v565 = a4;
      v2249 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v46 = v2249 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A55C(v565, (v2248 >> 5) & 0x1F);
      v567 = HIWORD(v2248) & 0x1F;
      goto LABEL_452;
    case 607:
      v473 = a3;
      v474 = a3 & 0x1F;
      v475 = word_298DFBCEE;
      goto LABEL_372;
    case 608:
      v2246 = a3;
      v2010 = word_298DFBCEE;
      v1885 = a4;
      v2247 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v365 = v2247 & 3;
      if (!v365)
      {
        return 0;
      }

      sub_298B1A55C(v1885, (v2246 >> 5) & 0x1F);
      sub_298B1A55C(v1885, HIWORD(v2246) & 0x1F);
      v2012 = (v2246 >> 10) & 0x1F;
LABEL_1931:
      v368 = v2010[v2012];
LABEL_1668:
      v369 = v1885;
      goto LABEL_281;
    case 609:
      v280 = a3;
      v44 = a4;
      v281 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[(a3 >> 5) & 0x1F]);
      v46 = v281 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, (v280 >> 15) & 0x3F);
      v50 = v280 & 0xF;
      goto LABEL_43;
    case 610:
      v337 = a3;
      v338 = (a3 >> 5) & 0x1F;
      v339 = word_298DFBCEE;
      goto LABEL_265;
    case 611:
      v137 = a3;
      v44 = a4;
      v2234 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[(a3 >> 5) & 0x1F]);
      v46 = v2234 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 2, HIWORD(v137) & 0x1F);
LABEL_115:
      sub_298B0A034(v44, 2, v137 & 0xF);
      v50 = v137 >> 12;
      goto LABEL_43;
    case 612:
      v385 = result;
      v462 = a3 & 0x1F;
      v463 = *(a4 + 24);
      if (v463 >= *(a4 + 28))
      {
        v1155 = a3;
        v1156 = a4;
        v1157 = a6;
        sub_298B90A44(a4 + 16, (a4 + 32), v463 + 1, 16);
        a6 = v1157;
        a3 = v1155;
        a4 = v1156;
        LODWORD(v463) = *(v1156 + 24);
      }

      v464 = (*(a4 + 16) + 16 * v463);
      *v464 = 2;
      v464[1] = v462;
      v389 = *(a4 + 24) + 1;
      *(a4 + 24) = v389;
      if (((a3 >> 5) & 0x40000) != 0)
      {
        v390 = (a3 >> 5) & 0x7FFFF | 0xFFFFFFFFFFF80000;
      }

      else
      {
        v390 = (a3 >> 5) & 0x7FFFF;
      }

      v465 = *(a6 + 24);
      if (v465)
      {
        v466 = *a4 != 4380;
        v467 = a4;
        v468 = (*(*v465 + 16))(v465, a4, *(a6 + 32), 4 * v390);
        LOBYTE(result) = v385;
        if (v468)
        {
          return result & 3;
        }

        a4 = v467;
        v389 = *(v467 + 24);
      }

      else
      {
        LOBYTE(result) = v385;
      }

      if (*(a4 + 28) <= v389)
      {
LABEL_365:
        v469 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v389 + 1, 16);
        LOBYTE(result) = v385;
        a4 = v469;
        v389 = *(v469 + 24);
      }

LABEL_307:
      v395 = (*(a4 + 16) + 16 * v389);
      *v395 = 2;
      v395[1] = v390;
LABEL_308:
      ++*(a4 + 24);
      return result & 3;
    case 613:
      v509 = a3;
      v402 = (a3 >> 5) & 0x1F;
      v407 = a4;
      v510 = result;
      sub_298B1A150(a4, v402);
      v406 = v510 & 3;
      if (!v406)
      {
        return 0;
      }

      sub_298B0A034(v407, 1, word_298DFBCEE[v509 & 0x1F]);
      v511 = word_298DFBCEE[HIWORD(v509) & 0x1F];
      goto LABEL_404;
    case 614:
      v1870 = a3;
      v1871 = a3 & 0x1F;
      v1872 = word_298DFBCEE;
LABEL_1971:
      v2280 = a4;
      v2281 = result;
      sub_298B0A034(a4, 1, v1872[v1871]);
      v406 = v2281 & 3;
      if (!v406)
      {
        return 0;
      }

      v410 = (v1870 >> 5) & 0x1F;
      v409 = v2280;
      goto LABEL_319;
    case 615:
      v2230 = a3;
      v2231 = (a3 >> 5) & 0x1F;
      v2232 = a4;
      v2233 = result;
      sub_298B1A150(a4, v2231);
      v365 = v2233 & 3;
      if (!v365)
      {
        return 0;
      }

      sub_298B1A150(v2232, v2230 & 0x1F);
      sub_298B1A150(v2232, v2231);
      if (((v2230 >> 12) & 0x100) != 0)
      {
        v368 = (v2230 >> 12) & 0x1FF | 0xFFFFFFFFFFFFFE00;
      }

      else
      {
        v368 = (v2230 >> 12) & 0x1FF;
      }

      v369 = v2232;
      goto LABEL_686;
    case 616:
      v976 = a3;
      v44 = a4;
      v977 = result;
      sub_298B1A150(a4, a3 & 0x1F);
      goto LABEL_739;
    case 617:
      v2235 = a3;
      v2236 = word_298DFBCEE[a3 & 0x1F];
      v895 = a4;
      v2237 = result;
      sub_298B0A034(a4, 1, v2236);
      v365 = v2237 & 3;
      if (!v365)
      {
        return 0;
      }

      sub_298B0A034(v895, 1, v2236);
      sub_298B1A150(v895, (v2235 >> 5) & 0x1F);
      if (((v2235 >> 12) & 0x100) != 0)
      {
        v368 = (v2235 >> 12) & 0x1FF | 0xFFFFFFFFFFFFFE00;
      }

      else
      {
        v368 = (v2235 >> 12) & 0x1FF;
      }

      goto LABEL_685;
    case 618:
      v2240 = a3;
      v402 = (a3 >> 5) & 0x1F;
      v407 = a4;
      v2241 = result;
      sub_298B1A150(a4, v402);
      v406 = v2241 & 3;
      if (!v406)
      {
        return 0;
      }

      v511 = word_298DFBCEE[v2240 & 0x1F];
LABEL_404:
      sub_298B0A034(v407, 1, v511);
LABEL_318:
      v409 = v407;
      v410 = v402;
LABEL_319:
      sub_298B1A150(v409, v410);
      return v406;
    case 619:
      v449 = a3;
      v450 = a3 & 0x1F;
      v273 = word_298DFBCEE;
      goto LABEL_344;
    case 620:
      v2113 = a3;
      v2114 = word_298DFBCEE[a3 & 0x1F];
      v2115 = a4;
      v2116 = result;
      sub_298B0A034(a4, 1, v2114);
      v2117 = v2116 & 3;
      if (!v2117)
      {
        return 0;
      }

      sub_298B0A034(v2115, 1, v2114);
      sub_298B1A150(v2115, (v2113 >> 5) & 0x1F);
      return v2117;
    case 621:
      v1684 = word_298DFBCEE[a3 & 0x1F];
      v2118 = a4;
      v2119 = result;
      sub_298B0A034(a4, 1, v1684);
      v365 = v2119 & 3;
      if (!v365)
      {
        return 0;
      }

      v369 = v2118;
LABEL_1320:
      v370 = 1;
      v368 = v1684;
      goto LABEL_282;
    case 622:
      v574 = 0;
      if ((a3 & 0x1F) <= 0x16 && (a3 & 1) == 0)
      {
        v575 = *(&unk_298E00012 + (a3 & 0x1F));
        v576 = *(a4 + 24);
        if (v576 >= *(a4 + 28))
        {
          v2392 = result;
          v2393 = a3;
          v2394 = a4;
          sub_298B90A44(a4 + 16, (a4 + 32), v576 + 1, 16);
          LODWORD(result) = v2392;
          a3 = v2393;
          a4 = v2394;
          LODWORD(v576) = *(v2394 + 24);
        }

        v577 = (*(a4 + 16) + 16 * v576);
        *v577 = 1;
        v577[1] = v575;
        ++*(a4 + 24);
        v574 = 3;
      }

      v149 = v574 & result;
      if ((v574 & result) == 0)
      {
        return 0;
      }

      v150 = (a3 >> 5) & 0x1F;
      v145 = a4;
      goto LABEL_124;
    case 623:
      v139 = a3;
      v140 = a4;
      v141 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[HIWORD(a3) & 0x1F]);
      if ((v141 & 3) == 0)
      {
        return 0;
      }

      v142 = v141;
      v143 = 0;
      v144 = v139;
      if ((v139 & 0x1F) > 0x16)
      {
        v145 = v140;
      }

      else
      {
        v145 = v140;
        if ((v139 & 1) == 0)
        {
          v146 = *(&unk_298E00012 + (v139 & 0x1F));
          v147 = v140[6];
          if (v147 >= v140[7])
          {
            sub_298B90A44((v140 + 4), v140 + 8, v147 + 1, 16);
            v142 = v141;
            v144 = v139;
            v145 = v140;
            LODWORD(v147) = v140[6];
          }

          v148 = (*(v145 + 16) + 16 * v147);
          *v148 = 1;
          v148[1] = v146;
          ++*(v145 + 24);
          v143 = 3;
        }
      }

      v149 = v143 & v142;
      if ((v143 & v142) == 0)
      {
        return 0;
      }

      v150 = (v144 >> 5) & 0x1F;
LABEL_124:
      sub_298B1A150(v145, v150);
      return v149;
    case 624:
      return sub_298B1D350(a4, a3) & result;
    case 625:
      v606 = a7;
      v2238 = result;
      v2239 = sub_298B1D578(a4, a3);
      v686 = v2239 & v2238;
      if ((v2239 & v2238) == 0)
      {
        goto LABEL_1859;
      }

      return v686;
    case 626:
      v2104 = a5;
      v2409 = a6;
      v2105 = a3;
      v2106 = a3 & 0x1F;
      v2107 = word_298DFB86A;
LABEL_1790:
      v2120 = a4;
      v2121 = result;
      sub_298B0A034(a4, 1, v2107[v2106]);
      v2122 = v2121 & 3;
      if (!v2122)
      {
        return 0;
      }

      sub_298B1BDA0(v2120, (v2105 >> 5) & 0x7FFFF, v2104, v2409);
      return v2122;
    case 627:
      v555 = a3;
      v556 = a3 & 0x1F;
      v557 = "\r";
      goto LABEL_441;
    case 628:
      v976 = a3;
      v44 = a4;
      v977 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
LABEL_739:
      v46 = v977 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A150(v44, (v976 >> 5) & 0x1F);
      v47 = (v976 >> 12) & 0x1FF;
      v48 = v47 | 0xFFFFFFFFFFFFFE00;
      v49 = ((v976 >> 12) & 0x100) == 0;
LABEL_40:
      if (v49)
      {
        v50 = v47;
      }

      else
      {
        v50 = v48;
      }

      goto LABEL_43;
    case 629:
      v312 = a3;
      v313 = a3 & 0x1F;
      v314 = word_298DFB86A;
      goto LABEL_247;
    case 630:
      v991 = a3;
      v44 = a4;
      v2221 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v46 = v2221 & 3;
      if (!v46)
      {
        return 0;
      }

      v993 = (v991 >> 5) & 0x1F;
      v994 = word_298DFB86A;
      goto LABEL_754;
    case 631:
      v2228 = a3;
      v565 = a4;
      v2229 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v46 = v2229 & 3;
      if (!v46)
      {
        return 0;
      }

      v567 = (v2228 >> 5) & 0x1F;
      v568 = word_298DFB86A;
      goto LABEL_453;
    case 632:
      v906 = a3;
      v907 = a4;
      v908 = result;
      sub_298B0A034(a4, 1, word_298DFB86A[a3 & 0x1F]);
      v909 = v908 & 3;
      if (v909)
      {
        goto LABEL_695;
      }

      return 0;
    case 633:
      v271 = a3;
      v272 = (a3 >> 5) & 0x1F;
      v273 = word_298DFB86A;
      goto LABEL_218;
    case 634:
      v76 = (a3 >> 5) & 0x1F;
      v77 = word_298DFB86A;
      goto LABEL_71;
    case 635:
      v449 = a3;
      v450 = a3 & 0x1F;
      v273 = word_298DFB86A;
      goto LABEL_344;
    case 636:
      v360 = a3;
      v361 = a3 & 0x1F;
      v362 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_277;
    case 637:
      v360 = a3;
      v361 = a3 & 0x1F;
      v362 = word_298DFB36E;
      goto LABEL_277;
    case 638:
      v232 = a3;
      v233 = a3 & 0x1F;
      v234 = word_298DFB86A;
      goto LABEL_180;
    case 639:
      v747 = a3;
      v748 = (a3 >> 5) & 0x1F;
      v749 = word_298DFB86A;
      goto LABEL_575;
    case 640:
      v704 = a3;
      v705 = a3 & 0x1F;
      v475 = word_298DFB86A;
      goto LABEL_553;
    case 641:
      v396 = a3;
      v397 = a4;
      v398 = result;
      sub_298B0A034(a4, 1, word_298DFB86A[a3 & 0x1F]);
      v342 = v398 & 3;
      if (!v342)
      {
        return 0;
      }

      v399 = v396;
      v400 = word_298DFB86A[(v396 >> 5) & 0x1F];
      v344 = v397;
      sub_298B0A034(v397, 1, v400);
      sub_298B0A034(v397, 1, word_298DFB86A[HIWORD(v399) & 0x1F]);
      v350 = v399 >> 12;
      goto LABEL_311;
    case 642:
      v312 = a3;
      v313 = a3 & 0x1F;
      v314 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_247;
    case 643:
      v991 = a3;
      v44 = a4;
      v992 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v46 = v992 & 3;
      if (!v46)
      {
        return 0;
      }

      v993 = (v991 >> 5) & 0x1F;
      v994 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_754;
    case 644:
      v2123 = a3;
      v565 = a4;
      v2124 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v46 = v2124 & 3;
      if (!v46)
      {
        return 0;
      }

      v567 = (v2123 >> 5) & 0x1F;
      v568 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_453;
    case 645:
      v271 = a3;
      v272 = (a3 >> 5) & 0x1F;
      v273 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_218;
    case 646:
      v76 = (a3 >> 5) & 0x1F;
      v77 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_71;
    case 647:
      v232 = a3;
      v233 = a3 & 0x1F;
      v234 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
LABEL_180:
      v235 = a4;
      v236 = result;
      sub_298B0A034(a4, 1, v234[v233]);
      result = v236 & 3;
      if ((v236 & 3) == 0)
      {
        return result;
      }

      v237 = (v232 >> 13);
      v238 = v235;
      v239 = v235[6];
      if (v239 >= v235[7])
      {
        sub_298B90A44((v235 + 4), v235 + 8, v239 + 1, 16);
        result = v236 & 3;
        v238 = v235;
        LODWORD(v239) = v235[6];
      }

      v240 = (*(v238 + 2) + 16 * v239);
      *v240 = 2;
      v240[1] = v237;
      goto LABEL_184;
    case 648:
      v337 = a3;
      v338 = (a3 >> 5) & 0x1F;
      v339 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
LABEL_265:
      v340 = a4;
      v341 = result;
      sub_298B0A034(a4, 1, v339[v338]);
      v342 = v341 & 3;
      if (!v342)
      {
        return 0;
      }

      v343 = v339[HIWORD(v337) & 0x1F];
      v344 = v340;
      sub_298B0A034(v340, 1, v343);
      v345 = v337;
      v346 = v340[6];
      if (v346 >= v340[7])
      {
        sub_298B90A44((v340 + 4), v340 + 8, v346 + 1, 16);
        v345 = v337;
        v344 = v340;
        LODWORD(v346) = v340[6];
      }

      v347 = (*(v344 + 16) + 16 * v346);
      *v347 = 2;
      v347[1] = v337 & 0xF;
      v348 = *(v344 + 28);
      v349 = (*(v344 + 24) + 1);
      *(v344 + 24) = v349;
      v350 = v345 >> 12;
      if (v349 >= v348)
      {
        sub_298B90A44(v344 + 16, (v344 + 32), v349 + 1, 16);
        v344 = v340;
        LODWORD(v349) = v340[6];
      }

      v351 = (*(v344 + 16) + 16 * v349);
      goto LABEL_271;
    case 649:
      v317 = a3;
      v318 = a3 & 0x1F;
      v319 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_251;
    case 650:
      v312 = a3;
      v313 = a3 & 0x1F;
      v314 = word_298DFB36E;
LABEL_247:
      v315 = a4;
      v316 = result;
      sub_298B0A034(a4, 1, v314[v313]);
      v46 = v316 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A55C(v315, (v312 >> 5) & 0x1F);
      v50 = 32 - ((v312 >> 10) & 0x1F);
      v51 = v315;
      goto LABEL_44;
    case 651:
      v991 = a3;
      v44 = a4;
      v2136 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v46 = v2136 & 3;
      if (!v46)
      {
        return 0;
      }

      v993 = (v991 >> 5) & 0x1F;
      v994 = word_298DFB36E;
LABEL_754:
      sub_298B0A034(v44, 1, v994[v993]);
      v288 = (v991 >> 10) & 0x1F;
      v289 = 32;
      goto LABEL_229;
    case 652:
      v2222 = a3;
      v565 = a4;
      v2223 = result;
      sub_298B1A55C(a4, a3 & 0x1F);
      v46 = v2223 & 3;
      if (!v46)
      {
        return 0;
      }

      v567 = (v2222 >> 5) & 0x1F;
      v568 = word_298DFB36E;
      goto LABEL_453;
    case 653:
      v906 = a3;
      v2027 = a3 & 0x1F;
      v2028 = word_298DFB36E;
LABEL_1830:
      v907 = a4;
      v2155 = result;
      sub_298B0A034(a4, 1, v2028[v2027]);
      v909 = v2155 & 3;
      if (!v909)
      {
        return 0;
      }

LABEL_695:
      sub_298B1A55C(v907, (v906 >> 5) & 0x1F);
      return v909;
    case 654:
      v271 = a3;
      v272 = (a3 >> 5) & 0x1F;
      v273 = word_298DFB36E;
LABEL_218:
      v274 = a4;
      v275 = result;
      sub_298B0A034(a4, 1, v273[v272]);
      v276 = v275 & 3;
      if (!v276)
      {
        return 0;
      }

      v277 = HIWORD(v271) & 0x1F;
      goto LABEL_220;
    case 655:
      v76 = (a3 >> 5) & 0x1F;
      v77 = word_298DFB36E;
LABEL_71:
      v78 = v77[v76];
      v79 = result;
      v80 = a4;
LABEL_72:
      sub_298B0A034(v80, 1, v78);
      return v79 & 3;
    case 656:
      v449 = a3;
      v450 = a3 & 0x1F;
      v273 = word_298DFB36E;
      goto LABEL_344;
    case 657:
      v2162 = a3;
      v2163 = a3 & 0x1F;
      v2164 = word_298DFB86A;
      goto LABEL_1895;
    case 658:
      v2162 = a3;
      v2163 = a3 & 0x1F;
      v2164 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_1895;
    case 659:
      v2125 = a3;
      v1216 = a4;
      v2126 = result;
      sub_298B0A034(a4, 1, word_298DFB36E[a3 & 0x1F]);
      v365 = v2126 & 3;
      if (!v365)
      {
        return 0;
      }

      v368 = (v2125 >> 13);
      goto LABEL_2051;
    case 660:
      v747 = a3;
      v748 = (a3 >> 5) & 0x1F;
      v749 = word_298DFB36E;
LABEL_575:
      v750 = a4;
      v751 = result;
      sub_298B0A034(a4, 1, v749[v748]);
      v752 = v751 & 3;
      if (!v752)
      {
        return 0;
      }

      sub_298B0A034(v750, 1, v749[HIWORD(v747) & 0x1F]);
      v753 = *(v750 + 24);
      if (v753 >= *(v750 + 28))
      {
        sub_298B90A44(v750 + 16, (v750 + 32), v753 + 1, 16);
        LODWORD(v753) = *(v750 + 24);
      }

      v754 = (*(v750 + 16) + 16 * v753);
      *v754 = 2;
      v754[1] = v747 & 0xF;
      v755 = *(v750 + 28);
      v756 = (*(v750 + 24) + 1);
      *(v750 + 24) = v756;
      if (v756 >= v755)
      {
        sub_298B90A44(v750 + 16, (v750 + 32), v756 + 1, 16);
        LODWORD(v756) = *(v750 + 24);
      }

      v757 = (*(v750 + 16) + 16 * v756);
      *v757 = 2;
      v757[1] = v747 >> 12;
      ++*(v750 + 24);
      return v752;
    case 661:
      v704 = a3;
      v705 = a3 & 0x1F;
      v475 = word_298DFB36E;
      goto LABEL_553;
    case 662:
      v317 = a3;
      v318 = a3 & 0x1F;
      v319 = word_298DFB36E;
LABEL_251:
      v44 = a4;
      v320 = result;
      sub_298B0A034(a4, 1, v319[v318]);
      v46 = v320 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, v319[(v317 >> 5) & 0x1F]);
      sub_298B0A034(v44, 1, v319[HIWORD(v317) & 0x1F]);
      v50 = v317 >> 12;
      goto LABEL_43;
    case 663:
      v473 = a3;
      v474 = a3 & 0x1F;
      v475 = word_298DFB86A;
      goto LABEL_372;
    case 664:
      v473 = a3;
      v474 = a3 & 0x1F;
      v475 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_372;
    case 665:
      v473 = a3;
      v474 = a3 & 0x1F;
      v475 = word_298DFB36E;
LABEL_372:
      v363 = a4;
      v476 = result;
      sub_298B0A034(a4, 1, v475[v474]);
      v365 = v476 & 3;
      if (!v365)
      {
        return 0;
      }

      sub_298B0A034(v363, 1, v475[(v473 >> 5) & 0x1F]);
      sub_298B0A034(v363, 1, v475[HIWORD(v473) & 0x1F]);
      v477 = (v473 >> 10) & 0x1F;
      goto LABEL_374;
    case 666:
      v2146 = a3;
      v2147 = a3 & 0x1F;
      v2148 = "\r";
      goto LABEL_1869;
    case 667:
      v760 = a3;
      v763 = a4;
      v875 = result;
      sub_298B0A034(a4, 1, asc_298DFB328[a3 & 0x1F]);
      goto LABEL_672;
    case 668:
      v199 = a3;
      v198 = a4;
      v2131 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v190 = v2131 & 3;
      if (!v190)
      {
        return 0;
      }

      sub_298B1A150(v198, (v199 >> 5) & 0x1F);
      v196 = HIWORD(v199) & 0x1F;
      v197 = v198;
LABEL_153:
      sub_298B1A55C(v197, v196);
      v200 = (v199 >> 14) & 2 | (v199 >> 12) & 1;
      v201 = v198;
      goto LABEL_154;
    case 669:
      v875 = result;
      v760 = a3;
      v876 = word_298DFC574[a3 & 0x1F];
      v877 = *(a4 + 24);
      v763 = a4;
      if (v877 >= *(a4 + 28))
      {
        sub_298B90A44(a4 + 16, (a4 + 32), v877 + 1, 16);
        LODWORD(v877) = *(v763 + 24);
      }

      v878 = (*(v763 + 16) + 16 * v877);
      *v878 = 1;
      v878[1] = v876;
      ++*(v763 + 24);
LABEL_672:
      v190 = v875 & 3;
      if (!v190)
      {
        return 0;
      }

      goto LABEL_585;
    case 670:
      v478 = a5;
      v479 = a6;
      v480 = a3;
      v481 = a4;
      v482 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      result = v482 & 3;
      if ((v482 & 3) == 0)
      {
        return result;
      }

      v483 = ((v480 >> 5) & 0x40000) != 0 ? (v480 >> 5) & 0x7FFFF | 0xFFFFFFFFFFF80000 : (v480 >> 5) & 0x7FFFF;
      v484 = *(v479 + 24);
      if (v484)
      {
        v485 = (*(*v484 + 16))(v484, v481, *(v479 + 32), 4 * v483, v478, *v481 != 4380, 0, 0, 4);
        result = v482 & 3;
        if (v485)
        {
          return result;
        }
      }

      v238 = v481;
      v486 = v481[6];
      if (v481[7] <= v486)
      {
        v1165 = result;
        sub_298B90A44((v481 + 4), v481 + 8, v486 + 1, 16);
        result = v1165;
        v238 = v481;
        LODWORD(v486) = v481[6];
      }

      v487 = (*(v238 + 2) + 16 * v486);
      goto LABEL_384;
    case 671:
      v555 = a3;
      v556 = a3 & 0x1F;
      v557 = word_298DFB36E;
      goto LABEL_441;
    case 672:
      v2224 = a3;
      v2225 = a4;
      v2226 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v2227 = v2226 & 3;
      if (!v2227)
      {
        return 0;
      }

      sub_298B1A1C4(v2225, v2224 & 0x1F);
      sub_298B0A034(v2225, 1, word_298DFB86A[(v2224 >> 5) & 0x1F]);
      sub_298B1A1C4(v2225, HIWORD(v2224) & 0x1F);
      return v2227;
    case 673:
      v2210 = a3;
      v2211 = a4;
      v2212 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v46 = v2212 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A1C4(v2211, (v2210 >> 5) & 0x1F);
      v50 = (v2210 >> 20) & 1;
      v51 = v2211;
      goto LABEL_44;
    case 674:
      v527 = a3;
      v528 = a4;
      v529 = result;
      sub_298B0A034(a4, 1, word_298DFB86A[a3 & 0x1F]);
      result = v529 & 3;
      if ((v529 & 3) == 0)
      {
        return result;
      }

      v530 = v527;
      v531 = word_298DFC574[(v527 >> 5) & 0x1F];
      v238 = v528;
      v532 = v528[6];
      if (v532 >= v528[7])
      {
        v1172 = result;
        sub_298B90A44((v528 + 4), v528 + 8, v532 + 1, 16);
        result = v1172;
        v530 = v527;
        v238 = v528;
        LODWORD(v532) = v528[6];
      }

      v533 = (*(v238 + 2) + 16 * v532);
      *v533 = 1;
      v533[1] = v531;
      v534 = v238[7];
      v535 = v238[6] + 1;
      v238[6] = v535;
      v483 = (v530 >> 19) & 3;
      if (v535 >= v534)
      {
        v1173 = result;
        sub_298B90A44((v238 + 4), v238 + 8, v535 + 1, 16);
        result = v1173;
        v238 = v528;
        LODWORD(v535) = v528[6];
      }

      v487 = (*(v238 + 2) + 16 * v535);
LABEL_384:
      *v487 = 2;
      v487[1] = v483;
LABEL_184:
      ++v238[6];
      return result;
    case 675:
      v807 = a3;
      v808 = a4;
      v809 = result;
      sub_298B0A034(a4, 1, word_298DFB36E[a3 & 0x1F]);
      v810 = v809 & 3;
      if (!v810)
      {
        return 0;
      }

      v811 = word_298DFC574[(v807 >> 5) & 0x1F];
      v812 = *(v808 + 24);
      if (v812 >= *(v808 + 28))
      {
        sub_298B90A44(v808 + 16, (v808 + 32), v812 + 1, 16);
        LODWORD(v812) = *(v808 + 24);
      }

      v813 = (*(v808 + 16) + 16 * v812);
      *v813 = 1;
      v813[1] = v811;
      v814 = *(v808 + 28);
      v815 = (*(v808 + 24) + 1);
      *(v808 + 24) = v815;
      v816 = (v807 >> 18) & 7;
      goto LABEL_623;
    case 676:
      v953 = a3;
      v808 = a4;
      v954 = result;
      sub_298B0A034(a4, 1, asc_298DFB328[a3 & 0x1F]);
      v810 = v954 & 3;
      if (!v810)
      {
        return 0;
      }

      v955 = word_298DFC574[(v953 >> 5) & 0x1F];
      v956 = *(v808 + 24);
      if (v956 >= *(v808 + 28))
      {
        sub_298B90A44(v808 + 16, (v808 + 32), v956 + 1, 16);
        LODWORD(v956) = *(v808 + 24);
      }

      v957 = (*(v808 + 16) + 16 * v956);
      *v957 = 1;
      v957[1] = v955;
      v814 = *(v808 + 28);
      v815 = (*(v808 + 24) + 1);
      *(v808 + 24) = v815;
      v816 = (v953 >> 17) & 0xF;
LABEL_623:
      if (v815 >= v814)
      {
LABEL_668:
        sub_298B90A44(v808 + 16, (v808 + 32), v815 + 1, 16);
        LODWORD(v815) = *(v808 + 24);
      }

LABEL_624:
      v817 = (*(v808 + 16) + 16 * v815);
      *v817 = 2;
      v817[1] = v816;
      ++*(v808 + 24);
      return v810;
    case 677:
      v704 = a3;
      v705 = a3 & 0x1F;
      v475 = "\r";
LABEL_553:
      v363 = a4;
      v706 = result;
      sub_298B0A034(a4, 1, v475[v705]);
      v365 = v706 & 3;
      if (!v365)
      {
        return 0;
      }

      sub_298B0A034(v363, 1, v475[(v704 >> 5) & 0x1F]);
      v477 = HIWORD(v704) & 0x1F;
LABEL_374:
      v368 = v475[v477];
      goto LABEL_280;
    case 678:
      v2152 = a3;
      v2153 = a3 & 0x1F;
      v2154 = "\r";
      goto LABEL_1891;
    case 679:
      v2152 = a3;
      v2153 = a3 & 0x1F;
      v2154 = word_298DFB36E;
      goto LABEL_1891;
    case 680:
      v2152 = a3;
      v2153 = a3 & 0x1F;
      v2154 = word_298DFB86A;
LABEL_1891:
      v2216 = *&v2154[2 * v2153];
      v2217 = a4;
      v2218 = result;
      sub_298B0A034(a4, 1, v2216);
      v2219 = v2218 & 3;
      if (!v2219)
      {
        return 0;
      }

      sub_298B0A034(v2217, 1, v2216);
      sub_298B0A034(v2217, 1, *&v2154[2 * ((v2152 >> 5) & 0x1F)]);
      return v2219;
    case 681:
      v2162 = a3;
      v2163 = a3 & 0x1F;
      v2164 = "\r";
      goto LABEL_1895;
    case 682:
      v449 = a3;
      v450 = a3 & 0x1F;
      v273 = "\r";
LABEL_344:
      v274 = a4;
      v451 = result;
      sub_298B0A034(a4, 1, v273[v450]);
      v276 = v451 & 3;
      if (!v276)
      {
        return 0;
      }

      v277 = (v449 >> 5) & 0x1F;
LABEL_220:
      v278 = v273[v277];
LABEL_221:
      v279 = v274;
      goto LABEL_222;
    case 683:
      v2181 = a3;
      v2208 = word_298DFB86A[a3 & 0x1F];
      v2183 = a4;
      v2209 = result;
      sub_298B0A034(a4, 1, v2208);
      v365 = v2209 & 3;
      if (!v365)
      {
        return 0;
      }

      sub_298B0A034(v2183, 1, v2208);
      v2185 = (v2181 >> 5) & 0x1F;
      v2186 = word_298DFB36E;
      goto LABEL_1885;
    case 684:
      v2181 = a3;
      v2182 = a0123456789Abcd_0[a3 & 0x1F];
      v2183 = a4;
      v2184 = result;
      sub_298B0A034(a4, 1, v2182);
      v365 = v2184 & 3;
      if (!v365)
      {
        return 0;
      }

      sub_298B0A034(v2183, 1, v2182);
      v2185 = (v2181 >> 5) & 0x1F;
      v2186 = word_298DFB86A;
LABEL_1885:
      sub_298B0A034(v2183, 1, v2186[v2185]);
      v368 = v2186[HIWORD(v2181) & 0x1F];
      v369 = v2183;
      goto LABEL_281;
    case 685:
      v2141 = a3;
      v565 = a4;
      v2142 = result;
      sub_298B0A034(a4, 1, word_298DFB86A[a3 & 0x1F]);
      v46 = v2142 & 3;
      if (!v46)
      {
        return 0;
      }

      v2143 = (v2141 >> 5) & 0x1F;
      v2144 = word_298DFB36E;
      goto LABEL_1882;
    case 686:
      v2141 = a3;
      v565 = a4;
      v2207 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v46 = v2207 & 3;
      if (!v46)
      {
        return 0;
      }

      v2143 = (v2141 >> 5) & 0x1F;
      v2144 = word_298DFB86A;
LABEL_1882:
      sub_298B0A034(v565, 1, v2144[v2143]);
      v50 = v2144[HIWORD(v2141) & 0x1F];
      goto LABEL_454;
    case 687:
      v2179 = a3;
      v1456 = a4;
      v2180 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v176 = v2180 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B0A034(v1456, 1, a0123456789Abcd_0[(v2179 >> 5) & 0x1F]);
      v177 = HIWORD(v2179) & 0x3F;
LABEL_1255:
      v178 = v1456;
LABEL_1256:
      v179 = 64;
      goto LABEL_141;
    case 688:
      v2138 = a3;
      v2139 = word_298DFB36E[a3 & 0x1F];
      v895 = a4;
      v2140 = result;
      sub_298B0A034(a4, 1, v2139);
      v365 = v2140 & 3;
      if (!v365)
      {
        return 0;
      }

      sub_298B0A034(v895, 1, v2139);
      sub_298B0A034(v895, 1, word_298DFB36E[(v2138 >> 5) & 0x1F]);
      sub_298B1A1C4(v895, HIWORD(v2138) & 0xF);
      v368 = (v2138 >> 9) & 4 | (v2138 >> 20) & 3;
      goto LABEL_685;
    case 689:
      v2201 = a3;
      v2202 = a0123456789Abcd_0[a3 & 0x1F];
      v2203 = a4;
      v2204 = result;
      sub_298B0A034(a4, 1, v2202);
      v2205 = v2204 & 3;
      if (!v2205)
      {
        return 0;
      }

      sub_298B0A034(v2203, 1, v2202);
      sub_298B0A034(v2203, 1, a0123456789Abcd_0[(v2201 >> 5) & 0x1F]);
      sub_298B1DB34(v2203, HIWORD(v2201) & 0x3F, 64);
      return v2205;
    case 690:
      v2176 = a3;
      v2177 = a3 & 0x1F;
      v2178 = word_298DFB86A;
LABEL_1961:
      v2273 = v2178[v2177];
      v895 = a4;
      v2274 = result;
      sub_298B0A034(a4, 1, v2273);
      v365 = v2274 & 3;
      if (!v365)
      {
        return 0;
      }

      sub_298B0A034(v895, 1, v2273);
      sub_298B0A034(v895, 1, v2178[(v2176 >> 5) & 0x1F]);
      sub_298B1A1C4(v895, HIWORD(v2176) & 0x1F);
      v368 = (v2176 >> 10) & 2 | (v2176 >> 21) & 1;
      goto LABEL_685;
    case 691:
      v893 = a3;
      v894 = a0123456789Abcd_0[a3 & 0x1F];
      v895 = a4;
      v896 = result;
      sub_298B0A034(a4, 1, v894);
      v365 = v896 & 3;
      if (!v365)
      {
        return 0;
      }

      sub_298B0A034(v895, 1, v894);
      sub_298B0A034(v895, 1, a0123456789Abcd_0[(v893 >> 5) & 0x1F]);
      sub_298B1A1C4(v895, HIWORD(v893) & 0x1F);
      v368 = (v893 >> 11) & 1;
      goto LABEL_685;
    case 692:
      v2149 = a3;
      v2150 = word_298DFB86A[a3 & 0x1F];
      v895 = a4;
      v2151 = result;
      sub_298B0A034(a4, 1, v2150);
      v365 = v2151 & 3;
      if (!v365)
      {
        return 0;
      }

      sub_298B0A034(v895, 1, v2150);
      sub_298B0A034(v895, 1, word_298DFB36E[(v2149 >> 5) & 0x1F]);
      sub_298B1A1C4(v895, HIWORD(v2149) & 0xF);
      v368 = (v2149 >> 9) & 4 | (v2149 >> 20) & 3;
      goto LABEL_685;
    case 693:
      v2127 = a3;
      v2128 = a0123456789Abcd_0[a3 & 0x1F];
      v895 = a4;
      v2129 = result;
      sub_298B0A034(a4, 1, v2128);
      v365 = v2129 & 3;
      if (!v365)
      {
        return 0;
      }

      sub_298B0A034(v895, 1, v2128);
      sub_298B0A034(v895, 1, word_298DFB86A[(v2127 >> 5) & 0x1F]);
      sub_298B1A1C4(v895, HIWORD(v2127) & 0x1F);
      v368 = (v2127 >> 10) & 2 | (v2127 >> 21) & 1;
LABEL_685:
      v369 = v895;
      goto LABEL_686;
    case 694:
      v2195 = a3;
      v2196 = a4;
      v2197 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v889 = v2197 & 3;
      if (!v889)
      {
        return 0;
      }

      sub_298B0A034(v2196, 1, a0123456789Abcd_0[(v2195 >> 5) & 0x1F]);
      v890 = HIWORD(v2195) & 0x3F;
      v891 = v2196;
      v892 = 64;
      goto LABEL_706;
    case 695:
      v2156 = a3;
      v2157 = a4;
      v2158 = result;
      sub_298B0A034(a4, 1, asc_298DFB328[a3 & 0x1F]);
      v889 = v2158 & 3;
      if (!v889)
      {
        return 0;
      }

      sub_298B0A034(v2157, 1, asc_298DFB328[(v2156 >> 5) & 0x1F]);
      v890 = HIWORD(v2156) & 7;
      v891 = v2157;
      v892 = 8;
      goto LABEL_706;
    case 696:
      v2132 = a3;
      v2133 = a4;
      v2134 = result;
      sub_298B0A034(a4, 1, word_298DFB36E[a3 & 0x1F]);
      v889 = v2134 & 3;
      if (!v889)
      {
        return 0;
      }

      sub_298B0A034(v2133, 1, word_298DFB36E[(v2132 >> 5) & 0x1F]);
      v890 = HIWORD(v2132) & 0xF;
      v891 = v2133;
      v892 = 16;
      goto LABEL_706;
    case 697:
      v919 = a3;
      v920 = a4;
      v921 = result;
      sub_298B0A034(a4, 1, word_298DFB86A[a3 & 0x1F]);
      v889 = v921 & 3;
      if (!v889)
      {
        return 0;
      }

      sub_298B0A034(v920, 1, word_298DFB86A[(v919 >> 5) & 0x1F]);
      v890 = HIWORD(v919) & 0x1F;
      v891 = v920;
      v892 = 32;
LABEL_706:
      sub_298B1DBB8(v891, v890, v892);
      return v889;
    case 698:
      v922 = a3;
      v923 = word_298DFB36E;
      v44 = a4;
      v924 = result;
      sub_298B0A034(a4, 1, word_298DFB36E[a3 & 0x1F]);
      v46 = v924 & 3;
      if (!v46)
      {
        return 0;
      }

LABEL_708:
      sub_298B0A034(v44, 1, v923[(v922 >> 5) & 0x1F]);
      sub_298B1A1C4(v44, HIWORD(v922) & 0xF);
      v50 = (v922 >> 9) & 4 | (v922 >> 20) & 3;
      goto LABEL_43;
    case 699:
      v1627 = a3;
      v1478 = a4;
      v2130 = result;
      sub_298B0A034(a4, 1, asc_298DFB328[a3 & 0x1F]);
      v176 = v2130 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B0A034(v1478, 1, word_298DFB36E[(v1627 >> 5) & 0x1F]);
LABEL_1983:
      v177 = HIWORD(v1627) & 7;
LABEL_1984:
      v178 = v1478;
LABEL_1985:
      v179 = 8;
      goto LABEL_141;
    case 700:
      v1452 = a3;
      v1453 = a4;
      v2199 = result;
      sub_298B0A034(a4, 1, word_298DFB36E[a3 & 0x1F]);
      v176 = v2199 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B0A034(v1453, 1, word_298DFB86A[(v1452 >> 5) & 0x1F]);
LABEL_1988:
      v177 = HIWORD(v1452) & 0xF;
      goto LABEL_1989;
    case 701:
      v2167 = a3;
      v174 = a4;
      v2168 = result;
      sub_298B0A034(a4, 1, word_298DFB86A[a3 & 0x1F]);
      v176 = v2168 & 3;
      if (!v176)
      {
        return 0;
      }

      sub_298B0A034(v174, 1, a0123456789Abcd_0[(v2167 >> 5) & 0x1F]);
      v177 = HIWORD(v2167) & 0x1F;
      goto LABEL_139;
    case 702:
      v766 = a3;
      v767 = word_298DFB86A;
      v44 = a4;
      v2145 = result;
      sub_298B0A034(a4, 1, word_298DFB86A[a3 & 0x1F]);
      v46 = v2145 & 3;
      if (!v46)
      {
        return 0;
      }

LABEL_588:
      sub_298B0A034(v44, 1, v767[(v766 >> 5) & 0x1F]);
      sub_298B1A1C4(v44, HIWORD(v766) & 0x1F);
      v50 = (v766 >> 10) & 2 | (v766 >> 21) & 1;
      goto LABEL_43;
    case 703:
      v982 = a3;
      v44 = a4;
      v983 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v46 = v983 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, a0123456789Abcd_0[(v982 >> 5) & 0x1F]);
      sub_298B1A1C4(v44, HIWORD(v982) & 0x1F);
      v50 = (v982 >> 11) & 1;
      goto LABEL_43;
    case 704:
      v598 = a3;
      v397 = a4;
      v599 = result;
      sub_298B0A034(a4, 1, word_298DFB86A[a3 & 0x1F]);
      v342 = v599 & 3;
      if (!v342)
      {
        return 0;
      }

      v600 = v598;
      v601 = word_298DFB36E[(v598 >> 5) & 0x1F];
      v344 = v397;
      sub_298B0A034(v397, 1, v601);
      sub_298B1A1C4(v397, HIWORD(v600) & 0xF);
      v350 = (v600 >> 9) & 4 | (v600 >> 20) & 3;
LABEL_311:
      v401 = *(v397 + 24);
      if (v401 >= *(v397 + 28))
      {
        sub_298B90A44(v344 + 16, (v344 + 32), v401 + 1, 16);
        v344 = v397;
        LODWORD(v401) = *(v397 + 24);
      }

      v351 = (*(v344 + 16) + 16 * v401);
LABEL_271:
      *v351 = 2;
      v351[1] = v350;
      ++*(v344 + 24);
      return v342;
    case 705:
      v691 = a3;
      v44 = a4;
      v2200 = result;
      sub_298B0A034(a4, 1, a0123456789Abcd_0[a3 & 0x1F]);
      v46 = v2200 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B0A034(v44, 1, word_298DFB86A[(v691 >> 5) & 0x1F]);
LABEL_543:
      sub_298B1A1C4(v44, HIWORD(v691) & 0x1F);
      v50 = (v691 >> 10) & 2 | (v691 >> 21) & 1;
      goto LABEL_43;
    case 706:
      v2213 = a3;
      v2214 = word_298DFB36E;
      v1453 = a4;
      v2215 = result;
      sub_298B0A034(a4, 1, word_298DFB36E[a3 & 0x1F]);
      v176 = v2215 & 3;
      if (!v176)
      {
        return 0;
      }

LABEL_1969:
      sub_298B0A034(v1453, 1, v2214[(v2213 >> 5) & 0x1F]);
      v177 = HIWORD(v2213) & 0xF;
LABEL_1989:
      v178 = v1453;
LABEL_1990:
      v179 = 16;
      goto LABEL_141;
    case 707:
      v172 = a3;
      v173 = word_298DFB86A;
      v174 = a4;
      v2137 = result;
      sub_298B0A034(a4, 1, word_298DFB86A[a3 & 0x1F]);
      v176 = v2137 & 3;
      if (!v176)
      {
        return 0;
      }

LABEL_138:
      sub_298B0A034(v174, 1, v173[(v172 >> 5) & 0x1F]);
      v177 = HIWORD(v172) & 0x1F;
LABEL_139:
      v178 = v174;
LABEL_140:
      v179 = 32;
LABEL_141:
      sub_298B1DB34(v178, v177, v179);
      return v176;
    case 708:
      v2146 = a3;
      v2147 = a3 & 0x1F;
      v2148 = word_298DFB36E;
      goto LABEL_1869;
    case 709:
      v760 = a3;
      v761 = a3 & 0x1F;
      v762 = word_298DFB36E;
      goto LABEL_584;
    case 710:
      v431 = a3;
      v928 = a3 & 0x1F;
      v432 = word_298DFB36E;
      goto LABEL_713;
    case 711:
      v431 = a3;
      v928 = a3 & 0x1F;
      v432 = word_298DFB86A;
LABEL_713:
      v929 = v432[v928];
      v434 = a4;
      v930 = result;
      sub_298B0A034(a4, 1, v929);
      v276 = v930 & 3;
      if (!v276)
      {
        return 0;
      }

      sub_298B0A034(v434, 1, v929);
      v440 = v432[(v431 >> 5) & 0x1F];
LABEL_338:
      sub_298B0A034(v434, 1, v440);
      v278 = v432[HIWORD(v431) & 0x1F];
      v279 = v434;
LABEL_222:
      sub_298B0A034(v279, 1, v278);
      return v276;
    case 712:
      v2169 = a3;
      v2170 = a0123456789Abcd_0[a3 & 0x1F];
      v2171 = a4;
      v2172 = result;
      sub_298B0A034(a4, 1, v2170);
      v2173 = v2172 & 3;
      if (!v2173)
      {
        return 0;
      }

      sub_298B0A034(v2171, 1, v2170);
      sub_298B0A034(v2171, 1, a0123456789Abcd_0[(v2169 >> 5) & 0x1F]);
      sub_298B1DBB8(v2171, HIWORD(v2169) & 0x3F, 64);
      return v2173;
    case 713:
      v2190 = a5;
      v2410 = a6;
      v2191 = a3;
      v2192 = a4;
      v2193 = result;
      sub_298B1A1C4(a4, a3 & 0x1F);
      v2194 = v2193 & 3;
      if (!v2194)
      {
        return 0;
      }

      sub_298B1BDA0(v2192, (v2191 >> 5) & 0x7FFFF, v2190, v2410);
      return v2194;
    case 714:
      v555 = a3;
      v556 = a3 & 0x1F;
      v557 = word_298DFB86A;
      goto LABEL_441;
    case 715:
      v282 = a3;
      v283 = a3 & 0x1F;
      v284 = word_298DFB86A;
      goto LABEL_226;
    case 716:
      v282 = a3;
      v44 = a4;
      v2135 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v46 = v2135 & 3;
      if (!v46)
      {
        return 0;
      }

      v286 = (v282 >> 5) & 0x1F;
      v287 = word_298DFB86A;
      goto LABEL_228;
    case 717:
      v360 = a3;
      v361 = a3 & 0x1F;
      v362 = word_298DFBCEE;
LABEL_277:
      v363 = a4;
      v364 = result;
      sub_298B0A034(a4, 1, v362[v361]);
      v365 = v364 & 3;
      if (!v365)
      {
        return 0;
      }

      v366 = (v360 >> 5) & 0x1F;
      v367 = word_298DFB86A;
      goto LABEL_279;
    case 718:
      v2159 = a3;
      v2160 = a3 & 0x1F;
      v2161 = word_298DFB86A;
      goto LABEL_1840;
    case 719:
      v282 = a3;
      v283 = a3 & 0x1F;
      v284 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_226;
    case 720:
      v282 = a3;
      v44 = a4;
      v660 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v46 = v660 & 3;
      if (!v46)
      {
        return 0;
      }

      v286 = (v282 >> 5) & 0x1F;
      v287 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_228;
    case 721:
      v2058 = a3;
      v2059 = a3 & 0x1F;
      v2060 = word_298DFBCEE;
LABEL_2012:
      v363 = a4;
      v2317 = result;
      sub_298B0A034(a4, 1, v2060[v2059]);
      v365 = v2317 & 3;
      if (!v365)
      {
        return 0;
      }

      v366 = (v2058 >> 5) & 0x1F;
      v367 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_279;
    case 722:
      v2159 = a3;
      v2160 = a3 & 0x1F;
      v2161 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
      goto LABEL_1840;
    case 723:
      v2206 = result;
      sub_298B1D7B8(a4, a3);
      return v2206 & 3;
    case 724:
      v282 = a3;
      v283 = a3 & 0x1F;
      v284 = word_298DFB36E;
LABEL_226:
      v44 = a4;
      v285 = result;
      sub_298B0A034(a4, 1, v284[v283]);
      v46 = v285 & 3;
      if (!v46)
      {
        return 0;
      }

      v286 = (v282 >> 5) & 0x1F;
      v287 = word_298DFBCEE;
      goto LABEL_228;
    case 725:
      v282 = a3;
      v44 = a4;
      v2187 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v46 = v2187 & 3;
      if (!v46)
      {
        return 0;
      }

      v286 = (v282 >> 5) & 0x1F;
      v287 = word_298DFB36E;
LABEL_228:
      sub_298B0A034(v44, 1, v287[v286]);
      v288 = v282 >> 10;
      v289 = 64;
LABEL_229:
      v50 = (v289 - v288);
LABEL_43:
      v51 = v44;
      goto LABEL_44;
    case 726:
      v2162 = a3;
      v2163 = a3 & 0x1F;
      v2164 = word_298DFBCEE;
LABEL_1895:
      v363 = a4;
      v2220 = result;
      sub_298B0A034(a4, 1, v2164[v2163]);
      v365 = v2220 & 3;
      if (!v365)
      {
        return 0;
      }

      v366 = (v2162 >> 5) & 0x1F;
      v367 = word_298DFB36E;
      goto LABEL_279;
    case 727:
      v2159 = a3;
      v2160 = a3 & 0x1F;
      v2161 = word_298DFB36E;
LABEL_1840:
      v363 = a4;
      v2165 = result;
      sub_298B0A034(a4, 1, v2161[v2160]);
      v365 = v2165 & 3;
      if (!v365)
      {
        return 0;
      }

      v366 = (v2159 >> 5) & 0x1F;
      v367 = word_298DFBCEE;
LABEL_279:
      v368 = v367[v366];
LABEL_280:
      v369 = v363;
LABEL_281:
      v370 = 1;
      goto LABEL_282;
    case 728:
      v2146 = a3;
      v2147 = a3 & 0x1F;
      v2148 = word_298DFB86A;
      goto LABEL_1869;
    case 729:
      v760 = a3;
      v761 = a3 & 0x1F;
      v762 = word_298DFB86A;
      goto LABEL_584;
    case 730:
      v555 = a3;
      v556 = a3 & 0x1F;
      v557 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
LABEL_441:
      v558 = a4;
      v559 = result;
      sub_298B0A034(a4, 1, v557[v556]);
      v46 = v559 & 3;
      if (!v46)
      {
        return 0;
      }

      sub_298B1A150(v558, (v555 >> 5) & 0x1F);
      if (((v555 >> 12) & 0x100) != 0)
      {
        v50 = (v555 >> 12) & 0x1FF | 0xFFFFFFFFFFFFFE00;
      }

      else
      {
        v50 = (v555 >> 12) & 0x1FF;
      }

      v51 = v558;
LABEL_44:
      v52 = 2;
      goto LABEL_45;
    case 731:
      v2146 = a3;
      v2147 = a3 & 0x1F;
      v2148 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
LABEL_1869:
      v763 = a4;
      v2198 = result;
      sub_298B0A034(a4, 1, v2148[v2147]);
      v190 = v2198 & 3;
      if (!v190)
      {
        return 0;
      }

      v765 = v2146;
      sub_298B1A150(v763, (v2146 >> 5) & 0x1F);
      sub_298B1A55C(v763, HIWORD(v2146) & 0x1F);
      goto LABEL_586;
    case 732:
      v760 = a3;
      v761 = a3 & 0x1F;
      v762 = L"-./0123456789:;<=>?@ABCDEFGHIJKL";
LABEL_584:
      v763 = a4;
      v764 = result;
      sub_298B0A034(a4, 1, v762[v761]);
      v190 = v764 & 3;
      if (!v190)
      {
        return 0;
      }

LABEL_585:
      v765 = v760;
      sub_298B1A150(v763, (v760 >> 5) & 0x1F);
      sub_298B0A034(v763, 1, word_298DFBCEE[HIWORD(v760) & 0x1F]);
LABEL_586:
      v200 = (v765 >> 14) & 2 | (v765 >> 12) & 1;
      v201 = v763;
LABEL_154:
      sub_298B1CE54(v201, v200);
      return v190;
    case 733:
      v606 = a7;
      v2188 = result;
      v2189 = sub_298B1D948(a4, a3, a6);
      v686 = v2189 & v2188;
      if ((v2189 & v2188) != 0)
      {
        return v686;
      }

LABEL_1859:
      result = 0;
      *v606 = 0;
      return result;
    case 734:
      v564 = a3;
      v565 = a4;
      v566 = result;
      sub_298B0A034(a4, 2, (a3 >> 5));
      v46 = v566 & 3;
      if (!v46)
      {
        return 0;
      }

      v567 = v564 & 0x1F;
LABEL_452:
      v568 = word_298DFBCEE;
LABEL_453:
      v50 = v568[v567];
LABEL_454:
      v51 = v565;
      v52 = 1;
LABEL_45:
      sub_298B0A034(v51, v52, v50);
      return v46;
    case 735:
      v2174 = a3;
      v1216 = a4;
      v2175 = result;
      sub_298B0A034(a4, 1, word_298DFBCEE[a3 & 0x1F]);
      v365 = v2175 & 3;
      if (!v365)
      {
        return 0;
      }

      v368 = (v2174 >> 5);
LABEL_2051:
      v369 = v1216;
LABEL_686:
      v370 = 2;
LABEL_282:
      sub_298B0A034(v369, v370, v368);
      return v365;
    case 736:
      v452 = result;
      v453 = a3 & 7 | (8 * ((a3 >> 12) & 3)) | (a3 >> 10) & 0x20;
      v454 = *(a4 + 24);
      if (v454 >= *(a4 + 28))
      {
        v1153 = a3;
        v1154 = a4;
        sub_298B90A44(a4 + 16, (a4 + 32), v454 + 1, 16);
        a3 = v1153;
        a4 = v1154;
        LODWORD(v454) = *(v1154 + 24);
      }

      v455 = (*(a4 + 16) + 16 * v454);
      *v455 = 2;
      v455[1] = v453;
      ++*(a4 + 24);
      v456 = a3;
      v457 = a4;
      sub_298B0A034(a4, 1, word_298DFBCEE[HIWORD(a3) & 0x1F]);
      v357 = v452 & 3;
      if (!v357)
      {
        return 0;
      }

LABEL_349:
      v358 = (v456 >> 5) & 0x1F;
LABEL_350:
      v359 = v457;
LABEL_351:
      sub_298B1A150(v359, v358);
      return v357;
    default:
      v2166 = result;
      sub_298B0A034(a4, 2, a3);
      return v2166;
  }
}