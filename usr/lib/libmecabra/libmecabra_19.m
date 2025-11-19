uint64_t sub_2992AF780(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      *v5 = 0;
      result = *a3;
      *a3 = v6;
      if (result)
      {
        result = (*(*result + 16))(result);
      }

      ++v5;
      ++a3;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t *sub_2992AF804(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  *a1 = *a2;
  result = a1 + 1;
  for (i = a2; ; *result++ = *i)
  {
    *i++ = v3;
    if (i == a3)
    {
      break;
    }

    if (result == a2)
    {
      a2 = i;
    }

    v3 = *result;
  }

  if (result != a2)
  {
    v6 = result;
    v7 = a2;
    while (1)
    {
      v8 = v6;
      while (1)
      {
        v9 = *v6;
        *v8++ = *v7;
        *v7++ = v9;
        if (v7 != a3)
        {
          break;
        }

        v6 = v8;
        v7 = a2;
        if (v8 == a2)
        {
          return result;
        }
      }

      if (v8 == a2)
      {
        a2 = v7;
      }

      ++v6;
    }
  }

  return result;
}

uint64_t sub_2992AF88C(uint64_t a1, uint64_t a2)
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

uint64_t sub_2992AF924(uint64_t result, uint64_t *a2, unint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 >= 2)
  {
    v6 = result;
    if (a3 == 2)
    {
      v7 = *(a2 - 1);
      v8 = *result;
      if (*(v7 + 8) < *(*result + 8))
      {
        *result = v7;
        *(a2 - 1) = v8;
      }
    }

    else
    {
      v9 = a3;
      if (a3 <= 0)
      {
        if (result != a2)
        {
          v15 = (result + 8);
          if ((result + 8) != a2)
          {
            v16 = 0;
            v17 = result;
            do
            {
              v18 = *v17;
              v17 = v15;
              v19 = *v15;
              if (*(*v15 + 8) < *(v18 + 8))
              {
                v20 = 0;
                *v15 = 0;
                for (i = v16; ; i -= 8)
                {
                  v22 = (v6 + i);
                  *v22 = 0;
                  v22[1] = v18;
                  if (v20)
                  {
                    (*(*v20 + 16))(v20);
                  }

                  if (!i)
                  {
                    break;
                  }

                  v23 = (v6 + i);
                  v18 = *(v6 + i - 8);
                  if (*(v19 + 8) >= *(v18 + 8))
                  {
                    goto LABEL_22;
                  }

                  v20 = *v22;
                }

                v23 = v6;
LABEL_22:
                result = *v23;
                *v23 = v19;
                if (result)
                {
                  result = (*(*result + 16))(result);
                }
              }

              v15 = v17 + 1;
              v16 += 8;
            }

            while (v17 + 1 != a2);
          }
        }
      }

      else
      {
        v11 = a4;
        v12 = a3 >> 1;
        v13 = result + 8 * (a3 >> 1);
        v14 = a3 >> 1;
        if (v9 <= a5)
        {
          sub_2992AFCFC(result, v13, v14, a4);
          v24 = &v11[v12];
          result = sub_2992AFCFC(&v6[v9 >> 1], a2, v9 - (v9 >> 1), v24);
          v25 = &v11[v9];
          v26 = v24;
          v27 = v11;
          while (v26 != v25)
          {
            v28 = *v26;
            v29 = *v27;
            if (*(*v26 + 8) >= *(*v27 + 8))
            {
              *v27 = 0;
              result = *v6;
              *v6 = v29;
              if (result)
              {
                result = (*(*result + 16))(result);
              }

              ++v27;
            }

            else
            {
              *v26 = 0;
              result = *v6;
              *v6 = v28;
              if (result)
              {
                result = (*(*result + 16))(result);
              }

              ++v26;
            }

            ++v6;
            if (v27 == v24)
            {
              while (v26 != v25)
              {
                v31 = *v26;
                *v26 = 0;
                result = *v6;
                *v6 = v31;
                if (result)
                {
                  result = (*(*result + 16))(result);
                }

                ++v26;
                ++v6;
              }

              goto LABEL_46;
            }
          }

          while (v27 != v24)
          {
            v30 = *v27;
            *v27 = 0;
            result = *v6;
            *v6 = v30;
            if (result)
            {
              result = (*(*result + 16))(result);
            }

            ++v27;
            ++v6;
          }

LABEL_46:
          if (v11)
          {
            do
            {
              result = *v11;
              *v11 = 0;
              if (result)
              {
                result = (*(*result + 16))(result);
              }

              ++v11;
              --v9;
            }

            while (v9);
          }
        }

        else
        {
          sub_2992AF924(result, v13, v14, a4, a5);
          sub_2992AF924(&v6[v9 >> 1], a2, v9 - (v9 >> 1), v11, a5);

          return sub_2992AFF3C(v6, &v6[v9 >> 1], a2, v9 >> 1, v9 - (v9 >> 1), v11, a5);
        }
      }
    }
  }

  return result;
}

void sub_2992AFCB0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    do
    {
      v4 = *v1;
      *v1 = 0;
      if (v4)
      {
        (*(*v4 + 16))(v4);
      }

      ++v1;
      --v2;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992AFCFC(uint64_t result, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    v4 = a4;
    v6 = result;
    if (a3 == 1)
    {
LABEL_11:
      v13 = *v6;
      *v6 = 0;
      *v4 = v13;
      return result;
    }

    if (a3 == 2)
    {
      v8 = *(a2 - 8);
      v9 = *(v8 + 8);
      v10 = *(*result + 8);
      v11 = v9 < v10;
      if (v9 >= v10)
      {
        v12 = result;
      }

      else
      {
        v12 = (a2 - 8);
      }

      if (!v11)
      {
        v8 = *result;
      }

      *v12 = 0;
      *a4 = v8;
      v4 = a4 + 1;
      if (!v11)
      {
        v6 = a2 - 8;
      }

      goto LABEL_11;
    }

    if (a3 > 8)
    {
      v27 = result + 8 * (a3 >> 1);
      sub_2992AF924(result, v27, a3 >> 1, a4, a3 >> 1);
      result = sub_2992AF924(v6 + 8 * (a3 >> 1), a2, a3 - (a3 >> 1), &v4[a3 >> 1], a3 - (a3 >> 1));
      v28 = v6 + 8 * (a3 >> 1);
      while (v28 != a2)
      {
        v29 = *v28;
        v30 = *v6;
        if (*(*v28 + 8) >= *(*v6 + 8))
        {
          *v6 = 0;
          v6 += 8;
          v29 = v30;
        }

        else
        {
          *v28 = 0;
          v28 += 8;
        }

        *v4++ = v29;
        if (v6 == v27)
        {
          while (v28 != a2)
          {
            v32 = *v28;
            *v28 = 0;
            v28 += 8;
            *v4++ = v32;
          }

          return result;
        }
      }

      while (v6 != v27)
      {
        v31 = *v6;
        *v6 = 0;
        v6 += 8;
        *v4++ = v31;
      }
    }

    else if (result != a2)
    {
      v14 = *result;
      *result = 0;
      v15 = result + 8;
      *a4 = v14;
      if (result + 8 != a2)
      {
        v16 = 0;
        v17 = a4;
        do
        {
          v18 = v17;
          v20 = *v17++;
          v19 = v20;
          v21 = *v15;
          if (*(*v15 + 8) >= *(v20 + 8))
          {
            *v15 = 0;
            *v17 = v21;
          }

          else
          {
            *v18 = 0;
            v18[1] = v19;
            v22 = v4;
            if (v18 != v4)
            {
              v23 = v16;
              while (1)
              {
                v22 = (v4 + v23);
                v24 = *(v4 + v23 - 8);
                if (*(*v15 + 8) >= *(v24 + 8))
                {
                  break;
                }

                v25 = *v22;
                *(v22 - 1) = 0;
                *v22 = v24;
                if (v25)
                {
                  (*(*v25 + 16))(v25);
                }

                v23 -= 8;
                if (!v23)
                {
                  v22 = v4;
                  break;
                }
              }
            }

            v26 = *v15;
            *v15 = 0;
            result = *v22;
            *v22 = v26;
            if (result)
            {
              result = (*(*result + 16))(result);
            }
          }

          v15 += 8;
          v16 += 8;
        }

        while (v15 != a2);
      }
    }
  }

  return result;
}

uint64_t sub_2992AFF3C(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  if (a5)
  {
    v8 = a5;
    v10 = a2;
    v11 = result;
    while (a4 > a7 && v8 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v12 = 0;
      v13 = -a4;
      while (1)
      {
        v14 = v11[v12 / 8];
        if (*(*v10 + 8) < *(v14 + 8))
        {
          break;
        }

        v12 += 8;
        if (__CFADD__(v13++, 1))
        {
          return result;
        }
      }

      v16 = -v13;
      v67 = &v11[v12 / 8];
      v68 = a6;
      if (-v13 >= v8)
      {
        if (v13 == -1)
        {
          v11[v12 / 8] = *v10;
          *v10 = v14;
          return result;
        }

        v25 = v16 / 2;
        v26 = &v11[v16 / 2];
        v18 = v10;
        if (v10 != a3)
        {
          v27 = a3 - v10;
          v18 = v10;
          do
          {
            v28 = v27 >> 1;
            v29 = &v18[v27 >> 1];
            v31 = *v29;
            v30 = v29 + 1;
            v27 += ~(v27 >> 1);
            if (*(v31 + 8) < *(v26[v12 / 8] + 8))
            {
              v18 = v30;
            }

            else
            {
              v27 = v28;
            }
          }

          while (v27);
        }

        v17 = v18 - v10;
        v19 = &v26[v12 / 8];
      }

      else
      {
        v17 = v8 / 2;
        v18 = &v10[v8 / 2];
        v19 = v10;
        if (v10 - v11 != v12)
        {
          v20 = (v10 - v11 - v12) >> 3;
          v19 = &v11[v12 / 8];
          do
          {
            v21 = v20 >> 1;
            v22 = &v19[v20 >> 1];
            v24 = *v22;
            v23 = v22 + 1;
            v20 += ~(v20 >> 1);
            if (*(*v18 + 8) < *(v24 + 8))
            {
              v20 = v21;
            }

            else
            {
              v19 = v23;
            }
          }

          while (v20);
        }

        v25 = (v19 - v11 - v12) >> 3;
      }

      v32 = v18;
      if (v19 != v10)
      {
        v32 = v19;
        if (v10 != v18)
        {
          v33 = v10;
          v34 = a3;
          v35 = a7;
          v36 = v17;
          v37 = v25;
          v38 = sub_2992AF804(v19, v33, v18);
          v25 = v37;
          v17 = v36;
          a7 = v35;
          a3 = v34;
          v32 = v38;
        }
      }

      a4 = -(v25 + v13);
      v39 = v8 - v17;
      if (v25 + v17 >= v8 - (v25 + v17) - v13)
      {
        v44 = v25;
        v45 = -(v25 + v13);
        v46 = v17;
        v43 = a7;
        result = sub_2992AFF3C(v32, v18, a3, v45, v8 - v17, v68);
        v18 = v19;
        a6 = v68;
        v39 = v46;
        a4 = v44;
        a3 = v32;
        v11 = v67;
      }

      else
      {
        v40 = &v11[v12 / 8];
        v41 = v19;
        v42 = a3;
        a6 = v68;
        v43 = a7;
        result = sub_2992AFF3C(v40, v41, v32, v25, v17, v68);
        a3 = v42;
        v11 = v32;
      }

      v8 = v39;
      v10 = v18;
      a7 = v43;
      if (!v39)
      {
        return result;
      }
    }

    if (a4 > v8)
    {
      if (v10 == a3)
      {
        return result;
      }

      v47 = 0;
      v48 = 0;
      do
      {
        v49 = v10[v47];
        v10[v47] = 0;
        a6[v47] = v49;
        ++v48;
        ++v47;
      }

      while (&v10[v47] != a3);
      v50 = &a6[v47];
      while (1)
      {
        if (v10 == v11)
        {
          if (v50 != a6)
          {
            v64 = 0x1FFFFFFFFFFFFFFFLL;
            do
            {
              v65 = *--v50;
              *v50 = 0;
              result = a3[v64];
              a3[v64] = v65;
              if (result)
              {
                v66 = a3;
                result = (*(*result + 16))(result);
                a3 = v66;
              }

              --v64;
            }

            while (v50 != a6);
          }

          goto LABEL_70;
        }

        v52 = v10 - 1;
        v51 = *(v10 - 1);
        v53 = *(v50 - 1);
        --a3;
        if (*(v53 + 8) < *(v51 + 8))
        {
          break;
        }

        *(v50 - 1) = 0;
        result = *a3;
        *a3 = v53;
        v52 = v10;
        --v50;
        if (result)
        {
          goto LABEL_45;
        }

LABEL_46:
        v10 = v52;
        if (v50 == a6)
        {
          goto LABEL_70;
        }
      }

      *v52 = 0;
      result = *a3;
      *a3 = v51;
      if (!result)
      {
        goto LABEL_46;
      }

LABEL_45:
      v54 = a3;
      result = (*(*result + 16))(result);
      a3 = v54;
      goto LABEL_46;
    }

    if (v10 != v11)
    {
      v48 = 0;
      v55 = a6;
      v56 = v11;
      do
      {
        v57 = *v56;
        *v56++ = 0;
        *v55++ = v57;
        ++v48;
      }

      while (v56 != v10);
      v58 = v11;
      v59 = a6;
      do
      {
        if (v10 == a3)
        {
          result = sub_2992AF780(v59, v55, v58);
          break;
        }

        v60 = *v10;
        v61 = *v59;
        if (*(*v10 + 8) >= *(*v59 + 8))
        {
          *v59 = 0;
          result = *v11;
          *v11 = v61;
          if (result)
          {
            v63 = a3;
            result = (*(*result + 16))(result);
            a3 = v63;
          }

          v59 += 8;
        }

        else
        {
          *v10 = 0;
          result = *v11;
          *v11 = v60;
          if (result)
          {
            v62 = a3;
            result = (*(*result + 16))(result);
            a3 = v62;
          }

          ++v10;
        }

        ++v11;
        ++v58;
      }

      while (v55 != v59);
LABEL_70:
      if (a6)
      {
        do
        {
          result = *a6;
          *a6 = 0;
          if (result)
          {
            result = (*(*result + 16))(result, a2, a3);
          }

          ++a6;
          --v48;
        }

        while (v48);
      }
    }
  }

  return result;
}

void sub_2992B0424(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = ((v1 - 8) >> 3) + 1;
    do
    {
      v5 = *v2;
      *v2 = 0;
      if (v5)
      {
        (*(*v5 + 16))(v5);
      }

      ++v2;
      --v4;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992B047C(uint64_t a1)
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

uint64_t sub_2992B05A0(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6B0A0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_2992B0674(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = *a2 - 74;
  v4 = v3 > 6;
  v5 = (1 << v3) & 0x45;
  if (v4 || v5 == 0)
  {
    return 0;
  }

  return *a3 == 88 || *a3 == 67;
}

uint64_t sub_2992B06B8(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6B120))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_2992B078C(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v3 = *a2 - 66;
  v4 = v3 > 0x16;
  v5 = (1 << v3) & 0x404801;
  return !v4 && v5 != 0 && *a3 == 67;
}

uint64_t sub_2992B07CC(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6B1A0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992B08B8(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6B230))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992B0904(uint64_t a1)
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

void *sub_2992B0984(void *result, char a2)
{
  result[1] = 0;
  *result = 0;
  if ((a2 & 1) == 0)
  {
    operator new();
  }

  return result;
}

void sub_2992B0A08(_Unwind_Exception *a1)
{
  sub_2992B0C70(v2, 0);
  v4 = *v1;
  *v1 = 0;
  if (v4)
  {
    MEMORY[0x29C29BFB0](v4, 0x1010C40E4C6A875);
  }

  _Unwind_Resume(a1);
}

void sub_2992B0A40(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_2992B0AB4(_Unwind_Exception *a1)
{
  sub_2992B0C70(v1 + 1, 0);
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    MEMORY[0x29C29BFB0](v3, 0x1010C40E4C6A875);
  }

  _Unwind_Resume(a1);
}

void sub_2992B0AEC(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_2992B0B70(_Unwind_Exception *a1)
{
  sub_2992B0C70(v1 + 1, 0);
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    MEMORY[0x29C29BFB0](v3, 0x1010C40E4C6A875);
  }

  _Unwind_Resume(a1);
}

void **sub_2992B0BA8(void ***a1, void ***a2)
{
  sub_2992B0C70(a1 + 1, 0);
  result = *a1;
  *a1 = 0;
  if (result)
  {
    result = MEMORY[0x29C29BFB0](result, 0x1010C40E4C6A875);
  }

  v5 = *a2;
  if (*a2)
  {
    *a2 = 0;
    result = *a1;
    *a1 = v5;
    if (result)
    {

      JUMPOUT(0x29C29BFB0);
    }
  }

  else
  {
    v6 = a2[1];
    if (v6)
    {
      a2[1] = 0;

      return sub_2992B0C70(a1 + 1, v6);
    }
  }

  return result;
}

void **sub_2992B0C70(void ***a1, void **a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_2992A5BE8(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t sub_2992B0CBC(void ***a1, void *a2)
{
  sub_2992B0C70(a1 + 1, 0);
  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    MEMORY[0x29C29BFB0](v4, 0x1010C40E4C6A875);
  }

  if (*a2)
  {
    operator new();
  }

  result = a2[1];
  if (result)
  {
    sub_2992B0DCC();
  }

  return result;
}

void sub_2992B0E40(_OWORD *a1)
{
  *a1 = 0u;
  a1[1] = 0u;
  operator new();
}

uint64_t sub_2992B0F2C()
{
  if ((atomic_load_explicit(&qword_2A1461E50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461E50))
  {
    operator new();
  }

  return qword_2A1461E48;
}

void sub_2992B0FA4(_Unwind_Exception *a1)
{
  MEMORY[0x29C29BFB0](v1, 0x20C40DC1BFBCFLL);
  __cxa_guard_abort(&qword_2A1461E50);
  _Unwind_Resume(a1);
}

uint64_t sub_2992B0FF4(uint64_t a1, uint64_t a2, int **a3, unsigned int a4)
{
  v4 = *(**(sub_2992B0F2C() + 8 * (*(*(a2 + 8) + (**a3 & 0xFFFFFFFFFFFFFFFCLL) + 4 * a4 + 4) & 3)) + 32);

  return v4();
}

void sub_2992B1088(uint64_t a1, uint64_t a2, int **a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = (*(a2 + 8) + (**a3 & 0xFFFFFFFFFFFFFFFCLL));
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26[0] = 0;
  v13 = *v12;
  if (v13)
  {
    (*(a7 + 16))(a7, v13, a4, v26);
    v14 = *(v24 + 24);
  }

  else
  {
    v14 = 0;
  }

  if (a5 - 1 >= a4 && (v14 & 1) == 0)
  {
    v15 = sub_2992B0F2C();
    if ((v24[3] & 1) == 0)
    {
      v16 = v15;
      v17 = 0;
      do
      {
        (*(**(v16 + 8 * (v12[v17 + 1] & 3)) + 32))(&v21);
        if (a6)
        {
          *(a6 + a4) = v17;
        }

        v20[0] = MEMORY[0x29EDCA5F8];
        v20[1] = 0x40000000;
        v20[2] = sub_2992B12CC;
        v20[3] = &unk_29EF10218;
        v20[4] = a7;
        v20[5] = &v23;
        v18 = *(v16 + 8 * (*v21 & 3));
        (*(*v18 + 24))(v18, a2, &v21, a4 + 1, a5, a6, v20);
        sub_2992A5BA0(&v22);
        v19 = v21;
        v21 = 0;
        if (v19)
        {
          MEMORY[0x29C29BFB0](v19, 0x1010C40E4C6A875);
        }

        if (v17 > 0xFE)
        {
          break;
        }

        ++v17;
      }

      while ((v24[3] & 1) == 0);
    }
  }

  _Block_object_dispose(&v23, 8);
}

void sub_2992B129C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2992B12CC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 40) + 8);
  result = (*(*(a1 + 32) + 16))();
  *a4 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t sub_2992B1334@<X0>(uint64_t a1@<X1>, int **a2@<X2>, unsigned int a3@<W3>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 8) + (**a2 & 0xFFFFFFFFFFFFFFFCLL);
  v5 = a3 >> 5;
  if ((*(v4 + 4 + 4 * v5) >> a3))
  {
    v7 = a3 & 0x1F;
    v8 = sub_2992B0F2C();
    if (a3 >= 0x20)
    {
      v10 = 0;
      v12 = (v4 + 4);
      v13 = v5;
      do
      {
        v14 = *v12++;
        v9 = vcnt_s8(v14);
        v9.i16[0] = vaddlv_u8(v9);
        v10 += v9.i32[0];
        --v13;
      }

      while (v13);
    }

    else
    {
      v10 = 0;
    }

    v9.i32[0] = *(v4 + 4 + 4 * v5) & ~(-1 << v7);
    v15 = vcnt_s8(v9);
    v15.i16[0] = vaddlv_u8(v15);
    v16 = *(**(v8 + 8 * (*(v4 + 40 + 4 * (v15.i32[0] + v10)) & 3)) + 32);

    return v16();
  }

  else
  {

    return sub_2992A5EAC(a4);
  }
}

void sub_2992B1478(uint64_t a1, uint64_t a2, int **a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = (*(a2 + 8) + (**a3 & 0xFFFFFFFFFFFFFFFCLL));
  v31 = 0;
  v32 = &v31;
  v33 = 0x2000000000;
  v34[0] = 0;
  v13 = *v12;
  if (v13)
  {
    (*(a7 + 16))(a7, v13, a4, v34);
    v14 = *(v32 + 24);
  }

  else
  {
    v14 = 0;
  }

  if (a5 - 1 >= a4 && (v14 & 1) == 0)
  {
    v15 = sub_2992B0F2C();
    v17 = v32;
    if ((v32[3] & 1) == 0)
    {
      v18 = v15;
      v19 = 0;
      do
      {
        v20 = v12[(v19 >> 5) + 1];
        if ((v20 >> v19))
        {
          if (v19 >= 0x20)
          {
            v21 = 0;
            v22 = v19 >> 5;
            v23 = v12 + 1;
            do
            {
              v24 = *v23++;
              v16 = vcnt_s8(v24);
              v16.i16[0] = vaddlv_u8(v16);
              v21 += v16.i32[0];
              --v22;
            }

            while (v22);
          }

          else
          {
            v21 = 0;
          }

          v16.i32[0] = v20 & ~(-1 << (v19 & 0x1F));
          v25 = vcnt_s8(v16);
          v25.i16[0] = vaddlv_u8(v25);
          (*(**(v18 + 8 * (v12[v21 + v25.i32[0] + 10] & 3)) + 32))(&v29);
          if (a6)
          {
            *(a6 + a4) = v19;
          }

          v28[0] = MEMORY[0x29EDCA5F8];
          v28[1] = 0x40000000;
          v28[2] = sub_2992B1730;
          v28[3] = &unk_29EF10240;
          v28[4] = a7;
          v28[5] = &v31;
          v26 = *(v18 + 8 * (*v29 & 3));
          (*(*v26 + 24))(v26, a2, &v29, a4 + 1, a5, a6, v28);
          sub_2992A5BA0(&v30);
          v27 = v29;
          v29 = 0;
          if (v27)
          {
            MEMORY[0x29C29BFB0](v27, 0x1010C40E4C6A875);
          }

          v17 = v32;
        }

        if (v19 > 0xFE)
        {
          break;
        }

        ++v19;
      }

      while ((v17[3] & 1) == 0);
    }
  }

  _Block_object_dispose(&v31, 8);
}

void sub_2992B1700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2992B1730(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 40) + 8);
  result = (*(*(a1 + 32) + 16))();
  *a4 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t sub_2992B1798@<X0>(uint64_t a1@<X1>, int **a2@<X2>, char a3@<W3>, void *a4@<X8>)
{
  v20 = *MEMORY[0x29EDCA608];
  v5 = *a2;
  v6 = *(*a2 + 1);
  if (v6)
  {
    v8 = (*(a1 + 16) + (*v5 & 0xFFFFFFFFFFFFFFFCLL));
    memset(__dst, 0, sizeof(__dst));
    if (v6 <= v8 + 4)
    {
      if (v6 != v8 + 4)
      {
        goto LABEL_7;
      }

      v12 = v8 + 8;
      LOBYTE(__dst[0]) = a3;
      v11 = 1;
    }

    else
    {
      v9 = *v6;
      v10 = *(v5 + 16);
      memcpy(__dst, v6 + 1, v10);
      v11 = v10 + 1;
      *(__dst + v10) = a3;
      if (v10 >= v9)
      {
        v12 = &v6[v9 + 5];
      }

      else
      {
        v12 = v6;
      }
    }

    v15 = &v8[*v8 + 4];
    while (v12 < v15)
    {
      v16 = *v12;
      if (v11 <= v16)
      {
        v17 = memcmp(v12 + 1, __dst, v11);
        if (v17 > 0)
        {
          break;
        }

        if (!v17)
        {
          v18 = *MEMORY[0x29EDCA608];

          sub_2992B0AEC(a4);
        }
      }

      v12 += v16 + 5;
    }
  }

LABEL_7:
  v13 = *MEMORY[0x29EDCA608];

  return sub_2992A5EAC(a4);
}

void sub_2992B1964(uint64_t a1, uint64_t a2, int **a3, unint64_t a4, size_t a5, uint64_t a6, uint64_t a7)
{
  v33 = *MEMORY[0x29EDCA608];
  v7 = *a3;
  v8 = *(*a3 + 1);
  if (v8)
  {
    v31 = 0;
    v14 = (*(a2 + 16) + (*v7 & 0xFFFFFFFFFFFFFFFCLL));
    v15 = (v14 + 1);
    if (v8 == v14 + 1 && (v17 = *v15, v17))
    {
      (*(a7 + 16))(a7, v17, a4, &v31);
      v16 = v31;
    }

    else
    {
      v16 = 0;
    }

    if (a5 - 1 >= a4 && (v16 & 1) == 0)
    {
      v30 = a6;
      memset(__dst, 0, sizeof(__dst));
      v18 = *(*a3 + 1);
      if (v18 <= v15)
      {
        v20 = 0;
        v21 = (v14 + 2);
      }

      else
      {
        v19 = *v18;
        v20 = *(*a3 + 16);
        memcpy(__dst, v18 + 1, v20);
        v21 = v20 <= v19 ? v18 : &v18[v19 + 5];
      }

      for (i = *v14; v21 < &v15[i]; v21 = &v23[v24 + 4])
      {
        v25 = *v21;
        v23 = (v21 + 1);
        v24 = v25;
        v26 = v25 - v20;
        if (v25 >= v20 && (!a5 || v26 <= a5))
        {
          v27 = memcmp(v23, __dst, v20);
          if (v27 > 0)
          {
            break;
          }

          if (!v27)
          {
            v28 = *&v23[v24];
            if (v28)
            {
              if (v30)
              {
                memcpy((v30 + a4), &v23[v20], v26);
                v28 = *&v23[v24];
              }

              (*(a7 + 16))(a7, v28, a4 - v20 + v24, &v31);
              if (v31)
              {
                break;
              }

              i = *v14;
            }
          }
        }
      }
    }
  }

  v29 = *MEMORY[0x29EDCA608];
}

uint64_t sub_2992B1B94(uint64_t a1, uint64_t a2, int **a3)
{
  v3 = *(*a3 + 1);
  v4 = (*(a2 + 16) + (**a3 & 0xFFFFFFFFFFFFFFFCLL) + 4);
  if (v3 == v4)
  {
    return *v4;
  }

  v5 = *v3;
  if (v5 == *(*a3 + 16))
  {
    v4 = &v3[v5 + 1];
    return *v4;
  }

  return 0;
}

uint64_t sub_2992B1FC4(uint64_t a1, unsigned int a2)
{
  *(a1 + 16) = 850045863;
  *a1 = &unk_2A1F6B3E0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  v3 = sub_299277498(a2);
  if (v3)
  {
    *(a1 + 8) = ChineseTokenizerCreate();
    CFRelease(v3);
  }

  return a1;
}

void sub_2992B2068(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_299253084(va, 0);
  std::mutex::~mutex(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_2992B2090(uint64_t a1)
{
  *a1 = &unk_2A1F6B3E0;
  if (*(a1 + 8))
  {
    ChineseTokenizerRelease();
  }

  std::mutex::~mutex((a1 + 16));
  return a1;
}

void sub_2992B20EC(uint64_t a1)
{
  sub_2992B2090(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2992B2124(uint64_t a1)
{
  if (*(a1 + 8))
  {
    std::mutex::lock((a1 + 16));
    v2 = *(a1 + 8);
    ChineseTokenizerSetString();

    std::mutex::unlock((a1 + 16));
  }
}

uint64_t sub_2992B21B4(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return MEMORY[0x2A1C6D2C8]();
  }

  return result;
}

uint64_t sub_2992B21C4(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return MEMORY[0x2A1C6D2D8]();
  }

  return result;
}

uint64_t sub_2992B21D8(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return MEMORY[0x2A1C6D2E8]();
  }

  return result;
}

uint64_t sub_2992B21E8(uint64_t a1, const __CFURL *a2, uint64_t a3)
{
  v6 = sub_299237120();
  *(a1 + 8) = 0;
  *(a1 + 16) = 850045863;
  *a1 = v6;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v7 = 5489;
  *(a1 + 72) = 0;
  v8 = 1;
  v9 = 21;
  *(a1 + 80) = 5489;
  do
  {
    v10 = 1812433253 * (v7 ^ (v7 >> 30));
    v7 = v10 + v8;
    *(a1 + 4 * v9) = v9 + v10 - 20;
    ++v8;
    ++v9;
  }

  while (v9 != 644);
  *(a1 + 2576) = 0;
  *(a1 + 2584) = a3;
  *(a1 + 2592) = sub_299277498(0);
  rep = std::chrono::system_clock::now().__d_.__rep_;
  *__src = rep;
  for (i = 1; i != 624; ++i)
  {
    rep = i + 1812433253 * (rep ^ (rep >> 30));
    *&__src[4 * i] = rep;
  }

  *&__src[2496] = 0;
  memcpy((a1 + 80), __src, 0x9C8uLL);
  sub_299322D58(0, a2, @"emoji_adornment.plist", __p);
  if (v17 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  if (!stat(v13, __src))
  {
    v14 = sub_29927901C(v13);
    sub_299215B18((a1 + 8), v14);
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_2992B2360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_299253084(v16, 0);
  std::mutex::~mutex(v15);
  sub_299215B18(v14, 0);
  _Unwind_Resume(a1);
}

BOOL sub_2992B23AC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v6 = a3[2];
  v7 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - a3[1]) >> 3);
  v8 = (v6 - 40);
  do
  {
    v9 = v7-- < 1;
    if (v9)
    {
      return 0;
    }

    v10 = *v8;
    v8 -= 10;
  }

  while (v10 == 7);
  __src = 0;
  v99 = 0;
  v100 = 0;
  sub_299218E20(&__src, 5uLL);
  v11 = v7 + 1;
  v12 = 5;
  if ((v7 + 1) > 5)
  {
    v12 = v7 + 1;
  }

  v13 = v12 - 5;
  if (v11 < 6)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0;
    v15 = v7 - 4;
    v16 = v3[10];
    v17 = v3[4];
    v18 = (v3[1] + 24);
    do
    {
      v19 = *v16++;
      if (v19 >= (v3[5] - v17) >> 1)
      {
        v20 = 0;
      }

      else
      {
        v20 = *v18;
        if (!v17)
        {
          v20 = 0;
        }
      }

      v14 += v20;
      v18 += 20;
      --v15;
    }

    while (v15);
  }

  if (v13 >= v11)
  {
    v22 = 0;
    v28 = v99;
  }

  else
  {
    v22 = 0;
    if (v11 <= 5)
    {
      v23 = 5;
    }

    else
    {
      v23 = v7 + 1;
    }

    v24 = 40 * v23 - 176;
    v85 = v3;
    do
    {
      v25 = v3[4];
      if (*(v3[10] + 8 * v23 - 40) >= ((v3[5] - v25) >> 1))
      {
        v26 = 0;
      }

      else if (v25)
      {
        v26 = *(v3[1] + v24);
      }

      else
      {
        v26 = 0;
      }

      v27 = v99;
      if (v99 >= v100)
      {
        v29 = __src;
        v30 = v99 - __src;
        v31 = (v99 - __src) >> 1;
        if (v31 <= -2)
        {
          sub_299212A8C();
        }

        if (v100 - __src <= v31 + 1)
        {
          v32 = v31 + 1;
        }

        else
        {
          v32 = v100 - __src;
        }

        v33 = 0x7FFFFFFFFFFFFFFFLL;
        if (v100 - __src < 0x7FFFFFFFFFFFFFFELL)
        {
          v33 = v32;
        }

        if (v33)
        {
          sub_299212A48(&__src, v33);
        }

        *(2 * v31) = v26;
        v28 = (2 * v31 + 2);
        memcpy(0, v29, v30);
        v34 = __src;
        __src = 0;
        v99 = v28;
        v100 = 0;
        if (v34)
        {
          operator delete(v34);
        }

        v3 = v85;
      }

      else
      {
        *v99 = v26;
        v28 = v27 + 1;
      }

      ++v23;
      v99 = v28;
      v22 += v26;
      v24 += 40;
    }

    while (v23 - 6 < v7);
  }

  v86 = v3[4];
  if (v86)
  {
    v35 = v22;
  }

  else
  {
    v35 = 0;
  }

  v83 = v35;
  v94 = 0;
  v95 = &v94;
  v96 = 0x2000000000;
  v97 = 0;
  v88[0] = MEMORY[0x29EDCA5F8];
  v88[1] = 0x40000000;
  v89 = sub_2992B2B54;
  v90 = &unk_29EF10268;
  v92 = a1;
  v93 = a2;
  v91 = &v94;
  if (!*(a1 + 8))
  {
    goto LABEL_116;
  }

  v36 = __src;
  if (__src == v28)
  {
    goto LABEL_116;
  }

  v77 = 0;
  v37 = v35;
  v79 = v86 + 2 * v14;
  alloc = *MEMORY[0x29EDB8ED8];
  while (1)
  {
    v38 = *v36;
    v39 = v86 ? v37 : 0;
    v40 = CFStringCreateWithCharacters(0, (v79 + 2 * (v83 - v37)), v39);
    v101[0] = v40;
    MutableCopy = CFStringCreateMutableCopy(alloc, v39, v40);
    v102 = MutableCopy;
    CFStringLowercase(MutableCopy, *(a1 + 2592));
    Value = CFDictionaryGetValue(*(a1 + 8), MutableCopy);
    v43 = Value;
    if (!Value)
    {
      goto LABEL_59;
    }

    v44 = CFGetTypeID(Value);
    if (v44 != CFDictionaryGetTypeID())
    {
      goto LABEL_59;
    }

    v45 = CFDictionaryGetValue(v43, @"emojis");
    v46 = v45;
    if (!v45)
    {
      goto LABEL_60;
    }

    v47 = CFGetTypeID(v45);
    if (v47 == CFArrayGetTypeID())
    {
      v48 = CFDictionaryGetValue(v43, @"shuffle");
      v49 = v48;
      if (v48)
      {
        v50 = CFGetTypeID(v48);
        if (v50 == CFBooleanGetTypeID())
        {
          v77 = CFBooleanGetValue(v49) != 0;
        }
      }
    }

    else
    {
LABEL_59:
      v46 = 0;
    }

LABEL_60:
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (v40)
    {
      CFRelease(v40);
    }

    if (v46)
    {
      break;
    }

    v37 -= v38;
    if (++v36 == v28)
    {
      goto LABEL_116;
    }
  }

  Count = CFArrayGetCount(v46);
  v52 = CFArrayCreateMutableCopy(alloc, Count, v46);
  v102 = v52;
  if (v77)
  {
    std::mutex::lock((a1 + 16));
    if (Count >= 1)
    {
      v53 = Count;
      v78 = Count;
      v80 = v52;
      while (1)
      {
        alloca = (v53 - 1);
        if (v53 != 1)
        {
          break;
        }

        v64 = 0;
LABEL_105:
        v52 = v80;
        CFArrayExchangeValuesAtIndices(v80, alloca, v64);
        v9 = v53 > 1;
        v53 = alloca;
        Count = v78;
        if (!v9)
        {
          goto LABEL_106;
        }
      }

      v54 = __clz(v53);
      v55 = 63;
      if (((v53 << v54) & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v55 = 64;
      }

      v56 = v55 - v54;
      if ((v56 & 0x1F) != 0)
      {
        v57 = (v56 >> 5) + 1;
      }

      else
      {
        v57 = v56 >> 5;
      }

      v58 = v56 / v57;
      if (v58 >= 0x40)
      {
        v59 = 0;
      }

      else
      {
        v59 = (-1 << v58) & 0x100000000;
      }

      if ((v59 ^ 0x100000000) <= v59 / v57)
      {
LABEL_82:
        v60 = v57 - v56 % v57;
        if (v58 >= 0x3F)
        {
          goto LABEL_91;
        }

        v87 = v58 + 1;
        v61 = 0x80000000uLL >> v58 << (v58 + 1);
        if (v58)
        {
          v62 = 0xFFFFFFFF >> -v58;
        }

        else
        {
          v62 = 0;
        }

        if (v58 >= 0x1F)
        {
          v63 = -1;
        }

        else
        {
          v63 = 0xFFFFFFFF >> ~v58;
        }
      }

      else
      {
        v58 = v56 / ++v57;
        if (v58 <= 0x3F)
        {
          v59 = (-1 << (v56 / v57)) & 0x100000000;
          goto LABEL_82;
        }

        v59 = 0;
        v60 = v57 - (v56 % v57);
        v58 = 64;
LABEL_91:
        v61 = 0;
        v63 = -1;
        v62 = 0xFFFFFFFF >> -v58;
        v87 = v58 + 1;
      }

      v84 = v53;
      do
      {
        v65 = v57;
        v64 = 0;
        if (v60)
        {
          for (i = 0; i != v60; ++i)
          {
            do
            {
              v67 = sub_2991D8B18(a1 + 80);
            }

            while (v59 <= v67);
            v68 = v64 << v58;
            if (v58 >= 0x40)
            {
              v68 = 0;
            }

            v64 = v68 + (v67 & v62);
          }
        }

        v69 = v60;
        v57 = v65;
        if (v60 < v65)
        {
          do
          {
            do
            {
              v70 = sub_2991D8B18(a1 + 80);
            }

            while (v61 <= v70);
            v71 = v64 << v87;
            if (v58 >= 0x3F)
            {
              v71 = 0;
            }

            v64 = v71 + (v70 & v63);
            ++v69;
            v57 = v65;
          }

          while (v69 != v65);
        }

        v53 = v84;
      }

      while (v64 >= v84);
      goto LABEL_105;
    }

LABEL_106:
    std::mutex::unlock((a1 + 16));
  }

  if (Count >= 1)
  {
    for (j = 0; j != Count; ++j)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v52, j);
      v74 = ValueAtIndex;
      if (ValueAtIndex)
      {
        v75 = CFGetTypeID(ValueAtIndex);
        if (v75 == CFStringGetTypeID())
        {
          sub_299276BDC(v74, v101);
          v89(v88);
          if (v101[0])
          {
            v101[1] = v101[0];
            operator delete(v101[0]);
          }
        }
      }
    }
  }

  if (v52)
  {
    CFRelease(v52);
  }

LABEL_116:
  v21 = *(v95 + 6) > 0;
  _Block_object_dispose(&v94, 8);
  if (__src)
  {
    v99 = __src;
    operator delete(__src);
  }

  return v21;
}

void sub_2992B2A98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  sub_2992530BC((v28 - 96), 0);
  _Block_object_dispose(&a23, 8);
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2992B2B54(void *a1, uint64_t a2, uint64_t a3)
{
  __p[4] = *MEMORY[0x29EDCA608];
  v6 = a1[5];
  v5 = a1[6];
  v7 = *(*(a1[4] + 8) + 24);
  if ((atomic_load_explicit(&qword_2A1460908, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460908))
  {
    if (**v6)
    {
      v10 = 3;
    }

    else
    {
      v10 = 1;
    }

    dword_2A1460900 = v10;
    __cxa_guard_release(&qword_2A1460908);
  }

  if (a3)
  {
    v14 = 0x20000;
    v13 = 0u;
    v12 = 0u;
    WORD2(v13) = a3;
    v11 = 7;
    sub_2992FE060();
    sub_2992FE060();
    sub_2992B2EE8(__p, 1uLL);
    v8 = *(v6 + 2584);
    operator new();
  }

  ++*(*(a1[4] + 8) + 24);
  v9 = *MEMORY[0x29EDCA608];
}

void sub_2992B2E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  sub_29921F128(&__p);
  if (a13)
  {
    (*(*a13 + 16))(a13);
  }

  _Unwind_Resume(a1);
}

void *sub_2992B2EE8(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_29921E95C(result, a2);
  }

  return result;
}

void sub_2992B2F60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992B2F7C(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x29EDCA608];
  v11 = 0;
  v12[0] = &unk_2A1F6B4C8;
  v12[1] = a4;
  v12[2] = a3;
  v12[3] = v12;
  (*(**(a1 + 8) + 24))(&v10);
  sub_2992B30DC(a1, a2, v12, v10, 1u, 0, 1u, &v11, 0.0, v13, 0, a3, 0, 0, -1, 0, 0);
  v7 = v10;
  v10 = 0;
  if (v7)
  {
    MEMORY[0x29C29BFB0](v7, 0x1000C4052888210);
  }

  result = sub_2992B3BB8(v12);
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2992B30A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if (a10)
  {
    MEMORY[0x29C29BFB0](a10, 0x1000C4052888210);
  }

  sub_2992B3BB8(va);
  _Unwind_Resume(a1);
}

unint64_t sub_2992B30DC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned __int8 a7, _BYTE *a8, float a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17)
{
  v45 = result;
  v18 = a13;
  v17 = a14;
  v20 = a10;
  v19 = a11;
  v53 = *MEMORY[0x29EDCA608];
  v51 = a7;
  if (*a8)
  {
    goto LABEL_31;
  }

  if (((*(**(result + 8) + 32))(*(result + 8), a4) & 1) == 0)
  {
    __assert_rtn("ambiguousDfsTraverse", "AmbiguousTrieAdapter.hpp", 141, "m_trie->isValid(curCursor)");
  }

  if (a5 && (*(*a2 + 24))(a2) != a12)
  {
    goto LABEL_10;
  }

  v50 = 0;
  if ((a7 & 1) == 0)
  {
    result = (*(**(v45 + 8) + 48))(*(v45 + 8), a4, &v50);
    if (!result)
    {
      goto LABEL_9;
    }

    v20 = a10;
    v19 = a11;
    v18 = a13;
    v17 = a14;
  }

  result = sub_2992B36DC(a3, a4, v20, 2 * v19, v18, v17, a12, a8, a9);
LABEL_9:
  if (*a8)
  {
    goto LABEL_31;
  }

LABEL_10:
  result = (*(*a2 + 24))(a2);
  if (result <= a12)
  {
    goto LABEL_31;
  }

  result = (*(*a2 + 16))(a2, a12);
  v24 = result;
  v50 = 0;
  if (!result)
  {
    goto LABEL_31;
  }

  v25 = 0;
  HIDWORD(v40) = a17;
  v26 = a9;
  while (1)
  {
    result = (*(*a2 + 72))(a2, a15, a16, a12, v25);
    if (!result)
    {
      goto LABEL_30;
    }

    v49 = (*(*a2 + 32))(a2, a12, v50) + v26;
    v48 = (*(*a2 + 40))(a2, a12, v50) + a12;
    result = (*(*a2 + 48))(a2, a12, v50);
    v28 = result;
    v29 = v27;
    v30 = v48;
    if (v48 == a12 && (v40 & 0x100000000) != 0)
    {
      goto LABEL_30;
    }

    if (v27)
    {
      break;
    }

    v38 = v49;
    LOBYTE(v40) = v48 == a12;
    result = sub_2992B30DC(v45, a2, a3, a4, a5, a6, v51, a8, v38, a10, a11, v48, a13, a14, a15, a16, v40);
LABEL_30:
    v25 = v50 + 1;
    v50 = v25;
    if (v25 >= v24)
    {
      goto LABEL_31;
    }
  }

  (*(**(v45 + 8) + 40))(&v47);
  if (!(*(**(v45 + 8) + 32))(*(v45 + 8), v47))
  {
    goto LABEL_23;
  }

  v31 = a11;
  v32 = 2 * a11;
  v33 = v29;
  do
  {
    v34 = *v28++;
    *(a10 + v32) = v34;
    v32 += 2;
    --v33;
  }

  while (v33);
  v35 = v50;
  if (a13)
  {
    *(a13 + 8 * a14) = v50;
    v31 = a11;
  }

  v36 = v49;
  LOBYTE(v40) = v30 == a12;
  sub_2992B30DC(v45, a2, a3, v47, a5, a6, v51, a8, v36, a10, v31 + v29, v48, a13, a14 + 1, a12, v35, v40);
  if ((*a8 & 1) == 0)
  {
LABEL_23:
    result = v47;
    v47 = 0;
    if (result)
    {
      result = MEMORY[0x29C29BFB0](result, 0x1000C4052888210);
    }

    if (a6)
    {
      v37 = v48;
      result = (*(*a2 + 24))(a2);
      if (v37 == result)
      {
        result = (*(*a2 + 56))(a2, a12, v50);
        if (result)
        {
          v52 = 0;
          operator new();
        }
      }
    }

    goto LABEL_30;
  }

  result = v47;
  v47 = 0;
  if (result)
  {
    result = MEMORY[0x29C29BFB0](result, 0x1000C4052888210);
  }

LABEL_31:
  v39 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2992B36DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9)
{
  v16 = a9;
  v14 = a4;
  v15 = a3;
  v12 = a6;
  v13 = a5;
  v11 = a7;
  v9 = *(a1 + 24);
  if (!v9)
  {
    sub_2991A2240();
  }

  return (*(*v9 + 48))(v9, a2, &v16, &v15, &v14, &v13, &v12, &v11, a8);
}

__n128 sub_2992B37F0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6B448;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  result = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  *(a2 + 88) = *(a1 + 88);
  *(a2 + 72) = v5;
  *(a2 + 56) = v4;
  *(a2 + 40) = result;
  return result;
}

uint64_t sub_2992B385C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6B4A8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992B38A8(uint64_t *a1, __int16 *a2, uint64_t a3, _BYTE *a4)
{
  v9 = *a1;
  v8 = a1[1];
  (*(**(*a1 + 8) + 40))(&v17);
  if (!(*(**(v9 + 8) + 32))(*(v9 + 8), v17))
  {
    goto LABEL_13;
  }

  if (a3)
  {
    v10 = (*a1[2] + 2 * *a1[3]);
    v11 = a3;
    do
    {
      v12 = *a2++;
      *v10++ = v12;
      --v11;
    }

    while (v11);
  }

  v13 = *a1[4];
  if (v13)
  {
    *(v13 + 8 * *a1[5]) = *a1[6];
  }

  v16 = 0;
  if ((*a1[7] & 1) == 0)
  {
    if (!(*(**(v9 + 8) + 48))(*(v9 + 8), v17, &v16))
    {
      goto LABEL_11;
    }

    v13 = *a1[4];
  }

  v14 = *a1[9];
  sub_2992B36DC(a1[8], v17, *a1[2], 2 * (*a1[3] + a3), v13, *a1[5] + 1, *a1[10], a1[11], v14);
LABEL_11:
  if (*a1[11] == 1)
  {
    *a4 = 1;
  }

LABEL_13:
  result = v17;
  v17 = 0;
  if (result)
  {
    return MEMORY[0x29C29BFB0](result, 0x1000C4052888210);
  }

  return result;
}

void sub_2992B3A54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x29C29BFB0](a10, 0x1000C4052888210);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_2992B3AF8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6B4C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_2992B3B28(uint64_t result, uint64_t a2, float *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  if ((*(a2 + 3) & 1) == 0)
  {
    return sub_2992B36DC(*(result + 8), a2, *a4, *a5, 0, 0, *a8 - *(result + 16), a9, *a3);
  }

  return result;
}

uint64_t sub_2992B3B6C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6B538))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992B3BB8(uint64_t a1)
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

uint64_t sub_2992B3C38(uint64_t a1)
{
  *a1 = &unk_2A1F6B558;
  sub_2992B3CF4(a1, 1);
  sub_29921B8CC(a1 + 136, *(a1 + 144));
  if (*(a1 + 104))
  {
    sub_2992912B4((a1 + 104));
    operator delete(*(a1 + 104));
  }

  v3 = (a1 + 80);
  sub_299291260(&v3);
  v3 = (a1 + 56);
  sub_299291260(&v3);
  v3 = (a1 + 32);
  sub_299291260(&v3);
  v3 = (a1 + 8);
  sub_299291260(&v3);
  return a1;
}

void sub_2992B3CF4(uint64_t a1, int a2)
{
  sub_2992912B4((a1 + 8));
  sub_2992912B4((a1 + 32));
  if (a2)
  {
    sub_2992912B4((a1 + 56));
    sub_2992912B4((a1 + 80));
    sub_2992912B4((a1 + 104));
  }

  else
  {
    v4 = *(a1 + 104);
    if (v4 != *(a1 + 112))
    {
      do
      {
        if ((*(**v4 + 64))() == 6)
        {
          ++v4;
          v5 = *(a1 + 112);
        }

        else
        {
          sub_2992B4EF4(&v11, v4 + 1, *(a1 + 112), v4);
          v5 = v6;
          v7 = *(a1 + 112);
          if (v7 != v6)
          {
            do
            {
              v8 = *(v7 - 1);
              if (v8)
              {
                sub_2991A893C(v8);
              }

              --v7;
            }

            while (v7 != v5);
          }

          *(a1 + 112) = v5;
        }
      }

      while (v4 != v5);
    }
  }

  v10 = *(a1 + 144);
  v9 = (a1 + 144);
  sub_29921B8CC((v9 - 1), v10);
  *v9 = 0;
  v9[1] = 0;
  *(v9 - 1) = v9;
}

void sub_2992B3E00(uint64_t a1)
{
  sub_2992B3C38(a1);

  JUMPOUT(0x29C29BFB0);
}

size_t *sub_2992B3E38(size_t *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v7 = (v3 - *result) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_299212A8C();
    }

    v9 = v4 - *result;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v17[4] = v2;
    if (v10)
    {
      sub_2992B4D7C(v10);
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = v2[1] - *v2;
    v14 = v11 - v13;
    memcpy((v11 - v13), *v2, v13);
    v15 = *v2;
    *v2 = v14;
    v2[1] = v6;
    v16 = v2[2];
    v2[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = sub_2992B4DC4(v17);
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  v2[1] = v6;
  return result;
}

uint64_t sub_2992B3F48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  v4 = *(a1 + 112);
  while (1)
  {
    if (v3 == v4)
    {
      operator new();
    }

    if ((*(**v3 + 64))() == 7)
    {
      result = (*(**v3 + 32))();
      if (result == a2)
      {
        break;
      }
    }

    v3 += 16;
  }

  return result;
}

void **sub_2992B4184(void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_299212A8C();
    }

    v10 = v5 - *result;
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

    v18[4] = result;
    if (v11)
    {
      sub_2992B4E24(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_2992B4E6C(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

uint64_t sub_2992B4298(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v11 = *(a1 + 56);
  v10 = *(a1 + 64);
  if (v11 == v10)
  {
LABEL_9:
    v14 = 0;
    if (!a5)
    {
      return v14;
    }
  }

  else
  {
    v12 = -v11;
    while (1)
    {
      v13 = *v11;
      if (*(*(*v11 + 8) + 2) == *(a2 + 2) && (*(*v13 + 40))(*v11) == a3 && *(v13 + 16) == a4 && !*(v13 + 120) && !*(v13 + 128))
      {
        break;
      }

      v11 += 16;
      v10 = *(a1 + 64);
      v12 -= 16;
      if (v11 == v10)
      {
        goto LABEL_9;
      }
    }

    v10 = *(a1 + 64);
    if (a5)
    {
      v14 = 0;
    }

    else
    {
      sub_2992B4EF4(&v27, (16 - v12), *(a1 + 64), -v12);
      v10 = v24;
      v25 = *(a1 + 64);
      if (v25 != v24)
      {
        do
        {
          v26 = *(v25 - 1);
          if (v26)
          {
            sub_2991A893C(v26);
          }

          v25 -= 2;
        }

        while (v25 != v10);
      }

      *(a1 + 64) = v10;
      v14 = 1;
      if (!a5)
      {
        return v14;
      }
    }
  }

  if (v11 == v10)
  {
    v15 = *(a2 + 2);
    v16 = *(a2 + 8);
    v17 = a1 + 8;
    v18 = 8;
    if ((v16 & 2) == 0)
    {
      v18 = 32;
      v17 = a1 + 32;
    }

    v19 = *(a1 + v18);
    v20 = *(v17 + 8);
    while (1)
    {
      if (v19 == v20)
      {
        if ((v16 & 2) != 0)
        {
          v21 = *(a1 + 32);
          v22 = *(a1 + 40);
          while (v21 != v22)
          {
            if (*(**v21 + 40))() == a3 && ((*(**v21 + 104))(*v21, v15))
            {
              return v14;
            }

            v21 += 2;
          }
        }

        operator new();
      }

      if ((*(**v19 + 40))() == a3 && *(*(*v19 + 8) + 2) == v15)
      {
        break;
      }

      v19 += 16;
    }
  }

  return v14;
}

uint64_t sub_2992B4680(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = *(a1 + 104);
  if (v7 == *(a1 + 112))
  {
    v9 = 0;
    v17 = 1;
  }

  else
  {
    v9 = 0;
    while (1)
    {
      if ((*(**v7 + 64))() == 6)
      {
        v10 = sub_2993B0C54(*v7, a2);
        v11 = v10;
        v12 = v10;
        if (v10 && (a5 & 1) == 0)
        {
          sub_2992B4EF4(&v19, (v7 + 16), *(a1 + 112), v7);
          v14 = v13;
          v15 = *(a1 + 112);
          if (v15 != v13)
          {
            do
            {
              v16 = *(v15 - 8);
              if (v16)
              {
                sub_2991A893C(v16);
              }

              v15 -= 16;
            }

            while (v15 != v14);
          }

          *(a1 + 112) = v14;
          v9 = 1;
          v12 = 2;
        }

        if (v11)
        {
          break;
        }
      }

      v7 += 16;
      if (v7 == *(a1 + 112))
      {
        v12 = 2;
        break;
      }
    }

    v17 = v12 == 2;
  }

  result = v17 & v9;
  if (v17)
  {
    if (a5)
    {
      operator new();
    }
  }

  return result;
}

void sub_2992B4824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2991A893C(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992B4850(void *a1)
{
  if (!a1[16])
  {
    v14 = 0;
    sub_29920BF78((a1 + 17), &v14);
    return;
  }

  v2 = a1 + 18;
  sub_29921B8CC((a1 + 17), a1[18]);
  *v2 = 0;
  a1[19] = 0;
  a1[17] = a1 + 18;
  v3 = a1[1];
  if (a1[2] == v3)
  {
    v3 = a1[4];
    if (a1[5] == v3)
    {
      v8 = a1[13];
      v9 = a1[14];
      while (v8 != v9)
      {
        v10 = *(a1 + 64);
        v11 = *v8;
        v8 += 2;
        v12 = v10 - (*(*v11 + 40))(v11) + 1;
        sub_29920BF78((a1 + 17), &v12);
      }

      return;
    }

    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  v5 = a1[v4 + 1];
  while (v3 != v5 && (*(**v3 + 64))() != 2)
  {
    v6 = *(a1 + 64);
    v7 = *v3;
    v3 += 2;
    v13 = v6 - (*(*v7 + 40))(v7) + 1;
    sub_29920BF78((a1 + 17), &v13);
  }
}

uint64_t sub_2992B49BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  while (1)
  {
    if (v1 == v2)
    {
      return 0;
    }

    v3 = *v1;
    if ((*(**v1 + 64))(*v1) == 1 && *(*(v3 + 8) + 2) == 20)
    {
      break;
    }

    v1 += 2;
  }

  return 1;
}

uint64_t sub_2992B4A44(void *a1, _WORD *a2, int a3)
{
  *a2 = 0;
  if (a1[2] == a1[1] && a1[5] == a1[4])
  {
    return 0;
  }

  v4 = 4;
  if (a3)
  {
    v4 = 1;
  }

  v5 = &a1[v4];
  v6 = *v5;
  v7 = v5[1];
  if (*v5 == v7)
  {
    return 0;
  }

  v8 = 0;
  do
  {
    v9 = (*(**v6 + 40))();
    if (v9 > *a2)
    {
      *a2 = v9;
      v8 = *v6;
    }

    v6 += 2;
  }

  while (v6 != v7);
  return v8;
}

uint64_t sub_2992B4B00(void *a1, uint64_t a2, int a3)
{
  v6 = a1[1];
  v7 = a1[2];
  while (v6 != v7)
  {
    v8 = *(*v6 + 16) == 0;
    if (*(*v6 + 16) || sub_2993B2448(a2, *(*v6 + 8), a3))
    {
      return v8;
    }

    v6 += 16;
  }

  v10 = a1[4];
  v9 = a1[5];
  if (v10 == v9)
  {
    return 0;
  }

  while (1)
  {
    if (*(*v10 + 16))
    {
      v11 = 0;
      v12 = 1;
      return v12 & v11;
    }

    if (sub_2993B2448(a2, *(*v10 + 8), a3))
    {
      break;
    }

    v10 += 16;
    if (v10 == v9)
    {
      v12 = 0;
      return v12 & v11;
    }
  }

  v12 = 1;
  v11 = 1;
  return v12 & v11;
}

uint64_t sub_2992B4BD8(void *a1, int a2, char a3)
{
  for (i = a1[1]; i != a1[2]; i += 2)
  {
    v4 = *i;
    if (*(*(*i + 8) + 2) == a2)
    {
      return v4;
    }
  }

  for (j = a1[7]; j != a1[8]; j += 2)
  {
    v4 = *j;
    if (*(*(*j + 8) + 2) == a2)
    {
      return v4;
    }
  }

  if ((a3 & 1) == 0)
  {
    for (k = a1[4]; k != a1[5]; k += 2)
    {
      v4 = *k;
      if (*(*(*k + 8) + 2) == a2)
      {
        return v4;
      }
    }

    for (m = a1[10]; m != a1[11]; m += 2)
    {
      v4 = *m;
      if (*(*(*m + 8) + 2) == a2)
      {
        return v4;
      }
    }
  }

  return 0;
}

uint64_t sub_2992B4C88(void *a1, int a2, int a3, char a4)
{
  v8 = a1[1];
  v9 = a1[2];
  while (v8 != v9)
  {
    if (*(*(*v8 + 8) + 2) == a2 && (*(**v8 + 40))(*v8) == a3)
    {
      return *v8;
    }

    v8 += 2;
  }

  if ((a4 & 1) == 0)
  {
    v8 = a1[4];
    v11 = a1[5];
    while (v8 != v11)
    {
      if (*(*(*v8 + 8) + 2) == a2 && (*(**v8 + 40))(*v8) == a3)
      {
        return *v8;
      }

      v8 += 2;
    }
  }

  return 0;
}

void sub_2992B4D7C(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_2992B4DC4(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      sub_2991A893C(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2992B4E24(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_29919600C();
}

void **sub_2992B4E6C(void **a1)
{
  sub_2992B4EA0(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2992B4EA0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_2991A893C(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

__int128 *sub_2992B4EF4(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        sub_2991A893C(v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_2992B4F80(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1F6B588;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2992B501C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1F6B5D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2992B50B8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1F6B628;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992B5134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 88);
  *(a1 + 8) = a3;
  *(a1 + 16) = v5;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 136) = a4;
  *a1 = &unk_2A1F6B678;
  sub_2992D6368((a1 + 144), a2);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = *(sub_299235724(1u) + 4);
  return a1;
}

void sub_2992B51C4(_Unwind_Exception *a1)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 184) = v5;
    operator delete(v5);
  }

  sub_2992D6C14(v1 + 144);
  sub_2992B51FC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2992B51FC(uint64_t a1)
{
  *a1 = &unk_2A1F653D0;
  v2 = *(a1 + 104);
  if (v2)
  {
    *(a1 + 112) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    *(a1 + 88) = v3;
    operator delete(v3);
  }

  v6 = (a1 + 48);
  sub_2992B6C08(&v6);
  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_2992B5290(uint64_t *a1, uint64_t a2, int a3)
{
  if (a1[6] != a1[7])
  {
    if (*(a2 + 64) == 1 || (v6 = a1[11], v6 != a1[10]) && *(v6 - 4) == 2)
    {
      (*(*a1 + 16))(a1);
    }
  }

  sub_29921FDC8(a1, a2, a3);
}

void sub_2992B5334(void *a1, uint64_t a2)
{
  v4 = a1[23];
  v3 = a1[24];
  if (v4 >= v3)
  {
    v6 = a1[22];
    v7 = v4 - v6;
    v8 = (v4 - v6) >> 3;
    v9 = v8 + 1;
    if ((v8 + 1) >> 61)
    {
      sub_299212A8C();
    }

    v10 = v3 - v6;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_29919600C();
    }

    v12 = (v4 - v6) >> 3;
    v13 = (8 * v8);
    v14 = (8 * v8 - 8 * v12);
    *v13 = a2;
    v5 = v13 + 1;
    memcpy(v14, v6, v7);
    a1[22] = v14;
    a1[23] = v5;
    a1[24] = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = a2;
    v5 = v4 + 8;
  }

  a1[23] = v5;
}

uint64_t sub_2992B542C(int a1, char *__s)
{
  v258 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1460910, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1460910))
  {
    sub_2991C6CA8(__p, "ml");
    v11 = 0;
    sub_2991C6CA8(v12, "mn");
    v13 = 1;
    sub_2991C6CA8(v14, "qw");
    v15 = 2;
    sub_2991C6CA8(v16, "qa");
    v17 = 3;
    sub_2991C6CA8(v18, "wq");
    v19 = 4;
    sub_2991C6CA8(v20, "we");
    v21 = 5;
    sub_2991C6CA8(v22, "wa");
    v23 = 6;
    sub_2991C6CA8(v24, "ws");
    v25 = 7;
    sub_2991C6CA8(v26, "ew");
    v27 = 8;
    sub_2991C6CA8(v28, "er");
    v29 = 9;
    sub_2991C6CA8(v30, "es");
    v31 = 10;
    sub_2991C6CA8(v32, "ed");
    v33 = 11;
    sub_2991C6CA8(v34, "re");
    v35 = 12;
    sub_2991C6CA8(v36, "rt");
    v37 = 13;
    sub_2991C6CA8(v38, "rd");
    v39 = 14;
    sub_2991C6CA8(v40, "rf");
    v41 = 15;
    sub_2991C6CA8(v42, "tr");
    v43 = 16;
    sub_2991C6CA8(v44, "ty");
    v45 = 17;
    sub_2991C6CA8(v46, "tf");
    v47 = 18;
    sub_2991C6CA8(v48, "tg");
    v49 = 19;
    sub_2991C6CA8(v50, "yt");
    v51 = 20;
    sub_2991C6CA8(v52, "yu");
    v53 = 21;
    sub_2991C6CA8(v54, "yg");
    v55 = 22;
    sub_2991C6CA8(v56, "yh");
    v57 = 23;
    sub_2991C6CA8(v58, "uy");
    v59 = 24;
    sub_2991C6CA8(v60, "ui");
    v61 = 25;
    sub_2991C6CA8(v62, "uh");
    v63 = 26;
    sub_2991C6CA8(v64, "uj");
    v65 = 27;
    sub_2991C6CA8(v66, "iu");
    v67 = 28;
    sub_2991C6CA8(v68, "io");
    v69 = 29;
    sub_2991C6CA8(v70, "ij");
    v71 = 30;
    sub_2991C6CA8(v72, "ik");
    v73 = 31;
    sub_2991C6CA8(v74, "oi");
    v75 = 32;
    sub_2991C6CA8(v76, "op");
    v77 = 33;
    sub_2991C6CA8(v78, "ok");
    v79 = 34;
    sub_2991C6CA8(v80, "ol");
    v81 = 35;
    sub_2991C6CA8(v82, "po");
    v83 = 36;
    sub_2991C6CA8(v84, "pl");
    v85 = 37;
    sub_2991C6CA8(v86, "aq");
    v87 = 38;
    sub_2991C6CA8(v88, "aw");
    v89 = 39;
    sub_2991C6CA8(v90, "as");
    v91 = 40;
    sub_2991C6CA8(v92, "az");
    v93 = 41;
    sub_2991C6CA8(v94, "sw");
    v95 = 42;
    sub_2991C6CA8(v96, "se");
    v97 = 43;
    sub_2991C6CA8(v98, "sa");
    v99 = 44;
    sub_2991C6CA8(v100, "sd");
    v101 = 45;
    sub_2991C6CA8(v102, "sz");
    v103 = 46;
    sub_2991C6CA8(v104, "sx");
    v105 = 47;
    sub_2991C6CA8(v106, "de");
    v107 = 48;
    sub_2991C6CA8(v108, "dr");
    v109 = 49;
    sub_2991C6CA8(v110, "ds");
    v111 = 50;
    sub_2991C6CA8(v112, "df");
    v113 = 51;
    sub_2991C6CA8(v114, "dz");
    v115 = 52;
    sub_2991C6CA8(v116, "dx");
    v117 = 53;
    sub_2991C6CA8(v118, "dc");
    v119 = 54;
    sub_2991C6CA8(v120, "fr");
    v121 = 55;
    sub_2991C6CA8(v122, "ft");
    v123 = 56;
    sub_2991C6CA8(v124, "fd");
    v125 = 57;
    sub_2991C6CA8(v126, "fg");
    v127 = 58;
    sub_2991C6CA8(v128, "fx");
    v129 = 59;
    sub_2991C6CA8(v130, "fc");
    v131 = 60;
    sub_2991C6CA8(v132, "fv");
    v133 = 61;
    sub_2991C6CA8(v134, "gt");
    v135 = 62;
    sub_2991C6CA8(v136, "gy");
    v137 = 63;
    sub_2991C6CA8(v138, "gf");
    v139 = 64;
    sub_2991C6CA8(v140, "gh");
    v141 = 65;
    sub_2991C6CA8(v142, "gc");
    v143 = 66;
    sub_2991C6CA8(v144, "gv");
    v145 = 67;
    sub_2991C6CA8(v146, "gb");
    v147 = 68;
    sub_2991C6CA8(v148, "hy");
    v149 = 69;
    sub_2991C6CA8(v150, "hu");
    v151 = 70;
    sub_2991C6CA8(v152, "hg");
    v153 = 71;
    sub_2991C6CA8(v154, "hj");
    v155 = 72;
    sub_2991C6CA8(v156, "hv");
    v157 = 73;
    sub_2991C6CA8(v158, "hb");
    v159 = 74;
    sub_2991C6CA8(v160, "hn");
    v161 = 75;
    sub_2991C6CA8(v162, "ju");
    v163 = 76;
    sub_2991C6CA8(v164, "ji");
    v165 = 77;
    sub_2991C6CA8(v166, "jh");
    v167 = 78;
    sub_2991C6CA8(v168, "jk");
    v169 = 79;
    sub_2991C6CA8(v170, "jb");
    v171 = 80;
    sub_2991C6CA8(v172, "jn");
    v173 = 81;
    sub_2991C6CA8(v174, "jm");
    v175 = 82;
    sub_2991C6CA8(v176, "ki");
    v177 = 83;
    sub_2991C6CA8(v178, "ko");
    v179 = 84;
    sub_2991C6CA8(v180, "kj");
    v181 = 85;
    sub_2991C6CA8(v182, "kl");
    v183 = 86;
    sub_2991C6CA8(v184, "kn");
    v185 = 87;
    sub_2991C6CA8(v186, "km");
    v187 = 88;
    sub_2991C6CA8(v188, "lo");
    v189 = 89;
    sub_2991C6CA8(v190, "lp");
    v191 = 90;
    sub_2991C6CA8(v192, "lk");
    v193 = 91;
    sub_2991C6CA8(v194, "lm");
    v195 = 92;
    sub_2991C6CA8(v196, "za");
    v197 = 93;
    sub_2991C6CA8(v198, "zs");
    v199 = 94;
    sub_2991C6CA8(v200, "zd");
    v201 = 95;
    sub_2991C6CA8(v202, "zx");
    v203 = 96;
    sub_2991C6CA8(v204, "xz");
    v205 = 97;
    sub_2991C6CA8(v206, "xc");
    v207 = 98;
    sub_2991C6CA8(v208, "xs");
    v209 = 99;
    sub_2991C6CA8(v210, "xd");
    v211 = 100;
    sub_2991C6CA8(v212, "xf");
    v213 = 101;
    sub_2991C6CA8(v214, "cx");
    v215 = 102;
    sub_2991C6CA8(v216, "cv");
    v217 = 103;
    sub_2991C6CA8(v218, "cd");
    v219 = 104;
    sub_2991C6CA8(v220, "cf");
    v221 = 105;
    sub_2991C6CA8(v222, "cg");
    v223 = 106;
    sub_2991C6CA8(v224, "vf");
    v225 = 107;
    sub_2991C6CA8(v226, "vg");
    v227 = 108;
    sub_2991C6CA8(v228, "vh");
    v229 = 109;
    sub_2991C6CA8(v230, "vc");
    v231 = 110;
    sub_2991C6CA8(v232, "vb");
    v233 = 111;
    sub_2991C6CA8(v234, "bv");
    v235 = 112;
    sub_2991C6CA8(v236, "bn");
    v237 = 113;
    sub_2991C6CA8(v238, "bg");
    v239 = 114;
    sub_2991C6CA8(v240, "bh");
    v241 = 115;
    sub_2991C6CA8(v242, "bj");
    v243 = 116;
    sub_2991C6CA8(v244, "nb");
    v245 = 117;
    sub_2991C6CA8(v246, "nm");
    v247 = 118;
    sub_2991C6CA8(v248, "nh");
    v249 = 119;
    sub_2991C6CA8(v250, "nj");
    v251 = 120;
    sub_2991C6CA8(v252, "nk");
    v253 = 121;
    sub_2991C6CA8(v254, "mj");
    v255 = 122;
    sub_2991C6CA8(v256, "mk");
    v257 = 123;
    sub_2992B6CC4(qword_2A1460918, __p, 124);
    v8 = 496;
    do
    {
      if (*(&__p[v8 - 1] - 1) < 0)
      {
        operator delete(__p[v8 - 4]);
      }

      v8 -= 4;
    }

    while (v8 * 8);
    __cxa_atexit(sub_2992B66A4, qword_2A1460918, &dword_29918C000);
    __cxa_guard_release(&qword_2A1460910);
  }

  sub_2991C6CA8(__p, __s);
  v3 = sub_29921517C(qword_2A1460918, __p);
  v4 = v3;
  if ((v10 & 0x80000000) == 0)
  {
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_7:
    v5 = -1;
    goto LABEL_8;
  }

  operator delete(__p[0]);
  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_2991C6CA8(__p, __s);
  v5 = *(sub_2992B705C(qword_2A1460918, __p) + 10);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_8:
  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

void sub_2992B6428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  v19 = (v17 + 3959);
  v20 = -3968;
  v21 = v19;
  while (1)
  {
    v22 = *v21;
    v21 -= 32;
    if (v22 < 0)
    {
      operator delete(*(v19 - 23));
    }

    v19 = v21;
    v20 += 32;
    if (!v20)
    {
      __cxa_guard_abort(&qword_2A1460910);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_2992B66A8(void *a1, unsigned __int16 **a2)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = *a2;
    do
    {
      v8 = *v7;
      v7 += 2;
      v6 += strlen((&off_29EF13DA0)[2 * v8]);
    }

    while (v7 != v5);
  }

  v9 = a1[4] - a1[3];
  v10 = v6 - (v9 >> 2);
  if (v10 < 0)
  {
    v10 = (v9 >> 2) - v6;
  }

  if (v10 > 1)
  {
    goto LABEL_9;
  }

  v12 = v9 >> 2;
  if (v6 >= v9 >> 2)
  {
    if (v4 == v5)
    {
LABEL_40:
      v32 = 1;
    }

    else
    {
      v26 = 0;
      while (1)
      {
        v27 = (&off_29EF13DA0)[2 * *v4];
        v28 = strlen(v27);
        v29 = v28;
        if (v28)
        {
          break;
        }

LABEL_39:
        v26 += v29;
        v4 += 2;
        if (v4 == v5)
        {
          goto LABEL_40;
        }
      }

      v30 = v26;
      v31 = v28;
      while (1)
      {
        v2 = v12 == v30;
        if (v12 == v30 || (sub_2992FE6AC(*(a1[22] + 8 * v30), *v27) & 1) == 0)
        {
          break;
        }

        ++v27;
        ++v30;
        if (!--v31)
        {
          goto LABEL_39;
        }
      }

      v32 = 0;
    }

    LOBYTE(v11) = v32 | v2;
  }

  else
  {
    if (v4 == v5)
    {
LABEL_9:
      LOBYTE(v11) = 0;
      return v11 & 1;
    }

    v13 = 0;
    while (1)
    {
      v14 = (&off_29EF13DA0)[2 * *v4];
      v15 = strlen(v14);
      if (v15)
      {
        break;
      }

LABEL_30:
      LOBYTE(v11) = 0;
      v4 += 2;
      if (v4 == v5)
      {
        return v11 & 1;
      }
    }

    v16 = v15;
    v17 = a1[22];
    while (1)
    {
      v18 = *(v17 + 8 * v13);
      v19 = *(v18 + 8);
      if (v19 == *(v18 + 16))
      {
        v20 = 0;
      }

      else
      {
        v20 = *v19;
      }

      v21 = v20 << 24;
      if ((v20 & 0xFB) == 0x61 || v21 == 1862270976)
      {
        if (v13 + 1 != (a1[23] - v17) >> 3)
        {
          v22 = *(v17 + 8 * (v13 + 1));
          v23 = *(v22 + 8);
          if (v23 == *(v22 + 16))
          {
            v24 = 0;
          }

          else
          {
            v24 = *v23 << 24;
          }

          if (v24 == v21)
          {
            ++v13;
          }
        }

        v18 = *(v17 + 8 * v13);
      }

      v25 = *v14++;
      v11 = sub_2992FE6AC(v18, v25);
      if (!v11)
      {
        break;
      }

      ++v13;
      v17 = a1[22];
      if (v13 == (a1[23] - v17) >> 3)
      {
        break;
      }

      if (!--v16)
      {
        goto LABEL_30;
      }
    }
  }

  return v11 & 1;
}

void sub_2992B68D8(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (a2[1] != *a2)
  {
    v5 = 0;
    v6 = a1 + 6;
    do
    {
      v7 = (v2 + 32 * v5);
      v8 = v7[3];
      if (!v5)
      {
        v9 = v7[3];
      }

      if (*v7 != v7[1])
      {
        if (!(*(*a1 + 104))(a1))
        {
          return;
        }

        if ((*(*a1 + 96))(a1, v7))
        {
          sub_2991A650C(__p, v7[1] - *v7);
          v10 = *v7;
          v11 = __p[0];
          v12 = v7[1] - *v7;
          if (v12)
          {
            v13 = v12 >> 2;
            if (v13 <= 1)
            {
              v13 = 1;
            }

            v14 = __p[0];
            do
            {
              v15 = *v10++;
              *v14++ = v15;
              --v13;
            }

            while (v13);
          }

          v16 = a1[8];
          v17 = __p[1] - v11;
          if (a1[9] <= (v17 >> 1))
          {
            v18 = v17 >> 1;
          }

          else
          {
            v18 = a1[9];
          }

          a1[9] = v18;
          v19 = v7[3];
          v20 = a1[7];
          if (v20 >= v16)
          {
            v22 = (v20 - *v6) >> 5;
            v23 = v22 + 1;
            if ((v22 + 1) >> 59)
            {
              sub_299212A8C();
            }

            v24 = v16 - *v6;
            if (v24 >> 4 > v23)
            {
              v23 = v24 >> 4;
            }

            if (v24 >= 0x7FFFFFFFFFFFFFE0)
            {
              v25 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v25 = v23;
            }

            v40 = v6;
            if (v25)
            {
              sub_299221EAC(v6, v25);
            }

            v26 = (32 * v22);
            v37 = 0;
            v38 = v26;
            *(&v39 + 1) = 0;
            *v26 = 0;
            v26[1] = 0;
            v26[2] = 0;
            *v26 = *__p;
            v26[2] = v36;
            __p[0] = 0;
            __p[1] = 0;
            v36 = 0;
            v26[3] = v19;
            *&v39 = 32 * v22 + 32;
            v27 = a1[6];
            v28 = a1[7];
            v29 = 32 * v22 + v27 - v28;
            sub_299221EF4(v6, v27, v28, (v26 + v27 - v28));
            v30 = a1[6];
            a1[6] = v29;
            v31 = a1[8];
            v34 = v39;
            *(a1 + 7) = v39;
            *&v39 = v30;
            *(&v39 + 1) = v31;
            v37 = v30;
            v38 = v30;
            sub_299222040(&v37);
            v32 = __p[0];
            a1[7] = v34;
            v33 = v34 - a1[6];
            if (v32)
            {
              __p[1] = v32;
              operator delete(v32);
              if (v33 >= 0x41)
              {
                return;
              }
            }

            else if (v33 > 0x40)
            {
              return;
            }
          }

          else
          {
            *v20 = 0;
            v20[1] = 0;
            v20[2] = 0;
            *v20 = *__p;
            v20[2] = v36;
            v20[3] = v19;
            v21 = v20 + 4;
            a1[7] = v21;
            if (v21 - a1[6] >= 0x41)
            {
              return;
            }
          }
        }
      }

      ++v5;
      v2 = *a2;
    }

    while (v5 < (a2[1] - *a2) >> 5);
  }
}

void sub_2992B6B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992B6BB4(void *a1)
{
  sub_2992B6C5C(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2992B6C08(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_29921FB44(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_2992B6C5C(void *a1)
{
  *a1 = &unk_2A1F6B678;
  v2 = a1[22];
  if (v2)
  {
    a1[23] = v2;
    operator delete(v2);
  }

  sub_2992D6C14((a1 + 18));

  return sub_2992B51FC(a1);
}

uint64_t sub_2992B6CC4(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      sub_2992B6D3C(a1, a2);
      a2 += 4;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

const void **sub_2992B6D3C(void *a1, const void **a2)
{
  v4 = sub_2991C0548(a1, a2);
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
    sub_2992B6F9C();
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

  if (!sub_2991C09F4(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_2992B6F78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_2992745EC(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992B7040(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_2992745EC(v3, v2);
  _Unwind_Resume(a1);
}

const void **sub_2992B705C(void *a1, const void **a2)
{
  v4 = sub_2991C0548(a1, a2);
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
    operator new();
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

  if (!sub_2991C09F4(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void *sub_2992B72DC(void *a1, _DWORD *a2)
{
  if (a2)
  {
    v4 = *(sub_2992B0F2C() + 8 * (*a2 & 3));
    (*(*v4 + 32))(v4, a2);
  }

  else
  {
    sub_2992B0984(a1, 0);
  }

  return a1;
}

_DWORD **sub_2992B7350(_DWORD **result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(**(sub_2992B0F2C() + 8 * (**result & 3)) + 24);

    return v2();
  }

  return result;
}

_DWORD **sub_2992B73E8(_DWORD **result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(**(sub_2992B0F2C() + 8 * (**result & 3)) + 24);

    return v2();
  }

  return result;
}

uint64_t sub_2992B74B4(void *a1)
{
  for (i = a1[1]; ; i = a1[1])
  {
    v3 = (*(*i + 48))(i);
    if (!v3 || !(*(*a1 + 40))(a1, v3))
    {
      break;
    }
  }

  return v3;
}

BOOL sub_2992B7568(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = objc_msgSend_rawCandidate(a2, a2, a3);
  return sub_29927363C((v3 + 24), &v5) != 0;
}

void *sub_2992B75BC(void *a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  *a1 = &unk_2A1F6B790;
  a1[1] = a2;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = a3;
  a1[5] = _Block_copy(aBlock);
  return a1;
}

void sub_2992B7610(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992B764C(uint64_t a1)
{
  *a1 = &unk_2A1F6B790;
  _Block_release(*(a1 + 40));
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_2992B76CC(uint64_t a1)
{
  sub_2992B764C(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992B7704(uint64_t a1)
{
  (*(**(a1 + 8) + 56))(*(a1 + 8));
  v2 = *(**(a1 + 16) + 32);

  return v2();
}

uint64_t sub_2992B7780(uint64_t a1)
{
  (*(**(a1 + 8) + 64))(*(a1 + 8));
  result = (*(**(a1 + 16) + 24))(*(a1 + 16));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_2992B77F4(uint64_t a1)
{
  v3 = (a1 + 24);
  v2 = *(a1 + 24);
  if (!v2)
  {
    v2 = sub_2992B74B4(a1);
    *(a1 + 24) = v2;
  }

  v5 = (a1 + 32);
  v4 = *(a1 + 32);
  if (v4)
  {
    if (v2)
    {
      goto LABEL_5;
    }

LABEL_11:
    if (!v4)
    {
      return v4;
    }

    goto LABEL_14;
  }

  v4 = (*(**(a1 + 16) + 16))(*(a1 + 16), v2);
  *(a1 + 32) = v4;
  v2 = *(a1 + 24);
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (v4)
  {
    v6 = (*(*(a1 + 40) + 16))();
    v7 = 24;
    if (v6 == 1)
    {
      v7 = 32;
    }

    else
    {
      v5 = v3;
    }

    v4 = *(a1 + v7);
  }

  else
  {
    v5 = v3;
    v4 = v2;
  }

LABEL_14:
  *v5 = 0;
  return v4;
}

CFURLRef sub_2992B7904(const __CFURL *a1)
{
  PathComponent = CFURLCopyLastPathComponent(a1);
  v3 = CFStringCreateWithFormat(0, 0, @".%@.lock", PathComponent);
  CFRelease(PathComponent);
  v4 = CFURLCreateCopyDeletingLastPathComponent(0, a1);
  v5 = CFURLCreateCopyAppendingPathComponent(0, v4, v3, 0);
  CFRelease(v4);
  CFRelease(v3);
  return v5;
}

uint64_t sub_2992B799C(const __CFURL *a1)
{
  v1 = sub_2992B7904(a1);
  v2 = sub_2992B7A10(v1);
  CFRelease(v1);
  v3 = open(v2, 514, 420);
  if (v2)
  {
    MEMORY[0x29C29BF70](v2, 0x1000C8077774924);
  }

  return v3;
}

uint64_t sub_2992B7A10(const __CFURL *a1)
{
  v1 = CFURLCopyAbsoluteURL(a1);
  v2 = CFURLCopyFileSystemPath(v1, kCFURLPOSIXPathStyle);
  CFRelease(v1);
  if (v2)
  {
    Length = CFStringGetLength(v2);
    CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    operator new[]();
  }

  return 0;
}

__CFString *sub_2992B7AC0(int a1)
{
  v1 = @"completion-learning-dictionary-zh-Hant";
  if (a1 != 2)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return @"completion-learning-dictionary-zh-Hans";
  }

  else
  {
    return v1;
  }
}

__CFString *sub_2992B7AE4(int a1)
{
  v1 = @"completion-learning-zh-Hant.dictionary";
  if (a1 != 2)
  {
    v1 = 0;
  }

  if (a1 == 1)
  {
    return @"completion-learning-zh-Hans.dictionary";
  }

  else
  {
    return v1;
  }
}

void sub_2992B7BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  sub_2992B7C30(&a10);
  if (a16)
  {
    sub_2991A893C(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992B7C30(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_2991A893C(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2992B7C70(int a1, CFStringRef theString)
{
  memset(buffer, 0, sizeof(buffer));
  Length = CFStringGetLength(theString);
  sub_299217A94(buffer, Length);
  v5.location = 0;
  v5.length = Length;
  CFStringGetCharacters(theString, v5, buffer[0]);
  sub_2992B7B08();
}

void sub_2992B7D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992B7DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  sub_2992B7C30(&a10);
  if (a16)
  {
    sub_2991A893C(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992B7E1C(uint64_t *a1, void *a2, unsigned __int16 ***a3, const void **a4)
{
  __src = 0;
  v49 = 0;
  v50 = 0;
  v6 = *a1;
  if (a1[1] == *a1)
  {
    v22 = 0;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = 0;
    LODWORD(v9) = 0;
    v10 = 0;
    do
    {
      v11 = *(v6 + 2 * v10) - 48;
      if (v8 >= v50)
      {
        v12 = __src;
        v13 = v8 - __src;
        v14 = (v8 - __src) >> 2;
        v15 = v14 + 1;
        if ((v14 + 1) >> 62)
        {
          sub_299212A8C();
        }

        v16 = v50 - __src;
        if ((v50 - __src) >> 1 > v15)
        {
          v15 = v16 >> 1;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v17 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          sub_2992F86B0(&__src, v17);
        }

        v18 = v14;
        v19 = (4 * v14);
        v20 = &v19[-v18];
        *v19 = v11;
        v8 = (v19 + 1);
        memcpy(v20, v12, v13);
        v21 = __src;
        __src = v20;
        v49 = v8;
        v50 = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v8 = v11;
        v8 += 4;
      }

      v49 = v8;
      v9 = v11 + v9;
      ++v10;
      v6 = *a1;
    }

    while (v10 < (a1[1] - *a1) >> 1);
    v22 = __src;
  }

  if (a2[1] - *a2 == v9)
  {
    v23 = (v8 - v22) >> 2;
    v24 = (v23 - 1);
    if (v23 - 1 < 0)
    {
      v45 = 1;
      if (!v22)
      {
        return v45;
      }

      goto LABEL_49;
    }

    while (1)
    {
      v22 = __src;
      v25 = *(__src + v24);
      v9 -= v25;
      v26 = **a3;
      if (v25)
      {
        v27 = v26 == 0;
      }

      else
      {
        v27 = 1;
      }

      if (!v27)
      {
        v28 = 0;
        v29 = *a2 + v9;
        do
        {
          v26 = sub_2993B2448(a3, v26, *(v29 + v28++));
          if (v26)
          {
            v30 = v28 >= v25;
          }

          else
          {
            v30 = 1;
          }
        }

        while (!v30);
      }

      if (!v26)
      {
        break;
      }

      v31 = v26[1];
      if (v31 == 0xFFFF)
      {
        break;
      }

      v33 = a4[1];
      v32 = a4[2];
      if (v33 >= v32)
      {
        v35 = *a4;
        v36 = v33 - *a4;
        v37 = v36 >> 1;
        if (v36 >> 1 <= -2)
        {
          sub_299212A8C();
        }

        v38 = v32 - v35;
        if (v38 <= v37 + 1)
        {
          v39 = v37 + 1;
        }

        else
        {
          v39 = v38;
        }

        v30 = v38 >= 0x7FFFFFFFFFFFFFFELL;
        v40 = 0x7FFFFFFFFFFFFFFFLL;
        if (!v30)
        {
          v40 = v39;
        }

        if (v40)
        {
          sub_299212A48(a4, v40);
        }

        v41 = (2 * v37);
        v42 = &v41[-(v36 >> 1)];
        *v41 = v31;
        v34 = v41 + 1;
        memcpy(v42, v35, v36);
        v43 = *a4;
        *a4 = v42;
        a4[1] = v34;
        a4[2] = 0;
        if (v43)
        {
          operator delete(v43);
        }
      }

      else
      {
        *v33 = v31;
        v34 = v33 + 1;
      }

      a4[1] = v34;
      if (v24-- <= 0)
      {
        v45 = 1;
        v22 = __src;
        if (__src)
        {
          goto LABEL_49;
        }

        return v45;
      }
    }
  }

  v45 = 0;
  if (v22)
  {
LABEL_49:
    v49 = v22;
    operator delete(v22);
  }

  return v45;
}

void sub_2992B80F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992B8160(uint64_t a1)
{
  sub_2991C6CA8(__p, off_2A145F370[0]);
  v2 = sub_29920B95C(a1, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 8 == v2)
  {
    return 0;
  }

  v3 = (*(**(v2 + 56) + 16))(*(v2 + 56));
  v4 = *v3;
  v5 = *(v3 + 8);
  if (*v3 == v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    v7 = *v4++;
    result = result + v7 - 48;
  }

  while (v4 != v5);
  return result;
}

void sub_2992B8218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992B8234(uint64_t a1)
{
  sub_2991C6CA8(__p, off_2A145F3B8);
  v2 = sub_29920B95C(a1, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v3 = (*(**(v2 + 56) + 16))(*(v2 + 56));
  return (v3[1] - *v3) >> 1;
}

void sub_2992B82C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992B82DC(uint64_t a1, unsigned __int16 ***a2, char a3, uint64_t a4, _BYTE *a5)
{
  *a5 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  sub_2991C6CA8(&__p, off_2A145F3B0[0]);
  v10 = sub_29920B95C(a1, &__p);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p);
  }

  v11 = (*(**(v10 + 56) + 16))(*(v10 + 56));
  __p = 0;
  v22 = 0;
  v23 = 0;
  sub_2991C6CA8(v19, off_2A145F348);
  v12 = sub_29920B95C(a1, v19);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  if (a1 + 8 == v12 || (v13 = (*(**(v12 + 56) + 16))(*(v12 + 56)), &__p == v13) || (sub_299223494(&__p, *v13, *(v13 + 8), (*(v13 + 8) - *v13) >> 1), v22 == __p) || (sub_2993DEBE4(v11, &v24, a3) & 1) == 0 || (v14 = sub_2992B7E1C(&__p, &v24, a2, a4), *a5 = v14, (v14 & 1) == 0))
  {
    v16 = *v11;
    v15 = v11[1];
    v17 = (v15 - *v11) >> 1;
    v19[1] = 0;
    v20 = 0;
    v19[0] = 0;
    sub_2992B9414(v19, v15, v15, v16, v16, v17);
    v18 = *a4;
    if (*a4)
    {
      *(a4 + 8) = v18;
      operator delete(v18);
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
    }

    *a4 = *v19;
    *(a4 + 16) = v20;
  }

  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }
}

void sub_2992B84F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992B855C(CFDictionaryRef theDict, unsigned __int16 ***a2, uint64_t a3, int a4, _BYTE *a5)
{
  v6 = a4;
  *a5 = 0;
  if (a4)
  {
    result = CFDictionaryContainsKey(theDict, off_2A145F350);
    if (!result)
    {
      return result;
    }

    v11 = &off_2A145F358;
    result = CFDictionaryContainsKey(theDict, off_2A145F358);
    if (!result)
    {
      return result;
    }

    v12 = &off_2A145F350;
  }

  else
  {
    result = CFDictionaryContainsKey(theDict, off_2A145F360);
    if (!result)
    {
      return result;
    }

    v11 = &off_2A145F368;
    result = CFDictionaryContainsKey(theDict, off_2A145F368);
    if (!result)
    {
      return result;
    }

    v12 = &off_2A145F360;
  }

  Value = CFDictionaryGetValue(theDict, *v12);
  v14 = CFDictionaryGetValue(theDict, *v11);
  if (Value)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    return 0;
  }

  v16 = v14;
  sub_299276BDC(Value, &v26);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  sub_299276BDC(v16, __p);
  v17 = sub_2993DEBE4(&v26, &v23, v6);
  if (v17)
  {
    v18 = sub_2992B7E1C(__p, &v23, a2, a3);
    *a5 = v18;
    if (v18)
    {
      goto LABEL_21;
    }

LABEL_18:
    v21 = 0;
    v20 = 0uLL;
    sub_2992B9414(&v20, v27, v27, v26, v26, (v27 - v26) >> 1);
    v19 = *a3;
    if (*a3)
    {
      *(a3 + 8) = v19;
      operator delete(v19);
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }

    *a3 = v20;
    *(a3 + 16) = v21;
    goto LABEL_21;
  }

  if ((*a5 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_21:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  return 1;
}

void sub_2992B8730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992B8778(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, unint64_t a3@<X2>, unsigned int a4@<W3>, void *a5@<X8>)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x4002000000;
  v16 = sub_2992B8998;
  v17 = sub_2992B89BC;
  memset(v18, 0, 24);
  if (a1)
  {
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 0x40000000;
    v12[2] = sub_2992B89E8;
    v12[3] = &unk_29EF102B8;
    v12[4] = &v13;
    sub_2992C90FC(a1, a2, a3, a4, v12);
    v6 = v14;
    v7 = v14[5];
    v8 = v14[6];
    if (v8 != v7)
    {
      v20 = sub_2992B8B44;
      sub_29922619C(v7, v8, &v20, 126 - 2 * __clz((v8 - v7) >> 5), 1);
      v6 = v14;
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    v9 = v6[5];
    v10 = v6[6];
    v18[3] = a5;
    v19 = 0;
    v11 = v10 - v9;
    if (v10 != v9)
    {
      if (!((v11 >> 5) >> 59))
      {
        sub_299225F68(a5, v11 >> 5);
      }

      sub_299212A8C();
    }
  }

  else
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }

  _Block_object_dispose(&v13, 8);
  v20 = v18;
  sub_299225D98(&v20);
}

void sub_2992B8950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_299225D98(va1);
  _Block_object_dispose(va, 8);
  sub_299225D98(va1);
  _Unwind_Resume(a1);
}

__n128 sub_2992B8998(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void *sub_2992B89E8(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(*(a1 + 32) + 8);
  v7 = v5[6];
  v6 = v5[7];
  if (v7 >= v6)
  {
    v10 = v5[5];
    v11 = (v7 - v10) >> 5;
    if ((v11 + 1) >> 59)
    {
      sub_299212A8C();
    }

    v12 = v6 - v10;
    v13 = v12 >> 4;
    if (v12 >> 4 <= (v11 + 1))
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFE0)
    {
      v14 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    v24 = v5 + 5;
    if (v14)
    {
      sub_299225F68((v5 + 5), v14);
    }

    v21 = 0;
    v22 = 32 * v11;
    v23 = (32 * v11);
    *(sub_299228338((32 * v11), a2) + 6) = a3;
    *&v23 = v23 + 32;
    v15 = v5[5];
    v16 = v5[6];
    v17 = v22 + v15 - v16;
    sub_299225FB0((v5 + 5), v15, v16, v17);
    v18 = v5[5];
    v5[5] = v17;
    v19 = v5[7];
    v20 = v23;
    *(v5 + 3) = v23;
    *&v23 = v18;
    *(&v23 + 1) = v19;
    v21 = v18;
    v22 = v18;
    result = sub_299226120(&v21);
    v9 = v20;
  }

  else
  {
    result = sub_299228338(v5[6], a2);
    *(v7 + 24) = a3;
    v9 = v7 + 32;
    v5[6] = v7 + 32;
  }

  v5[6] = v9;
  return result;
}

uint64_t sub_2992B8B58@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W5>, void *a6@<X8>)
{
  v10 = *MEMORY[0x29EDCA608];
  v8 = a3;
  v9 = a4;
  v7 = a2;
  a6[1] = 0;
  a6[2] = 0;
  *a6 = 0;
  if (result)
  {
    if (a5)
    {
      operator new();
    }

    operator new();
  }

  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2992B8CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2992BB0D0(va);
  sub_2992BA7F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2992B8D0C(uint64_t a1, char *a2)
{
  sub_2991C6CA8(__p, a2);
  v3 = sub_29920B95C(a1, __p);
  v4 = (*(**(v3 + 56) + 16))(*(v3 + 56));
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_2992B8D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2992B8DA4(uint64_t a1, char *a2)
{
  sub_2991C6CA8(__p, a2);
  v3 = sub_29920B95C(a1, __p);
  v4 = (*(**(v3 + 56) + 24))(*(v3 + 56));
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_2992B8E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2992B8E3C(void *a1)
{
  *a1 = &unk_2A1F6B810;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2992B8E8C(void *a1)
{
  *a1 = &unk_2A1F6B810;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x29C29BFB0);
}

void sub_2992B8F04()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9610] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9498], MEMORY[0x29EDC9410]);
}

void sub_2992B8F50()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9610] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9498], MEMORY[0x29EDC9410]);
}

void *sub_2992B8F9C(void *__dst, __int128 *a2, void *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_2991A110C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  v6 = a3[1];
  __dst[3] = *a3;
  __dst[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return __dst;
}

void sub_2992B9028(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 24;
        sub_299227884((v4 - 24), *(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_2992B90B4(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_299212A8C();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_2992B91E4(a1, v6);
  }

  v13 = 0;
  v14 = 24 * v2;
  sub_299228338((24 * v2), a2);
  v15 = 24 * v2 + 24;
  v7 = a1[1];
  v8 = 24 * v2 + *a1 - v7;
  sub_2992B923C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_2992B9398(&v13);
  return v12;
}

void sub_2992B91D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2992B9398(va);
  _Unwind_Resume(a1);
}

void sub_2992B91E4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_2992B923C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v15 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  if (a2 == a3)
  {
    v14 = 1;
  }

  else
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = (a4 + v6);
      *v7 = *(a2 + v6);
      v8 = (a2 + v6 + 8);
      v9 = *v8;
      *(a4 + v6 + 8) = *v8;
      v10 = a4 + v6 + 8;
      v11 = *(a2 + v6 + 16);
      v7[2] = v11;
      if (v11)
      {
        *(v9 + 16) = v10;
        *(a2 + v6) = v8;
        *v8 = 0;
        *(a2 + v6 + 16) = 0;
      }

      else
      {
        *v7 = v10;
      }

      v6 += 24;
    }

    while (a2 + v6 != a3);
    v16 = a4 + v6;
    v14 = 1;
    do
    {
      sub_299227884(v5, *(v5 + 8));
      v5 += 24;
    }

    while (v5 != a3);
  }

  return sub_2992B9314(v13);
}

uint64_t sub_2992B9314(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_2992B934C(a1);
  }

  return a1;
}

void sub_2992B934C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 24;
      sub_299227884(v1 - 24, *(v1 - 16));
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void **sub_2992B9398(void **a1)
{
  sub_2992B93CC(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2992B93CC(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    sub_299227884(i - 24, *(i - 16));
  }
}

uint64_t sub_2992B9414(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    sub_2991A6584(result, a6);
  }

  return result;
}

void sub_2992B946C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992B9488(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  while (2)
  {
    v8 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v8;
          v9 = a2 - v8;
          v10 = 0x6DB6DB6DB6DB6DB7 * ((a2 - v8) >> 3);
          v11 = v10 - 2;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:
                sub_2992BA060(a1, a1 + 56, a2 - 56);
                return;
              case 4:
                sub_2992BA060(a1, a1 + 56, a1 + 112);
                if (*(a2 - 8) > *(a1 + 160))
                {
                  sub_2992277C0((a1 + 112), a2 - 56);
                  v129 = *(a1 + 152);
                  v58 = v129;
                  v128 = *(a1 + 136);
                  v59 = v128;
                  v60 = *(a2 - 32);
                  *(a1 + 152) = *(a2 - 16);
                  *(a1 + 136) = v60;
                  *(a2 - 16) = v58;
                  *(a2 - 32) = v59;
                  LODWORD(v58) = *(a1 + 160);
                  *(a1 + 160) = *(a2 - 8);
                  *(a2 - 8) = v58;
                  if (*(a1 + 160) > *(a1 + 104))
                  {
                    sub_2992277C0((a1 + 56), a1 + 112);
                    v61 = *(a1 + 96);
                    v62 = *(a1 + 80);
                    *(a1 + 80) = *(a1 + 136);
                    *(a1 + 96) = *(a1 + 152);
                    *(a1 + 136) = v62;
                    *(a1 + 152) = v61;
                    LODWORD(v61) = *(a1 + 104);
                    v63 = *(a1 + 160);
                    *(a1 + 104) = v63;
                    *(a1 + 160) = v61;
                    if (v63 > *(a1 + 48))
                    {
                      sub_2992277C0(a1, a1 + 56);
                      v64 = *(a1 + 40);
                      v65 = *(a1 + 24);
                      *(a1 + 24) = *(a1 + 80);
                      *(a1 + 40) = *(a1 + 96);
                      *(a1 + 80) = v65;
                      *(a1 + 96) = v64;
                      LODWORD(v64) = *(a1 + 48);
                      *(a1 + 48) = *(a1 + 104);
                      *(a1 + 104) = v64;
                    }
                  }
                }

                return;
              case 5:
                sub_2992BA204(a1, a1 + 56, a1 + 112, a1 + 168, a2 - 56);
                return;
            }
          }

          else
          {
            if (v10 < 2)
            {
              return;
            }

            if (v10 == 2)
            {
              if (*(a2 - 8) > *(a1 + 48))
              {
                sub_2992277C0(a1, a2 - 56);
                v129 = *(a1 + 40);
                v55 = v129;
                v128 = *(a1 + 24);
                v56 = v128;
                v57 = *(a2 - 32);
                *(a1 + 40) = *(a2 - 16);
                *(a1 + 24) = v57;
                *(a2 - 16) = v55;
                *(a2 - 32) = v56;
                LODWORD(v55) = *(a1 + 48);
                *(a1 + 48) = *(a2 - 8);
                *(a2 - 8) = v55;
              }

              return;
            }
          }

          if (v9 <= 1343)
          {
            if (a4)
            {
              if (a1 != a2)
              {
                v66 = (a1 + 56);
                if (a1 + 56 != a2)
                {
                  v67 = 0;
                  v68 = a1;
                  do
                  {
                    v69 = v66;
                    v70 = *(v68 + 26);
                    if (v70 > *(v68 + 12))
                    {
                      v71 = v68 + 8;
                      v72 = v68[8];
                      *&v128 = *v69;
                      *(&v128 + 1) = v72;
                      v129 = v68[9];
                      if (v129)
                      {
                        *(v72 + 16) = &v128 + 8;
                        *v69 = v71;
                        *v71 = 0;
                        v68[9] = 0;
                      }

                      else
                      {
                        *&v128 = &v128 + 8;
                      }

                      v130 = *(v68 + 5);
                      v131 = v68[12];
                      v68[11] = 0;
                      v68[12] = 0;
                      v68[10] = 0;
                      v132 = v70;
                      v73 = v67;
                      while (1)
                      {
                        sub_2992BA79C(a1 + v73 + 56, a1 + v73);
                        if (!v73)
                        {
                          break;
                        }

                        v74 = *(a1 + v73 - 8);
                        v73 -= 56;
                        if (v132 <= v74)
                        {
                          v75 = a1 + v73 + 56;
                          goto LABEL_91;
                        }
                      }

                      v75 = a1;
LABEL_91:
                      sub_2992BA79C(v75, &v128);
                      if (SHIBYTE(v131) < 0)
                      {
                        operator delete(v130);
                      }

                      sub_299227884(&v128, *(&v128 + 1));
                    }

                    v66 = v69 + 7;
                    v67 += 56;
                    v68 = v69;
                  }

                  while (v69 + 7 != a2);
                }
              }
            }

            else if (a1 != a2)
            {
              v115 = (a1 + 56);
              if (a1 + 56 != a2)
              {
                do
                {
                  v116 = v115;
                  v117 = *(a1 + 104);
                  if (v117 > *(a1 + 48))
                  {
                    v118 = (a1 + 64);
                    v119 = *(a1 + 64);
                    *&v128 = *v116;
                    *(&v128 + 1) = v119;
                    v129 = *(a1 + 72);
                    if (v129)
                    {
                      *(v119 + 16) = &v128 + 8;
                      *v116 = v118;
                      *v118 = 0;
                      *(a1 + 72) = 0;
                    }

                    else
                    {
                      *&v128 = &v128 + 8;
                    }

                    v130 = *(a1 + 80);
                    v131 = *(a1 + 96);
                    *(a1 + 88) = 0;
                    *(a1 + 96) = 0;
                    *(a1 + 80) = 0;
                    v132 = v117;
                    do
                    {
                      sub_2992BA79C(a1 + 56, a1);
                      v120 = a1 - 56;
                      v121 = *(a1 - 8);
                      a1 -= 56;
                    }

                    while (v132 > v121);
                    sub_2992BA79C(v120 + 56, &v128);
                    if (SHIBYTE(v131) < 0)
                    {
                      operator delete(v130);
                    }

                    sub_299227884(&v128, *(&v128 + 1));
                  }

                  v115 = v116 + 7;
                  a1 = v116;
                }

                while (v116 + 7 != a2);
              }
            }

            return;
          }

          if (!a3)
          {
            if (a1 != a2)
            {
              v76 = v11 >> 1;
              v77 = v11 >> 1;
              do
              {
                v78 = v77;
                if (v76 >= v77)
                {
                  v79 = (2 * v77) | 1;
                  v80 = a1 + 56 * v79;
                  if (2 * v78 + 2 < v10)
                  {
                    v81 = *(v80 + 48);
                    v82 = *(v80 + 104);
                    v83 = v81 <= v82;
                    v84 = v81 <= v82 ? 0 : 56;
                    v80 += v84;
                    if (!v83)
                    {
                      v79 = 2 * v78 + 2;
                    }
                  }

                  v85 = a1 + 56 * v78;
                  v86 = *(v85 + 48);
                  if (*(v80 + 48) <= v86)
                  {
                    *&v128 = *v85;
                    v87 = (v85 + 8);
                    v88 = *(v85 + 8);
                    *(&v128 + 1) = v88;
                    v129 = *(v85 + 16);
                    if (v129)
                    {
                      *(v88 + 16) = &v128 + 8;
                      *v85 = v87;
                      *v87 = 0;
                      *(v85 + 16) = 0;
                    }

                    else
                    {
                      *&v128 = &v128 + 8;
                    }

                    v89 = *(v85 + 24);
                    v131 = *(v85 + 40);
                    v130 = v89;
                    *(v85 + 32) = 0;
                    *(v85 + 40) = 0;
                    *(v85 + 24) = 0;
                    v132 = v86;
                    do
                    {
                      v90 = v80;
                      sub_2992BA79C(v85, v80);
                      if (v76 < v79)
                      {
                        break;
                      }

                      v91 = (2 * v79) | 1;
                      v80 = a1 + 56 * v91;
                      if (2 * v79 + 2 < v10)
                      {
                        v92 = *(v80 + 48);
                        v93 = *(v80 + 104);
                        v94 = v92 <= v93;
                        v95 = v92 <= v93 ? 0 : 56;
                        v80 += v95;
                        if (!v94)
                        {
                          v91 = 2 * v79 + 2;
                        }
                      }

                      v85 = v90;
                      v79 = v91;
                    }

                    while (*(v80 + 48) <= v132);
                    sub_2992BA79C(v90, &v128);
                    if (SHIBYTE(v131) < 0)
                    {
                      operator delete(v130);
                    }

                    sub_299227884(&v128, *(&v128 + 1));
                  }
                }

                v77 = v78 - 1;
              }

              while (v78);
              v96 = 0x6DB6DB6DB6DB6DB7 * (v9 >> 3);
              v97 = (a1 + 8);
              do
              {
                v98 = *(a1 + 8);
                v122 = *a1;
                v123 = v98;
                if (*(a1 + 16))
                {
                  v98[2] = &v123;
                  *a1 = v97;
                  *v97 = 0;
                  *(a1 + 16) = 0;
                }

                else
                {
                  v122 = &v123;
                }

                v99 = 0;
                v100 = *(a1 + 24);
                v126 = *(a1 + 40);
                __p = v100;
                *(a1 + 32) = 0;
                *(a1 + 40) = 0;
                *(a1 + 24) = 0;
                v127 = *(a1 + 48);
                v101 = a1;
                do
                {
                  v102 = v101 + 56 * v99;
                  v103 = v102 + 56;
                  if (2 * v99 + 2 >= v96)
                  {
                    v99 = (2 * v99) | 1;
                  }

                  else
                  {
                    v104 = *(v102 + 104);
                    v105 = *(v102 + 160);
                    v106 = v102 + 112;
                    if (v104 <= v105)
                    {
                      v99 = (2 * v99) | 1;
                    }

                    else
                    {
                      v103 = v106;
                      v99 = 2 * v99 + 2;
                    }
                  }

                  sub_2992BA79C(v101, v103);
                  v101 = v103;
                }

                while (v99 <= ((v96 - 2) >> 1));
                a2 -= 56;
                if (v103 == a2)
                {
                  sub_2992BA79C(v103, &v122);
                }

                else
                {
                  sub_2992BA79C(v103, a2);
                  sub_2992BA79C(a2, &v122);
                  v107 = v103 - a1 + 56;
                  if (v107 >= 57)
                  {
                    v108 = (0x6DB6DB6DB6DB6DB7 * (v107 >> 3) - 2) >> 1;
                    v109 = a1 + 56 * v108;
                    v110 = *(v103 + 48);
                    if (*(v109 + 48) > v110)
                    {
                      v111 = (v103 + 8);
                      v112 = *(v103 + 8);
                      *&v128 = *v103;
                      *(&v128 + 1) = v112;
                      v129 = *(v103 + 16);
                      if (v129)
                      {
                        *(v112 + 16) = &v128 + 8;
                        *v103 = v111;
                        *v111 = 0;
                        *(v103 + 16) = 0;
                      }

                      else
                      {
                        *&v128 = &v128 + 8;
                      }

                      v113 = *(v103 + 24);
                      v131 = *(v103 + 40);
                      v130 = v113;
                      *(v103 + 32) = 0;
                      *(v103 + 40) = 0;
                      *(v103 + 24) = 0;
                      v132 = v110;
                      do
                      {
                        v114 = v109;
                        sub_2992BA79C(v103, v109);
                        if (!v108)
                        {
                          break;
                        }

                        v108 = (v108 - 1) >> 1;
                        v109 = a1 + 56 * v108;
                        v103 = v114;
                      }

                      while (*(v109 + 48) > v132);
                      sub_2992BA79C(v114, &v128);
                      if (SHIBYTE(v131) < 0)
                      {
                        operator delete(v130);
                      }

                      sub_299227884(&v128, *(&v128 + 1));
                    }
                  }
                }

                if (SHIBYTE(v126) < 0)
                {
                  operator delete(__p);
                }

                sub_299227884(&v122, v123);
                v83 = v96-- <= 2;
              }

              while (!v83);
            }

            return;
          }

          v12 = v10 >> 1;
          v13 = a1 + 56 * (v10 >> 1);
          if (v9 < 0x1C01)
          {
            sub_2992BA060(v13, a1, a2 - 56);
          }

          else
          {
            sub_2992BA060(a1, v13, a2 - 56);
            v14 = 56 * v12;
            sub_2992BA060((a1 + 56), v14 + a1 - 56, a2 - 112);
            sub_2992BA060((a1 + 112), a1 + 56 + v14, a2 - 168);
            sub_2992BA060((v14 + a1 - 56), v13, a1 + 56 + v14);
            sub_2992277C0(a1, v13);
            v129 = *(a1 + 40);
            v15 = v129;
            v128 = *(a1 + 24);
            v16 = v128;
            v17 = *(v13 + 24);
            *(a1 + 40) = *(v13 + 40);
            *(a1 + 24) = v17;
            *(v13 + 40) = v15;
            *(v13 + 24) = v16;
            LODWORD(v15) = *(a1 + 48);
            *(a1 + 48) = *(v13 + 48);
            *(v13 + 48) = v15;
          }

          --a3;
          if (a4)
          {
            break;
          }

          v18 = *(a1 + 48);
          if (*(a1 - 8) > v18)
          {
            break;
          }

          v40 = (a1 + 8);
          v41 = *(a1 + 8);
          *&v128 = *a1;
          *(&v128 + 1) = v41;
          v129 = *(a1 + 16);
          if (v129)
          {
            *(v41 + 16) = &v128 + 8;
            *a1 = v40;
            *v40 = 0;
            *(a1 + 16) = 0;
          }

          else
          {
            *&v128 = &v128 + 8;
          }

          v42 = *(a1 + 24);
          v131 = *(a1 + 40);
          v130 = v42;
          *(a1 + 32) = 0;
          *(a1 + 40) = 0;
          *(a1 + 24) = 0;
          v132 = v18;
          if (v18 <= *(a2 - 8))
          {
            v45 = a1 + 56;
            do
            {
              v8 = v45;
              if (v45 >= a2)
              {
                break;
              }

              v46 = *(v45 + 48);
              v45 += 56;
            }

            while (v18 <= v46);
          }

          else
          {
            v43 = a1;
            do
            {
              v8 = v43 + 56;
              v44 = *(v43 + 104);
              v43 += 56;
            }

            while (v18 <= v44);
          }

          v47 = a2;
          if (v8 < a2)
          {
            v48 = a2;
            do
            {
              v47 = v48 - 56;
              v49 = *(v48 - 8);
              v48 -= 56;
            }

            while (v18 > v49);
          }

          while (v8 < v47)
          {
            sub_2992277C0(v8, v47);
            v50 = *(v8 + 40);
            v51 = *(v8 + 24);
            v52 = *(v47 + 40);
            *(v8 + 24) = *(v47 + 24);
            *(v8 + 40) = v52;
            *(v47 + 24) = v51;
            *(v47 + 40) = v50;
            LODWORD(v50) = *(v8 + 48);
            *(v8 + 48) = *(v47 + 48);
            *(v47 + 48) = v50;
            do
            {
              v53 = *(v8 + 104);
              v8 += 56;
            }

            while (v132 <= v53);
            do
            {
              v54 = *(v47 - 8);
              v47 -= 56;
            }

            while (v132 > v54);
          }

          if (v8 - 56 != a1)
          {
            sub_2992BA79C(a1, v8 - 56);
          }

          sub_2992BA79C(v8 - 56, &v128);
          if (SHIBYTE(v131) < 0)
          {
            operator delete(v130);
          }

          sub_299227884(&v128, *(&v128 + 1));
          a4 = 0;
        }

        v19 = (a1 + 8);
        v20 = *(a1 + 8);
        *&v128 = *a1;
        *(&v128 + 1) = v20;
        v129 = *(a1 + 16);
        if (v129)
        {
          *(v20 + 16) = &v128 + 8;
          *a1 = v19;
          *v19 = 0;
          *(a1 + 16) = 0;
        }

        else
        {
          *&v128 = &v128 + 8;
        }

        v21 = 0;
        v22 = *(a1 + 24);
        v131 = *(a1 + 40);
        v130 = v22;
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        *(a1 + 24) = 0;
        v23 = *(a1 + 48);
        v132 = v23;
        do
        {
          v24 = *(a1 + v21 + 104);
          v21 += 56;
        }

        while (v24 > v23);
        v25 = a1 + v21;
        v26 = a2;
        if (v21 == 56)
        {
          v29 = a2;
          while (v25 < v29)
          {
            v27 = v29 - 56;
            v30 = *(v29 - 8);
            v29 -= 56;
            if (v30 > v23)
            {
              goto LABEL_29;
            }
          }

          v27 = v29;
        }

        else
        {
          do
          {
            v27 = v26 - 56;
            v28 = *(v26 - 8);
            v26 -= 56;
          }

          while (v28 <= v23);
        }

LABEL_29:
        if (v25 >= v27)
        {
          v38 = v25 - 56;
        }

        else
        {
          v31 = v25;
          v32 = v27;
          do
          {
            sub_2992277C0(v31, v32);
            v33 = *(v31 + 40);
            v34 = *(v31 + 24);
            v35 = *(v32 + 40);
            *(v31 + 24) = *(v32 + 24);
            *(v31 + 40) = v35;
            *(v32 + 24) = v34;
            *(v32 + 40) = v33;
            LODWORD(v33) = *(v31 + 48);
            *(v31 + 48) = *(v32 + 48);
            *(v32 + 48) = v33;
            do
            {
              v36 = *(v31 + 104);
              v31 += 56;
            }

            while (v36 > v132);
            do
            {
              v37 = *(v32 - 8);
              v32 -= 56;
            }

            while (v37 <= v132);
          }

          while (v31 < v32);
          v38 = v31 - 56;
        }

        if (v38 != a1)
        {
          sub_2992BA79C(a1, v38);
        }

        sub_2992BA79C(v38, &v128);
        if (SHIBYTE(v131) < 0)
        {
          operator delete(v130);
        }

        sub_299227884(&v128, *(&v128 + 1));
        if (v25 >= v27)
        {
          break;
        }

LABEL_44:
        sub_2992B9488(a1, v38, a3, a4 & 1);
        a4 = 0;
        v8 = v38 + 56;
      }

      v39 = sub_2992BA464(a1, v38);
      v8 = v38 + 56;
      if (sub_2992BA464(v38 + 56, a2))
      {
        break;
      }

      if (!v39)
      {
        goto LABEL_44;
      }
    }

    a2 = v38;
    if (!v39)
    {
      continue;
    }

    break;
  }
}

uint64_t *sub_2992BA060(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v7 = (a2 + 48);
  v6 = *(a2 + 48);
  v8 = (result + 6);
  v10 = (a3 + 48);
  v9 = *(a3 + 48);
  if (v6 > *(result + 12))
  {
    if (v9 <= v6)
    {
      result = sub_2992277C0(result, a2);
      v20 = v5[5];
      v21 = *(v5 + 3);
      v22 = *(a2 + 40);
      *(v5 + 3) = *(a2 + 24);
      v5[5] = v22;
      *(a2 + 24) = v21;
      *(a2 + 40) = v20;
      LODWORD(v20) = *(v5 + 12);
      *(v5 + 12) = *(a2 + 48);
      *(a2 + 48) = v20;
      if (*v10 <= v20)
      {
        return result;
      }

      result = sub_2992277C0(a2, a3);
      v23 = *(a2 + 40);
      v24 = *(a2 + 24);
      v25 = *(a3 + 40);
      *(a2 + 24) = *(a3 + 24);
      *(a2 + 40) = v25;
      *(a3 + 24) = v24;
      *(a3 + 40) = v23;
      v8 = v7;
    }

    else
    {
      result = sub_2992277C0(result, a3);
      v11 = v5[5];
      v12 = *(v5 + 3);
      v13 = *(a3 + 40);
      *(v5 + 3) = *(a3 + 24);
      v5[5] = v13;
      *(a3 + 24) = v12;
      *(a3 + 40) = v11;
    }

    v7 = v10;
    goto LABEL_10;
  }

  if (v9 > v6)
  {
    result = sub_2992277C0(a2, a3);
    v14 = *(a2 + 40);
    v15 = *(a2 + 24);
    v16 = *(a3 + 40);
    *(a2 + 24) = *(a3 + 24);
    *(a2 + 40) = v16;
    *(a3 + 24) = v15;
    *(a3 + 40) = v14;
    LODWORD(v14) = *(a2 + 48);
    *(a2 + 48) = *(a3 + 48);
    *(a3 + 48) = v14;
    if (*(a2 + 48) > *v8)
    {
      result = sub_2992277C0(v5, a2);
      v17 = v5[5];
      v18 = *(v5 + 3);
      v19 = *(a2 + 40);
      *(v5 + 3) = *(a2 + 24);
      v5[5] = v19;
      *(a2 + 24) = v18;
      *(a2 + 40) = v17;
LABEL_10:
      v26 = *v8;
      *v8 = *v7;
      *v7 = v26;
    }
  }

  return result;
}

__n128 sub_2992BA204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2992BA060(a1, a2, a3);
  if (*(a4 + 48) > *(a3 + 48))
  {
    sub_2992277C0(a3, a4);
    v11 = *(a3 + 40);
    result = *(a3 + 24);
    v12 = *(a4 + 40);
    *(a3 + 24) = *(a4 + 24);
    *(a3 + 40) = v12;
    *(a4 + 24) = result;
    *(a4 + 40) = v11;
    LODWORD(v11) = *(a3 + 48);
    *(a3 + 48) = *(a4 + 48);
    *(a4 + 48) = v11;
    if (*(a3 + 48) > *(a2 + 48))
    {
      sub_2992277C0(a2, a3);
      v13 = *(a2 + 40);
      result = *(a2 + 24);
      v14 = *(a3 + 40);
      *(a2 + 24) = *(a3 + 24);
      *(a2 + 40) = v14;
      *(a3 + 24) = result;
      *(a3 + 40) = v13;
      LODWORD(v13) = *(a2 + 48);
      *(a2 + 48) = *(a3 + 48);
      *(a3 + 48) = v13;
      if (*(a2 + 48) > *(a1 + 48))
      {
        sub_2992277C0(a1, a2);
        v15 = *(a1 + 40);
        result = *(a1 + 24);
        v16 = *(a2 + 40);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 40) = v16;
        *(a2 + 24) = result;
        *(a2 + 40) = v15;
        LODWORD(v15) = *(a1 + 48);
        *(a1 + 48) = *(a2 + 48);
        *(a2 + 48) = v15;
      }
    }
  }

  if (*(a5 + 48) > *(a4 + 48))
  {
    sub_2992277C0(a4, a5);
    v17 = *(a4 + 40);
    result = *(a4 + 24);
    v18 = *(a5 + 40);
    *(a4 + 24) = *(a5 + 24);
    *(a4 + 40) = v18;
    *(a5 + 24) = result;
    *(a5 + 40) = v17;
    LODWORD(v17) = *(a4 + 48);
    *(a4 + 48) = *(a5 + 48);
    *(a5 + 48) = v17;
    if (*(a4 + 48) > *(a3 + 48))
    {
      sub_2992277C0(a3, a4);
      v19 = *(a3 + 40);
      result = *(a3 + 24);
      v20 = *(a4 + 40);
      *(a3 + 24) = *(a4 + 24);
      *(a3 + 40) = v20;
      *(a4 + 24) = result;
      *(a4 + 40) = v19;
      LODWORD(v19) = *(a3 + 48);
      *(a3 + 48) = *(a4 + 48);
      *(a4 + 48) = v19;
      if (*(a3 + 48) > *(a2 + 48))
      {
        sub_2992277C0(a2, a3);
        v21 = *(a2 + 40);
        result = *(a2 + 24);
        v22 = *(a3 + 40);
        *(a2 + 24) = *(a3 + 24);
        *(a2 + 40) = v22;
        *(a3 + 24) = result;
        *(a3 + 40) = v21;
        LODWORD(v21) = *(a2 + 48);
        *(a2 + 48) = *(a3 + 48);
        *(a3 + 48) = v21;
        if (*(a2 + 48) > *(a1 + 48))
        {
          sub_2992277C0(a1, a2);
          v23 = *(a1 + 40);
          result = *(a1 + 24);
          v24 = *(a2 + 40);
          *(a1 + 24) = *(a2 + 24);
          *(a1 + 40) = v24;
          *(a2 + 24) = result;
          *(a2 + 40) = v23;
          LODWORD(v23) = *(a1 + 48);
          *(a1 + 48) = *(a2 + 48);
          *(a2 + 48) = v23;
        }
      }
    }
  }

  return result;
}

BOOL sub_2992BA464(uint64_t a1, uint64_t a2)
{
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_2992BA060(a1, a1 + 56, a2 - 56);
        break;
      case 4:
        sub_2992BA060(a1, a1 + 56, a1 + 112);
        if (*(a2 - 8) > *(a1 + 160))
        {
          sub_2992277C0((a1 + 112), a2 - 56);
          v18 = *(a1 + 152);
          v19 = *(a1 + 136);
          v20 = *(a2 - 16);
          *(a1 + 136) = *(a2 - 32);
          *(a1 + 152) = v20;
          *(a2 - 32) = v19;
          *(a2 - 16) = v18;
          LODWORD(v18) = *(a1 + 160);
          *(a1 + 160) = *(a2 - 8);
          *(a2 - 8) = v18;
          if (*(a1 + 160) > *(a1 + 104))
          {
            sub_2992277C0((a1 + 56), a1 + 112);
            v21 = *(a1 + 96);
            v22 = *(a1 + 80);
            *(a1 + 80) = *(a1 + 136);
            *(a1 + 96) = *(a1 + 152);
            *(a1 + 136) = v22;
            *(a1 + 152) = v21;
            LODWORD(v21) = *(a1 + 104);
            v23 = *(a1 + 160);
            *(a1 + 104) = v23;
            *(a1 + 160) = v21;
            if (v23 > *(a1 + 48))
            {
              sub_2992277C0(a1, a1 + 56);
              v24 = *(a1 + 40);
              v25 = *(a1 + 24);
              *(a1 + 24) = *(a1 + 80);
              *(a1 + 40) = *(a1 + 96);
              *(a1 + 80) = v25;
              *(a1 + 96) = v24;
              LODWORD(v24) = *(a1 + 48);
              *(a1 + 48) = *(a1 + 104);
              result = 1;
              *(a1 + 104) = v24;
              return result;
            }
          }
        }

        return 1;
      case 5:
        sub_2992BA204(a1, a1 + 56, a1 + 112, a1 + 168, a2 - 56);
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 8) > *(a1 + 48))
    {
      sub_2992277C0(a1, a2 - 56);
      v5 = *(a1 + 40);
      v6 = *(a1 + 24);
      v7 = *(a2 - 16);
      *(a1 + 24) = *(a2 - 32);
      *(a1 + 40) = v7;
      *(a2 - 32) = v6;
      *(a2 - 16) = v5;
      LODWORD(v5) = *(a1 + 48);
      *(a1 + 48) = *(a2 - 8);
      *(a2 - 8) = v5;
    }

    return 1;
  }

LABEL_11:
  v8 = a1 + 112;
  sub_2992BA060(a1, a1 + 56, a1 + 112);
  v9 = a1 + 168;
  if (a1 + 168 == a2)
  {
    return 1;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = *(v9 + 48);
    if (v12 > *(v8 + 48))
    {
      v13 = (v9 + 8);
      v14 = *(v9 + 8);
      v27 = *v9;
      v28 = v14;
      if (*(v9 + 16))
      {
        v14[2] = &v28;
        *v9 = v13;
        *v13 = 0;
        *(v9 + 16) = 0;
      }

      else
      {
        v27 = &v28;
      }

      __p = *(v9 + 24);
      v31 = *(v9 + 40);
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v9 + 24) = 0;
      v32 = v12;
      v15 = v10;
      while (1)
      {
        sub_2992BA79C(a1 + v15 + 168, a1 + v15 + 112);
        if (v15 == -112)
        {
          break;
        }

        v16 = *(a1 + v15 + 104);
        v15 -= 56;
        if (v32 <= v16)
        {
          v17 = a1 + v15 + 168;
          goto LABEL_22;
        }
      }

      v17 = a1;
LABEL_22:
      sub_2992BA79C(v17, &v27);
      if (SHIBYTE(v31) < 0)
      {
        operator delete(__p);
      }

      ++v11;
      sub_299227884(&v27, v28);
      if (v11 == 8)
      {
        return v9 + 56 == a2;
      }
    }

    v8 = v9;
    v10 += 56;
    v9 += 56;
    if (v9 == a2)
    {
      return 1;
    }
  }
}

__n128 sub_2992BA79C(uint64_t a1, uint64_t a2)
{
  sub_299227818(a1, a2);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  result = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = result;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  *(a1 + 48) = *(a2 + 48);
  return result;
}

void sub_2992BA7F4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 56;
        sub_2992BA878(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2992BA878(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 8);

  sub_299227884(a1, v2);
}

void sub_2992BA928(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992BA964(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992BA99C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_2992BA9CC(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6B900))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992BAA0C(uint64_t a1, void **a2)
{
  v2 = *sub_299228704(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_2992BAB40(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992BAB7C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992BABB4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_2992BABE4(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6B978))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2992BACA0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F6B9A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_2992BACD8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t **a7, uint64_t *a8)
{
  v10 = *a4;
  v11 = *(a1 + 32);
  v12 = v11[1];
  v13 = __p;
  sub_2993C7378(*(a1 + 16), *v11, **(a1 + 24), *a7, *a8, __p);
  if ((v42 & 0x80u) == 0)
  {
    v14 = v42;
  }

  else
  {
    v13 = __p[0];
    v14 = __p[1];
  }

  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_299212A30();
  }

  v15 = *(a1 + 8);
  if (v14 >= 0xB)
  {
    if ((v14 | 3) == 0xB)
    {
      v16 = 13;
    }

    else
    {
      v16 = (v14 | 3) + 1;
    }

    sub_299212A48(&__dst, v16);
  }

  HIBYTE(v40) = v14;
  if (v14)
  {
    v14 *= 2;
    memmove(&__dst, v13, v14);
  }

  *(&__dst + v14) = 0;
  v18 = v15[1];
  v17 = v15[2];
  if (v18 >= v17)
  {
    v19 = 0x6DB6DB6DB6DB6DB7 * ((v18 - *v15) >> 3);
    if ((v19 + 1) > 0x492492492492492)
    {
      sub_299212A8C();
    }

    v20 = 0x6DB6DB6DB6DB6DB7 * ((v17 - *v15) >> 3);
    v21 = 2 * v20;
    if (2 * v20 <= v19 + 1)
    {
      v21 = v19 + 1;
    }

    if (v20 >= 0x249249249249249)
    {
      v22 = 0x492492492492492;
    }

    else
    {
      v22 = v21;
    }

    v47 = v15;
    if (v22)
    {
      if (v22 <= 0x492492492492492)
      {
        operator new();
      }

      sub_29919600C();
    }

    v43 = 0;
    v44 = 56 * v19;
    v45 = 56 * v19;
    v46 = 0;
    v23 = sub_299228338((56 * v19), a3);
    v23[5] = v40;
    *(v23 + 3) = __dst;
    v40 = 0;
    __dst = 0uLL;
    *(v23 + 12) = v10;
    v24 = v45 + 56;
    v45 += 56;
    v25 = *v15;
    v26 = v15[1];
    v27 = v44 + *v15 - v26;
    if (*v15 != v26)
    {
      v28 = 0;
      do
      {
        v29 = (v27 + v28);
        *v29 = *(v25 + v28);
        v30 = (v25 + v28 + 8);
        v31 = *v30;
        v29[1] = *v30;
        v32 = v27 + v28 + 8;
        v33 = *(v25 + v28 + 16);
        *(v27 + v28 + 16) = v33;
        if (v33)
        {
          *(v31 + 16) = v32;
          *(v25 + v28) = v30;
          *v30 = 0;
          *(v25 + v28 + 16) = 0;
        }

        else
        {
          *(v27 + v28) = v32;
        }

        v34 = v27 + v28;
        v35 = (v25 + v28);
        v36 = *(v25 + v28 + 24);
        *(v34 + 40) = *(v25 + v28 + 40);
        *(v34 + 24) = v36;
        v35[4] = 0;
        v35[5] = 0;
        v35[3] = 0;
        *(v34 + 48) = *(v25 + v28 + 48);
        v28 += 56;
      }

      while (v25 + v28 != v26);
      do
      {
        sub_2992BA878(v25);
        v25 += 56;
      }

      while (v25 != v26);
      v25 = *v15;
      v24 = v45;
    }

    *v15 = v27;
    v43 = v25;
    v44 = v25;
    v15[1] = v24;
    v45 = v25;
    v37 = v15[2];
    v15[2] = v46;
    v46 = v37;
    sub_2992BB080(&v43);
    v38 = SHIBYTE(v40);
    v15[1] = v24;
    if (v38 < 0)
    {
      operator delete(__dst);
    }
  }

  else
  {
    sub_299228338(v15[1], a3);
    *(v18 + 24) = __dst;
    *(v18 + 40) = v40;
    *(v18 + 48) = v10;
    v15[1] = v18 + 56;
  }

  if (v42 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2992BAFE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  sub_2992BB080(&a22);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2992BB034(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6BA10))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992BB080(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    sub_2992BA878(i - 56);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2992BB0D0(uint64_t a1)
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

uint64_t sub_2992BB150(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    __assert_rtn("ReadingMappedString", "ReadingMappedString.cpp", 20, "unmappedString");
  }

  v8 = *MEMORY[0x29EDB8ED8];
  *a1 = CFStringCreateCopy(*MEMORY[0x29EDB8ED8], a2);
  *(a1 + 8) = 0;
  if (a3 && a4)
  {
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0xE002000000;
    v29[3] = sub_2992BB460;
    v29[4] = nullsub_234;
    Length = CFStringGetLength(a2);
    v29[21] = a2;
    v32 = 0;
    v33 = Length;
    if (CFStringGetCharactersPtr(a2))
    {
      CStringPtr = 0;
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(a2, 0x600u);
    }

    v35 = 0;
    v31 = CStringPtr;
    v34 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x2000000000;
    v28 = 1;
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x2000000000;
    v24[3] = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2000000000;
    v23 = 0;
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2000000000;
    v19 = 0;
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2000000000;
    v17 = 0;
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2000000000;
    v15[3] = 0;
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 0x40000000;
    v14[2] = sub_2992BB4C8;
    v14[3] = &unk_29EF102E0;
    v14[4] = v24;
    v14[5] = &v25;
    v14[6] = v18;
    v14[7] = v29;
    v14[8] = v16;
    v14[9] = &v20;
    v14[12] = a4;
    v14[13] = a2;
    v14[10] = v15;
    v14[11] = a3;
    sub_29927708C(a2, 0, v14);
    v11 = v21[3];
    if (v11)
    {
      if (v26[3])
      {
        v12 = CFStringGetLength(*a1);
        *(a1 + 8) = CFStringCreateWithCharacters(v8, v11, v12);
        v11 = v21[3];
        *(a1 + 16) = 0;
        if (!v11)
        {
          goto LABEL_15;
        }
      }

      else
      {
        *(a1 + 16) = 0;
      }

      MEMORY[0x29C29BF70](v11, 0x1000C80BDFB0063);
    }

    else
    {
      *(a1 + 16) = *(v26 + 24);
    }

LABEL_15:
    _Block_object_dispose(v15, 8);
    _Block_object_dispose(v16, 8);
    _Block_object_dispose(v18, 8);
    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(v24, 8);
    _Block_object_dispose(&v25, 8);
    _Block_object_dispose(v29, 8);
    return a1;
  }

  *(a1 + 16) = 0;
  return a1;
}

void sub_2992BB3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Unwind_Resume(a1);
}

__n128 sub_2992BB460(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  v3 = *(a2 + 56);
  v4 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 72) = v4;
  *(a1 + 56) = v3;
  *(a1 + 40) = v2;
  v5 = *(a2 + 104);
  v6 = *(a2 + 120);
  v7 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v7;
  *(a1 + 120) = v6;
  *(a1 + 104) = v5;
  result = *(a2 + 168);
  v9 = *(a2 + 184);
  v10 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 200) = v10;
  *(a1 + 184) = v9;
  *(a1 + 168) = result;
  return result;
}

void sub_2992BB4C8(uint64_t a1, int64_t a2, uint64_t a3, _BYTE *a4)
{
  v8 = *(*(*(a1 + 32) + 8) + 24);
  if (v8 >= CFArrayGetCount(*(a1 + 88)))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
    return;
  }

  if (a3 != 1)
  {
    if (*(*(*(a1 + 72) + 8) + 24))
    {
      for (*(*(*(a1 + 80) + 8) + 24) = 0; ; ++*(*(*(a1 + 80) + 8) + 24))
      {
        v13 = *(a1 + 80);
        v14 = *(*(v13 + 8) + 24);
        if (v14 >= a3)
        {
          break;
        }

        v15 = v14 + a2;
        if (v14 + a2 < 0 || (v16 = *(*(a1 + 56) + 8), v17 = *(v16 + 200), v17 <= v15))
        {
          v19 = 0;
        }

        else
        {
          v18 = *(v16 + 176);
          if (v18)
          {
            v19 = *(v18 + 2 * *(v16 + 192) + 2 * v15);
          }

          else
          {
            v20 = *(v16 + 184);
            if (v20)
            {
              v19 = *(v20 + *(v16 + 192) + v15);
            }

            else
            {
              if (*(v16 + 216) <= v15 || (v21 = *(v16 + 208), v21 > v15))
              {
                v22 = v15 - 4;
                if (v15 < 4)
                {
                  v22 = 0;
                }

                if (v22 + 64 < v17)
                {
                  v17 = v22 + 64;
                }

                *(v16 + 208) = v22;
                *(v16 + 216) = v17;
                v35.length = v17 - v22;
                v35.location = *(v16 + 192) + v22;
                CFStringGetCharacters(*(v16 + 168), v35, (v16 + 40));
                v21 = *(v16 + 208);
                v13 = *(a1 + 80);
              }

              v19 = *(v16 + 40 + 2 * (v15 - v21));
            }
          }
        }

        *(*(*(*(a1 + 72) + 8) + 24) + 2 * a2 + 2 * *(*(v13 + 8) + 24)) = v19;
      }
    }

    goto LABEL_38;
  }

  if (a2 < 0 || (v9 = *(*(a1 + 56) + 8), v10 = *(v9 + 200), v10 <= a2))
  {
    v12 = 0;
  }

  else
  {
    v11 = *(v9 + 176);
    if (v11)
    {
      v12 = *(v11 + 2 * *(v9 + 192) + 2 * a2);
    }

    else
    {
      v32 = *(v9 + 184);
      if (v32)
      {
        v12 = *(v32 + *(v9 + 192) + a2);
      }

      else
      {
        if (*(v9 + 216) <= a2 || (v33 = *(v9 + 208), v33 > a2))
        {
          v34 = a2 - 4;
          if (a2 < 4)
          {
            v34 = 0;
          }

          if (v34 + 64 < v10)
          {
            v10 = v34 + 64;
          }

          *(v9 + 208) = v34;
          *(v9 + 216) = v10;
          v36.length = v10 - v34;
          v36.location = *(v9 + 192) + v34;
          CFStringGetCharacters(*(v9 + 168), v36, (v9 + 40));
          v33 = *(v9 + 208);
        }

        v12 = *(v9 + 40 + 2 * (a2 - v33));
      }
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = v12;
  v23 = *(a1 + 96);
  v24 = *(*(*(a1 + 48) + 8) + 24);
  v25 = *(v23 + 32);
  if (v25)
  {
    v26 = v23 + 32;
    do
    {
      v27 = *(v25 + 32);
      v28 = v27 >= v24;
      v29 = v27 < v24;
      if (v28)
      {
        v26 = v25;
      }

      v25 = *(v25 + 8 * v29);
    }

    while (v25);
    if (v26 != v23 + 32 && *(v26 + 32) <= v24)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 88), *(*(*(a1 + 32) + 8) + 24));
      *(*(*(a1 + 64) + 8) + 24) = sub_29922E478(v23, v24, ValueAtIndex);
      if (!*(*(*(a1 + 72) + 8) + 24) && *(*(*(a1 + 64) + 8) + 24) != *(*(*(a1 + 48) + 8) + 24))
      {
        CFStringGetLength(*(a1 + 104));
        operator new[]();
      }

      v30 = *(*(*(a1 + 72) + 8) + 24);
      if (!v30)
      {
        goto LABEL_38;
      }

      LOWORD(v24) = *(*(*(a1 + 64) + 8) + 24);
      goto LABEL_37;
    }
  }

  v30 = *(*(*(a1 + 72) + 8) + 24);
  if (v30)
  {
LABEL_37:
    *(v30 + 2 * a2) = v24;
  }

LABEL_38:
  ++*(*(*(a1 + 32) + 8) + 24);
}

uint64_t sub_2992BB92C(uint64_t *a1, uint64_t a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v2 = 1;
  v14 = 1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v4 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v6[0] = MEMORY[0x29EDCA5F8];
    v6[1] = 0x40000000;
    v6[2] = sub_2992BBB74;
    v6[3] = &unk_29EF10308;
    v6[6] = v4;
    v6[7] = a2;
    v6[4] = &v11;
    v6[5] = &v7;
    v6[8] = v3;
    sub_299276FB0(v4, v3, v6);
    v2 = *(v12 + 24);
  }

  if ((v2 & 1) != 0 && v3)
  {
    if (v8[3])
    {
      operator new();
    }

    operator new();
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  return 0;
}

void sub_2992BBB28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  MEMORY[0x29C29BFB0](v11, 0x1060C40285832E9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 80), 8);
  _Unwind_Resume(a1);
}

void *sub_2992BBB74(void *result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = (result[6] + 2 * a2);
  v6 = *v5;
  if ((v6 - 57344) >> 8 > 0x18)
  {
    v16 = result[5];
LABEL_15:
    v17 = *(*(v16 + 8) + 24);
    if (v17)
    {
      *(v17 + 2 * a2) = v6;
    }

    return result;
  }

  if (a3 == 1)
  {
    v7 = result[7];
    v10 = *(v7 + 8);
    v8 = v7 + 8;
    v9 = v10;
    if (!v10)
    {
      goto LABEL_12;
    }

    v11 = v8;
    do
    {
      v12 = *(v9 + 26);
      v13 = v12 >= v6;
      v14 = v12 < v6;
      if (v13)
      {
        v11 = v9;
      }

      v9 = *(v9 + 8 * v14);
    }

    while (v9);
    if (v11 == v8 || *(v11 + 26) > v6 || *(v11 + 28) == v6)
    {
LABEL_12:
      *(*(result[4] + 8) + 24) = 0;
      *a4 = 1;
      v15 = result + 5;
    }

    else
    {
      v15 = result + 5;
      if (!*(*(result[5] + 8) + 24))
      {
        result[8];
        operator new[]();
      }

      LOWORD(v6) = *(v11 + 28);
    }

    v16 = *v15;
    goto LABEL_15;
  }

  v18 = *(*(result[5] + 8) + 24);
  if (v18)
  {
    v19 = 2 * a3;

    return memcpy((v18 + 2 * a2), v5, v19);
  }

  return result;
}

uint64_t sub_2992BBCD8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

uint64_t sub_2992BBD18(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x29EDB8E00], a2, 0);
  v10 = v8;
  if (a2)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v8, v9, a2, @"languageIdentifier");
  }

  if (a3)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v10, v9, a3, @"inputMethodIdentifier");
  }

  objc_msgSend_addEntriesFromDictionary_(v10, v9, a4);
  v11 = *(*a1 + 16);

  return v11(a1, @"com.apple.languageIntelligenceCJK", v10);
}

uint64_t sub_2992BBDE4(uint64_t a1, __CFDictionary *a2, char **lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  v5 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_2A1F64300, &unk_2A1F72C30, 0);
  if (result)
  {
    v7 = result;
    result = sub_299377154(result);
    if (result)
    {
      v8 = *(v7 + 16);
      v9 = MEMORY[0x29EDB8F00];
      if ((v8 & 2) != 0)
      {
        CFDictionaryAddValue(a2, @"userDictionaryConversionCandidatePresented", *MEMORY[0x29EDB8F00]);
        v8 = *(v7 + 16);
        if ((v8 & 4) == 0)
        {
LABEL_6:
          if ((v8 & 8) == 0)
          {
            goto LABEL_7;
          }

          goto LABEL_26;
        }
      }

      else if ((v8 & 4) == 0)
      {
        goto LABEL_6;
      }

      CFDictionaryAddValue(a2, @"learningDictionaryConversionCandidatePresented", *v9);
      v8 = *(v7 + 16);
      if ((v8 & 8) == 0)
      {
LABEL_7:
        if ((v8 & 0x10) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_27;
      }

LABEL_26:
      CFDictionaryAddValue(a2, @"addressBookConversionCandidatePresented", *v9);
      v8 = *(v7 + 16);
      if ((v8 & 0x10) == 0)
      {
LABEL_8:
        if ((v8 & 0x20) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_28;
      }

LABEL_27:
      CFDictionaryAddValue(a2, @"autocorrectionCandidatePresented", *v9);
      v8 = *(v7 + 16);
      if ((v8 & 0x20) == 0)
      {
LABEL_9:
        if ((v8 & 0x40) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_29;
      }

LABEL_28:
      CFDictionaryAddValue(a2, @"otaRegionalLexiconCandidatePresented", *v9);
      v8 = *(v7 + 16);
      if ((v8 & 0x40) == 0)
      {
LABEL_10:
        if ((v8 & 0x100) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

LABEL_29:
      CFDictionaryAddValue(a2, @"otaNonRegionalLexiconCandidatePresented", *v9);
      if ((*(v7 + 16) & 0x100) == 0)
      {
LABEL_12:
        v10 = *(a1 + 32);
        if (!v10)
        {
          sub_2991A2240();
        }

        v11 = (*(*v10 + 48))(v10);
        result = 1;
        v12 = v11 > 5;
        v13 = (1 << v11) & 0x26;
        if (!v12 && v13 != 0)
        {
          v15 = *(v7 + 16);
          if (v15)
          {
            CFDictionaryAddValue(a2, @"abbreviatedCandidatePresented", *v9);
            v15 = *(v7 + 16);
            if ((v15 & 0x80) == 0)
            {
LABEL_19:
              if ((v15 & 0x200) == 0)
              {
                return 1;
              }

LABEL_20:
              CFDictionaryAddValue(a2, @"dialectPhraseCandidatePresented", *v9);
              return 1;
            }
          }

          else if ((v15 & 0x80) == 0)
          {
            goto LABEL_19;
          }

          CFDictionaryAddValue(a2, @"fuzzyPinyinCandidatePresented", *v9);
          if ((*(v7 + 16) & 0x200) == 0)
          {
            return 1;
          }

          goto LABEL_20;
        }

        return result;
      }

LABEL_11:
      CFDictionaryAddValue(a2, @"englishLexiconCandidatePresented", *v9);
      goto LABEL_12;
    }
  }

  return result;
}

void sub_2992BC064(uint64_t a1)
{
  sub_2992BC0B0(a1 + 8);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992BC0B0(uint64_t a1)
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

uint64_t sub_2992BC130(uint64_t a1, uint64_t a2)
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

void *sub_2992BC1B0(void *a1, int a2)
{
  v14[3] = *MEMORY[0x29EDCA608];
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  a1[4] = 0;
  a1[3] = a1 + 4;
  v4 = (a1 + 3);
  a1[5] = 0;
  v5 = sub_29936C2B8();
  v6 = sub_29936C350(v5, a2, off_2A145F738[0], off_2A145F6C0[0]);
  if (v6[23] < 0)
  {
    v6 = *v6;
  }

  sub_2992BC434(v6, "r", 1, v14);
  v7 = v14[1];
  if (v14[0])
  {
    v8 = *v14[0];
    if (*(*v14[0] + 4) == 1 && v8[2] == 293715527 && *v8)
    {
      v9 = 0;
      v10 = 5;
      do
      {
        LODWORD(v14[0]) = v8[v10];
        v11 = v8[v10 + 1];
        if (v11)
        {
          sub_2992BD068(a1, v14);
        }

        if ((v11 & 2) != 0)
        {
          sub_2992BD068(v4, v14);
        }

        ++v9;
        v10 += 2;
      }

      while (v9 < *v8);
    }
  }

  if (v7)
  {
    sub_2991A893C(v7);
  }

  v12 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2992BC434(char *__s@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  sub_2991C6CA8(__p, __s);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 0x40000000;
  v8[2] = sub_2992BC858;
  v8[3] = &unk_29EF10580;
  v8[4] = __s;
  v8[5] = a2;
  v9 = a3;
  sub_2992BC508(__p, v8, 0, a4);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2992BC4EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992BC508(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v25 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A145F3C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145F3C8))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_2A145F410, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145F410))
  {
    __cxa_atexit(MEMORY[0x29EDC93D8], &stru_2A145F3D0, &dword_29918C000);
    __cxa_guard_release(&qword_2A145F410);
  }

  v22 = 0;
  v23 = 0;
  std::mutex::lock(&stru_2A145F3D0);
  v8 = sub_29921517C(qword_2A145F3C0, a1);
  v9 = v8;
  if (!v8 || (v10 = v8[6]) == 0 || (v10->__shared_owners_ != -1 ? (v11 = a3 == 0) : (v11 = 0), !v11))
  {
    v12 = sub_2993652F8(0xDu);
    v13 = os_signpost_id_make_with_pointer(v12, a1);
    v14 = sub_2993652F8(0xDu);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v15 = v14;
      if (os_signpost_enabled(v14))
      {
        if (*(a1 + 23) >= 0)
        {
          v16 = a1;
        }

        else
        {
          v16 = *a1;
        }

        *buf = 136315138;
        *&buf[4] = v16;
        _os_signpost_emit_with_name_impl(&dword_29918C000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "SingletonResourceManagerLoad", "Load resource with key: [%s]", buf, 0xCu);
      }
    }

    v17 = (*(a2 + 16))(a2);
    sub_2992BC8C8(&v22, v17);
  }

  v18 = std::__shared_weak_count::lock(v10);
  if (v18)
  {
    v19 = v9[5];
  }

  else
  {
    v19 = 0;
  }

  v22 = v19;
  v23 = v18;
  std::mutex::unlock(&stru_2A145F3D0);
  v20 = v23;
  *a4 = v22;
  a4[1] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    if (v23)
    {
      sub_2991A893C(v23);
    }
  }

  v21 = *MEMORY[0x29EDCA608];
}

void sub_2992BC910(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_2992BC990(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2992BC9A4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2992BC9A4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_2992BCAAC(v2);
    MEMORY[0x29C29BFB0](v3, 0x1012C403EBA5055);
  }

  return a1;
}

void sub_2992BC9F0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992BCA28(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_2992BCAAC(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

uint64_t sub_2992BCA6C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F6BAD8))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2992BCAAC(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (*(a1 + 68) == 1)
    {
      munmap(*a1, *(a1 + 8));
    }

    else
    {
      if (*(a1 + 64) != 2)
      {
        goto LABEL_10;
      }

      v3 = (a1 + 16);
      if (*(a1 + 39) < 0)
      {
        v3 = *v3;
      }

      v4 = open(v3, 2);
      v5 = v4;
      v2 = *a1;
      if ((v4 & 0x80000000) == 0)
      {
        write(v4, *a1, *(a1 + 8));
        close(v5);
        v2 = *a1;
      }

      if (v2)
      {
LABEL_10:
        MEMORY[0x29C29BF70](v2, 0x1000C8077774924);
      }
    }
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_2992BCB80(uint64_t a1, char *a2, char *a3, int a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_2991C6CA8((a1 + 16), a2);
  sub_2991C6CA8((a1 + 40), a3);
  *(a1 + 64) = 0;
  *(a1 + 68) = a4;
  if (*a3 != 114)
  {
    goto LABEL_15;
  }

  if (a3[1])
  {
    if (a3[1] == 43 && !a3[2])
    {
      *(a1 + 64) = 514;
      v8 = open(a2, 514, 384);
      goto LABEL_7;
    }

LABEL_15:
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2992BCE60(exception, 1);
    goto LABEL_18;
  }

  *(a1 + 64) = 0;
  v8 = open(a2, 0);
LABEL_7:
  v9 = v8;
  if (v8 < 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2992BCE60(exception, 2);
    goto LABEL_18;
  }

  if (fstat(v8, &v15) < 0)
  {
    close(v9);
    exception = __cxa_allocate_exception(0x20uLL);
    sub_2992BCE60(exception, 3);
LABEL_18:
    __cxa_throw(exception, &unk_2A1F6BA60, sub_2992BCE00);
  }

  st_size = v15.st_size;
  *(a1 + 8) = v15.st_size;
  if (!a4)
  {
    operator new[]();
  }

  if (st_size)
  {
    v11 = mmap(0, st_size, *(a1 + 64) & 2 | 1u, 1, v9, 0);
    if (v11 == -1)
    {
      close(v9);
      v14 = __cxa_allocate_exception(0x20uLL);
      sub_2992BCE60(v14, 4);
      __cxa_throw(v14, &unk_2A1F6BA60, sub_2992BCE00);
    }

    *a1 = v11;
  }

  close(v9);
  return a1;
}

void sub_2992BCDA8(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(a1);
}

void sub_2992BCE00(std::exception *this)
{
  this->__vftable = &unk_2A1F6BB00;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);
}

uint64_t sub_2992BCE60(uint64_t a1, int a2)
{
  *a1 = &unk_2A1F6BB00;
  *(a1 + 8) = 0;
  v3 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (a2 > 3)
  {
    if (a2 != 4 && a2 != 5 && a2 != 6)
    {
      return a1;
    }
  }

  else if (a2 != 1 && a2 != 2 && a2 != 3)
  {
    return a1;
  }

  std::operator+<char>();
  if (*(a1 + 31) < 0)
  {
    operator delete(*v3);
  }

  *v3 = v5;
  *(v3 + 16) = v6;
  return a1;
}

void sub_2992BCFA0(_Unwind_Exception *a1)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  std::exception::~exception(v1);
  _Unwind_Resume(a1);
}

void sub_2992BCFD8(std::exception *this)
{
  this->__vftable = &unk_2A1F6BB00;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2992BD04C(uint64_t a1)
{
  result = a1 + 8;
  if (*(a1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t *sub_2992BD068(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 28);
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

BOOL sub_2992BD134(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[2];
    if (*(v5 + 2 * v3 - 2) != 32)
    {
      v6 = a1[6];
      v7 = a1[7];
      if (v6 != v7)
      {
        v10 = *(v7 - 4);
        v9 = v7 - 4;
        v11 = *(a2 + 8);
        if (*(v11 + 52) == v10)
        {
          a1[7] = v9;
          v12 = v3 + 1;
          while (1)
          {
            v13 = v12 - 2;
            if (((v12 - 2) & 0x80000000) != 0)
            {
              break;
            }

            --v12;
            if (*(v5 + 2 * (v13 & 0x7FFFFFFF)) == 32)
            {
              a1[2] = v5 + 2 * v12;
              a1[3] = v3 - v12;
              return v6 != v9;
            }
          }

          return v6 != v9;
        }

        else
        {
          v14 = (*(**(v11 + 8) + 512))(*(v11 + 8));
          v16 = v15;
          if (sub_299251220(v14, v15) && (v16 >= v16 - 3 ? (v17 = v16 - 3) : (v17 = v16), (v18 = (*(**(*(a2 + 8) + 8) + 504))(*(*(a2 + 8) + 8), v14, v17)) != 0))
          {
            *(a1[7] - 4) = v18;
            v19 = a1[3];
            v20 = v19 + 1;
            while (((v20 - 2) & 0x80000000) == 0)
            {
              v21 = (v20 - 2) & 0x7FFFFFFF;
              v22 = a1[2];
              --v20;
              if (*(v22 + 2 * v21) == 32)
              {
                a1[2] = v22 + 2 * v20;
                a1[3] = v19 - v20;
                return 1;
              }
            }

            return 1;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return a3;
}

BOOL sub_2992BD2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 2 * a3 - 2) == 32;
  v6 = a3 - v5;
  v7 = *(a1 + 40);
  if (!v7 || (v8 = 1, (sub_2993981D8(v7, a2, a3 - v5, 1) & 1) == 0))
  {
    v9 = *(a1 + 32);
    v8 = 0;
    if (v9)
    {
      LODWORD(v11) = 0;
      if (sub_2993E6B4C(v9, a2, v6, &v11) && (v11 & 6) != 0)
      {
        return 1;
      }
    }
  }

  return v8;
}

void sub_2992BD354(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4)
{
  __src = 0;
  v27 = 0;
  v28 = 0;
  if (*a2 == 1)
  {
    v7 = *(a2 + 4);
    v25 = *(a2 + 8);
    sub_29925493C(&v29, *(a2 + 16), (*(a2 + 16) + 2 * *(a2 + 24)), &__src);
    v8 = (v27 - __src) >> 1;
  }

  else
  {
    v8 = 0;
  }

  sub_299218E20(&__src, v8 + a4);
  v9 = v27;
  if (a4)
  {
    v10 = 2 * a4;
    do
    {
      v11 = *a3;
      if (v9 >= v28)
      {
        v12 = __src;
        v13 = v9 - __src;
        v14 = (v9 - __src) >> 1;
        if (v14 <= -2)
        {
          sub_299212A8C();
        }

        if (v28 - __src <= v14 + 1)
        {
          v15 = v14 + 1;
        }

        else
        {
          v15 = v28 - __src;
        }

        if (v28 - __src >= 0x7FFFFFFFFFFFFFFELL)
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        if (v16)
        {
          sub_299212A48(&__src, v16);
        }

        v17 = v14;
        v18 = (2 * v14);
        v19 = &v18[-v17];
        *v18 = v11;
        v9 = (v18 + 1);
        memcpy(v19, v12, v13);
        v20 = __src;
        __src = v19;
        v27 = v9;
        v28 = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v9 = v11;
        v9 += 2;
      }

      v27 = v9;
      ++a3;
      v10 -= 2;
    }

    while (v10);
  }

  v22 = *(v9 - 1);
  v21 = v9 - 2;
  if (v22 == 32)
  {
    v27 = v21;
  }

  v23 = *(a1 + 32);
  if (v23)
  {
    v24 = *v23;
  }

  else
  {
    v24 = 0;
  }

  sub_29927733C(v24);
  operator new();
}

void sub_2992BD5A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992BD624(uint64_t a1, unsigned int a2)
{
  v11 = a2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = vcnt_s8(v3);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.u32[0] > 1uLL)
    {
      v5 = a2;
      if (v3 <= a2)
      {
        v5 = a2 % v3;
      }
    }

    else
    {
      v5 = (v3 - 1) & a2;
    }

    v6 = *(*(a1 + 8) + 8 * v5);
    if (v6)
    {
      for (i = *v6; i; i = *i)
      {
        v8 = i[1];
        if (v8 == a2)
        {
          if (*(i + 4) == a2)
          {
            v12 = &v11;
            v9 = sub_2992BF3D8((a1 + 8), a2);
            sub_2992912B4(v9 + 3);
            a2 = v11;
            break;
          }
        }

        else
        {
          if (v4.u32[0] > 1uLL)
          {
            if (v8 >= v3)
            {
              v8 %= v3;
            }
          }

          else
          {
            v8 &= v3 - 1;
          }

          if (v8 != v5)
          {
            break;
          }
        }
      }
    }
  }

  if (a2 == 3)
  {
    *(a1 + 112) &= 0xFFFFFFFFFFFFFF77;
    v10 = 136;
    goto LABEL_21;
  }

  if (a2 == 2)
  {
    *(a1 + 112) &= 0xFFFFFFFFFFFFE087;
    sub_299215B18((a1 + 96), 0);
    sub_299219AB4((a1 + 144), 0);
    sub_299219AB4((a1 + 152), 0);
    sub_299219AB4((a1 + 160), 0);
    sub_299219AB4((a1 + 168), 0);
    sub_299219AB4((a1 + 176), 0);
    v10 = 184;
LABEL_21:
    sub_299219AB4((a1 + v10), 0);
  }

  *(a1 + 80) = *(a1 + 72);
  *(a1 + 56) = *(a1 + 48);
}

uint64_t sub_2992BD7BC(uint64_t a1, int a2, CFArrayRef theArray)
{
  *(a1 + 104) = 0;
  if (a2 == 1)
  {
    v8 = sub_2992BE338(a1, theArray);
    goto LABEL_11;
  }

  if (a2 == 3)
  {
    v8 = sub_2992BE668(a1, theArray);
LABEL_11:
    v5 = v8;
    goto LABEL_12;
  }

  v5 = 0;
  if (a2 == 2)
  {
    if (theArray && CFArrayGetCount(theArray) && (ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0), v7 = CFGetTypeID(ValueAtIndex), v7 == CFURLGetTypeID()))
    {
      v8 = sub_2992BD884(a1, theArray);
    }

    else
    {
      v8 = sub_2992BD9B4(a1, theArray);
    }

    goto LABEL_11;
  }

LABEL_12:
  sub_2992BE8C4(a1);
  return v5;
}

uint64_t sub_2992BD884(uint64_t a1, const __CFArray *a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  v5 = 0;
  v6 = 0;
  while (v5 < CFArrayGetCount(a2))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v5);
    v8 = CFGetTypeID(ValueAtIndex);
    if (v8 == CFURLGetTypeID())
    {
      if (sub_29936CCAC(ValueAtIndex))
      {
        if (v6)
        {
          v6 = 1;
        }

        else
        {
          v6 = sub_2992BF064(a1, ValueAtIndex);
        }
      }

      else
      {
        CFArrayAppendValue(Mutable, ValueAtIndex);
      }
    }

    ++v5;
  }

  v9 = sub_2992BF12C(a1, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return (v6 | v9) & 1;
}

void sub_2992BD990(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2992530BC(va, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2992BD9B4(uint64_t a1, CFArrayRef theArray)
{
  v58 = *MEMORY[0x29EDCA608];
  if (!theArray || CFArrayGetCount(theArray) != 1 || (ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0)) == 0)
  {
    sub_2992BD624(a1, 2u);
    goto LABEL_56;
  }

  Value = CFDictionaryGetValue(ValueAtIndex, kMecabraAssetDataFilePathsKey);
  sub_2992BD624(a1, 2u);
  if (!Value)
  {
    goto LABEL_57;
  }

  if (CFArrayGetCount(Value) > 50)
  {
LABEL_56:
    LOBYTE(Value) = 0;
    goto LABEL_57;
  }

  Count = CFArrayGetCount(Value);
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  Mutable = CFSetCreateMutable(0, 0, MEMORY[0x29EDB9030]);
  if (Count >= 1)
  {
    for (i = 0; Count != i; ++i)
    {
      v9 = CFArrayGetValueAtIndex(Value, i);
      v10 = sub_2992BE968(v9);
      v51.__r_.__value_.__r.__words[0] = v10;
      v11 = sub_2993652F8(9u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 138412290;
        *(buf.__r_.__value_.__r.__words + 4) = v10;
        _os_log_debug_impl(&dword_29918C000, v11, OS_LOG_TYPE_DEBUG, "[Mecabra] Set Non-regional assets: %@", &buf, 0xCu);
        if (!v10)
        {
          continue;
        }
      }

      else if (!v10)
      {
        continue;
      }

      if (CFSetContainsValue(Mutable, v10))
      {
LABEL_32:
        CFRelease(v10);
      }

      else
      {
        CFSetAddValue(Mutable, v10);
        v12 = sub_2992BEE7C(v10) - 1;
        v13 = 32;
        switch(v12)
        {
          case 0:
            v14 = v46;
            if (v46 >= v47)
            {
              v19 = v46 - v45;
              if ((v19 + 1) >> 61)
              {
                goto LABEL_103;
              }

              v20 = (v47 - v45) >> 2;
              if (v20 <= v19 + 1)
              {
                v20 = v19 + 1;
              }

              if (v47 - v45 >= 0x7FFFFFFFFFFFFFF8)
              {
                v21 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v21 = v20;
              }

              v55 = &v45;
              if (v21)
              {
                sub_299229E2C(&v45, v21);
              }

              buf.__r_.__value_.__r.__words[0] = 0;
              buf.__r_.__value_.__l.__size_ = 8 * v19;
              v54 = 0;
              v51.__r_.__value_.__r.__words[0] = 0;
              *buf.__r_.__value_.__l.__size_ = v10;
              buf.__r_.__value_.__r.__words[2] = 8 * v19 + 8;
              sub_299229D74(&v45, &buf);
              v15 = v46;
              sub_299229E74(&buf);
            }

            else
            {
              v51.__r_.__value_.__r.__words[0] = 0;
              *v46 = v10;
              v15 = v14 + 1;
            }

            v46 = v15;
            break;
          case 1:
            v16 = v49;
            if (v49 >= v50)
            {
              v22 = v49 - v48;
              if ((v22 + 1) >> 61)
              {
LABEL_103:
                sub_299212A8C();
              }

              v23 = (v50 - v48) >> 2;
              if (v23 <= v22 + 1)
              {
                v23 = v22 + 1;
              }

              if (v50 - v48 >= 0x7FFFFFFFFFFFFFF8)
              {
                v24 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v24 = v23;
              }

              v55 = &v48;
              if (v24)
              {
                sub_299229E2C(&v48, v24);
              }

              buf.__r_.__value_.__r.__words[0] = 0;
              buf.__r_.__value_.__l.__size_ = 8 * v22;
              v54 = 0;
              v51.__r_.__value_.__r.__words[0] = 0;
              *buf.__r_.__value_.__l.__size_ = v10;
              buf.__r_.__value_.__r.__words[2] = 8 * v22 + 8;
              sub_299229D74(&v48, &buf);
              v17 = v49;
              sub_299229E74(&buf);
            }

            else
            {
              v51.__r_.__value_.__r.__words[0] = 0;
              *v49 = v10;
              v17 = v16 + 1;
            }

            v49 = v17;
            break;
          case 2:
            v13 = 72;
            goto LABEL_31;
          case 3:
            sub_299229BC0((a1 + 144), v10);
            v13 = 16;
            goto LABEL_31;
          case 4:
            goto LABEL_31;
          case 7:
            sub_299229BC0((a1 + 152), v10);
            v13 = 256;
            goto LABEL_31;
          case 8:
            sub_299229BC0((a1 + 160), v10);
            v13 = 512;
            goto LABEL_31;
          case 9:
            v13 = 1024;
            goto LABEL_31;
          case 10:
            sub_299229BC0((a1 + 168), v10);
            v13 = 2048;
            goto LABEL_31;
          case 11:
            v18 = *(a1 + 128);
            if (v18 && CFStringCompare(v10, v18, 0) == kCFCompareEqualTo)
            {
              goto LABEL_32;
            }

            sub_299229BC0((a1 + 128), v10);
            v13 = 4096;
LABEL_31:
            *(a1 + 112) |= v13;
            goto LABEL_32;
          case 12:
            v13 = 0x2000;
            goto LABEL_31;
          case 13:
            v13 = 0x4000;
            goto LABEL_31;
          case 14:
            sub_299229BC0((a1 + 176), v10);
            v13 = 0x8000;
            goto LABEL_31;
          case 15:
            sub_299229BC0((a1 + 184), v10);
            v13 = 0x10000;
            goto LABEL_31;
          default:
            goto LABEL_32;
        }
      }
    }
  }

  sub_2991C6CA8(&v51, "");
  v27 = v48;
  v28 = v49;
  if (v48 != v49)
  {
    v29 = 0;
    do
    {
      sub_299278568(*v27, &buf);
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      sub_2992BC434(p_buf, "r", 1, v56);
      if (*v56)
      {
        v31 = **v56;
        if (*(**v56 + 8) == 1 && v31[3] == 293715535 && *v31 > v29)
        {
          std::string::operator=(&v51, &buf);
          v29 = *v31;
        }
      }

      if (v57)
      {
        sub_2991A893C(v57);
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      ++v27;
    }

    while (v27 != v28);
  }

  size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v51.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    goto LABEL_95;
  }

  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = &v51;
  }

  else
  {
    v33 = v51.__r_.__value_.__r.__words[0];
  }

  sub_2992BC434(v33, "r", 1, &buf);
  v34 = *&buf.__r_.__value_.__l.__data_;
  if (buf.__r_.__value_.__r.__words[0])
  {
    v35 = *buf.__r_.__value_.__l.__data_;
    v36 = *MEMORY[0x29EDB8ED8];
    Value = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (*(v35 + 4))
    {
      v37 = 0;
      v38 = (*v34 + 24);
      do
      {
        v40 = *v38;
        v39 = v38 + 1;
        v41 = CFStringCreateWithCharacters(v36, v39, v40);
        buf.__r_.__value_.__r.__words[0] = v41;
        v42 = &v39[v40];
        v43 = *v42;
        v38 = (v42 + 2);
        valuePtr = v43;
        v44 = CFNumberCreate(v36, kCFNumberSInt32Type, &valuePtr);
        *v56 = v44;
        CFDictionaryAddValue(Value, v41, v44);
        if (v44)
        {
          CFRelease(v44);
        }

        if (v41)
        {
          CFRelease(v41);
        }

        ++v37;
      }

      while (v37 < *(v35 + 4));
    }
  }

  else
  {
    Value = 0;
  }

  if (*(&v34 + 1))
  {
    sub_2991A893C(*(&v34 + 1));
  }

  if (!Value)
  {
    goto LABEL_96;
  }

  if (*(a1 + 96) == Value)
  {
    CFRelease(Value);
LABEL_95:
    LOBYTE(Value) = 0;
    goto LABEL_96;
  }

  sub_299215B18((a1 + 96), Value);
  LOBYTE(Value) = 1;
LABEL_96:
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  LOBYTE(Value) = ((*(a1 + 112) & 0x1FFFF) != 0) | Value | sub_2992BEA10(a1, 2u, v45, v46);
  if (Value)
  {
    *(a1 + 104) = 1;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  buf.__r_.__value_.__r.__words[0] = &v45;
  sub_299290440(&buf);
  buf.__r_.__value_.__r.__words[0] = &v48;
  sub_299290440(&buf);
LABEL_57:
  v25 = *MEMORY[0x29EDCA608];
  return Value & 1;
}

void sub_2992BE150()
{
  if (v1 < 0)
  {
    operator delete(v0);
  }

  JUMPOUT(0x2992BE2F4);
}

void sub_2992BE174(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_2991EDA10(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2992BE2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_299219AB4(va, 0);
  JUMPOUT(0x2992BE304);
}

BOOL sub_2992BE338(uint64_t a1, const __CFArray *a2)
{
  v34 = *MEMORY[0x29EDCA608];
  sub_2992BD624(a1, 1u);
  if (a2)
  {
    Count = CFArrayGetCount(a2);
    Mutable = CFSetCreateMutable(0, 0, MEMORY[0x29EDB9030]);
    v27 = 0;
    v28 = Mutable;
    v25 = 0;
    v26 = 0;
    if (Count >= 1)
    {
      v5 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v5);
        if (ValueAtIndex)
        {
          Value = CFDictionaryGetValue(ValueAtIndex, kMecabraAssetDataFilePathsKey);
          v8 = Value;
          if (Value)
          {
            v9 = CFArrayGetCount(Value);
            if (v9 >= 1)
            {
              break;
            }
          }
        }

LABEL_27:
        if (++v5 == Count)
        {
          v19 = v25;
          v20 = v26;
          goto LABEL_31;
        }
      }

      v10 = 0;
      while (1)
      {
        v11 = CFArrayGetValueAtIndex(v8, v10);
        v12 = sub_2992BE968(v11);
        v29 = v12;
        v13 = sub_2993652F8(9u);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v12;
          _os_log_debug_impl(&dword_29918C000, v13, OS_LOG_TYPE_DEBUG, "[Mecabra] Set region lexicon: %@", &buf, 0xCu);
          if (v12)
          {
LABEL_10:
            if (CFSetContainsValue(Mutable, v12))
            {
              CFRelease(v12);
            }

            else
            {
              CFSetAddValue(Mutable, v12);
              v14 = v26;
              if (v26 >= v27)
              {
                v16 = v26 - v25;
                if ((v16 + 1) >> 61)
                {
                  sub_299212A8C();
                }

                v17 = (v27 - v25) >> 2;
                if (v17 <= v16 + 1)
                {
                  v17 = v16 + 1;
                }

                if (v27 - v25 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v18 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v18 = v17;
                }

                v33 = &v25;
                if (v18)
                {
                  sub_299229E2C(&v25, v18);
                }

                *&buf = 0;
                *(&buf + 1) = 8 * v16;
                v32 = 0;
                v29 = 0;
                **(&buf + 1) = v12;
                v31 = 8 * v16 + 8;
                sub_299229D74(&v25, &buf);
                v15 = v26;
                sub_299229E74(&buf);
              }

              else
              {
                v29 = 0;
                *v26 = v12;
                v15 = v14 + 1;
              }

              v26 = v15;
            }
          }
        }

        else if (v12)
        {
          goto LABEL_10;
        }

        if (v9 == ++v10)
        {
          goto LABEL_27;
        }
      }
    }

    v20 = 0;
    v19 = 0;
LABEL_31:
    v21 = sub_2992BEA10(a1, 1u, v19, v20);
    if (v21)
    {
      *(a1 + 104) = 1;
    }

    *&buf = &v25;
    sub_299290440(&buf);
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x29EDCA608];
  return v21;
}

void sub_2992BE5EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2992BE668(uint64_t a1, const __CFArray *a2)
{
  buf[3] = *MEMORY[0x29EDCA608];
  sub_2992BD624(a1, 3u);
  if (a2)
  {
    Mutable = CFSetCreateMutable(0, 0, MEMORY[0x29EDB9030]);
    v5 = 0;
    buf[0] = Mutable;
    while (v5 < CFArrayGetCount(a2))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v5);
      if (ValueAtIndex)
      {
        v7 = CFDictionaryGetValue(ValueAtIndex, kMecabraAssetDataFilePathsKey);
        if (v7)
        {
          for (i = 0; i < CFArrayGetCount(v7); ++i)
          {
            v9 = CFArrayGetValueAtIndex(v7, i);
            if (v9)
            {
              v10 = sub_2992BE968(v9);
              value = v10;
              if (v10)
              {
                if (!CFSetContainsValue(Mutable, v10))
                {
                  CFSetAddValue(Mutable, value);
                  if (sub_2992BEE7C(value) == 3)
                  {
                    goto LABEL_17;
                  }
                }

                if (value)
                {
                  CFRelease(value);
                }
              }
            }
          }
        }
      }

      ++v5;
    }

    value = 0;
LABEL_17:
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (value)
    {
      v11 = sub_2993652F8(9u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf[0]) = 138412290;
        *(buf + 4) = value;
        _os_log_debug_impl(&dword_29918C000, v11, OS_LOG_TYPE_DEBUG, "[Mecabra] Set dialect language model: %@", buf, 0xCu);
      }

      sub_299219AB4((a1 + 136), value);
    }

    *(a1 + 104) = 1;
    *(a1 + 112) |= 0x88uLL;
  }

  result = a2 != 0;
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2992BE85C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2992BE8C4(uint64_t a1)
{
  for (i = *(a1 + 24); i; i = *i)
  {
    v3 = i[3];
    v4 = i[4];
    while (v3 != v4)
    {
      if ((*(**v3 + 24))())
      {
        v6 = *v3;
        v5 = a1 + 72;
      }

      else
      {
        v6 = *v3;
        v5 = a1 + 48;
      }

      sub_29921A7E0(v5, &v6);
      v3 += 2;
    }
  }
}

CFStringRef sub_2992BE968(const void *a1)
{
  cf = 0;
  v2 = CFGetTypeID(a1);
  if (v2 == CFURLGetTypeID())
  {
    return CFURLCopyFileSystemPath(a1, kCFURLPOSIXPathStyle);
  }

  v3 = CFGetTypeID(a1);
  if (v3 == CFStringGetTypeID())
  {
    sub_299229BC0(&cf, a1);
  }

  return cf;
}