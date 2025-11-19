uint64_t sub_2993550E4(uint64_t result, uint64_t *a2, unint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    v4 = a4;
    v6 = result;
    if (a3 == 1)
    {
LABEL_9:
      *v4 = *v6;
      return result;
    }

    if (a3 == 2)
    {
      v8 = a2 - 1;
      result = sub_29920B9DC((*(a2 - 1) + 24), (*result + 24));
      if ((result & 0x80u) == 0)
      {
        v9 = v6;
      }

      else
      {
        v9 = v8;
      }

      *v4++ = *v9;
      if ((result & 0x80u) == 0)
      {
        v6 = v8;
      }

      goto LABEL_9;
    }

    if (a3 > 8)
    {
      v18 = result + 8 * (a3 >> 1);
      sub_299354EAC(result, v18, a3 >> 1, a4, a3 >> 1);
      result = sub_299354EAC(&v6[a3 >> 1], a2, a3 - (a3 >> 1), &v4[a3 >> 1], a3 - (a3 >> 1));
      v19 = &v6[a3 >> 1];
      while (v19 != a2)
      {
        result = sub_29920B9DC((*v19 + 24), (*v6 + 24));
        if ((result & 0x80u) == 0)
        {
          v20 = v6;
        }

        else
        {
          v20 = v19;
        }

        v19 = (v19 + ((result >> 4) & 8));
        v6 += (result & 0x80) == 0;
        *v4++ = *v20;
        if (v6 == v18)
        {
          while (v19 != a2)
          {
            v22 = *v19++;
            *v4++ = v22;
          }

          return result;
        }
      }

      while (v6 != v18)
      {
        v21 = *v6++;
        *v4++ = v21;
      }
    }

    else if (result != a2)
    {
      v10 = result + 8;
      *a4 = *result;
      if ((result + 8) != a2)
      {
        v11 = 0;
        v12 = a4;
        do
        {
          v13 = v12;
          v14 = *v12++;
          result = sub_29920B9DC((*v10 + 24), (v14 + 24));
          v15 = v12;
          if ((result & 0x80) != 0)
          {
            v13[1] = *v13;
            v15 = v4;
            if (v13 != v4)
            {
              v17 = v11;
              while (1)
              {
                v15 = (v4 + v17);
                result = sub_29920B9DC((*v10 + 24), (*(v4 + v17 - 8) + 24));
                if ((result & 0x80) == 0)
                {
                  break;
                }

                *v15 = *(v15 - 1);
                v17 -= 8;
                if (!v17)
                {
                  v15 = v4;
                  break;
                }
              }
            }
          }

          v16 = *v10;
          v10 += 8;
          *v15 = v16;
          v11 += 8;
        }

        while (v10 != a2);
      }
    }
  }

  return result;
}

uint64_t sub_2993552D8(uint64_t result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    v9 = a5;
    v13 = result;
    while (a4 > a7 && v9 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v14 = 0;
      v15 = -a4;
      while (1)
      {
        result = sub_29920B9DC((*a2 + 24), (*&v13[v14] + 24));
        if ((result & 0x80) != 0)
        {
          break;
        }

        v14 += 8;
        if (__CFADD__(v15++, 1))
        {
          return result;
        }
      }

      v17 = -v15;
      v79 = a6;
      v80 = a7;
      v81 = a3;
      v78 = &v13[v14];
      if (-v15 >= v9)
      {
        if (v15 == -1)
        {
          v74 = *&v13[v14];
          *&v13[v14] = *a2;
          *a2 = v74;
          return result;
        }

        v25 = v17 / 2;
        v26 = &v13[8 * (v17 / 2)];
        v27 = a3;
        v19 = a2;
        if (a2 != v27)
        {
          v77 = v25;
          v28 = (v81 - a2) >> 3;
          v19 = a2;
          do
          {
            v29 = &v19[8 * (v28 >> 1)];
            v31 = *v29;
            v30 = v29 + 8;
            v32 = sub_29920B9DC((v31 + 24), (*&v26[v14] + 24));
            if (v32 >= 0)
            {
              v28 >>= 1;
            }

            else
            {
              v28 += ~(v28 >> 1);
            }

            if (v32 < 0)
            {
              v19 = v30;
            }
          }

          while (v28);
          v25 = v77;
        }

        v18 = (v19 - a2) >> 3;
        v20 = &v26[v14];
      }

      else
      {
        v18 = v9 / 2;
        v19 = &a2[8 * (v9 / 2)];
        v20 = a2;
        if (a2 - v13 != v14)
        {
          v21 = (a2 - v13 - v14) >> 3;
          v20 = &v13[v14];
          do
          {
            v22 = &v20[8 * (v21 >> 1)];
            v24 = *v22;
            v23 = v22 + 8;
            if ((sub_29920B9DC((*v19 + 24), (v24 + 24)) & 0x80u) != 0)
            {
              v21 >>= 1;
            }

            else
            {
              v20 = v23;
              v21 += ~(v21 >> 1);
            }
          }

          while (v21);
          v18 = v9 / 2;
        }

        v25 = (v20 - v13 - v14) >> 3;
      }

      v33 = v19;
      v34 = a2 - v20;
      if (a2 != v20)
      {
        v33 = v20;
        v35 = v19 - a2;
        if (v19 != a2)
        {
          if (v20 + 8 == a2)
          {
            v36 = *v20;
            v37 = a2;
            v38 = v19 - a2;
            v39 = v18;
            v40 = v25;
            memmove(v20, v37, v38);
            v25 = v40;
            v18 = v39;
            v33 = &v20[v35];
            *&v20[v35] = v36;
          }

          else if (a2 + 8 == v19)
          {
            v41 = *(v19 - 1);
            v33 = v20 + 8;
            if (v19 - 8 != v20)
            {
              v42 = v18;
              v43 = v25;
              memmove(v20 + 8, v20, v19 - 8 - v20);
              v25 = v43;
              v18 = v42;
            }

            *v20 = v41;
          }

          else
          {
            v44 = v34 >> 3;
            if (v34 >> 3 == v35 >> 3)
            {
              v45 = v20 + 8;
              v46 = a2 + 8;
              do
              {
                v47 = *(v45 - 1);
                *(v45 - 1) = *(v46 - 1);
                *(v46 - 1) = v47;
                if (v45 == a2)
                {
                  break;
                }

                v45 += 8;
                v48 = v46 == v19;
                v46 += 8;
              }

              while (!v48);
              v33 = a2;
            }

            else
            {
              v49 = v35 >> 3;
              v50 = v34 >> 3;
              do
              {
                v51 = v50;
                v50 = v49;
                v49 = v51 % v49;
              }

              while (v49);
              v52 = &v20[8 * v50];
              do
              {
                v54 = *(v52 - 1);
                v52 -= 8;
                v53 = v54;
                v55 = &v52[v34];
                v56 = v52;
                do
                {
                  v57 = v55;
                  *v56 = *v55;
                  v58 = &v55[8 * v44];
                  v59 = __OFSUB__(v44, (v19 - v55) >> 3);
                  v61 = v44 - ((v19 - v55) >> 3);
                  v60 = (v61 < 0) ^ v59;
                  v55 = &v20[8 * v61];
                  if (v60)
                  {
                    v55 = v58;
                  }

                  v56 = v57;
                }

                while (v55 != v52);
                *v57 = v53;
              }

              while (v52 != v20);
              v33 = &v20[v35];
            }
          }
        }
      }

      a4 = -v15 - v25;
      v62 = v9 - v18;
      if (v25 + v18 >= v9 - (v25 + v18) - v15)
      {
        v64 = v25;
        v65 = v18;
        result = sub_2993552D8(v33, v19, v81, -v15 - v25, v9 - v18, v79, v80);
        v19 = v20;
        a6 = v79;
        v62 = v65;
        a4 = v64;
        v81 = v33;
        v13 = v78;
      }

      else
      {
        v63 = v20;
        a6 = v79;
        result = sub_2993552D8(&v13[v14], v63, v33, v25, v18, v79, v80);
        v13 = v33;
      }

      v9 = v62;
      a2 = v19;
      a7 = v80;
      a3 = v81;
      if (!v62)
      {
        return result;
      }
    }

    if (a4 <= v9)
    {
      if (a2 != v13)
      {
        v69 = -a6;
        v70 = a6;
        v71 = v13;
        do
        {
          v72 = *v71;
          v71 += 8;
          *v70++ = v72;
          v69 -= 8;
        }

        while (v71 != a2);
        while (a2 != a3)
        {
          result = sub_29920B9DC((*a2 + 24), (*a6 + 24));
          if ((result & 0x80u) == 0)
          {
            v73 = a6;
          }

          else
          {
            v73 = a2;
          }

          a2 += (result >> 4) & 8;
          a6 += 8 * ((result & 0x80) == 0);
          *v13 = *v73;
          v13 += 8;
          if (v70 == a6)
          {
            return result;
          }
        }

        return memmove(v13, a6, -(a6 + v69));
      }
    }

    else if (a2 != a3)
    {
      v66 = 0;
      do
      {
        *(a6 + v66) = *&a2[v66];
        v66 += 8;
      }

      while (&a2[v66] != a3);
      v67 = (a6 + v66);
      while (a2 != v13)
      {
        result = sub_29920B9DC((*(v67 - 1) + 24), (*(a2 - 1) + 24));
        if ((result & 0x80u) == 0)
        {
          v68 = v67;
        }

        else
        {
          v68 = a2;
        }

        if ((result & 0x80u) == 0)
        {
          v67 -= 8;
        }

        else
        {
          a2 -= 8;
        }

        *(a3 - 1) = *(v68 - 1);
        a3 -= 8;
        if (v67 == a6)
        {
          return result;
        }
      }

      if (v67 != a6)
      {
        v75 = -8;
        do
        {
          v76 = *(v67 - 1);
          v67 -= 8;
          *&a3[v75] = v76;
          v75 -= 8;
        }

        while (v67 != a6);
      }
    }
  }

  return result;
}

unsigned int *sub_2993557E4(unsigned int *result, unsigned int *a2, unint64_t a3, unsigned int *a4, uint64_t a5)
{
  if (a3 >= 2)
  {
    v6 = result;
    if (a3 == 2)
    {
      v7 = *(a2 - 2);
      v8 = *result;
      v9 = -1;
      if (v7 >= *result)
      {
        v9 = 1;
      }

      if (v7 == v8)
      {
        v10 = *(a2 - 1);
        v11 = result[1];
        v12 = v10 >= v11;
        v13 = v10 == v11;
        v9 = -1;
        if (v12)
        {
          v9 = 1;
        }

        if (v13)
        {
          v9 = 0;
        }
      }

      if (v9 < 0)
      {
        *result = v7;
        *(a2 - 2) = v8;
        v14 = result[1];
        result[1] = *(a2 - 1);
        *(a2 - 1) = v14;
      }
    }

    else if (a3 <= 0)
    {
      if (result != a2)
      {
        v21 = result + 2;
        if (result + 2 != a2)
        {
          v22 = 0;
          v23 = result;
          do
          {
            v24 = v21;
            v25 = *v21;
            v26 = *v23;
            v27 = v25 == *v23;
            if (v25 >= *v23)
            {
              v28 = 1;
            }

            else
            {
              v28 = -1;
            }

            if (v27)
            {
              v29 = v23[3];
              v30 = v23[1];
              v31 = v29 == v30;
              if (v29 >= v30)
              {
                v32 = 1;
              }

              else
              {
                v32 = -1;
              }

              if (v31)
              {
                v28 = 0;
              }

              else
              {
                v28 = v32;
              }
            }

            if (v28 < 0)
            {
              v33 = *v24;
              v34 = v24[1];
              v35 = v22;
              while (1)
              {
                v36 = result + v35;
                v37 = *(result + v35 + 4);
                *(v36 + 2) = v26;
                *(v36 + 3) = v37;
                if (!v35)
                {
                  break;
                }

                v26 = *(v36 - 2);
                if (v26 <= v33)
                {
                  v38 = 1;
                }

                else
                {
                  v38 = -1;
                }

                if (v26 == v33)
                {
                  v39 = *(result + v35 - 4);
                  v40 = v39 == v34;
                  v38 = v39 <= v34 ? 1 : -1;
                  if (v40)
                  {
                    v38 = 0;
                  }
                }

                v35 -= 8;
                if ((v38 & 0x80) == 0)
                {
                  v41 = (result + v35 + 8);
                  goto LABEL_48;
                }
              }

              v41 = result;
LABEL_48:
              *v41 = v33;
              v41[1] = v34;
            }

            v21 = v24 + 2;
            v22 += 8;
            v23 = v24;
          }

          while (v24 + 2 != a2);
        }
      }
    }

    else
    {
      v17 = a4;
      v18 = a3 >> 1;
      v19 = &result[2 * (a3 >> 1)];
      v20 = a3 >> 1;
      if (a3 <= a5)
      {
        sub_299355AD0(result, v19, v20, a4);
        v42 = &v17[2 * v18];
        result = sub_299355AD0(&v6[2 * (a3 >> 1)], a2, a3 - (a3 >> 1), v42);
        v43 = &v17[2 * a3];
        v44 = v42;
        while (v44 != v43)
        {
          v45 = *v44;
          if (*v44 >= *v17)
          {
            v46 = 1;
          }

          else
          {
            v46 = -1;
          }

          if (v45 == *v17)
          {
            v47 = v44[1];
            v48 = v17[1];
            v49 = v47 == v48;
            v46 = v47 >= v48 ? 1 : -1;
            if (v49)
            {
              v46 = 0;
            }
          }

          if (v46 < 0)
          {
            v50 = v44;
          }

          else
          {
            v45 = *v17;
            v50 = v17;
          }

          if (v46 < 0)
          {
            v44 += 2;
          }

          else
          {
            v17 += 2;
          }

          *v6 = v45;
          v6[1] = v50[1];
          v6 += 2;
          if (v17 == v42)
          {
            if (v44 != v43)
            {
              v51 = 0;
              do
              {
                v52 = &v44[v51];
                v53 = &v6[v51];
                *v53 = v44[v51];
                v53[1] = v44[v51 + 1];
                v51 += 2;
              }

              while (v52 + 2 != v43);
            }

            return result;
          }
        }

        if (v17 != v42)
        {
          v54 = 0;
          do
          {
            v55 = &v17[v54];
            v56 = &v6[v54];
            *v56 = v17[v54];
            v56[1] = v17[v54 + 1];
            v54 += 2;
          }

          while (v55 + 2 != v42);
        }
      }

      else
      {
        sub_2993557E4(result, v19, v20, a4, a5);
        sub_2993557E4(&v6[2 * (a3 >> 1)], a2, a3 - (a3 >> 1), v17, a5);

        return sub_299355D3C(v6, &v6[2 * (a3 >> 1)], a2, a3 >> 1, a3 - (a3 >> 1), v17, a5);
      }
    }
  }

  return result;
}

unsigned int *sub_299355AD0(unsigned int *result, unsigned int *a2, unint64_t a3, unsigned int *a4)
{
  if (a3)
  {
    v4 = a4;
    v6 = result;
    if (a3 == 1)
    {
LABEL_19:
      *v4 = *v6;
      return result;
    }

    if (a3 == 2)
    {
      v8 = *(a2 - 2);
      v9 = v8 == *result;
      if (v8 >= *result)
      {
        v10 = 1;
      }

      else
      {
        v10 = -1;
      }

      if (v9)
      {
        v11 = *(a2 - 1);
        v12 = result[1];
        v13 = v11 >= v12;
        v14 = v11 == v12;
        v10 = -1;
        if (v13)
        {
          v10 = 1;
        }

        if (v14)
        {
          v10 = 0;
        }
      }

      v15 = (v10 & 0x80) == 0;
      if (v10 < 0)
      {
        v16 = a2 - 2;
      }

      else
      {
        v16 = result;
      }

      *a4 = *v16;
      v4 = a4 + 2;
      if (v15)
      {
        v6 = a2 - 2;
      }

      goto LABEL_19;
    }

    if (a3 > 8)
    {
      v37 = &result[2 * (a3 >> 1)];
      sub_2993557E4(result, v37, a3 >> 1, a4, a3 >> 1);
      result = sub_2993557E4(&v6[2 * (a3 >> 1)], a2, a3 - (a3 >> 1), &v4[2 * (a3 >> 1)], a3 - (a3 >> 1));
      v38 = &v6[2 * (a3 >> 1)];
      while (v38 != a2)
      {
        if (*v38 >= *v6)
        {
          v39 = 1;
        }

        else
        {
          v39 = -1;
        }

        if (*v38 == *v6)
        {
          v40 = v38[1];
          v41 = v6[1];
          v42 = v40 == v41;
          v39 = v40 >= v41 ? 1 : -1;
          if (v42)
          {
            v39 = 0;
          }
        }

        v43 = v39 & 0x80;
        if (v43)
        {
          v44 = v38;
        }

        else
        {
          v44 = v6;
        }

        v38 = (v38 + (v43 >> 4));
        v6 = (v6 + ((v43 >> 4) ^ 8));
        *v4 = *v44;
        v4 += 2;
        if (v6 == v37)
        {
          while (v38 != a2)
          {
            v46 = *v38;
            v38 += 2;
            *v4 = v46;
            v4 += 2;
          }

          return result;
        }
      }

      while (v6 != v37)
      {
        v45 = *v6;
        v6 += 2;
        *v4 = v45;
        v4 += 2;
      }
    }

    else if (result != a2)
    {
      v17 = result + 2;
      *a4 = *result;
      if (result + 2 != a2)
      {
        v18 = 0;
        v19 = a4;
        v20 = a4;
        do
        {
          v21 = v17;
          v22 = *v20;
          v20 += 2;
          v23 = *v17 == v22;
          if (*v17 >= v22)
          {
            v24 = 1;
          }

          else
          {
            v24 = -1;
          }

          if (v23)
          {
            v25 = v6[3];
            v26 = v19[1];
            v27 = v25 == v26;
            v24 = v25 >= v26 ? 1 : -1;
            if (v27)
            {
              v24 = 0;
            }
          }

          if (v24 < 0)
          {
            *(v19 + 1) = *v19;
            v28 = a4;
            if (v19 != a4)
            {
              v29 = v18;
              while (1)
              {
                v30 = *(a4 + v29 - 8);
                if (*v21 >= v30)
                {
                  v31 = 1;
                }

                else
                {
                  v31 = -1;
                }

                if (*v21 == v30)
                {
                  v32 = v6[3];
                  v33 = *(a4 + v29 - 4);
                  v34 = v32 == v33;
                  v31 = v32 >= v33 ? 1 : -1;
                  if (v34)
                  {
                    v31 = 0;
                  }
                }

                if ((v31 & 0x80) == 0)
                {
                  break;
                }

                v35 = (a4 + v29);
                v36 = *(a4 + v29 - 4);
                *v35 = v30;
                v35[1] = v36;
                v29 -= 8;
                if (!v29)
                {
                  v28 = a4;
                  goto LABEL_52;
                }
              }

              v28 = (a4 + v29);
            }

LABEL_52:
            *v28 = *v21;
            v28[1] = v6[3];
          }

          else
          {
            *v20 = *v21;
          }

          v17 = v21 + 2;
          v18 += 8;
          v19 = v20;
          v6 = v21;
        }

        while (v21 + 2 != a2);
      }
    }
  }

  return result;
}

char *sub_299355D3C(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  if (a5)
  {
    while (a4 > a7 && a5 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v10 = 0;
      v11 = *a2;
      v12 = -a4;
      while (1)
      {
        v13 = *&result[v10];
        if (v11 >= v13)
        {
          v14 = 1;
        }

        else
        {
          v14 = -1;
        }

        if (v11 == v13)
        {
          v15 = *(a2 + 1);
          v16 = *&result[v10 + 4];
          v17 = v15 == v16;
          v14 = v15 >= v16 ? 1 : -1;
          if (v17)
          {
            v14 = 0;
          }
        }

        if (v14 < 0)
        {
          break;
        }

        v10 += 8;
        if (__CFADD__(v12++, 1))
        {
          return result;
        }
      }

      v19 = -v12;
      if (-v12 >= a5)
      {
        if (v12 == -1)
        {
          v78 = &result[v10];
          *v78 = v11;
          *a2 = v13;
          v79 = *(v78 + 1);
          *(v78 + 1) = *(a2 + 1);
          *(a2 + 1) = v79;
          return result;
        }

        v32 = v19 / 2;
        v22 = &result[8 * (v19 / 2) + v10];
        v21 = a2;
        if (a2 != a3)
        {
          v33 = *v22;
          v34 = *(v22 + 1);
          v35 = (a3 - a2) >> 3;
          v21 = a2;
          do
          {
            v36 = v35 >> 1;
            v37 = &v21[8 * (v35 >> 1)];
            if (*v37 >= v33)
            {
              v38 = 1;
            }

            else
            {
              v38 = -1;
            }

            if (*v37 == v33)
            {
              v39 = *(v37 + 1);
              v40 = v39 == v34;
              v38 = v39 >= v34 ? 1 : -1;
              if (v40)
              {
                v38 = 0;
              }
            }

            v41 = v37 + 8;
            v35 += ~v36;
            if (v38 < 0)
            {
              v21 = v41;
            }

            else
            {
              v35 = v36;
            }
          }

          while (v35);
        }

        v20 = (v21 - a2) >> 3;
      }

      else
      {
        v20 = a5 / 2;
        v21 = &a2[8 * (a5 / 2)];
        v22 = a2;
        if (a2 - result != v10)
        {
          v23 = *v21;
          v24 = *(v21 + 1);
          v25 = (a2 - result - v10) >> 3;
          v22 = &result[v10];
          do
          {
            v26 = v25 >> 1;
            v27 = &v22[8 * (v25 >> 1)];
            if (*v27 <= v23)
            {
              v28 = 1;
            }

            else
            {
              v28 = -1;
            }

            if (*v27 == v23)
            {
              v29 = *(v27 + 1);
              v30 = v29 == v24;
              v28 = v29 <= v24 ? 1 : -1;
              if (v30)
              {
                v28 = 0;
              }
            }

            v31 = v27 + 8;
            v25 += ~v26;
            if (v28 < 0)
            {
              v25 = v26;
            }

            else
            {
              v22 = v31;
            }
          }

          while (v25);
        }

        v32 = (v22 - result - v10) >> 3;
      }

      v42 = v21;
      if (v22 != a2)
      {
        v42 = v22;
        if (a2 != v21)
        {
          v43 = *v22;
          *v22 = v11;
          *a2 = v43;
          v44 = *(v22 + 1);
          *(v22 + 1) = *(a2 + 1);
          *(a2 + 1) = v44;
          v42 = v22 + 8;
          for (i = a2 + 8; i != v21; i += 8)
          {
            if (v42 == a2)
            {
              a2 = i;
            }

            v46 = *v42;
            *v42 = *i;
            *i = v46;
            v47 = *(v42 + 1);
            *(v42 + 1) = *(i + 1);
            *(i + 1) = v47;
            v42 += 8;
          }

          if (v42 != a2)
          {
            v48 = v42;
            v49 = a2;
            do
            {
              while (1)
              {
                v50 = *v48;
                *v48 = *v49;
                *v49 = v50;
                v51 = *(v48 + 1);
                *(v48 + 1) = *(v49 + 1);
                *(v49 + 1) = v51;
                v48 += 8;
                v49 += 8;
                if (v49 == v21)
                {
                  break;
                }

                if (v48 == a2)
                {
                  a2 = v49;
                }
              }

              v49 = a2;
            }

            while (v48 != a2);
          }
        }
      }

      a4 = -v12 - v32;
      v52 = a5 - v20;
      if (v32 + v20 >= a5 - (v32 + v20) - v12)
      {
        v55 = v21;
        v56 = &result[v10];
        sub_299355D3C(v42, v55, a3, a4, a5 - v20, a6, a7);
        result = v56;
        v21 = v22;
        v52 = v20;
        a4 = v32;
        a3 = v42;
      }

      else
      {
        v53 = v22;
        v54 = a3;
        sub_299355D3C(&result[v10], v53, v42, v32, v20, a6, a7);
        a3 = v54;
        result = v42;
      }

      a5 = v52;
      a2 = v21;
      if (!v52)
      {
        return result;
      }
    }

    if (a4 <= a5)
    {
      if (a2 != result)
      {
        v68 = a6;
        v69 = result;
        do
        {
          v70 = *v69;
          v69 += 8;
          *v68 = v70;
          v68 += 8;
        }

        while (v69 != a2);
        v71 = v68 - 8;
        while (a2 != a3)
        {
          v72 = *a2;
          if (*a2 >= *a6)
          {
            v73 = 1;
          }

          else
          {
            v73 = -1;
          }

          if (v72 == *a6)
          {
            v74 = *(a2 + 1);
            v75 = *(a6 + 1);
            v76 = v74 == v75;
            v73 = v74 >= v75 ? 1 : -1;
            if (v76)
            {
              v73 = 0;
            }
          }

          if (v73 < 0)
          {
            v77 = a2;
          }

          else
          {
            v72 = *a6;
            v77 = a6;
          }

          if (v73 < 0)
          {
            a2 += 8;
          }

          else
          {
            a6 += 8;
          }

          *result = v72;
          *(result + 1) = *(v77 + 1);
          result += 8;
          if (v68 == a6)
          {
            return result;
          }
        }

        v80 = 0;
        do
        {
          v81 = &result[v80];
          v82 = &a6[v80];
          *v81 = *&a6[v80];
          *(v81 + 1) = *&a6[v80 + 4];
          v80 += 8;
        }

        while (v71 != v82);
      }
    }

    else if (a2 != a3)
    {
      v57 = 0;
      do
      {
        *&a6[v57] = *&a2[v57];
        v57 += 8;
      }

      while (&a2[v57] != a3);
      v58 = a3 - 4;
      v59 = &a6[v57];
      while (a2 != result)
      {
        v60 = *(a2 - 2);
        v61 = *(v59 - 2);
        if (v61 >= v60)
        {
          v62 = 1;
        }

        else
        {
          v62 = -1;
        }

        if (v61 == v60)
        {
          v63 = *(v59 - 1);
          v64 = *(a2 - 1);
          v65 = v63 == v64;
          v62 = v63 >= v64 ? 1 : -1;
          if (v65)
          {
            v62 = 0;
          }
        }

        if (v62 < 0)
        {
          v66 = a2;
        }

        else
        {
          v60 = *(v59 - 2);
          v66 = v59;
        }

        if (v62 < 0)
        {
          a2 -= 8;
        }

        else
        {
          v59 -= 8;
        }

        *(v58 - 1) = v60;
        *v58 = *(v66 - 1);
        v58 -= 8;
        if (v59 == a6)
        {
          return result;
        }
      }

      while (v59 != a6)
      {
        v67 = *(v59 - 2);
        v59 -= 8;
        *(v58 - 1) = v67;
        *v58 = *(v59 + 1);
        v58 -= 8;
      }
    }
  }

  return result;
}

uint64_t sub_2993561F0(int a1, __CFDictionary *a2, char **lpsrc, char a4)
{
  if (!lpsrc)
  {
    return 0;
  }

  v6 = **lpsrc;
  v7 = __dynamic_cast(lpsrc, &unk_2A1F64300, &unk_2A1F6D008, 0);
  result = 0;
  if (v7 && (a4 & 1) == 0)
  {
    if (((*(*v7 + 88))(v7) & 1) == 0 && ((*(*v7 + 80))(v7) & 1) == 0 && (v7[56] & 1) == 0 && ((*(*v7 + 176))(v7) & 1) == 0)
    {
      v9 = (*(*v7 + 96))(v7) - 65;
      if (v9 >= 0x1A || ((0x2848453u >> v9) & 1) == 0)
      {
        v10 = MEMORY[0x29EDB8F00];
        if ((v7[48] & 0x80000000) == 0)
        {
          v11 = *MEMORY[0x29EDB8F00];
          CFDictionaryAddValue(a2, @"candidateWithStaticLMProb", *MEMORY[0x29EDB8F00]);
          v12 = v7[48];
          if (v12)
          {
            if (v12 > 3)
            {
LABEL_21:
              v13 = v7[49];
              if ((v13 & 0x80000000) != 0)
              {
                return 1;
              }

              v14 = *v10;
              if (v13)
              {
                if (v13 > 3)
                {
                  goto LABEL_27;
                }
              }

              else
              {
                CFDictionaryAddValue(a2, @"candidateWithTop1HybridCost", *v10);
              }

              CFDictionaryAddValue(a2, @"candidateWithTop4HybridCost", v14);
LABEL_27:
              CFDictionaryAddValue(a2, @"candidateWithHybridCost", v14);
              return 1;
            }
          }

          else
          {
            CFDictionaryAddValue(a2, @"candidateWithTop1StaticLMProb", v11);
          }

          CFDictionaryAddValue(a2, @"candidateWithTop4StaticLMProb", v11);
          goto LABEL_21;
        }

        if ((v7[49] & 0x80000000) == 0)
        {
          goto LABEL_21;
        }
      }
    }

    return 0;
  }

  return result;
}

void *sub_299356458(void *a1)
{
  *a1 = &unk_2A1F73858;
  v2 = a1 + 1;
  sub_2992DC488(a1 + 7);
  sub_299356B48(v2);
  return a1;
}

void sub_2993564AC(void *a1)
{
  *a1 = &unk_2A1F73858;
  v1 = a1 + 1;
  sub_2992DC488(a1 + 7);
  sub_299356B48(v1);

  JUMPOUT(0x29C29BFB0);
}

void sub_299356520(void *a1, unint64_t a2)
{
  v2 = (a1[4] - a1[3]) >> 3;
  if (v2 >= 2 && v2 > a2)
  {
    v4 = a2;
    do
    {
      sub_299356E94(a1 + 1, v4++);
    }

    while (v2 != v4);
  }
}

uint64_t sub_29935657C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0u;
  v6 = (a1 + 48);
  *(a1 + 64) = 0u;
  v7 = a1 + 64;
  *a1 = &unk_2A1F73888;
  *(a1 + 73) = 0u;
  *(a1 + 32) = 16;
  *(a1 + 40) = 0;
  if (a2 >= 0x258)
  {
    v12 = *(a5 + 72);
    if (v12)
    {
      v13 = *(v12 + 8);
      if (*(v13 + 5) != 1 || (v14 = *(v13 + 40)) == 0)
      {
        v14 = *(v13 + 32);
      }
    }

    else
    {
      v14 = 0;
    }

    if (sub_299384558(v14, a2))
    {
      v15 = (*(*v14 + 32))(v14, a2);
      sub_299219AB4(v6, v15);
      *(a1 + 40) = 14;
    }

    else
    {
      v16 = sub_2993337E8(a4, a2);
      if (v16 && (*(v16 + 4) & 0x800) == 0)
      {
        v17 = sub_2993336C8(a4, a2);
        sub_299219AB4(v6, v17);
      }
    }

    v18 = *v6;
    if (*v6)
    {
      v19 = sub_299277300(*a5);
      v20 = sub_2993F7224(v18, v19);
      v21 = v20;
      v35 = v20;
      if (v20)
      {
        v22 = sub_299279A74(v20, *a5 == 5);
        v34 = v22;
        if (v22)
        {
          Mutable = CFStringCreateMutable(*MEMORY[0x29EDB8ED8], 0);
          v33 = Mutable;
          Count = CFArrayGetCount(v22);
          sub_2991A650C(__p, Count);
          if (Count >= 1)
          {
            for (i = 0; i != Count; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v22, i);
              CFStringAppend(Mutable, ValueAtIndex);
              Length = CFStringGetLength(ValueAtIndex);
              *(__p[0] + i) = Length;
            }
          }

          sub_299229BC0((a1 + 56), Mutable);
          v28 = *v7;
          if (*v7)
          {
            *(a1 + 72) = v28;
            operator delete(v28);
            *v7 = 0;
            *(v7 + 8) = 0;
            *(v7 + 16) = 0;
          }

          *(a1 + 64) = *__p;
          *(a1 + 80) = v32;
          __p[1] = 0;
          v32 = 0;
          __p[0] = 0;
          if (*(a1 + 56))
          {
            v29 = CFStringGetLength(*v6);
            *(a1 + 16) = a3;
            *(a1 + 24) = v29;
            *(a1 + 88) = 1;
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          CFRelease(v22);
        }

        CFRelease(v21);
      }
    }
  }

  return a1;
}

void sub_29935681C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, const void *a12, const void *a13, const void *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_29924A4BC(&a12, 0);
  sub_299229F00(&a13, 0);
  sub_299219AB4(&a14, 0);
  v18 = *v16;
  if (*v16)
  {
    *(v14 + 72) = v18;
    operator delete(v18);
  }

  sub_299219AB4((v14 + 56), 0);
  sub_299219AB4(v15, 0);
  _Unwind_Resume(a1);
}

uint64_t sub_2993568BC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1F73CB8;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  *a1 = &unk_2A1F73888;
  v6 = *(a2 + 48);
  v7 = MEMORY[0x29EDB8ED8];
  if (v6)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x29EDB8ED8], v6);
  }

  else
  {
    Copy = 0;
  }

  *(a1 + 48) = Copy;
  v9 = *(a2 + 56);
  if (v9)
  {
    v10 = CFStringCreateCopy(*v7, v9);
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 64) = 0;
  *(a1 + 56) = v10;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  sub_299215EC0(a1 + 64, *(a2 + 64), *(a2 + 72), (*(a2 + 72) - *(a2 + 64)) >> 1);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

void sub_2993569D4(uint64_t a1)
{
  sub_299356A58(a1);

  JUMPOUT(0x29C29BFB0);
}

const __CFString *sub_299356A0C(uint64_t a1)
{
  result = *(a1 + 56);
  if (result)
  {
    LOWORD(result) = CFStringGetLength(result);
  }

  return result;
}

uint64_t sub_299356A34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_299215EC0(a2, *(a1 + 64), *(a1 + 72), (*(a1 + 72) - *(a1 + 64)) >> 1);
}

uint64_t sub_299356A58(uint64_t a1)
{
  *a1 = &unk_2A1F73888;
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  sub_299219AB4((a1 + 56), 0);
  sub_299219AB4((a1 + 48), 0);
  return a1;
}

void sub_299356AC0(void *a1, uint64_t a2)
{
  *a1 = &unk_2A1F73910;
  a1[1] = a2;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  operator new[]();
}

void sub_299356B28(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void *sub_299356B48(void *a1)
{
  *a1 = &unk_2A1F73910;
  sub_299356BC0(a1, 0);
  v2 = a1[5];
  if (v2)
  {
    MEMORY[0x29C29BF70](v2, 0x1000C80BDFB0063);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_299356BC0(uint64_t result, unint64_t a2)
{
  v3 = result;
  v5 = *(result + 16);
  v4 = *(result + 24);
  for (i = v4 - v5; a2 < (v4 - v5) >> 3; i = v4 - v5)
  {
    result = *(v5 + i - 8);
    if (result)
    {
      v7 = sub_29921EA18(result);
      result = MEMORY[0x29C29BFB0](v7, 0x80C407D3415B1);
      v5 = v3[2];
      v4 = v3[3];
    }

    v4 -= 8;
    v3[3] = v4;
  }

  if (!a2)
  {
    v8 = *(*(v3[1] + 88) + 8);

    return sub_299321FA0(v8);
  }

  return result;
}

void sub_299356C70(void *a1)
{
  sub_299356B48(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_299356CA8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = (*(a1 + 24) - v3) >> 3;
  if (v4 >= a3)
  {
    if (v4 == a3)
    {
      operator new();
    }

    v6 = *(v3 + 8 * a3);
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
    if (v8 >= v7)
    {
      v10 = (v8 - *v6) >> 3;
      if ((v10 + 1) >> 61)
      {
        sub_2992DC718();
      }

      v11 = v7 - *v6;
      v12 = v11 >> 2;
      if (v11 >> 2 <= (v10 + 1))
      {
        v12 = v10 + 1;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      if (v13)
      {
        sub_29920B86C(v6, v13);
      }

      v14 = (8 * v10);
      *v14 = a2;
      v9 = 8 * v10 + 8;
      v15 = *(v6 + 8) - *v6;
      v16 = v14 - v15;
      memcpy(v14 - v15, *v6, v15);
      v17 = *v6;
      *v6 = v16;
      *(v6 + 8) = v9;
      *(v6 + 16) = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v8 = a2;
      v9 = (v8 + 1);
    }

    *(v6 + 8) = v9;
  }
}

void sub_299356E94(void *a1, unint64_t a2)
{
  v2 = a1[2];
  if (a2 < (a1[3] - v2) >> 3)
  {
    if (a2 > 1)
    {
      goto LABEL_7;
    }

    if ((*v2)[4] == (*v2)[3])
    {
      sub_299356F38(a1, *(*(*(a1[1] + 88) + 8) + 8), *v2);
    }

    if (a2)
    {
      v2 = a1[2];
LABEL_7:
      v5 = v2[a2 - 1];
      v6 = v5[3];
      v7 = v5[4];
      while (v6 != v7)
      {
        v8 = *v6++;
        sub_299356F38(a1, v8, *(a1[2] + 8 * a2));
      }
    }
  }
}

void sub_299356F38(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v5 = **(*(*(a1 + 8) + 88) + 8);
  if (LMLexiconCursorHasChildren())
  {
    v6 = *a3;
    v7 = a3[1];
    if (*a3 != v7)
    {
      do
      {
        v8 = *v6;
        v9 = *(*v6 + 8);
        v27.length = CFStringGetLength(v9);
        v27.location = 0;
        CFStringGetCharacters(v9, v27, *(a1 + 40));
        v10 = *(*(*(a1 + 8) + 88) + 8);
        v11 = *(a1 + 40);
        CFStringGetLength(*(v8 + 8));
        v12 = *v10;
        CursorByAdvancingWithCharacters = LMLexiconGetCursorByAdvancingWithCharacters();
        if (CursorByAdvancingWithCharacters)
        {
          v15 = a3[4];
          v14 = a3[5];
          if (v15 >= v14)
          {
            v17 = a3[3];
            v18 = v15 - v17;
            if ((v18 + 1) >> 61)
            {
              sub_29924EED0();
            }

            v19 = v14 - v17;
            v20 = v19 >> 2;
            if (v19 >> 2 <= (v18 + 1))
            {
              v20 = v18 + 1;
            }

            if (v19 >= 0x7FFFFFFFFFFFFFF8)
            {
              v21 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v21 = v20;
            }

            if (v21)
            {
              sub_29924EEE8((a3 + 3), v21);
            }

            v22 = (8 * v18);
            *v22 = CursorByAdvancingWithCharacters;
            v16 = 8 * v18 + 8;
            v23 = a3[3];
            v24 = a3[4] - v23;
            v25 = v22 - v24;
            memcpy(v22 - v24, v23, v24);
            v26 = a3[3];
            a3[3] = v25;
            a3[4] = v16;
            a3[5] = 0;
            if (v26)
            {
              operator delete(v26);
            }
          }

          else
          {
            *v15 = CursorByAdvancingWithCharacters;
            v16 = (v15 + 1);
          }

          a3[4] = v16;
        }

        ++v6;
      }

      while (v6 != v7);
    }
  }
}

uint64_t sub_2993570AC(uint64_t result, unint64_t a2, uint64_t a3)
{
  v7 = *(result + 16);
  if (a2 < (*(result + 24) - v7) >> 3)
  {
    v26 = v6;
    v27 = v5;
    v28 = v3;
    v29 = v4;
    v25 = 0;
    v8 = *(v7 + 8 * a2);
    v9 = *(v8 + 24);
    v10 = *(v8 + 32);
    if (v9 != v10)
    {
      v12 = result;
      do
      {
        v13 = *v9;
        v14 = **(*(*(v12 + 8) + 88) + 8);
        result = LMLexiconCursorHasEntries();
        if (result)
        {
          v15 = **(*(*(v12 + 8) + 88) + 8);
          v16 = LMLexiconCursorTraversedLength();
          v17 = *(v12 + 40);
          v18 = **(*(*(v12 + 8) + 88) + 8);
          LMLexiconCursorGetTraversedCharacters();
          v19 = *(v12 + 8);
          if (v13 && **(*(v19 + 88) + 8))
          {
            LMLexiconCursorFirstTokenID();
            v19 = *(v12 + 8);
          }

          v20 = *(v12 + 40);
          v21 = *(v19 + 8);
          if (*(v21 + 5) != 1 || (v22 = *(v21 + 40)) == 0)
          {
            v22 = *(v21 + 32);
          }

          v23 = *(v22 + 8);
          LMLanguageModelConditionalProbability();
          result = (*(a3 + 16))(a3, v20, v16, (v24 * -1000000.0), &v25);
          if (v25)
          {
            break;
          }
        }

        ++v9;
      }

      while (v9 != v10);
    }
  }

  return result;
}

uint64_t sub_299357218(uint64_t result, unint64_t a2, uint64_t a3)
{
  v5 = *(result + 16);
  if (a2 < (*(result + 24) - v5) >> 3)
  {
    v12 = v3;
    v13 = v4;
    v11 = 0;
    v6 = *(v5 + 8 * a2);
    v7 = v6[1];
    if (*v6 != v7)
    {
      v9 = *v6 + 8;
      do
      {
        result = (*(a3 + 16))(a3, *(v9 - 8), &v11);
        if (v11)
        {
          break;
        }

        v10 = v9 == v7;
        v9 += 8;
      }

      while (!v10);
    }
  }

  return result;
}

void sub_2993572A4(uint64_t a1)
{
  v2 = sub_29930AF10();
  sub_299357334(a1, __p);
  if (v11 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  sub_29930B514(v2, 0x80000u, v8, v3, v4, v5, v6, v7, v9);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_299357318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299357334@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_2991D7954(v54);
  v3 = *(a1 + 16);
  v51 = *(a1 + 24);
  if (v3 != v51)
  {
    v4 = 0;
    do
    {
      v5 = *v3;
      v6 = sub_2991C0E9C(&v55, "------------Characters at pos ", 30);
      v7 = MEMORY[0x29C29BD60](v6, v4);
      v8 = sub_2991C0E9C(v7, ", ", 2);
      v9 = MEMORY[0x29C29BD60](v8, (v5[1] - *v5) >> 3);
      v10 = sub_2991C0E9C(v9, " characters --------------- ", 28);
      std::ios_base::getloc((v10 + *(*v10 - 24)));
      v11 = std::locale::use_facet(&v64, MEMORY[0x29EDC93D0]);
      (v11->__vftable[2].~facet_0)(v11, 10);
      std::locale::~locale(&v64);
      std::ostream::put();
      std::ostream::flush();
      v53 = v4;
      v12 = *v5;
      v13 = v5[1];
      while (v12 != v13)
      {
        sub_299277A90(*(*v12 + 8), &v64);
        locale = v64.__locale_;
        v15 = strlen(v64.__locale_);
        v16 = sub_2991C0E9C(&v55, v64.__locale_, v15);
        sub_2991C0E9C(v16, ", ", 2);
        if (locale)
        {
          MEMORY[0x29C29BF70](locale, 0x1000C8077774924);
        }

        v12 += 8;
      }

      std::ios_base::getloc((&v55 + *(v55 - 24)));
      v17 = std::locale::use_facet(&v64, MEMORY[0x29EDC93D0]);
      (v17->__vftable[2].~facet_0)(v17, 10);
      std::locale::~locale(&v64);
      std::ostream::put();
      std::ostream::flush();
      v18 = sub_2991C0E9C(&v55, "------------words at pos ", 25);
      v19 = MEMORY[0x29C29BD60](v18, v53);
      v20 = sub_2991C0E9C(v19, ", ", 2);
      v21 = MEMORY[0x29C29BD60](v20, (v5[4] - v5[3]) >> 3);
      v22 = sub_2991C0E9C(v21, " cursors --------------- ", 25);
      std::ios_base::getloc((v22 + *(*v22 - 24)));
      v23 = std::locale::use_facet(&v64, MEMORY[0x29EDC93D0]);
      (v23->__vftable[2].~facet_0)(v23, 10);
      std::locale::~locale(&v64);
      std::ostream::put();
      std::ostream::flush();
      v52 = v3;
      v25 = v5[3];
      v24 = v5[4];
      while (v25 != v24)
      {
        v26 = *v25;
        v27 = **(*(*(a1 + 8) + 88) + 8);
        if (LMLexiconCursorHasEntries())
        {
          v28 = **(*(*(a1 + 8) + 88) + 8);
          v29 = LMLexiconCursorTraversedLength();
          v30 = *(a1 + 40);
          v31 = **(*(*(a1 + 8) + 88) + 8);
          LMLexiconCursorGetTraversedCharacters();
          v32 = CFStringCreateWithCharacters(0, *(a1 + 40), v29);
          sub_299277A90(v32, &v64);
          v33 = v64.__locale_;
          v34 = strlen(v64.__locale_);
          v35 = sub_2991C0E9C(&v55, v64.__locale_, v34);
          v36 = sub_2991C0E9C(v35, "(", 1);
          v37 = *(a1 + 8);
          if (v26 && **(*(v37 + 88) + 8))
          {
            LMLexiconCursorFirstTokenID();
            v37 = *(a1 + 8);
          }

          v38 = *(v37 + 8);
          if (*(v38 + 5) != 1 || (v39 = *(v38 + 40)) == 0)
          {
            v39 = *(v38 + 32);
          }

          v40 = *(v39 + 8);
          LMLanguageModelConditionalProbability();
          v42 = MEMORY[0x29C29BD30](v36, (v41 * -1000000.0));
          sub_2991C0E9C(v42, "),", 2);
          CFRelease(v32);
          if (v33)
          {
            MEMORY[0x29C29BF70](v33, 0x1000C8077774924);
          }
        }

        ++v25;
      }

      std::ios_base::getloc((&v55 + *(v55 - 24)));
      v43 = std::locale::use_facet(&v64, MEMORY[0x29EDC93D0]);
      (v43->__vftable[2].~facet_0)(v43, 10);
      std::locale::~locale(&v64);
      std::ostream::put();
      std::ostream::flush();
      v4 = v53 + 1;
      v3 = v52 + 1;
    }

    while (v52 + 1 != v51);
  }

  std::ios_base::getloc((&v55 + *(v55 - 24)));
  v44 = std::locale::use_facet(&v64, MEMORY[0x29EDC93D0]);
  (v44->__vftable[2].~facet_0)(v44, 10);
  std::locale::~locale(&v64);
  std::ostream::put();
  std::ostream::flush();
  if ((v62 & 0x10) != 0)
  {
    v46 = v61;
    if (v61 < v58)
    {
      v61 = v58;
      v46 = v58;
    }

    v47 = v57[4].__locale_;
  }

  else
  {
    if ((v62 & 8) == 0)
    {
      v45 = 0;
      a2[23] = 0;
      goto LABEL_34;
    }

    v47 = v57[1].__locale_;
    v46 = v57[3].__locale_;
  }

  v45 = v46 - v47;
  if ((v46 - v47) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2991A11B0();
  }

  if (v45 >= 0x17)
  {
    operator new();
  }

  a2[23] = v45;
  if (v45)
  {
    memmove(a2, v47, v45);
  }

LABEL_34:
  a2[v45] = 0;
  v54[0] = *MEMORY[0x29EDC9528];
  v48 = *(MEMORY[0x29EDC9528] + 72);
  *(v54 + *(v54[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v55 = v48;
  v56 = MEMORY[0x29EDC9570] + 16;
  if (v60 < 0)
  {
    operator delete(__p);
  }

  v56 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v57);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C29BF00](&v63);
}

void sub_299357A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  std::locale::~locale((v30 - 112));
  sub_2991D7BF8(&a14, MEMORY[0x29EDC9528]);
  MEMORY[0x29C29BF00](&a30);
  _Unwind_Resume(a1);
}

void sub_299357B08(void *a1)
{
  v1 = *MEMORY[0x29EDCA608];
  *a1 = &unk_2A1F73940;
  operator new();
}

void sub_2993580F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_29925E994(v21);
  v23 = *(v20 + 8);
  *(v20 + 8) = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_2993581C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(**(a1 + 8) + 168))(&v3);
  return sub_2991ED2F4(&v3);
}

void sub_299358228(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_299358244@<X0>(uint64_t a1@<X0>, char *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v40 = *MEMORY[0x29EDCA608];
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v8 = *(a1 + 8);
  v9 = *(a2 + 1);
  if (a2[23] < 0)
  {
    v10 = *a2;
  }

  (*(*v8 + 144))(&v35);
  if (v35 || (v25 = *a4, *a4 == *(a4 + 8)))
  {
    v11 = a2[23];
    if (v11 >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    if (v11 >= 0)
    {
      v13 = a2[23];
    }

    else
    {
      v13 = *(a2 + 1);
    }

    sub_299251274(v12, v13, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v15 = size + 2;
    v16 = *a4;
    v17 = *(a4 + 8);
    v18 = v17 - *a4;
    v19 = v18 >> 2;
    if (size + 2 <= v18 >> 2)
    {
      if (v15 >= v19)
      {
LABEL_28:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        *(*(a4 + 8) - 4) = *(a1 + 52);
        v25 = *a4;
        goto LABEL_31;
      }

      v24 = &v16[v15];
    }

    else
    {
      v20 = v15 - v19;
      v21 = *(a4 + 16);
      if (v20 > (v21 - v17) >> 2)
      {
        if (!(v15 >> 62))
        {
          v22 = v21 - v16;
          if (v22 >> 1 > v15)
          {
            v15 = v22 >> 1;
          }

          if (v22 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v23 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v15;
          }

          sub_2992F86B0(a4, v23);
        }

        sub_299212A8C();
      }

      bzero(*(a4 + 8), ((4 * size - v18 + 4) & 0xFFFFFFFFFFFFFFFCLL) + 4);
      v24 = (v17 + 4 * v20);
    }

    *(a4 + 8) = v24;
    goto LABEL_28;
  }

LABEL_31:
  *v25 = a3;
  v26 = sub_2993652F8(7u);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v27 = sub_2993652F8(7u);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v30 = a2[23];
      v31 = *a2;
      sub_29935858C(a4, " ", 1uLL, &__p);
      v32 = (v30 >= 0 ? a2 : v31);
      v33 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315394;
      v37 = v32;
      v38 = 2080;
      v39 = v33;
      _os_log_debug_impl(&dword_29918C000, v27, OS_LOG_TYPE_DEBUG, "[SentencePiece tokens] input = [%s]: ids = [%s]", buf, 0x16u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  result = sub_2991ED2F4(&v35);
  v29 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29935853C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_2991ED2F4(&a15);
  v17 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void sub_29935858C(uint64_t a1@<X0>, const std::string::value_type *a2@<X1>, std::string::size_type a3@<X2>, std::string *a4@<X8>)
{
  v5 = *a1;
  if (*a1 == *(a1 + 8))
  {

    sub_2991C6CA8(a4, "");
  }

  else
  {
    a4->__r_.__value_.__r.__words[0] = 0;
    a4->__r_.__value_.__l.__size_ = 0;
    a4->__r_.__value_.__r.__words[2] = 0;
    std::to_string(&v14, *v5);
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v14;
    }

    else
    {
      v9 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    std::string::append(a4, v9, size);
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (*(a1 + 8) - *a1 >= 5uLL)
    {
      v11 = 1;
      do
      {
        std::string::append(a4, a2, a3);
        std::to_string(&v14, *(*a1 + 4 * v11));
        if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = &v14;
        }

        else
        {
          v12 = v14.__r_.__value_.__r.__words[0];
        }

        if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v13 = v14.__r_.__value_.__l.__size_;
        }

        std::string::append(a4, v12, v13);
        if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v14.__r_.__value_.__l.__data_);
        }

        ++v11;
      }

      while (v11 < (*(a1 + 8) - *a1) >> 2);
    }
  }
}

void sub_2993586D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_299358714(void **a1@<X0>, void *a2@<X8>)
{
  v19 = *MEMORY[0x29EDCA608];
  ((*a1)[4])(&__p);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1[1] + 144))(&v12);
  sub_2991ED2F4(&v12);
  v4 = sub_2993652F8(7u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = sub_2993652F8(7u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = v14;
      v8 = __p;
      sub_29935858C(a2, " ", 1uLL, &v11);
      p_p = &__p;
      if (v7 < 0)
      {
        p_p = v8;
      }

      if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v11;
      }

      else
      {
        v10 = v11.__r_.__value_.__r.__words[0];
      }

      *buf = 136315394;
      v16 = p_p;
      v17 = 2080;
      v18 = v10;
      _os_log_debug_impl(&dword_29918C000, v5, OS_LOG_TYPE_DEBUG, "Context: input = [%s]: ids = [%s]", buf, 0x16u);
      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v11.__r_.__value_.__l.__data_);
      }
    }
  }

  if (v14 < 0)
  {
    operator delete(__p);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void sub_2993588D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  v21 = *v19;
  if (*v19)
  {
    *(v19 + 8) = v21;
    operator delete(v21);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_299358978(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  if (a3)
  {
    a4->__r_.__value_.__r.__words[0] = 0;
    a4->__r_.__value_.__l.__size_ = 0;
    a4->__r_.__value_.__r.__words[2] = 0;
    std::string::reserve(a4, 3 * a3);
    if (a3 != -1)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = *a2 != 32;
      while (1)
      {
        v12 = v11;
        if (v10 != a3)
        {
          v12 = a2[v10] == 32;
        }

        if (v11 && v12)
        {
          break;
        }

        if (!v11 && !v12)
        {
          if (v10 != v9)
          {
            v23 = v9 + v8;
            do
            {
              std::string::push_back(a4, 32);
            }

            while (!__CFADD__(v23++, 1));
            v11 = 1;
            goto LABEL_32;
          }

          v11 = 1;
        }

LABEL_33:
        --v8;
        if (v10++ == a3)
        {
          return;
        }
      }

      v13 = a2[v9];
      v14 = v13 - 48;
      v15 = (v13 + 240);
      if (v14 >= 0xA && v15 > 9)
      {
        v27 = 0;
        v25 = 0u;
        v26 = 0u;
        (*(*a1 + 40))(__p, a1);
        if ((v29 & 0x80u) == 0)
        {
          v20 = __p;
        }

        else
        {
          v20 = __p[0];
        }

        if ((v29 & 0x80u) == 0)
        {
          v21 = v29;
        }

        else
        {
          v21 = __p[1];
        }

        std::string::append(a4, v20, v21);
        if ((v29 & 0x80000000) == 0)
        {
          goto LABEL_31;
        }

        v19 = __p[0];
      }

      else
      {
        (*(*a1 + 48))(&v25, a1);
        if ((SBYTE7(v26) & 0x80u) == 0)
        {
          v17 = &v25;
        }

        else
        {
          v17 = v25;
        }

        if ((SBYTE7(v26) & 0x80u) == 0)
        {
          v18 = BYTE7(v26);
        }

        else
        {
          v18 = *(&v25 + 1);
        }

        std::string::append(a4, v17, v18);
        if ((SBYTE7(v26) & 0x80000000) == 0)
        {
          goto LABEL_31;
        }

        v19 = v25;
      }

      operator delete(v19);
LABEL_31:
      v11 = 0;
LABEL_32:
      v9 = v10;
      goto LABEL_33;
    }
  }

  else
  {

    sub_2991C6CA8(a4, "");
  }
}

void sub_299358BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (*(v22 + 23) < 0)
  {
    operator delete(*v22);
  }

  _Unwind_Resume(exception_object);
}

void sub_299358C04(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v7 = *(a2 + 32);
  v5 = a2 + 32;
  v6 = v7;
  v8 = *(v5 + 23);
  if (v8 >= 0)
  {
    v6 = v5;
  }

  if (v8 >= 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = *(v5 + 8);
  }

  v11 = sub_29934B3D0(a1 + 16, v6, v9);

  sub_299358978(a1, v11, v10, a3);
}

void sub_299358C7C(uint64_t a1@<X1>, uint64_t a2@<X2>, std::string *a3@<X8>)
{
  v3 = a2;
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  std::string::reserve(a3, 3 * a2);
  v5 = 0;
  if (v3)
  {
    v6 = 0;
    v34 = v3;
    while (1)
    {
      v7 = *(a1 + 2 * v6);
      v8 = (v7 - 48) >= 0xA && (v7 + 240) >= 0xAu;
      v9 = !v8;
      v10 = &word_29945CE60;
      v11 = 26;
      while (*v10 != v7)
      {
        ++v10;
        v11 -= 2;
        if (!v11)
        {
          v10 = &unk_29945CE7A;
          break;
        }
      }

      v12 = v10 == &unk_29945CE7A ? 0 : v10;
      v13 = v12 - &word_29945CE60;
      v14 = v10 == &unk_29945CE7A ? -1 : v13 >> 1;
      v15 = asc_29941E2D4;
      v16 = 64;
      while (*v15 != v7)
      {
        ++v15;
        v16 -= 2;
        if (!v16)
        {
          v15 = &unk_29941E314;
          break;
        }
      }

      v17 = v15 != &unk_29941E314;
      if (v15 == &unk_29941E314)
      {
        v15 = 0;
      }

      v18 = v15 - asc_29941E2D4 != -2 && v17;
      v19 = &word_29941E316;
      v20 = 74;
      while (*v19 != v7)
      {
        ++v19;
        v20 -= 2;
        if (!v20)
        {
          v19 = &unk_29941E360;
          break;
        }
      }

      v21 = v19 != &unk_29941E360;
      if (v19 == &unk_29941E360)
      {
        v19 = 0;
      }

      v22 = v19 - &word_29941E316 != -2 && v21;
      if (v7 == 44)
      {
        break;
      }

      if (v7 == 65292)
      {
        v23 = &unk_29945CE5C;
LABEL_41:
        v24 = 1;
        goto LABEL_43;
      }

      v24 = 0;
      v23 = 0;
LABEL_43:
      if (v23 - "," == -2)
      {
        v25 = 0;
      }

      else
      {
        v25 = v24;
      }

      v26 = v14 != -1 || v9;
      if (((v26 | v18 | v25 | v22) & 1) == 0)
      {
        goto LABEL_63;
      }

      if (v6 > v5)
      {
        v27 = a1 ? v6 - v5 : 0;
        sub_299277B3C((a1 + 2 * v5), v27, &__p);
        v28 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        v29 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
        std::string::append(a3, v28, v29);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v5 = v6 + 1;
      if ((v25 & 1) == 0)
      {
LABEL_63:
        if (v9)
        {
          std::string::append(a3, "0", 1uLL);
        }

        if (v14 == -1)
        {
          if (v18)
          {
            std::string::append(a3, "xSYMx", 5uLL);
          }
        }

        else
        {
          v30 = strlen(off_29EF131F8[v14]);
          std::string::append(a3, off_29EF131F8[v14], v30);
        }
      }

      ++v6;
      v3 = v34;
      if (v6 == v34)
      {
        goto LABEL_70;
      }
    }

    v23 = ",";
    goto LABEL_41;
  }

LABEL_70:
  if (a1)
  {
    v31 = v3 - v5;
  }

  else
  {
    v31 = 0;
  }

  sub_299277B3C((a1 + 2 * v5), v31, &__p);
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

  std::string::append(a3, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_299358F68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (*(a11 + 23) < 0)
  {
    operator delete(*a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_299358FB4(unsigned __int16 *a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  memset(&v27, 0, sizeof(v27));
  std::string::reserve(&v27, 3 * a2);
  if (a2)
  {
    v6 = 0;
    v7 = 0;
    v8 = a1;
    while (1)
    {
      v9 = *v8;
      if (v9 != 44)
      {
        v10 = v9 - 48;
        v11 = (v9 + 240);
        if (v10 >= 0xA && v11 > 9)
        {
          if (!v6)
          {
            sub_299277B3C(a1, a2, a3);
            goto LABEL_41;
          }

          if (v7 >= 4)
          {
            v7 = 4;
          }

          v13 = *(&off_29EF13260 + v7);
          sub_299277B3C(v8, 1uLL, &v24);
          v14 = strlen(v13);
          v15 = std::string::insert(&v24, 0, v13, v14);
          v16 = *&v15->__r_.__value_.__l.__data_;
          v26 = v15->__r_.__value_.__r.__words[2];
          *__p = v16;
          v15->__r_.__value_.__l.__size_ = 0;
          v15->__r_.__value_.__r.__words[2] = 0;
          v15->__r_.__value_.__r.__words[0] = 0;
          if (v26 >= 0)
          {
            v17 = __p;
          }

          else
          {
            v17 = __p[0];
          }

          if (v26 >= 0)
          {
            v18 = HIBYTE(v26);
          }

          else
          {
            v18 = __p[1];
          }

          std::string::append(&v27, v17, v18);
          if (SHIBYTE(v26) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v24.__r_.__value_.__l.__data_);
          }

          v7 = 0;
        }

        else
        {
          ++v7;
        }
      }

      ++v6;
      ++v8;
      if (a2 == v6)
      {
        goto LABEL_26;
      }
    }
  }

  v7 = 0;
LABEL_26:
  if (v7 >= 4)
  {
    v7 = 4;
  }

  v19 = *(&off_29EF13260 + v7);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v27.__r_.__value_.__l.__size_;
  }

  v21 = strlen(v19);
  sub_2991C1C18(a3, size + v21);
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  if (size)
  {
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v27;
    }

    else
    {
      v22 = v27.__r_.__value_.__r.__words[0];
    }

    memmove(a3, v22, size);
  }

  v23 = (a3 + size);
  if (v21)
  {
    memmove(v23, v19, v21);
  }

  *(v23 + v21) = 0;
LABEL_41:
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }
}

void sub_2993591C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_299359224(void *a1)
{
  sub_29925E920(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993592E4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  v3 = a2[1];
  return result;
}

uint64_t sub_2993592EC(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F73A08))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_299359338@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a3)
  {
    (*(*a2 + 120))(&v6, a2, a1);
    sub_2992A5E4C(a4, &v6);
    sub_2992A5BA0(&v7);
    result = v6;
    v6 = 0;
    if (result)
    {
      return MEMORY[0x29C29BFB0](result, 0x1010C40E4C6A875);
    }
  }

  else
  {

    return sub_2992A5E4C(a4, a1);
  }

  return result;
}

void ***sub_29935940C(void ***a1)
{
  sub_2992A5BA0(a1 + 1);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MEMORY[0x29C29BFB0](v2, 0x1010C40E4C6A875);
  }

  return a1;
}

uint64_t sub_299359458(int a1, __CFDictionary *a2, char **lpsrc)
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
      result = (*(*v7 + 216))(v7);
      if (result)
      {
        v8 = *MEMORY[0x29EDB8F00];
        CFDictionaryAddValue(a2, @"englishCandidateAccepted", *MEMORY[0x29EDB8F00]);
        if ((*(*lpsrc + 12))(lpsrc) == 71)
        {
          CFDictionaryAddValue(a2, @"englishLexiconCandidateAccepted", v8);
        }

        valuePtr = (*(*v7 + 464))(v7);
        v9 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
        CFDictionaryAddValue(a2, @"acceptedEnglishCandidateLength", v9);
        if (v9)
        {
          CFRelease(v9);
        }

        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_29935962C(unsigned __int16 *a1, uint64_t a2, UChar *a3, int a4)
{
  *a3 = 0;
  v16 = 0;
  if (!a2)
  {
    LOBYTE(v7) = 0;
    return v7;
  }

  v7 = 0;
  v8 = 2 * a2 - 2;
  do
  {
    v9 = *a1;
    LODWORD(src) = v7;
    if ((sub_299359728(&v16, &src, v9, a4) & 1) == 0)
    {
      return 0;
    }

    v7 = src;
    v16 = src;
    if ((src & 0x1000000) != 0)
    {
      break;
    }

    ++a1;
    v10 = v8;
    v8 -= 2;
  }

  while (v10);
  if ((~src & 0xFF0000) == 0 || src > 4u || (src & 0xFF00) == 65280)
  {
    return 0;
  }

  if ((src & 0x1000000) == 0)
  {
    return v7;
  }

  src = 0;
  v14 = sub_299359A50(&v16, &src, a4);
  result = 0;
  if (v14)
  {
    u_strcpy(a3, src);
    return v7 & 7;
  }

  return result;
}

uint64_t sub_299359728(unsigned __int8 *a1, uint64_t a2, int a3, char a4)
{
  if (a1[3])
  {
    return 0;
  }

  v4 = 0;
  v6 = *a1;
  if (v6 > 1)
  {
    if (v6 == 3)
    {
      if (a3 == 117)
      {
        *a2 = 4;
        *(a2 + 2) = a1[2];
        v4 = 1;
        *(a2 + 3) = 1;
        return v4;
      }

      return 0;
    }

    if (v6 != 2)
    {
      return v4;
    }

    v10 = 0;
    v11 = &off_29EF11DC8;
    v12 = 10;
    do
    {
      if (aAeiou[v10] == a3)
      {
        v14 = a1[1];
        *(a2 + 1) = v14;
        *(a2 + 2) = v10;
        *(a2 + 3) = 1;
        *a2 = 3;
        v15 = 40;
LABEL_38:
        v18 = **(v11 + v14 * v15) == 0;
        return !v18;
      }

      ++v11;
      ++v10;
      v12 -= 2;
    }

    while (v12);
    if (a3 != 115)
    {
      return 0;
    }

    v16 = a1[1];
    v18 = v16 == 255;
    *(a2 + 2) = v16;
    v17 = byte_299414CD2[v16];
    *(a2 + 1) = v17;
    *(a2 + 3) = 0;
    *a2 = 3;
    v18 = v18 || v17 == 255;
    return !v18;
  }

  if (*a1)
  {
    if (v6 != 1)
    {
      return v4;
    }

    if (a4)
    {
      v7 = 0;
      v8 = &off_29EF12408;
      v9 = 22;
      while (word_299414CFE[v7] != a3)
      {
        ++v8;
        ++v7;
        v9 -= 2;
        if (!v9)
        {
          goto LABEL_33;
        }
      }

      v21 = a1[1];
      *(a2 + 1) = v21;
      *(a2 + 2) = v7;
      v4 = 1;
      *(a2 + 3) = 1;
      *a2 = 2;
      if (*v8[11 * v21])
      {
        return v4;
      }

LABEL_33:
      v22 = 0;
      v23 = &byte_299414C4A;
      v24 = 12;
      while (aAeinouhkstwy[v22 + 7] != a3)
      {
        v4 = 0;
        ++v23;
        ++v22;
        v24 -= 2;
        if (!v24)
        {
          return v4;
        }
      }

      *(a2 + 2) = v22;
      v28 = v23[6 * a1[1]];
      *(a2 + 1) = v28;
      *(a2 + 3) = 0;
      v29 = (*a1 + 1);
      *a2 = *a1 + 1;
      LODWORD(v4) = v28 != -1;
      if (v22 == 0xFF)
      {
        LODWORD(v4) = 0;
      }

      if (v29 < 5)
      {
        return v4;
      }

      else
      {
        return 0;
      }
    }

    v19 = 0;
    v11 = &off_29EF11930;
    v20 = 14;
    do
    {
      if (aAeinouhkstwy[v19] == a3)
      {
        v14 = a1[1];
        *(a2 + 1) = v14;
        *(a2 + 2) = v19;
        *(a2 + 3) = 1;
        *a2 = 2;
        v15 = 56;
        goto LABEL_38;
      }

      ++v11;
      ++v19;
      v20 -= 2;
    }

    while (v20);
    v25 = 0;
    v26 = &byte_299414C4A;
    v27 = 12;
    while (aAeinouhkstwy[v25 + 7] != a3)
    {
      v4 = 0;
      ++v26;
      ++v25;
      v27 -= 2;
      if (!v27)
      {
        return v4;
      }
    }

    *(a2 + 2) = v25;
    v30 = v26[6 * a1[1]];
    *(a2 + 1) = v30;
    *(a2 + 3) = 0;
    *a2 = 2;
    v18 = v25 == 0xFF || v30 == 255;
    return !v18;
  }

  if ((a3 - 97) > 0x19)
  {
    return 0;
  }

  *(a2 + 2) = a3 - 97;
  v13 = byte_299414C16[(a3 - 97)];
  *(a2 + 1) = v13;
  v4 = 1;
  *a2 = 1;
  *(a2 + 3) = v13 == 255;
  if (v13 == 255)
  {
    *(a2 + 1) = 0;
  }

  return v4;
}

uint64_t sub_299359A50(unsigned __int8 *a1, void *a2, int a3)
{
  result = 0;
  v5 = *a1;
  if (v5 <= 4)
  {
    v6 = a1[1];
    if (v6 != 255)
    {
      v7 = a1[2];
      if (v7 != 255)
      {
        result = 0;
        if (*a1 > 2u)
        {
          if (v5 != 3)
          {
            if (a1[3] == 1)
            {
              v10 = &unk_299414CFA;
LABEL_18:
              *a2 = v10;
              return 1;
            }

            return 0;
          }

          if (a1[3] != 1)
          {
            return 0;
          }

          v10 = *(&off_29EF11DC8 + 5 * v6 + v7);
        }

        else if (v5 == 1)
        {
          v10 = *(&off_29EF11860 + v7);
        }

        else
        {
          if (v5 != 2)
          {
            return result;
          }

          if (a1[3] != 1)
          {
            return 0;
          }

          v8 = (&off_29EF11930 + 8 * v6 + v7 - v6);
          v9 = &off_29EF12408 + 11 * v6 + v7;
          if (a3)
          {
            v8 = v9;
          }

          v10 = *v8;
        }

        if (*v10)
        {
          goto LABEL_18;
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_299359B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 24))(&v17);
  (*(*a1 + 40))(&v16, a1, v17, a2, a3);
  v9 = v16;
  v8 = v17;
  v16 = 0;
  v17 = v9;
  if (v8)
  {
    MEMORY[0x29C29BFB0](v8, 0x1000C4052888210);
    v10 = v16;
    v16 = 0;
    if (v10)
    {
      MEMORY[0x29C29BFB0](v10, 0x1000C4052888210);
    }
  }

  v11 = (*(*a1 + 32))(a1, v17);
  v12 = v17;
  if (v11)
  {
    if (*(v17 + 3) == 1)
    {
      (*(*a1 + 48))(a1, v17, a4);
      v12 = v17;
      v13 = *(v17 + 3);
    }

    else
    {
      v13 = 0;
    }

    v17 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v17 = 0;
    if (!v12)
    {
      return v14 & 1;
    }
  }

  MEMORY[0x29C29BFB0](v12, 0x1000C4052888210);
  v14 = v13;
  return v14 & 1;
}

void sub_299359CD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x29C29BFB0](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299359CF8(uint64_t a1, unsigned __int16 *a2, unint64_t a3)
{
  (*(*a1 + 24))(&v7);
  if (a3 >= 2)
  {
    v5 = *a2;
    operator new();
  }

  result = v7;
  v7 = 0;
  if (result)
  {
    return MEMORY[0x29C29BFB0](result, 0x1000C4052888210);
  }

  return result;
}

void sub_299359EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x29C29BFB0](a12, v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_299359EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a3;
  if (!a1)
  {
    sub_2991A2240();
  }

  return (*(*a1 + 48))(a1, a2, &v6, &v5);
}

uint64_t sub_299359F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(*a1 + 24))(&v15);
  (*(*a1 + 40))(&v14, a1, v15, a2, a3);
  v11 = v14;
  v10 = v15;
  v14 = 0;
  v15 = v11;
  if (v10)
  {
    MEMORY[0x29C29BFB0](v10, 0x1000C4052888210);
    v12 = v14;
    v14 = 0;
    if (v12)
    {
      MEMORY[0x29C29BFB0](v12, 0x1000C4052888210);
    }
  }

  (*(*a1 + 56))(a1, v15, a4, a5);
  result = v15;
  v15 = 0;
  if (result)
  {
    return MEMORY[0x29C29BFB0](result, 0x1000C4052888210);
  }

  return result;
}

void sub_29935A060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x29C29BFB0](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_29935A0C4(uint64_t a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a2 <= 4u && a2[1] != 255)
  {
    return a2[2] != 255;
  }

  return result;
}

void sub_29935A238(_Unwind_Exception *a1)
{
  MEMORY[0x29C29BFB0](v3, v1);
  MEMORY[0x29C29BFB0](v2, v1);
  _Unwind_Resume(a1);
}

void sub_29935A274(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  __src[2] = *MEMORY[0x29EDCA608];
  if (!(*(*a1 + 32))(a1))
  {
    goto LABEL_61;
  }

  if (*a2 > 4u || a2[1] == 255 || a2[2] == 255)
  {
LABEL_44:
    v22 = 0;
    v29 = 0;
    goto LABEL_50;
  }

  v6 = *a2;
  *(__src + *a2) = 0;
  v7 = v6;
  if (!v6)
  {
    if (LOWORD(__src[0]))
    {
      goto LABEL_38;
    }

    goto LABEL_44;
  }

  LODWORD(v8) = HIBYTE(v6);
  v9 = HIWORD(v6);
  LODWORD(v10) = v6 >> 8;
  while (1)
  {
    LOBYTE(v31) = v10;
    v30 = v8;
    if (v7 > 2)
    {
      if (v7 == 3)
      {
        if (v8)
        {
          LOBYTE(v8) = 0;
          v11 = aAeiou[v9];
        }

        else
        {
          v11 = 115;
          LOBYTE(v10) = v9;
        }

        v13 = &byte_299414C4A;
        v14 = 126;
        while (*v13 != v10)
        {
          v13 = (v13 + 1);
          if (!--v14)
          {
            v13 = aAeiou;
            break;
          }
        }

        v9 = v13 - &byte_299414C4A - 6 * ((v13 - &byte_299414C4A) / 6uLL);
        v7 = 2;
      }

      else if (v7 == 4)
      {
        LOBYTE(v8) = 0;
        LOBYTE(v10) = 0;
        v7 = 3;
        v11 = 117;
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_35;
    }

    if (v7 != 2)
    {
      break;
    }

    if (v8)
    {
      LOBYTE(v10) = 0;
      v11 = aAeinouhkstwy[v9];
      v12 = &v30;
    }

    else
    {
      v11 = aAeinouhkstwy[v9 + 7];
      v15 = v10;
      v16 = &byte_299414C4A;
      v17 = 126;
      while (*v16 != v15)
      {
        v16 = (v16 + 1);
        if (!--v17)
        {
          v16 = aAeiou;
          break;
        }
      }

      v10 = (v16 - &byte_299414C4A) / 6uLL;
      v12 = &v31;
    }

    *v12 = v10;
    LOBYTE(v10) = v31;
    v8 = byte_299414C16;
    v18 = 26;
    while (*v8 != v31)
    {
      v8 = (v8 + 1);
      if (!--v18)
      {
        v8 = aAeinouhkstwy;
        break;
      }
    }

    LOBYTE(v9) = v8 - byte_299414C16;
    v7 = 1;
    LOBYTE(v8) = v30;
LABEL_35:
    *(__src + v7) = v11;
  }

  if (v7 != 1)
  {
    v11 = 0;
    goto LABEL_35;
  }

  LOWORD(__src[0]) = v9 + 97;
LABEL_38:
  v19 = 0;
  v20 = 0;
  do
  {
    v21 = *(__src + v19 + 2);
    --v20;
    v19 += 2;
  }

  while (v21);
  v22 = -v20;
  if (-v20 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_299212A30();
  }

  if (v22 >= 0xB)
  {
    if ((v22 | 3) == 0xB)
    {
      v23 = 13;
    }

    else
    {
      v23 = (v22 | 3) + 1;
    }

    sub_299212A48(__p, v23);
  }

  v29 = -v20;
  if (v20)
  {
    memcpy(__p, __src, v19);
  }

  else
  {
    v22 = 0;
  }

LABEL_50:
  *(__p + v22) = 0;
  v24 = v29;
  if ((v29 & 0x80u) == 0)
  {
    v25 = __p;
  }

  else
  {
    v25 = __p[0];
  }

  if ((v29 & 0x80u) != 0)
  {
    v24 = __p[1];
  }

  v26 = 2 * v24;
  __src[0] = 0;
  if (a2[3] != 1)
  {
    v32 = 0;
    operator new();
  }

  if ((*(*a1 + 48))(a1, a2, __src))
  {
    LOBYTE(v31) = 0;
    sub_299359EE4(*(a3 + 24), __src, v25, v26);
  }

  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_61:
  v27 = *MEMORY[0x29EDCA608];
}

void sub_29935A72C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  sub_29935AAC0(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unsigned __int8 *sub_29935A774(unsigned __int8 *result, uint64_t a2)
{
  v24 = *MEMORY[0x29EDCA608];
  if ((result[3] & 1) == 0)
  {
    v2 = result;
    v3 = *result;
    if (v3 <= 4 && result[1] != 255 && result[2] != 255)
    {
      if (*result <= 1u)
      {
        if (*result)
        {
          sub_29935AA28(v20, a2);
          v4 = 0;
          for (i = &off_29EF11930; ; ++i)
          {
            v6 = aAeinouhkstwy[v4];
            if (v6 == 110)
            {
              v7 = 0x17u;
            }

            else
            {
              if (v6 != 39)
              {
                goto LABEL_15;
              }

              v7 = 0xDu;
            }

            if (byte_299414C16[v7] == v2[1])
            {
              if (v4 > 5)
              {
                goto LABEL_33;
              }

              goto LABEL_18;
            }

LABEL_15:
            v8 = i[7 * v2[1]];
            if (*v8)
            {
              sub_29935A9D8(v21, v8);
            }

            if (v4 > 5)
            {
LABEL_33:
              v12 = v20;
              goto LABEL_34;
            }

LABEL_18:
            ++v4;
          }
        }

        sub_29935AA28(v22, a2);
        v9 = 0;
        do
        {
          v10 = *(&off_29EF11860 + v9);
          if (*v10)
          {
            sub_29935A9D8(v23, v10);
          }

          v11 = v9 == 200;
          v9 += 8;
        }

        while (!v11);
        v12 = v22;
        goto LABEL_34;
      }

      if (v3 == 2)
      {
        sub_29935AA28(v18, a2);
        v13 = &off_29EF11DC8;
        v14 = 4;
        do
        {
          v15 = v14;
          v16 = v13[5 * v2[1]];
          if (*v16)
          {
            sub_29935A9D8(v19, v16);
          }

          ++v13;
          v14 = v15 - 1;
        }

        while (v15);
        v12 = v18;
LABEL_34:
        result = sub_29935AAC0(v12);
        goto LABEL_35;
      }

      if (v3 == 3)
      {
        result = sub_29935A9D8(*(a2 + 24), &unk_299414CFA);
      }
    }
  }

LABEL_35:
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_29935A9D8(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    sub_2991A2240();
  }

  return (*(*a1 + 48))(a1, &v3);
}

uint64_t sub_29935AA28(uint64_t a1, uint64_t a2)
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

uint64_t sub_29935AAC0(uint64_t a1)
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

__n128 sub_29935ABBC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F73AF0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29935AC30(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F73B60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_29935ACF8(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F73B80;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_29935AD30(uint64_t *a1, const UChar **a2)
{
  u_strcpy((a1[4] + 2), *a2);
  v3 = a1[3];
  v5 = a1[4];
  return sub_299359EE4(*(v3 + 24), &v5, a1[1], a1[2]);
}

uint64_t sub_29935AD88(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F73BE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29935ADD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    sub_2992B0AEC(&v7);
  }

  sub_2992B72DC(&v7, *v3);
  sub_2992A5E4C(a2, &v7);
  v4 = v8;
  v8 = 0;
  if (v4)
  {
    v5 = sub_2992A5BE8(v4);
    MEMORY[0x29C29BFB0](v5, 0x20C4093837F09);
  }

  result = v7;
  v7 = 0;
  if (result)
  {
    return MEMORY[0x29C29BFB0](result, 0x1010C40E4C6A875);
  }

  return result;
}

uint64_t sub_29935AECC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, BOOL *a5)
{
  *a4 = 0;
  v8 = (*(*a1 + 88))(a1);
  v9 = 0;
  if (v8)
  {
    v9 = (*(*a1 + 104))(a1, a2) != 0;
  }

  *a5 = v9;
  return v8;
}

uint64_t sub_29935AF6C(void *a1, _DWORD **a2)
{
  if (!a1[2] || !(*(*a1 + 88))(a1))
  {
    return 0;
  }

  v4 = a1[2];

  return sub_2993E44C8(v4, a2);
}

void **sub_29935AFE8@<X0>(void *a1@<X0>, _DWORD **a2@<X1>, unsigned __int8 *a3@<X2>, unint64_t a4@<X3>, void ***a5@<X8>)
{
  if (!a1[2] || ((*(*a1 + 88))(a1) & 1) == 0)
  {

    sub_2992B0AEC(a5);
  }

  v10 = a1[2];

  return sub_2993E4318(v10, a2, a3, a4, a5);
}

_DWORD *sub_29935B0DC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  sub_2992A5E4C(&v6, a2);
  sub_2992B7350(&v6, *v2);
  v3 = v7;
  v7 = 0;
  if (v3)
  {
    v4 = sub_2992A5BE8(v3);
    MEMORY[0x29C29BFB0](v4, 0x20C4093837F09);
  }

  result = v6;
  v6 = 0;
  if (result)
  {
    return MEMORY[0x29C29BFB0](result, 0x1010C40E4C6A875);
  }

  return result;
}

void sub_29935B1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2992AB338(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29935B1E8(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v4 = v1;
  v265 = *MEMORY[0x29EDCA608];
  sub_29922E144(v258, (v1 + 48));
  v230 = v4;
  while (1)
  {
    std::ios_base::getloc((v258 + *(v258[0] - 24)));
    v5 = std::locale::use_facet(&v232, MEMORY[0x29EDC93D0]);
    (v5->__vftable[2].~facet_0)(v5, 10);
    std::locale::~locale(&v232);
    v6 = std::istream::getline();
    if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0)
    {
      break;
    }

    v232.__locale_ = 0;
    v233 = 0;
    sub_2991C6CA8(&v234, __s);
    memset(v237, 0, sizeof(v237));
    v248 = 0;
    v249 = 0;
    v250 = 0;
    if (sub_29935CC84(__s, &v248, 5uLL) != 5)
    {
      v7 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/seaweed/Dictionary/SeaweedChineseDictionaryCompiler.cpp", 101);
      v8 = sub_2991C0E9C(v7, "(", 1);
      v9 = MEMORY[0x29C29BD30](v8, 234);
      v10 = sub_2991C0E9C(v9, ") [", 3);
      v11 = sub_2991C0E9C(v10, "columnCount == kOriginalFeatureStartColumn + 1", 46);
      v12 = sub_2991C0E9C(v11, "] ", 2);
      v13 = sub_2991C0E9C(v12, "CSV format error: ", 18);
      if ((v236 & 0x80u) == 0)
      {
        v14 = &v234;
      }

      else
      {
        v14 = v234;
      }

      if ((v236 & 0x80u) == 0)
      {
        v15 = v236;
      }

      else
      {
        v15 = v235;
      }

      sub_2991C0E9C(v13, v14, v15);
      sub_299233ED4();
    }

    v16 = v248;
    LODWORD(v232.__locale_) = atoi(*(v248 + 1));
    HIDWORD(v232.__locale_) = atoi(*(v16 + 2));
    v233 = atoi(*(v16 + 3));
    sub_2991C6CA8(&__str, *(v16 + 4));
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      v18 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/seaweed/Dictionary/SeaweedChineseDictionaryCompiler.cpp", 101);
      v19 = sub_2991C0E9C(v18, "(", 1);
      v20 = MEMORY[0x29C29BD30](v19, 241);
      v21 = sub_2991C0E9C(v20, ") [", 3);
      v22 = sub_2991C0E9C(v21, "originalFeature.size()", 22);
      v23 = sub_2991C0E9C(v22, "] ", 2);
      v24 = sub_2991C0E9C(v23, "feature empty error: ", 21);
      if ((v236 & 0x80u) == 0)
      {
        v25 = &v234;
      }

      else
      {
        v25 = v234;
      }

      if ((v236 & 0x80u) == 0)
      {
        v26 = v236;
      }

      else
      {
        v26 = v235;
      }

      sub_2991C0E9C(v24, v25, v26);
      sub_299233ED4();
    }

    v244 = 0;
    v245 = 0;
    v246 = 0;
    v27 = *(v4 + 104);
    if (*(v27 + 24) == 1)
    {
      v28 = sub_29935CC84(*(v248 + 4), &v244, ((*(v27 + 8) - *v27) >> 3) + 1);
      v29 = *(v4 + 104);
      v30 = v29[4];
      if (v28 <= v30)
      {
        v31 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/seaweed/Dictionary/SeaweedChineseDictionaryCompiler.cpp", 101);
        v32 = sub_2991C0E9C(v31, "(", 1);
        v33 = MEMORY[0x29C29BD30](v32, 248);
        v34 = sub_2991C0E9C(v33, ") [", 3);
        v35 = sub_2991C0E9C(v34, "featureColumnCount > data.syllableIDIndexCount()", 48);
        v36 = sub_2991C0E9C(v35, "] ", 2);
        v37 = sub_2991C0E9C(v36, "feature format error: ", 22);
        if ((v236 & 0x80u) == 0)
        {
          v38 = &v234;
        }

        else
        {
          v38 = v234;
        }

        if ((v236 & 0x80u) == 0)
        {
          v39 = v236;
        }

        else
        {
          v39 = v235;
        }

        sub_2991C0E9C(v37, v38, v39);
        sub_299233ED4();
      }

      if (v30 > (v29[1] - *v29) >> 3)
      {
        v40 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/seaweed/Dictionary/SeaweedChineseDictionaryCompiler.cpp", 101);
        v41 = sub_2991C0E9C(v40, "(", 1);
        v42 = MEMORY[0x29C29BD30](v41, 249);
        v43 = sub_2991C0E9C(v42, ") [", 3);
        v44 = sub_2991C0E9C(v43, "data.syllableIDIndexCount() <= data.indexCount()", 48);
        v45 = sub_2991C0E9C(v44, "] ", 2);
        v46 = sub_2991C0E9C(v45, "feature format error (syllable ID index count is too big): ", 59);
        if ((v236 & 0x80u) == 0)
        {
          v47 = &v234;
        }

        else
        {
          v47 = v234;
        }

        if ((v236 & 0x80u) == 0)
        {
          v48 = v236;
        }

        else
        {
          v48 = v235;
        }

        sub_2991C0E9C(v46, v47, v48);
        sub_299233ED4();
      }

      v49 = v28 - 1;
      if (v30 < v28 - 1)
      {
        do
        {
          sub_2991C6CA8(&v256, *(v244 + v30));
          v50 = std::string::append(&v256, ",", 1uLL);
          v51 = *&v50->__r_.__value_.__l.__data_;
          __dst.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
          *&__dst.__r_.__value_.__l.__data_ = v51;
          v50->__r_.__value_.__l.__size_ = 0;
          v50->__r_.__value_.__r.__words[2] = 0;
          v50->__r_.__value_.__r.__words[0] = 0;
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst.__r_.__value_.__r.__words[0];
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v53 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v53 = __dst.__r_.__value_.__l.__size_;
          }

          std::string::append(v237, p_dst, v53);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v256.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v256.__r_.__value_.__l.__data_);
          }

          ++v30;
        }

        while (v49 != v30);
      }

      sub_2991C6CA8(&__dst, *(v244 + v49));
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v54 = &__dst;
      }

      else
      {
        v54 = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v55 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v55 = __dst.__r_.__value_.__l.__size_;
      }

      std::string::append(v237, v54, v55);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      std::string::operator=(v237, &__str);
    }

    v56 = HIBYTE(v237[0].__r_.__value_.__r.__words[2]);
    if ((v237[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v56 = v237[0].__r_.__value_.__l.__size_;
    }

    if (!v56 || (sub_299257B30(v4 + 24, v237) & 1) == 0)
    {
      v57 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/seaweed/Dictionary/SeaweedChineseDictionaryCompiler.cpp", 101);
      v58 = sub_2991C0E9C(v57, "(", 1);
      v59 = MEMORY[0x29C29BD30](v58, 263);
      v60 = sub_2991C0E9C(v59, ") [", 3);
      v61 = sub_2991C0E9C(v60, "false", 5);
      v62 = sub_2991C0E9C(v61, "] ", 2);
      v63 = sub_2991C0E9C(v62, "feature format error: ", 22);
      if ((v236 & 0x80u) == 0)
      {
        v64 = &v234;
      }

      else
      {
        v64 = v234;
      }

      if ((v236 & 0x80u) == 0)
      {
        v65 = v236;
      }

      else
      {
        v65 = v235;
      }

      sub_2991C0E9C(v63, v64, v65);
      sub_299233ED4();
    }

    v241 = 0;
    v242 = 0;
    v243 = 0;
    v67 = *(v4 + 104);
    v68 = *v67;
    v69 = v67[1];
    __dst.__r_.__value_.__r.__words[0] = *v248;
    v66 = __dst.__r_.__value_.__r.__words[0];
    v70 = strlen(__dst.__r_.__value_.__l.__data_);
    v71 = v69 - v68;
    if (v69 == v68)
    {
      v72 = 0;
      v77 = v69;
    }

    else
    {
      v72 = 0;
      v73 = v71 >> 3;
      v74 = (__dst.__r_.__value_.__r.__words[0] + v70);
      while (1)
      {
        v75 = v74;
        if (v66 != v74)
        {
          while (*v66 != 9)
          {
            if (++v66 == v74)
            {
              v75 = v74;
              goto LABEL_77;
            }
          }

          v75 = v66;
        }

LABEL_77:
        *v75 = 0;
        __p[0] = &v241;
        sub_299362F58(__p, &__dst);
        ++v72;
        if (v75 == v74)
        {
          break;
        }

        v66 = v75 + 1;
        __dst.__r_.__value_.__r.__words[0] = (v75 + 1);
        if (v72 == v73)
        {
          v72 = v73;
          break;
        }
      }

      v76 = *(v4 + 104);
      v69 = *v76;
      v77 = v76[1];
    }

    if (v72 != (v77 - v69) >> 3)
    {
      v78 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/seaweed/Dictionary/SeaweedChineseDictionaryCompiler.cpp", 101);
      v79 = sub_2991C0E9C(v78, "(", 1);
      v80 = MEMORY[0x29C29BD30](v79, 268);
      v81 = sub_2991C0E9C(v80, ") [", 3);
      v82 = sub_2991C0E9C(v81, "readingColumnCount == data.indexCount()", 39);
      v83 = sub_2991C0E9C(v82, "] ", 2);
      v84 = sub_2991C0E9C(v83, "reading format error: ", 22);
      if ((v236 & 0x80u) == 0)
      {
        v85 = &v234;
      }

      else
      {
        v85 = v234;
      }

      if ((v236 & 0x80u) == 0)
      {
        v86 = v236;
      }

      else
      {
        v86 = v235;
      }

      sub_2991C0E9C(v84, v85, v86);
      sub_299233ED4();
    }

    if (v77 != v69)
    {
      for (i = 0; i < (*(*(v4 + 104) + 8) - **(v4 + 104)) >> 3; ++i)
      {
        memset(&v240, 0, sizeof(v240));
        sub_2991C6CA8(&v239, *(v241 + i));
        v88 = HIBYTE(v239.__r_.__value_.__r.__words[2]);
        if ((v239.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v88 = v239.__r_.__value_.__l.__size_;
        }

        if (!v88)
        {
          v89 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/seaweed/Dictionary/SeaweedChineseDictionaryCompiler.cpp", 101);
          v90 = sub_2991C0E9C(v89, "(", 1);
          v91 = MEMORY[0x29C29BD30](v90, 272);
          v92 = sub_2991C0E9C(v91, ") [", 3);
          v93 = sub_2991C0E9C(v92, "!readingString.empty()", 22);
          v94 = sub_2991C0E9C(v93, "] ", 2);
          v95 = sub_2991C0E9C(v94, "readingString error: ", 21);
          if ((v236 & 0x80u) == 0)
          {
            v96 = &v234;
          }

          else
          {
            v96 = v234;
          }

          if ((v236 & 0x80u) == 0)
          {
            v97 = v236;
          }

          else
          {
            v97 = v235;
          }

          sub_2991C0E9C(v95, v96, v97);
          sub_299233ED4();
        }

        v98 = *(v4 + 104);
        v99 = *v98 + 8 * i;
        v100 = *v99;
        v101 = *(v98 + 40) != 1 && v100 == 1;
        if (!v101)
        {
          if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
          {
            v103 = v239.__r_.__value_.__l.__size_;
            if (v239.__r_.__value_.__l.__size_ != 1)
            {
              if (v100 != 1)
              {
                goto LABEL_277;
              }

              goto LABEL_120;
            }

            v102 = v239.__r_.__value_.__r.__words[0];
          }

          else
          {
            if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) != 1)
            {
              if (v100 != 1)
              {
                goto LABEL_118;
              }

              goto LABEL_120;
            }

            v102 = &v239;
          }

          if (v102->__r_.__value_.__s.__data_[0] == 42 && *(v98 + 8) - *v98 >= 9uLL)
          {
            std::string::operator=(&v240, &v239);
            goto LABEL_301;
          }

          if (v100 != 1)
          {
            if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
            {
              v103 = v239.__r_.__value_.__l.__size_;
LABEL_277:
              sub_2991A110C(&__dst, v239.__r_.__value_.__l.__data_, v103);
            }

            else
            {
LABEL_118:
              __dst = v239;
            }

            if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v240.__r_.__value_.__l.__data_);
            }

            v240 = __dst;
            if (*(v99 + 4) == 1)
            {
              v203 = HIBYTE(v240.__r_.__value_.__r.__words[2]);
              if ((v240.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v204 = &v240;
              }

              else
              {
                v204 = v240.__r_.__value_.__r.__words[0];
              }

              if ((v240.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v203 = v240.__r_.__value_.__l.__size_;
              }

              if (v203)
              {
                v205 = (v204 + v203 - 1);
                if (v205 > v204)
                {
                  v206 = &v204->__r_.__value_.__s.__data_[1];
                  do
                  {
                    v207 = *(v206 - 1);
                    *(v206 - 1) = v205->__r_.__value_.__s.__data_[0];
                    v205->__r_.__value_.__s.__data_[0] = v207;
                    v205 = (v205 - 1);
                    v180 = v206++ >= v205;
                  }

                  while (!v180);
                }
              }
            }

            if ((sub_299257B30(v4 + 24, &v240) & 1) == 0)
            {
              v208 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/seaweed/Dictionary/SeaweedChineseDictionaryCompiler.cpp", 101);
              v209 = sub_2991C0E9C(v208, "(", 1);
              v210 = MEMORY[0x29C29BD30](v209, 300);
              v211 = sub_2991C0E9C(v210, ") [", 3);
              v212 = sub_2991C0E9C(v211, "iconv.convert(&convertedReading)", 32);
              v213 = sub_2991C0E9C(v212, "] ", 2);
              v214 = sub_2991C0E9C(v213, "convert reading error: ", 23);
              if ((v236 & 0x80u) == 0)
              {
                v215 = &v234;
              }

              else
              {
                v215 = v234;
              }

              if ((v236 & 0x80u) == 0)
              {
                v216 = v236;
              }

              else
              {
                v216 = v235;
              }

              sub_2991C0E9C(v214, v215, v216);
              sub_299233ED4();
            }

            goto LABEL_301;
          }
        }

LABEL_120:
        if (i)
        {
          v104 = 0;
        }

        else
        {
          v104 = *(v4 + 40) == 2;
        }

        v105 = v104;
        if (v104 && (sub_299257B30(v4 + 24, &v239) & 1) == 0)
        {
          v106 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/seaweed/Dictionary/SeaweedChineseDictionaryCompiler.cpp", 101);
          v107 = sub_2991C0E9C(v106, "(", 1);
          v108 = MEMORY[0x29C29BD30](v107, 281);
          v109 = sub_2991C0E9C(v108, ") [", 3);
          v110 = sub_2991C0E9C(v109, "iconv.convert(&readingString)", 29);
          v111 = sub_2991C0E9C(v110, "] ", 2);
          v112 = sub_2991C0E9C(v111, "convert reading error: ", 23);
          if ((v236 & 0x80u) == 0)
          {
            v113 = &v234;
          }

          else
          {
            v113 = v234;
          }

          if ((v236 & 0x80u) == 0)
          {
            v114 = v236;
          }

          else
          {
            v114 = v235;
          }

          sub_2991C0E9C(v112, v113, v114);
          sub_299233ED4();
        }

        v115 = SHIBYTE(v239.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(v239.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          if (v239.__r_.__value_.__l.__size_ != 1)
          {
            goto LABEL_144;
          }

          v116 = v239.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) != 1)
          {
            goto LABEL_144;
          }

          v116 = &v239;
        }

        if (v116->__r_.__value_.__s.__data_[0] != 42)
        {
LABEL_144:
          v231 = i;
          if (v105)
          {
            v118 = *(v4 + 8);
            v119 = *v244;
            memset(&v256, 0, sizeof(v256));
            if ((v239.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v120 = &v239;
            }

            else
            {
              v120 = v239.__r_.__value_.__r.__words[0];
            }

            if ((v239.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v115 = v239.__r_.__value_.__l.__size_;
            }

            if (v115 >= 2)
            {
              v121 = 0;
              data_low = LOWORD(v120->__r_.__value_.__l.__data_);
              v123 = word_299413998;
              while (*v123 != data_low)
              {
                v121 -= 2;
                ++v123;
                if (v121 == -10)
                {
                  if ((data_low - 12549) < 0x25)
                  {
                    goto LABEL_170;
                  }

                  goto LABEL_163;
                }
              }

              v124 = &word_299413998[v121 / 0xFFFFFFFFFFFFFFFELL];
              v101 = v121 == -10;
              v125 = v121 != -10;
              if (v101)
              {
                v124 = 0;
              }

              if (v124 - word_299413998 == -2)
              {
                v125 = 0;
              }

              if ((data_low - 12549) < 0x25 || v125)
              {
LABEL_170:
                LOWORD(v120->__r_.__value_.__l.__data_);
                operator new();
              }

LABEL_163:
              v126 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/seaweed/Dictionary/SeaweedChineseDictionaryCompiler.cpp", 101);
              v127 = sub_2991C0E9C(v126, "(", 1);
              v128 = MEMORY[0x29C29BD30](v127, 371);
              v129 = sub_2991C0E9C(v128, ") [", 3);
              v130 = sub_2991C0E9C(v129, "InputEngine::isZhuyinToneMark(zhuyin[i]) || InputEngine::isValidZhuyin(zhuyin[i])", 81);
              v131 = sub_2991C0E9C(v130, "] ", 2);
              v132 = sub_2991C0E9C(v131, "not valid zhuyin error: ", 24);
              if ((v236 & 0x80u) == 0)
              {
                v133 = &v234;
              }

              else
              {
                v133 = v234;
              }

              if ((v236 & 0x80u) == 0)
              {
                v134 = v236;
              }

              else
              {
                v134 = v235;
              }

              sub_2991C0E9C(v132, v133, v134);
              sub_299233ED4();
            }
          }

          else
          {
            if (*(v4 + 40) == 5)
            {
              v135 = (v4 + 16);
            }

            else
            {
              v135 = v4;
            }

            v118 = *v135;
            v119 = *(v244 + v231);
            memset(&v256, 0, sizeof(v256));
            if ((v239.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v136 = SHIBYTE(v239.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v136 = v239.__r_.__value_.__l.__size_;
            }

            if (v136)
            {
              if ((v239.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v137 = &v239;
              }

              else
              {
                v137 = v239.__r_.__value_.__r.__words[0];
              }

              if (v137->__r_.__value_.__s.__data_[0] - 97 >= 0x1A && v137->__r_.__value_.__s.__data_[0] != 42)
              {
                v138 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/seaweed/Dictionary/SeaweedChineseDictionaryCompiler.cpp", 101);
                v139 = sub_2991C0E9C(v138, "(", 1);
                v140 = MEMORY[0x29C29BD30](v139, 363);
                v141 = sub_2991C0E9C(v140, ") [", 3);
                v142 = sub_2991C0E9C(v141, "(reading[i] >= 'a' && reading[i] <= 'z') || reading[i] == '*'", 61);
                v143 = sub_2991C0E9C(v142, "] ", 2);
                v144 = sub_2991C0E9C(v143, "not valid pinyin error: ", 24);
                if ((v236 & 0x80u) == 0)
                {
                  v145 = &v234;
                }

                else
                {
                  v145 = v234;
                }

                if ((v236 & 0x80u) == 0)
                {
                  v146 = v236;
                }

                else
                {
                  v146 = v235;
                }

                sub_2991C0E9C(v144, v145, v146);
                sub_299233ED4();
              }

              operator new();
            }
          }

          sub_2991C6CA8(__p, v119);
          if ((v255 & 0x80u) == 0)
          {
            v147 = v255;
          }

          else
          {
            v147 = __p[1];
          }

          if (v147)
          {
            for (j = 0; j != v147; ++j)
            {
              if ((v255 & 0x80u) == 0)
              {
                v149 = __p;
              }

              else
              {
                v149 = __p[0];
              }

              LODWORD(__dst.__r_.__value_.__l.__data_) = j[v149] - 48;
              sub_2992141C0(&v256.__r_.__value_.__l.__data_, &__dst);
            }
          }

          __src = 0;
          v252 = 0;
          v253 = 0;
          if ((atomic_load_explicit(&qword_2A1461248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461248))
          {
            sub_2991C6CA8(&__dst, "person");
            v262 = 5000;
            sub_2991C6CA8(v263, "KKK1");
            v264 = 5000;
            sub_29936222C(&__dst, 2);
            for (k = 0; k != -64; k -= 32)
            {
              if (v263[k + 23] < 0)
              {
                operator delete(*&v263[k]);
              }
            }

            __cxa_atexit(sub_299362200, &qword_2A1461250, &dword_29918C000);
            __cxa_guard_release(&qword_2A1461248);
          }

          v150 = v256.__r_.__value_.__l.__size_;
          if (v256.__r_.__value_.__l.__size_ == v256.__r_.__value_.__r.__words[0])
          {
            v164 = 0;
            v153 = v256.__r_.__value_.__l.__size_;
          }

          else
          {
            v151 = 0;
            v152 = 0;
            v153 = v256.__r_.__value_.__l.__size_;
            v150 = v256.__r_.__value_.__r.__words[0];
            do
            {
              v154 = *(v256.__r_.__value_.__r.__words[0] + 4 * v151);
              if (!v154)
              {
                v155 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/seaweed/Dictionary/SeaweedChineseDictionaryCompiler.cpp", 101);
                v156 = sub_2991C0E9C(v155, "(", 1);
                v157 = MEMORY[0x29C29BD30](v156, 323);
                v158 = sub_2991C0E9C(v157, ") [", 3);
                v159 = sub_2991C0E9C(v158, "syllableLengths[i]", 18);
                v160 = sub_2991C0E9C(v159, "] ", 2);
                v161 = sub_2991C0E9C(v160, "syllable length is zero: ", 25);
                if ((v236 & 0x80u) == 0)
                {
                  v162 = &v234;
                }

                else
                {
                  v162 = v234;
                }

                if ((v236 & 0x80u) == 0)
                {
                  v163 = v236;
                }

                else
                {
                  v163 = v235;
                }

                sub_2991C0E9C(v161, v162, v163);
                sub_299233ED4();
              }

              v152 += v154;
              ++v151;
            }

            while (v151 < (v256.__r_.__value_.__l.__size_ - v256.__r_.__value_.__r.__words[0]) >> 2);
            v164 = v152;
          }

          if (v164)
          {
            v165 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/seaweed/Dictionary/SeaweedChineseDictionaryCompiler.cpp", 101);
            v166 = sub_2991C0E9C(v165, "(", 1);
            v167 = MEMORY[0x29C29BD30](v166, 327);
            v168 = sub_2991C0E9C(v167, ") [", 3);
            v169 = sub_2991C0E9C(v168, "total == reading.size()", 23);
            v170 = sub_2991C0E9C(v169, "] ", 2);
            v171 = sub_2991C0E9C(v170, "syllable length doesn't match reading: ", 39);
            if ((v236 & 0x80u) == 0)
            {
              v172 = &v234;
            }

            else
            {
              v172 = v234;
            }

            if ((v236 & 0x80u) == 0)
            {
              v173 = v236;
            }

            else
            {
              v173 = v235;
            }

            sub_2991C0E9C(v171, v172, v173);
            sub_299233ED4();
          }

          v174 = (v153 - v150) >> 2;
          v175 = (v174 - 1);
          if (v174 - 1 >= 0)
          {
            do
            {
              v176 = *(v256.__r_.__value_.__r.__words[0] + 4 * v175);
              v164 = v164 - v176;
              v177 = **v118;
              if (v176)
              {
                v178 = v177 == 0;
              }

              else
              {
                v178 = 1;
              }

              if (!v178)
              {
                v179 = 0;
                do
                {
                  v177 = sub_2993B2448(v118, v177, *(v164 + v179++));
                  if (v177)
                  {
                    v180 = v179 >= v176;
                  }

                  else
                  {
                    v180 = 1;
                  }
                }

                while (!v180);
              }

              if (!v177 || (v181 = v177[1], v181 == 0xFFFF))
              {
                sub_2991D6AE8(&__dst, v164, v176);
                v182 = qword_2A1461258;
                if (!qword_2A1461258)
                {
                  goto LABEL_243;
                }

                v183 = &qword_2A1461258;
                do
                {
                  v184 = sub_29920B9DC((v182 + 32), &__dst.__r_.__value_.__l.__data_);
                  if ((v184 & 0x80u) == 0)
                  {
                    v183 = v182;
                  }

                  v182 = *(v182 + ((v184 >> 4) & 8));
                }

                while (v182);
                if (v183 == &qword_2A1461258 || (sub_29920B9DC(&__dst, v183 + 4) & 0x80) != 0)
                {
LABEL_243:
                  v181 = 0xFFFF;
                }

                else
                {
                  v181 = *(v183 + 28);
                }

                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__dst.__r_.__value_.__l.__data_);
                }

                if (v181 == 0xFFFF)
                {
                  v185 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/seaweed/Dictionary/SeaweedChineseDictionaryCompiler.cpp", 101);
                  v186 = sub_2991C0E9C(v185, "(", 1);
                  v187 = MEMORY[0x29C29BD30](v186, 347);
                  v188 = sub_2991C0E9C(v187, ") [", 3);
                  v189 = sub_2991C0E9C(v188, "syllableID != kInvalidIndex", 27);
                  v190 = sub_2991C0E9C(v189, "] ", 2);
                  v191 = sub_2991C0E9C(v190, "cannot get syllable ID from syllable trie: ", 43);
                  if ((v236 & 0x80u) == 0)
                  {
                    v192 = &v234;
                  }

                  else
                  {
                    v192 = v234;
                  }

                  if ((v236 & 0x80u) == 0)
                  {
                    v193 = v236;
                  }

                  else
                  {
                    v193 = v235;
                  }

                  sub_2991C0E9C(v191, v192, v193);
                  sub_299233ED4();
                }
              }

              v194 = v252;
              if (v252 >= v253)
              {
                v196 = __src;
                v197 = v252 - __src;
                v198 = (v252 - __src) >> 1;
                if (v198 <= -2)
                {
                  sub_299212A8C();
                }

                if (v253 - __src <= v198 + 1)
                {
                  v199 = v198 + 1;
                }

                else
                {
                  v199 = v253 - __src;
                }

                v200 = 0x7FFFFFFFFFFFFFFFLL;
                if (v253 - __src < 0x7FFFFFFFFFFFFFFELL)
                {
                  v200 = v199;
                }

                if (v200)
                {
                  sub_299212A48(&__src, v200);
                }

                *(2 * v198) = v181;
                v195 = 2 * v198 + 2;
                memcpy(0, v196, v197);
                v201 = __src;
                __src = 0;
                v252 = v195;
                v253 = 0;
                if (v201)
                {
                  operator delete(v201);
                }
              }

              else
              {
                *v252 = v181;
                v195 = (v194 + 2);
              }

              v252 = v195;
            }

            while (v175-- > 0);
          }

          sub_2991D6AE8(&v238, __src, v252 - __src);
          if (__src)
          {
            v252 = __src;
            operator delete(__src);
          }

          i = v231;
          if (v255 < 0)
          {
            operator delete(__p[0]);
          }

          if (v256.__r_.__value_.__r.__words[0])
          {
            v256.__r_.__value_.__l.__size_ = v256.__r_.__value_.__r.__words[0];
            operator delete(v256.__r_.__value_.__l.__data_);
          }

          v4 = v230;
          if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v240.__r_.__value_.__l.__data_);
          }

          v240 = v238;
          goto LABEL_301;
        }

        if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
        {
          v240.__r_.__value_.__l.__size_ = 1;
          v117 = v240.__r_.__value_.__r.__words[0];
        }

        else
        {
          *(&v240.__r_.__value_.__s + 23) = 1;
          v117 = &v240;
        }

        LOWORD(v117->__r_.__value_.__l.__data_) = 42;
LABEL_301:
        v217 = HIBYTE(v240.__r_.__value_.__r.__words[2]);
        if ((v240.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v217 = v240.__r_.__value_.__l.__size_;
        }

        if (!v217)
        {
          v218 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/seaweed/Dictionary/SeaweedChineseDictionaryCompiler.cpp", 101);
          v219 = sub_2991C0E9C(v218, "(", 1);
          v220 = MEMORY[0x29C29BD30](v219, 303);
          v221 = sub_2991C0E9C(v220, ") [", 3);
          v222 = sub_2991C0E9C(v221, "!convertedReading.empty()", 25);
          v223 = sub_2991C0E9C(v222, "] ", 2);
          v224 = sub_2991C0E9C(v223, "empty converted reading error: ", 31);
          if ((v236 & 0x80u) == 0)
          {
            v225 = &v234;
          }

          else
          {
            v225 = v234;
          }

          if ((v236 & 0x80u) == 0)
          {
            v226 = v236;
          }

          else
          {
            v226 = v235;
          }

          sub_2991C0E9C(v224, v225, v226);
          sub_299233ED4();
        }

        sub_29924BA6C(v237[1].__r_.__value_.__r.__words, &v240);
        if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v239.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v240.__r_.__value_.__l.__data_);
        }
      }
    }

    if (v241)
    {
      v242 = v241;
      operator delete(v241);
    }

    if (v244)
    {
      v245 = v244;
      operator delete(v244);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v248)
    {
      v249 = v248;
      operator delete(v248);
    }

    (*(v3 + 16))(v3, &v232);
    __dst.__r_.__value_.__r.__words[0] = &v237[1];
    sub_299212B90(&__dst);
    if (SHIBYTE(v237[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v237[0].__r_.__value_.__l.__data_);
    }

    if (v236 < 0)
    {
      operator delete(v234);
    }
  }

  v258[0] = *MEMORY[0x29EDC9518];
  *(v258 + *(v258[0] - 24)) = *(MEMORY[0x29EDC9518] + 24);
  MEMORY[0x29C29BBF0](&v259);
  std::istream::~istream();
  result = MEMORY[0x29C29BF00](&v260);
  v229 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29935C9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, std::locale a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, void *a60, uint64_t a61, uint64_t a62, void *__p)
{
  v76 = (v74 - 121);
  v77 = -64;
  v78 = (v74 - 121);
  while (1)
  {
    v79 = *v78;
    v78 -= 32;
    if (v79 < 0)
    {
      operator delete(*(v76 - 23));
    }

    v76 = v78;
    v77 += 32;
    if (!v77)
    {
      __cxa_guard_abort(&qword_2A1461248);
      if (__p)
      {
        operator delete(__p);
      }

      if (a71 < 0)
      {
        operator delete(a66);
      }

      if (v73)
      {
        operator delete(v73);
      }

      if (a72)
      {
        a73 = a72;
        operator delete(a72);
      }

      if (a41 < 0)
      {
        operator delete(a36);
      }

      if (a47 < 0)
      {
        operator delete(a42);
      }

      if (a48)
      {
        operator delete(a48);
      }

      if (a51)
      {
        operator delete(a51);
      }

      if (a59 < 0)
      {
        operator delete(a54);
      }

      if (a60)
      {
        operator delete(a60);
      }

      a72 = a13;
      sub_299212B90(&a72);
      if (a29 < 0)
      {
        operator delete(a24);
      }

      if (a23 < 0)
      {
        operator delete(a18);
      }

      sub_2991D64B0(&STACK[0x2180], MEMORY[0x29EDC9518]);
      MEMORY[0x29C29BF00](&STACK[0x2328]);
      _Unwind_Resume(a1);
    }
  }
}

unint64_t sub_29935CC84(const char *a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = strlen(a1);
  v23 = 0;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = &v5[v6];
    v9 = a3;
    while (1)
    {
      v10 = v9;
      for (i = v5; ; ++i)
      {
        v12 = *i;
        if (v12 != 9 && v12 != 32)
        {
          break;
        }

        ++v5;
      }

      if (v12 == 34)
      {
        v13 = i + 1;
        v23 = i + 1;
        for (j = i + 1; j < v8; ++j)
        {
          v15 = *j;
          if (v15 == 34)
          {
            v16 = *++j;
            if (v16 != 34)
            {
              break;
            }
          }

          *v13++ = v15;
        }

        v17 = memchr(j, 44, v8 - j);
        if (v17)
        {
          v18 = v17;
        }

        else
        {
          v18 = v8;
        }
      }

      else
      {
        v23 = i;
        v19 = memchr(i, 44, v8 - v5);
        if (v19)
        {
          v20 = v19;
        }

        else
        {
          v20 = v8;
        }

        v18 = &i[v20 - v5];
        v13 = v18;
      }

      v9 = v10 - 1;
      if (v10 < 2)
      {
        v22 = a2;
        sub_299362F58(&v22, &v23);
        if (v10 == 1)
        {
          return a3;
        }
      }

      else
      {
        *v13 = 0;
        v22 = a2;
        sub_299362F58(&v22, &v23);
      }

      ++v7;
      v5 = (v18 + 1);
      if ((v18 + 1) >= v8)
      {
        return v7;
      }
    }
  }

  return 0;
}

uint64_t sub_29935CDF0(uint64_t result, uint64_t a2)
{
  v9 = 0;
  v2 = **(result + 8);
  v3 = *(*(result + 8) + 8);
  if (v2 != v3)
  {
    v5 = 0;
    v6 = ((v3 - v2) >> 5) - 1;
    v7 = v2 + 32;
    do
    {
      result = (*(a2 + 16))(a2, v7 - 32, *(v7 - 8), v5, v6 == v5, &v9);
      if (v9)
      {
        break;
      }

      ++v5;
      v8 = v7 == v3;
      v7 += 32;
    }

    while (!v8);
  }

  return result;
}

uint64_t sub_29935CE94(uint64_t result, uint64_t a2)
{
  v11 = 0;
  v2 = **(result + 8);
  v3 = *(*(result + 8) + 8);
  if (v2 != v3)
  {
    v5 = result;
    v6 = 0;
    v7 = ((v3 - v2) >> 5) - 1;
    v8 = v2 + 32;
    do
    {
      v9 = *(v5 + 16);
      if (*(v9 + 23) < 0)
      {
        v9 = *v9;
      }

      result = (*(a2 + 16))(a2, v8 - 32, v9 + 12 * *(v8 - 8), v6, v7 == v6, &v11);
      if (v11)
      {
        break;
      }

      ++v6;
      v10 = v8 == v3;
      v8 += 32;
    }

    while (!v10);
  }

  return result;
}

uint64_t sub_29935CF5C(int a1, char **a2)
{
  v35 = *MEMORY[0x29EDCA608];
  sub_299232628(v30);
  if (sub_29925C2F4(v30, a1, a2, &off_29EF132B0))
  {
    if (sub_29925D5E4(v30))
    {
      v21.__locale_ = 0;
      v22 = 0;
      v23 = 0;
      v24[0] = &unk_2A1F68348;
      v24[1] = 0;
      v25 = -1;
      v29 = 0;
      *__p = 0u;
      *v27 = 0u;
      v28 = 0u;
      if (!sub_299257A28(v24, "UTF-8", "UTF-16LE"))
      {
        v4 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/seaweed/Dictionary/SeaweedChineseDictionaryCompiler.cpp", 101);
        v5 = sub_2991C0E9C(v4, "(", 1);
        v6 = MEMORY[0x29C29BD30](v5, 176);
        v7 = sub_2991C0E9C(v6, ") [", 3);
        v8 = sub_2991C0E9C(v7, "m_converter.open(UTF-8, UTF-16LE)", 37);
        v9 = sub_2991C0E9C(v8, "] ", 2);
        sub_2991C0E9C(v9, "iconv_open() failed (from UTF-8 to UTF-16LE)", 44);
        sub_299233ED4();
      }

      sub_299233548(v30, "index_config", __s1);
      sub_299233548(v30, "type", &__dst);
      operator new();
    }

    v18 = 0;
  }

  else
  {
    v10 = sub_29920B4CC(&v31);
    sub_2991C6CA8(__s1, v10);
    if ((v34 & 0x80u) == 0)
    {
      v11 = __s1;
    }

    else
    {
      v11 = __s1[0];
    }

    if ((v34 & 0x80u) == 0)
    {
      v12 = v34;
    }

    else
    {
      v12 = __s1[1];
    }

    v13 = sub_2991C0E9C(MEMORY[0x29EDC93C8], v11, v12);
    v14 = sub_2991C0E9C(v13, "\n\n", 2);
    v15 = sub_2991C0E9C(v14, "MeCab: Yet Another Part-of-Speech and Morphological Analyzer\n\nCopyright(C) 2001-2012 Taku Kudo \nCopyright(C) 2004-2008 Nippon Telegraph and Telephone Corporation\n", 162);
    v16 = sub_2991C0E9C(v15, "\ntry '--help' for more information.", 35);
    std::ios_base::getloc((v16 + *(*v16 - 24)));
    v17 = std::locale::use_facet(&v21, MEMORY[0x29EDC93D0]);
    (v17->__vftable[2].~facet_0)(v17, 10);
    std::locale::~locale(&v21);
    std::ostream::put();
    std::ostream::flush();
    if (v34 < 0)
    {
      operator delete(__s1[0]);
    }

    v18 = 0xFFFFFFFFLL;
  }

  sub_2992327FC(v30);
  v19 = *MEMORY[0x29EDCA608];
  return v18;
}

void sub_29935F4C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::locale a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  sub_299233F98(&STACK[0x670], MEMORY[0x29EDC9520]);
  MEMORY[0x29C29BF00](&STACK[0x810]);
  _Block_object_dispose(&STACK[0x378], 8);
  v47 = STACK[0x3A0];
  if (STACK[0x3A0])
  {
    STACK[0x3A8] = v47;
    operator delete(v47);
  }

  _Block_object_dispose(&STACK[0x3B8], 8);
  sub_29923B058(&STACK[0x3E0]);
  _Block_object_dispose(&STACK[0x408], 8);
  sub_2992751B4(&STACK[0x430]);
  _Block_object_dispose(&STACK[0x458], 8);
  sub_2992751B4(&STACK[0x480]);
  _Block_object_dispose(&STACK[0x4A8], 8);
  STACK[0x458] = a11;
  sub_29925A564(&STACK[0x458]);
  _Block_object_dispose(&STACK[0x4E8], 8);
  _Block_object_dispose(&STACK[0x508], 8);
  v48 = STACK[0x528];
  if (STACK[0x528])
  {
    STACK[0x530] = v48;
    operator delete(v48);
  }

  _Block_object_dispose(&STACK[0x540], 8);
  STACK[0x458] = a12;
  sub_299362514(&STACK[0x458]);
  sub_2993623C8(&a20);
  sub_2992327FC(&a46);
  _Unwind_Resume(a1);
}

__n128 sub_29935FB7C(void *a1, uint64_t a2)
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

__n128 sub_29935FBCC(void *a1, uint64_t a2)
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

uint64_t sub_29935FC1C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  v5 = *(a2 + 56);
  v3 = a2 + 56;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 56) = v5;
  *(result + 48) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 64) = v7;
  *(result + 72) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 48);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 56;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

uint64_t sub_29935FC94(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  v5 = *(a2 + 56);
  v3 = a2 + 56;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 56) = v5;
  *(result + 48) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 64) = v7;
  *(result + 72) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 48);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 56;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

__n128 sub_29935FD0C(void *a1, uint64_t a2)
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

void sub_29935FD30(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void sub_29935FD48(void *a1, uint64_t a2)
{
  if (*(*(a1[4] + 8) + 24) < 0xFFFFFFFFuLL)
  {
    v3 = a1[12];
    v4 = sub_29921517C((*(a1[5] + 8) + 40), (a2 + 40));
    if (v4)
    {
      v5 = *(v4 + 10);
    }

    else
    {
      v6 = *(*(a1[4] + 8) + 24);
    }

    operator new();
  }

  __assert_rtn("compile_block_invoke", "SeaweedChineseDictionaryCompiler.cpp", 664, "featureDataOffset < UINT32_MAX");
}

void sub_299360314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_299360378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18)
{
  a18 = &a11;
  sub_299212B90(&a18);
  JUMPOUT(0x29936034CLL);
}

uint64_t sub_299360390(_BYTE *a1, unsigned int *a2)
{
  sub_2991D7954(v6);
  MEMORY[0x29C29BD40](&v7, *a2);
  v12 = 44;
  sub_2991C0E9C(&v7, &v12, 1);
  MEMORY[0x29C29BD70](&v7, *(a2 + 2));
  v12 = 44;
  sub_2991C0E9C(&v7, &v12, 1);
  MEMORY[0x29C29BD70](&v7, *(a2 + 3));
  v12 = 44;
  sub_2991C0E9C(&v7, &v12, 1);
  MEMORY[0x29C29BD40](&v7, a2[2]);
  sub_29928F808(&v8, a1);
  v6[0] = *MEMORY[0x29EDC9528];
  v4 = *(MEMORY[0x29EDC9528] + 72);
  *(v6 + *(v6[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v7 = v4;
  v8 = MEMORY[0x29EDC9570] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C29BF00](&v11);
}

void *sub_2993605A0(void *result, uint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  v5 = *(result[20] + 8 * a2);
  if (v5)
  {
    LODWORD(v5) = v5[4] - v5[2] + v5[6];
  }

  *a3 = v5;
  *a4 = 0;
  if (*(result[13] + 8) - *result[13] != 8)
  {
    v6 = result[23] + 24 * a2;
    v7 = *(v6 + 23);
    if (v7 < 0)
    {
      v7 = *(v6 + 8);
    }

    *a4 = v7;
  }

  *a5 = ((*a3 + 7) & 0xFFFFFFF8) - *a3;
  return result;
}

void *sub_299360610(void *a1, void *a2, uint64_t a3, unsigned int a4)
{
  v44 = *MEMORY[0x29EDCA608];
  v8 = *(a1[20] + 8 * a3);
  if (v8)
  {
    v9 = v8[2] - v8[1] + v8[3];
  }

  std::ostream::write();
  if (a4)
  {
    LOBYTE(v34.__locale_) = 0;
    sub_299354CF8(__p, a4);
    std::ostream::write();
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  v10 = a2 + *(*a2 - 24);
  if ((v10[32] & 5) != 0)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    *__p = 0u;
    v36 = 0u;
    v43 = -1;
    goto LABEL_9;
  }

  result = (*(**(v10 + 5) + 32))(__p);
  if ((v43 & 7) != 0)
  {
LABEL_9:
    v12 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/seaweed/Dictionary/SeaweedChineseDictionaryCompiler.cpp", 101);
    v13 = sub_2991C0E9C(v12, "(", 1);
    v14 = MEMORY[0x29C29BD30](v13, 1083);
    v15 = sub_2991C0E9C(v14, ") [", 3);
    v16 = sub_2991C0E9C(v15, "(out.tellp() % kAlignmentNumber) == 0", 37);
    v17 = sub_2991C0E9C(v16, "] ", 2);
    v18 = sub_2991C0E9C(v17, "trie data is not aligned: ", 26);
    std::ios_base::getloc((v18 + *(*v18 - 24)));
    v19 = std::locale::use_facet(&v34, MEMORY[0x29EDC93D0]);
    (v19->__vftable[2].~facet_0)(v19, 10);
    std::locale::~locale(&v34);
    std::ostream::put();
    std::ostream::flush();
    sub_299233ED4();
  }

  if (*(a1[13] + 8) - *a1[13] != 8)
  {
    v20 = a1[23];
    v21 = (v20 + 24 * a3);
    if ((*(v21 + 23) & 0x8000000000000000) != 0)
    {
      v22 = *v21;
      v23 = *(v20 + 24 * a3 + 8);
    }

    std::ostream::write();
    v24 = a2 + *(*a2 - 24);
    if ((v24[32] & 5) != 0)
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      *__p = 0u;
      v36 = 0u;
      v43 = -1;
      goto LABEL_16;
    }

    result = (*(**(v24 + 5) + 32))(__p);
    if ((v43 & 7) != 0)
    {
LABEL_16:
      v25 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/seaweed/Dictionary/SeaweedChineseDictionaryCompiler.cpp", 101);
      v26 = sub_2991C0E9C(v25, "(", 1);
      v27 = MEMORY[0x29C29BD30](v26, 1087);
      v28 = sub_2991C0E9C(v27, ") [", 3);
      v29 = sub_2991C0E9C(v28, "(out.tellp() % kAlignmentNumber) == 0", 37);
      v30 = sub_2991C0E9C(v29, "] ", 2);
      v31 = sub_2991C0E9C(v30, "token index buffer is not aligned: ", 35);
      std::ios_base::getloc((v31 + *(*v31 - 24)));
      v32 = std::locale::use_facet(&v34, MEMORY[0x29EDC93D0]);
      (v32->__vftable[2].~facet_0)(v32, 10);
      std::locale::~locale(&v34);
      std::ostream::put();
      std::ostream::flush();
      sub_299233ED4();
    }
  }

  v33 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_299360A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, std::locale a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_299360A70(void *a1, uint64_t a2)
{
  if (*(*(a1[4] + 8) + 24) < 0xFFFFFFFFuLL)
  {
    v6 = a1[8];
    v3 = sub_29921517C((*(a1[5] + 8) + 40), (a2 + 40));
    if (v3)
    {
      v4 = *(v3 + 10);
    }

    else
    {
      v5 = *(*(a1[4] + 8) + 24);
    }

    operator new();
  }

  __assert_rtn("validate_block_invoke", "SeaweedChineseDictionaryCompiler.cpp", 819, "featureOffset < UINT32_MAX");
}

void sub_2993611F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::locale a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 113) < 0)
  {
    operator delete(*(v32 - 136));
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_299361284(uint64_t a1, char **a2, _BYTE *a3)
{
  result = sub_2993612FC(a2[1], *(a1 + 40));
  if (result)
  {
    v7 = *(a1 + 48);
    v8 = *v7;
    v9 = *(v7 + 2);
    if (v8 == **a2 && v9 == *(*a2 + 2))
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a3 = 1;
    }
  }

  return result;
}

BOOL sub_2993612FC(char *__src, const void **a2)
{
  if (*__src)
  {
    v3 = 0;
    do
    {
      v4 = *&__src[v3 + 2];
      v3 += 2;
    }

    while (v4);
  }

  else
  {
    v3 = 0;
  }

  sub_2991D6AE8(__p, __src, v3);
  v5 = v14;
  if ((v14 & 0x80u) == 0)
  {
    v6 = v14;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = *(a2 + 23);
  v8 = v7;
  if (v7 < 0)
  {
    v7 = a2[1];
  }

  if (v6 == v7)
  {
    if ((v14 & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    if (v8 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    v11 = memcmp(v9, v10, v6) == 0;
    if (v5 < 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v11 = 0;
    if (v14 < 0)
    {
LABEL_21:
      operator delete(__p[0]);
    }
  }

  return v11;
}

void sub_2993613D0(_BYTE *a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if (v3 < 0)
  {
    v4 = a2;
    a2 = *a2;
    v3 = *(v4 + 8);
  }

  __p = 0;
  v13 = 0;
  v14 = 0;
  sub_2992220D8(&__p, a2, a2 + (v3 & 0xFFFFFFFFFFFFFFFELL), v3 >> 1);
  v5 = __p;
  v6 = v13;
  v7 = v13 - 2;
  if (__p != v13 && v7 > __p)
  {
    v9 = __p + 2;
    do
    {
      v10 = *(v9 - 1);
      *(v9 - 1) = *v7;
      *v7 = v10;
      v7 -= 2;
      v11 = v9 >= v7;
      v9 += 2;
    }

    while (!v11);
  }

  sub_2991D6AE8(a1, v5, v6 - v5);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void sub_299361474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_299361490(uint64_t a1, char **a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = sub_2993612FC(a2[1], *(a1 + 40));
  if (result)
  {
    v9 = *(a1 + 48);
    v10 = *v9;
    v11 = *(v9 + 2);
    if (v10 == **a2 && v11 == *(*a2 + 2))
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      *a5 = 1;
    }
  }

  return result;
}

void sub_299361508(uint64_t a1, uint64_t a2)
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x4002000000;
  v12[3] = sub_2993625A0;
  v12[4] = sub_2993625C4;
  memset(v13, 0, sizeof(v13));
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x4002000000;
  v10[3] = sub_2993625A0;
  v10[4] = sub_2993625C4;
  memset(v11, 0, sizeof(v11));
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x4002000000;
  v8[3] = sub_2993625A0;
  v8[4] = sub_2993625C4;
  memset(v9, 0, sizeof(v9));
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x4002000000;
  v4[3] = sub_2993625F0;
  v4[4] = sub_29936260C;
  __p = 0;
  v6 = 0;
  v7 = 0;
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2000000000;
  v3[3] = 0;
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = sub_299362620;
  v2[3] = &unk_29EF13538;
  v2[4] = v4;
  v2[5] = v12;
  v2[6] = v3;
  v2[7] = v10;
  v2[8] = v8;
  v2[9] = a2;
  (*(*a1 + 16))(a1, v2);
  _Block_object_dispose(v3, 8);
  _Block_object_dispose(v4, 8);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(v8, 8);
  v4[0] = v9;
  sub_299362514(v4);
  _Block_object_dispose(v10, 8);
  v8[0] = v11;
  sub_299362514(v8);
  _Block_object_dispose(v12, 8);
  v10[0] = v13;
  sub_299362514(v10);
}

void sub_299361730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a34, 8);
  sub_299362514(&a23);
  _Block_object_dispose((v35 - 176), 8);
  sub_299362514(&a34);
  _Block_object_dispose((v35 - 112), 8);
  *(v35 - 176) = v34;
  sub_299362514((v35 - 176));
  _Unwind_Resume(a1);
}

uint64_t sub_2993617B0(uint64_t result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      sub_29924EED0();
    }

    v10 = v5 - *result;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      sub_29924EF30(result, v11);
    }

    v12 = 32 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v12 + 24) = *(a2 + 6);
    v7 = 32 * v8 + 32;
    v14 = *(result + 8) - *result;
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
    result = sub_29924EF78(v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v4 + 24) = *(a2 + 6);
    v7 = v4 + 32;
  }

  v3[1] = v7;
  return result;
}

void sub_2993618D0(void *a1)
{
  if (a1[1] == *a1)
  {
    sub_2991C6CA8(__p, "*!@#$%");
    v4 = 0;
    sub_2993617B0(a1, __p);
    if (v3 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_299361934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_299361950(void *a1, uint64_t a2, int a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = v7 - *a2;
  v9 = v8 >> 5;
  if (v8 >> 5 < 1)
  {
    v14 = 0;
    v10 = 0;
  }

  else
  {
    v3 = MEMORY[0x29EDC9418];
    v10 = v8 >> 5;
    while (1)
    {
      v11 = operator new(32 * v10, v3);
      if (v11)
      {
        break;
      }

      v12 = v10 >> 1;
      v13 = v10 > 1;
      v10 >>= 1;
      if (!v13)
      {
        v14 = 0;
        v10 = v12;
        goto LABEL_8;
      }
    }

    v14 = v11;
  }

LABEL_8:
  sub_299364488(v6, v7, v9, v14, v10);
  if (v14)
  {
    operator delete(v14);
  }

  memset(&v99, 0, sizeof(v99));
  memset(v98, 0, sizeof(v98));
  v95 = 0;
  v96 = 0;
  v97 = 0;
  __p = 0;
  v93 = 0;
  v94 = 0;
  v91[0] = &unk_2A1F73C50;
  v91[1] = a2;
  v91[2] = a1 + 14;
  if (a3)
  {
    sub_299361508(v91, &__p);
  }

  v83 = a1;
  v15 = *a2;
  if (*(a2 + 8) == *a2)
  {
    v19 = 0;
    LODWORD(v17) = 0;
    goto LABEL_91;
  }

  v16 = 0;
  LODWORD(v17) = 0;
  v18 = 0;
  v88 = 0;
  v19 = 0;
  do
  {
    if (!v18)
    {
      goto LABEL_73;
    }

    v20 = &v15[4 * v16];
    if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v99.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v99.__r_.__value_.__l.__size_;
    }

    v22 = *(v20 + 23);
    v23 = v22;
    if (v22 < 0)
    {
      v22 = v20[1];
    }

    if (size == v22)
    {
      v24 = (v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v99 : v99.__r_.__value_.__r.__words[0];
      v25 = v23 >= 0 ? &v15[4 * v16] : *v20;
      if (!memcmp(v24, v25, size))
      {
LABEL_73:
        v17 = (v17 + 1);
        if (v17 >= 0x100)
        {
          v44 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/seaweed/Dictionary/SeaweedChineseDictionaryCompiler.cpp", 101);
          v45 = sub_2991C0E9C(v44, "(", 1);
          v46 = MEMORY[0x29C29BD30](v45, 1041);
          v47 = sub_2991C0E9C(v46, ") [", 3);
          v48 = sub_2991C0E9C(v47, "homographCount <= kMaxHomographEntryCount", 41);
          v49 = sub_2991C0E9C(v48, "] ", 2);
          v50 = sub_2991C0E9C(v49, "number of homograph words is greater than ", 42);
          v51 = MEMORY[0x29C29BD60](v50, 255);
          v52 = sub_2991C0E9C(v51, ". string =", 10);
          if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v53 = &v99;
          }

          else
          {
            v53 = v99.__r_.__value_.__r.__words[0];
          }

          if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v54 = HIBYTE(v99.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v54 = v99.__r_.__value_.__l.__size_;
          }

          v55 = sub_2991C0E9C(v52, v53, v54);
          v56 = sub_2991C0E9C(v55, " count=", 7);
          MEMORY[0x29C29BD40](v56, v17);
          sub_299233ED4();
        }

        goto LABEL_88;
      }
    }

    sub_29924BA6C(v98, &v15[4 * v19]);
    v85 = v18;
    v86 = v19;
    v87 = v17;
    v26 = *a2 + 32 * v19;
    v27 = v19 + 1;
    while (v27 < (*(a2 + 8) - *a2) >> 5)
    {
      v28 = *a2 + 32 * v27;
      if (*(v28 + 23) < 0)
      {
        sub_2991A110C(__s, *v28, *(v28 + 8));
      }

      else
      {
        v29 = *v28;
        v101 = *(v28 + 16);
        *__s = v29;
      }

      v30 = *(v26 + 23);
      v31 = *v26;
      if (v30 >= 0)
      {
        v32 = *(v26 + 23);
      }

      else
      {
        v32 = *(v26 + 8);
      }

      v33 = HIBYTE(v101);
      v34 = *&__s[8];
      if (SHIBYTE(v101) >= 0)
      {
        v35 = HIBYTE(v101);
      }

      else
      {
        v35 = *&__s[8];
      }

      if (v32 == v35 && (v30 >= 0 ? (v36 = v26) : (v36 = *v26), SHIBYTE(v101) >= 0 ? (v37 = __s) : (v37 = *__s), !memcmp(v36, v37, v32)))
      {
        ++v27;
        v42 = 1;
        if ((v33 & 0x80) != 0)
        {
          goto LABEL_71;
        }

LABEL_68:
        if ((v42 & 1) == 0)
        {
          goto LABEL_82;
        }
      }

      else
      {
        if ((v33 & 0x80) != 0)
        {
          if (v32 == -1)
          {
LABEL_130:
            sub_29922F0C0();
          }

          if (v34 >= v32)
          {
            v38 = v32;
          }

          else
          {
            v38 = v34;
          }

          v39 = *__s;
        }

        else
        {
          if (v32 == -1)
          {
            goto LABEL_130;
          }

          if (v33 >= v32)
          {
            v38 = v32;
          }

          else
          {
            v38 = v33;
          }

          v39 = __s;
        }

        if (v30 >= 0)
        {
          v40 = v26;
        }

        else
        {
          v40 = v31;
        }

        v41 = memcmp(v39, v40, v38);
        v42 = 0;
        LOBYTE(v3) = v38 != v32 || v41 != 0;
        if ((v33 & 0x80) == 0)
        {
          goto LABEL_68;
        }

LABEL_71:
        operator delete(*__s);
        if ((v42 & 1) == 0)
        {
          goto LABEL_82;
        }
      }
    }

    LOBYTE(v3) = 1;
LABEL_82:
    v57 = __p + 3 * v88;
    if (!a3)
    {
      v57 = &unk_29941E770;
    }

    v58 = v57[1];
    v59 = *v57;
    v60 = v57[2];
    if (v3)
    {
      v61 = 2048;
    }

    else
    {
      v61 = 0;
    }

    *__s = v87 + (v86 << 12) + v61 + (v58 << 8) + (v59 << 9) + (v60 << 10);
    sub_2992141C0(&v95, __s);
    ++v88;
    LODWORD(v17) = 1;
    v18 = v85;
    v19 = v85;
LABEL_88:
    std::string::operator=(&v99, (*a2 + 32 * v16));
    v15 = *a2;
    v16 = ++v18;
  }

  while (v18 < ((*(a2 + 8) - *a2) >> 5));
LABEL_91:
  sub_29924BA6C(v98, &v15[4 * v19]);
  v62 = v83;
  v63 = v93 - 3;
  if (!a3)
  {
    v63 = &unk_29941E770;
  }

  *__s = v17 + (v19 << 12) + (v63[1] << 8) + (*v63 << 9) + (v63[2] << 10) + 2048;
  sub_2992141C0(&v95, __s);
  memset(&v90, 0, sizeof(v90));
  v64 = *a2;
  if (*(a2 + 8) != *a2)
  {
    v65 = 0;
    v66 = 3;
    do
    {
      *__s = v64[v66];
      std::string::append(&v90, __s, 4uLL);
      ++v65;
      v64 = *a2;
      v66 += 4;
    }

    while (v65 < (*(a2 + 8) - *a2) >> 5);
    v67 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
    if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v67 = v90.__r_.__value_.__s.__data_[8];
    }

    v62 = v83;
    if ((v67 & 7) != 0)
    {
      do
      {
        *__s = 0;
        std::string::append(&v90, __s, 4uLL);
        v68 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
        if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v68 = v90.__r_.__value_.__s.__data_[8];
        }
      }

      while ((v68 & 7) != 0);
    }
  }

  sub_2993E408C(&v89, v98, &v95);
  v70 = v62[21];
  v69 = v62[22];
  if (v70 >= v69)
  {
    v71 = (v62 + 20);
    v72 = v62[20];
    v73 = (v70 - v72) >> 3;
    v74 = v73 + 1;
    if ((v73 + 1) >> 61)
    {
      sub_299212A8C();
    }

    v75 = v69 - v72;
    if (v75 >> 2 > v74)
    {
      v74 = v75 >> 2;
    }

    if (v75 >= 0x7FFFFFFFFFFFFFF8)
    {
      v76 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v76 = v74;
    }

    v103 = v71;
    if (v76)
    {
      sub_29924EEE8(v71, v76);
    }

    v77 = (8 * v73);
    *v77 = v89;
    v89 = 0;
    v78 = &v77[-((v70 - v72) >> 3)];
    if (v72 != v70)
    {
      v79 = v72;
      v80 = &v77[-((v70 - v72) >> 3)];
      do
      {
        *v80++ = *v79;
        *v79++ = 0;
      }

      while (v79 != v70);
      do
      {
        if (*v72)
        {
          sub_2993226F0(*v72);
        }

        ++v72;
      }

      while (v72 != v70);
      v72 = *v71;
    }

    v83[20] = v78;
    v83[21] = v77 + 1;
    v81 = v83[22];
    v83[22] = 0;
    v101 = v72;
    v102 = v81;
    *__s = v72;
    *&__s[8] = v72;
    v62 = v83;
    sub_299362E64(__s);
    v82 = v89;
    v83[21] = v77 + 1;
    if (v82)
    {
      sub_2993226F0(v82);
    }
  }

  else
  {
    *v70 = v89;
    v62[21] = v70 + 1;
  }

  sub_29924BA6C(v62 + 23, &v90);
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  if (__p)
  {
    v93 = __p;
    operator delete(__p);
  }

  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }

  *__s = v98;
  sub_299212B90(__s);
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }
}

void sub_29936204C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char *a27, char *a28, uint64_t a29, char a30)
{
  if (a14)
  {
    sub_2993226F0(a14);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    a28 = a27;
    operator delete(a27);
  }

  a27 = &a30;
  sub_299212B90(&a27);
  if (*(v30 - 129) < 0)
  {
    operator delete(*(v30 - 152));
  }

  _Unwind_Resume(a1);
}

uint64_t SeaweedChineseDictionaryBuild(int a1, char **a2)
{
  MEMORY[0x29C29BEC0](&v6);
  v4 = sub_29935CF5C(a1, a2);
  std::ios_base::Init::~Init(&v6);
  return v4;
}

uint64_t sub_2993621A4(uint64_t a1)
{
  v3 = (a1 + 64);
  sub_299212B90(&v3);
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

uint64_t sub_29936222C(uint64_t result, uint64_t a2)
{
  qword_2A1461260 = 0;
  qword_2A1461258 = 0;
  qword_2A1461250 = &qword_2A1461258;
  if (a2)
  {
    v2 = result;
    v3 = 0;
    v4 = (result + 32 * a2);
    v5 = &qword_2A1461258;
    while (v5 != &qword_2A1461258)
    {
      if (v3)
      {
        do
        {
          v6 = v3;
          v3 = *(v3 + 8);
        }

        while (v3);
      }

      else
      {
        v8 = &qword_2A1461258;
        do
        {
          v6 = v8[2];
          v9 = *v6 == v8;
          v8 = v6;
        }

        while (v9);
      }

      result = sub_29920B9DC(v6 + 4, v2);
      if ((result & 0x80) != 0)
      {
        if (!qword_2A1461258)
        {
LABEL_16:
          v10 = &qword_2A1461258;
LABEL_17:
          operator new();
        }

        goto LABEL_8;
      }

      result = sub_299228704(&qword_2A1461250, &v10, v2);
      v7 = result;
LABEL_13:
      if (!*v7)
      {
        goto LABEL_17;
      }

      v2 += 4;
      if (v2 == v4)
      {
        return result;
      }

      v5 = qword_2A1461250;
      v3 = qword_2A1461258;
    }

    v6 = &qword_2A1461258;
    if (!v3)
    {
      goto LABEL_16;
    }

LABEL_8:
    v10 = v6;
    v7 = v6 + 1;
    goto LABEL_13;
  }

  return result;
}

void sub_2993623A0(_Unwind_Exception *a1)
{
  operator delete(v2);
  sub_29922ED64(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_2993623C8(uint64_t a1)
{
  v4 = (a1 + 184);
  sub_299212B90(&v4);
  v4 = (a1 + 160);
  sub_299362490(&v4);
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v2 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v2)
  {
    sub_299362F04(v2);
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  sub_299257C90((a1 + 24));
  sub_299362EB8((a1 + 16), 0);
  sub_299362EB8((a1 + 8), 0);
  sub_299362EB8(a1, 0);
  return a1;
}

void sub_299362490(void ***a1)
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
        v7 = *(v4 - 1);
        v4 -= 8;
        v6 = v7;
        if (v7)
        {
          sub_2993226F0(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_299362514(void ***a1)
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
        v6 = *(v4 - 9);
        v4 -= 4;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

__n128 sub_2993625A0(void *a1, uint64_t a2)
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

__n128 sub_2993625F0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_29936260C(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void sub_299362620(void *a1, std::string *__str, uint64_t a3, uint64_t a4, char a5)
{
  v6 = __str;
  v8 = *(a3 + 4);
  v9 = v8;
  v11 = (v8 & 0x20) == 0 || v8 < 0;
  v12 = (v8 & 0x400) == 0;
  v13 = (v8 & 0x100) == 0;
  v14 = *(a1[4] + 8);
  v15 = (v14 + 40);
  v16 = *(v14 + 63);
  if ((v16 & 0x8000000000000000) != 0)
  {
    if (!*(v14 + 48))
    {
      goto LABEL_23;
    }
  }

  else if (!*(v14 + 63))
  {
    goto LABEL_23;
  }

  v17 = *(v14 + 48);
  if ((v16 & 0x80000000) == 0)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  v20 = size;
  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (v18 == size)
  {
    if ((v16 & 0x80000000) == 0)
    {
      v21 = v15;
    }

    else
    {
      v21 = v15->__r_.__value_.__r.__words[0];
    }

    v22 = __str->__r_.__value_.__r.__words[0];
    if (v20 < 0)
    {
      __str = __str->__r_.__value_.__r.__words[0];
    }

    if (!memcmp(v21, __str, v18))
    {
      if (v11)
      {
        *(*(a1[9] + 8) - 3) = 1;
        if ((v9 & 0x400) != 0)
        {
LABEL_210:
          if ((v9 & 0x100) != 0)
          {
            return;
          }

          goto LABEL_214;
        }
      }

      else if ((v9 & 0x400) != 0)
      {
        goto LABEL_210;
      }

      *(*(a1[9] + 8) - 2) = 1;
      if ((v9 & 0x100) != 0)
      {
        return;
      }

LABEL_214:
      *(*(a1[9] + 8) - 1) = 1;
      return;
    }
  }

LABEL_23:
  std::string::operator=(v15, v6);
  v23 = a1[9];
  v25 = *(v23 + 8);
  v24 = *(v23 + 16);
  if (v25 >= v24)
  {
    v27 = *v23;
    v28 = &v25[-*v23];
    v29 = 0xAAAAAAAAAAAAAAABLL * v28 + 1;
    if (v29 >= 0x5555555555555556)
    {
      sub_299212A8C();
    }

    v30 = 0xAAAAAAAAAAAAAAABLL * (v24 - v27);
    if (2 * v30 > v29)
    {
      v29 = 2 * v30;
    }

    v31 = v30 >= 0x2AAAAAAAAAAAAAAALL;
    v32 = 0x5555555555555555;
    if (!v31)
    {
      v32 = v29;
    }

    v33 = 3 * v32;
    if (v32)
    {
      if (v32 < 0x5555555555555556)
      {
        operator new();
      }

      sub_29919600C();
    }

    *v28 = v11;
    *(v28 + 1) = v12;
    *(v28 + 2) = v13;
    v26 = (v28 + 3);
    memcpy(0, v27, v28);
    v34 = *v23;
    *v23 = 0;
    *(v23 + 8) = v26;
    *(v23 + 16) = v33;
    if (v34)
    {
      operator delete(v34);
    }
  }

  else
  {
    *v25 = v11;
    v25[1] = v12;
    v26 = v25 + 3;
    v25[2] = v13;
  }

  *(v23 + 8) = v26;
  while (1)
  {
    v35 = a1[5];
    v36 = *(v35 + 8);
    v37 = *(v36 + 48);
    if (*(v36 + 40) == v37)
    {
      break;
    }

    if ((a5 & 1) == 0)
    {
      v38 = *(v37 - 9);
      v39 = v38 >= 0 ? *(v37 - 9) : *(v37 - 24);
      v40 = SHIBYTE(v6->__r_.__value_.__r.__words[2]);
      if ((v40 & 0x8000000000000000) != 0)
      {
        if (v39 == -1)
        {
          goto LABEL_215;
        }

        v42 = v6->__r_.__value_.__r.__words[0];
        v41 = v6->__r_.__value_.__l.__size_ >= v39 ? v39 : v6->__r_.__value_.__l.__size_;
      }

      else
      {
        if (v39 == -1)
        {
          goto LABEL_215;
        }

        v41 = v40 >= v39 ? v39 : SHIBYTE(v6->__r_.__value_.__r.__words[2]);
        v42 = v6;
      }

      v43 = v38 >= 0 ? (v37 - 32) : *(v37 - 32);
      v44 = !memcmp(v42, v43, v41) && v41 == v39;
      if (v44 && !v11)
      {
        break;
      }
    }

    if (v11)
    {
      v46 = *(v37 - 8);
      v47 = *(v37 - 9);
      if (v47 >= 0)
      {
        v48 = *(v37 - 9);
      }

      else
      {
        v48 = *(v37 - 24);
      }

      v49 = SHIBYTE(v6->__r_.__value_.__r.__words[2]);
      if ((v49 & 0x8000000000000000) != 0)
      {
        if (v48 == -1)
        {
LABEL_215:
          sub_29922F0C0();
        }

        v51 = v6->__r_.__value_.__r.__words[0];
        if (v6->__r_.__value_.__l.__size_ >= v48)
        {
          v50 = v48;
        }

        else
        {
          v50 = v6->__r_.__value_.__l.__size_;
        }
      }

      else
      {
        if (v48 == -1)
        {
          goto LABEL_215;
        }

        if (v49 >= v48)
        {
          v50 = v48;
        }

        else
        {
          v50 = SHIBYTE(v6->__r_.__value_.__r.__words[2]);
        }

        v51 = v6;
      }

      if (v47 >= 0)
      {
        v52 = (v37 - 32);
      }

      else
      {
        v52 = *(v37 - 32);
      }

      if (!memcmp(v51, v52, v50) && v50 == v48)
      {
        *(*a1[9] + 3 * v46) = 1;
        v35 = a1[5];
      }
    }

    v54 = *(v35 + 8);
    v55 = *(v54 + 48);
    v56 = (v55 - 32);
    if (*(v55 - 9) < 0)
    {
      operator delete(*v56);
    }

    *(v54 + 48) = v56;
  }

  v57 = *(a1[6] + 8);
  if (SHIBYTE(v6->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_2991A110C(__p, v6->__r_.__value_.__l.__data_, v6->__r_.__value_.__l.__size_);
  }

  else
  {
    *__p = *&v6->__r_.__value_.__l.__data_;
    v105 = v6->__r_.__value_.__r.__words[2];
  }

  v106 = *(v57 + 24);
  sub_299362D3C(v36 + 40, __p);
  if (SHIBYTE(v105) < 0)
  {
    operator delete(__p[0]);
  }

  while (1)
  {
    v74 = a1[7];
    v78 = *(v74 + 8);
    v79 = *(v78 + 48);
    if (*(v78 + 40) == v79)
    {
      break;
    }

    if ((a5 & 1) == 0)
    {
      v58 = *(v79 - 9);
      v59 = v58 >= 0 ? *(v79 - 9) : *(v79 - 24);
      v60 = SHIBYTE(v6->__r_.__value_.__r.__words[2]);
      if ((v60 & 0x8000000000000000) != 0)
      {
        if (v59 == -1)
        {
          goto LABEL_215;
        }

        v62 = v6->__r_.__value_.__r.__words[0];
        v61 = v6->__r_.__value_.__l.__size_ >= v59 ? v59 : v6->__r_.__value_.__l.__size_;
      }

      else
      {
        if (v59 == -1)
        {
          goto LABEL_215;
        }

        v61 = v60 >= v59 ? v59 : SHIBYTE(v6->__r_.__value_.__r.__words[2]);
        v62 = v6;
      }

      v63 = v58 >= 0 ? (v79 - 32) : *(v79 - 32);
      v64 = !memcmp(v62, v63, v61) && v61 == v59;
      if (v64 && (v9 & 0x400) != 0)
      {
        break;
      }
    }

    if ((v9 & 0x400) == 0)
    {
      v66 = *(v79 - 8);
      v67 = *(v79 - 9);
      if (v67 >= 0)
      {
        v68 = *(v79 - 9);
      }

      else
      {
        v68 = *(v79 - 24);
      }

      v69 = SHIBYTE(v6->__r_.__value_.__r.__words[2]);
      if ((v69 & 0x8000000000000000) != 0)
      {
        if (v68 == -1)
        {
          goto LABEL_215;
        }

        v71 = v6->__r_.__value_.__r.__words[0];
        if (v6->__r_.__value_.__l.__size_ >= v68)
        {
          v70 = v68;
        }

        else
        {
          v70 = v6->__r_.__value_.__l.__size_;
        }
      }

      else
      {
        if (v68 == -1)
        {
          goto LABEL_215;
        }

        if (v69 >= v68)
        {
          v70 = v68;
        }

        else
        {
          v70 = SHIBYTE(v6->__r_.__value_.__r.__words[2]);
        }

        v71 = v6;
      }

      if (v67 >= 0)
      {
        v72 = (v79 - 32);
      }

      else
      {
        v72 = *(v79 - 32);
      }

      if (!memcmp(v71, v72, v70) && v70 == v68)
      {
        *(*a1[9] + 3 * v66 + 1) = 1;
        v74 = a1[7];
      }
    }

    v75 = *(v74 + 8);
    v76 = *(v75 + 48);
    v77 = (v76 - 32);
    if (*(v76 - 9) < 0)
    {
      operator delete(*v77);
    }

    *(v75 + 48) = v77;
  }

  v80 = *(a1[6] + 8);
  if (SHIBYTE(v6->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_2991A110C(__p, v6->__r_.__value_.__l.__data_, v6->__r_.__value_.__l.__size_);
  }

  else
  {
    *__p = *&v6->__r_.__value_.__l.__data_;
    v105 = v6->__r_.__value_.__r.__words[2];
  }

  v106 = *(v80 + 24);
  sub_299362D3C(v78 + 40, __p);
  if (SHIBYTE(v105) < 0)
  {
    operator delete(__p[0]);
  }

  while (1)
  {
    v97 = a1[8];
    v101 = *(v97 + 8);
    v102 = *(v101 + 48);
    if (*(v101 + 40) == v102)
    {
      break;
    }

    if ((a5 & 1) == 0)
    {
      v81 = *(v102 - 9);
      v82 = v81 >= 0 ? *(v102 - 9) : *(v102 - 24);
      v83 = SHIBYTE(v6->__r_.__value_.__r.__words[2]);
      if ((v83 & 0x8000000000000000) != 0)
      {
        if (v82 == -1)
        {
          goto LABEL_215;
        }

        v85 = v6->__r_.__value_.__r.__words[0];
        v84 = v6->__r_.__value_.__l.__size_ >= v82 ? v82 : v6->__r_.__value_.__l.__size_;
      }

      else
      {
        if (v82 == -1)
        {
          goto LABEL_215;
        }

        v84 = v83 >= v82 ? v82 : SHIBYTE(v6->__r_.__value_.__r.__words[2]);
        v85 = v6;
      }

      v86 = v81 >= 0 ? (v102 - 32) : *(v102 - 32);
      v87 = !memcmp(v85, v86, v84) && v84 == v82;
      if (v87 && (v9 & 0x100) != 0)
      {
        break;
      }
    }

    if ((v9 & 0x100) == 0)
    {
      v89 = *(v102 - 8);
      v90 = *(v102 - 9);
      if (v90 >= 0)
      {
        v91 = *(v102 - 9);
      }

      else
      {
        v91 = *(v102 - 24);
      }

      v92 = SHIBYTE(v6->__r_.__value_.__r.__words[2]);
      if ((v92 & 0x8000000000000000) != 0)
      {
        if (v91 == -1)
        {
          goto LABEL_215;
        }

        v94 = v6->__r_.__value_.__r.__words[0];
        if (v6->__r_.__value_.__l.__size_ >= v91)
        {
          v93 = v91;
        }

        else
        {
          v93 = v6->__r_.__value_.__l.__size_;
        }
      }

      else
      {
        if (v91 == -1)
        {
          goto LABEL_215;
        }

        if (v92 >= v91)
        {
          v93 = v91;
        }

        else
        {
          v93 = SHIBYTE(v6->__r_.__value_.__r.__words[2]);
        }

        v94 = v6;
      }

      if (v90 >= 0)
      {
        v95 = (v102 - 32);
      }

      else
      {
        v95 = *(v102 - 32);
      }

      if (!memcmp(v94, v95, v93) && v93 == v91)
      {
        *(*a1[9] + 3 * v89 + 2) = 1;
        v97 = a1[8];
      }
    }

    v98 = *(v97 + 8);
    v99 = *(v98 + 48);
    v100 = (v99 - 32);
    if (*(v99 - 9) < 0)
    {
      operator delete(*v100);
    }

    *(v98 + 48) = v100;
  }

  v103 = *(a1[6] + 8);
  if (SHIBYTE(v6->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_2991A110C(__p, v6->__r_.__value_.__l.__data_, v6->__r_.__value_.__l.__size_);
  }

  else
  {
    *__p = *&v6->__r_.__value_.__l.__data_;
    v105 = v6->__r_.__value_.__r.__words[2];
  }

  v106 = *(v103 + 24);
  sub_299362D3C(v101 + 40, __p);
  if (SHIBYTE(v105) < 0)
  {
    operator delete(__p[0]);
  }

  ++*(*(a1[6] + 8) + 24);
}

void sub_299362D18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_299362D3C(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      sub_299212A8C();
    }

    v9 = v4 - *a1;
    if (v9 >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 59))
      {
        operator new();
      }

      sub_29919600C();
    }

    v11 = 32 * v7;
    *v11 = *a2;
    v12 = *(a2 + 2);
    v13 = *(a2 + 3);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v11 + 16) = v12;
    *(v11 + 24) = v13;
    v6 = 32 * v7 + 32;
    v14 = *a1;
    v15 = *(a1 + 8) - *a1;
    v16 = 32 * v7 - v15;
    memcpy((v11 - v15), *a1, v15);
    *a1 = v16;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(v3 + 24) = *(a2 + 3);
    v6 = v3 + 32;
  }

  *(a1 + 8) = v6;
}

uint64_t sub_299362E64(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *(v2 - 8);
    v2 -= 8;
    v4 = v5;
    *(a1 + 16) = v2;
    if (v5)
    {
      sub_2993226F0(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_299362EB8(uint64_t **a1, uint64_t *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_2993B2378(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

void sub_299362F04(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x29C29BFB0);
}

uint64_t *sub_299362F58(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v6 >= v5)
  {
    v8 = (v6 - *v4) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_29920B608();
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
      sub_29920BE54(*a1, v11);
    }

    v12 = (8 * v8);
    *v12 = *a2;
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
    *v6 = *a2;
    v7 = (v6 + 1);
  }

  *(v4 + 8) = v7;
  return a1;
}

BOOL sub_29936303C(void *a1, const void **a2)
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

  result = sub_2991C09F4(a1, v11 + 2, a2);
  if (!result)
  {
    goto LABEL_17;
  }

  return result;
}

const void **sub_299363490(void *a1, const void **a2)
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

void sub_299363744(void **a1, __n128 *a2, unint64_t a3, __n128 *a4, uint64_t a5)
{
  if (a3 >= 2)
  {
    v6 = a1;
    if (a3 == 2)
    {
      v7 = a2 - 2;
      if ((sub_29920B9DC(a2[-2].n128_u64, a1) & 0x80) != 0)
      {
        v8 = v6[2];
        v9 = *v6;
        v10 = a2[-1].n128_u64[0];
        *v6 = *v7;
        v6[2] = v10;
        *v7 = v9;
        a2[-1].n128_u64[0] = v8;
        v11 = v6[3];
        v6[3] = a2[-1].n128_u64[1];
        a2[-1].n128_u64[1] = v11;
      }
    }

    else
    {
      v12 = a3;
      if (a3 <= 0)
      {
        if (a1 != a2)
        {
          v18 = a1 + 4;
          if (a1 + 4 != a2)
          {
            v19 = 0;
            v20 = a1;
            do
            {
              v21 = v18;
              if ((sub_29920B9DC(v18, v20) & 0x80) != 0)
              {
                v22 = *v21;
                v40 = v21[2];
                v39 = v22;
                v21[1] = 0;
                v21[2] = 0;
                *v21 = 0;
                v41 = v20[7];
                v23 = v19;
                while (1)
                {
                  v24 = (v6 + v23);
                  if (*(v6 + v23 + 55) < 0)
                  {
                    operator delete(v24[4]);
                  }

                  *(v24 + 2) = *v24;
                  v25 = v24[2];
                  v26 = v24[3];
                  *(v24 + 23) = 0;
                  *v24 = 0;
                  v24[6] = v25;
                  v24[7] = v26;
                  if (!v23)
                  {
                    break;
                  }

                  v23 -= 32;
                  if ((sub_29920B9DC(&v39, (v6 + v23)) & 0x80) == 0)
                  {
                    v27 = v6 + v23 + 32;
                    goto LABEL_21;
                  }
                }

                v27 = v6;
LABEL_21:
                if (*(v27 + 23) < 0)
                {
                  operator delete(*v27);
                }

                v28 = v39;
                *(v27 + 16) = v40;
                *v27 = v28;
                *(v27 + 24) = v41;
              }

              v18 = v21 + 4;
              v19 += 32;
              v20 = v21;
            }

            while (v21 + 4 != a2);
          }
        }
      }

      else
      {
        v14 = a4;
        v15 = a3 >> 1;
        v16 = &a1[4 * (a3 >> 1)];
        v17 = a3 >> 1;
        if (v12 <= a5)
        {
          sub_299363AE8(a1, v16, v17, a4);
          v29 = &v14[2 * v15];
          sub_299363AE8(&v6[4 * (v12 >> 1)], a2, v12 - (v12 >> 1), v29);
          v30 = &v14[2 * v12];
          v31 = v29;
          v32 = v14;
          while (v31 != v30)
          {
            v33 = sub_29920B9DC(v31, v32);
            v34 = *(v6 + 23);
            if (v33 < 0)
            {
              if (v34 < 0)
              {
                operator delete(*v6);
              }

              v36 = *v31;
              v6[2] = v31[1].n128_u64[0];
              *v6 = v36;
              v31[1].n128_u8[7] = 0;
              v31->n128_u8[0] = 0;
              v6[3] = v31[1].n128_u64[1];
              v31 += 2;
            }

            else
            {
              if (v34 < 0)
              {
                operator delete(*v6);
              }

              v35 = *v32;
              v6[2] = v32[1].n128_u64[0];
              *v6 = v35;
              v32[1].n128_u8[7] = 0;
              v32->n128_u8[0] = 0;
              v6[3] = v32[1].n128_u64[1];
              v32 += 2;
            }

            v6 += 4;
            if (v32 == v29)
            {
              while (v31 != v30)
              {
                if (*(v6 + 23) < 0)
                {
                  operator delete(*v6);
                }

                v38 = *v31;
                v6[2] = v31[1].n128_u64[0];
                *v6 = v38;
                v31[1].n128_u8[7] = 0;
                v31->n128_u8[0] = 0;
                v6[3] = v31[1].n128_u64[1];
                v31 += 2;
                v6 += 4;
              }

              goto LABEL_46;
            }
          }

          while (v32 != v29)
          {
            if (*(v6 + 23) < 0)
            {
              operator delete(*v6);
            }

            v37 = *v32;
            v6[2] = v32[1].n128_u64[0];
            *v6 = v37;
            v32[1].n128_u8[7] = 0;
            v32->n128_u8[0] = 0;
            v6[3] = v32[1].n128_u64[1];
            v32 += 2;
            v6 += 4;
          }

LABEL_46:
          if (v14)
          {
            do
            {
              if (v14[1].n128_i8[7] < 0)
              {
                operator delete(v14->n128_u64[0]);
              }

              v14 += 2;
              --v12;
            }

            while (v12);
          }
        }

        else
        {
          sub_299363744(a1, v16, v17, a4, a5);
          sub_299363744(&v6[4 * (v12 >> 1)], a2, v12 - (v12 >> 1), v14, a5);

          sub_299363E94(v6, &v6[4 * (v12 >> 1)], a2, v12 >> 1, v12 - (v12 >> 1), v14, a5);
        }
      }
    }
  }
}

void sub_299363ABC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    do
    {
      if (*(v1 + 23) < 0)
      {
        operator delete(*v1);
      }

      v1 += 32;
      --v2;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_299363AE8(__n128 *a1, __n128 *a2, unint64_t a3, __n128 *a4)
{
  if (a3)
  {
    v4 = a4;
    v7 = a1;
    if (a3 == 2)
    {
      v9 = a2 - 2;
      if ((sub_29920B9DC(a2[-2].n128_u64, a1) & 0x80) != 0)
      {
        v27 = *v9;
        v4[1].n128_u64[0] = a2[-1].n128_u64[0];
        *v4 = v27;
        a2[-2].n128_u64[1] = 0;
        a2[-1].n128_u64[0] = 0;
        v9->n128_u64[0] = 0;
        v4[1].n128_u64[1] = a2[-1].n128_u64[1];
        result = *v7;
        v4[3].n128_u64[0] = v7[1].n128_u64[0];
        v4[2] = result;
        v7->n128_u64[1] = 0;
        v7[1].n128_u64[0] = 0;
        v7->n128_u64[0] = 0;
        v11 = &v7[1].n128_u64[1];
      }

      else
      {
        v10 = *v7;
        v4[1].n128_u64[0] = v7[1].n128_u64[0];
        *v4 = v10;
        v7->n128_u64[1] = 0;
        v7[1].n128_u64[0] = 0;
        v7->n128_u64[0] = 0;
        v4[1].n128_u64[1] = v7[1].n128_u64[1];
        result = *v9;
        v4[3].n128_u64[0] = a2[-1].n128_u64[0];
        v4[2] = result;
        a2[-2].n128_u64[1] = 0;
        a2[-1].n128_u64[0] = 0;
        v9->n128_u64[0] = 0;
        v11 = &a2[-1].n128_u64[1];
      }

      v4[3].n128_u64[1] = *v11;
    }

    else if (a3 == 1)
    {
      result = *a1;
      a4[1].n128_u64[0] = a1[1].n128_u64[0];
      *a4 = result;
      a1->n128_u64[1] = 0;
      a1[1].n128_u64[0] = 0;
      a1->n128_u64[0] = 0;
      a4[1].n128_u64[1] = a1[1].n128_u64[1];
    }

    else if (a3 > 8)
    {
      v21 = &a1[2 * (a3 >> 1)];
      sub_299363744(a1, v21, a3 >> 1, a4, a3 >> 1);
      sub_299363744(&v7[2 * (a3 >> 1)], a2, a3 - (a3 >> 1), &v4[2 * (a3 >> 1)], a3 - (a3 >> 1));
      v22 = &v7[2 * (a3 >> 1)];
      while (v22 != a2)
      {
        if ((sub_29920B9DC(v22, v7) & 0x80) != 0)
        {
          result = *v22;
          v4[1].n128_u64[0] = v22[1].n128_u64[0];
          *v4 = result;
          v22->n128_u64[1] = 0;
          v22[1].n128_u64[0] = 0;
          v22->n128_u64[0] = 0;
          v23 = v22;
          v22 += 2;
        }

        else
        {
          result = *v7;
          v4[1].n128_u64[0] = v7[1].n128_u64[0];
          *v4 = result;
          v7->n128_u64[1] = 0;
          v7[1].n128_u64[0] = 0;
          v7->n128_u64[0] = 0;
          v23 = v7;
          v7 += 2;
        }

        v4[1].n128_u64[1] = v23[1].n128_u64[1];
        v4 += 2;
        if (v7 == v21)
        {
          if (v22 != a2)
          {
            v24 = 0;
            do
            {
              v25 = &v22[v24];
              v26 = &v4[v24];
              result = v22[v24];
              v26[1].n128_u64[0] = v22[v24 + 1].n128_u64[0];
              *v26 = result;
              v25->n128_u64[1] = 0;
              v25[1].n128_u64[0] = 0;
              v25->n128_u64[0] = 0;
              v26[1].n128_u64[1] = v22[v24 + 1].n128_u64[1];
              v24 += 2;
            }

            while (&v25[2] != a2);
          }

          return result;
        }
      }

      if (v7 != v21)
      {
        v28 = 0;
        do
        {
          v29 = &v4[v28];
          v30 = &v7[v28];
          result = v7[v28];
          v29[1].n128_u64[0] = v7[v28 + 1].n128_u64[0];
          *v29 = result;
          v30->n128_u64[1] = 0;
          v30[1].n128_u64[0] = 0;
          v30->n128_u64[0] = 0;
          v29[1].n128_u64[1] = v7[v28 + 1].n128_u64[1];
          v28 += 2;
        }

        while (&v30[2] != v21);
      }
    }

    else if (a1 != a2)
    {
      result = *a1;
      a4[1].n128_u64[0] = a1[1].n128_u64[0];
      *a4 = result;
      a1->n128_u64[1] = 0;
      a1[1].n128_u64[0] = 0;
      a1->n128_u64[0] = 0;
      a4[1].n128_u64[1] = a1[1].n128_u64[1];
      v12 = a1 + 2;
      if (&a1[2] != a2)
      {
        v13 = 0;
        v14 = a4;
        do
        {
          v15 = v12;
          v16 = v14 + 2;
          if ((sub_29920B9DC(v12, v14) & 0x80) != 0)
          {
            *v16 = *v14;
            v17 = v14[1].n128_u64[1];
            v14[3].n128_u64[0] = v14[1].n128_u64[0];
            v14->n128_u64[1] = 0;
            v14[1].n128_u64[0] = 0;
            v14->n128_u64[0] = 0;
            v14[3].n128_u64[1] = v17;
            v18 = v4;
            if (v14 != v4)
            {
              v19 = v13;
              while (1)
              {
                v18 = (v4 + v19);
                if ((sub_29920B9DC(v15, (&v4[-2] + v19)) & 0x80) == 0)
                {
                  break;
                }

                if (v18[1].n128_i8[7] < 0)
                {
                  operator delete(v18->n128_u64[0]);
                }

                v20 = v4 + v19;
                *v18 = *(v4 + v19 - 32);
                v18[1].n128_u64[0] = *(v4[-1].n128_u64 + v19);
                *(v20 - 9) = 0;
                v18[-2].n128_u8[0] = 0;
                *(v20 + 3) = *(&v4->n128_u64[-1] + v19);
                v19 -= 32;
                if (!v19)
                {
                  v18 = v4;
                  break;
                }
              }
            }

            if (v18[1].n128_i8[7] < 0)
            {
              operator delete(v18->n128_u64[0]);
            }

            result = *v15;
            v18[1].n128_u64[0] = v15[1].n128_u64[0];
            *v18 = result;
            v7[3].n128_u8[7] = 0;
            v15->n128_u8[0] = 0;
            v18[1].n128_u64[1] = v7[3].n128_u64[1];
          }

          else
          {
            result = *v15;
            v14[3].n128_u64[0] = v15[1].n128_u64[0];
            *v16 = result;
            v15->n128_u64[1] = 0;
            v15[1].n128_u64[0] = 0;
            v15->n128_u64[0] = 0;
            v14[3].n128_u64[1] = v7[3].n128_u64[1];
          }

          v12 = v15 + 2;
          v13 += 32;
          v14 += 2;
          v7 = v15;
        }

        while (&v15[2] != a2);
      }
    }
  }

  return result;
}

void sub_299363E94(void **a1, void **a2, void **a3, uint64_t a4, uint64_t a5, void **a6, uint64_t a7)
{
  v71 = a5;
  if (a5)
  {
    while (a4 > a7 && v71 > a7)
    {
      if (!a4)
      {
        return;
      }

      v13 = 0;
      v14 = -a4;
      while (1)
      {
        v15 = &v13[a1];
        if ((sub_29920B9DC(a2, &v13[a1]) & 0x80) != 0)
        {
          break;
        }

        v13 += 32;
        if (__CFADD__(v14++, 1))
        {
          return;
        }
      }

      v17 = -v14;
      v18 = v71;
      v68 = a3;
      v69 = a6;
      v70 = a7;
      if (-v14 >= v71)
      {
        if (v14 == -1)
        {
          v61 = &v13[a1];
          v75 = *&v13[a1 + 16];
          v73 = *&v13[a1];
          v62 = *a2;
          *(v61 + 2) = a2[2];
          *v61 = v62;
          *a2 = v73;
          a2[2] = v75;
          v63 = *&v13[a1 + 24];
          *(v61 + 3) = a2[3];
          a2[3] = v63;
          return;
        }

        v23 = v17 / 2;
        v21 = (&a1[4 * (v17 / 2)] + v13);
        v20 = a2;
        if (a2 != a3)
        {
          v67 = v17 / 2;
          v24 = (a3 - a2) >> 5;
          v20 = a2;
          do
          {
            v25 = &v20[4 * (v24 >> 1)];
            v26 = sub_29920B9DC(v25, v21);
            if (v26 >= 0)
            {
              v24 >>= 1;
            }

            else
            {
              v24 += ~(v24 >> 1);
            }

            if (v26 < 0)
            {
              v20 = v25 + 4;
            }
          }

          while (v24);
          v23 = v67;
          v18 = v71;
        }

        v19 = (v20 - a2) >> 5;
      }

      else
      {
        v19 = v71 / 2;
        v20 = &a2[4 * (v71 / 2)];
        v21 = a2;
        if ((a2 - a1) != v13)
        {
          v22 = (a2 - a1 - v13) >> 5;
          v21 = &v13[a1];
          do
          {
            if ((sub_29920B9DC(v20, &v21[4 * (v22 >> 1)]) & 0x80u) != 0)
            {
              v22 >>= 1;
            }

            else
            {
              v21 += 4 * (v22 >> 1) + 4;
              v22 += ~(v22 >> 1);
            }
          }

          while (v22);
          v19 = v71 / 2;
          v18 = v71;
        }

        v23 = (v21 - a1 - v13) >> 5;
      }

      a3 = v20;
      if (v21 != a2)
      {
        a3 = v21;
        if (a2 != v20)
        {
          a3 = v21 + 4;
          v27 = v21 + 4;
          v28 = a2;
          while (1)
          {
            v29 = *(v27 - 2);
            v30 = *(v27 - 2);
            v31 = v28[2];
            *(v27 - 2) = *v28;
            *(v27 - 2) = v31;
            *v28 = v30;
            v28[2] = v29;
            v32 = *(v27 - 1);
            *(v27 - 1) = v28[3];
            v28[3] = v32;
            v28 += 4;
            if (v28 == v20)
            {
              break;
            }

            if (v27 == a2)
            {
              a2 = v28;
            }

            v27 += 4;
            a3 += 4;
          }

          if (v27 != a2)
          {
            v33 = a2;
            do
            {
              while (1)
              {
                v74 = v27[2];
                v72 = *v27;
                v34 = *v33;
                v27[2] = v33[2];
                *v27 = v34;
                v33[2] = v74;
                *v33 = v72;
                v35 = v27[3];
                v27[3] = v33[3];
                v33[3] = v35;
                v27 += 4;
                v33 += 4;
                if (v33 == v20)
                {
                  break;
                }

                if (v27 == a2)
                {
                  a2 = v33;
                }
              }

              v33 = a2;
            }

            while (v27 != a2);
          }
        }
      }

      a4 = -v14 - v23;
      v36 = v18 - v19;
      if (v23 + v19 >= v18 - (v23 + v19) - v14)
      {
        v38 = v23;
        v39 = v19;
        sub_299363E94(a3, v20, v68, -v14 - v23, v18 - v19, v69, v70);
        v20 = v21;
        a6 = v69;
        v36 = v39;
        a4 = v38;
      }

      else
      {
        v37 = v21;
        a6 = v69;
        sub_299363E94(&v13[a1], v37, a3, v23, v19, v69, v70);
        v15 = a3;
        a3 = v68;
      }

      v71 = v36;
      a2 = v20;
      a1 = v15;
      a7 = v70;
      if (!v36)
      {
        return;
      }
    }

    if (a4 <= v71)
    {
      if (a2 == a1)
      {
        return;
      }

      v52 = a3;
      v41 = 0;
      v53 = a6;
      v54 = a1;
      do
      {
        v55 = *v54;
        v53[2] = v54[2];
        *v53 = v55;
        v54[1] = 0;
        v54[2] = 0;
        *v54 = 0;
        v53[3] = v54[3];
        ++v41;
        v54 += 4;
        v53 += 4;
      }

      while (v54 != a2);
      v56 = a6;
      while (a2 != v52)
      {
        v57 = sub_29920B9DC(a2, v56);
        v58 = *(a1 + 23);
        if (v57 < 0)
        {
          if (v58 < 0)
          {
            operator delete(*a1);
          }

          v60 = *a2;
          a1[2] = a2[2];
          *a1 = v60;
          *(a2 + 23) = 0;
          *a2 = 0;
          a1[3] = a2[3];
          a2 += 4;
        }

        else
        {
          if (v58 < 0)
          {
            operator delete(*a1);
          }

          v59 = *v56;
          a1[2] = v56[2];
          *a1 = v59;
          *(v56 + 23) = 0;
          *v56 = 0;
          a1[3] = v56[3];
          v56 += 4;
        }

        a1 += 4;
        if (v53 == v56)
        {
          goto LABEL_94;
        }
      }

      if (v53 != v56)
      {
        do
        {
          if (*(a1 + 23) < 0)
          {
            operator delete(*a1);
          }

          v65 = *v56;
          a1[2] = v56[2];
          *a1 = v65;
          *(v56 + 23) = 0;
          *v56 = 0;
          a1[3] = v56[3];
          a1 += 4;
          v66 = v53 - 4 == v56;
          v56 += 4;
        }

        while (!v66);
      }
    }

    else
    {
      if (a2 == a3)
      {
        return;
      }

      v40 = 0;
      v41 = 0;
      do
      {
        v42 = &a6[v40];
        v43 = &a2[v40];
        v44 = *&a2[v40];
        *(v42 + 2) = a2[v40 + 2];
        *v42 = v44;
        v43[1] = 0;
        v43[2] = 0;
        *v43 = 0;
        *(v42 + 3) = a2[v40 + 3];
        ++v41;
        v40 += 4;
      }

      while (v43 + 4 != a3);
      v45 = a3 - 4;
      v46 = &a6[v40];
      while (a2 != a1)
      {
        v47 = a6;
        v48 = sub_29920B9DC(v46 - 4, a2 - 4);
        if (v48 >= 0)
        {
          v49 = v46;
        }

        else
        {
          v49 = a2;
        }

        if (v48 >= 0)
        {
          v50 = v46 - 4;
        }

        else
        {
          v50 = a2 - 4;
        }

        if (v48 >= 0)
        {
          v46 -= 4;
        }

        else
        {
          a2 -= 4;
        }

        if (*(v45 + 23) < 0)
        {
          operator delete(*v45);
        }

        v51 = *v50;
        v45[2] = v50[2];
        *v45 = v51;
        *(v49 - 9) = 0;
        *v50 = 0;
        v45[3] = *(v49 - 1);
        v45 -= 4;
        a6 = v47;
        if (v46 == v47)
        {
          goto LABEL_94;
        }
      }

      for (; v46 != a6; v46 -= 4)
      {
        if (*(v45 + 23) < 0)
        {
          operator delete(*v45);
        }

        v64 = *(v46 - 2);
        v45[2] = *(v46 - 2);
        *v45 = v64;
        *(v46 - 9) = 0;
        *(v46 - 32) = 0;
        v45[3] = *(v46 - 1);
        v45 -= 4;
      }
    }

LABEL_94:
    if (a6)
    {
      do
      {
        if (*(a6 + 23) < 0)
        {
          operator delete(*a6);
        }

        a6 += 4;
        --v41;
      }

      while (v41);
    }
  }
}

void sub_299364488(void **a1, __n128 *a2, unint64_t a3, __n128 *a4, uint64_t a5)
{
  if (a3 >= 2)
  {
    v6 = a1;
    if (a3 == 2)
    {
      v7 = a2 - 2;
      if ((sub_29920B9DC(a2[-2].n128_u64, a1) & 0x80) != 0)
      {
        v8 = v6[2];
        v9 = *v6;
        v10 = a2[-1].n128_u64[0];
        *v6 = *v7;
        v6[2] = v10;
        *v7 = v9;
        a2[-1].n128_u64[0] = v8;
        LODWORD(v8) = *(v6 + 6);
        *(v6 + 6) = a2[-1].n128_u32[2];
        a2[-1].n128_u32[2] = v8;
      }
    }

    else
    {
      v11 = a3;
      if (a3 <= 0)
      {
        if (a1 != a2)
        {
          v17 = a1 + 4;
          if (a1 + 4 != a2)
          {
            v18 = 0;
            v19 = a1;
            do
            {
              v20 = v17;
              if ((sub_29920B9DC(v17, v19) & 0x80) != 0)
              {
                v21 = *v20;
                v37 = v20[2];
                v36 = v21;
                v20[1] = 0;
                v20[2] = 0;
                *v20 = 0;
                v38 = *(v19 + 14);
                v22 = v18;
                while (1)
                {
                  v23 = (v6 + v22);
                  if (*(v6 + v22 + 55) < 0)
                  {
                    operator delete(v23[4]);
                  }

                  *(v23 + 2) = *v23;
                  v23[6] = v23[2];
                  *(v23 + 23) = 0;
                  *v23 = 0;
                  *(v23 + 14) = *(v23 + 6);
                  if (!v22)
                  {
                    break;
                  }

                  v22 -= 32;
                  if ((sub_29920B9DC(&v36, (v6 + v22)) & 0x80) == 0)
                  {
                    v24 = v6 + v22 + 32;
                    goto LABEL_21;
                  }
                }

                v24 = v6;
LABEL_21:
                if (*(v24 + 23) < 0)
                {
                  operator delete(*v24);
                }

                v25 = v36;
                *(v24 + 16) = v37;
                *v24 = v25;
                *(v24 + 24) = v38;
              }

              v17 = v20 + 4;
              v18 += 32;
              v19 = v20;
            }

            while (v20 + 4 != a2);
          }
        }
      }

      else
      {
        v13 = a4;
        v14 = a3 >> 1;
        v15 = &a1[4 * (a3 >> 1)];
        v16 = a3 >> 1;
        if (v11 <= a5)
        {
          sub_299364834(a1, v15, v16, a4);
          v26 = &v13[2 * v14];
          sub_299364834(&v6[4 * (v11 >> 1)], a2, v11 - (v11 >> 1), v26);
          v27 = &v13[2 * v11];
          v28 = v26;
          v29 = v13;
          while (v28 != v27)
          {
            v30 = sub_29920B9DC(v28, v29);
            v31 = *(v6 + 23);
            if (v30 < 0)
            {
              if (v31 < 0)
              {
                operator delete(*v6);
              }

              v33 = *v28;
              v6[2] = v28[1].n128_u64[0];
              *v6 = v33;
              v28[1].n128_u8[7] = 0;
              v28->n128_u8[0] = 0;
              *(v6 + 6) = v28[1].n128_u32[2];
              v28 += 2;
            }

            else
            {
              if (v31 < 0)
              {
                operator delete(*v6);
              }

              v32 = *v29;
              v6[2] = v29[1].n128_u64[0];
              *v6 = v32;
              v29[1].n128_u8[7] = 0;
              v29->n128_u8[0] = 0;
              *(v6 + 6) = v29[1].n128_u32[2];
              v29 += 2;
            }

            v6 += 4;
            if (v29 == v26)
            {
              while (v28 != v27)
              {
                if (*(v6 + 23) < 0)
                {
                  operator delete(*v6);
                }

                v35 = *v28;
                v6[2] = v28[1].n128_u64[0];
                *v6 = v35;
                v28[1].n128_u8[7] = 0;
                v28->n128_u8[0] = 0;
                *(v6 + 6) = v28[1].n128_u32[2];
                v28 += 2;
                v6 += 4;
              }

              goto LABEL_46;
            }
          }

          while (v29 != v26)
          {
            if (*(v6 + 23) < 0)
            {
              operator delete(*v6);
            }

            v34 = *v29;
            v6[2] = v29[1].n128_u64[0];
            *v6 = v34;
            v29[1].n128_u8[7] = 0;
            v29->n128_u8[0] = 0;
            *(v6 + 6) = v29[1].n128_u32[2];
            v29 += 2;
            v6 += 4;
          }

LABEL_46:
          if (v13)
          {
            do
            {
              if (v13[1].n128_i8[7] < 0)
              {
                operator delete(v13->n128_u64[0]);
              }

              v13 += 2;
              --v11;
            }

            while (v11);
          }
        }

        else
        {
          sub_299364488(a1, v15, v16, a4, a5);
          sub_299364488(&v6[4 * (v11 >> 1)], a2, v11 - (v11 >> 1), v13, a5);

          sub_299364BE4(v6, &v6[4 * (v11 >> 1)], a2, v11 >> 1, v11 - (v11 >> 1), v13, a5);
        }
      }
    }
  }
}

void sub_299364808(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    do
    {
      if (*(v1 + 23) < 0)
      {
        operator delete(*v1);
      }

      v1 += 32;
      --v2;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_299364834(__n128 *a1, __n128 *a2, unint64_t a3, __n128 *a4)
{
  if (a3)
  {
    v4 = a4;
    v7 = a1;
    if (a3 == 2)
    {
      v9 = a2 - 2;
      if ((sub_29920B9DC(a2[-2].n128_u64, a1) & 0x80) != 0)
      {
        v26 = *v9;
        v4[1].n128_u64[0] = a2[-1].n128_u64[0];
        *v4 = v26;
        a2[-2].n128_u64[1] = 0;
        a2[-1].n128_u64[0] = 0;
        v9->n128_u64[0] = 0;
        v4[1].n128_u32[2] = a2[-1].n128_u32[2];
        result = *v7;
        v4[3].n128_u64[0] = v7[1].n128_u64[0];
        v4[2] = result;
        v7->n128_u64[1] = 0;
        v7[1].n128_u64[0] = 0;
        v7->n128_u64[0] = 0;
        v11 = &v7[1].n128_u32[2];
      }

      else
      {
        v10 = *v7;
        v4[1].n128_u64[0] = v7[1].n128_u64[0];
        *v4 = v10;
        v7->n128_u64[1] = 0;
        v7[1].n128_u64[0] = 0;
        v7->n128_u64[0] = 0;
        v4[1].n128_u32[2] = v7[1].n128_u32[2];
        result = *v9;
        v4[3].n128_u64[0] = a2[-1].n128_u64[0];
        v4[2] = result;
        a2[-2].n128_u64[1] = 0;
        a2[-1].n128_u64[0] = 0;
        v9->n128_u64[0] = 0;
        v11 = &a2[-1].n128_u32[2];
      }

      v4[3].n128_u32[2] = *v11;
    }

    else if (a3 == 1)
    {
      result = *a1;
      a4[1].n128_u64[0] = a1[1].n128_u64[0];
      *a4 = result;
      a1->n128_u64[1] = 0;
      a1[1].n128_u64[0] = 0;
      a1->n128_u64[0] = 0;
      a4[1].n128_u32[2] = a1[1].n128_u32[2];
    }

    else if (a3 > 8)
    {
      v20 = &a1[2 * (a3 >> 1)];
      sub_299364488(a1, v20, a3 >> 1, a4, a3 >> 1);
      sub_299364488(&v7[2 * (a3 >> 1)], a2, a3 - (a3 >> 1), &v4[2 * (a3 >> 1)], a3 - (a3 >> 1));
      v21 = &v7[2 * (a3 >> 1)];
      while (v21 != a2)
      {
        if ((sub_29920B9DC(v21, v7) & 0x80) != 0)
        {
          result = *v21;
          v4[1].n128_u64[0] = v21[1].n128_u64[0];
          *v4 = result;
          v21->n128_u64[1] = 0;
          v21[1].n128_u64[0] = 0;
          v21->n128_u64[0] = 0;
          v22 = v21;
          v21 += 2;
        }

        else
        {
          result = *v7;
          v4[1].n128_u64[0] = v7[1].n128_u64[0];
          *v4 = result;
          v7->n128_u64[1] = 0;
          v7[1].n128_u64[0] = 0;
          v7->n128_u64[0] = 0;
          v22 = v7;
          v7 += 2;
        }

        v4[1].n128_u32[2] = v22[1].n128_u32[2];
        v4 += 2;
        if (v7 == v20)
        {
          if (v21 != a2)
          {
            v23 = 0;
            do
            {
              v24 = &v21[v23];
              v25 = &v4[v23];
              result = v21[v23];
              v25[1].n128_u64[0] = v21[v23 + 1].n128_u64[0];
              *v25 = result;
              v24->n128_u64[1] = 0;
              v24[1].n128_u64[0] = 0;
              v24->n128_u64[0] = 0;
              v25[1].n128_u32[2] = v21[v23 + 1].n128_u32[2];
              v23 += 2;
            }

            while (&v24[2] != a2);
          }

          return result;
        }
      }

      if (v7 != v20)
      {
        v27 = 0;
        do
        {
          v28 = &v4[v27];
          v29 = &v7[v27];
          result = v7[v27];
          v28[1].n128_u64[0] = v7[v27 + 1].n128_u64[0];
          *v28 = result;
          v29->n128_u64[1] = 0;
          v29[1].n128_u64[0] = 0;
          v29->n128_u64[0] = 0;
          v28[1].n128_u32[2] = v7[v27 + 1].n128_u32[2];
          v27 += 2;
        }

        while (&v29[2] != v20);
      }
    }

    else if (a1 != a2)
    {
      result = *a1;
      a4[1].n128_u64[0] = a1[1].n128_u64[0];
      *a4 = result;
      a1->n128_u64[1] = 0;
      a1[1].n128_u64[0] = 0;
      a1->n128_u64[0] = 0;
      a4[1].n128_u32[2] = a1[1].n128_u32[2];
      v12 = a1 + 2;
      if (&a1[2] != a2)
      {
        v13 = 0;
        v14 = a4;
        do
        {
          v15 = v12;
          v16 = v14 + 2;
          if ((sub_29920B9DC(v12, v14) & 0x80) != 0)
          {
            *v16 = *v14;
            v14[3].n128_u64[0] = v14[1].n128_u64[0];
            v14->n128_u64[1] = 0;
            v14[1].n128_u64[0] = 0;
            v14->n128_u64[0] = 0;
            v14[3].n128_u32[2] = v14[1].n128_u32[2];
            v17 = v4;
            if (v14 != v4)
            {
              v18 = v13;
              while (1)
              {
                v17 = (v4 + v18);
                if ((sub_29920B9DC(v15, (&v4[-2] + v18)) & 0x80) == 0)
                {
                  break;
                }

                if (v17[1].n128_i8[7] < 0)
                {
                  operator delete(v17->n128_u64[0]);
                }

                v19 = v4 + v18;
                *v17 = *(v4 + v18 - 32);
                v17[1].n128_u64[0] = *(v4[-1].n128_u64 + v18);
                *(v19 - 9) = 0;
                v17[-2].n128_u8[0] = 0;
                *(v19 + 6) = *(&v4->n128_u32[-2] + v18);
                v18 -= 32;
                if (!v18)
                {
                  v17 = v4;
                  break;
                }
              }
            }

            if (v17[1].n128_i8[7] < 0)
            {
              operator delete(v17->n128_u64[0]);
            }

            result = *v15;
            v17[1].n128_u64[0] = v15[1].n128_u64[0];
            *v17 = result;
            v7[3].n128_u8[7] = 0;
            v15->n128_u8[0] = 0;
            v17[1].n128_u32[2] = v7[3].n128_u32[2];
          }

          else
          {
            result = *v15;
            v14[3].n128_u64[0] = v15[1].n128_u64[0];
            *v16 = result;
            v15->n128_u64[1] = 0;
            v15[1].n128_u64[0] = 0;
            v15->n128_u64[0] = 0;
            v14[3].n128_u32[2] = v7[3].n128_u32[2];
          }

          v12 = v15 + 2;
          v13 += 32;
          v14 += 2;
          v7 = v15;
        }

        while (&v15[2] != a2);
      }
    }
  }

  return result;
}