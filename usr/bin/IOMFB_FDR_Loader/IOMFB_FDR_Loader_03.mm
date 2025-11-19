BOOL sub_100022A64(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v19 = *a1;
        v20 = a1[1];
        v21 = *(v20 + 290);
        v22 = *(*a1 + 290);
        if (*(v20 + 290) >= *(*a1 + 290) && (v21 != v22 || *(v20 + 288) >= *(v19 + 288)))
        {
          v31 = *(a2 - 1);
          if (*(v31 + 290) < v21 || *(v31 + 290) == v21 && *(v31 + 288) < *(v20 + 288))
          {
            a1[1] = v31;
            *(a2 - 1) = v20;
            v33 = *a1;
            v32 = a1[1];
            v34 = *(v32 + 290);
            v35 = *(*a1 + 290);
            if (v34 < v35 || v34 == v35 && *(v32 + 288) < *(v33 + 288))
            {
              *a1 = v32;
              a1[1] = v33;
            }
          }

          return 1;
        }

        v23 = *(a2 - 1);
        if (*(v23 + 290) < v21 || *(v23 + 290) == v21 && *(v23 + 288) < *(v20 + 288))
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v20;
          a1[1] = v19;
          v38 = *(a2 - 1);
          if (*(v38 + 290) >= v22 && (*(v38 + 290) != v22 || *(v38 + 288) >= *(v19 + 288)))
          {
            return 1;
          }

          a1[1] = v38;
        }

        *(a2 - 1) = v19;
        break;
      case 4:
        sub_100022324(a1, a1 + 1, a1 + 2, a2 - 1);
        break;
      case 5:
        sub_100022324(a1, a1 + 1, a1 + 2, a1 + 3);
        v9 = *(a2 - 1);
        v10 = a1[3];
        v11 = *(v9 + 290);
        v12 = *(v10 + 290);
        if (v11 < v12 || v11 == v12 && *(v9 + 288) < *(v10 + 288))
        {
          a1[3] = v9;
          *(a2 - 1) = v10;
          v14 = a1[2];
          v13 = a1[3];
          v15 = *(v13 + 290);
          v16 = *(v14 + 290);
          if (*(v13 + 290) < v16 || v15 == v16 && *(v13 + 288) < *(v14 + 288))
          {
            a1[2] = v13;
            a1[3] = v14;
            v17 = a1[1];
            if (*(v17 + 290) > v15 || v15 == *(v17 + 290) && *(v13 + 288) < *(v17 + 288))
            {
              a1[1] = v13;
              a1[2] = v17;
              v18 = *a1;
              if (*(*a1 + 290) > v15 || v15 == *(*a1 + 290) && *(v13 + 288) < *(v18 + 288))
              {
                *a1 = v13;
                a1[1] = v18;
              }
            }
          }
        }

        return 1;
      default:
        goto LABEL_17;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    v7 = *(v5 + 290);
    v8 = *(*a1 + 290);
    if (v7 < v8 || v7 == v8 && *(v5 + 288) < *(v6 + 288))
    {
      *a1 = v5;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_17:
  v24 = a1 + 2;
  v25 = *a1;
  v26 = a1 + 1;
  v27 = a1[1];
  v28 = *(v27 + 290);
  v29 = *(*a1 + 290);
  if (*(v27 + 290) < *(*a1 + 290) || v28 == v29 && *(v27 + 288) < *(v25 + 288))
  {
    v30 = *v24;
    if (*(*v24 + 290) < v28 || (v39 = *(*v24 + 290), v39 == v28) && *(v30 + 288) < *(v27 + 288))
    {
      *a1 = v30;
    }

    else
    {
      *a1 = v27;
      a1[1] = v25;
      if (v39 >= v29 && (v39 != v29 || *(v30 + 288) >= *(v25 + 288)))
      {
        goto LABEL_48;
      }

      *v26 = v30;
    }

    v26 = a1 + 2;
LABEL_47:
    *v26 = v25;
    goto LABEL_48;
  }

  v36 = *v24;
  v37 = *(*v24 + 290);
  if (*(*v24 + 290) < v28 || v37 == v28 && *(v36 + 288) < *(v27 + 288))
  {
    *v26 = v36;
    *v24 = v27;
    if (v37 < v29 || v37 == v29 && *(v36 + 288) < *(v25 + 288))
    {
      *a1 = v36;
      goto LABEL_47;
    }
  }

LABEL_48:
  v40 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    v43 = *v40;
    v44 = *v24;
    v45 = *(*v40 + 290);
    if (*(*v40 + 290) < *(v44 + 290) || v45 == *(v44 + 290) && *(v43 + 288) < *(v44 + 288))
    {
      *v40 = v44;
      v46 = v41;
      while (1)
      {
        v47 = *(a1 + v46 + 8);
        if (*(v47 + 290) <= v45 && (v45 != *(v47 + 290) || *(v43 + 288) >= *(v47 + 288)))
        {
          break;
        }

        *(a1 + v46 + 16) = v47;
        v46 -= 8;
        if (v46 == -16)
        {
          v48 = a1;
          goto LABEL_61;
        }
      }

      v48 = (a1 + v46 + 16);
LABEL_61:
      *v48 = v43;
      if (++v42 == 8)
      {
        return v40 + 1 == a2;
      }
    }

    v24 = v40;
    v41 += 8;
    if (++v40 == a2)
    {
      return 1;
    }
  }
}

uint64_t *sub_100022F10(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_100023070(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        v14 = *a1;
        v15 = *(*v12 + 290);
        v16 = *(*a1 + 290);
        if (v15 < v16 || v15 == v16 && *(v13 + 288) < *(v14 + 288))
        {
          *v12 = v14;
          *a1 = v13;
          sub_100023070(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v17 = a2 - 1;
      do
      {
        v18 = *a1;
        v19 = sub_1000231C8(a1, a4, v8);
        if (v17 == v19)
        {
          *v19 = v18;
        }

        else
        {
          *v19 = *v17;
          *v17 = v18;
          sub_10002324C(a1, (v19 + 1), a4, v19 + 1 - a1);
        }

        --v17;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_100023070(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[1];
        v11 = *(*v8 + 290);
        v12 = *(v10 + 290);
        if (v11 < v12 || v11 == v12 && *(*v8 + 288) < *(v10 + 288))
        {
          ++v8;
          v7 = v9;
        }
      }

      v13 = *v8;
      v14 = *a4;
      if (*(*v8 + 290) >= *(*a4 + 290))
      {
        v15 = *(*a4 + 290);
        if (*(*v8 + 290) != v15 || *(v13 + 288) >= *(v14 + 288))
        {
          *a4 = v13;
          if (v5 >= v7)
          {
            while (1)
            {
              v17 = 2 * v7;
              v7 = (2 * v7) | 1;
              v16 = (result + 8 * v7);
              v18 = v17 + 2;
              if (v18 < a3)
              {
                v19 = v16[1];
                v20 = *(*v16 + 290);
                v21 = *(v19 + 290);
                if (v20 < v21 || v20 == v21 && *(*v16 + 288) < *(v19 + 288))
                {
                  ++v16;
                  v7 = v18;
                }
              }

              v22 = *v16;
              if (*(*v16 + 290) < v15 || *(*v16 + 290) == v15 && *(v22 + 288) < *(v14 + 288))
              {
                break;
              }

              *v8 = v22;
              v8 = v16;
              if (v5 < v7)
              {
                goto LABEL_13;
              }
            }
          }

          v16 = v8;
LABEL_13:
          *v16 = v14;
        }
      }
    }
  }

  return result;
}

void *sub_1000231C8(void *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = result;
    v5 = &result[v3];
    result = v5 + 1;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v10 = v5[2];
      v8 = v5 + 2;
      v9 = v10;
      v11 = *(v8 - 1);
      v12 = *(v11 + 290);
      v13 = *(v10 + 290);
      if (v12 < v13 || v12 == v13 && *(v11 + 288) < *(v9 + 288))
      {
        result = v8;
        v3 = v7;
      }
    }

    *v4 = *result;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t sub_10002324C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 8 * (v4 >> 1));
    v7 = *v6;
    v8 = *(a2 - 8);
    v9 = *(v8 + 290);
    if (*(*v6 + 290) < *(v8 + 290) || *(*v6 + 290) == v9 && *(v7 + 288) < *(v8 + 288))
    {
      *(a2 - 8) = v7;
      if (v4 >= 2)
      {
        while (1)
        {
          v11 = v5 - 1;
          v5 = (v5 - 1) >> 1;
          v10 = (result + 8 * v5);
          v12 = *v10;
          if (*(*v10 + 290) >= v9 && (*(*v10 + 290) != v9 || *(v12 + 288) >= *(v8 + 288)))
          {
            break;
          }

          *v6 = v12;
          v6 = (result + 8 * v5);
          if (v11 <= 1)
          {
            goto LABEL_9;
          }
        }
      }

      v10 = v6;
LABEL_9:
      *v10 = v8;
    }
  }

  return result;
}

void sub_100023310(unsigned int *a1, unsigned int *a2, uint64_t **a3)
{
  v6 = a2 - a1;
  if (v6 < 129)
  {
    v11 = 0;
    v7 = 0;
  }

  else
  {
    v7 = a2 - a1;
    while (1)
    {
      v8 = operator new(4 * v7, &std::nothrow);
      if (v8)
      {
        break;
      }

      v9 = v7 >> 1;
      v10 = v7 > 1;
      v7 >>= 1;
      if (!v10)
      {
        v11 = 0;
        v7 = v9;
        goto LABEL_8;
      }
    }

    v11 = v8;
  }

LABEL_8:
  sub_10002340C(a1, a2, a3, v6, v11, v7);
  if (v11)
  {

    operator delete(v11);
  }
}

void sub_1000233F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002340C(unsigned int *a1, unsigned int *a2, uint64_t **a3, unint64_t a4, unsigned int *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v9 = *(a2 - 1);
      v10 = **a3;
      v11 = ((*a3)[1] - v10) >> 2;
      if (v11 <= v9 || (v12 = *a1, v11 <= v12))
      {
        __break(1u);
      }

      else if (*(v10 + 4 * v9) < *(v10 + 4 * v12))
      {
        *a1 = v9;
        *(a2 - 1) = v12;
      }
    }

    else if (a4 > 128)
    {
      v16 = a4 >> 1;
      v17 = &a1[a4 >> 1];
      v18 = a4 >> 1;
      if (a4 <= a6)
      {
        sub_1000236A4(a1, v17, a3, v18, a5);
        sub_1000236A4(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[v16]);

        sub_100023820(a5, &a5[v16], &a5[v16], &a5[a4], a1, a3);
      }

      else
      {
        sub_10002340C(a1, v17, a3, v18, a5, a6);
        sub_10002340C(&a1[a4 >> 1], a2, a3, a4 - (a4 >> 1), a5, a6);

        sub_1000238B4(a1, &a1[a4 >> 1], a2, a3, a4 >> 1, a4 - (a4 >> 1), a5, a6);
      }
    }

    else
    {

      sub_1000235EC(a1, a2, a3);
    }
  }
}

unsigned int *sub_1000235EC(unsigned int *result, unsigned int *a2, uint64_t **a3)
{
  if (result != a2)
  {
    v3 = result + 1;
    if (result + 1 != a2)
    {
      v4 = 0;
      v5 = **a3;
      v6 = ((*a3)[1] - v5) >> 2;
      v7 = result;
      while (1)
      {
        v8 = v3;
        v9 = *v3;
        if (v6 <= v9)
        {
          break;
        }

        v10 = *v7;
        if (v6 <= v10)
        {
          break;
        }

        if (*(v5 + 4 * v9) < *(v5 + 4 * v10))
        {
          v11 = v4;
          while (1)
          {
            *(result + v11 + 4) = v10;
            if (!v11)
            {
              break;
            }

            v10 = *(result + v11 - 4);
            if (v6 <= v10)
            {
              goto LABEL_16;
            }

            v11 -= 4;
            if (*(v5 + 4 * v9) >= *(v5 + 4 * v10))
            {
              v12 = (result + v11 + 4);
              goto LABEL_13;
            }
          }

          v12 = result;
LABEL_13:
          *v12 = v9;
        }

        v3 = v8 + 1;
        v4 += 4;
        v7 = v8;
        if (v8 + 1 == a2)
        {
          return result;
        }
      }

LABEL_16:
      __break(1u);
    }
  }

  return result;
}

unsigned int *sub_1000236A4(unsigned int *result, unsigned int *a2, uint64_t **a3, unint64_t a4, unsigned int *a5)
{
  if (a4)
  {
    v9 = result;
    if (a4 == 2)
    {
      v10 = *(a2 - 1);
      v11 = **a3;
      v12 = ((*a3)[1] - v11) >> 2;
      if (v12 <= v10 || (v13 = *result, v12 <= v13))
      {
        __break(1u);
      }

      else
      {
        if (*(v11 + 4 * v10) >= *(v11 + 4 * v13))
        {
          *a5 = v13;
          v14 = *(a2 - 1);
        }

        else
        {
          *a5 = v10;
          v14 = *result;
        }

        a5[1] = v14;
      }
    }

    else if (a4 == 1)
    {
      *a5 = *result;
    }

    else if (a4 > 8)
    {
      sub_10002340C(result, &result[a4 >> 1], a3, a4 >> 1, a5, a4 >> 1);
      sub_10002340C(&v9[a4 >> 1], a2, a3, a4 - (a4 >> 1), &a5[a4 >> 1], a4 - (a4 >> 1));

      return sub_100023BEC(v9, &v9[a4 >> 1], &v9[a4 >> 1], a2, a5, a3);
    }

    else
    {

      return sub_100023B0C(result, a2, a5, a3);
    }
  }

  return result;
}

int *sub_100023820(int *result, int *a2, unsigned int *a3, unsigned int *a4, _DWORD *a5, uint64_t **a6)
{
  if (result == a2)
  {
LABEL_14:
    while (a3 != a4)
    {
      v16 = *a3++;
      *a5++ = v16;
    }
  }

  else
  {
    v6 = *a6;
    while (a3 != a4)
    {
      v7 = *a3;
      v8 = *v6;
      v9 = (v6[1] - *v6) >> 2;
      if (v9 <= v7 || (v10 = *result, v9 <= v10))
      {
        __break(1u);
        return result;
      }

      v11 = *(v8 + 4 * v7);
      v12 = *(v8 + 4 * v10);
      v13 = v11 < v12;
      v14 = v11 >= v12;
      v15 = v13;
      if (!v13)
      {
        LODWORD(v7) = *result;
      }

      result += v14;
      a3 += v15;
      *a5++ = v7;
      if (result == a2)
      {
        goto LABEL_14;
      }
    }

    while (result != a2)
    {
      v17 = *result++;
      *a5++ = v17;
    }
  }

  return result;
}

void sub_1000238B4(char *a1, unsigned int *a2, unsigned int *a3, uint64_t **a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (a6)
  {
    v11 = a6;
LABEL_3:
    if (v11 <= a8 || a5 <= a8)
    {
      sub_100023C80(a1, a2, a3, a4, a5, v11, a7);
    }

    else if (a5)
    {
      v16 = *a2;
      v17 = **a4;
      v18 = ((*a4)[1] - v17) >> 2;
      if (v18 > v16)
      {
        v19 = 0;
        v9 = 0;
        while (1)
        {
          v8 = *&a1[4 * v9];
          if (v18 <= v8)
          {
            break;
          }

          if (*(v17 + 4 * v16) < *(v17 + 4 * v8))
          {
            v20 = a5 - v9;
            v33 = a8;
            v34 = a4;
            __dst = &a1[-v19];
            v32 = a3;
            if (a5 - v9 >= v11)
            {
              if ((a5 - 1) == v9)
              {
                goto LABEL_24;
              }

              v24 = v20 / 2;
              v36 = *a4;
              v23 = &a1[4 * (v20 / 2) - v19];
              v22 = sub_100023F98(a2, v23, a3 - a2, &v36);
              v21 = v22 - a2;
            }

            else
            {
              v21 = v11 / 2;
              v22 = &a2[v11 / 2];
              v23 = sub_100023D54(&a1[-v19], a2, v22, a4);
              v24 = (v23 - a1 + v19) >> 2;
            }

            v30 = a5 - v24 - v9;
            v25 = v11 - v21;
            v26 = sub_100023DBC(v23, a2, v22);
            a1 = v26;
            if (v24 + v21 >= v11 + a5 - (v24 + v21) - v9)
            {
              v9 = v26;
              sub_1000238B4(v26, v22, v32, v34, v30, v25, a7, v33);
              a1 = __dst;
              v22 = v23;
              a4 = v34;
              v25 = v21;
              v29 = v24;
              a8 = v33;
              a3 = v9;
            }

            else
            {
              v27 = v23;
              a4 = v34;
              v28 = v24;
              a8 = v33;
              sub_1000238B4(__dst, v27, v26, v34, v28, v21, a7, v33);
              a3 = v32;
              v29 = v30;
            }

            a5 = v29;
            v11 = v25;
            a2 = v22;
            if (v25)
            {
              goto LABEL_3;
            }

            return;
          }

          v9 = (v9 + 1);
          v19 -= 4;
          if (a5 == v9)
          {
            return;
          }
        }
      }

      __break(1u);
LABEL_24:
      *&a1[4 * v9] = v16;
      *a2 = v8;
    }
  }
}

unsigned int *sub_100023B0C(unsigned int *result, unsigned int *a2, unsigned int *a3, uint64_t **a4)
{
  if (result != a2)
  {
    v4 = *result++;
    *a3 = v4;
    if (result != a2)
    {
      v5 = 0;
      v6 = **a4;
      v7 = ((*a4)[1] - v6) >> 2;
      v8 = a3;
      while (1)
      {
        v9 = *result;
        if (v7 <= v9)
        {
          break;
        }

        v10 = v8 + 1;
        v11 = *v8;
        if (v7 <= v11)
        {
          break;
        }

        if (*(v6 + 4 * v9) >= *(v6 + 4 * v11))
        {
          *v10 = v9;
        }

        else
        {
          v8[1] = v11;
          v12 = a3;
          if (v8 != a3)
          {
            v13 = v5;
            while (1)
            {
              v14 = *result;
              if (v7 <= v14)
              {
                goto LABEL_19;
              }

              v15 = *(a3 + v13 - 4);
              if (v7 <= v15)
              {
                goto LABEL_19;
              }

              if (*(v6 + 4 * v14) >= *(v6 + 4 * v15))
              {
                v12 = (a3 + v13);
                break;
              }

              *(a3 + v13) = v15;
              v13 -= 4;
              if (!v13)
              {
                v12 = a3;
                break;
              }
            }
          }

          *v12 = *result;
        }

        ++result;
        v5 += 4;
        v8 = v10;
        if (result == a2)
        {
          return result;
        }
      }

LABEL_19:
      __break(1u);
    }
  }

  return result;
}

int *sub_100023BEC(int *result, int *a2, unsigned int *a3, unsigned int *a4, _DWORD *a5, uint64_t **a6)
{
  if (result == a2)
  {
LABEL_14:
    while (a3 != a4)
    {
      v16 = *a3++;
      *a5++ = v16;
    }
  }

  else
  {
    v6 = *a6;
    while (a3 != a4)
    {
      v7 = *a3;
      v8 = *v6;
      v9 = (v6[1] - *v6) >> 2;
      if (v9 <= v7 || (v10 = *result, v9 <= v10))
      {
        __break(1u);
        return result;
      }

      v11 = *(v8 + 4 * v7);
      v12 = *(v8 + 4 * v10);
      v13 = v11 < v12;
      v14 = v11 >= v12;
      v15 = v13;
      if (!v13)
      {
        LODWORD(v7) = *result;
      }

      a3 += v15;
      result += v14;
      *a5++ = v7;
      if (result == a2)
      {
        goto LABEL_14;
      }
    }

    while (result != a2)
    {
      v17 = *result++;
      *a5++ = v17;
    }
  }

  return result;
}

void sub_100023C80(char *__dst, unsigned int *a2, unsigned int *a3, uint64_t **a4, uint64_t a5, uint64_t a6, char *__src)
{
  if (a5 <= a6)
  {
    v12 = __src;
    if (__dst != a2)
    {
      v12 = __src;
      v13 = __dst;
      do
      {
        v14 = *v13;
        v13 += 4;
        *v12 = v14;
        v12 += 4;
      }

      while (v13 != a2);
    }

    sub_100023E80(__src, v12, a2, a3, __dst, a4);
  }

  else
  {
    v9 = __src;
    if (a2 != a3)
    {
      v9 = __src;
      v10 = a2;
      do
      {
        v11 = *v10++;
        *v9 = v11;
        v9 += 4;
      }

      while (v10 != a3);
    }

    v15 = a4;
    sub_100023F00(v9, v9, __src, __src, a2, a2, __dst, __dst, a3, a3, &v15);
  }
}

unsigned int *sub_100023D54(unsigned int *result, unsigned int *a2, unsigned int *a3, uint64_t **a4)
{
  if (a2 != result)
  {
    v4 = *a3;
    v5 = **a4;
    v6 = ((*a4)[1] - v5) >> 2;
    if (v6 > v4)
    {
      v7 = a2 - result;
      while (1)
      {
        v8 = v7 >> 1;
        v9 = &result[v7 >> 1];
        v10 = *v9;
        if (v6 <= v10)
        {
          break;
        }

        v11 = v9 + 1;
        v7 += ~v8;
        if (*(v5 + 4 * v4) < *(v5 + 4 * v10))
        {
          v7 = v8;
        }

        else
        {
          result = v11;
        }

        if (!v7)
        {
          return result;
        }
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_100023DBC(char *__src, char *a2, char *a3)
{
  v4 = a3;
  if (__src != a2)
  {
    v6 = a3 - a2;
    if (a3 == a2)
    {
      return __src;
    }

    else if (__src + 4 == a2)
    {
      v7 = *__src;
      memmove(__src, __src + 4, v6);
      v4 = &__src[v6];
      *v4 = v7;
    }

    else if (a2 + 4 == a3)
    {
      v8 = *(a3 - 1);
      v4 = __src + 4;
      v9 = a3 - 4 - __src;
      if (a3 - 4 != __src)
      {
        memmove(__src + 4, __src, v9);
      }

      *__src = v8;
    }

    else
    {
      return sub_100023FF8(__src, a2, a3);
    }
  }

  return v4;
}

char *sub_100023E80(char *__src, char *a2, unsigned int *a3, unsigned int *a4, char *__dst, uint64_t **a6)
{
  if (__src != a2)
  {
    v6 = __src;
    v7 = *a6;
    while (1)
    {
      if (a3 == a4)
      {
        return memmove(__dst, v6, a2 - v6);
      }

      v8 = *a3;
      v9 = *v7;
      v10 = (v7[1] - *v7) >> 2;
      if (v10 <= v8)
      {
        break;
      }

      v11 = *v6;
      if (v10 <= v11)
      {
        break;
      }

      v12 = *(v9 + 4 * v8);
      v13 = *(v9 + 4 * v11);
      v14 = v12 < v13;
      v15 = v12 >= v13;
      v16 = v14;
      if (!v14)
      {
        LODWORD(v8) = *v6;
      }

      a3 += v16;
      v6 += 4 * v15;
      *__dst = v8;
      __dst += 4;
      if (v6 == a2)
      {
        return __src;
      }
    }

    __break(1u);
  }

  return __src;
}

void sub_100023F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t ***a11)
{
  if (a2 != a4)
  {
    v12 = *a11;
    while (a6 != a8)
    {
      v13 = *(a2 - 4);
      v14 = **v12;
      v15 = ((*v12)[1] - v14) >> 2;
      if (v15 <= v13 || (v16 = *(a6 - 4), v15 <= v16))
      {
        __break(1u);
        return;
      }

      if (*(v14 + 4 * v13) >= *(v14 + 4 * v16))
      {
        a2 -= 4;
      }

      else
      {
        LODWORD(v13) = *(a6 - 4);
        a6 -= 4;
      }

      *(a10 - 4) = v13;
      a10 -= 4;
      if (a2 == a4)
      {
        return;
      }
    }

    if (a4 != a2)
    {
      v17 = -4;
      do
      {
        v18 = *(a2 - 4);
        a2 -= 4;
        *(a10 + v17) = v18;
        v17 -= 4;
      }

      while (a2 != a4);
    }
  }
}

unsigned int *sub_100023F98(unsigned int *result, unsigned int *a2, unint64_t a3, uint64_t **a4)
{
  if (a3)
  {
    v4 = **a4;
    v5 = ((*a4)[1] - v4) >> 2;
    v6 = *a2;
    while (1)
    {
      v7 = &result[a3 >> 1];
      v8 = *v7;
      if (v5 <= v8 || v5 <= v6)
      {
        break;
      }

      v9 = *(v4 + 4 * v8);
      v10 = *(v4 + 4 * v6);
      v11 = v7 + 1;
      if (v9 >= v10)
      {
        a3 >>= 1;
      }

      else
      {
        a3 += ~(a3 >> 1);
      }

      if (v9 < v10)
      {
        result = v11;
      }

      if (!a3)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_100023FF8(char *a1, char *a2, char *a3)
{
  v3 = (a2 - a1) >> 2;
  v4 = a3 - a2;
  if (v3 == (a3 - a2) >> 2)
  {
    if (a2 != a1 && a3 != a2)
    {
      v5 = a1 + 4;
      v6 = a2 + 4;
      do
      {
        v7 = *(v5 - 1);
        *(v5 - 1) = *(v6 - 1);
        *(v6 - 1) = v7;
        if (v5 == a2)
        {
          break;
        }

        v5 += 4;
        v8 = v6 == a3;
        v6 += 4;
      }

      while (!v8);
    }
  }

  else
  {
    v9 = v4 >> 2;
    v10 = (a2 - a1) >> 2;
    do
    {
      v11 = v10;
      v10 = v9;
      v9 = v11 % v9;
    }

    while (v9);
    v12 = &a1[4 * v10];
    do
    {
      v14 = *(v12 - 1);
      v12 -= 4;
      v13 = v14;
      v15 = &v12[a2 - a1];
      v16 = v12;
      do
      {
        v17 = v15;
        *v16 = *v15;
        v18 = &v15[4 * v3];
        v19 = __OFSUB__(v3, (a3 - v15) >> 2);
        v21 = v3 - ((a3 - v15) >> 2);
        v20 = (v21 < 0) ^ v19;
        v15 = &a1[4 * v21];
        if (v20)
        {
          v15 = v18;
        }

        v16 = v17;
      }

      while (v15 != v12);
      *v17 = v13;
    }

    while (v12 != a1);
    return &a1[v4];
  }

  return a2;
}

uint64_t sub_1000240C4(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v78 = *(a2 - 1);
        v79 = *v9;
        v80 = *(v78 + 338);
        v81 = *(*v9 + 338);
        if (v80 < v81 || v80 == v81 && *(v78 + 336) < *(v79 + 336))
        {
          *v9 = v78;
          *(a2 - 1) = v79;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {

      return sub_100024B2C(v9, v9 + 1, v9 + 2, a2 - 1);
    }

    if (v12 == 5)
    {
      result = sub_100024B2C(v9, v9 + 1, v9 + 2, v9 + 3);
      v87 = *(a2 - 1);
      v88 = v9[3];
      v89 = *(v87 + 338);
      v90 = *(v88 + 338);
      if (v89 < v90 || v89 == v90 && *(v87 + 336) < *(v88 + 336))
      {
        v9[3] = v87;
        *(a2 - 1) = v88;
        v92 = v9[2];
        v91 = v9[3];
        v93 = *(v91 + 338);
        v94 = *(v92 + 338);
        if (*(v91 + 338) < v94 || v93 == v94 && *(v91 + 336) < *(v92 + 336))
        {
          v9[2] = v91;
          v9[3] = v92;
          v95 = v9[1];
          if (*(v95 + 338) > v93 || v93 == *(v95 + 338) && *(v91 + 336) < *(v95 + 336))
          {
            v9[1] = v91;
            v9[2] = v95;
            v96 = *v9;
            if (*(*v9 + 338) > v93 || v93 == *(*v9 + 338) && *(v91 + 336) < *(v96 + 336))
            {
              *v9 = v91;
              v9[1] = v96;
            }
          }
        }
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return sub_100024CFC(v9, a2);
      }

      else
      {

        return sub_100024DD8(v9, a2);
      }
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return sub_100025718(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = &v9[v12 >> 1];
    v15 = v14;
    if (v12 >= 0x81)
    {
      v16 = *v14;
      v17 = *v9;
      v18 = *(*v14 + 338);
      v19 = *(*v9 + 338);
      if (*(*v14 + 338) < *(*v9 + 338) || v18 == v19 && *(v16 + 336) < *(v17 + 336))
      {
        v20 = *(a2 - 1);
        if (*(v20 + 338) < v18 || *(v20 + 338) == v18 && *(v20 + 336) < *(v16 + 336))
        {
          *v9 = v20;
        }

        else
        {
          *v9 = v16;
          *v14 = v17;
          v36 = *(a2 - 1);
          if (*(v36 + 338) >= v19 && (*(v36 + 338) != v19 || *(v36 + 336) >= *(v17 + 336)))
          {
            goto LABEL_35;
          }

          *v14 = v36;
        }

        *(a2 - 1) = v17;
        goto LABEL_35;
      }

      v26 = *(a2 - 1);
      if (*(v26 + 338) < v18 || *(v26 + 338) == v18 && *(v26 + 336) < *(v16 + 336))
      {
        *v14 = v26;
        *(a2 - 1) = v16;
        v27 = *v14;
        v28 = *v9;
        v29 = *(*v14 + 338);
        v30 = *(*v9 + 338);
        if (v29 < v30 || v29 == v30 && *(v27 + 336) < *(v28 + 336))
        {
          *v9 = v27;
          *v14 = v28;
        }
      }

LABEL_35:
      v37 = v13 - 1;
      v38 = v9[v37];
      v39 = v9[1];
      v40 = *(v38 + 338);
      v41 = *(v39 + 338);
      if (*(v38 + 338) < *(v39 + 338) || v40 == v41 && *(v38 + 336) < *(v39 + 336))
      {
        v42 = *(a2 - 2);
        if (*(v42 + 338) < v40 || *(v42 + 338) == v40 && *(v42 + 336) < *(v38 + 336))
        {
          v9[1] = v42;
        }

        else
        {
          v9[1] = v38;
          v9[v37] = v39;
          v49 = *(a2 - 2);
          if (*(v49 + 338) >= v41 && (*(v49 + 338) != v41 || *(v49 + 336) >= *(v39 + 336)))
          {
            goto LABEL_53;
          }

          v9[v37] = v49;
        }

        *(a2 - 2) = v39;
        goto LABEL_53;
      }

      v43 = *(a2 - 2);
      if (*(v43 + 338) < v40 || *(v43 + 338) == v40 && *(v43 + 336) < *(v38 + 336))
      {
        v9[v37] = v43;
        *(a2 - 2) = v38;
        v44 = v9[v37];
        v45 = v9[1];
        v46 = *(v44 + 338);
        v47 = *(v45 + 338);
        if (v46 < v47 || v46 == v47 && *(v44 + 336) < *(v45 + 336))
        {
          v9[1] = v44;
          v9[v37] = v45;
        }
      }

LABEL_53:
      v52 = v14[1];
      v50 = v14 + 1;
      v51 = v52;
      v53 = v9[2];
      v54 = *(v52 + 338);
      v55 = *(v53 + 338);
      if (*(v52 + 338) < *(v53 + 338) || v54 == v55 && *(v51 + 336) < *(v53 + 336))
      {
        v56 = *(a2 - 3);
        if (*(v56 + 338) < v54 || *(v56 + 338) == v54 && *(v56 + 336) < *(v51 + 336))
        {
          v9[2] = v56;
        }

        else
        {
          v9[2] = v51;
          *v50 = v53;
          v62 = *(a2 - 3);
          if (*(v62 + 338) >= v55 && (*(v62 + 338) != v55 || *(v62 + 336) >= *(v53 + 336)))
          {
            goto LABEL_66;
          }

          *v50 = v62;
        }

        *(a2 - 3) = v53;
        goto LABEL_66;
      }

      v57 = *(a2 - 3);
      if (*(v57 + 338) < v54 || *(v57 + 338) == v54 && *(v57 + 336) < *(v51 + 336))
      {
        *v50 = v57;
        *(a2 - 3) = v51;
        v58 = *v50;
        v59 = v9[2];
        v60 = *(*v50 + 338);
        v61 = *(v59 + 338);
        if (v60 < v61 || v60 == v61 && *(v58 + 336) < *(v59 + 336))
        {
          v9[2] = v58;
          *v50 = v59;
        }
      }

LABEL_66:
      v63 = v9[v37];
      v64 = *v15;
      v65 = *(*v15 + 338);
      v66 = *(v63 + 338);
      if (*(*v15 + 338) < *(v63 + 338) || v65 == v66 && *(v64 + 336) < *(v63 + 336))
      {
        v67 = *v50;
        if (*(*v50 + 338) < v65 || (v70 = *(*v50 + 338), v70 == v65) && *(v67 + 336) < *(v64 + 336))
        {
          v9[v37] = v67;
        }

        else
        {
          v9[v37] = v64;
          *v15 = v63;
          if (v70 >= v66 && (v70 != v66 || *(v67 + 336) >= *(v63 + 336)))
          {
            v64 = v63;
            goto LABEL_79;
          }

          *v15 = v67;
          v64 = v67;
        }
      }

      else
      {
        v68 = *v50;
        v69 = *(*v50 + 338);
        if (*(*v50 + 338) >= v65 && (v69 != v65 || *(v68 + 336) >= *(v64 + 336)))
        {
          goto LABEL_79;
        }

        *v15 = v68;
        *v50 = v64;
        if (v69 >= v66 && (v69 != v66 || *(v68 + 336) >= *(v63 + 336)))
        {
          v64 = v68;
          goto LABEL_79;
        }

        v9[v37] = v68;
        v50 = v15;
        v64 = v63;
      }

      *v50 = v63;
LABEL_79:
      v71 = *v9;
      *v9 = v64;
      *v15 = v71;
      goto LABEL_80;
    }

    v21 = *v9;
    v22 = *v14;
    v23 = *(*v9 + 338);
    v24 = *(*v15 + 338);
    if (*(*v9 + 338) < *(*v15 + 338) || v23 == v24 && *(v21 + 336) < *(v22 + 336))
    {
      v25 = *(a2 - 1);
      if (*(v25 + 338) < v23 || *(v25 + 338) == v23 && *(v25 + 336) < *(v21 + 336))
      {
        *v15 = v25;
LABEL_47:
        *(a2 - 1) = v22;
        goto LABEL_80;
      }

      *v15 = v21;
      *v9 = v22;
      v48 = *(a2 - 1);
      if (*(v48 + 338) < v24 || *(v48 + 338) == v24 && *(v48 + 336) < *(v22 + 336))
      {
        *v9 = v48;
        goto LABEL_47;
      }
    }

    else
    {
      v31 = *(a2 - 1);
      if (*(v31 + 338) < v23 || *(v31 + 338) == v23 && *(v31 + 336) < *(v21 + 336))
      {
        *v9 = v31;
        *(a2 - 1) = v21;
        v32 = *v9;
        v33 = *v15;
        v34 = *(*v9 + 338);
        v35 = *(*v15 + 338);
        if (v34 < v35 || v34 == v35 && *(v32 + 336) < *(v33 + 336))
        {
          *v15 = v32;
          *v9 = v33;
        }
      }
    }

LABEL_80:
    if ((a5 & 1) == 0)
    {
      v72 = *(v9 - 1);
      v73 = *(v72 + 338);
      v74 = *(*v9 + 338);
      if (v73 >= v74 && (v73 != v74 || *(v72 + 336) >= *(*v9 + 336)))
      {
        result = sub_100024EA8(v9, a2);
        v9 = result;
        goto LABEL_135;
      }
    }

    v75 = sub_100025080(v9, a2);
    if ((v76 & 1) == 0)
    {
      goto LABEL_133;
    }

    v77 = sub_10002526C(v9, v75);
    v9 = v75 + 1;
    result = sub_10002526C(v75 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v75;
      if (v77)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v77)
    {
LABEL_133:
      result = sub_1000240C4(v8, v75, a3, -v11, a5 & 1);
      v9 = v75 + 1;
LABEL_135:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v82 = *v9;
  v83 = v9[1];
  v84 = *(v83 + 338);
  v85 = *(*v9 + 338);
  if (*(v83 + 338) < *(*v9 + 338) || v84 == v85 && *(v83 + 336) < *(v82 + 336))
  {
    v86 = *(a2 - 1);
    if (*(v86 + 338) < v84 || *(v86 + 338) == v84 && *(v86 + 336) < *(v83 + 336))
    {
      *v9 = v86;
    }

    else
    {
      *v9 = v83;
      v9[1] = v82;
      v102 = *(a2 - 1);
      if (*(v102 + 338) >= v85 && (*(v102 + 338) != v85 || *(v102 + 336) >= *(v82 + 336)))
      {
        return result;
      }

      v9[1] = v102;
    }

    *(a2 - 1) = v82;
    return result;
  }

  v97 = *(a2 - 1);
  if (*(v97 + 338) < v84 || *(v97 + 338) == v84 && *(v97 + 336) < *(v83 + 336))
  {
    v9[1] = v97;
    *(a2 - 1) = v83;
    v99 = *v9;
    v98 = v9[1];
    v100 = *(v98 + 338);
    v101 = *(*v9 + 338);
    if (v100 < v101 || v100 == v101 && *(v98 + 336) < *(v99 + 336))
    {
      *v9 = v98;
      v9[1] = v99;
    }
  }

  return result;
}

uint64_t *sub_100024B2C(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = *(*a2 + 338);
  v7 = *(*result + 338);
  if (*(*a2 + 338) < *(*result + 338) || v6 == v7 && *(v4 + 336) < *(v5 + 336))
  {
    v8 = *a3;
    if (*(*a3 + 338) < v6 || *(*a3 + 338) == v6 && *(v8 + 336) < *(v4 + 336))
    {
      *result = v8;
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v4 = *a3;
      if (*(*a3 + 338) >= v7 && (*(*a3 + 338) != v7 || *(v4 + 336) >= *(v5 + 336)))
      {
        goto LABEL_15;
      }

      *a2 = v4;
    }

    *a3 = v5;
    goto LABEL_14;
  }

  v5 = *a3;
  if (*(*a3 + 338) >= v6 && (*(*a3 + 338) != v6 || *(v5 + 336) >= *(v4 + 336)))
  {
LABEL_14:
    v4 = v5;
    goto LABEL_15;
  }

  *a2 = v5;
  *a3 = v4;
  v9 = *a2;
  v10 = *result;
  v11 = *(*a2 + 338);
  v12 = *(*result + 338);
  if (v11 < v12 || v11 == v12 && *(v9 + 336) < *(v10 + 336))
  {
    *result = v9;
    *a2 = v10;
    v4 = *a3;
  }

LABEL_15:
  v13 = *a4;
  v14 = *(*a4 + 338);
  v15 = *(v4 + 338);
  if (v14 < v15 || v14 == v15 && *(v13 + 336) < *(v4 + 336))
  {
    *a3 = v13;
    *a4 = v4;
    v16 = *a3;
    v17 = *a2;
    v18 = *(*a3 + 338);
    v19 = *(*a2 + 338);
    if (v18 < v19 || v18 == v19 && *(v16 + 336) < *(v17 + 336))
    {
      *a2 = v16;
      *a3 = v17;
      v20 = *a2;
      v21 = *result;
      v22 = *(*a2 + 338);
      v23 = *(*result + 338);
      if (v22 < v23 || v22 == v23 && *(v20 + 336) < *(v21 + 336))
      {
        *result = v20;
        *a2 = v21;
      }
    }
  }

  return result;
}

void *sub_100024CFC(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 1;
    if (result + 1 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v4;
        v4 = v2;
        v7 = *v5;
        v6 = v5[1];
        v8 = *(v6 + 338);
        if (*(v6 + 338) < *(*v5 + 338) || v8 == *(*v5 + 338) && *(v6 + 336) < *(v7 + 336))
        {
          v5[1] = v7;
          v9 = result;
          if (v5 != result)
          {
            v10 = v3;
            while (1)
            {
              v11 = *(result + v10 - 8);
              if (*(v11 + 338) <= v8)
              {
                if (v8 != *(v11 + 338))
                {
                  v9 = v5;
                  goto LABEL_17;
                }

                if (*(v6 + 336) >= *(v11 + 336))
                {
                  break;
                }
              }

              --v5;
              *(result + v10) = v11;
              v10 -= 8;
              if (!v10)
              {
                v9 = result;
                goto LABEL_17;
              }
            }

            v9 = (result + v10);
          }

LABEL_17:
          *v9 = v6;
        }

        v2 = v4 + 1;
        v3 += 8;
      }

      while (v4 + 1 != a2);
    }
  }

  return result;
}

uint64_t *sub_100024DD8(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 1;
    if (result + 1 != a2)
    {
      v3 = 0;
      v4 = -8;
      v5 = 8;
      v6 = result;
      do
      {
        v7 = *(result + v3);
        v3 = v5;
        v8 = *v2;
        v9 = *(*v2 + 338);
        if (*(*v2 + 338) < *(v7 + 338) || v9 == *(v7 + 338) && *(v8 + 336) < *(v7 + 336))
        {
          *v2 = v7;
          v10 = v4;
          for (i = v6; ; --i)
          {
            v12 = *(i - 1);
            if (*(v12 + 338) <= v9 && (v9 != *(v12 + 338) || *(v8 + 336) >= *(v12 + 336)))
            {
              break;
            }

            *i = v12;
            v10 += 8;
            if (!v10)
            {
              __break(1u);
              return result;
            }
          }

          *i = v8;
        }

        v5 = v3 + 8;
        v2 = (result + v3 + 8);
        ++v6;
        v4 -= 8;
      }

      while (v2 != a2);
    }
  }

  return result;
}

unint64_t sub_100024EA8(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *(a2 - 1);
  v4 = *(*a1 + 338);
  v5 = *(v3 + 338);
  if (*(*a1 + 338) < v5 || v4 == *(v3 + 338) && (v5 = *(v2 + 336), v5 < *(v3 + 336)))
  {
    for (i = (a1 + 4); i != a2; i += 8)
    {
      v5 = *i;
      if (*(*i + 338) > v4)
      {
        goto LABEL_16;
      }

      if (v4 == *(*i + 338))
      {
        v5 = *(v5 + 336);
        if (*(v2 + 336) < v5)
        {
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
      ;
    }

LABEL_16:
    v5 = a2;
    if (i >= a2)
    {
      goto LABEL_25;
    }

    if (a2 != a1)
    {
      v5 = (a2 - 4);
      do
      {
        if (*(*v5 + 338) <= v4 && (v4 != *(*v5 + 338) || *(v2 + 336) >= *(*v5 + 336)))
        {
          goto LABEL_25;
        }

        v7 = v5 == a1;
        v5 -= 8;
      }

      while (!v7);
    }
  }

LABEL_24:
  while (1)
  {
    __break(1u);
LABEL_25:
    if (i >= v5)
    {
      break;
    }

    v8 = *i;
    v9 = *v5;
LABEL_27:
    *i = v9;
    i += 8;
    *v5 = v8;
    while (i != a2)
    {
      v8 = *i;
      if (*(*i + 338) > v4 || v4 == *(*i + 338) && *(v2 + 336) < *(v8 + 336))
      {
        if (v5 == a1)
        {
          goto LABEL_24;
        }

        v5 -= 8;
        while (1)
        {
          v9 = *v5;
          if (*(*v5 + 338) <= v4 && (v4 != *(*v5 + 338) || *(v2 + 336) >= *(v9 + 336)))
          {
            break;
          }

          v7 = v5 == a1;
          v5 -= 8;
          if (v7)
          {
            goto LABEL_24;
          }
        }

        if (i < v5)
        {
          goto LABEL_27;
        }

        goto LABEL_42;
      }

      i += 8;
    }
  }

LABEL_42:
  if ((i - 8) != a1)
  {
    *a1 = *(i - 8);
  }

  *(i - 8) = v2;
  return i;
}

uint64_t *sub_100025080(uint64_t *a1, uint64_t *a2)
{
  v4 = a1 + 8;
  v5 = *a1;
  if (a1 + 1 != a2)
  {
    v4 = *(v5 + 338);
    v6 = 1;
    while (1)
    {
      v3 = a1[v6];
      if (*(v3 + 338) >= v4 && (*(v3 + 338) != v4 || *(v3 + 336) >= *(v5 + 336)))
      {
        break;
      }

      v2 = &a1[++v6];
      if (&a1[v6] == a2)
      {
        goto LABEL_16;
      }
    }

    v2 = &a1[v6];
    if (v6 == 1)
    {
      goto LABEL_17;
    }

    if (a2 != a1)
    {
      v7 = a2 - 1;
      do
      {
        if (*(*v7 + 338) < v4 || *(*v7 + 338) == v4 && *(*v7 + 336) < *(v5 + 336))
        {
          goto LABEL_29;
        }

        v8 = v7-- == a1;
      }

      while (!v8);
    }
  }

LABEL_16:
  while (1)
  {
    __break(1u);
LABEL_17:
    v7 = a2;
    if (v2 < a2)
    {
      v7 = a2 - 1;
      v9 = *(a2 - 1);
      if (*(v9 + 338) >= v4)
      {
        v10 = *(v9 + 338);
        do
        {
          if (v10 == v4)
          {
            if (*(v9 + 336) < *(v5 + 336) || v2 >= v7)
            {
              break;
            }
          }

          else if (v2 >= v7)
          {
            break;
          }

          v12 = *--v7;
          v9 = v12;
          v10 = *(v12 + 338);
        }

        while (*(v12 + 338) >= v4);
      }
    }

LABEL_29:
    if (v2 >= v7)
    {
      break;
    }

    v13 = *v7;
    v14 = v2;
    v15 = v7;
LABEL_31:
    *v14++ = v13;
    *v15 = v3;
    while (v14 != a2)
    {
      v3 = *v14;
      if (*(*v14 + 338) >= v4 && (*(*v14 + 338) != v4 || *(v3 + 336) >= *(v5 + 336)))
      {
        if (v15 == a1)
        {
          goto LABEL_16;
        }

        --v15;
        while (1)
        {
          v13 = *v15;
          if (*(*v15 + 338) < v4 || *(*v15 + 338) == v4 && *(v13 + 336) < *(v5 + 336))
          {
            break;
          }

          v8 = v15-- == a1;
          if (v8)
          {
            goto LABEL_16;
          }
        }

        if (v14 < v15)
        {
          goto LABEL_31;
        }

        goto LABEL_48;
      }

      ++v14;
    }
  }

  v14 = v2;
LABEL_48:
  v16 = v14 - 1;
  if (v14 - 1 != a1)
  {
    *a1 = *v16;
  }

  *v16 = v5;
  return v14 - 1;
}

BOOL sub_10002526C(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v19 = *a1;
        v20 = a1[1];
        v21 = *(v20 + 338);
        v22 = *(*a1 + 338);
        if (*(v20 + 338) >= *(*a1 + 338) && (v21 != v22 || *(v20 + 336) >= *(v19 + 336)))
        {
          v31 = *(a2 - 1);
          if (*(v31 + 338) < v21 || *(v31 + 338) == v21 && *(v31 + 336) < *(v20 + 336))
          {
            a1[1] = v31;
            *(a2 - 1) = v20;
            v33 = *a1;
            v32 = a1[1];
            v34 = *(v32 + 338);
            v35 = *(*a1 + 338);
            if (v34 < v35 || v34 == v35 && *(v32 + 336) < *(v33 + 336))
            {
              *a1 = v32;
              a1[1] = v33;
            }
          }

          return 1;
        }

        v23 = *(a2 - 1);
        if (*(v23 + 338) < v21 || *(v23 + 338) == v21 && *(v23 + 336) < *(v20 + 336))
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v20;
          a1[1] = v19;
          v38 = *(a2 - 1);
          if (*(v38 + 338) >= v22 && (*(v38 + 338) != v22 || *(v38 + 336) >= *(v19 + 336)))
          {
            return 1;
          }

          a1[1] = v38;
        }

        *(a2 - 1) = v19;
        break;
      case 4:
        sub_100024B2C(a1, a1 + 1, a1 + 2, a2 - 1);
        break;
      case 5:
        sub_100024B2C(a1, a1 + 1, a1 + 2, a1 + 3);
        v9 = *(a2 - 1);
        v10 = a1[3];
        v11 = *(v9 + 338);
        v12 = *(v10 + 338);
        if (v11 < v12 || v11 == v12 && *(v9 + 336) < *(v10 + 336))
        {
          a1[3] = v9;
          *(a2 - 1) = v10;
          v14 = a1[2];
          v13 = a1[3];
          v15 = *(v13 + 338);
          v16 = *(v14 + 338);
          if (*(v13 + 338) < v16 || v15 == v16 && *(v13 + 336) < *(v14 + 336))
          {
            a1[2] = v13;
            a1[3] = v14;
            v17 = a1[1];
            if (*(v17 + 338) > v15 || v15 == *(v17 + 338) && *(v13 + 336) < *(v17 + 336))
            {
              a1[1] = v13;
              a1[2] = v17;
              v18 = *a1;
              if (*(*a1 + 338) > v15 || v15 == *(*a1 + 338) && *(v13 + 336) < *(v18 + 336))
              {
                *a1 = v13;
                a1[1] = v18;
              }
            }
          }
        }

        return 1;
      default:
        goto LABEL_17;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    v7 = *(v5 + 338);
    v8 = *(*a1 + 338);
    if (v7 < v8 || v7 == v8 && *(v5 + 336) < *(v6 + 336))
    {
      *a1 = v5;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_17:
  v24 = a1 + 2;
  v25 = *a1;
  v26 = a1 + 1;
  v27 = a1[1];
  v28 = *(v27 + 338);
  v29 = *(*a1 + 338);
  if (*(v27 + 338) < *(*a1 + 338) || v28 == v29 && *(v27 + 336) < *(v25 + 336))
  {
    v30 = *v24;
    if (*(*v24 + 338) < v28 || (v39 = *(*v24 + 338), v39 == v28) && *(v30 + 336) < *(v27 + 336))
    {
      *a1 = v30;
    }

    else
    {
      *a1 = v27;
      a1[1] = v25;
      if (v39 >= v29 && (v39 != v29 || *(v30 + 336) >= *(v25 + 336)))
      {
        goto LABEL_48;
      }

      *v26 = v30;
    }

    v26 = a1 + 2;
LABEL_47:
    *v26 = v25;
    goto LABEL_48;
  }

  v36 = *v24;
  v37 = *(*v24 + 338);
  if (*(*v24 + 338) < v28 || v37 == v28 && *(v36 + 336) < *(v27 + 336))
  {
    *v26 = v36;
    *v24 = v27;
    if (v37 < v29 || v37 == v29 && *(v36 + 336) < *(v25 + 336))
    {
      *a1 = v36;
      goto LABEL_47;
    }
  }

LABEL_48:
  v40 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    v43 = *v40;
    v44 = *v24;
    v45 = *(*v40 + 338);
    if (*(*v40 + 338) < *(v44 + 338) || v45 == *(v44 + 338) && *(v43 + 336) < *(v44 + 336))
    {
      *v40 = v44;
      v46 = v41;
      while (1)
      {
        v47 = *(a1 + v46 + 8);
        if (*(v47 + 338) <= v45 && (v45 != *(v47 + 338) || *(v43 + 336) >= *(v47 + 336)))
        {
          break;
        }

        *(a1 + v46 + 16) = v47;
        v46 -= 8;
        if (v46 == -16)
        {
          v48 = a1;
          goto LABEL_61;
        }
      }

      v48 = (a1 + v46 + 16);
LABEL_61:
      *v48 = v43;
      if (++v42 == 8)
      {
        return v40 + 1 == a2;
      }
    }

    v24 = v40;
    v41 += 8;
    if (++v40 == a2)
    {
      return 1;
    }
  }
}

uint64_t *sub_100025718(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_100025878(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        v14 = *a1;
        v15 = *(*v12 + 338);
        v16 = *(*a1 + 338);
        if (v15 < v16 || v15 == v16 && *(v13 + 336) < *(v14 + 336))
        {
          *v12 = v14;
          *a1 = v13;
          sub_100025878(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v17 = a2 - 1;
      do
      {
        v18 = *a1;
        v19 = sub_1000259D0(a1, a4, v8);
        if (v17 == v19)
        {
          *v19 = v18;
        }

        else
        {
          *v19 = *v17;
          *v17 = v18;
          sub_100025A54(a1, (v19 + 1), a4, v19 + 1 - a1);
        }

        --v17;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_100025878(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[1];
        v11 = *(*v8 + 338);
        v12 = *(v10 + 338);
        if (v11 < v12 || v11 == v12 && *(*v8 + 336) < *(v10 + 336))
        {
          ++v8;
          v7 = v9;
        }
      }

      v13 = *v8;
      v14 = *a4;
      if (*(*v8 + 338) >= *(*a4 + 338))
      {
        v15 = *(*a4 + 338);
        if (*(*v8 + 338) != v15 || *(v13 + 336) >= *(v14 + 336))
        {
          *a4 = v13;
          if (v5 >= v7)
          {
            while (1)
            {
              v17 = 2 * v7;
              v7 = (2 * v7) | 1;
              v16 = (result + 8 * v7);
              v18 = v17 + 2;
              if (v18 < a3)
              {
                v19 = v16[1];
                v20 = *(*v16 + 338);
                v21 = *(v19 + 338);
                if (v20 < v21 || v20 == v21 && *(*v16 + 336) < *(v19 + 336))
                {
                  ++v16;
                  v7 = v18;
                }
              }

              v22 = *v16;
              if (*(*v16 + 338) < v15 || *(*v16 + 338) == v15 && *(v22 + 336) < *(v14 + 336))
              {
                break;
              }

              *v8 = v22;
              v8 = v16;
              if (v5 < v7)
              {
                goto LABEL_13;
              }
            }
          }

          v16 = v8;
LABEL_13:
          *v16 = v14;
        }
      }
    }
  }

  return result;
}

void *sub_1000259D0(void *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = result;
    v5 = &result[v3];
    result = v5 + 1;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v10 = v5[2];
      v8 = v5 + 2;
      v9 = v10;
      v11 = *(v8 - 1);
      v12 = *(v11 + 338);
      v13 = *(v10 + 338);
      if (v12 < v13 || v12 == v13 && *(v11 + 336) < *(v9 + 336))
      {
        result = v8;
        v3 = v7;
      }
    }

    *v4 = *result;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t sub_100025A54(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 8 * (v4 >> 1));
    v7 = *v6;
    v8 = *(a2 - 8);
    v9 = *(v8 + 338);
    if (*(*v6 + 338) < *(v8 + 338) || *(*v6 + 338) == v9 && *(v7 + 336) < *(v8 + 336))
    {
      *(a2 - 8) = v7;
      if (v4 >= 2)
      {
        while (1)
        {
          v11 = v5 - 1;
          v5 = (v5 - 1) >> 1;
          v10 = (result + 8 * v5);
          v12 = *v10;
          if (*(*v10 + 338) >= v9 && (*(*v10 + 338) != v9 || *(v12 + 336) >= *(v8 + 336)))
          {
            break;
          }

          *v6 = v12;
          v6 = (result + 8 * v5);
          if (v11 <= 1)
          {
            goto LABEL_9;
          }
        }
      }

      v10 = v6;
LABEL_9:
      *v10 = v8;
    }
  }

  return result;
}

uint64_t sub_100025B04(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v78 = *(a2 - 1);
        v79 = *v9;
        v80 = *(v78 + 6526);
        v81 = *(*v9 + 6526);
        if (v80 < v81 || v80 == v81 && *(v78 + 6524) < *(v79 + 6524))
        {
          *v9 = v78;
          *(a2 - 1) = v79;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {

      return sub_100026598(v9, v9 + 1, v9 + 2, a2 - 1);
    }

    if (v12 == 5)
    {
      result = sub_100026598(v9, v9 + 1, v9 + 2, v9 + 3);
      v87 = *(a2 - 1);
      v88 = v9[3];
      v89 = *(v87 + 6526);
      v90 = *(v88 + 6526);
      if (v89 < v90 || v89 == v90 && *(v87 + 6524) < *(v88 + 6524))
      {
        v9[3] = v87;
        *(a2 - 1) = v88;
        v92 = v9[2];
        v91 = v9[3];
        v93 = *(v91 + 6526);
        v94 = *(v92 + 6526);
        if (*(v91 + 6526) < v94 || v93 == v94 && *(v91 + 6524) < *(v92 + 6524))
        {
          v9[2] = v91;
          v9[3] = v92;
          v95 = v9[1];
          if (*(v95 + 6526) > v93 || v93 == *(v95 + 6526) && *(v91 + 6524) < *(v95 + 6524))
          {
            v9[1] = v91;
            v9[2] = v95;
            v96 = *v9;
            if (*(*v9 + 6526) > v93 || v93 == *(*v9 + 6526) && *(v91 + 6524) < *(v96 + 6524))
            {
              *v9 = v91;
              v9[1] = v96;
            }
          }
        }
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return sub_100026788(v9, a2);
      }

      else
      {

        return sub_100026868(v9, a2);
      }
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return sub_100027218(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = &v9[v12 >> 1];
    v15 = v14;
    if (v12 >= 0x81)
    {
      v16 = *v14;
      v17 = *v9;
      v18 = *(*v14 + 6526);
      v19 = *(*v9 + 6526);
      if (*(*v14 + 6526) < *(*v9 + 6526) || v18 == v19 && *(v16 + 6524) < *(v17 + 6524))
      {
        v20 = *(a2 - 1);
        if (*(v20 + 6526) < v18 || *(v20 + 6526) == v18 && *(v20 + 6524) < *(v16 + 6524))
        {
          *v9 = v20;
        }

        else
        {
          *v9 = v16;
          *v14 = v17;
          v36 = *(a2 - 1);
          if (*(v36 + 6526) >= v19 && (*(v36 + 6526) != v19 || *(v36 + 6524) >= *(v17 + 6524)))
          {
            goto LABEL_35;
          }

          *v14 = v36;
        }

        *(a2 - 1) = v17;
        goto LABEL_35;
      }

      v26 = *(a2 - 1);
      if (*(v26 + 6526) < v18 || *(v26 + 6526) == v18 && *(v26 + 6524) < *(v16 + 6524))
      {
        *v14 = v26;
        *(a2 - 1) = v16;
        v27 = *v14;
        v28 = *v9;
        v29 = *(*v14 + 6526);
        v30 = *(*v9 + 6526);
        if (v29 < v30 || v29 == v30 && *(v27 + 6524) < *(v28 + 6524))
        {
          *v9 = v27;
          *v14 = v28;
        }
      }

LABEL_35:
      v37 = v13 - 1;
      v38 = v9[v37];
      v39 = v9[1];
      v40 = *(v38 + 6526);
      v41 = *(v39 + 6526);
      if (*(v38 + 6526) < *(v39 + 6526) || v40 == v41 && *(v38 + 6524) < *(v39 + 6524))
      {
        v42 = *(a2 - 2);
        if (*(v42 + 6526) < v40 || *(v42 + 6526) == v40 && *(v42 + 6524) < *(v38 + 6524))
        {
          v9[1] = v42;
        }

        else
        {
          v9[1] = v38;
          v9[v37] = v39;
          v49 = *(a2 - 2);
          if (*(v49 + 6526) >= v41 && (*(v49 + 6526) != v41 || *(v49 + 6524) >= *(v39 + 6524)))
          {
            goto LABEL_53;
          }

          v9[v37] = v49;
        }

        *(a2 - 2) = v39;
        goto LABEL_53;
      }

      v43 = *(a2 - 2);
      if (*(v43 + 6526) < v40 || *(v43 + 6526) == v40 && *(v43 + 6524) < *(v38 + 6524))
      {
        v9[v37] = v43;
        *(a2 - 2) = v38;
        v44 = v9[v37];
        v45 = v9[1];
        v46 = *(v44 + 6526);
        v47 = *(v45 + 6526);
        if (v46 < v47 || v46 == v47 && *(v44 + 6524) < *(v45 + 6524))
        {
          v9[1] = v44;
          v9[v37] = v45;
        }
      }

LABEL_53:
      v52 = v14[1];
      v50 = v14 + 1;
      v51 = v52;
      v53 = v9[2];
      v54 = *(v52 + 6526);
      v55 = *(v53 + 6526);
      if (*(v52 + 6526) < *(v53 + 6526) || v54 == v55 && *(v51 + 6524) < *(v53 + 6524))
      {
        v56 = *(a2 - 3);
        if (*(v56 + 6526) < v54 || *(v56 + 6526) == v54 && *(v56 + 6524) < *(v51 + 6524))
        {
          v9[2] = v56;
        }

        else
        {
          v9[2] = v51;
          *v50 = v53;
          v62 = *(a2 - 3);
          if (*(v62 + 6526) >= v55 && (*(v62 + 6526) != v55 || *(v62 + 6524) >= *(v53 + 6524)))
          {
            goto LABEL_66;
          }

          *v50 = v62;
        }

        *(a2 - 3) = v53;
        goto LABEL_66;
      }

      v57 = *(a2 - 3);
      if (*(v57 + 6526) < v54 || *(v57 + 6526) == v54 && *(v57 + 6524) < *(v51 + 6524))
      {
        *v50 = v57;
        *(a2 - 3) = v51;
        v58 = *v50;
        v59 = v9[2];
        v60 = *(*v50 + 6526);
        v61 = *(v59 + 6526);
        if (v60 < v61 || v60 == v61 && *(v58 + 6524) < *(v59 + 6524))
        {
          v9[2] = v58;
          *v50 = v59;
        }
      }

LABEL_66:
      v63 = *v15;
      v64 = v9[v37];
      v65 = *(*v15 + 6526);
      v66 = *(v64 + 6526);
      if (*(*v15 + 6526) < *(v64 + 6526) || v65 == v66 && *(v63 + 6524) < *(v64 + 6524))
      {
        v67 = *v50;
        if (*(*v50 + 6526) < v65 || (v70 = *(*v50 + 6526), v70 == v65) && *(v67 + 6524) < *(v63 + 6524))
        {
          v9[v37] = v67;
        }

        else
        {
          v9[v37] = v63;
          *v15 = v64;
          if (v70 >= v66 && (v70 != v66 || *(v67 + 6524) >= *(v64 + 6524)))
          {
            v63 = v64;
            goto LABEL_79;
          }

          *v15 = v67;
          v63 = v67;
        }
      }

      else
      {
        v68 = *v50;
        v69 = *(*v50 + 6526);
        if (*(*v50 + 6526) >= v65 && (v69 != v65 || *(v68 + 6524) >= *(v63 + 6524)))
        {
          goto LABEL_79;
        }

        *v15 = v68;
        *v50 = v63;
        if (v69 >= v66 && (v69 != v66 || *(v68 + 6524) >= *(v64 + 6524)))
        {
          v63 = v68;
          goto LABEL_79;
        }

        v9[v37] = v68;
        v50 = v15;
        v63 = v64;
      }

      *v50 = v64;
LABEL_79:
      v71 = *v9;
      *v9 = v63;
      *v15 = v71;
      goto LABEL_80;
    }

    v21 = *v9;
    v22 = *v15;
    v23 = *(*v9 + 6526);
    v24 = *(*v15 + 6526);
    if (*(*v9 + 6526) < *(*v15 + 6526) || v23 == v24 && *(v21 + 6524) < *(v22 + 6524))
    {
      v25 = *(a2 - 1);
      if (*(v25 + 6526) < v23 || *(v25 + 6526) == v23 && *(v25 + 6524) < *(v21 + 6524))
      {
        *v15 = v25;
LABEL_47:
        *(a2 - 1) = v22;
        goto LABEL_80;
      }

      *v15 = v21;
      *v9 = v22;
      v48 = *(a2 - 1);
      if (*(v48 + 6526) < v24 || *(v48 + 6526) == v24 && *(v48 + 6524) < *(v22 + 6524))
      {
        *v9 = v48;
        goto LABEL_47;
      }
    }

    else
    {
      v31 = *(a2 - 1);
      if (*(v31 + 6526) < v23 || *(v31 + 6526) == v23 && *(v31 + 6524) < *(v21 + 6524))
      {
        *v9 = v31;
        *(a2 - 1) = v21;
        v32 = *v9;
        v33 = *v15;
        v34 = *(*v9 + 6526);
        v35 = *(*v15 + 6526);
        if (v34 < v35 || v34 == v35 && *(v32 + 6524) < *(v33 + 6524))
        {
          *v15 = v32;
          *v9 = v33;
        }
      }
    }

LABEL_80:
    if ((a5 & 1) == 0)
    {
      v72 = *(v9 - 1);
      v73 = *(v72 + 6526);
      v74 = *(*v9 + 6526);
      if (v73 >= v74 && (v73 != v74 || *(v72 + 6524) >= *(*v9 + 6524)))
      {
        result = sub_10002693C(v9, a2);
        v9 = result;
        goto LABEL_135;
      }
    }

    v75 = sub_100026B34(v9, a2);
    if ((v76 & 1) == 0)
    {
      goto LABEL_133;
    }

    v77 = sub_100026D34(v9, v75);
    v9 = v75 + 1;
    result = sub_100026D34(v75 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v75;
      if (v77)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v77)
    {
LABEL_133:
      result = sub_100025B04(v8, v75, a3, -v11, a5 & 1);
      v9 = v75 + 1;
LABEL_135:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v82 = *v9;
  v83 = v9[1];
  v84 = *(v83 + 6526);
  v85 = *(*v9 + 6526);
  if (*(v83 + 6526) < *(*v9 + 6526) || v84 == v85 && *(v83 + 6524) < *(v82 + 6524))
  {
    v86 = *(a2 - 1);
    if (*(v86 + 6526) < v84 || *(v86 + 6526) == v84 && *(v86 + 6524) < *(v83 + 6524))
    {
      *v9 = v86;
    }

    else
    {
      *v9 = v83;
      v9[1] = v82;
      v102 = *(a2 - 1);
      if (*(v102 + 6526) >= v85 && (*(v102 + 6526) != v85 || *(v102 + 6524) >= *(v82 + 6524)))
      {
        return result;
      }

      v9[1] = v102;
    }

    *(a2 - 1) = v82;
    return result;
  }

  v97 = *(a2 - 1);
  if (*(v97 + 6526) < v84 || *(v97 + 6526) == v84 && *(v97 + 6524) < *(v83 + 6524))
  {
    v9[1] = v97;
    *(a2 - 1) = v83;
    v99 = *v9;
    v98 = v9[1];
    v100 = *(v98 + 6526);
    v101 = *(*v9 + 6526);
    if (v100 < v101 || v100 == v101 && *(v98 + 6524) < *(v99 + 6524))
    {
      *v9 = v98;
      v9[1] = v99;
    }
  }

  return result;
}

uint64_t *sub_100026598(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = *(*a2 + 6526);
  v7 = *(*result + 6526);
  if (*(*a2 + 6526) < *(*result + 6526) || v6 == v7 && *(v4 + 6524) < *(v5 + 6524))
  {
    v8 = *a3;
    if (*(*a3 + 6526) < v6 || *(*a3 + 6526) == v6 && *(v8 + 6524) < *(v4 + 6524))
    {
      *result = v8;
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v4 = *a3;
      if (*(*a3 + 6526) >= v7 && (*(*a3 + 6526) != v7 || *(v4 + 6524) >= *(v5 + 6524)))
      {
        goto LABEL_15;
      }

      *a2 = v4;
    }

    *a3 = v5;
    goto LABEL_14;
  }

  v5 = *a3;
  if (*(*a3 + 6526) >= v6 && (*(*a3 + 6526) != v6 || *(v5 + 6524) >= *(v4 + 6524)))
  {
LABEL_14:
    v4 = v5;
    goto LABEL_15;
  }

  *a2 = v5;
  *a3 = v4;
  v9 = *a2;
  v10 = *result;
  v11 = *(*a2 + 6526);
  v12 = *(*result + 6526);
  if (v11 < v12 || v11 == v12 && *(v9 + 6524) < *(v10 + 6524))
  {
    *result = v9;
    *a2 = v10;
    v4 = *a3;
  }

LABEL_15:
  v13 = *a4;
  v14 = *(*a4 + 6526);
  v15 = *(v4 + 6526);
  if (v14 < v15 || v14 == v15 && *(v13 + 6524) < *(v4 + 6524))
  {
    *a3 = v13;
    *a4 = v4;
    v16 = *a3;
    v17 = *a2;
    v18 = *(*a3 + 6526);
    v19 = *(*a2 + 6526);
    if (v18 < v19 || v18 == v19 && *(v16 + 6524) < *(v17 + 6524))
    {
      *a2 = v16;
      *a3 = v17;
      v20 = *a2;
      v21 = *result;
      v22 = *(*a2 + 6526);
      v23 = *(*result + 6526);
      if (v22 < v23 || v22 == v23 && *(v20 + 6524) < *(v21 + 6524))
      {
        *result = v20;
        *a2 = v21;
      }
    }
  }

  return result;
}

void *sub_100026788(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 1;
    if (result + 1 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v4;
        v4 = v2;
        v7 = *v5;
        v6 = v5[1];
        v8 = *(v6 + 6526);
        if (*(v6 + 6526) < *(*v5 + 6526) || v8 == *(*v5 + 6526) && *(v6 + 6524) < *(v7 + 6524))
        {
          v5[1] = v7;
          v9 = result;
          if (v5 != result)
          {
            v10 = v3;
            while (1)
            {
              v11 = *(result + v10 - 8);
              if (*(v11 + 6526) <= v8)
              {
                if (v8 != *(v11 + 6526))
                {
                  v9 = v5;
                  goto LABEL_17;
                }

                if (*(v6 + 6524) >= *(v11 + 6524))
                {
                  break;
                }
              }

              --v5;
              *(result + v10) = v11;
              v10 -= 8;
              if (!v10)
              {
                v9 = result;
                goto LABEL_17;
              }
            }

            v9 = (result + v10);
          }

LABEL_17:
          *v9 = v6;
        }

        v2 = v4 + 1;
        v3 += 8;
      }

      while (v4 + 1 != a2);
    }
  }

  return result;
}

uint64_t *sub_100026868(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result + 1;
    if (result + 1 != a2)
    {
      v3 = 0;
      v4 = -8;
      v5 = 8;
      v6 = result;
      do
      {
        v7 = *(result + v3);
        v3 = v5;
        v8 = *v2;
        v9 = *(*v2 + 6526);
        if (*(*v2 + 6526) < *(v7 + 6526) || v9 == *(v7 + 6526) && *(v8 + 6524) < *(v7 + 6524))
        {
          *v2 = v7;
          v10 = v4;
          for (i = v6; ; --i)
          {
            v12 = *(i - 1);
            if (*(v12 + 6526) <= v9 && (v9 != *(v12 + 6526) || *(v8 + 6524) >= *(v12 + 6524)))
            {
              break;
            }

            *i = v12;
            v10 += 8;
            if (!v10)
            {
              __break(1u);
              return result;
            }
          }

          *i = v8;
        }

        v5 = v3 + 8;
        v2 = (result + v3 + 8);
        ++v6;
        v4 -= 8;
      }

      while (v2 != a2);
    }
  }

  return result;
}

unint64_t sub_10002693C(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 - 8);
  v4 = *(*a1 + 6526);
  v5 = *(v3 + 6526);
  if (*(*a1 + 6526) < v5 || v4 == *(v3 + 6526) && (v5 = *(v2 + 6524), v5 < *(v3 + 6524)))
  {
    i = (a1 + 1);
    if (a1 + 1 == a2)
    {
      goto LABEL_24;
    }

    v5 = 6526;
    while (*(*i + 6526) <= v4 && (v4 != *(*i + 6526) || *(v2 + 6524) >= *(*i + 6524)))
    {
      i += 8;
      if (i == a2)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    for (i = (a1 + 1); i < a2; i += 8)
    {
      if (*(*i + 6526) > v4 || v4 == *(*i + 6526) && *(v2 + 6524) < *(*i + 6524))
      {
        break;
      }
    }
  }

  v5 = a2;
  if (i >= a2)
  {
    goto LABEL_25;
  }

  if (a2 != a1)
  {
    v5 = a2 - 8;
    do
    {
      if (*(*v5 + 6526) <= v4 && (v4 != *(*v5 + 6526) || *(v2 + 6524) >= *(*v5 + 6524)))
      {
        goto LABEL_25;
      }

      v7 = v5 == a1;
      v5 -= 8;
    }

    while (!v7);
  }

LABEL_24:
  while (1)
  {
    __break(1u);
LABEL_25:
    if (i >= v5)
    {
      break;
    }

    v8 = *i;
    v9 = *v5;
LABEL_27:
    *i = v9;
    i += 8;
    *v5 = v8;
    while (i != a2)
    {
      v8 = *i;
      if (*(*i + 6526) > v4 || v4 == *(*i + 6526) && *(v2 + 6524) < *(v8 + 6524))
      {
        if (v5 == a1)
        {
          goto LABEL_24;
        }

        v5 -= 8;
        while (1)
        {
          v9 = *v5;
          if (*(*v5 + 6526) <= v4 && (v4 != *(*v5 + 6526) || *(v2 + 6524) >= *(v9 + 6524)))
          {
            break;
          }

          v7 = v5 == a1;
          v5 -= 8;
          if (v7)
          {
            goto LABEL_24;
          }
        }

        if (i < v5)
        {
          goto LABEL_27;
        }

        goto LABEL_42;
      }

      i += 8;
    }
  }

LABEL_42:
  if ((i - 8) != a1)
  {
    *a1 = *(i - 8);
  }

  *(i - 8) = v2;
  return i;
}

unint64_t sub_100026B34(uint64_t *a1, uint64_t *a2)
{
  v4 = a1 + 8;
  v5 = *a1;
  if (a1 + 1 != a2)
  {
    v2 = 6526;
    v4 = *(v5 + 6526);
    v6 = 1;
    while (1)
    {
      v3 = a1[v6];
      if (*(v3 + 6526) >= v4 && (*(v3 + 6526) != v4 || *(v3 + 3262) >= *(v5 + 6524)))
      {
        break;
      }

      v3 = &a1[++v6];
      if (&a1[v6] == a2)
      {
        goto LABEL_16;
      }
    }

    v2 = &a1[v6];
    if (v6 == 1)
    {
      goto LABEL_17;
    }

    if (a2 != a1)
    {
      v7 = a2 - 1;
      do
      {
        if (*(*v7 + 6526) < v4 || *(*v7 + 6526) == v4 && *(*v7 + 6524) < *(v5 + 6524))
        {
          goto LABEL_29;
        }

        v8 = v7-- == a1;
      }

      while (!v8);
    }
  }

LABEL_16:
  while (1)
  {
    __break(1u);
LABEL_17:
    v7 = a2;
    if (v2 < a2)
    {
      v7 = a2 - 1;
      v9 = *(a2 - 1);
      if (*(v9 + 6526) >= v4)
      {
        v10 = *(v9 + 6526);
        do
        {
          if (v10 == v4)
          {
            if (*(v9 + 6524) < *(v5 + 6524) || v2 >= v7)
            {
              break;
            }
          }

          else if (v2 >= v7)
          {
            break;
          }

          v12 = *--v7;
          v9 = v12;
          v10 = *(v12 + 6526);
        }

        while (*(v12 + 6526) >= v4);
      }
    }

LABEL_29:
    if (v2 >= v7)
    {
      break;
    }

    v13 = *v7;
    v14 = v2;
    v15 = v7;
LABEL_31:
    *v14 = v13;
    v14 += 8;
    *v15 = v3;
    while (v14 != a2)
    {
      v3 = *v14;
      if (*(*v14 + 6526) >= v4 && (*(*v14 + 6526) != v4 || *(v3 + 3262) >= *(v5 + 6524)))
      {
        if (v15 == a1)
        {
          goto LABEL_16;
        }

        --v15;
        while (1)
        {
          v13 = *v15;
          if (*(*v15 + 6526) < v4 || *(*v15 + 6526) == v4 && *(v13 + 6524) < *(v5 + 6524))
          {
            break;
          }

          v8 = v15-- == a1;
          if (v8)
          {
            goto LABEL_16;
          }
        }

        if (v14 < v15)
        {
          goto LABEL_31;
        }

        goto LABEL_48;
      }

      v14 += 8;
    }
  }

  v14 = v2;
LABEL_48:
  v16 = (v14 - 8);
  if ((v14 - 8) != a1)
  {
    *a1 = *v16;
  }

  *v16 = v5;
  return v14 - 8;
}

BOOL sub_100026D34(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v19 = *a1;
        v20 = a1[1];
        v21 = *(v20 + 6526);
        v22 = *(*a1 + 6526);
        if (*(v20 + 6526) >= *(*a1 + 6526) && (v21 != v22 || *(v20 + 6524) >= *(v19 + 6524)))
        {
          v31 = *(a2 - 1);
          if (*(v31 + 6526) < v21 || *(v31 + 6526) == v21 && *(v31 + 6524) < *(v20 + 6524))
          {
            a1[1] = v31;
            *(a2 - 1) = v20;
            v33 = *a1;
            v32 = a1[1];
            v34 = *(v32 + 6526);
            v35 = *(*a1 + 6526);
            if (v34 < v35 || v34 == v35 && *(v32 + 6524) < *(v33 + 6524))
            {
              *a1 = v32;
              a1[1] = v33;
            }
          }

          return 1;
        }

        v23 = *(a2 - 1);
        if (*(v23 + 6526) < v21 || *(v23 + 6526) == v21 && *(v23 + 6524) < *(v20 + 6524))
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v20;
          a1[1] = v19;
          v38 = *(a2 - 1);
          if (*(v38 + 6526) >= v22 && (*(v38 + 6526) != v22 || *(v38 + 6524) >= *(v19 + 6524)))
          {
            return 1;
          }

          a1[1] = v38;
        }

        *(a2 - 1) = v19;
        break;
      case 4:
        sub_100026598(a1, a1 + 1, a1 + 2, a2 - 1);
        break;
      case 5:
        sub_100026598(a1, a1 + 1, a1 + 2, a1 + 3);
        v9 = *(a2 - 1);
        v10 = a1[3];
        v11 = *(v9 + 6526);
        v12 = *(v10 + 6526);
        if (v11 < v12 || v11 == v12 && *(v9 + 6524) < *(v10 + 6524))
        {
          a1[3] = v9;
          *(a2 - 1) = v10;
          v14 = a1[2];
          v13 = a1[3];
          v15 = *(v13 + 6526);
          v16 = *(v14 + 6526);
          if (*(v13 + 6526) < v16 || v15 == v16 && *(v13 + 6524) < *(v14 + 6524))
          {
            a1[2] = v13;
            a1[3] = v14;
            v17 = a1[1];
            if (*(v17 + 6526) > v15 || v15 == *(v17 + 6526) && *(v13 + 6524) < *(v17 + 6524))
            {
              a1[1] = v13;
              a1[2] = v17;
              v18 = *a1;
              if (*(*a1 + 6526) > v15 || v15 == *(*a1 + 6526) && *(v13 + 6524) < *(v18 + 6524))
              {
                *a1 = v13;
                a1[1] = v18;
              }
            }
          }
        }

        return 1;
      default:
        goto LABEL_17;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    v7 = *(v5 + 6526);
    v8 = *(*a1 + 6526);
    if (v7 < v8 || v7 == v8 && *(v5 + 6524) < *(v6 + 6524))
    {
      *a1 = v5;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_17:
  v24 = a1 + 2;
  v25 = *a1;
  v26 = a1 + 1;
  v27 = a1[1];
  v28 = *(v27 + 6526);
  v29 = *(*a1 + 6526);
  if (*(v27 + 6526) < *(*a1 + 6526) || v28 == v29 && *(v27 + 6524) < *(v25 + 6524))
  {
    v30 = *v24;
    if (*(*v24 + 6526) < v28 || (v39 = *(*v24 + 6526), v39 == v28) && *(v30 + 6524) < *(v27 + 6524))
    {
      *a1 = v30;
    }

    else
    {
      *a1 = v27;
      a1[1] = v25;
      if (v39 >= v29 && (v39 != v29 || *(v30 + 6524) >= *(v25 + 6524)))
      {
        goto LABEL_48;
      }

      *v26 = v30;
    }

    v26 = a1 + 2;
LABEL_47:
    *v26 = v25;
    goto LABEL_48;
  }

  v36 = *v24;
  v37 = *(*v24 + 6526);
  if (*(*v24 + 6526) < v28 || v37 == v28 && *(v36 + 6524) < *(v27 + 6524))
  {
    *v26 = v36;
    *v24 = v27;
    if (v37 < v29 || v37 == v29 && *(v36 + 6524) < *(v25 + 6524))
    {
      *a1 = v36;
      goto LABEL_47;
    }
  }

LABEL_48:
  v40 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    v43 = *v40;
    v44 = *v24;
    v45 = *(*v40 + 6526);
    if (*(*v40 + 6526) < *(v44 + 6526) || v45 == *(v44 + 6526) && *(v43 + 6524) < *(v44 + 6524))
    {
      *v40 = v44;
      v46 = v41;
      while (1)
      {
        v47 = *(a1 + v46 + 8);
        if (*(v47 + 6526) <= v45 && (v45 != *(v47 + 6526) || *(v43 + 6524) >= *(v47 + 6524)))
        {
          break;
        }

        *(a1 + v46 + 16) = v47;
        v46 -= 8;
        if (v46 == -16)
        {
          v48 = a1;
          goto LABEL_61;
        }
      }

      v48 = (a1 + v46 + 16);
LABEL_61:
      *v48 = v43;
      if (++v42 == 8)
      {
        return v40 + 1 == a2;
      }
    }

    v24 = v40;
    v41 += 8;
    if (++v40 == a2)
    {
      return 1;
    }
  }
}

uint64_t *sub_100027218(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_10002737C(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        v14 = *a1;
        v15 = *(*v12 + 6526);
        v16 = *(*a1 + 6526);
        if (v15 < v16 || v15 == v16 && *(v13 + 6524) < *(v14 + 6524))
        {
          *v12 = v14;
          *a1 = v13;
          sub_10002737C(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v17 = a2 - 1;
      do
      {
        v18 = *a1;
        v19 = sub_1000274E0(a1, a4, v8);
        if (v17 == v19)
        {
          *v19 = v18;
        }

        else
        {
          *v19 = *v17;
          *v17 = v18;
          sub_100027568(a1, (v19 + 1), a4, v19 + 1 - a1);
        }

        --v17;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_10002737C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[1];
        v11 = *(*v8 + 6526);
        v12 = *(v10 + 6526);
        if (v11 < v12 || v11 == v12 && *(*v8 + 6524) < *(v10 + 6524))
        {
          ++v8;
          v7 = v9;
        }
      }

      v13 = *v8;
      v14 = *a4;
      if (*(*v8 + 6526) >= *(*a4 + 6526))
      {
        v15 = *(*a4 + 6526);
        if (*(*v8 + 6526) != v15 || *(v13 + 6524) >= *(v14 + 6524))
        {
          *a4 = v13;
          if (v5 >= v7)
          {
            while (1)
            {
              v17 = 2 * v7;
              v7 = (2 * v7) | 1;
              v16 = (result + 8 * v7);
              v18 = v17 + 2;
              if (v18 < a3)
              {
                v19 = v16[1];
                v20 = *(*v16 + 6526);
                v21 = *(v19 + 6526);
                if (v20 < v21 || v20 == v21 && *(*v16 + 6524) < *(v19 + 6524))
                {
                  ++v16;
                  v7 = v18;
                }
              }

              v22 = *v16;
              if (*(*v16 + 6526) < v15 || *(*v16 + 6526) == v15 && *(v22 + 6524) < *(v14 + 6524))
              {
                break;
              }

              *v8 = v22;
              v8 = v16;
              if (v5 < v7)
              {
                goto LABEL_13;
              }
            }
          }

          v16 = v8;
LABEL_13:
          *v16 = v14;
        }
      }
    }
  }

  return result;
}

void *sub_1000274E0(void *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = result;
    v5 = &result[v3];
    result = v5 + 1;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v10 = v5[2];
      v8 = v5 + 2;
      v9 = v10;
      v11 = *(v8 - 1);
      v12 = *(v11 + 6526);
      v13 = *(v10 + 6526);
      if (v12 < v13 || v12 == v13 && *(v11 + 6524) < *(v9 + 6524))
      {
        result = v8;
        v3 = v7;
      }
    }

    *v4 = *result;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t sub_100027568(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 8 * (v4 >> 1));
    v7 = *v6;
    v8 = *(a2 - 8);
    v9 = *(v8 + 6526);
    if (*(*v6 + 6526) < *(v8 + 6526) || *(*v6 + 6526) == v9 && *(v7 + 6524) < *(v8 + 6524))
    {
      *(a2 - 8) = v7;
      if (v4 >= 2)
      {
        while (1)
        {
          v11 = v5 - 1;
          v5 = (v5 - 1) >> 1;
          v10 = (result + 8 * v5);
          v12 = *v10;
          if (*(*v10 + 6526) >= v9 && (*(*v10 + 6526) != v9 || *(v12 + 6524) >= *(v8 + 6524)))
          {
            break;
          }

          *v6 = v12;
          v6 = (result + 8 * v5);
          if (v11 <= 1)
          {
            goto LABEL_12;
          }
        }
      }

      v10 = v6;
LABEL_12:
      *v10 = v8;
    }
  }

  return result;
}

uint64_t sub_10002762C@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  v4 = *(result + 3936);
  v5 = *v4;
  *(result + 3936) = v4 + 1;
  *(result + 3944) = a2;
  *(v3 + v2) = v5;
  v6 = *(result + 3944);
  return result;
}

uint64_t sub_100027650(uint64_t a1, int *a2, _DWORD *a3, unsigned int a4, int a5, _DWORD *a6)
{
  v20 = -86;
  v19 = -1431655766;
  v6 = (a2[2] - 3);
  if (a4 > v6)
  {
    v7 = a5;
  }

  else
  {
    v7 = 0;
  }

  if (a4 < v6 || v7 != 0)
  {
    v9 = *a2;
    v18[0] = HIBYTE(*a2);
    v18[1] = BYTE2(v9);
    v18[2] = BYTE1(v9);
    v18[3] = v9;
    v18[4] = 0;
    printf("e: invalid block length for block %s\n", v18);
    return 0;
  }

  if (a6)
  {
    *a6 = v6;
  }

  if (*(a1 + 3944) < 4 * v6)
  {
    return 0;
  }

  if (v6)
  {
    v11 = a3;
    v12 = v6;
    do
    {
      v13 = *(a1 + 3944);
      v14 = v13 >= 4;
      v15 = v13 - 4;
      if (!v14)
      {
        return 0;
      }

      v16 = *(a1 + 3936);
      v17 = *v16;
      *(a1 + 3936) = v16 + 1;
      *(a1 + 3944) = v15;
      *v11++ = v17;
    }

    while (--v12);
  }

  if (a4 > v6)
  {
    bzero(&a3[v6], 4 * (a4 - v6));
  }

  return 1;
}

uint64_t sub_10002775C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = 0;
  if (a3)
  {
    v7 = (a3 + 1);
    if (v7 <= 0xA)
    {
      v19 = -1;
      *&v10 = -1;
      *(&v10 + 1) = -1;
      v18[0] = v10;
      v18[1] = v10;
      result = sub_100008448(a1, v18, v7, sub_1000084DC);
      if (result)
      {
        if (*(a2 + 12) == 1)
        {
          v11 = *(a2 + 8);
        }

        else
        {
          v11 = vcvts_n_f32_s32((*(a1 + 8))(a4, *(a1 + 16)), 0x18uLL);
        }

        v12 = 0;
        if (v11 <= *v18)
        {
          v11 = *v18;
        }

        v13 = a3 - 1;
        if (v11 >= *(v18 + (a3 - 1)))
        {
          v11 = *(v18 + v13);
        }

        v14 = v18 + 1;
        v15 = (a3 - 1);
        do
        {
          if (!v15)
          {
            goto LABEL_16;
          }

          v16 = *v14++;
          ++v12;
          --v15;
        }

        while (v11 >= v16);
        v13 = v12 - 1;
        if (a3 == v12 || (v17 = *(v14 - 2), v11 == v17))
        {
LABEL_16:
          *(a2 + 4) = 0;
          v12 = v13 + 1;
          goto LABEL_17;
        }

        *(a2 + 4) = (v11 - v17) / (*(v18 + v12) - v17);
LABEL_17:
        *a2 = v12;
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1000278B4(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, &unk_100029978, sizeof(__dst));
  v21 = 0;
  v20 = 0;
  __dst[0] = 1;
  v4 = 4 * *(a2 + 8) - 12;
  if (*(a1 + 3944) < v4)
  {
    return 0;
  }

  *(a1 + 3944) = v4;
  if (v4 >= 0xC)
  {
    do
    {
      v6 = *(a1 + 3936);
      v7 = *v6;
      v8 = v6[1];
      v17[0] = v7;
      v17[1] = v8;
      v9 = v6[2];
      v17[2] = v9;
      if (!v7 || !v8 || !v9)
      {
        break;
      }

      *(a1 + 3936) = v6 + 3;
      v10 = v4 - 12;
      *(a1 + 3944) = v10;
      if (4 * v9 - 12 > v10)
      {
        v16 = "e: input data not well-formed";
        goto LABEL_62;
      }

      v19[0] = HIBYTE(v7);
      v19[1] = BYTE2(v7);
      v19[2] = BYTE1(v7);
      v19[3] = v7;
      v19[4] = 0;
      if (v7 == 1347568471)
      {
        if (!sub_1000104DC(a1, v17, __dst))
        {
          return 0;
        }
      }

      else
      {
        switch(v7)
        {
          case 1129469516:
            v11 = &__dst[618];
            goto LABEL_52;
          case 1129470032:
            v11 = &__dst[617];
            goto LABEL_52;
          case 1129600588:
            v11 = &__dst[620];
            v12 = a1;
            v13 = 4;
            goto LABEL_53;
          case 1129601104:
            v11 = &__dst[619];
            goto LABEL_52;
          case 1447843404:
            v11 = &__dst[625];
            v12 = a1;
            v13 = 65;
            goto LABEL_53;
        }

        if (v7 != 1297303108)
        {
          switch(v7)
          {
            case 1347568452:
              v11 = &__dst[712];
              v12 = a1;
              v13 = 16;
              v14 = 0;
              goto LABEL_54;
            case 1380209478:
              v11 = &__dst[695];
              break;
            case 1380336984:
              v11 = &__dst[694];
              break;
            case 1380734292:
              v11 = &__dst[17];
              v15 = &__dst[16];
              v12 = a1;
              v13 = 600;
              v14 = 0;
              goto LABEL_55;
            case 1395737944:
              v11 = &__dst[7];
              goto LABEL_48;
            case 1395803480:
              v11 = &__dst[10];
              goto LABEL_48;
            case 1395869016:
              v11 = &__dst[13];
              goto LABEL_48;
            case 1397310808:
              v11 = &__dst[4];
              goto LABEL_48;
            case 1446069592:
              v11 = &__dst[691];
              break;
            case 1446135128:
              v11 = &__dst[692];
              break;
            case 1446200664:
              v11 = &__dst[693];
              break;
            case 1447642456:
              v11 = &__dst[690];
              break;
            case 1447839064:
              v11 = &__dst[624];
              break;
            case 1230128472:
              v11 = &__dst[1];
LABEL_48:
              v12 = a1;
              v13 = 3;
LABEL_53:
              v14 = 1;
LABEL_54:
              v15 = 0;
LABEL_55:
              if ((sub_100027650(v12, v17, v11, v13, v14, v15) & 1) == 0)
              {
                return 0;
              }

              goto LABEL_56;
            default:
              printf("e: unknown block name %s\n", v19);
              return 0;
          }

LABEL_52:
          v12 = a1;
          v13 = 1;
          goto LABEL_53;
        }

        result = sub_100027650(a1, v17, &__dst[728], 1u, 1, 0);
        if (!result)
        {
          return result;
        }

        __dst[0] = 2;
      }

LABEL_56:
      v4 = *(a1 + 3944);
    }

    while (v4 > 0xB);
  }

  if ((*a1)(8, __dst, 3108, 0, 0, *(a1 + 16)))
  {
    puts("i: set CA data succeeded");
    return 1;
  }

  v16 = "e: set CA data failed";
LABEL_62:
  puts(v16);
  return 0;
}

uint64_t sub_100027D18(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) >= 0x20000u)
  {
    printf("e: unexpected PBDS version %d\n");
    return 0;
  }

  if (!*(a1 + 2864) || !*(a1 + 2868))
  {
    v57 = "e: prox LUTs should come after config parameters";
LABEL_80:
    puts(v57);
    return 0;
  }

  v5 = *(a1 + 3408);
  v6 = *(a1 + 3162);
  v7 = 3 * *(a1 + 2870) * v5 * *(a1 + 3160) * *(a1 + 3166);
  v8 = *(a1 + 3164);
  v9 = (vcvtd_n_f64_u32(v6, 1uLL) * v8 + 3.5 + v8 + 0.9);
  v10 = v5 + v6 + v8 + v7 * v9 + 5;
  if (*(a2 + 8) != v10)
  {
    v58 = *(a2 + 8);
    printf("e: unexpected PBDS block size 0x%x != 0x%x\n");
    return 0;
  }

  v11 = 4 * v10;
  if (*(a1 + 3944) < (v11 - 12))
  {
    return 0;
  }

  *(a1 + 3944) = v11 - 12;
  if (v11 == 12)
  {
    return 0;
  }

  v12 = (a1 + 3564);
  *(a1 + 3936) += 2;
  *(a1 + 3944) = v11 - 14;
  result = sub_10002775C(a1, a1 + 3564, v5, @"DisplayCoexPrioritizeProx");
  if (result)
  {
    result = sub_100008448(a1, (a1 + 3328), *(a1 + 3164), sub_1000232FC);
    if (result)
    {
      result = sub_100008448(a1, (a1 + 3248), *(a1 + 3162), sub_10001A21C);
      if (result)
      {
        v14 = *(a1 + 3944);
        v15 = v14 >= 2;
        v16 = v14 - 2;
        if (!v15)
        {
          return 0;
        }

        *(a1 + 3936) += 2;
        *(a1 + 3944) = v16;
        if (!v7)
        {
          return 1;
        }

        v17 = 0;
        v18 = 4 * v9;
        v19 = (v18 - 2);
        do
        {
          v20 = *(a1 + 3944);
          v21 = v20 - 2;
          if (v20 < 2)
          {
            return 0;
          }

          v22 = *(a1 + 3936);
          v23 = *v22;
          *(a1 + 3936) = v22 + 1;
          *(a1 + 3944) = v21;
          v24 = *(a1 + 3564);
          if (v24 > v23 || (v25 = *(a1 + 3568), v24 + 1 < v23) && v25 != 0.0 || v24 < v23 && v25 == 0.0)
          {
            if (v21 < v19)
            {
              return 0;
            }

            *(a1 + 3936) = v22 + v19 + 2;
            *(a1 + 3944) = v20 - v18;
            goto LABEL_23;
          }

          if (v21 < 2)
          {
            return 0;
          }

          LOWORD(v2) = v22[1];
          *(a1 + 3936) = v22 + 2;
          *(a1 + 3944) = v20 - 4;
          if (v20 - 4 < 2)
          {
            return 0;
          }

          v59 = v18;
          v60 = v12;
          LOWORD(v3) = v22[2];
          *(a1 + 3936) = v22 + 3;
          *(a1 + 3944) = v20 - 6;
          if (v20 - 6 < 4)
          {
            return 0;
          }

          v26 = *(v22 + 3);
          *(a1 + 3936) = v22 + 5;
          *(a1 + 3944) = v20 - 10;
          v27 = sub_100007FB8(result, v26);
          v28 = *(a1 + 3944);
          v15 = v28 >= 4;
          v29 = v28 - 4;
          if (!v15)
          {
            return 0;
          }

          v30 = v27;
          v31 = (((v2 * 65536.0) / 10.0) + 0.5);
          v32 = ((v3 * 65536.0) + 0.5);
          v33 = *(a1 + 3936);
          v34 = *v33;
          *(a1 + 3936) = v33 + 1;
          *(a1 + 3944) = v29;
          v35 = 3608;
          if (*(a1 + 3564) == v23)
          {
            v35 = 3600;
          }

          v36 = *(a1 + v35);
          if (v36)
          {
            while (v36[664] != v31 || v36[665] != v32 || v36[666] != v34)
            {
              v36 = *v36;
              if (!v36)
              {
                goto LABEL_37;
              }
            }

            v38 = v36[663];
            v39 = 1;
          }

          else
          {
LABEL_37:
            v37 = malloc_type_calloc(1uLL, 0xA70uLL, 0x10200402CC89F78uLL);
            if (!v37)
            {
              v57 = "e: no memory";
              goto LABEL_80;
            }

            v36 = v37;
            v38 = 0;
            v39 = 0;
            v37[664] = v31;
            v37[665] = v32;
            v37[666] = v34;
            v37[663] = 0;
          }

          v36[663] = v38 | v30;
          v40 = *(a1 + 3164);
          if (v40 > 0x14)
          {
            return 0;
          }

          LODWORD(v41) = *(a1 + 3162);
          if (v41 > 0x14)
          {
            return 0;
          }

          if (!*(a1 + 3164))
          {
            goto LABEL_69;
          }

          v42 = 0;
          v43 = v36;
          do
          {
            if (!v41)
            {
              goto LABEL_56;
            }

            v44 = 0;
            v45 = *(a1 + 3944);
            v46 = v43;
            do
            {
              v15 = v45 >= 2;
              v45 -= 2;
              if (!v15)
              {
                return 0;
              }

              v47 = *(a1 + 3936);
              v48 = *v47;
              *(a1 + 3936) = v47 + 1;
              *(a1 + 3944) = v45;
              if (v30)
              {
                v46[6] = v48;
                if ((v30 & 2) == 0)
                {
LABEL_49:
                  if ((v30 & 4) == 0)
                  {
                    goto LABEL_51;
                  }

LABEL_50:
                  v46[806] = v48;
                  goto LABEL_51;
                }
              }

              else if ((v30 & 2) == 0)
              {
                goto LABEL_49;
              }

              v46[406] = v48;
              if ((v30 & 4) != 0)
              {
                goto LABEL_50;
              }

LABEL_51:
              ++v44;
              v41 = *(a1 + 3162);
              ++v46;
            }

            while (v44 < v41);
            v40 = *(a1 + 3164);
LABEL_56:
            ++v42;
            v43 += 20;
          }

          while (v42 < v40);
          if (v40)
          {
            v49 = v36 + 643;
            for (i = v40; i; --i)
            {
              v51 = *(a1 + 3944);
              v52 = v51 - 4;
              if (v51 < 4)
              {
                return 0;
              }

              v53 = *(a1 + 3936);
              v54 = *v53;
              *(a1 + 3936) = v53 + 1;
              *(a1 + 3944) = v52;
              if (v30)
              {
                *(v49 - 40) = v54;
                if ((v30 & 2) != 0)
                {
LABEL_67:
                  *(v49 - 20) = v54;
                  if ((v30 & 4) == 0)
                  {
                    goto LABEL_64;
                  }

LABEL_63:
                  *v49 = v54;
                  goto LABEL_64;
                }
              }

              else if ((v30 & 2) != 0)
              {
                goto LABEL_67;
              }

              if ((v30 & 4) != 0)
              {
                goto LABEL_63;
              }

LABEL_64:
              ++v49;
            }
          }

LABEL_69:
          v55 = *(a1 + 3944);
          v15 = v55 >= 2;
          v56 = v55 - 2;
          if (!v15)
          {
            return 0;
          }

          *(a1 + 3936) += 2;
          *(a1 + 3944) = v56;
          v12 = v60;
          v18 = v59;
          if ((v39 & 1) == 0)
          {
            if (!sub_10001A224(a1, v36[664], (a1 + 2872), (a1 + 3412)) || !sub_10001A224(a1, v36[665], (a1 + 3208), (a1 + 3416)) || (sub_10001A2D4(a1, v36[666], (a1 + 3168), (a1 + 3420)) & 1) == 0)
            {
              free(v36);
              return 0;
            }

            if (*v60 == v23)
            {
              *v36 = *(a1 + 3600);
              *(a1 + 3600) = v36;
            }

            else
            {
              *v36 = *(a1 + 3608);
              *(a1 + 3608) = v36;
            }
          }

LABEL_23:
          ++v17;
          result = 1;
        }

        while (v17 != v7);
      }
    }
  }

  return result;
}

uint64_t sub_100028278(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v4 = HIWORD(*(a2 + 4));
  if ((v4 - 3) >= 0xFFFFFFFE)
  {
    v7 = (a1 + 3701);
    *(a1 + 3700) = a4;
    *(a1 + 3696) = a3;
    *(a1 + 3692) = v4;
    v8 = *(a1 + 3944);
    if (v4 == 1)
    {
      v9 = v8 - 2;
      if (v8 >= 2)
      {
        v10 = *(a1 + 3936);
        v11 = *v10;
        *(a1 + 3936) = v10 + 1;
        *(a1 + 3944) = v9;
        *v7 = v11;
        while (1)
        {
          v12 = v9 >= 2;
          v13 = v9 - 2;
          if (!v12)
          {
            break;
          }

          a1 = sub_10002762C(a1, v13);
          if (v15)
          {
            v16 = v9 - 2;
            if (v9 >= 2)
            {
              v17 = *(a1 + 3936);
              v18 = *v17;
              *(a1 + 3936) = v17 + 1;
              *(a1 + 3944) = v16;
              v14[12] = v18;
              if (v16 >= 2)
              {
                v19 = v17[1];
                *(a1 + 3936) = v17 + 2;
                v20 = v9 - 4;
                *(a1 + 3944) = v9 - 4;
                v14[13] = v19;
                if (v9 - 4 >= 2)
                {
                  for (i = 0; ; i += 2)
                  {
                    v22 = *(a1 + 3936);
                    v23 = *v22;
                    *(a1 + 3936) = v22 + 1;
                    *(a1 + 3944) = v20 - 2;
                    *(a1 + 3729 + i) = v23;
                    if (i == 4)
                    {
                      break;
                    }

                    v5 = 0;
                    v20 = *(a1 + 3944);
                    if (v20 < 2)
                    {
                      return v5;
                    }
                  }

                  v38 = 0;
                  while (1)
                  {
                    v39 = *(a1 + 3944);
                    v12 = v39 >= 2;
                    v40 = v39 - 2;
                    if (!v12)
                    {
                      break;
                    }

                    v41 = *(a1 + 3936);
                    v42 = *v41;
                    *(a1 + 3936) = v41 + 1;
                    *(a1 + 3944) = v40;
                    *(a1 + 3735 + v38) = v42;
                    v38 += 2;
                    if (v38 == 6)
                    {
                      v43 = *(a1 + 3944);
                      v44 = v43 - 2;
                      if (v43 >= 2)
                      {
                        v45 = *(a1 + 3936);
                        v46 = *v45;
                        *(a1 + 3936) = v45 + 1;
                        *(a1 + 3944) = v44;
                        v14[20] = v46;
                        if (v44 >= 2)
                        {
                          v47 = v45[1];
                          *(a1 + 3936) = v45 + 2;
                          *(a1 + 3944) = v43 - 4;
                          v14[21] = v47;
                          if (v43 - 4 >= 2)
                          {
                            v36 = v45[2];
                            *(a1 + 3936) = v45 + 3;
                            *(a1 + 3944) = v43 - 6;
                            if (v36 <= 0x10)
                            {
                              v37 = 3745;
                              goto LABEL_32;
                            }
                          }
                        }
                      }

                      return 0;
                    }
                  }
                }
              }
            }

            return 0;
          }
        }
      }
    }

    else
    {
      v24 = v8 - 2;
      if (v8 >= 2)
      {
        v25 = *(a1 + 3936);
        v26 = *v25;
        *(a1 + 3936) = v25 + 1;
        *(a1 + 3944) = v24;
        *v7 = v26;
        while (1)
        {
          v12 = v24 >= 2;
          v27 = v24 - 2;
          if (!v12)
          {
            break;
          }

          a1 = sub_10002762C(a1, v27);
          if (v15)
          {
            v29 = v24 - 2;
            if (v24 < 2)
            {
              return 0;
            }

            v30 = *(a1 + 3936);
            v31 = *v30;
            *(a1 + 3936) = v30 + 1;
            *(a1 + 3944) = v29;
            v28[12] = v31;
            if (v29 < 2)
            {
              return 0;
            }

            v32 = v30[1];
            *(a1 + 3936) = v30 + 2;
            *(a1 + 3944) = v24 - 4;
            v28[13] = v32;
            if (v24 - 4 < 2)
            {
              return 0;
            }

            v33 = v30[2];
            *(a1 + 3936) = v30 + 3;
            *(a1 + 3944) = v24 - 6;
            v28[14] = v33;
            if (v24 - 6 < 2)
            {
              return 0;
            }

            v34 = v30[3];
            *(a1 + 3936) = v30 + 4;
            *(a1 + 3944) = v24 - 8;
            v28[15] = v34;
            if (v24 - 8 < 2)
            {
              return 0;
            }

            v35 = v30[4];
            *(a1 + 3936) = v30 + 5;
            *(a1 + 3944) = v24 - 10;
            if (v35 > 0x10)
            {
              return 0;
            }

            v28[16] = v35;
            if (v24 - 10 < 2)
            {
              return 0;
            }

            LOWORD(v36) = v30[5];
            *(a1 + 3936) = v30 + 6;
            *(a1 + 3944) = v24 - 12;
            v37 = 3735;
LABEL_32:
            *(a1 + v37) = v36;
            return 1;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_10002853C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 4) != 0x10000)
  {
    return 0;
  }

  v3 = *(a1 + 3944);
  v4 = v3 - 2;
  if (v3 < 2)
  {
    return 0;
  }

  v5 = *(a1 + 3936);
  v6 = *v5;
  *(a1 + 3936) = v5 + 1;
  *(a1 + 3944) = v4;
  if (v4 < 2)
  {
    return 0;
  }

  v7 = v5[1];
  *(a1 + 3936) = v5 + 2;
  *(a1 + 3944) = v3 - 4;
  if (v3 - 4 < 2)
  {
    return 0;
  }

  v8 = v5[2];
  *(a1 + 3936) = v5 + 3;
  *(a1 + 3944) = v3 - 6;
  *(a1 + 3824) = v6;
  v9 = v7;
  v10 = sub_10000E94C(a1, v7);
  if (!v10)
  {
    return 0;
  }

  *(v10 + 5) = 1;
  v10[8] = v9;
  v10[4] = v9;
  v10[9] = v8;
  if (v8 > 0x28)
  {
    return 0;
  }

  v11 = *(a1 + 3944);
  if (v11 < 2 * v8)
  {
    return 0;
  }

  if (v8)
  {
    v12 = v10 + 13;
    while (1)
    {
      v13 = v11 >= 2;
      v11 = (v11 - 2);
      if (!v13)
      {
        return 0;
      }

      v14 = *(a1 + 3936);
      v15 = *v14;
      *(a1 + 3936) = v14 + 1;
      *(a1 + 3944) = v11;
      *v12++ = v15;
      if (!--v8)
      {
        v16 = v10[9];
        if (v11 < 4 * v16)
        {
          return 0;
        }

        if (v10[9])
        {
          v17 = v10 + 53;
          while (1)
          {
            v18 = *(a1 + 3944);
            v13 = v18 >= 4;
            v19 = v18 - 4;
            if (!v13)
            {
              return 0;
            }

            v20 = *(a1 + 3936);
            v21 = *v20;
            *(a1 + 3936) = v20 + 1;
            *(a1 + 3944) = v19;
            *v17++ = v21;
            if (!--v16)
            {
              goto LABEL_19;
            }
          }
        }

        break;
      }
    }
  }

LABEL_19:

  return sub_10000EA58(a1, v9, (a1 + 3826), (a1 + 3846));
}

uint64_t sub_1000286A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 28);
  if (v2)
  {
    v3 = *(a2 + 6) == v2;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    *(a1 + 28) = 5;
    v5 = *(a1 + 3944);
    v16 = v5 >= 2;
    v6 = v5 - 2;
    if (v16)
    {
      v7 = *(a1 + 3936);
      v8 = *v7;
      *(a1 + 3936) = v7 + 1;
      *(a1 + 3944) = v6;
      printf("i: PDC params version %d\n", v8);
      v9 = *(a1 + 3944);
      v10 = v9 - 2;
      if (v9 >= 2)
      {
        v11 = *(a1 + 3936);
        v12 = *v11;
        *(a1 + 3936) = v11 + 1;
        *(a1 + 3944) = v10;
        if (v10 >= 2)
        {
          v13 = v11[1];
          *(a1 + 3936) = v11 + 2;
          *(a1 + 3944) = v9 - 4;
          if (v9 - 4 >= 2)
          {
            v14 = v11[2];
            *(a1 + 424) = v14;
            *(a1 + 3936) = v11 + 3;
            v15 = v9 - 6;
            *(a1 + 3944) = v9 - 6;
            if ((v14 - 21) >= 0xFFFFFFEC)
            {
              v16 = 4 * v14 <= v15 && v15 >= 4;
              if (v16)
              {
                v17 = 0;
                v18 = (a1 + 436);
                while (1)
                {
                  v19 = *&v11[v17 / 2 + 3];
                  *(a1 + 3936) = &v11[v17 / 2 + 5];
                  *(a1 + 3944) = v15 - 4;
                  v18[v17 / 4] = v19;
                  if (4 * v14 - 4 == v17)
                  {
                    break;
                  }

                  result = 0;
                  v15 = *(a1 + 3944);
                  v17 += 4;
                  if (v15 < 4)
                  {
                    return result;
                  }
                }

                if (*v18 == v12 && v18[v14 - 1] == v13)
                {
                  if (*(a1 + 3944) >= 2u)
                  {
                    *(a1 + 428) = v11[v17 / 2 + 5];
                    *(a1 + 3936) = &v11[v17 / 2 + 6];
                    sub_100027620();
                    if (v16)
                    {
                      *(a1 + 430) = *v27;
                      *(a1 + 3936) = v26 + 14;
                      *(a1 + 3944) = v24 - 4;
                      if ((v24 - 4) >= 2)
                      {
                        *(a1 + 2116) = *(v26 + 14);
                        v28 = (v22 + v23 + 16);
                        *(a1 + 3936) = v28;
                        *(a1 + 3944) = v24 - 6;
                        if ((v24 - 6) >= 2)
                        {
                          *(a1 + 432) = *v28;
                          v29 = (v22 + v23 + 18);
                          *(a1 + 3936) = v29;
                          *(a1 + 3944) = v24 - 8;
                          if ((v24 - 8) >= 2)
                          {
                            *(a1 + 434) = *v29;
                            *(a1 + 3936) = v22 + v23 + 20;
                            v30 = (v24 - 10);
                            *(a1 + 3944) = v30;
                            v31 = v21 * v21;
                            if (v30 >= 4 * v31)
                            {
                              v32 = v25 + 24;
                              for (i = (a1 + 516); ; ++i)
                              {
                                v34 = *(a1 + 3944);
                                v16 = v34 >= 4;
                                v35 = v34 - 4;
                                if (!v16)
                                {
                                  break;
                                }

                                v36 = *(v32 - 4);
                                *(a1 + 3936) = v32;
                                *(a1 + 3944) = v35;
                                *i = v36;
                                v32 += 4;
                                if (!--v31)
                                {
                                  v37 = *(a1 + 3944);
                                  v38 = v37 - 2;
                                  if (v37 >= 2)
                                  {
                                    *(a1 + 2118) = *(v32 - 4);
                                    *(a1 + 3936) = v32 - 2;
                                    *(a1 + 3944) = v38;
                                    if (v38 >= 2)
                                    {
                                      v39 = *(v32 - 2);
                                      *(a1 + 3936) = v32;
                                      v40 = v37 - 4;
                                      *(a1 + 3944) = v40;
                                      if (v39 < v21)
                                      {
                                        printf("e: frame repeat LUT incomplete, only %d/%d provided\n");
                                        return 0;
                                      }

                                      if (v39 <= 0x14)
                                      {
                                        v41 = 2 * v39;
                                        v42 = 1;
                                        do
                                        {
                                          v43 = 0;
                                          v44 = v42;
                                          v45 = v40;
                                          v46 = v32;
                                          do
                                          {
                                            if (v42)
                                            {
                                              if (v40 < 2)
                                              {
                                                return 0;
                                              }
                                            }

                                            else
                                            {
                                              if (v40 < 2)
                                              {
                                                return 0;
                                              }

                                              *(a1 + 236 + v43) = *(v32 + v43);
                                            }

                                            *(a1 + 3936) = v32 + v43 + 2;
                                            v40 -= 2;
                                            *(a1 + 3944) = v40;
                                            v43 += 2;
                                          }

                                          while (v41 != v43);
                                          v42 = 0;
                                          v32 += v43;
                                        }

                                        while ((v44 & 1) != 0);
                                        v47 = v40 - 2;
                                        if (v40 >= 2)
                                        {
                                          v48 = v46 + v43;
                                          v49 = *(v46 + v43);
                                          *(a1 + 2120) = v49;
                                          *(a1 + 3936) = v46 + v43 + 2;
                                          *(a1 + 3944) = v47;
                                          if (v47 >= 2)
                                          {
                                            v50 = *(v48 + 2);
                                            *(a1 + 3936) = v48 + 4;
                                            *(a1 + 3944) = v45 - v43 - 4;
                                            *(a1 + 2120) = v49 << 16;
                                            *(a1 + 2124) = v50 << 16;
                                            return 1;
                                          }
                                        }
                                      }
                                    }
                                  }

                                  return 0;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }

                else
                {
                  printf("e: provided min or max durations (%d, %d) invalid\n");
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v51 = *(a2 + 6);
    printf("e: unexpected block version %d\n");
  }

  return 0;
}

BOOL sub_100028A0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = v3 - 3;
  v5 = (*(a1 + 8))(@"PRCBinningDebugEnable", *(a1 + 16));
  v6 = (*(a1 + 8))(@"dcvrr-version-control", *(a1 + 16));
  if (*(a1 + 3944) < (4 * (v3 - 3)))
  {
    return 0;
  }

  v7 = 4 * v4;
  *(a1 + 3944) = 4 * v4;
  if (!(4 * v4))
  {
    return 0;
  }

  v8 = *(a1 + 3936);
  *(a1 + 3936) = v8 + 1;
  *(a1 + 3944) = v7 - 2;
  v9 = v8[1];
  *(a1 + 3936) = v8 + 2;
  *(a1 + 3944) = v7 - 4;
  if (v9 >= 6)
  {
    printf("e: unexpected number of bins %d\n");
    return 0;
  }

  if (v7 == 4)
  {
    return 0;
  }

  v10 = v8[2];
  v11 = v8 + 3;
  *(a1 + 3936) = v8 + 3;
  v12 = v7 - 6;
  *(a1 + 3944) = v12;
  if (v10 - 5 <= 0xFFFFFFFB)
  {
    printf("e: unexpected number of backlight sections %d\n");
    return 0;
  }

  if (v4 != (3 * v10 + 784) >> 1)
  {
    v19 = "e: PRC table not well formed";
    goto LABEL_19;
  }

  v14 = 2 * (v10 - 1);
  if (v14 > v12)
  {
    return 0;
  }

  if (v10 != 1)
  {
    v15 = 0;
    v16 = (a1 + 4008);
    v17 = 4 * v3 - 20;
    while (v12 != v15)
    {
      v18 = v8[v15 / 2 + 3];
      *(a1 + 3936) = &v8[v15 / 2 + 4];
      *(a1 + 3944) = v17;
      *v16++ = v18;
      v15 += 2;
      v17 -= 2;
      if (v14 == v15)
      {
        if (v10)
        {
          v11 = &v8[v15 / 2 + 3];
          v17 = v12 - v15;
        }

        else
        {
          if (v12 == v15)
          {
            return 0;
          }

          v11 = &v8[v15 / 2 + 4];
          *(a1 + 3936) = v11;
          *(a1 + 3944) = v17;
        }

        goto LABEL_22;
      }
    }

    return 0;
  }

  v17 = v12;
LABEL_22:
  v20 = v17 - 2;
  if (v17 >= 2)
  {
    v21 = *v11;
    *(a1 + 3936) = v11 + 1;
    *(a1 + 3944) = v20;
    if (v6 != v21)
    {
      printf("e: Undefined EEPROM version 0x%x, expected 0x%x\n");
      return 0;
    }

    if (v20 < 2)
    {
      return 0;
    }

    v22 = v11[1];
    v23 = v11 + 2;
    *(a1 + 3936) = v11 + 2;
    v24 = v17 - 4;
    *(a1 + 3944) = v17 - 4;
    if (v22 > 5)
    {
      return 0;
    }

    if (v10)
    {
      v25 = 0;
      v26 = (a1 + 4 * v22 + 4020);
      while (1)
      {
        v27 = v24 >= 4;
        v24 -= 4;
        if (!v27)
        {
          return 0;
        }

        *v26 = *&v11[v25 + 2];
        v26 += 5;
        *(a1 + 3936) = &v11[v25 + 4];
        *(a1 + 3944) = v24;
        v25 += 2;
        if (2 * v10 == v25)
        {
          v23 = &v11[v25 + 2];
          break;
        }
      }
    }

    if (v24 < 2)
    {
      return 0;
    }

    v28 = *v23;
    *(a1 + 3936) = v23 + 1;
    sub_100027620();
    if (!v27)
    {
      return 0;
    }

    v30 = *(v29 + 2);
    *(a1 + 3936) = v29 + 4;
    sub_100027620();
    if (!v27)
    {
      return 0;
    }

    v32 = *(v31 + 4);
    *(a1 + 3936) = v31 + 6;
    sub_100027620();
    if (!v27)
    {
      return 0;
    }

    v55 = v34;
    v56 = v37;
    v54 = v33;
    v57 = v35;
    v39 = *(v38 + 6);
    *(a1 + 3936) = v38 + 8;
    *(a1 + 3944) = v36 - 8;
    if ((v36 - 8) < 2)
    {
      return 0;
    }

    *(a1 + 3936) = v38 + 10;
    *(a1 + 3944) = v36 - 10;
    v40 = malloc_type_calloc(1uLL, 0x628uLL, 0x10200404B1403A4uLL);
    if (v40)
    {
      v41 = v40;
      v42 = 0;
      v40[5] = v39;
      v40[6] = 2;
      v40[2] = v57;
      v40[3] = v30;
      v40[4] = v32;
      v43 = v40 + 7;
      v44 = *(a1 + 3944);
LABEL_42:
      if (v44 >= 0x202)
      {
        v45 = 0;
        v46 = v44 & 0xFFFFFFFE;
        while (v46 != v45)
        {
          v47 = *(a1 + 3936);
          v48 = *v47;
          *(a1 + 3936) = v47 + 1;
          v44 -= 2;
          *(a1 + 3944) = v44;
          *(v43 + v45) = v48;
          v45 += 2;
          if (v45 == 514)
          {
            v27 = v44 >= 2;
            v44 -= 2;
            if (!v27)
            {
              break;
            }

            *(a1 + 3936) = v47 + 2;
            *(a1 + 3944) = v44;
            ++v42;
            v43 = (v43 + 514);
            if (v42 != 3)
            {
              goto LABEL_42;
            }

            v49 = a1 + 3968;
            v50 = *(a1 + 3968 + 8 * v56);
            if (v50)
            {
              while (*(v50 + 2) != v57 || *(v50 + 3) != v30 || *(v50 + 4) != v32 || *(v50 + 5) != v39)
              {
                v50 = *v50;
                if (!v50)
                {
                  goto LABEL_55;
                }
              }

              puts("e: duplicate PRC table found in input");
              break;
            }

LABEL_55:
            if (!v56)
            {
              *(a1 + 3952) = v54;
              *(a1 + 3956) = v55;
              sub_100010644(a1, v57, (a1 + 2520), (a1 + 2616));
              sub_100010644(a1, v41[3], (a1 + 2720), (a1 + 2816));
              sub_100010644(a1, v41[4], (a1 + 2620), (a1 + 2716));
              v51 = *(a1 + 2512) | (1 << v41[5]);
              *(a1 + 2512) = v51;
              if (v51 == 3)
              {
                v52 = 2;
              }

              else
              {
                v52 = 1;
              }

              *(a1 + 2820) = v52;
              v39 = v41[5];
            }

            if (v39 >= 2)
            {
              printf("e: unexpected value for polarity %d\n", v39);
              break;
            }

            *v41 = *(v49 + 8 * v56);
            *(v49 + 8 * v56) = v41;
            v53 = *(a1 + 3960) + 1;
            *(a1 + 3960) = v53;
            if (v53 != *(a1 + 2616) * *(a1 + 3952) * *(a1 + 2716) * *(a1 + 2816) * *(a1 + 2820))
            {
              return 1;
            }

            return sub_1000106F4(a1, v5 != 0);
          }
        }
      }

      free(v41);
      return 0;
    }

    v19 = "e: out of memory for PRC table";
LABEL_19:
    puts(v19);
  }

  return 0;
}

uint64_t sub_100028F04(uint64_t result, unsigned int a2, _BYTE *a3)
{
  memset(v34, 0, sizeof(v34));
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28[0] = 1;
  v4 = *(result + 3944);
  if (v4 > 1)
  {
    v5 = result;
    v6 = *(result + 3936);
    v7 = *v6;
    *(result + 3936) = v6 + 1;
    *(result + 3944) = v4 - 2;
    result = printf("i: Processing BLTS format version %d data version %d\n", HIWORD(a2), v7);
    v8 = *(v5 + 3944);
    if (v8 > 3)
    {
      v9 = *(v5 + 3936);
      v28[1] = *v9;
      *(v5 + 3936) = v9 + 1;
      *(v5 + 3944) = v8 - 4;
      if (v8 - 4 > 3)
      {
        v28[2] = v9[1];
        *(v5 + 3936) = v9 + 2;
        *(v5 + 3944) = v8 - 8;
        if (v8 - 8 > 3)
        {
          v28[3] = v9[2];
          *(v5 + 3936) = v9 + 3;
          v10 = v8 - 12;
          *(v5 + 3944) = v8 - 12;
          if (v8 - 12 >= 0x21)
          {
            v11 = 0;
            v12 = v8 - 15;
            v13 = 4;
            v14 = v8 - 15;
            while (3 * (v10 / 3) != v11)
            {
              result = *(v9 + v11 + 12) | (*(v9 + v11 + 14) << 16);
              *(v5 + 3936) = v9 + v11 + 15;
              *(v5 + 3944) = v14;
              v28[v13] = result;
              v14 -= 3;
              v11 += 3;
              ++v13;
              if (v11 == 33)
              {
                if (v8 - 45 >= 0x16)
                {
                  v15 = v8 - 47;
                  v16 = (v10 - 33) >> 1;
                  v17 = 60;
                  while (v16)
                  {
                    v18 = *(v9 + v11 + 12);
                    *(v5 + 3936) = v9 + v11 + 14;
                    *(v28 + v17) = v18;
                    *(v5 + 3944) = v15;
                    v15 -= 2;
                    v11 += 2;
                    --v16;
                    v17 += 2;
                    if (v17 == 82)
                    {
                      v19 = v10 - v11;
                      if (v10 - v11 >= 0x1E)
                      {
                        v20 = v12 - v11;
                        v21 = v9 + v11 + 15;
                        v22 = 21;
                        v23 = v19 / 3uLL;
                        while (v23)
                        {
                          v24 = *(v21 - 3) | (*(v21 - 1) << 16);
                          *(v5 + 3936) = v21;
                          v28[v22] = v24;
                          *(v5 + 3944) = v20;
                          v21 += 3;
                          v20 -= 3;
                          --v23;
                          if (++v22 == 31)
                          {
                            v25 = (*v5)(68, v28, 124, 0, 0, *(v5 + 16));
                            v26 = v25;
                            if (v25)
                            {
                              v27 = "i: set BLTS data succeeded";
                            }

                            else
                            {
                              v27 = "e: set BLTS data failed";
                            }

                            result = puts(v27);
                            goto LABEL_22;
                          }
                        }
                      }

                      goto LABEL_21;
                    }
                  }
                }

                break;
              }
            }
          }
        }
      }
    }
  }

LABEL_21:
  v26 = 0;
LABEL_22:
  *a3 = v26;
  return result;
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

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}