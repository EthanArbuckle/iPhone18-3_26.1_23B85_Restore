__int16 sub_271576B58@<H0>(__int16 ***a1@<X0>, uint64_t a2@<X1>)
{
  v2 = *(a2 + 12);
  v3 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && v3 != 0)
  {
    v6 = v2 - 1;
    v7 = *a2;
    v8 = 2 * *(a2 + 24);
    v9 = v3 - 1;
    if (v9)
    {
      v10 = *(a2 + 28);
      if (v6)
      {
        v11 = 0;
        v12 = v7 + 2;
        do
        {
          v13 = v12;
          v14 = v6;
          do
          {
            *(v13 - 2) = ***a1;
            *(v13 - 1) = ***a1;
            *v13 = ***a1;
            v13[1] = ***a1;
            v13 = (v13 + v8);
            --v14;
          }

          while (v14);
          *(v13 - 2) = ***a1;
          *(v13 - 1) = ***a1;
          *v13 = ***a1;
          v13[1] = ***a1;
          v7 += v10;
          ++v11;
          v12 += v10;
        }

        while (v11 != v9);
        goto LABEL_18;
      }

      v15 = 2 * v10;
      do
      {
        *v7 = ***a1;
        v7[1] = ***a1;
        v7[2] = ***a1;
        v7[3] = ***a1;
        v7 = (v7 + v15);
        --v9;
      }

      while (v9);
    }

    if (!v6)
    {
LABEL_19:
      *v7 = ***a1;
      v7[1] = ***a1;
      v7[2] = ***a1;
      v16 = **a1;
      result = *v16;
      v7[3] = *v16;
      return result;
    }

    do
    {
LABEL_18:
      *v7 = ***a1;
      v7[1] = ***a1;
      v7[2] = ***a1;
      v7[3] = ***a1;
      v7 = (v7 + v8);
      --v6;
    }

    while (v6);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_271576D2C(uint64_t result, int32x2_t a2)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3 != 1)
  {
    v11 = *(v2 + 8);
    v12 = *(v2 + 12);
    if (v11)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return result;
    }

    v14 = *(result + 8);
    v15 = v11 - 1;
    v16 = *v2;
    v17 = 4 * v3;
    v18 = v12 - 1;
    if (v18)
    {
      v19 = *(v2 + 20);
      if (!v15)
      {
        v48 = *v14;
        do
        {
          v16->i32[0] = v48;
          v16 = (v16 + 4 * v19);
          --v18;
        }

        while (v18);
        goto LABEL_50;
      }

      v20 = 0;
      v21 = *v14;
      v22 = 4 * v19;
      do
      {
        v23 = v16;
        v24 = v15;
        do
        {
          v23->i32[0] = v21;
          v23 = (v23 + v17);
          --v24;
        }

        while (v24);
        v21 = *v14;
        v23->i32[0] = *v14;
        v16 = (v16 + v22);
        ++v20;
      }

      while (v20 != v18);
    }

    else
    {
      v21 = *v14;
      if (!v15)
      {
LABEL_51:
        v16->i32[0] = v21;
        return result;
      }
    }

    do
    {
      v16->i32[0] = v21;
      v16 = (v16 + v17);
      --v15;
    }

    while (v15);
LABEL_50:
    v21 = *v14;
    goto LABEL_51;
  }

  v4 = *(v2 + 20);
  v5 = *(v2 + 8);
  if (v4 == v5)
  {
    v6 = *(v2 + 12);
    v7 = (v6 * v4);
    if (!v7)
    {
      return result;
    }

    v8 = *v2;
    a2.i32[0] = **(result + 8);
    if (v7 < 8)
    {
      v9 = (v6 * v4);
      v10 = *v2;
LABEL_39:
      v43 = v9 + 1;
      do
      {
        v10->i32[0] = a2.i32[0];
        v10 = (v10 + 4);
        --v43;
      }

      while (v43 > 1);
      return result;
    }

    v9 = (v6 * v4) & 7;
    v10 = (v8 + 4 * (v7 & 0xFFFFFFF8));
    v40 = vdupq_lane_s32(a2, 0);
    v41 = v8 + 1;
    v42 = v7 & 0xFFFFFFF8;
    do
    {
      v41[-1] = v40;
      *v41 = v40;
      v41 += 2;
      v42 -= 8;
    }

    while (v42);
    if ((v7 & 0xFFFFFFF8) != v7)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v25 = *(v2 + 12);
    if (v5)
    {
      v26 = v25 == 0;
    }

    else
    {
      v26 = 1;
    }

    if (!v26)
    {
      v27 = *(result + 8);
      v28 = *v2;
      v29 = v25 - 1;
      if (v29)
      {
        v30 = 0;
        v31 = v28 + 1;
        result = 4 * v4;
        do
        {
          a2.i32[0] = *v27;
          v32 = v5;
          v33 = v28;
          if (v5 < 8)
          {
            goto LABEL_28;
          }

          v33 = (v28 + 4 * (v5 & 0xFFFFFFF8));
          v34 = vdupq_lane_s32(a2, 0);
          v35 = v5 & 0xFFFFFFF8;
          v36 = v31;
          do
          {
            v36[-1] = v34;
            *v36 = v34;
            v36 += 2;
            v35 -= 8;
          }

          while (v35);
          v32 = v5 & 7;
          if ((v5 & 0xFFFFFFF8) != v5)
          {
LABEL_28:
            v37 = v32 + 1;
            do
            {
              v33->i32[0] = a2.i32[0];
              v33 = (v33 + 4);
              --v37;
            }

            while (v37 > 1);
          }

          v28 = (v28 + 4 * v4);
          ++v30;
          v31 = (v31 + result);
        }

        while (v30 != v29);
      }

      a2.i32[0] = *v27;
      v38 = v5 - (v5 != 0) + 1;
      if (v38 >= 8)
      {
        v5 -= v38 & 0xFFFFFFFFFFFFFFF8;
        v39 = (v28 + 4 * (v38 & 0xFFFFFFFFFFFFFFF8));
        v44 = vdupq_lane_s32(a2, 0);
        v45 = v28 + 1;
        v46 = v38 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v45[-1] = v44;
          *v45 = v44;
          v45 += 2;
          v46 -= 8;
        }

        while (v46);
        if (v38 == (v38 & 0xFFFFFFFFFFFFFFF8))
        {
          return result;
        }
      }

      else
      {
        v39 = v28;
      }

      v47 = v5 + 1;
      do
      {
        v39->i32[0] = a2.i32[0];
        v39 = (v39 + 4);
        --v47;
      }

      while (v47 > 1);
    }
  }

  return result;
}

float sub_271576F84(void *a1, double a2)
{
  v2 = *a1;
  if (*(*a1 + 20) != 1)
  {
    v11 = *(v2 + 12);
    v12 = *(v2 + 16);
    if (*(v2 + 8))
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13 || v12 == 0)
    {
      return *&a2;
    }

    v15 = a1[1];
    v16 = v11 - 1;
    v17 = *v2;
    v18 = 4 * *(v2 + 24);
    v19 = v12 - 1;
    if (v19)
    {
      v20 = *(v2 + 28);
      if (!v16)
      {
        do
        {
          v43 = *v15;
          v17->i32[0] = *v15;
          v17->i32[1] = v43;
          v17 = (v17 + 4 * v20);
          --v19;
        }

        while (v19);
        goto LABEL_45;
      }

      v21 = 0;
      v22 = &v17->i32[1];
      do
      {
        v23 = v22;
        v24 = v16;
        do
        {
          v25 = *v15;
          *(v23 - 1) = *v15;
          *v23 = v25;
          v23 = (v23 + v18);
          --v24;
        }

        while (v24);
        v26 = *v15;
        *(v23 - 1) = *v15;
        *v23 = v26;
        v17 = (v17 + 4 * v20);
        ++v21;
        v22 += v20;
      }

      while (v21 != v19);
    }

    else if (!v16)
    {
LABEL_45:
      LODWORD(a2) = *v15;
      v17->i32[0] = *v15;
      v17->i32[1] = LODWORD(a2);
      return *&a2;
    }

    do
    {
      v42 = *v15;
      v17->i32[0] = *v15;
      v17->i32[1] = v42;
      v17 = (v17 + v18);
      --v16;
    }

    while (v16);
    goto LABEL_45;
  }

  v3 = *(v2 + 24);
  if (v3 != *(v2 + 8))
  {
    v27 = a1[1];
    v55[0] = *a1;
    v55[1] = v27;
    sub_271577238(v55, *&a2);
    return *&a2;
  }

  v4 = *(v2 + 28);
  v5 = *(v2 + 12);
  v6 = (v5 * v3);
  if (v4 == v6)
  {
    v7 = (*(v2 + 16) * v4);
    if (!v7)
    {
      return *&a2;
    }

    v8 = *v2;
    LODWORD(a2) = *a1[1];
    if (v7 < 8)
    {
      v9 = v7;
      v10 = *v2;
LABEL_52:
      v49 = v9 + 1;
      do
      {
        v10->i32[0] = LODWORD(a2);
        v10 = (v10 + 4);
        --v49;
      }

      while (v49 > 1);
      return *&a2;
    }

    v9 = v7 & 7;
    v10 = (v8 + 4 * (v7 & 0xFFFFFFF8));
    v46 = vdupq_lane_s32(*&a2, 0);
    v47 = v8 + 1;
    v48 = v7 & 0xFFFFFFF8;
    do
    {
      v47[-1] = v46;
      *v47 = v46;
      v47 += 2;
      v48 -= 8;
    }

    while (v48);
    if ((v7 & 0xFFFFFFF8) != v7)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v28 = *(v2 + 16);
    if (v3)
    {
      v29 = v5 == 0;
    }

    else
    {
      v29 = 1;
    }

    if (!v29 && v28 != 0)
    {
      v31 = a1[1];
      v32 = *v2;
      v33 = v28 - 1;
      if (v33)
      {
        if (!v6)
        {
          return *&a2;
        }

        v34 = 0;
        v35 = v32 + 1;
        do
        {
          LODWORD(a2) = *v31;
          v36 = v6;
          v37 = v32;
          if (v6 < 8)
          {
            goto LABEL_38;
          }

          v37 = (v32 + 4 * (v6 & 0xFFFFFFF8));
          v38 = vdupq_lane_s32(*&a2, 0);
          v39 = v6 & 0xFFFFFFF8;
          v40 = v35;
          do
          {
            v40[-1] = v38;
            *v40 = v38;
            v40 += 2;
            v39 -= 8;
          }

          while (v39);
          v36 = v6 & 7;
          if ((v6 & 0xFFFFFFF8) != v6)
          {
LABEL_38:
            v41 = v36 + 1;
            do
            {
              v37->i32[0] = LODWORD(a2);
              v37 = (v37 + 4);
              --v41;
            }

            while (v41 > 1);
          }

          v32 = (v32 + 4 * v4);
          ++v34;
          v35 = (v35 + 4 * v4);
        }

        while (v34 != v33);
      }

      if (!v6)
      {
        return *&a2;
      }

      LODWORD(a2) = *v31;
      if (v6 >= 8)
      {
        v44 = v6 & 7;
        v45 = (v32 + 4 * (v6 & 0xFFFFFFF8));
        v50 = vdupq_lane_s32(*&a2, 0);
        v51 = v32 + 1;
        v52 = v6 & 0xFFFFFFF8;
        do
        {
          v51[-1] = v50;
          *v51 = v50;
          v51 += 2;
          v52 -= 8;
        }

        while (v52);
        if ((v6 & 0xFFFFFFF8) == v6)
        {
          return *&a2;
        }
      }

      else
      {
        v44 = v6;
        v45 = v32;
      }

      v53 = v44 + 1;
      do
      {
        v45->i32[0] = LODWORD(a2);
        v45 = (v45 + 4);
        --v53;
      }

      while (v53 > 1);
    }
  }

  return *&a2;
}

unint64_t sub_271577238(unint64_t result, int32x2_t a2)
{
  v2 = *result;
  v3 = *(*result + 8);
  v4 = *(*result + 12);
  v5 = *(*result + 16);
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && v5 != 0)
  {
    v8 = *(result + 8);
    v9 = v4 - 1;
    v10 = *(v2 + 6);
    v11 = *v2;
    v12 = 4 * v10;
    v13 = v5 - 1;
    if (v13)
    {
      v14 = *(v2 + 7);
      v15 = v3 & 0xFFFFFFF8;
      v16 = 4 * v15;
      LODWORD(result) = 0;
      v17 = v11 + 1;
      if (v9)
      {
        v18 = 4 * v14;
        do
        {
          v19 = 0;
          v20 = v11;
          v21 = v17;
          v22 = v11;
          do
          {
            a2.i32[0] = *v8;
            v23 = v3;
            v24 = v22;
            if (v3 < 8)
            {
              goto LABEL_18;
            }

            v24 = (v22 + v16);
            v25 = vdupq_lane_s32(a2, 0);
            v26 = v3 & 0xFFFFFFF8;
            v27 = v21;
            do
            {
              v27[-1] = v25;
              *v27 = v25;
              v27 += 2;
              v26 -= 8;
            }

            while (v26);
            v23 = v3 & 7;
            if (v15 != v3)
            {
LABEL_18:
              v28 = v23 + 1;
              do
              {
                v24->i32[0] = a2.i32[0];
                v24 = (v24 + 4);
                --v28;
              }

              while (v28 > 1);
            }

            v22 = (v22 + 4 * v10);
            ++v19;
            v21 = (v21 + v12);
            v20 = (v20 + v12);
          }

          while (v19 != v9);
          a2.i32[0] = *v8;
          v29 = v3;
          if (v3 < 8)
          {
            goto LABEL_25;
          }

          v30 = 0;
          v22 = (v22 + v16);
          v31 = vdupq_lane_s32(a2, 0);
          do
          {
            v20[v30 / 0x10] = v31;
            v21[v30 / 0x10] = v31;
            v30 += 32;
          }

          while (v16 != v30);
          v29 = v3 & 7;
          if (v15 != v3)
          {
LABEL_25:
            v32 = v29 + 1;
            do
            {
              v22->i32[0] = a2.i32[0];
              v22 = (v22 + 4);
              --v32;
            }

            while (v32 > 1);
          }

          v11 = (v11 + v18);
          result = (result + 1);
          v17 = (v17 + v18);
        }

        while (result != v13);
      }

      else
      {
        do
        {
          a2.i32[0] = *v8;
          v33 = v3;
          v34 = v11;
          if (v3 < 8)
          {
            goto LABEL_34;
          }

          v34 = (v11 + v16);
          v35 = vdupq_lane_s32(a2, 0);
          v36 = v3 & 0xFFFFFFF8;
          v37 = v17;
          do
          {
            v37[-1] = v35;
            *v37 = v35;
            v37 += 2;
            v36 -= 8;
          }

          while (v36);
          v33 = v3 & 7;
          if (v15 != v3)
          {
LABEL_34:
            v38 = v33 + 1;
            do
            {
              v34->i32[0] = a2.i32[0];
              v34 = (v34 + 4);
              --v38;
            }

            while (v38 > 1);
          }

          v11 = (v11 + 4 * v14);
          result = (result + 1);
          v17 = (v17 + 4 * v14);
        }

        while (result != v13);
      }
    }

    if (v9)
    {
      v39 = 0;
      v40 = v3 - (v3 != 0) + 1;
      result = 4 * (v40 & 0xFFFFFFFFFFFFFFF8);
      v41 = v11 + 1;
      do
      {
        a2.i32[0] = *v8;
        v42 = v3;
        v43 = v11;
        if (v40 < 8)
        {
          goto LABEL_44;
        }

        v43 = (v11 + result);
        v44 = vdupq_lane_s32(a2, 0);
        v45 = v40 & 0xFFFFFFFFFFFFFFF8;
        v46 = v41;
        do
        {
          v46[-1] = v44;
          *v46 = v44;
          v46 += 2;
          v45 -= 8;
        }

        while (v45);
        v42 = v3 - (v40 & 0xFFFFFFFFFFFFFFF8);
        if (v40 != (v40 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_44:
          v47 = v42 + 1;
          do
          {
            v43->i32[0] = a2.i32[0];
            v43 = (v43 + 4);
            --v47;
          }

          while (v47 > 1);
        }

        v11 = (v11 + 4 * v10);
        ++v39;
        v41 = (v41 + v12);
      }

      while (v39 != v9);
    }

    a2.i32[0] = *v8;
    v48 = v3 - (v3 != 0) + 1;
    if (v48 < 8)
    {
      v49 = v11;
LABEL_52:
      v53 = v3 + 1;
      do
      {
        v49->i32[0] = a2.i32[0];
        v49 = (v49 + 4);
        --v53;
      }

      while (v53 > 1);
      return result;
    }

    v3 -= v48 & 0xFFFFFFFFFFFFFFF8;
    v49 = (v11 + 4 * (v48 & 0xFFFFFFFFFFFFFFF8));
    v50 = vdupq_lane_s32(a2, 0);
    v51 = v11 + 1;
    v52 = v48 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v51[-1] = v50;
      *v51 = v50;
      v51 += 2;
      v52 -= 8;
    }

    while (v52);
    if (v48 != (v48 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_52;
    }
  }

  return result;
}

float sub_271577500(void *a1, double a2)
{
  v2 = *a1;
  if (*(*a1 + 20) != 1)
  {
    v11 = *(v2 + 12);
    v12 = *(v2 + 16);
    if (*(v2 + 8))
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13 || v12 == 0)
    {
      return *&a2;
    }

    v15 = a1[1];
    v16 = v11 - 1;
    v17 = *v2;
    v18 = 4 * *(v2 + 24);
    v19 = v12 - 1;
    if (v19)
    {
      v20 = *(v2 + 28);
      if (!v16)
      {
        do
        {
          v46 = *v15;
          v17->i32[0] = *v15;
          v17->i32[1] = v46;
          v47 = *v15;
          v17->i32[2] = *v15;
          v17->i32[3] = v47;
          v17 = (v17 + 4 * v20);
          --v19;
        }

        while (v19);
        goto LABEL_45;
      }

      v21 = 0;
      v22 = &v17->i32[2];
      do
      {
        v23 = v22;
        v24 = v16;
        do
        {
          v25 = *v15;
          *(v23 - 2) = *v15;
          *(v23 - 1) = v25;
          v26 = *v15;
          *v23 = *v15;
          v23[1] = v26;
          v23 = (v23 + v18);
          --v24;
        }

        while (v24);
        v27 = *v15;
        *(v23 - 2) = *v15;
        *(v23 - 1) = v27;
        v28 = *v15;
        *v23 = *v15;
        v23[1] = v28;
        v17 = (v17 + 4 * v20);
        ++v21;
        v22 += v20;
      }

      while (v21 != v19);
    }

    else if (!v16)
    {
LABEL_45:
      v48 = *v15;
      v17->i32[0] = *v15;
      v17->i32[1] = v48;
      LODWORD(a2) = *v15;
      v17->i32[2] = *v15;
      v17->i32[3] = LODWORD(a2);
      return *&a2;
    }

    do
    {
      v44 = *v15;
      v17->i32[0] = *v15;
      v17->i32[1] = v44;
      v45 = *v15;
      v17->i32[2] = *v15;
      v17->i32[3] = v45;
      v17 = (v17 + v18);
      --v16;
    }

    while (v16);
    goto LABEL_45;
  }

  v3 = *(v2 + 24);
  if (v3 != *(v2 + 8))
  {
    v29 = a1[1];
    v60[0] = *a1;
    v60[1] = v29;
    sub_271577238(v60, *&a2);
    return *&a2;
  }

  v4 = *(v2 + 28);
  v5 = *(v2 + 12);
  v6 = (v5 * v3);
  if (v4 == v6)
  {
    v7 = (*(v2 + 16) * v4);
    if (!v7)
    {
      return *&a2;
    }

    v8 = *v2;
    LODWORD(a2) = *a1[1];
    if (v7 < 8)
    {
      v9 = v7;
      v10 = *v2;
LABEL_52:
      v54 = v9 + 1;
      do
      {
        v10->i32[0] = LODWORD(a2);
        v10 = (v10 + 4);
        --v54;
      }

      while (v54 > 1);
      return *&a2;
    }

    v9 = v7 & 7;
    v10 = (v8 + 4 * (v7 & 0xFFFFFFF8));
    v51 = vdupq_lane_s32(*&a2, 0);
    v52 = v8 + 1;
    v53 = v7 & 0xFFFFFFF8;
    do
    {
      v52[-1] = v51;
      *v52 = v51;
      v52 += 2;
      v53 -= 8;
    }

    while (v53);
    if ((v7 & 0xFFFFFFF8) != v7)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v30 = *(v2 + 16);
    if (v3)
    {
      v31 = v5 == 0;
    }

    else
    {
      v31 = 1;
    }

    if (!v31 && v30 != 0)
    {
      v33 = a1[1];
      v34 = *v2;
      v35 = v30 - 1;
      if (v35)
      {
        if (!v6)
        {
          return *&a2;
        }

        v36 = 0;
        v37 = v34 + 1;
        do
        {
          LODWORD(a2) = *v33;
          v38 = v6;
          v39 = v34;
          if (v6 < 8)
          {
            goto LABEL_38;
          }

          v39 = (v34 + 4 * (v6 & 0xFFFFFFF8));
          v40 = vdupq_lane_s32(*&a2, 0);
          v41 = v6 & 0xFFFFFFF8;
          v42 = v37;
          do
          {
            v42[-1] = v40;
            *v42 = v40;
            v42 += 2;
            v41 -= 8;
          }

          while (v41);
          v38 = v6 & 7;
          if ((v6 & 0xFFFFFFF8) != v6)
          {
LABEL_38:
            v43 = v38 + 1;
            do
            {
              v39->i32[0] = LODWORD(a2);
              v39 = (v39 + 4);
              --v43;
            }

            while (v43 > 1);
          }

          v34 = (v34 + 4 * v4);
          ++v36;
          v37 = (v37 + 4 * v4);
        }

        while (v36 != v35);
      }

      if (!v6)
      {
        return *&a2;
      }

      LODWORD(a2) = *v33;
      if (v6 >= 8)
      {
        v49 = v6 & 7;
        v50 = (v34 + 4 * (v6 & 0xFFFFFFF8));
        v55 = vdupq_lane_s32(*&a2, 0);
        v56 = v34 + 1;
        v57 = v6 & 0xFFFFFFF8;
        do
        {
          v56[-1] = v55;
          *v56 = v55;
          v56 += 2;
          v57 -= 8;
        }

        while (v57);
        if ((v6 & 0xFFFFFFF8) == v6)
        {
          return *&a2;
        }
      }

      else
      {
        v49 = v6;
        v50 = v34;
      }

      v58 = v49 + 1;
      do
      {
        v50->i32[0] = LODWORD(a2);
        v50 = (v50 + 4);
        --v58;
      }

      while (v58 > 1);
    }
  }

  return *&a2;
}

void sub_2715777F4(uint64_t a1, int a2, unint64_t a3)
{
  v41 = *MEMORY[0x277D85DE8];
  switch(a2)
  {
    case 1:
      *v40 = &unk_2881117F8;
      if (a3 <= 0x20)
      {
        v3 = 32;
      }

      else
      {
        v3 = a3;
      }

      v4 = v3 << 32;
      if (!HIDWORD(a3))
      {
        v4 = 0x2000000000;
      }

      v31 = &unk_288116190;
      if (a3)
      {
        ++v4;
      }

      *v38 = a3;
      *&v38[8] = v4;
      sub_27154547C(&v31, 0, 1, v38, 0);
      v31 = &unk_288116190;
      operator new();
    case 2:
      *v40 = &unk_288110F48;
      if (a3 <= 0x10)
      {
        v19 = 16;
      }

      else
      {
        v19 = a3;
      }

      v20 = v19 << 32;
      if (!HIDWORD(a3))
      {
        v20 = 0x1000000000;
      }

      v31 = &unk_288115F50;
      if (a3)
      {
        ++v20;
      }

      *v38 = a3;
      *&v38[8] = v20;
      sub_27154DDA4(&v31, 0, 2, v38, 0);
      v31 = &unk_288115F50;
      operator new();
    case 3:
      *v40 = &unk_288110658;
      if (a3 <= 0x10)
      {
        v9 = 16;
      }

      else
      {
        v9 = a3;
      }

      v10 = v9 << 32;
      if (!HIDWORD(a3))
      {
        v10 = 0x1000000000;
      }

      v31 = &unk_288115C80;
      if (a3)
      {
        ++v10;
      }

      *v38 = a3;
      *&v38[8] = v10;
      sub_271553E98(&v31, 0, 3, v38, 0);
      v31 = &unk_288115C80;
      operator new();
    case 4:
      *v40 = &unk_2881104B8;
      if (a3 <= 8)
      {
        v23 = 8;
      }

      else
      {
        v23 = a3;
      }

      v24 = v23 << 32;
      if (!HIDWORD(a3))
      {
        v24 = 0x800000000;
      }

      v31 = &unk_288115BF0;
      if (a3)
      {
        ++v24;
      }

      *v38 = a3;
      *&v38[8] = v24;
      sub_271559F7C(&v31, 0, 4, v38, 0.0);
      v31 = &unk_288115BF0;
      operator new();
    case 5:
      v37 = &unk_2881103C8;
      v15 = 2 * (a3 != 0);
      LODWORD(v16) = v15 * a3;
      if ((v15 * a3) <= 0x20)
      {
        LODWORD(v16) = 32;
      }

      if (HIDWORD(a3))
      {
        v16 = v16;
      }

      else
      {
        v16 = 32;
      }

      *v38 = 2;
      *&v38[4] = a3;
      *v40 = 1;
      *&v40[4] = v15 & 0x1FFFFFFFFLL | ((v16 >> 1) << 33);
      *&v38[12] = *v40;
      *&v38[20] = v16;
      *&v38[24] = a3;
      v39 = *&v40[4];
      v40[0] = 0;
      v31 = &unk_2881155A0;
      v32 = 0;
      sub_271546E30(0, 5, v38, v33);
      if (*&v38[24] && *&v38[28])
      {
        sub_2715472F0(0, v33, &v34);
      }

      else
      {
        v34 = *v38;
        v35 = *&v38[16];
        v36 = v39;
      }

      sub_271547A6C(&v31, v40);
      v31 = &unk_288115B60;
      operator new();
    case 6:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 23:
    case 24:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 33:
    case 34:
    case 35:
    case 36:
    case 39:
    case 40:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageBuffer.h", 980, "", 0, "The buffer does not support the given format", 0x2CuLL, sub_271852CA8);
      abort();
    case 7:
      v37 = &unk_288110228;
      v25 = 2 * (a3 != 0);
      LODWORD(v26) = v25 * a3;
      if ((v25 * a3) <= 0x10)
      {
        LODWORD(v26) = 16;
      }

      v31 = &unk_288115AD0;
      if (HIDWORD(a3))
      {
        v26 = v26;
      }

      else
      {
        v26 = 16;
      }

      *v38 = 2;
      *&v38[4] = a3;
      *v40 = 1;
      *&v40[4] = v25 & 0x1FFFFFFFFLL | ((v26 >> 1) << 33);
      *&v38[12] = *v40;
      *&v38[20] = v26;
      *&v38[24] = a3;
      v39 = *&v40[4];
      sub_271556084(&v31, 0, 7, v38, 0);
      v31 = &unk_288115AD0;
      operator new();
    case 8:
      v37 = &unk_288110138;
      v17 = 2 * (a3 != 0);
      LODWORD(v18) = v17 * a3;
      if ((v17 * a3) <= 8)
      {
        LODWORD(v18) = 8;
      }

      v31 = &unk_288115A40;
      if (HIDWORD(a3))
      {
        v18 = v18;
      }

      else
      {
        v18 = 8;
      }

      *v38 = 2;
      *&v38[4] = a3;
      *v40 = 1;
      *&v40[4] = v17 & 0x1FFFFFFFFLL | ((v18 >> 1) << 33);
      *&v38[12] = *v40;
      *&v38[20] = v18;
      *&v38[24] = a3;
      v39 = *&v40[4];
      sub_27155C168(&v31, 0, 8, v38, 0.0);
      v31 = &unk_288115A40;
      operator new();
    case 21:
      v37 = &unk_288111658;
      if (a3)
      {
        v7 = 3;
      }

      else
      {
        v7 = 0;
      }

      LODWORD(v8) = v7 * a3;
      if ((v7 * a3) <= 0x20)
      {
        LODWORD(v8) = 32;
      }

      v31 = &unk_288116100;
      if (HIDWORD(a3))
      {
        v8 = v8;
      }

      else
      {
        v8 = 32;
      }

      *v38 = 3;
      *&v38[4] = a3;
      *v40 = 1;
      *&v40[4] = v7 | (v8 << 32);
      *&v38[12] = *v40;
      *&v38[20] = v8;
      *&v38[24] = a3;
      v39 = *&v40[4];
      sub_271549C34(&v31, 0, 21, v38, 0);
      v31 = &unk_288116100;
      operator new();
    case 22:
      v37 = &unk_288111568;
      if (a3)
      {
        v11 = 3;
      }

      else
      {
        v11 = 0;
      }

      LODWORD(v12) = v11 * a3;
      if ((v11 * a3) <= 0x10)
      {
        LODWORD(v12) = 16;
      }

      v31 = &unk_288116070;
      if (HIDWORD(a3))
      {
        v12 = v12;
      }

      else
      {
        v12 = 16;
      }

      *v38 = 3;
      *&v38[4] = a3;
      *v40 = 1;
      *&v40[4] = v11 | (v12 << 32);
      *&v38[12] = *v40;
      *&v38[20] = v12;
      *&v38[24] = a3;
      v39 = *&v40[4];
      sub_27154FF94(&v31, 0, 22, v38, 0);
      v31 = &unk_288116070;
      operator new();
    case 25:
      v37 = &unk_288111318;
      v13 = 4 * (a3 != 0);
      LODWORD(v14) = v13 * a3;
      if ((v13 * a3) <= 0x20)
      {
        LODWORD(v14) = 32;
      }

      if (HIDWORD(a3))
      {
        v14 = v14;
      }

      else
      {
        v14 = 32;
      }

      *v38 = 4;
      *&v38[4] = a3;
      *v40 = 1;
      *&v40[4] = v13 & 0x3FFFFFFFFLL | ((v14 >> 2) << 34);
      *&v38[12] = *v40;
      *&v38[20] = v14;
      *&v38[24] = a3;
      v39 = *&v40[4];
      v40[0] = 0;
      v31 = &unk_288115480;
      v32 = 0;
      sub_27154B108(0, 25, v38, v33);
      if (*&v38[24] && *&v38[28])
      {
        sub_27154B5C8(0, v33, &v34);
      }

      else
      {
        v34 = *v38;
        v35 = *&v38[16];
        v36 = v39;
      }

      sub_27154BD44(&v31, v40);
      v31 = &unk_288115FE0;
      operator new();
    case 31:
      v37 = &unk_288110DA8;
      v21 = 4 * (a3 != 0);
      LODWORD(v22) = v21 * a3;
      if ((v21 * a3) <= 0x10)
      {
        LODWORD(v22) = 16;
      }

      v31 = &unk_288115EC0;
      if (HIDWORD(a3))
      {
        v22 = v22;
      }

      else
      {
        v22 = 16;
      }

      *v38 = 4;
      *&v38[4] = a3;
      *v40 = 1;
      *&v40[4] = v21 & 0x3FFFFFFFFLL | ((v22 >> 2) << 34);
      *&v38[12] = *v40;
      *&v38[20] = v22;
      *&v38[24] = a3;
      v39 = *&v40[4];
      sub_271557E9C(&v31, 0, 31, v38, 0);
      v31 = &unk_288115EC0;
      operator new();
    case 32:
      v37 = &unk_288110CB8;
      v29 = 4 * (a3 != 0);
      LODWORD(v30) = v29 * a3;
      if ((v29 * a3) <= 8)
      {
        LODWORD(v30) = 8;
      }

      v31 = &unk_288115E30;
      if (HIDWORD(a3))
      {
        v30 = v30;
      }

      else
      {
        v30 = 8;
      }

      *v38 = 4;
      *&v38[4] = a3;
      *v40 = 1;
      *&v40[4] = v29 & 0x3FFFFFFFFLL | ((v30 >> 2) << 34);
      *&v38[12] = *v40;
      *&v38[20] = v30;
      *&v38[24] = a3;
      v39 = *&v40[4];
      sub_27155E308(&v31, 0, 32, v38, 0.0);
      v31 = &unk_288115E30;
      operator new();
    case 37:
      v37 = &unk_2881108E8;
      v27 = 4 * (a3 != 0);
      LODWORD(v28) = v27 * a3;
      if ((v27 * a3) <= 0x20)
      {
        LODWORD(v28) = 32;
      }

      if (HIDWORD(a3))
      {
        v28 = v28;
      }

      else
      {
        v28 = 32;
      }

      *v38 = 4;
      *&v38[4] = a3;
      *v40 = 1;
      *&v40[4] = v27 & 0x3FFFFFFFFLL | ((v28 >> 2) << 34);
      *&v38[12] = *v40;
      *&v38[20] = v28;
      *&v38[24] = a3;
      v39 = *&v40[4];
      v40[0] = 0;
      v31 = &unk_288115480;
      v32 = 0;
      sub_27154B108(0, 37, v38, v33);
      if (*&v38[24] && *&v38[28])
      {
        sub_27154B5C8(0, v33, &v34);
      }

      else
      {
        v34 = *v38;
        v35 = *&v38[16];
        v36 = v39;
      }

      sub_27154BD44(&v31, v40);
      v31 = &unk_288115DA0;
      operator new();
    case 38:
      v37 = &unk_2881107F8;
      v5 = 4 * (a3 != 0);
      LODWORD(v6) = v5 * a3;
      if ((v5 * a3) <= 0x10)
      {
        LODWORD(v6) = 16;
      }

      v31 = &unk_288115D10;
      if (HIDWORD(a3))
      {
        v6 = v6;
      }

      else
      {
        v6 = 16;
      }

      *v38 = 4;
      *&v38[4] = a3;
      *v40 = 1;
      *&v40[4] = v5 & 0x3FFFFFFFFLL | ((v6 >> 2) << 34);
      *&v38[12] = *v40;
      *&v38[20] = v6;
      *&v38[24] = a3;
      v39 = *&v40[4];
      sub_2715520B8(&v31, 0, 38, v38, 0);
      v31 = &unk_288115D10;
      operator new();
    default:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
  }
}

void sub_271579118(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2715792F4(uint64_t a1, int a2, unint64_t a3)
{
  v33[2] = *MEMORY[0x277D85DE8];
  switch(a2)
  {
    case 1:
      v33[0] = &unk_2881117F8;
      v3 = 0x100000000;
      if (a3 > 0x100000000)
      {
        v3 = a3;
      }

      *v29 = a3;
      *&v29[8] = (a3 != 0) | (v3 << 32);
      sub_27155F860(&v27, v29);
      operator new();
    case 2:
      v33[0] = &unk_288110F48;
      v17 = 0x100000000;
      if (a3 > 0x100000000)
      {
        v17 = a3;
      }

      *v29 = a3;
      *&v29[8] = (a3 != 0) | (v17 << 32);
      sub_271560C74(&v27, v29);
      operator new();
    case 3:
      v33[0] = &unk_288110658;
      v8 = 0x100000000;
      if (a3 > 0x100000000)
      {
        v8 = a3;
      }

      *v29 = a3;
      *&v29[8] = (a3 != 0) | (v8 << 32);
      sub_271562088(&v27, v29);
      operator new();
    case 4:
      v33[0] = &unk_2881104B8;
      v20 = 0x100000000;
      if (a3 > 0x100000000)
      {
        v20 = a3;
      }

      *v29 = a3;
      *&v29[8] = (a3 != 0) | (v20 << 32);
      sub_27156349C(&v27, v29);
      operator new();
    case 5:
      v13 = 2 * (a3 != 0);
      LODWORD(v14) = v13 * a3;
      if (HIDWORD(a3))
      {
        v14 = v14;
      }

      else
      {
        v14 = 0;
      }

      *v29 = 2;
      *&v29[4] = a3;
      v28 = &unk_2881103C8;
      LODWORD(v33[0]) = 1;
      *(v33 + 4) = v13 & 0x1FFFFFFFFLL | ((v14 >> 1) << 33);
      *&v29[12] = v33[0];
      v30 = v14;
      v31 = a3;
      v32 = *(v33 + 4);
      sub_2715648B0(&v27, v29);
      operator new();
    case 6:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 23:
    case 24:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 33:
    case 34:
    case 35:
    case 36:
    case 39:
    case 40:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/ImageBuffer.h", 980, "", 0, "The buffer does not support the given format", 0x2CuLL, sub_271852CA8);
      abort();
    case 7:
      v21 = 2 * (a3 != 0);
      LODWORD(v22) = v21 * a3;
      if (HIDWORD(a3))
      {
        v22 = v22;
      }

      else
      {
        v22 = 0;
      }

      *v29 = 2;
      *&v29[4] = a3;
      v28 = &unk_288110228;
      LODWORD(v33[0]) = 1;
      *(v33 + 4) = v21 & 0x1FFFFFFFFLL | ((v22 >> 1) << 33);
      *&v29[12] = v33[0];
      v30 = v22;
      v31 = a3;
      v32 = *(v33 + 4);
      sub_271565CE0(&v27, v29);
      operator new();
    case 8:
      v15 = 2 * (a3 != 0);
      LODWORD(v16) = v15 * a3;
      if (HIDWORD(a3))
      {
        v16 = v16;
      }

      else
      {
        v16 = 0;
      }

      *v29 = 2;
      *&v29[4] = a3;
      v28 = &unk_288110138;
      LODWORD(v33[0]) = 1;
      *(v33 + 4) = v15 & 0x1FFFFFFFFLL | ((v16 >> 1) << 33);
      *&v29[12] = v33[0];
      v30 = v16;
      v31 = a3;
      v32 = *(v33 + 4);
      sub_27156710C(&v27, v29);
      operator new();
    case 21:
      if (a3)
      {
        v6 = 3;
      }

      else
      {
        v6 = 0;
      }

      LODWORD(v7) = v6 * a3;
      if (HIDWORD(a3))
      {
        v7 = v7;
      }

      else
      {
        v7 = 0;
      }

      *v29 = 3;
      *&v29[4] = a3;
      v28 = &unk_288111658;
      LODWORD(v33[0]) = 1;
      *(v33 + 4) = v6 | (v7 << 32);
      *&v29[12] = v33[0];
      v30 = v7;
      v31 = a3;
      v32 = *(v33 + 4);
      sub_271568530(&v27, v29);
      operator new();
    case 22:
      if (a3)
      {
        v9 = 3;
      }

      else
      {
        v9 = 0;
      }

      LODWORD(v10) = v9 * a3;
      if (HIDWORD(a3))
      {
        v10 = v10;
      }

      else
      {
        v10 = 0;
      }

      *v29 = 3;
      *&v29[4] = a3;
      v28 = &unk_288111568;
      LODWORD(v33[0]) = 1;
      *(v33 + 4) = v9 | (v10 << 32);
      *&v29[12] = v33[0];
      v30 = v10;
      v31 = a3;
      v32 = *(v33 + 4);
      sub_27156985C(&v27, v29);
      operator new();
    case 25:
      v11 = 4 * (a3 != 0);
      LODWORD(v12) = v11 * a3;
      if (HIDWORD(a3))
      {
        v12 = v12;
      }

      else
      {
        v12 = 0;
      }

      *v29 = 4;
      *&v29[4] = a3;
      v28 = &unk_288111318;
      LODWORD(v33[0]) = 1;
      *(v33 + 4) = v11 & 0x3FFFFFFFFLL | ((v12 >> 2) << 34);
      *&v29[12] = v33[0];
      v30 = v12;
      v31 = a3;
      v32 = *(v33 + 4);
      sub_27156AB88(&v27, v29);
      operator new();
    case 31:
      v18 = 4 * (a3 != 0);
      LODWORD(v19) = v18 * a3;
      if (HIDWORD(a3))
      {
        v19 = v19;
      }

      else
      {
        v19 = 0;
      }

      *v29 = 4;
      *&v29[4] = a3;
      v28 = &unk_288110DA8;
      LODWORD(v33[0]) = 1;
      *(v33 + 4) = v18 & 0x3FFFFFFFFLL | ((v19 >> 2) << 34);
      *&v29[12] = v33[0];
      v30 = v19;
      v31 = a3;
      v32 = *(v33 + 4);
      sub_27156BFC0(&v27, v29);
      operator new();
    case 32:
      v25 = 4 * (a3 != 0);
      LODWORD(v26) = v25 * a3;
      if (HIDWORD(a3))
      {
        v26 = v26;
      }

      else
      {
        v26 = 0;
      }

      *v29 = 4;
      *&v29[4] = a3;
      v28 = &unk_288110CB8;
      LODWORD(v33[0]) = 1;
      *(v33 + 4) = v25 & 0x3FFFFFFFFLL | ((v26 >> 2) << 34);
      *&v29[12] = v33[0];
      v30 = v26;
      v31 = a3;
      v32 = *(v33 + 4);
      sub_27156D3EC(&v27, v29);
      operator new();
    case 37:
      v23 = 4 * (a3 != 0);
      LODWORD(v24) = v23 * a3;
      if (HIDWORD(a3))
      {
        v24 = v24;
      }

      else
      {
        v24 = 0;
      }

      *v29 = 4;
      *&v29[4] = a3;
      v28 = &unk_2881108E8;
      LODWORD(v33[0]) = 1;
      *(v33 + 4) = v23 & 0x3FFFFFFFFLL | ((v24 >> 2) << 34);
      *&v29[12] = v33[0];
      v30 = v24;
      v31 = a3;
      v32 = *(v33 + 4);
      sub_27156E810(&v27, v29);
      operator new();
    case 38:
      v4 = 4 * (a3 != 0);
      LODWORD(v5) = v4 * a3;
      if (HIDWORD(a3))
      {
        v5 = v5;
      }

      else
      {
        v5 = 0;
      }

      *v29 = 4;
      *&v29[4] = a3;
      v28 = &unk_2881107F8;
      LODWORD(v33[0]) = 1;
      *(v33 + 4) = v4 & 0x3FFFFFFFFLL | ((v5 >> 2) << 34);
      *&v29[12] = v33[0];
      v30 = v5;
      v31 = a3;
      v32 = *(v33 + 4);
      sub_27156FC48(&v27, v29);
      operator new();
    default:
      sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, "", 0, "Runtime format not in given Formats list", 0x28uLL, sub_271852CA8);
      abort();
  }
}

void sub_27157A738(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27157A9AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27157AAB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27157ABB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27157ACB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27157ADBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27157AEC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27157AFC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27157B0C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27157B1CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27157B2D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27157B3D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27157B4D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27157B5DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27157B6E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27157B710(uint64_t a1, int a2)
{
  v2 = a2;
  v4[0] = 0;
  v4[1] = 0;
  value = v4;
  sub_271810FE4();
}

void sub_27157B9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  sub_27112F828(&a12);
  sub_27112F828(&a9);
  sub_27112F828(v12);
  _Unwind_Resume(a1);
}

CFTypeID sub_27157BAA4@<X0>(CFTypeID result@<X0>, _BYTE *a2@<X8>)
{
  v4 = *result;
  v3 = *(result + 8);
  if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v8 = result;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    result = v8;
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  else if (!v4)
  {
    goto LABEL_12;
  }

  v5 = *MEMORY[0x277CC4DE8];
  value = 0;
  if (v5)
  {
    result = CFDictionaryGetValueIfPresent(*result, v5, &value);
    if (result)
    {
      v6 = value;
      if (value)
      {
        TypeID = CFDictionaryGetTypeID();
        result = CFGetTypeID(v6);
        if (result == TypeID)
        {
          CFRetain(v6);
          sub_27157C100(&v12, v6);
        }
      }

      v9 = 0;
      v10 = 0;
    }
  }

LABEL_12:
  *a2 = 0;
  a2[16] = 0;
  return result;
}

void sub_27157BCF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_27112F828(v5 - 48);
  sub_27157C440(va);
  _Unwind_Resume(a1);
}

BOOL sub_27157BD28(const void **a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      if (v5)
      {
        goto LABEL_4;
      }

LABEL_9:
      v8 = *a1;
      goto LABEL_10;
    }
  }

  if (!v5)
  {
    goto LABEL_9;
  }

LABEL_4:
  v7 = *a2;
  v6 = *(a2 + 8);
  if (v6 && (atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v8 = *a1;
    if (v7)
    {
      return CFEqual(v8, *a2) != 0;
    }
  }

  else
  {
    v8 = *a1;
    if (v7)
    {
      return CFEqual(v8, *a2) != 0;
    }
  }

LABEL_10:
  v10 = a1[1];
  if (v10 && (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v11 = v8;
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if (v11)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v13 = *a2;
  v12 = *(a2 + 8);
  if (!v12)
  {
    return v13 == 0;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v13 == 0;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  return v13 == 0;
}

void sub_27157BFD4(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    CFRetain(v3);
  }

  sub_27157C100(&v4, v3);
}

void sub_27157C304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_27112F828(v15);
  _Unwind_Resume(a1);
}

void sub_27157C384(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27157C3BC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_27157C3E0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP14__CFDictionaryEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP14__CFDictionaryEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP14__CFDictionaryEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP14__CFDictionaryEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_27157C440(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    v1 = *(result + 8);
    if (v1)
    {
      if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v2 = result;
        (v1->__on_zero_shared)(v1);
        std::__shared_weak_count::__release_weak(v1);
        return v2;
      }
    }
  }

  return result;
}

void sub_27157C4BC(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    CFRetain(v3);
  }

  sub_271150CCC(&v4, v3);
}

uint64_t sub_27157C5E8(uint64_t *a1, uint64_t a2, unsigned int *a3)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v6 = a3;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    a3 = v6;
    if (v4)
    {
LABEL_4:
      valuePtr = *a3;
      v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberNSIntegerType, &valuePtr);
      sub_27143B84C(&v8, v5);
    }
  }

  else if (v4)
  {
    goto LABEL_4;
  }

  return 0;
}

void sub_27157C7E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27157C7F4(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    v6 = a3;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    a3 = v6;
    if (v4)
    {
LABEL_4:
      valuePtr = *a3;
      v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberNSIntegerType, &valuePtr);
      sub_27143B84C(&v8, v5);
    }
  }

  else if (v4)
  {
    goto LABEL_4;
  }

  return 0;
}

void sub_27157C9EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27157CBD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27157CC2C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *v2;
  v3 = v2[1];
  if (!v3 || (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 323, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_19;
      }

      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "IsValid()", 9, "", 0);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
LABEL_19:
      qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_26:
    abort();
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
LABEL_6:
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v13 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v13;
    }

    return CVPixelBufferGetPixelFormatType(v6);
  }

LABEL_20:
  v6 = 0;

  return CVPixelBufferGetPixelFormatType(v6);
}

uint64_t sub_27157CE68(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 340, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_29;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = a2;
  v19 = *(a1 + 8);
  v12 = v19;
  if (atomic_load_explicit((v19 + 104), memory_order_acquire) != -1)
  {
    v21 = &v19;
    v20 = &v21;
    std::__call_once((v19 + 104), &v20, sub_2715812EC);
  }

  if (v11 >= (*(v12 + 120) - *(v12 + 112)) >> 3)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 341, "idx < p_->GetCachedBaseAddress().size()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v13 = qword_28087C408, v14 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "idx < p_->GetCachedBaseAddress().size()", 39, "", 0);
        goto LABEL_24;
      }
    }

    else
    {
      v13 = qword_28087C408;
      v14 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_29;
      }
    }

    do
    {
      v16 = *v13;
      v15 = *(v13 + 8);
      v13 += 16;
      v16(v15, "idx < p_->GetCachedBaseAddress().size()", 39, "", 0);
    }

    while (v13 != v14);
    if (byte_28087C430)
    {
      goto LABEL_23;
    }

LABEL_29:
    abort();
  }

LABEL_24:
  v17 = *(a1 + 8);
  v19 = v17;
  if (atomic_load_explicit((v17 + 104), memory_order_acquire) != -1)
  {
    v21 = &v19;
    v20 = &v21;
    std::__call_once((v17 + 104), &v20, sub_2715812EC);
  }

  return *(*(v17 + 112) + 8 * v11);
}

void *sub_27157D16C(void *result)
{
  *result = &unk_288115A20;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_27157D200(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *v4;
    v5 = v4[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    if (v6)
    {
      sub_2715821B8(*(a1 + 8));
    }
  }

  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = *(a1 + 16);
  *(a1 + 8) = v7;
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

void *sub_27157D2FC(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        if (!v4)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    if (v4)
    {
LABEL_5:
      sub_2715821B8(a1[1]);
    }
  }

LABEL_6:
  *a1 = &unk_288115A20;
  v5 = a1[2];
  if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return a1;
}

void sub_27157D414(void *a1)
{
  sub_27157D2FC(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27157D44C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *v4;
    v5 = v4[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    if (v6)
    {
      sub_2715822BC(*(a1 + 8));
    }
  }

  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = *(a1 + 16);
  *(a1 + 8) = v7;
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

void *sub_27157D548(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        if (!v4)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    if (v4)
    {
LABEL_5:
      sub_2715822BC(a1[1]);
    }
  }

LABEL_6:
  *a1 = &unk_288115A20;
  v5 = a1[2];
  if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return a1;
}

void sub_27157D660(void *a1)
{
  sub_27157D548(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27157D698(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v4;
    *(a1 + 8) = v5;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *a1 = v4;
    *(a1 + 8) = 0;
  }

  *(a1 + 16) = a3;
  v6 = vceq_s32(vdup_n_s32(a3), 0x200000001);
  v7.i64[0] = v6.u32[0];
  v7.i64[1] = v6.u32[1];
  *(a1 + 24) = vandq_s8(v7, vdupq_n_s64(1uLL));
  *(a1 + 40) = 850045863;
  v8 = 0uLL;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = a2;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v8 = 0uLL;
      a2 = v9;
    }
  }

  *(a1 + 120) = v8;
  *(a1 + 104) = v8;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = &unk_288109288;
  IOSurface = CVPixelBufferGetIOSurface(*a2);
  sub_2717F23C8(&v11, IOSurface, 1);
}

void sub_27157D8A0(_Unwind_Exception *a1)
{
  sub_2717F319C(v2);
  v4 = *(v1 + 112);
  if (v4)
  {
    *(v1 + 120) = v4;
    operator delete(v4);
  }

  sub_27157FEB4(v1);
  _Unwind_Resume(a1);
}

void sub_27157D8CC(int a1, CFTypeRef cf, int a3)
{
  if (cf)
  {
    if (a3)
    {
      v3 = cf;
      CFRetain(cf);
      cf = v3;
    }
  }

  sub_271581C74(&v4, cf);
}

void sub_27157DAB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  std::__shared_weak_count::~__shared_weak_count(v11);
  operator delete(v13);
  sub_27112F828(&a11);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_27157DADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_27112F828(&a11);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_27157DAF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  pixelBufferOut = 0;
  sub_27157BFD4(v5, a5);
}

void sub_27157E37C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (*(v31 - 105) < 0)
  {
    operator delete(*(v31 - 128));
    if ((v30 & 1) == 0)
    {
LABEL_6:
      sub_27157F0A8(&a10);
      _Unwind_Resume(a1);
    }
  }

  else if (!v30)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v29);
  goto LABEL_6;
}

void sub_27157E480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_27112F828(v14 - 128);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27157E4B8()
{
  if (*(v0 - 129) < 0)
  {
    operator delete(*(v0 - 152));
  }

  JUMPOUT(0x27157E518);
}

void sub_27157E4D4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x27157E518);
}

void sub_27157E514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_271130878(&a26);
  sub_27112F828(&a22);
  _Unwind_Resume(a1);
}

void sub_27157E530()
{
  v1 = *(v0 - 128);
  *(v0 - 128) = 0;
  if (v1)
  {
    sub_27184D728(v0 - 128, v1);
  }

  JUMPOUT(0x27157E518);
}

void *sub_27157E54C(void *result)
{
  *result = &unk_288115A20;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_27157E6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112F828(va);
  _Unwind_Resume(a1);
}

void sub_27157E700(unsigned int *a1, OSType a2, void *a3, uint64_t a4, uint64_t a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v22[0] = 0;
  v24 = 0;
  if (*(a5 + 32) != 1)
  {
LABEL_8:
    pixelFormatType = a2;
    if (sub_2715742DC(a2) >= 2)
    {
      v17 = 0;
      v18.__r_.__value_.__r.__words[0] = &v16;
      v18.__r_.__value_.__l.__size_ = "MakeViewPixelBuffer";
      v18.__r_.__value_.__r.__words[2] = &v16;
      v19 = "MakeViewPixelBuffer";
      v20 = "MakeViewPixelBuffer";
      v21 = &v18;
      sub_2712C3608(&v21);
      v18.__r_.__value_.__r.__words[0] = &v16;
      v18.__r_.__value_.__l.__size_ = " cannot be used to create a planar view CVPixelBufferRef, but given format is planar ";
      v18.__r_.__value_.__r.__words[2] = &v16;
      v19 = " cannot be used to create a planar view CVPixelBufferRef, but given format is planar ";
      v20 = " cannot be used to create a planar view CVPixelBufferRef, but given format is planar ";
      if (v17 != -1)
      {
        v21 = &v18;
        (off_288133900[v17])(&v21, &v16);
        sub_2711FE4F8();
      }

      sub_2711308D4();
    }

    v14 = 0;
    if ((a4 & 0x100000000) == 0)
    {
      v10 = *a1;
      v11 = sub_2712B6A04(a2);
      v12 = sub_2712BA740(a2) - 1;
      if (v12 > 2)
      {
        v13 = 1;
      }

      else
      {
        v13 = dword_27189B034[v12];
      }

      LODWORD(a4) = v11 * v10 * v13;
    }

    if (v24 == 1)
    {
      operator new();
    }

    if (CVPixelBufferCreateWithBytes(*MEMORY[0x277CBECE8], *a1, a1[1], a2, a3, a4, 0, 0, 0, &v14))
    {
      v17 = 0;
      v18.__r_.__value_.__r.__words[0] = &v16;
      v18.__r_.__value_.__l.__size_ = "MakeViewPixelBuffer";
      v18.__r_.__value_.__r.__words[2] = &v16;
      v19 = "MakeViewPixelBuffer";
      v20 = "MakeViewPixelBuffer";
      v21 = &v18;
      sub_2712C3608(&v21);
      v18.__r_.__value_.__r.__words[0] = &v16;
      v18.__r_.__value_.__l.__size_ = " for format ";
      v18.__r_.__value_.__r.__words[2] = &v16;
      v19 = " for format ";
      v20 = " for format ";
      if (v17 != -1)
      {
        v21 = &v18;
        (*(&off_2881338B8 + v17))(&v21, &v16);
        sub_2711FE4F8();
      }

      sub_2711308D4();
    }

    sub_271581C74(&v16, v14);
  }

  v9 = *(a5 + 24);
  if (v9)
  {
    if (v9 == a5)
    {
      v23 = v22;
      (*(*v9 + 24))(v9, v22);
      goto LABEL_7;
    }

    v9 = (*(*v9 + 16))(v9);
  }

  v23 = v9;
LABEL_7:
  v24 = 1;
  goto LABEL_8;
}

void sub_27157EE3C(_Unwind_Exception *a1)
{
  MEMORY[0x2743BF050](v1, 0x1020C40A5B76CDFLL);
  sub_2712252F8(v2 - 112);
  _Unwind_Resume(a1);
}

void sub_27157EE68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  std::__shared_weak_count::~__shared_weak_count(v25);
  operator delete(v28);
  sub_27112F828(&a25);
  sub_2712252F8(v26 - 112);
  _Unwind_Resume(a1);
}

void sub_27157EE98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_27157EF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_271130878(va);
  sub_2712252F8(v17 - 112);
  _Unwind_Resume(a1);
}

uint64_t sub_27157F0A8(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = result;
    (**result)();
    return v1;
  }

  else if (*(result + 31) < 0)
  {
    v2 = result;
    operator delete(*(result + 8));
    return v2;
  }

  return result;
}

void sub_27157F130(void *a1)
{
  *a1 = &unk_288115A20;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

void sub_27157F1D8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 347, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_18;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "IsValid()", 9, "", 0);
    }

    while (v7 != v8);
    if (byte_28087C430)
    {
      goto LABEL_12;
    }

LABEL_18:
    abort();
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = *(a1 + 8);
  v13 = *(v11 + 144);
  v12 = *(v11 + 152);
  *a2 = &unk_288109288;
  a2[1] = v13;
  a2[2] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }
}

size_t sub_27157F398(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *v2;
  v3 = v2[1];
  if (!v3 || (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 293, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_19;
      }

      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "IsValid()", 9, "", 0);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
LABEL_19:
      qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_26:
    abort();
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
LABEL_6:
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v13 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v13;
    }

    return CVPixelBufferGetWidth(v6);
  }

LABEL_20:
  v6 = 0;

  return CVPixelBufferGetWidth(v6);
}

size_t sub_27157F5D4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *v2;
  v3 = v2[1];
  if (!v3 || (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 303, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_19;
      }

      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "IsValid()", 9, "", 0);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
LABEL_19:
      qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_26:
    abort();
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
LABEL_6:
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v13 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v13;
    }

    return CVPixelBufferGetHeight(v6);
  }

LABEL_20:
  v6 = 0;

  return CVPixelBufferGetHeight(v6);
}

size_t sub_27157F810(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_12;
  }

  v4 = *v2;
  v3 = v2[1];
  if (!v3 || (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/CoreVideo/src/PixelBufferRef.cpp", 313, "IsValid()", 9uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1)
      {
        goto LABEL_19;
      }

      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v9 = qword_28087C408;
      v10 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_26;
      }
    }

    do
    {
      v12 = *v9;
      v11 = *(v9 + 8);
      v9 += 16;
      v12(v11, "IsValid()", 9, "", 0);
    }

    while (v9 != v10);
    if (byte_28087C430)
    {
LABEL_19:
      qword_28087C420(*algn_28087C428, "IsValid()", 9, "", 0);
      v5 = *(a1 + 8);
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }

LABEL_26:
    abort();
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_5:
  v5 = *(a1 + 8);
  if (v5)
  {
LABEL_6:
    v6 = *v5;
    v7 = *(v5 + 8);
    if (v7 && (atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v13 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v13;
    }

    return CVPixelBufferGetBytesPerRow(v6);
  }

LABEL_20:
  v6 = 0;

  return CVPixelBufferGetBytesPerRow(v6);
}

_DWORD *sub_27157FA4C(_DWORD *a1, int a2, uint64_t a3, uint64_t a4)
{
  v23[1] = *MEMORY[0x277D85DE8];
  *a1 = a2;
  v6 = (a1 + 2);
  *&v15 = a3;
  *(&v15 + 1) = a4;
  sub_271580044();
  v7 = qword_28087BC40;
  if (!qword_28087BC40)
  {
    goto LABEL_8;
  }

  v8 = &qword_28087BC40;
  do
  {
    if (*(v7 + 32) >= a2)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 32) < a2));
  }

  while (v7);
  if (v8 != &qword_28087BC40 && *(v8 + 8) <= a2)
  {
    sub_271580044();
    v18 = v15;
    v19 = ": ";
    v20 = 2;
    v11 = v8[5];
    v10 = v8 + 5;
    v9 = v11;
    v12 = *(v10 + 23);
    if ((v12 & 0x80u) != 0)
    {
      v12 = v10[1];
    }

    else
    {
      v9 = v10;
    }

    v21 = v9;
    v22 = v12;
    sub_271131230(&v18, v23, 0, 0, v6);
  }

  else
  {
LABEL_8:
    sub_271580044();
    LODWORD(v20) = 0;
    sub_2714C49E0(&v17, &v18, &v15);
    if (v20 == -1)
    {
      sub_2711308D4();
    }

    v17 = &v16;
    (off_288133870[v20])(&v17, &v18);
    if (v20 != -1)
    {
      (off_288133840[v20])(&v17, &v18);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_27157FBD8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_271120E50(exception_object);
}

void sub_27157FBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_27157FC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void *sub_27157FC18(void *a1, int *a2)
{
  v11 = 0;
  v14 = v10;
  v15 = "{";
  v16 = v10;
  v17 = "{";
  v18 = "{";
  v12.__r_.__value_.__r.__words[0] = &v14;
  sub_271136E64(&v12);
  std::to_string(&v12, *a2);
  v14 = v10;
  v15 = &v12;
  v16 = v10;
  v17 = &v12;
  v18 = &v12;
  if (v11 == -1)
  {
    sub_2711308D4();
  }

  v13 = &v14;
  (off_288133858[v11])(&v13, v10);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  v14 = v10;
  v15 = ",";
  v16 = v10;
  v17 = ",";
  v18 = ",";
  if (v11 == -1)
  {
    goto LABEL_18;
  }

  v12.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_288133888 + v11))(&v12, v10);
  v14 = v10;
  v15 = (a2 + 2);
  v16 = v10;
  v17 = (a2 + 2);
  v18 = (a2 + 2);
  if (v11 == -1 || (v12.__r_.__value_.__r.__words[0] = &v14, (off_2881338A0[v11])(&v12, v10), v14 = v10, v15 = "}", v16 = v10, v17 = "}", v18 = "}", v11 == -1))
  {
LABEL_18:
    sub_2711308D4();
  }

  v12.__r_.__value_.__r.__words[0] = &v14;
  (*(&off_288133888 + v11))(&v12, v10);
  if (v11 == -1)
  {
    sub_2711308D4();
  }

  v14 = &v12;
  (off_288133870[v11])(__p, &v14, v10);
  if (v11 != -1)
  {
    (off_288133840[v11])(&v14, v10);
  }

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

  result = sub_271120E64(a1, v4, v5);
  if (v9 < 0)
  {
    v7 = result;
    operator delete(__p[0]);
    return v7;
  }

  return result;
}

void sub_27157FE5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27157FEB4(uint64_t a1)
{
  std::mutex::~mutex((a1 + 40));
  result = a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_27157FF3C()
{
  v0[6] = 0;
  v1[0] = v0;
  v1[1] = "Failed to create CVPixelBuffer: ";
  v1[2] = v0;
  v1[3] = "Failed to create CVPixelBuffer: ";
  v1[4] = "Failed to create CVPixelBuffer: ";
  v2 = v1;
  sub_27123B354(&v2);
  sub_27157222C();
}

void sub_271580044()
{
  v2 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087BC30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087BC30))
  {
    v1 = 0;
    operator new();
  }

  v0 = *MEMORY[0x277D85DE8];
}

void sub_2715808FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
    if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((SLOBYTE(STACK[0x207]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((SLOBYTE(STACK[0x227]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(STACK[0x210]);
  if ((SLOBYTE(STACK[0x207]) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a84 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  operator delete(a85);
  if ((a84 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a82 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(a83);
  if ((a82 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a80 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(a81);
  if ((a80 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a78 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(a79);
  if ((a78 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a76 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(a77);
  if ((a76 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a74 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(a75);
  if ((a74 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a72 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  operator delete(a73);
  if ((a72 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a65 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  operator delete(a67);
  if ((a65 & 0x80000000) == 0)
  {
LABEL_12:
    if ((a58 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  operator delete(a60);
  if ((a58 & 0x80000000) == 0)
  {
LABEL_13:
    if ((a51 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  operator delete(a53);
  if ((a51 & 0x80000000) == 0)
  {
LABEL_14:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(a46);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_15:
    if ((a37 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(a39);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_16:
    if ((a30 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(a32);
  if ((a30 & 0x80000000) == 0)
  {
LABEL_17:
    if ((a23 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(a25);
  if ((a23 & 0x80000000) == 0)
  {
LABEL_18:
    if ((a16 & 0x80000000) == 0)
    {
LABEL_38:
      __cxa_guard_abort(&qword_28087BC30);
      _Unwind_Resume(a1);
    }

LABEL_37:
    operator delete(a11);
    __cxa_guard_abort(&qword_28087BC30);
    _Unwind_Resume(a1);
  }

LABEL_36:
  operator delete(a18);
  if ((a16 & 0x80000000) == 0)
  {
    goto LABEL_38;
  }

  goto LABEL_37;
}

uint64_t sub_271580B40(uint64_t a1, int a2, char *__s)
{
  *a1 = a2;
  v5 = (a1 + 8);
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 31) = v6;
  if (v6)
  {
    memmove(v5, __s, v6);
  }

  *(v5 + v7) = 0;
  return a1;
}

void sub_271580BFC(uint64_t a1, uint64_t a2)
{
  qword_28087BC48 = 0;
  qword_28087BC40 = 0;
  qword_28087BC38 = &qword_28087BC40;
  if (a2)
  {
    operator new();
  }
}

void sub_271580DBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271580DF4(va);
  sub_271580E5C(qword_28087BC40);
  _Unwind_Resume(a1);
}

void *sub_271580DF4(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 63) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 40));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void sub_271580E5C(char *a1)
{
  if (a1)
  {
    sub_271580E5C(*a1);
    sub_271580E5C(*(a1 + 1));
    if (a1[63] < 0)
    {
      operator delete(*(a1 + 5));
      v2 = a1;
    }

    else
    {
      v2 = a1;
    }

    operator delete(v2);
  }
}

uint64_t sub_271580ED8(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_27112AFFC();
  }

  (*(*v3 + 48))(v3, &v6);
  v4 = *(a1 + 24);
  if (v4 == a1)
  {
    (*(*v4 + 32))(v4);
  }

  else if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  return MEMORY[0x2743BF050](a1, 0x1020C40A5B76CDFLL);
}

void sub_2715811B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_27112F828(v15);
  _Unwind_Resume(a1);
}

void sub_271581230(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271581268(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_27158128C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP11__IOSurfaceEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP11__IOSurfaceEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP11__IOSurfaceEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP11__IOSurfaceEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2715812EC(CVPixelBufferRef ****a1)
{
  IOSurface = CVPixelBufferGetIOSurface(****a1);
  v2 = IOSurface;
  if (IOSurface)
  {
    CFRetain(IOSurface);
  }

  sub_271580FAC(&buffer, v2);
}

void sub_271581528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  operator delete(v11);
  sub_27112F828(&a11);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_271581574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  operator delete(v9);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void sub_2715815B0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106C78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271581604(uint64_t a1)
{
  *(a1 + 160) = &unk_288109288;
  v2 = *(a1 + 176);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 136);
  if (v3)
  {
    *(a1 + 144) = v3;
    operator delete(v3);
  }

  std::mutex::~mutex((a1 + 64));
  v4 = *(a1 + 32);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

size_t sub_271581708(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_288133840[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_2715817FC(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_288133840[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_2711309E8(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_2715819C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_271581A18(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_271135560();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2711270EC();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_271581C58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void sub_271581E78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_27112F828(v15);
  _Unwind_Resume(a1);
}

void sub_271581EF8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271581F30(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_271581F54(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIP10__CVBufferEC1ES4_EUlS4_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIP10__CVBufferEC1ES4_EUlS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIP10__CVBufferEC1ES4_EUlS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIP10__CVBufferEC1ES4_EUlS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_271581FB4(uint64_t a1)
{
  std::mutex::lock((a1 + 40));
  v2 = *(a1 + 24) + 1;
  *(a1 + 24) = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      if (v2 && !*(a1 + 32))
      {
LABEL_5:
        v4 = (a1 + 40);

        goto LABEL_7;
      }

      v5 = 1;
    }

    else
    {
      if (v3 != 2 || *(a1 + 32))
      {
        goto LABEL_5;
      }

      v5 = 0;
    }

    CVPixelBufferUnlockBaseAddress(*a1, v5);
    *(a1 + 16) = 0;
  }

  if (*(a1 + 32))
  {
    v6 = 0;
    v7 = 2;
  }

  else
  {
    if (!*(a1 + 24))
    {
      goto LABEL_5;
    }

    v6 = 1;
    v7 = 1;
  }

  CVPixelBufferLockBaseAddress(*a1, v6);
  *(a1 + 16) = v7;
  v4 = (a1 + 40);

LABEL_7:
  std::mutex::unlock(v4);
}

void sub_2715820B8(uint64_t a1)
{
  std::mutex::lock((a1 + 40));
  v2 = *(a1 + 32) + 1;
  *(a1 + 32) = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      v6 = 1;
      if (*(a1 + 24) && !v2)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v3 != 2 || v2 != 0)
      {
        goto LABEL_7;
      }

      v6 = 0;
    }

    CVPixelBufferUnlockBaseAddress(*a1, v6);
    *(a1 + 16) = 0;
    v2 = *(a1 + 32);
  }

  if (v2)
  {
    v7 = 0;
    v8 = 2;
    goto LABEL_19;
  }

  if (!*(a1 + 24))
  {
LABEL_7:
    v5 = (a1 + 40);

    goto LABEL_9;
  }

  v7 = 1;
  v8 = 1;
LABEL_19:
  CVPixelBufferLockBaseAddress(*a1, v7);
  *(a1 + 16) = v8;
  v5 = (a1 + 40);

LABEL_9:
  std::mutex::unlock(v5);
}

void sub_2715821B8(uint64_t a1)
{
  std::mutex::lock((a1 + 40));
  v2 = *(a1 + 24) - 1;
  *(a1 + 24) = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      if (v2 && !*(a1 + 32))
      {
LABEL_5:
        v4 = (a1 + 40);

        goto LABEL_7;
      }

      v5 = 1;
    }

    else
    {
      if (v3 != 2 || *(a1 + 32))
      {
        goto LABEL_5;
      }

      v5 = 0;
    }

    CVPixelBufferUnlockBaseAddress(*a1, v5);
    *(a1 + 16) = 0;
  }

  if (*(a1 + 32))
  {
    v6 = 0;
    v7 = 2;
  }

  else
  {
    if (!*(a1 + 24))
    {
      goto LABEL_5;
    }

    v6 = 1;
    v7 = 1;
  }

  CVPixelBufferLockBaseAddress(*a1, v6);
  *(a1 + 16) = v7;
  v4 = (a1 + 40);

LABEL_7:
  std::mutex::unlock(v4);
}

void sub_2715822BC(uint64_t a1)
{
  std::mutex::lock((a1 + 40));
  v2 = *(a1 + 32) - 1;
  *(a1 + 32) = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (v3 == 1)
    {
      v6 = 1;
      if (*(a1 + 24) && !v2)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (v3 != 2 || v2 != 0)
      {
        goto LABEL_7;
      }

      v6 = 0;
    }

    CVPixelBufferUnlockBaseAddress(*a1, v6);
    *(a1 + 16) = 0;
    v2 = *(a1 + 32);
  }

  if (v2)
  {
    v7 = 0;
    v8 = 2;
    goto LABEL_19;
  }

  if (!*(a1 + 24))
  {
LABEL_7:
    v5 = (a1 + 40);

    goto LABEL_9;
  }

  v7 = 1;
  v8 = 1;
LABEL_19:
  CVPixelBufferLockBaseAddress(*a1, v7);
  *(a1 + 16) = v8;
  v5 = (a1 + 40);

LABEL_9:
  std::mutex::unlock(v5);
}

void sub_2715823BC(uint64_t a1, int a2)
{
  if ((a2 - 1) <= 0x25)
  {
    v2 = (dword_27189C678[a2 - 1] | dword_27189C5E0[a2 - 1]);
  }

  operator new();
}

void sub_2715827A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_2717F1CC4(va1);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_2715827C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_27115AAA0(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2715827F0(int a1, uint64_t a2, double a3)
{
  if (a1 == 2)
  {
    if (*(a2 + 24) == 2)
    {
      v10 = *(a2 + 8);
      v9 = *(a2 + 16);
      v12[0] = &unk_288109288;
      v12[1] = v10;
      v13 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_2715829FC(&v18, v12);
      a3 = *&v19;
      v12[0] = &unk_288109288;
      v5 = v13;
      if (!v13)
      {
        return *&a3;
      }

      goto LABEL_18;
    }

    goto LABEL_20;
  }

  if (a1 == 1)
  {
    if (*(a2 + 24) == 1)
    {
      v8 = *(a2 + 8);
      v7 = *(a2 + 16);
      v14[0] = &unk_288109288;
      v14[1] = v8;
      v15 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_2715829FC(&v18, v14);
      a3 = *&v19;
      v14[0] = &unk_288109288;
      v5 = v15;
      if (!v15)
      {
        return *&a3;
      }

      goto LABEL_18;
    }

LABEL_20:
    sub_2711308D4();
  }

  if (a1)
  {
    return *&a3;
  }

  if (*(a2 + 24))
  {
    goto LABEL_20;
  }

  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  v16[0] = &unk_288109288;
  v16[1] = v4;
  v17 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2715829FC(&v18, v16);
  a3 = *&v19;
  v16[0] = &unk_288109288;
  v5 = v17;
  if (!v17)
  {
    return *&a3;
  }

LABEL_18:
  if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return *&a3;
  }

  v11 = a3;
  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return *&v11;
}

void sub_2715829C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_2715829D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_2715829E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_2715829FC(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 173, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_51;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "ref.IsValid()", 13, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v12 = *(a2 + 8);
  v11 = *(a2 + 16);
  v39[0] = &unk_288109288;
  v39[1] = v12;
  v40 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2715C05FC(v39);
  v39[0] = &unk_288109288;
  v13 = v40;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = *(a2 + 16);
    v37 = *(a2 + 8);
    v38 = v14;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_22:
    v36 = &unk_288109288;
    goto LABEL_23;
  }

  v14 = *(a2 + 16);
  v37 = *(a2 + 8);
  v38 = v14;
  if (!v14)
  {
    goto LABEL_22;
  }

LABEL_18:
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v36 = &unk_288109288;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

LABEL_23:
  v16 = *(a2 + 8);
  v15 = *(a2 + 16);
  v33 = &unk_288109288;
  v34 = v16;
  v35 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = sub_2717F1FA4(&v33, 0);
  v41[0] = &unk_288109288;
  v41[1] = v34;
  v42 = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = sub_2717F3514(v41);
  v19 = sub_2717F3958(v41);
  v20 = sub_2717F3D9C(v41);
  v21 = sub_2717F41E0(v41);
  v22 = v18;
  v41[0] = &unk_288109288;
  v23 = v42;
  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = v18 | (v19 << 32);
  v25 = v20 | (v21 << 32);
  v33 = &unk_288109288;
  v26 = v35;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  if (v19)
  {
    v27 = v22 == 0;
  }

  else
  {
    v27 = 1;
  }

  if (v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = v24;
  }

  *a1 = v17;
  a1[1] = v28;
  a1[2] = v25;
  if (v21 * HIDWORD(v28) == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v29 = qword_28087C408, v30 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_47:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75, v33);
        return;
      }
    }

    else
    {
      v29 = qword_28087C408;
      v30 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_51;
      }
    }

    do
    {
      v32 = *v29;
      v31 = *(v29 + 8);
      v29 += 16;
      v32(v31, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v29 != v30);
    if (byte_28087C430)
    {
      goto LABEL_47;
    }

LABEL_51:
    abort();
  }
}

void sub_271582F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271582F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_2717F319C(&a18);
  sub_2717F319C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_271582F7C(uint64_t a1)
{
  *a1 = &unk_288109608;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

uint64_t sub_271582FF4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

void sub_271583050(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 40) >= 3u)
  {
    goto LABEL_36;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    v6 = *v3;
    v5 = v3[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      if (v6)
      {
LABEL_6:
        v7 = *(a1 + 40);
        switch(v7)
        {
          case 2:
            v16 = *(a1 + 24);
            v17 = *(a1 + 32);
            v22 = v16;
            v23 = v17;
            if (v17)
            {
              atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
              v16 = v22;
            }

            v21 = &unk_288109248;
            if (!v16)
            {
              goto LABEL_35;
            }

            v19 = *v16;
            v18 = v16[1];
            if (v18)
            {
              atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v18->__on_zero_shared)(v18);
                std::__shared_weak_count::__release_weak(v18);
              }
            }

            if (!v19)
            {
              goto LABEL_35;
            }

            break;
          case 1:
            v12 = *(a1 + 24);
            v13 = *(a1 + 32);
            v22 = v12;
            v23 = v13;
            if (v13)
            {
              atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
              v12 = v22;
            }

            v21 = &unk_288109248;
            if (!v12)
            {
              goto LABEL_35;
            }

            v15 = *v12;
            v14 = v12[1];
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v14->__on_zero_shared)(v14);
                std::__shared_weak_count::__release_weak(v14);
              }
            }

            if (!v15)
            {
              goto LABEL_35;
            }

            break;
          case 0:
            v8 = *(a1 + 24);
            v9 = *(a1 + 32);
            v22 = v8;
            v23 = v9;
            if (v9)
            {
              atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
              v8 = v22;
            }

            v21 = &unk_288109248;
            if (!v8)
            {
              goto LABEL_35;
            }

            v11 = *v8;
            v10 = v8[1];
            if (v10)
            {
              atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v10->__on_zero_shared)(v10);
                std::__shared_weak_count::__release_weak(v10);
              }
            }

            if (!v11)
            {
              goto LABEL_35;
            }

            break;
          default:
LABEL_36:
            sub_2711308D4();
        }

        sub_2717F9298(v22);
LABEL_35:
        sub_271583B94(v20, a1);
        sub_271253768(a2, v20);
        sub_2717F2278(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_27158331C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271583330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271583344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271583358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2717F2278(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27158336C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288109608;
  v4 = *(a2 + 8);
  if (v4)
  {
    v6 = *v4;
    v5 = v4[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v4 = *(a2 + 8);
      if (v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v4 = *(a2 + 8);
      if (v6)
      {
LABEL_5:
        v7 = *(v4 + 4);
        goto LABEL_8;
      }
    }
  }

  v7 = 0;
LABEL_8:
  *(a1 + 8) = v7;
  *(a1 + 16) = &unk_288109288;
  *(a1 + 24) = v4;
  v8 = *(a2 + 16);
  *(a1 + 32) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *(a2 + 8);
    v8 = *(a2 + 16);
  }

  *(a1 + 40) = 0;
  v32 = v4;
  v33 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = &byte_28087BFF8[8];
  if (!v4)
  {
    goto LABEL_16;
  }

  v11 = *v4;
  v10 = v4[1];
  if (!v10 || (atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v11)
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 163, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v12 = qword_28087C408, v13 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0, &unk_288109288);
        goto LABEL_24;
      }
    }

    else
    {
      v12 = qword_28087C408;
      v13 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_69;
      }
    }

    do
    {
      (*v12)(*(v12 + 8), "ref.IsValid()", 13, "", 0);
      v12 += 16;
    }

    while (v12 != v13);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_23;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!v11)
  {
    goto LABEL_16;
  }

LABEL_24:
  v39[0] = &unk_288109288;
  v39[1] = v32;
  v40 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2715C05FC(v39);
  v39[0] = &unk_288109288;
  v14 = v40;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    v15 = v33;
    v37 = v32;
    v38 = v33;
    if (v33)
    {
      goto LABEL_29;
    }

LABEL_33:
    v36 = &unk_288109288;
    goto LABEL_34;
  }

  v15 = v33;
  v37 = v32;
  v38 = v33;
  if (!v33)
  {
    goto LABEL_33;
  }

LABEL_29:
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  v36 = &unk_288109288;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

LABEL_34:
  v34[0] = &unk_288109288;
  v34[1] = v32;
  v35 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = sub_2717F3514(v34);
  v17 = sub_2717F3958(v34);
  v18 = sub_2717F3D9C(v34);
  v19 = sub_2717F41E0(v34);
  v34[0] = &unk_288109288;
  v20 = v35;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v27 = v19;
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
    v28 = v27;
    v9 = byte_28087BFF8 + 8;
    *(a1 + 48) = v16 | (v17 << 32);
    *(a1 + 56) = v18 | (v28 << 32);
    v21 = v33;
    if (!v33)
    {
      goto LABEL_40;
    }
  }

  else
  {
    *(a1 + 48) = v16 | (v17 << 32);
    *(a1 + 56) = v18 | (v19 << 32);
    v21 = v33;
    if (!v33)
    {
      goto LABEL_40;
    }
  }

  if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
    v22 = *(a2 + 8);
    if (v22)
    {
      goto LABEL_41;
    }

LABEL_51:
    v26 = 0;
    goto LABEL_52;
  }

LABEL_40:
  v22 = *(a2 + 8);
  if (!v22)
  {
    goto LABEL_51;
  }

LABEL_41:
  v23 = *(v22 + 8);
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
      v24 = *(a2 + 8);
      if (v24)
      {
        goto LABEL_44;
      }

LABEL_58:
      v26 = 0;
      if (!*(a1 + 48))
      {
        goto LABEL_59;
      }

LABEL_53:
      if ((v26 == 0) == (*(a1 + 52) == 0))
      {
        return a1;
      }

      goto LABEL_60;
    }
  }

  v24 = *(a2 + 8);
  if (!v24)
  {
    goto LABEL_58;
  }

LABEL_44:
  v26 = *v24;
  v25 = v24[1];
  if (!v25 || (atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_52:
    if (!*(a1 + 48))
    {
      goto LABEL_59;
    }

    goto LABEL_53;
  }

  (v25->__on_zero_shared)(v25);
  std::__shared_weak_count::__release_weak(v25);
  if (*(a1 + 48))
  {
    goto LABEL_53;
  }

LABEL_59:
  if (v26)
  {
LABEL_60:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 105, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8);
    if (v9[1072] == 1)
    {
      if (byte_28087C438 != 1 || (v29 = qword_28087C408, v30 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_67:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0, &unk_288109288);
        return a1;
      }
    }

    else
    {
      v29 = qword_28087C408;
      v30 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_69;
      }
    }

    do
    {
      (*v29)(*(v29 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v29 += 16;
    }

    while (v29 != v30);
    if (v9[1072])
    {
      goto LABEL_67;
    }

LABEL_69:
    abort();
  }

  return a1;
}

void sub_271583A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_2717F319C(&a18);
  sub_2717F319C(&a9);
  sub_271582FF4(v18);
  _Unwind_Resume(a1);
}

void sub_271583AF0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) >= 3u)
  {
    sub_2711308D4();
  }

  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 16);
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_271583B94(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_37;
  }

  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v9 = a1;
      v10 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a2 = v10;
      a1 = v9;
      if (v4)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v5 = *(a2 + 24);
          v6 = *(a2 + 32);
          v22 = &unk_288109288;
          v23 = v5;
          v24 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = v23;
            v6 = v24;
          }

          v20[0] = &unk_288109288;
          v20[1] = v5;
          v21 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_2715829FC(a1, v20);
          v20[0] = &unk_288109288;
          v7 = v21;
          if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          v22 = &unk_288109288;
          v8 = v24;
          if (v24)
          {
            if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v8->__on_zero_shared)(v8);
              std::__shared_weak_count::__release_weak(v8);
            }
          }

          return;
        }

LABEL_37:
        sub_2711308D4();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 52))
  {
    v11 = *(a2 + 48) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a2 + 48);
  if (v11)
  {
    v12 = 0;
  }

  v13 = 0x100000000;
  if (v12 > 0x100000000)
  {
    v13 = v12;
  }

  *a1 = 0;
  a1[1] = v12;
  a1[2] = (v12 != 0) | (v13 << 32);
  if (HIDWORD(v12) * v13 == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v14 = qword_28087C408, v15 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_33:
        v19 = qword_28087C420;
        v18 = *algn_28087C428;

        v19(v18, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        return;
      }
    }

    else
    {
      v14 = qword_28087C408;
      v15 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_38;
      }
    }

    do
    {
      v17 = *v14;
      v16 = *(v14 + 8);
      v14 += 16;
      v17(v16, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v14 != v15);
    if (byte_28087C430)
    {
      goto LABEL_33;
    }

LABEL_38:
    abort();
  }
}

void sub_271583ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F319C(&a9);
  sub_2717F319C(&a12);
  _Unwind_Resume(a1);
}

void sub_271583EF0(uint64_t a1, int a2)
{
  if ((a2 - 1) <= 0x25)
  {
    v2 = (dword_27189C678[a2 - 1] | dword_27189C5E0[a2 - 1]);
  }

  operator new();
}

void sub_2715842D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_2717F1CC4(va1);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_2715842F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_27115AAA0(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271584324(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == 2)
  {
    if (*(a2 + 24) != 2)
    {
      goto LABEL_20;
    }

    v12 = *(a2 + 8);
    v11 = *(a2 + 16);
    v14[0] = &unk_288109288;
    v14[1] = v12;
    v15 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_27158454C(v20, v14);
    v13 = v22;
    *a3 = v21;
    *(a3 + 16) = v13;
    *(a3 + 32) = v23;
    v14[0] = &unk_288109288;
    v7 = v15;
    if (v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1)
      {
        return;
      }

      if (!*(a2 + 24))
      {
        v5 = *(a2 + 8);
        v4 = *(a2 + 16);
        v18[0] = &unk_288109288;
        v18[1] = v5;
        v19 = v4;
        if (v4)
        {
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_27158454C(v20, v18);
        v6 = v22;
        *a3 = v21;
        *(a3 + 16) = v6;
        *(a3 + 32) = v23;
        v18[0] = &unk_288109288;
        v7 = v19;
        if (!v19)
        {
          return;
        }

LABEL_18:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }

LABEL_20:
      sub_2711308D4();
    }

    if (*(a2 + 24) != 1)
    {
      goto LABEL_20;
    }

    v9 = *(a2 + 8);
    v8 = *(a2 + 16);
    v16[0] = &unk_288109288;
    v16[1] = v9;
    v17 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_27158454C(v20, v16);
    v10 = v22;
    *a3 = v21;
    *(a3 + 16) = v10;
    *(a3 + 32) = v23;
    v16[0] = &unk_288109288;
    v7 = v17;
    if (v17)
    {
      goto LABEL_18;
    }
  }
}

void sub_271584510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271584524(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271584538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158454C(uint64_t a1, uint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 173, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_51;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "ref.IsValid()", 13, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v12 = *(a2 + 8);
  v11 = *(a2 + 16);
  v40[0] = &unk_288109288;
  v40[1] = v12;
  v41 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2715C05FC(v40);
  v40[0] = &unk_288109288;
  v13 = v41;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = *(a2 + 16);
    v38 = *(a2 + 8);
    v39 = v14;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_22:
    v37 = &unk_288109288;
    goto LABEL_23;
  }

  v14 = *(a2 + 16);
  v38 = *(a2 + 8);
  v39 = v14;
  if (!v14)
  {
    goto LABEL_22;
  }

LABEL_18:
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v37 = &unk_288109288;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

LABEL_23:
  v16 = *(a2 + 8);
  v15 = *(a2 + 16);
  v34 = &unk_288109288;
  v35 = v16;
  v36 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = sub_2717F1FA4(&v34, 0);
  *&v42 = &unk_288109288;
  *(&v42 + 1) = v35;
  v43 = v36;
  if (v36)
  {
    atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = sub_2717F3514(&v42);
  v19 = sub_2717F3958(&v42);
  v20 = sub_2717F3D9C(&v42);
  v21 = sub_2717F41E0(&v42);
  v22 = v18;
  *&v42 = &unk_288109288;
  v23 = v43;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = v18 | (v19 << 32);
  v25 = v20 | (v21 << 32);
  v34 = &unk_288109288;
  v26 = v36;
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  if (v19)
  {
    v27 = v22 == 0;
  }

  else
  {
    v27 = 1;
  }

  if (v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = v24;
  }

  *(&v42 + 4) = v28;
  LODWORD(v42) = 2;
  v29 = v42;
  LODWORD(v42) = 1;
  *(&v42 + 4) = v25;
  v30 = v42;
  *a1 = v17;
  *(a1 + 8) = v29;
  *(a1 + 16) = HIDWORD(v28);
  *(a1 + 20) = v30;
  *(a1 + 28) = v21;
  *(a1 + 32) = v28;
  *(a1 + 40) = v25;
  if (HIDWORD(v28) * v21 == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v31 = qword_28087C408, v32 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_47:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_48;
      }
    }

    else
    {
      v31 = qword_28087C408;
      v32 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_51;
      }
    }

    do
    {
      (*v31)(*(v31 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v31 += 16;
    }

    while (v31 != v32);
    if (byte_28087C430)
    {
      goto LABEL_47;
    }

LABEL_51:
    abort();
  }

LABEL_48:
  v33 = *MEMORY[0x277D85DE8];
}

void sub_271584B00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271584B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271584B28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_2717F319C(va1);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271584B48(uint64_t a1)
{
  *a1 = &unk_288109578;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_271584BC0(uint64_t a1, size_t *a2)
{
  if (*(a1 + 40) >= 3u)
  {
    goto LABEL_36;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    v6 = *v3;
    v5 = v3[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      if (v6)
      {
LABEL_6:
        v7 = *(a1 + 40);
        switch(v7)
        {
          case 2:
            v16 = *(a1 + 24);
            v17 = *(a1 + 32);
            v22 = v16;
            v23 = v17;
            if (v17)
            {
              atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
              v16 = v22;
            }

            v21 = &unk_288109248;
            if (!v16)
            {
              goto LABEL_35;
            }

            v19 = *v16;
            v18 = v16[1];
            if (v18)
            {
              atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v18->__on_zero_shared)(v18);
                std::__shared_weak_count::__release_weak(v18);
              }
            }

            if (!v19)
            {
              goto LABEL_35;
            }

            break;
          case 1:
            v12 = *(a1 + 24);
            v13 = *(a1 + 32);
            v22 = v12;
            v23 = v13;
            if (v13)
            {
              atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
              v12 = v22;
            }

            v21 = &unk_288109248;
            if (!v12)
            {
              goto LABEL_35;
            }

            v15 = *v12;
            v14 = v12[1];
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v14->__on_zero_shared)(v14);
                std::__shared_weak_count::__release_weak(v14);
              }
            }

            if (!v15)
            {
              goto LABEL_35;
            }

            break;
          case 0:
            v8 = *(a1 + 24);
            v9 = *(a1 + 32);
            v22 = v8;
            v23 = v9;
            if (v9)
            {
              atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
              v8 = v22;
            }

            v21 = &unk_288109248;
            if (!v8)
            {
              goto LABEL_35;
            }

            v11 = *v8;
            v10 = v8[1];
            if (v10)
            {
              atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v10->__on_zero_shared)(v10);
                std::__shared_weak_count::__release_weak(v10);
              }
            }

            if (!v11)
            {
              goto LABEL_35;
            }

            break;
          default:
LABEL_36:
            sub_2711308D4();
        }

        sub_2717F9298(v22);
LABEL_35:
        sub_271585750(v20, a1);
        sub_27129F754(a2, v20);
        sub_2717F2278(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_271584E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271584EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271584EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271584EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F2278(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271584EDC(uint64_t a1, uint64_t a2)
{
  v41[2] = *MEMORY[0x277D85DE8];
  *a1 = &unk_288109578;
  v4 = *(a2 + 8);
  if (v4)
  {
    v6 = *v4;
    v5 = v4[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v4 = *(a2 + 8);
      if (v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v4 = *(a2 + 8);
      if (v6)
      {
LABEL_5:
        v7 = *(v4 + 4);
        goto LABEL_8;
      }
    }
  }

  v7 = 0;
LABEL_8:
  *(a1 + 8) = v7;
  *(a1 + 16) = &unk_288109288;
  *(a1 + 24) = v4;
  v8 = *(a2 + 16);
  *(a1 + 32) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *(a2 + 8);
    v8 = *(a2 + 16);
  }

  *(a1 + 40) = 0;
  v32 = v4;
  v33 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4)
  {
    goto LABEL_16;
  }

  v10 = *v4;
  v9 = v4[1];
  if (!v9 || (atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v10)
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 163, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_68;
      }
    }

    do
    {
      (*v11)(*(v11 + 8), "ref.IsValid()", 13, "", 0);
      v11 += 16;
    }

    while (v11 != v12);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_23;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_24:
  v39[0] = &unk_288109288;
  v39[1] = v32;
  v40 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2715C05FC(v39);
  v39[0] = &unk_288109288;
  v13 = v40;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = v33;
    v37 = v32;
    v38 = v33;
    if (v33)
    {
      goto LABEL_29;
    }

LABEL_33:
    v36 = &unk_288109288;
    goto LABEL_34;
  }

  v14 = v33;
  v37 = v32;
  v38 = v33;
  if (!v33)
  {
    goto LABEL_33;
  }

LABEL_29:
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v36 = &unk_288109288;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

LABEL_34:
  v34[0] = &unk_288109288;
  v34[1] = v32;
  v35 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = sub_2717F3514(v34);
  v16 = sub_2717F3958(v34);
  v17 = sub_2717F3D9C(v34);
  v18 = sub_2717F41E0(v34);
  v34[0] = &unk_288109288;
  v19 = v35;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v20 = v18;
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    v18 = v20;
  }

  v21 = v17 | (v18 << 32);
  v22 = v15 | (v16 << 32);
  LODWORD(v41[0]) = 2;
  HIDWORD(v41[0]) = v22;
  *(a1 + 48) = v41[0];
  *(a1 + 56) = v16;
  LODWORD(v41[0]) = 1;
  *(v41 + 4) = v21;
  *(a1 + 60) = v41[0];
  *(a1 + 68) = v18;
  *(a1 + 72) = v22;
  *(a1 + 80) = v21;
  if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
    v23 = *(a2 + 8);
    if (v23)
    {
      goto LABEL_42;
    }

LABEL_50:
    v27 = 0;
    goto LABEL_51;
  }

  v23 = *(a2 + 8);
  if (!v23)
  {
    goto LABEL_50;
  }

LABEL_42:
  v24 = *(v23 + 8);
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
      v25 = *(a2 + 8);
      if (v25)
      {
        goto LABEL_45;
      }

LABEL_57:
      v27 = 0;
      if (!*(a1 + 72))
      {
        goto LABEL_58;
      }

LABEL_52:
      if ((v27 == 0) == (*(a1 + 76) == 0))
      {
        goto LABEL_67;
      }

      goto LABEL_59;
    }
  }

  v25 = *(a2 + 8);
  if (!v25)
  {
    goto LABEL_57;
  }

LABEL_45:
  v27 = *v25;
  v26 = v25[1];
  if (!v26 || (atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_51:
    if (!*(a1 + 72))
    {
      goto LABEL_58;
    }

    goto LABEL_52;
  }

  (v26->__on_zero_shared)(v26);
  std::__shared_weak_count::__release_weak(v26);
  if (*(a1 + 72))
  {
    goto LABEL_52;
  }

LABEL_58:
  if (v27)
  {
LABEL_59:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 105, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v28 = qword_28087C408, v29 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_66:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
        goto LABEL_67;
      }
    }

    else
    {
      v28 = qword_28087C408;
      v29 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_68;
      }
    }

    do
    {
      (*v28)(*(v28 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v28 += 16;
    }

    while (v28 != v29);
    if (byte_28087C430)
    {
      goto LABEL_66;
    }

LABEL_68:
    abort();
  }

LABEL_67:
  v30 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_27158562C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_2717F319C(va1);
  sub_2717F319C(va);
  sub_271582FF4(v2);
  _Unwind_Resume(a1);
}

void sub_2715856AC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) >= 3u)
  {
    sub_2711308D4();
  }

  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 16);
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_271585750(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_28;
  }

  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v9 = a1;
      v10 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a2 = v10;
      a1 = v9;
      if (v4)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v5 = *(a2 + 24);
          v6 = *(a2 + 32);
          *&v21 = &unk_288109288;
          *(&v21 + 1) = v5;
          v22 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = *(&v21 + 1);
            v6 = v22;
          }

          v19[0] = &unk_288109288;
          v19[1] = v5;
          v20 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_27158454C(a1, v19);
          v19[0] = &unk_288109288;
          v7 = v20;
          if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          *&v21 = &unk_288109288;
          v8 = v22;
          if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          goto LABEL_27;
        }

LABEL_28:
        sub_2711308D4();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 76))
  {
    v11 = *(a2 + 72) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a2 + 72);
  if (v11)
  {
    v12 = 0;
  }

  LODWORD(v21) = 2;
  *(&v21 + 4) = v12;
  v13 = 2 * (v12 != 0);
  LODWORD(v14) = v13 * v12;
  if (HIDWORD(v12))
  {
    v14 = v14;
  }

  else
  {
    v14 = 0;
  }

  v15 = v13 & 0x1FFFFFFFFLL | ((v14 >> 1) << 33);
  v16 = __PAIR64__(DWORD1(v21), 2);
  LODWORD(v21) = 1;
  *(&v21 + 4) = v15;
  v17 = v21;
  *a1 = 0;
  *(a1 + 8) = v16;
  *(a1 + 16) = HIDWORD(v12);
  *(a1 + 20) = v17;
  *(a1 + 28) = v14;
  *(a1 + 32) = v12;
  *(a1 + 40) = v15;
LABEL_27:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_2715859D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_2717F319C(va);
  sub_2717F319C(va1);
  _Unwind_Resume(a1);
}

void sub_2715859F4(uint64_t a1, int a2)
{
  if ((a2 - 1) <= 0x25)
  {
    v2 = (dword_27189C678[a2 - 1] | dword_27189C5E0[a2 - 1]);
  }

  operator new();
}

void sub_271585DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_2717F1CC4(va1);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271585DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_27115AAA0(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271585E28(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == 2)
  {
    if (*(a2 + 24) != 2)
    {
      goto LABEL_20;
    }

    v12 = *(a2 + 8);
    v11 = *(a2 + 16);
    v14[0] = &unk_288109288;
    v14[1] = v12;
    v15 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_271586050(v20, v14);
    v13 = v22;
    *a3 = v21;
    *(a3 + 16) = v13;
    *(a3 + 32) = v23;
    v14[0] = &unk_288109288;
    v7 = v15;
    if (v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1)
      {
        return;
      }

      if (!*(a2 + 24))
      {
        v5 = *(a2 + 8);
        v4 = *(a2 + 16);
        v18[0] = &unk_288109288;
        v18[1] = v5;
        v19 = v4;
        if (v4)
        {
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_271586050(v20, v18);
        v6 = v22;
        *a3 = v21;
        *(a3 + 16) = v6;
        *(a3 + 32) = v23;
        v18[0] = &unk_288109288;
        v7 = v19;
        if (!v19)
        {
          return;
        }

LABEL_18:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }

LABEL_20:
      sub_2711308D4();
    }

    if (*(a2 + 24) != 1)
    {
      goto LABEL_20;
    }

    v9 = *(a2 + 8);
    v8 = *(a2 + 16);
    v16[0] = &unk_288109288;
    v16[1] = v9;
    v17 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_271586050(v20, v16);
    v10 = v22;
    *a3 = v21;
    *(a3 + 16) = v10;
    *(a3 + 32) = v23;
    v16[0] = &unk_288109288;
    v7 = v17;
    if (v17)
    {
      goto LABEL_18;
    }
  }
}

void sub_271586014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271586028(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158603C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271586050(uint64_t a1, uint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 173, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_51;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "ref.IsValid()", 13, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v12 = *(a2 + 8);
  v11 = *(a2 + 16);
  v40[0] = &unk_288109288;
  v40[1] = v12;
  v41 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2715C05FC(v40);
  v40[0] = &unk_288109288;
  v13 = v41;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = *(a2 + 16);
    v38 = *(a2 + 8);
    v39 = v14;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_22:
    v37 = &unk_288109288;
    goto LABEL_23;
  }

  v14 = *(a2 + 16);
  v38 = *(a2 + 8);
  v39 = v14;
  if (!v14)
  {
    goto LABEL_22;
  }

LABEL_18:
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v37 = &unk_288109288;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

LABEL_23:
  v16 = *(a2 + 8);
  v15 = *(a2 + 16);
  v34 = &unk_288109288;
  v35 = v16;
  v36 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = sub_2717F1FA4(&v34, 0);
  *&v42 = &unk_288109288;
  *(&v42 + 1) = v35;
  v43 = v36;
  if (v36)
  {
    atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = sub_2717F3514(&v42);
  v19 = sub_2717F3958(&v42);
  v20 = sub_2717F3D9C(&v42);
  v21 = sub_2717F41E0(&v42);
  v22 = v18;
  *&v42 = &unk_288109288;
  v23 = v43;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = v18 | (v19 << 32);
  v25 = v20 | (v21 << 32);
  v34 = &unk_288109288;
  v26 = v36;
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  if (v19)
  {
    v27 = v22 == 0;
  }

  else
  {
    v27 = 1;
  }

  if (v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = v24;
  }

  *(&v42 + 4) = v28;
  LODWORD(v42) = 3;
  v29 = v42;
  LODWORD(v42) = 1;
  *(&v42 + 4) = v25;
  v30 = v42;
  *a1 = v17;
  *(a1 + 8) = v29;
  *(a1 + 16) = HIDWORD(v28);
  *(a1 + 20) = v30;
  *(a1 + 28) = v21;
  *(a1 + 32) = v28;
  *(a1 + 40) = v25;
  if (HIDWORD(v28) * v21 == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v31 = qword_28087C408, v32 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_47:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_48;
      }
    }

    else
    {
      v31 = qword_28087C408;
      v32 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_51;
      }
    }

    do
    {
      (*v31)(*(v31 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v31 += 16;
    }

    while (v31 != v32);
    if (byte_28087C430)
    {
      goto LABEL_47;
    }

LABEL_51:
    abort();
  }

LABEL_48:
  v33 = *MEMORY[0x277D85DE8];
}

void sub_271586604(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271586618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158662C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_2717F319C(va1);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_27158664C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) >= 3u)
  {
    goto LABEL_36;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    v6 = *v3;
    v5 = v3[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      if (v6)
      {
LABEL_6:
        v7 = *(a1 + 40);
        switch(v7)
        {
          case 2:
            v16 = *(a1 + 24);
            v17 = *(a1 + 32);
            v22 = v16;
            v23 = v17;
            if (v17)
            {
              atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
              v16 = v22;
            }

            v21 = &unk_288109248;
            if (!v16)
            {
              goto LABEL_35;
            }

            v19 = *v16;
            v18 = v16[1];
            if (v18)
            {
              atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v18->__on_zero_shared)(v18);
                std::__shared_weak_count::__release_weak(v18);
              }
            }

            if (!v19)
            {
              goto LABEL_35;
            }

            break;
          case 1:
            v12 = *(a1 + 24);
            v13 = *(a1 + 32);
            v22 = v12;
            v23 = v13;
            if (v13)
            {
              atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
              v12 = v22;
            }

            v21 = &unk_288109248;
            if (!v12)
            {
              goto LABEL_35;
            }

            v15 = *v12;
            v14 = v12[1];
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v14->__on_zero_shared)(v14);
                std::__shared_weak_count::__release_weak(v14);
              }
            }

            if (!v15)
            {
              goto LABEL_35;
            }

            break;
          case 0:
            v8 = *(a1 + 24);
            v9 = *(a1 + 32);
            v22 = v8;
            v23 = v9;
            if (v9)
            {
              atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
              v8 = v22;
            }

            v21 = &unk_288109248;
            if (!v8)
            {
              goto LABEL_35;
            }

            v11 = *v8;
            v10 = v8[1];
            if (v10)
            {
              atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v10->__on_zero_shared)(v10);
                std::__shared_weak_count::__release_weak(v10);
              }
            }

            if (!v11)
            {
              goto LABEL_35;
            }

            break;
          default:
LABEL_36:
            sub_2711308D4();
        }

        sub_2717F9298(v22);
LABEL_35:
        sub_271587574(v20, a1);
        v24[0] = v20;
        v24[1] = a2;
        sub_27157487C(v24);
        sub_2717F2278(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_27158691C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271586930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271586944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271586958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F2278(va);
  _Unwind_Resume(a1);
}

uint64_t sub_27158696C(uint64_t a1)
{
  *a1 = &unk_2881094E8;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_2715869E4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) >= 3u)
  {
    goto LABEL_36;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    v6 = *v3;
    v5 = v3[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      if (v6)
      {
LABEL_6:
        v7 = *(a1 + 40);
        switch(v7)
        {
          case 2:
            v16 = *(a1 + 24);
            v17 = *(a1 + 32);
            v22 = v16;
            v23 = v17;
            if (v17)
            {
              atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
              v16 = v22;
            }

            v21 = &unk_288109248;
            if (!v16)
            {
              goto LABEL_35;
            }

            v19 = *v16;
            v18 = v16[1];
            if (v18)
            {
              atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v18->__on_zero_shared)(v18);
                std::__shared_weak_count::__release_weak(v18);
              }
            }

            if (!v19)
            {
              goto LABEL_35;
            }

            break;
          case 1:
            v12 = *(a1 + 24);
            v13 = *(a1 + 32);
            v22 = v12;
            v23 = v13;
            if (v13)
            {
              atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
              v12 = v22;
            }

            v21 = &unk_288109248;
            if (!v12)
            {
              goto LABEL_35;
            }

            v15 = *v12;
            v14 = v12[1];
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v14->__on_zero_shared)(v14);
                std::__shared_weak_count::__release_weak(v14);
              }
            }

            if (!v15)
            {
              goto LABEL_35;
            }

            break;
          case 0:
            v8 = *(a1 + 24);
            v9 = *(a1 + 32);
            v22 = v8;
            v23 = v9;
            if (v9)
            {
              atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
              v8 = v22;
            }

            v21 = &unk_288109248;
            if (!v8)
            {
              goto LABEL_35;
            }

            v11 = *v8;
            v10 = v8[1];
            if (v10)
            {
              atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v10->__on_zero_shared)(v10);
                std::__shared_weak_count::__release_weak(v10);
              }
            }

            if (!v11)
            {
              goto LABEL_35;
            }

            break;
          default:
LABEL_36:
            sub_2711308D4();
        }

        sub_2717F9298(v22);
LABEL_35:
        sub_271587574(v20, a1);
        sub_2712A2E80(a2, v20);
        sub_2717F2278(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_271586CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271586CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271586CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271586CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F2278(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271586D00(uint64_t a1, uint64_t a2)
{
  v41[2] = *MEMORY[0x277D85DE8];
  *a1 = &unk_2881094E8;
  v4 = *(a2 + 8);
  if (v4)
  {
    v6 = *v4;
    v5 = v4[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v4 = *(a2 + 8);
      if (v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v4 = *(a2 + 8);
      if (v6)
      {
LABEL_5:
        v7 = *(v4 + 4);
        goto LABEL_8;
      }
    }
  }

  v7 = 0;
LABEL_8:
  *(a1 + 8) = v7;
  *(a1 + 16) = &unk_288109288;
  *(a1 + 24) = v4;
  v8 = *(a2 + 16);
  *(a1 + 32) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *(a2 + 8);
    v8 = *(a2 + 16);
  }

  *(a1 + 40) = 0;
  v32 = v4;
  v33 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4)
  {
    goto LABEL_16;
  }

  v10 = *v4;
  v9 = v4[1];
  if (!v9 || (atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v10)
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 163, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_68;
      }
    }

    do
    {
      (*v11)(*(v11 + 8), "ref.IsValid()", 13, "", 0);
      v11 += 16;
    }

    while (v11 != v12);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_23;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_24:
  v39[0] = &unk_288109288;
  v39[1] = v32;
  v40 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2715C05FC(v39);
  v39[0] = &unk_288109288;
  v13 = v40;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = v33;
    v37 = v32;
    v38 = v33;
    if (v33)
    {
      goto LABEL_29;
    }

LABEL_33:
    v36 = &unk_288109288;
    goto LABEL_34;
  }

  v14 = v33;
  v37 = v32;
  v38 = v33;
  if (!v33)
  {
    goto LABEL_33;
  }

LABEL_29:
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v36 = &unk_288109288;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

LABEL_34:
  v34[0] = &unk_288109288;
  v34[1] = v32;
  v35 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = sub_2717F3514(v34);
  v16 = sub_2717F3958(v34);
  v17 = sub_2717F3D9C(v34);
  v18 = sub_2717F41E0(v34);
  v34[0] = &unk_288109288;
  v19 = v35;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v20 = v18;
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    v18 = v20;
  }

  v21 = v17 | (v18 << 32);
  v22 = v15 | (v16 << 32);
  LODWORD(v41[0]) = 3;
  HIDWORD(v41[0]) = v22;
  *(a1 + 48) = v41[0];
  *(a1 + 56) = v16;
  LODWORD(v41[0]) = 1;
  *(v41 + 4) = v21;
  *(a1 + 60) = v41[0];
  *(a1 + 68) = v18;
  *(a1 + 72) = v22;
  *(a1 + 80) = v21;
  if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
    v23 = *(a2 + 8);
    if (v23)
    {
      goto LABEL_42;
    }

LABEL_50:
    v27 = 0;
    goto LABEL_51;
  }

  v23 = *(a2 + 8);
  if (!v23)
  {
    goto LABEL_50;
  }

LABEL_42:
  v24 = *(v23 + 8);
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
      v25 = *(a2 + 8);
      if (v25)
      {
        goto LABEL_45;
      }

LABEL_57:
      v27 = 0;
      if (!*(a1 + 72))
      {
        goto LABEL_58;
      }

LABEL_52:
      if ((v27 == 0) == (*(a1 + 76) == 0))
      {
        goto LABEL_67;
      }

      goto LABEL_59;
    }
  }

  v25 = *(a2 + 8);
  if (!v25)
  {
    goto LABEL_57;
  }

LABEL_45:
  v27 = *v25;
  v26 = v25[1];
  if (!v26 || (atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_51:
    if (!*(a1 + 72))
    {
      goto LABEL_58;
    }

    goto LABEL_52;
  }

  (v26->__on_zero_shared)(v26);
  std::__shared_weak_count::__release_weak(v26);
  if (*(a1 + 72))
  {
    goto LABEL_52;
  }

LABEL_58:
  if (v27)
  {
LABEL_59:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 105, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v28 = qword_28087C408, v29 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_66:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
        goto LABEL_67;
      }
    }

    else
    {
      v28 = qword_28087C408;
      v29 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_68;
      }
    }

    do
    {
      (*v28)(*(v28 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v28 += 16;
    }

    while (v28 != v29);
    if (byte_28087C430)
    {
      goto LABEL_66;
    }

LABEL_68:
    abort();
  }

LABEL_67:
  v30 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_271587450(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_2717F319C(va1);
  sub_2717F319C(va);
  sub_271582FF4(v2);
  _Unwind_Resume(a1);
}

void sub_2715874D0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) >= 3u)
  {
    sub_2711308D4();
  }

  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 16);
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_271587574(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_22;
  }

  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v9 = a1;
      v10 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a2 = v10;
      a1 = v9;
      if (v4)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v5 = *(a2 + 24);
          v6 = *(a2 + 32);
          v13 = &unk_288109288;
          v14 = v5;
          v15 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = v14;
            v6 = v15;
          }

          v11[0] = &unk_288109288;
          v11[1] = v5;
          v12 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_271586050(a1, v11);
          v11[0] = &unk_288109288;
          v7 = v12;
          if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          v13 = &unk_288109288;
          v8 = v15;
          if (v15)
          {
            if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v8->__on_zero_shared)(v8);
              std::__shared_weak_count::__release_weak(v8);
            }
          }

          return;
        }

LABEL_22:
        sub_2711308D4();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  sub_27157497C(a1, 0, (a2 + 72));
}

void sub_271587784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_2717F319C(&a9);
  sub_2717F319C(&a12);
  _Unwind_Resume(a1);
}

void sub_2715877A0(uint64_t a1, int a2)
{
  if ((a2 - 1) <= 0x25)
  {
    v2 = (dword_27189C678[a2 - 1] | dword_27189C5E0[a2 - 1]);
  }

  operator new();
}

void sub_271587B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_2717F1CC4(va1);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271587BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_27115AAA0(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_271587BD4(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == 2)
  {
    if (*(a2 + 24) != 2)
    {
      goto LABEL_20;
    }

    v12 = *(a2 + 8);
    v11 = *(a2 + 16);
    v14[0] = &unk_288109288;
    v14[1] = v12;
    v15 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_271587DFC(v20, v14);
    v13 = v22;
    *a3 = v21;
    *(a3 + 16) = v13;
    *(a3 + 32) = v23;
    v14[0] = &unk_288109288;
    v7 = v15;
    if (v15)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (a1 != 1)
    {
      if (a1)
      {
        return;
      }

      if (!*(a2 + 24))
      {
        v5 = *(a2 + 8);
        v4 = *(a2 + 16);
        v18[0] = &unk_288109288;
        v18[1] = v5;
        v19 = v4;
        if (v4)
        {
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_271587DFC(v20, v18);
        v6 = v22;
        *a3 = v21;
        *(a3 + 16) = v6;
        *(a3 + 32) = v23;
        v18[0] = &unk_288109288;
        v7 = v19;
        if (!v19)
        {
          return;
        }

LABEL_18:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }

LABEL_20:
      sub_2711308D4();
    }

    if (*(a2 + 24) != 1)
    {
      goto LABEL_20;
    }

    v9 = *(a2 + 8);
    v8 = *(a2 + 16);
    v16[0] = &unk_288109288;
    v16[1] = v9;
    v17 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_271587DFC(v20, v16);
    v10 = v22;
    *a3 = v21;
    *(a3 + 16) = v10;
    *(a3 + 32) = v23;
    v16[0] = &unk_288109288;
    v7 = v17;
    if (v17)
    {
      goto LABEL_18;
    }
  }
}

void sub_271587DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271587DD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271587DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271587DFC(uint64_t a1, uint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8);
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = *v4;
  v5 = v4[1];
  if (!v5 || (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v6)
    {
      goto LABEL_13;
    }

LABEL_5:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 173, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v7 = qword_28087C408, v8 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_12:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_13;
      }
    }

    else
    {
      v7 = qword_28087C408;
      v8 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_51;
      }
    }

    do
    {
      v10 = *v7;
      v9 = *(v7 + 8);
      v7 += 16;
      v10(v9, "ref.IsValid()", 13, "", 0);
    }

    while (v7 != v8);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_12;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_13:
  v12 = *(a2 + 8);
  v11 = *(a2 + 16);
  v40[0] = &unk_288109288;
  v40[1] = v12;
  v41 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2715C05FC(v40);
  v40[0] = &unk_288109288;
  v13 = v41;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = *(a2 + 16);
    v38 = *(a2 + 8);
    v39 = v14;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_22:
    v37 = &unk_288109288;
    goto LABEL_23;
  }

  v14 = *(a2 + 16);
  v38 = *(a2 + 8);
  v39 = v14;
  if (!v14)
  {
    goto LABEL_22;
  }

LABEL_18:
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v37 = &unk_288109288;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

LABEL_23:
  v16 = *(a2 + 8);
  v15 = *(a2 + 16);
  v34 = &unk_288109288;
  v35 = v16;
  v36 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = sub_2717F1FA4(&v34, 0);
  *&v42 = &unk_288109288;
  *(&v42 + 1) = v35;
  v43 = v36;
  if (v36)
  {
    atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = sub_2717F3514(&v42);
  v19 = sub_2717F3958(&v42);
  v20 = sub_2717F3D9C(&v42);
  v21 = sub_2717F41E0(&v42);
  v22 = v18;
  *&v42 = &unk_288109288;
  v23 = v43;
  if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = v18 | (v19 << 32);
  v25 = v20 | (v21 << 32);
  v34 = &unk_288109288;
  v26 = v36;
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  if (v19)
  {
    v27 = v22 == 0;
  }

  else
  {
    v27 = 1;
  }

  if (v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = v24;
  }

  *(&v42 + 4) = v28;
  LODWORD(v42) = 4;
  v29 = v42;
  LODWORD(v42) = 1;
  *(&v42 + 4) = v25;
  v30 = v42;
  *a1 = v17;
  *(a1 + 8) = v29;
  *(a1 + 16) = HIDWORD(v28);
  *(a1 + 20) = v30;
  *(a1 + 28) = v21;
  *(a1 + 32) = v28;
  *(a1 + 40) = v25;
  if (HIDWORD(v28) * v21 == -1)
  {
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v31 = qword_28087C408, v32 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_47:
        qword_28087C420(*algn_28087C428, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_48;
      }
    }

    else
    {
      v31 = qword_28087C408;
      v32 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_51;
      }
    }

    do
    {
      (*v31)(*(v31 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v31 += 16;
    }

    while (v31 != v32);
    if (byte_28087C430)
    {
      goto LABEL_47;
    }

LABEL_51:
    abort();
  }

LABEL_48:
  v33 = *MEMORY[0x277D85DE8];
}

void sub_2715883B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_2715883C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_2715883D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_2717F319C(va1);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_2715883F8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) >= 3u)
  {
    goto LABEL_42;
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    return;
  }

  v6 = *v3;
  v5 = v3[1];
  if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if (!v6)
    {
      return;
    }
  }

  else if (!v6)
  {
    return;
  }

  v7 = *(a1 + 40);
  switch(v7)
  {
    case 2:
      v16 = *(a1 + 24);
      v17 = *(a1 + 32);
      v26 = v16;
      v27 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
        v16 = v26;
      }

      v25 = &unk_288109248;
      if (!v16)
      {
        goto LABEL_35;
      }

      v19 = *v16;
      v18 = v16[1];
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v18->__on_zero_shared)(v18);
          std::__shared_weak_count::__release_weak(v18);
        }
      }

      if (!v19)
      {
        goto LABEL_35;
      }

      break;
    case 1:
      v12 = *(a1 + 24);
      v13 = *(a1 + 32);
      v26 = v12;
      v27 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
        v12 = v26;
      }

      v25 = &unk_288109248;
      if (!v12)
      {
        goto LABEL_35;
      }

      v15 = *v12;
      v14 = v12[1];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }
      }

      if (!v15)
      {
        goto LABEL_35;
      }

      break;
    case 0:
      v8 = *(a1 + 24);
      v9 = *(a1 + 32);
      v26 = v8;
      v27 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
        v8 = v26;
      }

      v25 = &unk_288109248;
      if (!v8)
      {
        goto LABEL_35;
      }

      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      if (!v11)
      {
        goto LABEL_35;
      }

      break;
    default:
LABEL_42:
      sub_2711308D4();
  }

  sub_2717F9298(v26);
LABEL_35:
  sub_271589360(v20, a1);
  v28[0] = v20;
  v28[1] = a2;
  if (v24 == 1)
  {
    sub_2715746BC(v28);
  }

  else
  {
    v29 = a2;
    if (v21 && v22)
    {
      if (v23)
      {
        v30 = &v29;
        sub_271574B58(&v30, v20);
      }
    }
  }

  sub_2717F2278(&v25);
}

void sub_271588708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_27158871C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271588730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271588744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F2278(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271588758(uint64_t a1)
{
  *a1 = &unk_288109458;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_288133918[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

void sub_2715887D0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) >= 3u)
  {
    goto LABEL_36;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    v6 = *v3;
    v5 = v3[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      if (v6)
      {
LABEL_6:
        v7 = *(a1 + 40);
        switch(v7)
        {
          case 2:
            v16 = *(a1 + 24);
            v17 = *(a1 + 32);
            v22 = v16;
            v23 = v17;
            if (v17)
            {
              atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
              v16 = v22;
            }

            v21 = &unk_288109248;
            if (!v16)
            {
              goto LABEL_35;
            }

            v19 = *v16;
            v18 = v16[1];
            if (v18)
            {
              atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v18->__on_zero_shared)(v18);
                std::__shared_weak_count::__release_weak(v18);
              }
            }

            if (!v19)
            {
              goto LABEL_35;
            }

            break;
          case 1:
            v12 = *(a1 + 24);
            v13 = *(a1 + 32);
            v22 = v12;
            v23 = v13;
            if (v13)
            {
              atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
              v12 = v22;
            }

            v21 = &unk_288109248;
            if (!v12)
            {
              goto LABEL_35;
            }

            v15 = *v12;
            v14 = v12[1];
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v14->__on_zero_shared)(v14);
                std::__shared_weak_count::__release_weak(v14);
              }
            }

            if (!v15)
            {
              goto LABEL_35;
            }

            break;
          case 0:
            v8 = *(a1 + 24);
            v9 = *(a1 + 32);
            v22 = v8;
            v23 = v9;
            if (v9)
            {
              atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
              v8 = v22;
            }

            v21 = &unk_288109248;
            if (!v8)
            {
              goto LABEL_35;
            }

            v11 = *v8;
            v10 = v8[1];
            if (v10)
            {
              atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v10->__on_zero_shared)(v10);
                std::__shared_weak_count::__release_weak(v10);
              }
            }

            if (!v11)
            {
              goto LABEL_35;
            }

            break;
          default:
LABEL_36:
            sub_2711308D4();
        }

        sub_2717F9298(v22);
LABEL_35:
        sub_271589360(v20, a1);
        sub_2712A6008(a2, v20);
        sub_2717F2278(&v21);
      }
    }

    else if (v6)
    {
      goto LABEL_6;
    }
  }
}

void sub_271588A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271588AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271588AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F1CC4(va);
  _Unwind_Resume(a1);
}

void sub_271588AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_2717F2278(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271588AEC(uint64_t a1, uint64_t a2)
{
  v41[2] = *MEMORY[0x277D85DE8];
  *a1 = &unk_288109458;
  v4 = *(a2 + 8);
  if (v4)
  {
    v6 = *v4;
    v5 = v4[1];
    if (v5 && (atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v4 = *(a2 + 8);
      if (v6)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v4 = *(a2 + 8);
      if (v6)
      {
LABEL_5:
        v7 = *(v4 + 4);
        goto LABEL_8;
      }
    }
  }

  v7 = 0;
LABEL_8:
  *(a1 + 8) = v7;
  *(a1 + 16) = &unk_288109288;
  *(a1 + 24) = v4;
  v8 = *(a2 + 16);
  *(a1 + 32) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *(a2 + 8);
    v8 = *(a2 + 16);
  }

  *(a1 + 40) = 0;
  v32 = v4;
  v33 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4)
  {
    goto LABEL_16;
  }

  v10 = *v4;
  v9 = v4[1];
  if (!v9 || (atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    if (v10)
    {
      goto LABEL_24;
    }

LABEL_16:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurface/include/Kit/IOSurface/View.h", 163, "ref.IsValid()", 0xDuLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v11 = qword_28087C408, v12 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_23:
        qword_28087C420(*algn_28087C428, "ref.IsValid()", 13, "", 0);
        goto LABEL_24;
      }
    }

    else
    {
      v11 = qword_28087C408;
      v12 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_68;
      }
    }

    do
    {
      (*v11)(*(v11 + 8), "ref.IsValid()", 13, "", 0);
      v11 += 16;
    }

    while (v11 != v12);
    if ((byte_28087C430 & 1) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_23;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_24:
  v39[0] = &unk_288109288;
  v39[1] = v32;
  v40 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2715C05FC(v39);
  v39[0] = &unk_288109288;
  v13 = v40;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = v33;
    v37 = v32;
    v38 = v33;
    if (v33)
    {
      goto LABEL_29;
    }

LABEL_33:
    v36 = &unk_288109288;
    goto LABEL_34;
  }

  v14 = v33;
  v37 = v32;
  v38 = v33;
  if (!v33)
  {
    goto LABEL_33;
  }

LABEL_29:
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v36 = &unk_288109288;
  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

LABEL_34:
  v34[0] = &unk_288109288;
  v34[1] = v32;
  v35 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = sub_2717F3514(v34);
  v16 = sub_2717F3958(v34);
  v17 = sub_2717F3D9C(v34);
  v18 = sub_2717F41E0(v34);
  v34[0] = &unk_288109288;
  v19 = v35;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v20 = v18;
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    v18 = v20;
  }

  v21 = v17 | (v18 << 32);
  v22 = v15 | (v16 << 32);
  LODWORD(v41[0]) = 4;
  HIDWORD(v41[0]) = v22;
  *(a1 + 48) = v41[0];
  *(a1 + 56) = v16;
  LODWORD(v41[0]) = 1;
  *(v41 + 4) = v21;
  *(a1 + 60) = v41[0];
  *(a1 + 68) = v18;
  *(a1 + 72) = v22;
  *(a1 + 80) = v21;
  if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
    v23 = *(a2 + 8);
    if (v23)
    {
      goto LABEL_42;
    }

LABEL_50:
    v27 = 0;
    goto LABEL_51;
  }

  v23 = *(a2 + 8);
  if (!v23)
  {
    goto LABEL_50;
  }

LABEL_42:
  v24 = *(v23 + 8);
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
      v25 = *(a2 + 8);
      if (v25)
      {
        goto LABEL_45;
      }

LABEL_57:
      v27 = 0;
      if (!*(a1 + 72))
      {
        goto LABEL_58;
      }

LABEL_52:
      if ((v27 == 0) == (*(a1 + 76) == 0))
      {
        goto LABEL_67;
      }

      goto LABEL_59;
    }
  }

  v25 = *(a2 + 8);
  if (!v25)
  {
    goto LABEL_57;
  }

LABEL_45:
  v27 = *v25;
  v26 = v25[1];
  if (!v26 || (atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed), atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
LABEL_51:
    if (!*(a1 + 72))
    {
      goto LABEL_58;
    }

    goto LABEL_52;
  }

  (v26->__on_zero_shared)(v26);
  std::__shared_weak_count::__release_weak(v26);
  if (*(a1 + 72))
  {
    goto LABEL_52;
  }

LABEL_58:
  if (v27)
  {
LABEL_59:
    sub_27185228C("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/IOSurfaceImage/src/IOSurfaceImage.cpp", 105, "(buffer == nullptr) == extent.IsEmpty()", 0x27uLL, "", 0, sub_271852CA8);
    if (byte_28087C430 == 1)
    {
      if (byte_28087C438 != 1 || (v28 = qword_28087C408, v29 = qword_28087C410, qword_28087C408 == qword_28087C410))
      {
LABEL_66:
        qword_28087C420(*algn_28087C428, "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
        goto LABEL_67;
      }
    }

    else
    {
      v28 = qword_28087C408;
      v29 = qword_28087C410;
      if (qword_28087C408 == qword_28087C410)
      {
        goto LABEL_68;
      }
    }

    do
    {
      (*v28)(*(v28 + 8), "(buffer == nullptr) == extent.IsEmpty()", 39, "", 0);
      v28 += 16;
    }

    while (v28 != v29);
    if (byte_28087C430)
    {
      goto LABEL_66;
    }

LABEL_68:
    abort();
  }

LABEL_67:
  v30 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_27158923C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_2717F319C(va1);
  sub_2717F319C(va);
  sub_271582FF4(v2);
  _Unwind_Resume(a1);
}

void sub_2715892BC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) >= 3u)
  {
    sub_2711308D4();
  }

  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 16);
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_271589360(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(a2 + 40) >= 3u)
  {
    goto LABEL_28;
  }

  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *v2;
    v3 = v2[1];
    if (v3 && (atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      v9 = a1;
      v10 = a2;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      a2 = v10;
      a1 = v9;
      if (v4)
      {
LABEL_6:
        if (*(a2 + 40) < 3u)
        {
          v5 = *(a2 + 24);
          v6 = *(a2 + 32);
          *&v21 = &unk_288109288;
          *(&v21 + 1) = v5;
          v22 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            v5 = *(&v21 + 1);
            v6 = v22;
          }

          v19[0] = &unk_288109288;
          v19[1] = v5;
          v20 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_271587DFC(a1, v19);
          v19[0] = &unk_288109288;
          v7 = v20;
          if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          *&v21 = &unk_288109288;
          v8 = v22;
          if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          goto LABEL_27;
        }

LABEL_28:
        sub_2711308D4();
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }
  }

  if (*(a2 + 76))
  {
    v11 = *(a2 + 72) == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a2 + 72);
  if (v11)
  {
    v12 = 0;
  }

  LODWORD(v21) = 4;
  *(&v21 + 4) = v12;
  v13 = 4 * (v12 != 0);
  LODWORD(v14) = v13 * v12;
  if (HIDWORD(v12))
  {
    v14 = v14;
  }

  else
  {
    v14 = 0;
  }

  v15 = v13 & 0x3FFFFFFFFLL | ((v14 >> 2) << 34);
  v16 = __PAIR64__(DWORD1(v21), 4);
  LODWORD(v21) = 1;
  *(&v21 + 4) = v15;
  v17 = v21;
  *a1 = 0;
  *(a1 + 8) = v16;
  *(a1 + 16) = HIDWORD(v12);
  *(a1 + 20) = v17;
  *(a1 + 28) = v14;
  *(a1 + 32) = v12;
  *(a1 + 40) = v15;
LABEL_27:
  v18 = *MEMORY[0x277D85DE8];
}

void sub_2715895E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_2717F319C(va);
  sub_2717F319C(va1);
  _Unwind_Resume(a1);
}

void sub_271589604(uint64_t a1, int a2)
{
  if ((a2 - 1) <= 0x25)
  {
    v2 = (dword_27189C678[a2 - 1] | dword_27189C5E0[a2 - 1]);
  }

  operator new();
}

void sub_2715899EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_2717F1CC4(va1);
  sub_2717F319C(va);
  _Unwind_Resume(a1);
}

void sub_271589A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_27115AAA0(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_271589A38(int a1, uint64_t a2, double a3)
{
  if (a1 == 2)
  {
    if (*(a2 + 24) == 2)
    {
      v10 = *(a2 + 8);
      v9 = *(a2 + 16);
      v12[0] = &unk_288109288;
      v12[1] = v10;
      v13 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_271589C44(&v18, v12);
      a3 = *&v19;
      v12[0] = &unk_288109288;
      v5 = v13;
      if (!v13)
      {
        return *&a3;
      }

      goto LABEL_18;
    }

    goto LABEL_20;
  }

  if (a1 == 1)
  {
    if (*(a2 + 24) == 1)
    {
      v8 = *(a2 + 8);
      v7 = *(a2 + 16);
      v14[0] = &unk_288109288;
      v14[1] = v8;
      v15 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_271589C44(&v18, v14);
      a3 = *&v19;
      v14[0] = &unk_288109288;
      v5 = v15;
      if (!v15)
      {
        return *&a3;
      }

      goto LABEL_18;
    }

LABEL_20:
    sub_2711308D4();
  }

  if (a1)
  {
    return *&a3;
  }

  if (*(a2 + 24))
  {
    goto LABEL_20;
  }

  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  v16[0] = &unk_288109288;
  v16[1] = v4;
  v17 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_271589C44(&v18, v16);
  a3 = *&v19;
  v16[0] = &unk_288109288;
  v5 = v17;
  if (!v17)
  {
    return *&a3;
  }

LABEL_18:
  if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return *&a3;
  }

  v11 = a3;
  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return *&v11;
}