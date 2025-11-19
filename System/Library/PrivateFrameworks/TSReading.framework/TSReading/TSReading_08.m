uint64_t Path::DoLeftJoin(Shape *this, int a2, unsigned int *a3, unsigned int *a4, float a5, float a6, float a7, float a8, float a9, float a10, float a11, float a12)
{
  v19 = -a8;
  v20 = (a8 * a11) - (a9 * a10);
  if (fabsf(v20) < 0.0001)
  {
    v21 = ((a9 * a11) + (a8 * a10));
    result = Shape::AddPoint(this, a6 + (a5 * a9), a7 + (a5 * v19));
    *a3 = result;
    if (v21 > 0.9999)
    {
      *a4 = result;
      return result;
    }

    LODWORD(v39) = Shape::AddPoint(this, a6 - (a5 * a9), a7 + (a5 * a8));
    *a4 = v39;
    goto LABEL_17;
  }

  v25 = -a10;
  v75 = a6 + (a5 * a9);
  v76 = a7 + (a5 * v19);
  *a3 = Shape::AddPoint(this, v75, v76);
  v77 = v25;
  v28 = a7 + (a5 * v25);
  v74 = a6 + (a5 * a11);
  v29 = Shape::AddPoint(this, v74, v28);
  *a4 = v29;
  if (v20 < 0.0)
  {
    v30 = this;
    v31 = a6;
    v32 = a7;
    goto LABEL_6;
  }

  v39 = v29;
  if (a2 != 1)
  {
    if (a2 != 2)
    {
LABEL_17:
      v37 = *a3;
      v38 = this;
      goto LABEL_18;
    }

    v40 = a9 + a11;
    v41 = v77 - a8;
    v42 = (v41 * v41) + (v40 * v40);
    if (v42 > 0.0001)
    {
      v43 = sqrtf(v42);
      v40 = v40 / v43;
      v41 = v41 / v43;
    }

    v44 = (v41 * v77) + (v40 * a11);
    v45 = a5 / v44;
    v46 = v44 * a5;
    if ((v44 * a5) < a12)
    {
      v46 = a12;
    }

    if (v45 > v46)
    {
      v47 = (v44 * (v45 - v46)) / ((v40 * v77) - (v41 * a11));
      v48 = a6 + (v46 * v40);
      v49 = a7 + (v46 * v41);
      v33 = Shape::AddPoint(this, v48 + (v47 * v41), v49 - (v47 * v40));
      v50 = Shape::AddPoint(this, v48 - (v47 * v41), v49 + (v47 * v40));
      Shape::AddEdge(this, v50, v33);
      v34 = *a4;
      v35 = this;
      v36 = v50;
      goto LABEL_7;
    }

    v31 = a6 + (v45 * v40);
    v32 = a7 + (v45 * v41);
    v30 = this;
LABEL_6:
    v33 = Shape::AddPoint(v30, v31, v32);
    v34 = *a4;
    v35 = this;
    v36 = v33;
LABEL_7:
    Shape::AddEdge(v35, v34, v36);
    v37 = *a3;
    v38 = this;
    LODWORD(v39) = v33;
LABEL_18:

    return Shape::AddEdge(v38, v39, v37);
  }

  v51 = a9 + a11;
  v52 = v77 - a8;
  v53 = (v52 * v52) + (v51 * v51);
  v54 = a6;
  if (v53 > 0.0001)
  {
    v55 = sqrtf(v53);
    v51 = v51 / v55;
    v52 = v52 / v55;
  }

  v56 = (v52 * v77) + (v51 * a11);
  v57 = a5 / v56;
  if (((a8 * a10) + (a9 * a11)) >= 0.0)
  {
    v68 = a6 + (v57 * v51);
    v69 = a7 + (v57 * v52);
    v65 = *a3;
    v66 = 5.0;
    v67 = this;
    v70 = a6 + (a5 * a11);
    v71 = v28;
  }

  else
  {
    v58 = (v56 * (v57 - a5)) / ((v51 * v77) - (v52 * a11));
    v59 = v28;
    v60 = v54 + (a5 * v51);
    v61 = a7 + (a5 * v52);
    v62 = v51;
    v63 = v52;
    v64 = Shape::AddPoint(this, v60, v61);
    Path::RecRound(this, *a4, v64, 8, v60 - (v58 * v63), v61 + (v58 * v62), v74, v59, v60, v61, 5.0);
    v65 = *a3;
    v66 = 5.0;
    v67 = this;
    v39 = v64;
    v68 = v60 + (v58 * v63);
    v69 = v61 - (v58 * v62);
    v70 = v60;
    v71 = v61;
  }

  return Path::RecRound(v67, v39, v65, 8, v68, v69, v70, v71, v75, v76, v66);
}

uint64_t Path::DoRightJoin(Shape *this, int a2, unsigned int *a3, unsigned int *a4, float a5, float a6, float a7, float a8, float a9, float a10, float a11, float a12)
{
  v20 = (a8 * a11) - (a9 * a10);
  if (fabsf(v20) < 0.0001)
  {
    if (((a9 * a11) + (a8 * a10)) > 0.9999)
    {
      result = Shape::AddPoint(this, a6 - (a5 * a9), a7 + (a5 * a8));
      *a3 = result;
      *a4 = result;
      return result;
    }

    *a4 = Shape::AddPoint(this, a6 + (a5 * a9), a7 + (a5 * -a8));
    v41 = Shape::AddPoint(this, a6 - (a5 * a9), a7 + (a5 * a8));
    *a3 = v41;
    v26 = *a4;
    goto LABEL_21;
  }

  v69 = a6 - (a5 * a9);
  v70 = a7 + (a5 * a8);
  *a3 = Shape::AddPoint(this, v69, v70);
  v71 = a6 - (a5 * a11);
  v72 = a7 + (a5 * a10);
  v25 = Shape::AddPoint(this, v71, v72);
  *a4 = v25;
  if (v20 >= 0.0)
  {
    v43 = this;
    v44 = a6;
    v45 = a7;
    goto LABEL_15;
  }

  v26 = v25;
  v27 = -a10;
  if (a2 != 1)
  {
    if (a2 != 2)
    {
      v41 = *a3;
LABEL_21:
      v40 = this;
      goto LABEL_22;
    }

    v28 = a9 + a11;
    v29 = v27 - a8;
    v30 = (v29 * v29) + (v28 * v28);
    if (v30 > 0.0001)
    {
      v31 = sqrtf(v30);
      v28 = v28 / v31;
      v29 = v29 / v31;
    }

    v32 = (v29 * v27) + (v28 * a11);
    v33 = a5 / v32;
    v34 = v32 * a5;
    if ((v32 * a5) < a12)
    {
      v34 = a12;
    }

    if (v33 > v34)
    {
      v35 = (v32 * (v33 - v34)) / ((v28 * v27) - (v29 * a11));
      v36 = a6 - (v34 * v28);
      v37 = a7 - (v34 * v29);
      v38 = Shape::AddPoint(this, v36 - (v35 * v29), v37 + (v35 * v28));
      v39 = Shape::AddPoint(this, v36 + (v35 * v29), v37 - (v35 * v28));
      Shape::AddEdge(this, *a3, v38);
      Shape::AddEdge(this, v38, v39);
      v26 = *a4;
      v40 = this;
      v41 = v39;
LABEL_22:

      return Shape::AddEdge(v40, v41, v26);
    }

    v44 = a6 - (v33 * v28);
    v45 = a7 - (v33 * v29);
    v43 = this;
LABEL_15:
    v46 = Shape::AddPoint(v43, v44, v45);
    Shape::AddEdge(this, *a3, v46);
    v26 = *a4;
    v40 = this;
    v41 = v46;
    goto LABEL_22;
  }

  v47 = a9 + a11;
  v48 = v27 - a8;
  v49 = (v48 * v48) + (v47 * v47);
  if (v49 > 0.0001)
  {
    v50 = sqrtf(v49);
    v47 = v47 / v50;
    v48 = v48 / v50;
  }

  v51 = (v48 * v27) + (v47 * a11);
  v52 = a5 / v51;
  if (((a8 * a10) + (a9 * a11)) >= 0.0)
  {
    v64 = a6 - (v52 * v47);
    v65 = a7 - (v52 * v48);
    v63 = *a3;
    v61 = 5.0;
    v62 = this;
    v66 = v69;
    v67 = v70;
  }

  else
  {
    v53 = (v51 * (v52 - a5)) / ((v47 * v27) - (v48 * a11));
    v54 = a6 + (-a5 * v47);
    v55 = v54 - (v53 * v48);
    v56 = a7 + (-a5 * v48);
    v57 = v56 + (v53 * v47);
    v58 = v54 + (v53 * v48);
    v59 = v56 - (v53 * v47);
    v60 = Shape::AddPoint(this, v54, v56);
    Path::RecRound(this, *a3, v60, 8, v55, v57, v69, v70, v54, v56, 5.0);
    v26 = *a4;
    v61 = 5.0;
    v62 = this;
    v63 = v60;
    v64 = v58;
    v65 = v59;
    v66 = v54;
    v67 = v56;
  }

  return Path::RecRound(v62, v63, v26, 8, v64, v65, v66, v67, v71, v72, v61);
}

uint64_t Path::Stroke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 36);
    if (v2 >= 2)
    {
      v3 = *(result + 48);
      v4 = 1;
      if (*(result + 33) == 1)
      {
        if (*(result + 32))
        {
          v5 = v3 + 6;
          v6 = v2 - 1;
          do
          {
            v7 = *v5;
            v5 += 6;
            if ((v7 | 2) != 2)
            {
              goto LABEL_9;
            }

            ++v4;
            --v6;
          }

          while (v6);
          v4 = *(result + 36);
LABEL_9:
          v8 = *(result + 48);
        }

        else
        {
          v12 = v3 + 5;
          v13 = v2 - 1;
          do
          {
            v14 = *v12;
            v12 += 5;
            if ((v14 | 2) != 2)
            {
              goto LABEL_20;
            }

            ++v4;
            --v13;
          }

          while (v13);
          v4 = *(result + 36);
LABEL_20:
          v8 = *(result + 48);
        }
      }

      else if (*(result + 32))
      {
        v9 = v3 + 4;
        v10 = v2 - 1;
        do
        {
          v11 = *v9;
          v9 += 4;
          if ((v11 | 2) != 2)
          {
            goto LABEL_15;
          }

          ++v4;
          --v10;
        }

        while (v10);
        v4 = *(result + 36);
LABEL_15:
        v8 = *(result + 48);
      }

      else
      {
        v15 = v3 + 3;
        v16 = v2 - 1;
        do
        {
          v17 = *v15;
          v15 += 3;
          if ((v17 | 2) != 2)
          {
            goto LABEL_25;
          }

          ++v4;
          --v16;
        }

        while (v16);
        v4 = *(result + 36);
LABEL_25:
        v8 = *(result + 48);
      }

      *(result + 48) = v8;
      *(result + 36) = v4;
      Path::DoStroke();
    }
  }

  return result;
}

void Path::DoButt(uint64_t a1, int a2)
{
  if (a2)
  {
    operator new();
  }
}

void Path::Stroke(uint64_t a1, void **this, int a3, int a4, int a5, int a6, uint64_t a7, char a8, float a9, float a10)
{
  if (a6 <= 0)
  {

    Path::Stroke(a1, this, a3, a4, a5, a8, a9, a10);
  }

  else if (this)
  {
    if ((a8 & 1) == 0)
    {
      Shape::Reset(this, 3 * *(a1 + 36));
    }

    if (*(a1 + 36) >= 2)
    {
      Shape::MakeBackData(this, 0);
      v19 = *(a1 + 48);
      v20 = *(a1 + 36);
      if (v20 >= 1)
      {
        v21 = 0;
        do
        {
          v22 = v21 + 1;
          if (*(a1 + 33) == 1)
          {
            if (*(a1 + 32))
            {
              if (v22 < v20)
              {
                v23 = (v19 + 24 * v22);
                v24 = v20 - v22;
                while (1)
                {
                  v25 = *v23;
                  v23 += 6;
                  if ((v25 | 2) != 2)
                  {
                    break;
                  }

                  ++v22;
                  if (!--v24)
                  {
                    v22 = v20;
                    break;
                  }
                }
              }

              v26 = 24;
            }

            else
            {
              if (v22 < v20)
              {
                v31 = (v19 + 20 * v22);
                v32 = v20 - v22;
                while (1)
                {
                  v33 = *v31;
                  v31 += 5;
                  if ((v33 | 2) != 2)
                  {
                    break;
                  }

                  ++v22;
                  if (!--v32)
                  {
                    v22 = v20;
                    break;
                  }
                }
              }

              v26 = 20;
            }
          }

          else
          {
            if (*(a1 + 32))
            {
              if (v22 < v20)
              {
                v27 = (v19 + 16 * v22);
                v28 = v20 - v22;
                while (1)
                {
                  v29 = *v27;
                  v27 += 4;
                  if ((v29 | 2) != 2)
                  {
                    break;
                  }

                  ++v22;
                  if (!--v28)
                  {
                    v22 = v20;
                    break;
                  }
                }
              }

              v30 = v19 + 16 * v21;
              goto LABEL_36;
            }

            if (v22 < v20)
            {
              v34 = (v19 + 12 * v22);
              v35 = v20 - v22;
              while (1)
              {
                v36 = *v34;
                v34 += 3;
                if ((v36 | 2) != 2)
                {
                  break;
                }

                ++v22;
                if (!--v35)
                {
                  v22 = v20;
                  break;
                }
              }
            }

            v26 = 12;
          }

          v30 = v19 + v21 * v26;
LABEL_36:
          *(a1 + 48) = v30;
          *(a1 + 36) = v22 - v21;
          Path::DoStroke(a1, this, a3, a4, a5, a6, a7, 0, a9, a10);
          v21 = v22;
        }

        while (v22 < v20);
      }

      *(a1 + 48) = v19;
      *(a1 + 36) = v20;
    }
  }
}

uint64_t Path::DoStroke(uint64_t result, Shape *this, int a3, int a4, int a5, int a6, uint64_t a7, int a8, float a9, float a10)
{
  if (!this)
  {
    return result;
  }

  v10 = result;
  v11 = *(result + 36);
  if (v11 < 2)
  {
    return result;
  }

  v131 = 0;
  v19 = *(result + 48);
  v20 = 1.0;
  if (*(result + 32) == 1)
  {
    v20 = v19[3];
  }

  v21 = v19[1];
  v22 = v19[2];
  v23 = (v11 - 1);
  if (a3)
  {
    v24 = 12 * v23;
    if (*(result + 32))
    {
      v24 = 16 * v23;
    }

    v25 = 24 * v23;
    if (!*(result + 32))
    {
      v25 = 20 * v23;
    }

    if (*(result + 33))
    {
      v24 = v25;
    }

    v26 = -20;
    if (*(result + 32))
    {
      v26 = -24;
    }

    v27 = -12;
    if (*(result + 32))
    {
      v27 = -16;
    }

    if ((*(result + 33) & 1) == 0)
    {
      v26 = v27;
    }

    v28 = (v19 + v24 + 8);
    while (1)
    {
      v29 = *(v28 - 1);
      v30 = *v28;
      if ((((v22 - *v28) * (v22 - *v28)) + ((v21 - v29) * (v21 - v29))) > 0.001)
      {
        break;
      }

      --v11;
      v28 = (v28 + v26);
      if (v11 <= 1)
      {
        return result;
      }
    }

    LODWORD(v23) = v11 - 1;
    if ((*(result + 33) & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_23:
    v31 = 6;
    if (!*(result + 32))
    {
      v31 = 5;
    }

    v32 = 1;
    goto LABEL_29;
  }

  v30 = v19[2];
  v29 = v19[1];
  if (*(result + 33))
  {
    goto LABEL_23;
  }

LABEL_27:
  v32 = 0;
  v31 = 3;
  if (*(result + 32))
  {
    v31 = 4;
  }

LABEL_29:
  v33 = 20;
  if (*(result + 32))
  {
    v33 = 24;
  }

  v34 = 12;
  if (*(result + 32))
  {
    v34 = 16;
  }

  if (v32)
  {
    v35 = v33;
  }

  else
  {
    v35 = v34;
  }

  v36 = &v19[v31 + 3];
  v37 = -1;
  while (1)
  {
    v38 = 1.0;
    if (*(result + 32))
    {
      v38 = *v36;
    }

    v40 = *(v36 - 2);
    v39 = *(v36 - 1);
    if ((((v22 - v39) * (v22 - v39)) + ((v21 - v40) * (v21 - v40))) > 0.001)
    {
      break;
    }

    --v37;
    v36 = (v36 + v35);
    if (v23 + v37 == -1)
    {
      return result;
    }
  }

  v41 = -v37;
  if (-v37 <= v23)
  {
    v128 = -1;
    v129 = -1;
    v126 = -1;
    v127 = -1;
    v42 = v21 - v29;
    v43 = v22 - v30;
    v44 = v40 - v21;
    v45 = v39 - v22;
    v46 = (v43 * v43) + (v42 * v42);
    v47 = (v45 * v45) + (v44 * v44);
    v48 = sqrtf(v46);
    if (v46 > 0.0001)
    {
      v42 = v42 / v48;
      v43 = v43 / v48;
    }

    v49 = sqrtf(v47);
    if (v47 > 0.0001)
    {
      v44 = v44 / v49;
      v45 = v45 / v49;
    }

    v50 = 0;
    do
    {
      if (*(a7 + 8 * v50 + 4) > 0.0)
      {
        break;
      }

      v51 = v50 + 1;
      v52 = v51 >= a6 ? a6 : 0;
      v50 = v51 - v52;
    }

    while (v50);
    v130 = v50;
    v132[0] = 0.0;
    v53 = *(a7 + 8 * v50);
    v98 = a10;
    v108 = v45;
    v110 = v44;
    if (a3)
    {
      if (v53)
      {
        v97 = 0;
        v125 = 1;
LABEL_61:
        v56 = v49;
        while (1)
        {
          v57 = v39;
          v58 = v40;
          v59 = v38;
          v60 = v108;
          v61 = v110;
          v62 = LODWORD(v49);
          v63 = v41 + 1;
          v64 = *(v10 + 48);
          v65 = 12 * (v41 + 1);
          if (*(v10 + 32))
          {
            v65 = 16 * v63;
          }

          v66 = 20 * v63;
          if (*(v10 + 32))
          {
            v66 = 24 * v63;
          }

          if (*(v10 + 33) == 1)
          {
            v65 = v66;
          }

          v67 = v23 - v41;
          if (v23 > v41)
          {
            v68 = 20;
            if (*(v10 + 32))
            {
              v68 = 24;
            }

            v69 = 12;
            if (*(v10 + 32))
            {
              v69 = 16;
            }

            if (!*(v10 + 33))
            {
              v68 = v69;
            }

            v70 = ~v41;
            v71 = v64 + v65 + 8;
            while (1)
            {
              v38 = 1.0;
              if (*(v10 + 32))
              {
                v38 = *(v71 + 4);
              }

              v40 = *(v71 - 4);
              v39 = *v71;
              if ((((v57 - *v71) * (v57 - *v71)) + ((v58 - v40) * (v58 - v40))) > 0.001)
              {
                break;
              }

              --v70;
              v71 += v68;
              if (!--v67)
              {
                goto LABEL_87;
              }
            }

            v63 = -v70;
          }

          if (v63 > v23)
          {
            break;
          }

          v72 = v40 - v58;
          v73 = v39 - v57;
          v74 = (v73 * v73) + (v72 * v72);
          v75 = sqrtf(v74);
          v76 = v74 <= 0.0001;
          v102 = v62;
          v77 = v57;
          if (!v76)
          {
            v72 = v72 / v75;
            v73 = v73 / v75;
          }

          v108 = v73;
          v110 = v72;
          v78 = v56 + v75;
          v116 = v56;
          v117 = v21;
          v118 = v22;
          v119 = v58;
          v22 = v77;
          v120 = v77;
          v121 = v61;
          v122 = v60;
          v123 = v20 * a9;
          v100 = v60;
          v101 = v59 * a9;
          v124 = v59 * a9;
          v99 = v61;
          *&v106 = v75;
          v79 = v59;
          Path::DashTo(this, &v116, &v131, &v130, v132, &v125, &v127, &v126, a6, a7);
          v82 = v79;
          v49 = *&v106;
          v56 = v78;
          v41 = v63;
          v20 = v79;
          v21 = v58;
          if ((v125 & 1) == 0)
          {
            v114 = -1;
            v115 = -1;
            v112 = -1;
            v113 = -1;
            v83 = v82;
            Path::DoJoin(this, a4, &v115, &v113, &v114, &v112, v80, v81, v101, v58, v22, v99, v100, v110, v108, v98, v102, v106);
            Shape::AddEdge(this, v115, v127);
            v127 = v113;
            Shape::AddEdge(this, v126, v114);
            v49 = *&v106;
            v56 = v78;
            v126 = v112;
            v41 = v63;
            v20 = v83;
            v21 = v58;
          }
        }

LABEL_87:
        if (!a3)
        {
          v116 = v56;
          v117 = v21;
          v118 = v22;
          v119 = v58;
          v120 = v57;
          v121 = v110;
          v122 = v108;
          v123 = v20 * a9;
          v95 = v59 * a9;
          v124 = v59 * a9;
          result = Path::DashTo(this, &v116, &v131, &v130, v132, &v125, &v127, &v126, a6, a7);
          if (v125)
          {
            return result;
          }

          v114 = 0;
          v115 = 0;
          Path::DoButt(this, a5, &v114, &v115, v95, v58, v57, v110, v108);
          Shape::AddEdge(this, v114, v127);
          v94 = v126;
          v96 = v115;
          return Shape::AddEdge(this, v94, v96);
        }

        v84 = 1.0;
        if (*(v10 + 32))
        {
          v84 = v64[3];
        }

        v109 = v64[1];
        v111 = v84;
        v85 = v109 - v58;
        v86 = v64[2] - v57;
        v87 = (v86 * v86) + (v85 * v85);
        v88 = sqrtf(v87);
        v103 = LODWORD(v49);
        v107 = v64[2];
        if (v87 > 0.0001)
        {
          v85 = v85 / v88;
          v86 = v86 / v88;
        }

        v104 = v56 + v88;
        v116 = v56;
        v117 = v21;
        v118 = v22;
        v119 = v58;
        v120 = v57;
        v121 = v61;
        v122 = v60;
        v123 = v20 * a9;
        v89 = v59 * a9;
        v124 = v59 * a9;
        v90 = v60;
        v91 = v61;
        Path::DashTo(this, &v116, &v131, &v130, v132, &v125, &v127, &v126, a6, a7);
        if ((v125 & 1) == 0)
        {
          v114 = -1;
          v115 = -1;
          v112 = -1;
          v113 = -1;
          Path::DoJoin(this, a4, &v115, &v113, &v114, &v112, v92, v93, v89, v58, v57, v91, v90, v85, v86, v98, v103, SLODWORD(v88));
          Shape::AddEdge(this, v115, v127);
          v127 = v113;
          Shape::AddEdge(this, v126, v114);
          v126 = v112;
        }

        v116 = v104;
        v117 = v58;
        v118 = v57;
        v119 = v109;
        v120 = v107;
        v121 = v85;
        v122 = v86;
        v123 = v89;
        v124 = v111 * a9;
        result = Path::DashTo(this, &v116, &v131, &v130, v132, &v125, &v127, &v126, a6, a7);
        if (v125)
        {
          if (!v97)
          {
            return result;
          }

          v94 = v129;
        }

        else
        {
          v96 = v127;
          if (!v97)
          {
            v94 = v126;
            return Shape::AddEdge(this, v94, v96);
          }

          Shape::AddEdge(this, v129, v127);
          v94 = v126;
        }

        v96 = v128;
        return Shape::AddEdge(this, v94, v96);
      }

      v54 = v20;
      v55 = v49;
      Path::DoJoin(this, a4, &v129, &v127, &v128, &v126, a7, a8, v20 * a9, v21, v22, v42, v43, v44, v45, a10, SLODWORD(v48), SLODWORD(v49));
    }

    else
    {
      if (v53)
      {
        v97 = 1;
        v125 = 1;
        goto LABEL_61;
      }

      v54 = v20;
      v55 = v49;
      Path::DoButt(this, a5, &v126, &v127, v20 * a9, v21, v22, -v44, -v45);
    }

    v49 = v55;
    v20 = v54;
    v125 = 0;
    v97 = 1;
    goto LABEL_61;
  }

  return result;
}

uint64_t Path::DashTo(uint64_t result, float *a2, float *a3, int *a4, float *a5, char *a6, unsigned int *a7, unsigned int *a8, int a9, uint64_t a10)
{
  v39 = result;
  v10 = *a3;
  v11 = *a4;
  if (*a3 >= *a2)
  {
    goto LABEL_26;
  }

  v17 = a2[5];
  v16 = a2[6];
  v18 = -v17;
  v19 = *a4;
  v38 = a6;
  while (1)
  {
    v20 = *(a10 + 8 * v19 + 4) - *a5;
    v21 = *a2 - *a3;
    if (v20 > v21)
    {
      break;
    }

    v22 = v19 + 1;
    *a4 = v22;
    *a5 = 0.0;
    if (v22 >= a9)
    {
      *a4 = v22 - a9;
      v22 -= a9;
    }

    v23 = v11;
    if (v22 != v11)
    {
      while (*(a10 + 8 * v22 + 4) <= 0.0)
      {
        *a4 = ++v22;
        *a5 = 0.0;
        if (v22 >= a9)
        {
          *a4 = v22 - a9;
          v22 -= a9;
        }

        if (v22 == v11)
        {
          v23 = v11;
          goto LABEL_13;
        }
      }

      v23 = v22;
    }

LABEL_13:
    if (*(a10 + 8 * v23 + 4) <= 0.0)
    {
      goto LABEL_21;
    }

    v24 = v23;
    v25 = v20 + *a3;
    *a3 = v25;
    v26 = *a2 - v25;
    v27 = v25 - v10;
    v28 = *a2 - v10;
    v29 = ((v27 * a2[3]) + (a2[1] * v26)) / v28;
    v30 = ((v27 * a2[4]) + (a2[2] * v26)) / v28;
    v31 = ((v27 * a2[8]) + (a2[7] * v26)) / v28;
    v32 = *a6;
    if (v32 == 1 && (*(a10 + 8 * v24) & 1) == 0)
    {
      v36 = Shape::AddPoint(v39, v29 + (v31 * v16), v30 + (v31 * v18));
      v37 = Shape::AddPoint(v39, v29 - (v31 * v16), v30 + (v31 * v17));
      result = Shape::AddEdge(v39, v36, v37);
      v35 = 0;
    }

    else
    {
      if ((v32 & 1) != 0 || *(a10 + 8 * v24) != 1)
      {
        goto LABEL_21;
      }

      v33 = Shape::AddPoint(v39, v29 + (v31 * v16), v30 + (v31 * v18));
      v34 = Shape::AddPoint(v39, v29 - (v31 * v16), v30 + (v31 * v17));
      Shape::AddEdge(v39, v34, v33);
      Shape::AddEdge(v39, *a8, v34);
      result = Shape::AddEdge(v39, v33, *a7);
      v35 = 1;
      v36 = -1;
      v37 = -1;
    }

    *a7 = v36;
    *a8 = v37;
    a6 = v38;
    *v38 = v35;
LABEL_21:
    v19 = *a4;
    if (*a4 == v11)
    {
      v19 = v11;
      if (*a3 >= *a2)
      {
        goto LABEL_25;
      }
    }
  }

  *a5 = *a5 + v21;
  *a3 = *a2;
LABEL_25:
  v11 = *a4;
LABEL_26:
  *a6 = *(a10 + 8 * v11);
  return result;
}

double TSDMetalEdgeDistanceFieldTextureAdjustmentMix()
{
  TSUMix();
  v1 = v0;
  TSUMix();
  TSUMix();
  return v1;
}

BOOL TSDMetalEdgeDistanceFieldBufferPixelIsInsideTexture(double a1, double a2, double a3, double a4)
{
  result = 0;
  if (a1 >= 0.0 && a2 >= 0.0 && a1 < a3)
  {
    return a2 < a4;
  }

  return result;
}

double TSDMetalEdgeDistanceFieldBufferGradientAtPixel(uint64_t a1, double a2, double a3, double a4)
{
  v4 = vcvtq_f64_f32(*(a1 + 16 * (a2 + a4 * a3) + 4));
  __asm { FMOV            V1.2D, #-0.5 }

  *&result = *&vaddq_f64(v4, _Q1);
  return result;
}

BOOL TSDMetalEdgeDistanceFieldBufferPixelIsLocalMaximum(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = 0;
  v11 = fabsf(*(a1 + 4 * (a2 + a4 * a3)));
  v12 = 1;
  while (1)
  {
    while (1)
    {
      v13 = v12;
      v14 = &kNeighboring8Points[2 * v10];
      v15 = TSDAddPoints(a2, a3, *v14);
      if (v15 >= 0.0)
      {
        v17 = v15;
        v18 = v16;
        v19 = v16 >= 0.0 && v15 < a4;
        if (v19 && v16 < a5)
        {
          v21 = TSDAddPoints(a2, a3, v14[2]);
          if (v21 >= 0.0)
          {
            v23 = v22 >= 0.0 && v21 < a4;
            if (v23 && v22 < a5)
            {
              break;
            }
          }
        }
      }

      v12 = 0;
      result = 0;
      v10 = 2;
      if ((v13 & 1) == 0)
      {
        return result;
      }
    }

    v25 = (v21 + a4 * v22);
    v26 = fabsf(*(a1 + 4 * (v17 + a4 * v18)));
    v27 = fabsf(*(a1 + 4 * v25));
    if (v26 <= v11 && v27 < v11)
    {
      break;
    }

    result = v27 <= v11 && v26 < v11;
    if (!result)
    {
      v12 = 0;
      v10 = 2;
      if (((v13 ^ 1) & 1) == 0)
      {
        continue;
      }
    }

    return result;
  }

  return 1;
}

uint64_t TSDMetalEdgeDistanceFieldBufferTracePixelValue(uint64_t a1, int a2, double a3, double a4, double a5)
{
  v5 = a3 + a5 * a4;
  if (a2)
  {
    return *(a1 + 4 * v5);
  }

  else
  {
    return *(a1 + 4 * v5) - 0x8000;
  }
}

double TSDMetalEdgeDistanceFieldBufferSetTracePixelValue(uint64_t a1, uint64_t a2, int a3, double a4, double a5, double a6)
{
  v6 = a2 + 0x8000;
  if (a3)
  {
    v6 = a2;
  }

  v7 = v6 + 255;
  if (v6 >= 0)
  {
    HIBYTE(v7) = BYTE1(v6);
  }

  result = a4 + a6 * a5;
  v9 = (a1 + 4 * result);
  *v9 = v6;
  v9[1] = HIBYTE(v7);
  v9[3] = -1;
  return result;
}

uint64_t TSDMetalEdgeDistanceFieldBufferSurroundingTracePixelValueClosestToZero(uint64_t a1, int a2, double a3, double a4, double a5, double a6)
{
  v6 = a2;
  if (a2)
  {
    v12 = 0x8000000000000000;
  }

  else
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = 4;
  v14 = &unk_26CA65B08;
  do
  {
    v15 = TSDAddPoints(a3, a4, *(v14 - 1));
    if (v15 >= 0.0)
    {
      v17 = v16 >= 0.0 && v15 < a5;
      if (v17 && v16 < a6)
      {
        v19 = (a1 + 4 * (v15 + a5 * v16));
        if (*(v19 + 3))
        {
          v20 = *v19;
          v21 = v20 - 0x8000;
          v17 = v20 - 0x8000 < 0;
          v22 = 0x8000 - v20;
          if (!v17)
          {
            v22 = v21;
          }

          if (v12 >= 0)
          {
            v23 = v12;
          }

          else
          {
            v23 = -v12;
          }

          if ((v6 & 1) == 0)
          {
            if (v22 >= v23)
            {
              goto LABEL_25;
            }

LABEL_24:
            v12 = v21;
            goto LABEL_25;
          }

          if (v22 > v23)
          {
            goto LABEL_24;
          }
        }
      }
    }

LABEL_25:
    v14 += 2;
    --v13;
  }

  while (v13);
  return v12;
}

uint64_t TSDMetalEdgeDistanceFieldBufferNeighborPixelsClosestToZero(uint64_t a1, int64_t a2, _OWORD *a3, double a4, double a5, double a6, double a7)
{
  v14 = 0;
  v27[23] = *MEMORY[0x277D85DE8];
  v15 = &unk_26CA65B08;
  v16 = 8;
  do
  {
    v17 = TSDAddPoints(a4, a5, *(v15 - 1));
    if (v17 >= 0.0)
    {
      v19 = v18 >= 0.0 && v17 < a6;
      if (v19 && v18 < a7)
      {
        v21 = &__base[24 * v14++];
        *v21 = *(a1 + 4 * (v17 + a6 * v18));
        v21[1] = v17;
        v21[2] = v18;
      }
    }

    v15 += 2;
    --v16;
  }

  while (v16);
  if (v14 >= a2)
  {
    v22 = a2;
  }

  else
  {
    v22 = v14;
  }

  if (v22 > 0)
  {
    qsort_b(__base, v14, 0x18uLL, &__block_literal_global_35);
    if (a3)
    {
      v23 = v27;
      do
      {
        v24 = *v23;
        v23 = (v23 + 24);
        *a3++ = v24;
        --a2;
      }

      while (a2);
    }
  }

  return v22;
}

uint64_t __TSDMetalEdgeDistanceFieldBufferNeighborPixelsClosestToZero_block_invoke(uint64_t a1, double *a2, double *a3)
{
  v3 = fabs(*a2);
  v4 = fabs(*a3);
  if (v3 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v3 > v4;
  }
}

uint64_t TSDMetalEdgeDistanceFieldBufferNeighborPixelIsZero(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = fabsf(*(a1 + 4 * (a2 + a4 * a3)));
  v11 = &unk_26CA65B08;
  v12 = 8;
  while (1)
  {
    v13 = TSDAddPoints(a2, a3, *(v11 - 1));
    if (v13 >= 0.0)
    {
      v15 = v14 >= 0.0 && v13 < a4;
      v16 = v15 && v14 < a5;
      if (v16 && fabsf(*(a1 + 4 * (v13 + a4 * v14))) < v10)
      {
        break;
      }
    }

    v11 += 2;
    if (!--v12)
    {
      return 1;
    }
  }

  return 0;
}

BOOL TSDMetalEdgeDistanceFieldValueIsGreaterThanStrokeWidth(double a1, double a2, double a3, double a4)
{
  v4 = fabs(a1);
  if (a3 <= a4)
  {
    a3 = a4;
  }

  return v4 > a2 / a3;
}

void Shape::Shape(Shape *this)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 6) = 1;
  *(this + 16) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
}

{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 6) = 1;
  *(this + 16) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
}

void Shape::~Shape(void **this)
{
  if (*(this + 5) >= 1)
  {
    free(this[3]);
  }

  this[2] = 0;
  this[3] = 0;
  if (*(this + 9) >= 1)
  {
    free(this[5]);
  }

  this[4] = 0;
  this[5] = 0;
  v2 = this[7];
  if (v2)
  {
    free(v2);
  }

  v3 = this[12];
  if (v3)
  {
    free(v3);
  }

  v4 = this[8];
  if (v4)
  {
    free(v4);
  }

  v5 = this[9];
  if (v5)
  {
    free(v5);
  }

  v6 = this[10];
  if (v6)
  {
    free(v6);
  }

  v7 = this[16];
  if (v7)
  {
    free(v7);
  }

  v8 = this[11];
  if (v8)
  {
    free(v8);
  }

  v9 = this[13];
  if (v9)
  {
    free(v9);
  }

  v10 = this[14];
  if (v10)
  {
    free(v10);
  }
}

void Shape::MakePointData(Shape *this, int a2)
{
  v3 = *(this + 13);
  if (a2)
  {
    if ((v3 & 4) == 0)
    {
      *(this + 13) = v3 | 4;
      v4 = *(this + 11);
      if (v4)
      {
        free(v4);
      }

      *(this + 11) = malloc_type_malloc(48 * *(this + 5), 0x102004023ED6C3AuLL);
    }
  }

  else if ((v3 & 4) != 0)
  {
    *(this + 13) = v3 & 0xFFFFFFFB;
    v5 = *(this + 11);
    if (v5)
    {
      free(v5);
      *(this + 11) = 0;
    }
  }
}

void Shape::MakeEdgeData(Shape *this, int a2)
{
  v3 = *(this + 13);
  if (a2)
  {
    if ((v3 & 8) == 0)
    {
      *(this + 13) = v3 | 8;
      v4 = *(this + 7);
      if (v4)
      {
        free(v4);
      }

      *(this + 7) = malloc_type_malloc(*(this + 9) << 6, 0x100004094D12286uLL);
    }
  }

  else if ((v3 & 8) != 0)
  {
    *(this + 13) = v3 & 0xFFFFFFF7;
    v5 = *(this + 7);
    if (v5)
    {
      free(v5);
      *(this + 7) = 0;
    }
  }
}

void Shape::MakeRasterData(Shape *this, int a2)
{
  v3 = *(this + 13);
  if (a2)
  {
    if ((v3 & 0x80) == 0)
    {
      *(this + 13) = v3 | 0x80;
      v4 = *(this + 10);
      if (v4)
      {
        free(v4);
      }

      *(this + 10) = malloc_type_malloc(48 * *(this + 9), 0x10200403C9B7522uLL);
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    *(this + 13) = v3 & 0xFFFFFF7F;
    v5 = *(this + 10);
    if (v5)
    {
      free(v5);
      *(this + 10) = 0;
    }
  }
}

void Shape::MakeQuickRasterData(Shape *this, int a2)
{
  v3 = *(this + 13);
  if (a2)
  {
    if ((v3 & 0x100) == 0)
    {
      *(this + 13) = v3 | 0x100;
      v4 = *(this + 16);
      if (v4)
      {
        free(v4);
      }

      *(this + 16) = malloc_type_malloc(16 * *(this + 9), 0x10000408B6DE1C6uLL);
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    *(this + 13) = v3 & 0xFFFFFEFF;
    v5 = *(this + 16);
    if (v5)
    {
      free(v5);
      *(this + 16) = 0;
    }
  }
}

void Shape::MakeSweepSrcData(Shape *this, int a2)
{
  v3 = *(this + 13);
  if (a2)
  {
    if ((v3 & 0x10) == 0)
    {
      *(this + 13) = v3 | 0x10;
      v4 = *(this + 8);
      if (v4)
      {
        free(v4);
      }

      *(this + 8) = malloc_type_malloc(56 * *(this + 9), 0x10A0040A41B8C3EuLL);
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    *(this + 13) = v3 & 0xFFFFFFEF;
    v5 = *(this + 8);
    if (v5)
    {
      free(v5);
      *(this + 8) = 0;
    }
  }
}

void Shape::MakeSweepDestData(Shape *this, int a2)
{
  v3 = *(this + 13);
  if (a2)
  {
    if ((v3 & 0x20) == 0)
    {
      *(this + 13) = v3 | 0x20;
      v4 = *(this + 9);
      if (v4)
      {
        free(v4);
      }

      *(this + 9) = malloc_type_malloc(32 * *(this + 9), 0x1080040DCAC275BuLL);
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    *(this + 13) = v3 & 0xFFFFFFDF;
    v5 = *(this + 9);
    if (v5)
    {
      free(v5);
      *(this + 9) = 0;
    }
  }
}

void Shape::MakeBackData(Shape *this, int a2)
{
  v3 = *(this + 13);
  if (a2)
  {
    if ((v3 & 0x200) == 0)
    {
      *(this + 13) = v3 | 0x200;
      v4 = *(this + 12);
      if (v4)
      {
        free(v4);
      }

      *(this + 12) = malloc_type_malloc(16 * *(this + 9), 0x1000040451B5BE8uLL);
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    *(this + 13) = v3 & 0xFFFFFDFF;
    v5 = *(this + 12);
    if (v5)
    {
      free(v5);
      *(this + 12) = 0;
    }
  }
}

void Shape::MakeVoronoiData(Shape *this, int a2)
{
  v3 = *(this + 13);
  if (a2)
  {
    if ((v3 & 0x400) == 0)
    {
      *(this + 13) = v3 | 0x400;
      v4 = *(this + 13);
      if (v4)
      {
        free(v4);
      }

      v5 = *(this + 14);
      if (v5)
      {
        free(v5);
      }

      *(this + 13) = malloc_type_malloc(8 * *(this + 5), 0x100004000313F17uLL);
      *(this + 14) = malloc_type_malloc(40 * *(this + 9), 0x10000400A747E1EuLL);
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    *(this + 13) = v3 & 0xFFFFFBFF;
    v6 = *(this + 13);
    if (v6)
    {
      free(v6);
      *(this + 13) = 0;
    }

    v7 = *(this + 14);
    if (v7)
    {
      free(v7);
      *(this + 14) = 0;
    }
  }
}

void **Shape::Copy(Shape *this, Shape *a2)
{
  if (a2)
  {
    v4 = *(this + 13);
    if ((v4 & 4) != 0)
    {
      v4 &= ~4u;
      *(this + 13) = v4;
      v5 = *(this + 11);
      if (v5)
      {
        free(v5);
        *(this + 11) = 0;
        v4 = *(this + 13);
      }
    }

    if ((v4 & 8) != 0)
    {
      v4 &= ~8u;
      *(this + 13) = v4;
      v6 = *(this + 7);
      if (v6)
      {
        free(v6);
        *(this + 7) = 0;
        v4 = *(this + 13);
      }
    }

    if ((v4 & 0x10) != 0)
    {
      v4 &= ~0x10u;
      *(this + 13) = v4;
      v7 = *(this + 8);
      if (v7)
      {
        free(v7);
        *(this + 8) = 0;
        v4 = *(this + 13);
      }
    }

    if ((v4 & 0x20) != 0)
    {
      v4 &= ~0x20u;
      *(this + 13) = v4;
      v8 = *(this + 9);
      if (v8)
      {
        free(v8);
        *(this + 9) = 0;
        v4 = *(this + 13);
      }
    }

    if ((v4 & 0x80) != 0)
    {
      v4 &= ~0x80u;
      *(this + 13) = v4;
      v9 = *(this + 10);
      if (v9)
      {
        free(v9);
        *(this + 10) = 0;
        v4 = *(this + 13);
      }
    }

    if ((v4 & 0x100) != 0)
    {
      v4 &= ~0x100u;
      *(this + 13) = v4;
      v10 = *(this + 16);
      if (v10)
      {
        free(v10);
        *(this + 16) = 0;
        v4 = *(this + 13);
      }
    }

    if ((v4 & 0x200) != 0)
    {
      v4 &= ~0x200u;
      *(this + 13) = v4;
      v11 = *(this + 12);
      if (v11)
      {
        free(v11);
        *(this + 12) = 0;
        v4 = *(this + 13);
      }
    }

    if ((v4 & 0x40) != 0)
    {
      SweepTree::DestroyList(this + 21);
      SweepEvent::DestroyQueue(this + 24);
      v12 = *(this + 13);
      if ((v12 & 0x40) != 0)
      {
        *(this + 13) = v12 & 0xFFFFFFBF;
      }
    }

    Shape::Reset(this, *(a2 + 4));
    v13 = *(a2 + 4);
    *(this + 4) = v13;
    *(this + 8) = *(a2 + 8);
    v14 = *(a2 + 13) & 3;
    *(this + 12) = *(a2 + 12);
    *(this + 13) = v14;
    memcpy(*(this + 3), *(a2 + 3), 28 * v13);
    v15 = *(this + 5);
    v16 = *(a2 + 5);
    v17 = 32 * *(this + 8);

    return memcpy(v15, v16, v17);
  }

  else
  {

    return Shape::Reset(this, 0);
  }
}

void **Shape::Reset(void **this, int a2)
{
  v3 = this;
  *(this + 4) = 0;
  *(this + 8) = 0;
  *(this + 12) = 1;
  if (*(this + 5) < a2)
  {
    *(this + 5) = a2;
    this = malloc_type_realloc(this[3], 28 * a2, 0x100004027586B93uLL);
    v3[3] = this;
    v4 = *(v3 + 13);
    if ((v4 & 4) != 0)
    {
      this = malloc_type_realloc(v3[11], 48 * *(v3 + 5), 0x102004023ED6C3AuLL);
      v3[11] = this;
      v4 = *(v3 + 13);
    }

    if ((v4 & 0x400) != 0)
    {
      this = malloc_type_realloc(v3[13], 8 * *(v3 + 5), 0x100004000313F17uLL);
      v3[13] = this;
    }
  }

  if (*(v3 + 9) >= a2)
  {
    goto LABEL_13;
  }

  *(v3 + 9) = a2;
  this = malloc_type_realloc(v3[5], 32 * a2, 0x1000040E0EAB150uLL);
  v3[5] = this;
  v5 = *(v3 + 13);
  if ((v5 & 8) != 0)
  {
    this = malloc_type_realloc(v3[7], *(v3 + 9) << 6, 0x100004094D12286uLL);
    v3[7] = this;
    v5 = *(v3 + 13);
    if ((v5 & 0x20) == 0)
    {
LABEL_9:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_10;
      }

LABEL_18:
      this = malloc_type_realloc(v3[8], 56 * *(v3 + 9), 0x10A0040A41B8C3EuLL);
      v3[8] = this;
      v5 = *(v3 + 13);
      if ((v5 & 0x200) == 0)
      {
LABEL_11:
        if ((v5 & 0x400) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_9;
  }

  this = malloc_type_realloc(v3[9], 32 * *(v3 + 9), 0x1080040DCAC275BuLL);
  v3[9] = this;
  v5 = *(v3 + 13);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  if ((v5 & 0x200) == 0)
  {
    goto LABEL_11;
  }

LABEL_19:
  this = malloc_type_realloc(v3[12], 16 * *(v3 + 9), 0x1000040451B5BE8uLL);
  v3[12] = this;
  if ((*(v3 + 13) & 0x400) != 0)
  {
LABEL_12:
    this = malloc_type_realloc(v3[14], 40 * *(v3 + 9), 0x10000400A747E1EuLL);
    v3[14] = this;
  }

LABEL_13:
  v6 = *(v3 + 13);
  if ((v6 & 3) != 0)
  {
    *(v3 + 13) = v6 & 0xFFFFFFFC;
  }

  return this;
}

uint64_t Shape::SetFlag(Shape *this, int a2, int a3)
{
  v3 = *(this + 13);
  v4 = v3 & a2;
  if (a3)
  {
    if (!v4)
    {
      v5 = v3 | a2;
LABEL_6:
      *(this + 13) = v5;
      return 1;
    }
  }

  else if (v4)
  {
    v5 = v3 & ~a2;
    goto LABEL_6;
  }

  return 0;
}

uint64_t Shape::AddPoint(Shape *this, float a2, float a3)
{
  v6 = *(this + 4);
  if (v6 >= *(this + 5))
  {
    v7 = (2 * v6) | 1;
    *(this + 5) = v7;
    *(this + 3) = malloc_type_realloc(*(this + 3), 28 * v7, 0x100004027586B93uLL);
    v8 = *(this + 13);
    if ((v8 & 4) != 0)
    {
      *(this + 11) = malloc_type_realloc(*(this + 11), 48 * *(this + 5), 0x102004023ED6C3AuLL);
      v8 = *(this + 13);
    }

    if ((v8 & 0x400) != 0)
    {
      *(this + 13) = malloc_type_realloc(*(this + 13), 8 * *(this + 5), 0x100004000313F17uLL);
    }
  }

  result = *(this + 4);
  *(this + 4) = result + 1;
  v10 = *(this + 3) + 28 * result;
  *v10 = a2;
  *(v10 + 4) = a3;
  *(v10 + 8) = xmmword_26CA65B90;
  v11 = *(this + 13);
  if ((v11 & 4) != 0)
  {
    v12 = *(this + 11) + 48 * result;
    *(v12 + 8) = 0xFFFFFFFF00000000;
    *(v12 + 16) = -1;
    *(v12 + 24) = 0;
    *(v12 + 32) = -1;
    if ((v11 & 0x400) == 0)
    {
LABEL_8:
      if (v11)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v11 & 0x400) == 0)
  {
    goto LABEL_8;
  }

  *(*(this + 13) + 8 * result) = 0xFFFFFFFE00000000;
  if (v11)
  {
    return result;
  }

LABEL_9:
  *(this + 13) = v11 | 1;
  return result;
}

uint64_t Shape::SubPoint(uint64_t this, int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v2 = this;
    v3 = *(this + 16);
    if (v3 > a2)
    {
      v4 = *(this + 52);
      if ((v4 & 1) == 0)
      {
        *(this + 52) = v4 | 1;
      }

      v5 = *(this + 24) + 28 * a2;
      v8 = *(v5 + 16);
      v6 = (v5 + 16);
      v7 = v8;
      if ((v8 & 0x80000000) == 0)
      {
        v9 = *(this + 32);
        do
        {
          if (v7 >= v9)
          {
            break;
          }

          v10 = (*(this + 40) + 32 * v7);
          if (v10[2] == a2)
          {
            v7 = v10[4];
            *(v10 + 2) = -1;
            v11 = v10 + 2;
          }

          else
          {
            if (v10[3] != a2)
            {
              break;
            }

            v7 = v10[6];
            *(v10 + 3) = -1;
            v11 = v10 + 3;
          }

          *v11 = -1;
        }

        while ((v7 & 0x80000000) == 0);
      }

      *v6 = -1;
      v12 = v3 - 1;
      if (v3 - 1 > a2)
      {
        this = Shape::SwapPoints(this, a2, v12);
        v12 = *(v2 + 16) - 1;
      }

      *(v2 + 16) = v12;
    }
  }

  return this;
}

uint64_t Shape::SwapPoints(uint64_t this, int a2, int a3)
{
  if (a2 == a3)
  {
    return this;
  }

  v3 = *(this + 24);
  v4 = v3 + 28 * a2;
  if (*(v4 + 12) + *(v4 + 8) != 2 || *(v3 + 28 * a3 + 12) + *(v3 + 28 * a3 + 8) != 2)
  {
    v26 = *(v3 + 28 * a2 + 16);
    if ((v26 & 0x80000000) == 0)
    {
      v27 = *(this + 40);
      v28 = *(v3 + 28 * a2 + 16);
      do
      {
        v29 = (v27 + 32 * v28);
        v30 = v29 + 2;
        if (v29[2] == a2)
        {
          v28 = v29[4];
        }

        else
        {
          v30 = v29 + 3;
          if (v29[3] == a2)
          {
            v28 = v29[6];
          }

          else
          {
            v28 = 0xFFFFFFFFLL;
          }

          if (*v30 != a2)
          {
            continue;
          }
        }

        *v30 = *(this + 16);
      }

      while ((v28 & 0x80000000) == 0);
    }

    v5 = a3;
    v31 = *(v3 + 28 * a3 + 16);
    if ((v31 & 0x80000000) == 0)
    {
      v32 = *(this + 40);
      do
      {
        v33 = (v32 + 32 * v31);
        v34 = v33 + 2;
        if (v33[2] == a3)
        {
          v31 = v33[4];
        }

        else
        {
          v34 = v33 + 3;
          if (v33[3] == a3)
          {
            v31 = v33[6];
          }

          else
          {
            v31 = 0xFFFFFFFFLL;
          }

          if (*v34 != a3)
          {
            continue;
          }
        }

        *v34 = a2;
      }

      while ((v31 & 0x80000000) == 0);
    }

    if ((v26 & 0x80000000) != 0)
    {
      goto LABEL_56;
    }

    v35 = *(this + 16);
    v36 = *(this + 40);
    while (1)
    {
      v37 = (v36 + 32 * v26);
      v38 = v37 + 2;
      if (v37[2] == v35)
      {
        v26 = v37[4];
      }

      else
      {
        v38 = v37 + 3;
        if (v37[3] == v35)
        {
          v26 = v37[6];
        }

        else
        {
          v26 = 0xFFFFFFFFLL;
        }

        if (*v38 != v35)
        {
          goto LABEL_55;
        }
      }

      *v38 = a3;
LABEL_55:
      if ((v26 & 0x80000000) != 0)
      {
        goto LABEL_56;
      }
    }
  }

  v5 = a3;
  v6 = *(this + 40);
  v7 = v6 + 32 * *(v4 + 16);
  v8 = (v7 + 8);
  v9 = (v7 + 8);
  if (*(v7 + 8) == a2 || (v9 = (v7 + 12), *(v7 + 12) == a2))
  {
    *v9 = *(this + 16);
  }

  v10 = v6 + 32 * *(v3 + 28 * a2 + 20);
  v11 = (v10 + 8);
  v12 = (v10 + 8);
  if (*(v10 + 8) == a2 || (v12 = (v10 + 12), *(v10 + 12) == a2))
  {
    *v12 = *(this + 16);
  }

  v13 = v6 + 32 * *(v3 + 28 * a3 + 16);
  v14 = (v13 + 8);
  if (*(v13 + 8) != a3)
  {
    v16 = *(v13 + 12);
    v15 = (v13 + 12);
    if (v16 != a3)
    {
      goto LABEL_14;
    }

    v14 = v15;
  }

  *v14 = a2;
LABEL_14:
  v17 = v6 + 32 * *(v3 + 28 * a3 + 20);
  v18 = (v17 + 8);
  if (*(v17 + 8) != a3)
  {
    v20 = *(v17 + 12);
    v19 = (v17 + 12);
    if (v20 != a3)
    {
      goto LABEL_18;
    }

    v18 = v19;
  }

  *v18 = a2;
LABEL_18:
  v21 = *(this + 16);
  if (*v8 != v21)
  {
    v23 = *(v7 + 12);
    v22 = (v7 + 12);
    if (v23 != v21)
    {
      goto LABEL_22;
    }

    v8 = v22;
  }

  *v8 = a3;
LABEL_22:
  if (*v11 == v21)
  {
LABEL_25:
    *v11 = a3;
    goto LABEL_56;
  }

  v25 = *(v10 + 12);
  v24 = (v10 + 12);
  if (v25 == v21)
  {
    v11 = v24;
    goto LABEL_25;
  }

LABEL_56:
  *v54 = *v4;
  *&v54[12] = *(v4 + 12);
  v39 = (v3 + 28 * v5);
  v40 = *(v39 + 12);
  *v4 = *v39;
  *(v4 + 12) = v40;
  v41 = (*(this + 24) + 28 * v5);
  *v41 = *v54;
  *(v41 + 12) = *&v54[12];
  v42 = *(this + 52);
  if ((v42 & 4) != 0)
  {
    v43 = *(this + 88);
    v44 = (v43 + 48 * a2);
    v46 = v44[1];
    v45 = v44[2];
    v47 = *v44;
    v48 = (v43 + 48 * v5);
    v50 = v48[1];
    v49 = v48[2];
    *v44 = *v48;
    v44[1] = v50;
    v44[2] = v49;
    v51 = (*(this + 88) + 48 * v5);
    *v51 = v47;
    v51[1] = v46;
    v51[2] = v45;
    v42 = *(this + 52);
  }

  if ((v42 & 0x400) != 0)
  {
    v52 = *(this + 104);
    v53 = *(v52 + 8 * a2);
    *(v52 + 8 * a2) = *(v52 + 8 * v5);
    *(*(this + 104) + 8 * v5) = v53;
  }

  return this;
}

uint64_t Shape::SwapPoints(uint64_t this, int a2, int a3, int a4)
{
  if (a2 != a4 && a2 != a3 && a3 != a4)
  {
    v6 = this;
    Shape::SwapPoints(this, a2, a3);

    return Shape::SwapPoints(v6, a3, a4);
  }

  return this;
}

Shape *Shape::SortPoints(Shape *this)
{
  v1 = *(this + 13);
  if (v1)
  {
    v2 = this;
    v3 = *(this + 4);
    if (v3 < 1 || (this = Shape::SortPoints(this, 0, v3 - 1), v1 = *(v2 + 13), (v1 & 1) != 0))
    {
      *(v2 + 13) = v1 & 0xFFFFFFFE;
    }
  }

  return this;
}

Shape *Shape::SortPoints(Shape *this, int a2, int a3)
{
  if (a2 < a3)
  {
    v4 = a2;
    v5 = this;
    while (v4 + 1 != a3)
    {
      v6 = (v4 + a3) / 2;
      v7 = (*(v5 + 3) + 28 * v6);
      v8 = *v7;
      v9 = v7[1];
      v10 = v6 < a3;
      v11 = v4 < v6;
      if (v4 < v6 || v6 < a3)
      {
        v13 = a3;
        v14 = v4;
        v12 = (v4 + a3) / 2;
        do
        {
          if (v11)
          {
            do
            {
              v15 = (*(v5 + 3) + 28 * v14);
              v16 = v15[1];
              if (v16 > v9)
              {
                break;
              }

              if (v16 != v9)
              {
                goto LABEL_17;
              }

              if (*v15 > v8)
              {
                break;
              }

              if (*v15 == v8)
              {
                if (v14 >= v6 - 1)
                {
                  if (v14 == v6 - 1)
                  {
                    --v6;
                  }

                  if (v10)
                  {
                    while (1)
                    {
LABEL_20:
                      v17 = (*(v5 + 3) + 28 * v13);
                      v18 = v17[1];
                      if (v18 > v9)
                      {
                        goto LABEL_23;
                      }

                      if (v18 != v9)
                      {
                        goto LABEL_28;
                      }

                      if (*v17 <= v8)
                      {
                        if (*v17 != v8)
                        {
                          goto LABEL_28;
                        }

                        if (v13 <= v12 + 1)
                        {
                          if (v13 == v12 + 1)
                          {
                            ++v12;
                          }

                          goto LABEL_28;
                        }

                        Shape::SwapPoints(v5, v13, v12 + 1, v12);
                        ++v12;
                      }

                      else
                      {
LABEL_23:
                        --v13;
                      }

                      if (v13 <= v12)
                      {
                        goto LABEL_28;
                      }
                    }
                  }

                  goto LABEL_28;
                }

                Shape::SwapPoints(v5, v14, v6 - 1, v6);
                --v6;
              }

              else
              {
LABEL_17:
                ++v14;
              }
            }

            while (v14 < v6);
          }

          if (v10)
          {
            goto LABEL_20;
          }

LABEL_28:
          if (v14 >= v6)
          {
            if (v13 <= v12 + 1)
            {
              if (v13 != v12 + 1)
              {
                break;
              }

              Shape::SwapPoints(v5, v6++, v13);
              v12 = v13;
            }

            else
            {
              Shape::SwapPoints(v5, ++v12, v6++, v13);
            }
          }

          else if (v13 <= v12)
          {
            if (v14 >= v6 - 1)
            {
              if (v14 == v6 - 1)
              {
                Shape::SwapPoints(v5, v12--, v14);
                v6 = v14;
              }
            }

            else
            {
              Shape::SwapPoints(v5, --v6, v12--, v14);
            }
          }

          else
          {
            Shape::SwapPoints(v5, v14++, v13--);
          }

          v10 = v13 > v12;
          v11 = v14 < v6;
        }

        while (v14 < v6 || v13 > v12);
      }

      else
      {
        v12 = (v4 + a3) / 2;
      }

      this = Shape::SortPoints(v5, v4, v6 - 1);
      v4 = v12 + 1;
      if (v12 + 1 >= a3)
      {
        return this;
      }
    }

    v19 = *(v5 + 3);
    v20 = (v19 + 28 * v4);
    v21 = v20[1];
    v22 = (v19 + 28 * a3);
    v23 = v22[1];
    if (v21 > v23 || v21 == v23 && *v20 > *v22)
    {

      return Shape::SwapPoints(v5, v4, a3);
    }
  }

  return this;
}

Shape *Shape::SortPointsRounded(Shape *this)
{
  v1 = *(this + 4);
  if (v1 >= 1)
  {
    return Shape::SortPointsRounded(this, 0, v1 - 1);
  }

  return this;
}

Shape *Shape::SortPointsRounded(Shape *this, int a2, int a3)
{
  if (a2 < a3)
  {
    v4 = a2;
    v5 = this;
    while (v4 + 1 != a3)
    {
      v6 = (v4 + a3) / 2;
      v7 = *(v5 + 11) + 48 * v6;
      v8 = *(v7 + 36);
      v9 = *(v7 + 40);
      v10 = v6 < a3;
      v11 = v4 < v6;
      if (v4 < v6 || v6 < a3)
      {
        v13 = a3;
        v14 = v4;
        v12 = (v4 + a3) / 2;
        do
        {
          if (v11)
          {
            do
            {
              v15 = *(v5 + 11) + 48 * v14;
              v16 = *(v15 + 40);
              if (v16 > v9)
              {
                break;
              }

              if (v16 != v9)
              {
                goto LABEL_17;
              }

              v17 = *(v15 + 36);
              if (v17 > v8)
              {
                break;
              }

              if (v17 == v8)
              {
                if (v14 >= v6 - 1)
                {
                  if (v14 == v6 - 1)
                  {
                    --v6;
                  }

                  if (v10)
                  {
                    while (1)
                    {
LABEL_20:
                      v18 = *(v5 + 11) + 48 * v13;
                      v19 = *(v18 + 40);
                      if (v19 > v9)
                      {
                        goto LABEL_23;
                      }

                      if (v19 != v9)
                      {
                        goto LABEL_28;
                      }

                      v20 = *(v18 + 36);
                      if (v20 <= v8)
                      {
                        if (v20 != v8)
                        {
                          goto LABEL_28;
                        }

                        if (v13 <= v12 + 1)
                        {
                          if (v13 == v12 + 1)
                          {
                            ++v12;
                          }

                          goto LABEL_28;
                        }

                        Shape::SwapPoints(v5, v13, v12 + 1, v12);
                        ++v12;
                      }

                      else
                      {
LABEL_23:
                        --v13;
                      }

                      if (v13 <= v12)
                      {
                        goto LABEL_28;
                      }
                    }
                  }

                  goto LABEL_28;
                }

                Shape::SwapPoints(v5, v14, v6 - 1, v6);
                --v6;
              }

              else
              {
LABEL_17:
                ++v14;
              }
            }

            while (v14 < v6);
          }

          if (v10)
          {
            goto LABEL_20;
          }

LABEL_28:
          if (v14 >= v6)
          {
            if (v13 <= v12 + 1)
            {
              if (v13 != v12 + 1)
              {
                break;
              }

              Shape::SwapPoints(v5, v6++, v13);
              v12 = v13;
            }

            else
            {
              Shape::SwapPoints(v5, ++v12, v6++, v13);
            }
          }

          else if (v13 <= v12)
          {
            if (v14 >= v6 - 1)
            {
              if (v14 == v6 - 1)
              {
                Shape::SwapPoints(v5, v12--, v14);
                v6 = v14;
              }
            }

            else
            {
              Shape::SwapPoints(v5, --v6, v12--, v14);
            }
          }

          else
          {
            Shape::SwapPoints(v5, v14++, v13--);
          }

          v10 = v13 > v12;
          v11 = v14 < v6;
        }

        while (v14 < v6 || v13 > v12);
      }

      else
      {
        v12 = (v4 + a3) / 2;
      }

      this = Shape::SortPointsRounded(v5, v4, v6 - 1);
      v4 = v12 + 1;
      if (v12 + 1 >= a3)
      {
        return this;
      }
    }

    v21 = *(v5 + 11);
    v22 = v21 + 48 * v4;
    v23 = *(v22 + 40);
    v24 = v21 + 48 * a3;
    v25 = *(v24 + 40);
    if (v23 > v25 || v23 == v25 && *(v22 + 36) > *(v24 + 36))
    {

      return Shape::SwapPoints(v5, v4, a3);
    }
  }

  return this;
}

Shape *Shape::SortPointsByOldInd(Shape *this, int a2, int a3)
{
  if (a2 < a3)
  {
    v3 = this;
    v25 = a3;
    while (a2 + 1 != a3)
    {
      v4 = (a2 + a3) / 2;
      v5 = (*(v3 + 3) + 28 * v4);
      v6 = *v5;
      v7 = v5[1];
      v8 = *(*(v3 + 11) + 48 * v4);
      v9 = v4 < a3;
      v10 = a2 < v4;
      v26 = a2;
      if (a2 < v4 || v4 < a3)
      {
        v12 = a3;
        v13 = a2;
        v11 = (a2 + a3) / 2;
        do
        {
          if (v10)
          {
            do
            {
              v14 = (*(v3 + 3) + 28 * v13);
              v15 = v14[1];
              if (v15 > v7)
              {
                break;
              }

              if (v15 != v7)
              {
                goto LABEL_17;
              }

              if (*v14 > v6)
              {
                break;
              }

              if (*v14 != v6)
              {
                goto LABEL_17;
              }

              v16 = *(*(v3 + 11) + 48 * v13);
              if (v16 > v8)
              {
                break;
              }

              if (v16 == v8)
              {
                if (v13 >= v4 - 1)
                {
                  if (v13 == v4 - 1)
                  {
                    --v4;
                  }

                  if (v9)
                  {
                    while (1)
                    {
LABEL_20:
                      v17 = (*(v3 + 3) + 28 * v12);
                      v18 = v17[1];
                      if (v18 > v7)
                      {
                        goto LABEL_25;
                      }

                      if (v18 != v7)
                      {
                        goto LABEL_37;
                      }

                      if (*v17 > v6)
                      {
                        goto LABEL_25;
                      }

                      if (*v17 != v6)
                      {
                        goto LABEL_37;
                      }

                      v19 = *(*(v3 + 11) + 48 * v12);
                      if (v19 <= v8)
                      {
                        if (v19 != v8)
                        {
                          goto LABEL_37;
                        }

                        if (v12 <= v11 + 1)
                        {
                          if (v12 == v11 + 1)
                          {
                            ++v11;
                          }

                          goto LABEL_37;
                        }

                        Shape::SwapPoints(v3, v12, v11 + 1, v11);
                        ++v11;
                      }

                      else
                      {
LABEL_25:
                        --v12;
                      }

                      if (v12 <= v11)
                      {
                        goto LABEL_37;
                      }
                    }
                  }

                  goto LABEL_37;
                }

                Shape::SwapPoints(v3, v13, v4 - 1, v4);
                --v4;
              }

              else
              {
LABEL_17:
                ++v13;
              }
            }

            while (v13 < v4);
          }

          if (v9)
          {
            goto LABEL_20;
          }

LABEL_37:
          if (v13 >= v4)
          {
            if (v12 <= v11 + 1)
            {
              if (v12 != v11 + 1)
              {
                break;
              }

              Shape::SwapPoints(v3, v4++, v12);
              v11 = v12;
            }

            else
            {
              Shape::SwapPoints(v3, ++v11, v4++, v12);
            }
          }

          else if (v12 <= v11)
          {
            if (v13 >= v4 - 1)
            {
              if (v13 == v4 - 1)
              {
                Shape::SwapPoints(v3, v11--, v13);
                v4 = v13;
              }
            }

            else
            {
              Shape::SwapPoints(v3, --v4, v11--, v13);
            }
          }

          else
          {
            Shape::SwapPoints(v3, v13++, v12--);
          }

          v9 = v12 > v11;
          v10 = v13 < v4;
        }

        while (v13 < v4 || v12 > v11);
      }

      else
      {
        v11 = (a2 + a3) / 2;
      }

      this = Shape::SortPointsByOldInd(v3, v26, v4 - 1);
      a2 = v11 + 1;
      a3 = v25;
      if (v11 + 1 >= v25)
      {
        return this;
      }
    }

    v20 = *(v3 + 3);
    v21 = (v20 + 28 * a2);
    v22 = v21[1];
    v23 = (v20 + 28 * a3);
    v24 = v23[1];
    if (v22 > v24 || v22 == v24 && (*v21 > *v23 || *v21 == *v23 && *(*(v3 + 11) + 48 * a2) > *(*(v3 + 11) + 48 * a3)))
    {

      return Shape::SwapPoints(v3, a2, a3);
    }
  }

  return this;
}

uint64_t Shape::AddEdge(Shape *this, unsigned int a2, unsigned int a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a2 == a3 || ((a3 | a2) & 0x80000000) != 0)
  {
    return v3;
  }

  *(this + 12) = 0;
  v7 = *(this + 8);
  if (v7 < *(this + 9))
  {
    goto LABEL_11;
  }

  v8 = (2 * v7) | 1;
  *(this + 9) = v8;
  *(this + 5) = malloc_type_realloc(*(this + 5), 32 * v8, 0x1000040E0EAB150uLL);
  v9 = *(this + 13);
  if ((v9 & 8) != 0)
  {
    *(this + 7) = malloc_type_realloc(*(this + 7), *(this + 9) << 6, 0x100004094D12286uLL);
    v9 = *(this + 13);
    if ((v9 & 0x10) == 0)
    {
LABEL_6:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }
  }

  else if ((v9 & 0x10) == 0)
  {
    goto LABEL_6;
  }

  *(this + 8) = malloc_type_realloc(*(this + 8), 56 * *(this + 9), 0x10A0040A41B8C3EuLL);
  v9 = *(this + 13);
  if ((v9 & 0x20) == 0)
  {
LABEL_7:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_8;
    }

LABEL_26:
    *(this + 10) = malloc_type_realloc(*(this + 10), 48 * *(this + 9), 0x10200403C9B7522uLL);
    v9 = *(this + 13);
    if ((v9 & 0x200) == 0)
    {
LABEL_9:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_25:
  *(this + 9) = malloc_type_realloc(*(this + 9), 32 * *(this + 9), 0x1080040DCAC275BuLL);
  v9 = *(this + 13);
  if ((v9 & 0x80) != 0)
  {
    goto LABEL_26;
  }

LABEL_8:
  if ((v9 & 0x200) == 0)
  {
    goto LABEL_9;
  }

LABEL_27:
  *(this + 12) = malloc_type_realloc(*(this + 12), 16 * *(this + 9), 0x1000040451B5BE8uLL);
  if ((*(this + 13) & 0x400) != 0)
  {
LABEL_10:
    *(this + 14) = malloc_type_realloc(*(this + 14), 40 * *(this + 9), 0x10000400A747E1EuLL);
  }

LABEL_11:
  v3 = *(this + 8);
  *(this + 8) = v3 + 1;
  v10 = (*(this + 5) + 32 * v3);
  v10[2] = -1;
  v10[3] = -1;
  v10[1] = -1;
  *v10 = vsub_f32(*(*(this + 3) + 28 * a3), *(*(this + 3) + 28 * a2));
  Shape::ConnectStart(this, a2, v3);
  Shape::ConnectEnd(this, a3, v3);
  v11 = *(this + 13);
  if ((v11 & 8) != 0)
  {
    v13 = *(this + 7) + (v3 << 6);
    *v13 = 1;
    *(v13 + 4) = *(*(this + 5) + 32 * v3);
    if ((v11 & 0x10) == 0)
    {
LABEL_13:
      if ((v11 & 0x200) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_20;
    }
  }

  else if ((v11 & 0x10) == 0)
  {
    goto LABEL_13;
  }

  v14 = *(this + 8) + 56 * v3;
  *v14 = 0;
  *(v14 + 8) = -1;
  if ((v11 & 0x200) == 0)
  {
LABEL_14:
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_15;
    }

LABEL_21:
    *(*(this + 14) + 40 * v3) = -1;
    if ((v11 & 2) != 0)
    {
      return v3;
    }

    goto LABEL_16;
  }

LABEL_20:
  v15 = (*(this + 12) + 16 * v3);
  *v15 = -1;
  v15[1] = 0;
  if ((v11 & 0x400) != 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  if ((v11 & 2) == 0)
  {
LABEL_16:
    *(this + 13) = v11 | 2;
  }

  return v3;
}

uint64_t Shape::ConnectStart(uint64_t this, int a2, int a3)
{
  v5 = this;
  v6 = *(this + 40);
  v7 = a3;
  if ((*(v6 + 32 * a3 + 8) & 0x80000000) == 0)
  {
    this = Shape::DisconnectStart(this, a3);
    v6 = *(v5 + 40);
  }

  v8 = (v6 + 32 * v7);
  v8[2] = a2;
  v9 = *(v5 + 24);
  v10 = v9 + 28 * a2;
  v13 = *(v10 + 20);
  v11 = (v10 + 20);
  v12 = v13;
  ++*(v11 - 2);
  v8[4] = -1;
  v8[5] = v13;
  if ((v13 & 0x80000000) == 0)
  {
    v14 = v6 + 32 * v12;
    if (*(v14 + 8) == a2)
    {
      v15 = 16;
    }

    else
    {
      if (*(v14 + 12) != a2)
      {
        goto LABEL_9;
      }

      v15 = 24;
    }

    *(v14 + v15) = a3;
  }

LABEL_9:
  *v11 = a3;
  v16 = v9 + 28 * a2;
  v18 = *(v16 + 16);
  v17 = (v16 + 16);
  if (v18 < 0)
  {
    *v17 = a3;
  }

  return this;
}

uint64_t Shape::ConnectEnd(uint64_t this, int a2, int a3)
{
  v5 = this;
  v6 = *(this + 40);
  v7 = a3;
  if ((*(v6 + 32 * a3 + 12) & 0x80000000) == 0)
  {
    this = Shape::DisconnectEnd(this, a3);
    v6 = *(v5 + 40);
  }

  v8 = (v6 + 32 * v7);
  v8[3] = a2;
  v9 = *(v5 + 24);
  v10 = v9 + 28 * a2;
  v13 = *(v10 + 20);
  v11 = (v10 + 20);
  v12 = v13;
  ++*(v11 - 3);
  v8[6] = -1;
  v8[7] = v13;
  if ((v13 & 0x80000000) == 0)
  {
    v14 = v6 + 32 * v12;
    if (*(v14 + 8) == a2)
    {
      v15 = 16;
    }

    else
    {
      if (*(v14 + 12) != a2)
      {
        goto LABEL_9;
      }

      v15 = 24;
    }

    *(v14 + v15) = a3;
  }

LABEL_9:
  *v11 = a3;
  v16 = v9 + 28 * a2;
  v18 = *(v16 + 16);
  v17 = (v16 + 16);
  if (v18 < 0)
  {
    *v17 = a3;
  }

  return this;
}

uint64_t Shape::AddEdge(Shape *this, unsigned int a2, unsigned int a3, int a4, int a5)
{
  v5 = 0xFFFFFFFFLL;
  if (a2 == a3 || ((a3 | a2) & 0x80000000) != 0)
  {
    return v5;
  }

  v11 = *(*(this + 3) + 28 * a2 + 16);
  if ((v11 & 0x80000000) != 0)
  {
LABEL_12:
    *(this + 12) = 0;
    v16 = *(this + 8);
    if (v16 < *(this + 9))
    {
      goto LABEL_20;
    }

    v17 = (2 * v16) | 1;
    *(this + 9) = v17;
    *(this + 5) = malloc_type_realloc(*(this + 5), 32 * v17, 0x1000040E0EAB150uLL);
    v18 = *(this + 13);
    if ((v18 & 8) != 0)
    {
      *(this + 7) = malloc_type_realloc(*(this + 7), *(this + 9) << 6, 0x100004094D12286uLL);
      v18 = *(this + 13);
      if ((v18 & 0x10) == 0)
      {
LABEL_15:
        if ((v18 & 0x20) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_35;
      }
    }

    else if ((v18 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    *(this + 8) = malloc_type_realloc(*(this + 8), 56 * *(this + 9), 0x10A0040A41B8C3EuLL);
    v18 = *(this + 13);
    if ((v18 & 0x20) == 0)
    {
LABEL_16:
      if ((v18 & 0x80) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_36;
    }

LABEL_35:
    *(this + 9) = malloc_type_realloc(*(this + 9), 32 * *(this + 9), 0x1080040DCAC275BuLL);
    v18 = *(this + 13);
    if ((v18 & 0x80) == 0)
    {
LABEL_17:
      if ((v18 & 0x200) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_37;
    }

LABEL_36:
    *(this + 10) = malloc_type_realloc(*(this + 10), 48 * *(this + 9), 0x10200403C9B7522uLL);
    v18 = *(this + 13);
    if ((v18 & 0x200) == 0)
    {
LABEL_18:
      if ((v18 & 0x400) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_37:
    *(this + 12) = malloc_type_realloc(*(this + 12), 16 * *(this + 9), 0x1000040451B5BE8uLL);
    if ((*(this + 13) & 0x400) == 0)
    {
LABEL_20:
      v5 = *(this + 8);
      *(this + 8) = v5 + 1;
      v19 = (*(this + 5) + 32 * v5);
      v19[2] = -1;
      v19[3] = -1;
      v19[1] = -1;
      *v19 = vsub_f32(*(*(this + 3) + 28 * a3), *(*(this + 3) + 28 * a2));
      Shape::ConnectStart(this, a2, v5);
      Shape::ConnectEnd(this, a3, v5);
      v20 = *(this + 13);
      if ((v20 & 8) != 0)
      {
        v21 = *(this + 7) + (v5 << 6);
        *v21 = 1;
        *(v21 + 4) = *(*(this + 5) + 32 * v5);
        if ((v20 & 0x10) == 0)
        {
LABEL_22:
          if ((v20 & 0x200) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_28;
        }
      }

      else if ((v20 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      v22 = *(this + 8) + 56 * v5;
      *v22 = 0;
      *(v22 + 8) = -1;
      if ((v20 & 0x200) == 0)
      {
LABEL_23:
        if ((v20 & 0x400) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_29;
      }

LABEL_28:
      v23 = (*(this + 12) + 16 * v5);
      *v23 = -1;
      v23[1] = 0;
      if ((v20 & 0x400) == 0)
      {
LABEL_24:
        if ((v20 & 2) != 0)
        {
          return v5;
        }

        goto LABEL_30;
      }

LABEL_29:
      v24 = (*(this + 14) + 40 * v5);
      *v24 = a4;
      v24[1] = a5;
      if ((v20 & 2) != 0)
      {
        return v5;
      }

LABEL_30:
      *(this + 13) = v20 | 2;
      return v5;
    }

LABEL_19:
    *(this + 14) = malloc_type_realloc(*(this + 14), 40 * *(this + 9), 0x10000400A747E1EuLL);
    goto LABEL_20;
  }

  while (1)
  {
    v12 = *(this + 5) + 32 * v11;
    v13 = *(v12 + 8);
    if (*(v12 + 8) == __PAIR64__(a3, a2) || v13 == a3 && *(v12 + 12) == a2)
    {
      return 0xFFFFFFFFLL;
    }

    if (v13 == a2)
    {
      v14 = 16;
    }

    else
    {
      if (*(v12 + 12) != a2)
      {
        goto LABEL_12;
      }

      v14 = 24;
    }

    v11 = *(v12 + v14);
    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_12;
    }
  }
}

void Shape::SubEdge(Shape *this, int a2)
{
  if ((a2 & 0x80000000) == 0 && *(this + 8) > a2)
  {
    *(this + 12) = 0;
    Shape::DisconnectStart(this, a2);
    Shape::DisconnectEnd(this, a2);
    v4 = *(this + 8) - 1;
    if (v4 > a2)
    {
      Shape::SwapEdges(this, a2, v4);
      v4 = *(this + 8) - 1;
    }

    *(this + 8) = v4;
    v5 = *(this + 13);
    if ((v5 & 2) == 0)
    {
      *(this + 13) = v5 | 2;
    }
  }
}

uint64_t Shape::DisconnectStart(uint64_t this, int a2)
{
  v2 = *(this + 40);
  v3 = (v2 + 32 * a2);
  v4 = v3[2];
  if ((v4 & 0x80000000) != 0)
  {
    return this;
  }

  v5 = *(this + 24);
  --*(v5 + 28 * v4 + 12);
  v6 = v3[5];
  if ((v6 & 0x80000000) == 0)
  {
    v7 = v2 + 32 * v6;
    if (*(v7 + 8) == v4)
    {
      v8 = 16;
    }

    else
    {
      if (*(v7 + 12) != v4)
      {
        goto LABEL_8;
      }

      v8 = 24;
    }

    *(v7 + v8) = v3[4];
  }

LABEL_8:
  v9 = v3[4];
  if ((v9 & 0x80000000) == 0)
  {
    v10 = v2 + 32 * v9;
    if (*(v10 + 8) == v4)
    {
      v11 = 20;
LABEL_13:
      *(v10 + v11) = v6;
      goto LABEL_14;
    }

    if (*(v10 + 12) == v4)
    {
      v11 = 28;
      goto LABEL_13;
    }
  }

LABEL_14:
  v12 = v5 + 28 * v4;
  v14 = *(v12 + 16);
  v13 = (v12 + 16);
  if (v14 == a2)
  {
    *v13 = v9;
  }

  v15 = v5 + 28 * v4;
  v17 = *(v15 + 20);
  v16 = (v15 + 20);
  if (v17 == a2)
  {
    *v16 = v3[5];
  }

  v3[2] = -1;
  return this;
}

uint64_t Shape::DisconnectEnd(uint64_t this, int a2)
{
  v2 = *(this + 40);
  v3 = (v2 + 32 * a2);
  v4 = v3[3];
  if ((v4 & 0x80000000) != 0)
  {
    return this;
  }

  v5 = *(this + 24);
  --*(v5 + 28 * v4 + 8);
  v6 = v3[7];
  if ((v6 & 0x80000000) == 0)
  {
    v7 = v2 + 32 * v6;
    if (*(v7 + 8) == v4)
    {
      v8 = 16;
    }

    else
    {
      if (*(v7 + 12) != v4)
      {
        goto LABEL_8;
      }

      v8 = 24;
    }

    *(v7 + v8) = v3[6];
  }

LABEL_8:
  v9 = v3[6];
  if ((v9 & 0x80000000) == 0)
  {
    v10 = v2 + 32 * v9;
    if (*(v10 + 8) == v4)
    {
      v11 = 20;
LABEL_13:
      *(v10 + v11) = v6;
      goto LABEL_14;
    }

    if (*(v10 + 12) == v4)
    {
      v11 = 28;
      goto LABEL_13;
    }
  }

LABEL_14:
  v12 = v5 + 28 * v4;
  v14 = *(v12 + 16);
  v13 = (v12 + 16);
  if (v14 == a2)
  {
    *v13 = v9;
  }

  v15 = v5 + 28 * v4;
  v17 = *(v15 + 20);
  v16 = (v15 + 20);
  if (v17 == a2)
  {
    *v16 = v3[7];
  }

  v3[3] = -1;
  return this;
}

__n128 Shape::SwapEdges(Shape *this, int a2, int a3)
{
  if (a2 != a3)
  {
    v3 = *(this + 5);
    v4 = (v3 + 32 * a2);
    v5 = v4;
    v6 = v4[5];
    if ((v6 & 0x80000000) == 0 && v6 != a3)
    {
      v7 = v3 + 32 * v6;
      v8 = v4[2];
      if (*(v7 + 8) == v8)
      {
        v9 = 16;
LABEL_8:
        *(v7 + v9) = a3;
        goto LABEL_9;
      }

      if (*(v7 + 12) == v8)
      {
        v9 = 24;
        goto LABEL_8;
      }
    }

LABEL_9:
    v10 = v4[4];
    if ((v10 & 0x80000000) == 0 && v10 != a3)
    {
      v11 = v3 + 32 * v10;
      v12 = v4[2];
      if (*(v11 + 8) == v12)
      {
        v13 = 20;
LABEL_15:
        *(v11 + v13) = a3;
        goto LABEL_16;
      }

      if (*(v11 + 12) == v12)
      {
        v13 = 28;
        goto LABEL_15;
      }
    }

LABEL_16:
    v14 = v4[7];
    if ((v14 & 0x80000000) == 0 && v14 != a3)
    {
      v15 = v3 + 32 * v14;
      v16 = v4[3];
      if (*(v15 + 8) == v16)
      {
        v17 = 16;
LABEL_22:
        *(v15 + v17) = a3;
        goto LABEL_23;
      }

      if (*(v15 + 12) == v16)
      {
        v17 = 24;
        goto LABEL_22;
      }
    }

LABEL_23:
    v18 = v4[6];
    if ((v18 & 0x80000000) == 0 && v18 != a3)
    {
      v19 = v3 + 32 * v18;
      v20 = v4[3];
      if (*(v19 + 8) == v20)
      {
        v21 = 20;
      }

      else
      {
        if (*(v19 + 12) != v20)
        {
          goto LABEL_30;
        }

        v21 = 28;
      }

      *(v19 + v21) = a3;
    }

LABEL_30:
    v22 = v4[2];
    if ((v22 & 0x80000000) == 0)
    {
      v23 = *(this + 3);
      v24 = v23 + 28 * v22;
      v26 = *(v24 + 16);
      v25 = (v24 + 16);
      if (v26 == a2)
      {
        *v25 = *(this + 8);
      }

      v27 = v23 + 28 * v22;
      v29 = *(v27 + 20);
      v28 = (v27 + 20);
      if (v29 == a2)
      {
        *v28 = *(this + 8);
      }
    }

    v30 = v4[3];
    if ((v30 & 0x80000000) == 0)
    {
      v31 = *(this + 3);
      v32 = v31 + 28 * v30;
      v34 = *(v32 + 16);
      v33 = (v32 + 16);
      if (v34 == a2)
      {
        *v33 = *(this + 8);
      }

      v35 = v31 + 28 * v30;
      v37 = *(v35 + 20);
      v36 = (v35 + 20);
      if (v37 == a2)
      {
        *v36 = *(this + 8);
      }
    }

    v38 = v3 + 32 * a3;
    v39 = *(v38 + 20);
    if ((v39 & 0x80000000) == 0 && v39 != a2)
    {
      v40 = v3 + 32 * v39;
      v41 = *(v38 + 8);
      if (*(v40 + 8) == v41)
      {
        v42 = 16;
LABEL_46:
        *(v40 + v42) = a2;
        goto LABEL_47;
      }

      if (*(v40 + 12) == v41)
      {
        v42 = 24;
        goto LABEL_46;
      }
    }

LABEL_47:
    v43 = *(v38 + 16);
    if ((v43 & 0x80000000) == 0 && v43 != a2)
    {
      v44 = v3 + 32 * v43;
      v45 = *(v38 + 8);
      if (*(v44 + 8) == v45)
      {
        v46 = 20;
LABEL_53:
        *(v44 + v46) = a2;
        goto LABEL_54;
      }

      if (*(v44 + 12) == v45)
      {
        v46 = 28;
        goto LABEL_53;
      }
    }

LABEL_54:
    v47 = *(v38 + 28);
    if ((v47 & 0x80000000) == 0 && v47 != a2)
    {
      v48 = v3 + 32 * v47;
      v49 = *(v38 + 12);
      if (*(v48 + 8) == v49)
      {
        v50 = 16;
LABEL_60:
        *(v48 + v50) = a2;
        goto LABEL_61;
      }

      if (*(v48 + 12) == v49)
      {
        v50 = 24;
        goto LABEL_60;
      }
    }

LABEL_61:
    v51 = *(v38 + 24);
    if ((v51 & 0x80000000) == 0 && v51 != a2)
    {
      v52 = v3 + 32 * v51;
      v53 = *(v38 + 12);
      if (*(v52 + 8) == v53)
      {
        v54 = 20;
      }

      else
      {
        if (*(v52 + 12) != v53)
        {
          goto LABEL_68;
        }

        v54 = 28;
      }

      *(v52 + v54) = a2;
    }

LABEL_68:
    v55 = *(v38 + 8);
    if ((v55 & 0x80000000) == 0)
    {
      v56 = *(this + 3);
      v57 = v56 + 28 * v55;
      v59 = *(v57 + 16);
      v58 = (v57 + 16);
      if (v59 == a3)
      {
        *v58 = a2;
      }

      v60 = v56 + 28 * v55;
      v62 = *(v60 + 20);
      v61 = (v60 + 20);
      if (v62 == a3)
      {
        *v61 = a2;
      }
    }

    v63 = *(v38 + 12);
    if ((v63 & 0x80000000) == 0)
    {
      v64 = *(this + 3);
      v65 = v64 + 28 * v63;
      v67 = *(v65 + 16);
      v66 = (v65 + 16);
      if (v67 == a3)
      {
        *v66 = a2;
      }

      v68 = v64 + 28 * v63;
      v70 = *(v68 + 20);
      v69 = (v68 + 20);
      if (v70 == a3)
      {
        *v69 = a2;
      }
    }

    if ((v22 & 0x80000000) == 0)
    {
      v71 = *(this + 3);
      v72 = v71 + 28 * v22;
      v74 = *(v72 + 16);
      v73 = (v72 + 16);
      v75 = *(this + 8);
      if (v74 == v75)
      {
        *v73 = a3;
      }

      v76 = v71 + 28 * v22;
      v78 = *(v76 + 20);
      v77 = (v76 + 20);
      if (v78 == v75)
      {
        *v77 = a3;
      }
    }

    if ((v30 & 0x80000000) == 0)
    {
      v79 = *(this + 3);
      v80 = v79 + 28 * v30;
      v82 = *(v80 + 16);
      v81 = (v80 + 16);
      v83 = *(this + 8);
      if (v82 == v83)
      {
        *v81 = a3;
      }

      v84 = v79 + 28 * v30;
      v86 = *(v84 + 20);
      v85 = (v84 + 20);
      if (v86 == v83)
      {
        *v85 = a3;
      }
    }

    v87 = v4 + 5;
    if (v4[5] == a3)
    {
      *v87 = a2;
    }

    v88 = v4 + 7;
    if (v4[7] == a3)
    {
      *v88 = a2;
    }

    v89 = v4 + 4;
    if (v4[4] == a3)
    {
      *v89 = a2;
    }

    v91 = v4[6];
    v90 = v4 + 6;
    if (v91 == a3)
    {
      *v90 = a2;
    }

    if (*(v38 + 20) == a2)
    {
      *v87 = a3;
    }

    if (*(v38 + 28) == a2)
    {
      *v88 = a3;
    }

    if (*(v38 + 16) == a2)
    {
      *v89 = a3;
    }

    if (*(v38 + 24) == a2)
    {
      *v90 = a3;
    }

    result = *v5;
    v141 = *(v5 + 1);
    v93 = *(v38 + 16);
    *v5 = *v38;
    *(v5 + 1) = v93;
    v94 = *(this + 5) + 32 * a3;
    *v94 = result;
    *(v94 + 16) = v141;
    v95 = *(this + 13);
    if ((v95 & 8) != 0)
    {
      v104 = *(this + 7);
      v105 = (v104 + (a2 << 6));
      v133 = *v105;
      v135 = v105[1];
      v137 = v105[2];
      v139 = v105[3];
      v106 = (v104 + (a3 << 6));
      v107 = v106[3];
      v109 = *v106;
      v108 = v106[1];
      v105[2] = v106[2];
      v105[3] = v107;
      *v105 = v109;
      v105[1] = v108;
      v110 = (*(this + 7) + (a3 << 6));
      *v110 = v133;
      v110[1] = v135;
      result = v137;
      v110[2] = v137;
      v110[3] = v139;
      v95 = *(this + 13);
      if ((v95 & 0x10) == 0)
      {
LABEL_106:
        if ((v95 & 0x20) == 0)
        {
          goto LABEL_107;
        }

        goto LABEL_114;
      }
    }

    else if ((v95 & 0x10) == 0)
    {
      goto LABEL_106;
    }

    v111 = *(this + 8);
    v112 = (v111 + 56 * a2);
    v134 = *v112;
    v136 = v112[1];
    v138 = v112[2];
    v140 = *(v112 + 6);
    v113 = (v111 + 56 * a3);
    v115 = v113[1];
    v114 = v113[2];
    v116 = *v113;
    *(v112 + 6) = *(v113 + 6);
    v112[1] = v115;
    v112[2] = v114;
    *v112 = v116;
    v117 = *(this + 8) + 56 * a3;
    *v117 = v134;
    *(v117 + 16) = v136;
    result = v138;
    *(v117 + 32) = v138;
    *(v117 + 48) = v140;
    v95 = *(this + 13);
    if ((v95 & 0x20) == 0)
    {
LABEL_107:
      if ((v95 & 0x80) == 0)
      {
        goto LABEL_108;
      }

      goto LABEL_115;
    }

LABEL_114:
    v118 = *(this + 9);
    v119 = (v118 + 32 * a2);
    v120 = *v119;
    result = v119[1];
    v121 = (v118 + 32 * a3);
    v122 = v121[1];
    *v119 = *v121;
    v119[1] = v122;
    v123 = *(this + 9) + 32 * a3;
    *v123 = v120;
    *(v123 + 16) = result;
    v95 = *(this + 13);
    if ((v95 & 0x80) == 0)
    {
LABEL_108:
      if ((v95 & 0x200) == 0)
      {
        goto LABEL_109;
      }

      goto LABEL_116;
    }

LABEL_115:
    v124 = *(this + 10);
    v125 = (v124 + 48 * a2);
    v126 = v125[1];
    result = v125[2];
    v127 = *v125;
    v128 = (v124 + 48 * a3);
    v130 = v128[1];
    v129 = v128[2];
    *v125 = *v128;
    v125[1] = v130;
    v125[2] = v129;
    v131 = *(this + 10) + 48 * a3;
    *v131 = v127;
    *(v131 + 16) = v126;
    *(v131 + 32) = result;
    v95 = *(this + 13);
    if ((v95 & 0x200) == 0)
    {
LABEL_109:
      if ((v95 & 0x400) == 0)
      {
        return result;
      }

      goto LABEL_110;
    }

LABEL_116:
    v132 = *(this + 12);
    result = *(v132 + 16 * a2);
    *(v132 + 16 * a2) = *(v132 + 16 * a3);
    *(*(this + 12) + 16 * a3) = result;
    if ((*(this + 13) & 0x400) == 0)
    {
      return result;
    }

LABEL_110:
    v96 = *(this + 14);
    v97 = (v96 + 40 * a2);
    v98 = *(v97 + 4);
    v99 = *v97;
    result = v97[1];
    v100 = (v96 + 40 * a3);
    v101 = *(v100 + 4);
    v102 = v100[1];
    *v97 = *v100;
    v97[1] = v102;
    *(v97 + 4) = v101;
    v103 = *(this + 14) + 40 * a3;
    *v103 = v99;
    *(v103 + 16) = result;
    *(v103 + 32) = v98;
  }

  return result;
}

double Shape::SwapEdges(Shape *this, int a2, int a3, int a4)
{
  if (a2 != a4 && a2 != a3 && a3 != a4)
  {
    Shape::SwapEdges(this, a2, a3);

    *&result = Shape::SwapEdges(this, a3, a4).n128_u64[0];
  }

  return result;
}

void Shape::SortEdges(Shape *this)
{
  v2 = *(this + 13);
  if ((v2 & 2) != 0)
  {
    *(this + 13) = v2 & 0xFFFFFFFD;
    v4 = malloc_type_malloc(16 * *(this + 8), 0x1000040A517B1A3uLL);
    if (*(this + 4) >= 1)
    {
      v5 = 0;
      v6 = *(this + 3);
      do
      {
        v7 = (v6 + 28 * v5);
        if (v7[3] + v7[2] >= 2)
        {
          v8 = v7[4];
          if ((v8 & 0x80000000) != 0)
          {
            v12 = 0;
          }

          else
          {
            v9 = *(this + 5);
            v10 = 1;
            v11 = v4 + 2;
            do
            {
              v12 = v10;
              *(v11 - 2) = v8;
              v13 = v9 + 32 * v8;
              v14 = *v13;
              if (v5 == *(v13 + 8))
              {
                v15 = *(v13 + 4);
                *v11 = v14;
                v11[1] = v15;
                *(v11 - 4) = 1;
                v16 = 16;
              }

              else
              {
                v17 = -*(v13 + 4);
                *v11 = -v14;
                *(v11 + 1) = v17;
                *(v11 - 4) = 0;
                if (v5 != *(v13 + 12))
                {
                  break;
                }

                v16 = 24;
              }

              v8 = *(v13 + v16);
              v11 += 4;
              v10 = v12 + 1;
            }

            while ((v8 & 0x80000000) == 0);
          }

          v18 = v12 - 1;
          Shape::SortEdgesList(this, v4, 0, (v12 - 1));
          v6 = *(this + 3);
          v19 = v6 + 28 * v5;
          v20 = v4[4 * v12 - 4];
          *(v19 + 16) = *v4;
          *(v19 + 20) = v20;
          if (v12)
          {
            v21 = 0;
            v22 = v4;
            do
            {
              if (*(v22 + 4) == 1)
              {
                if (v21)
                {
                  v23 = *(v22 - 4);
                }

                else
                {
                  v23 = -1;
                }

                v25 = *(this + 5) + 32 * *v22;
                *(v25 + 20) = v23;
                if (v21 >= v18)
                {
                  *(v25 + 16) = -1;
                }

                else
                {
                  *(v25 + 16) = v22[4];
                }
              }

              else
              {
                if (v21)
                {
                  v24 = *(v22 - 4);
                }

                else
                {
                  v24 = -1;
                }

                v26 = *(this + 5) + 32 * *v22;
                *(v26 + 28) = v24;
                if (v21 >= v18)
                {
                  *(v26 + 24) = -1;
                }

                else
                {
                  *(v26 + 24) = v22[4];
                }
              }

              ++v21;
              v22 += 4;
            }

            while (v12 != v21);
          }
        }

        ++v5;
      }

      while (v5 < *(this + 4));
    }

    free(v4);
  }
}

Shape *Shape::SortEdgesList(Shape *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = result;
  if (a3 >= a4)
  {
    return result;
  }

  v5 = a3;
LABEL_3:
  if (v5 + 1 != a4)
  {
    v7 = ((v5 + a4) / 2);
    v8 = a2 + 16 * v7;
    v9 = *(v8 + 8);
    v10 = *(v8 + 12);
    v11 = v7 < a4;
    v12 = v5 < (v5 + a4) / 2;
    if (v5 >= (v5 + a4) / 2 && v7 >= a4)
    {
      LODWORD(v13) = (v5 + a4) / 2;
      goto LABEL_56;
    }

    v13 = ((v5 + a4) / 2);
    v14 = a4;
    v15 = v5;
    while (1)
    {
      if (!v12)
      {
        v18 = v7;
LABEL_22:
        if (v11)
        {
          goto LABEL_23;
        }

LABEL_37:
        v23 = v13;
        goto LABEL_41;
      }

      while (1)
      {
        v16 = (a2 + 16 * v15);
        result = Shape::CmpToVert(result, v9, v10, v16[2], v16[3]);
        if (result)
        {
          v17 = result < 1;
          if (result >= 1)
          {
            v15 = v15;
          }

          else
          {
            v15 = (v15 + 1);
          }

          v18 = v7;
          goto LABEL_16;
        }

        v18 = v7 - 1;
        if (v15 >= v18)
        {
          break;
        }

        v19 = *v16;
        *v16 = *(a2 + 16 * v18);
        *(a2 + 16 * v18) = *(a2 + 16 * v7);
        *(a2 + 16 * v7) = v19;
        v17 = 1;
LABEL_16:
        v20 = v17 && v15 < v18;
        v7 = v18;
        if (!v20)
        {
          goto LABEL_22;
        }
      }

      if (v15 == v18)
      {
        v18 = v18;
      }

      else
      {
        v18 = v7;
      }

      if (!v11)
      {
        goto LABEL_37;
      }

LABEL_23:
      while (2)
      {
        v21 = (a2 + 16 * v14);
        result = Shape::CmpToVert(result, v9, v10, v21[2], v21[3]);
        if (result)
        {
          v22 = result >= 0;
          v14 = (v14 - v22);
          v23 = v13;
          goto LABEL_27;
        }

        v23 = v13 + 1;
        if (v14 > v23)
        {
          v24 = *v21;
          *v21 = *(a2 + 16 * v23);
          *(a2 + 16 * v23) = *(a2 + 16 * v13);
          *(a2 + 16 * v13) = v24;
          v22 = 1;
LABEL_27:
          v25 = !v22 || v14 <= v23;
          v13 = v23;
          if (v25)
          {
            goto LABEL_41;
          }

          continue;
        }

        break;
      }

      if (v14 == v23)
      {
        v23 = v23;
      }

      else
      {
        v23 = v13;
      }

LABEL_41:
      if (v15 >= v18)
      {
        v13 = v23 + 1;
        if (v14 > v13)
        {
          v27 = *(a2 + 16 * v13);
          *(a2 + 16 * v13) = *(a2 + 16 * v18);
          *(a2 + 16 * v18) = *(a2 + 16 * v14);
          *(a2 + 16 * v14) = v27;
          v7 = (v18 + 1);
          goto LABEL_52;
        }

        if (v14 == v13)
        {
          v29 = *(a2 + 16 * v18);
          *(a2 + 16 * v18) = *(a2 + 16 * v14);
          *(a2 + 16 * v14) = v29;
          v7 = (v18 + 1);
          v13 = v14;
          goto LABEL_52;
        }

        goto LABEL_55;
      }

      if (v14 <= v23)
      {
        v7 = v18 - 1;
        if (v15 < v7)
        {
          v28 = *(a2 + 16 * v7);
          *(a2 + 16 * v7) = *(a2 + 16 * v23);
          *(a2 + 16 * v23) = *(a2 + 16 * v15);
          *(a2 + 16 * v15) = v28;
          v13 = (v23 - 1);
          goto LABEL_52;
        }

        if (v15 == v7)
        {
          v30 = *(a2 + 16 * v23);
          *(a2 + 16 * v23) = *(a2 + 16 * v15);
          *(a2 + 16 * v15) = v30;
          v13 = (v23 - 1);
          v7 = v15;
          goto LABEL_52;
        }

LABEL_55:
        LODWORD(v13) = v23;
        LODWORD(v7) = v18;
        goto LABEL_56;
      }

      v26 = *(a2 + 16 * v15);
      *(a2 + 16 * v15) = *(a2 + 16 * v14);
      *(a2 + 16 * v14) = v26;
      v15 = (v15 + 1);
      v14 = (v14 - 1);
      v13 = v23;
      v7 = v18;
LABEL_52:
      v11 = v14 > v13;
      v12 = v15 < v7;
      if (v15 >= v7 && v14 <= v13)
      {
LABEL_56:
        result = Shape::SortEdgesList(v34, a2, v5, (v7 - 1));
        v5 = (v13 + 1);
        if (v5 >= a4)
        {
          return result;
        }

        goto LABEL_3;
      }
    }
  }

  v31 = (a2 + 16 * a4);
  v32 = (a2 + 16 * v5);
  result = Shape::CmpToVert(result, v31[2], v31[3], v32[2], v32[3]);
  if (result >= 1)
  {
    v33 = *v32;
    *v32 = *v31;
    *v31 = v33;
  }

  return result;
}

uint64_t Shape::CmpToVert(Shape *this, float a2, float a3, float a4, float a5)
{
  if (a2 >= 0.0)
  {
    if (a3 > 0.0)
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    if (a3 >= 0.0)
    {
      v6 = v7;
    }

    else
    {
      v6 = 1;
    }

    if (a3 <= 0.0)
    {
      v8 = -1;
    }

    else
    {
      v8 = 4;
    }

    if (a3 < 0.0)
    {
      v8 = 0;
    }

    if (a2 <= 0.0)
    {
      v6 = v8;
    }
  }

  else
  {
    if (a3 > 0.0)
    {
      v5 = 5;
    }

    else
    {
      v5 = 6;
    }

    if (a3 >= 0.0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 7;
    }
  }

  if (a5 > 0.0)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  if (a5 >= 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1;
  }

  if (a5 <= 0.0)
  {
    v11 = -1;
  }

  else
  {
    v11 = 4;
  }

  if (a5 < 0.0)
  {
    v11 = 0;
  }

  if (a4 <= 0.0)
  {
    v10 = v11;
  }

  if (a5 > 0.0)
  {
    v12 = 5;
  }

  else
  {
    v12 = 6;
  }

  if (a5 >= 0.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 7;
  }

  if (a4 < 0.0)
  {
    v10 = v13;
  }

  if (v6 < v10)
  {
    return 1;
  }

  if (v6 > v10)
  {
    return 0xFFFFFFFFLL;
  }

  v15 = (a2 * a5) - (a3 * a4);
  if (v15 < 0.0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v15 > 0.0;
  }
}

BOOL Shape::Eulerian(Shape *this, char a2)
{
  v2 = *(this + 4);
  if (a2)
  {
    if (v2 >= 1)
    {
      v3 = v2 - 1;
      v4 = (*(this + 3) + 12);
      do
      {
        v5 = *(v4 - 1);
        v6 = *v4;
        v7 = v3-- != 0;
        v8 = v7;
        result = v5 == v6;
        if (v5 != v6)
        {
          break;
        }

        v4 += 7;
      }

      while ((v8 & 1) != 0);
      return result;
    }

    return 1;
  }

  if (v2 < 1)
  {
    return 1;
  }

  v10 = v2 - 1;
  v11 = (*(this + 3) + 12);
  do
  {
    v12 = (*v11 + *(v11 - 1)) & 0x80000001;
    v7 = v10-- != 0;
    v13 = v7;
    result = v12 != 1;
    if (v12 == 1)
    {
      break;
    }

    v11 += 7;
  }

  while ((v13 & 1) != 0);
  return result;
}

int32x2_t Shape::Inverse(Shape *this, int a2)
{
  v2 = *(this + 5) + 32 * a2;
  v3 = *(v2 + 8);
  v4 = *(v2 + 12);
  *(v2 + 8) = v4;
  *(v2 + 12) = v3;
  *(v2 + 16) = vextq_s8(*(v2 + 16), *(v2 + 16), 8uLL);
  result = vneg_f32(*v2);
  *v2 = result;
  if ((v4 & 0x80000000) == 0)
  {
    v6 = (*(this + 3) + 28 * v4);
    result = vadd_s32(v6[1], 0x1FFFFFFFFLL);
    v6[1] = result;
  }

  if ((v3 & 0x80000000) == 0)
  {
    v7 = (*(this + 3) + 28 * v3);
    result = vadd_s32(v7[1], 0xFFFFFFFF00000001);
    v7[1] = result;
  }

  v8 = *(this + 13);
  if ((v8 & 8) != 0)
  {
    *(*(this + 7) + (a2 << 6)) = -*(*(this + 7) + (a2 << 6));
    if ((v8 & 0x20) == 0)
    {
LABEL_7:
      if ((v8 & 0x200) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  else if ((v8 & 0x20) == 0)
  {
    goto LABEL_7;
  }

  v9 = (*(this + 9) + 32 * a2);
  result = vrev64_s32(v9[2]);
  v9[2] = result;
  if ((v8 & 0x200) == 0)
  {
LABEL_8:
    if ((v8 & 0x400) == 0)
    {
      return result;
    }

LABEL_13:
    v11 = *(this + 14);
    v12 = 40 * a2;
    result = vrev64_s32(*(v11 + v12));
    *(v11 + v12) = result;
    return result;
  }

LABEL_12:
  v10 = (*(this + 12) + 16 * a2);
  result = vrev64_s32(v10[1]);
  v10[1] = result;
  if ((v8 & 0x400) != 0)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t Shape::CalcBBox(uint64_t this)
{
  v1 = *(this + 16);
  if (v1 <= 0)
  {
    *this = 0;
    *(this + 8) = 0;
  }

  else
  {
    v2 = *(this + 24);
    v3 = *v2;
    *&v4 = *v2;
    *(&v4 + 1) = *v2;
    *this = v4;
    if (v1 != 1)
    {
      v5 = *(&v3 + 1);
      v6 = (v2 + 4);
      v7 = v1 - 1;
      v8 = *(&v3 + 1);
      v9 = *&v3;
      do
      {
        v10 = *(v6 - 1);
        if (v10 < v9)
        {
          *this = v10;
          v9 = v10;
        }

        if (v10 > *&v3)
        {
          *(this + 8) = v10;
          *&v3 = v10;
        }

        v11 = *v6;
        if (*v6 < v8)
        {
          *(this + 4) = v11;
          v8 = v11;
        }

        if (v11 > v5)
        {
          *(this + 12) = v11;
          v5 = v11;
        }

        v6 += 7;
        --v7;
      }

      while (v7);
    }
  }

  return this;
}

const CGPath *TSDCreatePathFromSVGString(uint64_t a1)
{
  v79 = *MEMORY[0x277D85DE8];
  Mutable = CGPathCreateMutable();
  v75 = 0.0;
  v76 = 0.0;
  v3 = [MEMORY[0x277CCAC80] scannerWithString:a1];
  v77 = *asc_26CA65BA0;
  v78 = 2883717;
  [v3 setCharactersToBeSkipped:{objc_msgSend(MEMORY[0x277CCA900], "characterSetWithCharactersInString:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithCharacters:length:", &v77, 6))}];
  v74 = 0;
  if ([v3 scanCharactersFromSet:objc_msgSend(MEMORY[0x277CCA900] intoString:{"letterCharacterSet"), &v74}])
  {
    v4 = 0;
    v5 = *MEMORY[0x277CBF348];
    v6 = *(MEMORY[0x277CBF348] + 8);
    v7 = *MEMORY[0x277CBF348];
    do
    {
      v8 = [v74 characterAtIndex:0];
      v9 = v8;
      if (v8 > 96)
      {
        if (v8 <= 112)
        {
          if (v8 > 103)
          {
            if (v8 != 104)
            {
              if (v8 == 108)
              {
                if ([v3 tsu_scanCGFloat:&v75])
                {
                  do
                  {
                    [v3 tsu_scanCGFloat:&v76];
                    CurrentPoint = CGPathGetCurrentPoint(Mutable);
                    CGPathAddLineToPoint(Mutable, 0, v75 - CurrentPoint.x, v76 - CurrentPoint.y);
                  }

                  while (([v3 tsu_scanCGFloat:&v75] & 1) != 0);
                }

                goto LABEL_84;
              }

              if (v8 == 109)
              {
                v10 = CGPathGetCurrentPoint(Mutable);
                [v3 tsu_scanCGFloat:&v75];
                [v3 tsu_scanCGFloat:&v76];
                if (TSDPathGetElementCount(Mutable) < 1)
                {
                  v11 = v75;
                  v12 = v76;
                }

                else
                {
                  v11 = v75 - v10.x;
                  v12 = v76 - v10.y;
                }

                CGPathMoveToPoint(Mutable, 0, v11, v12);
                if ([v3 tsu_scanCGFloat:&v75])
                {
                  do
                  {
                    [v3 tsu_scanCGFloat:&v76];
                    v62 = CGPathGetCurrentPoint(Mutable);
                    CGPathAddLineToPoint(Mutable, 0, v75 - v62.x, v76 - v62.y);
                  }

                  while (([v3 tsu_scanCGFloat:&v75] & 1) != 0);
                }

                goto LABEL_84;
              }

LABEL_80:
              NSLog(@"Cannot process path of type '%@'", v74, *&v64, *&v65, *&v66, *&v67, *&v68, *&v69, *&v70, *&v71);
              goto LABEL_84;
            }

            [v3 tsu_scanCGFloat:&v75];
            v39 = CGPathGetCurrentPoint(Mutable);
            y = v39.y;
            v36 = v75 - v39.x;
            goto LABEL_65;
          }

          if (v8 == 97)
          {
            v52 = CGPathGetCurrentPoint(Mutable);
            v68 = 0.0;
            v66 = 0.0;
            v64 = 0.0;
            v72 = 0;
            v73 = 0;
            v70 = 0.0;
            v71 = 0.0;
            [v3 tsu_scanCGFloat:&v68];
            [v3 tsu_scanCGFloat:&v66];
            [v3 tsu_scanCGFloat:&v64];
            [v3 scanInteger:&v73];
            [v3 scanInteger:&v72];
            [v3 tsu_scanCGFloat:&v71];
            [v3 tsu_scanCGFloat:&v70];
            v70 = v52.y + v70;
            v71 = v52.x + v71;
            v47 = TSDCreatePathByComputingArc(v73 != 0, v72 != 0, v52.x, v52.y, v68, v66, v64, v71, v70);
            ElementCount = TSDPathGetElementCount(v47);
            v49 = Mutable;
            v50 = v47;
            v51 = 1;
            goto LABEL_76;
          }

          if (v8 != 99)
          {
            goto LABEL_80;
          }

          v19 = CGPathGetCurrentPoint(Mutable);
          v68 = 0.0;
          v69 = 0.0;
          v66 = 0.0;
          v67 = 0.0;
          v64 = 0.0;
          v65 = 0.0;
          [v3 tsu_scanCGFloat:&v68];
          [v3 tsu_scanCGFloat:&v69];
          [v3 tsu_scanCGFloat:&v66];
          [v3 tsu_scanCGFloat:&v67];
          [v3 tsu_scanCGFloat:&v64];
          [v3 tsu_scanCGFloat:&v65];
          v13 = v19.x + v68;
          v15 = v19.x + v66;
          v17 = v19.x + v64;
          v14 = v19.y + v69;
          v68 = v19.x + v68;
          v69 = v19.y + v69;
          v16 = v19.y + v67;
          v66 = v19.x + v66;
          v67 = v19.y + v67;
          v18 = v19.y + v65;
          v64 = v19.x + v64;
          v65 = v19.y + v65;
LABEL_35:
          CGPathAddCurveToPoint(Mutable, 0, v13, v14, v15, v16, v17, v18);
          v5 = v66;
          v6 = v67;
          goto LABEL_84;
        }

        if (v8 <= 115)
        {
          if (v8 == 113)
          {
            v61 = CGPathGetCurrentPoint(Mutable);
            v68 = 0.0;
            v69 = 0.0;
            v66 = 0.0;
            v67 = 0.0;
            [v3 tsu_scanCGFloat:&v68];
            [v3 tsu_scanCGFloat:&v69];
            [v3 tsu_scanCGFloat:&v66];
            [v3 tsu_scanCGFloat:&v67];
            v55 = v61.x + v68;
            v56 = v61.y + v69;
            v68 = v55;
            v69 = v56;
            v59 = v61.x + v66;
            v60 = v61.y + v67;
            v66 = v61.x + v66;
            v67 = v61.y + v67;
            v57 = v61.x + (v55 - v61.x + v55 - v61.x) / 3.0;
            v58 = v61.y + (v56 - v61.y + v56 - v61.y) / 3.0;
            goto LABEL_79;
          }

          if (v8 != 115)
          {
            goto LABEL_80;
          }

          v31 = CGPathGetCurrentPoint(Mutable);
          v32 = (((v4 - 67) >> 4) | ((v4 - 67) << 12));
          if (v32 >= 4)
          {
            x = v31.x;
          }

          else
          {
            x = v31.x + v31.x - v5;
          }

          v68 = 0.0;
          v69 = 0.0;
          if (v32 >= 4)
          {
            v34 = v31.y;
          }

          else
          {
            v34 = v31.y + v31.y - v6;
          }

          v66 = 0.0;
          v67 = 0.0;
          [v3 tsu_scanCGFloat:&v68];
          [v3 tsu_scanCGFloat:&v69];
          [v3 tsu_scanCGFloat:&v66];
          [v3 tsu_scanCGFloat:&v67];
          v24 = v31.x + v68;
          v25 = v31.y + v69;
          v68 = v31.x + v68;
          v69 = v31.y + v69;
          v26 = v31.x + v66;
          v27 = v31.y + v67;
          v66 = v31.x + v66;
          v67 = v31.y + v67;
          v28 = Mutable;
          v29 = x;
          v30 = v34;
          goto LABEL_54;
        }

        if (v8 == 116)
        {
          v43 = CGPathGetCurrentPoint(Mutable);
          if (v4 - 81 > 0x23)
          {
            v44 = v43.x;
            v45 = v43.y;
          }

          else
          {
            v44 = v43.x;
            v45 = v43.y;
            if (((1 << (v4 - 81)) & 0x900000009) != 0)
            {
              v44 = v43.x + v43.x - v7;
              v45 = v43.y + v43.y - v43.y;
            }
          }

          v68 = 0.0;
          v69 = 0.0;
          [v3 tsu_scanCGFloat:&v68];
          [v3 tsu_scanCGFloat:&v69];
          v68 = v43.x + v68;
          v69 = v43.y + v69;
          CGPathAddCurveToPoint(Mutable, 0, v44, v43.y + (v45 - v43.y + v45 - v43.y) / 3.0, v44 + (v68 - v44) / 3.0, v45 + (v69 - v45) / 3.0, v68, v69);
          v7 = v44;
          goto LABEL_84;
        }

        if (v8 == 118)
        {
          [v3 tsu_scanCGFloat:&v76];
          v38 = CGPathGetCurrentPoint(Mutable);
          v36 = v38.x;
          y = v76 - v38.y;
          goto LABEL_65;
        }

        if (v8 != 122)
        {
          goto LABEL_80;
        }
      }

      else
      {
        if (v8 <= 80)
        {
          if (v8 > 71)
          {
            if (v8 != 72)
            {
              if (v8 == 76)
              {
                if ([v3 tsu_scanCGFloat:&v75])
                {
                  do
                  {
                    [v3 tsu_scanCGFloat:&v76];
                    CGPathAddLineToPoint(Mutable, 0, v75, v76);
                  }

                  while (([v3 tsu_scanCGFloat:&v75] & 1) != 0);
                }

                goto LABEL_84;
              }

              if (v8 == 77)
              {
                [v3 tsu_scanCGFloat:&v75];
                [v3 tsu_scanCGFloat:&v76];
                CGPathMoveToPoint(Mutable, 0, v75, v76);
                if ([v3 tsu_scanCGFloat:&v75])
                {
                  do
                  {
                    [v3 tsu_scanCGFloat:&v76];
                    CGPathAddLineToPoint(Mutable, 0, v75, v76);
                  }

                  while (([v3 tsu_scanCGFloat:&v75] & 1) != 0);
                }

                goto LABEL_84;
              }

              goto LABEL_80;
            }

            [v3 tsu_scanCGFloat:&v75];
            y = CGPathGetCurrentPoint(Mutable).y;
            v36 = v75;
            goto LABEL_65;
          }

          if (v8 == 65)
          {
            v46 = CGPathGetCurrentPoint(Mutable);
            v68 = 0.0;
            v66 = 0.0;
            v64 = 0.0;
            v72 = 0;
            v73 = 0;
            v70 = 0.0;
            v71 = 0.0;
            [v3 tsu_scanCGFloat:&v68];
            [v3 tsu_scanCGFloat:&v66];
            [v3 tsu_scanCGFloat:&v64];
            [v3 scanInteger:&v73];
            [v3 scanInteger:&v72];
            [v3 tsu_scanCGFloat:&v71];
            [v3 tsu_scanCGFloat:&v70];
            v47 = TSDCreatePathByComputingArc(v73 != 0, v72 != 0, v46.x, v46.y, v68, v66, v64, v71, v70);
            ElementCount = TSDPathGetElementCount(v47);
            v49 = Mutable;
            v50 = v47;
            v51 = 2;
LABEL_76:
            v53 = TSDCreatePathByAppendingPathFromElementToElement(v49, v50, v51, ElementCount);
            CGPathRelease(v47);
            CGPathRelease(Mutable);
            Mutable = CGPathCreateMutableCopy(v53);
            CGPathRelease(v53);
            goto LABEL_84;
          }

          if (v8 != 67)
          {
            goto LABEL_80;
          }

          v68 = 0.0;
          v69 = 0.0;
          v66 = 0.0;
          v67 = 0.0;
          v64 = 0.0;
          v65 = 0.0;
          [v3 tsu_scanCGFloat:&v68];
          [v3 tsu_scanCGFloat:&v69];
          [v3 tsu_scanCGFloat:&v66];
          [v3 tsu_scanCGFloat:&v67];
          [v3 tsu_scanCGFloat:&v64];
          [v3 tsu_scanCGFloat:&v65];
          v13 = v68;
          v14 = v69;
          v15 = v66;
          v16 = v67;
          v17 = v64;
          v18 = v65;
          goto LABEL_35;
        }

        if (v8 <= 83)
        {
          if (v8 == 81)
          {
            v54 = CGPathGetCurrentPoint(Mutable);
            v68 = 0.0;
            v69 = 0.0;
            v66 = 0.0;
            v67 = 0.0;
            [v3 tsu_scanCGFloat:&v68];
            [v3 tsu_scanCGFloat:&v69];
            [v3 tsu_scanCGFloat:&v66];
            [v3 tsu_scanCGFloat:&v67];
            v55 = v68;
            v56 = v69;
            v57 = v54.x + (v68 - v54.x + v68 - v54.x) / 3.0;
            v58 = v54.y + (v69 - v54.y + v69 - v54.y) / 3.0;
            v59 = v66;
            v60 = v67;
LABEL_79:
            CGPathAddCurveToPoint(Mutable, 0, v57, v58, v55 + (v59 - v55) / 3.0, v56 + (v60 - v56) / 3.0, v59, v60);
            v7 = v68;
            goto LABEL_84;
          }

          if (v8 != 83)
          {
            goto LABEL_80;
          }

          v20 = CGPathGetCurrentPoint(Mutable);
          v21 = (((v4 - 67) >> 4) | ((v4 - 67) << 12));
          if (v21 >= 4)
          {
            v22 = v20.x;
          }

          else
          {
            v22 = v20.x + v20.x - v5;
          }

          v68 = 0.0;
          v69 = 0.0;
          if (v21 >= 4)
          {
            v23 = v20.y;
          }

          else
          {
            v23 = v20.y + v20.y - v6;
          }

          v66 = 0.0;
          v67 = 0.0;
          [v3 tsu_scanCGFloat:&v68];
          [v3 tsu_scanCGFloat:&v69];
          [v3 tsu_scanCGFloat:&v66];
          [v3 tsu_scanCGFloat:&v67];
          v24 = v68;
          v25 = v69;
          v26 = v66;
          v27 = v67;
          v28 = Mutable;
          v29 = v22;
          v30 = v23;
LABEL_54:
          CGPathAddCurveToPoint(v28, 0, v29, v30, v24, v25, v26, v27);
          v5 = v68;
          v6 = v69;
          goto LABEL_84;
        }

        if (v8 == 84)
        {
          v40 = CGPathGetCurrentPoint(Mutable);
          if (v4 - 81 > 0x23)
          {
            v41 = v40.x;
            v42 = v40.y;
          }

          else
          {
            v41 = v40.x;
            v42 = v40.y;
            if (((1 << (v4 - 81)) & 0x900000009) != 0)
            {
              v41 = v40.x + v40.x - v7;
              v42 = v40.y + v40.y - v40.y;
            }
          }

          v68 = 0.0;
          v69 = 0.0;
          [v3 tsu_scanCGFloat:&v68];
          [v3 tsu_scanCGFloat:&v69];
          CGPathAddCurveToPoint(Mutable, 0, v40.x + (v41 - v40.x + v41 - v40.x) / 3.0, v40.y + (v42 - v40.y + v42 - v40.y) / 3.0, v41 + (v68 - v41) / 3.0, v42 + (v69 - v42) / 3.0, v68, v69);
          v7 = v41;
          goto LABEL_84;
        }

        if (v8 == 86)
        {
          [v3 tsu_scanCGFloat:&v76];
          *&v36 = *&CGPathGetCurrentPoint(Mutable);
          y = v76;
LABEL_65:
          CGPathAddLineToPoint(Mutable, 0, v36, y);
          goto LABEL_84;
        }

        if (v8 != 90)
        {
          goto LABEL_80;
        }
      }

      CGPathCloseSubpath(Mutable);
LABEL_84:
      v4 = v9;
    }

    while (([v3 scanCharactersFromSet:objc_msgSend(MEMORY[0x277CCA900] intoString:{"letterCharacterSet"), &v74}] & 1) != 0);
  }

  return Mutable;
}

void Shape::ConvertToForme(Shape *this, Path *a2)
{
  if (*(this + 4) >= 2 && *(this + 8) >= 2 && Shape::Eulerian(this, 1))
  {
    Path::Reset(a2);
    Path::SetWeighted(a2, 0);
    Shape::MakePointData(this, 1);
    Shape::MakeEdgeData(this, 1);
    Shape::MakeSweepDestData(this, 1);
    v4 = *(this + 4);
    if (v4 >= 1)
    {
      v5 = (*(this + 3) + 4);
      v6 = (*(this + 11) + 40);
      do
      {
        v7 = ldexpf(*(v5 - 1), 5);
        *(v6 - 1) = ldexpf(roundf(v7), -5);
        v8 = *v5;
        v5 += 7;
        v9 = ldexpf(v8, 5);
        *v6 = ldexpf(roundf(v9), -5);
        v6 += 12;
        --v4;
      }

      while (v4);
    }

    v10 = *(this + 8);
    if (v10 >= 1)
    {
      v11 = *(this + 11);
      v12 = (*(this + 5) + 12);
      v13 = (*(this + 7) + 4);
      do
      {
        *v13 = vsub_f32(*(v11 + 48 * *v12 + 36), *(v11 + 48 * *(v12 - 1) + 36));
        v13 += 8;
        v12 += 8;
        --v10;
      }

      while (v10);
    }

    Shape::SortEdges(this);
    v14 = *(this + 8);
    if (v14 >= 1)
    {
      v15 = (*(this + 9) + 8);
      do
      {
        *(v15 - 1) = 0;
        *v15 = -1;
        v15 += 4;
        --v14;
      }

      while (v14);
    }

    v38 = 0;
    v16 = 0;
    v17 = *(this + 4);
    while (1)
    {
      if (v16 >= v17)
      {
        goto LABEL_20;
      }

      v18 = *(this + 3);
      v19 = v16 << 32;
      v20 = (v18 + 28 * v16 + 16);
      while (1)
      {
        v22 = *v20;
        v20 += 7;
        v21 = v22;
        if ((v22 & 0x80000000) == 0 && !*(*(this + 9) + 32 * v21))
        {
          break;
        }

        v19 += 0x100000000;
        LODWORD(v16) = v16 + 1;
        if (v17 == v16)
        {
          LODWORD(v16) = v17;
          goto LABEL_20;
        }
      }

      v23 = *(v18 + 28 * SHIDWORD(v19) + 16);
      if ((v23 & 0x80000000) == 0)
      {
        break;
      }

LABEL_20:
      v16 = (v16 + 1);
      if (v16 >= v17)
      {
        Shape::MakePointData(this, 0);
        Shape::MakeEdgeData(this, 0);

        Shape::MakeSweepDestData(this, 0);
        return;
      }
    }

    while (1)
    {
      v24 = (*(this + 5) + 32 * v23);
      if (v24[2] == v16)
      {
        break;
      }

      if (v24[3] == v16)
      {
        v23 = v24[6];
        if ((v23 & 0x80000000) == 0)
        {
          continue;
        }
      }

      goto LABEL_20;
    }

    v25 = (v18 + 28 * v24[3]);
    Path::MoveTo(a2, *v25, v25[1]);
    v26 = (*(this + 9) + 32 * v23);
    *v26 = 1;
    v26[1] = -1;
LABEL_28:
    v27 = 0;
    v28 = v23;
LABEL_29:
    v29 = *(this + 5);
    v30 = *(v29 + 32 * v28 + 12);
    LODWORD(v31) = v28;
    while (1)
    {
      v32 = (v29 + 32 * v31);
      if (v32[2] != v30)
      {
        break;
      }

      v23 = v32[4];
      if ((v23 & 0x80000000) != 0)
      {
        goto LABEL_32;
      }

LABEL_33:
      v33 = v23 == v31;
      if (v23 == v31)
      {
        v31 = 0xFFFFFFFFLL;
      }

      else
      {
        v31 = v23;
      }

      if (v33 || (v23 & 0x80000000) != 0 || v23 == v28 || !*(*(this + 9) + 32 * v31) && *(v29 + 32 * v31 + 8) == v30)
      {
        if ((v31 & 0x80000000) == 0 && v31 != v28)
        {
          v34 = *(this + 3);
          if (v27)
          {
            Path::MoveTo(a2, *(v34 + 28 * v30), *(v34 + 28 * v30 + 4));
            v34 = *(this + 3);
            v29 = *(this + 5);
          }

          v35 = *(this + 9);
          v36 = v35 + 32 * v31;
          *v36 = 1;
          *(v36 + 24) = v38;
          *(v36 + 12) = v28;
          *(v35 + 32 * v28 + 8) = v31;
          v37 = (v34 + 28 * *(v29 + 32 * v31 + 12));
          Path::LineTo(a2, *v37, v37[1]);
          ++v38;
          goto LABEL_28;
        }

LABEL_47:
        if ((v27 & 1) == 0)
        {
          Path::Close(a2);
        }

        v28 = *(*(this + 9) + 32 * v28 + 12);
        v27 = 1;
        if ((v28 & 0x80000000) != 0)
        {
          v17 = *(this + 4);
          goto LABEL_20;
        }

        goto LABEL_29;
      }
    }

    if (v32[3] != v30)
    {
      goto LABEL_47;
    }

    v23 = v32[6];
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

LABEL_32:
    v23 = *(*(this + 3) + 28 * v30 + 16);
    goto LABEL_33;
  }
}

void Shape::ConvertToForme(Shape *this, Path *a2, int a3, Path **a4)
{
  if (*(this + 4) < 2 || *(this + 8) < 2 || !Shape::Eulerian(this, 1))
  {
    return;
  }

  if ((*(this + 53) & 2) == 0)
  {

    Shape::ConvertToForme(this, a2);
    return;
  }

  Path::Reset(a2);
  v39 = a2;
  Path::SetWeighted(a2, 0);
  Shape::MakePointData(this, 1);
  Shape::MakeEdgeData(this, 1);
  Shape::MakeSweepDestData(this, 1);
  v6 = *(this + 4);
  if (v6 >= 1)
  {
    v7 = (*(this + 3) + 4);
    v8 = (*(this + 11) + 40);
    do
    {
      v9 = ldexpf(*(v7 - 1), 5);
      *(v8 - 1) = ldexpf(roundf(v9), -5);
      v10 = *v7;
      v7 += 7;
      v11 = ldexpf(v10, 5);
      *v8 = ldexpf(roundf(v11), -5);
      v8 += 12;
      --v6;
    }

    while (v6);
  }

  v12 = *(this + 8);
  if (v12 >= 1)
  {
    v13 = *(this + 11);
    v14 = (*(this + 5) + 12);
    v15 = (*(this + 7) + 4);
    do
    {
      *v15 = vsub_f32(*(v13 + 48 * *v14 + 36), *(v13 + 48 * *(v14 - 1) + 36));
      v15 += 8;
      v14 += 8;
      --v12;
    }

    while (v12);
  }

  Shape::SortEdges(this);
  v16 = *(this + 8);
  if (v16 >= 1)
  {
    v17 = (*(this + 9) + 8);
    do
    {
      *(v17 - 1) = 0;
      *v17 = -1;
      v17 += 4;
      --v16;
    }

    while (v16);
  }

  v18 = 0;
  v19 = 0;
  v20 = *(this + 4);
  do
  {
    if (v19 >= v20)
    {
      goto LABEL_25;
    }

    v21 = *(this + 3);
    v22 = v19 << 32;
    v23 = (v21 + 28 * v19 + 16);
    while (1)
    {
      v25 = *v23;
      v23 += 7;
      v24 = v25;
      if ((v25 & 0x80000000) == 0)
      {
        v26 = *(this + 9);
        if (!*(v26 + 32 * v24))
        {
          break;
        }
      }

      v22 += 0x100000000;
      LODWORD(v19) = v19 + 1;
      if (v20 == v19)
      {
        LODWORD(v19) = v20;
        goto LABEL_25;
      }
    }

    v27 = *(v21 + 28 * SHIDWORD(v22) + 16);
    if ((v27 & 0x80000000) == 0)
    {
      v28 = *(this + 5);
      while (1)
      {
        v29 = (v28 + 32 * v27);
        if (v29[2] == v19)
        {
          break;
        }

        if (v29[3] == v19)
        {
          v27 = v29[6];
          if ((v27 & 0x80000000) == 0)
          {
            continue;
          }
        }

        goto LABEL_25;
      }

      v30 = 0;
      v31 = (v26 + 32 * v27);
      *v31 = 1;
      v31[1] = -1;
      v32 = v27;
      v40 = v19;
LABEL_34:
      v33 = *(v28 + 32 * v32 + 12);
      LODWORD(v34) = v32;
      while (1)
      {
        v35 = (v28 + 32 * v34);
        if (v35[2] != v33)
        {
          break;
        }

        v36 = v35[4];
        if ((v36 & 0x80000000) != 0)
        {
          goto LABEL_37;
        }

LABEL_38:
        v37 = v36 == v34;
        if (v36 == v34)
        {
          v34 = 0xFFFFFFFFLL;
        }

        else
        {
          v34 = v36;
        }

        if (v37 || (v36 & 0x80000000) != 0 || v36 == v32 || !*(v26 + 32 * v34) && *(v28 + 32 * v34 + 8) == v33)
        {
          if ((v34 & 0x80000000) == 0 && v34 != v32)
          {
            if (v30)
            {
              v40 = *(v28 + 32 * v34 + 8);
              goto LABEL_62;
            }

            if (v33 == v40)
            {
              *(v26 + 32 * v32 + 8) = -1;
              Shape::AddContour(this, v39, a3, a4, v27);
              v26 = *(this + 9);
LABEL_62:
              v27 = v36;
            }

            v30 = 0;
            v38 = v26 + 32 * v34;
            *v38 = 1;
            *(v38 + 24) = v18++;
            *(v38 + 12) = v32;
            *(v26 + 32 * v32 + 8) = v34;
LABEL_64:
            v28 = *(this + 5);
            v32 = v36;
            goto LABEL_34;
          }

LABEL_54:
          if ((v30 & 1) == 0 && v32 != v27 && (v32 & 0x80000000) == 0)
          {
            *(v26 + 32 * v32 + 8) = -1;
            Shape::AddContour(this, v39, a3, a4, v27);
            v26 = *(this + 9);
          }

          v36 = *(v26 + 32 * v32 + 12);
          if ((v36 & 0x80000000) == 0)
          {
            v30 = 1;
            goto LABEL_64;
          }

          v20 = *(this + 4);
          goto LABEL_25;
        }
      }

      if (v35[3] != v33)
      {
        goto LABEL_54;
      }

      v36 = v35[6];
      if ((v36 & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

LABEL_37:
      v36 = *(*(this + 3) + 28 * v33 + 16);
      goto LABEL_38;
    }

LABEL_25:
    v19 = (v19 + 1);
  }

  while (v19 < v20);
  Shape::MakePointData(this, 0);
  Shape::MakeEdgeData(this, 0);

  Shape::MakeSweepDestData(this, 0);
}

uint64_t Shape::AddContour(Shape *this, Path *a2, int a3, Path **a4, signed int a5)
{
  v5 = a5;
  v10 = (*(this + 3) + 28 * *(*(this + 5) + 32 * a5 + 8));
  Path::MoveTo(a2, *v10, v10[1]);
  while ((v5 & 0x80000000) == 0)
  {
    while (1)
    {
      v12 = (*(this + 12) + 16 * v5);
      v13 = *v12;
      if ((*v12 & 0x80000000) == 0 && v13 < a3)
      {
        v14 = a4[v13];
        if (v14)
        {
          v15 = v12[1];
          if ((v15 & 0x80000000) == 0 && v15 < v14->var2)
          {
            break;
          }
        }
      }

      v20 = (*(this + 3) + 28 * *(*(this + 5) + 32 * v5 + 12));
      Path::LineTo(a2, *v20, v20[1]);
      v5 = *(*(this + 9) + 32 * v5 + 8);
      if ((v5 & 0x80000000) != 0)
      {
        goto LABEL_32;
      }
    }

    v16 = (v14->var3 + 44 * v15);
    v17 = *v16 & 0xF;
    if ((*v16 & 0xD) != 5 && v17 != 0)
    {
      if ((*v16 & 0xFu) <= 2)
      {
        if (v17 == 1)
        {
          goto LABEL_26;
        }

        if (v17 == 2)
        {
          v21 = Shape::ReFormeCubicTo(this, v5, v11, a2, v14);
          goto LABEL_28;
        }
      }

      else
      {
        switch(v17)
        {
          case 3:
            if (v16[4])
            {
LABEL_25:
              v21 = Shape::ReFormeBezierTo(this, v5, v11, a2, v14);
            }

            else
            {
LABEL_26:
              v21 = Shape::ReFormeLineTo(this, v5, v11, a2, v14);
            }

LABEL_28:
            v5 = v21;
            if ((v21 & 0x80000000) != 0)
            {
              goto LABEL_32;
            }

            goto LABEL_29;
          case 4:
            v21 = Shape::ReFormeArcTo(this, v5, v11, a2, v14);
            goto LABEL_28;
          case 6:
            goto LABEL_25;
        }
      }
    }

    v19 = (*(this + 3) + 28 * *(*(this + 5) + 32 * v5 + 12));
    Path::LineTo(a2, *v19, v19[1]);
    v5 = *(*(this + 9) + 32 * v5 + 8);
    if ((v5 & 0x80000000) != 0)
    {
      break;
    }

LABEL_29:
    v22 = *(this + 3) + 28 * *(*(this + 5) + 32 * v5 + 8);
    if (*(v22 + 12) + *(v22 + 8) >= 3)
    {
      Path::ForcePoint(a2);
    }
  }

LABEL_32:

  return Path::Close(a2);
}

uint64_t Shape::MakeOffset(uint64_t a1, uint64_t a2, int a3, float a4, float a5)
{
  Shape::Reset(a1, 0);
  Shape::MakeBackData(a1, 0);
  v10 = *(a2 + 16);
  if (a4 == 0.0)
  {
    *(a1 + 16) = v10;
    if (v10 > *(a1 + 20))
    {
      *(a1 + 20) = v10;
      *(a1 + 24) = malloc_type_realloc(*(a1 + 24), 28 * v10, 0x100004027586B93uLL);
      if ((*(a1 + 52) & 4) != 0)
      {
        *(a1 + 88) = malloc_type_realloc(*(a1 + 88), 48 * *(a1 + 20), 0x102004023ED6C3AuLL);
      }
    }

    memcpy(*(a1 + 24), *(a2 + 24), 28 * *(a1 + 16));
    v11 = *(a2 + 32);
    *(a1 + 32) = v11;
    if (v11 <= *(a1 + 36))
    {
      goto LABEL_11;
    }

    *(a1 + 36) = v11;
    *(a1 + 40) = malloc_type_realloc(*(a1 + 40), 32 * v11, 0x1000040E0EAB150uLL);
    v12 = *(a1 + 52);
    if ((v12 & 8) != 0)
    {
      *(a1 + 56) = malloc_type_realloc(*(a1 + 56), *(a1 + 36) << 6, 0x100004094D12286uLL);
      v12 = *(a1 + 52);
      if ((v12 & 0x10) == 0)
      {
LABEL_8:
        if ((v12 & 0x20) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_44;
      }
    }

    else if ((v12 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    *(a1 + 64) = malloc_type_realloc(*(a1 + 64), 56 * *(a1 + 36), 0x10A0040A41B8C3EuLL);
    v12 = *(a1 + 52);
    if ((v12 & 0x20) == 0)
    {
LABEL_9:
      if ((v12 & 0x80) == 0)
      {
LABEL_11:
        memcpy(*(a1 + 40), *(a2 + 40), 32 * *(a1 + 32));
        return 0;
      }

LABEL_10:
      *(a1 + 80) = malloc_type_realloc(*(a1 + 80), 48 * *(a1 + 36), 0x10200403C9B7522uLL);
      goto LABEL_11;
    }

LABEL_44:
    *(a1 + 72) = malloc_type_realloc(*(a1 + 72), 32 * *(a1 + 36), 0x1080040DCAC275BuLL);
    if ((*(a1 + 52) & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v10 >= 2 && *(a2 + 32) >= 2 && *(a2 + 48) == 1)
  {
    Shape::SortEdges(a2);
    Shape::MakeSweepDestData(a2, 1);
    Shape::MakeSweepSrcData(a2, 1);
    LODWORD(v14) = *(a2 + 32);
    if (v14 < 1)
    {
LABEL_32:
      if (a4 < 0.0 && *(a1 + 32) >= 1)
      {
        v38 = 0;
        do
        {
          Shape::Inverse(a1, v38++);
        }

        while (v38 < *(a1 + 32));
        LODWORD(v14) = *(a2 + 32);
      }

      if (v14 >= 1)
      {
        v39 = 0;
        v40 = 0;
        do
        {
          Shape::AddEdge(a1, *(*(a2 + 64) + v39 + 12), *(*(a2 + 64) + v39 + 16));
          ++v40;
          v39 += 56;
        }

        while (v40 < *(a2 + 32));
      }

      Shape::MakeSweepSrcData(a2, 0);
      Shape::MakeSweepDestData(a2, 0);
      return 0;
    }

    v15 = 0;
    v16 = 0;
    v17 = 12;
    while (1)
    {
      v18 = *(a2 + 40);
      v19 = (v18 + v15);
      v20 = *(v18 + v15 + 8);
      if (a4 <= 0.0)
      {
        v21 = v19[5];
        if (v21 < 0)
        {
          v22 = (*(a2 + 24) + 28 * v20 + 20);
          goto LABEL_23;
        }
      }

      else
      {
        v21 = v19[4];
        if (v21 < 0)
        {
          v22 = (*(a2 + 24) + 28 * v20 + 16);
LABEL_23:
          v21 = *v22;
        }
      }

      v23 = v21;
      v24 = (v18 + 32 * v21);
      v25 = *v24;
      v26 = v24[1];
      v27 = (v26 * v26) + (v25 * v25);
      v28 = sqrtf(v27);
      if (v27 > 0.0001)
      {
        v25 = v25 / v28;
        v26 = v26 / v28;
      }

      v29 = (v18 + v15);
      v30 = *v29;
      v31 = v29[1];
      v32 = (v31 * v31) + (v30 * v30);
      v33 = sqrtf(v32);
      if (v32 > 0.0001)
      {
        v30 = v30 / v33;
        v31 = v31 / v33;
      }

      v41 = 0;
      v34 = (*(a2 + 24) + 28 * v19[2]);
      v35 = *v34;
      v36 = v34[1];
      if (a4 <= 0.0)
      {
        Path::DoLeftJoin(a1, a3, &v41 + 1, &v41, -a4, v35, v36, v25, v26, v30, v31, a5);
      }

      else
      {
        Path::DoRightJoin(a1, a3, &v41 + 1, &v41, a4, v35, v36, v25, v26, v30, v31, a5);
      }

      v37 = *(a2 + 64);
      *(v37 + v17) = v41;
      *(v37 + 56 * v23 + 16) = HIDWORD(v41);
      ++v16;
      v14 = *(a2 + 32);
      v17 += 56;
      v15 += 32;
      if (v16 >= v14)
      {
        goto LABEL_32;
      }
    }
  }

  return 5;
}

uint64_t Shape::ReFormeLineTo(Shape *this, int a2, int a3, Path *a4, Path *a5)
{
  v5 = a2;
  v6 = *(this + 3);
  v7 = *(this + 5);
  v8 = *(this + 9);
  v9 = *(v8 + 32 * a2 + 8);
  if ((v9 & 0x80000000) == 0)
  {
    v10 = *(v7 + 32 * v9 + 8);
    if (*(v6 + 28 * v10 + 12) + *(v6 + 28 * v10 + 8) <= 2)
    {
      v13 = *(this + 12);
      v14 = (v13 + 16 * a2);
      v15 = (v14 + 3);
      do
      {
        if (*(v6 + 28 * v10 + 24) > 2)
        {
          break;
        }

        v16 = v9;
        v17 = v13 + 16 * v9;
        if (*(v17 + 4) != v14[1] || *v17 != *v14 || vabds_f32(*v15, *(v17 + 8)) > 0.0001)
        {
          break;
        }

        v9 = *(v8 + 32 * v9 + 8);
        if ((v9 & 0x80000000) != 0)
        {
          v5 = v16;
          break;
        }

        v15 = (v17 + 12);
        v10 = *(v7 + 32 * v9 + 8);
        v5 = v16;
      }

      while (*(v6 + 28 * v10 + 12) + *(v6 + 28 * v10 + 8) <= 2);
    }
  }

  v11 = (v6 + 28 * *(v7 + 32 * v5 + 12));
  Path::LineTo(a4, *v11, v11[1]);
  return v9;
}

uint64_t Shape::ReFormeArcTo(Shape *this, int a2, int a3, Path *a4, Path *a5)
{
  v7 = *(this + 12);
  v8 = a2;
  v9 = v7 + 16 * a2;
  v10 = *(v9 + 4);
  v11 = *(this + 3);
  v12 = *(this + 5);
  v13 = *(this + 9);
  v14 = *(v13 + 32 * a2 + 8);
  v15 = *(v9 + 12);
  if ((v14 & 0x80000000) == 0)
  {
    for (i = *(v12 + 32 * v14 + 8); *(v11 + 28 * i + 12) + *(v11 + 28 * i + 8) <= 2; v8 = v34)
    {
      if (*(v11 + 28 * i + 24) > 2)
      {
        break;
      }

      v34 = v14;
      v35 = v7 + 16 * v14;
      if (*(v35 + 4) != v10 || *v35 != *v9 || vabds_f32(v15, *(v35 + 8)) > 0.0001)
      {
        break;
      }

      v14 = *(v13 + 32 * v14 + 8);
      v15 = *(v35 + 12);
      if ((v14 & 0x80000000) != 0)
      {
        v8 = v34;
        break;
      }

      i = *(v12 + 32 * v14 + 8);
    }
  }

  v17 = *(v9 + 8);
  v18 = (v11 + 28 * *(v12 + 32 * v8 + 12));
  v20 = *v18;
  v19 = v18[1];
  v37 = 0;
  v21 = a5->var3 + 44 * v10;
  v22 = v21[36];
  v23 = v21[37];
  v36 = 0;
  Path::PrevPoint(a5, v10 - 1, &v36 + 1, &v36);
  v24 = (a5->var3 + 44 * v10);
  Path::ArcAngles(v22, *(&v36 + 1), *&v36, v24[4], v24[5], v24[6], v24[7], v24[8], v23, &v37 + 1, &v37, v25);
  v26 = *(&v37 + 1);
  if (v23 == 1)
  {
    if (*(&v37 + 1) >= *&v37)
    {
      goto LABEL_9;
    }

    v27 = *(&v37 + 1);
    v28 = 6.28318531;
  }

  else
  {
    if (*(&v37 + 1) <= *&v37)
    {
      goto LABEL_9;
    }

    v27 = *(&v37 + 1);
    v28 = -6.28318531;
  }

  v26 = v27 + v28;
  *(&v37 + 1) = v26;
LABEL_9:
  if (v17 > v15)
  {
    v29 = v23 ^ 1;
  }

  else
  {
    v29 = v23;
  }

  v30 = (v15 - v17) * (*&v37 - v26);
  v31 = -v30;
  if (v30 >= 0.0)
  {
    v31 = (v15 - v17) * (*&v37 - v26);
  }

  v32 = (a5->var3 + 44 * v10);
  Path::ArcTo(a4, v20, v19, v32[6], v32[7], v32[8], v31 > 3.14159265, v29);
  return v14;
}

uint64_t Shape::ReFormeCubicTo(Shape *this, int a2, int a3, Path *a4, Path *a5)
{
  v7 = *(this + 12);
  v8 = a2;
  v9 = (v7 + 16 * a2);
  v10 = *(v9 + 1);
  v11 = *(this + 3);
  v12 = *(this + 5);
  v13 = *(this + 9);
  v14 = v9[2];
  v15 = v9[3];
  v16 = *(v13 + 32 * a2 + 8);
  if ((v16 & 0x80000000) == 0)
  {
    v17 = *(v12 + 32 * v16 + 8);
    if (*(v11 + 28 * v17 + 12) + *(v11 + 28 * v17 + 8) <= 2)
    {
      v26 = *v9;
      do
      {
        if (*(v11 + 28 * v17 + 24) > 2)
        {
          break;
        }

        v27 = v16;
        v28 = v7 + 16 * v16;
        if (*(v28 + 4) != v10 || *v28 != LODWORD(v26) || vabds_f32(v15, *(v28 + 8)) > 0.0001)
        {
          break;
        }

        v15 = *(v28 + 12);
        v16 = *(v13 + 32 * v16 + 8);
        if ((v16 & 0x80000000) != 0)
        {
          v8 = v27;
          break;
        }

        v17 = *(v12 + 32 * v16 + 8);
        v8 = v27;
      }

      while (*(v11 + 28 * v17 + 12) + *(v11 + 28 * v17 + 8) <= 2);
    }
  }

  v18 = (v11 + 28 * *(v12 + 32 * v8 + 12));
  v20 = *v18;
  v19 = v18[1];
  v29.var3 = 0;
  Path::PrevPoint(a5, v10 - 1, &v29.var3 + 1, &v29.var3);
  *&v29.var0 = 0;
  *&v29.var2 = 0;
  v21 = (a5->var3 + 44 * v10);
  Path::CubicTangent((&v29.var2 + 1), v14, &v29.var2, v22, *(&v29.var3 + 1), *&v29.var3, v21[6], v21[7], v21[4], v21[5], v21[8], v21[9]);
  v23 = (a5->var3 + 44 * v10);
  Path::CubicTangent(&v29.var1, v15, &v29.var0, v24, *(&v29.var3 + 1), *&v29.var3, v23[6], v23[7], v23[4], v23[5], v23[8], v23[9]);
  Path::CubicTo(a4, v20, v19, (v15 - v14) * *(&v29.var2 + 1), (v15 - v14) * *&v29.var2, (v15 - v14) * *&v29.var1, (v15 - v14) * *&v29.var0);
  return v16;
}

uint64_t Shape::ReFormeBezierTo(Shape *this, int a2, int a3, Path *a4, Path *a5)
{
  v7 = *(this + 12);
  v8 = (v7 + 16 * a2);
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = v10;
  v13 = v8[2];
  v12 = v8[3];
  v14 = *(this + 3);
  v15 = *(this + 5);
  v16 = v15 + 32 * a2;
  v17 = (v14 + 28 * *(v16 + 8));
  v19 = *v17;
  v18 = v17[1];
  v20 = (v14 + 28 * *(v16 + 12));
  v22 = *v20;
  v21 = v20[1];
  var3 = a5->var3;
  v24 = v10;
  v25 = v10;
  if ((*(var3 + 11 * v10) & 0xF) == 3)
  {
LABEL_6:
    v28 = *(var3 + 11 * v25 + 4);
    v29 = *(this + 9);
    v30 = *(v29 + 32 * a2 + 8);
    if ((v30 & 0x80000000) != 0 || (v31 = *(v15 + 32 * v30 + 8), *(v14 + 28 * v31 + 12) + *(v14 + 28 * v31 + 8) > 2))
    {
      v32 = v10;
    }

    else
    {
      v32 = v10;
      do
      {
        if (*(v14 + 28 * v31 + 24) > 2)
        {
          break;
        }

        v50 = v7 + 16 * v30;
        if (*v50 != LODWORD(v9))
        {
          break;
        }

        v51 = *(v50 + 4);
        if (v51 < v24 || v51 >= v28 + v24)
        {
          break;
        }

        v53 = *(v50 + 8);
        if (v51 == v32)
        {
          if (vabds_f32(v12, v53) > 0.0001)
          {
            break;
          }
        }

        else
        {
          v54 = v53;
          if (v54 > 0.0001 && v54 < 0.9999 || v12 > 0.0001 && v12 < 0.9999)
          {
            break;
          }
        }

        v55 = (v14 + 28 * *(v15 + 32 * v30 + 12));
        v22 = *v55;
        v21 = v55[1];
        v12 = *(v50 + 12);
        v30 = *(v29 + 32 * v30 + 8);
        if ((v30 & 0x80000000) != 0)
        {
          v32 = *(v50 + 4);
          break;
        }

        v31 = *(v15 + 32 * v30 + 8);
        v32 = v51;
      }

      while (*(v14 + 28 * v31 + 12) + *(v14 + 28 * v31 + 8) <= 2);
    }

    v75 = 0;
    Path::PrevPoint(a5, v24 - 1, &v75 + 1, &v75);
    v34 = v32 - v10;
    if (v32 == v10)
    {
      v35 = v19;
      v36 = v18;
      v37 = v22;
      v38 = v21;
      v39 = a4;
      v40 = v24;
      v41 = v28;
      v42 = a5;
      v43 = v10;
      v44 = v13;
LABEL_63:
      Shape::ReFormeBezierChunk(v33, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v12);
      return v30;
    }

    v45 = a5->var3;
    v46 = v13;
    v47 = v12;
    if (v32 <= v10)
    {
      if (v46 <= 0.9999)
      {
        v60 = v10 + 1;
        Shape::ReFormeBezierChunk(v33, v19, v18, (*(v45 + 11 * v60 + 4) + *(v45 + 11 * v10 + 4)) * 0.5, (*(v45 + 11 * v60 + 5) + *(v45 + 11 * v10 + 5)) * 0.5, a4, v24, v28, a5, v10, v13, 0.0);
        if (v47 < 0.0001)
        {
          Path::BezierTo(a4, v22, v21);
          v61 = v10 + 2;
          v62 = 44 * v60;
          do
          {
            Path::IntermBezierTo(a4, *(a5->var3 + v62 + 16), *(a5->var3 + v62 + 20));
            --v61;
            v62 -= 44;
          }

          while (v61 > v32);
          goto LABEL_48;
        }

        v72 = (a5->var3 + 44 * v32);
        v64 = (v72[15] + v72[26]) * 0.5;
        v65 = (v72[16] + v72[27]) * 0.5;
        Path::BezierTo(a4, v64, v65);
        v73 = 44 * v60;
        do
        {
          Path::IntermBezierTo(a4, *(a5->var3 + v73 + 16), *(a5->var3 + v73 + 20));
          --v60;
          v73 -= 44;
        }

        while (v60 > v32);
      }

      else
      {
        if (v47 < 0.0001)
        {
          Path::BezierTo(a4, v22, v21);
          v56 = v32;
          v57 = v10 + 1;
          v58 = 44 * v10;
          do
          {
            Path::IntermBezierTo(a4, *(a5->var3 + v58 + 60), *(a5->var3 + v58 + 64));
            --v57;
            v58 -= 44;
          }

          while (v57 > v56);
          goto LABEL_48;
        }

        v68 = (v45 + 44 * v32);
        v64 = (v68[15] + v68[26]) * 0.5;
        v65 = (v68[16] + v68[27]) * 0.5;
        Path::BezierTo(a4, v64, v65);
        if (v32 < v10)
        {
          v69 = 44 * v10;
          do
          {
            Path::IntermBezierTo(a4, *(a5->var3 + v69 + 60), *(a5->var3 + v69 + 64));
            --v11;
            v69 -= 44;
          }

          while (v11 > v32);
        }
      }

      v33 = Path::EndBezierTo(a4);
      v44 = 1.0;
    }

    else
    {
      if (v46 >= 0.0001)
      {
        Shape::ReFormeBezierChunk(v33, v19, v18, (*(v45 + 11 * v10 + 15) + *(v45 + 11 * v10 + 26)) * 0.5, (*(v45 + 11 * v10 + 16) + *(v45 + 11 * v10 + 27)) * 0.5, a4, v24, v28, a5, v10, v13, 1.0);
        if (v47 > 0.9999)
        {
          Path::BezierTo(a4, v22, v21);
          v59 = 44 * v10;
          do
          {
            Path::IntermBezierTo(a4, *(a5->var3 + v59 + 104), *(a5->var3 + v59 + 108));
            v59 += 44;
            --v34;
          }

          while (v34);
          goto LABEL_48;
        }

        v70 = (a5->var3 + 44 * v32);
        v64 = (v70[15] + v70[4]) * 0.5;
        v65 = (v70[16] + v70[5]) * 0.5;
        Path::BezierTo(a4, v64, v65);
        v71 = 44 * v10;
        do
        {
          Path::IntermBezierTo(a4, *(a5->var3 + v71 + 104), *(a5->var3 + v71 + 108));
          v71 += 44;
          --v34;
        }

        while (v34);
      }

      else
      {
        if (v47 > 0.9999)
        {
          Path::BezierTo(a4, v22, v21);
          v48 = v32 + 1 - v10;
          v49 = 44 * v10;
          do
          {
            Path::IntermBezierTo(a4, *(a5->var3 + v49 + 60), *(a5->var3 + v49 + 64));
            v49 += 44;
            --v48;
          }

          while (v48);
LABEL_48:
          Path::EndBezierTo(a4);
          return v30;
        }

        v63 = (v45 + 44 * v32);
        v64 = (v63[15] + v63[4]) * 0.5;
        v65 = (v63[16] + v63[5]) * 0.5;
        Path::BezierTo(a4, v64, v65);
        v66 = v32 - v10;
        v67 = 44 * v11;
        do
        {
          Path::IntermBezierTo(a4, *(a5->var3 + v67 + 60), *(a5->var3 + v67 + 64));
          v67 += 44;
          --v66;
        }

        while (v66);
      }

      v33 = Path::EndBezierTo(a4);
      v44 = 0.0;
    }

    v35 = v64;
    v36 = v65;
    v37 = v22;
    v38 = v21;
    v39 = a4;
    v40 = v24;
    v41 = v28;
    v42 = a5;
    v43 = v32;
    goto LABEL_63;
  }

  v26 = (var3 + 44 * v10 - 44);
  v25 = v10;
  while (v25 >= 2)
  {
    --v25;
    v27 = *v26;
    v26 -= 11;
    if ((v27 & 0xF) == 3)
    {
      v24 = v25;
      goto LABEL_6;
    }
  }

  v30 = *(*(this + 9) + 32 * a2 + 8);
  Path::LineTo(a4, v22, v21);
  return v30;
}

uint64_t Shape::ReFormeBezierChunk(Shape *this, float a2, float a3, float a4, float a5, Path *a6, int a7, int a8, Path *a9, int a10, float a11, float a12)
{
  *&v30.var2 = 0;
  Path::PrevPoint(a9, a7 - 1, &v30.var2 + 1, &v30.var2);
  var3 = a9->var3;
  v25 = *(var3 + 44 * a7 + 20);
  if (a10 == a7)
  {
    v26 = var3 + 44 * a7;
    v27 = *(v26 + 60);
    if (a8 < 2)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (a8 + a7 - 1 != a10)
  {
    v26 = var3 + 44 * a10;
    v27 = *(v26 + 60);
    *(&v30.var2 + 1) = (v27.f32[0] + *(v26 + 4)) * 0.5;
    *&v30.var2 = (v27.f32[1] + *(v26 + 5)) * 0.5;
LABEL_7:
    v25 = vmul_f32(vadd_f32(v27, *(v26 + 104)), 0x3F0000003F000000);
    goto LABEL_8;
  }

  v27 = *(var3 + 44 * a8 + 44 * a7 + 16);
  v28 = (var3 + 44 * a10);
  *(&v30.var2 + 1) = (v27.f32[0] + v28[4]) * 0.5;
  *&v30.var2 = (v27.f32[1] + v28[5]) * 0.5;
LABEL_8:
  *&v30.var0 = 0;
  Path::QuadraticPoint(&v30.var1, (a11 + a12) * 0.5, &v30.var0, v23, *(&v30.var2 + 1), *&v30.var2, v27.f32[0], v27.f32[1], v25.f32[0], v25.f32[1]);
  *&v30.var0 = ((a3 + a5) * -0.5) + (*&v30.var0 * 2.0);
  *&v30.var1 = ((a2 + a4) * -0.5) + (*&v30.var1 * 2.0);
  Path::BezierTo(a6, a4, a5);
  Path::IntermBezierTo(a6, *&v30.var1, *&v30.var0);
  return Path::EndBezierTo(a6);
}

void Shape::ResetSweep(Shape *this)
{
  Shape::MakePointData(this, 1);
  Shape::MakeEdgeData(this, 1);

  Shape::MakeSweepSrcData(this, 1);
}

void Shape::CleanupSweep(Shape *this)
{
  Shape::MakePointData(this, 0);
  Shape::MakeEdgeData(this, 0);

  Shape::MakeSweepSrcData(this, 0);
}

uint64_t Shape::Reoriente(void **this, Shape *a2)
{
  Shape::Reset(this, 0);
  if (*(a2 + 4) < 2 || *(a2 + 8) < 2)
  {
    return 0;
  }

  if (!Shape::Eulerian(a2, 1))
  {
    return 5;
  }

  v5 = *(a2 + 4);
  *(this + 4) = v5;
  if (v5 > *(this + 5))
  {
    *(this + 5) = v5;
    this[3] = reallocf(this[3], 28 * v5);
    if ((*(this + 52) & 4) != 0)
    {
      this[11] = reallocf(this[11], 48 * *(this + 5));
    }
  }

  memcpy(this[3], *(a2 + 3), 28 * *(this + 4));
  v6 = *(a2 + 8);
  *(this + 8) = v6;
  if (v6 <= *(this + 9))
  {
    goto LABEL_14;
  }

  *(this + 9) = v6;
  this[5] = malloc_type_realloc(this[5], 32 * v6, 0x1000040E0EAB150uLL);
  v7 = *(this + 13);
  if ((v7 & 8) != 0)
  {
    this[7] = reallocf(this[7], *(this + 9) << 6);
    v7 = *(this + 13);
    if ((v7 & 0x10) == 0)
    {
LABEL_11:
      if ((v7 & 0x20) == 0)
      {
        goto LABEL_12;
      }

LABEL_49:
      this[9] = reallocf(this[9], 32 * *(this + 9));
      if ((*(this + 13) & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((v7 & 0x10) == 0)
  {
    goto LABEL_11;
  }

  this[8] = reallocf(this[8], 56 * *(this + 9));
  v7 = *(this + 13);
  if ((v7 & 0x20) != 0)
  {
    goto LABEL_49;
  }

LABEL_12:
  if ((v7 & 0x80) != 0)
  {
LABEL_13:
    this[10] = reallocf(this[10], 48 * *(this + 9));
  }

LABEL_14:
  memcpy(this[5], *(a2 + 5), 32 * *(this + 8));
  Shape::MakePointData(this, 1);
  Shape::MakeEdgeData(this, 1);
  Shape::MakeSweepDestData(this, 1);
  v8 = *(this + 4);
  if (v8 >= 1)
  {
    v9 = (this[11] + 40);
    v10 = (this[3] + 4);
    v11 = *(this + 4);
    do
    {
      *(v9 - 4) = 0xFFFFFFFF00000000;
      *(v9 - 6) = NAN;
      v12 = ldexpf(*(v10 - 1), 5);
      v13 = ldexpf(roundf(v12), -5);
      *(v9 - 1) = v13;
      v14 = ldexpf(*v10, 5);
      v15 = ldexpf(roundf(v14), -5);
      *v9 = v15;
      v9 += 12;
      *(v10 - 1) = v13;
      *v10 = v15;
      v10 += 7;
      --v11;
    }

    while (v11);
    v16 = this[3] + 12;
    do
    {
      v16[3] = *v16 + *(v16 - 1);
      v16 += 7;
      --v8;
    }

    while (v8);
  }

  v17 = *(a2 + 8);
  if (v17 >= 1)
  {
    v18 = this[11];
    v19 = (this[7] + 4);
    v20 = (this[5] + 12);
    do
    {
      v21 = vsub_f32(*&v18[48 * *v20 + 36], *&v18[48 * *(v20 - 1) + 36]);
      *v19 = v21;
      v19[-1].i32[1] = 1;
      *(v20 - 3) = v21;
      v19 += 8;
      v20 += 8;
      --v17;
    }

    while (v17);
  }

  Shape::SortPointsRounded(this);
  Shape::SetFlag(this, 2, 1);
  Shape::GetWindings(this, v22, v23, v24, 1);
  if (*(this + 8) >= 1)
  {
    for (i = 0; i < *(this + 8); ++i)
    {
      v26 = this[9] + 32 * i;
      v28 = *(v26 + 16);
      v27 = (v26 + 16);
      v29 = v28 & 1;
      if (v28 >= 0)
      {
        v30 = v29;
      }

      else
      {
        v30 = -v29;
      }

      *v27 = v30;
      v31 = v27 + 1;
      if (v27[1] >= 0)
      {
        v32 = v27[1] & 1;
      }

      else
      {
        v32 = -(v27[1] & 1);
      }

      *v31 = v32;
      if (v30 < 0)
      {
        *v27 = -v30;
        v30 = 1;
        if ((v32 & 0x80000000) == 0)
        {
LABEL_32:
          if (v30)
          {
            goto LABEL_33;
          }

          goto LABEL_37;
        }
      }

      else if ((v32 & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

      *v31 = -v32;
      v32 = 1;
      if (v30)
      {
LABEL_33:
        v33 = this[7];
        if (v32)
        {
          goto LABEL_41;
        }

        goto LABEL_39;
      }

LABEL_37:
      if (!v32)
      {
        v33 = this[7];
LABEL_41:
        v33[16 * i] = 0;
        Shape::SubEdge(this, i--);
        continue;
      }

      Shape::Inverse(this, i);
      v33 = this[7];
LABEL_39:
      v33[16 * i] = 1;
    }
  }

  Shape::MakePointData(this, 0);
  Shape::MakeEdgeData(this, 0);
  Shape::MakeSweepDestData(this, 0);
  if (Shape::Eulerian(this, 1))
  {
    result = 0;
    *(this + 12) = 1;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 4) = 0;
    return 4;
  }

  return result;
}

void Shape::GetWindings(Shape *this, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = *(this + 8);
  if (v6 >= 1)
  {
    v7 = (*(this + 9) + 8);
    do
    {
      *(v7 - 1) = 0;
      *v7 = -1;
      v7 += 4;
      --v6;
    }

    while (v6);
  }

  Shape::SortEdges(this);
  v8 = 0;
  v9 = 0;
  v10 = *(this + 4);
  do
  {
    if (v9 >= v10)
    {
      goto LABEL_64;
    }

    v11 = *(this + 3);
    v12 = v9 << 32;
    v13 = (v11 + 28 * v9 + 16);
    v9 = v9;
    while (1)
    {
      v15 = *v13;
      v13 += 7;
      v14 = v15;
      if ((v15 & 0x80000000) == 0)
      {
        v16 = *(this + 9);
        if (!*(v16 + 32 * v14))
        {
          break;
        }
      }

      ++v9;
      v12 += 0x100000000;
      if (v10 == v9)
      {
        LODWORD(v9) = v10;
        goto LABEL_64;
      }
    }

    v17 = v12 >> 32;
    v18 = v11 + 28 * SHIDWORD(v12);
    v19 = *(v18 + 16);
    if ((v19 & 0x80000000) == 0)
    {
      if (v9)
      {
        if (a5)
        {
          v20 = v8;
          v21 = Shape::Winding(this, *v18, *(v18 + 4));
          v8 = v20;
          v22 = v21;
          goto LABEL_19;
        }

        v23 = *(*(this + 11) + 48 * SHIDWORD(v12) + 32);
        if ((v23 & 0x80000000) == 0)
        {
          v24 = *(this + 5) + 32 * v23;
          v25 = v16 + 32 * v23;
          if (*(v24 + 8) >= *(v24 + 12))
          {
            v22 = *(v25 + 20);
          }

          else
          {
            v22 = *(v25 + 16);
          }

LABEL_19:
          v26 = *(this + 5);
          if (*(v18 + 12) + *(v18 + 8) == 1)
          {
            v27 = v26 + 32 * v19;
            if (*(v27 + 12) == v9)
            {
              if (*(*(this + 7) + (v19 << 6)))
              {
                *(*(this + 11) + 48 * *(v27 + 8) + 32) = *(*(this + 11) + 48 * v17 + 32);
              }

              else
              {
                v28 = v8;
                Shape::Inverse(this, v19);
                v8 = v28;
                v26 = *(this + 5);
              }
            }
          }

          v29 = *(this + 7);
          v30 = *(v29 + (v19 << 6));
          if (*(v26 + 32 * v19 + 12) == v9)
          {
            v31 = *(v29 + (v19 << 6));
          }

          else
          {
            v31 = 0;
          }

          v32 = v22 + v31;
          v33 = *(this + 9);
          v34 = v33 + 32 * v19;
          v35 = 1;
          *v34 = 1;
          *(v34 + 16) = v32;
          *(v34 + 20) = v32 - v30;
          *(v34 + 8) = -1;
LABEL_29:
          LODWORD(v36) = v19;
LABEL_30:
          if (v35)
          {
            v37 = 12;
          }

          else
          {
            v37 = 8;
          }

          v38 = *(v26 + 32 * v36 + v37);
          LODWORD(v19) = v36;
          while (1)
          {
            v39 = v19;
            v40 = (v26 + 32 * v19);
            v41 = v40[2];
            v42 = v33 + 32 * v19;
            if (v40[3] == v38)
            {
              break;
            }

            v43 = *(v42 + 16);
            if (v41 == v38)
            {
              goto LABEL_39;
            }

            LODWORD(v19) = -1;
LABEL_42:
            if (v19 == v39)
            {
              goto LABEL_52;
            }

            v44 = v19 < 0 || v19 == v36;
            v45 = v44;
            if (v44)
            {
              goto LABEL_52;
            }

            if (!*(v33 + 32 * v19))
            {
              if (!v45)
              {
                v49 = v33 + 32 * v19;
                *v49 = 1;
                v50 = v26 + 32 * v19;
                v51 = *(v29 + (v19 << 6));
                v53 = *(v50 + 8);
                v52 = *(v50 + 12);
                v54 = v38 == v53;
                if (v38 == v53)
                {
                  v55 = 0;
                }

                else
                {
                  v55 = *(v29 + (v19 << 6));
                }

                if (!v54)
                {
                  v51 = 0;
                }

                *(v49 + 20) = v43 - v55;
                *(v49 + 24) = v8;
                *(v49 + 12) = v36;
                *(v49 + 16) = v43 + v51;
                *(v33 + 32 * v36 + 8) = v19;
                v35 = v38 != v52;
                v8 = (v8 + 1);
                goto LABEL_29;
              }

LABEL_52:
              v46 = v36;
              v36 = *(v33 + 32 * v36 + 12);
              if ((v36 & 0x80000000) == 0)
              {
                v47 = v26 + 32 * v46;
                if (v35)
                {
                  v48 = 8;
                }

                else
                {
                  v48 = 12;
                }

                v35 = *(v47 + v48) == *(v26 + 32 * v36 + 12);
                goto LABEL_30;
              }

              v10 = *(this + 4);
              goto LABEL_64;
            }
          }

          v43 = *(v42 + 20);
          if (v41 == v38)
          {
LABEL_39:
            LODWORD(v19) = v40[5];
            if ((v19 & 0x80000000) == 0)
            {
              goto LABEL_42;
            }
          }

          else
          {
            LODWORD(v19) = v40[7];
            if ((v19 & 0x80000000) == 0)
            {
              goto LABEL_42;
            }
          }

          LODWORD(v19) = *(*(this + 3) + 28 * v38 + 20);
          goto LABEL_42;
        }
      }

      v22 = 0;
      goto LABEL_19;
    }

LABEL_64:
    v9 = (v9 + 1);
  }

  while (v9 < v10);
}

uint64_t Shape::ConvertToShape(void **a1, uint64_t a2, int a3, char a4)
{
  v7 = a1;
  Shape::Reset(a1, 0);
  if (*(a2 + 16) < 2 || *(a2 + 32) < 2)
  {
    return 0;
  }

  if (!Shape::Eulerian(a2, 1))
  {
    return 5;
  }

  v240 = a3;
  v241 = a4;
  Shape::ResetSweep(a2);
  if (!Shape::GetFlag(v7, 64))
  {
    SweepTree::CreateList(v7 + 168, *(a2 + 32));
    SweepEvent::CreateQueue(v7 + 192, *(a2 + 32));
    Shape::SetFlag(v7, 64, 1);
  }

  Shape::MakePointData(v7, 1);
  Shape::MakeEdgeData(v7, 1);
  Shape::MakeSweepSrcData(v7, 1);
  Shape::MakeSweepDestData(v7, 1);
  Shape::MakeBackData(v7, (*(a2 + 52) >> 9) & 1);
  v9 = *(a2 + 16);
  if (v9 >= 1)
  {
    v10 = (*(a2 + 88) + 40);
    v11 = (*(a2 + 24) + 4);
    do
    {
      *(v10 - 4) = 0xFFFFFFFF00000000;
      *(v10 - 6) = NAN;
      v12 = ldexpf(*(v11 - 1), 5);
      *(v10 - 1) = ldexpf(roundf(v12), -5);
      v13 = *v11;
      v11 += 7;
      v14 = ldexpf(v13, 5);
      *v10 = ldexpf(roundf(v14), -5);
      v10 += 12;
      --v9;
    }

    while (v9);
  }

  v15 = *(a2 + 32);
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = *(a2 + 88);
    v18 = *(a2 + 64);
    v19 = 56 * v15;
    v20 = *(a2 + 56) + 32;
    v21 = (*(a2 + 40) + 12);
    do
    {
      v22 = vsub_f32(*(v17 + 48 * *v21 + 36), *(v17 + 48 * *(v21 - 1) + 36));
      *(v20 - 28) = v22;
      v23 = (COERCE_FLOAT(vmul_f32(v22, v22).i32[1]) + (v22.f32[0] * v22.f32[0]));
      v24 = sqrt(v23);
      *(v20 - 16) = v23;
      *(v20 - 8) = v24;
      *v20 = 1.0 / v23;
      *(v20 + 8) = 1.0 / v24;
      v25 = vmulq_n_f64(vcvtq_f64_f32(v22), 1.0 / v24);
      v26 = *&v25.i64[1];
      v27 = vextq_s8(v25, v25, 8uLL);
      *(v20 + 16) = v27;
      if (v26 < 0.0)
      {
        *(v20 + 16) = vnegq_f64(v27);
      }

      v28 = v18 + v16;
      *v28 = 0;
      v21 += 8;
      *(v28 + 16) = -1;
      *(v28 + 8) = -1;
      *(v28 + 24) = -1;
      *(v28 + 32) = 0;
      *(v28 + 40) = -1;
      v16 += 56;
      v20 += 64;
      *(v28 + 48) = -1;
    }

    while (v19 != v16);
  }

  Shape::SortPointsRounded(a2);
  v29 = 0;
  v249 = 0;
  *(v7 + 136) = 0;
  v242 = (v7 + 136);
  *(v7 + 144) = 0;
  v30 = *(*(a2 + 88) + 40) + -1.0;
  v256[0] = -1;
  *(v7 + 152) = 0;
  v255 = 0;
  v250 = v7 + 152;
  *(v7 + 160) = 0;
  v246 = a2;
  while (v29 < *(a2 + 16) || *(v250 + 40) >= 1)
  {
    v253 = 0;
    v254 = 0;
    v251 = 0;
    v252 = 0;
    v31 = SweepEvent::PeekInQueue(&v252, &v251, &v254 + 1, &v254, &v253 + 1, &v253, v250 + 40);
    v32 = *(a2 + 88);
    if (!v31)
    {
      goto LABEL_24;
    }

    v33 = v32 + 48 * v29;
    if (*(v33 + 8) > 0 || (v34 = *(v33 + 40), v34 > *&v254))
    {
LABEL_23:
      SweepEvent::ExtractFromQueue(&v252, &v251, &v254 + 1, &v254, &v253 + 1, &v253, v250 + 40);
      a2 = 0;
      v35 = *(&v254 + 1);
      LODWORD(v36) = v254;
      v37 = 1;
      v248 = v29;
      v29 = -1;
      goto LABEL_28;
    }

    if (v34 == *&v254)
    {
      v35 = *(v33 + 36);
      if (v35 > *(&v254 + 1))
      {
        goto LABEL_23;
      }
    }

    else
    {
LABEL_24:
      v35 = *(v32 + 48 * v29 + 36);
    }

    v248 = v29 + 1;
    v36 = *(v32 + 48 * v29 + 40);
    v254 = __PAIR64__(LODWORD(v35), LODWORD(v36));
    v38 = *(a2 + 24) + 28 * v29;
    if (!*(v38 + 8) && !*(v38 + 12))
    {
      goto LABEL_85;
    }

    v37 = 0;
LABEL_28:
    v39 = ldexpf(v35, 5);
    v40 = ldexpf(roundf(v39), -5);
    v41 = ldexpf(v36, 5);
    v42 = ldexpf(roundf(v41), -5);
    v43 = Shape::AddPoint(v7, v40, v42);
    v44 = v43;
    v45 = *(v7 + 88) + 48 * v43;
    *(v45 + 36) = v40;
    *(v45 + 40) = v42;
    if (v42 <= v30)
    {
      v68 = v43;
      if (v37)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v46 = Shape::AssemblePoints(v7, v249, v43);
      v48 = v46;
      if (v249 < v46)
      {
        v49 = v249;
        v50 = (*(v7 + 88) + 48 * v249 + 32);
        v51 = v46 - v249;
        do
        {
          v52 = *(v50 - 1);
          if (v52)
          {
            v53 = *(v52 + 64) + 56 * *v50;
            *(v50 - 4) = *(v53 + 8);
            *(v53 + 8) = v49;
          }

          ++v49;
          v50 += 12;
          --v51;
        }

        while (v51);
      }

      v54 = v255;
      if (v255)
      {
        v55 = *(v7 + 88);
        v56 = v256;
        do
        {
          v57 = *(v54 + 8) + 56 * *v56;
          v58 = *(v55 + 48 * *(v57 + 28) + 4);
          *(v57 + 24) = *(v55 + 48 * *(v57 + 24) + 4);
          *(v57 + 28) = v58;
          v56 = (v57 + 40);
          v54 = *(v57 + 32);
        }

        while (v54);
      }

      v59 = *v242;
      if (v59 >= 1)
      {
        v60 = *(v7 + 88);
        v61 = (*(v7 + 144) + 8);
        while (1)
        {
          v62 = *(v61 - 2);
          v63 = *(v60 + 48 * *(v61 - 1) + 4);
          *(v61 - 1) = v63;
          if (v62 == 1)
          {
            break;
          }

          if (!v62)
          {
            v64 = v61[2];
            v65 = *(*v61 + 40) + 32 * v64;
            v66 = *(*v61 + 64);
            if (*(v65 + 8) >= *(v65 + 12))
            {
              goto LABEL_44;
            }

LABEL_42:
            *(v66 + 56 * v64 + 12) = v63;
          }

LABEL_45:
          v61 += 18;
          if (!--v59)
          {
            goto LABEL_46;
          }
        }

        v64 = v61[2];
        v67 = *(*v61 + 40) + 32 * v64;
        v66 = *(*v61 + 64);
        if (*(v67 + 8) <= *(v67 + 12))
        {
LABEL_44:
          *(v66 + 56 * v64 + 16) = v63;
          goto LABEL_45;
        }

        goto LABEL_42;
      }

LABEL_46:
      Shape::CheckAdjacencies(v7, v46, v249, v47);
      Shape::CheckEdges(v7, v48, v249, v246, 0, 0);
      v68 = v48;
      if (v48 < v44)
      {
        v69 = *(v7 + 24);
        v70 = (v69 + 28 * v44);
        v71 = (v69 + 28 * v48);
        v72 = *v70;
        *(v71 + 12) = *(v70 + 12);
        *v71 = v72;
        v73 = *(v7 + 88);
        v74 = (v73 + 48 * v44);
        v75 = (v73 + 48 * v48);
        v76 = *v74;
        v77 = v74[2];
        v75[1] = v74[1];
        v75[2] = v77;
        *v75 = v76;
      }

      *(v7 + 16) = v48 + 1;
      *(v7 + 136) = 0;
      v256[0] = -1;
      v255 = 0;
      v249 = v48;
      v30 = v42;
      if (v37)
      {
LABEL_83:
        v95 = v68;
        SweepTree::RemoveEvent(v252, (v250 + 40), 1);
        SweepTree::RemoveEvent(v251, (v250 + 40), 0);
        Shape::AddChgt(v7, v95, v249, &v255, v256, 2, *(v252 + 8), *(v252 + 18), *(v251 + 8), *(v251 + 18));
        SweepTree::SwapWithRight(v252);
        Shape::TesteIntersection(v7, v252, 1, 0, v96, v97, v98, v99, v100);
        Shape::TesteIntersection(v7, v251, 0, 0, v101, v102, v103, v104, v105);
LABEL_84:
        a2 = v246;
        goto LABEL_85;
      }
    }

    v78 = *(*(a2 + 24) + 28 * v29 + 16);
    if ((v78 & 0x80000000) != 0)
    {
      goto LABEL_84;
    }

    v79 = 0;
    v80 = 0;
    v81 = -1;
    v82 = -1;
    v83 = *(*(a2 + 24) + 28 * v29 + 16);
    do
    {
      if (v83 >= *(a2 + 32))
      {
        break;
      }

      v84 = *(a2 + 40) + 32 * v83;
      v85 = *(v84 + 8);
      v86 = *(v84 + 12);
      if ((v85 >= v86 || v29 != v86) && (v29 != v85 || v85 <= v86))
      {
        goto LABEL_70;
      }

      ++v80;
      v82 = v83;
      v89 = v29 == v85;
      v90 = v85 > v86;
      if (v85 >= v86)
      {
        v89 = 0;
      }

      if (v29 != v86)
      {
        v90 = 0;
      }

      v91 = v90 || v89;
      if (v91)
      {
        v81 = v83;
      }

LABEL_70:
      v79 += v91;
      if (v29 != v85 && v29 != v86)
      {
        break;
      }

      v93 = 24;
      if (v29 == v85)
      {
        v93 = 16;
      }

      v83 = *(v84 + v93);
    }

    while ((v83 & 0x80000000) == 0);
    v247 = v68;
    if (v79 <= 0)
    {
      if (v80 > 0)
      {
        v94 = -1;
LABEL_89:
        v244 = v94;
        while (2)
        {
          if (v78 >= *(a2 + 32))
          {
            goto LABEL_127;
          }

          v106 = v7;
          v107 = v78;
          v108 = *(a2 + 40) + 32 * v78;
          v109 = *(v108 + 8);
          v110 = *(v108 + 12);
          if (v109 < v110 && v29 == v110)
          {
            if (v78 != v94)
            {
LABEL_105:
              v114 = *(*(a2 + 64) + 56 * v78);
              if (v114)
              {
                Shape::AddChgt(v7, v68, v249, &v255, v256, 1, v114[8], *(v114 + 18), 0, -1);
                *(*(a2 + 64) + 56 * v107) = 0;
                v115 = *v114;
                if (*v114)
                {
                  v245 = *(v115 + 72);
                  v116 = *(v115 + 64);
                }

                else
                {
                  v116 = 0;
                  v245 = -1;
                }

                v117 = v114[1];
                if (v117)
                {
                  v243 = *(v117 + 72);
                  v118 = *(v117 + 64);
                }

                else
                {
                  v118 = 0;
                  v243 = -1;
                }

                SweepTree::Remove(v114, v250 + 16, (v250 + 40), 1);
                v68 = v247;
                v94 = v244;
                if (v116)
                {
                  if (v118)
                  {
                    if (v116 != a2 || (v124 = *(v116 + 40) + 32 * v245, *(v124 + 12) != v29) && *(v124 + 8) != v29)
                    {
                      if (v118 != a2 || (v125 = *(v118 + 40) + 32 * v243, *(v125 + 12) != v29) && *(v125 + 8) != v29)
                      {
                        Shape::TesteIntersection(v106, *(*(v116 + 64) + 56 * v245), 0, 0, v119, v120, v121, v122, v123);
                        v94 = v244;
                        v68 = v247;
                      }
                    }
                  }
                }
              }
            }
          }

          else if (v29 == v109 && v109 > v110 && v78 != v94)
          {
            goto LABEL_105;
          }

          v126 = *(a2 + 40) + 32 * v107;
          if (*(v126 + 8) == v29)
          {
            v127 = 16;
          }

          else
          {
            if (*(v126 + 12) != v29)
            {
              v7 = v106;
              if ((v81 & 0x80000000) == 0)
              {
                goto LABEL_128;
              }

              goto LABEL_134;
            }

            v127 = 24;
          }

          v78 = *(v126 + v127);
          v7 = v106;
          if ((v78 & 0x80000000) != 0)
          {
            goto LABEL_127;
          }

          continue;
        }
      }

      if ((v81 & 0x80000000) == 0)
      {
LABEL_131:
        v142 = v68;
        v129 = SweepTree::AddInList(a2, v81, 1, v68, (v250 + 16));
        *(*(a2 + 64) + 56 * v81) = v129;
        SweepTree::Insert(v129, v250 + 16, (v250 + 40), v7, v142, 1, 1);
        v148 = *v129;
        if (*v129)
        {
          v149 = *(v7 + 88) + 48 * v142;
          *(v149 + 24) = *(v148 + 64);
          *(v149 + 32) = *(v148 + 72);
        }

        else
        {
          *(*(v7 + 88) + 48 * v142 + 32) = -1;
        }

        Shape::TesteIntersection(v7, v129, 0, 0, v143, v144, v145, v146, v147);
        Shape::TesteIntersection(v7, v129, 1, 0, v150, v151, v152, v153, v154);
        *(*(a2 + 64) + 56 * v81 + 44) = v142;
        Shape::AddChgt(v7, v142, v249, &v255, v256, 0, *(v129 + 64), *(v129 + 72), 0, -1);
        v130 = 0;
        goto LABEL_137;
      }

LABEL_134:
      v129 = 0;
      v130 = 1;
      goto LABEL_137;
    }

    if ((v82 & 0x80000000) != 0)
    {
      v94 = -1;
      if (v80 >= 1)
      {
        goto LABEL_89;
      }
    }

    else
    {
      if (*(*(a2 + 64) + 56 * v82))
      {
        v94 = v82;
      }

      else
      {
        v94 = -1;
      }

      if (v80 > 0)
      {
        goto LABEL_89;
      }
    }

LABEL_127:
    if ((v81 & 0x80000000) != 0)
    {
      goto LABEL_134;
    }

LABEL_128:
    if ((v94 & 0x80000000) != 0)
    {
      goto LABEL_131;
    }

    v128 = 56 * v94;
    v129 = *(*(a2 + 64) + v128);
    v130 = 1;
    v131 = v68;
    Shape::AddChgt(v7, v68, v249, &v255, v256, 1, *(v129 + 64), *(v129 + 72), 0, -1);
    *(*(a2 + 64) + v128) = 0;
    SweepTree::RemoveEvents(v129, (v250 + 40));
    SweepTree::ConvertTo(v129, a2, v81, 1, v131);
    *(*(a2 + 64) + 56 * v81) = v129;
    Shape::TesteIntersection(v7, v129, 0, 0, v132, v133, v134, v135, v136);
    Shape::TesteIntersection(v7, v129, 1, 0, v137, v138, v139, v140, v141);
    *(*(a2 + 64) + 56 * v81 + 44) = v131;
    Shape::AddChgt(v7, v131, v249, &v255, v256, 0, *(v129 + 64), *(v129 + 72), 0, -1);
LABEL_137:
    if (v79 >= 2)
    {
      v155 = *(*(a2 + 24) + 28 * v29 + 16);
      if ((v155 & 0x80000000) == 0)
      {
        v156 = v247;
        while (1)
        {
          if (v155 >= *(a2 + 32))
          {
            goto LABEL_84;
          }

          v157 = *(a2 + 40);
          v158 = v155;
          v159 = v157 + 32 * v155;
          v160 = *(v159 + 8);
          v161 = *(v159 + 12);
          if (v160 > v161 && v29 == v161)
          {
            if (v155 != v81)
            {
              goto LABEL_155;
            }
          }

          else if (v29 == v160 && v160 < v161 && v155 != v81)
          {
LABEL_155:
            v165 = SweepTree::AddInList(a2, v155, 1, v156, (v250 + 16));
            *(*(a2 + 64) + 56 * v158) = v165;
            SweepTree::InsertAt(v165, v250 + 16, (v250 + 40), v7, v129, v29, 1, 1);
            if (v130)
            {
              v171 = *v165;
              v172 = *(v7 + 88);
              if (*v165)
              {
                v173 = v247;
                *(v172 + 48 * v247 + 24) = *(v171 + 64);
                v174 = *(v171 + 72);
              }

              else
              {
                v174 = -1;
                v173 = v247;
              }

              *(v172 + 48 * v173 + 32) = v174;
            }

            Shape::TesteIntersection(v7, v165, 0, 0, v166, v167, v168, v169, v170);
            Shape::TesteIntersection(v7, v165, 1, 0, v175, v176, v177, v178, v179);
            *(*(a2 + 64) + 56 * v158 + 44) = v247;
            Shape::AddChgt(v7, v247, v249, &v255, v256, 0, *(v165 + 64), *(v165 + 72), 0, -1);
            v156 = v247;
            v130 = 0;
            v157 = *(a2 + 40);
            v160 = *(v157 + 32 * v158 + 8);
          }

          v180 = v157 + 32 * v158;
          if (v160 == v29)
          {
            v181 = 16;
          }

          else
          {
            if (*(v180 + 12) != v29)
            {
              goto LABEL_84;
            }

            v181 = 24;
          }

          v155 = *(v180 + v181);
          if ((v155 & 0x80000000) != 0)
          {
            goto LABEL_84;
          }
        }
      }

      goto LABEL_84;
    }

    a2 = v246;
LABEL_85:
    v29 = v248;
  }

  v182 = Shape::AssemblePoints(v7, v249, *(v7 + 16));
  v184 = v182;
  if (v249 < v182)
  {
    v185 = v249;
    v186 = (*(v7 + 88) + 48 * v249 + 32);
    v187 = v182 - v249;
    do
    {
      v188 = *(v186 - 1);
      if (v188)
      {
        v189 = *(v188 + 64) + 56 * *v186;
        *(v186 - 4) = *(v189 + 8);
        *(v189 + 8) = v185;
      }

      ++v185;
      v186 += 12;
      --v187;
    }

    while (v187);
  }

  v190 = v255;
  if (v255)
  {
    v191 = *(v7 + 88);
    v192 = v256;
    do
    {
      v193 = *(v190 + 8) + 56 * *v192;
      v194 = *(v191 + 48 * *(v193 + 28) + 4);
      *(v193 + 24) = *(v191 + 48 * *(v193 + 24) + 4);
      *(v193 + 28) = v194;
      v192 = (v193 + 40);
      v190 = *(v193 + 32);
    }

    while (v190);
  }

  v195 = *v242;
  if (v195 >= 1)
  {
    v196 = *(v7 + 88);
    v197 = (*(v7 + 144) + 8);
    while (1)
    {
      v198 = *(v197 - 2);
      v199 = *(v196 + 48 * *(v197 - 1) + 4);
      *(v197 - 1) = v199;
      if (v198 == 1)
      {
        break;
      }

      if (!v198)
      {
        v200 = v197[2];
        v201 = *(*v197 + 40) + 32 * v200;
        v202 = *(*v197 + 64);
        if (*(v201 + 8) >= *(v201 + 12))
        {
          goto LABEL_184;
        }

LABEL_182:
        *(v202 + 56 * v200 + 12) = v199;
      }

LABEL_185:
      v197 += 18;
      if (!--v195)
      {
        goto LABEL_186;
      }
    }

    v200 = v197[2];
    v203 = *(*v197 + 40) + 32 * v200;
    v202 = *(*v197 + 64);
    if (*(v203 + 8) <= *(v203 + 12))
    {
LABEL_184:
      *(v202 + 56 * v200 + 16) = v199;
      goto LABEL_185;
    }

    goto LABEL_182;
  }

LABEL_186:
  Shape::CheckAdjacencies(v7, v182, v249, v183);
  Shape::CheckEdges(v7, v184, v249, a2, 0, 0);
  *(v7 + 16) = v184;
  v204 = *(v7 + 144);
  if (v204)
  {
    free(v204);
  }

  *v242 = 0;
  v242[1] = 0;
  v205 = *(v7 + 160);
  if (v205)
  {
    free(v205);
  }

  *v250 = 0;
  *(v250 + 8) = 0;
  Shape::AssembleAretes(v7);
  v206 = *(v7 + 16);
  if (v206 >= 1)
  {
    v207 = (*(v7 + 24) + 12);
    do
    {
      v207[3] = *v207 + *(v207 - 1);
      v207 += 7;
      --v206;
    }

    while (v206);
  }

  Shape::SetFlag(v7, 2, 1);
  Shape::GetWindings(v7, v208, v209, v210, 0);
  if (v240 == 2)
  {
    v226 = *(v7 + 32);
    if (v241)
    {
      if (v226 < 1)
      {
        goto LABEL_270;
      }

      v227 = 0;
      while (1)
      {
        v228 = *(v7 + 72) + 32 * v227;
        v229 = *(v228 + 20);
        if ((*(v228 + 16) & 0x80000000) != 0)
        {
          v230 = *(v7 + 56);
          if ((v229 & 0x80000000) == 0)
          {
            goto LABEL_242;
          }
        }

        else
        {
          if (v229 < 0)
          {
            Shape::Inverse(v7, v227);
            v230 = *(v7 + 56);
LABEL_242:
            *(v230 + (v227 << 6)) = 1;
            goto LABEL_243;
          }

          v230 = *(v7 + 56);
        }

        *(v230 + (v227 << 6)) = 0;
        Shape::SubEdge(v7, v227--);
LABEL_243:
        if (++v227 >= *(v7 + 32))
        {
          goto LABEL_270;
        }
      }
    }

    if (v226 < 1)
    {
      goto LABEL_270;
    }

    v236 = 0;
    while (1)
    {
      v237 = *(v7 + 72) + 32 * v236;
      v238 = *(v237 + 20);
      if (*(v237 + 16) < 1)
      {
        if (v238 <= 0)
        {
          v239 = *(v7 + 56);
LABEL_268:
          *(v239 + (v236 << 6)) = 0;
          Shape::SubEdge(v7, v236--);
          goto LABEL_269;
        }

        Shape::Inverse(v7, v236);
        v239 = *(v7 + 56);
      }

      else
      {
        v239 = *(v7 + 56);
        if (v238 > 0)
        {
          goto LABEL_268;
        }
      }

      *(v239 + (v236 << 6)) = 1;
LABEL_269:
      if (++v236 >= *(v7 + 32))
      {
        goto LABEL_270;
      }
    }
  }

  if (v240 != 1)
  {
    if (!v240 && *(v7 + 32) >= 1)
    {
      v211 = 0;
      while (1)
      {
        v212 = *(v7 + 72) + 32 * v211;
        v214 = *(v212 + 16);
        v213 = (v212 + 16);
        v215 = v214 & 1;
        if (v214 >= 0)
        {
          v216 = v215;
        }

        else
        {
          v216 = -v215;
        }

        *v213 = v216;
        v217 = v213 + 1;
        if (v213[1] >= 0)
        {
          v218 = v213[1] & 1;
        }

        else
        {
          v218 = -(v213[1] & 1);
        }

        *v217 = v218;
        if (v216 < 0)
        {
          *v213 = -v216;
          v216 = 1;
          if ((v218 & 0x80000000) == 0)
          {
LABEL_206:
            if (v216)
            {
              goto LABEL_207;
            }

            goto LABEL_211;
          }
        }

        else if ((v218 & 0x80000000) == 0)
        {
          goto LABEL_206;
        }

        *v217 = -v218;
        v218 = 1;
        if (v216)
        {
LABEL_207:
          v219 = *(v7 + 56);
          if (v218)
          {
            goto LABEL_215;
          }

          goto LABEL_213;
        }

LABEL_211:
        if (!v218)
        {
          v219 = *(v7 + 56);
LABEL_215:
          *(v219 + (v211 << 6)) = 0;
          Shape::SubEdge(v7, v211--);
          goto LABEL_216;
        }

        Shape::Inverse(v7, v211);
        v219 = *(v7 + 56);
LABEL_213:
        *(v219 + (v211 << 6)) = 1;
LABEL_216:
        if (++v211 >= *(v7 + 32))
        {
          goto LABEL_270;
        }
      }
    }

    goto LABEL_270;
  }

  v220 = *(v7 + 32);
  if ((v241 & 1) == 0)
  {
    if (v220 < 1)
    {
      goto LABEL_270;
    }

    v231 = 0;
    while (1)
    {
      v232 = *(v7 + 72) + 32 * v231;
      v233 = *(v232 + 16);
      if (v233 >= 1)
      {
        break;
      }

      v234 = *(v232 + 20);
      if (v233 < 0)
      {
        goto LABEL_249;
      }

      if (v234 >= 1 || v234 < 0)
      {
        Shape::Inverse(v7, v231);
        v235 = *(v7 + 56);
LABEL_254:
        *(v235 + (v231 << 6)) = 1;
        goto LABEL_255;
      }

      v235 = *(v7 + 56);
LABEL_250:
      *(v235 + (v231 << 6)) = 0;
      Shape::SubEdge(v7, v231--);
LABEL_255:
      if (++v231 >= *(v7 + 32))
      {
        goto LABEL_270;
      }
    }

    v234 = *(v232 + 20);
LABEL_249:
    v235 = *(v7 + 56);
    if (!v234)
    {
      goto LABEL_254;
    }

    goto LABEL_250;
  }

  if (v220 >= 1)
  {
    v221 = 0;
    while (1)
    {
      v222 = *(v7 + 72) + 32 * v221;
      v223 = *(v222 + 16);
      if (v223 < 0)
      {
        break;
      }

      v224 = *(v222 + 20);
      if (v223)
      {
        goto LABEL_227;
      }

      if (v224 < 0 || v224)
      {
        Shape::Inverse(v7, v221);
        v225 = *(v7 + 56);
LABEL_229:
        *(v225 + (v221 << 6)) = 1;
        goto LABEL_230;
      }

      v225 = *(v7 + 56);
LABEL_228:
      *(v225 + (v221 << 6)) = 0;
      Shape::SubEdge(v7, v221--);
LABEL_230:
      if (++v221 >= *(v7 + 32))
      {
        goto LABEL_270;
      }
    }

    v224 = *(v222 + 20);
LABEL_227:
    v225 = *(v7 + 56);
    if (!v224)
    {
      goto LABEL_229;
    }

    goto LABEL_228;
  }

LABEL_270:
  if (Shape::GetFlag(v7, 64))
  {
    SweepTree::DestroyList((v250 + 16));
    SweepEvent::DestroyQueue((v250 + 40));
    Shape::SetFlag(v7, 64, 0);
  }

  Shape::MakePointData(v7, 0);
  Shape::MakeEdgeData(v7, 0);
  Shape::MakeSweepSrcData(v7, 0);
  Shape::MakeSweepDestData(v7, 0);
  Shape::CleanupSweep(a2);
  if (Shape::Eulerian(v7, 1))
  {
    result = 0;
    *(v7 + 48) = 1;
  }

  else
  {
    *(v7 + 32) = 0;
    *(v7 + 16) = 0;
    return 4;
  }

  return result;
}

uint64_t Shape::AssemblePoints(Shape *this, int a2, uint64_t a3)
{
  if (a3 > a2)
  {
    v3 = a2;
    v5 = 0;
    v6 = a2;
    v7 = a3;
    v8 = a3 - a2;
    v9 = vdupq_n_s64(v8 - 1);
    v10 = a2;
    v11 = (v8 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v12 = (*(this + 11) + 48 * a2 + 96);
    do
    {
      v13 = vdupq_n_s64(v5);
      v14 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v13, xmmword_26CA639B0)));
      if (vuzp1_s16(v14, *v9.i8).u8[0])
      {
        *(v12 - 24) = a2 + v5;
      }

      if (vuzp1_s16(v14, *&v9).i8[2])
      {
        *(v12 - 12) = a2 + v5 + 1;
      }

      if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v13, xmmword_26CA63D50)))).i32[1])
      {
        *v12 = a2 + v5 + 2;
        v12[12] = a2 + v5 + 3;
      }

      v5 += 4;
      v12 += 48;
    }

    while (v11 != v5);
    Shape::SortPointsByOldInd(this, a2, a3 - 1);
    v15 = *(this + 11);
    v16 = (v15 + 48 * v10);
    v17 = v7 - v10;
    v18 = v7 - v10;
    do
    {
      v19 = *v16;
      v16 += 12;
      *(v15 + 48 * v19 + 4) = v3++;
      --v18;
    }

    while (v18);
    v20 = *(this + 11);
    v21 = (v20 + 48 * v10 + 32);
    v22 = 28 * v10;
    v23 = v10;
    a3 = v6;
    while (1)
    {
      *(v21 - 6) = a3;
      if (v23 <= v10)
      {
        break;
      }

      v24 = (*(this + 3) + v22);
      if (*(v24 - 7) != *v24 || *(v24 - 6) != v24[1])
      {
        break;
      }

      v25 = *(v21 - 18);
      *(v21 - 6) = v25;
      v26 = v20 + 48 * v25;
      v28 = *(v26 + 24);
      v27 = (v26 + 24);
      if (!v28)
      {
        *v27 = *(v21 - 1);
LABEL_20:
        *(v20 + 48 * v25 + 32) = *v21;
      }

LABEL_22:
      ++v23;
      v21 += 12;
      v22 += 28;
      if (v7 == v23)
      {
        v32 = *(this + 11);
        v33 = (v32 + 48 * v10 + 4);
        do
        {
          *v33 = *(v32 + 48 * *v33 + 8);
          v33 += 12;
          --v17;
        }

        while (v17);
        return a3;
      }
    }

    if (v23 <= a3)
    {
      a3 = (a3 + 1);
      goto LABEL_22;
    }

    v25 = a3;
    v29 = *(this + 3);
    v30 = *(v29 + v22);
    *(v29 + 28 * a3) = v30;
    v31 = v20 + 48 * a3;
    *(v31 + 36) = v30;
    *(v31 + 24) = *(v21 - 1);
    a3 = (a3 + 1);
    goto LABEL_20;
  }

  return a3;
}

uint64_t Shape::CheckAdjacencies(uint64_t this, int a2, int a3, Shape *a4)
{
  if (*(this + 136) >= 1)
  {
    v4 = a2;
    v5 = this;
    v6 = 0;
    v94 = 2 - a2;
    while (1)
    {
      v7 = *(v5 + 144) + 72 * v6;
      v8 = *(v7 + 4);
      v9 = *(v7 + 8);
      if (v9)
      {
        v10 = *(v7 + 16);
        v11 = *(v9 + 8) + 56 * v10;
        v13 = *(v11 + 24);
        v12 = *(v11 + 28);
        if (v13 >= v8)
        {
          v14 = v8;
        }

        else
        {
          v14 = *(v11 + 24);
        }

        if (v12 > v8)
        {
          v8 = v12;
        }

        v97 = v8;
        v99 = v14;
        if (v13 > a3)
        {
          v15 = v13 - 1;
          v16 = 28 * v13;
          do
          {
            this = Shape::TesteAdjacency(v5, v9, v10, *(*(v5 + 24) + v16 - 28), *(*(v5 + 24) + v16 - 24), v15, 0);
            if (!this)
            {
              break;
            }

            --v13;
            *(*(v9 + 8) + 56 * v10 + 24) = v15--;
            v16 -= 28;
          }

          while (v13 > a3);
        }

        v17 = v12 + 1;
        if (v12 + 1 < v4)
        {
          v18 = 28 * v17;
          do
          {
            this = Shape::TesteAdjacency(v5, v9, v10, *(*(v5 + 24) + v18), *(*(v5 + 24) + v18 + 4), v17, 0);
            if (!this)
            {
              break;
            }

            *(*(v9 + 8) + 56 * v10 + 28) = v17;
            v18 += 28;
            LODWORD(v17) = v17 + 1;
          }

          while (v4 != v17);
        }

        v8 = v97;
      }

      else
      {
        v99 = *(v7 + 4);
      }

      v19 = *(v5 + 144) + 72 * v6;
      v20 = *(v19 + 24);
      if (v20)
      {
        v21 = *(v19 + 32);
        v22 = *(v20 + 8) + 56 * v21;
        v24 = *(v22 + 24);
        v23 = *(v22 + 28);
        if (v24 >= v99)
        {
          v25 = v99;
        }

        else
        {
          v25 = *(v22 + 24);
        }

        if (v23 > v8)
        {
          v8 = v23;
        }

        v98 = v8;
        v99 = v25;
        if (v24 > a3)
        {
          v26 = v24 - 1;
          v27 = 28 * v24;
          do
          {
            this = Shape::TesteAdjacency(v5, v20, v21, *(*(v5 + 24) + v27 - 28), *(*(v5 + 24) + v27 - 24), v26, 0);
            if (!this)
            {
              break;
            }

            --v24;
            *(*(v20 + 8) + 56 * v21 + 24) = v26--;
            v27 -= 28;
          }

          while (v24 > a3);
        }

        v28 = v23 + 1;
        if (v23 + 1 < v4)
        {
          v29 = 28 * v28;
          do
          {
            this = Shape::TesteAdjacency(v5, v20, v21, *(*(v5 + 24) + v29), *(*(v5 + 24) + v29 + 4), v28, 0);
            if (!this)
            {
              break;
            }

            *(*(v20 + 8) + 56 * v21 + 28) = v28;
            v29 += 28;
            LODWORD(v28) = v28 + 1;
          }

          while (v4 != v28);
        }
      }

      else
      {
        v98 = v8;
      }

      v30 = *(v5 + 144);
      v31 = v30 + 72 * v6;
      v32 = *(v31 + 40);
      v33 = v99;
      v95 = v6;
      if (v32)
      {
        v34 = *(v31 + 48);
        if (*(*(v32 + 8) + 56 * v34 + 24) < a3)
        {
          while (v98 < v33)
          {
            v35 = 0;
LABEL_50:
            v33 = v99;
            if (v99 > a3)
            {
              this = Shape::TesteAdjacency(v5, v32, v34, *(*(v5 + 24) + 28 * (v99 - 1)), *(*(v5 + 24) + 28 * (v99 - 1) + 4), v99 - 1, 0);
              if (this)
              {
                v48 = v34;
                v49 = 28 * v99;
                v50 = v99;
                v51 = v99 - 1;
                while (1)
                {
                  v52 = v50 - 1;
                  v53 = *(v32 + 8);
                  v54 = v53 + 56 * v34;
                  v57 = *(v54 + 24);
                  v55 = (v54 + 24);
                  v56 = v57;
                  if (v57 >= a3)
                  {
                    if (v50 <= v56)
                    {
                      *v55 = v51;
                    }

                    v59 = v53 + 56 * v34;
                    v60 = *(v59 + 28);
                    v58 = (v59 + 28);
                    if (v52 <= v60)
                    {
                      goto LABEL_59;
                    }
                  }

                  else
                  {
                    *v55 = v51;
                    v58 = (v53 + 56 * v34 + 28);
                  }

                  *v58 = v51;
LABEL_59:
                  if (v52 <= a3)
                  {
                    goto LABEL_64;
                  }

                  this = Shape::TesteAdjacency(v5, v32, v34, *(*(v5 + 24) + v49 - 56), *(*(v5 + 24) + v49 - 52), --v51, 0);
                  v49 -= 28;
                  v50 = v52;
                  if (!this)
                  {
                    goto LABEL_63;
                  }
                }
              }
            }

            if ((v35 & 1) == 0)
            {
              goto LABEL_67;
            }

LABEL_63:
            v53 = *(v32 + 8);
            v48 = v34;
LABEL_64:
            v61 = *(v53 + 56 * v48);
            if (v61)
            {
              v62 = *v61;
              if (v62)
              {
                v32 = *(v62 + 64);
                v34 = *(v62 + 72);
                if (*(*(v32 + 8) + 56 * v34 + 24) < a3)
                {
                  continue;
                }
              }
            }

LABEL_67:
            v30 = *(v5 + 144);
            v4 = a2;
            v6 = v95;
            goto LABEL_68;
          }

          v35 = 0;
          v36 = 28 * v98;
          v37 = v98;
          v38 = v98;
          while (1)
          {
            this = Shape::TesteAdjacency(v5, v32, v34, *(*(v5 + 24) + v36), *(*(v5 + 24) + v36 + 4), v37, 0);
            if (this)
            {
              break;
            }

LABEL_48:
            --v37;
            v36 -= 28;
            if (v38-- <= v99)
            {
              goto LABEL_50;
            }
          }

          v39 = *(v32 + 8);
          v40 = v39 + 56 * v34;
          v43 = *(v40 + 24);
          v41 = (v40 + 24);
          v42 = v43;
          if (v43 >= a3)
          {
            if (v38 < v42)
            {
              *v41 = v37;
            }

            v45 = v39 + 56 * v34;
            v46 = *(v45 + 28);
            v44 = (v45 + 28);
            if (v38 <= v46)
            {
              goto LABEL_47;
            }
          }

          else
          {
            *v41 = v37;
            v44 = (v39 + 56 * v34 + 28);
          }

          *v44 = v37;
LABEL_47:
          v35 = 1;
          goto LABEL_48;
        }
      }

LABEL_68:
      v63 = v30 + 72 * v6;
      v64 = *(v63 + 56);
      if (v64)
      {
        v65 = *(v63 + 64);
        if (*(*(v64 + 8) + 56 * v65 + 24) < a3)
        {
          break;
        }
      }

LABEL_100:
      v6 = v95 + 1;
      if (v95 + 1 >= *(v5 + 136))
      {
        return this;
      }
    }

    v66 = v98 + 1;
    while (v99 > v98)
    {
      v67 = 0;
LABEL_83:
      v4 = a2;
      if (v66 < a2)
      {
        v79 = (*(v5 + 24) + 28 * v66);
        this = Shape::TesteAdjacency(v5, v64, v65, *v79, v79[1], v66, 0);
        if (this)
        {
          v80 = 0;
          v81 = v65;
          v82 = 28 * v66;
          while (1)
          {
            v83 = v98 + v80 + 1;
            v84 = *(v64 + 8);
            v85 = v84 + 56 * v65;
            v88 = *(v85 + 24);
            v86 = (v85 + 24);
            v87 = v88;
            if (v88 >= a3)
            {
              if (v66 + v80 < v87)
              {
                *v86 = v83;
              }

              v90 = v84 + 56 * v65;
              v91 = *(v90 + 28);
              v89 = (v90 + 28);
              if (v98 + v80 < v91)
              {
                goto LABEL_92;
              }
            }

            else
            {
              *v86 = v83;
              v89 = (v84 + 56 * v65 + 28);
            }

            *v89 = v83;
LABEL_92:
            if (!(v94 + v98 + v80))
            {
              goto LABEL_97;
            }

            this = Shape::TesteAdjacency(v5, v64, v65, *(*(v5 + 24) + v82 + 28), *(*(v5 + 24) + v82 + 32), v98 + v80++ + 2, 0);
            v82 += 28;
            if (!this)
            {
              goto LABEL_96;
            }
          }
        }
      }

      if ((v67 & 1) == 0)
      {
        goto LABEL_100;
      }

LABEL_96:
      v84 = *(v64 + 8);
      v81 = v65;
LABEL_97:
      v92 = *(v84 + 56 * v81);
      if (v92)
      {
        v93 = *(v92 + 8);
        if (v93)
        {
          v64 = *(v93 + 64);
          v65 = *(v93 + 72);
          if (*(*(v64 + 8) + 56 * v65 + 24) < a3)
          {
            continue;
          }
        }
      }

      goto LABEL_100;
    }

    v67 = 0;
    v69 = 28 * v99;
    v68 = v99;
    v70 = v99;
    while (1)
    {
      this = Shape::TesteAdjacency(v5, v64, v65, *(*(v5 + 24) + v69), *(*(v5 + 24) + v69 + 4), v70, 0);
      if (this)
      {
        break;
      }

LABEL_82:
      ++v68;
      ++v70;
      v69 += 28;
      if (v66 == v70)
      {
        goto LABEL_83;
      }
    }

    v71 = *(v64 + 8);
    v72 = v71 + 56 * v65;
    v75 = *(v72 + 24);
    v73 = (v72 + 24);
    v74 = v75;
    if (v75 >= a3)
    {
      if (v68 < v74)
      {
        *v73 = v70;
      }

      v77 = v71 + 56 * v65;
      v78 = *(v77 + 28);
      v76 = (v77 + 28);
      if (v68 <= v78)
      {
        goto LABEL_81;
      }
    }

    else
    {
      *v73 = v70;
      v76 = (v71 + 56 * v65 + 28);
    }

    *v76 = v70;
LABEL_81:
    v67 = 1;
    goto LABEL_82;
  }

  return this;
}

void Shape::CheckEdges(uint64_t a1, signed int a2, int a3, uint64_t a4, Shape *a5, uint64_t a6)
{
  v6 = *(a1 + 136);
  if (v6 >= 1)
  {
    v7 = a6;
    v12 = (*(a1 + 144) + 8);
    do
    {
      if (!*(v12 - 2))
      {
        *(*(*v12 + 64) + 56 * v12[2] + 44) = *(v12 - 1);
      }

      v12 += 18;
      --v6;
    }

    while (v6);
    v13 = 0;
    do
    {
      v14 = *(a1 + 144);
      v15 = v14 + 72 * v13;
      v16 = *(v15 + 8);
      if (v16)
      {
        Shape::Avance(a1, a2, a3, v16, *(v15 + 16), a6, a5, v7);
        v14 = *(a1 + 144);
      }

      v17 = v14 + 72 * v13;
      v18 = *(v17 + 24);
      if (v18)
      {
        Shape::Avance(a1, a2, a3, v18, *(v17 + 32), a6, a5, v7);
        v14 = *(a1 + 144);
      }

      v19 = v14 + 72 * v13;
      v20 = *(v19 + 40);
      if (v20)
      {
        v21 = *(v19 + 48);
        if (*(*(v20 + 8) + 56 * v21 + 24) >= a3)
        {
          v22 = v21;
          do
          {
            Shape::Avance(a1, a2, a3, v20, v21, a6, a5, v7);
            v23 = *(*(v20 + 8) + 56 * v22);
            if (!v23)
            {
              break;
            }

            v24 = *v23;
            if (!v24)
            {
              break;
            }

            v20 = *(v24 + 64);
            v21 = *(v24 + 72);
            v22 = v21;
          }

          while (*(*(v20 + 8) + 56 * v21 + 24) >= a3);
          v14 = *(a1 + 144);
        }
      }

      v25 = v14 + 72 * v13;
      v26 = *(v25 + 56);
      if (v26)
      {
        v27 = *(v25 + 64);
        if (*(*(v26 + 8) + 56 * v27 + 28) >= a3)
        {
          v28 = v27;
          do
          {
            Shape::Avance(a1, a2, a3, v26, v27, a6, a5, v7);
            v29 = *(*(v26 + 8) + 56 * v28);
            if (!v29)
            {
              break;
            }

            v30 = *(v29 + 8);
            if (!v30)
            {
              break;
            }

            v26 = *(v30 + 64);
            v27 = *(v30 + 72);
            v28 = v27;
          }

          while (*(*(v26 + 8) + 56 * v27 + 28) >= a3);
        }
      }

      ++v13;
    }

    while (v13 < *(a1 + 136));
  }
}

void *Shape::AddChgt(Shape *this, int a2, int a3, Shape **a4, int *a5, int a6, Shape *a7, int a8, Shape *a9, int a10)
{
  v18 = *(this + 34);
  if (v18 >= *(this + 35))
  {
    v20 = (2 * v18) | 1;
    *(this + 35) = v20;
    result = malloc_type_realloc(*(this + 18), 72 * v20, 0x10200400F996F24uLL);
    *(this + 18) = result;
    v18 = *(this + 34);
  }

  else
  {
    result = *(this + 18);
  }

  *(this + 34) = v18 + 1;
  v21 = v18;
  v22 = &result[9 * v18];
  *v22 = a6;
  *(v22 + 1) = a2;
  *(v22 + 1) = a7;
  *(v22 + 4) = a8;
  *(v22 + 3) = a9;
  *(v22 + 8) = a10;
  if (a7)
  {
    v23 = *(a7 + 8);
    v24 = *(v23 + 56 * a8);
    if (v24 && (v25 = *v24) != 0)
    {
      result[9 * v21 + 5] = *(v25 + 64);
      v26 = *(v25 + 72);
    }

    else
    {
      result[9 * v21 + 5] = 0;
      v26 = -1;
    }

    LODWORD(result[9 * v21 + 6]) = v26;
    v27 = v23 + 56 * a8;
    v30 = *(v27 + 24);
    v28 = (v27 + 24);
    v29 = v30;
    if (v30 >= a3)
    {
      if (*(*(this + 3) + 28 * v29) > *(*(this + 3) + 28 * a2))
      {
        *v28 = a2;
      }
    }

    else
    {
      *v28 = a2;
      v31 = v23 + 56 * a8;
      *(v31 + 32) = *a4;
      *(v31 + 40) = *a5;
      *a5 = a8;
      *a4 = a7;
      v23 = *(a7 + 8);
    }

    v32 = v23 + 56 * a8;
    v35 = *(v32 + 28);
    v33 = (v32 + 28);
    v34 = v35;
    if (v35 < a3 || *(*(this + 3) + 28 * v34) < *(*(this + 3) + 28 * a2))
    {
      *v33 = a2;
    }
  }

  if (!a9)
  {
    v40 = *(*(a7 + 8) + 56 * a8);
    if (v40)
    {
      v41 = *(v40 + 8);
      v42 = *(this + 18);
      if (v41)
      {
        v43 = v42 + 72 * v21;
        *(v43 + 56) = *(v41 + 64);
        v44 = *(v41 + 72);
LABEL_32:
        *(v43 + 64) = v44;
        return result;
      }
    }

    else
    {
      v42 = *(this + 18);
    }

    v43 = v42 + 72 * v21;
    *(v43 + 56) = 0;
    v44 = -1;
    goto LABEL_32;
  }

  v36 = *(a9 + 8);
  v37 = *(*(v36 + 56 * a10) + 8);
  v38 = *(this + 18);
  if (v37)
  {
    *(v38 + 72 * v21 + 56) = *(v37 + 64);
    v39 = *(v37 + 72);
  }

  else
  {
    *(v38 + 72 * v21 + 56) = 0;
    v39 = -1;
  }

  *(v38 + 72 * v21 + 64) = v39;
  v45 = v36 + 56 * a10;
  v48 = *(v45 + 24);
  v46 = (v45 + 24);
  v47 = v48;
  if (v48 >= a3)
  {
    if (*(*(this + 3) + 28 * v47) > *(*(this + 3) + 28 * a2))
    {
      *v46 = a2;
    }
  }

  else
  {
    *v46 = a2;
    v49 = v36 + 56 * a10;
    *(v49 + 32) = *a4;
    *(v49 + 40) = *a5;
    *a5 = a10;
    *a4 = a9;
    v36 = *(a9 + 8);
  }

  v50 = v36 + 56 * a10;
  v53 = *(v50 + 28);
  v51 = (v50 + 28);
  v52 = v53;
  if (v53 < a3 || *(*(this + 3) + 28 * v52) < *(*(this + 3) + 28 * a2))
  {
    *v51 = a2;
  }

  return result;
}

uint64_t Shape::TesteIntersection(uint64_t this, SweepTree *a2, int a3, char a4, double a5, double a6, double a7, int32x4_t a8, int32x4_t a9)
{
  v10 = this;
  if (a3)
  {
    v11 = *a2;
    if (*a2)
    {
      v20 = 0;
      v21 = 0;
      this = Shape::TesteIntersection(a5, a6, a7, a8, a9, this, v11, a2, &v21 + 1, &v21, &v20 + 1, &v20, a4);
      if (this)
      {
        v12 = *(&v21 + 1);
        v13 = *&v21;
        v14 = *(&v20 + 1);
        v15 = *&v20;
        v16 = v10 + 192;
        v17 = v11;
        v18 = a2;
        return SweepEvent::AddInQueue(v17, v18, v16, v12, v13, v14, v15);
      }
    }
  }

  else
  {
    v19 = *(a2 + 1);
    if (v19)
    {
      v20 = 0;
      v21 = 0;
      this = Shape::TesteIntersection(a5, a6, a7, a8, a9, this, a2, v19, &v21 + 1, &v21, &v20 + 1, &v20, a4);
      if (this)
      {
        v12 = *(&v21 + 1);
        v13 = *&v21;
        v14 = *(&v20 + 1);
        v15 = *&v20;
        v16 = v10 + 192;
        v17 = a2;
        v18 = v19;
        return SweepEvent::AddInQueue(v17, v18, v16, v12, v13, v14, v15);
      }
    }
  }

  return this;
}

void Shape::AssembleAretes(Shape *this)
{
  if (*(this + 4) >= 1)
  {
    for (i = 0; i < *(this + 4); ++i)
    {
      v3 = (*(this + 3) + 28 * i);
      v4 = v3[4];
      if (v3[3] + v3[2] == 2)
      {
        v5 = v3[5];
        v6 = *(this + 5);
        v7 = v6 + 32 * v4;
        v8 = *(v7 + 8);
        v9 = v6 + 32 * v5;
        v10 = *(v9 + 8);
        if (v8 == v10)
        {
          v11 = *(v9 + 12);
          if (*(v7 + 12) == v11)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v11 = *(v9 + 12);
        }

        if (v8 == v11 && *(v7 + 12) == v8)
        {
          if (v8 == v10)
          {
LABEL_58:
            v41 = *(this + 7);
            v42 = v4 << 6;
            v43 = *(v41 + v42) + *(v41 + (v5 << 6));
          }

          else
          {
            v41 = *(this + 7);
            v42 = v4 << 6;
            v43 = *(v41 + v42) - *(v41 + (v5 << 6));
          }

          *(v41 + v42) = v43;
          *(v41 + (v5 << 6)) = 0;
          v44 = *(this + 8);
          v45 = *(v44 + 56 * v5 + 8);
          if ((v45 & 0x80000000) == 0)
          {
            v46 = *(this + 11);
            v47 = *(v44 + 56 * v5 + 8);
            do
            {
              v48 = v46 + 48 * v47;
              *(v48 + 32) = v4;
              v47 = *(v48 + 16);
            }

            while ((v47 & 0x80000000) == 0);
            v49 = v44 + 56 * v4;
            v52 = *(v49 + 8);
            v50 = (v49 + 8);
            v51 = v52;
            if ((v52 & 0x80000000) == 0)
            {
              do
              {
                v53 = v46 + 48 * v51;
                v54 = *(v53 + 16);
                v50 = (v53 + 16);
                v51 = v54;
              }

              while ((v54 & 0x80000000) == 0);
            }

            *v50 = v45;
          }

          Shape::DisconnectStart(this, v5);
          Shape::DisconnectEnd(this, v5);
          v55 = *(this + 8);
          if (v55 >= 2)
          {
            v56 = *(*(this + 8) + 56 * v55 - 48);
            if ((v56 & 0x80000000) == 0)
            {
              v57 = *(this + 11);
              do
              {
                v58 = v57 + 48 * v56;
                *(v58 + 32) = v5;
                v56 = *(v58 + 16);
              }

              while ((v56 & 0x80000000) == 0);
            }
          }

          Shape::SwapEdges(this, v5, v55 - 1);
          --*(this + 8);
        }
      }

      else if ((v4 & 0x80000000) == 0)
      {
        v12 = *(this + 8);
        while (1)
        {
          if (v4 >= v12)
          {
            goto LABEL_71;
          }

          v13 = *(this + 5);
          v14 = v13 + 32 * v4;
          v15 = *(v14 + 8);
          if (i == v15)
          {
            LODWORD(v15) = *(v14 + 12);
          }

          v16 = *(*(this + 3) + 28 * i + 16);
          if ((v16 & 0x80000000) == 0)
          {
            break;
          }

LABEL_48:
          v39 = v13 + 32 * v4;
          if (i == *(v39 + 8))
          {
            v40 = 16;
          }

          else
          {
            if (i != *(v39 + 12))
            {
              goto LABEL_71;
            }

            v40 = 24;
          }

          v4 = *(v39 + v40);
          if ((v4 & 0x80000000) != 0)
          {
            goto LABEL_71;
          }
        }

        while (2)
        {
          v13 = *(this + 5);
          if (v16 >= v12)
          {
            goto LABEL_48;
          }

          v17 = (v13 + 32 * v16);
          v18 = v17[2];
          if (i == v18)
          {
            v19 = v17[4];
            if (v16 != v4)
            {
              v20 = v17[3];
              goto LABEL_22;
            }
          }

          else if (i == v17[3])
          {
            v19 = v17[6];
            v20 = v17[2];
            if (v16 != v4)
            {
              goto LABEL_22;
            }
          }

          else
          {
            if (v16 == v4)
            {
              LODWORD(v4) = v16;
LABEL_47:
              v13 = *(this + 5);
              goto LABEL_48;
            }

            v19 = 0xFFFFFFFFLL;
            v20 = v17[2];
LABEL_22:
            if (v20 == v15)
            {
              v22 = *(this + 7);
              v21 = *(this + 8);
              if (*(v13 + 32 * v4 + 8) == v18)
              {
                v23 = *(v22 + (v16 << 6));
              }

              else
              {
                v23 = -*(v22 + (v16 << 6));
              }

              *(v22 + (v4 << 6)) += v23;
              *(v22 + (v16 << 6)) = 0;
              v24 = *(v21 + 56 * v16 + 8);
              if ((v24 & 0x80000000) == 0)
              {
                v25 = *(this + 11);
                v26 = *(v21 + 56 * v16 + 8);
                do
                {
                  v27 = v25 + 48 * v26;
                  *(v27 + 32) = v4;
                  v26 = *(v27 + 16);
                }

                while ((v26 & 0x80000000) == 0);
                v28 = v21 + 56 * v4;
                v31 = *(v28 + 8);
                v29 = (v28 + 8);
                v30 = v31;
                if ((v31 & 0x80000000) == 0)
                {
                  do
                  {
                    v32 = v25 + 48 * v30;
                    v33 = *(v32 + 16);
                    v29 = (v32 + 16);
                    v30 = v33;
                  }

                  while ((v33 & 0x80000000) == 0);
                }

                *v29 = v24;
              }

              Shape::DisconnectStart(this, v16);
              Shape::DisconnectEnd(this, v16);
              v34 = *(this + 8);
              if (v34 >= 2)
              {
                v35 = *(*(this + 8) + 56 * v34 - 48);
                if ((v35 & 0x80000000) == 0)
                {
                  v36 = *(this + 11);
                  do
                  {
                    v37 = v36 + 48 * v35;
                    *(v37 + 32) = v16;
                    v35 = *(v37 + 16);
                  }

                  while ((v35 & 0x80000000) == 0);
                }
              }

              Shape::SwapEdges(this, v16, v34 - 1);
              v12 = *(this + 8) - 1;
              if (v4 == v12)
              {
                v38 = v16;
              }

              else
              {
                v38 = v4;
              }

              if (v19 == v12)
              {
                v19 = v16;
              }

              else
              {
                v19 = v19;
              }

              *(this + 8) = v12;
              v16 = v38;
            }

            else
            {
              v16 = v4;
            }
          }

          v4 = v16;
          v16 = v19;
          if ((v19 & 0x80000000) != 0)
          {
            goto LABEL_47;
          }

          continue;
        }
      }

LABEL_71:
      ;
    }
  }

  v59 = *(this + 8);
  if (v59 >= 1)
  {
    v60 = 0;
    for (j = 0; j < v59; ++j)
    {
      if ((*(*(this + 7) + v60) & 0x80000000) != 0)
      {
        Shape::Inverse(this, j);
        v59 = *(this + 8);
      }

      v60 += 64;
    }
  }
}