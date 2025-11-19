BOOL sub_2614FD0C0(int *a1, int *a2, uint64_t a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = *a1;
      v7 = a1[1];
      v8 = *(a3 + 4 * v7);
      v9 = *(a3 + 4 * v6);
      v10 = *(a2 - 1);
      v11 = *(a3 + 4 * v10);
      if (v8 <= v9)
      {
        if (v11 > v8)
        {
          a1[1] = v10;
          *(a2 - 1) = v7;
          v34 = *a1;
          v33 = a1[1];
          if (*(a3 + 4 * v33) > *(a3 + 4 * v34))
          {
            *a1 = v33;
            a1[1] = v34;
          }
        }

        return 1;
      }

      if (v11 <= v8)
      {
        *a1 = v7;
        a1[1] = v6;
        v44 = *(a2 - 1);
        if (*(a3 + 4 * v44) <= v9)
        {
          return 1;
        }

        a1[1] = v44;
      }

      else
      {
        *a1 = v10;
      }

      *(a2 - 1) = v6;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      sub_2614FCF34(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v21 = a1 + 1;
    v22 = a1[1];
    v23 = a1 + 2;
    v24 = a1[2];
    v25 = *a1;
    v26 = *(a3 + 4 * v22);
    v27 = *(a3 + 4 * *a1);
    v28 = v24;
    v29 = *(a3 + 4 * v24);
    if (v26 <= v27)
    {
      if (v29 > v26)
      {
        v30 = v22;
        *v21 = v24;
        *v23 = v22;
        v31 = a1;
        v32 = a1 + 1;
        v28 = v22;
        if (v29 <= v27)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }
    }

    else
    {
      v30 = v25;
      if (v29 > v26)
      {
        v31 = a1;
        v32 = a1 + 2;
        v22 = *a1;
LABEL_44:
        *v31 = v24;
        *v32 = v25;
        v28 = v30;
LABEL_46:
        v45 = *(a2 - 1);
        if (*(a3 + 4 * v45) > *(a3 + 4 * v28))
        {
          *v23 = v45;
          *(a2 - 1) = v22;
          v46 = *v23;
          v47 = *v21;
          v48 = *(a3 + 4 * v46);
          if (v48 > *(a3 + 4 * v47))
          {
            a1[1] = v46;
            a1[2] = v47;
            v49 = *a1;
            if (v48 > *(a3 + 4 * v49))
            {
              *a1 = v46;
              a1[1] = v49;
            }
          }
        }

        return 1;
      }

      *a1 = v22;
      a1[1] = v25;
      v31 = a1 + 1;
      v32 = a1 + 2;
      v22 = v25;
      if (v29 > v27)
      {
        goto LABEL_44;
      }
    }

    v22 = v24;
    goto LABEL_46;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    if (*(a3 + 4 * v4) > *(a3 + 4 * v5))
    {
      *a1 = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v12 = a1[2];
  v14 = a1[1];
  v15 = *(a3 + 4 * v14);
  v16 = *a1;
  v17 = *(a3 + 4 * v16);
  v18 = *(a3 + 4 * v12);
  if (v15 > v17)
  {
    v19 = a1;
    v20 = a1 + 2;
    if (v18 <= v15)
    {
      *a1 = v14;
      a1[1] = v16;
      v19 = a1 + 1;
      v20 = a1 + 2;
      if (v18 <= v17)
      {
        goto LABEL_26;
      }
    }

LABEL_25:
    *v19 = v12;
    *v20 = v16;
    goto LABEL_26;
  }

  if (v18 > v15)
  {
    a1[1] = v12;
    *v13 = v14;
    v19 = a1;
    v20 = a1 + 1;
    if (v18 > v17)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  v35 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v36 = 0;
  for (i = 12; ; i += 4)
  {
    v38 = *v35;
    v39 = *v13;
    v40 = *(a3 + 4 * v38);
    if (v40 > *(a3 + 4 * v39))
    {
      v41 = i;
      while (1)
      {
        *(a1 + v41) = v39;
        v42 = v41 - 4;
        if (v41 == 4)
        {
          break;
        }

        v39 = *(a1 + v41 - 8);
        v41 -= 4;
        if (v40 <= *(a3 + 4 * v39))
        {
          v43 = (a1 + v42);
          goto LABEL_34;
        }
      }

      v43 = a1;
LABEL_34:
      *v43 = v38;
      if (++v36 == 8)
      {
        break;
      }
    }

    v13 = v35++;
    if (v35 == a2)
    {
      return 1;
    }
  }

  return v35 + 1 == a2;
}

atomic_uint *sub_2614FD3C4(atomic_uint **a1, atomic_uint **a2, atomic_uint **a3, uint64_t (**a4)(atomic_uint **, atomic_uint **))
{
  v8 = *a4;
  v9 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v9 + 2, 1u, memory_order_relaxed);
  }

  v38 = v9;
  v10 = *a1;
  if (*a1)
  {
    atomic_fetch_add_explicit(v10 + 2, 1u, memory_order_relaxed);
  }

  v37 = v10;
  v11 = v8(&v38, &v37);
  if (v37)
  {
    sub_2614705CC(v37);
  }

  if (v38)
  {
    sub_2614705CC(v38);
  }

  v12 = *a4;
  v13 = *a3;
  if (v11)
  {
    if (v13)
    {
      atomic_fetch_add_explicit(v13 + 2, 1u, memory_order_relaxed);
    }

    v32 = v13;
    v14 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v14 + 2, 1u, memory_order_relaxed);
    }

    v31 = v14;
    v15 = v12(&v32, &v31);
    if (v31)
    {
      sub_2614705CC(v31);
    }

    if (v32)
    {
      sub_2614705CC(v32);
    }

    v16 = a1;
    if (v15)
    {
      goto LABEL_29;
    }

    sub_2614DB518(a1, a2);
    v17 = *a4;
    v18 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v18 + 2, 1u, memory_order_relaxed);
    }

    v30 = v18;
    v19 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v19 + 2, 1u, memory_order_relaxed);
    }

    v29 = v19;
    v20 = v17(&v30, &v29);
    if (v29)
    {
      sub_2614705CC(v29);
    }

    result = v30;
    if (v30)
    {
      result = sub_2614705CC(v30);
    }

    if (v20)
    {
      v16 = a2;
LABEL_29:
      v22 = a3;
      return sub_2614DB518(v16, v22);
    }
  }

  else
  {
    if (v13)
    {
      atomic_fetch_add_explicit(v13 + 2, 1u, memory_order_relaxed);
    }

    v36 = v13;
    v23 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v23 + 2, 1u, memory_order_relaxed);
    }

    v35 = v23;
    v24 = v12(&v36, &v35);
    if (v35)
    {
      sub_2614705CC(v35);
    }

    result = v36;
    if (v36)
    {
      result = sub_2614705CC(v36);
    }

    if (v24)
    {
      sub_2614DB518(a2, a3);
      v25 = *a4;
      v26 = *a2;
      if (*a2)
      {
        atomic_fetch_add_explicit(v26 + 2, 1u, memory_order_relaxed);
      }

      v34 = v26;
      v27 = *a1;
      if (*a1)
      {
        atomic_fetch_add_explicit(v27 + 2, 1u, memory_order_relaxed);
      }

      v33 = v27;
      v28 = v25(&v34, &v33);
      if (v33)
      {
        sub_2614705CC(v33);
      }

      result = v34;
      if (v34)
      {
        result = sub_2614705CC(v34);
      }

      if (v28)
      {
        v16 = a1;
        v22 = a2;
        return sub_2614DB518(v16, v22);
      }
    }
  }

  return result;
}

void sub_2614FD610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, atomic_uint *a13, atomic_uint *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a13)
  {
    sub_2614705CC(a13);
  }

  if (a14)
  {
    sub_2614705CC(a14);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *sub_2614FD6A4(atomic_uint **a1, atomic_uint **a2, atomic_uint **a3, atomic_uint **a4, uint64_t (**a5)(atomic_uint **, atomic_uint **))
{
  sub_2614FD3C4(a1, a2, a3, a5);
  v10 = *a5;
  v11 = *a4;
  if (*a4)
  {
    atomic_fetch_add_explicit(v11 + 2, 1u, memory_order_relaxed);
  }

  v28 = v11;
  v12 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v12 + 2, 1u, memory_order_relaxed);
  }

  v27 = v12;
  v13 = v10(&v28, &v27);
  if (v27)
  {
    sub_2614705CC(v27);
  }

  result = v28;
  if (v28)
  {
    result = sub_2614705CC(v28);
  }

  if (v13)
  {
    sub_2614DB518(a3, a4);
    v15 = *a5;
    v16 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v16 + 2, 1u, memory_order_relaxed);
    }

    v26 = v16;
    v17 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v17 + 2, 1u, memory_order_relaxed);
    }

    v25 = v17;
    v18 = v15(&v26, &v25);
    if (v25)
    {
      sub_2614705CC(v25);
    }

    result = v26;
    if (v26)
    {
      result = sub_2614705CC(v26);
    }

    if (v18)
    {
      sub_2614DB518(a2, a3);
      v19 = *a5;
      v20 = *a2;
      if (*a2)
      {
        atomic_fetch_add_explicit(v20 + 2, 1u, memory_order_relaxed);
      }

      v24 = v20;
      v21 = *a1;
      if (*a1)
      {
        atomic_fetch_add_explicit(v21 + 2, 1u, memory_order_relaxed);
      }

      v23 = v21;
      v22 = v19(&v24, &v23);
      if (v23)
      {
        sub_2614705CC(v23);
      }

      result = v24;
      if (v24)
      {
        result = sub_2614705CC(v24);
      }

      if (v22)
      {
        return sub_2614DB518(a1, a2);
      }
    }
  }

  return result;
}

void sub_2614FD838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, atomic_uint *a9, atomic_uint *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a9)
  {
    sub_2614705CC(a9);
  }

  if (a10)
  {
    sub_2614705CC(a10);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *sub_2614FD894(atomic_uint **a1, atomic_uint **a2, atomic_uint **a3, atomic_uint **a4, atomic_uint **a5, uint64_t (**a6)(atomic_uint **, atomic_uint **))
{
  sub_2614FD6A4(a1, a2, a3, a4, a6);
  v12 = *a6;
  v13 = *a5;
  if (*a5)
  {
    atomic_fetch_add_explicit(v13 + 2, 1u, memory_order_relaxed);
  }

  v36 = v13;
  v14 = *a4;
  if (*a4)
  {
    atomic_fetch_add_explicit(v14 + 2, 1u, memory_order_relaxed);
  }

  v35 = v14;
  v15 = v12(&v36, &v35);
  if (v35)
  {
    sub_2614705CC(v35);
  }

  result = v36;
  if (v36)
  {
    result = sub_2614705CC(v36);
  }

  if (v15)
  {
    sub_2614DB518(a4, a5);
    v17 = *a6;
    v18 = *a4;
    if (*a4)
    {
      atomic_fetch_add_explicit(v18 + 2, 1u, memory_order_relaxed);
    }

    v34 = v18;
    v19 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v19 + 2, 1u, memory_order_relaxed);
    }

    v33 = v19;
    v20 = v17(&v34, &v33);
    if (v33)
    {
      sub_2614705CC(v33);
    }

    result = v34;
    if (v34)
    {
      result = sub_2614705CC(v34);
    }

    if (v20)
    {
      sub_2614DB518(a3, a4);
      v21 = *a6;
      v22 = *a3;
      if (*a3)
      {
        atomic_fetch_add_explicit(v22 + 2, 1u, memory_order_relaxed);
      }

      v32 = v22;
      v23 = *a2;
      if (*a2)
      {
        atomic_fetch_add_explicit(v23 + 2, 1u, memory_order_relaxed);
      }

      v31 = v23;
      v24 = v21(&v32, &v31);
      if (v31)
      {
        sub_2614705CC(v31);
      }

      result = v32;
      if (v32)
      {
        result = sub_2614705CC(v32);
      }

      if (v24)
      {
        sub_2614DB518(a2, a3);
        v25 = *a6;
        v26 = *a2;
        if (*a2)
        {
          atomic_fetch_add_explicit(v26 + 2, 1u, memory_order_relaxed);
        }

        v30 = v26;
        v27 = *a1;
        if (*a1)
        {
          atomic_fetch_add_explicit(v27 + 2, 1u, memory_order_relaxed);
        }

        v29 = v27;
        v28 = v25(&v30, &v29);
        if (v29)
        {
          sub_2614705CC(v29);
        }

        result = v30;
        if (v30)
        {
          result = sub_2614705CC(v30);
        }

        if (v28)
        {
          return sub_2614DB518(a1, a2);
        }
      }
    }
  }

  return result;
}

void sub_2614FDAA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, atomic_uint *a9, atomic_uint *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a9)
  {
    sub_2614705CC(a9);
  }

  if (a10)
  {
    sub_2614705CC(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2614FDB18(atomic_uint **a1, atomic_uint **a2, uint64_t (**a3)(atomic_uint **, atomic_uint **))
{
  v4 = a2;
  v6 = a2 - a1;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *a3;
        v9 = a2 - 1;
        v8 = *(a2 - 1);
        if (v8)
        {
          atomic_fetch_add_explicit(v8 + 2, 1u, memory_order_relaxed);
        }

        v37 = v8;
        v10 = *a1;
        if (*a1)
        {
          atomic_fetch_add_explicit(v10 + 2, 1u, memory_order_relaxed);
        }

        v36 = v10;
        v11 = v7(&v37, &v36);
        if (v36)
        {
          sub_2614705CC(v36);
        }

        if (v37)
        {
          sub_2614705CC(v37);
        }

        if (v11)
        {
          sub_2614DB518(a1, v9);
        }

        return 1;
      }

      goto LABEL_19;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      sub_2614FD3C4(a1, a1 + 1, a2 - 1, a3);
      return 1;
    case 4:
      sub_2614FD6A4(a1, a1 + 1, a1 + 2, a2 - 1, a3);
      return 1;
    case 5:
      sub_2614FD894(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
  }

LABEL_19:
  v12 = a1 + 2;
  sub_2614FD3C4(a1, a1 + 1, a1 + 2, a3);
  v13 = a1 + 3;
  v14 = 1;
  if (a1 + 3 == v4)
  {
    return v14;
  }

  v15 = 0;
  v16 = 16;
  v31 = v4;
  while (1)
  {
    v17 = *a3;
    v18 = *v13;
    if (*v13)
    {
      atomic_fetch_add_explicit(v18 + 2, 1u, memory_order_relaxed);
    }

    v34 = 0;
    v35 = v18;
    v19 = *v12;
    if (*v12)
    {
      atomic_fetch_add_explicit(v19 + 2, 1u, memory_order_relaxed);
    }

    v34 = v19;
    v20 = v17(&v35, &v34);
    if (v34)
    {
      sub_2614705CC(v34);
    }

    if (v35)
    {
      sub_2614705CC(v35);
    }

    if (v20)
    {
      break;
    }

LABEL_56:
    v12 = v13;
    v16 += 8;
    if (++v13 == v4)
    {
      return 1;
    }
  }

  v21 = *v13;
  if (*v13)
  {
    atomic_fetch_add_explicit(v21 + 2, 1u, memory_order_relaxed);
  }

  for (i = v16; ; i -= 8)
  {
    v23 = a1 + i;
    v24 = *(a1 + i);
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1u, memory_order_relaxed);
    }

    v25 = *(v23 + 1);
    if (v25)
    {
      sub_2614705CC(v25);
    }

    *(v23 + 1) = v24;
    if (!i)
    {
      v29 = a1;
      if (!v21)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    v26 = *a3;
    if (v21)
    {
      atomic_fetch_add_explicit(v21 + 2, 1u, memory_order_relaxed);
    }

    v32 = 0;
    v33 = v21;
    v27 = *(a1 + i - 8);
    if (v27)
    {
      atomic_fetch_add_explicit(v27 + 2, 1u, memory_order_relaxed);
    }

    v32 = v27;
    v28 = v26(&v33, &v32);
    if (v32)
    {
      sub_2614705CC(v32);
    }

    if (!v33)
    {
      break;
    }

    sub_2614705CC(v33);
    if ((v28 & 1) == 0)
    {
      goto LABEL_58;
    }

LABEL_48:
    ;
  }

  if (v28)
  {
    goto LABEL_48;
  }

LABEL_58:
  v29 = (a1 + i);
  if (v21)
  {
LABEL_50:
    atomic_fetch_add_explicit(v21 + 2, 1u, memory_order_relaxed);
  }

LABEL_51:
  if (*v29)
  {
    sub_2614705CC(*v29);
  }

  *v29 = v21;
  if (v21)
  {
    sub_2614705CC(v21);
  }

  ++v15;
  v4 = v31;
  if (v15 != 8)
  {
    goto LABEL_56;
  }

  return v13 + 1 == v31;
}

void sub_2614FDE08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, atomic_uint *a15, atomic_uint *a16)
{
  if (a15)
  {
    sub_2614705CC(a15);
  }

  if (a16)
  {
    sub_2614705CC(a16);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *sub_2614FDE84(atomic_uint *result, atomic_uint **a2, uint64_t a3, char a4)
{
  v6 = result;
LABEL_2:
  v7 = a2;
  v90 = a2 - 1;
  v8 = v6;
  while (1)
  {
    v6 = v8;
    v9 = v7 - v8;
    v10 = v9 - 2;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:

          return sub_2614FE95C(v6, v6 + 1, v90);
        case 4:
          result = sub_2614FE95C(v6, v6 + 1, v6 + 2);
          v42 = *(v7 - 1);
          v41 = v7 - 1;
          if (*(v42 + 24) <= *(*(v6 + 2) + 24))
          {
            return result;
          }

          result = sub_2614DB518(v6 + 2, v41);
          if (*(*(v6 + 2) + 24) <= *(*(v6 + 1) + 24))
          {
            return result;
          }

          result = sub_2614DB518(v6 + 1, v6 + 2);
          if (*(*(v6 + 1) + 24) <= *(*v6 + 24))
          {
            return result;
          }

          v40 = (v6 + 2);
          v39 = v6;
          goto LABEL_82;
        case 5:

          return sub_2614FEA38(v6, v6 + 1, v6 + 2, v6 + 3, v90);
      }
    }

    else
    {
      if (v9 < 2)
      {
        return result;
      }

      v7 = a2;
      if (v9 == 2)
      {
        if (*(*(a2 - 1) + 6) <= *(*v6 + 24))
        {
          return result;
        }

        v39 = v6;
        v40 = a2 - 1;
LABEL_82:

        return sub_2614DB518(v39, v40);
      }
    }

    if (v9 <= 23)
    {
      v43 = (v6 + 2);
      v44 = v6 == v7 || v43 == v7;
      v45 = v44;
      if ((a4 & 1) == 0)
      {
        if ((v45 & 1) == 0)
        {
          do
          {
            v86 = v43;
            v87 = *(v6 + 1);
            if (*(v87 + 24) > *(*v6 + 24))
            {
              atomic_fetch_add_explicit((v87 + 8), 1u, memory_order_relaxed);
              v88 = *v6;
              v89 = v43;
              do
              {
                if (v88)
                {
                  atomic_fetch_add_explicit((v88 + 8), 1u, memory_order_relaxed);
                }

                if (*v89)
                {
                  sub_2614705CC(*v89);
                }

                *v89 = v88;
                v88 = *(v89 - 2);
                --v89;
              }

              while (*(v87 + 24) > *(v88 + 24));
              atomic_fetch_add_explicit((v87 + 8), 1u, memory_order_relaxed);
              if (*v89)
              {
                sub_2614705CC(*v89);
              }

              *v89 = v87;
              result = sub_2614705CC(v87);
            }

            v43 = v86 + 1;
            v6 = v86;
          }

          while (v86 + 1 != a2);
        }

        return result;
      }

      if (v45)
      {
        return result;
      }

      v46 = 0;
      v47 = v6;
      while (1)
      {
        v48 = v43;
        v49 = *(v47 + 1);
        if (*(v49 + 24) > *(*v47 + 24))
        {
          atomic_fetch_add_explicit((v49 + 8), 1u, memory_order_relaxed);
          v50 = *v47;
          v51 = v46;
          while (1)
          {
            if (v50)
            {
              atomic_fetch_add_explicit((v50 + 8), 1u, memory_order_relaxed);
            }

            v52 = *(v6 + v51 + 8);
            if (v52)
            {
              sub_2614705CC(v52);
            }

            *(v6 + v51 + 8) = v50;
            if (!v51)
            {
              break;
            }

            v50 = *(v6 + v51 - 8);
            v51 -= 8;
            if (*(v49 + 24) <= *(v50 + 24))
            {
              v53 = (v6 + v51 + 8);
              goto LABEL_111;
            }
          }

          v53 = v6;
LABEL_111:
          atomic_fetch_add_explicit((v49 + 8), 1u, memory_order_relaxed);
          if (*v53)
          {
            sub_2614705CC(*v53);
          }

          *v53 = v49;
          result = sub_2614705CC(v49);
        }

        v43 = v48 + 1;
        v46 += 8;
        v47 = v48;
        if (v48 + 1 == a2)
        {
          return result;
        }
      }
    }

    if (!a3)
    {
      break;
    }

    v11 = v9 >> 1;
    v12 = &v6[2 * (v9 >> 1)];
    if (v9 < 0x81)
    {
      sub_2614FE95C(&v6[2 * (v9 >> 1)], v6, v90);
    }

    else
    {
      sub_2614FE95C(v6, &v6[2 * (v9 >> 1)], v90);
      sub_2614FE95C(v6 + 2, v12 - 1, a2 - 2);
      sub_2614FE95C(v6 + 4, &v6[2 * v11 + 2], a2 - 3);
      sub_2614FE95C(v12 - 2, &v6[2 * (v9 >> 1)], &v6[2 * v11 + 2]);
      sub_2614DB518(v6, &v6[2 * (v9 >> 1)]);
    }

    --a3;
    if (a4)
    {
      v13 = *v6;
      v14 = *v6 == 0;
      if (!*v6)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    v13 = *v6;
    v15 = *(*v6 + 24);
    if (*(*(v6 - 1) + 24) <= v15)
    {
      atomic_fetch_add_explicit((v13 + 8), 1u, memory_order_relaxed);
      if (v15 <= *(*v90 + 6))
      {
        v31 = (v6 + 2);
        do
        {
          v8 = v31;
          if (v31 >= v7)
          {
            break;
          }

          ++v31;
        }

        while (v15 <= *(*v8 + 6));
      }

      else
      {
        v8 = v6;
        do
        {
          v30 = v8[1];
          ++v8;
        }

        while (v15 <= *(v30 + 6));
      }

      v32 = v7;
      if (v8 < v7)
      {
        v32 = v7;
        do
        {
          v33 = *--v32;
        }

        while (v15 > *(v33 + 24));
      }

      while (v8 < v32)
      {
        sub_2614DB518(v8, v32);
        v34 = *(v13 + 24);
        do
        {
          v35 = v8[1];
          ++v8;
        }

        while (v34 <= *(v35 + 6));
        do
        {
          v36 = *--v32;
        }

        while (v34 > *(v36 + 24));
      }

      v37 = v8 - 1;
      if (v8 - 1 != v6)
      {
        v38 = *v37;
        if (*v37)
        {
          atomic_fetch_add_explicit(v38 + 2, 1u, memory_order_relaxed);
        }

        if (*v6)
        {
          sub_2614705CC(*v6);
        }

        *v6 = v38;
      }

      atomic_fetch_add_explicit((v13 + 8), 1u, memory_order_relaxed);
      if (*v37)
      {
        sub_2614705CC(*v37);
      }

      *v37 = v13;
      result = sub_2614705CC(v13);
      a4 = 0;
    }

    else
    {
      v14 = v13 == 0;
LABEL_20:
      atomic_fetch_add_explicit((v13 + 8), 1u, memory_order_relaxed);
LABEL_21:
      v16 = *(v13 + 24);
      v17 = v6;
      do
      {
        v18 = v17;
        v19 = v17[1];
        ++v17;
      }

      while (*(v19 + 6) > v16);
      v20 = v7;
      if (v18 == v6)
      {
        v20 = v7;
        do
        {
          if (v17 >= v20)
          {
            break;
          }

          v22 = *--v20;
        }

        while (*(v22 + 24) <= v16);
      }

      else
      {
        do
        {
          v21 = *--v20;
        }

        while (*(v21 + 24) <= v16);
      }

      v8 = v17;
      if (v17 < v20)
      {
        v23 = v20;
        do
        {
          sub_2614DB518(v8, v23);
          v24 = *(v13 + 24);
          do
          {
            v25 = v8[1];
            ++v8;
          }

          while (*(v25 + 6) > v24);
          do
          {
            v26 = *--v23;
          }

          while (*(v26 + 24) <= v24);
        }

        while (v8 < v23);
      }

      v27 = v8 - 1;
      if (v8 - 1 != v6)
      {
        v28 = *v27;
        if (*v27)
        {
          atomic_fetch_add_explicit(v28 + 2, 1u, memory_order_relaxed);
        }

        if (*v6)
        {
          sub_2614705CC(*v6);
        }

        *v6 = v28;
        v7 = a2;
      }

      if (!v14)
      {
        atomic_fetch_add_explicit((v13 + 8), 1u, memory_order_relaxed);
      }

      if (*v27)
      {
        sub_2614705CC(*v27);
      }

      *v27 = v13;
      if (!v14)
      {
        sub_2614705CC(v13);
      }

      if (v17 < v20)
      {
        goto LABEL_50;
      }

      v29 = sub_2614FEB98(v6, v8 - 1);
      result = sub_2614FEB98(v8, v7);
      if (result)
      {
        a2 = v8 - 1;
        if (v29)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v29)
      {
LABEL_50:
        result = sub_2614FDE84(v6, v8 - 1, a3, a4 & 1);
        a4 = 0;
      }
    }
  }

  if (v6 == v7)
  {
    return result;
  }

  v54 = v10 >> 1;
  v55 = v10 >> 1;
  do
  {
    v56 = v55;
    if (v54 >= v55)
    {
      v57 = (2 * v55) | 1;
      v58 = &v6[2 * v57];
      if (2 * v56 + 2 < v9 && *(*v58 + 6) > *(v58[1] + 6))
      {
        ++v58;
        v57 = 2 * v56 + 2;
      }

      v59 = &v6[2 * v56];
      v60 = *v59;
      if (*(*v58 + 6) <= *(*v59 + 6))
      {
        atomic_fetch_add_explicit(v60 + 2, 1u, memory_order_relaxed);
        v61 = *v58;
        do
        {
          v62 = v58;
          if (v61)
          {
            atomic_fetch_add_explicit(v61 + 2, 1u, memory_order_relaxed);
          }

          if (*v59)
          {
            sub_2614705CC(*v59);
          }

          *v59 = v61;
          if (v54 < v57)
          {
            break;
          }

          v63 = 2 * v57;
          v57 = (2 * v57) | 1;
          v58 = &v6[2 * v57];
          v64 = v63 + 2;
          if (v64 < v9 && *(*v58 + 6) > *(v58[1] + 6))
          {
            ++v58;
            v57 = v64;
          }

          v61 = *v58;
          v59 = v62;
        }

        while (*(*v58 + 6) <= *(v60 + 6));
        atomic_fetch_add_explicit(v60 + 2, 1u, memory_order_relaxed);
        if (*v62)
        {
          sub_2614705CC(*v62);
        }

        *v62 = v60;
        sub_2614705CC(v60);
      }
    }

    v55 = v56 - 1;
  }

  while (v56);
  while (2)
  {
    v65 = *v6;
    if (*v6)
    {
      atomic_fetch_add_explicit(v65 + 2, 1u, memory_order_relaxed);
    }

    v66 = 0;
    v67 = v6;
    while (2)
    {
      v68 = &v67[v66];
      v69 = v68 + 1;
      v70 = v68[1];
      v71 = 2 * v66;
      v66 = (2 * v66) | 1;
      v72 = v71 + 2;
      if (v72 >= v9)
      {
        if (v70)
        {
          goto LABEL_144;
        }
      }

      else
      {
        v75 = v68[2];
        v73 = v68 + 2;
        v74 = v75;
        if (*(v70 + 6) > *(v75 + 6))
        {
          v66 = v72;
          v69 = v73;
          v70 = v74;
        }

LABEL_144:
        atomic_fetch_add_explicit(v70 + 2, 1u, memory_order_relaxed);
      }

      if (*v67)
      {
        sub_2614705CC(*v67);
      }

      *v67 = v70;
      v67 = v69;
      if (v66 <= ((v9 - 2) >> 1))
      {
        continue;
      }

      break;
    }

    v76 = a2 - 1;
    v44 = v69 == --a2;
    if (v44)
    {
      if (v65)
      {
        atomic_fetch_add_explicit(v65 + 2, 1u, memory_order_relaxed);
      }

      result = *v69;
      if (*v69)
      {
        result = sub_2614705CC(result);
      }

      *v69 = v65;
    }

    else
    {
      v77 = *v76;
      if (*v76)
      {
        atomic_fetch_add_explicit(v77 + 2, 1u, memory_order_relaxed);
      }

      if (*v69)
      {
        sub_2614705CC(*v69);
      }

      *v69 = v77;
      if (v65)
      {
        atomic_fetch_add_explicit(v65 + 2, 1u, memory_order_relaxed);
      }

      result = *v76;
      if (*v76)
      {
        result = sub_2614705CC(result);
      }

      *v76 = v65;
      v78 = (v69 - v6 + 8) >> 3;
      v79 = v78 < 2;
      v80 = v78 - 2;
      if (!v79)
      {
        v81 = v80 >> 1;
        v82 = &v6[2 * (v80 >> 1)];
        v83 = *v69;
        if (*(*v82 + 6) > *(*v69 + 6))
        {
          atomic_fetch_add_explicit(v83 + 2, 1u, memory_order_relaxed);
          v84 = *v82;
          do
          {
            v85 = v82;
            if (v84)
            {
              atomic_fetch_add_explicit(v84 + 2, 1u, memory_order_relaxed);
            }

            if (*v69)
            {
              sub_2614705CC(*v69);
            }

            *v69 = v84;
            if (!v81)
            {
              break;
            }

            v81 = (v81 - 1) >> 1;
            v82 = &v6[2 * v81];
            v84 = *v82;
            v69 = v85;
          }

          while (*(*v82 + 6) > *(v83 + 6));
          atomic_fetch_add_explicit(v83 + 2, 1u, memory_order_relaxed);
          if (*v85)
          {
            sub_2614705CC(*v85);
          }

          *v85 = v83;
          result = sub_2614705CC(v83);
        }
      }
    }

    if (v65)
    {
      result = sub_2614705CC(v65);
    }

    v79 = v9-- <= 2;
    if (!v79)
    {
      continue;
    }

    return result;
  }
}

void sub_2614FE820(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = v3 + 8 * a2;
      while (v4 != v11)
      {
        v13 = *(v4 - 8);
        v4 -= 8;
        v12 = v13;
        if (v13)
        {
          sub_2614705CC(v12);
        }
      }

      a1[1] = v11;
    }
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_261470E48(v10);
      }

      sub_2614709BC();
    }

    bzero(a1[1], 8 * v6);
    a1[1] = v4 + 8 * v6;
  }
}

atomic_uint *sub_2614FE95C(atomic_uint *result, atomic_uint **a2, atomic_uint **a3)
{
  v5 = result;
  v6 = *(*a2 + 6);
  v7 = *(*a3 + 6);
  if (v6 <= *(*result + 24))
  {
    if (v7 <= v6)
    {
      return result;
    }

    result = sub_2614DB518(a2, a3);
    if (*(*a2 + 6) <= *(*v5 + 24))
    {
      return result;
    }

    result = v5;
    v8 = a2;
  }

  else
  {
    if (v7 <= v6)
    {
      result = sub_2614DB518(result, a2);
      if (*(*a3 + 6) <= *(*a2 + 6))
      {
        return result;
      }

      result = a2;
    }

    v8 = a3;
  }

  return sub_2614DB518(result, v8);
}

atomic_uint *sub_2614FEA38(atomic_uint *a1, atomic_uint **a2, atomic_uint **a3, atomic_uint **a4, atomic_uint **a5)
{
  result = sub_2614FE95C(a1, a2, a3);
  if (*(*a4 + 6) > *(*a3 + 6))
  {
    result = sub_2614DB518(a3, a4);
    if (*(*a3 + 6) > *(*a2 + 6))
    {
      result = sub_2614DB518(a2, a3);
      if (*(*a2 + 6) > *(*a1 + 24))
      {
        result = sub_2614DB518(a1, a2);
      }
    }
  }

  if (*(*a5 + 6) > *(*a4 + 6))
  {
    result = sub_2614DB518(a4, a5);
    if (*(*a4 + 6) > *(*a3 + 6))
    {
      result = sub_2614DB518(a3, a4);
      if (*(*a3 + 6) > *(*a2 + 6))
      {
        result = sub_2614DB518(a2, a3);
        if (*(*a2 + 6) > *(*a1 + 24))
        {

          return sub_2614DB518(a1, a2);
        }
      }
    }
  }

  return result;
}

BOOL sub_2614FEB98(atomic_uint **a1, atomic_uint **a2)
{
  v3 = a1;
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_2614FE95C(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        sub_2614FE95C(a1, a1 + 1, a1 + 2);
        v18 = *(a2 - 1);
        v17 = a2 - 1;
        if (*(v18 + 24) <= *(v3[2] + 6))
        {
          return 1;
        }

        sub_2614DB518(v3 + 2, v17);
        if (*(v3[2] + 6) <= *(v3[1] + 6))
        {
          return 1;
        }

        sub_2614DB518(v3 + 1, v3 + 2);
        if (*(v3[1] + 6) <= *(*v3 + 6))
        {
          return 1;
        }

        v5 = v3 + 1;
        a1 = v3;
        goto LABEL_6;
      case 5:
        sub_2614FEA38(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      if (*(*(a2 - 1) + 6) > *(*a1 + 6))
      {
        v5 = a2 - 1;
LABEL_6:
        sub_2614DB518(a1, v5);
      }

      return 1;
    }
  }

  v6 = a1 + 2;
  sub_2614FE95C(a1, a1 + 1, a1 + 2);
  v7 = v3 + 3;
  v8 = 1;
  if (v3 + 3 != a2)
  {
    v9 = 0;
    for (i = 24; ; i += 8)
    {
      v11 = *v7;
      if (*(*v7 + 6) > *(*v6 + 6))
      {
        atomic_fetch_add_explicit(v11 + 2, 1u, memory_order_relaxed);
        v12 = *v6;
        v13 = i;
        while (1)
        {
          if (v12)
          {
            atomic_fetch_add_explicit(v12 + 2, 1u, memory_order_relaxed);
          }

          v14 = *(v3 + v13);
          if (v14)
          {
            sub_2614705CC(v14);
          }

          *(v3 + v13) = v12;
          v15 = v13 - 8;
          if (v13 == 8)
          {
            break;
          }

          v12 = *(v3 + v13 - 16);
          v13 -= 8;
          if (*(v11 + 6) <= *(v12 + 6))
          {
            v16 = (v3 + v15);
            goto LABEL_24;
          }
        }

        v16 = v3;
LABEL_24:
        atomic_fetch_add_explicit(v11 + 2, 1u, memory_order_relaxed);
        if (*v16)
        {
          sub_2614705CC(*v16);
        }

        *v16 = v11;
        ++v9;
        sub_2614705CC(v11);
        if (v9 == 8)
        {
          break;
        }
      }

      v6 = v7++;
      if (v7 == a2)
      {
        return 1;
      }
    }

    return v7 + 1 == a2;
  }

  return v8;
}

void sub_2614FEDDC(uint64_t a1)
{
  sub_2614FEE14(a1);

  JUMPOUT(0x2667045D0);
}

uint64_t sub_2614FEE14(uint64_t a1)
{
  *a1 = &unk_2873D15F0;
  v5 = (a1 + 152);
  sub_261470CC4(&v5);
  v5 = (a1 + 128);
  sub_261470CC4(&v5);
  v2 = *(a1 + 120);
  if (v2)
  {
    sub_2614705CC(v2);
  }

  v5 = (a1 + 88);
  sub_261480A80(&v5);
  v5 = (a1 + 64);
  sub_261470CC4(&v5);
  v5 = (a1 + 40);
  sub_261480A80(&v5);
  v5 = (a1 + 16);
  sub_261470CC4(&v5);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_2614705CC(v3);
  }

  return a1;
}

uint64_t sub_2614FEED8(uint64_t a1, atomic_uint *a2, uint64_t *a3)
{
  if (a2)
  {
    atomic_fetch_add_explicit(a2 + 2, 1u, memory_order_relaxed);
    v6 = a2;
    sub_261518484(a1 + 8, &v6, a3);
    sub_2614705CC(a2);
  }

  else
  {
    v6 = 0;
    sub_261518484(a1 + 8, &v6, a3);
  }

  *a1 = &unk_2873D15F0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 100;
  return a1;
}

atomic_ullong *sub_2614FEF74(CVPixelBufferPoolRef *a1, uint64_t a2, atomic_ullong *a3)
{
  if (*a2 != 4)
  {
    goto LABEL_4;
  }

  v5 = 1278226534;
  v6 = *(a2 + 4);
  if (v6 == 3)
  {
    v5 = 1278226536;
    goto LABEL_10;
  }

  if (v6 == 6)
  {
LABEL_10:
    v18 = 0;
    v19 = 0;
    v31 = 0;
    v20 = 0;
    v21 = 0;
    v9 = *(a2 + 56);
    v10 = *(a2 + 64);
    v11 = 1;
    v12 = *(a2 + 48) * v9;
    v13 = 1;
    v14 = v5;
    v15 = 1;
    v17 = 1;
    v16 = 64;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 1;
    sub_2614E3314(a1, &v10, a3);
    return sub_26148E848(&v29 + 1);
  }

LABEL_4:
  if (qword_280CB3EE0 != -1)
  {
    dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
  }

  v7 = qword_280CB3ED8;
  if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v10) = 0;
    _os_log_error_impl(&dword_26146F000, v7, OS_LOG_TYPE_ERROR, "Unsupported input tensor data type", &v10, 2u);
  }

  v10 = -2001;
  v32 = @"Unsupported input tensor data type.";
  result = sub_261476754(a3, &v10, &v32);
  *a1 = 0;
  return result;
}

void sub_2614FF0FC(uint64_t *a1)
{
  v1 = *a1;
  if ((*a1 & 0xF) != 0 || (a1[3] & 0xF) != 0)
  {
    v11 = a1[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = sub_2614FF2B4;
    block[3] = &unk_279AD9118;
    block[4] = v1;
    block[5] = a1;
    v13 = 23544;
    dispatch_apply(v11, 0, block);
  }

  else if (a1[1])
  {
    v2 = 0;
    v3 = a1[2];
    v4 = vdup_n_s16(0x5BF8u);
    v5 = vdupq_n_s16(0x5BF8u);
    do
    {
      v6 = a1[3];
      if (v3 >= 8)
      {
        v7 = 0;
        v8 = (v1 + v6 * v2);
        do
        {
          *v8 = vmulq_f16(*v8, v5);
          ++v8;
          v7 += 8;
          v3 = a1[2];
        }

        while (v7 < (v3 & 0xFFFFFFFFFFFFFFF8));
      }

      else
      {
        v7 = 0;
      }

      if (v7 < (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        *(v1 + v6 * v2 + 2 * v7) = vmul_f16(*(v1 + v6 * v2 + 2 * v7), v4);
        v7 |= 4uLL;
        v3 = a1[2];
      }

      v9 = v3 - v7;
      if (v3 > v7)
      {
        v10 = (v1 + v6 * v2 + 2 * v7);
        do
        {
          *v10 = *v10 * COERCE_SHORT_FLOAT(23544);
          ++v10;
          --v9;
        }

        while (v9);
      }

      ++v2;
    }

    while (v2 < a1[1]);
  }
}

atomic_ullong *sub_2614FF258(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    *(a1 + 16) = sub_2614E1DC8(a1, 0, *(a1 + 8)) ^ 1;
  }

  return sub_2614776F0(a1);
}

__int16 sub_2614FF2B4@<H0>(uint64_t a1@<X0>, uint64_t a2@<X1>)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (*(a1 + 32) + *(v2 + 24) * a2);
    do
    {
      *&result = *v4 * *(a1 + 48);
      *v4++ = *&result;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2614FF2F4(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference7helpers39createNetworkInputPixelBufferFrom32BGRAERKNS0_4e5rt20E5RTTensorDescriptorERK13vImage_BufferRKNS_5CFRefIP19__CVPixelBufferPoolEERNSt3__18optionalINS_5ErrorEEERKNSG_IyEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614FF330(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3EE0 != -1)
  {
    dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3ED8;
    if (os_signpost_enabled(qword_280CB3ED8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_END, v2, "createNetworkInputPixelBufferFrom32BGRA", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2614FF468(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference7helpers39createNetworkInputPixelBufferFrom32BGRAERKNS0_4e5rt20E5RTTensorDescriptorERK13vImage_BufferRKNS_5CFRefIP19__CVPixelBufferPoolEERNSt3__18optionalINS_5ErrorEEERKNSG_IyEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614FF4A4(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3EE0 != -1)
  {
    dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3ED8;
    if (os_signpost_enabled(qword_280CB3ED8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "createNetworkInputPixelBufferFrom32BGRA", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2614FF5D0(uint64_t a1, atomic_ullong *a2, uint64_t a3)
{
  explicit = atomic_load_explicit(a2, memory_order_acquire);
  if (explicit)
  {
    explicit = CFRetain(explicit);
  }

  *a1 = explicit;
  *(a1 + 8) = a3;
  *(a1 + 16) = sub_2614E1C0C(a1, 0, a3);
  return a1;
}

void sub_2614FF630(const vImage_Buffer *a1, vImage_Buffer *a2, vImage_Buffer *a3, vImage_Buffer *a4)
{
  v50 = *MEMORY[0x277D85DE8];
  data = a1->data;
  if ((a1->data & 0xF) != 0 || (a1->rowBytes & 0xF) != 0 || (v9 = a2->data, (a2->data & 0xF) != 0) || (a2->rowBytes & 0xF) != 0 || (v10 = a3->data, (a3->data & 0xF) != 0) || (a3->rowBytes & 0xF) != 0 || (v11 = a4->data, (a4->data & 0xF) != 0) || (a4->rowBytes & 0xF) != 0)
  {
    v34 = MEMORY[0x266705020](&v39, a1->height, a1->width, 16, 0);
    if (v34)
    {
      if (qword_280CB3EE0 != -1)
      {
        dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
      }

      v35 = qword_280CB3ED8;
      if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_FAULT))
      {
        *buf = 134349056;
        v41 = v34;
        _os_log_fault_impl(&dword_26146F000, v35, OS_LOG_TYPE_FAULT, "vImageBuffer_Init failed: %{public}zd", buf, 0xCu);
      }
    }

    else
    {
      v36 = v39.data;
      if (qword_280CB3EE0 != -1)
      {
        dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
      }

      v37 = qword_280CB3ED8;
      if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136447234;
        v41 = "temporaryAlpha";
        v42 = 2050;
        v43 = v36;
        v44 = 2050;
        height = v39.height;
        v46 = 2050;
        width = v39.width;
        v48 = 2050;
        rowBytes = v39.rowBytes;
        _os_log_debug_impl(&dword_26146F000, v37, OS_LOG_TYPE_DEBUG, "Allocated %{public}s image buffer: data=%{public}p, height=%{public}zu, width=%{public}zu, rowBytes=%{public}zu", buf, 0x34u);
      }

      v38 = vImageConvert_ARGB16UtoPlanar16U(a1, a2, a3, a4, &v39, 0);
      if (v38)
      {
        if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
        {
          *buf = 134349056;
          v41 = v38;
          _os_log_fault_impl(&dword_26146F000, v37, OS_LOG_TYPE_FAULT, "vImageConvert_ARGB16UtoPlanar16U failed: %{public}zd", buf, 0xCu);
        }
      }

      else
      {
        sub_2614FF0FC(a2);
        sub_2614FF0FC(a3);
        sub_2614FF0FC(a4);
      }

      if (v36)
      {
        free(v36);
      }
    }
  }

  else if (a1->height)
  {
    v12 = 0;
    v13 = a1->width;
    v14 = vdup_n_s16(0x5BF8u);
    v15 = vdupq_n_s16(0x5BF8u);
    do
    {
      v16 = a1->rowBytes;
      v17 = a2->rowBytes;
      v18 = a3->rowBytes;
      v19 = a4->rowBytes;
      if (v13 >= 8)
      {
        v20 = 0;
        v21 = &data[v16 * v12];
        v22 = &v9[v17 * v12];
        v23 = &v10[v18 * v12];
        v24 = &v11[v19 * v12];
        do
        {
          v52 = vld4q_s16(v21);
          v21 += 32;
          *v22++ = vmulq_f16(v52.val[0], v15);
          *v23++ = vmulq_f16(v52.val[1], v15);
          *v24++ = vmulq_f16(v52.val[2], v15);
          v20 += 8;
          v13 = a1->width;
        }

        while (v20 < (v13 & 0xFFFFFFFFFFFFFFF8));
      }

      else
      {
        v20 = 0;
      }

      if (v20 < (v13 & 0xFFFFFFFFFFFFFFFCLL))
      {
        v25 = &data[8 * v20 + v16 * v12];
        v51 = vld4_s16(v25);
        v26 = 2 * v20;
        *&v9[v17 * v12 + v26] = vmul_f16(v51.val[0], v14);
        *&v10[v18 * v12 + v26] = vmul_f16(v51.val[1], v14);
        *&v11[v19 * v12 + v26] = vmul_f16(v51.val[2], v14);
        v20 |= 4uLL;
        v13 = a1->width;
      }

      v27 = v13 - v20;
      if (v13 > v20)
      {
        v28 = &v11[2 * v20 + v19 * v12];
        v29 = &v10[2 * v20 + v18 * v12];
        v30 = &v9[2 * v20 + v17 * v12];
        v31 = &data[8 * v20 + v16 * v12];
        do
        {
          v32 = *v31++;
          v33 = vmul_f16(v32, v14);
          *v30 = v33.i16[0];
          v30 += 2;
          *v29 = v33.i16[1];
          v29 += 2;
          *v28 = v33.i16[2];
          v28 += 2;
          --v27;
        }

        while (v27);
      }

      ++v12;
    }

    while (v12 < a1->height);
  }
}

void sub_2614FFA04(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    free(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2614FFA24(void *a1)
{
  v6 = 1132396544;
  v1 = a1[3];
  if ((v1 & 3) != 0 || v1 >= 4 * a1[2] + 64)
  {
    v3 = *a1;
    v2 = a1[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = sub_2614FFB48;
    block[3] = &unk_279AD9138;
    block[4] = v3;
    block[5] = a1;
    v5 = 1132396544;
    dispatch_apply(v2, 0, block);
  }

  else
  {
    MEMORY[0x266704FF0](*a1, 1, &v6, *a1, 1, a1[1] * (v1 >> 2));
  }
}

atomic_ullong *sub_2614FFAEC(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    *(a1 + 16) = sub_2614E1DC8(a1, 1, *(a1 + 8)) ^ 1;
  }

  return sub_2614776F0(a1);
}

uint64_t sub_2614FFB74(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference7helpers44createNetworkInputPixelBufferFromInterleavedERKNS0_4e5rt20E5RTTensorDescriptorERKNS_5CFRefIP10__CVBufferEERKNS6_IP19__CVPixelBufferPoolEERNSt3__18optionalINS_5ErrorEEERKNSI_IyEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614FFBB0(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3EE0 != -1)
  {
    dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3ED8;
    if (os_signpost_enabled(qword_280CB3ED8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_END, v2, "createNetworkInputPixelBufferFromInterleaved", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2614FFCE8(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference7helpers44createNetworkInputPixelBufferFromInterleavedERKNS0_4e5rt20E5RTTensorDescriptorERKNS_5CFRefIP10__CVBufferEERKNS6_IP19__CVPixelBufferPoolEERNSt3__18optionalINS_5ErrorEEERKNSI_IyEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2614FFD24(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3EE0 != -1)
  {
    dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3ED8;
    if (os_signpost_enabled(qword_280CB3ED8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "createNetworkInputPixelBufferFromInterleaved", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2614FFE50(unint64_t *a1, uint64_t a2, const vImage_Buffer *a3, atomic_ullong *a4, uint64_t a5, uint64_t a6)
{
  v42 = *MEMORY[0x277D85DE8];
  v37[0] = &unk_2873D69F8;
  v38 = v37;
  v36[0] = &unk_2873D6A78;
  v36[3] = v36;
  v39 = a6;
  sub_261489C64(v40, v36);
  if (*(v39 + 8) == 1 && v38 != 0)
  {
    sub_261489CFC(v38, *v39);
  }

  sub_261489D4C(v36);
  sub_261489D4C(v37);
  sub_2614E33C0(&v33, a4, a5);
  if (!atomic_load_explicit(&v33, memory_order_acquire))
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v13 = qword_280CB3ED8;
    if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.data) = 0;
      _os_log_error_impl(&dword_26146F000, v13, OS_LOG_TYPE_ERROR, "Failed to create input pixel buffer from pixel buffer pool", &buf, 2u);
    }

    goto LABEL_36;
  }

  if (CVPixelBufferIsPlanar(atomic_load_explicit(&v33, memory_order_acquire)))
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v12 = qword_280CB3ED8;
    if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.data) = 0;
      _os_log_error_impl(&dword_26146F000, v12, OS_LOG_TYPE_ERROR, "Invalid input pixel buffer", &buf, 2u);
    }

LABEL_35:
    buf.data = -2001;
    v30 = @"Invalid input pixel buffer.";
    sub_261476754(a5, &buf, &v30);
LABEL_36:
    *a1 = 0;
    goto LABEL_37;
  }

  Width = CVPixelBufferGetWidth(atomic_load_explicit(&v33, memory_order_acquire));
  Height = CVPixelBufferGetHeight(atomic_load_explicit(&v33, memory_order_acquire));
  PixelFormatType = CVPixelBufferGetPixelFormatType(atomic_load_explicit(&v33, memory_order_acquire));
  if (Width != *(a2 + 64) || Height != *(a2 + 56) || (v17 = PixelFormatType, PixelFormatType != 1278226534) && PixelFormatType != 1278226536)
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v23 = qword_280CB3ED8;
    if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.data) = 0;
      _os_log_error_impl(&dword_26146F000, v23, OS_LOG_TYPE_ERROR, "Invalid input pixel buffer", &buf, 2u);
    }

    goto LABEL_35;
  }

  explicit = atomic_load_explicit(&v33, memory_order_acquire);
  if (explicit)
  {
    explicit = CFRetain(explicit);
  }

  v30 = explicit;
  v31 = a5;
  v32 = sub_2614E1C0C(&v30, 0, a5);
  if ((v32 & 1) == 0)
  {
    if (qword_280CB3EE0 != -1)
    {
      dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
    }

    v25 = qword_280CB3ED8;
    if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
    {
      v28 = *(a5 + 24);
      LODWORD(buf.data) = 67240192;
      HIDWORD(buf.data) = v28;
      _os_log_error_impl(&dword_26146F000, v25, OS_LOG_TYPE_ERROR, "CVPixelBufferLockBaseAddress failed: %{public}d", &buf, 8u);
    }

    *a1 = 0;
    goto LABEL_56;
  }

  BaseAddress = CVPixelBufferGetBaseAddress(atomic_load_explicit(&v33, memory_order_acquire));
  BytesPerRow = CVPixelBufferGetBytesPerRow(atomic_load_explicit(&v33, memory_order_acquire));
  buf.data = BaseAddress;
  buf.height = Height;
  buf.width = Width;
  buf.rowBytes = BytesPerRow;
  if (v17 != 1278226536)
  {
    v21 = vImageConvert_Planar8toPlanarF(a3, &buf, 255.0, 0.0, 0);
    if (v21)
    {
      if (qword_280CB3EE0 != -1)
      {
        dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
      }

      v26 = qword_280CB3ED8;
      if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
      {
        *v34 = 134349056;
        *&v34[4] = v21;
        _os_log_error_impl(&dword_26146F000, v26, OS_LOG_TYPE_ERROR, "vImageConvert_Planar8toPlanarF failed: %{public}zd", v34, 0xCu);
      }

      *v34 = -2005;
      v29 = @"vImageConvert_Planar8toPlanarF failed.";
      sub_261476754(a5, v34, &v29);
      goto LABEL_52;
    }

LABEL_54:
    v27 = atomic_exchange(&v33, 0);
    goto LABEL_55;
  }

  v21 = vImageConvert_Planar8toPlanar16F(a3, &buf, 0);
  if (!v21)
  {
    sub_2614FF0FC(&buf);
    goto LABEL_54;
  }

  if (qword_280CB3EE0 != -1)
  {
    dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
  }

  v22 = qword_280CB3ED8;
  if (os_log_type_enabled(qword_280CB3ED8, OS_LOG_TYPE_ERROR))
  {
    *v34 = 134349056;
    *&v34[4] = v21;
    _os_log_error_impl(&dword_26146F000, v22, OS_LOG_TYPE_ERROR, "vImageConvert_Planar8toPlanar16F failed: %{public}zd", v34, 0xCu);
  }

  *v34 = -2005;
  v29 = @"vImageConvert_Planar8toPlanar16F failed.";
  sub_261476754(a5, v34, &v29);
LABEL_52:
  v27 = 0;
  *(a5 + 32) = v21;
  *(a5 + 40) = 1;
LABEL_55:
  *a1 = v27;
LABEL_56:
  if (v32 == 1)
  {
    v32 = sub_2614E1DC8(&v30, 0, v31) ^ 1;
  }

  sub_2614776F0(&v30);
LABEL_37:
  sub_2614776F0(&v33);
  if (*(v39 + 8) == 1 && v41)
  {
    sub_261489CFC(v41, *v39);
  }

  return sub_261489D4C(v40);
}

void sub_261500464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_2614FF258(va);
  sub_2614776F0(va1);
  sub_261489DCC((v3 - 128));
  _Unwind_Resume(a1);
}

uint64_t sub_261500518(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference7helpers46createNetworkInputPixelBufferFromOneComponent8ERKNS0_4e5rt20E5RTTensorDescriptorERK13vImage_BufferRKNS_5CFRefIP19__CVPixelBufferPoolEERNSt3__18optionalINS_5ErrorEEERKNSG_IyEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_261500554(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3EE0 != -1)
  {
    dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3ED8;
    if (os_signpost_enabled(qword_280CB3ED8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_END, v2, "createNetworkInputPixelBufferFromOneComponent8", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_26150068C(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference7helpers46createNetworkInputPixelBufferFromOneComponent8ERKNS0_4e5rt20E5RTTensorDescriptorERK13vImage_BufferRKNS_5CFRefIP19__CVPixelBufferPoolEERNSt3__18optionalINS_5ErrorEEERKNSG_IyEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2615006C8(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3EE0 != -1)
  {
    dispatch_once(&qword_280CB3EE0, &unk_2873D06E0);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB3ED8;
    if (os_signpost_enabled(qword_280CB3ED8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "createNetworkInputPixelBufferFromOneComponent8", &unk_26159692B, v4, 2u);
    }
  }
}

void *sub_2615007F4(void *a1, uint64_t a2, atomic_uint **a3, __int128 *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  (*(*a2 + 16))(&v26, a2);
  v6 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(v26 + 2, 1u, memory_order_relaxed);
    v17.__vftable = v6;
    sub_261511CFC(v27, &v17);
    sub_2614705CC(v6);
  }

  else
  {
    v17.__vftable = 0;
    sub_261511CFC(v27, &v17);
  }

  v27[0] = &unk_2873D1618;
  if (v26)
  {
    sub_2614705CC(v26);
  }

  v22 = *a4;
  v23 = *(a4 + 16);
  v7 = *(a4 + 3);
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 2, 1u, memory_order_relaxed);
  }

  v24 = v7;
  sub_2614F5B18(v27, a3, v25);
  if (v7)
  {
    sub_2614705CC(v7);
  }

  if (v25[1] != v25[0])
  {
    v8 = *v25[0];
    v17.__vftable = 0;
    v18 = 0;
    v19 = 0;
    sub_261470BE0(&v17, *(v8 + 16), *(v8 + 24), (*(v8 + 24) - *(v8 + 16)) >> 3);
    v9 = *(*v25[0] + 64);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1u, memory_order_relaxed);
      v10 = *(v9 + 16);
      sub_2614705CC(v9);
    }

    else
    {
      v10 = MEMORY[0x10];
    }

    v11 = v17.__vftable;
    if (v18 - v17.__vftable >= 0x19)
    {
      v12 = v17.__vftable[1].~exception;
      if (v12)
      {
        atomic_fetch_add_explicit(v12 + 2, 1u, memory_order_relaxed);
      }
    }

    v13 = *(*v25[0] + 72);
    if (v13)
    {
      atomic_fetch_add_explicit(v13 + 2, 1u, memory_order_relaxed);
    }

    sub_2614BCA58(&v21, ((v18 - v11) >> 3) + 4);
    sub_26148F908(&__p, 8uLL);
    v14 = __p;
    *__p = 0;
    *(v14 + 2) = 0;
    *v15.i32 = v10;
    *(v14 + 12) = vdupq_lane_s32(v15, 0);
    *(v14 + 7) = 0;
    (*(*v13 + 16))(v13, &__p);
    operator new();
  }

  v17.__vftable = v25;
  sub_261480A80(&v17);
  return sub_2614F7874(v27);
}

void sub_261500FA4()
{
  if (v0)
  {
    sub_2614705CC(v0);
  }

  sub_2614F7874((v1 - 136));
  JUMPOUT(0x261500FC4);
}

uint64_t sub_261500FD8(uint64_t a1, uint64_t a2, CFTypeRef cf)
{
  *a1 = a2;
  if (cf)
  {
    v4 = CFRetain(cf);
  }

  else
  {
    v4 = 0;
  }

  v7 = v4;
  if (atomic_load_explicit(&v7, memory_order_acquire))
  {
    Copy = CFStringCreateCopy(*MEMORY[0x277CBECE8], atomic_load_explicit(&v7, memory_order_acquire));
  }

  else
  {
    Copy = 0;
  }

  *(a1 + 8) = Copy;
  sub_26148E848(&v7);
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  return a1;
}

void sub_261501084(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_26148E848(va);
  _Unwind_Resume(a1);
}

atomic_ullong *sub_261501098(atomic_ullong *a1)
{
  sub_26148D93C(a1 + 11);
  sub_26148E848(a1 + 10);
  sub_2614E9EB0(a1 + 9);
  sub_261476C54(a1 + 8);
  sub_26148E848(a1 + 1);
  return a1;
}

uint64_t sub_2615010E4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  explicit = atomic_load_explicit((a2 + 8), memory_order_acquire);
  v5 = MEMORY[0x277CBECE8];
  if (explicit)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x277CBECE8], atomic_load_explicit((a2 + 8), memory_order_acquire));
  }

  else
  {
    Copy = 0;
  }

  *(a1 + 8) = Copy;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v7 = atomic_load_explicit((a2 + 64), memory_order_acquire);
  if (v7)
  {
    v7 = CFRetain(v7);
  }

  *(a1 + 64) = v7;
  v8 = atomic_load_explicit((a2 + 72), memory_order_acquire);
  if (v8)
  {
    v8 = CFRetain(v8);
  }

  *(a1 + 72) = v8;
  if (atomic_load_explicit((a2 + 80), memory_order_acquire))
  {
    v9 = CFStringCreateCopy(*v5, atomic_load_explicit((a2 + 80), memory_order_acquire));
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 80) = v9;
  if (atomic_load_explicit((a2 + 88), memory_order_acquire))
  {
    v10 = CFDictionaryCreateCopy(*v5, atomic_load_explicit((a2 + 88), memory_order_acquire));
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 88) = v10;
  return a1;
}

void sub_2615011E8(_Unwind_Exception *a1)
{
  sub_26148E848(v1 + 10);
  sub_2614E9EB0(v1 + 9);
  sub_261476C54(v1 + 8);
  sub_26148E848(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_26150122C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = -1;
  *result = v2;
  *(result + 8) = atomic_exchange(a2 + 1, 0);
  v3 = a2[2];
  if ((v3 & 0x100000000) != 0)
  {
    *(a2 + 20) = 0;
  }

  *(result + 16) = v3;
  *(result + 20) = BYTE4(v3);
  v4 = a2[3];
  if ((v4 & 0x100000000) != 0)
  {
    *(a2 + 28) = 0;
  }

  *(result + 24) = v4;
  *(result + 28) = BYTE4(v4);
  v6 = a2[4];
  v5 = a2[5];
  if (v5)
  {
    *(a2 + 40) = 0;
  }

  *(result + 32) = v6;
  *(result + 40) = v5;
  v7 = a2[6];
  if ((v7 & 0x100000000) != 0)
  {
    *(a2 + 52) = 0;
  }

  *(result + 48) = v7;
  *(result + 52) = BYTE4(v7);
  v8 = a2[7];
  if ((v8 & 0x100000000) != 0)
  {
    *(a2 + 60) = 0;
  }

  *(result + 56) = v8;
  *(result + 60) = BYTE4(v8);
  *(result + 64) = atomic_exchange(a2 + 8, 0);
  *(result + 72) = atomic_exchange(a2 + 9, 0);
  *(result + 80) = atomic_exchange(a2 + 10, 0);
  *(result + 88) = atomic_exchange(a2 + 11, 0);
  return result;
}

void sub_2615012F0(uint64_t a1, int a2)
{
  if (a2)
  {
    v5 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE48], a2, 0);
    v3 = atomic_exchange((a1 + 64), atomic_exchange(&v5, 0));
    if (v3)
    {
      CFRelease(v3);
    }

    sub_261476C54(&v5);
  }

  else
  {
    v4 = atomic_exchange((a1 + 64), 0);
    if (v4)
    {

      CFRelease(v4);
    }
  }
}

void sub_261501394(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_261476C54(va);
  _Unwind_Resume(a1);
}

void sub_2615013A8(uint64_t a1, int a2)
{
  if (a2)
  {
    v5 = CFErrorCreate(*MEMORY[0x277CBECE8], *MEMORY[0x277CBEE40], a2, 0);
    v3 = atomic_exchange((a1 + 64), atomic_exchange(&v5, 0));
    if (v3)
    {
      CFRelease(v3);
    }

    sub_261476C54(&v5);
  }

  else
  {
    v4 = atomic_exchange((a1 + 64), 0);
    if (v4)
    {

      CFRelease(v4);
    }
  }
}

void sub_26150144C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_261476C54(va);
  _Unwind_Resume(a1);
}

void sub_261501460(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 23) < 0)
  {
    if (!a2[1])
    {
      goto LABEL_10;
    }

    a2 = *a2;
  }

  else if (!*(a2 + 23))
  {
LABEL_10:
    v4 = atomic_exchange((a1 + 80), 0);
    if (v4)
    {

      CFRelease(v4);
    }

    return;
  }

  v5 = CFStringCreateWithFileSystemRepresentation(*MEMORY[0x277CBECE8], a2);
  v3 = atomic_exchange((a1 + 80), atomic_exchange(&v5, 0));
  if (v3)
  {
    CFRelease(v3);
  }

  sub_26148E848(&v5);
}

void sub_261501504(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_26148E848(va);
  _Unwind_Resume(a1);
}

atomic_ullong *sub_261501518(CFErrorRef *a1, uint64_t a2)
{
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (atomic_load_explicit((a2 + 8), memory_order_acquire))
  {
    explicit = atomic_load_explicit(&Mutable, memory_order_acquire);
    CFDictionarySetValue(explicit, *MEMORY[0x277CBEE30], atomic_load_explicit((a2 + 8), memory_order_acquire));
  }

  if (*(a2 + 20) == 1 && *(a2 + 16))
  {
    valuePtr = CFNumberCreate(v4, kCFNumberIntType, (a2 + 16));
    CFDictionarySetValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"MRCErrorACBSReturnKey", atomic_load_explicit(&valuePtr, memory_order_acquire));
    sub_2614769D8(&valuePtr);
  }

  if (*(a2 + 28) == 1 && *(a2 + 24))
  {
    valuePtr = CFNumberCreate(v4, kCFNumberSInt32Type, (a2 + 24));
    CFDictionarySetValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"MRCErrorCVReturnKey", atomic_load_explicit(&valuePtr, memory_order_acquire));
    sub_2614769D8(&valuePtr);
  }

  if (*(a2 + 40) == 1 && *(a2 + 32))
  {
    valuePtr = CFNumberCreate(v4, kCFNumberCFIndexType, (a2 + 32));
    CFDictionarySetValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"MRCErrorvImaggeErrorKey", atomic_load_explicit(&valuePtr, memory_order_acquire));
    sub_2614769D8(&valuePtr);
  }

  if (*(a2 + 52) == 1 && *(a2 + 48))
  {
    v6 = atomic_load_explicit(&Mutable, memory_order_acquire);
    valuePtr = *(a2 + 48);
    v17 = CFNumberCreate(v4, kCFNumberSInt64Type, &valuePtr);
    CFDictionarySetValue(v6, @"MRCErrorE5RTErrorCodeKey", atomic_load_explicit(&v17, memory_order_acquire));
    sub_2614769D8(&v17);
    v7 = atomic_load_explicit(&Mutable, memory_order_acquire);
    v8 = *(a2 + 48);
    v9 = sub_261483F20();
    v10 = (*v9)(v8);
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = "";
    }

    valuePtr = CFStringCreateWithCStringNoCopy(v4, v11, 0x8000100u, *MEMORY[0x277CBED00]);
    CFDictionarySetValue(v7, @"MRCErrorE5RTErrorCodeStringKey", atomic_load_explicit(&valuePtr, memory_order_acquire));
    sub_26148E848(&valuePtr);
  }

  if (*(a2 + 60) == 1 && *(a2 + 56))
  {
    v12 = atomic_load_explicit(&Mutable, memory_order_acquire);
    LODWORD(v17) = *(a2 + 56);
    valuePtr = CFNumberCreate(v4, kCFNumberSInt32Type, &v17);
    CFDictionarySetValue(v12, @"MRCErrorKernReturnKey", atomic_load_explicit(&valuePtr, memory_order_acquire));
    sub_2614769D8(&valuePtr);
  }

  if (atomic_load_explicit((a2 + 64), memory_order_acquire))
  {
    v13 = atomic_load_explicit(&Mutable, memory_order_acquire);
    CFDictionarySetValue(v13, *MEMORY[0x277CBEE78], atomic_load_explicit((a2 + 64), memory_order_acquire));
  }

  if (atomic_load_explicit((a2 + 72), memory_order_acquire))
  {
    v14 = atomic_load_explicit(&Mutable, memory_order_acquire);
    CFDictionarySetValue(v14, *MEMORY[0x277CBEE70], atomic_load_explicit((a2 + 72), memory_order_acquire));
  }

  if (atomic_load_explicit((a2 + 80), memory_order_acquire))
  {
    v15 = atomic_load_explicit(&Mutable, memory_order_acquire);
    CFDictionarySetValue(v15, *MEMORY[0x277CBEE50], atomic_load_explicit((a2 + 80), memory_order_acquire));
  }

  if (atomic_load_explicit((a2 + 88), memory_order_acquire))
  {
    CFDictionaryApplyFunction(atomic_load_explicit((a2 + 88), memory_order_acquire), sub_2615018E8, atomic_load_explicit(&Mutable, memory_order_acquire));
  }

  *a1 = CFErrorCreate(v4, @"MRCErrorDomain", *a2, atomic_load_explicit(&Mutable, memory_order_acquire));
  return sub_2614769A4(&Mutable);
}

void sub_261501880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  sub_26148E848(va1);
  sub_2614769A4(va);
  _Unwind_Resume(a1);
}

void sub_2615018E8(void *key, const void *a2, CFDictionaryRef theDict)
{
  v9 = *MEMORY[0x277D85DE8];
  if (CFDictionaryGetValue(theDict, key))
  {
    if (qword_280CB3ED0 != -1)
    {
      dispatch_once(&qword_280CB3ED0, &unk_2873D6788);
    }

    v6 = qword_280CB3EC8;
    if (os_log_type_enabled(qword_280CB3EC8, OS_LOG_TYPE_DEBUG))
    {
      v7 = 138543362;
      v8 = key;
      _os_log_debug_impl(&dword_26146F000, v6, OS_LOG_TYPE_DEBUG, "MRCError: extraUserInfo: key %{public}@ already exists, skipping...", &v7, 0xCu);
    }
  }

  else
  {

    CFDictionarySetValue(theDict, key, a2);
  }
}

void sub_261501A1C(std::exception *a1)
{
  sub_2614EB578(a1);

  JUMPOUT(0x2667045D0);
}

void *sub_261501A58(uint64_t a1, char *a2)
{
  result = sub_2614EB5DC(a1, a2);
  *result = &unk_2873D19B0;
  return result;
}

void sub_261501A8C(void *a1)
{
  *a1 = &unk_2873D1428;
  v2 = a1[4];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_2614705CC(v3);
  }

  JUMPOUT(0x2667045D0);
}

void *sub_261501B04(void *a1)
{
  *a1 = &unk_2873D1428;
  v2 = a1[4];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_2614705CC(v3);
  }

  return a1;
}

uint64_t sub_261501B5C(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0;
  *a1 = &unk_2873D1428;
  *(a1 + 16) = 0;
  v4 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    v5 = *(a1 + 16);
    if (v5)
    {
      sub_2614705CC(v5);
    }
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = v4;
  *(a1 + 40) = 0;
  if (*(*a2 + 16) < 0x15uLL || (*(*a2 + 16) & 3) != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2614EB5DC(exception, "Dimension must be 1 mod 4 and >= 21");
    *exception = &unk_2873D19D8;
    __cxa_throw(exception, &unk_2873D2BF8, sub_26152411C);
  }

  return a1;
}

void sub_261501C4C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    sub_2614705CC(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    sub_2614705CC(v4);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *sub_261501C80(atomic_uint *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
    *result = v2;
    return result;
  }

  v45 = result;
  v4 = 0;
  v5 = 0;
  v6 = *(a2 + 16);
  do
  {
    v5 = sub_261470964(v6, v4++, 8) | (2 * v5);
  }

  while (v4 != 6);
  v8 = v6[3];
  v7 = v6[4];
  v9 = v6[6];
  v10 = v6[7];
  v11 = -v10;
  v12 = (v7 - 8) & -v10;
  LOBYTE(v10) = v10 - 1;
  v13 = v6[2];
  v14 = (v13 - 9) & v11;
  v15 = (v14 | v10 & 7) + (v12 | v10 & 8) * v8;
  v16 = (4 * v5) | (2 * ((*(v9 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v15) & 1));
  v17 = (v7 - 9) & v11;
  v18 = (v14 | v10 & 8) + (v17 | v10 & 8) * v8;
  v19 = v16 & 0xFFFFFFFE | (*(v9 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v18) & 1;
  v20 = ((v13 - 8) & v11 | v10 & 8) + (v17 | v10 & 7) * v8;
  v21 = (*(v9 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v20) & 1 | (2 * v19);
  v22 = ((v13 - 6) & v11 | v10 & 8) + (v17 | v10 & 5) * v8;
  v23 = (*(v9 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v22) & 1;
  for (i = 4; ; --i)
  {
    v25 = v23 & 1 | (2 * v21);
    if (i == -1)
    {
      break;
    }

    LOBYTE(v23) = sub_261470964(v6, 8, i);
    v21 = v25;
  }

  v26 = 0;
  v27 = 65793 * (((2 * (v21 >> 7)) | ((2 * v21) >> 8 << 11)) & 0x22110 | ((32 * (v21 >> 7)) | ((2 * v21) >> 8 << 15)) & 0x88440);
  v46 = (65793 * (((2 * (v23 & 1 | (2 * v21))) | ((v23 & 1 | (2 * v21)) << 11)) & 0x22110 | ((32 * (v23 & 1 | (2 * v21))) | ((v23 & 1 | (2 * v21)) << 15)) & 0x88440u)) >> 9;
  v28 = v13 << 32;
  v29 = ((v13 << 32) - 0x100000000) >> 32;
  v30 = (v13 << 32) - 0x700000000;
  v31 = v29;
  v32 = v30 >> 32;
  do
  {
    v26 = sub_261470964(v6, 8, v31) | (2 * v26);
    v33 = v31-- <= v32;
  }

  while (!v33);
  v34 = (v27 >> 17) & 0x7F;
  v35 = (v28 - 0x800000000) >> 32;
  v36 = v28 >> 32;
  v37 = v35;
  do
  {
    v26 = sub_261470964(v6, v37++, 8) | (2 * v26);
  }

  while (v37 < v36);
  v38 = 0;
  do
  {
    v38 = sub_261470964(v6, v29, 8) | (2 * v38);
    v33 = v29-- <= v32;
  }

  while (!v33);
  do
  {
    v38 = sub_261470964(v6, 8, v35++) | (2 * v38);
  }

  while (v35 < v36);
  sub_26151A754(&v47, v25, v26);
  v39 = v47;
  if (v47)
  {
    atomic_fetch_add_explicit(v47 + 2, 1u, memory_order_relaxed);
    v40 = v48;
    sub_2614705CC(v39);
  }

  else
  {
    v40 = v48;
  }

  sub_26151A754(&v47, v34 | v46 & 0x7F80, v38);
  v41 = v47;
  if (!v47)
  {
    v42 = v48;
    if (!v39)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  atomic_fetch_add_explicit(v47 + 2, 1u, memory_order_relaxed);
  v42 = v48;
  sub_2614705CC(v41);
  if (v39)
  {
LABEL_23:
    atomic_fetch_add_explicit(v39 + 2, 1u, memory_order_relaxed);
  }

LABEL_24:
  result = *(a2 + 32);
  if (result)
  {
    result = sub_2614705CC(result);
  }

  *(a2 + 32) = v39;
  v43 = v39;
  if (v42 < v40)
  {
    result = v39;
    if (v41)
    {
      atomic_fetch_add_explicit(v41 + 2, 1u, memory_order_relaxed);
      result = *(a2 + 32);
    }

    if (result)
    {
      result = sub_2614705CC(result);
    }

    *(a2 + 32) = v41;
    *(a2 + 40) = 1;
    v43 = v41;
  }

  if (!v43)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2614EB5DC(exception, "Could not decode format information");
    *exception = &unk_2873D19D8;
    __cxa_throw(exception, &unk_2873D2BF8, sub_26152411C);
  }

  atomic_fetch_add_explicit(v43 + 2, 1u, memory_order_relaxed);
  *v45 = v43;
  if (v41)
  {
    result = sub_2614705CC(v41);
  }

  if (v39)
  {

    return sub_2614705CC(v39);
  }

  return result;
}

void sub_2615020D8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_2614705CC(v2);
  }

  if (v1)
  {
    sub_2614705CC(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_261502114(uint64_t a1)
{
  result = *(a1 + 24);
  if (!result)
  {
    v3 = *(a1 + 16);
    v4 = v3[2];
    v5 = (v4 - 17) >> 2;
    if (v5 >= 7)
    {
      v6 = 0;
      v7 = ((v4 << 32) - 0xB00000000) >> 32;
      v8 = 5;
      do
      {
        v9 = v8;
        v10 = ((v4 << 32) - 0x900000000) >> 32;
        do
        {
          v6 = sub_261470964(v3, v10, v9) | (2 * v6);
          v11 = v10-- <= v7;
        }

        while (!v11);
        v8 = v9 - 1;
      }

      while (v9);
      result = sub_261522C40(v6);
      *(a1 + 24) = result;
      if (!result || 4 * *(result + 12) + 17 != v4)
      {
        v12 = 0;
        v13 = *(a1 + 16);
        v14 = 5;
        do
        {
          v15 = v14;
          v16 = ((v4 << 32) - 0x900000000) >> 32;
          do
          {
            v12 = sub_261470964(v13, v15, v16) | (2 * v12);
            v11 = v16-- <= v7;
          }

          while (!v11);
          v14 = v15 - 1;
        }

        while (v15);
        result = sub_261522C40(v12);
        *(a1 + 24) = result;
        if (!result || 4 * *(result + 12) + 17 != v4)
        {
          exception = __cxa_allocate_exception(0x20uLL);
          sub_261524120(exception, "Could not decode version");
          __cxa_throw(exception, &unk_2873D2BF8, sub_26152411C);
        }
      }
    }

    else
    {

      return sub_26151C908(v5);
    }
  }

  return result;
}

uint64_t sub_2615022C4(uint64_t a1, atomic_ullong *a2, uint64_t a3, __CFString *a4)
{
  v64 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64))
  {
    v49[0] = &unk_2873CFD20;
    v50 = v49;
    v51 = a4;
    v48[0] = &unk_2873CFCC8;
    v48[3] = v48;
    sub_261489C64(v52, v48);
    if (*(v51 + 8) == 1 && v50 != 0)
    {
      sub_261489CFC(v50, *v51);
    }

    sub_261489D4C(v48);
    sub_261489D4C(v49);
    if (atomic_load_explicit(a2, memory_order_acquire))
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType(atomic_load_explicit(a2, memory_order_acquire));
      if (PixelFormatType == 875704422 || PixelFormatType == 875704438 || PixelFormatType == 1278226488)
      {
        if (sub_2614F54AC(a2, a3))
        {
          v59[0] = &unk_2873CFDD0;
          v60 = v59;
          v61 = a4;
          v58[0] = &unk_2873CFD78;
          v58[3] = v58;
          sub_261489C64(v62, v58);
          if (LOBYTE(v61->info) == 1 && v60)
          {
            sub_261489CFC(v60, v61->isa);
          }

          sub_261489D4C(v58);
          sub_261489D4C(v59);
          CVPixelBufferGetPixelFormatType(atomic_load_explicit(a2, memory_order_acquire));
          IsPlanar = CVPixelBufferIsPlanar(atomic_load_explicit(a2, memory_order_acquire));
          explicit = atomic_load_explicit(a2, memory_order_acquire);
          if (IsPlanar)
          {
            BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(explicit, 0);
            HeightOfPlane = CVPixelBufferGetHeightOfPlane(atomic_load_explicit(a2, memory_order_acquire), 0);
            WidthOfPlane = CVPixelBufferGetWidthOfPlane(atomic_load_explicit(a2, memory_order_acquire), 0);
            BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(atomic_load_explicit(a2, memory_order_acquire), 0);
          }

          else
          {
            BaseAddressOfPlane = CVPixelBufferGetBaseAddress(explicit);
            HeightOfPlane = CVPixelBufferGetHeight(atomic_load_explicit(a2, memory_order_acquire));
            WidthOfPlane = CVPixelBufferGetWidth(atomic_load_explicit(a2, memory_order_acquire));
            BytesPerRowOfPlane = CVPixelBufferGetBytesPerRow(atomic_load_explicit(a2, memory_order_acquire));
          }

          v22 = BytesPerRowOfPlane;
          if (*(a1 + 104) == 1)
          {
            v24 = *(a1 + 72);
            v23 = *(a1 + 80);
            if (v24 > v23 || v23 > WidthOfPlane || (v25 = *(a1 + 88), v26 = *(a1 + 96), v25 > v26) || v26 > HeightOfPlane)
            {
              if (qword_280CB3200 != -1)
              {
                dispatch_once(&qword_280CB3200, &unk_2873D0680);
              }

              v35 = qword_280CB31F8;
              if (os_log_type_enabled(qword_280CB31F8, OS_LOG_TYPE_ERROR))
              {
                v44 = *(a1 + 88);
                v45 = *(a1 + 96);
                LODWORD(buf.data) = 134349824;
                *(&buf.data + 4) = v24;
                WORD2(buf.height) = 2050;
                *(&buf.height + 6) = v23;
                HIWORD(buf.width) = 2050;
                buf.rowBytes = v44;
                v56 = 2050;
                v57 = v45;
                _os_log_error_impl(&dword_26146F000, v35, OS_LOG_TYPE_ERROR, "Invalid cropRect: xStart=%{public}zu, xEnd=%{public}zu, yStart=%{public}zu, yEnd=%{public}zu", &buf, 0x2Au);
              }

              buf.data = -6008;
              *v54 = @"Invalid cropRect.";
              sub_261476754(a3, &buf, v54);
              v17 = 0;
              goto LABEL_83;
            }

            if (qword_280CB3200 != -1)
            {
              dispatch_once(&qword_280CB3200, &unk_2873D0680);
            }

            v27 = qword_280CB31F8;
            if (os_log_type_enabled(qword_280CB31F8, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(buf.data) = 134349824;
              *(&buf.data + 4) = v24;
              WORD2(buf.height) = 2050;
              *(&buf.height + 6) = v23;
              HIWORD(buf.width) = 2050;
              buf.rowBytes = v25;
              v56 = 2050;
              v57 = v26;
              _os_log_debug_impl(&dword_26146F000, v27, OS_LOG_TYPE_DEBUG, "cropRect: xStart=%{public}zu, xEnd=%{public}zu, yStart=%{public}zu, yEnd=%{public}zu", &buf, 0x2Au);
              v25 = *(a1 + 88);
              v26 = *(a1 + 96);
              v24 = *(a1 + 72);
              v23 = *(a1 + 80);
            }

            HeightOfPlane = v26 - v25;
            src.data = &v24[v25 * v22 + BaseAddressOfPlane];
            src.height = v26 - v25;
            WidthOfPlane = v23 - v24;
          }

          else
          {
            if (qword_280CB3200 != -1)
            {
              dispatch_once(&qword_280CB3200, &unk_2873D0680);
            }

            v28 = qword_280CB31F8;
            if (os_log_type_enabled(qword_280CB31F8, OS_LOG_TYPE_DEBUG))
            {
              LOWORD(buf.data) = 0;
              _os_log_debug_impl(&dword_26146F000, v28, OS_LOG_TYPE_DEBUG, "cropRect: not set", &buf, 2u);
            }

            src.data = BaseAddressOfPlane;
            src.height = HeightOfPlane;
          }

          src.width = WidthOfPlane;
          src.rowBytes = v22;
          v29 = *(a1 + 48);
          *&buf.data = *(a1 + 32);
          *&buf.width = v29;
          v30 = HeightOfPlane;
          if (HeightOfPlane <= WidthOfPlane)
          {
            width = buf.width;
            p_height = &buf.height;
            v33 = vcvtas_u32_f32((buf.width / WidthOfPlane) * v30);
            height = v33;
          }

          else
          {
            p_height = &buf.width;
            height = buf.height;
            v33 = vcvtas_u32_f32((buf.height / v30) * WidthOfPlane);
            width = v33;
          }

          *p_height = v33;
          if (WidthOfPlane == width && HeightOfPlane == height)
          {
            v36 = vImageCopyBuffer(&src, &buf, 1uLL, 0);
            if (v36)
            {
              if (qword_280CB3200 != -1)
              {
                dispatch_once(&qword_280CB3200, &unk_2873D0680);
              }

              v37 = qword_280CB31F8;
              if (os_log_type_enabled(qword_280CB31F8, OS_LOG_TYPE_ERROR))
              {
                *v54 = 134349056;
                *&v54[4] = v36;
                _os_log_error_impl(&dword_26146F000, v37, OS_LOG_TYPE_ERROR, "vImageCopyBuffer failed: %{public}zd", v54, 0xCu);
              }

              *v54 = -6008;
              v46 = @"vImageCopyBuffer failed.";
              sub_261476754(a3, v54, &v46);
LABEL_75:
              v17 = 0;
              *(a3 + 32) = v36;
              *(a3 + 40) = 1;
LABEL_83:
              if (LOBYTE(v61->info) == 1 && v63 != 0)
              {
                sub_261489CFC(v63, v61->isa);
              }

              sub_261489D4C(v62);
              sub_2614F5408(a2, a3);
              goto LABEL_89;
            }
          }

          else
          {
            v36 = vImageScale_Planar8(&src, &buf, 0, 0);
            if (v36)
            {
              if (qword_280CB3200 != -1)
              {
                dispatch_once(&qword_280CB3200, &unk_2873D0680);
              }

              v38 = qword_280CB31F8;
              if (os_log_type_enabled(qword_280CB31F8, OS_LOG_TYPE_ERROR))
              {
                *v54 = 134349056;
                *&v54[4] = v36;
                _os_log_error_impl(&dword_26146F000, v38, OS_LOG_TYPE_ERROR, "vImageScale_Planar8 failed: %{public}zd", v54, 0xCu);
              }

              *v54 = -2004;
              v46 = @"vImageScale_Planar8 failed.";
              sub_261476754(a3, v54, &v46);
              goto LABEL_75;
            }

            if (HeightOfPlane <= WidthOfPlane)
            {
              bzero(buf.data + buf.rowBytes * buf.height, (*(a1 + 40) - buf.height) * buf.rowBytes);
            }

            else if (buf.height)
            {
              v39 = 0;
              do
              {
                bzero(buf.data + buf.rowBytes * v39++ + buf.width, *(a1 + 48) - buf.width);
              }

              while (v39 < buf.height);
            }
          }

          v17 = 1;
          goto LABEL_83;
        }

        if (qword_280CB3200 != -1)
        {
          dispatch_once(&qword_280CB3200, &unk_2873D0680);
        }

        v19 = qword_280CB31F8;
        if (os_log_type_enabled(qword_280CB31F8, OS_LOG_TYPE_ERROR))
        {
          v20 = *(a3 + 24);
          LODWORD(buf.data) = 67240192;
          HIDWORD(buf.data) = v20;
          _os_log_error_impl(&dword_26146F000, v19, OS_LOG_TYPE_ERROR, "CVPixelBufferLockBaseAddress failed: %{public}d", &buf, 8u);
        }
      }

      else
      {
        if (qword_280CB3200 != -1)
        {
          dispatch_once(&qword_280CB3200, &unk_2873D0680);
        }

        v21 = qword_280CB31F8;
        if (os_log_type_enabled(qword_280CB31F8, OS_LOG_TYPE_ERROR))
        {
          v43 = CVPixelBufferGetPixelFormatType(atomic_load_explicit(a2, memory_order_acquire));
          LODWORD(buf.data) = 67240192;
          HIDWORD(buf.data) = v43;
          _os_log_error_impl(&dword_26146F000, v21, OS_LOG_TYPE_ERROR, "Unsupported pixel format: %{public}u", &buf, 8u);
        }

        buf.data = -2001;
        v61 = @"Unsupported pixel format.";
        sub_261476754(a3, &buf, &v61);
      }
    }

    else
    {
      if (qword_280CB3200 != -1)
      {
        dispatch_once(&qword_280CB3200, &unk_2873D0680);
      }

      v18 = qword_280CB31F8;
      if (os_log_type_enabled(qword_280CB31F8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.data) = 0;
        _os_log_error_impl(&dword_26146F000, v18, OS_LOG_TYPE_ERROR, "Missing pixel buffer.", &buf, 2u);
      }

      buf.data = -6008;
      v61 = @"Missing pixel buffer.";
      sub_261476754(a3, &buf, &v61);
    }

    v17 = 0;
LABEL_89:
    if (*(v51 + 8) == 1 && v53 != 0)
    {
      sub_261489CFC(v53, *v51);
    }

    sub_261489D4C(v52);
    return v17;
  }

  if (qword_280CB3200 != -1)
  {
    dispatch_once(&qword_280CB3200, &unk_2873D0680);
  }

  v16 = qword_280CB31F8;
  if (os_log_type_enabled(qword_280CB31F8, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf.data) = 0;
    _os_log_error_impl(&dword_26146F000, v16, OS_LOG_TYPE_ERROR, "IIEImagePreprocessor is not ready.", &buf, 2u);
  }

  buf.data = -6008;
  v61 = @"IIEImagePreprocessor is not ready.";
  sub_261476754(a3, &buf, &v61);
  return 0;
}

void sub_261502C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t *a26)
{
  sub_261489DCC((v26 - 144));
  sub_2614AE910(&a10);
  sub_261489DCC(&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_261502D4C(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference3iie20IIEImagePreprocessor17resampleIfNeeded_ERKNS_6Sample11PixelBufferERKNS3_21ScopedPixelBufferLockILb1EEERNSt3__18optionalINS_5ErrorEEERKNSC_IyEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_261502D88(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3200 != -1)
  {
    dispatch_once(&qword_280CB3200, &unk_2873D0680);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB31F8;
    if (os_signpost_enabled(qword_280CB31F8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_END, v2, "IIEImagePreprocessor::resampleIfNeeded_", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_261502EC0(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference3iie20IIEImagePreprocessor17resampleIfNeeded_ERKNS_6Sample11PixelBufferERKNS3_21ScopedPixelBufferLockILb1EEERNSt3__18optionalINS_5ErrorEEERKNSC_IyEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_261502EFC(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3200 != -1)
  {
    dispatch_once(&qword_280CB3200, &unk_2873D0680);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB31F8;
    if (os_signpost_enabled(qword_280CB31F8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "IIEImagePreprocessor::resampleIfNeeded_", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_261503034(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference3iie20IIEImagePreprocessor3runERKNS_6Sample11PixelBufferERNSt3__18optionalINS_5ErrorEEERKNS8_IyEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_261503070(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3200 != -1)
  {
    dispatch_once(&qword_280CB3200, &unk_2873D0680);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB31F8;
    if (os_signpost_enabled(qword_280CB31F8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_END, v2, "IIEImagePreprocessor::run", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2615031A8(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference3iie20IIEImagePreprocessor3runERKNS_6Sample11PixelBufferERNSt3__18optionalINS_5ErrorEEERKNS8_IyEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2615031E4(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3200 != -1)
  {
    dispatch_once(&qword_280CB3200, &unk_2873D0680);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB31F8;
    if (os_signpost_enabled(qword_280CB31F8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "IIEImagePreprocessor::run", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_261503310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x277D85DE8];
  if (*(a1 + 64))
  {
    return 1;
  }

  v31[0] = &unk_2873CFC70;
  v32 = v31;
  v30[0] = &unk_2873CFC18;
  v30[3] = v30;
  v33 = a3;
  sub_261489C64(v34, v30);
  if (*(v33 + 8) == 1 && v32 != 0)
  {
    sub_261489CFC(v32, *v33);
  }

  sub_261489D4C(v30);
  sub_261489D4C(v31);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (!v7 || (v7 & 0xF) != 0 || !v8 || (v8 & 0xF) != 0)
  {
    if (qword_280CB3200 != -1)
    {
      dispatch_once(&qword_280CB3200, &unk_2873D0680);
    }

    v12 = qword_280CB31F8;
    if (os_log_type_enabled(qword_280CB31F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349312;
      *&buf[4] = v7;
      v22 = 2050;
      v23 = v8;
      _os_log_error_impl(&dword_26146F000, v12, OS_LOG_TYPE_ERROR, "Invalid image size: width=%{public}zu, height=%{public}zu", buf, 0x16u);
    }

    v20 = @"Invalid image size.";
    *buf = -6008;
    sub_261476754(a2, buf, &v20);
  }

  else
  {
    v9 = *(a1 + 24);
    if (v9 == 1278226488)
    {
      v3 = 1;
      if ((*(a1 + 64) & 1) == 0)
      {
        *(a1 + 32) = 0u;
        *(a1 + 48) = 0u;
        *(a1 + 64) = 1;
        v10 = MEMORY[0x266705020](a1 + 32, v8, v7, 8, 0);
        if (v10)
        {
          if (*(a1 + 64) == 1)
          {
            *(a1 + 64) = 0;
          }

          if (qword_280CB3200 != -1)
          {
            dispatch_once(&qword_280CB3200, &unk_2873D0680);
          }

          v11 = qword_280CB31F8;
          if (os_log_type_enabled(qword_280CB31F8, OS_LOG_TYPE_ERROR))
          {
            *buf = 134349056;
            *&buf[4] = v10;
            _os_log_error_impl(&dword_26146F000, v11, OS_LOG_TYPE_ERROR, "vImageBuffer_Init failed: %{public}zd", buf, 0xCu);
          }

          v20 = @"vImageBuffer_Init failed.";
          *buf = -2003;
          sub_261476754(a2, buf, &v20);
          v3 = 0;
          *(a2 + 32) = v10;
          *(a2 + 40) = 1;
        }

        else
        {
          if (qword_280CB3200 != -1)
          {
            dispatch_once(&qword_280CB3200, &unk_2873D0680);
          }

          v15 = qword_280CB31F8;
          if (os_log_type_enabled(qword_280CB31F8, OS_LOG_TYPE_DEBUG))
          {
            v16 = *(a1 + 32);
            v17 = *(a1 + 40);
            v18 = *(a1 + 48);
            v19 = *(a1 + 56);
            *buf = 136447234;
            *&buf[4] = "420Yp8";
            v22 = 2050;
            v23 = v16;
            v24 = 2050;
            v25 = v17;
            v26 = 2050;
            v27 = v18;
            v28 = 2050;
            v29 = v19;
            _os_log_debug_impl(&dword_26146F000, v15, OS_LOG_TYPE_DEBUG, "Allocated %{public}s image buffer: data=%{public}p, height=%{public}zu, width=%{public}zu, rowBytes=%{public}zu", buf, 0x34u);
          }
        }
      }

      goto LABEL_28;
    }

    if (qword_280CB3200 != -1)
    {
      dispatch_once(&qword_280CB3200, &unk_2873D0680);
    }

    v14 = qword_280CB31F8;
    if (os_log_type_enabled(qword_280CB31F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      *&buf[4] = v9;
      _os_log_error_impl(&dword_26146F000, v14, OS_LOG_TYPE_ERROR, "Unsupported pixel format type: %{public}u", buf, 8u);
    }

    v20 = @"Unsupported pixel format type.";
    *buf = -6008;
    sub_261476754(a2, buf, &v20);
  }

  v3 = 0;
LABEL_28:
  if (*(v33 + 8) == 1 && v35)
  {
    sub_261489CFC(v35, *v33);
  }

  sub_261489D4C(v34);
  return v3;
}

uint64_t sub_2615037B8(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference3iie20IIEImagePreprocessor7prepareERNSt3__18optionalINS_5ErrorEEERKNS4_IyEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2615037F4(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3200 != -1)
  {
    dispatch_once(&qword_280CB3200, &unk_2873D0680);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB31F8;
    if (os_signpost_enabled(qword_280CB31F8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_END, v2, "IIEImagePreprocessor::prepare", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_26150392C(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference3iie20IIEImagePreprocessor7prepareERNSt3__18optionalINS_5ErrorEEERKNS4_IyEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_261503968(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3200 != -1)
  {
    dispatch_once(&qword_280CB3200, &unk_2873D0680);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB31F8;
    if (os_signpost_enabled(qword_280CB31F8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "IIEImagePreprocessor::prepare", &unk_26159692B, v4, 2u);
    }
  }
}

BOOL sub_261503A9C(uint64_t a1, atomic_ullong *a2)
{
  result = 0;
  if (atomic_load_explicit(a2, memory_order_acquire))
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(atomic_load_explicit(a2, memory_order_acquire));
    v3 = PixelFormatType == 875704422 || PixelFormatType == 1278226488;
    if (v3 || PixelFormatType == 875704438)
    {
      return 1;
    }
  }

  return result;
}

void sub_261503AF8(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    free(*(a1 + 32));
  }

  JUMPOUT(0x2667045D0);
}

uint64_t sub_261503B50(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    free(*(a1 + 32));
  }

  return a1;
}

uint64_t sub_261503B88(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_261503BC8(uint64_t a1, void *a2, uint64_t a3, atomic_ullong *a4, uint64_t a5)
{
  v57 = *MEMORY[0x277D85DE8];
  v52[0] = &unk_2873D6C10;
  v53 = v52;
  v54 = a5;
  v51[0] = &unk_2873CF698;
  v51[3] = v51;
  sub_261489C64(v55, v51);
  if (*(v54 + 8) == 1 && v53 != 0)
  {
    sub_261489CFC(v53, *v54);
  }

  sub_261489D4C(v51);
  sub_261489D4C(v52);
  v10 = a2[1];
  v11 = *(v10 + 8);
  if (*(v11 + 64) != 4)
  {
    if (qword_280CB3200 != -1)
    {
      dispatch_once(&qword_280CB3200, &unk_2873D0680);
    }

    v29 = qword_280CB31F8;
    if (os_log_type_enabled(qword_280CB31F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26146F000, v29, OS_LOG_TYPE_ERROR, "Output heatmap buffer num of channels should be 4 for 4 corners.", buf, 2u);
    }

    *buf = -6009;
    *v50 = @"Output heatmap buffer not equals to 4.";
    sub_261476754(a4, buf, v50);
    goto LABEL_61;
  }

  v12 = *(v11 + 48) == 4 && *(v11 + 56) == 1;
  if (!v12 || *(v11 + 120) / *(v11 + 32) != 1)
  {
    if (qword_280CB3200 != -1)
    {
      dispatch_once(&qword_280CB3200, &unk_2873D0680);
    }

    v30 = qword_280CB31F8;
    if (os_log_type_enabled(qword_280CB31F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26146F000, v30, OS_LOG_TYPE_ERROR, "Unexpected output heatmap.", buf, 2u);
    }

    *buf = -6009;
    *v50 = @"Unexpected output heatmap.";
    sub_261476754(a4, buf, v50);
    goto LABEL_61;
  }

  v13 = a2[2];
  v14 = *(v13 + 8);
  if (*(v14 + 48) != 4 || *(v14 + 56) != 1 || *(v14 + 64) != 4 || (v15 = *(v11 + 72), *(v14 + 72) != v15) || (v16 = *(v11 + 80), *(v14 + 80) != v16) || *(v14 + 120) / *(v14 + 32) != 1 || (v17 = (v11 + 16), v18 = (v14 + 16), v19 = *(v14 + 16), v19 != *(v11 + 16)) || (v20 = *(v14 + 20), v20 != *(v11 + 20)))
  {
    if (qword_280CB3200 != -1)
    {
      dispatch_once(&qword_280CB3200, &unk_2873D0680);
    }

    v31 = qword_280CB31F8;
    if (os_log_type_enabled(qword_280CB31F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26146F000, v31, OS_LOG_TYPE_ERROR, "Unexpected output offset_x.", buf, 2u);
    }

    *buf = -6009;
    *v50 = @"Unexpected output offset_x.";
    sub_261476754(a4, buf, v50);
    goto LABEL_61;
  }

  v21 = a2[3];
  v22 = *(v21 + 8);
  if (*(v22 + 48) != 4 || *(v22 + 56) != 1 || *(v22 + 64) != 4 || *(v22 + 72) != v15 || *(v22 + 80) != v16 || *(v22 + 120) / *(v22 + 32) != 1 || *(v22 + 16) != v19 || *(v22 + 20) != v20)
  {
    if (qword_280CB3200 != -1)
    {
      dispatch_once(&qword_280CB3200, &unk_2873D0680);
    }

    v33 = qword_280CB31F8;
    if (os_log_type_enabled(qword_280CB31F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26146F000, v33, OS_LOG_TYPE_ERROR, "Unexpected output offset_y.", buf, 2u);
    }

    *buf = -6009;
    *v50 = @"Unexpected output offset_y.";
    sub_261476754(a4, buf, v50);
    goto LABEL_61;
  }

  v23 = a2[4];
  v24 = *(v23 + 8);
  if (*(v24 + 48) != 4 || *(v24 + 56) != 1 || *(v24 + 64) != 8 || *(v24 + 72) != 1 || *(v24 + 80) != 1 || *(v24 + 120) / *(v24 + 32) != 1 || *(v24 + 16) != v19 || *(v24 + 20) != v20)
  {
    if (qword_280CB3200 != -1)
    {
      dispatch_once(&qword_280CB3200, &unk_2873D0680);
    }

    v34 = qword_280CB31F8;
    if (os_log_type_enabled(qword_280CB31F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26146F000, v34, OS_LOG_TYPE_ERROR, "Unexpected output attributes.", buf, 2u);
    }

    *buf = -6009;
    *v50 = @"Unexpected output attributes.";
    sub_261476754(a4, buf, v50);
    goto LABEL_61;
  }

  v25 = *a2;
  v26 = *(*a2 + 8);
  if (*(v26 + 48) != 4 || *(v26 + 56) != 1 || *(v26 + 120) / *(v26 + 32) != 1 || *(v26 + 16) != v19 || *(v26 + 20) != v20)
  {
    if (qword_280CB3200 != -1)
    {
      dispatch_once(&qword_280CB3200, &unk_2873D0680);
    }

    v35 = qword_280CB31F8;
    if (os_log_type_enabled(qword_280CB31F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26146F000, v35, OS_LOG_TYPE_ERROR, "Unexpected output thresmap.", buf, 2u);
    }

    *buf = -6009;
    *v50 = @"Unexpected output thresmap.";
    sub_261476754(a4, buf, v50);
LABEL_61:
    *a1 = 0;
    *(a1 + 72) = 0;
    goto LABEL_62;
  }

  buf[0] = 0;
  v49 = 0;
  if (v19 != 4)
  {
    goto LABEL_81;
  }

  v27 = (v22 + 16);
  if (v20 != 6)
  {
    if (v20 == 3)
    {
      v28 = sub_2615044D4(buf, a3, (v25 + 24), (v10 + 24), (v13 + 24), (v21 + 24), (v23 + 24), (v26 + 16), v17, v18, v27, v24 + 16, a4);
      goto LABEL_90;
    }

LABEL_81:
    if (qword_280CB3200 != -1)
    {
      dispatch_once(&qword_280CB3200, &unk_2873D0680);
    }

    v36 = qword_280CB31F8;
    if (os_log_type_enabled(qword_280CB31F8, OS_LOG_TYPE_ERROR))
    {
      *v50 = 0;
      _os_log_error_impl(&dword_26146F000, v36, OS_LOG_TYPE_ERROR, "Unsupported output tensor data type", v50, 2u);
    }

    *v50 = -2001;
    v40 = @"Unsupported output tensor data type.";
    sub_261476754(a4, v50, &v40);
    goto LABEL_86;
  }

  v28 = sub_26150574C(buf, a3, (v25 + 24), (v10 + 24), (v13 + 24), (v21 + 24), (v23 + 24), (v26 + 16), v17, v18, v27, v24 + 16, a4);
LABEL_90:
  if (!v28)
  {
    if (qword_280CB3200 != -1)
    {
      dispatch_once(&qword_280CB3200, &unk_2873D0680);
    }

    v39 = qword_280CB31F8;
    if (os_log_type_enabled(qword_280CB31F8, OS_LOG_TYPE_INFO))
    {
      *v50 = 0;
      _os_log_impl(&dword_26146F000, v39, OS_LOG_TYPE_INFO, "Failed to postprocess.", v50, 2u);
    }

LABEL_86:
    v37 = 0;
    *a1 = 0;
    goto LABEL_87;
  }

  *a1 = *buf;
  *(a1 + 8) = v42;
  *(a1 + 24) = v43;
  *(a1 + 32) = v44;
  *(a1 + 48) = v45;
  *buf = 0;
  v44 = 0uLL;
  v45 = 0;
  *(a1 + 56) = v46;
  v38 = v47;
  *(a1 + 64) = v48;
  v37 = 1;
  *(a1 + 60) = v38;
LABEL_87:
  *(a1 + 72) = v37;
  if (v49 == 1)
  {
    sub_261503B88(buf);
  }

LABEL_62:
  if (*(v54 + 8) == 1 && v56)
  {
    sub_261489CFC(v56, *v54);
  }

  return sub_261489D4C(v55);
}

void sub_261504450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a24 == 1)
  {
    sub_261503B88(&a15);
  }

  sub_261489DCC((v24 - 96));
  _Unwind_Resume(a1);
}

BOOL sub_2615044D4(uint64_t a1, uint64_t a2, atomic_ullong *a3, atomic_ullong *a4, atomic_ullong *a5, atomic_ullong *a6, atomic_ullong *a7, void *a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13)
{
  v23 = a13;
  v213 = *MEMORY[0x277D85DE8];
  explicit = atomic_load_explicit(a3, memory_order_acquire);
  v159 = a1;
  if (explicit)
  {
    explicit = CFRetain(explicit);
  }

  v197 = explicit;
  v198 = 0;
  *v199 = *buf;
  *&v199[3] = *&buf[3];
  v200 = 0;
  *v201 = v190;
  *&v201[3] = *(&v190 + 3);
  v202 = a13;
  v203 = sub_2614E1F84(&v197, &v198, 1, a13);
  v25 = atomic_load_explicit(a4, memory_order_acquire);
  if (v25)
  {
    v25 = CFRetain(v25);
  }

  v190 = v25;
  v191 = 0;
  *v192 = *buf;
  *&v192[3] = *&buf[3];
  v193 = 0;
  *v194 = v183;
  *&v194[3] = *(&v183 + 3);
  v195 = a13;
  v196 = sub_2614E1F84(&v190, &v191, 0, a13);
  v26 = atomic_load_explicit(a5, memory_order_acquire);
  if (v26)
  {
    v26 = CFRetain(v26);
  }

  v183 = v26;
  v184 = 0;
  *v185 = *buf;
  *&v185[3] = *&buf[3];
  v186 = 0;
  *v187 = v176;
  *&v187[3] = *(&v176 + 3);
  v188 = a13;
  v189 = sub_2614E1F84(&v183, &v184, 1, a13);
  v27 = atomic_load_explicit(a6, memory_order_acquire);
  if (v27)
  {
    v27 = CFRetain(v27);
  }

  v176 = v27;
  v177 = 0;
  *v178 = *buf;
  *&v178[3] = *&buf[3];
  v179 = 0;
  *v180 = v169;
  *&v180[3] = *(&v169 + 3);
  v181 = a13;
  v182 = sub_2614E1F84(&v176, &v177, 1, a13);
  v28 = atomic_load_explicit(a7, memory_order_acquire);
  if (v28)
  {
    v28 = CFRetain(v28);
  }

  v169 = v28;
  v170 = 0;
  *v171 = *buf;
  *&v171[3] = *&buf[3];
  v172 = 0;
  *v173 = __p;
  *&v173[3] = *(&__p + 3);
  v174 = a13;
  v29 = sub_2614E1F84(&v169, &v170, 1, a13);
  v175 = v29;
  if (v203 != 1 || v196 != 1 || ((v189 & v182) & v29 & 1) == 0)
  {
    if (qword_280CB3200 != -1)
    {
      dispatch_once(&qword_280CB3200, &unk_2873D0680);
    }

    v47 = qword_280CB31F8;
    if (os_log_type_enabled(qword_280CB31F8, OS_LOG_TYPE_ERROR))
    {
      v90 = *(a13 + 56);
      *buf = 67240192;
      *&buf[4] = v90;
      _os_log_error_impl(&dword_26146F000, v47, OS_LOG_TYPE_ERROR, "IOSurfaceLock failed: %{public}d", buf, 8u);
    }

    goto LABEL_31;
  }

  BaseAddress = IOSurfaceGetBaseAddress(atomic_load_explicit(a3, memory_order_acquire));
  v31 = IOSurfaceGetBaseAddress(atomic_load_explicit(a4, memory_order_acquire));
  v163 = IOSurfaceGetBaseAddress(atomic_load_explicit(a5, memory_order_acquire));
  v162 = IOSurfaceGetBaseAddress(atomic_load_explicit(a6, memory_order_acquire));
  v32 = IOSurfaceGetBaseAddress(atomic_load_explicit(a7, memory_order_acquire));
  v35 = 0;
  v36 = 0;
  v38 = a9[7];
  v37 = a9[8];
  v165 = a9[6];
  v39 = a9[2];
  v40 = a10[2];
  _Q0.n128_u64[0] = 0;
  v42 = a11[2];
  v43 = *(a12 + 88) / *(a12 + 16);
  v44 = -1;
  do
  {
    v33.n128_u16[0] = v32[v35 * v43];
    if ((v36 & (*v33.n128_u16 <= *_Q0.n128_u16)) == 0)
    {
      _Q0.n128_u16[0] = v32[v35 * v43];
      v44 = v35;
    }

    ++v35;
    v36 = 1;
  }

  while (v35 != 6);
  if (v44 <= 5)
  {
    v45 = v44;
  }

  else
  {
    v45 = 0;
  }

  if (v44 >= 6)
  {
    if (qword_280CB3200 != -1)
    {
      dispatch_once(&qword_280CB3200, &unk_2873D0680);
    }

    v46 = qword_280CB31F8;
    if (os_log_type_enabled(qword_280CB31F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26146F000, v46, OS_LOG_TYPE_ERROR, "Invalid category yielded from attributes.", buf, 2u);
    }

    *buf = -6009;
    __p = @"Invalid category yielded from attributes.";
    sub_261476754(a13, buf, &__p);
LABEL_31:
    v48 = 0;
    goto LABEL_32;
  }

  v50 = a9[12] / v39;
  v161 = a10[12] / v40;
  v51 = *&v32[6 * v43];
  v152 = a8[2];
  v153 = *(a2 + 8);
  __asm { FCMP            H0, #0 }

  if (_NF ^ _VF | _ZF)
  {
    v56 = 0;
  }

  else
  {
    v56 = 1;
  }

  v154 = v56;
  v155 = v45;
  v160 = a11[12] / v42;
  v156 = BaseAddress;
  v157 = a8[7];
  v158 = a8[8];
  v150 = a8[12];
  v151 = a8[13];
  if ((v44 & 6) == 4)
  {
    v57 = 0;
    v58 = 0;
    v59 = v38 - 1;
    while (1)
    {
      LOWORD(v14) &= 0xFF00u;
      if (v38)
      {
        v60 = 0;
        v61 = 0;
        v62 = 0;
        v63 = 0;
        do
        {
          if (v37)
          {
            for (i = 0; i != v37; ++i)
            {
              v65 = &v31[2 * v62 * v50];
              if ((v63 & (*&v65[2 * i] <= v14)) == 0)
              {
                v14 = *&v65[2 * i];
                v61 = i;
                v60 = v62;
              }

              v63 = 1;
            }
          }

          ++v62;
        }

        while (v62 != v38);
      }

      else
      {
        v61 = 0;
        v60 = 0;
      }

      if (v60 <= 1)
      {
        v66 = 1;
      }

      else
      {
        v66 = v60;
      }

      v67 = v66 - 1;
      if (v59 >= v60 + 1)
      {
        v68 = v60 + 1;
      }

      else
      {
        v68 = v59;
      }

      if (v61 <= 1)
      {
        v69 = 1;
      }

      else
      {
        v69 = v61;
      }

      if (v67 <= v68)
      {
        v70 = v69 - 1;
        if ((v37 - 1) >= v61 + 1)
        {
          v71 = v61 + 1;
        }

        else
        {
          v71 = v37 - 1;
        }

        if (v71 + 1 >= v69)
        {
          v72 = v71 + 1 - v69;
        }

        else
        {
          v72 = 0;
        }

        v73 = (v72 + 8) & 0xFFFFFFFFFFFFFFF8;
        v74 = vdupq_n_s64(v72);
        do
        {
          if (v70 <= v71)
          {
            v75 = 0;
            v76 = &v31[2 * v67 * v50];
            do
            {
              v77 = v70 + v75;
              v78 = vdupq_n_s64(v75);
              v79 = vmovn_s64(vcgeq_u64(v74, vorrq_s8(v78, xmmword_261560F00)));
              if (vuzp1_s8(vuzp1_s16(v79, *v74.i8), *v74.i8).u8[0])
              {
                *&v76[2 * v77] = -1024;
              }

              if (vuzp1_s8(vuzp1_s16(v79, *&v74), *&v74).i8[1])
              {
                *&v76[2 * v69 + 2 * v75] = -1024;
              }

              if (vuzp1_s8(vuzp1_s16(*&v74, vmovn_s64(vcgeq_u64(v74, vorrq_s8(v78, xmmword_261560F30)))), *&v74).i8[2])
              {
                *&v76[2 * v77 + 4] = -1024;
                *&v76[2 * v77 + 6] = -1024;
              }

              v80 = vmovn_s64(vcgeq_u64(v74, vorrq_s8(v78, xmmword_261561030)));
              if (vuzp1_s8(*&v74, vuzp1_s16(v80, *&v74)).i32[1])
              {
                *&v76[2 * v77 + 8] = -1024;
              }

              if (vuzp1_s8(*&v74, vuzp1_s16(v80, *&v74)).i8[5])
              {
                *&v76[2 * v77 + 10] = -1024;
              }

              if (vuzp1_s8(*&v74, vuzp1_s16(*&v74, vmovn_s64(vcgeq_u64(v74, vorrq_s8(v78, xmmword_261561020))))).i8[6])
              {
                *&v76[2 * v77 + 12] = -1024;
                *&v76[2 * v77 + 14] = -1024;
              }

              v75 += 8;
            }

            while (v73 != v75);
          }

          ++v67;
        }

        while (v67 <= v68);
      }

      *&v81 = (v163[v60 * v161 + v61] + v61) / v37;
      *(&v81 + 1) = (v162[v60 * v160 + v61] + v60) / v38;
      v82 = v57;
      v83 = (v57 >> 2) + 1;
      if (v83 >> 62)
      {
        sub_2614709BC();
      }

      if (v57 >> 2 != -1)
      {
        sub_261472B30(v83);
      }

      v84 = (4 * (v57 >> 2));
      *v84 = v81;
      v57 = (v84 + 1);
      memcpy(0, 0, v82);
      v59 = v38 - 1;
      if (++v58 == 4)
      {
        if (v57)
        {
          v86 = 0x3800380038003800;
          for (j = 0; j != v57; ++j)
          {
            v88 = *j;
            v85.i32[0] = v88;
            v86 = vadd_f16(v86, v85);
          }

          v89 = vmul_f16(v86, 0x3400340034003400);
        }

        else
        {
          v89 = 0x3000300030003000;
        }

        memset(buf, 0, sizeof(buf));
        sub_2614F047C(buf, v57 >> 2);
        if (v57)
        {
          for (k = 0; k != v57; ++k)
          {
            v106.i32[0] = *k;
            _S1 = vsub_f16(v106, v89).u32[0];
            _H0 = HIWORD(_S1);
            __asm
            {
              FCVT            S0, H0; float
              FCVT            S1, H1; float
            }

            *&__p = atan2f(_S0, _S1) + 2.3562;
            sub_2614DE064(buf, &__p);
          }
        }

        sub_2615067AC(&__p, (*&buf[8] - *buf) >> 2);
        v112 = __p;
        v113 = v167;
        v114 = xmmword_261560F00;
        if (__p != v167)
        {
          v115 = 0;
          v116 = (v167 - __p - 8) >> 3;
          v117 = vdupq_n_s64(v116);
          v118 = vdupq_n_s64(2uLL);
          do
          {
            v119 = vmovn_s64(vcgeq_u64(v117, v114));
            if (v119.i8[0])
            {
              v112[v115] = v115;
            }

            if (v119.i8[4])
            {
              v112[v115 + 1] = v115 + 1;
            }

            v115 += 2;
            v114 = vaddq_s64(v114, v118);
          }

          while (((v116 + 2) & 0x3FFFFFFFFFFFFFFELL) != v115);
        }

        v120 = 126 - 2 * __clz(v113 - v112);
        v210 = buf;
        if (v113 == v112)
        {
          v121 = 0;
        }

        else
        {
          v121 = v120;
        }

        sub_261506884(v112, v113, &v210, v121, 1);
        v122 = *(__p + 1);
        LODWORD(v210) = *(4 * *__p);
        v123 = *(__p + 2);
        HIDWORD(v210) = *(4 * *(__p + 3));
        v211 = *(4 * v123);
        v212 = *(4 * v122);
        sub_261472B30(4uLL);
      }
    }
  }

  if (v165)
  {
    v91 = 0;
    v92 = 0;
    v164 = a9[11] / v39;
    v93 = a10[11] / v40;
    v94 = a11[11] / v42;
    do
    {
      LOWORD(v13) &= 0xFF00u;
      if (v38)
      {
        v95 = 0;
        v96 = 0;
        v97 = 0;
        v98 = 0;
        do
        {
          if (v37)
          {
            for (m = 0; m != v37; ++m)
            {
              v100 = &v31[2 * v92 * v164 + 2 * v95 * v50];
              if ((v98 & (*(v100 + 2 * m) <= v13)) == 0)
              {
                v13 = *(v100 + 2 * m);
                v97 = v95;
                v96 = m;
              }

              v98 = 1;
            }
          }

          ++v95;
        }

        while (v95 != v38);
      }

      else
      {
        v97 = 0;
        v96 = 0;
      }

      *&v101 = (v163[v92 * v93 + v97 * v161 + v96] + v96) / v37;
      *(&v101 + 1) = (v162[v92 * v94 + v97 * v160 + v96] + v97) / v38;
      v102 = v91;
      v103 = (v91 >> 2) + 1;
      if (v103 >> 62)
      {
        sub_2614709BC();
      }

      v104 = v94;
      if (v91 >> 2 != -1)
      {
        sub_261472B30(v103);
      }

      v105 = (4 * (v91 >> 2));
      *v105 = v101;
      v91 = (v105 + 1);
      memcpy(0, 0, v102);
      v94 = v104;
      v23 = a13;
      ++v92;
    }

    while (v92 != v165);
  }

  else
  {
    v91 = 0;
  }

  v124 = MEMORY[0x266705020](&__p, v157, v158, 8, 0, _Q0, v33, v34);
  v48 = v124 == 0;
  if (qword_280CB3200 != -1)
  {
    dispatch_once(&qword_280CB3200, &unk_2873D0680);
  }

  v125 = qword_280CB31F8;
  if (v124)
  {
    if (os_log_type_enabled(qword_280CB31F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = v124;
      _os_log_error_impl(&dword_26146F000, v125, OS_LOG_TYPE_ERROR, "vImageBuffer_Init failed: %{public}zd", buf, 0xCu);
    }

    *buf = -2003;
    v210 = @"vImageBuffer_Init failed.";
    sub_261476754(v23, buf, &v210);
    *(v23 + 32) = v124;
    *(v23 + 40) = 1;
    goto LABEL_32;
  }

  if (os_log_type_enabled(qword_280CB31F8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136447234;
    *&buf[4] = "thresmap";
    *&buf[12] = 2050;
    *&buf[14] = __p;
    *&buf[22] = 2050;
    v205 = v167;
    v206 = 2050;
    v207 = *(&v167 + 1);
    v208 = 2050;
    v209 = v168;
    _os_log_debug_impl(&dword_26146F000, v125, OS_LOG_TYPE_DEBUG, "Allocated %{public}s image buffer: data=%{public}p, height=%{public}zu, width=%{public}zu, rowBytes=%{public}zu", buf, 0x34u);
  }

  if (v157)
  {
    v126 = 0;
    v127 = v151 / v152;
    while (1)
    {
      v128 = &v156[2 * v126 * (v150 / v152)];
      v129 = (__p + v168 * v126);
      if (v127 != 1 || ((v129 | v128) & 0xF) != 0)
      {
        for (n = v158; n; --n)
        {
          v129->i8[0] = *v128;
          v129 = (v129 + 1);
          v128 += v127;
        }

        goto LABEL_153;
      }

      v130 = v158;
      if (v158 >= 9)
      {
        do
        {
          v131 = *v128;
          v128 += 8;
          *v129++ = vmovn_s16(vcvtq_u16_f16(v131));
          v130 -= 8;
        }

        while (v130 > 8);
      }

      if (v130 >= 5)
      {
        break;
      }

      if (v130)
      {
        goto LABEL_152;
      }

LABEL_153:
      if (++v126 == v157)
      {
        goto LABEL_154;
      }
    }

    v132 = *v128;
    v128 += 4;
    v133 = vcvt_u16_f16(v132);
    v129->i32[0] = vuzp1_s8(v133, v133).u32[0];
    v129 = (v129 + 4);
    v130 -= 4;
    do
    {
LABEL_152:
      v135 = *v128++;
      v129->i8[0] = v135;
      v129 = (v129 + 1);
      --v130;
    }

    while (v130);
    goto LABEL_153;
  }

LABEL_154:
  memset(buf, 0, sizeof(buf));
  sub_261471EB8(buf, v91 >> 2);
  if (v91)
  {
    v137 = *&buf[8];
    for (ii = 0; ii != v91; ++ii)
    {
      v136.i32[0] = *ii;
      v136 = vcvtq_f32_f16(v136).u64[0];
      if (v137 >= *&buf[16])
      {
        v139 = *buf;
        v140 = v137 - *buf;
        v141 = (v137 - *buf) >> 3;
        v142 = v141 + 1;
        if ((v141 + 1) >> 61)
        {
          sub_2614709BC();
        }

        v143 = *&buf[16] - *buf;
        if ((*&buf[16] - *buf) >> 2 > v142)
        {
          v142 = v143 >> 2;
        }

        if (v143 >= 0x7FFFFFFFFFFFFFF8)
        {
          v144 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v144 = v142;
        }

        if (v144)
        {
          sub_261470B0C(v144);
        }

        v145 = (8 * v141);
        *v145 = v136;
        v137 = v145 + 1;
        memcpy(0, v139, v140);
        *buf = 0;
        *&buf[16] = 0;
        if (v139)
        {
          operator delete(v139);
        }
      }

      else
      {
        *v137++ = v136;
      }

      *&buf[8] = v137;
    }
  }

  _H0 = v51 / v153;
  __asm { FCVT            S8, H0 }

  v148 = v159;
  if (*(v159 + 72) == 1)
  {
    v148 = sub_261503B88(v159);
    *(v148 + 72) = 0;
  }

  v149 = __p;
  __p = 0;
  *v148 = v149;
  *(v148 + 8) = v167;
  *(v148 + 24) = v168;
  *(v148 + 32) = *buf;
  *(v148 + 48) = *&buf[16];
  *(v148 + 56) = v155;
  *(v148 + 60) = _S8;
  *(v148 + 64) = v154;
  *(v148 + 72) = 1;
LABEL_32:
  if (v175 == 1)
  {
    v175 = sub_2614E21F4(&v169, &v170, 1, v174) ^ 1;
  }

  sub_261483CA4(&v169);
  if (v182 == 1)
  {
    v182 = sub_2614E21F4(&v176, &v177, 1, v181) ^ 1;
  }

  sub_261483CA4(&v176);
  if (v189 == 1)
  {
    v189 = sub_2614E21F4(&v183, &v184, 1, v188) ^ 1;
  }

  sub_261483CA4(&v183);
  if (v196 == 1)
  {
    v196 = sub_2614E21F4(&v190, &v191, 0, v195) ^ 1;
  }

  sub_261483CA4(&v190);
  if (v203 == 1)
  {
    v203 = sub_2614E21F4(&v197, &v198, 1, v202) ^ 1;
  }

  sub_261483CA4(&v197);
  return v48;
}

void sub_2615055E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  if (*(v62 - 224))
  {
    operator delete(*(v62 - 224));
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_2614B73E8(&a42);
  sub_2614B73E8(&a47);
  sub_2614B73E8(&a52);
  sub_261506824(&a57);
  sub_2614B73E8(&a62);
  _Unwind_Resume(a1);
}

BOOL sub_26150574C(uint64_t a1, uint64_t a2, atomic_ullong *a3, atomic_ullong *a4, atomic_ullong *a5, atomic_ullong *a6, atomic_ullong *a7, void *a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13)
{
  v22 = a13;
  v198 = *MEMORY[0x277D85DE8];
  explicit = atomic_load_explicit(a3, memory_order_acquire);
  if (explicit)
  {
    explicit = CFRetain(explicit);
  }

  v186 = explicit;
  v187 = 0;
  *v188 = *buf;
  *&v188[3] = *&buf[3];
  v189 = 0;
  *v190 = v179;
  *&v190[3] = *(&v179 + 3);
  v191 = a13;
  v192 = sub_2614E1F84(&v186, &v187, 1, a13);
  v24 = atomic_load_explicit(a4, memory_order_acquire);
  if (v24)
  {
    v24 = CFRetain(v24);
  }

  v179 = v24;
  v180 = 0;
  *v181 = *buf;
  *&v181[3] = *&buf[3];
  v182 = 0;
  *v183 = v172;
  *&v183[3] = *(&v172 + 3);
  v184 = a13;
  v185 = sub_2614E1F84(&v179, &v180, 0, a13);
  v25 = atomic_load_explicit(a5, memory_order_acquire);
  if (v25)
  {
    v25 = CFRetain(v25);
  }

  v172 = v25;
  v173 = 0;
  *v174 = *buf;
  *&v174[3] = *&buf[3];
  v175 = 0;
  *v176 = v165;
  *&v176[3] = *(&v165 + 3);
  v177 = a13;
  v178 = sub_2614E1F84(&v172, &v173, 1, a13);
  v26 = atomic_load_explicit(a6, memory_order_acquire);
  if (v26)
  {
    v26 = CFRetain(v26);
  }

  v165 = v26;
  v166 = 0;
  *v167 = *buf;
  *&v167[3] = *&buf[3];
  v168 = 0;
  *v169 = v158;
  *&v169[3] = *(&v158 + 3);
  v170 = a13;
  v171 = sub_2614E1F84(&v165, &v166, 1, a13);
  v27 = atomic_load_explicit(a7, memory_order_acquire);
  if (v27)
  {
    v27 = CFRetain(v27);
  }

  v158 = v27;
  v159 = 0;
  *v160 = *buf;
  *&v160[3] = *&buf[3];
  v161 = 0;
  *v162 = v153;
  *&v162[3] = *(&v153 + 3);
  v163 = a13;
  v28 = sub_2614E1F84(&v158, &v159, 1, a13);
  v164 = v28;
  if (v192 != 1 || v185 != 1 || ((v178 & v171) & v28 & 1) == 0)
  {
    if (qword_280CB3200 != -1)
    {
      dispatch_once(&qword_280CB3200, &unk_2873D0680);
    }

    v45 = qword_280CB31F8;
    if (os_log_type_enabled(qword_280CB31F8, OS_LOG_TYPE_ERROR))
    {
      v91 = *(a13 + 56);
      *buf = 67240192;
      *&buf[4] = v91;
      _os_log_error_impl(&dword_26146F000, v45, OS_LOG_TYPE_ERROR, "IOSurfaceLock failed: %{public}d", buf, 8u);
    }

    goto LABEL_31;
  }

  BaseAddress = IOSurfaceGetBaseAddress(atomic_load_explicit(a3, memory_order_acquire));
  v29 = IOSurfaceGetBaseAddress(atomic_load_explicit(a4, memory_order_acquire));
  v149 = IOSurfaceGetBaseAddress(atomic_load_explicit(a5, memory_order_acquire));
  v148 = IOSurfaceGetBaseAddress(atomic_load_explicit(a6, memory_order_acquire));
  v30 = IOSurfaceGetBaseAddress(atomic_load_explicit(a7, memory_order_acquire));
  v31 = 0;
  v32 = 0;
  v142 = a8[8];
  v34 = a9[7];
  v33 = a9[8];
  v152 = a9[6];
  v35 = a9[2];
  v36 = a10[2];
  v37 = 0.0;
  v38 = a11[2];
  v39 = a11[11];
  v40 = a11[12];
  v41 = *(a12 + 88) / *(a12 + 16);
  v42 = -1;
  do
  {
    if ((v32 & (v30[v31 * v41] <= v37)) == 0)
    {
      v37 = v30[v31 * v41];
      v42 = v31;
    }

    ++v31;
    v32 = 1;
  }

  while (v31 != 6);
  if (v42 <= 5)
  {
    v43 = v42;
  }

  else
  {
    v43 = 0;
  }

  if (v42 >= 6)
  {
    if (qword_280CB3200 != -1)
    {
      dispatch_once(&qword_280CB3200, &unk_2873D0680);
    }

    v44 = qword_280CB31F8;
    if (os_log_type_enabled(qword_280CB31F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26146F000, v44, OS_LOG_TYPE_ERROR, "Invalid category yielded from attributes.", buf, 2u);
    }

    *buf = -6009;
    v153 = @"Invalid category yielded from attributes.";
    sub_261476754(a13, buf, &v153);
LABEL_31:
    v46 = 0;
    goto LABEL_32;
  }

  v138 = v43;
  v133 = a8[13];
  v134 = a8[12];
  v139 = a1;
  v140 = a8[7];
  v48 = a9[12] / v35;
  v147 = a10[12] / v36;
  v49 = v30[6 * v41];
  v135 = a8[2];
  v136 = *(a2 + 8);
  v137 = v30[7 * v41] > 0.0;
  v50 = v40 / v38;
  v143 = v40 / v38;
  if ((v42 & 6) == 4)
  {
    v51 = 0;
    v52 = 0;
    v150 = 0u;
    do
    {
      LODWORD(v13) &= 0xFFFFFF00;
      if (v34)
      {
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v56 = 0;
        do
        {
          if (v33)
          {
            for (i = 0; i != v33; ++i)
            {
              v58 = &v29[4 * v55 * v48];
              if ((v56 & (*&v58[4 * i] <= v13)) == 0)
              {
                v13 = *&v58[4 * i];
                v54 = i;
                v53 = v55;
              }

              v56 = 1;
            }
          }

          ++v55;
        }

        while (v55 != v34);
      }

      else
      {
        v54 = 0;
        v53 = 0;
      }

      if (v53 <= 1)
      {
        v59 = 1;
      }

      else
      {
        v59 = v53;
      }

      v60 = v59 - 1;
      if ((v34 - 1) >= v53 + 1)
      {
        v61 = v53 + 1;
      }

      else
      {
        v61 = v34 - 1;
      }

      if (v54 <= 1)
      {
        v62 = 1;
      }

      else
      {
        v62 = v54;
      }

      if (v60 <= v61)
      {
        v63 = v62 - 1;
        if ((v33 - 1) >= v54 + 1)
        {
          v64 = v54 + 1;
        }

        else
        {
          v64 = v33 - 1;
        }

        if (v64 + 1 >= v62)
        {
          v65 = v64 + 1 - v62;
        }

        else
        {
          v65 = 0;
        }

        v66 = (v65 + 4) & 0xFFFFFFFFFFFFFFFCLL;
        v67 = vdupq_n_s64(v65);
        do
        {
          if (v63 <= v64)
          {
            v68 = 0;
            v69 = &v29[4 * v60 * v48];
            do
            {
              v70 = v63 + v68;
              v71 = vdupq_n_s64(v68);
              v72 = vmovn_s64(vcgeq_u64(v67, vorrq_s8(v71, xmmword_261560F00)));
              if (vuzp1_s16(v72, *v67.i8).u8[0])
              {
                *&v69[4 * v70] = -8388608;
              }

              if (vuzp1_s16(v72, *&v67).i8[2])
              {
                *&v69[4 * v62 + 4 * v68] = -8388608;
              }

              if (vuzp1_s16(*&v67, vmovn_s64(vcgeq_u64(v67, vorrq_s8(v71, xmmword_261560F30)))).i32[1])
              {
                *&v69[4 * v70 + 8] = -8388608;
                *&v69[4 * v70 + 12] = -8388608;
              }

              v68 += 4;
            }

            while (v66 != v68);
          }

          ++v60;
        }

        while (v60 <= v61);
      }

      v73.f32[0] = (v149[v53 * v147 + v54] + v54) / v33;
      v73.f32[1] = (v148[v53 * v50 + v54] + v53) / v34;
      v145 = v52;
      v74 = (v51 - v150) >> 3;
      v75 = v74 + 1;
      if ((v74 + 1) >> 61)
      {
        sub_2614709BC();
      }

      if (-v150 >> 2 > v75)
      {
        v75 = -v150 >> 2;
      }

      if (-v150 >= 0x7FFFFFFFFFFFFFF8)
      {
        v76 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v76 = v75;
      }

      if (v76)
      {
        sub_261470B0C(v76);
      }

      v77 = (8 * v74);
      v78 = (v77 - (*(&v150 + 1) - v150));
      *v77 = v73;
      v51 = v77 + 1;
      memcpy(v78, v150, *(&v150 + 1) - v150);
      v79 = v78;
      if (v150)
      {
        operator delete(v150);
        v79 = v78;
      }

      v50 = v143;
      v22 = a13;
      *&v80 = v79;
      *(&v80 + 1) = v51;
      v150 = v80;
      v52 = v145 + 1;
    }

    while (v145 != 3);
    v81 = v79;
    if (v79 == v51)
    {
      v90 = 0x3E0000003E000000;
    }

    else
    {
      v82 = 0x3F0000003F000000;
      v83 = v79;
      do
      {
        v84 = *v83++;
        v82 = vadd_f32(v82, v84);
      }

      while (v83 != v51);
      __asm { FMOV            V1.2S, #0.25 }

      v90 = vmul_f32(v82, _D1);
    }

    v153 = 0;
    v154 = 0uLL;
    v109 = v51 - v81;
    sub_2614F047C(&v153, v51 - v81);
    if (v81 != v51)
    {
      v110 = v81;
      do
      {
        v111 = vsub_f32(*v110, v90);
        *buf = atan2f(v111.f32[1], v111.f32[0]) + 2.3562;
        sub_2614DE064(&v153, buf);
        ++v110;
      }

      while (v110 != v51);
    }

    sub_2615067AC(&__p, (v154 - v153) >> 2);
    v112 = __p;
    v113 = v157;
    v114 = xmmword_261560F00;
    if (__p != v157)
    {
      v115 = 0;
      v116 = (v157 - __p - 8) >> 3;
      v117 = vdupq_n_s64(v116);
      v118 = vdupq_n_s64(2uLL);
      do
      {
        v119 = vmovn_s64(vcgeq_u64(v117, v114));
        if (v119.i8[0])
        {
          v112[v115] = v115;
        }

        if (v119.i8[4])
        {
          v112[v115 + 1] = v115 + 1;
        }

        v115 += 2;
        v114 = vaddq_s64(v114, v118);
      }

      while (((v116 + 2) & 0x3FFFFFFFFFFFFFFELL) != v115);
    }

    v120 = 126 - 2 * __clz(v113 - v112);
    *buf = &v153;
    if (v113 == v112)
    {
      v121 = 0;
    }

    else
    {
      v121 = v120;
    }

    sub_261506884(v112, v113, buf, v121, 1);
    *buf = v81[*__p];
    v122 = *(__p + 2);
    *&buf[8] = v81[*(__p + 3)];
    *&buf[16] = v81[v122];
    *&buf[24] = v81[*(__p + 1)];
    if (-v81 < 0x20)
    {
      operator delete(v81);
      sub_261470B0C(4uLL);
    }

    if (v109 > 0x1F)
    {
      v124 = *&buf[16];
      *v81->f32 = *buf;
      *v81[2].f32 = v124;
      *&v123 = v150;
      *(&v123 + 1) = v81 + 4;
    }

    else
    {
      if (v81 != v51)
      {
        memmove(v81, buf, v51 - v81);
      }

      do
      {
        *v51++ = *&buf[v109];
        v109 += 8;
      }

      while (v109 != 32);
      *&v123 = v150;
      *(&v123 + 1) = v51;
    }

    v151 = v123;
    if (__p)
    {
      v157 = __p;
      operator delete(__p);
    }

    if (v153)
    {
      *&v154 = v153;
      operator delete(v153);
    }
  }

  else if (v152)
  {
    v92 = 0;
    v93 = 0;
    v146 = a9[11] / v35;
    v94 = a10[11] / v36;
    v151 = 0u;
    v95 = v39 / v38;
    v144 = v39 / v38;
    do
    {
      LODWORD(v13) &= 0xFFFFFF00;
      if (v34)
      {
        v96 = 0;
        v97 = 0;
        v98 = 0;
        v99 = 0;
        do
        {
          if (v33)
          {
            for (j = 0; j != v33; ++j)
            {
              v101 = &v29[4 * v93 * v146 + 4 * v96 * v48];
              if ((v99 & (*(v101 + 4 * j) <= v13)) == 0)
              {
                v13 = *(v101 + 4 * j);
                v98 = v96;
                v97 = j;
              }

              v99 = 1;
            }
          }

          ++v96;
        }

        while (v96 != v34);
      }

      else
      {
        v98 = 0;
        v97 = 0;
      }

      *&v102 = (v149[v93 * v94 + v98 * v147 + v97] + v97) / v33;
      *(&v102 + 1) = (v148[v93 * v95 + v98 * v50 + v97] + v98) / v34;
      v103 = (v92 - v151) >> 3;
      v104 = v103 + 1;
      if ((v103 + 1) >> 61)
      {
        sub_2614709BC();
      }

      if (-v151 >> 2 > v104)
      {
        v104 = -v151 >> 2;
      }

      if (-v151 >= 0x7FFFFFFFFFFFFFF8)
      {
        v105 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v105 = v104;
      }

      if (v105)
      {
        sub_261470B0C(v105);
      }

      v106 = (8 * v103);
      v107 = v106 - (*(&v151 + 1) - v151);
      *v106 = v102;
      v92 = v106 + 1;
      memcpy(v107, v151, *(&v151 + 1) - v151);
      if (v151)
      {
        operator delete(v151);
      }

      v50 = v143;
      v22 = a13;
      v95 = v144;
      *&v108 = v107;
      *(&v108 + 1) = v92;
      v151 = v108;
      ++v93;
    }

    while (v93 != v152);
  }

  else
  {
    v151 = 0u;
  }

  v125 = MEMORY[0x266705020](&v153, v140, v142, 8, 0, v50);
  v46 = v125 == 0;
  if (qword_280CB3200 != -1)
  {
    dispatch_once(&qword_280CB3200, &unk_2873D0680);
  }

  v126 = qword_280CB31F8;
  if (v125)
  {
    if (os_log_type_enabled(qword_280CB31F8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349056;
      *&buf[4] = v125;
      _os_log_error_impl(&dword_26146F000, v126, OS_LOG_TYPE_ERROR, "vImageBuffer_Init failed: %{public}zd", buf, 0xCu);
    }

    *buf = -2003;
    __p = @"vImageBuffer_Init failed.";
    sub_261476754(v22, buf, &__p);
    v22[4] = v125;
    v127 = v22 + 5;
    v128 = v151;
  }

  else
  {
    if (os_log_type_enabled(qword_280CB31F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136447234;
      *&buf[4] = "thresmap";
      *&buf[12] = 2050;
      *&buf[14] = v153;
      *&buf[22] = 2050;
      *&buf[24] = v154;
      v194 = 2050;
      v195 = *(&v154 + 1);
      v196 = 2050;
      v197 = v155;
      _os_log_debug_impl(&dword_26146F000, v126, OS_LOG_TYPE_DEBUG, "Allocated %{public}s image buffer: data=%{public}p, height=%{public}zu, width=%{public}zu, rowBytes=%{public}zu", buf, 0x34u);
    }

    if (v140)
    {
      for (k = 0; k != v140; ++k)
      {
        vDSP_vfixu8(&BaseAddress[k * (v134 / v135)], v133 / v135, v153 + v155 * k, 1, v142);
      }
    }

    v130 = v49 / v136;
    v131 = v139;
    v127 = (v139 + 72);
    if (*(v139 + 72) == 1)
    {
      v131 = sub_261503B88(v139);
      *(v131 + 72) = 0;
    }

    v132 = v153;
    v153 = 0;
    *v131 = v132;
    *(v131 + 8) = v154;
    *(v131 + 24) = v155;
    *(v131 + 32) = v151;
    *(v131 + 48) = 0;
    *(v131 + 56) = v138;
    *(v131 + 60) = v130;
    v128 = 0;
    *(v131 + 64) = v137;
  }

  *v127 = 1;
  if (v128)
  {
    operator delete(v128);
  }

LABEL_32:
  if (v164 == 1)
  {
    v164 = sub_2614E21F4(&v158, &v159, 1, v163) ^ 1;
  }

  sub_261483CA4(&v158);
  if (v171 == 1)
  {
    v171 = sub_2614E21F4(&v165, &v166, 1, v170) ^ 1;
  }

  sub_261483CA4(&v165);
  if (v178 == 1)
  {
    v178 = sub_2614E21F4(&v172, &v173, 1, v177) ^ 1;
  }

  sub_261483CA4(&v172);
  if (v185 == 1)
  {
    v185 = sub_2614E21F4(&v179, &v180, 0, v184) ^ 1;
  }

  sub_261483CA4(&v179);
  if (v192 == 1)
  {
    v192 = sub_2614E21F4(&v186, &v187, 1, v191) ^ 1;
  }

  sub_261483CA4(&v186);
  return v46;
}

void sub_261506664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a32)
  {
    operator delete(a32);
  }

  sub_2614B73E8(&a39);
  sub_2614B73E8(&a44);
  sub_2614B73E8(&a49);
  sub_261506824(&a54);
  sub_2614B73E8(v54 - 232);
  _Unwind_Resume(a1);
}

void *sub_2615067AC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_261472B78(result, a2);
  }

  return result;
}

void sub_261506808(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

atomic_ullong *sub_261506824(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    *(a1 + 32) = sub_2614E21F4(a1, a1 + 8, 0, *(a1 + 24)) ^ 1;
  }

  return sub_261483CA4(a1);
}

uint64_t sub_261506884(uint64_t result, uint64_t *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = a2 - 1;
  v11 = v9;
  while (1)
  {
    v9 = v11;
    v12 = a2 - v11;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v79 = *v11;
        if (*(**a3 + 4 * *v10) < *(**a3 + 4 * *v11))
        {
          *v11 = *v10;
          *v10 = v79;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v87 = v11 + 1;
      v88 = v11[1];
      v89 = v11 + 2;
      v90 = v11[2];
      v91 = **a3;
      v92 = *(v91 + 4 * v88);
      v93 = *v11;
      v94 = *(v91 + 4 * *v11);
      v95 = *(v91 + 4 * v90);
      if (v92 >= v94)
      {
        if (v95 >= v92)
        {
          goto LABEL_169;
        }

        *v87 = v90;
        *v89 = v88;
        v96 = v11;
        v97 = (v11 + 1);
        result = v88;
        if (v95 < v94)
        {
          goto LABEL_160;
        }
      }

      else
      {
        v96 = v11;
        v97 = (v11 + 2);
        result = *v11;
        if (v95 >= v92)
        {
          *v11 = v88;
          v11[1] = v93;
          v96 = v11 + 1;
          v97 = (v11 + 2);
          result = v93;
          if (v95 >= v94)
          {
LABEL_169:
            v88 = v90;
            goto LABEL_170;
          }
        }

LABEL_160:
        *v96 = v90;
        *v97 = v93;
        v88 = result;
      }

LABEL_170:
      if (*(v91 + 4 * *v10) < *(v91 + 4 * v88))
      {
        *v89 = *v10;
        *v10 = v88;
        v149 = *v89;
        v150 = *v87;
        v151 = *(v91 + 4 * v149);
        if (v151 < *(v91 + 4 * v150))
        {
          v11[1] = v149;
          v11[2] = v150;
          v152 = *v11;
          if (v151 < *(v91 + 4 * *v11))
          {
            *v11 = v149;
            v11[1] = v152;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {
      v78 = **a3;

      return sub_2615072A8(v11, v11 + 1, v11 + 2, v11 + 3, a2 - 1, v78);
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {
        if (v11 != a2)
        {
          v98 = v11 + 1;
          if (v11 + 1 != a2)
          {
            v99 = **a3;
            v100 = 8;
            v101 = v11;
            do
            {
              v103 = *v101;
              v102 = v101[1];
              v101 = v98;
              v104 = *(v99 + 4 * v102);
              if (v104 < *(v99 + 4 * v103))
              {
                v105 = v100;
                while (1)
                {
                  *(v11 + v105) = v103;
                  v106 = v105 - 8;
                  if (v105 == 8)
                  {
                    break;
                  }

                  v103 = *(v11 + v105 - 16);
                  v105 -= 8;
                  if (v104 >= *(v99 + 4 * v103))
                  {
                    v107 = (v11 + v106);
                    goto LABEL_123;
                  }
                }

                v107 = v11;
LABEL_123:
                *v107 = v102;
              }

              v98 = v101 + 1;
              v100 += 8;
            }

            while (v101 + 1 != a2);
          }
        }
      }

      else if (v11 != a2)
      {
        v144 = v11 + 1;
        if (v11 + 1 != a2)
        {
          v145 = **a3;
          do
          {
            v147 = *v9;
            v146 = v9[1];
            v9 = v144;
            v148 = *(v145 + 4 * v146);
            if (v148 < *(v145 + 4 * v147))
            {
              do
              {
                *v144 = v147;
                v147 = *(v144 - 2);
                --v144;
              }

              while (v148 < *(v145 + 4 * v147));
              *v144 = v146;
            }

            v144 = v9 + 1;
          }

          while (v9 + 1 != a2);
        }
      }

      return result;
    }

    if (!a4)
    {
      if (v11 != a2)
      {
        v108 = (v12 - 2) >> 1;
        v109 = *a3;
        v110 = v108;
        do
        {
          v111 = v110;
          if (v108 >= v110)
          {
            v112 = (2 * v110) | 1;
            v113 = &v11[v112];
            v114 = 2 * v110 + 2;
            v115 = *v109;
            if (v114 < v12 && *(v115 + 4 * *v113) < *(v115 + 4 * v113[1]))
            {
              ++v113;
              v112 = 2 * v111 + 2;
            }

            result = &v11[v111];
            v116 = *v113;
            v117 = *result;
            v118 = *(v115 + 4 * *result);
            if (*(v115 + 4 * *v113) >= v118)
            {
              do
              {
                v119 = v113;
                *result = v116;
                if (v108 < v112)
                {
                  break;
                }

                v120 = 2 * v112;
                v112 = (2 * v112) | 1;
                v113 = &v11[v112];
                v121 = v120 + 2;
                if (v121 < v12 && *(v115 + 4 * *v113) < *(v115 + 4 * v113[1]))
                {
                  ++v113;
                  v112 = v121;
                }

                v116 = *v113;
                result = v119;
              }

              while (*(v115 + 4 * *v113) >= v118);
              *v119 = v117;
            }
          }

          v110 = v111 - 1;
        }

        while (v111);
        do
        {
          v122 = 0;
          v123 = *v11;
          v124 = *a3;
          v125 = v11;
          do
          {
            v126 = v125;
            v127 = &v125[v122];
            v125 = v127 + 1;
            v128 = 2 * v122;
            v122 = (2 * v122) | 1;
            v129 = v128 + 2;
            if (v129 < v12)
            {
              v131 = v127[2];
              v130 = v127 + 2;
              result = *(v130 - 1);
              if (*(*v124 + 4 * result) < *(*v124 + 4 * v131))
              {
                v125 = v130;
                v122 = v129;
              }
            }

            *v126 = *v125;
          }

          while (v122 <= ((v12 - 2) >> 1));
          if (v125 == --a2)
          {
            *v125 = v123;
          }

          else
          {
            *v125 = *a2;
            *a2 = v123;
            v132 = (v125 - v11 + 8) >> 3;
            v133 = v132 < 2;
            v134 = v132 - 2;
            if (!v133)
            {
              v135 = v134 >> 1;
              v136 = &v11[v135];
              v137 = *v136;
              v138 = *v125;
              v139 = *v124;
              v140 = *(v139 + 4 * *v125);
              if (*(v139 + 4 * *v136) < v140)
              {
                do
                {
                  v141 = v136;
                  *v125 = v137;
                  if (!v135)
                  {
                    break;
                  }

                  v135 = (v135 - 1) >> 1;
                  v136 = &v11[v135];
                  v137 = *v136;
                  v125 = v141;
                }

                while (*(v139 + 4 * *v136) < v140);
                *v141 = v138;
              }
            }
          }

          v133 = v12-- <= 2;
        }

        while (!v133);
      }

      return result;
    }

    v13 = &v11[v12 >> 1];
    v14 = v13;
    v15 = **a3;
    v16 = *v10;
    v17 = *(v15 + 4 * *v10);
    if (v12 >= 0x81)
    {
      v18 = *v13;
      v19 = *v11;
      v20 = *(v15 + 4 * *v13);
      v21 = *(v15 + 4 * *v11);
      if (v20 >= v21)
      {
        if (v17 < v20)
        {
          *v13 = v16;
          *v10 = v18;
          v26 = *v11;
          if (*(v15 + 4 * *v13) < *(v15 + 4 * *v11))
          {
            *v11 = *v13;
            *v13 = v26;
          }
        }
      }

      else
      {
        if (v17 < v20)
        {
          *v11 = v16;
          goto LABEL_27;
        }

        *v11 = v18;
        *v13 = v19;
        if (*(v15 + 4 * *v10) < v21)
        {
          *v13 = *v10;
LABEL_27:
          *v10 = v19;
        }
      }

      v28 = v13 - 1;
      v29 = *(v13 - 1);
      v30 = v11[1];
      v31 = *(v15 + 4 * v29);
      v32 = *(v15 + 4 * v30);
      v33 = *(a2 - 2);
      v34 = *(v15 + 4 * v33);
      if (v31 >= v32)
      {
        if (v34 < v31)
        {
          *v28 = v33;
          *(a2 - 2) = v29;
          v35 = v11[1];
          if (*(v15 + 4 * *v28) < *(v15 + 4 * v35))
          {
            v11[1] = *v28;
            *v28 = v35;
          }
        }
      }

      else
      {
        if (v34 < v31)
        {
          v11[1] = v33;
          goto LABEL_39;
        }

        v11[1] = v29;
        *v28 = v30;
        v36 = *(a2 - 2);
        if (*(v15 + 4 * v36) < v32)
        {
          *v28 = v36;
LABEL_39:
          *(a2 - 2) = v30;
        }
      }

      v39 = v13[1];
      v37 = v13 + 1;
      v38 = v39;
      v40 = v11[2];
      v41 = *(v15 + 4 * v39);
      v42 = *(v15 + 4 * v40);
      v43 = *(a2 - 3);
      v44 = *(v15 + 4 * v43);
      if (v41 >= v42)
      {
        if (v44 < v41)
        {
          *v37 = v43;
          *(a2 - 3) = v38;
          v45 = v11[2];
          if (*(v15 + 4 * *v37) < *(v15 + 4 * v45))
          {
            v11[2] = *v37;
            *v37 = v45;
          }
        }
      }

      else
      {
        if (v44 < v41)
        {
          v11[2] = v43;
          goto LABEL_48;
        }

        v11[2] = v38;
        *v37 = v40;
        v46 = *(a2 - 3);
        if (*(v15 + 4 * v46) < v42)
        {
          *v37 = v46;
LABEL_48:
          *(a2 - 3) = v40;
        }
      }

      v47 = *v14;
      v48 = *v28;
      v49 = *(v15 + 4 * *v14);
      v50 = *(v15 + 4 * *v28);
      v51 = *v37;
      v52 = *(v15 + 4 * *v37);
      if (v49 >= v50)
      {
        if (v52 >= v49)
        {
          goto LABEL_56;
        }

        *v14 = v51;
        *v37 = v47;
        v37 = v14;
        v47 = v48;
        if (v52 >= v50)
        {
          v47 = v51;
          goto LABEL_56;
        }
      }

      else if (v52 >= v49)
      {
        *v28 = v47;
        *v14 = v48;
        v28 = v14;
        v47 = v51;
        if (v52 >= v50)
        {
          v47 = v48;
LABEL_56:
          v53 = *v11;
          *v11 = v47;
          *v14 = v53;
          goto LABEL_57;
        }
      }

      *v28 = v51;
      *v37 = v48;
      goto LABEL_56;
    }

    v22 = *v11;
    v23 = *v14;
    v24 = *(v15 + 4 * *v11);
    v25 = *(v15 + 4 * *v14);
    if (v24 >= v25)
    {
      if (v17 < v24)
      {
        *v11 = v16;
        *v10 = v22;
        v27 = *v14;
        if (*(v15 + 4 * *v11) < *(v15 + 4 * *v14))
        {
          *v14 = *v11;
          *v11 = v27;
        }
      }

      goto LABEL_57;
    }

    if (v17 < v24)
    {
      *v14 = v16;
LABEL_36:
      *v10 = v23;
      goto LABEL_57;
    }

    *v14 = v22;
    *v11 = v23;
    if (*(v15 + 4 * *v10) < v25)
    {
      *v11 = *v10;
      goto LABEL_36;
    }

LABEL_57:
    --a4;
    v54 = *v11;
    if (a5)
    {
      v55 = *(v15 + 4 * v54);
LABEL_60:
      v56 = v11;
      do
      {
        v57 = v56;
        v59 = v56[1];
        ++v56;
        v58 = v59;
      }

      while (*(v15 + 4 * v59) < v55);
      v60 = a2;
      if (v57 == v11)
      {
        v60 = a2;
        do
        {
          if (v56 >= v60)
          {
            break;
          }

          v62 = *--v60;
        }

        while (*(v15 + 4 * v62) >= v55);
      }

      else
      {
        do
        {
          v61 = *--v60;
        }

        while (*(v15 + 4 * v61) >= v55);
      }

      if (v56 < v60)
      {
        v63 = *v60;
        v64 = v56;
        v65 = v60;
        do
        {
          *v64 = v63;
          *v65 = v58;
          do
          {
            v57 = v64;
            v66 = v64[1];
            ++v64;
            v58 = v66;
          }

          while (*(v15 + 4 * v66) < v55);
          do
          {
            v67 = *--v65;
            v63 = v67;
          }

          while (*(v15 + 4 * v67) >= v55);
        }

        while (v64 < v65);
      }

      if (v57 != v11)
      {
        *v11 = *v57;
      }

      *v57 = v54;
      if (v56 < v60)
      {
        goto LABEL_79;
      }

      v68 = sub_26150741C(v11, v57, *a3);
      v11 = v57 + 1;
      result = sub_26150741C(v57 + 1, a2, *a3);
      if (result)
      {
        a2 = v57;
        if (!v68)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v68)
      {
LABEL_79:
        result = sub_261506884(v9, v57, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v57 + 1;
      }
    }

    else
    {
      v55 = *(v15 + 4 * v54);
      if (*(v15 + 4 * *(v11 - 1)) < v55)
      {
        goto LABEL_60;
      }

      if (v55 >= *(v15 + 4 * *v10))
      {
        v70 = v11 + 1;
        do
        {
          v11 = v70;
          if (v70 >= a2)
          {
            break;
          }

          ++v70;
        }

        while (v55 >= *(v15 + 4 * *v11));
      }

      else
      {
        do
        {
          v69 = v11[1];
          ++v11;
        }

        while (v55 >= *(v15 + 4 * v69));
      }

      v71 = a2;
      if (v11 < a2)
      {
        v71 = a2;
        do
        {
          v72 = *--v71;
        }

        while (v55 < *(v15 + 4 * v72));
      }

      if (v11 < v71)
      {
        v73 = *v11;
        v74 = *v71;
        do
        {
          *v11 = v74;
          *v71 = v73;
          do
          {
            v75 = v11[1];
            ++v11;
            v73 = v75;
          }

          while (v55 >= *(v15 + 4 * v75));
          do
          {
            v76 = *--v71;
            v74 = v76;
          }

          while (v55 < *(v15 + 4 * v76));
        }

        while (v11 < v71);
      }

      v77 = v11 - 1;
      if (v11 - 1 != v9)
      {
        *v9 = *v77;
      }

      a5 = 0;
      *v77 = v54;
    }
  }

  v80 = *v11;
  v81 = v11[1];
  v82 = **a3;
  v83 = *(v82 + 4 * v81);
  v84 = *(v82 + 4 * *v11);
  v85 = *v10;
  v86 = *(v82 + 4 * *v10);
  if (v83 >= v84)
  {
    if (v86 < v83)
    {
      v11[1] = v85;
      *v10 = v81;
      v143 = *v11;
      v142 = v11[1];
      if (*(v82 + 4 * v142) < *(v82 + 4 * *v11))
      {
        *v11 = v142;
        v11[1] = v143;
      }
    }
  }

  else
  {
    if (v86 >= v83)
    {
      *v11 = v81;
      v11[1] = v80;
      if (*(v82 + 4 * *v10) >= v84)
      {
        return result;
      }

      v11[1] = *v10;
    }

    else
    {
      *v11 = v85;
    }

    *v10 = v80;
  }

  return result;
}

uint64_t *sub_2615072A8(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *(a6 + 4 * *a2);
  v9 = *(a6 + 4 * *result);
  v10 = *a3;
  v11 = *(a6 + 4 * *a3);
  if (v8 >= v9)
  {
    if (v11 >= v8)
    {
      v6 = *a3;
    }

    else
    {
      *a2 = v10;
      *a3 = v6;
      v12 = *result;
      if (*(a6 + 4 * *a2) < *(a6 + 4 * *result))
      {
        *result = *a2;
        *a2 = v12;
        v6 = *a3;
      }
    }
  }

  else
  {
    if (v11 < v8)
    {
      *result = v10;
LABEL_9:
      *a3 = v7;
      v6 = v7;
      goto LABEL_11;
    }

    *result = v6;
    *a2 = v7;
    v6 = *a3;
    if (*(a6 + 4 * *a3) < v9)
    {
      *a2 = v6;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(a6 + 4 * *a4) < *(a6 + 4 * v6))
  {
    *a3 = *a4;
    *a4 = v6;
    v13 = *a2;
    if (*(a6 + 4 * *a3) < *(a6 + 4 * *a2))
    {
      *a2 = *a3;
      *a3 = v13;
      v14 = *result;
      if (*(a6 + 4 * *a2) < *(a6 + 4 * *result))
      {
        *result = *a2;
        *a2 = v14;
      }
    }
  }

  v15 = *a4;
  if (*(a6 + 4 * *a5) < *(a6 + 4 * *a4))
  {
    *a4 = *a5;
    *a5 = v15;
    v16 = *a3;
    if (*(a6 + 4 * *a4) < *(a6 + 4 * *a3))
    {
      *a3 = *a4;
      *a4 = v16;
      v17 = *a2;
      if (*(a6 + 4 * *a3) < *(a6 + 4 * *a2))
      {
        *a2 = *a3;
        *a3 = v17;
        v18 = *result;
        if (*(a6 + 4 * *a2) < *(a6 + 4 * *result))
        {
          *result = *a2;
          *a2 = v18;
        }
      }
    }
  }

  return result;
}

BOOL sub_26150741C(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = *a1;
      v7 = a1[1];
      v8 = *a3;
      v9 = *(*a3 + 4 * v7);
      v10 = *(*a3 + 4 * *a1);
      v11 = *(a2 - 1);
      v12 = *(*a3 + 4 * v11);
      if (v9 >= v10)
      {
        if (v12 < v9)
        {
          a1[1] = v11;
          *(a2 - 1) = v7;
          v36 = *a1;
          v35 = a1[1];
          if (*(v8 + 4 * v35) < *(v8 + 4 * *a1))
          {
            *a1 = v35;
            a1[1] = v36;
          }
        }

        return 1;
      }

      if (v12 >= v9)
      {
        *a1 = v7;
        a1[1] = v6;
        v51 = *(a2 - 1);
        if (*(v8 + 4 * v51) >= v10)
        {
          return 1;
        }

        a1[1] = v51;
      }

      else
      {
        *a1 = v11;
      }

      *(a2 - 1) = v6;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      sub_2615072A8(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, *a3);
      return 1;
    }

    v23 = a1 + 1;
    v24 = a1[1];
    v25 = a1 + 2;
    v26 = a1[2];
    v27 = *a3;
    v28 = *(*a3 + 4 * v24);
    v29 = *a1;
    v30 = *(*a3 + 4 * *a1);
    v31 = *(*a3 + 4 * v26);
    if (v28 >= v30)
    {
      if (v31 >= v28)
      {
LABEL_41:
        v24 = v26;
        goto LABEL_42;
      }

      *v23 = v26;
      *v25 = v24;
      v32 = a1;
      v33 = a1 + 1;
      v34 = v24;
      if (v31 >= v30)
      {
LABEL_42:
        v46 = *(a2 - 1);
        if (*(v27 + 4 * v46) < *(v27 + 4 * v24))
        {
          *v25 = v46;
          *(a2 - 1) = v24;
          v47 = *v25;
          v48 = *v23;
          v49 = *(v27 + 4 * v47);
          if (v49 < *(v27 + 4 * v48))
          {
            a1[1] = v47;
            a1[2] = v48;
            v50 = *a1;
            if (v49 < *(v27 + 4 * *a1))
            {
              *a1 = v47;
              a1[1] = v50;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v32 = a1;
      v33 = a1 + 2;
      v34 = *a1;
      if (v31 >= v28)
      {
        *a1 = v24;
        a1[1] = v29;
        v32 = a1 + 1;
        v33 = a1 + 2;
        v34 = v29;
        if (v31 >= v30)
        {
          goto LABEL_41;
        }
      }
    }

    *v32 = v26;
    *v33 = v29;
    v24 = v34;
    goto LABEL_42;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = *a1;
    if (*(*a3 + 4 * v4) < *(*a3 + 4 * *a1))
    {
      *a1 = v4;
      *(a2 - 1) = v5;
    }

    return 1;
  }

LABEL_13:
  v14 = a1 + 2;
  v13 = a1[2];
  v15 = a1[1];
  v16 = *a3;
  v17 = *(*a3 + 4 * v15);
  v18 = *a1;
  v19 = *(*a3 + 4 * *a1);
  v20 = *(*a3 + 4 * v13);
  if (v17 < v19)
  {
    v21 = a1;
    v22 = a1 + 2;
    if (v20 >= v17)
    {
      *a1 = v15;
      a1[1] = v18;
      v21 = a1 + 1;
      v22 = a1 + 2;
      if (v20 >= v19)
      {
        goto LABEL_27;
      }
    }

LABEL_26:
    *v21 = v13;
    *v22 = v18;
    goto LABEL_27;
  }

  if (v20 < v17)
  {
    a1[1] = v13;
    *v14 = v15;
    v21 = a1;
    v22 = a1 + 1;
    if (v20 < v19)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  v37 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v38 = 0;
  for (i = 24; ; i += 8)
  {
    v40 = *v37;
    v41 = *v14;
    v42 = *(v16 + 4 * *v37);
    if (v42 < *(v16 + 4 * v41))
    {
      v43 = i;
      while (1)
      {
        *(a1 + v43) = v41;
        v44 = v43 - 8;
        if (v43 == 8)
        {
          break;
        }

        v41 = *(a1 + v43 - 16);
        v43 -= 8;
        if (v42 >= *(v16 + 4 * v41))
        {
          v45 = (a1 + v44);
          goto LABEL_35;
        }
      }

      v45 = a1;
LABEL_35:
      *v45 = v40;
      if (++v38 == 8)
      {
        break;
      }
    }

    v14 = v37++;
    if (v37 == a2)
    {
      return 1;
    }
  }

  return v37 + 1 == a2;
}

uint64_t sub_26150772C(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZNK3mrc9inference3iie16IIEPostprocessor3runERKNS1_20IIEImagePreprocessorERKNS_6Sample11PixelBufferERNSt3__18optionalINS_5ErrorEEERKNSB_IyEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_261507768(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3200 != -1)
  {
    dispatch_once(&qword_280CB3200, &unk_2873D0680);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB31F8;
    if (os_signpost_enabled(qword_280CB31F8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_END, v2, "IIEPostprocessor::run", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_2615078A0(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZNK3mrc9inference3iie16IIEPostprocessor3runERKNS1_20IIEImagePreprocessorERKNS_6Sample11PixelBufferERNSt3__18optionalINS_5ErrorEEERKNSB_IyEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2615078DC(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3200 != -1)
  {
    dispatch_once(&qword_280CB3200, &unk_2873D0680);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB31F8;
    if (os_signpost_enabled(qword_280CB31F8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "IIEPostprocessor::run", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_261507A08(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = atomic_exchange((a2 + 8), 0);
  *(a1 + 16) = atomic_exchange((a2 + 16), 0);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  v6 = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 72) = 0;
  v7 = a1 + 72;
  *(v7 - 8) = v6;
  *(v7 + 128) = 0;
  if (*(a2 + 200) == 1)
  {
    sub_26148819C(v7, (a2 + 72));
    *(a1 + 200) = 1;
    if (*(a2 + 200))
    {
      sub_2614880A4(a2 + 72);
      *(a2 + 200) = 0;
    }
  }

  v8 = *(a2 + 208);
  *(a2 + 208) = 0u;
  *(a1 + 208) = v8;
  v9 = *(a2 + 224);
  *(a2 + 224) = 0;
  *(a1 + 224) = v9;
  v10 = *(a2 + 232);
  *(a2 + 232) = 0;
  *(a1 + 232) = v10;
  v11 = *(a2 + 240);
  *(a2 + 240) = 0;
  *(a1 + 240) = v11;
  v12 = *(a2 + 248);
  *(a2 + 248) = 0;
  *(a1 + 248) = v12;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = *(a2 + 272);
  *(a2 + 272) = 0;
  *(a2 + 256) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 392) = 0;
  if (*(a2 + 392) == 1)
  {
    *(a1 + 280) = &unk_2873D1E88;
    v13 = *(a2 + 288);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 288) = v13;
    *(a1 + 280) = &unk_2873D1E28;
    v14 = *(a2 + 312);
    v15 = *(a2 + 328);
    *(a1 + 344) = *(a2 + 344);
    *(a1 + 312) = v14;
    *(a1 + 328) = v15;
    if (*(a2 + 344) == 1)
    {
      *(a2 + 344) = 0;
    }

    v16 = *(a2 + 352);
    v17 = *(a2 + 368);
    *(a1 + 384) = *(a2 + 384);
    *(a1 + 352) = v16;
    *(a1 + 368) = v17;
    if (*(a2 + 384) == 1)
    {
      *(a2 + 384) = 0;
    }

    *(a1 + 392) = 1;
    if (*(a2 + 392))
    {
      if (*(a2 + 344) == 1)
      {
        free(*(a2 + 312));
      }

      *(a2 + 392) = 0;
    }
  }

  *(a1 + 400) = atomic_exchange((a2 + 400), 0);
  return a1;
}

uint64_t sub_261507BE8(uint64_t a1)
{
  sub_26149F9E0((a1 + 400));
  if (*(a1 + 392) == 1 && *(a1 + 344) == 1)
  {
    free(*(a1 + 312));
  }

  v4 = (a1 + 256);
  sub_2614B790C(&v4);
  sub_2614B7994((a1 + 248), 0);
  sub_2614B7994((a1 + 240), 0);
  sub_2614B7994((a1 + 232), 0);
  sub_2614B7994((a1 + 224), 0);
  sub_2614B7994((a1 + 216), 0);
  sub_2614B7A0C((a1 + 208), 0);
  if (*(a1 + 200) == 1)
  {
    sub_2614880A4(a1 + 72);
  }

  v2 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_26148D890((a1 + 16));
  sub_26148D890((a1 + 8));
  return a1;
}

uint64_t sub_261507CF4(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference3iie8IIEModel7prepareERNSt3__18optionalINS_5ErrorEEERKNS4_IyEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_261507D30(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3200 != -1)
  {
    dispatch_once(&qword_280CB3200, &unk_2873D0680);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB31F8;
    if (os_signpost_enabled(qword_280CB31F8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_END, v2, "IIEModel::prepare", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_261507E68(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference3iie8IIEModel7prepareERNSt3__18optionalINS_5ErrorEEERKNS4_IyEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_261507EA4(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3200 != -1)
  {
    dispatch_once(&qword_280CB3200, &unk_2873D0680);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB31F8;
    if (os_signpost_enabled(qword_280CB31F8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "IIEModel::prepare", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_261507FDC(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference3iie8IIEModel3runERKNS_6SampleERKNSt3__18optionalINS1_11IIECropRectEEERNS7_INS_5ErrorEEERKNS7_IyEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_261508018(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3200 != -1)
  {
    dispatch_once(&qword_280CB3200, &unk_2873D0680);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB31F8;
    if (os_signpost_enabled(qword_280CB31F8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_END, v2, "IIEModel::run", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_261508150(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference3iie8IIEModel3runERKNS_6SampleERKNSt3__18optionalINS1_11IIECropRectEEERNS7_INS_5ErrorEEERKNS7_IyEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_26150818C(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3200 != -1)
  {
    dispatch_once(&qword_280CB3200, &unk_2873D0680);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB31F8;
    if (os_signpost_enabled(qword_280CB31F8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "IIEModel::run", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_26150839C(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference3iie8IIEModel6createERKNS_7Context7OptionsEbRNSt3__18optionalINS_5ErrorEEERKNS8_IyEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2615083D8(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3200 != -1)
  {
    dispatch_once(&qword_280CB3200, &unk_2873D0680);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB31F8;
    if (os_signpost_enabled(qword_280CB31F8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_END, v2, "IIEModel::create", &unk_26159692B, v4, 2u);
    }
  }
}

uint64_t sub_261508510(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference3iie8IIEModel6createERKNS_7Context7OptionsEbRNSt3__18optionalINS_5ErrorEEERKNS8_IyEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_26150854C(uint64_t a1, os_signpost_id_t *a2)
{
  v2 = *a2;
  if (qword_280CB3200 != -1)
  {
    dispatch_once(&qword_280CB3200, &unk_2873D0680);
  }

  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = qword_280CB31F8;
    if (os_signpost_enabled(qword_280CB31F8))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_26146F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "IIEModel::create", &unk_26159692B, v4, 2u);
    }
  }
}

void sub_261508678(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = (a2 + 24);
  if (!*(a2 + 24))
  {
    return;
  }

  os_unfair_lock_lock_with_options();
  v5 = &unk_261572D70;
  v6 = sub_26149DF64((a1 + 24), &unk_261572D70);
  if (!v6)
  {
    v14[0] = &unk_261572D70;
    v14[1] = v14;
    v14[2] = "IIEContext";
    v14[3] = 10;
    operator new();
  }

  if (v6[3] != &unk_261572D70)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_38;
  }

  v7 = v6[6];
  if (!v7)
  {
LABEL_38:
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_39:
    dispatch_once(&qword_280CB3200, &unk_2873D0680);
LABEL_13:
    v10 = qword_280CB31F8;
    if (os_log_type_enabled(qword_280CB31F8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(context[0]) = 0;
      _os_log_error_impl(&dword_26146F000, v10, OS_LOG_TYPE_ERROR, "Unable to retrieve or instantiate concrete IIE context.", context, 2u);
    }

    LOBYTE(v17) = 0;
    v18 = 0;
    sub_261500FD8(v19, -1, 0);
    sub_26150122C(context, v19);
    v21 = 1;
    if (!*v2)
    {
      sub_261477FC4();
    }

    (*(**v2 + 48))(*v2, &v17, context);
    if (v21 == 1)
    {
      sub_261501098(context);
    }

    sub_261501098(v19);
    if (v5)
    {
      goto LABEL_35;
    }

    return;
  }

  v8 = *v7;
  v5 = v7[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 8));
  if (!v8)
  {
    if (qword_280CB3200 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

  v9 = *v2;
  if (!*v2)
  {
    v2 = &v16;
    goto LABEL_21;
  }

  if (v9 != a2)
  {
    v16 = *v2;
LABEL_21:
    *v2 = 0;
    goto LABEL_23;
  }

  v16 = v15;
  (*(*v9 + 24))(v9, v15);
LABEL_23:
  if (v16)
  {
    v11 = *(v8 + 608);
    v12 = dispatch_time(0, 3000000000);
    if (dispatch_group_wait(v11, v12))
    {
      if (qword_280CB3200 != -1)
      {
        dispatch_once(&qword_280CB3200, &unk_2873D0680);
      }

      v13 = qword_280CB31F8;
      if (os_log_type_enabled(qword_280CB31F8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(context[0]) = 0;
        _os_log_error_impl(&dword_26146F000, v13, OS_LOG_TYPE_ERROR, "Timed out waiting for model to be loaded.", context, 2u);
      }

      LOBYTE(v17) = 0;
      v18 = 0;
      sub_261500FD8(v19, -6010, @"Timed out waiting for model to be loaded.");
      sub_26150122C(context, v19);
      v21 = 1;
      if (!v16)
      {
        sub_261477FC4();
      }

      (*(*v16 + 48))(v16, &v17, context);
      if (v21 == 1)
      {
        sub_261501098(context);
      }

      sub_261501098(v19);
    }

    else
    {
      context[0] = &unk_2873D0EB0;
      context[1] = v8;
      context[2] = v15;
      context[3] = context;
      dispatch_barrier_async_and_wait_f(*(v8 + 8), context, sub_261508EEC);
      sub_261477CFC(context);
    }
  }

  sub_261508E6C(v15);
  if (v5)
  {
LABEL_35:
    sub_26149E780(v5);
  }
}

void sub_261508C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a2)
  {
    sub_261470E34(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_261508DAC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 608);
    *(v2 + 608) = 0;
    if (v3)
    {
      (*(v2 + 616))();
    }

    if (*(v2 + 600) == 1)
    {
      sub_261501098((v2 + 504));
    }

    if (*(v2 + 496) == 1)
    {
      sub_261507BE8(v2 + 88);
    }

    sub_26148D890((v2 + 40));
    sub_26148D890((v2 + 32));
    v4 = *(v2 + 8);
    *v2 = &unk_2873D1EE8;
    *(v2 + 8) = 0;
    if (v4)
    {
      (*(v2 + 16))();
    }

    MEMORY[0x2667045D0](v2, 0x10F3C40B42F0E8ELL);
  }

  return a1;
}

uint64_t sub_261508E6C(uint64_t a1)
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

uint64_t sub_261508EEC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_261477FC4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_261508F40(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference3iie12_GLOBAL__N_110IIEContext7performENSt3__18functionIFvONS4_8optionalINS4_17reference_wrapperINS1_8IIEModelEEEEEONS6_INS_5ErrorEEEEEEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

atomic_ullong *sub_261508F7C(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 8);
  if (*(v1 + 600) == 1)
  {
    v2 = *(a1 + 16);
    LOBYTE(__p) = 0;
    LOBYTE(v16) = 0;
    sub_2615010E4(&v13, v1 + 504);
    v14 = 1;
    v3 = *(v2 + 24);
    if (!v3)
    {
      sub_261477FC4();
    }

LABEL_3:
    result = (*(*v3 + 48))(v3, &__p, &v13);
    if (v14 != 1)
    {
      return result;
    }

    p_p = &v13;
    return sub_261501098(p_p);
  }

  if ((*(v1 + 496) & 1) == 0)
  {
    dispatch_group_enter(*(v1 + 608));
    if (qword_280CB3200 != -1)
    {
      dispatch_once(&qword_280CB3200, &unk_2873D0680);
    }

    v11 = os_signpost_id_make_with_pointer(qword_280CB31F8, v1);
    v12 = 1;
    v18[0] = &unk_2873D6C90;
    v19 = v18;
    v17[0] = &unk_2873D6D10;
    v17[3] = v17;
    v20 = &v11;
    sub_261489C64(&v21, v17);
    if (*(v20 + 8) == 1 && v19 != 0)
    {
      sub_261489CFC(v19, *v20);
    }

    sub_261489D4C(v17);
    sub_261489D4C(v18);
    operator new();
  }

  if (*(v1 + 288) == 1 && *(v1 + 480) == 1 && *(v1 + 432) == 1 && atomic_load_explicit((v1 + 488), memory_order_acquire))
  {
    v7 = *(a1 + 16);
    __p = (v1 + 88);
    LOBYTE(v16) = 1;
    LOBYTE(v13) = 0;
    v14 = 0;
    v3 = *(v7 + 24);
    if (!v3)
    {
      sub_261477FC4();
    }

    goto LABEL_3;
  }

  v8 = *(a1 + 16);
  LOBYTE(v22) = 0;
  v23 = 0;
  v9 = *(v1 + 600);
  if (v9 == 1)
  {
    sub_2615010E4(&v13, v1 + 504);
  }

  else
  {
    sub_261500FD8(&__p, -1, 0);
    sub_26150122C(&v13, &__p);
  }

  v14 = 1;
  v10 = *(v8 + 24);
  if (!v10)
  {
    sub_261477FC4();
  }

  result = (*(*v10 + 48))(v10, &v22, &v13);
  if (v14 == 1)
  {
    result = sub_261501098(&v13);
  }

  if ((v9 & 1) == 0)
  {
    p_p = &__p;
    return sub_261501098(p_p);
  }

  return result;
}

void sub_261509FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_26149F9E0(&__p);
  sub_261489DCC((v67 - 136));
  if (a64 == 1)
  {
    sub_261507BE8(&a13);
  }

  sub_261489DCC((v67 - 240));
  _Unwind_Resume(a1);
}

__n128 sub_26150A19C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2873D0EB0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_26150A244(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc7Context3Any4makeINS_9inference3iie12_GLOBAL__N_110IIEContextEvEES1_RKNS0_7OptionsEP16dispatch_queue_sEUlPvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_26150A280(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    v2 = *(*a2 + 8);
    if (v2)
    {
      sub_26149E780(v2);
    }

    JUMPOUT(0x2667045D0);
  }
}

uint64_t sub_26150A36C(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "NSt3__110shared_ptrIN3mrc9inference3iie12_GLOBAL__N_110IIEContextEE27__shared_ptr_default_deleteIS5_S5_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26150A3A4(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 608);
    *(v1 + 608) = 0;
    if (v2)
    {
      (*(v1 + 616))();
    }

    if (*(v1 + 600) == 1)
    {
      sub_261501098((v1 + 504));
    }

    if (*(v1 + 496) == 1)
    {
      sub_261507BE8(v1 + 88);
    }

    sub_26148D890((v1 + 40));
    sub_26148D890((v1 + 32));
    v3 = *(v1 + 8);
    *v1 = &unk_2873D1EE8;
    *(v1 + 8) = 0;
    if (v3)
    {
      (*(v1 + 16))();
    }

    JUMPOUT(0x2667045D0);
  }

  return result;
}

void sub_26150A470(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2667045D0);
}

void sub_26150A4AC(uint64_t a1)
{
  v2 = *(a1 + 608);
  *(a1 + 608) = 0;
  if (v2)
  {
    (*(a1 + 616))();
  }

  if (*(a1 + 600) == 1)
  {
    sub_261501098((a1 + 504));
  }

  if (*(a1 + 496) == 1)
  {
    sub_261507BE8(a1 + 88);
  }

  sub_26148D890((a1 + 40));
  sub_26148D890((a1 + 32));
  v3 = *(a1 + 8);
  *a1 = &unk_2873D1EE8;
  *(a1 + 8) = 0;
  if (v3)
  {
    (*(a1 + 16))();
  }

  JUMPOUT(0x2667045D0);
}

uint64_t sub_26150A568(uint64_t a1)
{
  v2 = *(a1 + 608);
  *(a1 + 608) = 0;
  if (v2)
  {
    (*(a1 + 616))();
  }

  if (*(a1 + 600) == 1)
  {
    sub_261501098((a1 + 504));
  }

  if (*(a1 + 496) == 1)
  {
    sub_261507BE8(a1 + 88);
  }

  sub_26148D890((a1 + 40));
  sub_26148D890((a1 + 32));
  v3 = *(a1 + 8);
  *a1 = &unk_2873D1EE8;
  *(a1 + 8) = 0;
  if (v3)
  {
    (*(a1 + 16))();
  }

  return a1;
}

void sub_26150A604(uint64_t a1)
{
  v2 = *(a1 + 8);
  *a1 = &unk_2873D1EE8;
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(a1 + 16))();
  }

  JUMPOUT(0x2667045D0);
}

uint64_t sub_26150A674(uint64_t a1)
{
  v2 = *(a1 + 8);
  *a1 = &unk_2873D1EE8;
  *(a1 + 8) = 0;
  if (v2)
  {
    (*(a1 + 16))();
  }

  return a1;
}

atomic_ullong *sub_26150A6C4@<X0>(uint64_t a1@<X0>, CFErrorRef *a2@<X8>)
{
  v6[4] = *MEMORY[0x277D85DE8];
  LOBYTE(v4[0]) = 0;
  v5 = 0;
  v6[0] = &unk_2873CFBC0;
  v6[1] = v4;
  v6[3] = v6;
  sub_261508678(a1, v6);
  result = sub_261508E6C(v6);
  if (v5 == 1)
  {
    result = sub_261501518(a2, v4);
    if (v5)
    {
      return sub_261501098(v4);
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_26150A788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a21 == 1)
  {
    sub_261501098(&a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_26150A7C4(uint64_t a1, uint64_t a2)
{
  if (sub_2614777A0(*(a2 + 8), "ZN3mrc9inference3iie8IIEModel19preflightForContextERNS_7ContextEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26150A800(uint64_t result, _BYTE *a2, uint64_t a3)
{
  if (a2[8] != 1)
  {
    return sub_261477470(*(result + 8), a3);
  }

  v3 = *a2;
  if (*(*a2 + 200) != 1 || *(v3 + 392) != 1 || *(v3 + 344) != 1 || !atomic_load_explicit((v3 + 400), memory_order_acquire))
  {
    return sub_261477470(*(result + 8), a3);
  }

  return result;
}

uint64_t sub_26150A858(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2873CFBC0;
  a2[1] = v2;
  return result;
}

uint64_t sub_26150A8EC(int *a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = 0;
  v7 = 4 * a2;
  v8 = a1;
  v29 = a2;
  do
  {
    v9 = *v8++;
    v6 += v9;
    v7 -= 4;
  }

  while (v7);
  v10 = 0;
  LODWORD(v11) = 0;
  v12 = 0;
  v13 = a2 - 1;
  v39 = a3;
  v34 = a2 - 3;
  v30 = a1;
  v28 = v13;
  do
  {
    v14 = 1 << v10;
    v15 = a1[v10];
    if (v15 < 2)
    {
      LODWORD(v11) = v14 | v11;
      LODWORD(v15) = 1;
    }

    else
    {
      v38 = v29 - v10 - 1;
      v32 = v10;
      v33 = v6;
      v35 = v10 - v13;
      v16 = v29 - v10 - 3;
      v11 = v11 & ~v14;
      v40 = v6;
      v41 = v29 - v10;
      v37 = (~v10 + a2);
      v42 = v29 - v10 - 2;
      v17 = 1;
      v18 = 1;
      v36 = a1[v10];
      do
      {
        v19 = v40 - v17;
        v20 = sub_26147DF84(v40 - v17 - 1, v42);
        if ((a4 & 1) == 0 && !v18 && v38 <= v19 - v37)
        {
          v20 -= sub_26147DF84(v19 - v41, v42);
        }

        if (v41 < 3)
        {
          v26 = v20 - (v19 > v39);
        }

        else
        {
          v21 = v11;
          v22 = a4;
          v23 = v19 - v42;
          if (v19 - v42 <= v39)
          {
            v24 = 0;
          }

          else
          {
            v24 = 0;
            v25 = v34;
            do
            {
              v24 += sub_26147DF84(v25, v16);
              --v23;
              ++v25;
            }

            while (v23 > a3);
          }

          v26 = v20 + v24 * v35;
          a4 = v22;
          v11 = v21;
          v15 = v36;
        }

        v12 = (v26 + v12);
        ++v17;
        v18 = v11;
      }

      while (v17 != v15);
      a1 = v30;
      v10 = v32;
      v6 = v33;
      v13 = v28;
    }

    v6 -= v15;
    ++v10;
    --v34;
  }

  while (v10 != v13);
  return v12;
}

void sub_26150AB08(void *a1)
{
  *a1 = &unk_2873D1330;
  a1[2] = &unk_2873D12B8;
  v2 = a1[4];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  a1[4] = 0;

  JUMPOUT(0x2667045D0);
}

void *sub_26150AB98(void *a1)
{
  *a1 = &unk_2873D1330;
  a1[2] = &unk_2873D12B8;
  v2 = a1[4];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  a1[4] = 0;
  return a1;
}

std::string *sub_26150B118(std::string *result, const std::string::value_type *a2, std::string::size_type a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v7 = result;
    if (MEMORY[0x266704AD0]("UTF-8", a4) != -1)
    {
      operator new[]();
    }

    if (qword_27FEB4220 != -1)
    {
      dispatch_once(&qword_27FEB4220, &unk_2873D67A8);
    }

    v8 = qword_27FEB4218;
    if (os_log_type_enabled(qword_27FEB4218, OS_LOG_TYPE_ERROR))
    {
      v9 = *__error();
      v10[0] = 136446722;
      *&v10[1] = "UTF-8";
      v11 = 2082;
      v12 = a4;
      v13 = 1026;
      v14 = v9;
      _os_log_error_impl(&dword_26146F000, v8, OS_LOG_TYPE_ERROR, "[QR] iconv_open(%{public}s, %{public}s) failed: %{public, errno}d", v10, 0x1Cu);
    }

    return std::string::append(v7, a2, a3);
  }

  return result;
}

void sub_26150B504(uint64_t a1, uint64_t a2, int a3)
{
  if (8 * (*(*(a1 + 32) + 24) - *(*(a1 + 32) + 16) - *(a1 + 40)) - *(a1 + 44) >= 8 * a3)
  {
    sub_261482FFC(&v4);
  }

  exception = __cxa_allocate_exception(0x20uLL);
  exception[2] = 0;
  exception[3] = 0;
  *exception = &unk_2873D1A30;
  exception[1] = 0;
  __cxa_throw(exception, &unk_2873D2C40, sub_2614EB700);
}

void sub_26150BBFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, atomic_uint *a23)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a23)
  {
    sub_2614705CC(a23);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_26150BC4C(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_26150BC94(a1, __s, v4);
}

std::string *sub_26150BC94(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

void sub_26150C2E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (v17 < 0)
  {
    operator delete(v16);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      sub_2614D7150(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t sub_26150C35C(unint64_t a1)
{
  if (a1 >= 0x2D)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &unk_2873D1A30;
    exception[1] = 0;
    __cxa_throw(exception, &unk_2873D2C40, sub_2614EB700);
  }

  return a0123456789abcd[a1];
}

uint64_t sub_26150C3C4(uint64_t a1, std::string *a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a6 + 8);
  v10 = a6 + 8;
  v11 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v10;
  do
  {
    if (*(v11 + 32) >> 30)
    {
      v13 = v11;
      v14 = 0;
    }

    else
    {
      v14 = 1;
    }

    v11 = *(v11 + 8 * v14);
  }

  while (v11);
  if (v13 == v10 || *(v13 + 32) >= 0x40000001u)
  {
LABEL_9:
    v13 = v10;
  }

  if (a5)
  {
    v15 = *(a5 + 8);
LABEL_12:
    v15 = *v15;
    goto LABEL_13;
  }

  if (v13 == v10)
  {
    v15 = 0;
  }

  else
  {
    v15 = (v13 + 40);
    if (*(v13 + 63) < 0)
    {
      goto LABEL_12;
    }
  }

LABEL_13:
  v16 = "ASCII";
  if (v15)
  {
    v16 = v15;
  }

  v33 = v16;
  sub_26149A5B4(&v43);
  if (a3 < 2)
  {
    v18 = a3;
  }

  else
  {
    do
    {
      if (8 * (*(*(a1 + 32) + 24) - *(*(a1 + 32) + 16) - *(a1 + 40)) - *(a1 + 44) <= 10)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        exception[2] = 0;
        exception[3] = 0;
        *exception = &unk_2873D1A30;
        exception[1] = 0;
        __cxa_throw(exception, &unk_2873D2C40, sub_2614EB700);
      }

      v17 = sub_2614AB260(a1, 11);
      LOBYTE(v36) = sub_26150C35C(v17 / 45);
      sub_26148EA44(&v43, &v36, 1);
      LOBYTE(v36) = sub_26150C35C(v17 % 45);
      sub_26148EA44(&v43, &v36, 1);
      v18 = a3 - 2;
      v19 = a3 <= 3;
      a3 -= 2;
    }

    while (!v19);
  }

  if (v18 == 1)
  {
    v20 = sub_2614AB260(a1, 6);
    LOBYTE(v36) = sub_26150C35C(v20);
    sub_26148EA44(&v43, &v36, 1);
  }

  sub_2614D70A4(__p, &v43);
  v21 = MEMORY[0x277D82828];
  if (a4)
  {
    sub_26149A5B4(&v36);
    v22 = HIBYTE(v42);
    v23 = __p[1];
    if (v42 >= 0)
    {
      v24 = HIBYTE(v42);
    }

    else
    {
      v24 = __p[1];
    }

    if (v24)
    {
      for (i = 0; i < v24; ++i)
      {
        if ((v22 & 0x80) != 0)
        {
          v26 = *(__p[0] + i);
          v27 = v23;
        }

        else
        {
          v26 = *(__p + i);
          v27 = v22;
        }

        if (v26 == 37)
        {
          if (i >= (v27 - 1))
          {
            goto LABEL_39;
          }

          v28 = __p[0];
          if (v22 >= 0)
          {
            v28 = __p;
          }

          if (*(v28 + i + 1) == 37)
          {
            LOBYTE(v34) = *(v28 + i);
            sub_26148EA44(&v36, &v34, 1);
            ++i;
          }

          else
          {
LABEL_39:
            LOBYTE(v34) = 29;
            sub_26148EA44(&v36, &v34, 1);
          }
        }

        else
        {
          LOBYTE(v34) = v26;
          sub_26148EA44(&v36, &v34, 1);
        }
      }
    }

    sub_2614D70A4(&v34, &v36);
    if ((v22 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }

    *__p = v34;
    v42 = v35;
    v36 = *v21;
    *(&v36 + *(v36 - 24)) = v21[3];
    v37 = MEMORY[0x277D82878] + 16;
    if (v39 < 0)
    {
      operator delete(v38[7].__locale_);
    }

    v37 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v38);
    std::ostream::~ostream();
    MEMORY[0x266704550](&v40);
  }

  if (v42 >= 0)
  {
    v29 = __p;
  }

  else
  {
    v29 = __p[0];
  }

  if (v42 >= 0)
  {
    v30 = HIBYTE(v42);
  }

  else
  {
    v30 = __p[1];
  }

  sub_26150B118(a2, v29, v30, v33);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p[0]);
  }

  v43 = *v21;
  *(&v43 + *(v43 - 24)) = v21[3];
  v44 = MEMORY[0x277D82878] + 16;
  if (v46 < 0)
  {
    operator delete(v45[7].__locale_);
  }

  v44 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v45);
  std::ostream::~ostream();
  return MEMORY[0x266704550](&v47);
}

void sub_26150C900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, char a54)
{
  sub_2614D7150(&a14);
  if (a52 < 0)
  {
    operator delete(__p);
  }

  sub_2614D7150(&a54);
  _Unwind_Resume(a1);
}

void sub_26150CA24(uint64_t a1, atomic_uint *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(a2 + 2, 1u, memory_order_relaxed);
  }

  v13 = a2;
  sub_261501B5C(v14, &v13);
  if (a2)
  {
    sub_2614705CC(a2);
  }

  sub_261502114(v14);
  sub_261501C80(&v17, v14);
  sub_2614705CC(v17);
  sub_261501C80(v18, v14);
  sub_261502114(v14);
  v3 = *(*v18 + 24);
  if (v3 < 8)
  {
    if (atomic_load_explicit(&qword_280CB3278, memory_order_acquire) != -1)
    {
      v17 = sub_26150AC08;
      v19 = &v17;
      std::__call_once(&qword_280CB3278, &v19, sub_2614E4110);
    }

    v4 = v15;
    __p = *(v15 + 16);
    if (__p << 32)
    {
      v5 = 0;
      v6 = *(*qword_280CB3560 + 8 * v3);
      v7 = v16;
      do
      {
        v8 = 0;
        do
        {
          if ((*(*v6 + 16))(v6, v5, v8))
          {
            if (v7)
            {
              v9 = v8;
            }

            else
            {
              v9 = v5;
            }

            if (v7)
            {
              v10 = v5;
            }

            else
            {
              v10 = v8;
            }

            *(*(v4 + 48) + (((v10 + *(v4 + 24) * v9) >> 3) & 0x1FFFFFFFFFFFFFFCLL)) ^= 1 << (v10 + *(v4 + 24) * v9);
          }

          ++v8;
        }

        while (__p != v8);
        ++v5;
      }

      while (v5 != __p);
    }

    operator new();
  }

  exception = __cxa_allocate_exception(0x20uLL);
  sub_2614EB5DC(exception, "reference must be between 0 and 7");
  *exception = &unk_2873D1808;
  __cxa_throw(exception, &unk_2873D2AD8, sub_2614C5F90);
}

void sub_26150DA6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, atomic_uint *a36, char a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, atomic_uint *a42)
{
  *(v42 - 184) = &a37;
  sub_261480A80((v42 - 184));
  if (a16)
  {
    operator delete(a16);
  }

  if (a36)
  {
    sub_2614705CC(a36);
  }

  a40 = &unk_2873D12B8;
  if (a42)
  {
    sub_2614705CC(a42);
  }

  sub_26150E034((v42 - 232));
  _Unwind_Resume(a1);
}

void sub_26150DA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, atomic_uint *a42)
{
  if (a42)
  {
    sub_2614705CC(a42);
  }

  sub_2614705CC(v42);
  if (a12)
  {
    JUMPOUT(0x26150DECCLL);
  }

  JUMPOUT(0x26150DED0);
}

void sub_26150DB80()
{
  MEMORY[0x2667045D0](v0, 0x1091C409401DBA8);
  if (v1)
  {
    JUMPOUT(0x26150DECCLL);
  }

  JUMPOUT(0x26150DED0);
}

void sub_26150DBA4()
{
  if (*(v0 - 152))
  {
    JUMPOUT(0x26150DECCLL);
  }

  JUMPOUT(0x26150DED0);
}

void sub_26150DBC0()
{
  if (v0)
  {
    sub_2614705CC(v0);
  }

  JUMPOUT(0x26150DED8);
}

void sub_26150DC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, atomic_uint *a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, atomic_uint *a42)
{
  __cxa_free_exception(v42);
  *(v44 - 184) = &a37;
  sub_261480A80((v44 - 184));
  if (v43)
  {
    operator delete(v43);
  }

  if (a36)
  {
    sub_2614705CC(a36);
  }

  a40 = &unk_2873D12B8;
  if (a42)
  {
    sub_2614705CC(a42);
  }

  sub_26150E034((v44 - 232));
  _Unwind_Resume(a1);
}

void sub_26150DC20(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, atomic_uint *a27, uint64_t a28, uint64_t a29, atomic_uint *a30, uint64_t a31, uint64_t a32, atomic_uint *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (a2 == 1)
  {
    v39 = __cxa_begin_catch(a1);
    v40 = (*(*v39 + 16))(v39);
    sub_2614EB5DC(v38 - 184, v40);
    *(v38 - 184) = &unk_2873D19D8;
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2614F5A80(exception, v38 - 184);
    __cxa_throw(exception, &unk_2873D2BF8, sub_26152411C);
  }

  *(v38 - 128) = &unk_2873D1298;
  v42 = *(v38 - 112);
  if (v42)
  {
    sub_2614705CC(v42);
  }

  if (a27)
  {
    sub_2614705CC(a27);
  }

  if (a30)
  {
    sub_2614705CC(a30);
  }

  if (v37)
  {
    sub_2614705CC(v37);
  }

  if (a33)
  {
    sub_2614705CC(a33);
  }

  *(v38 - 184) = &a37;
  sub_261480A80((v38 - 184));
  JUMPOUT(0x26150DEA4);
}

void sub_26150DCFC()
{
  sub_2614EB578((v0 - 184));
  __cxa_end_catch();
  JUMPOUT(0x26150DD24);
}

void sub_26150DE00()
{
  sub_2614705CC(v0);
  if (v1)
  {
    JUMPOUT(0x26150DECCLL);
  }

  JUMPOUT(0x26150DED0);
}

void sub_26150DE20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, atomic_uint *a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, atomic_uint *a42)
{
  *(v43 - 184) = &unk_2873D12B8;
  v45 = *(v43 - 168);
  if (v45)
  {
    sub_2614705CC(v45);
  }

  *(v43 - 184) = &a37;
  sub_261480A80((v43 - 184));
  if (v42)
  {
    operator delete(v42);
  }

  if (a36)
  {
    sub_2614705CC(a36);
  }

  a40 = &unk_2873D12B8;
  if (a42)
  {
    sub_2614705CC(a42);
  }

  sub_26150E034((v43 - 232));
  _Unwind_Resume(a1);
}

uint64_t *sub_26150DEE0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v2 = v1;
      v3 = *(v1 + 32);
      if (v3 < 0x40000001)
      {
        break;
      }

      v1 = *v2;
      if (!*v2)
      {
        goto LABEL_7;
      }
    }

    if (v3 == 0x40000000)
    {
      return v2;
    }

    v1 = v2[1];
    if (!v1)
    {
      goto LABEL_7;
    }
  }
}

void sub_26150DFD8(char *a1)
{
  if (a1)
  {
    sub_26150DFD8(*a1);
    sub_26150DFD8(*(a1 + 1));
    if (a1[63] < 0)
    {
      operator delete(*(a1 + 5));
    }

    operator delete(a1);
  }
}

void *sub_26150E034(void *a1)
{
  *a1 = &unk_2873D1428;
  v2 = a1[4];
  if (v2)
  {
    sub_2614705CC(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_2614705CC(v3);
  }

  return a1;
}

void sub_26150E08C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  sub_2614830DC(v9, a2);
  v13 = &unk_26157A1B0;
  v6 = *(sub_261480070(a3, 12) + 8);
  v13 = &unk_26157A1B4;
  v7 = *(sub_261480070(a3, 13) + 8);
  v12[0] = 0;
  v12[1] = 0;
  v11 = v12;
  if (a4)
  {
    v13 = &unk_2615740A8;
    v8 = sub_26150DEE0(&v11);
    sub_26150BC4C((v8 + 5), a4);
  }

  sub_2614830DC(&v10, v9);
  sub_26151C908(v6);
  sub_26151A4D4(v7);
  operator new();
}

void sub_26150E950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, atomic_uint *a15, uint64_t a16, uint64_t a17, atomic_uint *a18, uint64_t a19, char *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, atomic_uint *a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  sub_2614705CC(v43);
  if (a27)
  {
    sub_2614705CC(a27);
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  sub_2614705CC(v43);
  if (a18)
  {
    sub_2614705CC(a18);
  }

  sub_26150DFD8(a20);
  if (a15)
  {
    sub_2614705CC(a15);
  }

  _Unwind_Resume(a1);
}

uint64_t MRCDecoderResultGetTypeID()
{
  if (qword_280CB3508[0] != -1)
  {
    dispatch_once_f(qword_280CB3508, 0, sub_26147D490);
  }

  return qword_280CB3600;
}

uint64_t MRCDecoderResultGetDescriptorCount(CFTypeRef cf)
{
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (qword_280CB3508[0] != -1)
    {
      dispatch_once_f(qword_280CB3508, 0, sub_26147D490);
    }

    if (v2 != qword_280CB3600)
    {
      _os_assumes_log();
    }
  }

  return (*(cf + 3) - *(cf + 2)) >> 3;
}

unint64_t MRCDecoderResultGetDescriptorAtIndex(CFTypeRef cf, unint64_t a2)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (qword_280CB3508[0] != -1)
    {
      dispatch_once_f(qword_280CB3508, 0, sub_26147D490);
    }

    if (v4 != qword_280CB3600)
    {
      _os_assumes_log();
    }
  }

  v5 = *(cf + 2);
  if (a2 >= (*(cf + 3) - v5) >> 3)
  {
    _os_assumes_log();
    v5 = *(cf + 2);
  }

  return atomic_load_explicit((v5 + 8 * a2), memory_order_acquire);
}

CFDictionaryRef MRCDecoderResultCopyAttributes(atomic_ullong *cf)
{
  v2 = *MEMORY[0x277CBECE8];
  if (cf)
  {
    v3 = CFGetTypeID(cf);
    if (qword_280CB3508[0] != -1)
    {
      dispatch_once_f(qword_280CB3508, 0, sub_26147D490);
    }

    if (v3 != qword_280CB3600)
    {
      _os_assumes_log();
    }
  }

  explicit = atomic_load_explicit(cf + 5, memory_order_acquire);
  if (explicit)
  {
    explicit = CFRetain(explicit);
  }

  v7 = explicit;
  Copy = CFDictionaryCreateCopy(v2, atomic_load_explicit(&v7, memory_order_acquire));
  sub_2614769A4(&v7);
  return Copy;
}

void sub_26150EEB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2614769A4(va);
  _Unwind_Resume(a1);
}

unint64_t MRCDecoderResultCopyAttribute(atomic_ullong *cf, void *key)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (qword_280CB3508[0] != -1)
    {
      dispatch_once_f(qword_280CB3508, 0, sub_26147D490);
    }

    if (v4 != qword_280CB3600)
    {
      _os_assumes_log();
    }
  }

  explicit = atomic_load_explicit(cf + 5, memory_order_acquire);
  if (explicit)
  {
    explicit = CFRetain(explicit);
  }

  v9 = explicit;
  Value = CFDictionaryGetValue(atomic_load_explicit(&v9, memory_order_acquire), key);
  if (Value)
  {
    Value = CFRetain(Value);
  }

  v10 = Value;
  v7 = atomic_exchange(&v10, 0);
  sub_26148D890(&v10);
  sub_2614769A4(&v9);
  return v7;
}

CFStringRef sub_26150EFC0(void *a1, int a2)
{
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (atomic_load_explicit(&Mutable, memory_order_acquire))
  {
    CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"<%s %p> {\n", "MRCDecoderResult", a1 - 2);
    CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"    descriptors [%zu] {\n", (a1[1] - *a1) >> 3);
    v5 = *a1;
    v6 = a1[1];
    if (*a1 != v6)
    {
      do
      {
        v11 = sub_2615351C4(atomic_load_explicit(v5, memory_order_acquire) + 16, a2);
        if (atomic_load_explicit(&v11, memory_order_acquire))
        {
          ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(v4, atomic_load_explicit(&v11, memory_order_acquire), @"\n");
          if (atomic_load_explicit(&ArrayBySeparatingStrings, memory_order_acquire))
          {
            v9 = CFStringCreateByCombiningStrings(v4, atomic_load_explicit(&ArrayBySeparatingStrings, memory_order_acquire), @"\n        ");
            if (atomic_load_explicit(&v9, memory_order_acquire))
            {
              CFStringAppendFormat(atomic_load_explicit(&Mutable, memory_order_acquire), 0, @"        %@\n", atomic_load_explicit(&v9, memory_order_acquire));
            }

            sub_26148E848(&v9);
          }

          sub_261476A0C(&ArrayBySeparatingStrings);
        }

        sub_26148E848(&v11);
        ++v5;
      }

      while (v5 != v6);
    }

    CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"    }\n");
    if (atomic_load_explicit(a1 + 3, memory_order_acquire) && CFDictionaryGetCount(atomic_load_explicit(a1 + 3, memory_order_acquire)) >= 1)
    {
      CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"    attributes {\n");
      CFDictionaryApplyFunction(atomic_load_explicit(a1 + 3, memory_order_acquire), sub_26150F23C, atomic_load_explicit(&Mutable, memory_order_acquire));
      CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"    }\n");
    }

    CFStringAppend(atomic_load_explicit(&Mutable, memory_order_acquire), @"}");
    Copy = CFStringCreateCopy(v4, atomic_load_explicit(&Mutable, memory_order_acquire));
  }

  else
  {
    Copy = 0;
  }

  sub_2614959D0(&Mutable);
  return Copy;
}

void sub_26150F1F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_2614959D0(va);
  _Unwind_Resume(a1);
}

void sub_26150F274(void *key, const void *a2, CFDictionaryRef theDict)
{
  v9 = *MEMORY[0x277D85DE8];
  if (CFDictionaryGetValue(theDict, key))
  {
    if (qword_280CB3ED0 != -1)
    {
      dispatch_once(&qword_280CB3ED0, &unk_2873D6788);
    }

    v6 = qword_280CB3EC8;
    if (os_log_type_enabled(qword_280CB3EC8, OS_LOG_TYPE_DEBUG))
    {
      v7 = 138543362;
      v8 = key;
      _os_log_debug_impl(&dword_26146F000, v6, OS_LOG_TYPE_DEBUG, "MRCDecoderResult: consolidation: attribute key %{public}@ already exists, skipping...", &v7, 0xCu);
    }
  }

  else
  {

    CFDictionarySetValue(theDict, key, a2);
  }
}

uint64_t sub_26150F620(uint64_t a1, int a2, int a3, int a4, int a5, char *__s)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  *(a1 + 12) = a5;
  v8 = strlen(__s);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_261481038();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v10 = (a1 + 16);
  *(a1 + 39) = v8;
  if (v8)
  {
    memmove(v10, __s, v8);
  }

  *(v10 + v9) = 0;
  return a1;
}

void sub_26150F6E0()
{
  if (atomic_load_explicit(&qword_27FEB42A8, memory_order_acquire) != -1)
  {
    v3[1] = v0;
    v3[2] = v1;
    v2 = v3;
    v3[0] = sub_26150F3A8;
    std::__call_once(&qword_27FEB42A8, &v2, sub_2614AD020);
  }
}

__int128 *sub_26150F760(unsigned int a1)
{
  if (a1 - 5 < 0xFFFFFFFC)
  {
    return 0;
  }

  if ((atomic_load_explicit(qword_27FEB4330, memory_order_acquire) & 1) == 0)
  {
    v3 = a1;
    v2 = __cxa_guard_acquire(qword_27FEB4330);
    a1 = v3;
    if (v2)
    {
      xmmword_27FEB42B0[0] = xmmword_261561040;
      qword_27FEB42C0 = 0;
      unk_27FEB42C8 = 0;
      xmmword_27FEB42D0 = xmmword_261561050;
      unk_27FEB42E0 = xmmword_2615735C4;
      xmmword_27FEB42F0 = xmmword_261561060;
      unk_27FEB4300 = xmmword_2615735DC;
      xmmword_27FEB4310 = xmmword_261561070;
      unk_27FEB4320 = xmmword_2615735F4;
      __cxa_guard_release(qword_27FEB4330);
      a1 = v3;
    }
  }

  return &xmmword_27FEB42B0[2 * a1 - 2];
}

void sub_26150F854(void *a1)
{
  sub_26150F88C(a1);

  JUMPOUT(0x2667045D0);
}

void *sub_26150F88C(void *a1)
{
  *a1 = &unk_2873D1398;
  v2 = a1[3];
  v3 = *v2;
  if (*(v2 + 8) != *v2)
  {
    v4 = 0;
    do
    {
      sub_2614705CC(v3[v4]);
      *(*a1[3] + 8 * v4++) = 0;
      v2 = a1[3];
      v3 = *v2;
    }

    while (v4 < (*(v2 + 8) - *v2) >> 3);
  }

  if (v3)
  {
    *(v2 + 8) = v3;
    operator delete(v3);
  }

  MEMORY[0x2667045D0](v2, 0x80C40D6874129);
  v5 = a1[9];
  if (v5)
  {
    sub_2614705CC(v5);
  }

  v6 = a1[2];
  if (v6)
  {
    sub_2614705CC(v6);
  }

  return a1;
}

float sub_26150F954(uint64_t a1, int *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  if (!*a2)
  {
    return NAN;
  }

  v3 = a2[1];
  if (!v3)
  {
    return NAN;
  }

  v4 = a2[2];
  if (!v4)
  {
    return NAN;
  }

  v5 = 0;
  v6 = 0;
  v10[0] = *a2;
  v10[1] = v3;
  v10[2] = v4;
  do
  {
    v6 += v10[v5] * v10[v5];
    ++v5;
  }

  while (v5 != 3);
  v7 = v4 + v3 + v2;
  v8 = vabds_f32(v6 / v7, *(a1 + 64)) / *(a1 + 64);
  if (v8 > 0.5)
  {
    v8 = NAN;
  }

  return ((-3 * v6 + v7 * v7) / (v6 + v6)) + (v8 * -0.1);
}

void sub_26150FA54(void *a1, uint64_t a2, int **a3, unint64_t a4, int a5, int a6)
{
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v11 = **a3;
  v10 = (*a3)[1];
  v12 = (*a3)[2];
  v13 = *(a2 + 16);
  v14 = v13[14];
  v15 = v13[4];
  v16 = v13[8];
  LODWORD(v96[0]) = 0;
  sub_2614836CC(&__p, 3uLL);
  v17 = a4;
  if ((a4 & 0x80000000) != 0)
  {
    v23 = __p;
    v26 = a1;
    goto LABEL_9;
  }

  v92 = a1;
  v89 = v10 + v11 + v12;
  v18 = (a5 - v12) + (v10 * -0.5);
  v90 = v18;
  v19 = 2 * v10;
  v20 = v16 & (v14 - 1) | v15 & -v14;
  v21 = v17 & 0x7FFFFFFF;
  v22 = *(a2 + 16);
  v23 = __p;
  v24 = *(__p + 1);
  v94 = v17;
  v25 = v17;
  while (sub_261470964(v22, v90, v21) != a6 && v24 <= v19)
  {
    v23[1] = ++v24;
    --v25;
    v81 = v21-- <= 0;
    if (v81)
    {
      goto LABEL_17;
    }
  }

  if (v24 > v19)
  {
    goto LABEL_17;
  }

  v87 = v20;
  v86 = a2;
  v27 = v25 + 1;
  v28 = v25;
  v29 = *v23;
  do
  {
    if (sub_261470964(v22, v90, v28) != a6)
    {
      break;
    }

    if (v29 > v19)
    {
      break;
    }

    *v23 = ++v29;
    --v28;
    --v27;
  }

  while (v27 > 0);
  if (v29 > v19)
  {
LABEL_17:
    v26 = v92;
    goto LABEL_18;
  }

  v31 = (v94 + 1);
  if (v31 < v87)
  {
    while (sub_261470964(v22, v90, v31) != a6 && v24 <= v19)
    {
      v23[1] = ++v24;
      if (++v31 >= v87)
      {
        goto LABEL_17;
      }
    }
  }

  if (v87 == v31)
  {
    v26 = v92;
LABEL_9:
    if (v23)
    {
LABEL_18:
      v101 = v23;
      operator delete(v23);
    }

    goto LABEL_19;
  }

  if (v24 > v19)
  {
    goto LABEL_17;
  }

  v32 = v87 - v31;
  if (v87 > v31)
  {
    v31 = v31;
    while (sub_261470964(v22, v90, v31) == a6)
    {
      v33 = v23[2];
      if (v33 > v19)
      {
        break;
      }

      v23[2] = v33 + 1;
      ++v31;
      if (!--v32)
      {
        LODWORD(v31) = v87;
        break;
      }
    }
  }

  if (v23[2] > v19)
  {
    goto LABEL_17;
  }

  v98 = 0;
  sub_261498B78(&v97, v23);
  v26 = v92;
  sub_261498B78(&v97, __p + 1);
  sub_261498B78(&v97, __p + 2);
  v23 = __p;
  if (sub_26150F954(a2, __p) <= -0.5)
  {
    goto LABEL_9;
  }

  v34 = (v31 - v23[2]) + (v23[1] * -0.5);
  v101 = v23;
  operator delete(v23);
  if (vabds_f32(v34, v94) > *(a2 + 64))
  {
LABEL_19:
    *v26 = 0;
    v30 = v97;
    goto LABEL_20;
  }

  v30 = v97;
  v35 = *v97;
  v36 = *(v97 + 1);
  v37 = *(v97 + 2);
  v38 = sub_26150F954(v86, *a3);
  if ((v38 + sub_26150F954(v86, v30)) >= -0.5)
  {
    __p = 0;
    v101 = 0;
    v102 = 0;
    memset(v96, 0, sizeof(v96));
    sub_2614C7A4C(&__p, 3uLL);
    sub_2614C7A4C(v96, 3uLL);
    v39 = 0;
    v83 = v89 / 3.0;
    v40 = (v36 + v35 + v37);
    v41 = *(v86 + 16);
    v42 = v41[7];
    v43 = -v42;
    v44 = v41[2];
    v45 = v44 & -v42;
    LODWORD(v42) = v42 - 1;
    v46 = v41[4];
    v88 = v46 & v42 | v45;
    LODWORD(v47) = v34;
    v95 = a6 ^ 1;
    v85 = v44 & v42 | v46 & v43;
    v48 = __p;
    v49 = v96[0];
    v84 = v40 / 3.0;
    do
    {
      v48[v39] = 0;
      v49[v39++] = 0;
    }

    while (v39 != 3);
    v50 = 1;
    v51 = v18;
    LODWORD(v52) = v34;
    do
    {
      v53 = v50;
      if ((v52 & 0x80000000) == 0 && (v51 & 0x80000000) == 0)
      {
        v54 = v95 ^ v50;
        v55 = v51;
        v52 = v52;
        while (1)
        {
          v56 = sub_261470964(v41, v55, v52);
          if (v54)
          {
            if (v56)
            {
              goto LABEL_55;
            }
          }

          else if ((v56 & 1) == 0)
          {
LABEL_55:
            v51 = v55;
            break;
          }

          ++v48[v53];
          v51 = v55 - 1;
          v81 = v52-- < 1;
          if (!v81)
          {
            v81 = v55-- <= 0;
            if (!v81)
            {
              continue;
            }
          }

          break;
        }
      }

      v50 = v53 - 1;
    }

    while (v53);
    LODWORD(v57) = v47 + 1;
    LODWORD(v58) = v90 + 1;
    v59 = 1;
    LODWORD(v60) = v47 + 1;
    do
    {
      if (v60 < v88 && v58 < v85)
      {
        if (v59 >= 0)
        {
          v61 = v59 & 1;
        }

        else
        {
          v61 = -(v59 & 1);
        }

        v58 = v58;
        v60 = v60;
        do
        {
          v62 = sub_261470964(v41, v58, v60);
          if (v61 == v95)
          {
            if ((v62 & 1) == 0)
            {
              break;
            }
          }

          else if (v62)
          {
            break;
          }

          ++v48[v59];
          ++v60;
          ++v58;
        }

        while (v60 < v88 && v58 < v85);
      }

      ++v59;
    }

    while (v59 != 3);
    if (sub_26150F954(v86, v48) >= -0.5)
    {
      v63 = 1;
      LODWORD(v64) = v18;
      do
      {
        v65 = v63;
        if ((v47 & 0x80000000) == 0 && v64 < v85)
        {
          v64 = v64;
          v47 = v47;
          do
          {
            v66 = sub_261470964(v41, v64, v47);
            if ((v95 ^ v65))
            {
              if (v66)
              {
                break;
              }
            }

            else if ((v66 & 1) == 0)
            {
              break;
            }

            ++v49[v65];
            ++v64;
            v81 = v47-- < 1;
          }

          while (!v81 && v64 < v85);
        }

        v63 = v65 - 1;
      }

      while (v65);
      v67 = v90 - 1;
      for (i = 1; i != 3; ++i)
      {
        if (v57 < v88 && (v67 & 0x80000000) == 0)
        {
          if (i >= 0)
          {
            v69 = i & 1;
          }

          else
          {
            v69 = -(i & 1);
          }

          v70 = v67;
          v57 = v57;
          while (1)
          {
            v71 = sub_261470964(v41, v70, v57);
            if (v69 == v95)
            {
              if ((v71 & 1) == 0)
              {
                goto LABEL_98;
              }
            }

            else if (v71)
            {
LABEL_98:
              v67 = v70;
              break;
            }

            ++v49[i];
            ++v57;
            v67 = v70 - 1;
            if (v57 < v88)
            {
              v81 = v70-- <= 0;
              if (!v81)
              {
                continue;
              }
            }

            break;
          }
        }
      }
    }

    v72 = sub_26150F954(v86, v48);
    if (((v72 + sub_26150F954(v86, v49)) * 0.6) >= -0.5)
    {
      v73 = *(*(v86 + 24) + 8) - **(v86 + 24);
      if ((v73 >> 3) >= 1)
      {
        v74 = 0;
        v75 = (v73 >> 3) & 0x7FFFFFFF;
        do
        {
          v76 = *(**(v86 + 24) + 8 * v74);
          if (v76)
          {
            atomic_fetch_add_explicit(v76 + 2, 1u, memory_order_relaxed);
          }

          if (vabds_f32(v34, (*(*v76 + 24))(v76)) <= v84 && vabds_f32(v18, (*(*v76 + 16))(v76)) <= v83)
          {
            v77 = *(v76 + 5);
            v78 = *(v76 + 6);
            v79 = vabds_f32(v83, v77);
            v80 = vabds_f32(v84, v78);
            v81 = v79 > 1.0 || v80 > 1.0;
            if (!v81 || (v79 <= v77 ? (v82 = v80 > v78) : (v82 = 1), !v82))
            {
              (*(*v76 + 16))(v76);
              (*(*v76 + 24))(v76);
              operator new();
            }
          }

          sub_2614705CC(v76);
          ++v74;
        }

        while (v75 != v74);
      }

      operator new();
    }

    *v92 = 0;
    if (v49)
    {
      operator delete(v49);
    }

    if (v48)
    {
      operator delete(v48);
    }

LABEL_20:
    if (!v30)
    {
      return;
    }

    goto LABEL_21;
  }

  *v92 = 0;
LABEL_21:
  operator delete(v30);
}